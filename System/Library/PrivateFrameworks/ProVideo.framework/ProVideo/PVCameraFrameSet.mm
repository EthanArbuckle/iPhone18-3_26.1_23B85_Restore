@interface PVCameraFrameSet
- ($01BB1521EC52D44A8E7628F5261DCEC8)orientation;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)presentationTimeStamp;
- (CGAffineTransform)colorTransform;
- (CGAffineTransform)depthTransform;
- (PVCameraFrameSet)initWithColorBuffer:(opaqueCMSampleBuffer *)buffer depthData:(id)data metadata:(id)metadata;
- (PVCameraFrameSet)initWithColorBuffer:(opaqueCMSampleBuffer *)buffer metadata:(id)metadata;
- (PVImageBuffer)colorImageBuffer;
- (void)_sharedInitColorBuffer:(opaqueCMSampleBuffer *)buffer colorTransform:(CGAffineTransform *)transform depthData:(id)data depthTransform:(CGAffineTransform *)depthTransform metadata:(id)metadata;
- (void)dealloc;
- (void)setColorTransform:(CGAffineTransform *)transform;
- (void)setDepthTransform:(CGAffineTransform *)transform;
@end

@implementation PVCameraFrameSet

- (PVCameraFrameSet)initWithColorBuffer:(opaqueCMSampleBuffer *)buffer metadata:(id)metadata
{
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = PVCameraFrameSet;
  v7 = [(PVCameraFrameSet *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v9 = *(MEMORY[0x277CBF2C0] + 16);
    v12[0] = *MEMORY[0x277CBF2C0];
    v12[1] = v9;
    v13 = *(MEMORY[0x277CBF2C0] + 32);
    v11[0] = v12[0];
    v11[1] = v9;
    v11[2] = v13;
    [(PVCameraFrameSet *)v7 _sharedInitColorBuffer:buffer colorTransform:v12 depthData:0 depthTransform:v11 metadata:metadataCopy];
  }

  return v8;
}

- (PVCameraFrameSet)initWithColorBuffer:(opaqueCMSampleBuffer *)buffer depthData:(id)data metadata:(id)metadata
{
  dataCopy = data;
  metadataCopy = metadata;
  v17.receiver = self;
  v17.super_class = PVCameraFrameSet;
  v10 = [(PVCameraFrameSet *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v12 = *(MEMORY[0x277CBF2C0] + 16);
    v15[0] = *MEMORY[0x277CBF2C0];
    v15[1] = v12;
    v16 = *(MEMORY[0x277CBF2C0] + 32);
    v14[0] = v15[0];
    v14[1] = v12;
    v14[2] = v16;
    [(PVCameraFrameSet *)v10 _sharedInitColorBuffer:buffer colorTransform:v15 depthData:dataCopy depthTransform:v14 metadata:metadataCopy];
  }

  return v11;
}

- (void)_sharedInitColorBuffer:(opaqueCMSampleBuffer *)buffer colorTransform:(CGAffineTransform *)transform depthData:(id)data depthTransform:(CGAffineTransform *)depthTransform metadata:(id)metadata
{
  dataCopy = data;
  metadataCopy = metadata;
  self->_colorSampleBuffer = buffer;
  if (buffer)
  {
    CFRetain(buffer);
  }

  v14 = *&transform->a;
  v15 = *&transform->tx;
  *&self->_colorTransform.c = *&transform->c;
  *&self->_colorTransform.tx = v15;
  *&self->_colorTransform.a = v14;
  depthData = self->_depthData;
  self->_depthData = dataCopy;
  v21 = dataCopy;

  v17 = *&depthTransform->a;
  v18 = *&depthTransform->tx;
  *&self->_depthTransform.c = *&depthTransform->c;
  *&self->_depthTransform.tx = v18;
  *&self->_depthTransform.a = v17;
  alphaMaskImageBuffer = self->_alphaMaskImageBuffer;
  self->_alphaMaskImageBuffer = 0;

  metadata = self->_metadata;
  self->_metadata = metadataCopy;
}

- (void)dealloc
{
  colorSampleBuffer = self->_colorSampleBuffer;
  if (colorSampleBuffer)
  {
    CFRelease(colorSampleBuffer);
    self->_colorSampleBuffer = 0;
  }

  metadata = self->_metadata;
  self->_metadata = 0;

  v5.receiver = self;
  v5.super_class = PVCameraFrameSet;
  [(PVCameraFrameSet *)&v5 dealloc];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)presentationTimeStamp
{
  result = self->_colorSampleBuffer;
  if (result)
  {
    return CMSampleBufferGetPresentationTimeStamp(retstr, result);
  }

  *retstr = **&MEMORY[0x277CC0898];
  return result;
}

- (PVImageBuffer)colorImageBuffer
{
  colorSampleBuffer = self->_colorSampleBuffer;
  if (colorSampleBuffer)
  {
    colorSampleBuffer = [PVImageBuffer imageWithCVPixelBuffer:CMSampleBufferGetImageBuffer(colorSampleBuffer)];
    v2 = vars8;
  }

  return colorSampleBuffer;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)orientation
{
  x = self->orientation.x;
  y = self->orientation.y;
  z = self->orientation.z;
  w = self->orientation.w;
  result.var3 = w;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- (CGAffineTransform)colorTransform
{
  v3 = *&self[2].c;
  *&retstr->a = *&self[2].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[2].tx;
  return self;
}

- (void)setColorTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_colorTransform.c = *&transform->c;
  *&self->_colorTransform.tx = v4;
  *&self->_colorTransform.a = v3;
}

- (CGAffineTransform)depthTransform
{
  v3 = *&self[3].c;
  *&retstr->a = *&self[3].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].tx;
  return self;
}

- (void)setDepthTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_depthTransform.c = *&transform->c;
  *&self->_depthTransform.tx = v4;
  *&self->_depthTransform.a = v3;
}

@end