@interface TUIInputAssistantHostView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGAffineTransform)transformForContent;
- (TUIInputAccessoryBackdropView)inputAccessoryBackdropView;
- (UIView)inputAssistantBackdropView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)ensureInputAssistantConstraints;
- (void)setCompact:(BOOL)a3;
- (void)setInputAccessoryView:(id)a3;
- (void)setSystemInputAssistantView:(id)a3;
- (void)setTransformForContent:(CGAffineTransform *)a3;
- (void)updateInputAccessoryBackdrop;
- (void)updateInputAssistantBackdrop;
@end

@implementation TUIInputAssistantHostView

- (void)updateInputAssistantBackdrop
{
  v50[4] = *MEMORY[0x1E69E9840];
  v3 = [(TUIInputAssistantHostView *)self systemInputAssistantView];

  if (v3)
  {
    v4 = [(TUIInputAssistantHostView *)self _inheritedRenderConfig];
    if ([v4 colorAdaptiveBackground])
    {
      v5 = 44.0;
    }

    else
    {
      v5 = 50.0;
    }

    isCompact = self->_isCompact;
    v7 = [(TUIInputAssistantHostView *)self systemInputAssistantView];
    v8 = v7;
    if (isCompact)
    {
      v9 = [v7 rightButtonBar];
      v10 = [v9 centerYAnchor];
      v11 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      v12 = [v11 centerYAnchor];
      v13 = [v10 constraintEqualToAnchor:v12];

      v14 = [(TUIInputAssistantHostView *)self systemInputAssistantView];
      v15 = [v14 centerXAnchor];
      v16 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      v17 = [v16 centerXAnchor];
      v18 = [v15 constraintEqualToAnchor:v17];

      v19 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      v20 = [v19 heightAnchor];
      v21 = [v20 constraintEqualToConstant:v5];

      v22 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      v23 = [v22 widthAnchor];
      v24 = [v23 constraintEqualToConstant:65.0];

      v50[0] = v13;
      v25 = v50;
      v26 = v24;
      v27 = v21;
    }

    else
    {
      v28 = [v7 leftButtonBar];
      v29 = [v28 centerYAnchor];
      v30 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      v31 = [v30 centerYAnchor];
      v13 = [v29 constraintEqualToAnchor:v31];

      v32 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      v33 = [v32 leftAnchor];
      v34 = [(TUIInputAssistantHostView *)self systemInputAssistantView];
      v35 = [v34 leftButtonBar];
      v36 = [v35 leftAnchor];
      v18 = [v33 constraintEqualToAnchor:v36];

      v37 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      v38 = [v37 rightAnchor];
      v39 = [(TUIInputAssistantHostView *)self systemInputAssistantView];
      v40 = [v39 rightButtonBar];
      v41 = [v40 rightAnchor];
      v24 = [v38 constraintEqualToAnchor:v41];

      v42 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView];
      v43 = [v42 heightAnchor];
      v21 = [v43 constraintEqualToConstant:v5];

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
    v46 = [(TUIInputAssistantHostView *)self inputAssistantBackdropConstraints];
    [v45 deactivateConstraints:v46];

    [(TUIInputAssistantHostView *)self setInputAssistantBackdropConstraints:v44];
    [(TUIInputAssistantHostView *)self ensureInputAssistantConstraints];
    v47 = [(TUIInputAssistantHostView *)self _inheritedRenderConfig];
    LODWORD(v46) = [v47 colorAdaptiveBackground];

    inputAssistantBackdropView = self->_inputAssistantBackdropView;
    if (v46)
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
    v3 = [(TUISystemInputAssistantView *)self->_systemInputAssistantView window];
    if (v3)
    {
      v4 = v3;
      v5 = [(UIView *)self->_inputAssistantBackdropView window];
      v6 = [(TUISystemInputAssistantView *)self->_systemInputAssistantView window];

      if (v5 == v6)
      {
        [MEMORY[0x1E696ACD8] activateConstraints:self->_inputAssistantBackdropConstraints];
        v7 = [(TUISystemInputAssistantView *)self->_systemInputAssistantView isHidden];
        inputAssistantBackdropView = self->_inputAssistantBackdropView;

        [(UIView *)inputAssistantBackdropView setHidden:v7];
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
  v3 = [(TUIInputAssistantHostView *)self inputAccessoryView];

  if (v3)
  {
    v4 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropConstraints];

    if (!v4)
    {
      v5 = [(TUIInputAssistantHostView *)self inputAccessoryView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v7 = [(TUIInputAssistantHostView *)self inputAccessoryView];
      v8 = v7;
      if (isKindOfClass)
      {
        [v7 topAnchor];
      }

      else
      {
        [v7 bottomAnchor];
      }
      v35 = ;

      v39 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropView];
      v38 = [v39 topAnchor];
      v37 = [v38 constraintEqualToAnchor:v35];
      v40[0] = v37;
      v36 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropView];
      v34 = [v36 bottomAnchor];
      v33 = [(TUIInputAssistantHostView *)self bottomAnchor];
      v32 = [v34 constraintEqualToAnchor:v33];
      v40[1] = v32;
      v31 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropView];
      v30 = [v31 leadingAnchor];
      v9 = [(TUIInputAssistantHostView *)self inputAccessoryView];
      v10 = [v9 leadingAnchor];
      v11 = [v30 constraintEqualToAnchor:v10];
      v40[2] = v11;
      v12 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropView];
      v13 = [v12 trailingAnchor];
      v14 = [(TUIInputAssistantHostView *)self inputAccessoryView];
      v15 = [v14 trailingAnchor];
      v16 = [v13 constraintEqualToAnchor:v15];
      v40[3] = v16;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
      [(TUIInputAssistantHostView *)self setInputAccessoryBackdropConstraints:v17];
    }

    v18 = [(TUIInputAssistantHostView *)self inputAccessoryView];
    v19 = [v18 conformsToProtocol:&unk_1F04087C8];

    v20 = [(TUIInputAssistantHostView *)self inputAccessoryView];
    v21 = v20;
    if ((v19 & 1) == 0)
    {
      if (![v20 isHidden])
      {
        v22 = [(TUIInputAssistantHostView *)self inputAccessoryView];
        [v22 alpha];
      }

      v21 = objc_opt_new();
    }

    v23 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropView];
    [v23 setInputAccessoryViewTraits:v21];

    v24 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropView];
    v25 = [v24 window];
    v26 = [(TUIInputAssistantHostView *)self inputAccessoryView];
    v27 = [v26 window];

    if (v25 == v27)
    {
      v28 = MEMORY[0x1E696ACD8];
      v29 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropConstraints];
      [v28 activateConstraints:v29];
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

