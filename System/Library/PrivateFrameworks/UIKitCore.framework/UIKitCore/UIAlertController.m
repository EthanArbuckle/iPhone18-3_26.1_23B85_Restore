@interface UIAlertController
+ (UIAlertController)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle;
+ (id)_alertControllerContainedInViewController:(id)a3;
+ (id)_alertControllerWithTitle:(id)a3 message:(id)a4;
+ (id)_createTransitioningDelegateForIdiom:(int64_t)a3;
+ (void)registerPlatformStyleProvider:(id)a3 forIdiom:(int64_t)a4;
- (BOOL)_alignsToKeyboard;
- (BOOL)_canBePresentedAtLocation:(CGPoint)a3;
- (BOOL)_hasAttributedMessage;
- (BOOL)_hasAttributedTitle;
- (BOOL)_hasContentToDisplay;
- (BOOL)_hasDetailMessage;
- (BOOL)_hasMessage;
- (BOOL)_hasTitle;
- (BOOL)_isPresented;
- (BOOL)_isPresentedAsPopover;
- (BOOL)_isSupportedInterfaceOrientation:(int64_t)a3;
- (BOOL)_needsPreferredSizeCalculated;
- (BOOL)_shouldBecomeFirstResponder;
- (BOOL)_shouldFitWidthToContentViewControllerWidth;
- (BOOL)_shouldPreserveInputViews;
- (BOOL)_shouldReverseActions;
- (BOOL)_shouldSizeToFillSuperview;
- (BOOL)_shouldSupportReturnKeyPresses;
- (BOOL)_shouldTreatEmptyStringsAsNil;
- (BOOL)_viewControllerIsPresentedInModalPresentationContext:(id)a3;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (NSArray)actions;
- (NSString)description;
- (UIAlertAction)_focusedAction;
- (UIAlertController)initWithNibName:(id)a3 bundle:(id)a4;
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
- (id)_keyCommandForAction:(id)a3 input:(id)a4 modifierFlags:(int64_t)a5;
- (id)_presentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5;
- (id)_setView:(id)a3 forSystemProvidedPresentationWithDelegate:(id)a4;
- (id)_textFieldContainingViewWithTextField:(id)a3 position:(int64_t)a4;
- (id)platformStyleViewForAlertController:(id)a3 inIdiom:(int64_t)a4;
- (id)previewInteractionController:(id)a3 viewControllerForPreviewingAtPosition:(CGPoint)a4 inView:(id)a5 presentingViewController:(id *)a6;
- (id)visualStyleForAlertControllerStyle:(int64_t)a3 traitCollection:(id)a4 descriptor:(id)a5;
- (int64_t)_buttonTypeForBackGestureForIdiom:(int64_t)a3;
- (int64_t)_modalPresentationStyleForResolvedStyle;
- (void)_action:(id)a3 changedToKeyCommandWithInput:(id)a4 modifierFlags:(int64_t)a5;
- (void)_addActionWithTitle:(id)a3 image:(id)a4 style:(int64_t)a5 handler:(id)a6;
- (void)_addActionWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5;
- (void)_addActionWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5 shouldDismissHandler:(id)a6;
- (void)_addKeyCommandForAction:(id)a3 withInput:(id)a4 modifierFlags:(int64_t)a5;
- (void)_addReturnKeyCommandIfAppropriate;
- (void)_addSectionDelimiter;
- (void)_attemptAnimatedDismissWithGestureRecognizer:(id)a3;
- (void)_becomeFirstResponderIfAppropriate;
- (void)_beginNoPresentingViewControllerPresentation:(id)a3;
- (void)_childViewController:(id)a3 willTransitionToSize:(CGSize)a4 withAnimations:(id)a5;
- (void)_clearActionHandlers;
- (void)_contentViewControllerWillTransitionToSize:(CGSize)a3 withAnimations:(id)a4;
- (void)_didParentTextFieldViewController;
- (void)_dismissAnimated:(BOOL)a3 triggeringAction:(id)a4 triggeredByPopoverDimmingView:(BOOL)a5 dismissCompletion:(id)a6;
- (void)_dismissFromBackButton:(id)a3;
- (void)_dismissFromPopoverDimmingView;
- (void)_dismissWithCancelOrEmptyAction;
- (void)_flipFrameForShimDismissalIfNecessary;
- (void)_getRotationContentSettings:(id *)a3;
- (void)_handleKeyCommand:(id)a3;
- (void)_handleReturn;
- (void)_headerContentViewControllerWillTransitionToSize:(CGSize)a3 withAnimations:(id)a4;
- (void)_installBackGestureRecognizer;
- (void)_invokeHandlersForAction:(id)a3;
- (void)_logBeingDismissed;
- (void)_logBeingPresented;
- (void)_performAction:(id)a3 invokeActionBlock:(id)a4 dismissAndPerformActionIfNotAlreadyPerformed:(id)a5;
- (void)_performBatchActionChangesWithBlock:(id)a3;
- (void)_postDidBeginSystemProvidedDismissalOfAlertController;
- (void)_postWillBeginSystemProvidedDismissalOfAlertController;
- (void)_preserveInputViewsAnimated:(BOOL)a3;
- (void)_recomputePreferredContentSize;
- (void)_reevaluateResolvedStyle;
- (void)_removeAllActions;
- (void)_removeKeyCommandForAction:(id)a3;
- (void)_resolvedStyleChanged;
- (void)_restoreInputViewsAnimated:(BOOL)a3;
- (void)_setActions:(id)a3;
- (void)_setAttributedDetailMessage:(id)a3;
- (void)_setAttributedMessage:(id)a3;
- (void)_setAttributedTitle:(id)a3;
- (void)_setEffectAlpha:(double)a3;
- (void)_setHeaderContentViewController:(id)a3;
- (void)_setHidden:(BOOL)a3;
- (void)_setIndexesOfActionSectionSeparators:(id)a3;
- (void)_setSeparatedHeaderContentViewController:(id)a3;
- (void)_setShouldReverseActions:(BOOL)a3;
- (void)_setTitleLineBreakMode:(int64_t)a3;
- (void)_setTitleMaximumLineCount:(int64_t)a3;
- (void)_uninstallBackGestureRecognizer;
- (void)_updateModalPresentationStyle;
- (void)_updateProvidedStyle;
- (void)_updateProvidedStyleWithTraitCollection:(id)a3;
- (void)_updateShouldAlignToKeyboard;
- (void)_updateViewFrameForLandscapePresentationInShimIfNecessary;
- (void)_userInterfaceIdiomChanged;
- (void)addAction:(UIAlertAction *)action;
- (void)addTextFieldWithConfigurationHandler:(void *)configurationHandler;
- (void)dealloc;
- (void)loadView;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)previewInteractionController:(id)a3 willPresentViewController:(id)a4 forPosition:(CGPoint)a5 inSourceView:(id)a6;
- (void)setContentViewController:(id)a3;
- (void)setMessage:(NSString *)message;
- (void)setModalPresentationStyle:(int64_t)a3;
- (void)setPreferredAction:(UIAlertAction *)preferredAction;
- (void)setSpringLoaded:(BOOL)a3;
- (void)setTextFieldsCanBecomeFirstResponder:(BOOL)a3;
- (void)setTitle:(NSString *)title;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation UIAlertController

- (UIAlertController)initWithNibName:(id)a3 bundle:(id)a4
{
  v28[1] = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = UIAlertController;
  v4 = [(UIViewController *)&v27 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    _UIApplicationAssertForExtensionType(&unk_1EFE2B458);
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    actions = v6->_actions;
    v6->_actions = v7;

    v9 = [MEMORY[0x1E696AC90] indexSet];
    indexesOfActionSectionSeparators = v6->_indexesOfActionSectionSeparators;
    v6->_indexesOfActionSectionSeparators = v9;

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

    v19 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    actionsWithInvokedHandlers = v6->_actionsWithInvokedHandlers;
    v6->_actionsWithInvokedHandlers = v19;

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
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"UIAlertController.m" lineNumber:331 description:@"UIAlertController can only have one action with a style of UIAlertActionStyleCancel"];
    }

    v5 = [(UIAlertController *)self _visualStyle];
    v6 = [v5 _keyCommandInputForCancelAction];
    [(UIAlertAction *)v10 _setKeyCommandInput:v6 modifierFlags:0];

    [(UIAlertController *)self setCancelAction:v10];
  }

  [(NSMutableArray *)self->_actions addObject:v10];
  [(UIAlertAction *)v10 _setAlertController:self];
  v7 = [(UIAlertAction *)v10 _keyCommandInput];
  [(UIAlertController *)self _action:v10 changedToKeyCommandWithInput:v7 modifierFlags:[(UIAlertAction *)v10 _keyCommandModifierFlags]];

  v8 = [(UIAlertController *)self _alertControllerView];
  [v8 _actionsChanged];

  [(UIAlertController *)self _updateProvidedStyle];
}

