@interface SBHPageManagementCheckbox
- (CALayer)deselectedMask;
- (CGSize)intrinsicContentSize;
- (SBHPageManagementCheckbox)initWithFrame:(CGRect)a3 checkboxDiameter:(double)a4;
- (double)effectiveHighlightAlpha;
- (double)effectiveImageAlpha;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)updateDeselectedMaskState;
@end

@implementation SBHPageManagementCheckbox

- (SBHPageManagementCheckbox)initWithFrame:(CGRect)a3 checkboxDiameter:(double)a4
{
  v20.receiver = self;
  v20.super_class = SBHPageManagementCheckbox;
  v5 = [(SBHPageManagementCheckbox *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_checkboxDiameter = a4;
    v7 = objc_alloc_init(MEMORY[0x1E69DD250]);
    highlightView = v6->_highlightView;
    v6->_highlightView = v7;

    v9 = v6->_highlightView;
    v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.431372549 alpha:1.0];
    [(UIView *)v9 setBackgroundColor:v10];

    [(UIView *)v6->_highlightView setAlpha:0.0];
    [(UIView *)v6->_highlightView _setCornerRadius:a4 * 0.5];
    v11 = [(UIView *)v6->_highlightView layer];
    [v11 setCompositingFilter:*MEMORY[0x1E6979860]];

    [(UIView *)v6->_highlightView bs_setHitTestingDisabled:1];
    [(SBHPageManagementCheckbox *)v6 insertSubview:v6->_highlightView atIndex:1];
    [(SBHPageManagementCheckbox *)v6 _setCornerRadius:a4 * 0.5];
    [(UIView *)v6 sbh_applyClearGlass];
    v12 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
    v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark" withConfiguration:v12];
    v14 = [MEMORY[0x1E69DC888] whiteColor];
    v15 = [v13 imageWithTintColor:v14 renderingMode:1];

    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v15];
    customImageView = v6->_customImageView;
    v6->_customImageView = v16;

    [(UIImageView *)v6->_customImageView setAlpha:0.0];
    [(SBHPageManagementCheckbox *)v6 addSubview:v6->_customImageView];
    v18 = [(SBHPageManagementCheckbox *)v6 layer];
    [v18 setAllowsGroupBlending:0];

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
  v11 = [(SBHPageManagementCheckbox *)self configuration];
  [v11 contentInsets];
  v16 = SBHDirectionalEdgeInsetsInsetRect([(SBHPageManagementCheckbox *)self effectiveUserInterfaceLayoutDirection], v4, v6, v8, v10, v12, v13, v14, v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [(UIView *)self->_highlightView setFrame:v16, v18, v20, v22];
  [(SBHPageManagementCheckbox *)self effectiveHighlightAlpha];
  [(UIView *)self->_highlightView setAlpha:?];
  [(SBHPageManagementCheckbox *)self updateDeselectedMaskState];
  v23 = [(SBHPageManagementCheckbox *)self customImageView];
  [(SBHPageManagementCheckbox *)self effectiveImageAlpha];
  v25 = v24;
  UIRectGetCenter();
  [v23 setCenter:?];
  [v23 alpha];
  if (v25 != v26)
  {
    [v23 setAlpha:v25];
  }
}

- (double)effectiveImageAlpha
{
  v3 = [(SBHPageManagementCheckbox *)self isEnabled];
  v4 = [(SBHPageManagementCheckbox *)self isSelected];
  result = 0.5;
  if (v3 & 1 | ((v4 & 1) == 0))
  {
    result = 0.0;
  }

  if ((v3 & v4) != 0)
  {
    return 1.0;
  }

  return result;
}

- (double)effectiveHighlightAlpha
{
  v3 = [(SBHPageManagementCheckbox *)self isSelected];
  v4 = [(SBHPageManagementCheckbox *)self isHighlighted];
  v5 = [(SBHPageManagementCheckbox *)self traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (v6 == 2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 1;
  }

  result = 0.85;
  if ((v4 & (v6 == 2)) == 0)
  {
    result = 0.5;
  }

  v9 = 0.35;
  if (v7)
  {
    v9 = 0.0;
  }

  if (!v4)
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
    v4 = 0;
  }

  else
  {
    v4 = [(SBHPageManagementCheckbox *)self deselectedMask];
  }

  v3 = [(SBHPageManagementCheckbox *)self layer];
  [v3 setMask:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SBHPageManagementCheckbox;
  [(SBHPageManagementCheckbox *)&v6 setHighlighted:?];
  if (v3)
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

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v20.receiver = self;
  v20.super_class = SBHPageManagementCheckbox;
  [(SBHPageManagementCheckbox *)&v20 setSelected:a3];
  v6 = [(SBHPageManagementCheckbox *)self customImageView];
  [(SBHPageManagementCheckbox *)self effectiveImageAlpha];
  v8 = v7;
  [(SBHPageManagementCheckbox *)self effectiveHighlightAlpha];
  v10 = v9;
  if (v4)
  {
    v11 = MEMORY[0x1E69DD250];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __50__SBHPageManagementCheckbox_setSelected_animated___block_invoke;
    v15 = &unk_1E808A370;
    v16 = v6;
    v17 = self;
    v18 = v8;
    v19 = v10;
    [v11 animateWithDuration:2 delay:&v12 options:0 animations:0.2 completion:0.0];
    [(SBHPageManagementCheckbox *)self updateDeselectedMaskState:v12];
  }

  else
  {
    [v6 setAlpha:v8];
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