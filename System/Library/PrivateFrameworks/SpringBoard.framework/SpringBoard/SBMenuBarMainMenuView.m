@interface SBMenuBarMainMenuView
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (SBMenuBarMainMenuView)initWithMainMenu:(id)a3 type:(int64_t)a4 delegate:(id)a5;
- (SBMenuBarMainMenuViewDelegate)delegate;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)_menuBarTitleFontFromStatusBarFont:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)displayTitleWithAttributes:(id)a3;
- (void)_focusSpringBoardForMenuBar:(BOOL)a3;
- (void)_handleTapToDismiss:(id)a3;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)dealloc;
- (void)setDismissingMenuForPointerHover:(BOOL)a3;
- (void)setPresentingMenuForKeyPress:(BOOL)a3;
- (void)setPresentingMenuForPointerHover:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SBMenuBarMainMenuView

- (SBMenuBarMainMenuView)initWithMainMenu:(id)a3 type:(int64_t)a4 delegate:(id)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v27.receiver = self;
  v27.super_class = SBMenuBarMainMenuView;
  v11 = [(SBMenuBarMainMenuView *)&v27 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mainMenu, a3);
    v12->_type = a4;
    objc_storeWeak(&v12->_delegate, v10);
    objc_initWeak(&location, v12);
    v13 = objc_opt_self();
    v28[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __56__SBMenuBarMainMenuView_initWithMainMenu_type_delegate___block_invoke;
    v24 = &unk_2783BE340;
    objc_copyWeak(&v25, &location);
    v15 = [(SBMenuBarMainMenuView *)v12 registerForTraitChanges:v14 withHandler:&v21];
    traitChangeObservationToken = v12->_traitChangeObservationToken;
    v12->_traitChangeObservationToken = v15;

    v17 = objc_alloc(MEMORY[0x277D75B80]);
    v18 = [v17 initWithTarget:v12 action:{sel__handleTapToDismiss_, v21, v22, v23, v24}];
    dismissTapRecognizer = v12->_dismissTapRecognizer;
    v12->_dismissTapRecognizer = v18;

    [(UITapGestureRecognizer *)v12->_dismissTapRecognizer setDelegate:v12];
    [(SBMenuBarMainMenuView *)v12 addGestureRecognizer:v12->_dismissTapRecognizer];
    [(SBMenuBarMainMenuView *)v12 setShowsMenuFromSource:0];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __56__SBMenuBarMainMenuView_initWithMainMenu_type_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained _sbWindowScene];

    WeakRetained = v5;
    if (v2)
    {
      v3 = [v5 _sbWindowScene];
      v4 = [v3 sceneManager];
      [v5 setOverrideUserInterfaceStyle:{objc_msgSend(v4, "userInterfaceStyle")}];

      WeakRetained = v5;
    }
  }
}

- (id)_menuBarTitleFontFromStatusBarFont:(id)a3
{
  v3 = a3;
  v4 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76800], v4) == NSOrderedAscending)
  {
    v6 = 20.0;
  }

  else if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76808], v4) == NSOrderedAscending)
  {
    v6 = 19.0;
  }

  else if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76818], v4) == NSOrderedAscending)
  {
    v6 = 18.0;
  }

  else if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76828], v4) == NSOrderedAscending)
  {
    v6 = 17.0;
  }

  else
  {
    v5 = v3;
    if (UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76838], v4) != NSOrderedAscending)
    {
      goto LABEL_12;
    }

    v6 = 16.0;
  }

  v5 = [v3 fontWithSize:v6];

LABEL_12:

  return v5;
}

