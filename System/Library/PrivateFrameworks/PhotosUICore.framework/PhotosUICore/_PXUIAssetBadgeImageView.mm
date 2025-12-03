@interface _PXUIAssetBadgeImageView
- (_PXUIAssetBadgeImageView)initWithFrame:(CGRect)frame;
- (void)setImage:(id)image;
@end

@implementation _PXUIAssetBadgeImageView

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v8 = imageCopy;
    objc_storeStrong(&self->_image, image);
    layer = [(_PXUIAssetBadgeImageView *)self layer];
    v7 = v8;
    [layer setContents:{-[UIImage CGImage](v8, "CGImage")}];

    imageCopy = v8;
  }
}

- (_PXUIAssetBadgeImageView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _PXUIAssetBadgeImageView;
  v3 = [(_PXUIAssetBadgeImageView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(_PXUIAssetBadgeImageView *)v3 layer];
    [layer setContentsGravity:@"resize"];
  }

  return v4;
}

@end