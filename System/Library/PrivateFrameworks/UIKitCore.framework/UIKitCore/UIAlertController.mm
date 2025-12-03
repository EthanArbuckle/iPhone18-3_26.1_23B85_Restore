@interface UIAlertController
+ (UIAlertController)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle;
+ (id)_alertControllerContainedInViewController:(id)controller;
+ (id)_alertControllerWithTitle:(id)title message:(id)message;
+ (id)_createTransitioningDelegateForIdiom:(int64_t)idiom;
+ (void)registerPlatformStyleProvider:(id)provider forIdiom:(int64_t)idiom;
- (BOOL)_alignsToKeyboard;
- (BOOL)_canBePresentedAtLocation:(CGPoint)location;
- (BOOL)_hasAttributedMessage;
- (BOOL)_hasAttributedTitle;
- (BOOL)_hasContentToDisplay;
- (BOOL)_hasDetailMessage;
- (BOOL)_hasMessage;
- (BOOL)_hasTitle;
- (BOOL)_isPresented;
- (BOOL)_isPresentedAsPopover;
- (BOOL)_isSupportedInterfaceOrientation:(int64_t)orientation;
- (BOOL)_needsPreferredSizeCalculated;
- (BOOL)_shouldBecomeFirstResponder;
- (BOOL)_shouldFitWidthToContentViewControllerWidth;
- (BOOL)_shouldPreserveInputViews;
- (BOOL)_shouldReverseActions;
- (BOOL)_shouldSizeToFillSuperview;
- (BOOL)_shouldSupportReturnKeyPresses;
- (BOOL)_shouldTreatEmptyStringsAsNil;
- (BOOL)_viewControllerIsPresentedInModalPresentationContext:(id)context;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (NSArray)actions;
- (NSString)description;
- (UIAlertAction)_focusedAction;
- (UIAlertController)initWithNibName:(id)name bundle:(id)bundle;
- (UIAlertControllerCoordinatedActionPerforming)coordinatedActionPerformingDelegate;
- (UIAlertControllerVisualStyleProviding)_styleProvider;
- (UIEdgeInsets)_contentInsets;
- (UILayoutGuide)contentViewControllerLayoutGuide;
- (UIView)_dimmingView;
- (UIView)_foregroundView;
- (__CFString)_powerLoggingEventName;
- (double)_effectAlpha;
- (id)_actionForReturnKey;
- (id)_alertControllerContainer;
- (id)_alertControllerView;
- (id)_appIcon;
- (id)_appIconHeaderViewController;
- (id)_currentDescriptor;
- (id)_dismissGestureRecognizer;
- (id)_keyCommandForAction:(id)action input:(id)input modifierFlags:(int64_t)flags;
- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController;
- (id)_setView:(id)view forSystemProvidedPresentationWithDelegate:(id)delegate;
- (id)_textFieldContainingViewWithTextField:(id)field position:(int64_t)position;
- (id)platformStyleViewForAlertController:(id)controller inIdiom:(int64_t)idiom;
- (id)previewInteractionController:(id)controller viewControllerForPreviewingAtPosition:(CGPoint)position inView:(id)view presentingViewController:(id *)viewController;
- (id)visualStyleForAlertControllerStyle:(int64_t)style traitCollection:(id)collection descriptor:(id)descriptor;
- (int64_t)_buttonTypeForBackGestureForIdiom:(int64_t)idiom;
- (int64_t)_modalPresentationStyleForResolvedStyle;
- (void)_action:(id)_action changedToKeyCommandWithInput:(id)input modifierFlags:(int64_t)flags;
- (void)_addActionWithTitle:(id)title image:(id)image style:(int64_t)style handler:(id)handler;
- (void)_addActionWithTitle:(id)title style:(int64_t)style handler:(id)handler;
- (void)_addActionWithTitle:(id)title style:(int64_t)style handler:(id)handler shouldDismissHandler:(id)dismissHandler;
- (void)_addKeyCommandForAction:(id)action withInput:(id)input modifierFlags:(int64_t)flags;
- (void)_addReturnKeyCommandIfAppropriate;
- (void)_addSectionDelimiter;
- (void)_attemptAnimatedDismissWithGestureRecognizer:(id)recognizer;
- (void)_becomeFirstResponderIfAppropriate;
- (void)_beginNoPresentingViewControllerPresentation:(id)presentation;
- (void)_childViewController:(id)controller willTransitionToSize:(CGSize)size withAnimations:(id)animations;
- (void)_clearActionHandlers;
- (void)_contentViewControllerWillTransitionToSize:(CGSize)size withAnimations:(id)animations;
- (void)_didParentTextFieldViewController;
- (void)_dismissAnimated:(BOOL)animated triggeringAction:(id)action triggeredByPopoverDimmingView:(BOOL)view dismissCompletion:(id)completion;
- (void)_dismissFromBackButton:(id)button;
- (void)_dismissFromPopoverDimmingView;
- (void)_dismissWithCancelOrEmptyAction;
- (void)_flipFrameForShimDismissalIfNecessary;
- (void)_getRotationContentSettings:(id *)settings;
- (void)_handleKeyCommand:(id)command;
- (void)_handleReturn;
- (void)_headerContentViewControllerWillTransitionToSize:(CGSize)size withAnimations:(id)animations;
- (void)_installBackGestureRecognizer;
- (void)_invokeHandlersForAction:(id)action;
- (void)_logBeingDismissed;
- (void)_logBeingPresented;
- (void)_performAction:(id)action invokeActionBlock:(id)block dismissAndPerformActionIfNotAlreadyPerformed:(id)performed;
- (void)_performBatchActionChangesWithBlock:(id)block;
- (void)_postDidBeginSystemProvidedDismissalOfAlertController;
- (void)_postWillBeginSystemProvidedDismissalOfAlertController;
- (void)_preserveInputViewsAnimated:(BOOL)animated;
- (void)_recomputePreferredContentSize;
- (void)_reevaluateResolvedStyle;
- (void)_removeAllActions;
- (void)_removeKeyCommandForAction:(id)action;
- (void)_resolvedStyleChanged;
- (void)_restoreInputViewsAnimated:(BOOL)animated;
- (void)_setActions:(id)actions;
- (void)_setAttributedDetailMessage:(id)message;
- (void)_setAttributedMessage:(id)message;
- (void)_setAttributedTitle:(id)title;
- (void)_setEffectAlpha:(double)alpha;
- (void)_setHeaderContentViewController:(id)controller;
- (void)_setHidden:(BOOL)hidden;
- (void)_setIndexesOfActionSectionSeparators:(id)separators;
- (void)_setSeparatedHeaderContentViewController:(id)controller;
- (void)_setShouldReverseActions:(BOOL)actions;
- (void)_setTitleLineBreakMode:(int64_t)mode;
- (void)_setTitleMaximumLineCount:(int64_t)count;
- (void)_uninstallBackGestureRecognizer;
- (void)_updateModalPresentationStyle;
- (void)_updateProvidedStyle;
- (void)_updateProvidedStyleWithTraitCollection:(id)collection;
- (void)_updateShouldAlignToKeyboard;
- (void)_updateViewFrameForLandscapePresentationInShimIfNecessary;
- (void)_userInterfaceIdiomChanged;
- (void)addAction:(UIAlertAction *)action;
- (void)addTextFieldWithConfigurationHandler:(void *)configurationHandler;
- (void)dealloc;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)previewInteractionController:(id)controller willPresentViewController:(id)viewController forPosition:(CGPoint)position inSourceView:(id)view;
- (void)setContentViewController:(id)controller;
- (void)setMessage:(NSString *)message;
- (void)setModalPresentationStyle:(int64_t)style;
- (void)setPreferredAction:(UIAlertAction *)preferredAction;
- (void)setSpringLoaded:(BOOL)loaded;
- (void)setTextFieldsCanBecomeFirstResponder:(BOOL)responder;
- (void)setTitle:(NSString *)title;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation UIAlertController

- (UIAlertController)initWithNibName:(id)name bundle:(id)bundle
{
  v28[1] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = UIAlertController;
  v4 = [(UIViewController *)&v27 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    _UIApplicationAssertForExtensionType(&unk_1EFE2B458);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v6->_actions;
    v6->_actions = v7;

    indexSet = [MEMORY[0x1E696AC90] indexSet];
    indexesOfActionSectionSeparators = v6->_indexesOfActionSectionSeparators;
    v6->_indexesOfActionSectionSeparators = indexSet;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    actionToKeyCommandsDictionary = v6->_actionToKeyCommandsDictionary;
    v6->_actionToKeyCommandsDictionary = v11;

    v13 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];
    keyCommandToActionMapTable = v6->_keyCommandToActionMapTable;
    v6->_keyCommandToActionMapTable = v13;

    v15 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    linkedAlertControllers = v6->_linkedAlertControllers;
    v6->_linkedAlertControllers = v15;

    v17 = objc_alloc_init(_UIAlertControllerTextFieldViewController);
    textFieldViewController = v6->_textFieldViewController;
    v6->_textFieldViewController = v17;

    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    actionsWithInvokedHandlers = v6->_actionsWithInvokedHandlers;
    v6->_actionsWithInvokedHandlers = weakObjectsPointerArray;

    v21 = +[UIDevice currentDevice];
    v22 = +[UIAlertController _createTransitioningDelegateForIdiom:](UIAlertController, "_createTransitioningDelegateForIdiom:", [v21 userInterfaceIdiom]);
    ownedTransitioningDelegate = v6->_ownedTransitioningDelegate;
    v6->_ownedTransitioningDelegate = v22;

    [(UIViewController *)v6 setTransitioningDelegate:v6->_ownedTransitioningDelegate];
    [(UIAlertController *)v6 _updateModalPresentationStyle];
    [(UIAlertController *)v6 set_shouldFlipFrameForShimDismissal:0];
    v6->_titleMaximumLineCount = -1;
    v6->_titleLineBreakMode = 4;
    v6->__shouldAlignToKeyboard = 1;
    v6->__shouldInvokeCancelActionOnDimmingViewTap = 1;
    v28[0] = 0x1EFE32398;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v25 = [(UIViewController *)v6 _registerForTraitTokenChanges:v24 withTarget:v6 action:sel__userInterfaceIdiomChanged];
  }

  return v5;
}

+ (UIAlertController)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle
{
  v7 = title;
  v8 = message;
  v9 = objc_alloc_init(objc_opt_class());
  if ([(NSString *)v7 length]>= 0x3E8)
  {
    v10 = [(NSString *)v7 substringToIndex:999];

    v7 = v10;
  }

  if ([(NSString *)v8 length]>> 4 >= 0x271)
  {
    v11 = [(NSString *)v8 substringToIndex:9999];

    v8 = v11;
  }

  [v9 setTitle:v7];
  [v9 setMessage:v8];
  [v9 setPreferredStyle:preferredStyle];

  return v9;
}

- (void)addAction:(UIAlertAction *)action
{
  v10 = action;
  if ([(UIAlertAction *)v10 style]== UIAlertActionStyleCancel)
  {
    if (self->_cancelAction)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIAlertController.m" lineNumber:331 description:@"UIAlertController can only have one action with a style of UIAlertActionStyleCancel"];
    }

    _visualStyle = [(UIAlertController *)self _visualStyle];
    _keyCommandInputForCancelAction = [_visualStyle _keyCommandInputForCancelAction];
    [(UIAlertAction *)v10 _setKeyCommandInput:_keyCommandInputForCancelAction modifierFlags:0];

    [(UIAlertController *)self setCancelAction:v10];
  }

  [(NSMutableArray *)self->_actions addObject:v10];
  [(UIAlertAction *)v10 _setAlertController:self];
  _keyCommandInput = [(UIAlertAction *)v10 _keyCommandInput];
  [(UIAlertController *)self _action:v10 changedToKeyCommandWithInput:_keyCommandInput modifierFlags:[(UIAlertAction *)v10 _keyCommandModifierFlags]];

  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  [_alertControllerView _actionsChanged];

  [(UIAlertController *)self _updateProvidedStyle];
}

