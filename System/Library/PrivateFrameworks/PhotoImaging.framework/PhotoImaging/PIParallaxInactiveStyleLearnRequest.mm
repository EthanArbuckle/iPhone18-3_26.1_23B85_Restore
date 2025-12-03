@interface PIParallaxInactiveStyleLearnRequest
- (CGRect)sourceFrame;
- (CGRect)targetFrame;
- (PIParallaxInactiveStyleLearnRequest)initWithFromPixelBuffer:(id)buffer frame:(CGRect)frame toPixelBuffer:(id)pixelBuffer frame:(CGRect)a6;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
@end

@implementation PIParallaxInactiveStyleLearnRequest

- (CGRect)targetFrame
{
  x = self->_targetFrame.origin.x;
  y = self->_targetFrame.origin.y;
  width = self->_targetFrame.size.width;
  height = self->_targetFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)sourceFrame
{
  x = self->_sourceFrame.origin.x;
  y = self->_sourceFrame.origin.y;
  width = self->_sourceFrame.size.width;
  height = self->_sourceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)newRenderJob
{
  v3 = [_PIParallaxInactiveStyleLearnJob alloc];

  return [(NURenderJob *)v3 initWithRequest:self];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = PIParallaxInactiveStyleLearnRequest;
  v4 = [(NURenderRequest *)&v18 copyWithZone:zone];
  if (v4)
  {
    fromBuffer = [(PIParallaxInactiveStyleLearnRequest *)self fromBuffer];
    v6 = v4[20];
    v4[20] = fromBuffer;

    toBuffer = [(PIParallaxInactiveStyleLearnRequest *)self toBuffer];
    v8 = v4[21];
    v4[21] = toBuffer;

    [(PIParallaxInactiveStyleLearnRequest *)self sourceFrame];
    v4[22] = v9;
    v4[23] = v10;
    v4[24] = v11;
    v4[25] = v12;
    [(PIParallaxInactiveStyleLearnRequest *)self targetFrame];
    v4[26] = v13;
    v4[27] = v14;
    v4[28] = v15;
    v4[29] = v16;
  }

  return v4;
}

- (PIParallaxInactiveStyleLearnRequest)initWithFromPixelBuffer:(id)buffer frame:(CGRect)frame toPixelBuffer:(id)pixelBuffer frame:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = frame.size.height;
  v12 = frame.size.width;
  v13 = frame.origin.y;
  v14 = frame.origin.x;
  bufferCopy = buffer;
  pixelBufferCopy = pixelBuffer;
  v19 = +[PIPhotoEditHelper newComposition];
  v20 = MEMORY[0x1E695F658];
  whiteColor = [MEMORY[0x1E695F610] whiteColor];
  v22 = [v20 imageWithColor:whiteColor];
  v23 = [PIPhotoEditHelper imageSourceWithCIImage:v22 orientation:1];

  [v19 setObject:v23 forKeyedSubscript:@"source"];
  [v19 setMediaType:1];
  v27.receiver = self;
  v27.super_class = PIParallaxInactiveStyleLearnRequest;
  v24 = [(NURenderRequest *)&v27 initWithComposition:v19];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_fromBuffer, buffer);
    objc_storeStrong(&v25->_toBuffer, pixelBuffer);
    v25->_sourceFrame.origin.x = v14;
    v25->_sourceFrame.origin.y = v13;
    v25->_sourceFrame.size.width = v12;
    v25->_sourceFrame.size.height = v11;
    v25->_targetFrame.origin.x = x;
    v25->_targetFrame.origin.y = y;
    v25->_targetFrame.size.width = width;
    v25->_targetFrame.size.height = height;
  }

  return v25;
}

@end