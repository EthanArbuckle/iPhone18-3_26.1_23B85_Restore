@interface ProsodyTransferData
- (AudioStreamBasicDescription)asbd;
- (ProsodyTransferData)init;
- (void)setAsbd:(AudioStreamBasicDescription *)asbd;
@end

@implementation ProsodyTransferData

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