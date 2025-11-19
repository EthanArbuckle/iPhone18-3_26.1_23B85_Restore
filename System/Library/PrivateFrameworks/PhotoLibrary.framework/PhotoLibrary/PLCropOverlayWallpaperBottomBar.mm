@interface PLCropOverlayWallpaperBottomBar
- (CGSize)_sizeForString:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PLCropOverlayWallpaperBottomBar)initWithCoder:(id)a3;
- (PLCropOverlayWallpaperBottomBar)initWithFrame:(CGRect)a3;
- (double)widthForToggleText;
- (void)_commonPLCropOverlayWallpaperBottomBarInitialization;
- (void)_commonPLCropOverlayWallpaperBottomBarInitializationPad;
- (void)_commonPLCropOverlayWallpaperBottomBarInitializationPhone;
- (void)_layoutSubviewsPad;
- (void)_layoutSubviewsPhone;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setText:(id)a3;
- (void)updateForChangedSettings:(id)a3;
@end

@implementation PLCropOverlayWallpaperBottomBar

- (void)updateForChangedSettings:(id)a3
{
  v4 = [(PLCropOverlayWallpaperBottomBar *)self titleLabel];

  [(_UILegibilityLabel *)v4 updateForChangedSettings:a3];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = [(_UILegibilityLabel *)[(PLCropOverlayWallpaperBottomBar *)self titleLabel:a3.width] string];

  [(PLCropOverlayWallpaperBottomBar *)self _sizeForString:v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)_sizeForString:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = [(_UILegibilityLabel *)[(PLCropOverlayWallpaperBottomBar *)self titleLabel] font];
  v7 = *MEMORY[0x277D740A8];
  v8[0] = v4;
  [a3 sizeWithAttributes:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setText:(id)a3
{
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  [(PLCropOverlayWallpaperBottomBar *)self _sizeForString:?];
  [(_UILegibilityLabel *)[(PLCropOverlayWallpaperBottomBar *)self titleLabel] setFrame:v5, v6, v7, v8];
  [(_UILegibilityLabel *)[(PLCropOverlayWallpaperBottomBar *)self titleLabel] setString:a3];

  [(PLCropOverlayWallpaperBottomBar *)self setNeedsLayout];
}

- (double)widthForToggleText
{
  v2 = [PLWallpaperButton alloc];
  v3 = [(PLWallpaperButton *)v2 initWithFrame:1 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(PLWallpaperButton *)v3 setTitle:PLLocalizedFrameworkString() forState:0];
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  [(PLWallpaperButton *)v3 sizeThatFits:*MEMORY[0x277CBF3A8], v5];
  v7 = v6;
  [(PLWallpaperButton *)v3 setTitle:PLLocalizedFrameworkString() forState:0];
  [(PLWallpaperButton *)v3 sizeThatFits:v4, v5];
  v9 = v8;

  if (v9 >= v7)
  {
    return v9;
  }

  else
  {
    return v7;
  }
}

- (void)_layoutSubviewsPad
{
  [(PLCropOverlayWallpaperBottomBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UILegibilityLabel *)[(PLCropOverlayWallpaperBottomBar *)self titleLabel] frame];
  v12 = v11;
  v14 = v13;
  [-[PLCropOverlayWallpaperBottomBar px_screen](self "px_screen")];
  if (v16 == v8)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = ceil(v12);
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  v19 = floor(CGRectGetMidX(v23) + v18 * -0.5);
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  [(_UILegibilityLabel *)[(PLCropOverlayWallpaperBottomBar *)self titleLabel] setFrame:v19, CGRectGetMaxY(v24) - v17 + 10.0, v18, ceil(v14)];
  v20 = [(PLCropOverlayWallpaperBottomBar *)self backdropView];
  [(PLCropOverlayWallpaperBottomBar *)self bounds];
  [(_UIBackdropView *)v20 setFrame:?];
  v21 = [(PLCropOverlayWallpaperBottomBar *)self backdropView];

  [(PLCropOverlayWallpaperBottomBar *)self sendSubviewToBack:v21];
}

- (void)_layoutSubviewsPhone
{
  v3 = [(PLCropOverlayWallpaperBottomBar *)self window];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 safeAreaInsets];
  [(PLCropOverlayWallpaperBottomBar *)self convertRect:v3 fromCoordinateSpace:v5 + v15, v7 + v12, v9 - (v15 + v13), v11 - (v12 + v14)];
  MinY = CGRectGetMinY(v32);
  [(PLCropOverlayWallpaperBottomBar *)self bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(_UILegibilityLabel *)[(PLCropOverlayWallpaperBottomBar *)self titleLabel] frame];
  v26 = ceil(v25);
  v28 = ceil(v27);
  v33.origin.x = v18;
  v33.origin.y = v20;
  v33.size.width = v22;
  v33.size.height = v24;
  v29 = floor(CGRectGetMidX(v33) + v26 * -0.5);
  v30 = [(PLCropOverlayWallpaperBottomBar *)self titleLabel];

  [(_UILegibilityLabel *)v30 setFrame:v29, MinY + 6.0, v26, v28];
}

- (void)layoutSubviews
{
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {

    [(PLCropOverlayWallpaperBottomBar *)self _layoutSubviewsPad];
  }

  else
  {

    [(PLCropOverlayWallpaperBottomBar *)self _layoutSubviewsPhone];
  }
}

- (void)dealloc
{
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(_UIBackdropView *)self->_backdropView removeObserver:self->_doCancelButton];
    [(_UIBackdropView *)self->_backdropView removeObserver:self->_doSetHomeScreenButton];
    [(_UIBackdropView *)self->_backdropView removeObserver:self->_doSetLockScreenButton];
    [(_UIBackdropView *)self->_backdropView removeObserver:self->_doSetBothScreenButton];
    [(_UIBackdropView *)self->_backdropView removeObserver:self->_motionToggle];
  }

  v3.receiver = self;
  v3.super_class = PLCropOverlayWallpaperBottomBar;
  [(PLCropOverlayWallpaperBottomBar *)&v3 dealloc];
}

