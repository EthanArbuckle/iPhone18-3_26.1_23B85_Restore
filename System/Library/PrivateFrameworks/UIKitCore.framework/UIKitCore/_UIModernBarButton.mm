@interface _UIModernBarButton
- (BOOL)_guardAgainstDegenerateBaselineCalculation;
- (BOOL)_shouldAdjustToTraitCollection;
- (CGRect)_selectedIndicatorBounds;
- (CGRect)contentRectForBounds:(CGRect)bounds;
- (CGRect)selectionIndicatorViewFrame;
- (CGSize)_roundSize:(CGSize)size;
- (UIEdgeInsets)_additionalSelectionInsets;
- (_UIModernBarButton)initWithCoder:(id)coder;
- (_UIModernBarButton)initWithFrame:(CGRect)frame;
- (id)_selectedIndicatorViewWithImage:(id)image;
- (void)_registerForTraitChangeNotifications;
- (void)_setGuardAgainstDegenerateBaselineCalculation:(BOOL)calculation;
- (void)_setupForUseAsImageButton;
- (void)_updateMonochromaticTreatment;
- (void)didMoveToWindow;
- (void)setEnableMonochromaticTreatmentOnImageAndTitle:(BOOL)title;
- (void)setSelectionIndicatorViewFrame:(CGRect)frame;
@end

@implementation _UIModernBarButton

- (BOOL)_shouldAdjustToTraitCollection
{
  v2 = dyld_program_sdk_at_least();
  if (v2)
  {

    LOBYTE(v2) = _UIBarsUseDynamicType();
  }

  return v2;
}

- (BOOL)_guardAgainstDegenerateBaselineCalculation
{
  _imageView = [(UIButton *)self _imageView];
  if (_imageView && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    guardAgainstDegenerateBaselineCalculation = [_imageView _guardAgainstDegenerateBaselineCalculation];
  }

  else
  {
    guardAgainstDegenerateBaselineCalculation = self->_guardAgainstDegenerateBaselineCalculation;
  }

  return guardAgainstDegenerateBaselineCalculation & 1;
}

- (void)_setupForUseAsImageButton
{
  v12[2] = *MEMORY[0x1E69E9840];
  imageView = [(UIButton *)self imageView];
  v4 = +[UIImageSymbolConfiguration unspecifiedConfiguration];
  traitCollection = [(UIView *)self traitCollection];
  v6 = [v4 configurationWithTraitCollection:traitCollection];
  [imageView _setOverridingSymbolConfiguration:v6];

  v12[0] = 0x1EFE32440;
  v12[1] = 0x1EFE324A0;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47___UIModernBarButton__setupForUseAsImageButton__block_invoke;
  v10[3] = &unk_1E70F7390;
  v11 = imageView;
  v8 = imageView;
  v9 = [(UIView *)self _registerForTraitTokenChanges:v7 withHandler:v10];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _UIModernBarButton;
  [(UIView *)&v4 didMoveToWindow];
  window = [(UIView *)self window];

  if (!window)
  {
    [(UIButton *)self setHighlighted:0];
  }
}

- (_UIModernBarButton)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UIModernBarButton;
  result = [(UIButton *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    v4 = *(MEMORY[0x1E695F050] + 16);
    result->_selectionIndicatorViewFrame.origin = *MEMORY[0x1E695F050];
    result->_selectionIndicatorViewFrame.size = v4;
  }

  return result;
}

- (_UIModernBarButton)initWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _UIModernBarButton;
  result = [(UIButton *)&v5 initWithCoder:coder];
  if (result)
  {
    v4 = *(MEMORY[0x1E695F050] + 16);
    result->_selectionIndicatorViewFrame.origin = *MEMORY[0x1E695F050];
    result->_selectionIndicatorViewFrame.size = v4;
  }

  return result;
}

- (void)_registerForTraitChangeNotifications
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v5 = [(UIView *)self registerForTraitChanges:v4 withTarget:self action:sel__updateMonochromaticTreatment];
}

