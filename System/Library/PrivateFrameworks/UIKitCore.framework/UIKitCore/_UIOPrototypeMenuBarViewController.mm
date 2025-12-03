@interface _UIOPrototypeMenuBarViewController
- (_UIOPrototypeMenuBarViewController)initWithConfiguration:(id)configuration serviceConnection:(id)connection;
- (_UISceneMainMenuHost)host;
- (id)_categoryMenuIdentifierToFlashForCommandInvocationNotification:(id)notification;
- (id)_currentHostKeyboardShortcuts;
- (id)_prototypeSystemCommandWithTitle:(id)title systemImageName:(id)name keyCombination:(id)combination;
- (id)_uiDeferredMenuElementForMainMenuDeferredElement:(id)element parentState:(id)state;
- (id)_uiMenuElementForChildMainMenuElement:(id)element parentState:(id)state;
- (id)_uiMenuElementForMainMenuCommand:(id)command parentState:(id)state;
- (id)_uiMenuElementsForMainMenuElements:(id)elements parentState:(id)state;
- (id)_uiMenuForMainMenu:(id)menu state:(id)state;
- (id)hostShortcutsForMainMenu;
- (void)_dismissDueToUserDismissal:(BOOL)dismissal informingApp:(BOOL)app;
- (void)_getStateForMenu:(id)menu handler:(id)handler;
- (void)_loadAndRenderBaseMenu:(id)menu;
- (void)_presentMenuBar;
- (void)handleTap:(id)tap;
- (void)performBaseMenuRequest:(id)request handler:(id)handler;
- (void)performMainMenuCommandInvocationRequest:(id)request responseHandler:(id)handler;
- (void)performMainMenuDeferredElementRequest:(id)request responseHandler:(id)handler;
- (void)performMainMenuStateRequest:(id)request responseHandler:(id)handler;
- (void)performSessionRequest:(id)request handler:(id)handler;
- (void)receiveCommandInvocationNotification:(id)notification forServiceConnection:(id)connection;
- (void)serviceConnectionDidInvalidate:(id)invalidate;
- (void)serviceConnectionDidInvalidateMainMenu:(id)menu;
- (void)serviceConnectionDidRequestDismissal:(id)dismissal;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation _UIOPrototypeMenuBarViewController