+ (id)_alertControllerWithTitle:(id)a3 message:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() alertControllerWithTitle:v6 message:v5 preferredStyle:0];

  return v7;
}

- (void)_addActionWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5
{
  v8 = a5;
  v9 = [UIAlertAction actionWithTitle:a3 style:a4 handler:0];
  [v9 setSimpleHandler:v8];

  [(UIAlertController *)self addAction:v9];
}

- (void)_addActionWithTitle:(id)a3 style:(int64_t)a4 handler:(id)a5 shouldDismissHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = [UIAlertAction actionWithTitle:a3 style:a4 handler:0];
  [v12 setSimpleHandler:v11];

  [v12 setShouldDismissHandler:v10];
  [(UIAlertController *)self addAction:v12];
}

- (void)_addActionWithTitle:(id)a3 image:(id)a4 style:(int64_t)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [UIAlertAction actionWithTitle:a3 style:a5 handler:0];
  [v12 setSimpleHandler:v10];

  [v12 setImage:v11];
  [(UIAlertController *)self addAction:v12];
}

- (void)_setActions:(id)a3
{
  v4 = MEMORY[0x1E695E0F0];
  if (a3)
  {
    v4 = a3;
  }

  v5 = v4;
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

- (void)_performBatchActionChangesWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(UIAlertController *)self _alertControllerView];
  if (v5)
  {
    ++self->_batchActionChangesInProgressCount;
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __57__UIAlertController__performBatchActionChangesWithBlock___block_invoke;
    v9 = &unk_1E70F4A50;
    v10 = self;
    v11 = v4;
    [v5 _performBatchActionChangesWithBlock:&v6];
    [(UIAlertController *)self _updateProvidedStyle:v6];
  }

  else
  {
    v4[2](v4);
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
  v6 = [(UIAlertController *)self preferredAction];

  v7 = v11;
  if (v6 != v11)
  {
    v8 = [(NSMutableArray *)self->_actions containsObject:v11];
    if (v11 && (v8 & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"UIAlertController.m" lineNumber:436 description:@"The -preferredAction of an alert controller must be contained in the -actions array or be nil."];
    }

    objc_storeStrong(&self->_preferredAction, preferredAction);
    v9 = [(UIAlertController *)self _alertControllerView];
    [v9 _updatePreferredAction];

    v7 = v11;
  }
}

- (void)_addSectionDelimiter
{
  v4 = [(NSIndexSet *)self->_indexesOfActionSectionSeparators mutableCopy];
  v3 = [(UIAlertController *)self actions];
  [v4 addIndex:{objc_msgSend(v3, "count")}];

  [(UIAlertController *)self _setIndexesOfActionSectionSeparators:v4];
}

- (void)_setIndexesOfActionSectionSeparators:(id)a3
{
  v6 = a3;
  if (![(NSIndexSet *)self->_indexesOfActionSectionSeparators isEqualToIndexSet:?])
  {
    objc_storeStrong(&self->_indexesOfActionSectionSeparators, a3);
    v5 = [(UIAlertController *)self _alertControllerView];
    [v5 _actionsChanged];
  }
}

- (UILayoutGuide)contentViewControllerLayoutGuide
{
  v2 = [(UIAlertController *)self _alertControllerView];
  v3 = [v2 contentViewControllerLayoutGuide];

  return v3;
}

- (void)_action:(id)a3 changedToKeyCommandWithInput:(id)a4 modifierFlags:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  [(UIAlertController *)self _removeKeyCommandForAction:v9];
  [(UIAlertController *)self _addKeyCommandForAction:v9 withInput:v8 modifierFlags:a5];
}

- (void)_addKeyCommandForAction:(id)a3 withInput:(id)a4 modifierFlags:(int64_t)a5
{
  v10 = a3;
  v8 = a4;
  if ([v8 length])
  {
    v9 = [(UIAlertController *)self _keyCommandForAction:v10 input:v8 modifierFlags:a5];
    [(UIViewController *)self addKeyCommand:v9];
  }
}

- (void)_removeKeyCommandForAction:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->_actionToKeyCommandsDictionary objectForKey:?];
  if (v4)
  {
    [(NSMapTable *)self->_keyCommandToActionMapTable removeObjectForKey:v4];
    [(UIViewController *)self removeKeyCommand:v4];
  }

  [(NSMutableDictionary *)self->_actionToKeyCommandsDictionary removeObjectForKey:v5];
}

- (id)_keyCommandForAction:(id)a3 input:(id)a4 modifierFlags:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [UIKeyCommand keyCommandWithInput:v9 modifierFlags:a5 action:sel__handleKeyCommand_];
  if ([v8 style] == 1 && objc_msgSend(v9, "isEqualToString:", @"UIKeyInputEscape"))
  {
    [v10 setDiscoverabilityTitle:&stru_1EFB14550];
  }

  else
  {
    v11 = [v8 title];
    [v10 setDiscoverabilityTitle:v11];
  }

  [(NSMapTable *)self->_keyCommandToActionMapTable setObject:v8 forKey:v10];

  return v10;
}

- (void)_handleKeyCommand:(id)a3
{
  v4 = [(NSMapTable *)self->_keyCommandToActionMapTable objectForKey:a3];
  if ([v4 isEnabled])
  {
    [(UIAlertController *)self _dismissAnimated:1 triggeringAction:v4];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (sel__handleReturn == a3)
  {
    v5 = [(UIAlertController *)self textFields];
    v4 = [v5 count] == 0;
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
  v3 = [(UIAlertController *)self _actionForReturnKey];
  if (v3)
  {
    v4 = v3;
    [(UIAlertController *)self _dismissAnimated:1 triggeringAction:v3];
    v3 = v4;
  }
}

- (void)_addReturnKeyCommandIfAppropriate
{
  if ([(UIAlertController *)self _resolvedStyle]== 1)
  {
    v3 = [(UIViewController *)self _focusSystem];

    if (!v3)
    {
      v4 = [(UIAlertController *)self _returnKeyCommand];
      [(UIViewController *)self addKeyCommand:v4];
    }
  }
}

- (NSArray)actions
{
  v2 = [(UIAlertController *)self _actions];
  v3 = [v2 copy];

  return v3;
}

- (id)_actionForReturnKey
{
  v3 = [(UIAlertController *)self preferredAction];

  if (v3)
  {
    v4 = [(UIAlertController *)self preferredAction];
    goto LABEL_11;
  }

  v5 = [(UIAlertController *)self actions];
  v6 = [MEMORY[0x1E695DF70] array];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __40__UIAlertController__actionForReturnKey__block_invoke;
  v11[3] = &unk_1E70F48F8;
  v7 = v6;
  v12 = v7;
  [v5 enumerateObjectsUsingBlock:v11];
  v8 = [v7 count];
  if (v8 != 2)
  {
    if (v8 != 1)
    {
      v4 = 0;
      goto LABEL_10;
    }

    v9 = [v7 firstObject];
    goto LABEL_8;
  }

  v4 = [(UIAlertController *)self _cancelAction];

  if (v4)
  {
    v9 = [v7 objectAtIndex:{objc_msgSend(v7, "indexOfObjectPassingTest:", &__block_literal_global_20)}];
LABEL_8:
    v4 = v9;
  }

LABEL_10:

LABEL_11:

  return v4;
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
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIAlertController.m" lineNumber:632 description:@"Text fields can only be added to an alert controller of style UIAlertControllerStyleAlert"];
  }

  [(_UIAlertControllerTextFieldViewController *)self->_textFieldViewController setContainer:self];
  v5 = [(_UIAlertControllerTextFieldViewController *)self->_textFieldViewController addTextFieldWithPlaceholder:0];
  if (v8)
  {
    v8[2](v8, v5);
  }

  [(UIAlertController *)self _updateShouldAlignToKeyboard];
  v6 = [(UIAlertController *)self _alertControllerView];
  [v6 _textFieldsChanged];
}

- (BOOL)_shouldSupportReturnKeyPresses
{
  v3 = [(UIViewController *)self traitCollection];
  if ([v3 userInterfaceIdiom] == 2)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(UIViewController *)self traitCollection];
    v4 = [v5 userInterfaceIdiom] != 8;
  }

  return v4;
}

