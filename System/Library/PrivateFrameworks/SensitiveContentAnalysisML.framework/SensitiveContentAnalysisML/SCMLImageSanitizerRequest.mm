@interface SCMLImageSanitizerRequest
- (SCMLImageSanitizerRequest)initWithPixelBuffer:(__CVBuffer *)buffer;
@end

@implementation SCMLImageSanitizerRequest

- (SCMLImageSanitizerRequest)initWithPixelBuffer:(__CVBuffer *)buffer
{
  v8.receiver = self;
  v8.super_class = SCMLImageSanitizerRequest;
  v4 = [(SCMLImageSanitizerRequest *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_keepGoing = 0;
    embeddings = v4->_embeddings;
    v4->_pixelBuffer = buffer;
    v4->_embeddings = 0;

    v5->_style = 0;
    *&v5->_isChildPresent = 256;
  }

  return v5;
}

@end