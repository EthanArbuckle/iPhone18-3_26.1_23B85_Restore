@interface RPFileTransferProgress
- (RPFileTransferProgress)init;
- (RPFileTransferProgress)initWithCoder:(id)a3;
- (id)descriptionWithLevel:(int)a3;
@end

@implementation RPFileTransferProgress

- (RPFileTransferProgress)init
{
  v11.receiver = self;
  v11.super_class = RPFileTransferProgress;
  v2 = [(RPFileTransferProgress *)&v11 init];
  v3 = v2;
  if (v2)
  {
    __asm { FMOV            V0.2D, #-1.0 }

    *&v2->_bytesPerSecond = _Q0;
    v2->_compressionRate = -1.0;
    v9 = v2;
  }

  return v3;
}

- (RPFileTransferProgress)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = RPFileTransferProgress;
  v3 = [(RPFileTransferProgress *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (id)descriptionWithLevel:(int)a3
{
  v17[1] = 0;
  self->_type;
  NSAppendPrintF();
  v4 = 0;
  v5 = v4;
  if (self->_transferredFileCount < 0 || self->_totalFileCount < 1)
  {
    v16 = v4;
    v6 = &v16;
  }

  else
  {
    v17[0] = v4;
    v6 = v17;
  }

  NSAppendPrintF();
  v7 = *v6;

  if (self->_totalByteCount >= 1)
  {
    totalByteCount = self->_totalByteCount;
    NSAppendPrintF();
    v8 = v7;

    v7 = v8;
  }

  if (self->_bytesPerSecond > 0.0)
  {
    NSAppendPrintF();
    v9 = v7;

    v7 = v9;
  }

  if (self->_compressionRate >= 0.0)
  {
    NSAppendPrintF();
    v10 = v7;

    v7 = v10;
  }

  linkType = self->_linkType;
  if (linkType)
  {
    if (linkType <= 0xB)
    {
      v12 = off_1E7C946F0[linkType - 1];
    }

    NSAppendPrintF();
    v13 = v7;

    v7 = v13;
  }

  return v7;
}

@end