- (_UIOPrototypeMenuBarViewController)initWithConfiguration:(id)configuration serviceConnection:(id)connection
{
  configurationCopy = configuration;
  connectionCopy = connection;
  v9 = [(UIViewController *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeStrong(&v10->_serviceConnection, connection);
    v10->_didInitialAppearanceSetup = 0;
    v10->_isDismissing = 0;
    v10->_isInvalidatingMenu = 0;
    categoryButtons = v10->_categoryButtons;
    v10->_categoryButtons = 0;

    v12 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    interactingButtons = v10->_interactingButtons;
    v10->_interactingButtons = v12;

    [(_UIOServiceConnection *)v10->_serviceConnection addObserver:v10];
  }

  return v10;
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = _UIOPrototypeMenuBarViewController;
  [(UIViewController *)&v5 viewDidAppear:appear];
  if (!self->_didInitialAppearanceSetup)
  {
    self->_didInitialAppearanceSetup = 1;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52___UIOPrototypeMenuBarViewController_viewDidAppear___block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [(_UIOPrototypeMenuBarViewController *)self _loadAndRenderBaseMenu:v4];
  }
}

- (void)viewDidLoad
{
  v46[3] = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = _UIOPrototypeMenuBarViewController;
  [(UIViewController *)&v44 viewDidLoad];
  v3 = objc_opt_new();
  barBackgroundView = self->_barBackgroundView;
  self->_barBackgroundView = v3;

  v5 = +[UIColor blackColor];
  [(UIView *)self->_barBackgroundView setBackgroundColor:v5];

  layer = [(UIView *)self->_barBackgroundView layer];
  [layer setCornerRadius:18.0];

  layer2 = [(UIView *)self->_barBackgroundView layer];
  [layer2 setMaskedCorners:12];

  view = [(UIViewController *)self view];
  [view addSubview:self->_barBackgroundView];

  [(UIView *)self->_barBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
  v37 = MEMORY[0x1E69977A0];
  heightAnchor = [(UIView *)self->_barBackgroundView heightAnchor];
  v38 = [heightAnchor constraintEqualToConstant:40.0];
  v46[0] = v38;
  centerXAnchor = [(UIView *)self->_barBackgroundView centerXAnchor];
  view2 = [(UIViewController *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v46[1] = v12;
  topAnchor = [(UIView *)self->_barBackgroundView topAnchor];
  view3 = [(UIViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v46[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
  [v37 activateConstraints:v17];

  CGAffineTransformMakeTranslation(&v43, 0.0, -40.0);
  v18 = self->_barBackgroundView;
  location = v43;
  [(UIView *)v18 setTransform:&location];
  v19 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel_handleTap_];
  dismissTapGesture = self->_dismissTapGesture;
  self->_dismissTapGesture = v19;

  view4 = [(UIViewController *)self view];
  [view4 addGestureRecognizer:self->_dismissTapGesture];

  v22 = +[UIButtonConfiguration grayButtonConfiguration];
  [v22 setCornerStyle:4];
  v23 = +[UIColor whiteColor];
  [v22 setBaseForegroundColor:v23];

  [v22 setImageColorTransformer:&__block_literal_global_61];
  [v22 setButtonSize:1];
  objc_initWeak(&location, self);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __49___UIOPrototypeMenuBarViewController_viewDidLoad__block_invoke_2;
  v40[3] = &unk_1E70F7450;
  objc_copyWeak(&v41, &location);
  v24 = [UIAction actionWithHandler:v40];
  v25 = [UIButton buttonWithConfiguration:v22 primaryAction:v24];
  pinMenuBarButton = self->_pinMenuBarButton;
  self->_pinMenuBarButton = v25;

  [(UIButton *)self->_pinMenuBarButton setChangesSelectionAsPrimaryAction:1];
  [(UIButton *)self->_pinMenuBarButton setConfigurationUpdateHandler:&__block_literal_global_65_1];
  [(UIView *)self->_pinMenuBarButton setUserInteractionEnabled:0];
  [(UIView *)self->_pinMenuBarButton setAlpha:0.0];
  view5 = [(UIViewController *)self view];
  [view5 addSubview:self->_pinMenuBarButton];

  [(UIView *)self->_pinMenuBarButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = MEMORY[0x1E69977A0];
  centerYAnchor = [(UIView *)self->_pinMenuBarButton centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_barBackgroundView centerYAnchor];
  v31 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v45[0] = v31;
  leadingAnchor = [(UIView *)self->_pinMenuBarButton leadingAnchor];
  trailingAnchor = [(UIView *)self->_barBackgroundView trailingAnchor];
  v34 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:20.0];
  v45[1] = v34;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  [v28 activateConstraints:v35];

  v36 = _UISceneMainMenuKeyboardShortcutActionForNavigatingMenusWithHorizontalArrowKeyInput(@"UIKeyInputLeftArrow", &__block_literal_global_74_0);
  _UISceneMainMenuKeyboardShortcutActionForNavigatingMenusWithHorizontalArrowKeyInput(@"UIKeyInputRightArrow", &__block_literal_global_76_0);

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);
}

- (void)_loadAndRenderBaseMenu:(id)menu
{
  menuCopy = menu;
  v5 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___UIOPrototypeMenuBarViewController__loadAndRenderBaseMenu___block_invoke;
  v7[3] = &unk_1E71051C0;
  v7[4] = self;
  v8 = menuCopy;
  v6 = menuCopy;
  [(_UIOPrototypeMenuBarViewController *)self performBaseMenuRequest:v5 handler:v7];
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  v5 = tapCopy;
  if (self->_dismissTapGesture == tapCopy)
  {
    v12 = tapCopy;
    state = [(UIGestureRecognizer *)tapCopy state];
    v5 = v12;
    if (state == 3)
    {
      [(UITapGestureRecognizer *)v12 locationInView:self->_barBackgroundView];
      v8 = v7;
      v10 = v9;
      [(UIView *)self->_barBackgroundView bounds];
      v14.x = v8;
      v14.y = v10;
      v11 = CGRectContainsPoint(v15, v14);
      v5 = v12;
      if (!v11)
      {
        [(_UIOPrototypeMenuBarViewController *)self _dismissDueToUserDismissal:1 informingApp:1];
        v5 = v12;
      }
    }
  }
}

- (void)_presentMenuBar
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __53___UIOPrototypeMenuBarViewController__presentMenuBar__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView _animateUsingDefaultTimingWithOptions:0 animations:v2 completion:0];
}

- (void)_dismissDueToUserDismissal:(BOOL)dismissal informingApp:(BOOL)app
{
  if (!self->_isDismissing)
  {
    self->_isDismissing = 1;
    if (dismissal)
    {
      v6 = objc_opt_new();
      [v6 setSessionToEnd:self->_session];
      [(_UIOPrototypeMenuBarViewController *)self performSessionRequest:v6 handler:0];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78___UIOPrototypeMenuBarViewController__dismissDueToUserDismissal_informingApp___block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78___UIOPrototypeMenuBarViewController__dismissDueToUserDismissal_informingApp___block_invoke_2;
    v7[3] = &unk_1E70FA0F0;
    v7[4] = self;
    appCopy = app;
    [UIView _animateUsingDefaultTimingWithOptions:0 animations:v9 completion:v7];
  }
}

- (void)serviceConnectionDidRequestDismissal:(id)dismissal
{
  if (self->_serviceConnection == dismissal)
  {
    [(_UIOPrototypeMenuBarViewController *)self _dismissDueToUserDismissal:1 informingApp:0];
  }
}

- (void)serviceConnectionDidInvalidateMainMenu:(id)menu
{
  if (self->_serviceConnection == menu)
  {
    v11[9] = v3;
    v11[10] = v4;
    session = self->_session;
    self->_session = 0;

    uncategorizedMenuState = self->_uncategorizedMenuState;
    self->_uncategorizedMenuState = 0;

    hostInvokableKeyboardShortcuts = self->_hostInvokableKeyboardShortcuts;
    self->_hostInvokableKeyboardShortcuts = 0;

    [(NSTimer *)self->_endSessionTimer invalidate];
    endSessionTimer = self->_endSessionTimer;
    self->_endSessionTimer = 0;

    categoryButtons = self->_categoryButtons;
    self->_categoryButtons = 0;

    [(NSHashTable *)self->_interactingButtons removeAllObjects];
    [(UIView *)self->_barBackgroundView setUserInteractionEnabled:0];
    self->_isInvalidatingMenu = 1;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77___UIOPrototypeMenuBarViewController_serviceConnectionDidInvalidateMainMenu___block_invoke;
    v11[3] = &unk_1E70F3590;
    v11[4] = self;
    [(_UIOPrototypeMenuBarViewController *)self _loadAndRenderBaseMenu:v11];
  }
}

- (void)receiveCommandInvocationNotification:(id)notification forServiceConnection:(id)connection
{
  v34 = *MEMORY[0x1E69E9840];
  if (self->_serviceConnection == connection)
  {
    v5 = [(_UIOPrototypeMenuBarViewController *)self _categoryMenuIdentifierToFlashForCommandInvocationNotification:notification];
    if (v5)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_categoryButtons;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            categoryMenuIdentifier = [v11 categoryMenuIdentifier];
            v13 = [categoryMenuIdentifier isEqual:v5];

            if (v13)
            {
              [v11 setHighlighted:1];
              v14 = dispatch_time(0, 80000000);
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __96___UIOPrototypeMenuBarViewController_receiveCommandInvocationNotification_forServiceConnection___block_invoke;
              block[3] = &unk_1E70F3590;
              block[4] = v11;
              dispatch_after(v14, MEMORY[0x1E69E96A0], block);
              goto LABEL_13;
            }
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      objectEnumerator = [(NSHashTable *)self->_interactingButtons objectEnumerator];
      allObjects = [objectEnumerator allObjects];

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v17 = allObjects;
      v18 = [v17 countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v24;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v17);
            }

            contextMenuInteraction = [*(*(&v23 + 1) + 8 * j) contextMenuInteraction];
            [contextMenuInteraction dismissMenu];
          }

          v19 = [v17 countByEnumeratingWithState:&v23 objects:v32 count:16];
        }

        while (v19);
      }

      [(NSHashTable *)self->_interactingButtons removeAllObjects];
    }
  }
}

