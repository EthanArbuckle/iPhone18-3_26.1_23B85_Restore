@interface PXDebug
- (id)__dbg_snapshotImage;
- (void)setPreviewImage:(CGImage *)a3;
@end

@implementation PXDebug

- (id)__dbg_snapshotImage
{
  v3 = [(PXDebug *)self image];
  [(PXDebug *)self alpha];
  v4 = [v3 px_imageByApplyingAlpha:?];

  return v4;
}

- (void)setPreviewImage:(CGImage *)a3
{
  if (self->_previewImage != a3)
  {
    self->_previewImage = a3;
    if (a3)
    {
      v4 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:a3];
      [(PXDebug *)self setImage:v4];
    }

    else
    {

      [(PXDebug *)self setImage:0];
    }
  }
}

@end