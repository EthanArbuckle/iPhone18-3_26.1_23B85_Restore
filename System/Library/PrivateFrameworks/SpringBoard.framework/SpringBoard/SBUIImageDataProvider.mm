@interface SBUIImageDataProvider
- (SBUIImageDataProvider)initWithImage:(id)image context:(id)context scaleFactor:(double)factor;
- (id)fetchImageForFormat:(int64_t)format;
@end

@implementation SBUIImageDataProvider

- (SBUIImageDataProvider)initWithImage:(id)image context:(id)context scaleFactor:(double)factor
{
  imageCopy = image;
  contextCopy = context;
  if (!imageCopy)
  {
    [SBUIImageDataProvider initWithImage:a2 context:self scaleFactor:?];
  }

  v15.receiver = self;
  v15.super_class = SBUIImageDataProvider;
  v12 = [(SBUIImageDataProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, image);
    objc_storeStrong(&v13->_context, context);
    v13->_scaleFactor = factor;
  }

  return v13;
}

- (id)fetchImageForFormat:(int64_t)format
{
  v4 = self->_image;
  if ((BSFloatIsOne() & 1) == 0)
  {
    v5 = [(UIImage *)v4 sbf_scaleImage:0 canUseIOSurface:self->_scaleFactor];

    v4 = v5;
  }

  return v4;
}

- (void)initWithImage:(uint64_t)a1 context:(uint64_t)a2 scaleFactor:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSnapshotDataProvider.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"image"}];
}

@end