+ (id)_alertControllerWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  v7 = [objc_opt_class() alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:0];

  return v7;
}

- (void)_addActionWithTitle:(id)title style:(int64_t)style handler:(id)handler
{
  handlerCopy = handler;
  v9 = [UIAlertAction actionWithTitle:title style:style handler:0];
  [v9 setSimpleHandler:handlerCopy];

  [(UIAlertController *)self addAction:v9];
}

- (void)_addActionWithTitle:(id)title style:(int64_t)style handler:(id)handler shouldDismissHandler:(id)dismissHandler
{
  dismissHandlerCopy = dismissHandler;
  handlerCopy = handler;
  v12 = [UIAlertAction actionWithTitle:title style:style handler:0];
  [v12 setSimpleHandler:handlerCopy];

  [v12 setShouldDismissHandler:dismissHandlerCopy];
  [(UIAlertController *)self addAction:v12];
}

- (void)_addActionWithTitle:(id)title image:(id)image style:(int64_t)style handler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  v12 = [UIAlertAction actionWithTitle:title style:style handler:0];
  [v12 setSimpleHandler:handlerCopy];

  [v12 setImage:imageCopy];
  [(UIAlertController *)self addAction:v12];
}

- (void)_setActions:(id)actions
{
  actionsCopy = MEMORY[0x1E695E0F0];
  if (actions)
  {
    actionsCopy = actions;
  }

  v5 = actionsCopy;
  if (([(NSMutableArray *)self->_actions isEqual:v5]& 1) == 0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __33__UIAlertController__setActions___block_invoke;
    v6[3] = &unk_1E70F35B8;
    v6[4] = self;
    v7 = v5;
    [(UIAlertController *)self _performBatchActionChangesWithBlock:v6];
  }
}

void __33__UIAlertController__setActions___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _removeAllActions];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(a1 + 40);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) addAction:{*(*(&v7 + 1) + 8 * v6++), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)_performBatchActionChangesWithBlock:(id)block
{
  blockCopy = block;
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  if (_alertControllerView)
  {
    ++self->_batchActionChangesInProgressCount;
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __57__UIAlertController__performBatchActionChangesWithBlock___block_invoke;
    v9 = &unk_1E70F4A50;
    selfCopy = self;
    v11 = blockCopy;
    [_alertControllerView _performBatchActionChangesWithBlock:&v6];
    [(UIAlertController *)self _updateProvidedStyle:v6];
  }

  else
  {
    blockCopy[2](blockCopy);
  }
}

uint64_t __57__UIAlertController__performBatchActionChangesWithBlock___block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 40) + 16))();
  --*(*(a1 + 32) + 1120);
  return result;
}

- (void)_removeAllActions
{
  [(NSMutableArray *)self->_actions removeAllObjects];
  cancelAction = self->_cancelAction;
  self->_cancelAction = 0;
}

- (void)setPreferredAction:(UIAlertAction *)preferredAction
{
  v11 = preferredAction;
  preferredAction = [(UIAlertController *)self preferredAction];

  v7 = v11;
  if (preferredAction != v11)
  {
    v8 = [(NSMutableArray *)self->_actions containsObject:v11];
    if (v11 && (v8 & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"UIAlertController.m" lineNumber:436 description:@"The -preferredAction of an alert controller must be contained in the -actions array or be nil."];
    }

    objc_storeStrong(&self->_preferredAction, preferredAction);
    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    [_alertControllerView _updatePreferredAction];

    v7 = v11;
  }
}

- (void)_addSectionDelimiter
{
  v4 = [(NSIndexSet *)self->_indexesOfActionSectionSeparators mutableCopy];
  actions = [(UIAlertController *)self actions];
  [v4 addIndex:{objc_msgSend(actions, "count")}];

  [(UIAlertController *)self _setIndexesOfActionSectionSeparators:v4];
}

- (void)_setIndexesOfActionSectionSeparators:(id)separators
{
  separatorsCopy = separators;
  if (![(NSIndexSet *)self->_indexesOfActionSectionSeparators isEqualToIndexSet:?])
  {
    objc_storeStrong(&self->_indexesOfActionSectionSeparators, separators);
    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    [_alertControllerView _actionsChanged];
  }
}

- (UILayoutGuide)contentViewControllerLayoutGuide
{
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  contentViewControllerLayoutGuide = [_alertControllerView contentViewControllerLayoutGuide];

  return contentViewControllerLayoutGuide;
}

- (void)_action:(id)_action changedToKeyCommandWithInput:(id)input modifierFlags:(int64_t)flags
{
  inputCopy = input;
  _actionCopy = _action;
  [(UIAlertController *)self _removeKeyCommandForAction:_actionCopy];
  [(UIAlertController *)self _addKeyCommandForAction:_actionCopy withInput:inputCopy modifierFlags:flags];
}

- (void)_addKeyCommandForAction:(id)action withInput:(id)input modifierFlags:(int64_t)flags
{
  actionCopy = action;
  inputCopy = input;
  if ([inputCopy length])
  {
    v9 = [(UIAlertController *)self _keyCommandForAction:actionCopy input:inputCopy modifierFlags:flags];
    [(UIViewController *)self addKeyCommand:v9];
  }
}

- (void)_removeKeyCommandForAction:(id)action
{
  actionCopy = action;
  v4 = [(NSMutableDictionary *)self->_actionToKeyCommandsDictionary objectForKey:?];
  if (v4)
  {
    [(NSMapTable *)self->_keyCommandToActionMapTable removeObjectForKey:v4];
    [(UIViewController *)self removeKeyCommand:v4];
  }

  [(NSMutableDictionary *)self->_actionToKeyCommandsDictionary removeObjectForKey:actionCopy];
}

- (id)_keyCommandForAction:(id)action input:(id)input modifierFlags:(int64_t)flags
{
  actionCopy = action;
  inputCopy = input;
  v10 = [UIKeyCommand keyCommandWithInput:inputCopy modifierFlags:flags action:sel__handleKeyCommand_];
  if ([actionCopy style] == 1 && objc_msgSend(inputCopy, "isEqualToString:", @"UIKeyInputEscape"))
  {
    [v10 setDiscoverabilityTitle:&stru_1EFB14550];
  }

  else
  {
    title = [actionCopy title];
    [v10 setDiscoverabilityTitle:title];
  }

  [(NSMapTable *)self->_keyCommandToActionMapTable setObject:actionCopy forKey:v10];

  return v10;
}

- (void)_handleKeyCommand:(id)command
{
  v4 = [(NSMapTable *)self->_keyCommandToActionMapTable objectForKey:command];
  if ([v4 isEnabled])
  {
    [(UIAlertController *)self _dismissAnimated:1 triggeringAction:v4];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sel__handleReturn == action)
  {
    textFields = [(UIAlertController *)self textFields];
    v4 = [textFields count] == 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UIAlertController;
    return [UIViewController canPerformAction:sel_canPerformAction_withSender_ withSender:?];
  }

  return v4;
}

- (void)_handleReturn
{
  _actionForReturnKey = [(UIAlertController *)self _actionForReturnKey];
  if (_actionForReturnKey)
  {
    v4 = _actionForReturnKey;
    [(UIAlertController *)self _dismissAnimated:1 triggeringAction:_actionForReturnKey];
    _actionForReturnKey = v4;
  }
}

- (void)_addReturnKeyCommandIfAppropriate
{
  if ([(UIAlertController *)self _resolvedStyle]== 1)
  {
    _focusSystem = [(UIViewController *)self _focusSystem];

    if (!_focusSystem)
    {
      _returnKeyCommand = [(UIAlertController *)self _returnKeyCommand];
      [(UIViewController *)self addKeyCommand:_returnKeyCommand];
    }
  }
}

- (NSArray)actions
{
  _actions = [(UIAlertController *)self _actions];
  v3 = [_actions copy];

  return v3;
}

- (id)_actionForReturnKey
{
  preferredAction = [(UIAlertController *)self preferredAction];

  if (preferredAction)
  {
    preferredAction2 = [(UIAlertController *)self preferredAction];
    goto LABEL_11;
  }

  actions = [(UIAlertController *)self actions];
  array = [MEMORY[0x1E695DF70] array];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__UIAlertController__actionForReturnKey__block_invoke;
  v11[3] = &unk_1E70F48F8;
  v7 = array;
  v12 = v7;
  [actions enumerateObjectsUsingBlock:v11];
  v8 = [v7 count];
  if (v8 != 2)
  {
    if (v8 != 1)
    {
      preferredAction2 = 0;
      goto LABEL_10;
    }

    firstObject = [v7 firstObject];
    goto LABEL_8;
  }

  preferredAction2 = [(UIAlertController *)self _cancelAction];

  if (preferredAction2)
  {
    firstObject = [v7 objectAtIndex:{objc_msgSend(v7, "indexOfObjectPassingTest:", &__block_literal_global_20)}];
LABEL_8:
    preferredAction2 = firstObject;
  }

LABEL_10:

LABEL_11:

  return preferredAction2;
}

void __40__UIAlertController__actionForReturnKey__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEnabled])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (void)addTextFieldWithConfigurationHandler:(void *)configurationHandler
{
  v8 = configurationHandler;
  if ([(UIAlertController *)self preferredStyle]!= UIAlertControllerStyleAlert)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIAlertController.m" lineNumber:632 description:@"Text fields can only be added to an alert controller of style UIAlertControllerStyleAlert"];
  }

  [(_UIAlertControllerTextFieldViewController *)self->_textFieldViewController setContainer:self];
  v5 = [(_UIAlertControllerTextFieldViewController *)self->_textFieldViewController addTextFieldWithPlaceholder:0];
  if (v8)
  {
    v8[2](v8, v5);
  }

  [(UIAlertController *)self _updateShouldAlignToKeyboard];
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  [_alertControllerView _textFieldsChanged];
}