- (id)_categoryMenuIdentifierToFlashForCommandInvocationNotification:(id)notification
{
  v19 = *MEMORY[0x1E69E9840];
  categoryMenuIdentifier2 = [notification invokedCommandCategoryMenuIdentifierForSession:self->_session];
  if ([categoryMenuIdentifier2 isEquivalentToUIMenuIdentifier:@"com.apple.menu.private-main-menu-uncategorized-commands"])
  {

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_categoryButtons;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          categoryMenuIdentifier = [v10 categoryMenuIdentifier];
          v12 = [categoryMenuIdentifier isEquivalentToUIMenuIdentifier:@"com.apple.menu.help"];

          if (v12)
          {
            categoryMenuIdentifier2 = [v10 categoryMenuIdentifier];
            goto LABEL_12;
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    categoryMenuIdentifier2 = 0;
LABEL_12:
  }

  return categoryMenuIdentifier2;
}

- (void)_getStateForMenu:(id)menu handler:(id)handler
{
  menuCopy = menu;
  handlerCopy = handler;
  if (self->_session)
  {
    v8 = [_UIMainMenuStateRequest alloc];
    identifier = [menuCopy identifier];
    v10 = [(_UIMainMenuStateRequest *)v8 initWithMenuIdentifier:identifier session:self->_session];

    if (!self->_uncategorizedMenuState)
    {
      identifier2 = [menuCopy identifier];
      v12 = [identifier2 isEquivalentToUIMenuIdentifier:@"com.apple.menu.help"];

      if (v12)
      {
        [(_UIMainMenuStateRequest *)v10 setIncludeUncategorizedMenuState:1];
      }
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63___UIOPrototypeMenuBarViewController__getStateForMenu_handler___block_invoke_3;
    v16[3] = &unk_1E7105230;
    v16[4] = self;
    v17 = handlerCopy;
    [(_UIOPrototypeMenuBarViewController *)self performMainMenuStateRequest:v10 responseHandler:v16];
  }

  else
  {
    v10 = objc_opt_new();
    [(_UIMainMenuStateRequest *)v10 setBeginNewSession:1];
    [(_UIMainMenuStateRequest *)v10 setRequiresHostSideInvokableKeyboardShortcuts:1];
    identifier3 = [menuCopy identifier];
    [(_UIMainMenuStateRequest *)v10 setInitialMenuStateIdentifier:identifier3];

    if (!self->_uncategorizedMenuState)
    {
      identifier4 = [menuCopy identifier];
      v15 = [identifier4 isEquivalentToUIMenuIdentifier:@"com.apple.menu.help"];

      if (v15)
      {
        [(_UIMainMenuStateRequest *)v10 setIncludeUncategorizedMenuState:1];
      }
    }

    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __63___UIOPrototypeMenuBarViewController__getStateForMenu_handler___block_invoke;
    v18[3] = &unk_1E7105208;
    objc_copyWeak(&v20, &location);
    v19 = handlerCopy;
    [(_UIOPrototypeMenuBarViewController *)self performSessionRequest:v10 handler:v18];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

- (id)_uiMenuElementsForMainMenuElements:(id)elements parentState:(id)state
{
  v21 = *MEMORY[0x1E69E9840];
  elementsCopy = elements;
  stateCopy = state;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = elementsCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [(_UIOPrototypeMenuBarViewController *)self _uiMenuElementForChildMainMenuElement:*(*(&v16 + 1) + 8 * i) parentState:stateCopy, v16];
        if (v14)
        {
          [array addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return array;
}

- (id)_uiMenuElementForChildMainMenuElement:(id)element parentState:(id)state
{
  elementCopy = element;
  stateCopy = state;
  v8 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = elementCopy;
    childMenuStates = [stateCopy childMenuStates];
    identifier = [v10 identifier];
    v13 = [childMenuStates objectForKeyedSubscript:identifier];

    v14 = [(_UIOPrototypeMenuBarViewController *)self _uiMenuForMainMenu:v10 state:v13];

    goto LABEL_9;
  }

  v15 = objc_opt_self();
  v16 = objc_opt_isKindOfClass();

  if (v16)
  {
    v17 = [(_UIOPrototypeMenuBarViewController *)self _uiMenuElementForMainMenuCommand:elementCopy parentState:stateCopy];
LABEL_7:
    v14 = v17;
    goto LABEL_9;
  }

  v18 = objc_opt_self();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v17 = [(_UIOPrototypeMenuBarViewController *)self _uiDeferredMenuElementForMainMenuDeferredElement:elementCopy parentState:stateCopy];
    goto LABEL_7;
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (id)_uiMenuForMainMenu:(id)menu state:(id)state
{
  v66[1] = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  v7 = MEMORY[0x1E695DF70];
  stateCopy = state;
  array = [v7 array];
  identifier = [menuCopy identifier];
  v11 = [identifier isEquivalentToUIMenuIdentifier:@"com.apple.menu.help"];

  if (v11)
  {
    v12 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:0x100000 keyEquivalent:@"?"];
    v13 = [(_UIOPrototypeMenuBarViewController *)self _prototypeSystemCommandWithTitle:@"Placeholder for a search bar" systemImageName:@"magnifyingglass" keyCombination:v12];
    v66[0] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
    v15 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:0 options:1 children:v14];
    [array addObject:v15];
  }

  children = [menuCopy children];
  v17 = [(_UIOPrototypeMenuBarViewController *)self _uiMenuElementsForMainMenuElements:children parentState:stateCopy];

  [array addObjectsFromArray:v17];
  identifier2 = [menuCopy identifier];
  LODWORD(children) = [identifier2 isEquivalentToUIMenuIdentifier:@"com.apple.menu.quit"];

  if (children)
  {
    v19 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:0x100000 keyEquivalent:@"Q"];
    v20 = @"Close [App]";
    selfCopy2 = self;
    v22 = 0;
LABEL_7:
    v30 = [(_UIOPrototypeMenuBarViewController *)selfCopy2 _prototypeSystemCommandWithTitle:v20 systemImageName:v22 keyCombination:v19];
    [array addObject:v30];
    goto LABEL_21;
  }

  identifier3 = [menuCopy identifier];
  v24 = [identifier3 isEquivalentToUIMenuIdentifier:@"com.apple.menu.minimize-and-zoom"];

  if (v24)
  {
    v25 = [(_UIOPrototypeMenuBarViewController *)self _prototypeSystemCommandWithTitle:@"Minimize" systemImageName:@"minus.circle" keyCombination:0];
    [array addObject:v25];

    v26 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:0x800000 keyEquivalent:@"F"];
    v27 = [(_UIOPrototypeMenuBarViewController *)self _prototypeSystemCommandWithTitle:@"Enter Full Screen" systemImageName:@"inset.filled.rectangle" keyCombination:v26];
    [array addObject:v27];

    v28 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:8650752 keyEquivalent:@"UIKeyInputLeftArrow"];
    v29 = [(_UIOPrototypeMenuBarViewController *)self _prototypeSystemCommandWithTitle:@"Tile Window to the Left" systemImageName:@"inset.filled.lefthalf.rectangle" keyCombination:v28];
    [array addObject:v29];

    v19 = [_UIMenuLeafKeyCombination combinationWithModifierFlags:8650752 keyEquivalent:@"UIKeyInputRightArrow"];
    v20 = @"Tile Window to the Right";
    v22 = @"inset.filled.righthalf.rectangle";
    selfCopy2 = self;
    goto LABEL_7;
  }

  identifier4 = [menuCopy identifier];
  v32 = [identifier4 isEquivalentToUIMenuIdentifier:@"com.apple.menu.window"];

  if (v32)
  {
    v33 = [(_UIOPrototypeMenuBarViewController *)self _prototypeSystemCommandWithTitle:@"Remove Window from Set" systemImageName:@"rectangle.badge.xmark" keyCombination:0];
    v65 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
    v35 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:0 options:1 children:v34];
    [array addObject:v35];

    v36 = [(_UIOPrototypeMenuBarViewController *)self _prototypeSystemCommandWithTitle:@"Move to Studio Display" systemImageName:@"display" keyCombination:0];
    v64 = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
    v38 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:0 options:1 children:v37];
    [array addObject:v38];

    v19 = [(_UIOPrototypeMenuBarViewController *)self _prototypeSystemCommandWithTitle:@"(list of app windows)" systemImageName:0 keyCombination:0];
    v63 = v19;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  }

  else
  {
    identifier5 = [menuCopy identifier];
    v40 = [identifier5 isEquivalentToUIMenuIdentifier:@"com.apple.menu.help"];

    if (v40)
    {
      session = self->_session;
      if (session && self->_uncategorizedMenuState)
      {
        uncategorizedMenu = [(_UIMainMenuSession *)session uncategorizedMenu];
        v43 = [(_UIOPrototypeMenuBarViewController *)self _uiMenuForMainMenu:uncategorizedMenu state:self->_uncategorizedMenuState];

        if ([v43 _hasVisibleChildren])
        {
          v44 = [UIImage systemImageNamed:@"command.square"];
          children2 = [v43 children];
          v46 = [UIMenu menuWithTitle:@"More Keyboard Shortcuts" image:v44 identifier:0 options:256 children:children2];
          [array addObject:v46];
        }
      }

      v19 = [(_UIOPrototypeMenuBarViewController *)self _prototypeSystemCommandWithTitle:@"Help/Tips Topics" systemImageName:@"tips" keyCombination:0];
      v62 = v19;
      v47 = MEMORY[0x1E695DEC8];
      v48 = &v62;
    }

    else
    {
      identifier6 = [menuCopy identifier];
      v50 = [identifier6 isEquivalentToUIMenuIdentifier:@"com.apple.menu.open-recent"];

      if (!v50)
      {
        goto LABEL_22;
      }

      v51 = [(_UIOPrototypeMenuBarViewController *)self _prototypeSystemCommandWithTitle:@"Sample Recent Item 1" systemImageName:@"document" keyCombination:0];
      v61[0] = v51;
      v52 = [(_UIOPrototypeMenuBarViewController *)self _prototypeSystemCommandWithTitle:@"Sample Recent Item 2" systemImageName:@"document" keyCombination:0];
      v61[1] = v52;
      v53 = [(_UIOPrototypeMenuBarViewController *)self _prototypeSystemCommandWithTitle:@"Sample Recent Item 3" systemImageName:@"document" keyCombination:0];
      v61[2] = v53;
      v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];
      v55 = [UIMenu menuWithTitle:@"Apps get Open/OpenRecent menu items if they support open in place and have declared at least one file type that the app can open. The system will automatically populate recent items.\n\nIf your app wants custom recent items image:replace the .openRecent menu with a different identifier menu (reuse this menu's title for free localization) and use an uncached deferred menu element to provide recent items.\n\nIf your app can open files but doesn't want these menus identifier:remove the Open/OpenRecent menus with the builder." options:0 children:0, 1, v54];
      [array addObject:v55];

      v19 = [(_UIOPrototypeMenuBarViewController *)self _prototypeSystemCommandWithTitle:@"Clear Recents" systemImageName:0 keyCombination:0];
      v60 = v19;
      v47 = MEMORY[0x1E695DEC8];
      v48 = &v60;
    }

    v30 = [v47 arrayWithObjects:v48 count:{1, v60}];
  }

  v56 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:0 options:1 children:v30];
  [array addObject:v56];

