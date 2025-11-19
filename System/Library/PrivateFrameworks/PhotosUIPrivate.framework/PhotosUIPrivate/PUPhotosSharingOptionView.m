@interface PUPhotosSharingOptionView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PUPhotosSharingOptionView)initWithFrame:(CGRect)a3;
- (void)assetBadgeView:(id)a3 userDidSelectBadges:(unint64_t)a4;
- (void)layoutSubviews;
- (void)setInteractive:(BOOL)a3;
- (void)setTarget:(id)a3 action:(SEL)a4;
- (void)setToggled:(BOOL)a3;
@end

@implementation PUPhotosSharingOptionView

- (void)assetBadgeView:(id)a3 userDidSelectBadges:(unint64_t)a4
{
  v5 = a3;
  if (self->_action)
  {
    v9 = v5;
    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    if (self->_action)
    {
      action = self->_action;
    }

    else
    {
      action = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_target);
    [v6 sendAction:action to:WeakRetained from:self forEvent:0];

    v5 = v9;
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PUPhotosSharingOptionView;
  [(PUPhotosSharingOptionView *)&v7 layoutSubviews];
  if ([(PUPhotosSharingOptionView *)self isInteractive])
  {
    [(PUPhotosSharingOptionView *)self isToggled];
  }

  toggleGlyphButton = self->_toggleGlyphButton;
  PXAssetBadgeInfoCreateWithBadges();
  [(PXUIAssetBadgeView *)toggleGlyphButton setBadgeInfo:&v6];
  [(PXUIAssetBadgeView *)self->_toggleGlyphButton sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  [(PXUIAssetBadgeView *)self->_toggleGlyphButton setFrame:0.0, 0.0, v4, v5];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(PUPhotosSharingOptionView *)self bounds];
  v11 = CGRectInset(v10, -8.0, -8.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (void)setTarget:(id)a3 action:(SEL)a4
{
  objc_storeWeak(&self->_target, a3);
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0;
  }

  self->_action = v6;
}

- (void)setToggled:(BOOL)a3
{
  if (self->_toggled != a3)
  {
    self->_toggled = a3;
    [(PUPhotosSharingOptionView *)self setNeedsLayout];
  }
}

- (void)setInteractive:(BOOL)a3
{
  if (self->_interactive != a3)
  {
    self->_interactive = a3;
    [(PUPhotosSharingOptionView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PXUIAssetBadgeView *)self->_toggleGlyphButton sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PUPhotosSharingOptionView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PUPhotosSharingOptionView;
  v3 = [(PUPhotosSharingOptionView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69C3BE0]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    toggleGlyphButton = v3->_toggleGlyphButton;
    v3->_toggleGlyphButton = v5;

    [(PXUIAssetBadgeView *)v3->_toggleGlyphButton setDelegate:v3];
    [(PXUIAssetBadgeView *)v3->_toggleGlyphButton setStyle:4];
    [(PXUIAssetBadgeView *)v3->_toggleGlyphButton setOverContent:1];
    [(PUPhotosSharingOptionView *)v3 addSubview:v3->_toggleGlyphButton];
  }

  return v3;
}

@end