- (id)_textFieldContainingViewWithTextField:(id)a3 position:(int64_t)a4
{
  v6 = a3;
  v7 = [(UIAlertController *)self _visualStyle];
  v8 = [v7 textFieldContainingViewWithTextField:v6 position:a4];

  return v8;
}

- (void)_didParentTextFieldViewController
{
  [(UIViewController *)self addChildViewController:self->_textFieldViewController];
  textFieldViewController = self->_textFieldViewController;

  [(UIViewController *)textFieldViewController didMoveToParentViewController:self];
}

- (void)setTextFieldsCanBecomeFirstResponder:(BOOL)a3
{
  textFieldViewController = self->_textFieldViewController;
  if (textFieldViewController)
  {
    [(_UIAlertControllerTextFieldViewController *)textFieldViewController setTextFieldsCanBecomeFirstResponder:a3];
  }
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = UIAlertController;
  v3 = [(UIAlertController *)&v8 description];
  if (os_variant_has_internal_diagnostics())
  {
    v6 = [(UIViewController *)self title];
    v7 = [(UIAlertController *)self message];
    v4 = [v3 stringByAppendingFormat:@" title=%@ message=%@", v6, v7];
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
  v10 = [(UIAlertController *)self _alertControllerView];
  [v10 setAlertController:0];

  [(UIAlertController *)self _clearActionHandlers];
  [(_UIAlertControllerTextFieldViewController *)self->_textFieldViewController setContainer:0];
  ownedTransitioningDelegate = self->_ownedTransitioningDelegate;
  self->_ownedTransitioningDelegate = 0;

  v12.receiver = self;
  v12.super_class = UIAlertController;
  [(UIViewController *)&v12 dealloc];
}

- (BOOL)_isSupportedInterfaceOrientation:(int64_t)a3
{
  v5 = [(UIViewController *)self presentingViewController];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 _isSupportedInterfaceOrientation:a3];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = UIAlertController;
    v7 = [(UIViewController *)&v10 _isSupportedInterfaceOrientation:a3];
  }

  v8 = v7;

  return v8;
}

- (void)_getRotationContentSettings:(id *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    v6 = [(UIViewController *)self view];
    v7 = [v6 window];
    v8 = v7;
    if (has_internal_diagnostics)
    {
      if (v7)
      {
        v16 = [(UIViewController *)self view];
        v17 = [v16 window];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
LABEL_12:
          a3->var6 = 0;
          return;
        }

        v6 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
        {
          v19 = [(UIViewController *)self view];
          v20 = [v19 window];
          v21 = 138412290;
          v22 = v20;
          _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "Surprising window for legacy alert presentation: %@", &v21, 0xCu);
        }
      }
    }

    else if (v7)
    {
      v9 = [(UIViewController *)self view];
      v10 = [v9 window];
      objc_opt_class();
      v11 = objc_opt_isKindOfClass();

      if ((v11 & 1) == 0)
      {
        v12 = *(__UILogGetCategoryCachedImpl("Assert", &_getRotationContentSettings____s_category) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = v12;
          v14 = [(UIViewController *)self view];
          v15 = [v14 window];
          v21 = 138412290;
          v22 = v15;
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
  v4 = [(UIAlertController *)self _visualStyle];

  if (has_internal_diagnostics)
  {
    if (!v4)
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "We must we have a _visualStyle before creating the _UIAlertControllerView", buf, 2u);
      }
    }
  }

  else if (!v4)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &loadView___s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "We must we have a _visualStyle before creating the _UIAlertControllerView", buf, 2u);
    }
  }

  v5 = [(UIViewController *)self traitCollection];
  v6 = -[UIAlertController platformStyleViewForAlertController:inIdiom:](self, "platformStyleViewForAlertController:inIdiom:", self, [v5 userInterfaceIdiom]);

  if (objc_opt_respondsToSelector())
  {
    v7 = v6;
    [v7 setSpringLoaded:{-[UIAlertController isSpringLoaded](self, "isSpringLoaded")}];
  }

  [v6 setAlertController:self];
  [(UIViewController *)self setView:v6];
  v8 = [(UIViewController *)self _screen];
  [v8 bounds];
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
  v10 = [(UIAlertController *)self _visualStyle];
  [v9 _setVisualStyle:v10];
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
  v3 = [(UIViewController *)self _window];
  if ([v3 _isHostedInAnotherProcess])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = [v3 _windowOwnsInterfaceOrientation] ^ 1;
  }

  if ([(UIAlertController *)self _shouldAlignToKeyboard])
  {
    v5 = [(UIAlertController *)self contentViewController];
    v6 = [(UIAlertController *)self textFields];
    v7 = [v6 count];
    v8 = [(UIAlertController *)self _visualStyle];
    v9 = [v8 placementAvoidsKeyboard];
    if (v5)
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

    v11 = v10 & v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_setShouldReverseActions:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIAlertController *)self _alertControllerView];
  [v4 _setActionsReversed:v3];
}

- (BOOL)_shouldReverseActions
{
  v2 = [(UIAlertController *)self _alertControllerView];
  v3 = [v2 _actionsReversed];

  return v3;
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = UIAlertController;
  [(UIViewController *)&v16 viewDidLoad];
  v3 = [(UIAlertController *)self _alertControllerView];
  v4 = [(UIViewController *)self traitCollection];
  v5 = -[UIAlertController _idiomSupportsBackGesture:](self, "_idiomSupportsBackGesture:", [v4 userInterfaceIdiom]);

  if (v5)
  {
    [(UIAlertController *)self _installBackGestureRecognizer];
  }

  v6 = [(UIViewController *)self title];

  if (v6)
  {
    v7 = [(UIViewController *)self title];
    [v3 _setTitle:v7];
  }

  v8 = [(UIAlertController *)self message];

  if (v8)
  {
    v9 = [(UIAlertController *)self message];
    [v3 _setMessage:v9];
  }

  v10 = [(UIAlertController *)self _attributedTitle];

  if (v10)
  {
    v11 = [(UIAlertController *)self _attributedTitle];
    [v3 _setAttributedTitle:v11];
  }

  v12 = [(UIAlertController *)self _attributedMessage];

  if (v12)
  {
    v13 = [(UIAlertController *)self _attributedMessage];
    [v3 _setAttributedMessage:v13];
  }

  v14 = [(UIAlertController *)self _attributedDetailMessage];

  if (v14)
  {
    v15 = [(UIAlertController *)self _attributedDetailMessage];
    [v3 _setAttributedDetailMessage:v15];
  }
}