- (BOOL)_shouldSupportReturnKeyPresses
{
  traitCollection = [(UIViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 2)
  {
    v4 = 0;
  }

  else
  {
    traitCollection2 = [(UIViewController *)self traitCollection];
    v4 = [traitCollection2 userInterfaceIdiom] != 8;
  }

  return v4;
}

- (id)_textFieldContainingViewWithTextField:(id)field position:(int64_t)position
{
  fieldCopy = field;
  _visualStyle = [(UIAlertController *)self _visualStyle];
  v8 = [_visualStyle textFieldContainingViewWithTextField:fieldCopy position:position];

  return v8;
}

- (void)_didParentTextFieldViewController
{
  [(UIViewController *)self addChildViewController:self->_textFieldViewController];
  textFieldViewController = self->_textFieldViewController;

  [(UIViewController *)textFieldViewController didMoveToParentViewController:self];
}

- (void)setTextFieldsCanBecomeFirstResponder:(BOOL)responder
{
  textFieldViewController = self->_textFieldViewController;
  if (textFieldViewController)
  {
    [(_UIAlertControllerTextFieldViewController *)textFieldViewController setTextFieldsCanBecomeFirstResponder:responder];
  }
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = UIAlertController;
  v3 = [(UIAlertController *)&v8 description];
  if (os_variant_has_internal_diagnostics())
  {
    title = [(UIViewController *)self title];
    message = [(UIAlertController *)self message];
    v4 = [v3 stringByAppendingFormat:@" title=%@ message=%@", title, message];
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_presenter)
  {
    [_UIAlertControllerShimPresenter _removePresenter:?];
    presenter = self->_presenter;
    self->_presenter = 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_actions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        [v9 _setAlertController:0];
        [(UIAlertController *)self _removeKeyCommandForAction:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  [(UIAlertController *)self _uninstallBackGestureRecognizer];
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  [_alertControllerView setAlertController:0];

  [(UIAlertController *)self _clearActionHandlers];
  [(_UIAlertControllerTextFieldViewController *)self->_textFieldViewController setContainer:0];
  ownedTransitioningDelegate = self->_ownedTransitioningDelegate;
  self->_ownedTransitioningDelegate = 0;

  v12.receiver = self;
  v12.super_class = UIAlertController;
  [(UIViewController *)&v12 dealloc];
}

- (BOOL)_isSupportedInterfaceOrientation:(int64_t)orientation
{
  presentingViewController = [(UIViewController *)self presentingViewController];
  v6 = presentingViewController;
  if (presentingViewController)
  {
    v7 = [presentingViewController _isSupportedInterfaceOrientation:orientation];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIAlertController;
    v7 = [(UIViewController *)&v10 _isSupportedInterfaceOrientation:orientation];
  }

  v8 = v7;

  return v8;
}

- (void)_getRotationContentSettings:(id *)settings
{
  v23 = *MEMORY[0x1E69E9840];
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    view = [(UIViewController *)self view];
    window = [view window];
    v8 = window;
    if (has_internal_diagnostics)
    {
      if (window)
      {
        view2 = [(UIViewController *)self view];
        window2 = [view2 window];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
LABEL_12:
          settings->var6 = 0;
          return;
        }

        view = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(view, OS_LOG_TYPE_FAULT))
        {
          view3 = [(UIViewController *)self view];
          window3 = [view3 window];
          v21 = 138412290;
          v22 = window3;
          _os_log_fault_impl(&dword_188A29000, view, OS_LOG_TYPE_FAULT, "Surprising window for legacy alert presentation: %@", &v21, 0xCu);
        }
      }
    }

    else if (window)
    {
      view4 = [(UIViewController *)self view];
      window4 = [view4 window];
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      if ((v11 & 1) == 0)
      {
        v12 = *(__UILogGetCategoryCachedImpl("Assert", &_getRotationContentSettings____s_category) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = v12;
          view5 = [(UIViewController *)self view];
          window5 = [view5 window];
          v21 = 138412290;
          v22 = window5;
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Surprising window for legacy alert presentation: %@", &v21, 0xCu);
        }
      }

      goto LABEL_12;
    }

    goto LABEL_12;
  }
}

- (void)loadView
{
  [(UIAlertController *)self _updateProvidedStyle];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  _visualStyle = [(UIAlertController *)self _visualStyle];

  if (has_internal_diagnostics)
  {
    if (!_visualStyle)
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "We must we have a _visualStyle before creating the _UIAlertControllerView", buf, 2u);
      }
    }
  }

  else if (!_visualStyle)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &loadView___s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "We must we have a _visualStyle before creating the _UIAlertControllerView", buf, 2u);
    }
  }

  traitCollection = [(UIViewController *)self traitCollection];
  v6 = -[UIAlertController platformStyleViewForAlertController:inIdiom:](self, "platformStyleViewForAlertController:inIdiom:", self, [traitCollection userInterfaceIdiom]);

  if (objc_opt_respondsToSelector())
  {
    v7 = v6;
    [v7 setSpringLoaded:{-[UIAlertController isSpringLoaded](self, "isSpringLoaded")}];
  }

  [v6 setAlertController:self];
  [(UIViewController *)self setView:v6];
  _screen = [(UIViewController *)self _screen];
  [_screen bounds];
  [v6 setFrame:?];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __29__UIAlertController_loadView__block_invoke;
  v13[3] = &unk_1E70F3590;
  v14 = v6;
  v9 = v6;
  [UIView _performSystemAppearanceModifications:v13];
  [(UIAlertController *)self _updateShouldAlignToKeyboard];
  [v9 _actionsChanged];
  [v9 _textFieldsChanged];
  _visualStyle2 = [(UIAlertController *)self _visualStyle];
  [v9 _setVisualStyle:_visualStyle2];
}

uint64_t __29__UIAlertController_loadView__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasDimmingView:{+[UIAlertController _shouldUsePresentationController](UIAlertController, "_shouldUsePresentationController") ^ 1}];
  v2 = *(a1 + 32);

  return [v2 setShouldHaveBackdropView:1];
}

- (void)_updateShouldAlignToKeyboard
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__UIAlertController__updateShouldAlignToKeyboard__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView _performSystemAppearanceModifications:v2];
}

void __49__UIAlertController__updateShouldAlignToKeyboard__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _alertControllerView];
  [v2 setAlignsToKeyboard:{objc_msgSend(*(a1 + 32), "_alignsToKeyboard")}];
}

