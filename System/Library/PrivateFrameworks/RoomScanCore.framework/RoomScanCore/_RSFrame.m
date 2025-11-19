@interface _RSFrame
- (__n128)referenceOriginTransform;
- (__n128)setReferenceOriginTransform:(__n128)a3;
- (void)dealloc;
@end

@implementation _RSFrame

- (__n128)setReferenceOriginTransform:(__n128)a3
{
  result[7] = a2;
  result[8] = a3;
  result[9] = a4;
  result[10] = a5;
  return result;
}

- (__n128)referenceOriginTransform
{
  result = *(a1 + 112);
  v2 = *(a1 + 128);
  v3 = *(a1 + 144);
  v4 = *(a1 + 160);
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