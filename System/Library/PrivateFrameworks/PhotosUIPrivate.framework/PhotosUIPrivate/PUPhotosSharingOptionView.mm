@interface PUPhotosSharingOptionView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PUPhotosSharingOptionView)initWithFrame:(CGRect)frame;
- (void)assetBadgeView:(id)view userDidSelectBadges:(unint64_t)badges;
- (void)layoutSubviews;
- (void)setInteractive:(BOOL)interactive;
- (void)setTarget:(id)target action:(SEL)action;
- (void)setToggled:(BOOL)toggled;
@end

@implementation PUPhotosSharingOptionView

- (void)assetBadgeView:(id)view userDidSelectBadges:(unint64_t)badges
{
  viewCopy = view;
  if (self->_action)
  {
    v9 = viewCopy;
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    if (self->_action)
    {
      action = self->_action;
    }

    else
    {
      action = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_target);
    [mEMORY[0x1E69DC668] sendAction:action to:WeakRetained from:self forEvent:0];

    viewCopy = v9;
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

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(PUPhotosSharingOptionView *)self bounds];
  v11 = CGRectInset(v10, -8.0, -8.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (void)setTarget:(id)target action:(SEL)action
{
  objc_storeWeak(&self->_target, target);
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->_action = actionCopy;
}

- (void)setToggled:(BOOL)toggled
{
  if (self->_toggled != toggled)
  {
    self->_toggled = toggled;
    [(PUPhotosSharingOptionView *)self setNeedsLayout];
  }
}

- (void)setInteractive:(BOOL)interactive
{
  if (self->_interactive != interactive)
  {
    self->_interactive = interactive;
    [(PUPhotosSharingOptionView *)self setNeedsLayout];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PXUIAssetBadgeView *)self->_toggleGlyphButton sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PUPhotosSharingOptionView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PUPhotosSharingOptionView;
  v3 = [(PUPhotosSharingOptionView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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