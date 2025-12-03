@interface VSOpusEncoder
- (VSOpusEncoder)initWithSourceASBD:(AudioStreamBasicDescription *)d;
- (void)encodeChunk:(id)chunk;
- (void)endEncoding;
- (void)setErrorHandler:(id)handler;
- (void)setOpusDataHandler:(id)handler;
@end

@implementation VSOpusEncoder

- (void)endEncoding
{
  [(VSOpusEncoder *)self encodeChunk:0];
  converter = self->_converter;

  [(AVAudioConverter *)converter reset];
}

- (void)encodeChunk:(id)chunk
{
  chunkCopy = chunk;
  v5 = [chunkCopy length];
  v6 = v5 / [(AVAudioFormat *)self->_fromFormat streamDescription][24];
  data = [MEMORY[0x277CBEB28] data];
  data2 = [MEMORY[0x277CBEB28] data];
  v21 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v29 = 0;
  v20 = MEMORY[0x277D85DD0];
  do
  {
    converter = self->_converter;
    outputBuffer = self->_outputBuffer;
    v27 = 0;
    v23[0] = v20;
    v23[1] = 3221225472;
    v23[2] = __29__VSOpusEncoder_encodeChunk___block_invoke;
    v23[3] = &unk_279E4F068;
    v26 = v6;
    v25 = v28;
    v23[4] = self;
    v10 = chunkCopy;
    v24 = v10;
    v11 = [(AVAudioConverter *)converter convertToBuffer:outputBuffer error:&v27 withInputFromBlock:v23];
    v12 = v27;
    if (v11 <= 1)
    {
      [data appendBytes:*(-[AVAudioCompressedBuffer audioBufferList](self->_outputBuffer length:{"audioBufferList") + 16), *(-[AVAudioCompressedBuffer audioBufferList](self->_outputBuffer, "audioBufferList") + 12)}];
      v13 = v6;
      v14 = chunkCopy;
      v15 = 0;
      v16 = 0;
      v22 = 0uLL;
      while (v16 < [(AVAudioCompressedBuffer *)self->_outputBuffer packetCount])
      {
        v22 = [(AVAudioCompressedBuffer *)self->_outputBuffer packetDescriptions][v15];
        *&v22 = v22 + self->_opusDataOffset;
        [data2 appendBytes:&v22 length:16];
        ++v16;
        v15 += 16;
      }

      self->_opusDataOffset = v22 + HIDWORD(v22);
      v21 += [(AVAudioCompressedBuffer *)self->_outputBuffer packetCount];
      chunkCopy = v14;
      v6 = v13;
    }
  }

  while (!v11 && !v12);
  if (v12)
  {
    errorHandler = self->_errorHandler;
    if (errorHandler)
    {
      errorHandler[2](errorHandler, v12);
    }
  }

  else
  {
    opusDataHandler = self->_opusDataHandler;
    if (opusDataHandler)
    {
      opusDataHandler[2](opusDataHandler, data, v21, data2);
    }
  }

  _Block_object_dispose(v28, 8);
}

id __29__VSOpusEncoder_encodeChunk___block_invoke(uint64_t a1, int a2, uint64_t *a3)
{
  if (*(a1 + 56))
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v7 = (*([*(*(a1 + 32) + 24) streamDescription] + 24) * v6);
    if ([*(a1 + 40) length] > v7)
    {
      v8 = *([*(*(a1 + 32) + 32) streamDescription] + 20) * a2;
      v9 = *(a1 + 56) - *(*(*(a1 + 48) + 8) + 24);
      if (v8 >= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:*(*(a1 + 32) + 24) frameCapacity:v10];
      [v11 setFrameLength:v10];
      LODWORD(v12) = *([*(*(a1 + 32) + 24) streamDescription] + 24) * v10;
      v13 = [*(a1 + 40) length] - v7;
      if (v12 >= v13)
      {
        v12 = v13;
      }

      else
      {
        v12 = v12;
      }

      memcpy(*([v11 mutableAudioBufferList] + 16), (objc_msgSend(*(a1 + 40), "bytes") + v7), v12);
      *([v11 mutableAudioBufferList] + 12) = v12;
      *a3 = 0;
      *(*(*(a1 + 48) + 8) + 24) += v10;
      goto LABEL_13;
    }

    v11 = 0;
    v14 = 1;
  }

  else
  {
    v11 = 0;
    v14 = 2;
  }

  *a3 = v14;
LABEL_13:

  return v11;
}

- (void)setErrorHandler:(id)handler
{
  v4 = MEMORY[0x2743CEF70](handler, a2);
  errorHandler = self->_errorHandler;
  self->_errorHandler = v4;
}

- (void)setOpusDataHandler:(id)handler
{
  v4 = MEMORY[0x2743CEF70](handler, a2);
  opusDataHandler = self->_opusDataHandler;
  self->_opusDataHandler = v4;
}

- (VSOpusEncoder)initWithSourceASBD:(AudioStreamBasicDescription *)d
{
  v25 = *MEMORY[0x277D85DE8];
  v22.receiver = self;
  v22.super_class = VSOpusEncoder;
  v4 = [(VSOpusEncoder *)&v22 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:d];
    fromFormat = v4->_fromFormat;
    v4->_fromFormat = v5;

    v7 = [objc_alloc(MEMORY[0x277CB83A8]) initWithStreamDescription:&VSAudioFormat48khzOpus];
    toFormat = v4->_toFormat;
    v4->_toFormat = v7;

    v9 = [objc_alloc(MEMORY[0x277CB8380]) initFromFormat:v4->_fromFormat toFormat:v4->_toFormat];
    converter = v4->_converter;
    v4->_converter = v9;

    if (![(AVAudioConverter *)v4->_converter maximumOutputPacketSize])
    {
      v11 = VSGetLogDefault();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v21 = v4->_converter;
        *buf = 138412290;
        v24 = v21;
        _os_log_error_impl(&dword_272850000, v11, OS_LOG_TYPE_ERROR, "converter.maximumOutputPacketSize is 0. Falling back to maximumPacketSize 1024. Converter is %@", buf, 0xCu);
      }

      v12 = VSGetLogDefault();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_272850000, v12, OS_LOG_TYPE_FAULT, "AVAudioConverter.maximumOutputPacketSize is 0.", buf, 2u);
      }
    }

    v13 = objc_alloc(MEMORY[0x277CB8370]);
    v14 = v4->_toFormat;
    maximumOutputPacketSize = [(AVAudioConverter *)v4->_converter maximumOutputPacketSize];
    if (maximumOutputPacketSize)
    {
      v16 = maximumOutputPacketSize;
    }

    else
    {
      v16 = 1024;
    }

    v17 = [v13 initWithFormat:v14 packetCapacity:50 maximumPacketSize:v16];
    outputBuffer = v4->_outputBuffer;
    v4->_outputBuffer = v17;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v4;
}

@end