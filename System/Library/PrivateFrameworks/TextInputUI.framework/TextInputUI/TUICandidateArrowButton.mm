@interface TUICandidateArrowButton
- (BOOL)isTextEffectsButton;
- (CGPoint)arrowImageOffset;
- (TUICandidateArrowButton)initWithCoder:(id)a3;
- (TUICandidateArrowButton)initWithFrame:(CGRect)a3;
- (double)imageViewAlpha;
- (id)rotatedImageForImage:(id)a3 scale:(double)a4;
- (void)commonInit;
- (void)layoutSubviews;
- (void)setArrowDirection:(int64_t)a3;
- (void)setArrowImageName:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setShowsBackground:(BOOL)a3;
- (void)setStyle:(id)a3;
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
  v3 = [(TUICandidateArrowButton *)self style];
  v38 = [v3 textColor];

  v4 = [(TUICandidateArrowButton *)self style];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(TUICandidateArrowButton *)self style];
    v7 = [v6 performSelector:sel_arrowButtonColor];

    v38 = v7;
  }

  v8 = [(TUICandidateArrowButton *)self style];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(TUICandidateArrowButton *)self style];
    v10 = [v9 arrowButtonConfig];

    if (!v10)
    {
      goto LABEL_7;
    }

    v8 = [(TUICandidateArrowButton *)self style];
    v11 = [v8 arrowButtonConfig];
    [(TUICandidateArrowButton *)self setConfiguration:v11];
  }

LABEL_7:
  v12 = [(TUICandidateArrowButton *)self style];
  v13 = [(TUICandidateArrowButton *)self backdropView];
  [v13 setStyle:v12];

  [(TUICandidateArrowButton *)self setTitleColor:v38 forState:0];
  [(TUICandidateArrowButton *)self setTintColor:v38];
  v14 = [(TUICandidateArrowButton *)self isTextEffectsButton];
  v15 = MEMORY[0x1E69DCAD8];
  if (v14)
  {
    v16 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:20.0];
    v17 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v19 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
      v20 = [v19 performSelector:sel_textEffectsButtonLanguageCode];

      if (v20)
      {
        v21 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v20];
        v22 = [v16 configurationWithLocale:v21];

        v16 = v22;
      }
    }

    v23 = MEMORY[0x1E69DCAB8];
    v24 = [(TUICandidateArrowButton *)self arrowImageName];
    v25 = [v23 _systemImageNamed:v24 withConfiguration:v16];
  }

  else
  {
    v26 = [(TUICandidateArrowButton *)self style];
    v27 = [v26 candidateNumberFont];
    [v27 pointSize];
    v16 = [v15 configurationWithPointSize:7 weight:?];

    v28 = MEMORY[0x1E69DCAB8];
    v29 = [(TUICandidateArrowButton *)self arrowImageName];
    v24 = [v28 systemImageNamed:v29 withConfiguration:v16];

    if (!v24)
    {
      v30 = MEMORY[0x1E69DCAB8];
      v31 = [(TUICandidateArrowButton *)self arrowImageName];
      v24 = [v30 kitImageNamed:v31];
    }

    [v24 scale];
    v25 = [(TUICandidateArrowButton *)self rotatedImageForImage:v24 scale:?];
  }

  v32 = v25;

  v33 = [v32 imageWithTintColor:v38 renderingMode:2];
  [(TUICandidateArrowButton *)self setImage:v33 forState:0];
  v34 = [v32 imageWithTintColor:v38 renderingMode:2];

  [(TUICandidateArrowButton *)self setImage:v34 forState:2];
  [(TUICandidateArrowButton *)self imageViewAlpha];
  v36 = v35;
  v37 = [(TUICandidateArrowButton *)self imageView];
  [v37 setAlpha:v36];

  [(TUICandidateArrowButton *)self udpateBackgroundColor];
}

- (id)rotatedImageForImage:(id)a3 scale:(double)a4
{
  v6 = a3;
  v7 = [(TUICandidateArrowButton *)self arrowDirection];
  v8 = objc_alloc(MEMORY[0x1E69DCAB8]);
  v9 = [v6 CGImage];

  v10 = [v8 initWithCGImage:v9 scale:v7 orientation:a4];

  return v10;
}

- (double)imageViewAlpha
{
  v3 = [(TUICandidateArrowButton *)self style];
  [v3 foregroundOpacity];
  v5 = v4;
  v6 = [(TUICandidateArrowButton *)self isEnabled];
  v7 = 0.35;
  if (v6)
  {
    v7 = 1.0;
  }

  v8 = v5 * v7;

  return v8;
}

- (void)udpateBackgroundColor
{
  v3 = [(TUICandidateArrowButton *)self showsBackground];
  v4 = [(TUICandidateArrowButton *)self backgroundView];
  [v4 setAlpha:v3];

  v5 = [(TUICandidateArrowButton *)self showsBackground];
  v6 = [(TUICandidateArrowButton *)self backdropView];
  [v6 setAlpha:v5];

  v7 = [(TUICandidateArrowButton *)self isHighlighted];
  v8 = [(TUICandidateArrowButton *)self highlightBackgroundView];
  [v8 setAlpha:v7];

  v9 = [(TUICandidateArrowButton *)self style];
  if (objc_opt_respondsToSelector())
  {
    v10 = [(TUICandidateArrowButton *)self style];
    v11 = [v10 arrowButtonHighlightBackgroundHidden];

    if (!v11)
    {
      goto LABEL_5;
    }

    v9 = [(TUICandidateArrowButton *)self highlightBackgroundView];
    [v9 setAlpha:0.0];
  }

LABEL_5:
  v12 = [(TUICandidateArrowButton *)self style];
  v13 = [v12 highlightedBackgroundColor];
  v14 = [(TUICandidateArrowButton *)self highlightBackgroundView];
  [v14 setBackgroundColor:v13];

  v17 = [(TUICandidateArrowButton *)self style];
  v15 = [v17 arrowButtonBackgroundColor];
  v16 = [(TUICandidateArrowButton *)self backgroundView];
  [v16 setBackgroundColor:v15];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TUICandidateArrowButton;
  [(TUICandidateArrowButton *)&v4 setHighlighted:a3];
  [(TUICandidateArrowButton *)self udpateBackgroundColor];
}

