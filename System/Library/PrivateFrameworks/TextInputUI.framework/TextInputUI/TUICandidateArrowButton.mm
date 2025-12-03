@interface TUICandidateArrowButton
- (BOOL)isTextEffectsButton;
- (CGPoint)arrowImageOffset;
- (TUICandidateArrowButton)initWithCoder:(id)coder;
- (TUICandidateArrowButton)initWithFrame:(CGRect)frame;
- (double)imageViewAlpha;
- (id)rotatedImageForImage:(id)image scale:(double)scale;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setArrowDirection:(int64_t)direction;
- (void)setArrowImageName:(id)name;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setShowsBackground:(BOOL)background;
- (void)setStyle:(id)style;
- (void)udpateBackgroundColor;
- (void)updateStyle;
@end

@implementation TUICandidateArrowButton

- (CGPoint)arrowImageOffset
{
  x = self->_arrowImageOffset.x;
  y = self->_arrowImageOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)updateStyle
{
  style = [(TUICandidateArrowButton *)self style];
  textColor = [style textColor];

  style2 = [(TUICandidateArrowButton *)self style];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    style3 = [(TUICandidateArrowButton *)self style];
    v7 = [style3 performSelector:sel_arrowButtonColor];

    textColor = v7;
  }

  style4 = [(TUICandidateArrowButton *)self style];
  if (objc_opt_respondsToSelector())
  {
    style5 = [(TUICandidateArrowButton *)self style];
    arrowButtonConfig = [style5 arrowButtonConfig];

    if (!arrowButtonConfig)
    {
      goto LABEL_7;
    }

    style4 = [(TUICandidateArrowButton *)self style];
    arrowButtonConfig2 = [style4 arrowButtonConfig];
    [(TUICandidateArrowButton *)self setConfiguration:arrowButtonConfig2];
  }

LABEL_7:
  style6 = [(TUICandidateArrowButton *)self style];
  backdropView = [(TUICandidateArrowButton *)self backdropView];
  [backdropView setStyle:style6];

  [(TUICandidateArrowButton *)self setTitleColor:textColor forState:0];
  [(TUICandidateArrowButton *)self setTintColor:textColor];
  isTextEffectsButton = [(TUICandidateArrowButton *)self isTextEffectsButton];
  v15 = MEMORY[0x1E69DCAD8];
  if (isTextEffectsButton)
  {
    v16 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:20.0];
    mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      mEMORY[0x1E69DCBF0]2 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
      v20 = [mEMORY[0x1E69DCBF0]2 performSelector:sel_textEffectsButtonLanguageCode];

      if (v20)
      {
        v21 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v20];
        v22 = [v16 configurationWithLocale:v21];

        v16 = v22;
      }
    }

    v23 = MEMORY[0x1E69DCAB8];
    arrowImageName = [(TUICandidateArrowButton *)self arrowImageName];
    v25 = [v23 _systemImageNamed:arrowImageName withConfiguration:v16];
  }

  else
  {
    style7 = [(TUICandidateArrowButton *)self style];
    candidateNumberFont = [style7 candidateNumberFont];
    [candidateNumberFont pointSize];
    v16 = [v15 configurationWithPointSize:7 weight:?];

    v28 = MEMORY[0x1E69DCAB8];
    arrowImageName2 = [(TUICandidateArrowButton *)self arrowImageName];
    arrowImageName = [v28 systemImageNamed:arrowImageName2 withConfiguration:v16];

    if (!arrowImageName)
    {
      v30 = MEMORY[0x1E69DCAB8];
      arrowImageName3 = [(TUICandidateArrowButton *)self arrowImageName];
      arrowImageName = [v30 kitImageNamed:arrowImageName3];
    }

    [arrowImageName scale];
    v25 = [(TUICandidateArrowButton *)self rotatedImageForImage:arrowImageName scale:?];
  }

  v32 = v25;

  v33 = [v32 imageWithTintColor:textColor renderingMode:2];
  [(TUICandidateArrowButton *)self setImage:v33 forState:0];
  v34 = [v32 imageWithTintColor:textColor renderingMode:2];

  [(TUICandidateArrowButton *)self setImage:v34 forState:2];
  [(TUICandidateArrowButton *)self imageViewAlpha];
  v36 = v35;
  imageView = [(TUICandidateArrowButton *)self imageView];
  [imageView setAlpha:v36];

  [(TUICandidateArrowButton *)self udpateBackgroundColor];
}

- (id)rotatedImageForImage:(id)image scale:(double)scale
{
  imageCopy = image;
  arrowDirection = [(TUICandidateArrowButton *)self arrowDirection];
  v8 = objc_alloc(MEMORY[0x1E69DCAB8]);
  cGImage = [imageCopy CGImage];

  v10 = [v8 initWithCGImage:cGImage scale:arrowDirection orientation:scale];

  return v10;
}

