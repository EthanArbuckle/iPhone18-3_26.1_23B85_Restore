@interface RDSAPIObjCSpeechAnalyzer
- (RDSAPIObjCSpeechAnalyzer)initWithLocale:(id)a3;
- (id)getJitProfileData;
- (id)getUserProfileData;
- (void)createRecognitionBufferWithDelegate:(RDSAPICSpeechAnalyzerDelegate *)a3 task:(id)a4;
- (void)dealloc;
- (void)didFinishRecognitionWithError:(id)a3;
- (void)didGetUtteranceBoundary:(int64_t)a3 utteranceEndSampleNumber:(int64_t)a4 totalSamplesSentToASR:(int64_t)a5;
- (void)didRecognizeFinalResults:(id)a3;
- (void)didRecognizePartialResults:(id)a3;
- (void)setJitProfileData:(id)a3;
- (void)setLeftContextText:(id)a3;
- (void)setUserProfileData:(id)a3;
@end

@implementation RDSAPIObjCSpeechAnalyzer

- (RDSAPIObjCSpeechAnalyzer)initWithLocale:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RDSAPIObjCSpeechAnalyzer;
  v5 = [(RDSAPIObjCSpeechAnalyzer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(RDSAPIObjCSpeechAnalyzer *)v5 setLocale:v4];
  }

  v7 = [[_TtC50com_apple_SpeechRecognitionCore_speechrecognitiond25RDSAPISwiftSpeechAnalyzer alloc] initWithDelegate:v6 locale:v6->_locale highPriority:v6->_highPriority != 0 farField:v6->_farField != 0 supportEmojiRecognition:1];
  [(RDSAPIObjCSpeechAnalyzer *)v6 setSwiftSpeechAnalyzer:v7];

  v8 = [(RDSAPIObjCSpeechAnalyzer *)v6 swiftSpeechAnalyzer];
  [v8 attachAnalysisContextWithCompletionHandler:&stru_1000FDC68];

  return v6;
}

- (void)createRecognitionBufferWithDelegate:(RDSAPICSpeechAnalyzerDelegate *)a3 task:(id)a4
{
  v6 = a4;
  [(RDSAPIObjCSpeechAnalyzer *)self setDelegate:a3];
  v7 = [RDSAPIObjCSpeechAnalyzerAudioBuffer alloc];
  v8 = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  v9 = [(RDSAPIObjCSpeechAnalyzerAudioBuffer *)v7 initWithSwiftSpeechAnalyzer:v8 task:v6];

  speechAnalyzerAudioBuffer = self->_speechAnalyzerAudioBuffer;
  self->_speechAnalyzerAudioBuffer = v9;

  v11 = self->_speechAnalyzerAudioBuffer;
  v12 = RXOSLog();
  v13 = v12;
  if (v11)
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v21 = 0;
    v14 = "SpeechAnalyzerObjC transcriber initialized";
    v15 = &v21;
    v16 = v13;
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v20 = 0;
    v14 = "SpeechAnalyzerObjC transcriber could not be initialized";
    v15 = &v20;
    v16 = v13;
    v17 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&_mh_execute_header, v16, v17, v14, v15, 2u);
LABEL_7:

  v18 = self->_speechAnalyzerAudioBuffer;

  return v18;
}

- (void)didRecognizeFinalResults:(id)a3
{
  v4 = a3;
  v5 = RXOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Calling didRecognizeFinalResults", v6, 2u);
  }

  if (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 5))
  {
    (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 5))(*[(RDSAPIObjCSpeechAnalyzer *)self delegate], v4);
  }
}

- (void)didGetUtteranceBoundary:(int64_t)a3 utteranceEndSampleNumber:(int64_t)a4 totalSamplesSentToASR:(int64_t)a5
{
  if (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 4))
  {
    v10 = *([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 4);
    v9 = *[(RDSAPIObjCSpeechAnalyzer *)self delegate];

    v10(v9, a3, a4, a5);
  }
}

- (void)didRecognizePartialResults:(id)a3
{
  v4 = a3;
  v5 = RXOSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Calling didRecognizePartialResults", v6, 2u);
  }

  if (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 2))
  {
    (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 2))(*[(RDSAPIObjCSpeechAnalyzer *)self delegate], v4);
  }
}

- (void)didFinishRecognitionWithError:(id)a3
{
  v4 = RXOSLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Recognition Error", v6, 2u);
  }

  if (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 3))
  {
    v5 = [[NSError alloc] initWithDomain:@"SpeechAPIErrorDomain" code:0 userInfo:0];
    (*([(RDSAPIObjCSpeechAnalyzer *)self delegate]+ 3))(*[(RDSAPIObjCSpeechAnalyzer *)self delegate], v5);
  }
}

- (void)setLeftContextText:(id)a3
{
  v4 = a3;
  v5 = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  [v5 setTextWithLeftContextText:v4];
}

- (id)getUserProfileData
{
  v2 = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  v3 = [v2 getUserProfileData];

  return v3;
}

- (void)setUserProfileData:(id)a3
{
  v4 = a3;
  v5 = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  [v5 setContextWithUserProfileData:v4];
}

- (id)getJitProfileData
{
  v2 = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  v3 = [v2 getJitProfileData];

  return v3;
}

- (void)setJitProfileData:(id)a3
{
  v4 = a3;
  v5 = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  [v5 setContextWithJitProfileData:v4];
}

- (void)dealloc
{
  v3 = RXOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SpeechAnalyzerObjC deallocated", buf, 2u);
  }

  v4 = [(RDSAPIObjCSpeechAnalyzer *)self swiftSpeechAnalyzer];
  [v4 cancelRecognition];

  v5.receiver = self;
  v5.super_class = RDSAPIObjCSpeechAnalyzer;
  [(RDSAPIObjCSpeechAnalyzer *)&v5 dealloc];
}

@end