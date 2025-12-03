@interface TSKCenterTilingImageView
- (void)dealloc;
- (void)drawRect:(CGRect)rect;
- (void)setCenterTileImage:(id)image;
- (void)setLeftCapImage:(id)image;
- (void)setRightCapImage:(id)image;
@end

@implementation TSKCenterTilingImageView

- (void)setLeftCapImage:(id)image
{
  if (self->mLeftCapImage != image)
  {
    imageCopy = image;

    self->mLeftCapImage = image;

    [(TSKCenterTilingImageView *)self setNeedsDisplay];
  }
}

- (void)setCenterTileImage:(id)image
{
  if (self->mCenterTileImage != image)
  {
    imageCopy = image;

    self->mCenterTileImage = image;

    [(TSKCenterTilingImageView *)self setNeedsDisplay];
  }
}

- (void)setRightCapImage:(id)image
{
  if (self->mRightCapImage != image)
  {
    imageCopy = image;

    self->mRightCapImage = image;

    [(TSKCenterTilingImageView *)self setNeedsDisplay];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKCenterTilingImageView;
  [(TSKCenterTilingImageView *)&v3 dealloc];
}

- (void)drawRect:(CGRect)rect
{
  [(TSKCenterTilingImageView *)self bounds:rect.origin.x];
  v5 = v4;
  v7 = v6;
  [(TSKCenterTilingImageView *)self bounds];
  MaxX = CGRectGetMaxX(v18);
  [(UIImage *)self->mRightCapImage size];
  v10 = MaxX - v9;
  [(UIImage *)self->mLeftCapImage size];
  v12 = v5 + v11;
  v13 = v10 - (v5 + v11);
  [(TSKCenterTilingImageView *)self bounds];
  v15 = v14;
  [(UIImage *)self->mLeftCapImage drawAtPoint:v5, v7];
  [(UIImage *)self->mCenterTileImage drawAsPatternInRect:v12, v7, v13, v15];
  mRightCapImage = self->mRightCapImage;

  [(UIImage *)mRightCapImage drawAtPoint:v10, v7];
}

@end