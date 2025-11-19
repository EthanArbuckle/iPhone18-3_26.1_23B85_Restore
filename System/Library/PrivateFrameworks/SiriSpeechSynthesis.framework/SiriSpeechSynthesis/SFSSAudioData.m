@interface SFSSAudioData
- (AudioStreamBasicDescription)asbd;
- (BOOL)populateWithOpusData:(id)a3;
- (BOOL)populateWithPCMData:(id)a3;
- (SFSSAudioData)initWithASBD:(AudioStreamBasicDescription *)a3 rawData:(id)a4;
- (double)duration;
- (void)setAsbd:(AudioStreamBasicDescription *)a3;
@end

@implementation SFSSAudioData

- (void)setAsbd:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mSampleRate;
  v4 = *&a3->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&a3->mBitsPerChannel;
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
      v5 = [(SFSSAudioData *)self audioData];
      v6 = [v5 length];
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
        v8 = [(SFSSAudioData *)self packetCount];
        [(SFSSAudioData *)self asbd];
        LODWORD(v9) = v13;
        v10 = v8 * v9;
        [(SFSSAudioData *)self asbd];
        return v10 / v12;
      }
    }
  }

  return v4;
}

- (BOOL)populateWithOpusData:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB28] data];
  v6 = [MEMORY[0x277CBEB28] data];
  v7 = [v4 length];
  v8 = [v4 bytes];
  if (v7)
  {
    v9 = v8;
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

      v19 = [v5 length];
      LODWORD(v20) = 0;
      HIDWORD(v20) = v12;
      [v6 appendBytes:&v19 length:16];
      [v5 appendBytes:v9 + v11 length:v12];
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
    [(SFSSAudioData *)self setPacketDescriptions:v6];
    [(SFSSAudioData *)self setAudioData:v5];
    v16 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)populateWithPCMData:(id)a3
{
  [(SFSSAudioData *)self setAudioData:a3];
  [(SFSSAudioData *)self setPacketCount:0];
  [(SFSSAudioData *)self setPacketDescriptions:0];
  return 1;
}

- (SFSSAudioData)initWithASBD:(AudioStreamBasicDescription *)a3 rawData:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v20.receiver = self;
  v20.super_class = SFSSAudioData;
  v7 = [(SFSSAudioData *)&v20 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_6;
  }

  v10 = *&a3->mSampleRate;
  v9 = *&a3->mBytesPerPacket;
  *&v7->_asbd.mBitsPerChannel = *&a3->mBitsPerChannel;
  *&v7->_asbd.mSampleRate = v10;
  *&v7->_asbd.mBytesPerPacket = v9;
  mFormatID = v7->_asbd.mFormatID;
  if (mFormatID == 1869641075)
  {
    if ([(SFSSAudioData *)v7 populateWithOpusData:v6])
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

  [(SFSSAudioData *)v7 populateWithPCMData:v6];
LABEL_6:
  v12 = v8;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

@end