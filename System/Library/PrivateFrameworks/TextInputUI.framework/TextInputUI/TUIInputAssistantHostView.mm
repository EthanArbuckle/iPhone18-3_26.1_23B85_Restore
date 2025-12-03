@interface TUIInputAssistantHostView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGAffineTransform)transformForContent;
- (TUIInputAccessoryBackdropView)inputAccessoryBackdropView;
- (UIView)inputAssistantBackdropView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)ensureInputAssistantConstraints;
- (void)setCompact:(BOOL)compact;
- (void)setInputAccessoryView:(id)view;
- (void)setSystemInputAssistantView:(id)view;
- (void)setTransformForContent:(CGAffineTransform *)content;
- (void)updateInputAccessoryBackdrop;
- (void)updateInputAssistantBackdrop;
@end

@implementation TUIInputAssistantHostView

- (void)updateInputAssistantBackdrop
{
  v50[4] = *MEMORY[0x1E69E9840];
  systemInputAssistantView = [(TUIInputAssistantHostView *)self systemInputAssistantView];

  if (systemInputAssistantView)
  {
    _inheritedRenderConfig = [(TUIInputAssistantHostView *)self _inheritedRenderConfig];
    if ([_inheritedRenderConfig colorAdaptiveBackground])
    {
      v5 = 44.0;
    }

    else
    {
      v5 = 50.0;
    }

    isCompact = self->_isCompact;
    systemInputAssistantView2 = [(TUIInputAssistantHostView *)self systemInputAssistantView];
    v8 = systemInputAssistantView2;
    if (isCompact)
    {
      rightButtonBar = [systemInputAssistantView2 rightButtonBar];
      centerYAnchor = [rightButtonBar centerYAnchor];
      inputAssistantBackdropView = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      centerYAnchor2 = [inputAssistantBackdropView centerYAnchor];
      v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

      systemInputAssistantView3 = [(TUIInputAssistantHostView *)self systemInputAssistantView];
      centerXAnchor = [systemInputAssistantView3 centerXAnchor];
      inputAssistantBackdropView2 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      centerXAnchor2 = [inputAssistantBackdropView2 centerXAnchor];
      v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

      inputAssistantBackdropView3 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      heightAnchor = [inputAssistantBackdropView3 heightAnchor];
      v21 = [heightAnchor constraintEqualToConstant:v5];

      inputAssistantBackdropView4 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      widthAnchor = [inputAssistantBackdropView4 widthAnchor];
      v24 = [widthAnchor constraintEqualToConstant:65.0];

      v50[0] = v13;
      v25 = v50;
      v26 = v24;
      v27 = v21;
    }

    else
    {
      leftButtonBar = [systemInputAssistantView2 leftButtonBar];
      centerYAnchor3 = [leftButtonBar centerYAnchor];
      inputAssistantBackdropView5 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      centerYAnchor4 = [inputAssistantBackdropView5 centerYAnchor];
      v13 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];

      inputAssistantBackdropView6 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      leftAnchor = [inputAssistantBackdropView6 leftAnchor];
      systemInputAssistantView4 = [(TUIInputAssistantHostView *)self systemInputAssistantView];
      leftButtonBar2 = [systemInputAssistantView4 leftButtonBar];
      leftAnchor2 = [leftButtonBar2 leftAnchor];
      v18 = [leftAnchor constraintEqualToAnchor:leftAnchor2];

      inputAssistantBackdropView7 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      rightAnchor = [inputAssistantBackdropView7 rightAnchor];
      systemInputAssistantView5 = [(TUIInputAssistantHostView *)self systemInputAssistantView];
      rightButtonBar2 = [systemInputAssistantView5 rightButtonBar];
      rightAnchor2 = [rightButtonBar2 rightAnchor];
      v24 = [rightAnchor constraintEqualToAnchor:rightAnchor2];

      inputAssistantBackdropView8 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      heightAnchor2 = [inputAssistantBackdropView8 heightAnchor];
      v21 = [heightAnchor2 constraintEqualToConstant:v5];

      v49 = v13;
      v25 = &v49;
      v26 = v21;
      v27 = v24;
    }

    v25[1] = v18;
    v25[2] = v24;
    v25[3] = v21;
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

    v45 = MEMORY[0x1E696ACD8];
    inputAssistantBackdropConstraints = [(TUIInputAssistantHostView *)self inputAssistantBackdropConstraints];
    [v45 deactivateConstraints:inputAssistantBackdropConstraints];

    [(TUIInputAssistantHostView *)self setInputAssistantBackdropConstraints:v44];
    [(TUIInputAssistantHostView *)self ensureInputAssistantConstraints];
    _inheritedRenderConfig2 = [(TUIInputAssistantHostView *)self _inheritedRenderConfig];
    LODWORD(inputAssistantBackdropConstraints) = [_inheritedRenderConfig2 colorAdaptiveBackground];

    inputAssistantBackdropView = self->_inputAssistantBackdropView;
    if (inputAssistantBackdropConstraints)
    {
      [(UIView *)inputAssistantBackdropView transitionToStyle:3908 isSplit:0];
    }

    else
    {
      [(UIView *)inputAssistantBackdropView setContentCornerRadius:10.0];
    }
  }
}

