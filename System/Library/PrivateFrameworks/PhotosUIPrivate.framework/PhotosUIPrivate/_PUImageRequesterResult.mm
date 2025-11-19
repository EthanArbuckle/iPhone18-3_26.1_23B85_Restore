@interface _PUImageRequesterResult
- (CGSize)targetSize;
- (id)description;
- (void)dealloc;
- (void)setGainMapImage:(CGImage *)a3;
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
  v22 = [(_PUImageRequesterResult *)self asset];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_PUImageRequesterResult *)self asset];
  v7 = [v6 uuid];
  [(_PUImageRequesterResult *)self targetSize];
  v8 = NSStringFromCGSize(v24);
  v9 = [(_PUImageRequesterResult *)self image];
  [v9 size];
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
  v18 = [v21 initWithFormat:@"<%@ %p>:\n\tAsset: %@ %@\n\tTargetSize: %@\n\tImageSize: %@\n\tGainMapImage: %@\n\tGainMapValue: %f\n\tFullQuality: %@\n\tLatency: %.3f", v20, self, v5, v7, v8, v10, v12, *&v14, v16, v17];

  return v18;
}

- (void)dealloc
{
  CGImageRelease(self->_gainMapImage);
  v3.receiver = self;
  v3.super_class = _PUImageRequesterResult;
  [(_PUImageRequesterResult *)&v3 dealloc];
}

- (void)setGainMapImage:(CGImage *)a3
{
  gainMapImage = self->_gainMapImage;
  if (gainMapImage != a3)
  {
    CGImageRelease(gainMapImage);
    self->_gainMapImage = CGImageRetain(a3);
  }
}

@end