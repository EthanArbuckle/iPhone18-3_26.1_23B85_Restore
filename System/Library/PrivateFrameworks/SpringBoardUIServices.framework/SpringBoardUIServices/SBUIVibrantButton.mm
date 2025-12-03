@interface SBUIVibrantButton
+ (id)_labelFont;
- (BOOL)_shouldUseVibrancy;
- (CGRect)_glyphFrameForSize:(CGSize)size inRect:(CGRect)rect;
- (CGRect)_labelFrameForSize:(CGSize)size baselineOffset:(double)offset inRect:(CGRect)rect;
- (CGSize)_sizeThatFitsForLabelView:(id)view;
- (CGSize)_sizeThatFitsWithVibrancy;
- (CGSize)_sizeThatFitsWithoutVibrancy;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBUIVibrantButton)initWithFrame:(CGRect)frame;
- (double)_alphaForState;
- (id)_lazyGlyphLegibilityView;
- (void)_layoutNonVibrantSubviews;
- (void)_layoutVibrantSubviews;
- (void)_setUpForCurrentVibrancy;
- (void)_updateForState;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundView:(id)view;
- (void)setGlyphImage:(id)image;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLegibilitySettings:(id)settings;
- (void)setLegibilitySettings:(id)settings textStrength:(double)strength;
- (void)setLineBreakMode:(int64_t)mode;
- (void)setMinimumTitleScaleFactor:(double)factor;
- (void)setNumberOfLines:(int64_t)lines;
- (void)setStrength:(double)strength;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTitle:(id)title;
- (void)setVibrancyAllowed:(BOOL)allowed;
- (void)setVibrantSettings:(id)settings;
@end

@implementation SBUIVibrantButton

