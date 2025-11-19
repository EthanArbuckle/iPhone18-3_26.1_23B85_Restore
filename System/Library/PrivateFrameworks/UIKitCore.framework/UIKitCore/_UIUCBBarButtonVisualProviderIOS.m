@interface _UIUCBBarButtonVisualProviderIOS
+ (id)_defaultTitleAttributes;
- (BOOL)shouldSuppressPointerSpecularFilter;
- (CGPoint)menuAnchorPoint;
- (id)_constraintsForButton:(id)a3 withButtonItem:(id)a4;
- (id)_defaultTitleAttributes;
- (id)_newButtonForType:(int64_t)a3;
- (id)buttonContextMenuInteractionConfiguration;
- (id)buttonContextMenuStyleFromDefaultStyle:(id)a3;
- (id)pointerShapeInContainer:(id)a3;
- (void)_configureImageOrTitleFromBarItem:(id)a3;
- (void)configureButton:(id)a3 withAppearanceDelegate:(id)a4 fromBarItem:(id)a5;
- (void)enableSecureButton:(BOOL)a3;
- (void)updateButton:(id)a3 forEnabledState:(BOOL)a4;
- (void)updateButton:(id)a3 forHighlightedState:(BOOL)a4;
- (void)updateMenu;
- (void)updateSecureButton;
@end

@implementation _UIUCBBarButtonVisualProviderIOS

- (void)updateButton:(id)a3 forHighlightedState:(BOOL)a4
{
  v4 = a4;
  contentButton = self->_contentButton;
  v7 = a3;
  [(UIButton *)contentButton setHighlighted:v4];
  v8 = [v7 traitCollection];

  v9 = [v8 userInterfaceStyle] == 2;
  if (v4)
  {
    v10 = dbl_18A674F10[v9];
  }

  else
  {
    v10 = 1.0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
  [WeakRetained setAlpha:v10];
}

- (void)updateButton:(id)a3 forEnabledState:(BOOL)a4
{
  v4 = a4;
  [(UIButton *)self->_contentButton setEnabled:a4];
  if (self->_slotViewHasRemoteContent)
  {

    [(_UIUCBBarButtonVisualProviderIOS *)self enableSecureButton:v4];
  }
}

- (id)_newButtonForType:(int64_t)a3
{
  v4 = objc_opt_class();
  if (a3 == 1 || a3 == 3)
  {
    v4 = objc_opt_class();
  }

  v5 = [v4 buttonWithType:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setUserInteractionEnabled:0];
  [v5 _setWantsAccessibilityUnderline:0];
  [v5 _setImageContentMode:1];
  return v5;
}

+ (id)_defaultTitleAttributes
{
  if (qword_1ED49A888 != -1)
  {
    dispatch_once(&qword_1ED49A888, &__block_literal_global_56);
  }

  v3 = _MergedGlobals_11_1;

  return v3;
}

- (id)_defaultTitleAttributes
{
  v2 = objc_opt_class();

  return [v2 _defaultTitleAttributes];
}

- (void)_configureImageOrTitleFromBarItem:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasImage] & 1) != 0 || (objc_msgSend(v4, "hasTitle"))
  {
    v5 = [v4 action];
    v6 = [v4 action];
    v7 = [v4 action];
    if (!self->_contentButton)
    {
      goto LABEL_7;
    }

    objc_opt_class();
    if ((v5 == sel_assistantPaste_forEvent_) != (objc_opt_isKindOfClass() & 1))
    {
      [(UIView *)self->_contentButton removeFromSuperview];
      contentButton = self->_contentButton;
      self->_contentButton = 0;
    }

    if (!self->_contentButton)
    {
LABEL_7:
      v9 = 3;
      if (v7 != sel_assistantDictationMicOn)
      {
        v9 = 0;
      }

      v10 = 2;
      if (v6 != sel_assistantDictation)
      {
        v10 = v9;
      }

      if (v5 == sel_assistantPaste_forEvent_)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      v12 = [(_UIUCBBarButtonVisualProviderIOS *)self _newButtonForType:v11];
      v13 = self->_contentButton;
      self->_contentButton = v12;
    }

    if ([v4 hasImage])
    {
      v14 = [v4 _imageForState:0 compact:0 type:5];
      v15 = [(_UIUCBBarButtonVisualProviderIOS *)self imageSymbolConfiguration];
      if (v15)
      {
        v16 = [v14 imageWithConfiguration:v15];

        v34 = 0;
        v35 = 0;
        v33 = 0;
        v14 = v16;
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v33 = 0;
      }
    }

    else
    {
      v15 = [(_UIUCBBarButtonVisualProviderIOS *)self _defaultTitleAttributes];
      v33 = [v4 _attributedTitleForState:0 withDefaultAttributes:v15];
      v34 = [v4 _attributedTitleForState:1 withDefaultAttributes:v15];
      v35 = [v4 _attributedTitleForState:2 withDefaultAttributes:v15];
      v14 = 0;
    }

    [(UIButton *)self->_contentButton setImage:v14 forState:0];
    if ([(_UIUCBBarButtonVisualProviderIOS *)self shouldUseImageInsets])
    {
      v18 = self->_contentButton;
      [v14 alignmentRectInsets];
      [(UIButton *)v18 setImageEdgeInsets:?];
    }

    [(UIButton *)self->_contentButton setAttributedTitle:v33 forState:0];
    [(UIButton *)self->_contentButton setAttributedTitle:v34 forState:1];
    [(UIButton *)self->_contentButton setAttributedTitle:v35 forState:2];
    if ([v4 isKeyboardItem] && ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()))
    {
      v19 = +[UIDevice currentDevice];
      v20 = [v19 userInterfaceIdiom];

      if ((v20 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        [(UIView *)self->_contentButton setAlpha:0.8];
      }
    }

    v21 = [v4 _gestureRecognizers];
    v22 = [v21 count];

    if (v22)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v23 = [v4 _gestureRecognizers];
      v24 = [v23 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v24)
      {
        v25 = *v43;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(v23);
            }

            [(UIView *)self->_contentButton addGestureRecognizer:*(*(&v42 + 1) + 8 * i)];
          }

          v24 = [v23 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v24);
      }

      [(UIView *)self->_contentButton setUserInteractionEnabled:1];
    }

    if (v5 == sel_assistantPaste_forEvent_)
    {
      WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
      v28 = WeakRetained == 0;

      if (v28)
      {
        v29 = objc_alloc_init(_UISlotView);
        objc_storeWeak(&self->_securePasteButtonSlotView, v29);
        v30 = [MEMORY[0x1E69BC820] systemInputAssistantPasteButtonTagWithSite:{-[_UIUCBBarButtonVisualProviderIOS _securePasteButtonSite](self, "_securePasteButtonSite")}];
        objc_initWeak(&location, self);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __70___UIUCBBarButtonVisualProviderIOS__configureImageOrTitleFromBarItem___block_invoke;
        v39[3] = &unk_1E70F7530;
        v31 = v30;
        v40 = v31;
        [(_UISlotView *)v29 _setSlotStyleResolver:v39];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __70___UIUCBBarButtonVisualProviderIOS__configureImageOrTitleFromBarItem___block_invoke_2;
        v36[3] = &unk_1E70F75A8;
        v32 = v31;
        v37 = v32;
        objc_copyWeak(&v38, &location);
        [(_UISlotView *)v29 _setSlotAnyContentProvider:v36];
        [(_UISlotView *)v29 _overlayView:self->_contentButton centerInView:self->_contentButton];
        objc_destroyWeak(&v38);

        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    [(UIView *)self->_contentButton removeFromSuperview];
    v17 = self->_contentButton;
    self->_contentButton = 0;
  }
}

