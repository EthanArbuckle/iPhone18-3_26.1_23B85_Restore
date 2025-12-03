@interface SBUILegibilityLabel
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBUILegibilityLabel)initWithCoder:(id)coder;
- (SBUILegibilityLabel)initWithFrame:(CGRect)frame;
- (SBUILegibilityLabel)initWithSettings:(id)settings strength:(double)strength;
- (SBUILegibilityLabel)initWithSettings:(id)settings strength:(double)strength string:(id)string font:(id)font options:(int64_t)options;
- (UIColor)textColor;
- (UIEdgeInsets)characterOverflowInsets;
- (double)firstBaselineOffsetFromBottom;
- (id)drawingColor;
- (void)_markOurselfDirty;
- (void)_updateLabelColor;
- (void)_updateLabelForLegibilitySettings;
- (void)_updateLegibilityView;
- (void)layoutSubviews;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)width;
- (void)setAttributedText:(id)text;
- (void)setBounds:(CGRect)bounds;
- (void)setFont:(id)font;
- (void)setFrame:(CGRect)frame;
- (void)setHyphenationFactor:(float)factor;
- (void)setLegibilitySettings:(id)settings;
- (void)setLineBreakMode:(int64_t)mode;
- (void)setMinimumScaleFactor:(double)factor;
- (void)setNumberOfLines:(int64_t)lines;
- (void)setOptions:(int64_t)options;
- (void)setStrength:(double)strength;
- (void)setString:(id)string;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTextColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SBUILegibilityLabel

- (void)_markOurselfDirty
{
  self->_isDirty = 1;
  [(SBUILegibilityLabel *)self setNeedsLayout];

  [(SBUILegibilityLabel *)self invalidateIntrinsicContentSize];
}

- (SBUILegibilityLabel)initWithFrame:(CGRect)frame
{
  v4 = [MEMORY[0x1E69DD5B8] sharedInstanceForStyle:{0, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  v5 = [(SBUILegibilityLabel *)self initWithSettings:v4 strength:*MEMORY[0x1E69DE9E0]];

  return v5;
}

- (SBUILegibilityLabel)initWithCoder:(id)coder
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBUILegibilityLabel.m" lineNumber:52 description:@"Not supported"];

  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);

  return [(SBUILegibilityLabel *)self initWithFrame:v6, v7, v8, v9];
}

- (SBUILegibilityLabel)initWithSettings:(id)settings strength:(double)strength
{
  v6 = MEMORY[0x1E69DB878];
  settingsCopy = settings;
  [v6 systemFontSize];
  v8 = [v6 systemFontOfSize:?];
  v9 = [(SBUILegibilityLabel *)self initWithSettings:settingsCopy strength:0 string:v8 font:strength];

  return v9;
}

- (SBUILegibilityLabel)initWithSettings:(id)settings strength:(double)strength string:(id)string font:(id)font options:(int64_t)options
{
  settingsCopy = settings;
  stringCopy = string;
  fontCopy = font;
  v27.receiver = self;
  v27.super_class = SBUILegibilityLabel;
  v16 = *MEMORY[0x1E695F058];
  v17 = *(MEMORY[0x1E695F058] + 8);
  v18 = *(MEMORY[0x1E695F058] + 16);
  v19 = *(MEMORY[0x1E695F058] + 24);
  v20 = [(SBUILegibilityLabel *)&v27 initWithFrame:*MEMORY[0x1E695F058], v17, v18, v19];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_legibilitySettings, settings);
    v21->_strength = strength;
    v22 = [stringCopy copy];
    string = v21->_string;
    v21->_string = v22;

    objc_storeStrong(&v21->_font, font);
    v21->_options = options;
    v24 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v16, v17, v18, v19}];
    lookasideLabel = v21->_lookasideLabel;
    v21->_lookasideLabel = v24;

    [(UILabel *)v21->_lookasideLabel setHidden:1];
    [(UILabel *)v21->_lookasideLabel setText:v21->_string];
    [(UILabel *)v21->_lookasideLabel setFont:v21->_font];
    [(SBUILegibilityLabel *)v21 _updateLabelColor];
    [(SBUILegibilityLabel *)v21 addSubview:v21->_lookasideLabel];
    [(SBUILegibilityLabel *)v21 _markOurselfDirty];
  }

  return v21;
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  attributedText = self->_attributedText;
  if (attributedText != textCopy)
  {
    v8 = textCopy;
    attributedText = [attributedText isEqualToAttributedString:textCopy];
    textCopy = v8;
    if ((attributedText & 1) == 0)
    {
      v6 = [v8 copy];
      v7 = self->_attributedText;
      self->_attributedText = v6;

      [(UILabel *)self->_lookasideLabel setAttributedText:self->_attributedText];
      attributedText = [(SBUILegibilityLabel *)self _markOurselfDirty];
      textCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](attributedText, textCopy);
}