- (BOOL)_alignsToKeyboard
{
  _window = [(UIViewController *)self _window];
  if ([_window _isHostedInAnotherProcess])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [_window _windowOwnsInterfaceOrientation] ^ 1;
  }

  if ([(UIAlertController *)self _shouldAlignToKeyboard])
  {
    contentViewController = [(UIAlertController *)self contentViewController];
    textFields = [(UIAlertController *)self textFields];
    v7 = [textFields count];
    _visualStyle = [(UIAlertController *)self _visualStyle];
    placementAvoidsKeyboard = [_visualStyle placementAvoidsKeyboard];
    if (contentViewController)
    {
      v10 = 1;
    }

    else
    {
      v10 = v4;
    }

    if (v7)
    {
      v10 = 1;
    }

    v11 = v10 & placementAvoidsKeyboard;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_setShouldReverseActions:(BOOL)actions
{
  actionsCopy = actions;
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  [_alertControllerView _setActionsReversed:actionsCopy];
}

- (BOOL)_shouldReverseActions
{
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  _actionsReversed = [_alertControllerView _actionsReversed];

  return _actionsReversed;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = UIAlertController;
  [(UIViewController *)&v16 viewDidLoad];
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  traitCollection = [(UIViewController *)self traitCollection];
  v5 = -[UIAlertController _idiomSupportsBackGesture:](self, "_idiomSupportsBackGesture:", [traitCollection userInterfaceIdiom]);

  if (v5)
  {
    [(UIAlertController *)self _installBackGestureRecognizer];
  }

  title = [(UIViewController *)self title];

  if (title)
  {
    title2 = [(UIViewController *)self title];
    [_alertControllerView _setTitle:title2];
  }

  message = [(UIAlertController *)self message];

  if (message)
  {
    message2 = [(UIAlertController *)self message];
    [_alertControllerView _setMessage:message2];
  }

  _attributedTitle = [(UIAlertController *)self _attributedTitle];

  if (_attributedTitle)
  {
    _attributedTitle2 = [(UIAlertController *)self _attributedTitle];
    [_alertControllerView _setAttributedTitle:_attributedTitle2];
  }

  _attributedMessage = [(UIAlertController *)self _attributedMessage];

  if (_attributedMessage)
  {
    _attributedMessage2 = [(UIAlertController *)self _attributedMessage];
    [_alertControllerView _setAttributedMessage:_attributedMessage2];
  }

  _attributedDetailMessage = [(UIAlertController *)self _attributedDetailMessage];

  if (_attributedDetailMessage)
  {
    _attributedDetailMessage2 = [(UIAlertController *)self _attributedDetailMessage];
    [_alertControllerView _setAttributedDetailMessage:_attributedDetailMessage2];
  }
}

- (id)_alertControllerView
{
  if ([(UIViewController *)self isViewLoaded])
  {
    view = [(UIViewController *)self view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (BOOL)_needsPreferredSizeCalculated
{
  if ([(UIViewController *)self _isInPopoverPresentation])
  {
    return 1;
  }

  return [(UIAlertController *)self _isPresentedAsPopover];
}

- (void)_recomputePreferredContentSize
{
  self->_isInRecomputePreferredContentSize = 1;
  if ([(UIAlertController *)self _needsPreferredSizeCalculated])
  {
    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    [_alertControllerView systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    v5 = v4;
    v7 = v6;

    [(UIViewController *)self setPreferredContentSize:v5, v7];
    [(UIViewController *)self setContentSizeForViewInPopover:v5, v7];
  }

  self->_isInRecomputePreferredContentSize = 0;
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = UIAlertController;
  [(UIViewController *)&v6 viewWillLayoutSubviews];
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  [(UIAlertController *)self _resolvedStyleChanged];
  [(UIAlertController *)self _reevaluateResolvedStyle];
  if ([_alertControllerView conformsToProtocol:&unk_1EFF9DFA0])
  {
    v4 = _alertControllerView;
    v5 = v4;
    if (self->_separatedHeaderContentViewController)
    {
      [v4 _addSeparatedHeaderContentViewControllerToViewHierarchyIfNecessary];
    }

    if (self->_headerContentViewController)
    {
      [v5 _addHeaderContentViewControllerToViewHierarchyIfNecessary];
    }
  }

  if ([_alertControllerView conformsToProtocol:&unk_1EFF9E0A8] && self->_contentViewController)
  {
    [_alertControllerView _addContentViewControllerToViewHierarchyIfNecessary];
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = UIAlertController;
  [(UIViewController *)&v6 viewDidLayoutSubviews];
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  if ([_alertControllerView conformsToProtocol:&unk_1EFF9DFA0])
  {
    [_alertControllerView _recomputeActionMetrics];
  }

  window = [_alertControllerView window];
  if (window)
  {
    isInRecomputePreferredContentSize = self->_isInRecomputePreferredContentSize;

    if (!isInRecomputePreferredContentSize)
    {
      [(UIAlertController *)self _recomputePreferredContentSize];
    }
  }

  if (_UISolariumEnabled())
  {
    [_alertControllerView _updateTextAlignmentAfterLayout];
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v9.receiver = self;
  v9.super_class = UIAlertController;
  [(UIViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if ([(UIAlertController *)self _shouldDismissOnSizeChange])
  {
    [(UIAlertController *)self _dismissWithCancelOrEmptyAction];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__UIAlertController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E70F3B98;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:0];
}

void __72__UIAlertController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _alertControllerView];
  [v1 _actionLayoutDirectionChanged];
}

- (void)_reevaluateResolvedStyle
{
  preferredStyle = [(UIAlertController *)self preferredStyle];
  resolvedStyle = self->_resolvedStyle;
  self->_resolvedStyle = preferredStyle;
  if (_UIAppUseModernRotationAndPresentationBehaviors() || [(UIViewController *)self isViewLoaded])
  {
    [(UIAlertController *)self _updateModalPresentationStyle];
  }

  if (resolvedStyle != preferredStyle)
  {

    [(UIAlertController *)self _resolvedStyleChanged];
  }
}

- (void)_updateProvidedStyleWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_batchActionChangesInProgressCount <= 0)
  {
    v20 = collectionCopy;
    _resolvedStyle = [(UIAlertController *)self _resolvedStyle];
    _currentDescriptor = [(UIAlertController *)self _currentDescriptor];
    _styleProvider = [(UIAlertController *)self _styleProvider];
    v8 = [_styleProvider visualStyleForAlertControllerStyle:_resolvedStyle traitCollection:v20 descriptor:_currentDescriptor];
    v9 = [v8 copy];

    if (!v9)
    {
      v10 = [(UIAlertController *)self visualStyleForAlertControllerStyle:_resolvedStyle traitCollection:v20 descriptor:_currentDescriptor];
      if (!v10)
      {
LABEL_12:

        collectionCopy = v20;
        goto LABEL_13;
      }

      v9 = v10;
    }

    [v9 setTraitCollection:v20];
    [v9 setDescriptor:_currentDescriptor];
    _visualStyle = [(UIAlertController *)self _visualStyle];
    v12 = [_visualStyle isEqual:v9];

    if ((v12 & 1) == 0)
    {
      [(UIAlertController *)self _setVisualStyle:v9];
      [(UIAlertController *)self _updateShouldAlignToKeyboard];
    }

    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    _visualStyle2 = [_alertControllerView _visualStyle];
    v15 = [_visualStyle2 isEqual:v9];

    if ((v15 & 1) == 0)
    {
      [_alertControllerView _setVisualStyle:v9];
    }

    visualStyle = [(_UIAlertControllerTextFieldViewController *)self->_textFieldViewController visualStyle];
    v17 = [visualStyle isEqual:v9];

    if ((v17 & 1) == 0)
    {
      [(UIAlertController *)self _updateTextFieldViewControllerWithVisualStyle:v9];
    }

    _headerContentViewController = [(UIAlertController *)self _headerContentViewController];
    [_headerContentViewController _containingAlertControllerDidChangeVisualStyle:v9];

    contentViewController = [(UIAlertController *)self contentViewController];
    [contentViewController _containingAlertControllerDidChangeVisualStyle:v9];

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_updateProvidedStyle
{
  traitCollection = [(UIViewController *)self traitCollection];
  [(UIAlertController *)self _updateProvidedStyleWithTraitCollection:traitCollection];
}

- (id)_currentDescriptor
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(UIAlertControllerDescriptor);
  _headerContentViewController = [(UIAlertController *)self _headerContentViewController];
  [(UIAlertControllerDescriptor *)v3 setHasHeaderContentViewController:_headerContentViewController != 0];

  [(UIAlertControllerDescriptor *)v3 setHasTitle:[(UIAlertController *)self _hasTitle]];
  [(UIAlertControllerDescriptor *)v3 setHasMessage:[(UIAlertController *)self _hasMessage]];
  contentViewController = [(UIAlertController *)self contentViewController];
  [(UIAlertControllerDescriptor *)v3 setHasContentViewController:contentViewController != 0];

  actions = [(UIAlertController *)self actions];
  -[UIAlertControllerDescriptor setNumberOfActions:](v3, "setNumberOfActions:", [actions count]);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  actions2 = [(UIAlertController *)self actions];
  v8 = [actions2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(actions2);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if ([v13 style] == 1)
        {
          _visualStyle = [(UIAlertController *)self _visualStyle];
          v15 = [_visualStyle hideCancelAction:v13 inAlertController:self];

          if (v15)
          {
            continue;
          }
        }

        ++v10;
      }

      v9 = [actions2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  [(UIAlertControllerDescriptor *)v3 setNumberOfVisibleActions:v10];
  _existingView = [(UIViewController *)self _existingView];
  superview = [_existingView superview];
  [superview safeAreaInsets];
  [(UIAlertControllerDescriptor *)v3 setContainerViewSafeAreaInsets:?];

  _window = [(UIViewController *)self _window];
  -[UIAlertControllerDescriptor setApplicationIsFullscreen:](v3, "setApplicationIsFullscreen:", [_window _windowOwnsInterfaceOrientation]);

  _existingView2 = [(UIViewController *)self _existingView];
  traitCollection = [_existingView2 traitCollection];
  -[UIAlertControllerDescriptor setIsPad:](v3, "setIsPad:", [traitCollection userInterfaceIdiom] == 1);

  textFields = [(UIAlertController *)self textFields];
  -[UIAlertControllerDescriptor setHasTextfields:](v3, "setHasTextfields:", [textFields count] != 0);

  -[UIAlertControllerDescriptor setIsSystemAlert:](v3, "setIsSystemAlert:", [UIApp _isSpringBoard]);

  return v3;
}

- (void)_resolvedStyleChanged
{
  [(UIAlertController *)self _updateProvidedStyle];

  [(UIAlertController *)self _updateModalPresentationStyle];
}

- (void)_userInterfaceIdiomChanged
{
  [(UIAlertController *)self _updateProvidedStyle];
  traitCollection = [(UIViewController *)self traitCollection];
  v4 = -[UIAlertController _idiomSupportsBackGesture:](self, "_idiomSupportsBackGesture:", [traitCollection userInterfaceIdiom]);

  if (v4)
  {

    [(UIAlertController *)self _installBackGestureRecognizer];
  }

  else
  {

    [(UIAlertController *)self _uninstallBackGestureRecognizer];
  }
}

- (int64_t)_buttonTypeForBackGestureForIdiom:(int64_t)idiom
{
  if (idiom == 8 || idiom == 2)
  {
    return 5;
  }

  else
  {
    return 7;
  }
}

- (void)_installBackGestureRecognizer
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (!self->_backButtonDismissGestureRecognizer)
  {
    v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__dismissFromBackButton_];
    backButtonDismissGestureRecognizer = self->_backButtonDismissGestureRecognizer;
    self->_backButtonDismissGestureRecognizer = v3;

    v5 = self->_backButtonDismissGestureRecognizer;
    v6 = MEMORY[0x1E696AD98];
    traitCollection = [(UIViewController *)self traitCollection];
    v8 = [v6 numberWithInteger:{-[UIAlertController _buttonTypeForBackGestureForIdiom:](self, "_buttonTypeForBackGestureForIdiom:", objc_msgSend(traitCollection, "userInterfaceIdiom"))}];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(UITapGestureRecognizer *)v5 setAllowedPressTypes:v9];
  }

  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  [_alertControllerView addGestureRecognizer:self->_backButtonDismissGestureRecognizer];
}

- (void)_uninstallBackGestureRecognizer
{
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  [_alertControllerView removeGestureRecognizer:self->_backButtonDismissGestureRecognizer];

  backButtonDismissGestureRecognizer = self->_backButtonDismissGestureRecognizer;
  self->_backButtonDismissGestureRecognizer = 0;
}

+ (void)registerPlatformStyleProvider:(id)provider forIdiom:(int64_t)idiom
{
  providerCopy = provider;
  v5 = qword_1ED499BC8;
  if (!qword_1ED499BC8)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = qword_1ED499BC8;
    qword_1ED499BC8 = dictionary;

    v5 = qword_1ED499BC8;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  [v5 setObject:providerCopy forKey:v8];
}

+ (id)_createTransitioningDelegateForIdiom:(int64_t)idiom
{
  v3 = qword_1ED499BC8;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  v5 = [v3 objectForKey:v4];

  if (!v5 || (objc_opt_respondsToSelector() & 1) == 0 || ([v5 preferredTransitioningDelegate], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_alloc_init(_UIAlertControllerTransitioningDelegate);
  }

  return v6;
}

- (id)visualStyleForAlertControllerStyle:(int64_t)style traitCollection:(id)collection descriptor:(id)descriptor
{
  v22 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  descriptorCopy = descriptor;
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
  if (userInterfaceIdiom == -1)
  {
    v11 = +[UITraitCollection _fallbackTraitCollection];
    userInterfaceIdiom = [v11 userInterfaceIdiom];
  }

  v12 = qword_1ED499BC8;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:userInterfaceIdiom];
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    v15 = [v14 visualStyleForAlertControllerStyle:style traitCollection:collectionCopy descriptor:descriptorCopy];
    if (v15)
    {
      goto LABEL_34;
    }
  }

  if (userInterfaceIdiom == -1)
  {
    goto LABEL_20;
  }

  if (((style - 1000) < 2 || !style) && ![(UIAlertController *)self _forceAlertStyle])
  {
    if (userInterfaceIdiom < 2)
    {
      goto LABEL_17;
    }

    if (userInterfaceIdiom == 3)
    {
      v16 = off_1E70E93C8;
      goto LABEL_31;
    }

    if (userInterfaceIdiom == 5)
    {
LABEL_17:
      if ((style & 0xFFFFFFFFFFFFFFFELL) == 0x3E8)
      {
        v16 = off_1E70E93D0;
      }

      else
      {
        v16 = off_1E70E93C0;
      }

      goto LABEL_31;
    }

LABEL_20:
    v15 = 0;
    goto LABEL_32;
  }

  v15 = 0;
  v16 = off_1E70E93D8;
  if (userInterfaceIdiom > 2)
  {
    if (userInterfaceIdiom == 8)
    {
      v16 = off_1E70E93E0;
    }

    else if (userInterfaceIdiom != 5)
    {
      if (userInterfaceIdiom != 3)
      {
        goto LABEL_32;
      }

      v16 = off_1E70E93E8;
    }

LABEL_31:
    v15 = objc_alloc_init(*v16);
    goto LABEL_32;
  }

  if (userInterfaceIdiom < 2)
  {
    goto LABEL_31;
  }

  if (userInterfaceIdiom == 2)
  {
    if (_UISolariumEnabled())
    {
      v16 = off_1E70E93F0;
    }

    else if (dyld_program_sdk_at_least() && (_os_feature_enabled_impl() & 1) != 0)
    {
      v16 = off_1E70E93F8;
    }

    else
    {
      v16 = off_1E70E9400;
    }

    goto LABEL_31;
  }

LABEL_32:
  if (os_variant_has_internal_diagnostics())
  {
    if (v15)
    {
      goto LABEL_34;
    }

    v18 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v20 = 134217984;
      v21 = userInterfaceIdiom;
      _os_log_fault_impl(&dword_188A29000, v18, OS_LOG_TYPE_FAULT, "No visual style provided for idiom %ld", &v20, 0xCu);
    }
  }

  else
  {
    if (v15)
    {
      goto LABEL_34;
    }

    v19 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED499BD0) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = 134217984;
      v21 = userInterfaceIdiom;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "No visual style provided for idiom %ld", &v20, 0xCu);
    }
  }

  v15 = 0;
LABEL_34:

  return v15;
}

- (id)platformStyleViewForAlertController:(id)controller inIdiom:(int64_t)idiom
{
  controllerCopy = controller;
  v6 = qword_1ED499BC8;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  v8 = [v6 objectForKey:v7];

  if (!v8 || ([v8 platformStyleViewForAlertController:controllerCopy inIdiom:idiom], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = objc_alloc_init(_UIAlertControllerPhoneTVMacView);
  }

  return v9;
}

- (void)_invokeHandlersForAction:(id)action
{
  actionCopy = action;
  handler = [actionCopy handler];

  if (handler)
  {
    handler2 = [actionCopy handler];
    (handler2)[2](handler2, actionCopy);
  }

  simpleHandler = [actionCopy simpleHandler];

  if (simpleHandler)
  {
    simpleHandler2 = [actionCopy simpleHandler];
    simpleHandler2[2]();
  }

  else if (!handler)
  {
    goto LABEL_7;
  }

  [(NSPointerArray *)self->_actionsWithInvokedHandlers addPointer:actionCopy];
LABEL_7:
}

- (void)_clearActionHandlers
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_actions;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        [v7 setHandler:{0, v8}];
        [v7 setSimpleHandler:0];
        [v7 setShouldDismissHandler:0];
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)_dismissGestureRecognizer
{
  v2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__attemptAnimatedDismissWithGestureRecognizer_];

  return v2;
}

- (void)_attemptAnimatedDismissWithGestureRecognizer:(id)recognizer
{
  if ([recognizer state] == 3 && -[UIAlertController _canDismissWithGestureRecognizer](self, "_canDismissWithGestureRecognizer"))
  {

    [(UIAlertController *)self _dismissWithCancelOrEmptyAction];
  }
}

- (void)_dismissFromBackButton:(id)button
{
  if ([button state] == 3)
  {

    [(UIAlertController *)self _dismissWithCancelOrEmptyAction];
  }
}

- (void)_dismissWithCancelOrEmptyAction
{
  if ([(UIAlertController *)self _shouldInvokeCancelActionOnDimmingViewTap])
  {
    [(UIAlertController *)self cancelAction];
  }

  else
  {
    [UIAlertAction actionWithTitle:&stru_1EFB14550 style:0 handler:0];
  }
  v3 = ;
  [(UIAlertController *)self _dismissAnimated:1 triggeringAction:v3];
}

- (void)_dismissFromPopoverDimmingView
{
  cancelAction = [(UIAlertController *)self cancelAction];
  [(UIAlertController *)self _dismissAnimated:1 triggeringAction:cancelAction triggeredByPopoverDimmingView:1 dismissCompletion:0];
}

