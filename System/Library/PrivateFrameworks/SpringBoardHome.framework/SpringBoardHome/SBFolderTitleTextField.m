@interface SBFolderTitleTextField
+ (id)_clearButtonImage;
- (CGRect)_textRectForBounds:(CGRect)a3;
- (CGRect)clearButtonRectForBounds:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBFolderTitleTextField)initWithFrame:(CGRect)a3;
- (double)fontSize;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_updateLegibility;
- (void)layoutSubviews;
- (void)setFontSize:(double)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setShowsEditUI:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation SBFolderTitleTextField

+ (id)_clearButtonImage
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:19.0];
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill" withConfiguration:v2];

  return v3;
}

- (SBFolderTitleTextField)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = SBFolderTitleTextField;
  v3 = [(SBFolderTitleTextField *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] whiteColor];
    [(SBFolderTitleTextField *)v3 setTextColor:v4];

    [(SBFolderTitleTextField *)v3 setClearButtonMode:0];
    [(SBFolderTitleTextField *)v3 setTextAlignment:4];
    [(SBFolderTitleTextField *)v3 setReturnKeyType:9];
    [(SBFolderTitleTextField *)v3 setAdjustsFontSizeToFitWidth:1];
    [(SBFolderTitleTextField *)v3 setMinimumFontSize:20.0];
    [(SBFolderTitleTextField *)v3 setKeyboardAppearance:1];
    [(SBFolderTitleTextField *)v3 setBorderStyle:3];
    [(SBFolderTitleTextField *)v3 _setRoundedRectBackgroundCornerRadius:14.0];
    v5 = [(SBFolderTitleTextField *)v3 _clearButton];
    v6 = [objc_opt_class() _clearButtonImage];
    [v5 setImage:v6 forState:0];

    [(SBFolderTitleTextField *)v3 _updateLegibility];
    [(SBFolderTitleTextField *)v3 layoutIfNeeded];
    v7 = [(SBFolderTitleTextField *)v3 _backgroundView];
    [v7 setAlpha:0.0];
  }

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBFolderTitleTextField;
  [(SBFolderTitleTextField *)&v4 layoutSubviews];
  [(SBFolderTitleTextField *)self frame];
  [(SBFolderTitleTextField *)self _setContinuousCornerRadius:v3 * 0.5];
}

- (void)setShowsEditUI:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_showingEditUI != a3)
  {
    if (a4)
    {
      v6 = 0.25;
    }

    else
    {
      v6 = 0.0;
    }

    if (a3)
    {
      [(SBFolderTitleTextField *)self setClearButtonMode:3];
      v7 = [(SBFolderTitleTextField *)self _clearButton];
      [v7 setAlpha:0.0];

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __50__SBFolderTitleTextField_setShowsEditUI_animated___block_invoke;
      v10[3] = &unk_1E8088C90;
      v10[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v10 animations:v6];
    }

    else
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __50__SBFolderTitleTextField_setShowsEditUI_animated___block_invoke_2;
      v9[3] = &unk_1E8088C90;
      v9[4] = self;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __50__SBFolderTitleTextField_setShowsEditUI_animated___block_invoke_3;
      v8[3] = &unk_1E8088F40;
      v8[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v9 animations:v8 completion:v6];
    }

    self->_showingEditUI = a3;
  }
}

void __50__SBFolderTitleTextField_setShowsEditUI_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) sbh_applyClearGlassWithGrouping:0];
  v2 = [*(a1 + 32) _clearButton];
  [v2 setAlpha:1.0];
}

void __50__SBFolderTitleTextField_setShowsEditUI_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setBackground:0];
  v2 = [*(a1 + 32) _clearButton];
  [v2 setAlpha:0.0];
}

- (void)setFontSize:(double)a3
{
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:a3 weight:*MEMORY[0x1E69DB958]];
  [(SBFolderTitleTextField *)self setFont:v4];
}

- (double)fontSize
{
  v2 = [(SBFolderTitleTextField *)self font];
  [v2 pointSize];
  v4 = v3;

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v12.receiver = self;
  v12.super_class = SBFolderTitleTextField;
  [(SBFolderTitleTextField *)&v12 sizeThatFits:a3.width, a3.height];
  v4 = v3;
  v6 = v5;
  if (__sb__runningInSpringBoard())
  {
    v7 = SBFEffectiveDeviceClass() == 2;
  }

  else
  {
    v8 = [MEMORY[0x1E69DC938] currentDevice];
    v7 = [v8 userInterfaceIdiom] == 1;
  }

  v9 = 13.0;
  if (v7)
  {
    v9 = 15.0;
  }

  v10 = v6 + v9;
  v11 = v4;
  result.height = v10;
  result.width = v11;
  return result;
}

- (CGRect)_textRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v28.receiver = self;
  v28.super_class = SBFolderTitleTextField;
  [(SBFolderTitleTextField *)&v28 textRectForBounds:?];
  rect_24 = v9;
  v27 = v8;
  rect_16 = v10;
  [(SBFolderTitleTextField *)self clearButtonRectForBounds:x, y, width, height];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  rect_8 = v17;
  if ([(SBFolderTitleTextField *)self allowsEditing])
  {
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      v29.origin.x = v12;
      v29.origin.y = v14;
      v29.size.width = v16;
      v29.size.height = rect_8;
      CGRectGetMaxX(v29);
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      CGRectGetWidth(v30);
      v31.origin.x = v12;
      v31.origin.y = v14;
      v31.size.width = v16;
      v31.size.height = rect_8;
      CGRectGetMaxX(v31);
    }

    else
    {
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v18 = CGRectGetWidth(v32);
      v33.origin.x = v12;
      v33.origin.y = v14;
      v33.size.width = v16;
      v33.size.height = rect_8;
      v19 = v18 - CGRectGetMinX(v33);
      v34.origin.x = v12;
      v34.origin.y = v14;
      v34.size.width = v16;
      v34.size.height = rect_8;
      CGRectGetMinX(v34);
      v35.origin.x = v19;
      v35.origin.y = v27;
      v35.size.width = rect_16;
      v35.size.height = rect_24;
      CGRectGetMinX(v35);
    }
  }

  UIRectInset();
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)clearButtonRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = SBFolderTitleTextField;
  [(SBFolderTitleTextField *)&v11 clearButtonRectForBounds:?];
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] != 1)
  {
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    CGRectGetMaxX(v12);
  }

  UIRectCenteredYInRectScale();
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (![(SBHLegibilitySettings *)self->_legibilitySettings isEqual:?])
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(SBFolderTitleTextField *)self _updateLegibility];
  }
}

- (void)_updateLegibility
{
  v3 = self->_legibilitySettings;
  v4 = [(SBHLegibilitySettings *)v3 primaryColor];
  [(SBFolderTitleTextField *)self setTextColor:v4];

  v7 = [(SBFolderTitleTextField *)self _clearButton];
  v5 = [(SBHLegibilitySettings *)v3 primaryColor];

  v6 = [v5 colorWithAlphaComponent:0.6];
  [v7 setTintColor:v6];
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a5;
  v7 = [(SBFolderTitleTextField *)self showingEditUI];
  v8 = v6;
  if (!v7)
  {

    v8 = 0;
  }

  return v8;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v4 = MEMORY[0x1E69DCDC8];
  v5 = [(SBFolderTitleTextField *)self font:a3];
  [v5 lineHeight];
  v6 = [v4 beamWithPreferredLength:2 axis:?];

  v7 = [MEMORY[0x1E69DCDD0] styleWithShape:v6 constrainedAxes:2];

  return v7;
}

@end