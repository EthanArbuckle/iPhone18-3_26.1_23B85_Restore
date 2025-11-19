@interface AudioFileWriter
- (AudioFileWriter)initWithURL:(id)a3 inputFormat:(AudioStreamBasicDescription *)a4 outputFormat:(AudioStreamBasicDescription *)a5;
- (signed)addSamples:(void *)a3 len:(int64_t)a4;
- (void)close;
- (void)dealloc;
@end

@implementation AudioFileWriter

- (signed)addSamples:(void *)a3 len:(int64_t)a4
{
  if (a4 >= 1 && self->isWriting)
  {
    v10 = v4;
    v11 = v5;
    *&ioData.mNumberBuffers = 1;
    ioData.mBuffers[0].mNumberChannels = 1;
    ioData.mBuffers[0].mDataByteSize = 2 * a4;
    ioData.mBuffers[0].mData = a3;
    if (ExtAudioFileWrite(self->fFile, a4, &ioData))
    {
      v6 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *v8 = 0;
        _os_log_error_impl(&dword_223A31000, v6, OS_LOG_TYPE_ERROR, "::: Error writing to output wave file.", v8, 2u);
      }
    }
  }

  return 0;
}

- (void)close
{
  fFile = self->fFile;
  if (fFile)
  {
    ExtAudioFileDispose(fFile);
  }

  self->isWriting = 0;
}

- (void)dealloc
{
  [(AudioFileWriter *)self close];
  v3.receiver = self;
  v3.super_class = AudioFileWriter;
  [(AudioFileWriter *)&v3 dealloc];
}

- (AudioFileWriter)initWithURL:(id)a3 inputFormat:(AudioStreamBasicDescription *)a4 outputFormat:(AudioStreamBasicDescription *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v15.receiver = self;
  v15.super_class = AudioFileWriter;
  v9 = [(AudioFileWriter *)&v15 init];
  v10 = v9;
  if (v9)
  {
    a5->mSampleRate = a4->mSampleRate;
    v11 = ExtAudioFileCreateWithURL(v8, 0x57415645u, a5, 0, 1u, &v9->fFile);
    if (v11)
    {
      v12 = v11;
      v13 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v17 = v8;
        v18 = 1026;
        v19 = v12;
        _os_log_error_impl(&dword_223A31000, v13, OS_LOG_TYPE_ERROR, "::: Error creating output file %{public}@, err: %{public}d", buf, 0x12u);
      }
    }

    ExtAudioFileSetProperty(v10->fFile, 0x63666D74u, 0x28u, a4);
    v10->isWriting = 1;
  }

  return v10;
}

@end