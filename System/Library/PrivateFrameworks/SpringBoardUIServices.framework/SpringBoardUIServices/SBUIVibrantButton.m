@interface SBUIVibrantButton
+ (id)_labelFont;
- (BOOL)_shouldUseVibrancy;
- (CGRect)_glyphFrameForSize:(CGSize)a3 inRect:(CGRect)a4;
- (CGRect)_labelFrameForSize:(CGSize)a3 baselineOffset:(double)a4 inRect:(CGRect)a5;
- (CGSize)_sizeThatFitsForLabelView:(id)a3;
- (CGSize)_sizeThatFitsWithVibrancy;
- (CGSize)_sizeThatFitsWithoutVibrancy;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SBUIVibrantButton)initWithFrame:(CGRect)a3;
- (double)_alphaForState;
- (id)_lazyGlyphLegibilityView;
- (void)_layoutNonVibrantSubviews;
- (void)_layoutVibrantSubviews;
- (void)_setUpForCurrentVibrancy;
- (void)_updateForState;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundView:(id)a3;
- (void)setGlyphImage:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setLegibilitySettings:(id)a3 textStrength:(double)a4;
- (void)setLineBreakMode:(int64_t)a3;
- (void)setMinimumTitleScaleFactor:(double)a3;
- (void)setNumberOfLines:(int64_t)a3;
- (void)setStrength:(double)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTitle:(id)a3;
- (void)setVibrancyAllowed:(BOOL)a3;
- (void)setVibrantSettings:(id)a3;
@end

@implementation SBUIVibrantButton

- (SBUIVibrantButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SBUIVibrantButton;
  v3 = [(SBUIVibrantButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DD5B8] sharedInstanceForStyle:2];
    [(SBUIVibrantButton *)v3 setLegibilitySettings:v4];
    [(SBUIVibrantButton *)v3 setStrength:*MEMORY[0x1E69DE9E0]];
    v3->_numberOfLines = 1;
    v3->_minimumTitleScaleFactor = 0.0;
    v3->_textAlignment = 4;
    v3->_lineBreakMode = 4;
    [(SBUIVibrantButton *)v3 _setUpForCurrentVibrancy];
  }

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4 || (v5 = [(NSString *)self->_title isEqualToString:v4], v4 = v8, (v5 & 1) == 0))
  {
    v6 = [v4 copy];
    title = self->_title;
    self->_title = v6;

    [(SBUILegibilityLabel *)self->_nonVibrantLegibilityLabel setString:self->_title];
    v5 = [(UILabel *)self->_vibrantMaskLabel setText:self->_title];
    v4 = v8;
  }

  MEMORY[0x1EEE66BB8](v5, v4);
}

- (void)setGlyphImage:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_glyphImage != v5)
  {
    objc_storeStrong(&self->_glyphImage, a3);
    v5 = v9;
  }

  if (v5 && !self->_nonVibrantGlyph)
  {
    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    nonVibrantGlyph = self->_nonVibrantGlyph;
    self->_nonVibrantGlyph = v7;

    [(UIView *)self->_nonVibrantGlyph setClipsToBounds:1];
    [(UIView *)self->_nonVibrantGlyph setUserInteractionEnabled:0];
    [(SBUIVibrantButton *)self addSubview:self->_nonVibrantGlyph];
    v5 = v9;
  }

  [(UIImageView *)self->_vibrantMaskGlyphView setImage:v5];
  [(SBUIVibrantButton *)self setNeedsLayout];
}

- (void)setVibrancyAllowed:(BOOL)a3
{
  if (self->_vibrancyAllowed != a3)
  {
    self->_vibrancyAllowed = a3;
    [(SBUIVibrantButton *)self _setUpForCurrentVibrancy];
  }
}

- (void)setMinimumTitleScaleFactor:(double)a3
{
  self->_minimumTitleScaleFactor = a3;
  [(UILabel *)self->_vibrantMaskLabel setMinimumScaleFactor:?];
  nonVibrantLegibilityLabel = self->_nonVibrantLegibilityLabel;
  minimumTitleScaleFactor = self->_minimumTitleScaleFactor;

  [(SBUILegibilityLabel *)nonVibrantLegibilityLabel setMinimumScaleFactor:minimumTitleScaleFactor];
}

