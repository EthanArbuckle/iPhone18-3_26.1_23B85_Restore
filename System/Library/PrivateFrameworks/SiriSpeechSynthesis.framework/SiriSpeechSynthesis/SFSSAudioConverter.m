@interface SFSSAudioConverter
+ (id)sharedInstance;
- (id)convertChunks:(id)a3 srcAsbd:(AudioStreamBasicDescription *)a4 dstAsbd:(AudioStreamBasicDescription *)a5 outError:(id *)a6;
- (id)createAudioConverter:(AudioStreamBasicDescription *)a3 dstAsbd:(AudioStreamBasicDescription *)a4;
- (void)dealloc;
- (void)reset;
@end

@implementation SFSSAudioConverter

- (id)convertChunks:(id)a3 srcAsbd:(AudioStreamBasicDescription *)a4 dstAsbd:(AudioStreamBasicDescription *)a5 outError:(id *)a6
{
  v62 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v12 = *&a4->mBytesPerPacket;
  *outOutputData = *&a4->mSampleRate;
  *&outOutputData[16] = v12;
  v54 = *&a4->mBitsPerChannel;
  v13 = *&a5->mBytesPerPacket;
  *buf = *&a5->mSampleRate;
  v60 = v13;
  v61 = *&a5->mBitsPerChannel;
  if ([SFSSAudioConverter isAsbdSameAs:outOutputData dstAsbd:buf])
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v14 = v10;
    v15 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v50;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v50 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v49 + 1) + 8 * i) audioData];
          [v11 appendData:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v16);
    }
  }

  else
  {
    [(SFSSAudioConverter *)self reset];
    v20 = *&a4->mBytesPerPacket;
    *outOutputData = *&a4->mSampleRate;
    *&outOutputData[16] = v20;
    v54 = *&a4->mBitsPerChannel;
    v21 = *&a5->mBytesPerPacket;
    *buf = *&a5->mSampleRate;
    v60 = v21;
    v61 = *&a5->mBitsPerChannel;
    v22 = [(SFSSAudioConverter *)self createAudioConverter:outOutputData dstAsbd:buf];
    if (v22)
    {
      v23 = v22;
      *a6 = v23;

      v24 = 0;
      goto LABEL_27;
    }

    ioOutputDataPacketSize = 0;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v25 = v10;
    v26 = [v25 countByEnumeratingWithState:&v44 objects:v57 count:16];
    v43 = a6;
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v45;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(v25);
          }

          mFramesPerPacket = self->_srcAsbd.mFramesPerPacket;
          v28 += mFramesPerPacket * [*(*(&v44 + 1) + 8 * j) packetCount];
          ioOutputDataPacketSize = v28;
        }

        v27 = [v25 countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v27);
    }

    else
    {
      v28 = 0;
    }

    v32 = [[SFSSAudioDataWrapper alloc] initWithAudioChunks:v25];
    v33 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:self->_dstAsbd.mBytesPerFrame * v28];
    *outOutputData = 1;
    *&outOutputData[16] = [v33 mutableBytes];
    v34 = [v33 length];
    *&outOutputData[8] = 1;
    *&outOutputData[12] = v34;
    v35 = AudioConverterFillComplexBuffer(self->_decoder, AudioConverterFillComplexBuffer_Callback, v32, &ioOutputDataPacketSize, outOutputData, 0);
    if (v35)
    {
      v36 = v35;
      v37 = SFSSGetLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v36;
        _os_log_error_impl(&dword_269079000, v37, OS_LOG_TYPE_ERROR, "Audio converting error: %d", buf, 8u);
      }

      v38 = MEMORY[0x277CCA9B8];
      v55 = *MEMORY[0x277CCA470];
      v56 = @"Audio converting error.";
      v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      *v43 = [v38 errorWithDomain:@"SFSpeechSynthesisAudioErrorDomain" code:v36 userInfo:v39];
    }

    v40 = [MEMORY[0x277CBEA90] dataWithBytes:*&outOutputData[16] length:*&outOutputData[12]];
    [v11 appendData:v40];

    [(SFSSAudioConverter *)self reset];
  }

  v24 = v11;
LABEL_27:

  v41 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)dealloc
{
  decoder = self->_decoder;
  if (decoder)
  {
    AudioConverterDispose(decoder);
    self->_decoder = 0;
  }

  v4.receiver = self;
  v4.super_class = SFSSAudioConverter;
  [(SFSSAudioConverter *)&v4 dealloc];
}

- (void)reset
{
  v3 = SFSSGetLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_269079000, v3, OS_LOG_TYPE_INFO, "Reset audio decoder.", v5, 2u);
  }

  decoder = self->_decoder;
  if (decoder)
  {
    AudioConverterReset(decoder);
  }
}

- (id)createAudioConverter:(AudioStreamBasicDescription *)a3 dstAsbd:(AudioStreamBasicDescription *)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = AudioConverterNew(a3, a4, &self->_decoder);
  v8 = *&a3->mBitsPerChannel;
  v9 = *&a3->mBytesPerPacket;
  *&self->_srcAsbd.mSampleRate = *&a3->mSampleRate;
  *&self->_srcAsbd.mBytesPerPacket = v9;
  *&self->_srcAsbd.mBitsPerChannel = v8;
  v11 = *&a4->mSampleRate;
  v10 = *&a4->mBytesPerPacket;
  *&self->_dstAsbd.mBitsPerChannel = *&a4->mBitsPerChannel;
  *&self->_dstAsbd.mSampleRate = v11;
  *&self->_dstAsbd.mBytesPerPacket = v10;
  if (v7)
  {
    v12 = v7;
    v13 = SFSSGetLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v22 = v12;
      _os_log_error_impl(&dword_269079000, v13, OS_LOG_TYPE_ERROR, "Could not create Opus decoder: %d", buf, 8u);
    }

    v14 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CCA470];
    v20 = @"Failed to create opus decoder";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v16 = [v14 errorWithDomain:@"SFSpeechSynthesisAudioErrorDomain" code:v12 userInfo:v15];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1706 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1706, &__block_literal_global_1707);
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

uint64_t __36__SFSSAudioConverter_sharedInstance__block_invoke()
{
  sharedInstance_sSharedInstance = objc_alloc_init(SFSSAudioConverter);

  return MEMORY[0x2821F96F8]();
}

@end