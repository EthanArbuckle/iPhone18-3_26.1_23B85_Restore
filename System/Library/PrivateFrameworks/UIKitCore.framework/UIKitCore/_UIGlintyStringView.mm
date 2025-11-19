@interface _UIGlintyStringView
- (CGRect)chevronFrame;
- (CGRect)labelFrame;
- (CGSize)_labelSizeThatFits:(CGSize)a3;
- (CGSize)labelSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UIGlintyStringView)initWithText:(id)a3 andFont:(id)a4;
- (double)_chevronHeightWithMaxOffset;
- (double)_chevronPadding;
- (double)_chevronVerticalOffset;
- (double)_chevronWidthWithPadding;
- (double)_chevronWidthWithPaddingCompression:(double)a3;
- (double)baselineOffsetFromBottom;
- (double)baselineOffsetFromBottomWithSize:(CGSize)a3;
- (id)_chevronImageForStyle:(int64_t)a3;
- (id)_highlightCompositingFilter;
- (id)shapeViewForCharactersInString:(id)a3 withFont:(id)a4 centeredInFrame:(CGRect)a5;
- (void)_updateHighlight;
- (void)_updateLabelWithFrame:(CGRect)a3;
- (void)addGlintyAnimations;
- (void)addReflectionAnimationToLayer:(id)a3;
- (void)addShimmerAnimationToLayer:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)fadeInWithDuration:(double)a3;
- (void)fadeOutWithDuration:(double)a3;
- (void)hide;
- (void)hideEffects;
- (void)layoutSubviews;
- (void)removeGlintyAnimations;
- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3;
- (void)setBackgroundColor:(id)a3;
- (void)setBackgroundView:(id)a3;
- (void)setBlurAlpha:(double)a3;
- (void)setBlurHidden:(BOOL)a3 forRequester:(id)a4;
- (void)setChevron:(id)a3;
- (void)setChevronStyle:(int64_t)a3;
- (void)setFont:(id)a3;
- (void)setHighlight:(BOOL)a3;
- (void)setHorizontalPadding:(double)a3;
- (void)setLegibilitySettings:(id)a3;
- (void)setText:(id)a3;
- (void)setTextLanguage:(id)a3;
- (void)setVibrantSettings:(id)a3;
- (void)show;
- (void)showEffects;
- (void)startAnimating;
- (void)stopAnimating;
- (void)updateBlurForHiddenRequesters;
- (void)updateText;
- (void)updateTextWithBounds:(CGRect)a3;
@end

@implementation _UIGlintyStringView

- (_UIGlintyStringView)initWithText:(id)a3 andFont:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = _UIGlintyStringView;
  v9 = [(UIView *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_text, a3);
    objc_storeStrong(&v10->_font, a4);
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
    v16 = [(UIView *)v10 layer];
    [v16 setAllowsGroupBlending:0];

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

- (void)setText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [v6 copy];
    text = self->_text;
    self->_text = v4;

    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if (([(UIFont *)self->_font isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_font, a3);
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)setTextLanguage:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_textLanguage isEqualToString:?])
  {
    v4 = [v6 copy];
    textLanguage = self->_textLanguage;
    self->_textLanguage = v4;

    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)setAdjustsFontSizeToFitWidth:(BOOL)a3
{
  if (self->_adjustsFontSizeToFitWidth != a3)
  {
    self->_adjustsFontSizeToFitWidth = a3;
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)setLegibilitySettings:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_legibilitySettings] & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, a3);
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)setVibrantSettings:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_vibrantSettings] & 1) == 0)
  {
    objc_storeStrong(&self->_vibrantSettings, a3);
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)setBackgroundView:(id)a3
{
  v4 = a3;
  backgroundView = self->_backgroundView;
  if (backgroundView != v4)
  {
    v9 = v4;
    v6 = v4;
    v7 = self->_backgroundView;
    self->_backgroundView = v6;
    v8 = backgroundView;

    [(UIView *)v8 removeFromSuperview];
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
    v4 = v9;
  }
}

