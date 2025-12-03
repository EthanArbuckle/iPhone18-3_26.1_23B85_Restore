@interface SFSSAudioData
- (AudioStreamBasicDescription)asbd;
- (BOOL)populateWithOpusData:(id)data;
- (BOOL)populateWithPCMData:(id)data;
- (SFSSAudioData)initWithASBD:(AudioStreamBasicDescription *)d rawData:(id)data;
- (double)duration;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
@end

@implementation SFSSAudioData

- (void)setAsbd:(AudioStreamBasicDescription *)asbd
{
  v3 = *&asbd->mSampleRate;
  v4 = *&asbd->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&asbd->mBitsPerChannel;
  *&self->_asbd.mSampleRate = v3;
  *&self->_asbd.mBytesPerPacket = v4;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[1].mFormatID;
  *&retstr->mSampleRate = *&self->mBitsPerChannel;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = *&self[1].mBytesPerFrame;
  return self;
}

- (double)duration
{
  [(SFSSAudioData *)self asbd];
  if (v20 == 1819304813)
  {
    [(SFSSAudioData *)self asbd];
    [(SFSSAudioData *)self asbd];
    LODWORD(v3) = v18;
    v4 = 0.0;
    if (v19 * v3 != 0.0)
    {
      audioData = [(SFSSAudioData *)self audioData];
      v6 = [audioData length];
      [(SFSSAudioData *)self asbd];
      [(SFSSAudioData *)self asbd];
      LODWORD(v7) = v16;
      v4 = v6 / (v17 * v7);
    }
  }

  else
  {
    [(SFSSAudioData *)self asbd];
    v4 = 0.0;
    if (v15 == 1869641075)
    {
      [(SFSSAudioData *)self asbd];
      if (v14 != 0.0)
      {
        packetCount = [(SFSSAudioData *)self packetCount];
        [(SFSSAudioData *)self asbd];
        LODWORD(v9) = v13;
        v10 = packetCount * v9;
        [(SFSSAudioData *)self asbd];
        return v10 / v12;
      }
    }
  }

  return v4;
}

- (BOOL)populateWithOpusData:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  data = [MEMORY[0x277CBEB28] data];
  data2 = [MEMORY[0x277CBEB28] data];
  v7 = [dataCopy length];
  bytes = [dataCopy bytes];
  if (v7)
  {
    v9 = bytes;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      LODWORD(v12) = 0;
      do
      {
        v13 = *(v9 + v11);
        v12 = v13 & 0x7Fu | (v12 << 7);
        ++v11;
      }

      while (v13 < 0);
      if (!v12)
      {
        break;
      }

      v14 = v11 + v12;
      if (v14 > v7)
      {
        break;
      }

      v19 = [data length];
      LODWORD(v20) = 0;
      HIDWORD(v20) = v12;
      [data2 appendBytes:&v19 length:16];
      [data appendBytes:v9 + v11 length:v12];
      ++v10;
      v11 += v12;
      if (v14 >= v7)
      {
        goto LABEL_13;
      }
    }

    v15 = SFSSGetLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v19) = 67109632;
      HIDWORD(v19) = v12;
      LOWORD(v20) = 1024;
      *(&v20 + 2) = v11;
      HIWORD(v20) = 1024;
      v21 = v7;
      _os_log_error_impl(&dword_269079000, v15, OS_LOG_TYPE_ERROR, "Invalid chunk size: %d at offset %d, bytes count = %d\n", &v19, 0x14u);
    }

    v16 = 0;
  }

  else
  {
    v10 = 0;
LABEL_13:
    [(SFSSAudioData *)self setPacketCount:v10];
    [(SFSSAudioData *)self setPacketDescriptions:data2];
    [(SFSSAudioData *)self setAudioData:data];
    v16 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)populateWithPCMData:(id)data
{
  [(SFSSAudioData *)self setAudioData:data];
  [(SFSSAudioData *)self setPacketCount:0];
  [(SFSSAudioData *)self setPacketDescriptions:0];
  return 1;
}

- (SFSSAudioData)initWithASBD:(AudioStreamBasicDescription *)d rawData:(id)data
{
  v25 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = SFSSAudioData;
  v7 = [(SFSSAudioData *)&v20 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_6;
  }

  v10 = *&d->mSampleRate;
  v9 = *&d->mBytesPerPacket;
  *&v7->_asbd.mBitsPerChannel = *&d->mBitsPerChannel;
  *&v7->_asbd.mSampleRate = v10;
  *&v7->_asbd.mBytesPerPacket = v9;
  mFormatID = v7->_asbd.mFormatID;
  if (mFormatID == 1869641075)
  {
    if ([(SFSSAudioData *)v7 populateWithOpusData:dataCopy])
    {
      goto LABEL_6;
    }

    v13 = SFSSGetLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[SFSSAudioData initWithASBD:rawData:]";
      v15 = "%s, invalid opus data";
      v16 = v13;
      v17 = 12;
      goto LABEL_13;
    }

LABEL_10:

    v12 = 0;
    goto LABEL_11;
  }

  if (mFormatID != 1819304813)
  {
    v13 = SFSSGetLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = v8->_asbd.mFormatID;
      *buf = 136315394;
      v22 = "[SFSSAudioData initWithASBD:rawData:]";
      v23 = 1024;
      v24 = v14;
      v15 = "%s, Unknown format: %d";
      v16 = v13;
      v17 = 18;
LABEL_13:
      _os_log_error_impl(&dword_269079000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  [(SFSSAudioData *)v7 populateWithPCMData:dataCopy];
LABEL_6:
  v12 = v8;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

@end