- (id)_alertControllerView
{
  if ([(UIViewController *)self isViewLoaded])
  {
    v3 = [(UIViewController *)self view];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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
    v3 = [(UIAlertController *)self _alertControllerView];
    [v3 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
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
  v3 = [(UIAlertController *)self _alertControllerView];
  [(UIAlertController *)self _resolvedStyleChanged];
  [(UIAlertController *)self _reevaluateResolvedStyle];
  if ([v3 conformsToProtocol:&unk_1EFF9DFA0])
  {
    v4 = v3;
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

  if ([v3 conformsToProtocol:&unk_1EFF9E0A8] && self->_contentViewController)
  {
    [v3 _addContentViewControllerToViewHierarchyIfNecessary];
  }
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = UIAlertController;
  [(UIViewController *)&v6 viewDidLayoutSubviews];
  v3 = [(UIAlertController *)self _alertControllerView];
  if ([v3 conformsToProtocol:&unk_1EFF9DFA0])
  {
    [v3 _recomputeActionMetrics];
  }

  v4 = [v3 window];
  if (v4)
  {
    isInRecomputePreferredContentSize = self->_isInRecomputePreferredContentSize;

    if (!isInRecomputePreferredContentSize)
    {
      [(UIAlertController *)self _recomputePreferredContentSize];
    }
  }

  if (_UISolariumEnabled())
  {
    [v3 _updateTextAlignmentAfterLayout];
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v9.receiver = self;
  v9.super_class = UIAlertController;
  [(UIViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  if ([(UIAlertController *)self _shouldDismissOnSizeChange])
  {
    [(UIAlertController *)self _dismissWithCancelOrEmptyAction];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__UIAlertController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E70F3B98;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:0];
}

void __72__UIAlertController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _alertControllerView];
  [v1 _actionLayoutDirectionChanged];
}

- (void)_reevaluateResolvedStyle
{
  v3 = [(UIAlertController *)self preferredStyle];
  resolvedStyle = self->_resolvedStyle;
  self->_resolvedStyle = v3;
  if (_UIAppUseModernRotationAndPresentationBehaviors() || [(UIViewController *)self isViewLoaded])
  {
    [(UIAlertController *)self _updateModalPresentationStyle];
  }

  if (resolvedStyle != v3)
  {

    [(UIAlertController *)self _resolvedStyleChanged];
  }
}

- (void)_updateProvidedStyleWithTraitCollection:(id)a3
{
  v4 = a3;
  if (self->_batchActionChangesInProgressCount <= 0)
  {
    v20 = v4;
    v5 = [(UIAlertController *)self _resolvedStyle];
    v6 = [(UIAlertController *)self _currentDescriptor];
    v7 = [(UIAlertController *)self _styleProvider];
    v8 = [v7 visualStyleForAlertControllerStyle:v5 traitCollection:v20 descriptor:v6];
    v9 = [v8 copy];

    if (!v9)
    {
      v10 = [(UIAlertController *)self visualStyleForAlertControllerStyle:v5 traitCollection:v20 descriptor:v6];
      if (!v10)
      {
LABEL_12:

        v4 = v20;
        goto LABEL_13;
      }

      v9 = v10;
    }

    [v9 setTraitCollection:v20];
    [v9 setDescriptor:v6];
    v11 = [(UIAlertController *)self _visualStyle];
    v12 = [v11 isEqual:v9];

    if ((v12 & 1) == 0)
    {
      [(UIAlertController *)self _setVisualStyle:v9];
      [(UIAlertController *)self _updateShouldAlignToKeyboard];
    }

    v13 = [(UIAlertController *)self _alertControllerView];
    v14 = [v13 _visualStyle];
    v15 = [v14 isEqual:v9];

    if ((v15 & 1) == 0)
    {
      [v13 _setVisualStyle:v9];
    }

    v16 = [(_UIAlertControllerTextFieldViewController *)self->_textFieldViewController visualStyle];
    v17 = [v16 isEqual:v9];

    if ((v17 & 1) == 0)
    {
      [(UIAlertController *)self _updateTextFieldViewControllerWithVisualStyle:v9];
    }

    v18 = [(UIAlertController *)self _headerContentViewController];
    [v18 _containingAlertControllerDidChangeVisualStyle:v9];

    v19 = [(UIAlertController *)self contentViewController];
    [v19 _containingAlertControllerDidChangeVisualStyle:v9];

    goto LABEL_12;
  }

LABEL_13:
}

- (void)_updateProvidedStyle
{
  v3 = [(UIViewController *)self traitCollection];
  [(UIAlertController *)self _updateProvidedStyleWithTraitCollection:v3];
}

- (id)_currentDescriptor
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(UIAlertControllerDescriptor);
  v4 = [(UIAlertController *)self _headerContentViewController];
  [(UIAlertControllerDescriptor *)v3 setHasHeaderContentViewController:v4 != 0];

  [(UIAlertControllerDescriptor *)v3 setHasTitle:[(UIAlertController *)self _hasTitle]];
  [(UIAlertControllerDescriptor *)v3 setHasMessage:[(UIAlertController *)self _hasMessage]];
  v5 = [(UIAlertController *)self contentViewController];
  [(UIAlertControllerDescriptor *)v3 setHasContentViewController:v5 != 0];

  v6 = [(UIAlertController *)self actions];
  -[UIAlertControllerDescriptor setNumberOfActions:](v3, "setNumberOfActions:", [v6 count]);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(UIAlertController *)self actions];
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        if ([v13 style] == 1)
        {
          v14 = [(UIAlertController *)self _visualStyle];
          v15 = [v14 hideCancelAction:v13 inAlertController:self];

          if (v15)
          {
            continue;
          }
        }

        ++v10;
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  [(UIAlertControllerDescriptor *)v3 setNumberOfVisibleActions:v10];
  v16 = [(UIViewController *)self _existingView];
  v17 = [v16 superview];
  [v17 safeAreaInsets];
  [(UIAlertControllerDescriptor *)v3 setContainerViewSafeAreaInsets:?];

  v18 = [(UIViewController *)self _window];
  -[UIAlertControllerDescriptor setApplicationIsFullscreen:](v3, "setApplicationIsFullscreen:", [v18 _windowOwnsInterfaceOrientation]);

  v19 = [(UIViewController *)self _existingView];
  v20 = [v19 traitCollection];
  -[UIAlertControllerDescriptor setIsPad:](v3, "setIsPad:", [v20 userInterfaceIdiom] == 1);

  v21 = [(UIAlertController *)self textFields];
  -[UIAlertControllerDescriptor setHasTextfields:](v3, "setHasTextfields:", [v21 count] != 0);

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
  v3 = [(UIViewController *)self traitCollection];
  v4 = -[UIAlertController _idiomSupportsBackGesture:](self, "_idiomSupportsBackGesture:", [v3 userInterfaceIdiom]);

  if (v4)
  {

    [(UIAlertController *)self _installBackGestureRecognizer];
  }

  else
  {

    [(UIAlertController *)self _uninstallBackGestureRecognizer];
  }
}

- (int64_t)_buttonTypeForBackGestureForIdiom:(int64_t)a3
{
  if (a3 == 8 || a3 == 2)
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
    v7 = [(UIViewController *)self traitCollection];
    v8 = [v6 numberWithInteger:{-[UIAlertController _buttonTypeForBackGestureForIdiom:](self, "_buttonTypeForBackGestureForIdiom:", objc_msgSend(v7, "userInterfaceIdiom"))}];
    v11[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(UITapGestureRecognizer *)v5 setAllowedPressTypes:v9];
  }

  v10 = [(UIAlertController *)self _alertControllerView];
  [v10 addGestureRecognizer:self->_backButtonDismissGestureRecognizer];
}

- (void)_uninstallBackGestureRecognizer
{
  v3 = [(UIAlertController *)self _alertControllerView];
  [v3 removeGestureRecognizer:self->_backButtonDismissGestureRecognizer];

  backButtonDismissGestureRecognizer = self->_backButtonDismissGestureRecognizer;
  self->_backButtonDismissGestureRecognizer = 0;
}

+ (void)registerPlatformStyleProvider:(id)a3 forIdiom:(int64_t)a4
{
  v9 = a3;
  v5 = qword_1ED499BC8;
  if (!qword_1ED499BC8)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = qword_1ED499BC8;
    qword_1ED499BC8 = v6;

    v5 = qword_1ED499BC8;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v5 setObject:v9 forKey:v8];
}

+ (id)_createTransitioningDelegateForIdiom:(int64_t)a3
{
  v3 = qword_1ED499BC8;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [v3 objectForKey:v4];

  if (!v5 || (objc_opt_respondsToSelector() & 1) == 0 || ([v5 preferredTransitioningDelegate], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_alloc_init(_UIAlertControllerTransitioningDelegate);
  }

  return v6;
}

- (id)visualStyleForAlertControllerStyle:(int64_t)a3 traitCollection:(id)a4 descriptor:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [v8 userInterfaceIdiom];
  if (v10 == -1)
  {
    v11 = +[UITraitCollection _fallbackTraitCollection];
    v10 = [v11 userInterfaceIdiom];
  }

  v12 = qword_1ED499BC8;
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  v14 = [v12 objectForKey:v13];

  if (v14)
  {
    v15 = [v14 visualStyleForAlertControllerStyle:a3 traitCollection:v8 descriptor:v9];
    if (v15)
    {
      goto LABEL_34;
    }
  }

  if (v10 == -1)
  {
    goto LABEL_20;
  }

  if (((a3 - 1000) < 2 || !a3) && ![(UIAlertController *)self _forceAlertStyle])
  {
    if (v10 < 2)
    {
      goto LABEL_17;
    }

    if (v10 == 3)
    {
      v16 = off_1E70E93C8;
      goto LABEL_31;
    }

    if (v10 == 5)
    {
LABEL_17:
      if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x3E8)
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
  if (v10 > 2)
  {
    if (v10 == 8)
    {
      v16 = off_1E70E93E0;
    }

    else if (v10 != 5)
    {
      if (v10 != 3)
      {
        goto LABEL_32;
      }

      v16 = off_1E70E93E8;
    }

LABEL_31:
    v15 = objc_alloc_init(*v16);
    goto LABEL_32;
  }

  if (v10 < 2)
  {
    goto LABEL_31;
  }

  if (v10 == 2)
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
      v21 = v10;
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
      v21 = v10;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "No visual style provided for idiom %ld", &v20, 0xCu);
    }
  }

  v15 = 0;
LABEL_34:

  return v15;
}

