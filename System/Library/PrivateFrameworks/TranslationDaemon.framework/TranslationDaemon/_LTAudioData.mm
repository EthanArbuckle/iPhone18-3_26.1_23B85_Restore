@interface _LTAudioData
- (AudioStreamBasicDescription)asbd;
- (BOOL)_populateWithOpusData:(id)data;
- (_LTAudioData)initWithASBD:(AudioStreamBasicDescription *)d rawData:(id)data wordTimingInfo:(id)info;
- (void)writeToURL:(id)l;
@end

@implementation _LTAudioData

- (_LTAudioData)initWithASBD:(AudioStreamBasicDescription *)d rawData:(id)data wordTimingInfo:(id)info
{
  dataCopy = data;
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = _LTAudioData;
  v11 = [(_LTAudioData *)&v19 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_7;
  }

  v13 = *&d->mSampleRate;
  v14 = *&d->mBytesPerPacket;
  *(v11 + 5) = *&d->mBitsPerChannel;
  *(v11 + 24) = v14;
  *(v11 + 8) = v13;
  objc_storeStrong(v11 + 6, data);
  objc_storeStrong(v12 + 9, info);
  mFormatID = d->mFormatID;
  if (mFormatID != 1869641075)
  {
    if (mFormatID == 1819304813)
    {
      v16 = v12[8];
      v12[7] = 0;
      v12[8] = 0;
    }

    goto LABEL_6;
  }

  if (![v12 _populateWithOpusData:dataCopy])
  {
LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

LABEL_6:
  v17 = v12;
LABEL_8:

  return v17;
}

- (BOOL)_populateWithOpusData:(id)data
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  data = [MEMORY[0x277CBEB28] data];
  data2 = [MEMORY[0x277CBEB28] data];
  v6 = [dataCopy length];
  bytes = [dataCopy bytes];
  if (v6)
  {
    v8 = bytes;
    v9 = 0;
    v10 = 0;
    while (1)
    {
      LODWORD(v11) = 0;
      v12 = (v8 + v10);
      do
      {
        v13 = *v12++;
        v11 = v13 & 0x7Fu | (v11 << 7);
        ++v10;
      }

      while (v13 < 0);
      v14 = v10 + v11;
      if (!v11 || v14 > v6)
      {
        break;
      }

      *buf = 0;
      v22 = 0;
      *buf = [data length];
      LODWORD(v22) = 0;
      HIDWORD(v22) = v11;
      [data2 appendBytes:buf length:16];
      [data appendBytes:v12 length:v11];
      ++v9;
      v10 += v11;
      if (v14 >= v6)
      {
        goto LABEL_15;
      }
    }

    v16 = _LTOSLogSpeech();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      *&buf[4] = v11;
      LOWORD(v22) = 1024;
      *(&v22 + 2) = v10;
      HIWORD(v22) = 1024;
      v23 = v6;
      _os_log_error_impl(&dword_232E53000, v16, OS_LOG_TYPE_ERROR, "Invalid chunk size: %d at offset %d, bytes count = %d\n", buf, 0x14u);
    }

    v17 = 0;
  }

  else
  {
    v9 = 0;
LABEL_15:
    self->_packetCount = v9;
    objc_storeStrong(&self->_packetDescriptions, data2);
    objc_storeStrong(&self->_rawData, data);
    v17 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)writeToURL:(id)l
{
  lCopy = l;
  if (lCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
    path = [uRLByDeletingLastPathComponent path];

    if ([defaultManager fileExistsAtPath:path])
    {
      v8 = 0;
    }

    else
    {
      v15 = 0;
      [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v15];
      v8 = v15;
      if (v8)
      {
        v10 = _LTOSLogSpeech();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [_LTAudioData writeToURL:];
        }
      }
    }

    rawData = self->_rawData;
    v14 = 0;
    [(NSData *)rawData writeToURL:lCopy options:0 error:&v14];
    v12 = v14;
    if (v12)
    {
      v13 = _LTOSLogSpeech();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_LTAudioData writeToURL:];
      }
    }
  }

  else
  {
    v9 = _LTOSLogSpeech();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LTAudioData writeToURL:v9];
    }
  }
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self->mBytesPerFrame;
  *&retstr->mSampleRate = *&self->mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[1].mSampleRate;
  return self;
}

- (void)writeToURL:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "error %@ creating directory at path %{private}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)writeToURL:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_232E53000, v0, v1, "error %@ writing to url %{private}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end