- (void)ensureInputAssistantConstraints
{
  if (self->_inputAssistantBackdropView)
  {
    window = [(TUISystemInputAssistantView *)self->_systemInputAssistantView window];
    if (window)
    {
      v4 = window;
      window2 = [(UIView *)self->_inputAssistantBackdropView window];
      window3 = [(TUISystemInputAssistantView *)self->_systemInputAssistantView window];

      if (window2 == window3)
      {
        [MEMORY[0x1E696ACD8] activateConstraints:self->_inputAssistantBackdropConstraints];
        isHidden = [(TUISystemInputAssistantView *)self->_systemInputAssistantView isHidden];
        inputAssistantBackdropView = self->_inputAssistantBackdropView;

        [(UIView *)inputAssistantBackdropView setHidden:isHidden];
      }
    }
  }
}

- (UIView)inputAssistantBackdropView
{
  inputAssistantBackdropView = self->_inputAssistantBackdropView;
  if (!inputAssistantBackdropView)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__TUIInputAssistantHostView_inputAssistantBackdropView__block_invoke;
    v5[3] = &unk_1E72D83A0;
    v5[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v5];
    [(UIView *)self->_inputAssistantBackdropView setTranslatesAutoresizingMaskIntoConstraints:0];
    inputAssistantBackdropView = self->_inputAssistantBackdropView;
  }

  return inputAssistantBackdropView;
}

uint64_t __55__TUIInputAssistantHostView_inputAssistantBackdropView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _inheritedRenderConfig];
  v3 = [v2 colorAdaptiveBackground];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCB28]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    if (objc_opt_respondsToSelector())
    {
      [(TUIInputAssistantBackdropView *)v5 setIsAssistantBackground:1];
      [(TUIInputAssistantBackdropView *)v5 transitionToStyle:3908];
    }
  }

  else
  {
    v6 = [TUIInputAssistantBackdropView alloc];
    v5 = [(TUIInputAssistantBackdropView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 424);
  *(v7 + 424) = v5;

  v9 = *(a1 + 32);
  v10 = v9[53];

  return [v9 addSubview:v10];
}

- (void)updateInputAccessoryBackdrop
{
  v40[4] = *MEMORY[0x1E69E9840];
  inputAccessoryView = [(TUIInputAssistantHostView *)self inputAccessoryView];

  if (inputAccessoryView)
  {
    inputAccessoryBackdropConstraints = [(TUIInputAssistantHostView *)self inputAccessoryBackdropConstraints];

    if (!inputAccessoryBackdropConstraints)
    {
      inputAccessoryView2 = [(TUIInputAssistantHostView *)self inputAccessoryView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      inputAccessoryView3 = [(TUIInputAssistantHostView *)self inputAccessoryView];
      v8 = inputAccessoryView3;
      if (isKindOfClass)
      {
        [inputAccessoryView3 topAnchor];
      }

      else
      {
        [inputAccessoryView3 bottomAnchor];
      }
      v35 = ;

      inputAccessoryBackdropView = [(TUIInputAssistantHostView *)self inputAccessoryBackdropView];
      topAnchor = [inputAccessoryBackdropView topAnchor];
      v37 = [topAnchor constraintEqualToAnchor:v35];
      v40[0] = v37;
      inputAccessoryBackdropView2 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropView];
      bottomAnchor = [inputAccessoryBackdropView2 bottomAnchor];
      bottomAnchor2 = [(TUIInputAssistantHostView *)self bottomAnchor];
      v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v40[1] = v32;
      inputAccessoryBackdropView3 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropView];
      leadingAnchor = [inputAccessoryBackdropView3 leadingAnchor];
      inputAccessoryView4 = [(TUIInputAssistantHostView *)self inputAccessoryView];
      leadingAnchor2 = [inputAccessoryView4 leadingAnchor];
      v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v40[2] = v11;
      inputAccessoryBackdropView4 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropView];
      trailingAnchor = [inputAccessoryBackdropView4 trailingAnchor];
      inputAccessoryView5 = [(TUIInputAssistantHostView *)self inputAccessoryView];
      trailingAnchor2 = [inputAccessoryView5 trailingAnchor];
      v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v40[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
      [(TUIInputAssistantHostView *)self setInputAccessoryBackdropConstraints:v17];
    }

    inputAccessoryView6 = [(TUIInputAssistantHostView *)self inputAccessoryView];
    v19 = [inputAccessoryView6 conformsToProtocol:&unk_1F04087C8];

    inputAccessoryView7 = [(TUIInputAssistantHostView *)self inputAccessoryView];
    v21 = inputAccessoryView7;
    if ((v19 & 1) == 0)
    {
      if (![inputAccessoryView7 isHidden])
      {
        inputAccessoryView8 = [(TUIInputAssistantHostView *)self inputAccessoryView];
        [inputAccessoryView8 alpha];
      }

      v21 = objc_opt_new();
    }

    inputAccessoryBackdropView5 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropView];
    [inputAccessoryBackdropView5 setInputAccessoryViewTraits:v21];

    inputAccessoryBackdropView6 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropView];
    window = [inputAccessoryBackdropView6 window];
    inputAccessoryView9 = [(TUIInputAssistantHostView *)self inputAccessoryView];
    window2 = [inputAccessoryView9 window];

    if (window == window2)
    {
      v28 = MEMORY[0x1E696ACD8];
      inputAccessoryBackdropConstraints2 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropConstraints];
      [v28 activateConstraints:inputAccessoryBackdropConstraints2];
    }
  }
}

