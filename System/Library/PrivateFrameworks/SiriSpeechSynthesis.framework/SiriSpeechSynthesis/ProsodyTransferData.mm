@interface ProsodyTransferData
- (AudioStreamBasicDescription)asbd;
- (ProsodyTransferData)init;
- (void)setAsbd:(AudioStreamBasicDescription *)a3;
@end

@implementation ProsodyTransferData

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

- (ProsodyTransferData)init
{
  v3.receiver = self;
  v3.super_class = ProsodyTransferData;
  result = [(ProsodyTransferData *)&v3 init];
  if (result)
  {
    result->_asbd.mSampleRate = 16000.0;
  }

  return result;
}

@end