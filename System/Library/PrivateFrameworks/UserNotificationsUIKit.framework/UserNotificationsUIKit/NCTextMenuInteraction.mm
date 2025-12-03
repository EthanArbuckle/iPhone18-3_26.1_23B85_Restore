@interface NCTextMenuInteraction
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (CGRect)_editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (NCTextMenuInteraction)init;
- (NCTextSupporting)view;
- (id)_editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)_editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration;
- (void)_editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration;
- (void)_handleLongPress:(id)press;
- (void)_prepareHaptic;
- (void)_tearDownHaptic;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation NCTextMenuInteraction

- (NCTextMenuInteraction)init
{
  v8.receiver = self;
  v8.super_class = NCTextMenuInteraction;
  v2 = [(NCTextMenuInteraction *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v2 action:sel__handleLongPress_];
    longPressGestureRecognizer = v2->_longPressGestureRecognizer;
    v2->_longPressGestureRecognizer = v3;

    [(UILongPressGestureRecognizer *)v2->_longPressGestureRecognizer setDelegate:v2];
    v5 = [objc_alloc(MEMORY[0x277D754C8]) initWithDelegate:v2];
    editMenuInteraction = v2->_editMenuInteraction;
    v2->_editMenuInteraction = v5;

    [(UIEditMenuInteraction *)v2->_editMenuInteraction setPresentsContextMenuAsSecondaryAction:0];
  }

  return v2;
}

- (NCTextSupporting)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)dealloc
{
  [(UIEditMenuInteraction *)self->_editMenuInteraction dismissMenu];
  [(NCTextMenuInteraction *)self _tearDownHaptic];
  v3.receiver = self;
  v3.super_class = NCTextMenuInteraction;
  [(NCTextMenuInteraction *)&v3 dealloc];
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = WeakRetained;
  if (WeakRetained && WeakRetained != viewCopy)
  {
    [WeakRetained removeGestureRecognizer:self->_longPressGestureRecognizer];
    [WeakRetained removeInteraction:self->_editMenuInteraction];
    v5 = WeakRetained;
  }
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_view, viewCopy);
  if (viewCopy)
  {
    [viewCopy addGestureRecognizer:self->_longPressGestureRecognizer];
    [viewCopy addInteraction:self->_editMenuInteraction];
  }
}

- (id)_editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  v24[1] = *MEMORY[0x277D85DE8];
  interactionCopy = interaction;
  configurationCopy = configuration;
  actionsCopy = actions;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__6;
  v22[4] = __Block_byref_object_dispose__6;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  attributedText = [WeakRetained attributedText];
  string = [attributedText string];

  v13 = MEMORY[0x277D750C8];
  v14 = NCUserNotificationsUIKitFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"NOTIFICATION_TEXT_COPY" value:&stru_282FE84F8 table:0];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __84__NCTextMenuInteraction__editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke;
  v21[3] = &unk_2783716C8;
  v21[4] = v22;
  v16 = [v13 actionWithTitle:v15 image:0 identifier:0 handler:v21];

  v17 = MEMORY[0x277D75710];
  v24[0] = v16;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v19 = [v17 menuWithTitle:&stru_282FE84F8 image:0 identifier:0 options:1 children:v18];

  _Block_object_dispose(v22, 8);

  return v19;
}

void __84__NCTextMenuInteraction__editMenuInteraction_menuForConfiguration_suggestedActions___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) mutableCopy];
  v1 = [MEMORY[0x277D75810] generalPasteboard];
  [v1 setString:v2];
}

- (CGRect)_editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained frame];
  v6 = v5;
  v8 = v7;
  _shouldReverseLayoutDirection = [WeakRetained _shouldReverseLayoutDirection];
  [WeakRetained sizeThatFits:{v6, v8}];
  v11 = v10;
  v13 = v12;
  [WeakRetained bounds];
  v16 = v15;
  if (_shouldReverseLayoutDirection)
  {
    v17 = v6 - v11 + v14;
  }

  else
  {
    v17 = v14;
  }

  v18 = v17;
  v19 = v16;
  v20 = v11;
  v21 = v13;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)_editMenuInteraction:(id)interaction willPresentMenuForConfiguration:(id)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  textColor = [WeakRetained textColor];
  defaultTextColor = self->_defaultTextColor;
  self->_defaultTextColor = textColor;

  tintColor = [MEMORY[0x277D75348] tintColor];
  [WeakRetained setTextColor:tintColor];
}

- (void)_editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [WeakRetained setTextColor:self->_defaultTextColor];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  if (self->_longPressGestureRecognizer == recognizer)
  {
    gestureRecognizerCopy = gestureRecognizer;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (void)_handleLongPress:(id)press
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  if (WeakRetained)
  {
    attributedText = [WeakRetained attributedText];
    if ([attributedText length])
    {
      state = [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer state];

      if (state == 1)
      {
        if ([WeakRetained becomeFirstResponder])
        {
          [(NCTextMenuInteraction *)self _performHaptic];
          superview = [WeakRetained superview];
          [WeakRetained center];
          [superview convertPoint:WeakRetained toView:?];
          v8 = v7;
          v10 = v9;

          v11 = [MEMORY[0x277D754C0] configurationWithIdentifier:@"id" sourcePoint:{v8, v10}];
          [(UIEditMenuInteraction *)self->_editMenuInteraction presentEditMenuWithConfiguration:v11];
        }

        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  if ([(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer state]== 3 || [(UILongPressGestureRecognizer *)self->_longPressGestureRecognizer state]== 4)
  {
    [(NCTextMenuInteraction *)self _tearDownHaptic];
  }

LABEL_10:
}

- (void)_prepareHaptic
{
  if (!self->_hapticPrepared)
  {
    haptic = self->_haptic;
    if (!haptic)
    {
      v4 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:1];
      v5 = self->_haptic;
      self->_haptic = v4;

      haptic = self->_haptic;
    }

    [(UIImpactFeedbackGenerator *)haptic prepare];
    self->_hapticPrepared = 1;
  }
}

- (void)_tearDownHaptic
{
  haptic = self->_haptic;
  self->_haptic = 0;

  self->_hapticPrepared = 0;
}

@end