- (id)platformStyleViewForAlertController:(id)a3 inIdiom:(int64_t)a4
{
  v5 = a3;
  v6 = qword_1ED499BC8;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v8 = [v6 objectForKey:v7];

  if (!v8 || ([v8 platformStyleViewForAlertController:v5 inIdiom:a4], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = objc_alloc_init(_UIAlertControllerPhoneTVMacView);
  }

  return v9;
}

- (void)_invokeHandlersForAction:(id)a3
{
  v8 = a3;
  v4 = [v8 handler];

  if (v4)
  {
    v5 = [v8 handler];
    (v5)[2](v5, v8);
  }

  v6 = [v8 simpleHandler];

  if (v6)
  {
    v7 = [v8 simpleHandler];
    v7[2]();
  }

  else if (!v4)
  {
    goto LABEL_7;
  }

  [(NSPointerArray *)self->_actionsWithInvokedHandlers addPointer:v8];
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

- (void)_attemptAnimatedDismissWithGestureRecognizer:(id)a3
{
  if ([a3 state] == 3 && -[UIAlertController _canDismissWithGestureRecognizer](self, "_canDismissWithGestureRecognizer"))
  {

    [(UIAlertController *)self _dismissWithCancelOrEmptyAction];
  }
}

- (void)_dismissFromBackButton:(id)a3
{
  if ([a3 state] == 3)
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
  v3 = [(UIAlertController *)self cancelAction];
  [(UIAlertController *)self _dismissAnimated:1 triggeringAction:v3 triggeredByPopoverDimmingView:1 dismissCompletion:0];
}

- (void)_beginNoPresentingViewControllerPresentation:(id)a3
{
  v4 = a3;
  presenter = self->_presenter;
  v8 = v4;
  if (!presenter)
  {
    v6 = objc_alloc_init(_UIAlertControllerShimPresenter);
    v7 = self->_presenter;
    self->_presenter = v6;

    [(_UIAlertControllerShimPresenter *)self->_presenter setAlertController:self];
    v4 = v8;
    presenter = self->_presenter;
  }

  [(_UIAlertControllerShimPresenter *)presenter _presentAlertControllerAnimated:1 hostingScene:v4 completion:0];
}

- (void)_dismissAnimated:(BOOL)a3 triggeringAction:(id)a4 triggeredByPopoverDimmingView:(BOOL)a5 dismissCompletion:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__UIAlertController__dismissAnimated_triggeringAction_triggeredByPopoverDimmingView_dismissCompletion___block_invoke;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v12 = v10;
  v41 = v12;
  v13 = _Block_copy(aBlock);
  if (v7)
  {
    v14 = self;
    goto LABEL_3;
  }

  if (v12)
  {
    v21 = [v12 shouldDismissHandler];
    if (!v21 || (v22 = v21, [v12 shouldDismissHandler], v23 = objc_claimAutoreleasedReturnValue(), v24 = v23[2](), v23, v22, (v24 & 1) != 0))
    {
      v25 = self;
      v26 = [(UIViewController *)v25 _parentModalViewController];

      if (v26)
      {
        v27 = [(UIViewController *)v25 popoverPresentationController];
        v28 = [v27 delegate];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && ([v28 delegate], v29 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v29, (isKindOfClass))
        {
          v15 = &__block_literal_global_681;
        }

        else
        {
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __manualPopoverPresentationControllerDidDismissPopoverInvocationForDismiss_block_invoke_2;
          v42[3] = &unk_1E70F3590;
          v43 = v27;
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
      v39 = v11;
      v18 = v16;
      v19 = _Block_copy(v36);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __103__UIAlertController__dismissAnimated_triggeringAction_triggeredByPopoverDimmingView_dismissCompletion___block_invoke_3;
      v31[3] = &unk_1E70F4968;
      v34 = v7;
      v35 = a3;
      v31[4] = self;
      v33 = v19;
      v32 = v12;
      v20 = v19;
      [(UIAlertController *)self _performAction:v32 invokeActionBlock:v17 dismissAndPerformActionIfNotAlreadyPerformed:v31];

      goto LABEL_18;
    }

    [(UIAlertController *)self _performAction:v12 invokeActionBlock:v13 dismissAndPerformActionIfNotAlreadyPerformed:0];
  }

  if (v11)
  {
    (*(v11 + 2))(v11, 0);
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

- (void)_performAction:(id)a3 invokeActionBlock:(id)a4 dismissAndPerformActionIfNotAlreadyPerformed:(id)a5
{
  v10 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_coordinatedActionPerformingDelegate);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _performActionForAlertController:self invokeActionBlock:v10 dismissControllerBlock:v7];
  }

  else if (v7)
  {
    v7[2](v7, 0);
  }

  else if (v10)
  {
    v10[2]();
  }
}

- (void)_postWillBeginSystemProvidedDismissalOfAlertController
{
  v3 = [(UIAlertController *)self _systemProvidedPresentationDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 _willBeginSystemProvidedDismissalOfAlertController:self];
  }
}

- (void)_postDidBeginSystemProvidedDismissalOfAlertController
{
  v3 = [(UIAlertController *)self _systemProvidedPresentationDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 _didBeginSystemProvidedDismissalOfAlertController:self];
  }
}

