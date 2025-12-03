@interface _UIUCBBarButtonVisualProviderIOS
+ (id)_defaultTitleAttributes;
- (BOOL)shouldSuppressPointerSpecularFilter;
- (CGPoint)menuAnchorPoint;
- (id)_constraintsForButton:(id)button withButtonItem:(id)item;
- (id)_defaultTitleAttributes;
- (id)_newButtonForType:(int64_t)type;
- (id)buttonContextMenuInteractionConfiguration;
- (id)buttonContextMenuStyleFromDefaultStyle:(id)style;
- (id)pointerShapeInContainer:(id)container;
- (void)_configureImageOrTitleFromBarItem:(id)item;
- (void)configureButton:(id)button withAppearanceDelegate:(id)delegate fromBarItem:(id)item;
- (void)enableSecureButton:(BOOL)button;
- (void)updateButton:(id)button forEnabledState:(BOOL)state;
- (void)updateButton:(id)button forHighlightedState:(BOOL)state;
- (void)updateMenu;
- (void)updateSecureButton;
@end

@implementation _UIUCBBarButtonVisualProviderIOS

- (void)updateButton:(id)button forHighlightedState:(BOOL)state
{
  stateCopy = state;
  contentButton = self->_contentButton;
  buttonCopy = button;
  [(UIButton *)contentButton setHighlighted:stateCopy];
  traitCollection = [buttonCopy traitCollection];

  v9 = [traitCollection userInterfaceStyle] == 2;
  if (stateCopy)
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

- (void)updateButton:(id)button forEnabledState:(BOOL)state
{
  stateCopy = state;
  [(UIButton *)self->_contentButton setEnabled:state];
  if (self->_slotViewHasRemoteContent)
  {

    [(_UIUCBBarButtonVisualProviderIOS *)self enableSecureButton:stateCopy];
  }
}

- (id)_newButtonForType:(int64_t)type
{
  v4 = objc_opt_class();
  if (type == 1 || type == 3)
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

- (void)_configureImageOrTitleFromBarItem:(id)item
{
  v47 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if ([itemCopy hasImage] & 1) != 0 || (objc_msgSend(itemCopy, "hasTitle"))
  {
    action = [itemCopy action];
    action2 = [itemCopy action];
    action3 = [itemCopy action];
    if (!self->_contentButton)
    {
      goto LABEL_7;
    }

    objc_opt_class();
    if ((action == sel_assistantPaste_forEvent_) != (objc_opt_isKindOfClass() & 1))
    {
      [(UIView *)self->_contentButton removeFromSuperview];
      contentButton = self->_contentButton;
      self->_contentButton = 0;
    }

    if (!self->_contentButton)
    {
LABEL_7:
      v9 = 3;
      if (action3 != sel_assistantDictationMicOn)
      {
        v9 = 0;
      }

      v10 = 2;
      if (action2 != sel_assistantDictation)
      {
        v10 = v9;
      }

      if (action == sel_assistantPaste_forEvent_)
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

    if ([itemCopy hasImage])
    {
      v14 = [itemCopy _imageForState:0 compact:0 type:5];
      imageSymbolConfiguration = [(_UIUCBBarButtonVisualProviderIOS *)self imageSymbolConfiguration];
      if (imageSymbolConfiguration)
      {
        v16 = [v14 imageWithConfiguration:imageSymbolConfiguration];

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
      imageSymbolConfiguration = [(_UIUCBBarButtonVisualProviderIOS *)self _defaultTitleAttributes];
      v33 = [itemCopy _attributedTitleForState:0 withDefaultAttributes:imageSymbolConfiguration];
      v34 = [itemCopy _attributedTitleForState:1 withDefaultAttributes:imageSymbolConfiguration];
      v35 = [itemCopy _attributedTitleForState:2 withDefaultAttributes:imageSymbolConfiguration];
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
    if ([itemCopy isKeyboardItem] && ((_os_feature_enabled_impl() & 1) != 0 || _os_feature_enabled_impl()))
    {
      v19 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v19 userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        [(UIView *)self->_contentButton setAlpha:0.8];
      }
    }

    _gestureRecognizers = [itemCopy _gestureRecognizers];
    v22 = [_gestureRecognizers count];

    if (v22)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      _gestureRecognizers2 = [itemCopy _gestureRecognizers];
      v24 = [_gestureRecognizers2 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v24)
      {
        v25 = *v43;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v43 != v25)
            {
              objc_enumerationMutation(_gestureRecognizers2);
            }

            [(UIView *)self->_contentButton addGestureRecognizer:*(*(&v42 + 1) + 8 * i)];
          }

          v24 = [_gestureRecognizers2 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v24);
      }

      [(UIView *)self->_contentButton setUserInteractionEnabled:1];
    }

    if (action == sel_assistantPaste_forEvent_)
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
  isEnabled = [(UIControl *)self->super._button isEnabled];

  [(_UIUCBBarButtonVisualProviderIOS *)self enableSecureButton:isEnabled];
}

- (void)enableSecureButton:(BOOL)button
{
  buttonCopy = button;
  WeakRetained = objc_loadWeakRetained(&self->_securePasteButtonSlotView);
  [WeakRetained setHidden:!buttonCopy];

  contentButton = self->_contentButton;
  if (buttonCopy)
  {
    v7 = +[UIColor clearColor];
    [(UIButton *)contentButton _setImageColor:v7 forState:0];
  }

  else
  {

    [(UIButton *)contentButton _setImageColor:0 forState:0];
  }
}

- (void)configureButton:(id)button withAppearanceDelegate:(id)delegate fromBarItem:(id)item
{
  buttonCopy = button;
  itemCopy = item;
  [buttonCopy setPointerInteractionEnabled:1];
  layer = [buttonCopy layer];
  [layer setHitTestsAsOpaque:1];

  v9 = self->_contentButton;
  [(_UIUCBBarButtonVisualProviderIOS *)self _configureImageOrTitleFromBarItem:itemCopy];

  [buttonCopy addSubview:self->_contentButton];
  contentButton = self->_contentButton;
  if (v9 != contentButton && contentButton != 0)
  {
    v12 = MEMORY[0x1E69977A0];
    v13 = [_UIUCBBarButtonVisualProviderIOS _constraintsForButton:"_constraintsForButton:withButtonItem:" withButtonItem:?];
    [v12 activateConstraints:v13];
  }

  [(_UIUCBBarButtonVisualProviderIOS *)self updateMenu];
}

- (id)_constraintsForButton:(id)button withButtonItem:(id)item
{
  v21[4] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  buttonCopy = button;
  leadingAnchor = [buttonCopy leadingAnchor];
  leadingAnchor2 = [itemCopy leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v18;
  trailingAnchor = [buttonCopy trailingAnchor];
  trailingAnchor2 = [itemCopy trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v9;
  topAnchor = [buttonCopy topAnchor];
  topAnchor2 = [itemCopy topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[2] = v12;
  bottomAnchor = [buttonCopy bottomAnchor];

  bottomAnchor2 = [itemCopy bottomAnchor];

  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];

  return v16;
}

- (id)pointerShapeInContainer:(id)container
{
  button = self->super._button;
  containerCopy = container;
  [(_UIButtonBarButton *)button _buttonBarHitRect];
  v10 = v6 - (48.0 - v8) * 0.5;
  if (v8 < 48.0)
  {
    v8 = 48.0;
    v6 = v10;
  }

  [(UIView *)self->super._button convertRect:containerCopy toView:v6, v7 + (v9 + -37.0) * 0.5, v8, 37.0];
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

- (id)buttonContextMenuStyleFromDefaultStyle:(id)style
{
  styleCopy = style;
  [(_UIUCBBarButtonVisualProviderIOS *)self menuAnchorPoint];
  v6 = v5;
  v8 = v7;
  button = self->super._button;
  buttonContextMenuTargetedPreview = [(_UIUCBBarButtonVisualProviderIOS *)self buttonContextMenuTargetedPreview];
  _UIControlMenuSupportUpdateStyleForBarButtons(styleCopy, button, buttonContextMenuTargetedPreview, 0, v6, v8);

  return styleCopy;
}

- (CGPoint)menuAnchorPoint
{
  button = self->super._button;
  [(UIView *)button bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  window = [(UIView *)self->super._button window];
  [(UIView *)button convertRect:window toView:v5, v7, v9, v11];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  window2 = [(UIView *)self->super._button window];
  v22 = _UIControlMenuAttachmentPointForRectInContainer(window2, v14, v16, v18, v20);
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
  menu = [WeakRetained menu];

  v5 = objc_loadWeakRetained(&self->super._barButtonItem);
  _menuIsPrimary = [v5 _menuIsPrimary];

  v7 = objc_loadWeakRetained(&self->super._barButtonItem);
  _secondaryActionsProvider = [v7 _secondaryActionsProvider];

  if (_secondaryActionsProvider)
  {
    objc_copyWeak(&to, &self->super._barButtonItem);
    if (_menuIsPrimary)
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
    v10[4] = _secondaryActionsProvider;
    objc_copyWeak(v9, &to);
    v15 = _Block_copy(v10);
    menuProvider = self->_menuProvider;
    self->_menuProvider = v15;

    objc_destroyWeak(v9);
    objc_destroyWeak(&to);
  }

  else
  {
    if (menu)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __46___UIUCBBarButtonVisualProviderIOS_updateMenu__block_invoke_3;
      v20 = &unk_1E70F6A70;
      v21 = menu;
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
  [(UIControl *)self->super._button setShowsMenuAsPrimaryAction:_menuIsPrimary];
}

@end