@interface VPWatermarkReader
- (VPWatermarkReader)init;
- (id)readWatermarkInPixelBuffer:(__CVBuffer *)a3 error:(id *)a4;
- (void)reset;
@end

@implementation VPWatermarkReader

- (VPWatermarkReader)init
{
  v4.receiver = self;
  v4.super_class = VPWatermarkReader;
  v2 = [(VPWatermarkReader *)&v4 init];
  if (v2)
  {
    v2->_readerResetTicks = SecondsToUpTicks();
  }

  return v2;
}

- (void)reset
{
  reader = self->_reader;
  if (reader)
  {
    HCImagePerspectiveReader::Reset(reader);
  }
}

- (id)readWatermarkInPixelBuffer:(__CVBuffer *)a3 error:(id *)a4
{
  v6 = [(VPWatermarkReader *)self firstCapturedFrameDate:a3];

  if (!v6)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    [(VPWatermarkReader *)self setFirstCapturedFrameDate:v7];
  }

  if (!a3)
  {
    if (gLogCategory_SVW > 60 || gLogCategory_SVW == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_53;
    }

LABEL_42:
    LogPrintF();
LABEL_53:
    v25 = NSErrorWithOSStatusF();
    [(VPWatermarkReader *)self setLatestError:v25];

    goto LABEL_37;
  }

  if (!CVPixelBufferIsPlanar(a3))
  {
    if (gLogCategory_SVW > 60 || gLogCategory_SVW == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_53;
    }

    goto LABEL_42;
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 1uLL);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 1uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
  v11 = BytesPerRowOfPlane;
  if (!self->_reader || WidthOfPlane != self->_readerWidth || HeightOfPlane != self->_readerHeight || BytesPerRowOfPlane != self->_readerRowBytes)
  {
    if (gLogCategory_SVW <= 30 && (gLogCategory_SVW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    reader = self->_reader;
    if (reader)
    {
      HCImagePerspectiveReader::~HCImagePerspectiveReader(reader);
      MEMORY[0x2743C1750](v13, 0x1030C4065FB1DD3, v14);
    }

    operator new();
  }

  v15 = mach_absolute_time();
  v16 = v15;
  if (self->_readerLastProgress > 0.0 && v15 - self->_readerLastWatermarkTicks >= self->_readerResetTicks)
  {
    if (gLogCategory_SVW <= 20 && (gLogCategory_SVW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    HCImagePerspectiveReader::Reset(self->_reader);
  }

  if (CVPixelBufferLockBaseAddress(a3, 1uLL))
  {
    if (gLogCategory_SVW <= 60 && (gLogCategory_SVW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v26 = NSErrorWithOSStatusF();
    [(VPWatermarkReader *)self setLatestError:v26];
    goto LABEL_21;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL);
  v18 = HCImagePerspectiveReader::ProcessUVFrame(self->_reader, BaseAddressOfPlane, HeightOfPlane, WidthOfPlane, v11, v27);
  CVPixelBufferUnlockBaseAddress(a3, 1uLL);
  if (v18)
  {
    if (gLogCategory_SVW <= 60 && (gLogCategory_SVW != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v26 = NSErrorWithOSStatusF();
    [(VPWatermarkReader *)self setLatestError:v26];
LABEL_21:

    goto LABEL_37;
  }

  if (v27[0] == 1)
  {
    self->_readerLastWatermarkTicks = v16;
    v19 = *(self->_reader->var5 + 1);
    v20 = v19[1] / *v19;
    if (v20 != self->_readerLastProgress)
    {
      if (gLogCategory_SVW <= 10 && (gLogCategory_SVW != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      self->_readerLastProgress = v20;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](v20 * 100.0);
      }
    }

    v22 = self->_reader;
    var6 = v22->var6;
    if (var6)
    {
      [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:var6 length:strnlen(v22->var6 encoding:{0x6EuLL), 4}];
      HCImagePerspectiveReader::Reset(self->_reader);
    }
  }

LABEL_37:

  return 0;
}

@end