- (void)setString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_string isEqualToString:?])
  {
    v4 = [stringCopy copy];
    string = self->_string;
    self->_string = v4;

    [(UILabel *)self->_lookasideLabel setText:self->_string];
    [(SBUILegibilityLabel *)self _markOurselfDirty];
  }
}

- (UIColor)textColor
{
  textColorOverride = self->_textColorOverride;
  if (textColorOverride)
  {
    primaryColor = textColorOverride;
  }

  else
  {
    primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  }

  return primaryColor;
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_textColorOverride isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_textColorOverride, color);
    [(SBUILegibilityLabel *)self _updateLabelColor];
    [(SBUILegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (self->_font != fontCopy)
  {
    v6 = fontCopy;
    objc_storeStrong(&self->_font, font);
    [(UILabel *)self->_lookasideLabel setFont:v6];
    [(SBUILegibilityLabel *)self _markOurselfDirty];
    fontCopy = v6;
  }
}

- (void)setNumberOfLines:(int64_t)lines
{
  if ([(UILabel *)self->_lookasideLabel numberOfLines]!= lines)
  {
    [(UILabel *)self->_lookasideLabel setNumberOfLines:lines];
    if (lines > 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 4;
    }

    [(UILabel *)self->_lookasideLabel setTextAlignment:v5];

    [(SBUILegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)width
{
  widthCopy = width;
  if ([(UILabel *)self->_lookasideLabel adjustsFontSizeToFitWidth]!= width)
  {
    [(UILabel *)self->_lookasideLabel setAdjustsFontSizeToFitWidth:widthCopy];

    [(SBUILegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setMinimumScaleFactor:(double)factor
{
  [(UILabel *)self->_lookasideLabel minimumScaleFactor];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    [(UILabel *)self->_lookasideLabel setMinimumScaleFactor:factor];

    [(SBUILegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setTextAlignment:(int64_t)alignment
{
  if ([(UILabel *)self->_lookasideLabel textAlignment]!= alignment)
  {
    [(UILabel *)self->_lookasideLabel setTextAlignment:alignment];

    [(SBUILegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setLineBreakMode:(int64_t)mode
{
  if ([(UILabel *)self->_lookasideLabel lineBreakMode]!= mode)
  {
    [(UILabel *)self->_lookasideLabel setLineBreakMode:mode];

    [(SBUILegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setHyphenationFactor:(float)factor
{
  [(UILabel *)self->_lookasideLabel _hyphenationFactor];
  if (*&v5 != factor)
  {
    *&v5 = factor;
    [(UILabel *)self->_lookasideLabel _setHyphenationFactor:v5];

    [(SBUILegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setOptions:(int64_t)options
{
  if (self->_options != options)
  {
    self->_options = options;
    [(SBUILegibilityView *)self->_legibilityView updateForChangedSettings:self->_legibilitySettings options:options];
    [(SBUILegibilityLabel *)self _updateLabelColor];

    [(SBUILegibilityLabel *)self _markOurselfDirty];
  }
}

- (UIEdgeInsets)characterOverflowInsets
{
  [(UILabel *)self->_lookasideLabel _contentInsetsFromFonts];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)firstBaselineOffsetFromBottom
{
  [(SBUILegibilityLabel *)self bounds];
  Height = CGRectGetHeight(v6);
  [(UILabel *)self->_lookasideLabel effectiveFirstBaselineOffsetFromTop];
  return Height - v4;
}

- (void)_updateLabelColor
{
  lookasideLabel = self->_lookasideLabel;
  if (self->_textColorOverride)
  {
    v3 = self->_lookasideLabel;

    [(UILabel *)v3 setTextColor:?];
  }

  else
  {
    drawingColor = [(SBUILegibilityLabel *)self drawingColor];
    [(UILabel *)lookasideLabel setTextColor:drawingColor];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = SBUILegibilityLabel;
  changeCopy = change;
  [(SBUILegibilityLabel *)&v6 traitCollectionDidChange:changeCopy];
  v5 = [(SBUILegibilityLabel *)self traitCollection:v6.receiver];
  [v5 displayScale];

  [changeCopy displayScale];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    [(SBUILegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(SBUILegibilityLabel *)self frame];
  v8.receiver = self;
  v8.super_class = SBUILegibilityLabel;
  [(SBUILegibilityLabel *)&v8 setFrame:x, y, width, height];
  if ((BSSizeEqualToSize() & 1) == 0)
  {
    [(UILabel *)self->_lookasideLabel setNeedsLayout];
    [(SBUILegibilityLabel *)self _markOurselfDirty];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(SBUILegibilityLabel *)self bounds];
  v8.receiver = self;
  v8.super_class = SBUILegibilityLabel;
  [(SBUILegibilityLabel *)&v8 setBounds:x, y, width, height];
  if ((BSSizeEqualToSize() & 1) == 0)
  {
    [(UILabel *)self->_lookasideLabel setNeedsLayout];
    [(SBUILegibilityLabel *)self _markOurselfDirty];
  }
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_lookasideLabel intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_lookasideLabel sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SBUILegibilityLabel;
  [(SBUILegibilityLabel *)&v4 layoutSubviews];
  lookasideLabel = self->_lookasideLabel;
  [(SBUILegibilityLabel *)self bounds];
  [(UILabel *)lookasideLabel setFrame:?];
  if (self->_isDirty)
  {
    [(SBUILegibilityLabel *)self _updateLegibilityView];
    self->_isDirty = 0;
  }
}

- (void)setStrength:(double)strength
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_strength = strength;
    legibilityView = self->_legibilityView;

    [(SBUILegibilityView *)legibilityView setStrength:strength];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?]& 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBUILegibilityLabel *)self _updateLabelColor];
    [(SBUILegibilityLabel *)self _markOurselfDirty];
    [(SBUILegibilityLabel *)self _updateLegibilityView];
  }
}

- (void)_updateLabelForLegibilitySettings
{
  attributedText = [(UILabel *)self->_lookasideLabel attributedText];
  v7 = [attributedText mutableCopy];

  v4 = [v7 length];
  textColor = [(SBUILegibilityLabel *)self textColor];
  v6 = *MEMORY[0x1E69DB650];
  if (textColor)
  {
    [v7 addAttribute:v6 value:textColor range:{0, v4}];
  }

  else
  {
    [v7 removeAttribute:v6 range:{0, v4}];
  }

  [(UILabel *)self->_lookasideLabel setAttributedText:v7];
}

- (void)_updateLegibilityView
{
  [(SBUILegibilityLabel *)self _updateLabelForLegibilitySettings];
  [(SBUILegibilityLabel *)self bounds];
  v56 = v4;
  v57 = v3;
  v49 = v6;
  v51 = v5;
  traitCollection = [(SBUILegibilityLabel *)self traitCollection];
  [traitCollection displayScale];

  [(SBUILegibilityLabel *)self characterOverflowInsets];
  v48 = v8;
  v58 = v10;
  v59 = v9;
  v54 = v11;
  [(UILabel *)self->_lookasideLabel bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(UILabel *)self->_lookasideLabel textRectForBounds:[(UILabel *)self->_lookasideLabel numberOfLines] limitedToNumberOfLines:v12, v14, v16, v18];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v61.origin.x = v13;
  v61.origin.y = v15;
  v61.size.width = v17;
  v61.size.height = v19;
  Height = CGRectGetHeight(v61);
  v62.origin.x = v21;
  v62.origin.y = v23;
  v62.size.width = v25;
  v62.size.height = v27;
  v29 = (Height - CGRectGetHeight(v62)) * 0.5;
  if ([(UILabel *)self->_lookasideLabel adjustsFontSizeToFitWidth])
  {
    v30 = v57;
    v31 = v49;
    v32 = v51;
  }

  else
  {
    v63.origin.x = v21;
    v63.origin.y = v29;
    v63.size.width = v25;
    v63.size.height = v27;
    rect = v29;
    MinX = CGRectGetMinX(v63);
    v30 = v57;
    v64.origin.x = v57;
    v32 = v51;
    v64.origin.y = v51;
    v64.size.width = v49;
    v64.size.height = v56;
    v59 = v59 + MinX - CGRectGetMinX(v64);
    v65.origin.x = v21;
    v65.origin.y = rect;
    v65.size.width = v25;
    v65.size.height = v27;
    MaxX = CGRectGetMaxX(v65);
    v66.origin.x = v57;
    v66.origin.y = v51;
    v66.size.width = v49;
    v66.size.height = v56;
    v35 = MaxX - CGRectGetMaxX(v66);
    v29 = rect;
    v58 = v58 - v35;
    v31 = v49;
  }

  v67.origin.x = v21;
  v67.origin.y = v29;
  v67.size.width = v25;
  v67.size.height = v27;
  v52 = v27;
  v36 = v29;
  MinY = CGRectGetMinY(v67);
  v68.origin.x = v30;
  v68.origin.y = v32;
  v68.size.width = v31;
  v68.size.height = v56;
  v50 = v48 + MinY - CGRectGetMinY(v68);
  v69.origin.x = v21;
  v69.origin.y = v36;
  v69.size.width = v25;
  v69.size.height = v52;
  MaxY = CGRectGetMaxY(v69);
  v70.origin.x = v30;
  v70.origin.y = v32;
  v70.size.width = v31;
  v70.size.height = v56;
  v39 = v54 - (MaxY - CGRectGetMaxY(v70));
  v53 = v56 - (v50 + v39);
  v55 = v31 - (v59 + v58);
  BSSizeRoundForScale();
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __44__SBUILegibilityLabel__updateLegibilityView__block_invoke;
  v60[3] = &unk_1E78A04D0;
  *&v60[5] = v50;
  *&v60[6] = v59;
  *&v60[7] = v39;
  *&v60[8] = v58;
  v60[4] = self;
  *&v60[9] = v57;
  *&v60[10] = v32;
  *&v60[11] = v31;
  *&v60[12] = v56;
  v40 = [MEMORY[0x1E69DCAB8] sbf_imageFromContextWithSize:0 scale:0 type:v60 pool:? drawing:?];
  v41 = v57 + v59;
  legibilityView = self->_legibilityView;
  if (legibilityView)
  {
    [(SBUILegibilityView *)legibilityView setFrame:v41, v32 + v50, v55, v53];
  }

  else
  {
    v43 = [[SBUILegibilityView alloc] initWithFrame:v41, v32 + v50, v55, v53];
    v44 = self->_legibilityView;
    self->_legibilityView = v43;

    [(SBUILegibilityLabel *)self addSubview:self->_legibilityView];
  }

  v45 = self->_legibilityView;
  legibilitySettings = [(SBUILegibilityLabel *)self legibilitySettings];
  [(SBUILegibilityView *)v45 updateForChangedSettings:legibilitySettings options:[(SBUILegibilityLabel *)self options] image:v40 strength:self->_strength];
}

uint64_t __44__SBUILegibilityLabel__updateLegibilityView__block_invoke(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, -*(a1 + 48), -*(a1 + 40));
  CGContextGetCTM(&v4, CurrentContext);
  CGContextSetBaseCTM();
  return [*(*(a1 + 32) + 408) drawRect:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
}

- (id)drawingColor
{
  usesSecondaryColor = [(SBUILegibilityLabel *)self usesSecondaryColor];
  legibilitySettings = self->_legibilitySettings;
  if (usesSecondaryColor)
  {
    [(_UILegibilitySettings *)legibilitySettings secondaryColor];
  }

  else
  {
    [(_UILegibilitySettings *)legibilitySettings primaryColor];
  }
  v5 = ;

  return v5;
}

@end