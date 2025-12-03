@interface PXCMMAssetStatusBadgeView
+ (CGSize)preferredSize;
- (void)_updateImageViewIfNeeded;
- (void)becomeReusable;
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
- (void)prepareForReuse;
- (void)setStatus:(int64_t)status;
@end

@implementation PXCMMAssetStatusBadgeView

+ (CGSize)preferredSize
{
  v2 = MEMORY[0x1E69DD250];
  systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
  v4 = [v2 px_circularGlyphViewWithName:@"checkmark.circle" backgroundColor:systemGreenColor];

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
    status = [(PXCMMAssetStatusBadgeView *)self status];
    if (status < 2)
    {
      glyphView = [(PXCMMAssetStatusBadgeView *)self glyphView];
      [glyphView removeFromSuperview];

      [(PXCMMAssetStatusBadgeView *)self setGlyphView:0];
    }

    else
    {
      if (status == -1)
      {
        glyphView2 = [(PXCMMAssetStatusBadgeView *)self glyphView];
        [glyphView2 removeFromSuperview];

        [(PXCMMAssetStatusBadgeView *)self setGlyphView:0];
        v5 = MEMORY[0x1E69DD250];
        systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
        v7 = @"exclamationmark.circle";
      }

      else
      {
        if (status != 2)
        {
          return;
        }

        glyphView3 = [(PXCMMAssetStatusBadgeView *)self glyphView];
        [glyphView3 removeFromSuperview];

        [(PXCMMAssetStatusBadgeView *)self setGlyphView:0];
        v5 = MEMORY[0x1E69DD250];
        systemRedColor = [MEMORY[0x1E69DC888] systemGreenColor];
        v7 = @"checkmark.circle";
      }

      v10 = [v5 px_circularGlyphViewWithName:v7 backgroundColor:systemRedColor];

      [(PXCMMAssetStatusBadgeView *)self addSubview:v10];
      [(PXCMMAssetStatusBadgeView *)self setGlyphView:v10];
    }
  }
}

- (void)setStatus:(int64_t)status
{
  if (self->_status != status)
  {
    self->_status = status;
    [(PXCMMAssetStatusBadgeView *)self _invalidateImageView];
  }
}

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  -[PXCMMAssetStatusBadgeView setStatus:](self, "setStatus:", [data status]);

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