- (void)setBackgroundColor:(id)a3
{
  v5 = a3;
  if (([v5 _isSimilarToColor:self->_backgroundColor withinPercentage:0.01] & 1) == 0 && !-[_UIGlintyStringView hasCustomBackgroundColor](self, "hasCustomBackgroundColor"))
  {
    objc_storeStrong(&self->_backgroundColor, a3);
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)hideEffects
{
  v2 = [(_UIGlintyStringView *)self effectView];
  [v2 setAlpha:0.0];
}

- (void)showEffects
{
  v2 = [(_UIGlintyStringView *)self effectView];
  [v2 setAlpha:1.0];
}

- (void)setBlurAlpha:(double)a3
{
  v5 = +[UIDevice currentDevice];
  v6 = [v5 _graphicsQuality];

  if ([(NSMutableSet *)self->_blurHiddenRequesters count])
  {
    goto LABEL_5;
  }

  if (v6 == 10)
  {
    a3 = a3 * 0.2;
  }

  if (![(_UIGlintyStringView *)self showing])
  {
LABEL_5:
    a3 = 0.0;
  }

  self->_blurAlpha = a3;
  v7 = [(_UIGlintyStringView *)self blurView];
  [v7 setAlpha:a3];
}

- (void)setBlurHidden:(BOOL)a3 forRequester:(id)a4
{
  blurHiddenRequesters = self->_blurHiddenRequesters;
  if (a3)
  {
    [(NSMutableSet *)blurHiddenRequesters addObject:a4];
  }

  else
  {
    [(NSMutableSet *)blurHiddenRequesters removeObject:a4];
  }

  [(_UIGlintyStringView *)self updateBlurForHiddenRequesters];
}

- (void)updateBlurForHiddenRequesters
{
  if (![(_UIGlintyStringView *)self fading])
  {
    v3 = [(NSMutableSet *)self->_blurHiddenRequesters count]!= 0;
    v4 = [(_UIGlintyStringView *)self blurView];
    [v4 setHidden:v3];
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

- (void)fadeOutWithDuration:(double)a3
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
  [UIView animateWithDuration:0 delay:v6 options:v5 animations:a3 completion:0.0];
}

- (void)fadeInWithDuration:(double)a3
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
  [UIView animateWithDuration:0 delay:v6 options:v5 animations:a3 completion:0.0];
}

- (void)setChevronStyle:(int64_t)a3
{
  if (self->_chevronStyle != a3)
  {
    self->_chevronStyle = a3;
    v5 = [(_UIGlintyStringView *)self _chevronImageForStyle:?];
    [(_UIGlintyStringView *)self setChevron:v5];
  }
}

- (id)_chevronImageForStyle:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 2)
    {
      v3 = @"UIGlintyStringViewBandChevron";
    }

    else
    {
      v3 = @"UIGlintyStringViewChevron";
    }

    v4 = _UIImageWithName(v3);
    v5 = [v4 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setChevron:(id)a3
{
  v5 = a3;
  if (self->_chevron != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_chevron, a3);
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
    v5 = v6;
  }
}