- (void)setTextAlignment:(int64_t)a3
{
  self->_textAlignment = a3;
  [(UILabel *)self->_vibrantMaskLabel setTextAlignment:?];
  nonVibrantLegibilityLabel = self->_nonVibrantLegibilityLabel;
  textAlignment = self->_textAlignment;

  [(SBUILegibilityLabel *)nonVibrantLegibilityLabel setTextAlignment:textAlignment];
}

- (void)setNumberOfLines:(int64_t)a3
{
  self->_numberOfLines = a3;
  [(UILabel *)self->_vibrantMaskLabel setNumberOfLines:?];
  nonVibrantLegibilityLabel = self->_nonVibrantLegibilityLabel;
  textAlignment = self->_textAlignment;

  [(SBUILegibilityLabel *)nonVibrantLegibilityLabel setNumberOfLines:textAlignment];
}

- (void)setLineBreakMode:(int64_t)a3
{
  self->_lineBreakMode = a3;
  [(UILabel *)self->_vibrantMaskLabel setLineBreakMode:?];
  nonVibrantLegibilityLabel = self->_nonVibrantLegibilityLabel;
  lineBreakMode = self->_lineBreakMode;

  [(SBUILegibilityLabel *)nonVibrantLegibilityLabel setLineBreakMode:lineBreakMode];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if ([(SBUIVibrantButton *)self _shouldUseVibrancy:a3.width])
  {

    [(SBUIVibrantButton *)self _sizeThatFitsWithVibrancy];
  }

  else
  {

    [(SBUIVibrantButton *)self _sizeThatFitsWithoutVibrancy];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  if ([(SBUIVibrantButton *)self _shouldUseVibrancy])
  {

    [(SBUIVibrantButton *)self _layoutVibrantSubviews];
  }

  else
  {

    [(SBUIVibrantButton *)self _layoutNonVibrantSubviews];
  }
}

- (void)setBackgroundColor:(id)a3
{
  nonVibrantGlyph = self->_nonVibrantGlyph;
  v5 = a3;
  [(UIView *)nonVibrantGlyph setBackgroundColor:v5];
  [(UIView *)self->_vibrantGlyph setBackgroundColor:v5];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBUIVibrantButton;
  [(SBUIVibrantButton *)&v4 setHighlighted:a3];
  [(SBUIVibrantButton *)self _updateForState];
}

- (BOOL)_shouldUseVibrancy
{
  if (![(SBUIVibrantButton *)self isVibrancyAllowed])
  {
    return 0;
  }

  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 _graphicsQuality] == 100;

  return v3;
}

+ (id)_labelFont
{
  [MEMORY[0x1E69D3FE8] logoutLabelFontSize];
  v2 = MEMORY[0x1E69DB878];

  return [v2 systemFontOfSize:?];
}

