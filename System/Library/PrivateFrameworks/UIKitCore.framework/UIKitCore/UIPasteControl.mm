@interface UIPasteControl
- (BOOL)shouldTrack;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIPasteControl)initWithCoder:(NSCoder *)coder;
- (UIPasteControl)initWithConfiguration:(UIPasteControlConfiguration *)configuration;
- (UIPasteControl)initWithFrame:(CGRect)frame;
- (id)target;
- (void)_commonInitWithConfiguration:(void *)configuration target:;
- (void)_observePasteboard:(_BYTE *)pasteboard;
- (void)_updateEnabledWithNotification:(id)notification;
- (void)encodeWithCoder:(id)coder;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
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

- (void)_commonInitWithConfiguration:(void *)configuration target:
{
  v19 = a2;
  configurationCopy = configuration;
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

  v9 = *(self + 472);
  *(self + 472) = v6;

  objc_storeWeak((self + 480), configurationCopy);
  displayMode = [v19 displayMode];
  v11 = 0;
  if (displayMode > 1)
  {
    if (displayMode == 2)
    {
      v12 = objc_alloc(MEMORY[0x1E69DEC88]);
      v13 = 0;
    }

    else
    {
      if (displayMode != 3)
      {
        goto LABEL_18;
      }

      v12 = objc_alloc(MEMORY[0x1E69DEC88]);
      v13 = 2;
    }
  }

  else
  {
    if (displayMode)
    {
      if (displayMode != 1)
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
  v15 = [[_UISecureController alloc] initWithCategory:v11 control:self];
  v16 = *(self + 456);
  *(self + 456) = v15;

  [v19 cornerRadius];
  [*(self + 456) setCornerRadius:?];
  [*(self + 456) setCornerStyle:{objc_msgSend(v19, "cornerStyle")}];
  baseForegroundColor = [v19 baseForegroundColor];
  [*(self + 456) setBaseForegroundColor:{objc_msgSend(baseForegroundColor, "CGColor")}];

  baseBackgroundColor = [v19 baseBackgroundColor];
  [*(self + 456) setBaseBackgroundColor:{objc_msgSend(baseBackgroundColor, "CGColor")}];

  [*(self + 456) setImagePlacement:{objc_msgSend(v19, "imagePlacement")}];
  [*(self + 456) setShouldLayoutSynchronously:{objc_msgSend(v19, "_shouldLayoutSynchronously")}];
  [(UIPasteControl *)self _observePasteboard:?];
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

- (void)_observePasteboard:(_BYTE *)pasteboard
{
  if (!pasteboard)
  {
    return;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = defaultCenter;
  if (a2 && (pasteboard[464] & 1) == 0)
  {
    [defaultCenter addObserver:pasteboard selector:sel__updateEnabledWithNotification_ name:0x1EFB861D0 object:0];
    v5 = 1;
LABEL_8:
    pasteboard[464] = v5;
    goto LABEL_9;
  }

  if (pasteboard[464] && (a2 & 1) == 0)
  {
    [defaultCenter removeObserver:pasteboard name:0x1EFB861D0 object:0];
    v5 = 0;
    goto LABEL_8;
  }

LABEL_9:
  [pasteboard _updateEnabledWithNotification:0];
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = UIPasteControl;
  coderCopy = coder;
  [(UIControl *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_configuration forKey:{@"UIPasteControlConfiguration", v6.receiver, v6.super_class}];
  WeakRetained = objc_loadWeakRetained(&self->_target);
  [coderCopy encodeObject:WeakRetained forKey:@"UIPasteControlTarget"];
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  _authenticationMessage = [eventCopy _authenticationMessage];
  [UIPasteboard _attemptAuthenticationWithMessage:_authenticationMessage];

  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (WeakRetained)
  {
    v10 = +[UIPasteboard generalPasteboard];
    itemProviders = [v10 itemProviders];

    v12 = WeakRetained;
    v13 = itemProviders;
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
        _dataOwnerForPaste = [v16 _dataOwnerForPaste];
        if ([v16 canBecomeFirstResponder])
        {
          [v16 becomeFirstResponder];
        }
      }

      else
      {
        _dataOwnerForPaste = 0;
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __49__UIPasteControl_endTrackingWithTouch_withEvent___block_invoke;
      v19[3] = &unk_1E70F35B8;
      v20 = v14;
      v21 = v13;
      [UIPasteboard _performAsDataOwner:_dataOwnerForPaste block:v19];
    }
  }

  v18.receiver = self;
  v18.super_class = UIPasteControl;
  [(UIControl *)&v18 endTrackingWithTouch:touchCopy withEvent:eventCopy];
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

- (void)_updateEnabledWithNotification:(id)notification
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_target);
    v5 = +[UIPasteboard generalPasteboard];
    itemProviders = [v5 itemProviders];
    v7 = v4;
    v8 = itemProviders;
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

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = UIPasteControl;
  [(UIControl *)&v4 setEnabled:enabled];
  [(_UISecureController *)self->_secureController updateState];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = UIPasteControl;
  [(UIControl *)&v4 setHighlighted:highlighted];
  [(_UISecureController *)self->_secureController updateState];
}

- (BOOL)shouldTrack
{
  enchanted = [(_UISecureController *)self->_secureController enchanted];
  if (enchanted)
  {
    v5.receiver = self;
    v5.super_class = UIPasteControl;
    LOBYTE(enchanted) = [(UIControl *)&v5 shouldTrack];
  }

  return enchanted;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_UISecureController *)self->_secureController intrinsicContentSize:fits.width];
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