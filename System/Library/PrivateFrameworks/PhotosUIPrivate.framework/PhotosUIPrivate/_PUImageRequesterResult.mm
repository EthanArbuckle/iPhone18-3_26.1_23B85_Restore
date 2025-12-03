@interface _PUImageRequesterResult
- (CGSize)targetSize;
- (id)description;
- (void)dealloc;
- (void)setGainMapImage:(CGImage *)image;
@end

@implementation _PUImageRequesterResult

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v21 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v20 = NSStringFromClass(v3);
  asset = [(_PUImageRequesterResult *)self asset];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  asset2 = [(_PUImageRequesterResult *)self asset];
  uuid = [asset2 uuid];
  [(_PUImageRequesterResult *)self targetSize];
  v8 = NSStringFromCGSize(v24);
  image = [(_PUImageRequesterResult *)self image];
  [image size];
  v10 = NSStringFromCGSize(v25);
  if ([(_PUImageRequesterResult *)self gainMapImage])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v12 = v11;
  [(_PUImageRequesterResult *)self gainMapValue];
  v14 = v13;
  if ([(_PUImageRequesterResult *)self imageIsFullQuality])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = v15;
  [(_PUImageRequesterResult *)self timeIntervalSinceRequest];
  v18 = [v21 initWithFormat:@"<%@ %p>:\n\tAsset: %@ %@\n\tTargetSize: %@\n\tImageSize: %@\n\tGainMapImage: %@\n\tGainMapValue: %f\n\tFullQuality: %@\n\tLatency: %.3f", v20, self, v5, uuid, v8, v10, v12, *&v14, v16, v17];

  return v18;
}

- (void)dealloc
{
  CGImageRelease(self->_gainMapImage);
  v3.receiver = self;
  v3.super_class = _PUImageRequesterResult;
  [(_PUImageRequesterResult *)&v3 dealloc];
}

- (void)setGainMapImage:(CGImage *)image
{
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != image)
  {
    CGImageRelease(gainMapImage);
    self->_gainMapImage = CGImageRetain(image);
  }
}

@end