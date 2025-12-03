@interface _UIGlintyStringView
- (CGRect)chevronFrame;
- (CGRect)labelFrame;
- (CGSize)_labelSizeThatFits:(CGSize)fits;
- (CGSize)labelSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIGlintyStringView)initWithText:(id)text andFont:(id)font;
- (double)_chevronHeightWithMaxOffset;
- (double)_chevronPadding;
- (double)_chevronVerticalOffset;
- (double)_chevronWidthWithPadding;
- (double)_chevronWidthWithPaddingCompression:(double)compression;
- (double)baselineOffsetFromBottom;
- (double)baselineOffsetFromBottomWithSize:(CGSize)size;
- (id)_chevronImageForStyle:(int64_t)style;
- (id)_highlightCompositingFilter;
- (id)shapeViewForCharactersInString:(id)string withFont:(id)font centeredInFrame:(CGRect)frame;
- (void)_updateHighlight;
- (void)_updateLabelWithFrame:(CGRect)frame;
- (void)addGlintyAnimations;
- (void)addReflectionAnimationToLayer:(id)layer;
- (void)addShimmerAnimationToLayer:(id)layer;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)fadeInWithDuration:(double)duration;
- (void)fadeOutWithDuration:(double)duration;
- (void)hide;
- (void)hideEffects;
- (void)layoutSubviews;
- (void)removeGlintyAnimations;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)width;
- (void)setBackgroundColor:(id)color;
- (void)setBackgroundView:(id)view;
- (void)setBlurAlpha:(double)alpha;
- (void)setBlurHidden:(BOOL)hidden forRequester:(id)requester;
- (void)setChevron:(id)chevron;
- (void)setChevronStyle:(int64_t)style;
- (void)setFont:(id)font;
- (void)setHighlight:(BOOL)highlight;
- (void)setHorizontalPadding:(double)padding;
- (void)setLegibilitySettings:(id)settings;
- (void)setText:(id)text;
- (void)setTextLanguage:(id)language;
- (void)setVibrantSettings:(id)settings;
- (void)show;
- (void)showEffects;
- (void)startAnimating;
- (void)stopAnimating;
- (void)updateBlurForHiddenRequesters;
- (void)updateText;
- (void)updateTextWithBounds:(CGRect)bounds;
@end

@implementation _UIGlintyStringView

- (_UIGlintyStringView)initWithText:(id)text andFont:(id)font
{
  textCopy = text;
  fontCopy = font;
  v19.receiver = self;
  v19.super_class = _UIGlintyStringView;
  v9 = [(UIView *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_text, text);
    objc_storeStrong(&v10->_font, font);
    v10->_needsTextUpdate = 1;
    v10->_animationRepeats = 1;
    [(_UIGlintyStringView *)v10 setAnimating:0];
    v10->_blurAlpha = 1.0;
    v10->_allowsLuminanceAdjustments = 1;
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    blurHiddenRequesters = v10->_blurHiddenRequesters;
    v10->_blurHiddenRequesters = v11;

    v13 = [_UILegibilitySettings sharedInstanceForStyle:1];
    v14 = [_UIVibrantSettings vibrantSettingsWithReferenceColor:0 referenceContrast:v13 legibilitySettings:0.0];
    vibrantSettings = v10->_vibrantSettings;
    v10->_vibrantSettings = v14;

    [(_UIGlintyStringView *)v10 setChevronStyle:0];
    [(UIView *)v10 setOpaque:0];
    [(UIView *)v10 setUserInteractionEnabled:1];
    [(_UIGlintyStringView *)v10 updateText];
    layer = [(UIView *)v10 layer];
    [layer setAllowsGroupBlending:0];

    v17 = v10;
  }

  return v10;
}