- (void)_setUpForCurrentVibrancy
{
  if ([(SBUIVibrantButton *)self _shouldUseVibrancy])
  {
    [(UIView *)self->_nonVibrantGlyph removeFromSuperview];
    [(SBUILegibilityLabel *)self->_nonVibrantLegibilityLabel removeFromSuperview];
    nonVibrantGlyph = self->_nonVibrantGlyph;
    self->_nonVibrantGlyph = 0;

    nonVibrantGlyphLegibilityView = self->_nonVibrantGlyphLegibilityView;
    self->_nonVibrantGlyphLegibilityView = 0;

    nonVibrantLegibilityLabel = self->_nonVibrantLegibilityLabel;
    self->_nonVibrantLegibilityLabel = 0;

    if (!self->_vibrantGlyph)
    {
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      v7 = *MEMORY[0x1E695F058];
      v8 = *(MEMORY[0x1E695F058] + 8);
      v9 = *(MEMORY[0x1E695F058] + 16);
      v10 = *(MEMORY[0x1E695F058] + 24);
      v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
      vibrantGlyph = self->_vibrantGlyph;
      self->_vibrantGlyph = v11;

      [(UIView *)self->_vibrantGlyph setUserInteractionEnabled:0];
      [(SBUIVibrantButton *)self addSubview:self->_vibrantGlyph];
      v13 = objc_alloc(MEMORY[0x1E69DD250]);
      [(SBUIVibrantButton *)self bounds];
      v14 = [v13 initWithFrame:?];
      vibrantMaskView = self->_vibrantMaskView;
      self->_vibrantMaskView = v14;

      v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
      vibrantMaskLabel = self->_vibrantMaskLabel;
      self->_vibrantMaskLabel = v16;

      [(UIView *)self->_vibrantMaskView addSubview:self->_vibrantMaskLabel];
      [(UILabel *)self->_vibrantMaskLabel setText:self->_title];
      v18 = self->_vibrantMaskLabel;
      v19 = [objc_opt_class() _labelFont];
      [(UILabel *)v18 setFont:v19];

      [(UILabel *)self->_vibrantMaskLabel setAdjustsFontSizeToFitWidth:1];
      [(UILabel *)self->_vibrantMaskLabel setMinimumScaleFactor:self->_minimumTitleScaleFactor];
      [(UILabel *)self->_vibrantMaskLabel setTextAlignment:self->_textAlignment];
      [(UILabel *)self->_vibrantMaskLabel setNumberOfLines:self->_numberOfLines];
      [(UILabel *)self->_vibrantMaskLabel setLineBreakMode:self->_lineBreakMode];
      v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v7, v8, v9, v10}];
      vibrantMaskGlyphView = self->_vibrantMaskGlyphView;
      self->_vibrantMaskGlyphView = v20;

      [(UIView *)self->_vibrantMaskView addSubview:self->_vibrantMaskGlyphView];
      [(UIImageView *)self->_vibrantMaskGlyphView setImage:self->_glyphImage];
      v22 = self->_vibrantGlyph;
      v23 = self->_vibrantMaskView;

      [(UIView *)v22 setMaskView:v23];
    }
  }

  else
  {
    [(UIView *)self->_vibrantGlyph removeFromSuperview];
    v24 = self->_vibrantGlyph;
    self->_vibrantGlyph = 0;

    v25 = self->_vibrantMaskView;
    self->_vibrantMaskView = 0;

    v26 = self->_vibrantMaskLabel;
    self->_vibrantMaskLabel = 0;

    v27 = self->_vibrantMaskGlyphView;
    self->_vibrantMaskGlyphView = 0;

    vibrantGlyphTintView = self->_vibrantGlyphTintView;
    self->_vibrantGlyphTintView = 0;

    vibrantGlyphBackgroundView = self->_vibrantGlyphBackgroundView;
    self->_vibrantGlyphBackgroundView = 0;

    if (!self->_nonVibrantGlyph)
    {
      v30 = objc_alloc(MEMORY[0x1E69DD250]);
      v31 = [v30 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v32 = self->_nonVibrantGlyph;
      self->_nonVibrantGlyph = v31;

      [(UIView *)self->_nonVibrantGlyph setClipsToBounds:1];
      [(UIView *)self->_nonVibrantGlyph setUserInteractionEnabled:0];
      [(SBUIVibrantButton *)self addSubview:self->_nonVibrantGlyph];
    }

    if (!self->_nonVibrantLegibilityLabel)
    {
      v33 = [SBUILegibilityLabel alloc];
      legibilitySettings = self->_legibilitySettings;
      v35 = *MEMORY[0x1E69DE9E0];
      if (self->_title)
      {
        title = self->_title;
      }

      else
      {
        title = &stru_1F1D7ED48;
      }

      v37 = [objc_opt_class() _labelFont];
      v38 = [(SBUILegibilityLabel *)v33 initWithSettings:legibilitySettings strength:title string:v37 font:v35];
      v39 = self->_nonVibrantLegibilityLabel;
      self->_nonVibrantLegibilityLabel = v38;

      [(SBUILegibilityLabel *)self->_nonVibrantLegibilityLabel setAdjustsFontSizeToFitWidth:1];
      [(SBUILegibilityLabel *)self->_nonVibrantLegibilityLabel setMinimumScaleFactor:self->_minimumTitleScaleFactor];
      [(SBUILegibilityLabel *)self->_nonVibrantLegibilityLabel setNumberOfLines:self->_numberOfLines];
      [(SBUILegibilityLabel *)self->_nonVibrantLegibilityLabel setTextAlignment:self->_textAlignment];
      [(SBUILegibilityLabel *)self->_nonVibrantLegibilityLabel setLineBreakMode:self->_lineBreakMode];
      v40 = self->_nonVibrantLegibilityLabel;

      [(SBUIVibrantButton *)self addSubview:v40];
    }
  }
}

