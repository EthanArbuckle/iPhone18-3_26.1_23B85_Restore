@interface TSKCenterTilingImageView
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)setCenterTileImage:(id)a3;
- (void)setLeftCapImage:(id)a3;
- (void)setRightCapImage:(id)a3;
@end

@implementation TSKCenterTilingImageView

- (void)setLeftCapImage:(id)a3
{
  if (self->mLeftCapImage != a3)
  {
    v5 = a3;

    self->mLeftCapImage = a3;

    [(TSKCenterTilingImageView *)self setNeedsDisplay];
  }
}

- (void)setCenterTileImage:(id)a3
{
  if (self->mCenterTileImage != a3)
  {
    v5 = a3;

    self->mCenterTileImage = a3;

    [(TSKCenterTilingImageView *)self setNeedsDisplay];
  }
}

- (void)setRightCapImage:(id)a3
{
  if (self->mRightCapImage != a3)
  {
    v5 = a3;

    self->mRightCapImage = a3;

    [(TSKCenterTilingImageView *)self setNeedsDisplay];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKCenterTilingImageView;
  [(TSKCenterTilingImageView *)&v3 dealloc];
}

- (void)drawRect:(CGRect)a3
{
  [(TSKCenterTilingImageView *)self bounds:a3.origin.x];
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