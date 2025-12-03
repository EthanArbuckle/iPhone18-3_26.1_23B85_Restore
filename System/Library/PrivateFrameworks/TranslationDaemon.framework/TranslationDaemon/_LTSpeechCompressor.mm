@interface _LTSpeechCompressor
- (_LTSpeechCompressor)initWithDelegate:(id)delegate;
- (void)addAudioSampleData:(id)data;
- (void)dealloc;
- (void)reset;
- (void)startCompressionNarrowband:(BOOL)narrowband;
@end

@implementation _LTSpeechCompressor

- (_LTSpeechCompressor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = _LTSpeechCompressor;
  v5 = [(_LTSpeechCompressor *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(_LTSpeechCompressor *)self reset];
  v3.receiver = self;
  v3.super_class = _LTSpeechCompressor;
  [(_LTSpeechCompressor *)&v3 dealloc];
}

- (void)startCompressionNarrowband:(BOOL)narrowband
{
  v4 = 16000.0;
  if (narrowband)
  {
    v4 = 8000.0;
  }

  inSourceFormat.mSampleRate = v4;
  *&inSourceFormat.mFormatID = xmmword_233005DC0;
  *&inSourceFormat.mBytesPerFrame = xmmword_233005DD0;
  inDestinationFormat.mSampleRate = v4;
  *&inDestinationFormat.mFormatID = 1869641075;
  if (narrowband)
  {
    v5 = 160;
  }

  else
  {
    v5 = 320;
  }

  inDestinationFormat.mBytesPerPacket = 0;
  inDestinationFormat.mFramesPerPacket = v5;
  *&inDestinationFormat.mBytesPerFrame = xmmword_233005DE0;
  AudioConverterNew(&inSourceFormat, &inDestinationFormat, &self->_audioConverter);
  inPropertyData = 32000;
  AudioConverterSetProperty(self->_audioConverter, 0x62726174u, 4u, &inPropertyData);
  v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
  bufferedAudio = self->_bufferedAudio;
  self->_bufferedAudio = v6;
}

- (void)reset
{
  audioConverter = self->_audioConverter;
  if (audioConverter)
  {
    AudioConverterDispose(audioConverter);
    self->_audioConverter = 0;
  }

  bufferedAudio = self->_bufferedAudio;
  self->_bufferedAudio = 0;

  self->_packetIndex = 0;
  self->_bytesConsumed = 0;
}

- (void)addAudioSampleData:(id)data
{
  v3 = MEMORY[0x28223BE20](self, a2, data);
  v21 = *MEMORY[0x277D85DE8];
  v13 = v4;
  [*(v3 + 24) appendData:?];
  objc_initWeak(&location, v3);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = MEMORY[0x277D85DD0];
  while (1)
  {
    *(&outOutputData.mNumberBuffers + 1) = 0;
    outOutputData.mBuffers[0].mData = &v20;
    *&outOutputData.mBuffers[0].mNumberChannels = 0x200000000001;
    ioOutputDataPacketSize = 10;
    outOutputData.mNumberBuffers = 1;
    v7 = *(v3 + 16);
    inInputDataProcUserData[0] = v6;
    inInputDataProcUserData[1] = 3221225472;
    inInputDataProcUserData[2] = __42___LTSpeechCompressor_addAudioSampleData___block_invoke;
    inInputDataProcUserData[3] = &unk_2789B7B40;
    objc_copyWeak(&v15, &location);
    if (AudioConverterFillComplexBuffer(v7, AudioConverterFillComplexBuffer_BlockInvoke, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, &outPacketDescription))
    {
      break;
    }

    if (ioOutputDataPacketSize)
    {
      v8 = 0;
      p_outPacketDescription = &outPacketDescription;
      do
      {
        v10 = [MEMORY[0x277CBEA90] dataWithBytes:outOutputData.mBuffers[0].mData + p_outPacketDescription->mStartOffset length:p_outPacketDescription->mDataByteSize];
        [v5 addObject:v10];
        ++*(v3 + 32);

        ++p_outPacketDescription;
        ++v8;
      }

      while (v8 < ioOutputDataPacketSize);
    }

    objc_destroyWeak(&v15);
  }

  objc_destroyWeak(&v15);
  [*(v3 + 24) replaceBytesInRange:0 withBytes:*(v3 + 40) length:{0, 0}];
  *(v3 + 40) = 0;
  WeakRetained = objc_loadWeakRetained((v3 + 8));
  [WeakRetained didCompressPackets:v5 totalPacketCount:*(v3 + 32)];

  objc_destroyWeak(&location);
  v12 = *MEMORY[0x277D85DE8];
}

@end