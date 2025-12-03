@interface SBHPageManagementCheckbox
- (CALayer)deselectedMask;
- (CGSize)intrinsicContentSize;
- (SBHPageManagementCheckbox)initWithFrame:(CGRect)frame checkboxDiameter:(double)diameter;
- (double)effectiveHighlightAlpha;
- (double)effectiveImageAlpha;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)updateDeselectedMaskState;
@end

@implementation SBHPageManagementCheckbox

- (SBHPageManagementCheckbox)initWithFrame:(CGRect)frame checkboxDiameter:(double)diameter
{
  v20.receiver = self;
  v20.super_class = SBHPageManagementCheckbox;
  v5 = [(SBHPageManagementCheckbox *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_checkboxDiameter = diameter;
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    highlightView = v6->_highlightView;
    v6->_highlightView = v7;

    v9 = v6->_highlightView;
    v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.431372549 alpha:1.0];
    [(UIView *)v9 setBackgroundColor:v10];

    [(UIView *)v6->_highlightView setAlpha:0.0];
    [(UIView *)v6->_highlightView _setCornerRadius:diameter * 0.5];
    layer = [(UIView *)v6->_highlightView layer];
    [layer setCompositingFilter:*MEMORY[0x1E6979860]];

    [(UIView *)v6->_highlightView bs_setHitTestingDisabled:1];
    [(SBHPageManagementCheckbox *)v6 insertSubview:v6->_highlightView atIndex:1];
    [(SBHPageManagementCheckbox *)v6 _setCornerRadius:diameter * 0.5];
    [(UIView *)v6 sbh_applyClearGlass];
    v12 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark" withConfiguration:v12];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v15 = [v13 imageWithTintColor:whiteColor renderingMode:1];

    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v15];
    customImageView = v6->_customImageView;
    v6->_customImageView = v16;

    [(UIImageView *)v6->_customImageView setAlpha:0.0];
    [(SBHPageManagementCheckbox *)v6 addSubview:v6->_customImageView];
    layer2 = [(SBHPageManagementCheckbox *)v6 layer];
    [layer2 setAllowsGroupBlending:0];

    [(SBHPageManagementCheckbox *)v6 setAccessibilityIdentifier:@"toggle page hidden checkbox"];
  }

  return v6;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = SBHPageManagementCheckbox;
  [(SBHPageManagementCheckbox *)&v27 layoutSubviews];
  [(SBHPageManagementCheckbox *)self sendSubviewToBack:self->_highlightView];
  [(SBHPageManagementCheckbox *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  configuration = [(SBHPageManagementCheckbox *)self configuration];
  [configuration contentInsets];
  v16 = SBHDirectionalEdgeInsetsInsetRect([(SBHPageManagementCheckbox *)self effectiveUserInterfaceLayoutDirection], v4, v6, v8, v10, v12, v13, v14, v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [(UIView *)self->_highlightView setFrame:v16, v18, v20, v22];
  [(SBHPageManagementCheckbox *)self effectiveHighlightAlpha];
  [(UIView *)self->_highlightView setAlpha:?];
  [(SBHPageManagementCheckbox *)self updateDeselectedMaskState];
  customImageView = [(SBHPageManagementCheckbox *)self customImageView];
  [(SBHPageManagementCheckbox *)self effectiveImageAlpha];
  v25 = v24;
  UIRectGetCenter();
  [customImageView setCenter:?];
  [customImageView alpha];
  if (v25 != v26)
  {
    [customImageView setAlpha:v25];
  }
}

- (double)effectiveImageAlpha
{
  isEnabled = [(SBHPageManagementCheckbox *)self isEnabled];
  isSelected = [(SBHPageManagementCheckbox *)self isSelected];
  result = 0.5;
  if (isEnabled & 1 | ((isSelected & 1) == 0))
  {
    result = 0.0;
  }

  if ((isEnabled & isSelected) != 0)
  {
    return 1.0;
  }

  return result;
}

- (double)effectiveHighlightAlpha
{
  isSelected = [(SBHPageManagementCheckbox *)self isSelected];
  isHighlighted = [(SBHPageManagementCheckbox *)self isHighlighted];
  traitCollection = [(SBHPageManagementCheckbox *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 2)
  {
    v7 = isSelected;
  }

  else
  {
    v7 = 1;
  }

  result = 0.85;
  if ((isHighlighted & (userInterfaceStyle == 2)) == 0)
  {
    result = 0.5;
  }

  v9 = 0.35;
  if (v7)
  {
    v9 = 0.0;
  }

  if (!isHighlighted)
  {
    return v9;
  }

  return result;
}

- (CALayer)deselectedMask
{
  deselectedMask = self->_deselectedMask;
  if (!deselectedMask)
  {
    [(SBHPageManagementCheckbox *)self checkboxDiameter];
    v5 = v4;
    Mutable = CGPathCreateMutable();
    v11.origin.x = 0.0;
    v11.origin.y = 0.0;
    v11.size.width = v5;
    v11.size.height = v5;
    CGPathAddEllipseInRect(Mutable, 0, v11);
    v12.origin.x = 0.0;
    v12.origin.y = 0.0;
    v12.size.width = v5;
    v12.size.height = v5;
    v13 = CGRectInset(v12, 3.0, 3.0);
    CGPathAddEllipseInRect(Mutable, 0, v13);
    v7 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [(CALayer *)v7 setBounds:0.0, 0.0, v5, v5];
    [(CALayer *)v7 setPosition:v5 * 0.5, v5 * 0.5];
    [(CALayer *)v7 setPath:Mutable];
    [(CALayer *)v7 setFillRule:*MEMORY[0x1E69797F8]];
    CGPathRelease(Mutable);
    v8 = self->_deselectedMask;
    self->_deselectedMask = v7;

    deselectedMask = self->_deselectedMask;
  }

  return deselectedMask;
}

- (void)updateDeselectedMaskState
{
  if (([(SBHPageManagementCheckbox *)self isSelected]& 1) != 0)
  {
    deselectedMask = 0;
  }

  else
  {
    deselectedMask = [(SBHPageManagementCheckbox *)self deselectedMask];
  }

  layer = [(SBHPageManagementCheckbox *)self layer];
  [layer setMask:deselectedMask];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = SBHPageManagementCheckbox;
  [(SBHPageManagementCheckbox *)&v6 setHighlighted:?];
  if (highlightedCopy)
  {
    [(UIView *)self->_highlightView setAlpha:0.5];
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__SBHPageManagementCheckbox_setHighlighted___block_invoke;
    v5[3] = &unk_1E8088C90;
    v5[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v5 options:0 animations:0.2 completion:0.0];
  }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  animatedCopy = animated;
  v20.receiver = self;
  v20.super_class = SBHPageManagementCheckbox;
  [(SBHPageManagementCheckbox *)&v20 setSelected:selected];
  customImageView = [(SBHPageManagementCheckbox *)self customImageView];
  [(SBHPageManagementCheckbox *)self effectiveImageAlpha];
  v8 = v7;
  [(SBHPageManagementCheckbox *)self effectiveHighlightAlpha];
  v10 = v9;
  if (animatedCopy)
  {
    v11 = MEMORY[0x1E69DD250];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __50__SBHPageManagementCheckbox_setSelected_animated___block_invoke;
    v15 = &unk_1E808A370;
    v16 = customImageView;
    selfCopy = self;
    v18 = v8;
    v19 = v10;
    [v11 animateWithDuration:2 delay:&v12 options:0 animations:0.2 completion:0.0];
    [(SBHPageManagementCheckbox *)self updateDeselectedMaskState:v12];
  }

  else
  {
    [customImageView setAlpha:v8];
    [(UIView *)self->_highlightView setAlpha:v10];
    [(SBHPageManagementCheckbox *)self updateDeselectedMaskState];
  }
}

uint64_t __50__SBHPageManagementCheckbox_setSelected_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 760);
  v3 = *(a1 + 56);

  return [v2 setAlpha:v3];
}

- (CGSize)intrinsicContentSize
{
  [(SBHPageManagementCheckbox *)self checkboxDiameter];
  v3 = v2;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = SBHPageManagementCheckbox;
  [(SBHPageManagementCheckbox *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(SBHPageManagementCheckbox *)self effectiveHighlightAlpha];
  [(UIView *)self->_highlightView setAlpha:?];
}

@end