- (BOOL)shouldSuppressPointerSpecularFilter
{
  WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);

  if (WeakRetained)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = _UIUCBBarButtonVisualProviderIOS;
  return [(_UIButtonBarButtonVisualProvider *)&v5 shouldSuppressPointerSpecularFilter];
}

- (void)updateSecureButton
{
  self->_slotViewHasRemoteContent = 1;
  v3 = [(UIControl *)self->super._button isEnabled];

  [(_UIUCBBarButtonVisualProviderIOS *)self enableSecureButton:v3];
}

- (void)enableSecureButton:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
  [WeakRetained setHidden:!v3];

  contentButton = self->_contentButton;
  if (v3)
  {
    v7 = +[UIColor clearColor];
    [(UIButton *)contentButton _setImageColor:v7 forState:0];
  }

  else
  {

    [(UIButton *)contentButton _setImageColor:0 forState:0];
  }
}

- (void)configureButton:(id)a3 withAppearanceDelegate:(id)a4 fromBarItem:(id)a5
{
  v14 = a3;
  v7 = a5;
  [v14 setPointerInteractionEnabled:1];
  v8 = [v14 layer];
  [v8 setHitTestsAsOpaque:1];

  v9 = self->_contentButton;
  [(_UIUCBBarButtonVisualProviderIOS *)self _configureImageOrTitleFromBarItem:v7];

  [v14 addSubview:self->_contentButton];
  contentButton = self->_contentButton;
  if (v9 != contentButton && contentButton != 0)
  {
    v12 = MEMORY[0x1E69977A0];
    v13 = [_UIUCBBarButtonVisualProviderIOS _constraintsForButton:"_constraintsForButton:withButtonItem:" withButtonItem:?];
    [v12 activateConstraints:v13];
  }

  [(_UIUCBBarButtonVisualProviderIOS *)self updateMenu];
}

