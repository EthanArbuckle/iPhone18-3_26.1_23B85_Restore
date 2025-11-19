@interface UIPasteControl
- (BOOL)shouldTrack;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIPasteControl)initWithCoder:(NSCoder *)coder;
- (UIPasteControl)initWithConfiguration:(UIPasteControlConfiguration *)configuration;
- (UIPasteControl)initWithFrame:(CGRect)frame;
- (id)target;
- (void)_commonInitWithConfiguration:(void *)a3 target:;
- (void)_observePasteboard:(_BYTE *)a1;
- (void)_updateEnabledWithNotification:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setTarget:(id)target;
@end

@implementation UIPasteControl

- (UIPasteControl)initWithConfiguration:(UIPasteControlConfiguration *)configuration
{
  v4 = configuration;
  v8.receiver = self;
  v8.super_class = UIPasteControl;
  v5 = [(UIControl *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    [(UIPasteControl *)v5 _commonInitWithConfiguration:v4 target:0];
  }

  return v6;
}

- (void)_commonInitWithConfiguration:(void *)a3 target:
{
  v19 = a2;
  v5 = a3;
  if (v19)
  {
    v6 = [_UIImmutablePasteControlConfiguration alloc];
    v7 = v19;
    if (v6)
    {
      v20.receiver = v6;
      v20.super_class = UIPasteControlConfiguration;
      v8 = objc_msgSendSuper2(&v20, sel_init);
      v6 = v8;
      if (v8)
      {
        v8->super._displayMode = *(v7 + 2);
        v8->super._cornerStyle = *(v7 + 3);
        v8->super._cornerRadius = *(v7 + 4);
        objc_storeStrong(&v8->super._baseForegroundColor, *(v7 + 6));
        objc_storeStrong(&v6->super._baseBackgroundColor, *(v7 + 7));
      }
    }
  }

  else
  {
    v6 = objc_alloc_init(_UIImmutablePasteControlConfiguration);
  }

  v9 = *(a1 + 472);
  *(a1 + 472) = v6;

  objc_storeWeak((a1 + 480), v5);
  v10 = [v19 displayMode];
  v11 = 0;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v12 = objc_alloc(MEMORY[0x1E69DEC88]);
      v13 = 0;
    }

    else
    {
      if (v10 != 3)
      {
        goto LABEL_18;
      }

      v12 = objc_alloc(MEMORY[0x1E69DEC88]);
      v13 = 2;
    }
  }

  else
  {
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_18;
      }

      v12 = objc_alloc(MEMORY[0x1E69DEC88]);
      v13 = 1;
      v14 = 0;
      goto LABEL_17;
    }

    v12 = objc_alloc(MEMORY[0x1E69DEC88]);
    v13 = 1;
  }

  v14 = 1;
LABEL_17:
  v11 = [v12 initWithType:1 iconIndex:v13 labelIndex:v14];
LABEL_18:
  v15 = [[_UISecureController alloc] initWithCategory:v11 control:a1];
  v16 = *(a1 + 456);
  *(a1 + 456) = v15;

  [v19 cornerRadius];
  [*(a1 + 456) setCornerRadius:?];
  [*(a1 + 456) setCornerStyle:{objc_msgSend(v19, "cornerStyle")}];
  v17 = [v19 baseForegroundColor];
  [*(a1 + 456) setBaseForegroundColor:{objc_msgSend(v17, "CGColor")}];

  v18 = [v19 baseBackgroundColor];
  [*(a1 + 456) setBaseBackgroundColor:{objc_msgSend(v18, "CGColor")}];

  [*(a1 + 456) setImagePlacement:{objc_msgSend(v19, "imagePlacement")}];
  [*(a1 + 456) setShouldLayoutSynchronously:{objc_msgSend(v19, "_shouldLayoutSynchronously")}];
  [(UIPasteControl *)a1 _observePasteboard:?];
}

- (UIPasteControl)initWithCoder:(NSCoder *)coder
{
  v4 = coder;
  v9.receiver = self;
  v9.super_class = UIPasteControl;
  v5 = [(UIControl *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [(NSCoder *)v4 decodeObjectForKey:@"UIPasteControlConfiguration"];
    v7 = [(NSCoder *)v4 decodeObjectForKey:@"UIPasteControlTarget"];
    [(UIPasteControl *)v5 _commonInitWithConfiguration:v6 target:v7];
  }

  return v5;
}

- (UIPasteControl)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIPasteControl;
  v3 = [(UIControl *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIPasteControl *)v3 _commonInitWithConfiguration:0 target:?];
  }

  return v4;
}