- (CGSize)_roundSize:(CGSize)size
{
  UICeilToViewScale(self);
  v5 = v4;
  UICeilToViewScale(self);
  v7 = v6;
  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGRect)contentRectForBounds:(CGRect)bounds
{
  if (bounds.size.width == *MEMORY[0x1E695F060] && bounds.size.height == *(MEMORY[0x1E695F060] + 8))
  {
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v11 = v3;
    v12 = v4;
    v10.receiver = self;
    v10.super_class = _UIModernBarButton;
    [(UIButton *)&v10 contentRectForBounds:bounds.origin.x, bounds.origin.y];
  }

  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)_selectedIndicatorBounds
{
  [(_UIModernBarButton *)self _additionalSelectionInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self bounds];
  [(_UIModernBarButton *)self selectionIndicatorViewFrame];
  if (CGRectEqualToRect(v20, *MEMORY[0x1E695F050]))
  {
    v19.receiver = self;
    v19.super_class = _UIModernBarButton;
    [(UIButton *)&v19 _selectedIndicatorBounds];
  }

  else
  {
    [(_UIModernBarButton *)self selectionIndicatorViewFrame];
  }

  v15 = v6 + v11;
  v16 = v13 - (v10 + v6);
  v17 = v4 + v12;
  v18 = v14 - (v4 + v8);
  result.size.height = v18;
  result.size.width = v16;
  result.origin.y = v17;
  result.origin.x = v15;
  return result;
}

- (void)setSelectionIndicatorViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_selectionIndicatorViewFrame = &self->_selectionIndicatorViewFrame;
  if (!CGRectEqualToRect(frame, self->_selectionIndicatorViewFrame))
  {
    p_selectionIndicatorViewFrame->origin.x = x;
    p_selectionIndicatorViewFrame->origin.y = y;
    p_selectionIndicatorViewFrame->size.width = width;
    p_selectionIndicatorViewFrame->size.height = height;

    [(UIButton *)self setNeedsLayout];
  }
}

- (id)_selectedIndicatorViewWithImage:(id)image
{
  imageCopy = image;
  if ([(_UIModernBarButton *)self usesTintColorCapsuleForSelection])
  {
    v5 = objc_alloc_init(_UIButtonBarButtonSelectedIndicatorView);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UIModernBarButton;
    v5 = [(UIButton *)&v8 _selectedIndicatorViewWithImage:imageCopy];
  }

  v6 = v5;

  return v6;
}

- (void)_updateMonochromaticTreatment
{
  _imageView = [(UIButton *)self _imageView];

  if (_imageView)
  {
    [(UIButtonVisualProvider *)self->super._visualProvider _updateImageView];
  }

  _titleView = [(UIButton *)self _titleView];

  if (_titleView)
  {
    visualProvider = self->super._visualProvider;

    [(UIButtonVisualProvider *)visualProvider _updateTitleView];
  }
}

- (void)setEnableMonochromaticTreatmentOnImageAndTitle:(BOOL)title
{
  enableMonochromaticTreatmentOnImageAndTitle = self->_enableMonochromaticTreatmentOnImageAndTitle;
  self->_enableMonochromaticTreatmentOnImageAndTitle = title;
  if (enableMonochromaticTreatmentOnImageAndTitle != title)
  {
    _imageView = [(UIButton *)self _imageView];

    if (_imageView)
    {
      [(UIButtonVisualProvider *)self->super._visualProvider _updateImageView];
    }

    _titleView = [(UIButton *)self _titleView];

    if (_titleView)
    {
      visualProvider = self->super._visualProvider;

      [(UIButtonVisualProvider *)visualProvider _updateTitleView];
    }
  }
}

- (void)_setGuardAgainstDegenerateBaselineCalculation:(BOOL)calculation
{
  calculationCopy = calculation;
  self->_guardAgainstDegenerateBaselineCalculation = calculation;
  _imageView = [(UIButton *)self _imageView];
  if (_imageView)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [_imageView _setGuardAgainstDegenerateBaselineCalculation:calculationCopy];
    }
  }
}

- (UIEdgeInsets)_additionalSelectionInsets
{
  top = self->__additionalSelectionInsets.top;
  left = self->__additionalSelectionInsets.left;
  bottom = self->__additionalSelectionInsets.bottom;
  right = self->__additionalSelectionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)selectionIndicatorViewFrame
{
  x = self->_selectionIndicatorViewFrame.origin.x;
  y = self->_selectionIndicatorViewFrame.origin.y;
  width = self->_selectionIndicatorViewFrame.size.width;
  height = self->_selectionIndicatorViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end