- (double)imageViewAlpha
{
  style = [(TUICandidateArrowButton *)self style];
  [style foregroundOpacity];
  v5 = v4;
  isEnabled = [(TUICandidateArrowButton *)self isEnabled];
  v7 = 0.35;
  if (isEnabled)
  {
    v7 = 1.0;
  }

  v8 = v5 * v7;

  return v8;
}

- (void)udpateBackgroundColor
{
  showsBackground = [(TUICandidateArrowButton *)self showsBackground];
  backgroundView = [(TUICandidateArrowButton *)self backgroundView];
  [backgroundView setAlpha:showsBackground];

  showsBackground2 = [(TUICandidateArrowButton *)self showsBackground];
  backdropView = [(TUICandidateArrowButton *)self backdropView];
  [backdropView setAlpha:showsBackground2];

  isHighlighted = [(TUICandidateArrowButton *)self isHighlighted];
  highlightBackgroundView = [(TUICandidateArrowButton *)self highlightBackgroundView];
  [highlightBackgroundView setAlpha:isHighlighted];

  style = [(TUICandidateArrowButton *)self style];
  if (objc_opt_respondsToSelector())
  {
    style2 = [(TUICandidateArrowButton *)self style];
    arrowButtonHighlightBackgroundHidden = [style2 arrowButtonHighlightBackgroundHidden];

    if (!arrowButtonHighlightBackgroundHidden)
    {
      goto LABEL_5;
    }

    style = [(TUICandidateArrowButton *)self highlightBackgroundView];
    [style setAlpha:0.0];
  }

LABEL_5:
  style3 = [(TUICandidateArrowButton *)self style];
  highlightedBackgroundColor = [style3 highlightedBackgroundColor];
  highlightBackgroundView2 = [(TUICandidateArrowButton *)self highlightBackgroundView];
  [highlightBackgroundView2 setBackgroundColor:highlightedBackgroundColor];

  style4 = [(TUICandidateArrowButton *)self style];
  arrowButtonBackgroundColor = [style4 arrowButtonBackgroundColor];
  backgroundView2 = [(TUICandidateArrowButton *)self backgroundView];
  [backgroundView2 setBackgroundColor:arrowButtonBackgroundColor];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = TUICandidateArrowButton;
  [(TUICandidateArrowButton *)&v4 setHighlighted:highlighted];
  [(TUICandidateArrowButton *)self udpateBackgroundColor];
}