LABEL_21:
LABEL_22:
  uiMenu = [menuCopy uiMenu];
  v58 = [uiMenu _menuByReplacingChildren:array additionalOptions:256];

  return v58;
}

- (id)_prototypeSystemCommandWithTitle:(id)title systemImageName:(id)name keyCombination:(id)combination
{
  titleCopy = title;
  nameCopy = name;
  combinationCopy = combination;
  if (nameCopy)
  {
    v10 = [UIImage _systemImageNamed:nameCopy];
    v11 = [UIAction actionWithTitle:titleCopy image:v10 identifier:0 handler:&__block_literal_global_193];
  }

  else
  {
    v11 = [UIAction actionWithTitle:titleCopy image:0 identifier:0 handler:&__block_literal_global_193];
  }

  [v11 setSubtitle:@"System command"];
  if (combinationCopy)
  {
    v12 = [_UIMenuLeafKeyboardShortcut shortcutWithBaseKeyCombination:combinationCopy];
    [v11 _setKeyboardShortcut:v12];
  }

  return v11;
}

- (id)_uiDeferredMenuElementForMainMenuDeferredElement:(id)element parentState:(id)state
{
  elementCopy = element;
  stateCopy = state;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99___UIOPrototypeMenuBarViewController__uiDeferredMenuElementForMainMenuDeferredElement_parentState___block_invoke;
  v12[3] = &unk_1E7105280;
  objc_copyWeak(&v16, &location);
  v8 = stateCopy;
  v13 = v8;
  v9 = elementCopy;
  v14 = v9;
  selfCopy = self;
  v10 = [v9 uiDeferredMenuElementForProvider:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v10;
}

- (id)_uiMenuElementForMainMenuCommand:(id)command parentState:(id)state
{
  commandCopy = command;
  stateCopy = state;
  objc_initWeak(&location, self);
  session = self->_session;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83___UIOPrototypeMenuBarViewController__uiMenuElementForMainMenuCommand_parentState___block_invoke;
  v11[3] = &unk_1E71052F8;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  v9 = [commandCopy uiMenuLeafForCommandAndAlternatesForSession:session parentState:stateCopy primaryActionHandler:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v9;
}

- (void)serviceConnectionDidInvalidate:(id)invalidate
{
  if (self->_serviceConnection == invalidate)
  {
    [(_UIOPrototypeMenuBarViewController *)self _dismissDueToUserDismissal:0 informingApp:0];
  }
}

- (id)hostShortcutsForMainMenu
{
  v2 = [_UIMainMenuHostKeyboardShortcut alloc];
  v3 = [_UIMainMenuCommandKeyboardShortcut shortcutWithModifierFlags:0x100000 keyEquivalent:@"h"];
  v4 = [(_UIMainMenuHostKeyboardShortcut *)v2 initWithKeyboardShortcut:v3];

  v5 = [_UIMainMenuHostKeyboardShortcut alloc];
  v6 = [_UIMainMenuCommandKeyboardShortcut shortcutWithModifierFlags:1572864 keyEquivalent:@"h"];
  v7 = [(_UIMainMenuHostKeyboardShortcut *)v5 initWithKeyboardShortcut:v6];

  v8 = [_UIMainMenuHostKeyboardShortcut alloc];
  v9 = [_UIMainMenuCommandKeyboardShortcut shortcutWithModifierFlags:0x100000 keyEquivalent:@"q"];
  v10 = [(_UIMainMenuHostKeyboardShortcut *)v8 initWithKeyboardShortcut:v9];

  v11 = [_UIMainMenuHostKeyboardShortcut alloc];
  v12 = [_UIMainMenuCommandKeyboardShortcut shortcutWithModifierFlags:8650752 keyEquivalent:@"UIKeyInputLeftArrow"];
  v13 = [(_UIMainMenuHostKeyboardShortcut *)v11 initWithKeyboardShortcut:v12];

  v14 = [_UIMainMenuHostKeyboardShortcut alloc];
  v15 = [_UIMainMenuCommandKeyboardShortcut shortcutWithModifierFlags:8650752 keyEquivalent:@"UIKeyInputRightArrow"];
  v16 = [(_UIMainMenuHostKeyboardShortcut *)v14 initWithKeyboardShortcut:v15];

  v17 = [_UIMainMenuHostKeyboardShortcut alloc];
  v18 = [_UIMainMenuCommandKeyboardShortcut shortcutWithModifierFlags:0x100000 keyEquivalent:@"?"];
  v19 = [(_UIMainMenuHostKeyboardShortcut *)v17 initWithKeyboardShortcut:v18];

  v20 = [_UIMainMenuHostKeyboardShortcut alloc];
  v21 = [_UIMainMenuCommandKeyboardShortcut shortcutWithModifierFlags:0x100000 keyEquivalent:@" "];
  v22 = [(_UIMainMenuHostKeyboardShortcut *)v20 initWithKeyboardShortcut:v21];

  v23 = [MEMORY[0x1E695DFD8] setWithObjects:{v4, v7, v10, v13, v16, v19, v22, 0}];

  return v23;
}

- (id)_currentHostKeyboardShortcuts
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_host);

  if (!WeakRetained)
  {
    goto LABEL_11;
  }

  v4 = objc_loadWeakRetained(&self->_host);
  v5 = [v4 hostKeyboardShortcutsForMainMenu:self];

  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        keyboardShortcut = [v12 keyboardShortcut];
        [v6 setObject:v12 forKeyedSubscript:keyboardShortcut];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  if (v6)
  {
    v14 = [v6 copy];
  }

  else
  {
LABEL_11:
    v14 = MEMORY[0x1E695E0F8];
  }

  return v14;
}

