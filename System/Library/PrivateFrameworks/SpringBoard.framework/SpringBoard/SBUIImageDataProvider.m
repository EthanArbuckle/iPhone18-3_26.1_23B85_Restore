@interface SBUIImageDataProvider
- (SBUIImageDataProvider)initWithImage:(id)a3 context:(id)a4 scaleFactor:(double)a5;
- (id)fetchImageForFormat:(int64_t)a3;
@end

@implementation SBUIImageDataProvider

- (SBUIImageDataProvider)initWithImage:(id)a3 context:(id)a4 scaleFactor:(double)a5
{
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    [SBUIImageDataProvider initWithImage:a2 context:self scaleFactor:?];
  }

  v15.receiver = self;
  v15.super_class = SBUIImageDataProvider;
  v12 = [(SBUIImageDataProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, a3);
    objc_storeStrong(&v13->_context, a4);
    v13->_scaleFactor = a5;
  }

  return v13;
}

- (id)fetchImageForFormat:(int64_t)a3
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