- (id)displayTitleWithAttributes:(id)a3
{
  v4 = [a3 mutableCopy];
  v5 = *MEMORY[0x277D740A8];
  v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D740A8]];
  v7 = [(SBMenuBarMainMenuView *)self _menuBarTitleFontFromStatusBarFont:v6];

  [v4 setObject:v7 forKeyedSubscript:v5];
  v8 = [v4 copy];
  if ([(SBMenuBarMainMenuView *)self type]== 2)
  {
    v9 = MEMORY[0x277D755D0];
    v10 = [v8 objectForKey:v5];
    v11 = [v9 configurationWithFont:v10];

    v12 = MEMORY[0x277D755B8];
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v13 = @"chevron.left.2";
    }

    else
    {
      v13 = @"chevron.right.2";
    }

    v14 = [v12 systemImageNamed:v13 withConfiguration:v11];
    v15 = [MEMORY[0x277D74270] textAttachmentWithImage:v14];
    v16 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v15 attributes:v8];
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277CCA898]);
    v11 = [(SBMenuBarMainMenuView *)self mainMenu];
    v14 = [v11 uiMenu];
    v18 = [v14 title];
    v15 = v18;
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = @"?";
    }

    v16 = [v17 initWithString:v19 attributes:v8];
  }

  v20 = v16;

  return v20;
}

- (void)setPresentingMenuForPointerHover:(BOOL)a3
{
  if (self->_presentingMenuForPointerHover != a3)
  {
    self->_presentingMenuForPointerHover = a3;
    if (a3)
    {
      [(SBMenuBarMainMenuView *)self _focusSpringBoardForMenuBar:1];
    }
  }
}

- (void)setPresentingMenuForKeyPress:(BOOL)a3
{
  if (self->_presentingMenuForKeyPress != a3)
  {
    self->_presentingMenuForKeyPress = a3;
    if (a3)
    {
      [(SBMenuBarMainMenuView *)self _focusSpringBoardForMenuBar:1];
    }
  }
}

- (void)setDismissingMenuForPointerHover:(BOOL)a3
{
  if (self->_dismissingMenuForPointerHover != a3)
  {
    self->_dismissingMenuForPointerHover = a3;
    if (a3)
    {
      self->_presentingMenuForPointerHover = 0;
    }
  }
}

- (void)dealloc
{
  [(SBMenuBarMainMenuView *)self unregisterForTraitChanges:self->_traitChangeObservationToken];
  [(SBMenuBarMainMenuView *)self _focusSpringBoardForMenuBar:0];
  v3.receiver = self;
  v3.super_class = SBMenuBarMainMenuView;
  [(SBMenuBarMainMenuView *)&v3 dealloc];
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  MaxX = 0.0;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    [(SBMenuBarMainMenuView *)self bounds];
    MaxX = CGRectGetMaxX(v13);
  }

  [(SBMenuBarMainMenuView *)self bounds];
  v6 = v5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained yOffsetForPresentedMenuForMainMenuView:self];
  v9 = v6 - v8;

  v10 = MaxX;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)_focusSpringBoardForMenuBar:(BOOL)a3
{
  if (!a3)
  {
    [(BSInvalidatable *)self->_keyboardFocusLockAssertion invalidate];
    keyboardFocusLockAssertion = self->_keyboardFocusLockAssertion;
    self->_keyboardFocusLockAssertion = 0;

    [(_UIInvalidatable *)self->_sceneFocusSystemAssertion _invalidate];
    sceneFocusSystemAssertion = self->_sceneFocusSystemAssertion;
    self->_sceneFocusSystemAssertion = 0;
LABEL_8:

    return;
  }

  if (!self->_sceneFocusSystemAssertion)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained beginSceneFocusSystemActivationAssertionForMainMenuView:self];
    v6 = self->_sceneFocusSystemAssertion;
    self->_sceneFocusSystemAssertion = v5;
  }

  if (!self->_keyboardFocusLockAssertion)
  {
    v14 = +[SBWorkspace mainWorkspace];
    v9 = [v14 keyboardFocusController];
    v10 = [(UIView *)self _sbWindowScene];
    v11 = +[SBKeyboardFocusLockReason menuBar];
    v12 = [v9 focusLockSpringBoardWindowScene:v10 forReason:v11];
    v13 = self->_keyboardFocusLockAssertion;
    self->_keyboardFocusLockAssertion = v12;

    sceneFocusSystemAssertion = v14;
    goto LABEL_8;
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 anyObject];
  self->_transitioningMenuForPointerClick = [v8 _isPointerTouch];

  v9.receiver = self;
  v9.super_class = SBMenuBarMainMenuView;
  [(SBMenuBarMainMenuView *)&v9 touchesBegan:v7 withEvent:v6];
}