- (void)setArrowDirection:(int64_t)direction
{
  if (self->_arrowDirection != direction)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_arrowDirection = direction;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__TUICandidateArrowButton_setArrowDirection___block_invoke;
    v5[3] = &unk_1E72D83A0;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

- (void)setArrowImageName:(id)name
{
  if (self->_arrowImageName != name)
  {
    v4 = [name copy];
    arrowImageName = self->_arrowImageName;
    self->_arrowImageName = v4;

    [(TUICandidateArrowButton *)self updateStyle];
  }
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (([(TUICandidateViewStyle *)self->_style isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_style, style);
    arrowButtonImageName = [styleCopy arrowButtonImageName];
    if (arrowButtonImageName && (v6 = arrowButtonImageName, -[TUICandidateArrowButton arrowImageName](self, "arrowImageName"), v7 = objc_claimAutoreleasedReturnValue(), [styleCopy arrowButtonImageName], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v6, (v9 & 1) == 0))
    {
      if ([(TUICandidateArrowButton *)self isTextEffectsButton])
      {
        originalArrowImageName = [(TUICandidateArrowButton *)self originalArrowImageName];

        if (!originalArrowImageName)
        {
          arrowImageName = [(TUICandidateArrowButton *)self arrowImageName];
          [(TUICandidateArrowButton *)self setOriginalArrowImageName:arrowImageName];
        }
      }

      arrowButtonImageName2 = [styleCopy arrowButtonImageName];
      [(TUICandidateArrowButton *)self setArrowImageName:arrowButtonImageName2];
    }

    else
    {
      arrowButtonImageName3 = [styleCopy arrowButtonImageName];
      if (arrowButtonImageName3)
      {
      }

      else
      {
        originalArrowImageName2 = [(TUICandidateArrowButton *)self originalArrowImageName];

        if (originalArrowImageName2)
        {
          originalArrowImageName3 = [(TUICandidateArrowButton *)self originalArrowImageName];
          [(TUICandidateArrowButton *)self setArrowImageName:originalArrowImageName3];

          [(TUICandidateArrowButton *)self setOriginalArrowImageName:0];
        }
      }
    }

    [(TUICandidateArrowButton *)self updateStyle];
  }
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = TUICandidateArrowButton;
  [(TUICandidateArrowButton *)&v41 layoutSubviews];
  contentView = self->_contentView;
  highlightBackgroundView = [(TUICandidateArrowButton *)self highlightBackgroundView];
  [(UIView *)contentView sendSubviewToBack:highlightBackgroundView];

  v5 = self->_contentView;
  backgroundView = [(TUICandidateArrowButton *)self backgroundView];
  [(UIView *)v5 sendSubviewToBack:backgroundView];

  v7 = self->_contentView;
  backdropView = [(TUICandidateArrowButton *)self backdropView];
  [(UIView *)v7 sendSubviewToBack:backdropView];

  contentView = [(TUICandidateArrowButton *)self contentView];
  [(TUICandidateArrowButton *)self sendSubviewToBack:contentView];

  [(TUICandidateArrowButton *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  style = [(TUICandidateArrowButton *)self style];
  [style arrowButtonPadding];
  v20 = v11 + v19;
  v22 = v13 + v21;
  v24 = v15 - (v19 + v23);
  v26 = v17 - (v21 + v25);

  [(TUICandidateArrowButton *)self bounds];
  [(UIView *)self->_contentView setFrame:?];
  [(UIView *)self->_backgroundView setFrame:v20, v22, v24, v26];
  [(UIView *)self->_highlightBackgroundView setFrame:v20, v22, v24, v26];
  isTextEffectsButton = [(TUICandidateArrowButton *)self isTextEffectsButton];
  [(TUICandidateArrowButton *)self arrowImageOffset];
  v29 = v20 + v24 * 0.5 + v28;
  [(TUICandidateArrowButton *)self arrowImageOffset];
  v31 = v30;
  _inheritedRenderConfig = [(TUICandidateArrowButton *)self _inheritedRenderConfig];
  if ([_inheritedRenderConfig colorAdaptiveBackground])
  {
    activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
    isMinimized = [activeInstance isMinimized];

    if (isMinimized)
    {
      v29 = v29 + -2.0;
    }
  }

  else
  {
  }

  v35 = 0.0;
  if (isTextEffectsButton)
  {
    v35 = 4.0;
  }

  v36 = v35 + v22 + v26 * 0.5 + v31;
  imageView = [(TUICandidateArrowButton *)self imageView];
  [imageView setCenter:{v29, v36}];

  [(TUICandidateArrowButton *)self imageViewAlpha];
  v39 = v38;
  imageView2 = [(TUICandidateArrowButton *)self imageView];
  [imageView2 setAlpha:v39];
}

- (BOOL)isTextEffectsButton
{
  style = [(TUICandidateArrowButton *)self style];
  arrowButtonImageName = [style arrowButtonImageName];
  v4 = [arrowButtonImageName hasPrefix:@"character.motion"];

  return v4;
}

- (void)setShowsBackground:(BOOL)background
{
  if (self->_showsBackground != background)
  {
    self->_showsBackground = background;
    [(TUICandidateArrowButton *)self updateStyle];
  }
}

- (TUICandidateArrowButton)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TUICandidateArrowButton;
  v3 = [(TUICandidateArrowButton *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateArrowButton *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateArrowButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUICandidateArrowButton;
  v3 = [(TUICandidateArrowButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateArrowButton *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  [(TUICandidateArrowButton *)self bounds];
  v4 = [v3 initWithFrame:?];
  contentView = self->_contentView;
  self->_contentView = v4;

  [(UIView *)self->_contentView setUserInteractionEnabled:0];
  v6 = objc_alloc(MEMORY[0x1E69DD250]);
  [(TUICandidateArrowButton *)self bounds];
  v7 = [v6 initWithFrame:?];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v7;

  [(UIView *)self->_backgroundView setUserInteractionEnabled:0];
  v9 = objc_alloc(MEMORY[0x1E69DD250]);
  [(TUICandidateArrowButton *)self bounds];
  v10 = [v9 initWithFrame:?];
  highlightBackgroundView = self->_highlightBackgroundView;
  self->_highlightBackgroundView = v10;

  [(UIView *)self->_highlightBackgroundView setUserInteractionEnabled:0];
  arrowImageName = self->_arrowImageName;
  self->_arrowImageName = @"kb-extend-arrow";

  [(TUICandidateArrowButton *)self setArrowDirection:0];
  [(TUICandidateArrowButton *)self setShowsBackground:1];
  [(UIView *)self->_contentView insertSubview:self->_highlightBackgroundView atIndex:0];
  [(UIView *)self->_contentView insertSubview:self->_backgroundView atIndex:0];
  _inheritedRenderConfig = [(TUICandidateArrowButton *)self _inheritedRenderConfig];
  if ([_inheritedRenderConfig colorAdaptiveBackground])
  {
    isSplit = [MEMORY[0x1E69DCBE0] isSplit];

    if ((isSplit & 1) == 0)
    {
      v15 = [TUICandidateBackdropView alloc];
      [(TUICandidateArrowButton *)self bounds];
      v16 = [(TUICandidateBackdropView *)v15 initWithFrame:?];
      backdropView = self->_backdropView;
      self->_backdropView = v16;

      [(TUICandidateBackdropView *)self->_backdropView setUserInteractionEnabled:0];
      [(TUICandidateBackdropView *)self->_backdropView setAutoresizingMask:18];
      [(UIView *)self->_contentView insertSubview:self->_backdropView atIndex:0];
    }
  }

  else
  {
  }

  v18 = self->_contentView;

  [(TUICandidateArrowButton *)self insertSubview:v18 atIndex:0];
}

@end