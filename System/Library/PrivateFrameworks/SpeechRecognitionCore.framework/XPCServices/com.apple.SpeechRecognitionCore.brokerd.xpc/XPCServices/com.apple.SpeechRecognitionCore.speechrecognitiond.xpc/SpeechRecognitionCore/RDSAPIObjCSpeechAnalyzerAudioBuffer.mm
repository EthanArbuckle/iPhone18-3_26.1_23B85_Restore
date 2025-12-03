@interface RDSAPIObjCSpeechAnalyzerAudioBuffer
- (RDSAPIObjCSpeechAnalyzerAudioBuffer)initWithSwiftSpeechAnalyzer:(id)analyzer task:(id)task;
- (void)addAudioSamples:(const signed __int16 *)samples count:(unint64_t)count;
- (void)cancelRecognition;
- (void)dealloc;
- (void)endAudio;
- (void)newUtteranceBegins;
- (void)startRecognition:(id)recognition;
@end

@implementation RDSAPIObjCSpeechAnalyzerAudioBuffer

- (RDSAPIObjCSpeechAnalyzerAudioBuffer)initWithSwiftSpeechAnalyzer:(id)analyzer task:(id)task
{
  analyzerCopy = analyzer;
  taskCopy = task;
  v28.receiver = self;
  v28.super_class = RDSAPIObjCSpeechAnalyzerAudioBuffer;
  v8 = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)&v28 init];
  v9 = v8;
  if (v8)
  {
    [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)v8 setSwiftSpeechAnalyzer:analyzerCopy];
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  currentTask = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)v9 currentTask];

  if (currentTask != taskCopy)
  {
    v11 = dispatch_time(0, 10000000000);
    v12 = dispatch_semaphore_create(0);
    swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)v9 swiftSpeechAnalyzer];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100002E74;
    v19[3] = &unk_1000FDC90;
    v20 = v9;
    v21 = taskCopy;
    v23 = &v24;
    v14 = v12;
    v22 = v14;
    [swiftSpeechAnalyzer attachTranscriberWithTask:v21 completionHandler:v19];

    if (dispatch_semaphore_wait(v14, v11))
    {
      v15 = RXOSLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18[0] = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Timed out waiting to get attach transcriber. ", v18, 2u);
      }

      *(v25 + 24) = 0;
    }
  }

  if (*(v25 + 24) == 1)
  {
    v16 = v9;
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v24, 8);

  return v16;
}

- (void)startRecognition:(id)recognition
{
  recognitionCopy = recognition;
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer startRecognitionWithTranscriberModuleWrapper:recognitionCopy];
}

- (void)newUtteranceBegins
{
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer newUtteranceBegins];
}

- (void)addAudioSamples:(const signed __int16 *)samples count:(unint64_t)count
{
  countCopy = count;
  for (i = [[NSMutableArray alloc] initWithCapacity:count]; countCopy; --countCopy)
  {
    v7 = *samples++;
    v8 = [NSNumber numberWithInt:v7];
    [i addObject:v8];
  }

  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer addAudioSamplesWithAudio:i];
}

- (void)endAudio
{
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer endAudio];

  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ended audio stream", v4, 2u);
  }
}

- (void)cancelRecognition
{
  swiftSpeechAnalyzer = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)self swiftSpeechAnalyzer];
  [swiftSpeechAnalyzer cancelRecognition];

  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceled recognition", v4, 2u);
  }
}

- (void)dealloc
{
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SpeechAnalyzerObjC AudioBuffer deallocated", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = RDSAPIObjCSpeechAnalyzerAudioBuffer;
  [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)&v4 dealloc];
}

@end