- (void)_beginNoPresentingViewControllerPresentation:(id)presentation
{
  presentationCopy = presentation;
  presenter = self->_presenter;
  v8 = presentationCopy;
  if (!presenter)
  {
    v6 = objc_alloc_init(_UIAlertControllerShimPresenter);
    v7 = self->_presenter;
    self->_presenter = v6;

    [(_UIAlertControllerShimPresenter *)self->_presenter setAlertController:self];
    presentationCopy = v8;
    presenter = self->_presenter;
  }

  [(_UIAlertControllerShimPresenter *)presenter _presentAlertControllerAnimated:1 hostingScene:presentationCopy completion:0];
}

- (void)_dismissAnimated:(BOOL)animated triggeringAction:(id)action triggeredByPopoverDimmingView:(BOOL)view dismissCompletion:(id)completion
{
  viewCopy = view;
  actionCopy = action;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__UIAlertController__dismissAnimated_triggeringAction_triggeredByPopoverDimmingView_dismissCompletion___block_invoke;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v12 = actionCopy;
  v41 = v12;
  v13 = _Block_copy(aBlock);
  if (viewCopy)
  {
    selfCopy = self;
    goto LABEL_3;
  }

  if (v12)
  {
    shouldDismissHandler = [v12 shouldDismissHandler];
    if (!shouldDismissHandler || (v22 = shouldDismissHandler, [v12 shouldDismissHandler], v23 = objc_claimAutoreleasedReturnValue(), v24 = v23[2](), v23, v22, (v24 & 1) != 0))
    {
      selfCopy2 = self;
      _parentModalViewController = [(UIViewController *)selfCopy2 _parentModalViewController];

      if (_parentModalViewController)
      {
        popoverPresentationController = [(UIViewController *)selfCopy2 popoverPresentationController];
        delegate = [popoverPresentationController delegate];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([delegate delegate], v29 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v29, (isKindOfClass))
        {
          v15 = &__block_literal_global_681;
        }

        else
        {
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __manualPopoverPresentationControllerDidDismissPopoverInvocationForDismiss_block_invoke_2;
          v42[3] = &unk_1E70F3590;
          v43 = popoverPresentationController;
          v15 = _Block_copy(v42);
        }

        goto LABEL_4;
      }

LABEL_3:
      v15 = &__block_literal_global_681;
LABEL_4:
      v16 = _Block_copy(v15);

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __103__UIAlertController__dismissAnimated_triggeringAction_triggeredByPopoverDimmingView_dismissCompletion___block_invoke_2;
      v36[3] = &unk_1E70F4940;
      v17 = v13;
      v37 = v17;
      v38 = v16;
      v39 = completionCopy;
      v18 = v16;
      v19 = _Block_copy(v36);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __103__UIAlertController__dismissAnimated_triggeringAction_triggeredByPopoverDimmingView_dismissCompletion___block_invoke_3;
      v31[3] = &unk_1E70F4968;
      v34 = viewCopy;
      animatedCopy = animated;
      v31[4] = self;
      v33 = v19;
      v32 = v12;
      v20 = v19;
      [(UIAlertController *)self _performAction:v32 invokeActionBlock:v17 dismissAndPerformActionIfNotAlreadyPerformed:v31];

      goto LABEL_18;
    }

    [(UIAlertController *)self _performAction:v12 invokeActionBlock:v13 dismissAndPerformActionIfNotAlreadyPerformed:0];
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  self->_actionInvokedOnDismiss = 0;
LABEL_18:
}

uint64_t __103__UIAlertController__dismissAnimated_triggeringAction_triggeredByPopoverDimmingView_dismissCompletion___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 1160) & 1) == 0)
  {
    *(v1 + 1160) = 1;
    return [*(result + 32) _invokeHandlersForAction:*(result + 40)];
  }

  return result;
}

uint64_t __103__UIAlertController__dismissAnimated_triggeringAction_triggeredByPopoverDimmingView_dismissCompletion___block_invoke_2(void *a1)
{
  (*(a1[4] + 16))();
  (*(a1[5] + 16))();
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __103__UIAlertController__dismissAnimated_triggeringAction_triggeredByPopoverDimmingView_dismissCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [*(a1 + 32) presentingViewController];
  if (v3 && (*(a1 + 56) & 1) == 0)
  {
    [*(a1 + 32) _postWillBeginSystemProvidedDismissalOfAlertController];
    [v3 dismissViewControllerAnimated:*(a1 + 57) completion:*(a1 + 48)];
    [*(a1 + 32) _postDidBeginSystemProvidedDismissalOfAlertController];
    goto LABEL_8;
  }

  v4 = [*(a1 + 32) _compatibilityPopoverController];

  if (v4)
  {
    v5 = [*(a1 + 32) _compatibilityPopoverController];
    [v5 dismissPopoverAnimated:*(a1 + 57)];

LABEL_7:
    (*(*(a1 + 48) + 16))();
    goto LABEL_8;
  }

  if (*(a1 + 56) == 1)
  {
    goto LABEL_7;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v16 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = [v7 view];
    v10 = [*(a1 + 32) view];
    v11 = [v10 window];
    v12 = *(a1 + 32);
    if (*(a1 + 56))
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    if (*(v12 + 1160))
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = [*(v12 + 1136) allObjects];
    [v16 raise:v6 format:{@"Attempt to dismiss %@ with unknown presenter, action will not be performed.\nDebug Info: \n\taction = %@, \n\tpresentingViewController = %@, view = %@, window = %@, \n\ttriggeredByPopoverDimmingView = %@, \n\tlocal.performActionInvoked = %@, \n\t_actionsWithInvokedHandlers = %@", v7, v8, v3, v9, v11, v13, v14, v15}];
  }

LABEL_8:
  if (v17)
  {
    v17[2]();
  }
}

- (void)_performAction:(id)action invokeActionBlock:(id)block dismissAndPerformActionIfNotAlreadyPerformed:(id)performed
{
  blockCopy = block;
  performedCopy = performed;
  WeakRetained = objc_loadWeakRetained(&self->_coordinatedActionPerformingDelegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _performActionForAlertController:self invokeActionBlock:blockCopy dismissControllerBlock:performedCopy];
  }

  else if (performedCopy)
  {
    performedCopy[2](performedCopy, 0);
  }

  else if (blockCopy)
  {
    blockCopy[2]();
  }
}

- (void)_postWillBeginSystemProvidedDismissalOfAlertController
{
  _systemProvidedPresentationDelegate = [(UIAlertController *)self _systemProvidedPresentationDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_systemProvidedPresentationDelegate _willBeginSystemProvidedDismissalOfAlertController:self];
  }
}

- (void)_postDidBeginSystemProvidedDismissalOfAlertController
{
  _systemProvidedPresentationDelegate = [(UIAlertController *)self _systemProvidedPresentationDelegate];
  if (objc_opt_respondsToSelector())
  {
    [_systemProvidedPresentationDelegate _didBeginSystemProvidedDismissalOfAlertController:self];
  }
}

- (id)_presentationControllerForPresentedController:(id)controller presentingController:(id)presentingController sourceController:(id)sourceController
{
  controllerCopy = controller;
  presentingControllerCopy = presentingController;
  sourceControllerCopy = sourceController;
  if (+[UIAlertController _shouldUsePresentationController])
  {
    v11 = [(UIAlertController *)self _viewControllerIsPresentedInModalPresentationContext:sourceControllerCopy];
    _resolvedStyle = [(UIAlertController *)self _resolvedStyle];
    v13 = qword_1ED499BC8;
    v14 = MEMORY[0x1E696AD98];
    traitCollection = [sourceControllerCopy traitCollection];
    v16 = [v14 numberWithInteger:{objc_msgSend(traitCollection, "userInterfaceIdiom")}];
    v17 = [v13 objectForKey:v16];

    if (objc_opt_respondsToSelector())
    {
      v18 = [v17 platformStylePresentationControllerForPresentedController:controllerCopy presentingController:presentingControllerCopy sourceController:sourceControllerCopy style:_resolvedStyle];
      if (v18)
      {
        v19 = v18;

        goto LABEL_18;
      }
    }

    v21 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v21 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v23 = 1;
    }

    else
    {
      traitCollection2 = [sourceControllerCopy traitCollection];
      if ([traitCollection2 userInterfaceIdiom] == 1)
      {
        v23 = 1;
      }

      else
      {
        traitCollection3 = [presentingControllerCopy traitCollection];
        v23 = [traitCollection3 userInterfaceIdiom] == 1;
      }
    }

    if ((_resolvedStyle - 1000) >= 2 && _resolvedStyle || [(UIAlertController *)self _forceAlertStyle])
    {
      v20 = [(_UIAlertControllerPresentationController *)[_UIAlertControllerAlertPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:presentingControllerCopy];
LABEL_16:

      goto LABEL_17;
    }

    if (v23)
    {
      if (!v11)
      {
LABEL_23:
        v20 = [(UIPopoverPresentationController *)[_UIAlertControllerActionSheetRegularPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:presentingControllerCopy];
        if (dyld_program_sdk_at_least() && _UIIsPrivateMainBundle())
        {
          if (v23 | ((_UISolariumEnabled() & 1) == 0))
          {
            [(_UIAlertControllerAlertPresentationController *)v20 _setCentersPopoverIfSourceViewNotSet:1];
            [(_UIAlertControllerAlertPresentationController *)v20 _setSoftAssertWhenNoSourceViewOrBarButtonItemSpecified:1];
          }

          else
          {
            [(_UIAlertControllerAlertPresentationController *)v20 _setShouldHideArrow:1];
            [(_UIAlertControllerAlertPresentationController *)v20 _setCentersPopoverIfSourceViewNotSet:1];
          }
        }

        goto LABEL_16;
      }
    }

    else if (!(v11 | ((_UISolariumEnabled() & 1) == 0)))
    {
      goto LABEL_23;
    }

    v27 = [(_UIAlertControllerPresentationController *)[_UIAlertControllerActionSheetCompactPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:sourceControllerCopy];
    v20 = v27;
    if (v11)
    {
      [(_UIAlertControllerPresentationController *)v27 _setIsCurrentContext:1];
    }

    if ([sourceControllerCopy _ancestorViewControllerIsInPopover])
    {
      [(_UIAlertControllerPresentationController *)v20 _setShouldRespectNearestCurrentContextPresenter:1];
    }

    goto LABEL_16;
  }

  v20 = 0;
LABEL_17:
  v19 = v20;
LABEL_18:

  return v19;
}

- (void)_updateModalPresentationStyle
{
  _modalPresentationStyleForResolvedStyle = [(UIAlertController *)self _modalPresentationStyleForResolvedStyle];

  [(UIAlertController *)self setModalPresentationStyle:_modalPresentationStyleForResolvedStyle];
}

- (void)setModalPresentationStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = UIAlertController;
  [(UIViewController *)&v3 setModalPresentationStyle:[(UIAlertController *)self _modalPresentationStyleForResolvedStyle]];
}

- (int64_t)_modalPresentationStyleForResolvedStyle
{
  if ([(UIAlertController *)self _resolvedStyle])
  {
    return 4;
  }

  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = !_UIAppUseModernRotationAndPresentationBehaviors();
    v6 = 18;
  }

  else
  {
    v5 = _UISolariumEnabled() == 0;
    v6 = 4;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 7;
  }
}

