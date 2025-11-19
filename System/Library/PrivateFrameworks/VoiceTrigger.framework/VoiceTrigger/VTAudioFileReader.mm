@interface VTAudioFileReader
- (VTAudioFileReader)initWithURL:(id)a3;
- (id)readSamples:(unint64_t)a3;
- (void)close;
- (void)dealloc;
@end

@implementation VTAudioFileReader

- (void)close
{
  fFile = self->_fFile;
  if (fFile)
  {
    ExtAudioFileDispose(fFile);
  }
}

- (id)readSamples:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = 2 * a3;
  v5 = [MEMORY[0x277CBEB28] dataWithLength:2 * a3];
  *&ioData.mNumberBuffers = 1;
  ioData.mBuffers[0].mNumberChannels = 1;
  ioData.mBuffers[0].mDataByteSize = v4;
  ioData.mBuffers[0].mData = [v5 bytes];
  ioNumberFrames = v4;
  v6 = ExtAudioFileRead(self->_fFile, &ioNumberFrames, &ioData);
  v7 = ioNumberFrames;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = ioNumberFrames == 0;
  }

  if (v8)
  {
    v9 = VTLogContextFacilityVoiceTrigger;
    if (v6)
    {
      v10 = v6;
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v15 = v10;
        _os_log_error_impl(&dword_223A31000, v9, OS_LOG_TYPE_ERROR, "::: Error reading data from audio file : %d", buf, 8u);
      }
    }

    else
    {
      if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v15 = v7;
        _os_log_impl(&dword_223A31000, v9, OS_LOG_TYPE_DEFAULT, "Reach to EOF: appending digital zero, chunkSize = %d", buf, 8u);
      }

      bzero([v5 bytes], v4);
    }
  }

  return v5;
}

- (void)dealloc
{
  [(VTAudioFileReader *)self close];
  v3.receiver = self;
  v3.super_class = VTAudioFileReader;
  [(VTAudioFileReader *)&v3 dealloc];
}

- (VTAudioFileReader)initWithURL:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = VTAudioFileReader;
  v5 = [(VTAudioFileReader *)&v12 init];
  v6 = v5;
  if (v5 && (v7 = ExtAudioFileOpenURL(v4, &v5->_fFile)) != 0)
  {
    v8 = v7;
    v9 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = v4;
      v15 = 1024;
      v16 = v8;
      _os_log_error_impl(&dword_223A31000, v9, OS_LOG_TYPE_ERROR, "::: Error reading file %@, err: %d", buf, 0x12u);
    }

    v10 = 0;
  }

  else
  {
    v10 = v6;
  }

  return v10;
}

@end