- (void)_handleTapToDismiss:(id)a3
{
  self->_transitioningMenuForPointerClick = [a3 sbf_hasPointerTouch];
  self->_dismissingMenuForPointerHover = 0;
  v4 = [(SBMenuBarMainMenuView *)self contextMenuInteraction];
  [v4 dismissMenu];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained willLoadMenuElementsForMainMenuView:self];
  v7 = objc_alloc_init(MEMORY[0x277D75EA0]);
  if (self->_type == 2)
  {
    v8 = self->_overflowMenus;
  }

  else
  {
    v18[0] = self->_mainMenu;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  }

  v9 = v8;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__SBMenuBarMainMenuView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
  v14[3] = &unk_2783ADC68;
  objc_copyWeak(&v16, &location);
  v10 = v7;
  v15 = v10;
  [WeakRetained loadMenuElementsForMainMenus:v9 handler:v14];
  v11 = v15;
  v12 = v10;

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v12;
}

void __79__SBMenuBarMainMenuView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (v3)
  {
    v6 = [WeakRetained window];

    if (v6)
    {
      v7 = MEMORY[0x277D753B0];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __79__SBMenuBarMainMenuView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_2;
      v13[3] = &unk_2783BE368;
      v14 = v3;
      v6 = [v7 configurationWithIdentifier:0 previewProvider:0 actionProvider:v13];
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = MEMORY[0x277D75D18];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__SBMenuBarMainMenuView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke_3;
  v10[3] = &unk_2783A92D8;
  v11 = *(a1 + 32);
  v12 = v6;
  v9 = v6;
  [v8 performWithoutAnimation:v10];
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15.receiver = self;
  v15.super_class = SBMenuBarMainMenuView;
  v9 = [(SBMenuBarMainMenuView *)&v15 _contextMenuInteraction:v7 styleForMenuWithConfiguration:v6];

  v10 = [WeakRetained menuPresentationViewForMainMenuView:self];
  [v9 setContainerView:v10];

  [v9 setShouldMenuOverlapSourcePreview:0];
  [(SBMenuBarMainMenuView *)self bounds];
  v12 = v11;
  [WeakRetained yOffsetForPresentedMenuForMainMenuView:self];
  [v9 setPreferredEdgeInsets:{v12 + v13 * -0.5, 0.0, 0.0, 0.0}];
  [v9 setPreferredMaximumMenuHeight:1.79769313e308];

  return v9;
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v14.receiver = self;
  v14.super_class = SBMenuBarMainMenuView;
  v8 = a5;
  [(SBMenuBarMainMenuView *)&v14 contextMenuInteraction:a3 willDisplayMenuForConfiguration:a4 animator:v8];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained willPresentContextMenuForMainMenuView:self forPointerClick:self->_transitioningMenuForPointerClick];
  [(SBMenuBarMainMenuView *)self _focusSpringBoardForMenuBar:1];
  self->_presentingMenuForPointerHover = 0;
  self->_presentingMenuForKeyPress = 0;
  self->_transitioningMenuForPointerClick = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __89__SBMenuBarMainMenuView_contextMenuInteraction_willDisplayMenuForConfiguration_animator___block_invoke;
  v11[3] = &unk_2783A92D8;
  v12 = WeakRetained;
  v13 = self;
  v10 = WeakRetained;
  [v8 addCompletion:v11];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v7.receiver = self;
  v7.super_class = SBMenuBarMainMenuView;
  [(SBMenuBarMainMenuView *)&v7 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:a5];
  [(SBMenuBarMainMenuView *)self _focusSpringBoardForMenuBar:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained willDismissContextMenuForMainMenuView:self forPointerClick:self->_transitioningMenuForPointerClick];

  self->_presentingMenuForPointerHover = 0;
  self->_presentingMenuForKeyPress = 0;
  self->_transitioningMenuForPointerClick = 0;
  self->_dismissingMenuForPointerHover = 0;
}

- (SBMenuBarMainMenuViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end