- (void)_updateViewFrameForLandscapePresentationInShimIfNecessary
{
  memset(&v17, 0, sizeof(v17));
  view = [(UIViewController *)self view];
  v4 = view;
  if (view)
  {
    [view transform];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  view2 = [(UIViewController *)self view];
  [view2 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  CGAffineTransformMakeRotation(&v15, 1.57079633);
  *&t2.a = vrndaq_f64(*&v15.a);
  *&t2.c = vrndaq_f64(*&v15.c);
  *&t2.tx = vrndaq_f64(*&v15.tx);
  v15 = v17;
  if (CGAffineTransformEqualToTransform(&v15, &t2) || (CGAffineTransformMakeRotation(&v15, -1.57079633), *&t2.a = vrndaq_f64(*&v15.a), *&t2.c = vrndaq_f64(*&v15.c), *&t2.tx = vrndaq_f64(*&v15.tx), v15 = v17, CGAffineTransformEqualToTransform(&v15, &t2)))
  {
    if (v11 > v13)
    {
      view3 = [(UIViewController *)self view];
      [view3 setFrame:{v7, v9, v13, v11}];

      [(UIAlertController *)self set_shouldFlipFrameForShimDismissal:1];
    }
  }
}

- (void)_flipFrameForShimDismissalIfNecessary
{
  if ([(UIAlertController *)self _shouldFlipFrameForShimDismissal])
  {
    view = [(UIViewController *)self view];
    [view frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    view2 = [(UIViewController *)self view];
    [view2 setFrame:{v5, v7, v11, v9}];

    [(UIAlertController *)self set_shouldFlipFrameForShimDismissal:0];
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  collectionCopy = collection;
  coordinatorCopy = coordinator;
  v10.receiver = self;
  v10.super_class = UIAlertController;
  [(UIViewController *)&v10 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinatorCopy];
  if (coordinatorCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__UIAlertController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_1E70F4990;
    v8[4] = self;
    v9 = collectionCopy;
    [coordinatorCopy animateAlongsideTransition:v8 completion:0];
  }

  else
  {
    [(UIAlertController *)self _updateProvidedStyleWithTraitCollection:collectionCopy];
  }
}

- (BOOL)_isPresentedAsPopover
{
  _alertControllerContainer = [(UIAlertController *)self _alertControllerContainer];
  if (+[UIAlertController _shouldUsePresentationController])
  {
    v4 = [_alertControllerContainer _existingPresentationControllerImmediate:1 effective:1];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    _popoverController = [(UIViewController *)self _popoverController];
    v4 = _popoverController;
    if (_popoverController)
    {
      contentViewController = [_popoverController contentViewController];
      isKindOfClass = contentViewController == _alertControllerContainer;
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)_viewControllerIsPresentedInModalPresentationContext:(id)context
{
  contextCopy = context;
  if (dyld_program_sdk_at_least())
  {
    _ancestorViewControllerIsInPopover = 0;
  }

  else if ([contextCopy _isInPopoverPresentation])
  {
    _ancestorViewControllerIsInPopover = 1;
  }

  else
  {
    v5 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v5 userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 || !dyld_program_sdk_at_least() || (_ancestorViewControllerIsInPopover = 1, ([contextCopy _isInContextOfPresentationControllerOfClass:objc_opt_class() effective:1] & 1) == 0))
    {
      _ancestorViewControllerIsInPopover = [contextCopy _ancestorViewControllerIsInPopover];
    }
  }

  return _ancestorViewControllerIsInPopover;
}

- (id)_alertControllerContainer
{
  selfCopy = self;
  parentViewController = [(UIViewController *)self parentViewController];
  if ([(UIAlertController *)parentViewController conformsToProtocol:&unk_1EFEC3198])
  {
    selfCopy = parentViewController;
  }

  v4 = selfCopy;

  return selfCopy;
}

- (BOOL)_shouldSizeToFillSuperview
{
  if (!+[UIAlertController _shouldUsePresentationController])
  {
    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    presentedAsPopover = [_alertControllerView presentedAsPopover];

    if (!presentedAsPopover)
    {
      return 1;
    }
  }

  return [(UIAlertController *)self _isPresentedAsPopover];
}

- (BOOL)_shouldFitWidthToContentViewControllerWidth
{
  if (![(UIAlertController *)self _isPresentedAsPopover])
  {
    return 0;
  }

  contentViewController = [(UIAlertController *)self contentViewController];
  [contentViewController preferredContentSize];
  v5 = v4 > 0.0;

  return v5;
}

- (void)setTitle:(NSString *)title
{
  v6.receiver = self;
  v6.super_class = UIAlertController;
  v4 = title;
  [(UIViewController *)&v6 setTitle:v4];
  v5 = [(UIAlertController *)self _alertControllerView:v6.receiver];
  [v5 _setTitle:v4];
}

- (void)setMessage:(NSString *)message
{
  v7 = message;
  if (([(NSString *)v7 isEqual:self->_message]& 1) == 0)
  {
    v4 = [(NSString *)v7 copy];
    v5 = self->_message;
    self->_message = v4;

    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    [_alertControllerView _setMessage:v7];
  }
}

- (void)_setAttributedTitle:(id)title
{
  titleCopy = title;
  if (([titleCopy isEqual:self->_attributedTitle] & 1) == 0)
  {
    v4 = [titleCopy copy];
    attributedTitle = self->_attributedTitle;
    self->_attributedTitle = v4;

    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    [_alertControllerView _setAttributedTitle:titleCopy];
  }
}

- (void)_setTitleMaximumLineCount:(int64_t)count
{
  if (self->_titleMaximumLineCount != count)
  {
    self->_titleMaximumLineCount = count;
    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    [_alertControllerView _updateLabelProperties];
  }
}

- (void)_setTitleLineBreakMode:(int64_t)mode
{
  if (self->_titleLineBreakMode != mode)
  {
    self->_titleLineBreakMode = mode;
    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    [_alertControllerView _updateLabelProperties];
  }
}

- (void)_setAttributedMessage:(id)message
{
  messageCopy = message;
  if (([messageCopy isEqual:self->_attributedMessage] & 1) == 0)
  {
    v4 = [messageCopy copy];
    attributedMessage = self->_attributedMessage;
    self->_attributedMessage = v4;

    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    [_alertControllerView _setAttributedMessage:messageCopy];
  }
}

- (void)_setAttributedDetailMessage:(id)message
{
  messageCopy = message;
  if (([messageCopy isEqual:self->_attributedDetailMessage] & 1) == 0)
  {
    v4 = [messageCopy copy];
    attributedDetailMessage = self->_attributedDetailMessage;
    self->_attributedDetailMessage = v4;

    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    [_alertControllerView _setAttributedDetailMessage:messageCopy];
  }
}

- (BOOL)_hasTitle
{
  title = [(UIViewController *)self title];

  if (![(UIAlertController *)self _shouldTreatEmptyStringsAsNil])
  {
    if (!title)
    {
      goto LABEL_4;
    }

    return 1;
  }

  if (title)
  {
    title2 = [(UIViewController *)self title];
    v5 = [title2 length];

    if (v5)
    {
      return 1;
    }
  }

LABEL_4:

  return [(UIAlertController *)self _hasAttributedTitle];
}

- (BOOL)_hasAttributedTitle
{
  _attributedTitle = [(UIAlertController *)self _attributedTitle];

  v4 = ![(UIAlertController *)self _shouldTreatEmptyStringsAsNil];
  if (_attributedTitle)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 1) == 0 && _attributedTitle)
  {
    _attributedTitle2 = [(UIAlertController *)self _attributedTitle];
    v5 = [_attributedTitle2 length] != 0;
  }

  return v5;
}

- (BOOL)_hasMessage
{
  message = [(UIAlertController *)self message];

  if (![(UIAlertController *)self _shouldTreatEmptyStringsAsNil])
  {
    if (!message)
    {
      goto LABEL_4;
    }

    return 1;
  }

  if (message)
  {
    message2 = [(UIAlertController *)self message];
    v5 = [message2 length];

    if (v5)
    {
      return 1;
    }
  }

LABEL_4:

  return [(UIAlertController *)self _hasAttributedMessage];
}

- (BOOL)_hasAttributedMessage
{
  _attributedMessage = [(UIAlertController *)self _attributedMessage];

  v4 = ![(UIAlertController *)self _shouldTreatEmptyStringsAsNil];
  if (_attributedMessage)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 1) == 0 && _attributedMessage)
  {
    _attributedMessage2 = [(UIAlertController *)self _attributedMessage];
    v5 = [_attributedMessage2 length] != 0;
  }

  return v5;
}

- (BOOL)_hasDetailMessage
{
  _attributedDetailMessage = [(UIAlertController *)self _attributedDetailMessage];

  v4 = ![(UIAlertController *)self _shouldTreatEmptyStringsAsNil];
  if (_attributedDetailMessage)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 1) == 0 && _attributedDetailMessage)
  {
    _attributedDetailMessage2 = [(UIAlertController *)self _attributedDetailMessage];
    v5 = [_attributedDetailMessage2 length] != 0;
  }

  return v5;
}

- (BOOL)_shouldTreatEmptyStringsAsNil
{
  if (dyld_program_sdk_at_least())
  {
    if (_UISolariumEnabled())
    {
      if (qword_1ED499BF8 != -1)
      {
        dispatch_once(&qword_1ED499BF8, &__block_literal_global_685);
      }

      v2 = _MergedGlobals_9_0 ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

- (UIAlertAction)_focusedAction
{
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  _focusedAction = [_alertControllerView _focusedAction];

  return _focusedAction;
}

- (UIView)_foregroundView
{
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  _contentView = [_alertControllerView _contentView];

  return _contentView;
}

- (UIView)_dimmingView
{
  if ([(UIAlertController *)self _shouldProvideDimmingView])
  {
    _alertControllerView = [(UIAlertController *)self _alertControllerView];
LABEL_4:
    _dimmingView = [_alertControllerView _dimmingView];
    goto LABEL_6;
  }

  _alertControllerView = [(UIViewController *)self _existingPresentationControllerImmediate:1 effective:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  _dimmingView = 0;
LABEL_6:

  return _dimmingView;
}

- (UIEdgeInsets)_contentInsets
{
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  _visualStyle = [_alertControllerView _visualStyle];
  _existingView = [(UIViewController *)self _existingView];
  superview = [_existingView superview];
  [_visualStyle contentInsetsForContainerView:superview];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (void)_setSeparatedHeaderContentViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_separatedHeaderContentViewController != controllerCopy)
  {
    v11 = controllerCopy;
    _separatedHeaderContentViewController = [(UIAlertController *)self _separatedHeaderContentViewController];
    [_separatedHeaderContentViewController removeFromParentViewController];
    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    if ([_alertControllerView conformsToProtocol:&unk_1EFF9DFA0])
    {
      [_alertControllerView _removeSeparatedHeaderContentViewControllerFromHierarchy];
    }

    objc_storeStrong(&self->_separatedHeaderContentViewController, controller);
    v8 = v11;
    if (v11)
    {
      view = [(UIViewController *)v11 view];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];

      [(UIViewController *)self addChildViewController:v11];
      [(UIViewController *)v11 didMoveToParentViewController:self];
      v8 = v11;
      if (_alertControllerView)
      {
        v10 = [_alertControllerView conformsToProtocol:&unk_1EFF9DFA0];
        v8 = v11;
        if (v10)
        {
          [_alertControllerView _addSeparatedHeaderContentViewControllerToViewHierarchyIfNecessary];
          v8 = v11;
        }
      }
    }

    if ((v8 != 0) == (_separatedHeaderContentViewController == 0))
    {
      [_alertControllerView _propertiesChanged];
      [(UIAlertController *)self _updateProvidedStyle];
    }

    controllerCopy = v11;
  }
}

- (void)_setHeaderContentViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_headerContentViewController != controllerCopy)
  {
    v11 = controllerCopy;
    _headerContentViewController = [(UIAlertController *)self _headerContentViewController];
    [_headerContentViewController removeFromParentViewController];
    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    if ([_alertControllerView conformsToProtocol:&unk_1EFF9DFA0])
    {
      [_alertControllerView _removeHeaderContentViewControllerViewFromHierarchy];
    }

    objc_storeStrong(&self->_headerContentViewController, controller);
    v8 = v11;
    if (v11)
    {
      view = [(UIViewController *)v11 view];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];

      [(UIViewController *)self addChildViewController:v11];
      [(UIViewController *)v11 didMoveToParentViewController:self];
      v8 = v11;
      if (_alertControllerView)
      {
        v10 = [_alertControllerView conformsToProtocol:&unk_1EFF9DFA0];
        v8 = v11;
        if (v10)
        {
          [_alertControllerView _addHeaderContentViewControllerToViewHierarchyIfNecessary];
          v8 = v11;
        }
      }
    }

    if ((v8 != 0) == (_headerContentViewController == 0))
    {
      [_alertControllerView _propertiesChanged];
      [(UIAlertController *)self _updateProvidedStyle];
    }

    controllerCopy = v11;
  }
}