- (void)dealloc
{
  [(_UIGlintyStringView *)self stopAnimating];
  v3.receiver = self;
  v3.super_class = _UIGlintyStringView;
  [(UIView *)&v3 dealloc];
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [textCopy copy];
    text = self->_text;
    self->_text = v4;

    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (([(UIFont *)self->_font isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_font, font);
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)setTextLanguage:(id)language
{
  languageCopy = language;
  if (![(NSString *)self->_textLanguage isEqualToString:?])
  {
    v4 = [languageCopy copy];
    textLanguage = self->_textLanguage;
    self->_textLanguage = v4;

    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)width
{
  if (self->_adjustsFontSizeToFitWidth != width)
  {
    self->_adjustsFontSizeToFitWidth = width;
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (([settingsCopy isEqual:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)setVibrantSettings:(id)settings
{
  settingsCopy = settings;
  if (([settingsCopy isEqual:self->_vibrantSettings] & 1) == 0)
  {
    objc_storeStrong(&self->_vibrantSettings, settings);
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  backgroundView = self->_backgroundView;
  if (backgroundView != viewCopy)
  {
    v9 = viewCopy;
    v6 = viewCopy;
    v7 = self->_backgroundView;
    self->_backgroundView = v6;
    v8 = backgroundView;

    [(UIView *)v8 removeFromSuperview];
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
    viewCopy = v9;
  }
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (([colorCopy _isSimilarToColor:self->_backgroundColor withinPercentage:0.01] & 1) == 0 && !-[_UIGlintyStringView hasCustomBackgroundColor](self, "hasCustomBackgroundColor"))
  {
    objc_storeStrong(&self->_backgroundColor, color);
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)hideEffects
{
  effectView = [(_UIGlintyStringView *)self effectView];
  [effectView setAlpha:0.0];
}

- (void)showEffects
{
  effectView = [(_UIGlintyStringView *)self effectView];
  [effectView setAlpha:1.0];
}

- (void)setBlurAlpha:(double)alpha
{
  v5 = +[UIDevice currentDevice];
  _graphicsQuality = [v5 _graphicsQuality];

  if ([(NSMutableSet *)self->_blurHiddenRequesters count])
  {
    goto LABEL_5;
  }

  if (_graphicsQuality == 10)
  {
    alpha = alpha * 0.2;
  }

  if (![(_UIGlintyStringView *)self showing])
  {
LABEL_5:
    alpha = 0.0;
  }

  self->_blurAlpha = alpha;
  blurView = [(_UIGlintyStringView *)self blurView];
  [blurView setAlpha:alpha];
}

- (void)setBlurHidden:(BOOL)hidden forRequester:(id)requester
{
  blurHiddenRequesters = self->_blurHiddenRequesters;
  if (hidden)
  {
    [(NSMutableSet *)blurHiddenRequesters addObject:requester];
  }

  else
  {
    [(NSMutableSet *)blurHiddenRequesters removeObject:requester];
  }

  [(_UIGlintyStringView *)self updateBlurForHiddenRequesters];
}

- (void)updateBlurForHiddenRequesters
{
  if (![(_UIGlintyStringView *)self fading])
  {
    v3 = [(NSMutableSet *)self->_blurHiddenRequesters count]!= 0;
    blurView = [(_UIGlintyStringView *)self blurView];
    [blurView setHidden:v3];
  }
}

- (void)startAnimating
{
  if (!self->_animating)
  {
    [(_UIGlintyStringView *)self setAnimating:1];
    [(_UIGlintyStringView *)self addGlintyAnimations];
    [(_UIGlintyStringViewDelegate *)self->_delegate glintyAnimationDidStart];

    [(_UIGlintyStringView *)self show];
  }
}

- (void)stopAnimating
{
  if (self->_animating)
  {
    [(_UIGlintyStringView *)self setAnimating:0];
    [(_UIGlintyStringView *)self hide];
    [(_UIGlintyStringView *)self removeGlintyAnimations];
    delegate = self->_delegate;

    [(_UIGlintyStringViewDelegate *)delegate glintyAnimationDidStop];
  }
}

- (void)hide
{
  [(_UIGlintyStringView *)self hideEffects];
  [(_UIGlintyStringView *)self hideBlur];
  [(_UIGlintyStringView *)self setShowing:0];
  if (![(_UIGlintyStringView *)self fading])
  {

    [(_UIGlintyStringView *)self stopAnimating];
  }
}

- (void)show
{
  [(_UIGlintyStringView *)self startAnimating];
  [(_UIGlintyStringView *)self setShowing:1];
  [(_UIGlintyStringView *)self showEffects];
  [(_UIGlintyStringView *)self showBlur];

  [(_UIGlintyStringView *)self updateBlurForHiddenRequesters];
}

- (void)fadeOutWithDuration:(double)duration
{
  [(_UIGlintyStringView *)self setFading:1];
  v5[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43___UIGlintyStringView_fadeOutWithDuration___block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43___UIGlintyStringView_fadeOutWithDuration___block_invoke_2;
  v5[3] = &unk_1E70F5AC0;
  [UIView animateWithDuration:0 delay:v6 options:v5 animations:duration completion:0.0];
}

- (void)fadeInWithDuration:(double)duration
{
  [(_UIGlintyStringView *)self setFading:1];
  v5[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42___UIGlintyStringView_fadeInWithDuration___block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42___UIGlintyStringView_fadeInWithDuration___block_invoke_2;
  v5[3] = &unk_1E70F5AC0;
  [UIView animateWithDuration:0 delay:v6 options:v5 animations:duration completion:0.0];
}

- (void)setChevronStyle:(int64_t)style
{
  if (self->_chevronStyle != style)
  {
    self->_chevronStyle = style;
    v5 = [(_UIGlintyStringView *)self _chevronImageForStyle:?];
    [(_UIGlintyStringView *)self setChevron:v5];
  }
}

- (id)_chevronImageForStyle:(int64_t)style
{
  if (style)
  {
    if (style == 2)
    {
      v3 = @"UIGlintyStringViewBandChevron";
    }

    else
    {
      v3 = @"UIGlintyStringViewChevron";
    }

    v4 = _UIImageWithName(v3);
    imageFlippedForRightToLeftLayoutDirection = [v4 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    imageFlippedForRightToLeftLayoutDirection = 0;
  }

  return imageFlippedForRightToLeftLayoutDirection;
}

- (void)setChevron:(id)chevron
{
  chevronCopy = chevron;
  if (self->_chevron != chevronCopy)
  {
    v6 = chevronCopy;
    objc_storeStrong(&self->_chevron, chevron);
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
    chevronCopy = v6;
  }
}

- (void)setHighlight:(BOOL)highlight
{
  if (self->_highlight != highlight)
  {
    self->_highlight = highlight;
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (double)_chevronPadding
{
  result = 11.0;
  if (self->_chevronStyle == 2)
  {
    return 20.0;
  }

  return result;
}

- (void)setHorizontalPadding:(double)padding
{
  if (self->_horizontalPadding != padding)
  {
    self->_horizontalPadding = padding;
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)_updateLabelWithFrame:(CGRect)frame
{
  v8 = [[UILabel alloc] initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(UILabel *)v8 setTextAlignment:1];
  v4 = +[UIColor clearColor];
  [(UIView *)v8 setBackgroundColor:v4];

  [(UILabel *)v8 setText:self->_text];
  v5 = +[UIColor whiteColor];
  [(UILabel *)v8 setTextColor:v5];

  [(UILabel *)v8 setFont:self->_font];
  [(UILabel *)v8 setAdjustsFontSizeToFitWidth:self->_adjustsFontSizeToFitWidth];
  [(UILabel *)v8 setMinimumScaleFactor:0.6];
  if (self->_textLanguage)
  {
    _defaultAttributes = [(UILabel *)v8 _defaultAttributes];
    v7 = [_defaultAttributes mutableCopy];

    [v7 setObject:self->_textLanguage forKey:@"NSLanguage"];
    [(UILabel *)v8 _setDefaultAttributes:v7];
  }

  [(_UIGlintyStringView *)self setLabel:v8];
}

- (void)updateText
{
  [(UIView *)self bounds];

  [(_UIGlintyStringView *)self updateTextWithBounds:?];
}

- (void)updateTextWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v205[1] = *MEMORY[0x1E69E9840];
  subviews = [(UIView *)self subviews];
  [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

  v206.origin.x = x;
  v206.origin.y = y;
  v206.size.width = width;
  v206.size.height = height;
  if (!CGRectEqualToRect(v206, *MEMORY[0x1E695F058]))
  {
    v9 = *(&self->super._viewFlags + 2);
    horizontalPadding = self->_horizontalPadding;
    font = self->_font;
    v204 = *off_1E70EC918;
    v205[0] = font;
    v187 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v205 forKeys:&v204 count:1];
    [(NSString *)self->_text sizeWithAttributes:?];
    v13 = v12;
    v192 = v14;
    [(_UIGlintyStringView *)self _chevronWidthWithPadding];
    if (v15 >= horizontalPadding)
    {
      v16 = v15;
    }

    else
    {
      v16 = horizontalPadding;
    }

    v207.origin.x = x;
    v207.origin.y = y;
    rect = width;
    v207.size.width = width;
    v207.size.height = height;
    v17 = CGRectGetWidth(v207) - horizontalPadding - horizontalPadding;
    if (v13 + v16 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v13 + v16;
    }

    if (v18 < v13 + v16 && self->_chevronStyle == 2)
    {
      horizontalPadding = self->_horizontalPadding * 0.5;
      [(_UIGlintyStringView *)self _chevronWidthWithPaddingCompression:0.5];
      if (v19 >= horizontalPadding)
      {
        v16 = v19;
      }

      else
      {
        v16 = horizontalPadding;
      }

      v208.origin.x = x;
      v208.origin.y = y;
      v208.size.width = rect;
      v208.size.height = height;
      v20 = CGRectGetWidth(v208) - horizontalPadding - horizontalPadding;
      if (v13 + v16 >= v20)
      {
        v18 = v20;
      }

      else
      {
        v18 = v13 + v16;
      }
    }

    v190 = v13;
    v209.origin.x = x;
    v209.origin.y = y;
    v209.size.width = rect;
    v209.size.height = height;
    v21 = CGRectGetHeight(v209);
    [(_UIGlintyStringView *)self _chevronHeightWithMaxOffset];
    if (v22 < v192)
    {
      v22 = v192;
    }

    if (v21 < v22)
    {
      v22 = v21;
    }

    v23 = UIRectCenteredIntegralRectScale(0.0, 0.0, ceil(v18), ceil(v22), x, y, rect, height, 0.0);
    v27 = v24;
    v178 = v25;
    v28 = v23 - ceil(v16 * 0.35);
    if (v28 >= horizontalPadding)
    {
      v29 = v28;
    }

    else
    {
      v29 = horizontalPadding;
    }

    v180 = v24;
    v182 = y;
    v175 = v26;
    v30 = x;
    if ((v9 & 0x400000) != 0)
    {
      v210.origin.x = x;
      v210.origin.y = y;
      v32 = v25;
      v210.size.width = rect;
      v33 = v26;
      v210.size.height = height;
      v34 = v27;
      v29 = CGRectGetMaxX(v210) - v29 - v18;
      v211.origin.x = v29;
      v211.origin.y = v34;
      v211.size.width = v32;
      v211.size.height = v33;
      v31 = CGRectGetMaxX(v211) - v16 - v190;
    }

    else
    {
      v31 = v16 + v29;
    }

    v35 = ceil(v18 - v16);
    v36 = ceil(v192);
    v184 = height;
    if (self->_chevronStyle == 2)
    {
      v37 = v30;
      v38 = v182;
      v39 = UIRectCenteredIntegralRectScale(v31, 0.0, v35, v36, v30, v182, rect, height, 0.0);
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = self->_horizontalPadding;
      if (v39 - v16 >= v46)
      {
        v29 = v39 - v16;
      }

      else
      {
        v29 = self->_horizontalPadding;
      }

      v47 = v16 + v46;
      if (v39 >= v47)
      {
        v48 = v39;
      }

      else
      {
        v48 = v47;
      }
    }

    else
    {
      v37 = v30;
      v38 = v182;
      v48 = UIRectCenteredYInRectScale(v31, 0.0, v35, v36, v30, v182, rect, height, 0.0);
      v41 = v49;
      v43 = v50;
      v45 = v51;
    }

    v201 = 0.0;
    v202 = 0.0;
    v199 = 0.0;
    v200 = 0.0;
    v188 = v45;
    v191 = v48;
    v52 = v43;
    v193 = v41;
    if (CTFontGetLanguageAwareOutsets())
    {
      v53 = ceil(v201);
      v54 = ceil(v202);
      v191 = v48 - v54;
      v193 = v41 - v53;
      v52 = v43 - (-ceil(v200) - v54);
      v188 = v45 - (-ceil(v199) - v53);
    }

    v173 = v43;
    v186 = v45;
    [(_UIGlintyStringView *)self _updateLabelWithFrame:v48, v41, v43, v45];
    [(UIImage *)self->_chevron size];
    v56 = v55;
    v58 = v57;
    if ((v9 & 0x400000) != 0)
    {
      v212.origin.x = v29;
      v212.size.width = v178;
      v212.origin.y = v180;
      v212.size.height = v175;
      v29 = CGRectGetMaxX(v212) - v56;
    }

    p_chevronFrame = &self->_chevronFrame;
    self->_chevronFrame.origin.x = v29;
    self->_chevronFrame.origin.y = 0.0;
    self->_chevronFrame.size.width = v56;
    self->_chevronFrame.size.height = v58;
    self->_chevronFrame.origin.x = UIRectCenteredYInRectScale(v29, 0.0, v56, v58, v37, v38, rect, v184, 0.0);
    self->_chevronFrame.origin.y = v60;
    self->_chevronFrame.size.width = v61;
    self->_chevronFrame.size.height = v62;
    [(_UIGlintyStringView *)self _chevronVerticalOffset];
    self->_chevronFrame.origin.y = v63 + self->_chevronFrame.origin.y;
    v64 = self->_font;
    if ([(_UIGlintyStringView *)self allowsLuminanceAdjustments])
    {
      backgroundView = [(_UIGlintyStringView *)self backgroundView];
      v66 = v188;
      if (backgroundView)
      {
        v67 = 0;
      }

      else
      {
        backgroundColor = [(_UIGlintyStringView *)self backgroundColor];
        [backgroundColor _luminance];
        v67 = v69 > 0.85;
      }
    }

    else
    {
      v67 = 0;
      v66 = v188;
    }

    vibrantSettings = [(_UIGlintyStringView *)self vibrantSettings];
    referenceColor = [vibrantSettings referenceColor];

    [referenceColor _luminance];
    v73 = v72;
    allowsLuminanceAdjustments = [(_UIGlintyStringView *)self allowsLuminanceAdjustments];
    v185 = referenceColor;
    if (referenceColor)
    {
      v75 = allowsLuminanceAdjustments;
    }

    else
    {
      v75 = 0;
    }

    if (v73 >= 0.22)
    {
      v75 = 0;
    }

    recta = v75;
    v76 = [UIView alloc];
    [(UIView *)self bounds];
    v77 = [(UIView *)v76 initWithFrame:?];
    layer = [(UIView *)v77 layer];
    [layer setAllowsGroupOpacity:0];

    layer2 = [(UIView *)v77 layer];
    [layer2 setAllowsGroupBlending:0];

    [(UIView *)v77 setOpaque:0];
    v80 = *MEMORY[0x1E6979C60];
    layer3 = [(UIView *)v77 layer];
    [layer3 setCompositingFilter:v80];

    [(_UIGlintyStringView *)self setEffectView:v77];
    v82 = [[UIImageView alloc] initWithFrame:p_chevronFrame->origin.x, self->_chevronFrame.origin.y, self->_chevronFrame.size.width, self->_chevronFrame.size.height];
    chevron = [(_UIGlintyStringView *)self chevron];
    [(UIImageView *)v82 setImage:chevron];

    v183 = v82;
    if (!v67)
    {
      v84 = +[UIDevice currentDevice];
      v85 = v67;
      _graphicsQuality = [v84 _graphicsQuality];

      v87 = _graphicsQuality == 100;
      v67 = v85;
      if (v87)
      {
        text = self->_text;
        [(UIView *)self bounds];
        v89 = [(_UIGlintyStringView *)self shapeViewForCharactersInString:text withFont:v64 centeredInFrame:?];
        memset(&v198, 0, sizeof(v198));
        CGAffineTransformMakeScale(&v198, 1.0, -1.0);
        v90 = +[UIColor blackColor];
        [v89 setBackgroundColor:v90];

        v197 = v198;
        [v89 setTransform:&v197];
        v91 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
        [v91 setValue:&unk_1EFE33F88 forKey:@"inputRadius"];
        [v91 setValue:@"low" forKey:@"inputQuality"];
        [v91 setName:@"gaussianBlur"];
        v203 = v91;
        v92 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v203 count:1];
        layer4 = [v89 layer];
        [layer4 setFilters:v92];

        [(UIView *)v77 addSubview:v89];
        if (recta)
        {
          [v89 setAlpha:0.3];
        }

        v67 = v85;
      }
    }

    v189 = v64;
    v227.origin.x = p_chevronFrame->origin.x;
    v227.origin.y = self->_chevronFrame.origin.y;
    v227.size.width = self->_chevronFrame.size.width;
    v227.size.height = self->_chevronFrame.size.height;
    v213.origin.x = v191;
    v213.origin.y = v193;
    v213.size.width = v52;
    v213.size.height = v66;
    v214 = CGRectUnion(v213, v227);
    v94 = [[UIView alloc] initWithFrame:v214.origin.x, v214.origin.y, v214.size.width, v214.size.height];
    layer5 = [(UIView *)v94 layer];
    [layer5 setAllowsGroupOpacity:0];

    layer6 = [(UIView *)v94 layer];
    [layer6 setAllowsGroupBlending:0];

    [(UIView *)v94 setOpaque:0];
    [(UIView *)v94 setClipsToBounds:1];
    [(UIView *)v77 addSubview:v94];
    v181 = v67;
    if (v67)
    {
      [(UIView *)v94 setAlpha:0.2];
    }

    [(UIView *)self bounds];
    v216.size.height = CGRectGetHeight(v215);
    v216.size.width = 640.0;
    v216.origin.x = 0.0;
    v216.origin.y = 0.0;
    v217 = CGRectInset(v216, -3.0, -3.0);
    v97 = v217.origin.x;
    v98 = v217.size.width;
    v99 = v217.size.height;
    [(UIView *)self bounds];
    v102 = round(v101 + (v100 - v99) * 0.5);
    v103 = _UIImageWithName(@"UIGlintyStringViewShimmerMask");
    v104 = [[UIImageView alloc] initWithFrame:v97, v102, v98, v99];
    layer7 = [(UIView *)v104 layer];
    [layer7 setContentsScale:1.25];

    [(UIView *)v104 setAnchorPoint:0.5, 0.47];
    v179 = v103;
    [(UIImageView *)v104 setImage:v103];
    layer8 = [(UIView *)v104 layer];
    [layer8 setAllowsGroupOpacity:0];

    layer9 = [(UIView *)v104 layer];
    [layer9 setAllowsGroupBlending:0];

    layer10 = [(UIView *)v104 layer];
    [layer10 setCompositingFilter:v80];

    [(UIView *)v104 setAlpha:0.9];
    [(UIView *)v94 addSubview:v104];
    v176 = v104;
    [(_UIGlintyStringView *)self setShimmerImageView:v104];
    v109 = [[_UIGlintyGradientView alloc] initWithFrame:v97, v102, v98, v99];
    [(UIView *)v109 setAnchorPoint:0.5, 0.47];
    v110 = *MEMORY[0x1E6979860];
    layer11 = [(UIView *)v109 layer];
    [layer11 setCompositingFilter:v110];

    [(UIView *)v109 setAlpha:0.35];
    v177 = v109;
    [(UIView *)v94 addSubview:v109];
    v112 = _UIImageWithName(@"UIGlintyStringViewReflectionMask");
    v113 = [[UIImageView alloc] initWithFrame:v97, v102, v98, v99];
    layer12 = [(UIView *)v113 layer];
    [layer12 setContentsScale:1.25];

    [(UIView *)v113 setAnchorPoint:0.5, 0.47];
    v174 = v112;
    [(UIImageView *)v113 setImage:v112];
    v115 = *MEMORY[0x1E6979CA8];
    layer13 = [(UIView *)v113 layer];
    v172 = v115;
    [layer13 setCompositingFilter:v115];

    [(UIView *)v113 setAlpha:0.75];
    [(UIView *)v94 addSubview:v113];
    [(_UIGlintyStringView *)self setReflectionImageView:v113];
    if ([(_UIGlintyStringView *)self animating])
    {
      [(_UIGlintyStringView *)self addGlintyAnimations];
    }

    usesBackgroundDimming = [(_UIGlintyStringView *)self usesBackgroundDimming];
    v118 = 0.39;
    if (recta)
    {
      v118 = 0.56;
    }

    if (usesBackgroundDimming)
    {
      v119 = 0.25;
    }

    else
    {
      v119 = v118;
    }

    v120 = [UIView alloc];
    [(UIView *)self bounds];
    v121 = [(UIView *)v120 initWithFrame:?];
    v122 = [UIColor colorWithWhite:v119 alpha:1.0];
    [(UIView *)v121 setBackgroundColor:v122];

    v123 = *MEMORY[0x1E6979D18];
    layer14 = [(UIView *)v121 layer];
    [layer14 setCompositingFilter:v123];

    layer15 = [(UIView *)v121 layer];
    [layer15 setAllowsGroupOpacity:0];

    layer16 = [(UIView *)v121 layer];
    [layer16 setAllowsGroupBlending:0];

    rectb = v121;
    [(UIView *)v77 addSubview:v121];
    v127 = MEMORY[0x1E69798E0];
    v128 = v183;
    if (self->_backgroundView)
    {
      v228.origin.x = p_chevronFrame->origin.x;
      v228.origin.y = self->_chevronFrame.origin.y;
      v228.size.width = self->_chevronFrame.size.width;
      v228.size.height = self->_chevronFrame.size.height;
      v218.origin.x = v191;
      v218.origin.y = v193;
      v218.size.width = v52;
      v218.size.height = v66;
      v219 = CGRectUnion(v218, v228);
      v220 = CGRectInset(v219, -77.0, -111.0);
      v129 = v220.origin.x;
      v130 = v220.origin.y;
      v131 = v220.size.width;
      v132 = v220.size.height;
      v133 = [[UIImageView alloc] initWithFrame:v220.origin.x, v220.origin.y, v220.size.width, v220.size.height];
      [(UIView *)self addSubview:v133];
      [(UIView *)v133 bounds];
      [(UIView *)self->_backgroundView setFrame:?];
      [(UIView *)v133 addSubview:self->_backgroundView];
      v134 = [UIImageView alloc];
      v221.origin.x = v129;
      v221.origin.y = v130;
      v221.size.width = v131;
      v221.size.height = v132;
      v135 = CGRectGetWidth(v221);
      v222.origin.x = v129;
      v222.origin.y = v130;
      v222.size.width = v131;
      v222.size.height = v132;
      v136 = [(UIImageView *)v134 initWithFrame:0.0, 0.0, v135, CGRectGetHeight(v222)];
      v137 = _UIImageWithName(@"UIGlintyStringViewBlurBlob");
      [(UIImageView *)v136 setImage:v137];

      [(UIView *)v133 addSubview:v136];
      v138 = *MEMORY[0x1E69798E0];
      [(UIView *)v136 layer];
      v140 = v139 = v77;
      [v140 setCompositingFilter:v138];

      v77 = v139;
      v128 = v183;
      [(_UIGlintyStringView *)self setBlurView:v133];
      [(_UIGlintyStringView *)self updateBlurForHiddenRequesters];
      [(_UIGlintyStringView *)self blurAlpha];
      v142 = v141;
      blurView = [(_UIGlintyStringView *)self blurView];
      [blurView setAlpha:v142];

      v127 = MEMORY[0x1E69798E0];
    }

    if (v181)
    {
      v144 = [UIView alloc];
      [(UIView *)self bounds];
      v145 = [(UIView *)v144 initWithFrame:?];
      v146 = [UIColor colorWithWhite:0.2 alpha:0.3];
      [(UIView *)v145 setBackgroundColor:v146];

      layer17 = [(UIView *)v145 layer];
      [layer17 setCompositingFilter:v172];

      [(UIView *)v77 addSubview:v145];
    }

    [(UIView *)self bounds];
    if (v149 > 0.0 && v148 > 0.0)
    {
      [(UIView *)self bounds];
      v151 = v150;
      v153 = v152;
      mainScreen = [objc_opt_self() mainScreen];
      [mainScreen scale];
      _UIGraphicsBeginImageContextWithOptions(0, 0, v151, v153, v155);

      ContextStack = GetContextStack(0);
      v171 = v77;
      if (*ContextStack < 1)
      {
        v157 = 0;
      }

      else
      {
        v157 = ContextStack[3 * (*ContextStack - 1) + 1];
      }

      v158 = v127;
      CGContextSaveGState(v157);
      v223.origin.x = v48;
      v223.origin.y = v41;
      v223.size.width = v173;
      v223.size.height = v186;
      MinX = CGRectGetMinX(v223);
      v224.origin.x = v48;
      v224.origin.y = v41;
      v224.size.width = v173;
      v224.size.height = v186;
      MinY = CGRectGetMinY(v224);
      CGContextTranslateCTM(v157, MinX, MinY);
      label = [(_UIGlintyStringView *)self label];
      layer18 = [label layer];
      [layer18 renderInContext:v157];

      CGContextRestoreGState(v157);
      CGContextSaveGState(v157);
      v225.origin.x = p_chevronFrame->origin.x;
      v225.origin.y = self->_chevronFrame.origin.y;
      v225.size.width = self->_chevronFrame.size.width;
      v225.size.height = self->_chevronFrame.size.height;
      v163 = CGRectGetMinX(v225);
      v226.origin.x = p_chevronFrame->origin.x;
      v226.origin.y = self->_chevronFrame.origin.y;
      v226.size.width = self->_chevronFrame.size.width;
      v226.size.height = self->_chevronFrame.size.height;
      v164 = CGRectGetMinY(v226);
      CGContextTranslateCTM(v157, v163, v164);
      layer19 = [(UIView *)v128 layer];
      [layer19 renderInContext:v157];

      CGContextRestoreGState(v157);
      v166 = _UIGraphicsGetImageFromCurrentImageContext(0);
      UIGraphicsEndImageContext();
      v167 = [UIImageView alloc];
      [(UIView *)self bounds];
      v168 = [(UIImageView *)v167 initWithFrame:?];
      v169 = *v158;
      layer20 = [(UIView *)v168 layer];
      [layer20 setCompositingFilter:v169];

      [(UIImageView *)v168 setImage:v166];
      v77 = v171;
      [(UIView *)v171 addSubview:v168];
    }

    [(UIView *)self addSubview:v77];
    [(_UIGlintyStringView *)self setNeedsTextUpdate:0];
    if (![(_UIGlintyStringView *)self showing])
    {
      [(_UIGlintyStringView *)self hide];
    }
  }
}

- (void)removeGlintyAnimations
{
  shimmerImageView = [(_UIGlintyStringView *)self shimmerImageView];
  layer = [shimmerImageView layer];
  [layer removeAllAnimations];

  reflectionImageView = [(_UIGlintyStringView *)self reflectionImageView];
  layer2 = [reflectionImageView layer];
  [layer2 removeAllAnimations];
}

- (void)addGlintyAnimations
{
  shimmerImageView = [(_UIGlintyStringView *)self shimmerImageView];
  layer = [shimmerImageView layer];
  [(_UIGlintyStringView *)self addShimmerAnimationToLayer:layer];

  reflectionImageView = [(_UIGlintyStringView *)self reflectionImageView];
  layer2 = [reflectionImageView layer];
  [(_UIGlintyStringView *)self addReflectionAnimationToLayer:layer2];
}

- (void)addShimmerAnimationToLayer:(id)layer
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ((*(&self->super._viewFlags + 2) & 0x400000) != 0)
  {
    v3 = &unk_1EFE2DFD8;
  }

  else
  {
    v3 = &unk_1EFE2DFC0;
  }

  v4 = MEMORY[0x1E69793D0];
  v5 = *MEMORY[0x1E6979ED8];
  layerCopy = layer;
  v7 = [v4 functionWithName:v5];
  v8 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.x"];
  [v8 setDuration:2.0];
  [v8 setFillMode:*MEMORY[0x1E69797E0]];
  [v8 setRemovedOnCompletion:0];
  LODWORD(v9) = 2139095040;
  [v8 setRepeatCount:v9];
  [v8 setKeyTimes:&unk_1EFE2DFF0];
  [v8 setValues:v3];
  v11[0] = v7;
  v11[1] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v8 setTimingFunctions:v10];

  [layerCopy addAnimation:v8 forKey:@"shimmerAnimation"];
}

- (void)addReflectionAnimationToLayer:(id)layer
{
  v11[2] = *MEMORY[0x1E69E9840];
  if ((*(&self->super._viewFlags + 2) & 0x400000) != 0)
  {
    v3 = &unk_1EFE2E020;
  }

  else
  {
    v3 = &unk_1EFE2E008;
  }

  v4 = MEMORY[0x1E69793D0];
  v5 = *MEMORY[0x1E6979ED8];
  layerCopy = layer;
  v7 = [v4 functionWithName:v5];
  v8 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.x"];
  [v8 setDuration:2.0];
  [v8 setFillMode:*MEMORY[0x1E69797E0]];
  [v8 setRemovedOnCompletion:0];
  LODWORD(v9) = 2139095040;
  [v8 setRepeatCount:v9];
  [v8 setKeyTimes:&unk_1EFE2E038];
  [v8 setValues:v3];
  v11[0] = v7;
  v11[1] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v8 setTimingFunctions:v10];

  [layerCopy addAnimation:v8 forKey:@"reflectionAnimation"];
}

- (id)shapeViewForCharactersInString:(id)string withFont:(id)font centeredInFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v51 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  fontCopy = font;
  v12 = [stringCopy length];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v48 - v14);
  v16 = [stringCopy length];
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v48 - v18);
  v20 = [stringCopy length];
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v48 - 2 * v22);
  v24 = [stringCopy length];
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = (&v48 - 4 * v26);
  [stringCopy getCharacters:v15 range:{0, objc_msgSend(stringCopy, "length", v25)}];
  CTFontGetGlyphsForCharacters(fontCopy, v15, v19, [stringCopy length]);
  v28 = [stringCopy length];
  CTFontGetBoundingRectsForGlyphs(fontCopy, kCTFontOrientationDefault, v19, v27, v28);
  Mutable = CGPathCreateMutable();
  if ([stringCopy length])
  {
    v30 = 0;
    v31 = 0.0;
    do
    {
      PathForGlyph = CTFontCreatePathForGlyph(fontCopy, v19[v30], 0);
      memset(&m, 0, sizeof(m));
      CGAffineTransformMakeTranslation(&m, v31, 0.0);
      CGPathAddPath(Mutable, &m, PathForGlyph);
      CGPathRelease(PathForGlyph);
      v33 = v23->width;
      ++v23;
      v31 = v31 + v33;
      ++v30;
    }

    while (v30 < [stringCopy length]);
  }

  PathBoundingBox = CGPathGetPathBoundingBox(Mutable);
  v34 = PathBoundingBox.size.width;
  v35 = PathBoundingBox.size.height;
  v36 = round(x + (width - PathBoundingBox.size.width) * 0.5);
  v37 = round(y + (height - PathBoundingBox.size.height) * 0.5);
  memset(&m, 0, sizeof(m));
  PathBoundingBox.origin.x = v36;
  PathBoundingBox.origin.y = v37;
  MinX = CGRectGetMinX(PathBoundingBox);
  v49 = height;
  v39 = MinX;
  v54.origin.x = v36;
  v54.origin.y = v37;
  v54.size.width = v34;
  v54.size.height = v35;
  MinY = CGRectGetMinY(v54);
  CGAffineTransformMakeTranslation(&m, v39, MinY);
  v41 = CGPathCreateMutableCopyByTransformingPath(Mutable, &m);
  v42 = [UIBezierPath bezierPathWithCGPath:v41];
  CGPathRelease(Mutable);
  CGPathRelease(v41);
  v43 = [_UIGlintyShapeView alloc];
  v44 = [(_UIGlintyShapeView *)v43 initWithFrame:x, y, width, v49];
  [(_UIGlintyShapeView *)v44 setPath:v42];
  [(_UIGlintyShapeView *)v44 setFillColor:0];
  v45 = +[UIColor whiteColor];
  [(_UIGlintyShapeView *)v44 setStrokeColor:v45];

  shapeLayer = [(_UIGlintyShapeView *)v44 shapeLayer];
  [shapeLayer setLineWidth:1.5];
  [shapeLayer setMiterLimit:5.0];
  [shapeLayer setLineCap:@"round"];
  [shapeLayer setLineJoin:@"round"];
  [shapeLayer setLineDashPattern:&unk_1EFE2E050];
  [shapeLayer setShouldRasterize:1];

  return v44;
}

- (id)_highlightCompositingFilter
{
  if ([(_UIVibrantSettings *)self->_vibrantSettings style]== 1)
  {
    v2 = *MEMORY[0x1E6979860];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_updateHighlight
{
  [(UIView *)self->_label frame];
  highlightView = self->_highlightView;
  if (self->_highlight)
  {
    if (!highlightView)
    {
      v8 = [[UIView alloc] initWithFrame:v3, v4, v5, v6];
      [(_UIGlintyStringView *)self setHighlightView:v8];

      v9 = self->_highlightView;
      _highlightColor = [(_UIGlintyStringView *)self _highlightColor];
      [(UIView *)v9 setBackgroundColor:_highlightColor];

      layer = [(UIView *)self->_highlightView layer];
      [layer setAllowsGroupBlending:0];

      layer2 = [(UIView *)self->_highlightView layer];
      _highlightCompositingFilter = [(_UIGlintyStringView *)self _highlightCompositingFilter];
      [layer2 setCompositingFilter:_highlightCompositingFilter];

      v14 = self->_highlightView;

      [(UIView *)self addSubview:v14];
    }
  }

  else
  {
    [(UIView *)highlightView removeFromSuperview];

    [(_UIGlintyStringView *)self setHighlightView:0];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if ([(_UIGlintyStringView *)self needsTextUpdate])
  {
    [(_UIGlintyStringView *)self updateTextWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }

  [(_UIGlintyStringView *)self _chevronWidthWithPadding];
  v7 = v6;
  [(_UIGlintyStringView *)self _labelSizeThatFits:width - v6, height];
  v9 = v8;
  v11 = v7 + v10;
  [(_UIGlintyStringView *)self _chevronHeightWithMaxOffset];
  if (v12 >= v9)
  {
    v13 = v12;
  }

  else
  {
    v13 = v9;
  }

  v14 = ceil(v11);
  v15 = ceil(v13);
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)_labelSizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_label sizeThatFits:fits.width, fits.height];
  v5 = v4;
  v7 = v6;
  font = [(UILabel *)self->_label font];
  if (CTFontGetLanguageAwareOutsets())
  {
    v5 = v5 - (-ceil(0.0) - ceil(0.0));
    v7 = v7 - (-ceil(0.0) - ceil(0.0));
  }

  v9 = v5;
  v10 = v7;
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)_chevronWidthWithPadding
{
  chevron = self->_chevron;
  if (!chevron)
  {
    return 0.0;
  }

  [(UIImage *)chevron size];
  v5 = v4;
  [(_UIGlintyStringView *)self _chevronPadding];
  return v5 + v6;
}

- (double)_chevronWidthWithPaddingCompression:(double)compression
{
  chevron = self->_chevron;
  if (!chevron)
  {
    return 0.0;
  }

  [(UIImage *)chevron size];
  v7 = v6;
  [(_UIGlintyStringView *)self _chevronPadding];
  return v7 + v8 * compression;
}

- (double)_chevronHeightWithMaxOffset
{
  chevron = self->_chevron;
  if (!chevron)
  {
    return 0.0;
  }

  [(UIImage *)chevron size];
  return v3 + 3.5;
}

- (double)_chevronVerticalOffset
{
  [(UIFont *)self->_font xHeight];
  v4 = v3;
  [(UILabel *)self->_label _actualScaleFactor];
  v6 = v4 + v4 * v5 * -0.95;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v9 = v8;

  return floor(v6 * v9) / v9;
}

- (CGRect)labelFrame
{
  [(UIView *)self->_label frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)chevronFrame
{
  x = self->_chevronFrame.origin.x;
  y = self->_chevronFrame.origin.y;
  width = self->_chevronFrame.size.width;
  height = self->_chevronFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)baselineOffsetFromBottom
{
  [(UIView *)self bounds];

  [(_UIGlintyStringView *)self baselineOffsetFromBottomWithSize:v3, v4];
  return result;
}

- (double)baselineOffsetFromBottomWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(_UIGlintyStringView *)self needsTextUpdate])
  {
    [(_UIGlintyStringView *)self updateTextWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, height];
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }

  [(UIView *)self->_label frame];
  v8 = height - v6 - v7;
  [(UILabel *)self->_label _baselineOffsetFromBottom];
  return v9 + v8;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _UIGlintyStringView;
  [(UIView *)&v4 layoutSubviews];
  [(UIView *)self bounds];
  [(UIView *)self->_backgroundView setFrame:?];
  if ([(_UIGlintyStringView *)self showing])
  {
    [(_UIGlintyStringView *)self updateText];
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __37___UIGlintyStringView_layoutSubviews__block_invoke;
    v3[3] = &unk_1E70F3590;
    v3[4] = self;
    [UIView performWithoutAnimation:v3];
  }
}

- (void)didMoveToWindow
{
  if ([(_UIGlintyStringView *)self isAnimating])
  {
    window = [(UIView *)self window];

    if (!window)
    {

      [(_UIGlintyStringView *)self stopAnimating];
    }
  }
}

- (CGSize)labelSize
{
  width = self->_labelSize.width;
  height = self->_labelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end