- (TUIInputAccessoryBackdropView)inputAccessoryBackdropView
{
  inputAccessoryBackdropView = self->_inputAccessoryBackdropView;
  if (!inputAccessoryBackdropView)
  {
    v4 = [TUIInputAccessoryBackdropView alloc];
    v5 = [(TUIInputAccessoryBackdropView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_inputAccessoryBackdropView;
    self->_inputAccessoryBackdropView = v5;

    [(TUIInputAssistantHostView *)self insertSubview:self->_inputAccessoryBackdropView atIndex:0];
    [(TUIInputAccessoryBackdropView *)self->_inputAccessoryBackdropView setTranslatesAutoresizingMaskIntoConstraints:0];
    inputAccessoryBackdropView = self->_inputAccessoryBackdropView;
  }

  return inputAccessoryBackdropView;
}

- (void)setCompact:(BOOL)compact
{
  if (self->_isCompact == compact)
  {
    [(TUIInputAssistantHostView *)self ensureInputAssistantConstraints];
  }

  else
  {
    self->_isCompact = compact;
    [(TUIInputAssistantHostView *)self updateInputAssistantBackdrop];
  }
}

- (CGAffineTransform)transformForContent
{
  if (*&self[8].ty)
  {
    inputAssistantBackdropView = [(CGAffineTransform *)self inputAssistantBackdropView];
    if (inputAssistantBackdropView)
    {
      v7 = inputAssistantBackdropView;
      [inputAssistantBackdropView transform];
      inputAssistantBackdropView = v7;
    }

    else
    {
      *&retstr->c = 0u;
      *&retstr->tx = 0u;
      *&retstr->a = 0u;
    }
  }

  else
  {
    v5 = MEMORY[0x1E695EFD0];
    v6 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v6;
    *&retstr->tx = *(v5 + 32);
  }

  return self;
}

- (void)setTransformForContent:(CGAffineTransform *)content
{
  if (self->_inputAssistantBackdropView)
  {
    v3 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView:*&content->a];
    [v3 setTransform:&v4];
  }
}

- (void)setInputAccessoryView:(id)view
{
  viewCopy = view;
  if (self->_inputAccessoryView != viewCopy)
  {
    v5 = MEMORY[0x1E696ACD8];
    inputAccessoryBackdropConstraints = [(TUIInputAssistantHostView *)self inputAccessoryBackdropConstraints];
    [v5 deactivateConstraints:inputAccessoryBackdropConstraints];

    [(TUIInputAssistantHostView *)self setInputAccessoryBackdropConstraints:0];
    objc_storeStrong(&self->_inputAccessoryView, view);
  }

  [(TUIInputAssistantHostView *)self updateInputAccessoryBackdrop];
}

- (void)setSystemInputAssistantView:(id)view
{
  viewCopy = view;
  if (self->_systemInputAssistantView == viewCopy)
  {
    [(TUIInputAssistantHostView *)self ensureInputAssistantConstraints];
  }

  else
  {
    objc_storeStrong(&self->_systemInputAssistantView, view);
    [(TUIInputAssistantHostView *)self updateInputAssistantBackdrop];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = TUIInputAssistantHostView;
  v5 = [(TUIInputAssistantHostView *)&v11 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    layer = [(TUIInputAssistantHostView *)self layer];
    animationKeys = [layer animationKeys];
    if ([animationKeys count])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v21 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subviews = [(TUIInputAssistantHostView *)self subviews];
  v9 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(subviews);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isUserInteractionEnabled])
        {
          [(TUIInputAssistantHostView *)self convertPoint:v13 toView:x, y];
          if ([v13 pointInside:eventCopy withEvent:?])
          {
            v14 = 1;
            goto LABEL_12;
          }
        }
      }

      v10 = [subviews countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

@end