- (id)_presentationControllerForPresentedController:(id)a3 presentingController:(id)a4 sourceController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (+[UIAlertController _shouldUsePresentationController])
  {
    v11 = [(UIAlertController *)self _viewControllerIsPresentedInModalPresentationContext:v10];
    v12 = [(UIAlertController *)self _resolvedStyle];
    v13 = qword_1ED499BC8;
    v14 = MEMORY[0x1E696AD98];
    v15 = [v10 traitCollection];
    v16 = [v14 numberWithInteger:{objc_msgSend(v15, "userInterfaceIdiom")}];
    v17 = [v13 objectForKey:v16];

    if (objc_opt_respondsToSelector())
    {
      v18 = [v17 platformStylePresentationControllerForPresentedController:v8 presentingController:v9 sourceController:v10 style:v12];
      if (v18)
      {
        v19 = v18;

        goto LABEL_18;
      }
    }

    v21 = +[UIDevice currentDevice];
    v22 = [v21 userInterfaceIdiom];

    if ((v22 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v23 = 1;
    }

    else
    {
      v24 = [v10 traitCollection];
      if ([v24 userInterfaceIdiom] == 1)
      {
        v23 = 1;
      }

      else
      {
        v25 = [v9 traitCollection];
        v23 = [v25 userInterfaceIdiom] == 1;
      }
    }

    if ((v12 - 1000) >= 2 && v12 || [(UIAlertController *)self _forceAlertStyle])
    {
      v20 = [(_UIAlertControllerPresentationController *)[_UIAlertControllerAlertPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v9];
LABEL_16:

      goto LABEL_17;
    }

    if (v23)
    {
      if (!v11)
      {
LABEL_23:
        v20 = [(UIPopoverPresentationController *)[_UIAlertControllerActionSheetRegularPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v9];
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

    v27 = [(_UIAlertControllerPresentationController *)[_UIAlertControllerActionSheetCompactPresentationController alloc] initWithPresentedViewController:v8 presentingViewController:v10];
    v20 = v27;
    if (v11)
    {
      [(_UIAlertControllerPresentationController *)v27 _setIsCurrentContext:1];
    }

    if ([v10 _ancestorViewControllerIsInPopover])
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
  v3 = [(UIAlertController *)self _modalPresentationStyleForResolvedStyle];

  [(UIAlertController *)self setModalPresentationStyle:v3];
}

- (void)setModalPresentationStyle:(int64_t)a3
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
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
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
  v3 = [(UIViewController *)self view];
  v4 = v3;
  if (v3)
  {
    [v3 transform];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  v5 = [(UIViewController *)self view];
  [v5 frame];
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
      v14 = [(UIViewController *)self view];
      [v14 setFrame:{v7, v9, v13, v11}];

      [(UIAlertController *)self set_shouldFlipFrameForShimDismissal:1];
    }
  }
}

- (void)_flipFrameForShimDismissalIfNecessary
{
  if ([(UIAlertController *)self _shouldFlipFrameForShimDismissal])
  {
    v3 = [(UIViewController *)self view];
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(UIViewController *)self view];
    [v12 setFrame:{v5, v7, v11, v9}];

    [(UIAlertController *)self set_shouldFlipFrameForShimDismissal:0];
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.receiver = self;
  v10.super_class = UIAlertController;
  [(UIViewController *)&v10 willTransitionToTraitCollection:v6 withTransitionCoordinator:v7];
  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __79__UIAlertController_willTransitionToTraitCollection_withTransitionCoordinator___block_invoke;
    v8[3] = &unk_1E70F4990;
    v8[4] = self;
    v9 = v6;
    [v7 animateAlongsideTransition:v8 completion:0];
  }

  else
  {
    [(UIAlertController *)self _updateProvidedStyleWithTraitCollection:v6];
  }
}

- (BOOL)_isPresentedAsPopover
{
  v3 = [(UIAlertController *)self _alertControllerContainer];
  if (+[UIAlertController _shouldUsePresentationController])
  {
    v4 = [v3 _existingPresentationControllerImmediate:1 effective:1];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    v6 = [(UIViewController *)self _popoverController];
    v4 = v6;
    if (v6)
    {
      v7 = [v6 contentViewController];
      isKindOfClass = v7 == v3;
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  return isKindOfClass & 1;
}

- (BOOL)_viewControllerIsPresentedInModalPresentationContext:(id)a3
{
  v3 = a3;
  if (dyld_program_sdk_at_least())
  {
    v4 = 0;
  }

  else if ([v3 _isInPopoverPresentation])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[UIDevice currentDevice];
    v6 = [v5 userInterfaceIdiom];

    if ((v6 & 0xFFFFFFFFFFFFFFFBLL) != 1 || !dyld_program_sdk_at_least() || (v4 = 1, ([v3 _isInContextOfPresentationControllerOfClass:objc_opt_class() effective:1] & 1) == 0))
    {
      v4 = [v3 _ancestorViewControllerIsInPopover];
    }
  }

  return v4;
}

- (id)_alertControllerContainer
{
  v2 = self;
  v3 = [(UIViewController *)self parentViewController];
  if ([(UIAlertController *)v3 conformsToProtocol:&unk_1EFEC3198])
  {
    v2 = v3;
  }

  v4 = v2;

  return v2;
}

- (BOOL)_shouldSizeToFillSuperview
{
  if (!+[UIAlertController _shouldUsePresentationController])
  {
    v3 = [(UIAlertController *)self _alertControllerView];
    v4 = [v3 presentedAsPopover];

    if (!v4)
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

  v3 = [(UIAlertController *)self contentViewController];
  [v3 preferredContentSize];
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

    v6 = [(UIAlertController *)self _alertControllerView];
    [v6 _setMessage:v7];
  }
}

- (void)_setAttributedTitle:(id)a3
{
  v7 = a3;
  if (([v7 isEqual:self->_attributedTitle] & 1) == 0)
  {
    v4 = [v7 copy];
    attributedTitle = self->_attributedTitle;
    self->_attributedTitle = v4;

    v6 = [(UIAlertController *)self _alertControllerView];
    [v6 _setAttributedTitle:v7];
  }
}

- (void)_setTitleMaximumLineCount:(int64_t)a3
{
  if (self->_titleMaximumLineCount != a3)
  {
    self->_titleMaximumLineCount = a3;
    v4 = [(UIAlertController *)self _alertControllerView];
    [v4 _updateLabelProperties];
  }
}

- (void)_setTitleLineBreakMode:(int64_t)a3
{
  if (self->_titleLineBreakMode != a3)
  {
    self->_titleLineBreakMode = a3;
    v4 = [(UIAlertController *)self _alertControllerView];
    [v4 _updateLabelProperties];
  }
}

- (void)_setAttributedMessage:(id)a3
{
  v7 = a3;
  if (([v7 isEqual:self->_attributedMessage] & 1) == 0)
  {
    v4 = [v7 copy];
    attributedMessage = self->_attributedMessage;
    self->_attributedMessage = v4;

    v6 = [(UIAlertController *)self _alertControllerView];
    [v6 _setAttributedMessage:v7];
  }
}

- (void)_setAttributedDetailMessage:(id)a3
{
  v7 = a3;
  if (([v7 isEqual:self->_attributedDetailMessage] & 1) == 0)
  {
    v4 = [v7 copy];
    attributedDetailMessage = self->_attributedDetailMessage;
    self->_attributedDetailMessage = v4;

    v6 = [(UIAlertController *)self _alertControllerView];
    [v6 _setAttributedDetailMessage:v7];
  }
}

- (BOOL)_hasTitle
{
  v3 = [(UIViewController *)self title];

  if (![(UIAlertController *)self _shouldTreatEmptyStringsAsNil])
  {
    if (!v3)
    {
      goto LABEL_4;
    }

    return 1;
  }

  if (v3)
  {
    v4 = [(UIViewController *)self title];
    v5 = [v4 length];

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
  v3 = [(UIAlertController *)self _attributedTitle];

  v4 = ![(UIAlertController *)self _shouldTreatEmptyStringsAsNil];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 1) == 0 && v3)
  {
    v6 = [(UIAlertController *)self _attributedTitle];
    v5 = [v6 length] != 0;
  }

  return v5;
}

- (BOOL)_hasMessage
{
  v3 = [(UIAlertController *)self message];

  if (![(UIAlertController *)self _shouldTreatEmptyStringsAsNil])
  {
    if (!v3)
    {
      goto LABEL_4;
    }

    return 1;
  }

  if (v3)
  {
    v4 = [(UIAlertController *)self message];
    v5 = [v4 length];

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
  v3 = [(UIAlertController *)self _attributedMessage];

  v4 = ![(UIAlertController *)self _shouldTreatEmptyStringsAsNil];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 1) == 0 && v3)
  {
    v6 = [(UIAlertController *)self _attributedMessage];
    v5 = [v6 length] != 0;
  }

  return v5;
}

- (BOOL)_hasDetailMessage
{
  v3 = [(UIAlertController *)self _attributedDetailMessage];

  v4 = ![(UIAlertController *)self _shouldTreatEmptyStringsAsNil];
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((v4 & 1) == 0 && v3)
  {
    v6 = [(UIAlertController *)self _attributedDetailMessage];
    v5 = [v6 length] != 0;
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
  v2 = [(UIAlertController *)self _alertControllerView];
  v3 = [v2 _focusedAction];

  return v3;
}

- (UIView)_foregroundView
{
  v2 = [(UIAlertController *)self _alertControllerView];
  v3 = [v2 _contentView];

  return v3;
}

- (UIView)_dimmingView
{
  if ([(UIAlertController *)self _shouldProvideDimmingView])
  {
    v3 = [(UIAlertController *)self _alertControllerView];
LABEL_4:
    v4 = [v3 _dimmingView];
    goto LABEL_6;
  }

  v3 = [(UIViewController *)self _existingPresentationControllerImmediate:1 effective:1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  v4 = 0;
LABEL_6:

  return v4;
}

- (UIEdgeInsets)_contentInsets
{
  v3 = [(UIAlertController *)self _alertControllerView];
  v4 = [v3 _visualStyle];
  v5 = [(UIViewController *)self _existingView];
  v6 = [v5 superview];
  [v4 contentInsetsForContainerView:v6];
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

- (void)_setSeparatedHeaderContentViewController:(id)a3
{
  v5 = a3;
  if (self->_separatedHeaderContentViewController != v5)
  {
    v11 = v5;
    v6 = [(UIAlertController *)self _separatedHeaderContentViewController];
    [v6 removeFromParentViewController];
    v7 = [(UIAlertController *)self _alertControllerView];
    if ([v7 conformsToProtocol:&unk_1EFF9DFA0])
    {
      [v7 _removeSeparatedHeaderContentViewControllerFromHierarchy];
    }

    objc_storeStrong(&self->_separatedHeaderContentViewController, a3);
    v8 = v11;
    if (v11)
    {
      v9 = [(UIViewController *)v11 view];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

      [(UIViewController *)self addChildViewController:v11];
      [(UIViewController *)v11 didMoveToParentViewController:self];
      v8 = v11;
      if (v7)
      {
        v10 = [v7 conformsToProtocol:&unk_1EFF9DFA0];
        v8 = v11;
        if (v10)
        {
          [v7 _addSeparatedHeaderContentViewControllerToViewHierarchyIfNecessary];
          v8 = v11;
        }
      }
    }

    if ((v8 != 0) == (v6 == 0))
    {
      [v7 _propertiesChanged];
      [(UIAlertController *)self _updateProvidedStyle];
    }

    v5 = v11;
  }
}

- (void)_setHeaderContentViewController:(id)a3
{
  v5 = a3;
  if (self->_headerContentViewController != v5)
  {
    v11 = v5;
    v6 = [(UIAlertController *)self _headerContentViewController];
    [v6 removeFromParentViewController];
    v7 = [(UIAlertController *)self _alertControllerView];
    if ([v7 conformsToProtocol:&unk_1EFF9DFA0])
    {
      [v7 _removeHeaderContentViewControllerViewFromHierarchy];
    }

    objc_storeStrong(&self->_headerContentViewController, a3);
    v8 = v11;
    if (v11)
    {
      v9 = [(UIViewController *)v11 view];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

      [(UIViewController *)self addChildViewController:v11];
      [(UIViewController *)v11 didMoveToParentViewController:self];
      v8 = v11;
      if (v7)
      {
        v10 = [v7 conformsToProtocol:&unk_1EFF9DFA0];
        v8 = v11;
        if (v10)
        {
          [v7 _addHeaderContentViewControllerToViewHierarchyIfNecessary];
          v8 = v11;
        }
      }
    }

    if ((v8 != 0) == (v6 == 0))
    {
      [v7 _propertiesChanged];
      [(UIAlertController *)self _updateProvidedStyle];
    }

    v5 = v11;
  }
}

- (void)setContentViewController:(id)a3
{
  v5 = a3;
  if (self->_contentViewController != v5)
  {
    v11 = v5;
    v6 = [(UIAlertController *)self contentViewController];
    [v6 removeFromParentViewController];
    v7 = [(UIAlertController *)self _alertControllerView];
    if ([v7 conformsToProtocol:&unk_1EFF9E0A8])
    {
      [v7 _removeContentViewControllerViewFromHierarchy];
    }

    objc_storeStrong(&self->_contentViewController, a3);
    v8 = v11;
    if (v11)
    {
      v9 = [(UIViewController *)v11 view];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

      [(UIViewController *)self addChildViewController:v11];
      [(UIViewController *)v11 didMoveToParentViewController:self];
      v8 = v11;
      if (v7)
      {
        v10 = [v7 conformsToProtocol:&unk_1EFF9E0A8];
        v8 = v11;
        if (v10)
        {
          [v7 _addContentViewControllerToViewHierarchyIfNecessary];
          v8 = v11;
        }
      }
    }

    if ((v8 != 0) == (v6 == 0))
    {
      [v7 _propertiesChanged];
      [(UIAlertController *)self _updateProvidedStyle];
    }

    v5 = v11;
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v12 = a3;
  v4 = [(UIAlertController *)self _alertControllerView];
  v5 = [v4 conformsToProtocol:&unk_1EFF9E0A8];

  if (v5)
  {
    v6 = [(UIAlertController *)self _alertControllerView];
    v7 = [(UIAlertController *)self contentViewController];

    if (v7 == v12)
    {
      [v6 _sizeOfContentViewControllerChanged];
    }
  }

  v8 = [(UIAlertController *)self _alertControllerView];
  v9 = [v8 conformsToProtocol:&unk_1EFF9DFA0];

  if (v9)
  {
    v10 = [(UIAlertController *)self _alertControllerView];
    v11 = [(UIAlertController *)self _headerContentViewController];

    if (v11 == v12)
    {
      [v10 _sizeOfHeaderContentViewControllerChanged];
    }

    else
    {
      [v10 _sizeOfTextFieldViewControllerChanged];
    }

    [(UIAlertController *)self _recomputePreferredContentSize];
  }
}

- (void)_headerContentViewControllerWillTransitionToSize:(CGSize)a3 withAnimations:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(UIAlertController *)self _headerContentViewController];
  [(UIAlertController *)self _childViewController:v8 willTransitionToSize:v7 withAnimations:width, height];
}

- (void)_contentViewControllerWillTransitionToSize:(CGSize)a3 withAnimations:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [(UIAlertController *)self contentViewController];
  [(UIAlertController *)self _childViewController:v8 willTransitionToSize:v7 withAnimations:width, height];
}

- (void)_childViewController:(id)a3 willTransitionToSize:(CGSize)a4 withAnimations:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  if (![(UIViewController *)self isBeingPresented]&& ![(UIViewController *)self isBeingDismissed])
  {
    v14 = objc_alloc_init(_UIAnimationCoordinator);
    v15 = [(UIAlertController *)self _alertControllerView];
    v16 = v9;
    [(_UIAnimationCoordinator *)v14 setDuration:0.35];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __78__UIAlertController__childViewController_willTransitionToSize_withAnimations___block_invoke_2;
    v33[3] = &__block_descriptor_48_e33_v16__0___UIAnimationCoordinator_8l;
    *&v33[4] = width;
    *&v33[5] = height;
    [(_UIAnimationCoordinator *)v14 setPreperation:v33];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __78__UIAlertController__childViewController_willTransitionToSize_withAnimations___block_invoke_3;
    v30[3] = &unk_1E70F4A00;
    v32 = v10;
    v17 = v15;
    v31 = v17;
    [(_UIAnimationCoordinator *)v14 setAnimator:v30];
    objc_initWeak(&location, self);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __78__UIAlertController__childViewController_willTransitionToSize_withAnimations___block_invoke_4;
    v27[3] = &unk_1E70F4A28;
    objc_copyWeak(&v28, &location);
    [(_UIAnimationCoordinator *)v14 setCompletion:v27];
    [(_UIAnimationCoordinator *)v14 setContainerView:v17];
    [(_UIAnimationCoordinator *)v14 setViewController:v16];
    v18 = [v16 view];
    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [(_UIAnimationCoordinator *)v14 setStartFrame:v20, v22, v24, v26];
    [(_UIAnimationCoordinator *)v14 setEndFrame:v20, v22, v24, v26];
    [(UIAlertController *)self setTemporaryAnimationCoordinator:v14];
    [(_UIAnimationCoordinator *)v14 animate];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);

    goto LABEL_7;
  }

  v11 = [(UIViewController *)self transitionCoordinator];

  if (!v11 || (-[UIViewController transitionCoordinator](self, "transitionCoordinator"), v12 = objc_claimAutoreleasedReturnValue(), v34[0] = MEMORY[0x1E69E9820], v34[1] = 3221225472, v34[2] = __78__UIAlertController__childViewController_willTransitionToSize_withAnimations___block_invoke, v34[3] = &unk_1E70F49B8, v35 = v10, v13 = [v12 animateAlongsideTransition:v34 completion:0], v12, v35, (v13 & 1) == 0))
  {
    v10[2](v10);
    v14 = [(UIAlertController *)self _alertControllerView];
    [(_UIAnimationCoordinator *)v14 layoutIfNeeded];
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

+ (id)_alertControllerContainedInViewController:(id)a3
{
  v5 = a3;
  if (([v5 conformsToProtocol:&unk_1EFEC3198] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"UIAlertController.m" lineNumber:2275 description:@"A view controller not containing an alert controller was asked for its contained alert controller."];
  }

  v6 = [v5 _containedAlertController];

  return v6;
}

- (BOOL)_hasContentToDisplay
{
  v2 = self;
  v3 = [(UIViewController *)v2 title];
  if (v3)
  {
    goto LABEL_2;
  }

  v6 = [(UIAlertController *)v2 _attributedTitle];

  if (v6)
  {
    return 1;
  }

  v8 = v2;
  v3 = [(UIAlertController *)v8 message];
  if (v3)
  {
LABEL_2:
    v4 = v3;
    goto LABEL_3;
  }

  v9 = [(UIAlertController *)v8 _attributedMessage];

  if (v9)
  {
    return 1;
  }

  v10 = v8;
  v4 = [(UIAlertController *)v10 _headerContentViewController];
  if (!v4)
  {
    v11 = [(UIAlertController *)v10 contentViewController];
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v12 = [(UIAlertController *)v10 _actions];
      v5 = [v12 count] != 0;
    }

    goto LABEL_4;
  }

LABEL_3:
  v5 = 1;
LABEL_4:

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v6 = [(UIViewController *)self _window];
  v7 = [v6 windowScene];
  v8 = [v7 _alertControllerStackManager];
  objc_storeWeak(&self->_alertControllerStackManager, v8);

  WeakRetained = objc_loadWeakRetained(&self->_alertControllerStackManager);
  [WeakRetained _alertControllerWillAppear:self];

  [(UIAlertController *)self _preserveInputViewsAnimated:v3];
  [(UIAlertController *)self _becomeFirstResponderIfAppropriate];
  [(UIAlertController *)self _addReturnKeyCommandIfAppropriate];
  v10 = [(UIViewController *)self transitionCoordinator];
  v11 = v10;
  if (v10)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __36__UIAlertController_viewWillAppear___block_invoke;
    v17[3] = &unk_1E70F4990;
    v17[4] = self;
    v18 = v10;
    [v18 animateAlongsideTransition:v17 completion:0];
  }

  else
  {
    v12 = [(UIAlertController *)self _alertControllerView];
    [v12 configureForPresentAlongsideTransitionCoordinator:0];
  }

  v16.receiver = self;
  v16.super_class = UIAlertController;
  [(UIViewController *)&v16 viewWillAppear:v3];
  if (![(UIAlertController *)self _shouldAllowNilParameters]&& ![(UIAlertController *)self _hasContentToDisplay])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"UIAlertController.m" lineNumber:2346 description:{@"UIAlertController must have a title, a message or an action to display"}];
  }

  self->_actionInvokedOnDismiss = 0;
  if (!+[UIAlertController _shouldUsePresentationController]&& ![(UIAlertController *)self _isPresentedAsPopover])
  {
    v13 = [(UIAlertController *)self _alertControllerView];
    [v13 setShouldHaveBackdropView:1];

    v14 = [(UIAlertController *)self _alertControllerView];
    [v14 setHasDimmingView:1];
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

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_alertControllerStackManager);
  [WeakRetained _alertControllerDidAppear:self];

  v6 = [(UIAlertController *)self _alertControllerView];
  v7 = [(UIAlertController *)self _systemProvidedGestureRecognizer];
  [v6 beginTrackingSessionByTakingOverForSystemProvidedGestureRecognizer:v7];

  v8.receiver = self;
  v8.super_class = UIAlertController;
  [(UIViewController *)&v8 viewDidAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_alertControllerStackManager);
  [WeakRetained _alertControllerWillDisappear:self];

  [(_UIAlertControllerTextFieldViewController *)self->_textFieldViewController resignFirstResponder];
  if (v3)
  {
    [(UIAlertController *)self _restoreInputViewsAnimated:1];
  }

  v6 = [(UIAlertController *)self _alertControllerView];
  v7 = [(UIViewController *)self transitionCoordinator];
  [v6 configureForDismissAlongsideTransitionCoordinator:v7];

  v8.receiver = self;
  v8.super_class = UIAlertController;
  [(UIViewController *)&v8 viewWillDisappear:v3];
  if ([(UIViewController *)self isBeingDismissed])
  {
    [(UIAlertController *)self _logBeingDismissed];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_alertControllerStackManager);
  [WeakRetained _alertControllerDidDisappear:self];

  if (!v3)
  {
    [(UIAlertController *)self _restoreInputViewsAnimated:0];
  }

  v6 = [(UIAlertController *)self _alertControllerView];
  [v6 deselectAllActions];

  v7.receiver = self;
  v7.super_class = UIAlertController;
  [(UIViewController *)&v7 viewDidDisappear:v3];
}