- (void)_observePasteboard:(_BYTE *)a1
{
  if (!a1)
  {
    return;
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = v4;
  if (a2 && (a1[464] & 1) == 0)
  {
    [v4 addObserver:a1 selector:sel__updateEnabledWithNotification_ name:0x1EFB861D0 object:0];
    v5 = 1;
LABEL_8:
    a1[464] = v5;
    goto LABEL_9;
  }

  if (a1[464] && (a2 & 1) == 0)
  {
    [v4 removeObserver:a1 name:0x1EFB861D0 object:0];
    v5 = 0;
    goto LABEL_8;
  }

LABEL_9:
  [a1 _updateEnabledWithNotification:0];
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = UIPasteControl;
  v4 = a3;
  [(UIControl *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_configuration forKey:{@"UIPasteControlConfiguration", v6.receiver, v6.super_class}];
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [v4 encodeObject:WeakRetained forKey:@"UIPasteControlTarget"];
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 _authenticationMessage];
  [UIPasteboard _attemptAuthenticationWithMessage:v8];

  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (WeakRetained)
  {
    v10 = +[UIPasteboard generalPasteboard];
    v11 = [v10 itemProviders];

    v12 = WeakRetained;
    v13 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v12;
      do
      {
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v14 canPasteItemProviders:v13])
        {
          break;
        }

        v15 = [v14 _nextResponderUsingTraversalStrategy:2];

        v14 = v15;
      }

      while (v15);
    }

    else if ((objc_opt_respondsToSelector() & 1) != 0 && [v12 canPasteItemProviders:v13])
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v14;
        v17 = [v16 _dataOwnerForPaste];
        if ([v16 canBecomeFirstResponder])
        {
          [v16 becomeFirstResponder];
        }
      }

      else
      {
        v17 = 0;
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __49__UIPasteControl_endTrackingWithTouch_withEvent___block_invoke;
      v19[3] = &unk_1E70F35B8;
      v20 = v14;
      v21 = v13;
      [UIPasteboard _performAsDataOwner:v17 block:v19];
    }
  }

  v18.receiver = self;
  v18.super_class = UIPasteControl;
  [(UIControl *)&v18 endTrackingWithTouch:v6 withEvent:v7];
}

- (void)setTarget:(id)target
{
  obj = target;
  WeakRetained = objc_loadWeakRetained(&self->_target);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_target, obj);
    [(UIPasteControl *)self _observePasteboard:?];
  }
}

- (void)_updateEnabledWithNotification:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_target);
    v5 = +[UIPasteboard generalPasteboard];
    v6 = [v5 itemProviders];
    v7 = v4;
    v8 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      if (v9)
      {
        do
        {
          if (objc_opt_respondsToSelector() & 1) != 0 && ([v9 canPasteItemProviders:v8])
          {
            break;
          }

          v10 = [v9 _nextResponderUsingTraversalStrategy:2];

          v9 = v10;
        }

        while (v10);
      }
    }

    else if ((objc_opt_respondsToSelector() & 1) != 0 && [v7 canPasteItemProviders:v8])
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v11 = v9 != 0;
  }

  else
  {
    v11 = 0;
  }

  if (self->_internallyEnabled != v11)
  {
    self->_internallyEnabled = v11;
    [(_UISecureController *)self->_secureController updateState];
  }
}

- (CGSize)intrinsicContentSize
{
  [(_UISecureController *)self->_secureController intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  [(_UISecureController *)self->_secureController updateSlotView];
  v3.receiver = self;
  v3.super_class = UIPasteControl;
  [(UIView *)&v3 layoutSubviews];
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIPasteControl;
  [(UIControl *)&v4 setEnabled:a3];
  [(_UISecureController *)self->_secureController updateState];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIPasteControl;
  [(UIControl *)&v4 setHighlighted:a3];
  [(_UISecureController *)self->_secureController updateState];
}

- (BOOL)shouldTrack
{
  v3 = [(_UISecureController *)self->_secureController enchanted];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = UIPasteControl;
    LOBYTE(v3) = [(UIControl *)&v5 shouldTrack];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(_UISecureController *)self->_secureController intrinsicContentSize:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end