- (PLCropOverlayWallpaperBottomBar)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PLCropOverlayWallpaperBottomBar;
  v3 = [(PLCropOverlayWallpaperBottomBar *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PLCropOverlayWallpaperBottomBar *)v3 _commonPLCropOverlayWallpaperBottomBarInitialization];
  }

  return v4;
}

- (PLCropOverlayWallpaperBottomBar)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PLCropOverlayWallpaperBottomBar;
  v3 = [(PLCropOverlayWallpaperBottomBar *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLCropOverlayWallpaperBottomBar *)v3 _commonPLCropOverlayWallpaperBottomBarInitialization];
  }

  return v4;
}

- (void)_commonPLCropOverlayWallpaperBottomBarInitializationPad
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [PLWallpaperButton autoLayoutCommonWallpaperButtonWithStyle:1];
  self->_doCancelButton = v3;
  [(PLCropOverlayWallpaperBottomBar *)self addSubview:v3];
  v4 = [PLWallpaperButton autoLayoutCommonWallpaperButtonWithStyle:1];
  self->_doSetLockScreenButton = v4;
  [(PLCropOverlayWallpaperBottomBar *)self addSubview:v4];
  v5 = [PLWallpaperButton autoLayoutCommonWallpaperButtonWithStyle:1];
  self->_doSetHomeScreenButton = v5;
  [(PLCropOverlayWallpaperBottomBar *)self addSubview:v5];
  v6 = [PLWallpaperButton autoLayoutCommonWallpaperButtonWithStyle:1];
  self->_doSetBothScreenButton = v6;
  [(PLCropOverlayWallpaperBottomBar *)self addSubview:v6];
  v7 = [PLWallpaperButton autoLayoutCommonWallpaperButtonWithStyle:1];
  self->_motionToggle = v7;
  [(PLCropOverlayWallpaperBottomBar *)self addSubview:v7];
  [(PLCropOverlayWallpaperBottomBar *)self widthForToggleText];
  [(PLCropOverlayWallpaperBottomBar *)self setMaxToggleWidth:?];
  v8 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:2010];
  self->_backdropView = v8;
  [(PLCropOverlayWallpaperBottomBar *)self addSubview:v8];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  doSetLockScreenButton = self->_doSetLockScreenButton;
  v31[0] = self->_doCancelButton;
  v31[1] = doSetLockScreenButton;
  doSetBothScreenButton = self->_doSetBothScreenButton;
  v31[2] = self->_doSetHomeScreenButton;
  v31[3] = doSetBothScreenButton;
  v31[4] = self->_motionToggle;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:5];
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        [(_UIBackdropView *)self->_backdropView addObserver:v16];
        [v16 backdropViewDidChange:self->_backdropView];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v13);
  }

  v17 = objc_alloc(MEMORY[0x277D760A8]);
  v18 = [v17 initWithContentColor:{objc_msgSend(MEMORY[0x277D75348], "colorWithRed:green:blue:alpha:", 0.86, 0.86, 0.86, 0.6)}];
  v19 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  v20 = objc_alloc(MEMORY[0x277D760A0]);
  self->_titleLabel = [v20 initWithSettings:v18 strength:0 string:v19 font:*MEMORY[0x277D774E0]];
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    v22 = v21;
    if (!self->_shouldOnlyShowHomeScreenButton)
    {
      [v21 addObject:@"[doSetLockScreenButton]"];
    }

    if (!self->_shouldOnlyShowLockScreenButton)
    {
      [v22 addObject:@"[doSetHomeScreenButton]"];
    }

    if (!self->_shouldOnlyShowHomeScreenButton && !self->_shouldOnlyShowLockScreenButton)
    {
      [v22 addObject:@"[doSetBothScreenButton]"];
    }

    if (!self->_motionToggleHidden)
    {
      [v22 addObject:@"[motionToggle]"];
    }

    v23 = [v22 componentsJoinedByString:@"-(spacing)-"];
    v29[0] = @"doCancelButton";
    v30[0] = [(PLCropOverlayWallpaperBottomBar *)self doCancelButton];
    v29[1] = @"motionToggle";
    v30[1] = [(PLCropOverlayWallpaperBottomBar *)self motionToggle];
    v29[2] = @"doSetBothScreenButton";
    v30[2] = [(PLCropOverlayWallpaperBottomBar *)self doSetBothScreenButton];
    v29[3] = @"doSetHomeScreenButton";
    v30[3] = [(PLCropOverlayWallpaperBottomBar *)self doSetHomeScreenButton];
    v29[4] = @"doSetLockScreenButton";
    v30[4] = [(PLCropOverlayWallpaperBottomBar *)self doSetLockScreenButton];
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:5];
    [MEMORY[0x277CCAAD0] activateConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"H:|-(margin)-[doCancelButton]-(>=spacing)-%@-(margin)-|", v23), 2048, &unk_282C535A8, v24)}];
    [MEMORY[0x277CCAAD0] activateConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", @"V:|[doCancelButton]-|", 0, 0, v24)}];
  }
}