- (BOOL)_shouldPreserveInputViews
{
  if ([(UIAlertController *)self _shouldBecomeFirstResponder])
  {
    if (+[UIAlertController _shouldUsePresentationController])
    {
      v3 = [(UIViewController *)self _window];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4 = [(UIViewController *)self presentationController];
        v5 = [v4 _preserveResponderAcrossWindows] ^ 1;
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

- (void)_preserveInputViewsAnimated:(BOOL)a3
{
  v3 = a3;
  if (![(UIAlertController *)self _hasPreservedInputViews]&& [(UIAlertController *)self _shouldPreserveInputViews])
  {
    [(UIAlertController *)self _setHasPreservedInputViews:1];
    v8 = [(UIViewController *)self _window];
    v5 = [v8 windowScene];
    v6 = [v5 keyboardSceneDelegate];
    v7 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [v6 _preserveInputViewsWithId:v7 animated:v3];
  }
}

- (void)_restoreInputViewsAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(UIAlertController *)self _hasPreservedInputViews])
  {
    v5 = [(UIViewController *)self _window];
    v6 = [v5 windowScene];
    v7 = [v6 keyboardSceneDelegate];
    v8 = [MEMORY[0x1E696B098] valueWithPointer:self];
    [v7 _restoreInputViewsWithId:v8 animated:v3];

    [(UIAlertController *)self _setHasPreservedInputViews:0];
  }
}