- (void)setHighlight:(BOOL)a3
{
  if (self->_highlight != a3)
  {
    self->_highlight = a3;
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

- (void)setHorizontalPadding:(double)a3
{
  if (self->_horizontalPadding != a3)
  {
    self->_horizontalPadding = a3;
    [(_UIGlintyStringView *)self setNeedsTextUpdate:1];
  }
}

- (void)_updateLabelWithFrame:(CGRect)a3
{
  v8 = [[UILabel alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v6 = [(UILabel *)v8 _defaultAttributes];
    v7 = [v6 mutableCopy];

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

- (void)updateTextWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v205[1] = *MEMORY[0x1E69E9840];
  v8 = [(UIView *)self subviews];
  [v8 makeObjectsPerformSelector:sel_removeFromSuperview];

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
      v65 = [(_UIGlintyStringView *)self backgroundView];
      v66 = v188;
      if (v65)
      {
        v67 = 0;
      }

      else
      {
        v68 = [(_UIGlintyStringView *)self backgroundColor];
        [v68 _luminance];
        v67 = v69 > 0.85;
      }
    }

    else
    {
      v67 = 0;
      v66 = v188;
    }

    v70 = [(_UIGlintyStringView *)self vibrantSettings];
    v71 = [v70 referenceColor];

    [v71 _luminance];
    v73 = v72;
    v74 = [(_UIGlintyStringView *)self allowsLuminanceAdjustments];
    v185 = v71;
    if (v71)
    {
      v75 = v74;
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
    v78 = [(UIView *)v77 layer];
    [v78 setAllowsGroupOpacity:0];

    v79 = [(UIView *)v77 layer];
    [v79 setAllowsGroupBlending:0];

    [(UIView *)v77 setOpaque:0];
    v80 = *MEMORY[0x1E6979C60];
    v81 = [(UIView *)v77 layer];
    [v81 setCompositingFilter:v80];

    [(_UIGlintyStringView *)self setEffectView:v77];
    v82 = [[UIImageView alloc] initWithFrame:p_chevronFrame->origin.x, self->_chevronFrame.origin.y, self->_chevronFrame.size.width, self->_chevronFrame.size.height];
    v83 = [(_UIGlintyStringView *)self chevron];
    [(UIImageView *)v82 setImage:v83];

    v183 = v82;
    if (!v67)
    {
      v84 = +[UIDevice currentDevice];
      v85 = v67;
      v86 = [v84 _graphicsQuality];

      v87 = v86 == 100;
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
        v93 = [v89 layer];
        [v93 setFilters:v92];

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
    v95 = [(UIView *)v94 layer];
    [v95 setAllowsGroupOpacity:0];

    v96 = [(UIView *)v94 layer];
    [v96 setAllowsGroupBlending:0];

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
    v105 = [(UIView *)v104 layer];
    [v105 setContentsScale:1.25];

    [(UIView *)v104 setAnchorPoint:0.5, 0.47];
    v179 = v103;
    [(UIImageView *)v104 setImage:v103];
    v106 = [(UIView *)v104 layer];
    [v106 setAllowsGroupOpacity:0];

    v107 = [(UIView *)v104 layer];
    [v107 setAllowsGroupBlending:0];

    v108 = [(UIView *)v104 layer];
    [v108 setCompositingFilter:v80];

    [(UIView *)v104 setAlpha:0.9];
    [(UIView *)v94 addSubview:v104];
    v176 = v104;
    [(_UIGlintyStringView *)self setShimmerImageView:v104];
    v109 = [[_UIGlintyGradientView alloc] initWithFrame:v97, v102, v98, v99];
    [(UIView *)v109 setAnchorPoint:0.5, 0.47];
    v110 = *MEMORY[0x1E6979860];
    v111 = [(UIView *)v109 layer];
    [v111 setCompositingFilter:v110];

    [(UIView *)v109 setAlpha:0.35];
    v177 = v109;
    [(UIView *)v94 addSubview:v109];
    v112 = _UIImageWithName(@"UIGlintyStringViewReflectionMask");
    v113 = [[UIImageView alloc] initWithFrame:v97, v102, v98, v99];
    v114 = [(UIView *)v113 layer];
    [v114 setContentsScale:1.25];

    [(UIView *)v113 setAnchorPoint:0.5, 0.47];
    v174 = v112;
    [(UIImageView *)v113 setImage:v112];
    v115 = *MEMORY[0x1E6979CA8];
    v116 = [(UIView *)v113 layer];
    v172 = v115;
    [v116 setCompositingFilter:v115];

    [(UIView *)v113 setAlpha:0.75];
    [(UIView *)v94 addSubview:v113];
    [(_UIGlintyStringView *)self setReflectionImageView:v113];
    if ([(_UIGlintyStringView *)self animating])
    {
      [(_UIGlintyStringView *)self addGlintyAnimations];
    }

    v117 = [(_UIGlintyStringView *)self usesBackgroundDimming];
    v118 = 0.39;
    if (recta)
    {
      v118 = 0.56;
    }

    if (v117)
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
    v124 = [(UIView *)v121 layer];
    [v124 setCompositingFilter:v123];

    v125 = [(UIView *)v121 layer];
    [v125 setAllowsGroupOpacity:0];

    v126 = [(UIView *)v121 layer];
    [v126 setAllowsGroupBlending:0];

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
      v143 = [(_UIGlintyStringView *)self blurView];
      [v143 setAlpha:v142];

      v127 = MEMORY[0x1E69798E0];
    }

    if (v181)
    {
      v144 = [UIView alloc];
      [(UIView *)self bounds];
      v145 = [(UIView *)v144 initWithFrame:?];
      v146 = [UIColor colorWithWhite:0.2 alpha:0.3];
      [(UIView *)v145 setBackgroundColor:v146];

      v147 = [(UIView *)v145 layer];
      [v147 setCompositingFilter:v172];

      [(UIView *)v77 addSubview:v145];
    }

    [(UIView *)self bounds];
    if (v149 > 0.0 && v148 > 0.0)
    {
      [(UIView *)self bounds];
      v151 = v150;
      v153 = v152;
      v154 = [objc_opt_self() mainScreen];
      [v154 scale];
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
      v161 = [(_UIGlintyStringView *)self label];
      v162 = [v161 layer];
      [v162 renderInContext:v157];

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
      v165 = [(UIView *)v128 layer];
      [v165 renderInContext:v157];

      CGContextRestoreGState(v157);
      v166 = _UIGraphicsGetImageFromCurrentImageContext(0);
      UIGraphicsEndImageContext();
      v167 = [UIImageView alloc];
      [(UIView *)self bounds];
      v168 = [(UIImageView *)v167 initWithFrame:?];
      v169 = *v158;
      v170 = [(UIView *)v168 layer];
      [v170 setCompositingFilter:v169];

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
  v3 = [(_UIGlintyStringView *)self shimmerImageView];
  v4 = [v3 layer];
  [v4 removeAllAnimations];

  v6 = [(_UIGlintyStringView *)self reflectionImageView];
  v5 = [v6 layer];
  [v5 removeAllAnimations];
}

- (void)addGlintyAnimations
{
  v3 = [(_UIGlintyStringView *)self shimmerImageView];
  v4 = [v3 layer];
  [(_UIGlintyStringView *)self addShimmerAnimationToLayer:v4];

  v6 = [(_UIGlintyStringView *)self reflectionImageView];
  v5 = [v6 layer];
  [(_UIGlintyStringView *)self addReflectionAnimationToLayer:v5];
}

- (void)addShimmerAnimationToLayer:(id)a3
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
  v6 = a3;
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

  [v6 addAnimation:v8 forKey:@"shimmerAnimation"];
}

- (void)addReflectionAnimationToLayer:(id)a3
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
  v6 = a3;
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

  [v6 addAnimation:v8 forKey:@"reflectionAnimation"];
}

- (id)shapeViewForCharactersInString:(id)a3 withFont:(id)a4 centeredInFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v51 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [v10 length];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v48 - v14);
  v16 = [v10 length];
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v48 - v18);
  v20 = [v10 length];
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v48 - 2 * v22);
  v24 = [v10 length];
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = (&v48 - 4 * v26);
  [v10 getCharacters:v15 range:{0, objc_msgSend(v10, "length", v25)}];
  CTFontGetGlyphsForCharacters(v11, v15, v19, [v10 length]);
  v28 = [v10 length];
  CTFontGetBoundingRectsForGlyphs(v11, kCTFontOrientationDefault, v19, v27, v28);
  Mutable = CGPathCreateMutable();
  if ([v10 length])
  {
    v30 = 0;
    v31 = 0.0;
    do
    {
      PathForGlyph = CTFontCreatePathForGlyph(v11, v19[v30], 0);
      memset(&m, 0, sizeof(m));
      CGAffineTransformMakeTranslation(&m, v31, 0.0);
      CGPathAddPath(Mutable, &m, PathForGlyph);
      CGPathRelease(PathForGlyph);
      v33 = v23->width;
      ++v23;
      v31 = v31 + v33;
      ++v30;
    }

    while (v30 < [v10 length]);
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

  v46 = [(_UIGlintyShapeView *)v44 shapeLayer];
  [v46 setLineWidth:1.5];
  [v46 setMiterLimit:5.0];
  [v46 setLineCap:@"round"];
  [v46 setLineJoin:@"round"];
  [v46 setLineDashPattern:&unk_1EFE2E050];
  [v46 setShouldRasterize:1];

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
      v10 = [(_UIGlintyStringView *)self _highlightColor];
      [(UIView *)v9 setBackgroundColor:v10];

      v11 = [(UIView *)self->_highlightView layer];
      [v11 setAllowsGroupBlending:0];

      v12 = [(UIView *)self->_highlightView layer];
      v13 = [(_UIGlintyStringView *)self _highlightCompositingFilter];
      [v12 setCompositingFilter:v13];

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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (CGSize)_labelSizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_label sizeThatFits:a3.width, a3.height];
  v5 = v4;
  v7 = v6;
  v8 = [(UILabel *)self->_label font];
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

- (double)_chevronWidthWithPaddingCompression:(double)a3
{
  chevron = self->_chevron;
  if (!chevron)
  {
    return 0.0;
  }

  [(UIImage *)chevron size];
  v7 = v6;
  [(_UIGlintyStringView *)self _chevronPadding];
  return v7 + v8 * a3;
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
  v7 = [objc_opt_self() mainScreen];
  [v7 scale];
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

- (double)baselineOffsetFromBottomWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
    v3 = [(UIView *)self window];

    if (!v3)
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