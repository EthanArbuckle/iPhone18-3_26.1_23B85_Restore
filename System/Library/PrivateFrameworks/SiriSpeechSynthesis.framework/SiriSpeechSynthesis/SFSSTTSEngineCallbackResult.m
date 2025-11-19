@interface SFSSTTSEngineCallbackResult
- (AudioStreamBasicDescription)asbd;
- (SFSSTTSEngineCallbackResult)initWithBeginCallback:(id)a3 chunkCallback:(id)a4 endCallback:(id)a5;
- (id).cxx_construct;
- (int)synthesisCallback:(int)a3;
- (void)setAsbd:(AudioStreamBasicDescription *)a3;
@end

@implementation SFSSTTSEngineCallbackResult

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)setAsbd:(AudioStreamBasicDescription *)a3
{
  v3 = *&a3->mSampleRate;
  v4 = *&a3->mBytesPerPacket;
  *&self->_asbd.mBitsPerChannel = *&a3->mBitsPerChannel;
  *&self->_asbd.mBytesPerPacket = v4;
  *&self->_asbd.mSampleRate = v3;
}

- (AudioStreamBasicDescription)asbd
{
  v3 = *&self[2].mBytesPerFrame;
  *&retstr->mSampleRate = *&self[2].mFormatID;
  *&retstr->mBytesPerPacket = v3;
  *&retstr->mBitsPerChannel = self[3].mSampleRate;
  return self;
}

- (int)synthesisCallback:(int)a3
{
  switch(a3)
  {
    case 4:
      chunkCallback = self->_chunkCallback;
      v8 = (*(self->_chunkCallback + 2))();
      error = self->_error;
      self->_error = v8;

      self->_pcmDataBuffer.__end_ = self->_pcmDataBuffer.__begin_;
      return [(NSError *)self->_error code];
    case 1:
      endCallback = self->_endCallback;
      goto LABEL_6;
    case 0:
      endCallback = self->_beginCallback;
LABEL_6:
      v5 = endCallback[2](endCallback, self);
      v6 = self->_error;
      self->_error = v5;

      break;
  }

  return [(NSError *)self->_error code];
}

- (SFSSTTSEngineCallbackResult)initWithBeginCallback:(id)a3 chunkCallback:(id)a4 endCallback:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = SFSSTTSEngineCallbackResult;
  v11 = [(SFSSTTSEngineCallbackResult *)&v19 init];
  if (v11)
  {
    v12 = MEMORY[0x26D631550](v8);
    beginCallback = v11->_beginCallback;
    v11->_beginCallback = v12;

    v14 = MEMORY[0x26D631550](v9);
    chunkCallback = v11->_chunkCallback;
    v11->_chunkCallback = v14;

    v16 = MEMORY[0x26D631550](v10);
    endCallback = v11->_endCallback;
    v11->_endCallback = v16;
  }

  return v11;
}

@end