- (void)setCompact:(BOOL)a3
{
  if (self->_isCompact == a3)
  {
    [(TUIInputAssistantHostView *)self ensureInputAssistantConstraints];
  }

  else
  {
    self->_isCompact = a3;
    [(TUIInputAssistantHostView *)self updateInputAssistantBackdrop];
  }
}

- (CGAffineTransform)transformForContent
{
  if (*&self[8].ty)
  {
    v4 = [(CGAffineTransform *)self inputAssistantBackdropView];
    if (v4)
    {
      v7 = v4;
      [v4 transform];
      v4 = v7;
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

- (void)setTransformForContent:(CGAffineTransform *)a3
{
  if (self->_inputAssistantBackdropView)
  {
    v3 = [(TUIInputAssistantHostView *)self inputAssistantBackdropView:*&a3->a];
    [v3 setTransform:&v4];
  }
}

- (void)setInputAccessoryView:(id)a3
{
  v7 = a3;
  if (self->_inputAccessoryView != v7)
  {
    v5 = MEMORY[0x1E696ACD8];
    v6 = [(TUIInputAssistantHostView *)self inputAccessoryBackdropConstraints];
    [v5 deactivateConstraints:v6];

    [(TUIInputAssistantHostView *)self setInputAccessoryBackdropConstraints:0];
    objc_storeStrong(&self->_inputAccessoryView, a3);
  }

  [(TUIInputAssistantHostView *)self updateInputAccessoryBackdrop];
}

- (void)setSystemInputAssistantView:(id)a3
{
  v5 = a3;
  if (self->_systemInputAssistantView == v5)
  {
    [(TUIInputAssistantHostView *)self ensureInputAssistantConstraints];
  }

  else
  {
    objc_storeStrong(&self->_systemInputAssistantView, a3);
    [(TUIInputAssistantHostView *)self updateInputAssistantBackdrop];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v11.receiver = self;
  v11.super_class = TUIInputAssistantHostView;
  v5 = [(TUIInputAssistantHostView *)&v11 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v8 = [(TUIInputAssistantHostView *)self layer];
    v9 = [v8 animationKeys];
    if ([v9 count])
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

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(TUIInputAssistantHostView *)self subviews];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if ([v13 isUserInteractionEnabled])
        {
          [(TUIInputAssistantHostView *)self convertPoint:v13 toView:x, y];
          if ([v13 pointInside:v7 withEvent:?])
          {
            v14 = 1;
            goto LABEL_12;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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