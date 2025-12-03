@interface PXDebug
- (id)__dbg_snapshotImage;
- (void)setPreviewImage:(CGImage *)image;
@end

@implementation PXDebug

- (id)__dbg_snapshotImage
{
  image = [(PXDebug *)self image];
  [(PXDebug *)self alpha];
  v4 = [image px_imageByApplyingAlpha:?];

  return v4;
}

- (void)setPreviewImage:(CGImage *)image
{
  if (self->_previewImage != image)
  {
    self->_previewImage = image;
    if (image)
    {
      v4 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:image];
      [(PXDebug *)self setImage:v4];
    }

    else
    {

      [(PXDebug *)self setImage:0];
    }
  }
}

@end