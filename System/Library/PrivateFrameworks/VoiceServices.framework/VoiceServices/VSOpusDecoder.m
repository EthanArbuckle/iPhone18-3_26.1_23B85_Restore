@interface VSOpusDecoder
+ (id)sharedInstance;
- (OpaqueAudioConverter)_opusDecoder:(AudioStreamBasicDescription *)a3;
- (id)beginChunkDecoderForStreamDescription:(AudioStreamBasicDescription *)a3;
- (id)decodeChunk:(id)a3 outError:(id *)a4;
- (id)decodeChunks:(id)a3 streamDescription:(AudioStreamBasicDescription *)a4 outError:(id *)a5;
- (void)dealloc;
@end

@implementation VSOpusDecoder

- (void)dealloc
{
  decoder = self->_decoder;
  if (decoder)
  {
    AudioConverterDispose(decoder);
    self->_decoder = 0;
  }

  v4.receiver = self;
  v4.super_class = VSOpusDecoder;
  [(VSOpusDecoder *)&v4 dealloc];
}

- (id)decodeChunk:(id)a3 outError:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:2 * self->_asbd.mFramesPerPacket];
  *&outOutputData.mNumberBuffers = 1;
  outOutputData.mBuffers[0].mData = [v7 mutableBytes];
  outOutputData.mBuffers[0].mNumberChannels = 1;
  outOutputData.mBuffers[0].mDataByteSize = [v7 length];
  ioOutputDataPacketSize = self->_asbd.mFramesPerPacket;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 1;
  decoder = self->_decoder;
  inInputDataProcUserData[0] = MEMORY[0x277D85DD0];
  inInputDataProcUserData[1] = 3221225472;
  inInputDataProcUserData[2] = __38__VSOpusDecoder_decodeChunk_outError___block_invoke;
  inInputDataProcUserData[3] = &unk_279E4F090;
  v26 = v29;
  v28 = &v38;
  v9 = v6;
  v25 = v9;
  v27 = v30;
  v10 = AudioConverterFillComplexBuffer(decoder, AudioConverterFillComplexBuffer_BlockInvoke, inInputDataProcUserData, &ioOutputDataPacketSize, &outOutputData, 0);
  if (v10 != 1836086393 && v10)
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v10];
    v14 = [v18 stringWithFormat:@"Could not finish decoding, res %@", v19];

    v20 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA470];
    v35 = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    v17 = [v20 errorWithDomain:@"VSSpeechServiceDecoderErrorDomain" code:0 userInfo:v16];
  }

  else
  {
    v11 = 0;
    if (!ioOutputDataPacketSize)
    {
      v12 = 0;
      goto LABEL_13;
    }

    v12 = 0;
    if (!outOutputData.mNumberBuffers)
    {
      goto LABEL_13;
    }

    v13 = 2 * ioOutputDataPacketSize;
    if (v13 <= outOutputData.mBuffers[0].mDataByteSize)
    {
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:outOutputData.mBuffers[0].mData length:?];
      v12 = 0;
      goto LABEL_13;
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"decoder gave us %d bytes bytes but we really only expected %d", v13, outOutputData.mBuffers[0].mDataByteSize];
    v15 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA470];
    v37 = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v17 = [v15 errorWithDomain:@"VSSpeechServiceDecoderErrorDomain" code:0 userInfo:v16];
  }

  v12 = v17;

  v11 = 0;
  if (a4 && v12)
  {
    v21 = v12;
    v11 = 0;
    *a4 = v12;
  }

