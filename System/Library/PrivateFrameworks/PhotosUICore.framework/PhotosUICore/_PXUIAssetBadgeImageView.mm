@interface _PXUIAssetBadgeImageView
- (_PXUIAssetBadgeImageView)initWithFrame:(CGRect)a3;
- (void)setImage:(id)a3;
@end

@implementation _PXUIAssetBadgeImageView

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_image, a3);
    v6 = [(_PXUIAssetBadgeImageView *)self layer];
    v7 = v8;
    [v6 setContents:{-[UIImage CGImage](v8, "CGImage")}];

    v5 = v8;
  }
}

- (_PXUIAssetBadgeImageView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _PXUIAssetBadgeImageView;
  v3 = [(_PXUIAssetBadgeImageView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_PXUIAssetBadgeImageView *)v3 layer];
    [v5 setContentsGravity:@"resize"];
  }

  return v4;
}

@end