- (BOOL)_shouldBecomeFirstResponder
{
  v3 = [(UIAlertController *)self _resolvedStyle];
  v4 = v3;
  if (v3 == 1000 || v3 == 1)
  {
    v3 = [(UIViewController *)self _focusSystem];
    v5 = v3 == 0;
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

- (void)_setHidden:(BOOL)a3
{
  if (self->_hidden != a3)
  {
    v3 = a3;
    self->_hidden = a3;
    v5 = [(UIViewController *)self view];
    [v5 setHidden:self->_hidden];

    if (+[UIAlertController _shouldUsePresentationController])
    {
      v6 = [(UIViewController *)self presentationController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 _setChromeHidden:v3];
      }
    }
  }
}

- (void)_setEffectAlpha:(double)a3
{
  v4 = [(UIAlertController *)self _alertControllerView];
  [v4 setEffectAlpha:a3];
}

- (double)_effectAlpha
{
  v2 = [(UIAlertController *)self _alertControllerView];
  [v2 effectAlpha];
  v4 = v3;

  return v4;
}

- (void)setSpringLoaded:(BOOL)a3
{
  if (self->_springLoaded != a3)
  {
    self->_springLoaded = a3;
    v4 = [(UIAlertController *)self _alertControllerView];
    if ([v4 conformsToProtocol:&unk_1EFE9F560])
    {
      [v4 setSpringLoaded:self->_springLoaded];
    }
  }
}

- (id)_setView:(id)a3 forSystemProvidedPresentationWithDelegate:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UIAlertController *)self _systemProvidedPresentationView];
  v9 = v8;
  if (v8 != v6)
  {
    if (v8)
    {
      v10 = [(UIAlertController *)self _previewInteractionController];
      v11 = [v10 gestureRecognizers];

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v12 = v11;
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

    if (v6)
    {
      v17 = objc_alloc_init(UIPreviewInteractionController);
      v18 = [[UIPreviewForceInteractionProgress alloc] initWithView:v6 targetState:2];
      [(UIPreviewInteractionController *)v17 setInteractionProgressForPresentation:v18];
      v19 = [(UIPreviewInteractionController *)v17 beginPreviewGestureRecognizer];
      [(UIPreviewForceInteractionProgress *)v18 _setGestureBeginObservable:v19];

      [(UIPreviewInteractionController *)v17 setDelegate:self];
      v20 = [(UIPreviewInteractionController *)v17 gestureRecognizers];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
              objc_enumerationMutation(v20);
            }

            [v6 addGestureRecognizer:*(*(&v28 + 1) + 8 * j)];
          }

          v22 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v22);
      }

      [(UIAlertController *)self _setSystemProvidedPresentationDelegate:v7];
      [(UIAlertController *)self _setSystemProvidedPresentationView:v6];
      [(UIAlertController *)self _setPreviewInteractionController:v17];
    }
  }

  v25 = [(UIAlertController *)self _previewInteractionController];
  v26 = [v25 presentationGestureRecognizer];

  return v26;
}

- (id)previewInteractionController:(id)a3 viewControllerForPreviewingAtPosition:(CGPoint)a4 inView:(id)a5 presentingViewController:(id *)a6
{
  if ([(UIAlertController *)self _canBePresentedAtLocation:a3, a5, a4.x, a4.y])
  {
    v8 = [(UIAlertController *)self _systemProvidedPresentationDelegate];
    *a6 = [v8 _presentingViewControllerForSystemProvidedPresentationOfAlertController:self];

    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)previewInteractionController:(id)a3 willPresentViewController:(id)a4 forPosition:(CGPoint)a5 inSourceView:(id)a6
{
  v7 = [(UIAlertController *)self _systemProvidedPresentationDelegate:a3];
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
  v3 = [(UIViewController *)self presentingViewController];
  if (v3)
  {
    v4 = ![(UIViewController *)self isBeingPresented];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_canBePresentedAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(UIAlertController *)self _isPresented]|| [(UIViewController *)self isBeingPresented])
  {
    v6 = 0;
  }

  else
  {
    v6 = ![(UIViewController *)self isBeingDismissed];
  }

  v7 = [(UIAlertController *)self _systemProvidedPresentationDelegate];
  v8 = objc_opt_respondsToSelector();
  v9 = (v8 ^ 1) & v6;
  if (((v8 ^ 1) & 1) == 0 && v6)
  {
    v9 = [v7 _shouldPerformSystemProvidedPresentationOfAlertController:self atSystemProvidedPresentationRegisteredViewLocation:{x, y}];
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
  v4 = [(UIAlertController *)self _resolvedStyle];
  if ((v4 - 1000) < 2 || v4 == 0)
  {
    return @"UIKit-ActionSheet";
  }

  if (v4 == 1)
  {
    return @"UIKit-Alert";
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"UIAlertController.m" lineNumber:2720 description:@"Unknown resolved alert controller style while trying to log."];

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
  v4 = [MEMORY[0x1E695DF00] date];
  v7[2] = v4;
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
  v4 = [MEMORY[0x1E695DF00] date];
  v7[2] = v4;
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