- (void)setArrowDirection:(int64_t)a3
{
  if (self->_arrowDirection != a3)
  {
    v5[5] = v3;
    v5[6] = v4;
    self->_arrowDirection = a3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__TUICandidateArrowButton_setArrowDirection___block_invoke;
    v5[3] = &unk_1E72D83A0;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
  }
}

- (void)setArrowImageName:(id)a3
{
  if (self->_arrowImageName != a3)
  {
    v4 = [a3 copy];
    arrowImageName = self->_arrowImageName;
    self->_arrowImageName = v4;

    [(TUICandidateArrowButton *)self updateStyle];
  }
}

- (void)setStyle:(id)a3
{
  v16 = a3;
  if (([(TUICandidateViewStyle *)self->_style isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_style, a3);
    v5 = [v16 arrowButtonImageName];
    if (v5 && (v6 = v5, -[TUICandidateArrowButton arrowImageName](self, "arrowImageName"), v7 = objc_claimAutoreleasedReturnValue(), [v16 arrowButtonImageName], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v6, (v9 & 1) == 0))
    {
      if ([(TUICandidateArrowButton *)self isTextEffectsButton])
      {
        v11 = [(TUICandidateArrowButton *)self originalArrowImageName];

        if (!v11)
        {
          v12 = [(TUICandidateArrowButton *)self arrowImageName];
          [(TUICandidateArrowButton *)self setOriginalArrowImageName:v12];
        }
      }

      v13 = [v16 arrowButtonImageName];
      [(TUICandidateArrowButton *)self setArrowImageName:v13];
    }

    else
    {
      v10 = [v16 arrowButtonImageName];
      if (v10)
      {
      }

      else
      {
        v14 = [(TUICandidateArrowButton *)self originalArrowImageName];

        if (v14)
        {
          v15 = [(TUICandidateArrowButton *)self originalArrowImageName];
          [(TUICandidateArrowButton *)self setArrowImageName:v15];

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
  v4 = [(TUICandidateArrowButton *)self highlightBackgroundView];
  [(UIView *)contentView sendSubviewToBack:v4];

  v5 = self->_contentView;
  v6 = [(TUICandidateArrowButton *)self backgroundView];
  [(UIView *)v5 sendSubviewToBack:v6];

  v7 = self->_contentView;
  v8 = [(TUICandidateArrowButton *)self backdropView];
  [(UIView *)v7 sendSubviewToBack:v8];

  v9 = [(TUICandidateArrowButton *)self contentView];
  [(TUICandidateArrowButton *)self sendSubviewToBack:v9];

  [(TUICandidateArrowButton *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(TUICandidateArrowButton *)self style];
  [v18 arrowButtonPadding];
  v20 = v11 + v19;
  v22 = v13 + v21;
  v24 = v15 - (v19 + v23);
  v26 = v17 - (v21 + v25);

  [(TUICandidateArrowButton *)self bounds];
  [(UIView *)self->_contentView setFrame:?];
  [(UIView *)self->_backgroundView setFrame:v20, v22, v24, v26];
  [(UIView *)self->_highlightBackgroundView setFrame:v20, v22, v24, v26];
  v27 = [(TUICandidateArrowButton *)self isTextEffectsButton];
  [(TUICandidateArrowButton *)self arrowImageOffset];
  v29 = v20 + v24 * 0.5 + v28;
  [(TUICandidateArrowButton *)self arrowImageOffset];
  v31 = v30;
  v32 = [(TUICandidateArrowButton *)self _inheritedRenderConfig];
  if ([v32 colorAdaptiveBackground])
  {
    v33 = [MEMORY[0x1E69DCBE0] activeInstance];
    v34 = [v33 isMinimized];

    if (v34)
    {
      v29 = v29 + -2.0;
    }
  }

  else
  {
  }

  v35 = 0.0;
  if (v27)
  {
    v35 = 4.0;
  }

  v36 = v35 + v22 + v26 * 0.5 + v31;
  v37 = [(TUICandidateArrowButton *)self imageView];
  [v37 setCenter:{v29, v36}];

  [(TUICandidateArrowButton *)self imageViewAlpha];
  v39 = v38;
  v40 = [(TUICandidateArrowButton *)self imageView];
  [v40 setAlpha:v39];
}

- (BOOL)isTextEffectsButton
{
  v2 = [(TUICandidateArrowButton *)self style];
  v3 = [v2 arrowButtonImageName];
  v4 = [v3 hasPrefix:@"character.motion"];

  return v4;
}

- (void)setShowsBackground:(BOOL)a3
{
  if (self->_showsBackground != a3)
  {
    self->_showsBackground = a3;
    [(TUICandidateArrowButton *)self updateStyle];
  }
}

- (TUICandidateArrowButton)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateArrowButton;
  v3 = [(TUICandidateArrowButton *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateArrowButton *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateArrowButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateArrowButton;
  v3 = [(TUICandidateArrowButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v13 = [(TUICandidateArrowButton *)self _inheritedRenderConfig];
  if ([v13 colorAdaptiveBackground])
  {
    v14 = [MEMORY[0x1E69DCBE0] isSplit];

    if ((v14 & 1) == 0)
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