- (void)setContentViewController:(id)controller
{
  controllerCopy = controller;
  if (self->_contentViewController != controllerCopy)
  {
    v11 = controllerCopy;
    contentViewController = [(UIAlertController *)self contentViewController];
    [contentViewController removeFromParentViewController];
    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    if ([_alertControllerView conformsToProtocol:&unk_1EFF9E0A8])
    {
      [_alertControllerView _removeContentViewControllerViewFromHierarchy];
    }

    objc_storeStrong(&self->_contentViewController, controller);
    v8 = v11;
    if (v11)
    {
      view = [(UIViewController *)v11 view];
      [view setTranslatesAutoresizingMaskIntoConstraints:0];

      [(UIViewController *)self addChildViewController:v11];
      [(UIViewController *)v11 didMoveToParentViewController:self];
      v8 = v11;
      if (_alertControllerView)
      {
        v10 = [_alertControllerView conformsToProtocol:&unk_1EFF9E0A8];
        v8 = v11;
        if (v10)
        {
          [_alertControllerView _addContentViewControllerToViewHierarchyIfNecessary];
          v8 = v11;
        }
      }
    }

    if ((v8 != 0) == (contentViewController == 0))
    {
      [_alertControllerView _propertiesChanged];
      [(UIAlertController *)self _updateProvidedStyle];
    }

    controllerCopy = v11;
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  v5 = [_alertControllerView conformsToProtocol:&unk_1EFF9E0A8];

  if (v5)
  {
    _alertControllerView2 = [(UIAlertController *)self _alertControllerView];
    contentViewController = [(UIAlertController *)self contentViewController];

    if (contentViewController == containerCopy)
    {
      [_alertControllerView2 _sizeOfContentViewControllerChanged];
    }
  }

  _alertControllerView3 = [(UIAlertController *)self _alertControllerView];
  v9 = [_alertControllerView3 conformsToProtocol:&unk_1EFF9DFA0];

  if (v9)
  {
    _alertControllerView4 = [(UIAlertController *)self _alertControllerView];
    _headerContentViewController = [(UIAlertController *)self _headerContentViewController];

    if (_headerContentViewController == containerCopy)
    {
      [_alertControllerView4 _sizeOfHeaderContentViewControllerChanged];
    }

    else
    {
      [_alertControllerView4 _sizeOfTextFieldViewControllerChanged];
    }

    [(UIAlertController *)self _recomputePreferredContentSize];
  }
}

- (void)_headerContentViewControllerWillTransitionToSize:(CGSize)size withAnimations:(id)animations
{
  height = size.height;
  width = size.width;
  animationsCopy = animations;
  _headerContentViewController = [(UIAlertController *)self _headerContentViewController];
  [(UIAlertController *)self _childViewController:_headerContentViewController willTransitionToSize:animationsCopy withAnimations:width, height];
}

- (void)_contentViewControllerWillTransitionToSize:(CGSize)size withAnimations:(id)animations
{
  height = size.height;
  width = size.width;
  animationsCopy = animations;
  contentViewController = [(UIAlertController *)self contentViewController];
  [(UIAlertController *)self _childViewController:contentViewController willTransitionToSize:animationsCopy withAnimations:width, height];
}

- (void)_childViewController:(id)controller willTransitionToSize:(CGSize)size withAnimations:(id)animations
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  animationsCopy = animations;
  if (![(UIViewController *)self isBeingPresented]&& ![(UIViewController *)self isBeingDismissed])
  {
    _alertControllerView2 = objc_alloc_init(_UIAnimationCoordinator);
    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    v16 = controllerCopy;
    [(_UIAnimationCoordinator *)_alertControllerView2 setDuration:0.35];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __78__UIAlertController__childViewController_willTransitionToSize_withAnimations___block_invoke_2;
    v33[3] = &__block_descriptor_48_e33_v16__0___UIAnimationCoordinator_8l;
    *&v33[4] = width;
    *&v33[5] = height;
    [(_UIAnimationCoordinator *)_alertControllerView2 setPreperation:v33];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __78__UIAlertController__childViewController_willTransitionToSize_withAnimations___block_invoke_3;
    v30[3] = &unk_1E70F4A00;
    v32 = animationsCopy;
    v17 = _alertControllerView;
    v31 = v17;
    [(_UIAnimationCoordinator *)_alertControllerView2 setAnimator:v30];
    objc_initWeak(&location, self);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __78__UIAlertController__childViewController_willTransitionToSize_withAnimations___block_invoke_4;
    v27[3] = &unk_1E70F4A28;
    objc_copyWeak(&v28, &location);
    [(_UIAnimationCoordinator *)_alertControllerView2 setCompletion:v27];
    [(_UIAnimationCoordinator *)_alertControllerView2 setContainerView:v17];
    [(_UIAnimationCoordinator *)_alertControllerView2 setViewController:v16];
    view = [v16 view];
    [view frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [(_UIAnimationCoordinator *)_alertControllerView2 setStartFrame:v20, v22, v24, v26];
    [(_UIAnimationCoordinator *)_alertControllerView2 setEndFrame:v20, v22, v24, v26];
    [(UIAlertController *)self setTemporaryAnimationCoordinator:_alertControllerView2];
    [(_UIAnimationCoordinator *)_alertControllerView2 animate];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);

    goto LABEL_7;
  }

  transitionCoordinator = [(UIViewController *)self transitionCoordinator];

  if (!transitionCoordinator || (-[UIViewController transitionCoordinator](self, "transitionCoordinator"), v12 = objc_claimAutoreleasedReturnValue(), v34[0] = MEMORY[0x1E69E9820], v34[1] = 3221225472, v34[2] = __78__UIAlertController__childViewController_willTransitionToSize_withAnimations___block_invoke, v34[3] = &unk_1E70F49B8, v35 = animationsCopy, v13 = [v12 animateAlongsideTransition:v34 completion:0], v12, v35, (v13 & 1) == 0))
  {
    animationsCopy[2](animationsCopy);
    _alertControllerView2 = [(UIAlertController *)self _alertControllerView];
    [(_UIAnimationCoordinator *)_alertControllerView2 layoutIfNeeded];
LABEL_7:
  }
}

void __78__UIAlertController__childViewController_willTransitionToSize_withAnimations___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 viewController];
  v4 = [v3 transitionContext];

  v5 = [v4 _transitionCoordinator];
  [v6 viewWillTransitionToSize:v5 withTransitionCoordinator:{*(a1 + 32), *(a1 + 40)}];
}

uint64_t __78__UIAlertController__childViewController_willTransitionToSize_withAnimations___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = [*(a1 + 32) conformsToProtocol:&unk_1EFF9DFA0];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _layoutAndPositionInParentIfNeeded];
  }

  return result;
}

void __78__UIAlertController__childViewController_willTransitionToSize_withAnimations___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setTemporaryAnimationCoordinator:0];
}

+ (id)_alertControllerContainedInViewController:(id)controller
{
  controllerCopy = controller;
  if (([controllerCopy conformsToProtocol:&unk_1EFEC3198] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIAlertController.m" lineNumber:2275 description:@"A view controller not containing an alert controller was asked for its contained alert controller."];
  }

  _containedAlertController = [controllerCopy _containedAlertController];

  return _containedAlertController;
}

- (BOOL)_hasContentToDisplay
{
  selfCopy = self;
  title = [(UIViewController *)selfCopy title];
  if (title)
  {
    goto LABEL_2;
  }

  _attributedTitle = [(UIAlertController *)selfCopy _attributedTitle];

  if (_attributedTitle)
  {
    return 1;
  }

  v8 = selfCopy;
  title = [(UIAlertController *)v8 message];
  if (title)
  {
LABEL_2:
    _headerContentViewController = title;
    goto LABEL_3;
  }

  _attributedMessage = [(UIAlertController *)v8 _attributedMessage];

  if (_attributedMessage)
  {
    return 1;
  }

  v10 = v8;
  _headerContentViewController = [(UIAlertController *)v10 _headerContentViewController];
  if (!_headerContentViewController)
  {
    contentViewController = [(UIAlertController *)v10 contentViewController];
    if (contentViewController)
    {
      v5 = 1;
    }

    else
    {
      _actions = [(UIAlertController *)v10 _actions];
      v5 = [_actions count] != 0;
    }

    goto LABEL_4;
  }

LABEL_3:
  v5 = 1;
LABEL_4:

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  _window = [(UIViewController *)self _window];
  windowScene = [_window windowScene];
  _alertControllerStackManager = [windowScene _alertControllerStackManager];
  objc_storeWeak(&self->_alertControllerStackManager, _alertControllerStackManager);

  WeakRetained = objc_loadWeakRetained(&self->_alertControllerStackManager);
  [WeakRetained _alertControllerWillAppear:self];

  [(UIAlertController *)self _preserveInputViewsAnimated:appearCopy];
  [(UIAlertController *)self _becomeFirstResponderIfAppropriate];
  [(UIAlertController *)self _addReturnKeyCommandIfAppropriate];
  transitionCoordinator = [(UIViewController *)self transitionCoordinator];
  v11 = transitionCoordinator;
  if (transitionCoordinator)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __36__UIAlertController_viewWillAppear___block_invoke;
    v17[3] = &unk_1E70F4990;
    v17[4] = self;
    v18 = transitionCoordinator;
    [v18 animateAlongsideTransition:v17 completion:0];
  }

  else
  {
    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    [_alertControllerView configureForPresentAlongsideTransitionCoordinator:0];
  }

  v16.receiver = self;
  v16.super_class = UIAlertController;
  [(UIViewController *)&v16 viewWillAppear:appearCopy];
  if (![(UIAlertController *)self _shouldAllowNilParameters]&& ![(UIAlertController *)self _hasContentToDisplay])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIAlertController.m" lineNumber:2346 description:{@"UIAlertController must have a title, a message or an action to display"}];
  }

  self->_actionInvokedOnDismiss = 0;
  if (!+[UIAlertController _shouldUsePresentationController]&& ![(UIAlertController *)self _isPresentedAsPopover])
  {
    _alertControllerView2 = [(UIAlertController *)self _alertControllerView];
    [_alertControllerView2 setShouldHaveBackdropView:1];

    _alertControllerView3 = [(UIAlertController *)self _alertControllerView];
    [_alertControllerView3 setHasDimmingView:1];
  }

  if ([(UIViewController *)self isBeingPresented])
  {
    [(UIAlertController *)self _logBeingPresented];
  }
}