- (void)_commonPLCropOverlayWallpaperBottomBarInitializationPhone
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = +[PLWallpaperButton autoLayoutCommonWallpaperButton];
  self->_doCancelButton = v3;
  [(PLCropOverlayWallpaperBottomBar *)self addSubview:v3];
  v4 = +[PLWallpaperButton autoLayoutCommonWallpaperButton];
  self->_doSetButton = v4;
  [(PLCropOverlayWallpaperBottomBar *)self addSubview:v4];
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  self->_separatorLine = v6;
  [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PLCropOverlayWallpaperBottomBar *)self addSubview:self->_separatorLine];
  -[UIView setBackgroundColor:](self->_separatorLine, "setBackgroundColor:", [MEMORY[0x277D75348] colorWithRed:0.47 green:0.53 blue:0.53 alpha:1.0]);
  v7 = objc_alloc(MEMORY[0x277D760A8]);
  v8 = [v7 initWithContentColor:{objc_msgSend(MEMORY[0x277D75348], "colorWithRed:green:blue:alpha:", 0.86, 0.86, 0.86, 0.6)}];
  v9 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
  v10 = objc_alloc(MEMORY[0x277D760A0]);
  self->_titleLabel = [v10 initWithSettings:v8 strength:0 string:v9 font:*MEMORY[0x277D774E0]];
  v11 = MEMORY[0x277CCAAD0];
  v12 = @"separatorWidth";
  v13[0] = [MEMORY[0x277CCABB0] numberWithDouble:1.0];
  [v11 activateConstraints:{objc_msgSend(v11, "constraintsWithVisualFormat:options:metrics:views:", @"H:|[_doCancelButton][_separatorLine(==separatorWidth@999)][_doSetButton]|", 24, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1), _NSDictionaryOfVariableBindings(&cfstr_Docancelbutton.isa, self->_doCancelButton, self->_separatorLine, self->_doSetButton, 0))}];
  [objc_msgSend(MEMORY[0x277CCAAD0] constraintWithItem:self->_doSetButton attribute:7 relatedBy:0 toItem:self->_doCancelButton attribute:7 multiplier:1.0 constant:{0.0), "setActive:", 1}];
  [MEMORY[0x277CCAAD0] activateConstraints:{objc_msgSend(MEMORY[0x277CCAAD0], "constraintsWithVisualFormat:options:metrics:views:", @"V:|[_doCancelButton]|", 0, 0, _NSDictionaryOfVariableBindings(&cfstr_Docancelbutton_0.isa, self->_doCancelButton, 0))}];
}

- (void)_commonPLCropOverlayWallpaperBottomBarInitialization
{
  if (([objc_msgSend(MEMORY[0x277D75418] "currentDevice")] & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(PLCropOverlayWallpaperBottomBar *)self _commonPLCropOverlayWallpaperBottomBarInitializationPad];
  }

  else
  {
    [(PLCropOverlayWallpaperBottomBar *)self _commonPLCropOverlayWallpaperBottomBarInitializationPhone];
  }

  titleLabel = self->_titleLabel;

  [(PLCropOverlayWallpaperBottomBar *)self addSubview:titleLabel];
}

@end