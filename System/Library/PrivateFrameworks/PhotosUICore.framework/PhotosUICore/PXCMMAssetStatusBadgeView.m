@interface PXCMMAssetStatusBadgeView
+ (CGSize)preferredSize;
- (void)_updateImageViewIfNeeded;
- (void)becomeReusable;
- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4;
- (void)prepareForReuse;
- (void)setStatus:(int64_t)a3;
@end

@implementation PXCMMAssetStatusBadgeView

+ (CGSize)preferredSize
{
  v2 = MEMORY[0x1E69DD250];
  v3 = [MEMORY[0x1E69DC888] systemGreenColor];
  v4 = [v2 px_circularGlyphViewWithName:@"checkmark.circle" backgroundColor:v3];

  [v4 frame];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)_updateImageViewIfNeeded
{
  if (self->_needsUpdateFlags.imageView)
  {
    self->_needsUpdateFlags.imageView = 0;
    v3 = [(PXCMMAssetStatusBadgeView *)self status];
    if (v3 < 2)
    {
      v8 = [(PXCMMAssetStatusBadgeView *)self glyphView];
      [v8 removeFromSuperview];

      [(PXCMMAssetStatusBadgeView *)self setGlyphView:0];
    }

    else
    {
      if (v3 == -1)
      {
        v9 = [(PXCMMAssetStatusBadgeView *)self glyphView];
        [v9 removeFromSuperview];

        [(PXCMMAssetStatusBadgeView *)self setGlyphView:0];
        v5 = MEMORY[0x1E69DD250];
        v6 = [MEMORY[0x1E69DC888] systemRedColor];
        v7 = @"exclamationmark.circle";
      }

      else
      {
        if (v3 != 2)
        {
          return;
        }

        v4 = [(PXCMMAssetStatusBadgeView *)self glyphView];
        [v4 removeFromSuperview];

        [(PXCMMAssetStatusBadgeView *)self setGlyphView:0];
        v5 = MEMORY[0x1E69DD250];
        v6 = [MEMORY[0x1E69DC888] systemGreenColor];
        v7 = @"checkmark.circle";
      }

      v10 = [v5 px_circularGlyphViewWithName:v7 backgroundColor:v6];

      [(PXCMMAssetStatusBadgeView *)self addSubview:v10];
      [(PXCMMAssetStatusBadgeView *)self setGlyphView:v10];
    }
  }
}

- (void)setStatus:(int64_t)a3
{
  if (self->_status != a3)
  {
    self->_status = a3;
    [(PXCMMAssetStatusBadgeView *)self _invalidateImageView];
  }
}

- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4
{
  -[PXCMMAssetStatusBadgeView setStatus:](self, "setStatus:", [a4 status]);

  [(PXCMMAssetStatusBadgeView *)self _updateImageViewIfNeeded];
}

- (void)prepareForReuse
{
  [(PXCMMAssetStatusBadgeView *)self setHidden:0];

  [(PXCMMAssetStatusBadgeView *)self setUserInteractionEnabled:0];
}

- (void)becomeReusable
{
  [(PXCMMAssetStatusBadgeView *)self setHidden:1];
  [(PXCMMAssetStatusBadgeView *)self setStatus:0];

  [(PXCMMAssetStatusBadgeView *)self _updateImageViewIfNeeded];
}

@end