void __36__UIAlertController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _alertControllerView];
  [v2 configureForPresentAlongsideTransitionCoordinator:*(a1 + 40)];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  WeakRetained = objc_loadWeakRetained(&self->_alertControllerStackManager);
  [WeakRetained _alertControllerDidAppear:self];

  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  _systemProvidedGestureRecognizer = [(UIAlertController *)self _systemProvidedGestureRecognizer];
  [_alertControllerView beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:_systemProvidedGestureRecognizer];

  v8.receiver = self;
  v8.super_class = UIAlertController;
  [(UIViewController *)&v8 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  WeakRetained = objc_loadWeakRetained(&self->_alertControllerStackManager);
  [WeakRetained _alertControllerWillDisappear:self];

  [(_UIAlertControllerTextFieldViewController *)self->_textFieldViewController resignFirstResponder];
  if (disappearCopy)
  {
    [(UIAlertController *)self _restoreInputViewsAnimated:1];
  }

  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  transitionCoordinator = [(UIViewController *)self transitionCoordinator];
  [_alertControllerView configureForDismissAlongsideTransitionCoordinator:transitionCoordinator];

  v8.receiver = self;
  v8.super_class = UIAlertController;
  [(UIViewController *)&v8 viewWillDisappear:disappearCopy];
  if ([(UIViewController *)self isBeingDismissed])
  {
    [(UIAlertController *)self _logBeingDismissed];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  WeakRetained = objc_loadWeakRetained(&self->_alertControllerStackManager);
  [WeakRetained _alertControllerDidDisappear:self];

  if (!disappearCopy)
  {
    [(UIAlertController *)self _restoreInputViewsAnimated:0];
  }

  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  [_alertControllerView deselectAllActions];

  v7.receiver = self;
  v7.super_class = UIAlertController;
  [(UIViewController *)&v7 viewDidDisappear:disappearCopy];
}

- (BOOL)_shouldPreserveInputViews
{
  if ([(UIAlertController *)self _shouldBecomeFirstResponder])
  {
    if (+[UIAlertController _shouldUsePresentationController])
    {
      _window = [(UIViewController *)self _window];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        presentationController = [(UIViewController *)self presentationController];
        v5 = [presentationController _preserveResponderAcrossWindows] ^ 1;
      }

      else
      {
        LOBYTE(v5) = 0;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_preserveInputViewsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(UIAlertController *)self _hasPreservedInputViews]&& [(UIAlertController *)self _shouldPreserveInputViews])
  {
    [(UIAlertController *)self _setHasPreservedInputViews:1];
    _window = [(UIViewController *)self _window];
    windowScene = [_window windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
    v7 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [keyboardSceneDelegate _preserveInputViewsWithId:v7 animated:animatedCopy];
  }
}

- (void)_restoreInputViewsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(UIAlertController *)self _hasPreservedInputViews])
  {
    _window = [(UIViewController *)self _window];
    windowScene = [_window windowScene];
    keyboardSceneDelegate = [windowScene keyboardSceneDelegate];
    v8 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [keyboardSceneDelegate _restoreInputViewsWithId:v8 animated:animatedCopy];

    [(UIAlertController *)self _setHasPreservedInputViews:0];
  }
}

- (BOOL)_shouldBecomeFirstResponder
{
  _resolvedStyle = [(UIAlertController *)self _resolvedStyle];
  v4 = _resolvedStyle;
  if (_resolvedStyle == 1000 || _resolvedStyle == 1)
  {
    _resolvedStyle = [(UIViewController *)self _focusSystem];
    v5 = _resolvedStyle == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 1000 || v4 == 1)
  {
  }

  return v5;
}

- (void)_becomeFirstResponderIfAppropriate
{
  if ([(UIAlertController *)self _shouldBecomeFirstResponder])
  {

    [(UIResponder *)self becomeFirstResponder];
  }
}

- (void)_setHidden:(BOOL)hidden
{
  if (self->_hidden != hidden)
  {
    hiddenCopy = hidden;
    self->_hidden = hidden;
    view = [(UIViewController *)self view];
    [view setHidden:self->_hidden];

    if (+[UIAlertController _shouldUsePresentationController])
    {
      presentationController = [(UIViewController *)self presentationController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [presentationController _setChromeHidden:hiddenCopy];
      }
    }
  }
}

- (void)_setEffectAlpha:(double)alpha
{
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  [_alertControllerView setEffectAlpha:alpha];
}

- (double)_effectAlpha
{
  _alertControllerView = [(UIAlertController *)self _alertControllerView];
  [_alertControllerView effectAlpha];
  v4 = v3;

  return v4;
}

- (void)setSpringLoaded:(BOOL)loaded
{
  if (self->_springLoaded != loaded)
  {
    self->_springLoaded = loaded;
    _alertControllerView = [(UIAlertController *)self _alertControllerView];
    if ([_alertControllerView conformsToProtocol:&unk_1EFE9F560])
    {
      [_alertControllerView setSpringLoaded:self->_springLoaded];
    }
  }
}

- (id)_setView:(id)view forSystemProvidedPresentationWithDelegate:(id)delegate
{
  v38 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  delegateCopy = delegate;
  _systemProvidedPresentationView = [(UIAlertController *)self _systemProvidedPresentationView];
  v9 = _systemProvidedPresentationView;
  if (_systemProvidedPresentationView != viewCopy)
  {
    if (_systemProvidedPresentationView)
    {
      _previewInteractionController = [(UIAlertController *)self _previewInteractionController];
      gestureRecognizers = [_previewInteractionController gestureRecognizers];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = gestureRecognizers;
      v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v33;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v33 != v15)
            {
              objc_enumerationMutation(v12);
            }

            [v9 removeGestureRecognizer:*(*(&v32 + 1) + 8 * i)];
          }

          v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v14);
      }

      [(UIAlertController *)self _setSystemProvidedPresentationDelegate:0];
      [(UIAlertController *)self _setSystemProvidedPresentationView:0];
      [(UIAlertController *)self _setPreviewInteractionController:0];
    }

    if (viewCopy)
    {
      v17 = objc_alloc_init(UIPreviewInteractionController);
      v18 = [[UIPreviewForceInteractionProgress alloc] initWithView:viewCopy targetState:2];
      [(UIPreviewInteractionController *)v17 setInteractionProgressForPresentation:v18];
      beginPreviewGestureRecognizer = [(UIPreviewInteractionController *)v17 beginPreviewGestureRecognizer];
      [(UIPreviewForceInteractionProgress *)v18 _setGestureBeginObservable:beginPreviewGestureRecognizer];

      [(UIPreviewInteractionController *)v17 setDelegate:self];
      gestureRecognizers2 = [(UIPreviewInteractionController *)v17 gestureRecognizers];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v21 = [gestureRecognizers2 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v29;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(gestureRecognizers2);
            }

            [viewCopy addGestureRecognizer:*(*(&v28 + 1) + 8 * j)];
          }

          v22 = [gestureRecognizers2 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v22);
      }

      [(UIAlertController *)self _setSystemProvidedPresentationDelegate:delegateCopy];
      [(UIAlertController *)self _setSystemProvidedPresentationView:viewCopy];
      [(UIAlertController *)self _setPreviewInteractionController:v17];
    }
  }

  _previewInteractionController2 = [(UIAlertController *)self _previewInteractionController];
  presentationGestureRecognizer = [_previewInteractionController2 presentationGestureRecognizer];

  return presentationGestureRecognizer;
}

- (id)previewInteractionController:(id)controller viewControllerForPreviewingAtPosition:(CGPoint)position inView:(id)view presentingViewController:(id *)viewController
{
  if ([(UIAlertController *)self _canBePresentedAtLocation:controller, view, position.x, position.y])
  {
    _systemProvidedPresentationDelegate = [(UIAlertController *)self _systemProvidedPresentationDelegate];
    *viewController = [_systemProvidedPresentationDelegate _presentingViewControllerForSystemProvidedPresentationOfAlertController:self];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)previewInteractionController:(id)controller willPresentViewController:(id)viewController forPosition:(CGPoint)position inSourceView:(id)view
{
  v7 = [(UIAlertController *)self _systemProvidedPresentationDelegate:controller];
  if (objc_opt_respondsToSelector())
  {
    [v7 _willBeginSystemProvidedPresentationOfAlertController:self];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v7 _willPerformSystemProvidedPresentationOfAlertController:self];
  }
}

- (BOOL)_isPresented
{
  presentingViewController = [(UIViewController *)self presentingViewController];
  if (presentingViewController)
  {
    v4 = ![(UIViewController *)self isBeingPresented];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_canBePresentedAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if ([(UIAlertController *)self _isPresented]|| [(UIViewController *)self isBeingPresented])
  {
    v6 = 0;
  }

  else
  {
    v6 = ![(UIViewController *)self isBeingDismissed];
  }

  _systemProvidedPresentationDelegate = [(UIAlertController *)self _systemProvidedPresentationDelegate];
  v8 = objc_opt_respondsToSelector();
  v9 = (v8 ^ 1) & v6;
  if (((v8 ^ 1) & 1) == 0 && v6)
  {
    v9 = [_systemProvidedPresentationDelegate _shouldPerformSystemProvidedPresentationOfAlertController:self atSystemProvidedPresentationRegisteredViewLocation:{x, y}];
  }

  return v9 & 1;
}

- (id)_appIcon
{
  if (qword_1ED499BE0 != -1)
  {
    dispatch_once(&qword_1ED499BE0, &__block_literal_global_215);
  }

  v3 = qword_1ED499BD8;

  return v3;
}

void __29__UIAlertController__appIcon__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v7 = [v0 infoDictionary];

  v1 = [v7 objectForKeyedSubscript:@"CFBundleIcons"];
  v2 = [v1 objectForKeyedSubscript:@"CFBundlePrimaryIcon"];
  v3 = [v2 objectForKeyedSubscript:@"CFBundleIconFiles"];
  v4 = [v3 lastObject];
  v5 = [UIImage imageNamed:v4];
  v6 = qword_1ED499BD8;
  qword_1ED499BD8 = v5;
}

- (id)_appIconHeaderViewController
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__UIAlertController__appIconHeaderViewController__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (qword_1ED499BF0 != -1)
  {
    dispatch_once(&qword_1ED499BF0, block);
  }

  return qword_1ED499BE8;
}

void __49__UIAlertController__appIconHeaderViewController__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(UIViewController);
  v3 = qword_1ED499BE8;
  qword_1ED499BE8 = v2;

  v4 = [UIImageView alloc];
  v5 = [*(a1 + 32) _appIcon];
  v15 = [(UIImageView *)v4 initWithImage:v5];

  v6 = [UIView alloc];
  [(UIView *)v15 bounds];
  v8 = v7;
  [(UIView *)v15 bounds];
  v10 = [(UIView *)v6 initWithFrame:0.0, 0.0, v8, v9 + 10.0];
  [(UIView *)v10 addSubview:v15];
  [(UIView *)v15 bounds];
  v12 = v11;
  [(UIView *)v15 bounds];
  [(UIImageView *)v15 setFrame:0.0, 10.0, v12];
  [(UIView *)v15 setAutoresizingMask:18];
  [qword_1ED499BE8 setView:v10];
  [(UIView *)v10 bounds];
  [qword_1ED499BE8 setPreferredContentSize:{v13, v14}];
}

- (__CFString)_powerLoggingEventName
{
  _resolvedStyle = [(UIAlertController *)self _resolvedStyle];
  if ((_resolvedStyle - 1000) < 2 || _resolvedStyle == 0)
  {
    return @"UIKit-ActionSheet";
  }

  if (_resolvedStyle == 1)
  {
    return @"UIKit-Alert";
  }

  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIAlertController.m" lineNumber:2720 description:@"Unknown resolved alert controller style while trying to log."];

  return 0;
}

- (void)_logBeingPresented
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6[0] = @"Process-ID";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  v7[0] = v3;
  v7[1] = &unk_1EFE2F380;
  v6[1] = @"Status";
  v6[2] = @"Timestamp";
  date = [MEMORY[0x1E695DF00] date];
  v7[2] = date;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  [(UIAlertController *)self _powerLoggingEventName];
  PLLogRegisteredEvent();
}

- (void)_logBeingDismissed
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6[0] = @"Process-ID";
  v3 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
  v7[0] = v3;
  v7[1] = &unk_1EFE2F398;
  v6[1] = @"Status";
  v6[2] = @"Timestamp";
  date = [MEMORY[0x1E695DF00] date];
  v7[2] = date;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  [(UIAlertController *)self _powerLoggingEventName];
  PLLogRegisteredEvent();
}

- (UIAlertControllerVisualStyleProviding)_styleProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_styleProvider);

  return WeakRetained;
}

- (UIAlertControllerCoordinatedActionPerforming)coordinatedActionPerformingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinatedActionPerformingDelegate);

  return WeakRetained;
}

@end