- (id)_constraintsForButton:(id)a3 withButtonItem:(id)a4
{
  v21[4] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3;
  v20 = [v6 leadingAnchor];
  v19 = [v5 leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v21[0] = v18;
  v7 = [v6 trailingAnchor];
  v8 = [v5 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v21[1] = v9;
  v10 = [v6 topAnchor];
  v11 = [v5 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v21[2] = v12;
  v13 = [v6 bottomAnchor];

  v14 = [v5 bottomAnchor];

  v15 = [v13 constraintEqualToAnchor:v14];
  v21[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];

  return v16;
}

- (id)pointerShapeInContainer:(id)a3
{
  button = self->super._button;
  v5 = a3;
  [(_UIButtonBarButton *)button _buttonBarHitRect];
  v10 = v6 - (48.0 - v8) * 0.5;
  if (v8 < 48.0)
  {
    v8 = 48.0;
    v6 = v10;
  }

  [(UIView *)self->super._button convertRect:v5 toView:v6, v7 + (v9 + -37.0) * 0.5, v8, 37.0];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  return [UIPointerShape shapeWithRoundedRect:v12, v14, v16, v18];
}

- (id)buttonContextMenuInteractionConfiguration
{
  if (self->_menuProvider)
  {
    v3 = [UIContextMenuConfiguration configurationWithIdentifier:@"UIBarButtonItemContextMenu" previewProvider:0 actionProvider:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)buttonContextMenuStyleFromDefaultStyle:(id)a3
{
  v4 = a3;
  [(_UIUCBBarButtonVisualProviderIOS *)self menuAnchorPoint];
  v6 = v5;
  v8 = v7;
  button = self->super._button;
  v10 = [(_UIUCBBarButtonVisualProviderIOS *)self buttonContextMenuTargetedPreview];
  _UIControlMenuSupportUpdateStyleForBarButtons(v4, button, v10, 0, v6, v8);

  return v4;
}

- (CGPoint)menuAnchorPoint
{
  button = self->super._button;
  [(UIView *)button bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(UIView *)self->super._button window];
  [(UIView *)button convertRect:v12 toView:v5, v7, v9, v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(UIView *)self->super._button window];
  v22 = _UIControlMenuAttachmentPointForRectInContainer(v21, v14, v16, v18, v20);
  v24 = v23;

  v25 = v22;
  v26 = v24;
  result.y = v26;
  result.x = v25;
  return result;
}

- (void)updateMenu
{
  WeakRetained = objc_loadWeakRetained(&self->super._barButtonItem);
  v4 = [WeakRetained menu];

  v5 = objc_loadWeakRetained(&self->super._barButtonItem);
  v6 = [v5 _menuIsPrimary];

  v7 = objc_loadWeakRetained(&self->super._barButtonItem);
  v8 = [v7 _secondaryActionsProvider];

  if (v8)
  {
    objc_copyWeak(&to, &self->super._barButtonItem);
    if (v6)
    {
      v9 = &v25;
      v10 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v11 = __46___UIUCBBarButtonVisualProviderIOS_updateMenu__block_invoke;
    }

    else
    {
      v9 = &v23;
      v10 = v22;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v11 = __46___UIUCBBarButtonVisualProviderIOS_updateMenu__block_invoke_2;
    }

    v10[2] = v11;
    v10[3] = &unk_1E70F7478;
    v10[4] = v8;
    objc_copyWeak(v9, &to);
    v15 = _Block_copy(v10);
    menuProvider = self->_menuProvider;
    self->_menuProvider = v15;

    objc_destroyWeak(v9);
    objc_destroyWeak(&to);
  }

  else
  {
    if (v4)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __46___UIUCBBarButtonVisualProviderIOS_updateMenu__block_invoke_3;
      v20 = &unk_1E70F6A70;
      v21 = v4;
      v12 = _Block_copy(&v17);
      v13 = self->_menuProvider;
      self->_menuProvider = v12;

      v14 = v21;
    }

    else
    {
      v14 = self->_menuProvider;
      self->_menuProvider = 0;
    }
  }

  [(UIControl *)self->super._button setContextMenuInteractionEnabled:self->_menuProvider != 0, v17, v18, v19, v20];
  [(UIControl *)self->super._button setShowsMenuAsPrimaryAction:v6];
}

@end