- (void)performBaseMenuRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v8 = [_UIMainMenuBaseMenuRequestAction alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69___UIOPrototypeMenuBarViewController_performBaseMenuRequest_handler___block_invoke;
  v11[3] = &unk_1E7105320;
  objc_copyWeak(&v13, &location);
  v9 = handlerCopy;
  v12 = v9;
  v10 = [(_UIMainMenuBaseMenuRequestAction *)v8 initWithBaseMenuRequest:requestCopy handler:v11];
  [(_UIOServiceConnection *)self->_serviceConnection sendAction:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)performSessionRequest:(id)request handler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v8 = [_UIMainMenuSessionRequestAction alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68___UIOPrototypeMenuBarViewController_performSessionRequest_handler___block_invoke;
  v11[3] = &unk_1E7105208;
  objc_copyWeak(&v13, &location);
  v9 = handlerCopy;
  v12 = v9;
  v10 = [(_UIMainMenuSessionRequestAction *)v8 initWithSessionRequest:requestCopy handler:v11];
  [(_UIOServiceConnection *)self->_serviceConnection sendAction:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)performMainMenuStateRequest:(id)request responseHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  v8 = [[_UIMainMenuStateRequestAction alloc] initWithMenuStateRequest:requestCopy handler:handlerCopy];

  [(_UIOServiceConnection *)self->_serviceConnection sendAction:v8];
}

- (void)performMainMenuDeferredElementRequest:(id)request responseHandler:(id)handler
{
  handlerCopy = handler;
  requestCopy = request;
  v8 = [[_UIMainMenuDeferredElementRequestAction alloc] initWithDeferredElementRequest:requestCopy handler:handlerCopy];

  [(_UIOServiceConnection *)self->_serviceConnection sendAction:v8];
}

- (void)performMainMenuCommandInvocationRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v8 = [_UIMainMenuCommandInvocationRequestAction alloc];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94___UIOPrototypeMenuBarViewController_performMainMenuCommandInvocationRequest_responseHandler___block_invoke;
  v11[3] = &unk_1E7105348;
  objc_copyWeak(&v13, &location);
  v9 = handlerCopy;
  v12 = v9;
  v10 = [(_UIMainMenuCommandInvocationRequestAction *)v8 initWithInvocationRequest:requestCopy responseHandler:v11];
  [(_UIOServiceConnection *)self->_serviceConnection sendAction:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (_UISceneMainMenuHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end