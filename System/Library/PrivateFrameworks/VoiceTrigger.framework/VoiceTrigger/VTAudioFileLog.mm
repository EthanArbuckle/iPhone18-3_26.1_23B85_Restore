@interface VTAudioFileLog
+ (id)sharedInstance;
- (VTAudioFileLog)init;
- (void)_closeAudioFile;
- (void)appendAudioData:(AudioBuffer)data;
- (void)dealloc;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation VTAudioFileLog

- (void)stopRecording
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__VTAudioFileLog_stopRecording__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __31__VTAudioFileLog_stopRecording__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 64);
    LODWORD(v3) = *(v3 + 72);
    v6 = 138543618;
    v7 = v4;
    v8 = 1026;
    v9 = v3;
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "Closing file at URL %{public}@, audio size: %{public}u", &v6, 0x12u);
  }

  return [*(a1 + 32) _closeAudioFile];
}

- (void)appendAudioData:(AudioBuffer)data
{
  mData = data.mData;
  mDataByteSize = data.mDataByteSize;
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:mData length:mDataByteSize];
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__VTAudioFileLog_appendAudioData___block_invoke;
  v10[3] = &unk_2784ED118;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(queue, v10);

  objc_autoreleasePoolPop(v6);
}

void __34__VTAudioFileLog_appendAudioData___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [*(a1 + 40) length];
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 48);
    v10.mBuffers[0].mNumberChannels = 1;
    v5 = v2 / v4;
    v10.mBuffers[0].mDataByteSize = [v3 length];
    v10.mBuffers[0].mData = [*(a1 + 40) bytes];
    v6 = ExtAudioFileWrite(*(*(a1 + 32) + 16), v5, &v10);
    if (v6)
    {
      v7 = v6;
      v8 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        v12 = v7;
        _os_log_error_impl(&dword_223A31000, v8, OS_LOG_TYPE_ERROR, "Failed writing audio file %{public}d", buf, 8u);
      }
    }

    *(*(a1 + 32) + 72) += [*(a1 + 40) length];
  }

  else
  {
    v9 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10.mNumberBuffers) = 0;
      _os_log_error_impl(&dword_223A31000, v9, OS_LOG_TYPE_ERROR, "No audio file to append data", &v10, 2u);
    }
  }
}

- (void)startRecording
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__VTAudioFileLog_startRecording__block_invoke;
  block[3] = &unk_2784ECFF8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __32__VTAudioFileLog_startRecording__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[2])
  {
    v3 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_error_impl(&dword_223A31000, v3, OS_LOG_TYPE_ERROR, "Audio file already configured, closing first", &v21, 2u);
      v2 = *(a1 + 32);
    }

    [v2 _closeAudioFile];
  }

  v4 = VTMakeTimestampedAudioLogFilenameWithPrefixAndSuffix(&stru_28370C9A8, @"-activation.wav");
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4 isDirectory:0];
  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  *(v6 + 64) = v5;

  v8 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 64);
    v21 = 138543362;
    v22 = v9;
    _os_log_impl(&dword_223A31000, v8, OS_LOG_TYPE_DEFAULT, "Creating audio file at URL %{public}@", &v21, 0xCu);
  }

  v10 = ExtAudioFileCreateWithURL(*(*(a1 + 32) + 64), 0x57415645u, (*(a1 + 32) + 24), 0, 1u, (*(a1 + 32) + 16));
  if (v10)
  {
    v11 = v10;
    v12 = VTLogContextFacilityVoiceTrigger;
    if (!os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v13 = *(*(a1 + 32) + 64);
    v21 = 138543618;
    v22 = v13;
    v23 = 1026;
    v24 = v11;
    v14 = "Failed creating audio file at url %{public}@ %{public}d";
    v15 = v12;
    v16 = 18;
    goto LABEL_16;
  }

  v17 = ExtAudioFileSetProperty(*(*(a1 + 32) + 16), 0x63666D74u, 0x28u, (*(a1 + 32) + 24));
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  v19 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
  {
    v21 = 67240192;
    LODWORD(v22) = v18;
    v14 = "Error setting input format %{public}d";
    v15 = v19;
    v16 = 8;
LABEL_16:
    _os_log_error_impl(&dword_223A31000, v15, OS_LOG_TYPE_ERROR, v14, &v21, v16);
  }

LABEL_12:
  v20 = *(a1 + 32);
  if (v20[2])
  {
    [v20 _closeAudioFile];
  }

LABEL_14:
  *(*(a1 + 32) + 72) = 0;
}

- (void)_closeAudioFile
{
  v8 = *MEMORY[0x277D85DE8];
  audioFile = self->_audioFile;
  if (audioFile)
  {
    v4 = ExtAudioFileDispose(audioFile);
    if (v4)
    {
      v5 = v4;
      v6 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        v7[0] = 67240192;
        v7[1] = v5;
        _os_log_error_impl(&dword_223A31000, v6, OS_LOG_TYPE_ERROR, "Failure disposing audio file %{public}d", v7, 8u);
      }
    }

    self->_audioFile = 0;
  }
}

- (void)dealloc
{
  [(VTAudioFileLog *)self _closeAudioFile];
  v3.receiver = self;
  v3.super_class = VTAudioFileLog;
  [(VTAudioFileLog *)&v3 dealloc];
}

- (VTAudioFileLog)init
{
  v11.receiver = self;
  v11.super_class = VTAudioFileLog;
  v2 = [(VTAudioFileLog *)&v11 init];
  if (v2)
  {
    v3 = +[VTPreferences sharedPreferences];
    fileLoggingIsEnabled = [v3 fileLoggingIsEnabled];

    if (!fileLoggingIsEnabled)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v5 = dispatch_queue_create("VTAudioFileLogQueue", 0);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = *(v2 + 1);
    v8 = dispatch_get_global_queue(17, 0);
    dispatch_set_target_queue(v7, v8);

    *(v2 + 3) = 0x40CF400000000000;
    *(v2 + 2) = xmmword_223B13210;
    *(v2 + 3) = xmmword_223B13220;
  }

  v9 = v2;
LABEL_6:

  return v9;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5162 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_5162, &__block_literal_global_5163);
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

uint64_t __32__VTAudioFileLog_sharedInstance__block_invoke()
{
  sharedInstance_sSharedInstance = objc_alloc_init(VTAudioFileLog);

  return MEMORY[0x2821F96F8]();
}

@end