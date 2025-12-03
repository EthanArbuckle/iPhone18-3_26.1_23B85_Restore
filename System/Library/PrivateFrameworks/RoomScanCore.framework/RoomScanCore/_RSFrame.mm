@interface _RSFrame
- (__n128)referenceOriginTransform;
- (__n128)setReferenceOriginTransform:(__n128)transform;
- (void)dealloc;
@end

@implementation _RSFrame

- (__n128)setReferenceOriginTransform:(__n128)transform
{
  result[7] = a2;
  result[8] = transform;
  result[9] = a4;
  result[10] = a5;
  return result;
}

- (__n128)referenceOriginTransform
{
  result = *(self + 112);
  v2 = *(self + 128);
  v3 = *(self + 144);
  v4 = *(self + 160);
  return result;
}

- (void)dealloc
{
  depthBuffer = self->_depthBuffer;
  if (depthBuffer)
  {
    CVPixelBufferRelease(depthBuffer);
    self->_depthBuffer = 0;
  }

  depthConfidenceBuffer = self->_depthConfidenceBuffer;
  if (depthConfidenceBuffer)
  {
    CVPixelBufferRelease(depthConfidenceBuffer);
    self->_depthConfidenceBuffer = 0;
  }

  semanticLabelBuffer = self->_semanticLabelBuffer;
  if (semanticLabelBuffer)
  {
    CVPixelBufferRelease(semanticLabelBuffer);
    self->_semanticLabelBuffer = 0;
  }

  semanticConfidenceBuffer = self->_semanticConfidenceBuffer;
  if (semanticConfidenceBuffer)
  {
    CVPixelBufferRelease(semanticConfidenceBuffer);
    self->_semanticConfidenceBuffer = 0;
  }

  colorBuffer = self->_colorBuffer;
  if (colorBuffer)
  {
    CVPixelBufferRelease(colorBuffer);
    self->_colorBuffer = 0;
  }

  v8.receiver = self;
  v8.super_class = _RSFrame;
  [(_RSFrame *)&v8 dealloc];
}

@end