- (CGSize)_sizeThatFitsWithVibrancy
{
  [(SBUIVibrantButton *)self _sizeThatFitsForLabelView:self->_vibrantMaskLabel];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_sizeThatFitsWithoutVibrancy
{
  [(SBUIVibrantButton *)self _sizeThatFitsForLabelView:self->_nonVibrantLegibilityLabel];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_sizeThatFitsForLabelView:(id)a3
{
  [a3 sizeThatFits:{100.0, 3.40282347e38}];
  v5 = v4;
  [(UIImage *)self->_glyphImage size];
  if (v5 >= v6)
  {
    v6 = v5;
  }

  v8 = v7 + 15.0;
  result.height = v8;
  result.width = v6;
  return result;
}

- (CGRect)_labelFrameForSize:(CGSize)a3 baselineOffset:(double)a4 inRect:(CGRect)a5
{
  UIRectCenteredXInRect();

  return CGRectOffset(*&v6, 0.0, a4);
}

- (CGRect)_glyphFrameForSize:(CGSize)a3 inRect:(CGRect)a4
{
  UIRectInset();
  UIRectCenteredXInRectScale();
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_layoutVibrantSubviews
{
  [(SBUIVibrantButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_vibrantMaskLabel sizeThatFits:v7, v9];
  v12 = v11;
  v14 = v13;
  [(UIImage *)self->_glyphImage size];
  v33 = v15;
  v17 = v16;
  [(UILabel *)self->_vibrantMaskLabel _firstBaselineOffsetFromTop];
  [(SBUIVibrantButton *)self _labelFrameForSize:v12 baselineOffset:v14 inRect:v14 - v18, v4, v6, v8, v10];
  v37 = v20;
  v38 = v19;
  v35 = v22;
  v36 = v21;
  [(SBUIVibrantButton *)self _glyphFrameForSize:v33 inRect:v17, v4, v6, v8, v10];
  v24 = v23;
  v26 = v25;
  v34 = v27;
  v29 = v28;
  UIRectInset();
  [(UIView *)self->_vibrantGlyph setFrame:?];
  vibrantMaskView = self->_vibrantMaskView;
  [(UIView *)self->_vibrantGlyph bounds];
  [(UIView *)vibrantMaskView setFrame:?];
  [(UILabel *)self->_vibrantMaskLabel setFrame:v38, v37, v36, v35];
  [(UIImageView *)self->_vibrantMaskGlyphView setFrame:v24, v26, v34, v29];
  vibrantGlyphBackgroundView = self->_vibrantGlyphBackgroundView;
  [(UIView *)self->_vibrantGlyph bounds];
  [(UIView *)vibrantGlyphBackgroundView setFrame:?];
  vibrantGlyphTintView = self->_vibrantGlyphTintView;
  [(UIView *)self->_vibrantGlyph bounds];

  [(UIView *)vibrantGlyphTintView setFrame:?];
}

- (void)_layoutNonVibrantSubviews
{
  [(SBUIVibrantButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SBUILegibilityLabel *)self->_nonVibrantLegibilityLabel sizeThatFits:v7, v9];
  v12 = v11;
  v14 = v13;
  [(UIImage *)self->_glyphImage size];
  v35 = v16;
  v36 = v15;
  [(SBUILegibilityLabel *)self->_nonVibrantLegibilityLabel firstBaselineOffsetFromBottom];
  [(SBUIVibrantButton *)self _labelFrameForSize:v12 baselineOffset:v14 inRect:v17, v4, v6, v8, v10];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(SBUIVibrantButton *)self _glyphFrameForSize:v36 inRect:v35, v4, v6, v8, v10];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  [(SBUILegibilityLabel *)self->_nonVibrantLegibilityLabel setFrame:v19, v21, v23, v25];
  nonVibrantGlyph = self->_nonVibrantGlyph;

  [(UIView *)nonVibrantGlyph setFrame:v27, v29, v31, v33];
}

- (id)_lazyGlyphLegibilityView
{
  if (self->_glyphImage && ![(SBUIVibrantButton *)self _shouldUseVibrancy]&& !self->_nonVibrantGlyphLegibilityView)
  {
    v3 = [SBUILegibilityView alloc];
    [(UIView *)self->_nonVibrantGlyph bounds];
    v4 = [(SBUILegibilityView *)v3 initWithFrame:?];
    nonVibrantGlyphLegibilityView = self->_nonVibrantGlyphLegibilityView;
    self->_nonVibrantGlyphLegibilityView = v4;

    v6 = self->_nonVibrantGlyphLegibilityView;
    v7 = [MEMORY[0x1E69DD5B8] sharedInstanceForStyle:1];
    [(SBUILegibilityView *)v6 updateForChangedSettings:v7 options:2 image:self->_glyphImage strength:*MEMORY[0x1E69DE9F0]];

    [(UIView *)self->_nonVibrantGlyph addSubview:self->_nonVibrantGlyphLegibilityView];
    [(SBUILegibilityView *)self->_nonVibrantGlyphLegibilityView setAutoresizingMask:18];
    [(UIView *)self->_nonVibrantGlyph setAutoresizesSubviews:1];
  }

  v8 = self->_nonVibrantGlyphLegibilityView;

  return v8;
}

- (double)_alphaForState
{
  v2 = [(SBUIVibrantButton *)self isHighlighted];
  result = 0.2;
  if (!v2)
  {
    return 1.0;
  }

  return result;
}

- (void)_updateForState
{
  [(SBUIVibrantButton *)self _alphaForState];

  [(SBUIVibrantButton *)self setAlpha:?];
}

- (void)setVibrantSettings:(id)a3
{
  v9 = a3;
  if ([(SBUIVibrantButton *)self _shouldUseVibrancy]&& ([(_SBFVibrantSettings *)self->_vibrantSettings isEqual:v9]& 1) == 0)
  {
    objc_storeStrong(&self->_vibrantSettings, a3);
    [(UIView *)self->_vibrantGlyphTintView removeFromSuperview];
    vibrantGlyphTintView = self->_vibrantGlyphTintView;
    self->_vibrantGlyphTintView = 0;

    vibrantSettings = self->_vibrantSettings;
    [(UIView *)self->_vibrantGlyph bounds];
    v7 = [(_SBFVibrantSettings *)vibrantSettings tintViewWithFrame:?];
    v8 = self->_vibrantGlyphTintView;
    self->_vibrantGlyphTintView = v7;

    [(UIView *)self->_vibrantGlyph addSubview:self->_vibrantGlyphTintView];
  }
}

- (void)setBackgroundView:(id)a3
{
  v21 = a3;
  v5 = [(SBUIVibrantButton *)self _shouldUseVibrancy];
  v6 = v21;
  if (v5)
  {
    vibrantGlyphBackgroundView = self->_vibrantGlyphBackgroundView;
    if (vibrantGlyphBackgroundView != v21)
    {
      [(UIView *)vibrantGlyphBackgroundView removeFromSuperview];
      objc_storeStrong(&self->_vibrantGlyphBackgroundView, a3);
      [(UIView *)self->_vibrantGlyph addSubview:self->_vibrantGlyphBackgroundView];
      [(UIView *)self->_vibrantGlyph sendSubviewToBack:self->_vibrantGlyphBackgroundView];
      vibrantGlyphBackgroundView = self->_vibrantGlyphBackgroundView;
    }

    [(UIView *)vibrantGlyphBackgroundView frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(UIView *)self->_vibrantGlyph bounds];
    v24.origin.x = v16;
    v24.origin.y = v17;
    v24.size.width = v18;
    v24.size.height = v19;
    v23.origin.x = v9;
    v23.origin.y = v11;
    v23.size.width = v13;
    v23.size.height = v15;
    v5 = CGRectEqualToRect(v23, v24);
    v6 = v21;
    if ((v5 & 1) == 0)
    {
      v20 = self->_vibrantGlyphBackgroundView;
      [(UIView *)self->_vibrantGlyph bounds];
      v5 = [(UIView *)v20 setFrame:?];
      v6 = v21;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setStrength:(double)a3
{
  self->_strength = a3;
  v5 = [(SBUIVibrantButton *)self _lazyGlyphLegibilityView];
  [v5 setStrength:a3];

  nonVibrantLegibilityLabel = self->_nonVibrantLegibilityLabel;

  [(SBUILegibilityLabel *)nonVibrantLegibilityLabel setStrength:a3];
}

- (void)setLegibilitySettings:(id)a3
{
  objc_storeStrong(&self->_legibilitySettings, a3);
  v6 = a3;
  v5 = [(SBUIVibrantButton *)self _lazyGlyphLegibilityView];
  [v5 updateForChangedSettings:v6];

  [(SBUILegibilityLabel *)self->_nonVibrantLegibilityLabel setLegibilitySettings:v6];
}

- (void)setLegibilitySettings:(id)a3 textStrength:(double)a4
{
  v6 = a3;
  [(SBUIVibrantButton *)self setStrength:a4];
  [(SBUIVibrantButton *)self setLegibilitySettings:v6];
}

@end