LABEL_13:

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v30, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __38__VSOpusDecoder_decodeChunk_outError___block_invoke(uint64_t a1, _DWORD *a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  if (*(*(*(a1 + 40) + 8) + 24) >= v8)
  {
    if (v8 == 1)
    {
      v11 = [*(a1 + 32) length];
      v12 = *(a1 + 32);
      *(a3 + 16) = [v12 bytes];
      *(a3 + 12) = v11;
      if (a4)
      {
        v13 = *(a1 + 56);
        *v13 = 0;
        *(v13 + 8) = 0;
        *(v13 + 12) = v11;
        *a4 = v13;
      }

      --*(*(*(a1 + 40) + 8) + 24);
      ++*(*(*(a1 + 48) + 8) + 24);

      result = 0;
    }

    else
    {
      v14 = VSGetLogDefault();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = *a2;
        v17 = 134217984;
        v18 = v16;
        _os_log_error_impl(&dword_272850000, v14, OS_LOG_TYPE_ERROR, "Only expecting to get 1 packet at a time, not %lu", &v17, 0xCu);
      }

      result = 1752524863;
    }
  }

  else
  {
    result = 1836086393;
    *a2 = 0;
    *(a3 + 16) = 0;
    *(a3 + 12) = 0;
    if (a4)
    {
      v10 = *(a1 + 56);
      *v10 = 0;
      v10[1] = 0;
      *a4 = v10;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)beginChunkDecoderForStreamDescription:(AudioStreamBasicDescription *)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = *&a3->mBytesPerPacket;
  v9[0] = *&a3->mSampleRate;
  v9[1] = v3;
  v10 = *&a3->mBitsPerChannel;
  if ([(VSOpusDecoder *)self _opusDecoder:v9])
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA470];
    v12[0] = @"Failed to create opus decoder";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v4 = [v5 errorWithDomain:@"VSSpeechServiceDecoderErrorDomain" code:0 userInfo:v6];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)decodeChunks:(id)a3 streamDescription:(AudioStreamBasicDescription *)a4 outError:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = *&a4->mBytesPerPacket;
  v34[0] = *&a4->mSampleRate;
  v34[1] = v9;
  v35 = *&a4->mBitsPerChannel;
  v10 = [(VSOpusDecoder *)self beginChunkDecoderForStreamDescription:v34];
  v11 = v10;
  if (a5 && v10)
  {
    v12 = v10;
    v13 = 0;
    *a5 = v11;
  }

  else
  {
    mFramesPerPacket = a4->mFramesPerPacket;
    v15 = 2 * mFramesPerPacket * [v8 count];
    v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:v15];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = v8;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v28 = v8;
      v19 = *v31;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v30 + 1) + 8 * i);
          v29 = 0;
          v22 = [(VSOpusDecoder *)self decodeChunk:v21 outError:&v29, v28];
          v23 = v29;
          if (v23)
          {
            v24 = v23;

            goto LABEL_14;
          }

          [v13 appendData:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v24 = 0;
LABEL_14:
      v8 = v28;
    }

    else
    {
      v24 = 0;
    }

    [(VSOpusDecoder *)self endChunkDecoding];
    if (v24)
    {
      if (a5)
      {
        v25 = v24;
        *a5 = v24;
      }

      v13 = 0;
    }
  }

  v26 = *MEMORY[0x277D85DE8];

  return v13;
}

- (OpaqueAudioConverter)_opusDecoder:(AudioStreamBasicDescription *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  p_decoder = &self->_decoder;
  result = self->_decoder;
  if (!result)
  {
    if (a3->mSampleRate == 16000.0)
    {
      v7 = &VSAudioFormat16khzPCM;
    }

    else
    {
      if (a3->mSampleRate != 48000.0)
      {
        v11 = VSGetLogDefault();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = a3;
          _os_log_error_impl(&dword_272850000, v11, OS_LOG_TYPE_ERROR, "Invalid target asbd: %@", buf, 0xCu);
        }

        goto LABEL_12;
      }

      v7 = &VSAudioFormat48khzPCM;
    }

    v8 = v7[1];
    *&v16.mSampleRate = *v7;
    *&v16.mBytesPerPacket = v8;
    *&v16.mBitsPerChannel = 16;
    v9 = AudioConverterNew(a3, &v16, p_decoder);
    if (v9)
    {
      v10 = v9;
      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [MEMORY[0x277CCACA8] vs_stringFrom4CC:v10];
        *buf = 138543362;
        v18 = v12;
        _os_log_error_impl(&dword_272850000, v11, OS_LOG_TYPE_ERROR, "Could not create Opus decoder: %{public}@", buf, 0xCu);
      }

LABEL_12:

      result = 0;
      goto LABEL_13;
    }

    v13 = *&a3->mSampleRate;
    v14 = *&a3->mBytesPerPacket;
    *&self->_asbd.mBitsPerChannel = *&a3->mBitsPerChannel;
    *&self->_asbd.mSampleRate = v13;
    *&self->_asbd.mBytesPerPacket = v14;
    result = self->_decoder;
  }

LABEL_13:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_1312);
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

void __31__VSOpusDecoder_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VSOpusDecoder);
  v1 = sharedInstance_sSharedInstance;
  sharedInstance_sSharedInstance = v0;
}

@end