- (SBUIVibrantButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SBUIVibrantButton;
  v3 = [(SBUIVibrantButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setTitle:(id)title
{
  titleCopy = title;
  v8 = titleCopy;
  if (!titleCopy || (v5 = [(NSString *)self->_title isEqualToString:titleCopy], titleCopy = v8, (v5 & 1) == 0))
  {
    v6 = [titleCopy copy];
    title = self->_title;
    self->_title = v6;

    [(SBUILegibilityLabel *)self->_nonVibrantLegibilityLabel setString:self->_title];
    v5 = [(UILabel *)self->_vibrantMaskLabel setText:self->_title];
    titleCopy = v8;
  }

  MEMORY[0x1EEE66BB8](v5, titleCopy);
}

- (void)setGlyphImage:(id)image
{
  imageCopy = image;
  v9 = imageCopy;
  if (self->_glyphImage != imageCopy)
  {
    objc_storeStrong(&self->_glyphImage, image);
    imageCopy = v9;
  }

  if (imageCopy && !self->_nonVibrantGlyph)
  {
    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    nonVibrantGlyph = self->_nonVibrantGlyph;
    self->_nonVibrantGlyph = v7;

    [(UIView *)self->_nonVibrantGlyph setClipsToBounds:1];
    [(UIView *)self->_nonVibrantGlyph setUserInteractionEnabled:0];
    [(SBUIVibrantButton *)self addSubview:self->_nonVibrantGlyph];
    imageCopy = v9;
  }

  [(UIImageView *)self->_vibrantMaskGlyphView setImage:imageCopy];
  [(SBUIVibrantButton *)self setNeedsLayout];
}

- (void)setVibrancyAllowed:(BOOL)allowed
{
  if (self->_vibrancyAllowed != allowed)
  {
    self->_vibrancyAllowed = allowed;
    [(SBUIVibrantButton *)self _setUpForCurrentVibrancy];
  }
}

- (void)setMinimumTitleScaleFactor:(double)factor
{
  self->_minimumTitleScaleFactor = factor;
  [(UILabel *)self->_vibrantMaskLabel setMinimumScaleFactor:?];
  nonVibrantLegibilityLabel = self->_nonVibrantLegibilityLabel;
  minimumTitleScaleFactor = self->_minimumTitleScaleFactor;

  [(SBUILegibilityLabel *)nonVibrantLegibilityLabel setMinimumScaleFactor:minimumTitleScaleFactor];
}

- (void)setTextAlignment:(int64_t)alignment
{
  self->_textAlignment = alignment;
  [(UILabel *)self->_vibrantMaskLabel setTextAlignment:?];
  nonVibrantLegibilityLabel = self->_nonVibrantLegibilityLabel;
  textAlignment = self->_textAlignment;

  [(SBUILegibilityLabel *)nonVibrantLegibilityLabel setTextAlignment:textAlignment];
}

- (void)setNumberOfLines:(int64_t)lines
{
  self->_numberOfLines = lines;
  [(UILabel *)self->_vibrantMaskLabel setNumberOfLines:?];
  nonVibrantLegibilityLabel = self->_nonVibrantLegibilityLabel;
  textAlignment = self->_textAlignment;

  [(SBUILegibilityLabel *)nonVibrantLegibilityLabel setNumberOfLines:textAlignment];
}

- (void)setLineBreakMode:(int64_t)mode
{
  self->_lineBreakMode = mode;
  [(UILabel *)self->_vibrantMaskLabel setLineBreakMode:?];
  nonVibrantLegibilityLabel = self->_nonVibrantLegibilityLabel;
  lineBreakMode = self->_lineBreakMode;

  [(SBUILegibilityLabel *)nonVibrantLegibilityLabel setLineBreakMode:lineBreakMode];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if ([(SBUIVibrantButton *)self _shouldUseVibrancy:fits.width])
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

- (void)setBackgroundColor:(id)color
{
  nonVibrantGlyph = self->_nonVibrantGlyph;
  colorCopy = color;
  [(UIView *)nonVibrantGlyph setBackgroundColor:colorCopy];
  [(UIView *)self->_vibrantGlyph setBackgroundColor:colorCopy];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SBUIVibrantButton;
  [(SBUIVibrantButton *)&v4 setHighlighted:highlighted];
  [(SBUIVibrantButton *)self _updateForState];
}

- (BOOL)_shouldUseVibrancy
{
  if (![(SBUIVibrantButton *)self isVibrancyAllowed])
  {
    return 0;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [currentDevice _graphicsQuality] == 100;

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
      _labelFont = [objc_opt_class() _labelFont];
      [(UILabel *)v18 setFont:_labelFont];

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

      _labelFont2 = [objc_opt_class() _labelFont];
      v38 = [(SBUILegibilityLabel *)v33 initWithSettings:legibilitySettings strength:title string:_labelFont2 font:v35];
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

- (CGSize)_sizeThatFitsForLabelView:(id)view
{
  [view sizeThatFits:{100.0, 3.40282347e38}];
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

- (CGRect)_labelFrameForSize:(CGSize)size baselineOffset:(double)offset inRect:(CGRect)rect
{
  UIRectCenteredXInRect();

  return CGRectOffset(*&v6, 0.0, offset);
}

- (CGRect)_glyphFrameForSize:(CGSize)size inRect:(CGRect)rect
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
  isHighlighted = [(SBUIVibrantButton *)self isHighlighted];
  result = 0.2;
  if (!isHighlighted)
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

- (void)setVibrantSettings:(id)settings
{
  settingsCopy = settings;
  if ([(SBUIVibrantButton *)self _shouldUseVibrancy]&& ([(_SBFVibrantSettings *)self->_vibrantSettings isEqual:settingsCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_vibrantSettings, settings);
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

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  _shouldUseVibrancy = [(SBUIVibrantButton *)self _shouldUseVibrancy];
  v6 = viewCopy;
  if (_shouldUseVibrancy)
  {
    vibrantGlyphBackgroundView = self->_vibrantGlyphBackgroundView;
    if (vibrantGlyphBackgroundView != viewCopy)
    {
      [(UIView *)vibrantGlyphBackgroundView removeFromSuperview];
      objc_storeStrong(&self->_vibrantGlyphBackgroundView, view);
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
    _shouldUseVibrancy = CGRectEqualToRect(v23, v24);
    v6 = viewCopy;
    if ((_shouldUseVibrancy & 1) == 0)
    {
      v20 = self->_vibrantGlyphBackgroundView;
      [(UIView *)self->_vibrantGlyph bounds];
      _shouldUseVibrancy = [(UIView *)v20 setFrame:?];
      v6 = viewCopy;
    }
  }

  MEMORY[0x1EEE66BB8](_shouldUseVibrancy, v6);
}

- (void)setStrength:(double)strength
{
  self->_strength = strength;
  _lazyGlyphLegibilityView = [(SBUIVibrantButton *)self _lazyGlyphLegibilityView];
  [_lazyGlyphLegibilityView setStrength:strength];

  nonVibrantLegibilityLabel = self->_nonVibrantLegibilityLabel;

  [(SBUILegibilityLabel *)nonVibrantLegibilityLabel setStrength:strength];
}

- (void)setLegibilitySettings:(id)settings
{
  objc_storeStrong(&self->_legibilitySettings, settings);
  settingsCopy = settings;
  _lazyGlyphLegibilityView = [(SBUIVibrantButton *)self _lazyGlyphLegibilityView];
  [_lazyGlyphLegibilityView updateForChangedSettings:settingsCopy];

  [(SBUILegibilityLabel *)self->_nonVibrantLegibilityLabel setLegibilitySettings:settingsCopy];
}

- (void)setLegibilitySettings:(id)settings textStrength:(double)strength
{
  settingsCopy = settings;
  [(SBUIVibrantButton *)self setStrength:strength];
  [(SBUIVibrantButton *)self setLegibilitySettings:settingsCopy];
}

@end