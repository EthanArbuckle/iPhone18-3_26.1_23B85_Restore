@interface UIInputWindowControllerHostingItem
- (BOOL)_isForDragToDismiss;
- (BOOL)_isForSelf:(id)self;
- (BOOL)_isForSplitKeyboard;
- (BOOL)_shouldShowInputDockView;
- (BOOL)dontDismissReachability;
- (BOOL)hideInputView;
- (BOOL)isChangingPlacement;
- (BOOL)isOnScreenRotating;
- (BOOL)keyboardController;
- (BOOL)useCombinedBackdrop;
- (CGPoint)positionConstraintConstant;
- (CGRect)fullInputViewAndAssistantFrame;
- (CGRect)fullScreenFrame;
- (CGRect)notificationsFrame;
- (CGRect)trackingCoordinatorFrame;
- (CGRect)visibleFrame;
- (CGSize)sizeForVisualState:(int64_t)state;
- (NSString)debugDescription;
- (TUIInputAssistantHostView)inputAssistantHostView;
- (UIEdgeInsets)_aligningInsetsForChildInputViewController:(id)controller includeSceneBounds:(BOOL)bounds;
- (UIEdgeInsets)inputViewPadding;
- (UIInputViewSet)inputViewSet;
- (UIInputViewSetPlacement)placement;
- (UIInputWindowController)owner;
- (UIInputWindowControllerHosting)container;
- (UIInputWindowControllerHostingItem)initWithContainer:(id)container;
- (UIView)containerView;
- (UIView)inputAccessoryView;
- (UIView)inputAssistantView;
- (UIView)inputSwitcherView;
- (UIView)inputView;
- (UIView)scrollTrackingView;
- (UIView)view;
- (id)_updateOrCreateConstraintInDict:(id)dict key:(id)key fromItem:(id)item toItem:(id)toItem tracker:(id)tracker creator:(id)creator;
- (id)_updateOrCreateConstraintInDict:(id)dict key:(id)key tracker:(id)tracker creator:(id)creator;
- (id)animatedAssistantView;
- (id)animatedInputView;
- (id)constructNotificationInfoForScrollWithMode:(unint64_t)mode;
- (id)createItemHostView;
- (id)draggableView;
- (id)inputAccessoryViewController;
- (id)inputAssistantViewController;
- (id)inputViewController;
- (id)ownerView;
- (id)viewMatchingConstraintForAttribute:(int64_t)attribute primaryView:(id)view secondaryView:(id)secondaryView;
- (int64_t)inputViewBackdropStyle;
- (void)_fillInNotificationInfo:(id)info forDismissMode:(unint64_t)mode;
- (void)_updateBackdropViews;
- (void)animatingTransitionFromState:(int64_t)state toState:(int64_t)toState animationType:(int64_t)type totalDuration:(double)duration;
- (void)checkPlaceholdersForRemoteKeyboards;
- (void)cleanUpLightEffectsTransition;
- (void)clearInputAccessoryViewEdgeConstraints;
- (void)clearInputAssistantViewEdgeConstraints;
- (void)clearInputViewEdgeConstraints;
- (void)clearInteractiveTransitionStateIfNecessary;
- (void)clearVisibilityConstraints;
- (void)completeTransition:(id)transition withInfo:(id)info;
- (void)configureDockViewController:(BOOL)controller;
- (void)configureFlickingAssistantViewController:(BOOL)controller;
- (void)configureScrollDismissController:(BOOL)controller;
- (void)configureSplitKeyboardController:(BOOL)controller;
- (void)createAnimationMatchWithInfo:(id)info;
- (void)dealloc;
- (void)didFinishTranslation;
- (void)didFinishTranslationFromPlacement:(id)placement to:(id)to;
- (void)disableViewSizingConstraints:(unint64_t)constraints forNewView:(id)view;
- (void)enumerateBoundingRects:(id)rects;
- (void)extendKeyboardBackdropHeight:(double)height withDuration:(double)duration;
- (void)finalizeTransitionToRenderConfig:(id)config;
- (void)finishSplitTransition;
- (void)finishSplitTransition:(BOOL)transition;
- (void)finishedTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition;
- (void)initializeTranslateGestureRecognizerIfNecessary;
- (void)performAnimatedTransitionToRenderConfig:(id)config;
- (void)placementNeedsUpdate:(id)update;
- (void)prepareForSplitTransition;
- (void)prepareForTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition;
- (void)rebuildConstraints:(id)constraints forView:(id)view toMatchView:(id)matchView tracker:(id)tracker;
- (void)refreshApplicator;
- (void)removeMatchMoveAnimationIfNeeded;
- (void)resetBackdropHeight;
- (void)resetInputViewVisibility;
- (void)resetPlacement;
- (void)resetVerticalConstraint;
- (void)setAccessoryViewVisible:(BOOL)visible delay:(double)delay;
- (void)setCombinedBackdropView:(id)view;
- (void)setDontDismissReachability:(BOOL)reachability;
- (void)setHideInputView:(BOOL)view;
- (void)setHideInputViewBackdrops:(BOOL)backdrops;
- (void)setInputAccessoryBackdropView:(id)view;
- (void)setInputAccessoryView:(id)view;
- (void)setInputAssistantView:(id)view;
- (void)setInputBackdropView:(id)view;
- (void)setInputSwitcherView:(id)view;
- (void)setInputView:(id)view;
- (void)setPlacement;
- (void)setPlacement:(id)placement;
- (void)setPlacement:(id)placement quietly:(BOOL)quietly animated:(BOOL)animated generateSplitNotification:(BOOL)notification;
- (void)someViewDidLayoutSubviews;
- (void)startTransition:(id)transition withInfo:(id)info;
- (void)transitionDidFinish:(BOOL)finish;
- (void)transitionInAnimatedForRenderConfig:(id)config;
- (void)transitioningToState:(int64_t)state animationType:(int64_t)type completionPercentage:(double)percentage;
- (void)updateCombinedBackdropView;
- (void)updateCombinedBackdropViewAnimated:(BOOL)animated forKeyboardUp:(BOOL)up;
- (void)updateConstraintInsets;
- (void)updateEmptyHeightConstraint;
- (void)updateForKeyplaneChangeWithContext:(id)context;
- (void)updateInputAccessoryBackdropView;
- (void)updateInputAssistantHostViewVisibility;
- (void)updateInputAssistantViewLayering;
- (void)updateInputBackdropView;
- (void)updateInputBackdropViewVisibility;
- (void)updateKeyboardDockViewVisibility;
- (void)updateProgress:(double)progress startHeight:(double)height endHeight:(double)endHeight;
- (void)updateRenderConfigForCombinedBackdrop:(id)backdrop;
- (void)updateSupportsDockViewController;
- (void)updateTransition:(id)transition withInfo:(id)info;
- (void)updateViewConstraints;
- (void)updateViewSizingConstraints;
- (void)updateViewSizingConstraints:(id)constraints;
- (void)updateVisibilityConstraintsForPlacement:(id)placement;
- (void)willBeginTranslation;
- (void)willBeginTranslationFromPlacement:(id)placement to:(id)to;
@end

@implementation UIInputWindowControllerHostingItem

- (UIInputViewSetPlacement)placement
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v4 = [WeakRetained placementForHost:self];

  return v4;
}

- (void)updateInputAssistantViewLayering
{
  inputAssistantView = [(UIInputWindowControllerHostingItem *)self inputAssistantView];
  inputView = [(UIInputWindowControllerHostingItem *)self inputView];
  if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
  {
    superview = [inputAssistantView superview];
    hostView = [(UIInputWindowControllerHostingItem *)self hostView];
    if (superview != hostView)
    {
LABEL_3:

      goto LABEL_5;
    }

    superview2 = [inputView superview];
    hostView2 = [(UIInputWindowControllerHostingItem *)self hostView];

    if (superview2 == hostView2)
    {
      v8 = +[UIKeyboardInputModeController sharedInputModeController];
      superview = [v8 currentInputMode];

      isEmojiInputMode = [superview isEmojiInputMode];
      hostView3 = [(UIInputWindowControllerHostingItem *)self hostView];
      hostView = hostView3;
      if (isEmojiInputMode)
      {
        inputView2 = [(UIInputWindowControllerHostingItem *)self inputView];
        [hostView insertSubview:inputAssistantView belowSubview:inputView2];
      }

      else
      {
        [hostView3 bringSubviewToFront:inputAssistantView];
      }

      goto LABEL_3;
    }
  }

LABEL_5:
}

- (UIInputWindowControllerHosting)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

- (id)ownerView
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  view = [owner view];

  return view;
}

- (UIInputWindowController)owner
{
  container = [(UIInputWindowControllerHostingItem *)self container];
  owner = [container owner];

  return owner;
}

- (void)updateSupportsDockViewController
{
  supportsDockViewController = self->_supportsDockViewController;
  v4 = +[UIKeyboardImpl showsGlobeAndDictationKeysExternally];
  self->_supportsDockViewController = v4;
  if (!supportsDockViewController && v4)
  {
    hostView = [(UIInputWindowControllerHostingItem *)self hostView];
    window = [hostView window];
    if (window)
    {
      dockViewController = self->_dockViewController;

      if (!dockViewController)
      {
        [(UIInputWindowControllerHostingItem *)self updateKeyboardDockViewVisibility];

        [(UIInputWindowControllerHostingItem *)self updateViewConstraints];
      }
    }

    else
    {
    }
  }
}

- (BOOL)isOnScreenRotating
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  isOnScreenRotating = [owner isOnScreenRotating];

  return isOnScreenRotating;
}

- (void)updateKeyboardDockViewVisibility
{
  if (self->_supportsDockViewController)
  {
    if (!self->_dockViewController)
    {
      [(UIInputWindowControllerHostingItem *)self configureDockViewController:1];
      hostView = [(UIInputWindowControllerHostingItem *)self hostView];
      view = [(UIViewController *)self->_dockViewController view];
      [hostView addSubview:view];
    }

    _shouldShowInputDockView = [(UIInputWindowControllerHostingItem *)self _shouldShowInputDockView];
    inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    inputView = [inputViewSet inputView];
    if (inputView)
    {
      inputViewSet2 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      if ([inputViewSet2 isInputViewPlaceholder])
      {
        v9 = 0;
      }

      else
      {
        v10 = +[UIKeyboardImpl activeInstance];
        v9 = _shouldShowInputDockView & ([v10 isMinimized] ^ 1);
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v11 currentInputMode];
    identifier = [currentInputMode identifier];
    v14 = [identifier isEqualToString:@"autofillsignup"];

    dockView = [(UISystemKeyboardDockController *)self->_dockViewController dockView];
    [dockView setHidden:v14 & v9 | v9 ^ 1u];

    if (((v14 & v9) | v9 ^ 1))
    {
      dockViewController = self->_dockViewController;

      [(UISystemKeyboardDockController *)dockViewController updateDockItemsVisibility];
    }

    else
    {
      v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      responder = [v16 responder];
      inputAssistantItem = [responder inputAssistantItem];
      _dictationReplacementAction = [inputAssistantItem _dictationReplacementAction];

      [(UISystemKeyboardDockController *)self->_dockViewController updateDockItemsVisibilityWithCustomDictationAction:_dictationReplacementAction];
    }
  }
}

- (void)updateConstraintInsets
{
  inputView = [(UIInputWindowControllerHostingItem *)self inputView];

  if (inputView)
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    placement = [owner placement];
    if ([placement isFloating] && self->_inputCombinedBackdropView)
    {
      +[UIKeyboardPopoverContainer contentInsets];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
    }

    else
    {
      inputViewController = [(UIInputWindowControllerHostingItem *)self inputViewController];
      [(UIInputWindowControllerHostingItem *)self _aligningInsetsForChildInputViewController:inputViewController includeSceneBounds:0];
      v7 = v15;
      v9 = v16;
      v11 = v17;
      v13 = v18;
    }

    __60__UIInputWindowControllerHostingItem_updateConstraintInsets__block_invoke(self->_inputViewEdgeConstraints, v7, v9, v11, v13);
  }

  inputAssistantView = [(UIInputWindowControllerHostingItem *)self inputAssistantView];

  if (inputAssistantView)
  {
    inputAssistantViewController = [(UIInputWindowControllerHostingItem *)self inputAssistantViewController];
    [(UIInputWindowControllerHostingItem *)self _aligningInsetsForChildInputViewController:inputAssistantViewController includeSceneBounds:0];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    __60__UIInputWindowControllerHostingItem_updateConstraintInsets__block_invoke(self->_assistantViewEdgeConstraints, v22, v24, v26, v28);
  }

  inputAccessoryView = [(UIInputWindowControllerHostingItem *)self inputAccessoryView];

  if (inputAccessoryView)
  {
    inputAccessoryViewController = [(UIInputWindowControllerHostingItem *)self inputAccessoryViewController];
    [(UIInputWindowControllerHostingItem *)self _aligningInsetsForChildInputViewController:inputAccessoryViewController includeSceneBounds:1];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    __60__UIInputWindowControllerHostingItem_updateConstraintInsets__block_invoke(self->_accessoryViewEdgeConstraints, v32, v34, v36, v38);
  }

  if (self->_inputBackdropView)
  {
    owner2 = [(UIInputWindowControllerHostingItem *)self owner];
    placement2 = [owner2 placement];
    v41 = 0.0;
    v42 = 0.0;
    v43 = 0.0;
    v44 = 0.0;
    if ([placement2 isFloating])
    {
      +[UIKeyboardPopoverContainer contentInsets];
      v41 = v45;
      v42 = v46;
      v43 = v47;
      v44 = v48;
    }

    inputBackdropBackgroundViewEdgeConstraints = self->_inputBackdropBackgroundViewEdgeConstraints;

    __60__UIInputWindowControllerHostingItem_updateConstraintInsets__block_invoke(inputBackdropBackgroundViewEdgeConstraints, v41, v42, v43, v44);
  }
}

void __60__UIInputWindowControllerHostingItem_updateConstraintInsets__block_invoke(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = a1;
  v13 = [v9 objectForKey:&unk_1EFE31AF8];
  [v13 setConstant:a3];
  v10 = [v9 objectForKey:&unk_1EFE31B10];
  [v10 setConstant:a5];
  v11 = [v9 objectForKey:&unk_1EFE31B28];
  [v11 setConstant:a2];
  v12 = [v9 objectForKey:&unk_1EFE31B40];

  [v12 setConstant:a4];
}

- (void)updateViewConstraints
{
  v424[3] = *MEMORY[0x1E69E9840];
  container = [(UIInputWindowControllerHostingItem *)self container];
  useLayoutHostingItem = [container useLayoutHostingItem];

  if ((useLayoutHostingItem & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:100];
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    if ([owner isRotating])
    {
      v7 = [(NSMutableDictionary *)self->_inputViewEdgeConstraints count];

      if (v7)
      {
        owner2 = [(UIInputWindowControllerHostingItem *)self owner];
        [owner2 updateKeyboardDockViewVisibility];

        [(UIInputWindowControllerHostingItem *)self updateViewSizingConstraints:v5];
        [MEMORY[0x1E69977A0] activateConstraints:v5];
        [(UIInputWindowControllerHostingItem *)self updateConstraintInsets];
LABEL_153:

        return;
      }
    }

    else
    {
    }

    [(UIInputWindowControllerHostingItem *)self updateViewSizingConstraints:v5];
    [MEMORY[0x1E69977A0] activateConstraints:v5];
    [v5 removeAllObjects];
    inputView = [(UIInputWindowControllerHostingItem *)self inputView];
    inputAssistantView = [(UIInputWindowControllerHostingItem *)self inputAssistantView];
    inputAccessoryView = [(UIInputWindowControllerHostingItem *)self inputAccessoryView];
    inputSwitcherView = [(UIInputWindowControllerHostingItem *)self inputSwitcherView];
    v13 = inputAssistantView;
    if (+[UIKeyboardImpl shouldMergeAssistantBarWithKeyboardLayout](UIKeyboardImpl, "shouldMergeAssistantBarWithKeyboardLayout") || (v14 = [v13 isHidden], v15 = v13, v14))
    {

      v15 = 0;
    }

    v289 = v15;
    superview = [inputView superview];
    hostView = [(UIInputWindowControllerHostingItem *)self hostView];

    v17 = superview == hostView;
    LODWORD(hostView) = superview == hostView;
    v285 = inputAccessoryView;
    v286 = inputView;
    v287 = v13;
    v288 = inputSwitcherView;
    if (!v17)
    {
      if ([(NSMutableDictionary *)self->_inputViewEdgeConstraints count])
      {
        [(UIInputWindowControllerHostingItem *)self clearInputViewEdgeConstraints];
      }

      v282 = 0;
LABEL_54:
      superview2 = [v13 superview];
      hostView2 = [(UIInputWindowControllerHostingItem *)self hostView];

      if (superview2 != hostView2)
      {
        if ([(NSMutableDictionary *)self->_assistantViewEdgeConstraints count])
        {
          [(UIInputWindowControllerHostingItem *)self clearInputAssistantViewEdgeConstraints];
        }

        goto LABEL_75;
      }

      [(NSLayoutConstraint *)self->_emptyHeightConstraint setActive:0];
      v84 = inputSwitcherView;
      if (inputSwitcherView || (v84 = inputAccessoryView) != 0)
      {
        hostView = v84;
        if (inputView)
        {
LABEL_60:
          hostView23 = inputView;
LABEL_63:
          if (inputAccessoryView | v288)
          {
            v86 = 4;
          }

          else
          {
            v86 = 3;
          }

          if (!self->_assistantViewEdgeConstraints)
          {
            v87 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
            assistantViewEdgeConstraints = self->_assistantViewEdgeConstraints;
            self->_assistantViewEdgeConstraints = v87;
          }

          inputAssistantViewController = [(UIInputWindowControllerHostingItem *)self inputAssistantViewController];
          [(UIInputWindowControllerHostingItem *)self _aligningInsetsForChildInputViewController:inputAssistantViewController includeSceneBounds:0];
          v91 = v90;
          v93 = v92;
          v95 = v94;
          v97 = v96;

          v98 = self->_assistantViewEdgeConstraints;
          hostView3 = [(UIInputWindowControllerHostingItem *)self hostView];
          v372[0] = MEMORY[0x1E69E9820];
          v372[1] = 3221225472;
          v372[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_11;
          v372[3] = &unk_1E7116780;
          v100 = v287;
          v373 = v100;
          selfCopy = self;
          v375 = v91;
          v376 = v93;
          v377 = v95;
          v378 = v97;
          v101 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v98 key:&unk_1EFE31AF8 fromView:v100 toView:hostView3 tracker:v5 creator:v372];
          [v101 setConstant:v93];

          v102 = self->_assistantViewEdgeConstraints;
          hostView4 = [(UIInputWindowControllerHostingItem *)self hostView];
          v366[0] = MEMORY[0x1E69E9820];
          v366[1] = 3221225472;
          v366[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_12;
          v366[3] = &unk_1E7116780;
          v366[4] = self;
          v104 = v100;
          v367 = v104;
          v368 = v91;
          v369 = v93;
          v370 = v95;
          v371 = v97;
          v105 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v102 key:&unk_1EFE31B10 fromView:hostView4 toView:v104 tracker:v5 creator:v366];
          [v105 setConstant:v97];

          hostView5 = [(UIInputWindowControllerHostingItem *)self hostView];
          LODWORD(v105) = [hostView isDescendantOfView:hostView5];

          if (v105)
          {
            v107 = self->_assistantViewEdgeConstraints;
            v362[0] = MEMORY[0x1E69E9820];
            v362[1] = 3221225472;
            v362[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_13;
            v362[3] = &unk_1E7116820;
            v363 = v104;
            v364 = hostView;
            v365 = v86;
            v108 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v107 key:&unk_1EFE31B28 fromView:v363 toView:v364 tracker:v5 creator:v362];
            [v108 setConstant:0.0];
          }

          if (+[UIKeyboardImpl shouldMergeAssistantBarWithKeyboardLayout]|| v282)
          {
            v109 = [(NSMutableDictionary *)self->_assistantViewEdgeConstraints objectForKey:&unk_1EFE31B40];
            [v5 removeObject:v109];

            v110 = [(NSMutableDictionary *)self->_assistantViewEdgeConstraints objectForKey:&unk_1EFE31B40];
            [v110 setActive:0];

            [(NSMutableDictionary *)self->_assistantViewEdgeConstraints removeObjectForKey:&unk_1EFE31B40];
            inputView = v286;
          }

          else
          {
            inputView = v286;
            if (!v286)
            {
              v111 = self->_assistantViewEdgeConstraints;
              hostView6 = [(UIInputWindowControllerHostingItem *)self hostView];
              v359[0] = MEMORY[0x1E69E9820];
              v359[1] = 3221225472;
              v359[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_14;
              v359[3] = &unk_1E71167D0;
              v360 = v104;
              selfCopy2 = self;
              v113 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v111 key:&unk_1EFE31B40 fromView:v360 toView:hostView6 tracker:v5 creator:v359];
              [v113 setConstant:0.0];
            }
          }

          LODWORD(hostView) = 1;
          inputAccessoryView = v285;
          inputSwitcherView = v288;
LABEL_75:
          superview3 = [inputSwitcherView superview];
          hostView7 = [(UIInputWindowControllerHostingItem *)self hostView];

          if (superview3 == hostView7)
          {
            v118 = hostView;
            inputSwitcherViewConstraints = self->_inputSwitcherViewConstraints;
            if (!inputSwitcherViewConstraints)
            {
              v120 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
              v121 = self->_inputSwitcherViewConstraints;
              self->_inputSwitcherViewConstraints = v120;

              inputSwitcherViewConstraints = self->_inputSwitcherViewConstraints;
            }

            v356[0] = MEMORY[0x1E69E9820];
            v356[1] = 3221225472;
            v356[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_15;
            v356[3] = &unk_1E71167D0;
            v122 = inputSwitcherView;
            v357 = v122;
            selfCopy3 = self;
            v123 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:inputSwitcherViewConstraints key:@"inputSwitcherView.centerX" tracker:v5 creator:v356];
            v124 = self->_inputSwitcherViewConstraints;
            hostView = [(UIInputWindowControllerHostingItem *)self hostView];
            v353[0] = MEMORY[0x1E69E9820];
            v353[1] = 3221225472;
            v353[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_16;
            v353[3] = &unk_1E71167D0;
            v354 = v122;
            selfCopy4 = self;
            v125 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v124 key:@"inputSwitcherView.top" fromView:v354 toView:hostView tracker:v5 creator:v353];

            LOBYTE(hostView) = v118;
            inputView = v286;
            if (!v118)
            {
              goto LABEL_125;
            }
          }

          else
          {
            v116 = MEMORY[0x1E69977A0];
            allValues = [(NSMutableDictionary *)self->_inputSwitcherViewConstraints allValues];
            [v116 deactivateConstraints:allValues];

            [(NSMutableDictionary *)self->_inputSwitcherViewConstraints removeAllObjects];
            if (!hostView)
            {
LABEL_125:
              superview4 = [inputAccessoryView superview];
              hostView8 = [(UIInputWindowControllerHostingItem *)self hostView];

              if (superview4 == hostView8)
              {
                [(NSLayoutConstraint *)self->_emptyHeightConstraint setActive:0];
                v230 = v289;
                if (v289 || (v230 = inputView) != 0)
                {
                  hostView9 = v230;
                }

                else
                {
                  hostView9 = [(UIInputWindowControllerHostingItem *)self hostView];
                }

                if (v289 | inputView)
                {
                  v232 = 3;
                }

                else
                {
                  v232 = 4;
                }

                owner3 = [(UIInputWindowControllerHostingItem *)self owner];
                forceAccessoryViewToBottomOfHostView = [owner3 forceAccessoryViewToBottomOfHostView];

                if (forceAccessoryViewToBottomOfHostView)
                {
                  hostView10 = [(UIInputWindowControllerHostingItem *)self hostView];

                  v232 = 4;
                  hostView9 = hostView10;
                }

                accessoryViewEdgeConstraints = self->_accessoryViewEdgeConstraints;
                if (accessoryViewEdgeConstraints)
                {
                  if ([(NSMutableDictionary *)accessoryViewEdgeConstraints count])
                  {
                    owner4 = [(UIInputWindowControllerHostingItem *)self owner];
                    isTransitioningBetweenKeyboardStates = [owner4 isTransitioningBetweenKeyboardStates];

                    if (isTransitioningBetweenKeyboardStates)
                    {
                      [(UIInputWindowControllerHostingItem *)self clearInputAccessoryViewEdgeConstraints];
                    }
                  }
                }

                else
                {
                  v239 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
                  v240 = self->_accessoryViewEdgeConstraints;
                  self->_accessoryViewEdgeConstraints = v239;
                }

                inputAccessoryViewController = [(UIInputWindowControllerHostingItem *)self inputAccessoryViewController];
                [(UIInputWindowControllerHostingItem *)self _aligningInsetsForChildInputViewController:inputAccessoryViewController includeSceneBounds:1];
                v243 = v242;
                v245 = v244;
                v247 = v246;
                v249 = v248;

                v250 = self->_accessoryViewEdgeConstraints;
                hostView11 = [(UIInputWindowControllerHostingItem *)self hostView];
                v303[0] = MEMORY[0x1E69E9820];
                v303[1] = 3221225472;
                v303[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_32;
                v303[3] = &unk_1E7116780;
                v252 = inputAccessoryView;
                v304 = v252;
                selfCopy5 = self;
                v306 = v243;
                v307 = v245;
                v308 = v247;
                v309 = v249;
                v253 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v250 key:&unk_1EFE31AF8 fromView:v252 toView:hostView11 tracker:v5 creator:v303];
                [v253 setConstant:v245];

                v254 = self->_accessoryViewEdgeConstraints;
                hostView12 = [(UIInputWindowControllerHostingItem *)self hostView];
                v297[0] = MEMORY[0x1E69E9820];
                v297[1] = 3221225472;
                v297[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_33;
                v297[3] = &unk_1E7116780;
                v297[4] = self;
                v256 = v252;
                v298 = v256;
                v299 = v243;
                v300 = v245;
                v301 = v247;
                v302 = v249;
                v257 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v254 key:&unk_1EFE31B10 fromView:hostView12 toView:v256 tracker:v5 creator:v297];
                [v257 setConstant:v249];

                v258 = self->_accessoryViewEdgeConstraints;
                hostView13 = [(UIInputWindowControllerHostingItem *)self hostView];
                v294[0] = MEMORY[0x1E69E9820];
                v294[1] = 3221225472;
                v294[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_34;
                v294[3] = &unk_1E71167D0;
                v260 = v256;
                v295 = v260;
                selfCopy6 = self;
                v261 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v258 key:&unk_1EFE31B28 fromView:v260 toView:hostView13 tracker:v5 creator:v294];
                [v261 setConstant:v243];

                hostView14 = [(UIInputWindowControllerHostingItem *)self hostView];
                LODWORD(v258) = [hostView9 isDescendantOfView:hostView14];

                if (v258)
                {
                  v263 = self->_accessoryViewEdgeConstraints;
                  v290[0] = MEMORY[0x1E69E9820];
                  v290[1] = 3221225472;
                  v290[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_35;
                  v290[3] = &unk_1E7116820;
                  v291 = v260;
                  v292 = hostView9;
                  v293 = v232;
                  v264 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v263 key:&unk_1EFE31B40 fromView:v291 toView:v292 tracker:v5 creator:v290];
                  [v264 setConstant:v247];
                }

                v265 = self->_inputAccessoryBackdropView;
                hostView15 = [(UIInputWindowControllerHostingItem *)self hostView];
                v267 = [(UIView *)v265 isDescendantOfView:hostView15];

                accessoryBackdropViewEdgeConstraints = self->_accessoryBackdropViewEdgeConstraints;
                if (v267)
                {
                  v269 = 0x1E6997000;
                  if (!accessoryBackdropViewEdgeConstraints)
                  {
                    v270 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
                    v271 = self->_accessoryBackdropViewEdgeConstraints;
                    self->_accessoryBackdropViewEdgeConstraints = v270;

                    accessoryBackdropViewEdgeConstraints = self->_accessoryBackdropViewEdgeConstraints;
                  }

                  [(UIInputWindowControllerHostingItem *)self rebuildConstraints:accessoryBackdropViewEdgeConstraints forView:v265 toMatchView:v260 tracker:v5];
                }

                else
                {
                  v269 = 0x1E6997000uLL;
                  if ([(NSMutableDictionary *)self->_accessoryBackdropViewEdgeConstraints count])
                  {
                    v272 = MEMORY[0x1E69977A0];
                    allValues2 = [(NSMutableDictionary *)self->_accessoryBackdropViewEdgeConstraints allValues];
                    [v272 deactivateConstraints:allValues2];

                    [(NSMutableDictionary *)self->_accessoryBackdropViewEdgeConstraints removeAllObjects];
                  }
                }

                [*(v269 + 1952) activateConstraints:v5];
                inputAccessoryView = v285;
                v228 = v287;
                inputSwitcherView = v288;
              }

              else
              {
                v228 = v287;
                if ([(NSMutableDictionary *)self->_accessoryViewEdgeConstraints count])
                {
                  [(UIInputWindowControllerHostingItem *)self clearInputAccessoryViewEdgeConstraints];
                }

                [MEMORY[0x1E69977A0] activateConstraints:v5];
                if ((hostView & 1) == 0)
                {
                  container2 = [(UIInputWindowControllerHostingItem *)self container];
                  -[NSLayoutConstraint setActive:](self->_emptyHeightConstraint, "setActive:", [container2 useLayoutHostingItem] ^ 1);
                }
              }

              [(UIInputWindowControllerHostingItem *)self updateConstraintInsets];
              placement = [(UIInputWindowControllerHostingItem *)self placement];
              [(UIInputWindowControllerHostingItem *)self updateVisibilityConstraintsForPlacement:placement];

              goto LABEL_153;
            }
          }

          v126 = self->_inputBackdropView;
          hostView16 = [(UIInputWindowControllerHostingItem *)self hostView];
          v128 = [(UIView *)v126 isDescendantOfView:hostView16];

          if (v128)
          {
            if (!self->_inputBackdropBackgroundViewEdgeConstraints)
            {
              v129 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
              inputBackdropBackgroundViewEdgeConstraints = self->_inputBackdropBackgroundViewEdgeConstraints;
              self->_inputBackdropBackgroundViewEdgeConstraints = v129;
            }

            v131 = self->_inputBackdropBackgroundView;
            +[UIKeyboardPopoverContainer contentInsets];
            hostView17 = [(UIInputWindowControllerHostingItem *)self hostView];
            v133 = [(UIView *)v131 isDescendantOfView:hostView17];

            if (v133)
            {
              v283 = v126;
              v280 = hostView;
              v134 = inputView;
              v135 = self->_inputBackdropBackgroundViewEdgeConstraints;
              hostView18 = [(UIInputWindowControllerHostingItem *)self hostView];
              v351[0] = MEMORY[0x1E69E9820];
              v351[1] = 3221225472;
              v351[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_17;
              v351[3] = &unk_1E71167D0;
              v351[4] = self;
              v137 = v131;
              v352 = v137;
              v138 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v135 key:&unk_1EFE31AF8 fromView:hostView18 toView:v137 tracker:v5 creator:v351];

              v139 = self->_inputBackdropBackgroundViewEdgeConstraints;
              hostView19 = [(UIInputWindowControllerHostingItem *)self hostView];
              v348[0] = MEMORY[0x1E69E9820];
              v348[1] = 3221225472;
              v348[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_18;
              v348[3] = &unk_1E71167D0;
              v141 = v137;
              v142 = inputAccessoryView;
              v143 = v141;
              v349 = v141;
              selfCopy7 = self;
              v144 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v139 key:&unk_1EFE31B10 fromView:v141 toView:hostView19 tracker:v5 creator:v348];

              v145 = self->_inputBackdropBackgroundViewEdgeConstraints;
              if (v142)
              {
                v345[0] = MEMORY[0x1E69E9820];
                v345[1] = 3221225472;
                v345[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_19;
                v345[3] = &unk_1E71167D0;
                v346 = v143;
                v347 = v142;
                v146 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v145 key:&unk_1EFE31B28 fromView:v346 toView:v347 tracker:v5 creator:v345];

                v147 = v346;
              }

              else
              {
                hostView20 = [(UIInputWindowControllerHostingItem *)self hostView];
                v343[0] = MEMORY[0x1E69E9820];
                v343[1] = 3221225472;
                v343[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_20;
                v343[3] = &unk_1E71167D0;
                v343[4] = self;
                v344 = v143;
                v153 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v145 key:&unk_1EFE31B28 fromView:hostView20 toView:v344 tracker:v5 creator:v343];

                v147 = v344;
              }

              v154 = self->_inputBackdropBackgroundViewEdgeConstraints;
              hostView21 = [(UIInputWindowControllerHostingItem *)self hostView];
              v340[0] = MEMORY[0x1E69E9820];
              v340[1] = 3221225472;
              v340[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_21;
              v340[3] = &unk_1E71167D0;
              v341 = v143;
              selfCopy8 = self;
              v156 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v154 key:&unk_1EFE31B40 fromView:v341 toView:hostView21 tracker:v5 creator:v340];

              inputView = v134;
              v126 = v283;
              inputAccessoryView = v285;
              LOBYTE(hostView) = v280;
            }

            inputBackdropViewEdgeConstraints = self->_inputBackdropViewEdgeConstraints;
            if (!inputBackdropViewEdgeConstraints)
            {
              v158 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
              v159 = self->_inputBackdropViewEdgeConstraints;
              self->_inputBackdropViewEdgeConstraints = v158;

              inputBackdropViewEdgeConstraints = self->_inputBackdropViewEdgeConstraints;
            }

            [(UIInputWindowControllerHostingItem *)self rebuildConstraints:inputBackdropViewEdgeConstraints forView:v126 toMatchView:self->_inputBackdropBackgroundView tracker:v5];

            inputSwitcherView = v288;
          }

          else
          {
            if ([(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints count])
            {
              v148 = MEMORY[0x1E69977A0];
              allValues3 = [(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints allValues];
              [v148 deactivateConstraints:allValues3];

              [(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints removeAllObjects];
            }

            if ([(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints count])
            {
              v150 = MEMORY[0x1E69977A0];
              allValues4 = [(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints allValues];
              [v150 deactivateConstraints:allValues4];

              [(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints removeAllObjects];
            }
          }

          inputCombinedBackdropView = self->_inputCombinedBackdropView;
          ownerView = [(UIInputWindowControllerHostingItem *)self ownerView];
          LODWORD(inputCombinedBackdropView) = [(UIView *)inputCombinedBackdropView isDescendantOfView:ownerView];

          inputCombinedBackdropViewEdgeConstraints = self->_inputCombinedBackdropViewEdgeConstraints;
          if (inputCombinedBackdropView)
          {
            v281 = hostView;
            if (!inputCombinedBackdropViewEdgeConstraints)
            {
              v163 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
              v164 = self->_inputCombinedBackdropViewEdgeConstraints;
              self->_inputCombinedBackdropViewEdgeConstraints = v163;
            }

            applicator = [(UIInputWindowControllerHostingItem *)self applicator];
            backdropContainer = [applicator backdropContainer];
            v167 = backdropContainer;
            if (backdropContainer)
            {
              ownerView2 = backdropContainer;
            }

            else
            {
              ownerView2 = [(UIInputWindowControllerHostingItem *)self ownerView];
            }

            v173 = self->_inputCombinedBackdropView;
            v174 = self->_inputCombinedBackdropViewEdgeConstraints;
            v337[0] = MEMORY[0x1E69E9820];
            v337[1] = 3221225472;
            v337[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_22;
            v337[3] = &unk_1E71167D0;
            v175 = v173;
            v338 = v175;
            v176 = ownerView2;
            v339 = v176;
            v177 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v174 key:&unk_1EFE31B28 fromView:v175 toView:v176 tracker:v5 creator:v337];
            [v177 setConstant:0.0];

            v178 = self->_inputCombinedBackdropViewEdgeConstraints;
            v334[0] = MEMORY[0x1E69E9820];
            v334[1] = 3221225472;
            v334[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_23;
            v334[3] = &unk_1E71167D0;
            v179 = v175;
            v335 = v179;
            v180 = v176;
            v336 = v180;
            v181 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v178 key:&unk_1EFE31AF8 fromView:v179 toView:v180 tracker:v5 creator:v334];
            [v181 setConstant:0.0];

            v182 = self->_inputCombinedBackdropViewEdgeConstraints;
            v331[0] = MEMORY[0x1E69E9820];
            v331[1] = 3221225472;
            v331[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_24;
            v331[3] = &unk_1E71167D0;
            v183 = v180;
            v332 = v183;
            v184 = v179;
            v333 = v184;
            v185 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v182 key:&unk_1EFE31B40 fromView:v183 toView:v184 tracker:v5 creator:v331];
            [v185 setConstant:0.0];

            v186 = self->_inputCombinedBackdropViewEdgeConstraints;
            v328[0] = MEMORY[0x1E69E9820];
            v328[1] = 3221225472;
            v328[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_25;
            v328[3] = &unk_1E71167D0;
            v187 = v183;
            v329 = v187;
            v188 = v184;
            v330 = v188;
            v189 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v186 key:&unk_1EFE31B10 fromView:v187 toView:v188 tracker:v5 creator:v328];
            [v189 setConstant:0.0];

            if (inputView)
            {
              superview5 = [inputView superview];

              if (superview5)
              {
                applicator2 = [(UIInputWindowControllerHostingItem *)self applicator];
                backdropContainer2 = [applicator2 backdropContainer];
                v193 = backdropContainer2;
                if (backdropContainer2)
                {
                  hostView22 = backdropContainer2;
                }

                else
                {
                  hostView22 = [(UIInputWindowControllerHostingItem *)self hostView];
                }

                if (!self->_backdropInnerGuideConstraints)
                {
                  v195 = objc_alloc_init(MEMORY[0x1E695DF90]);
                  backdropInnerGuideConstraints = self->_backdropInnerGuideConstraints;
                  self->_backdropInnerGuideConstraints = v195;
                }

                v284 = v126;
                v197 = self->_inputCombinedBackdropView;
                v424[0] = v286;
                v424[1] = v197;
                v424[2] = hostView22;
                v198 = [MEMORY[0x1E695DEC8] arrayWithObjects:v424 count:3];
                v277 = [(NSMutableDictionary *)self->_backdropInnerGuideConstraints objectForKey:@"items"];
                v278 = v198;
                if (([v277 isEqual:v198] & 1) == 0)
                {
                  v326 = 0u;
                  v327 = 0u;
                  v324 = 0u;
                  v325 = 0u;
                  v199 = [&unk_1EFE2CC70 countByEnumeratingWithState:&v324 objects:v423 count:16];
                  if (v199)
                  {
                    v200 = v199;
                    v201 = *v325;
                    do
                    {
                      for (i = 0; i != v200; ++i)
                      {
                        if (*v325 != v201)
                        {
                          objc_enumerationMutation(&unk_1EFE2CC70);
                        }

                        v203 = [(NSMutableDictionary *)self->_backdropInnerGuideConstraints objectForKey:*(*(&v324 + 1) + 8 * i)];
                        [v203 setActive:0];
                      }

                      v200 = [&unk_1EFE2CC70 countByEnumeratingWithState:&v324 objects:v423 count:16];
                    }

                    while (v200);
                  }

                  [(NSMutableDictionary *)self->_backdropInnerGuideConstraints removeAllObjects];
                  v198 = v278;
                }

                [(NSMutableDictionary *)self->_backdropInnerGuideConstraints setObject:v198 forKey:@"items"];
                v204 = self->_backdropInnerGuideConstraints;
                fullBackdropLayoutGuide = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView fullBackdropLayoutGuide];
                v322[0] = MEMORY[0x1E69E9820];
                v322[1] = 3221225472;
                v322[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_26;
                v322[3] = &unk_1E71167D0;
                v322[4] = self;
                v206 = hostView22;
                v323 = v206;
                v207 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v204 key:&unk_1EFE31B28 fromItem:fullBackdropLayoutGuide toItem:v206 tracker:v5 creator:v322];
                [v207 setConstant:0.0];

                v208 = self->_backdropInnerGuideConstraints;
                fullBackdropLayoutGuide2 = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView fullBackdropLayoutGuide];
                v320[0] = MEMORY[0x1E69E9820];
                v320[1] = 3221225472;
                v320[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_27;
                v320[3] = &unk_1E71167D0;
                v320[4] = self;
                v210 = v206;
                v321 = v210;
                v211 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v208 key:&unk_1EFE31AF8 fromItem:fullBackdropLayoutGuide2 toItem:v210 tracker:v5 creator:v320];
                [v211 setConstant:0.0];

                v212 = self->_backdropInnerGuideConstraints;
                fullBackdropLayoutGuide3 = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView fullBackdropLayoutGuide];
                v317[0] = MEMORY[0x1E69E9820];
                v317[1] = 3221225472;
                v317[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_28;
                v317[3] = &unk_1E71167D0;
                v214 = v210;
                v318 = v214;
                selfCopy9 = self;
                v215 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v212 key:&unk_1EFE31B40 fromItem:v214 toItem:fullBackdropLayoutGuide3 tracker:v5 creator:v317];
                [v215 setConstant:0.0];

                v216 = self->_backdropInnerGuideConstraints;
                fullBackdropLayoutGuide4 = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView fullBackdropLayoutGuide];
                v314[0] = MEMORY[0x1E69E9820];
                v314[1] = 3221225472;
                v314[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_29;
                v314[3] = &unk_1E71167D0;
                v218 = v214;
                v315 = v218;
                selfCopy10 = self;
                v219 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v216 key:&unk_1EFE31B10 fromItem:v218 toItem:fullBackdropLayoutGuide4 tracker:v5 creator:v314];
                [v219 setConstant:0.0];

                v220 = self->_backdropInnerGuideConstraints;
                assistantLayoutGuide = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView assistantLayoutGuide];
                v313[0] = MEMORY[0x1E69E9820];
                v313[1] = 3221225472;
                v313[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_30;
                v313[3] = &unk_1E71167F8;
                v313[4] = self;
                v222 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v220 key:@"inputBackdropGuides.assistantTop" fromItem:assistantLayoutGuide toItem:v218 tracker:v5 creator:v313];
                [v222 setConstant:0.0];

                v223 = self->_backdropInnerGuideConstraints;
                assistantLayoutGuide2 = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView assistantLayoutGuide];
                v310[0] = MEMORY[0x1E69E9820];
                v310[1] = 3221225472;
                v310[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_31;
                v310[3] = &unk_1E71167D0;
                v311 = v286;
                selfCopy11 = self;
                v225 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v223 key:@"inputBackdropGuides.assistantBottom" fromItem:v311 toItem:assistantLayoutGuide2 tracker:v5 creator:v310];
                [v225 setConstant:0.0];

                inputView = v286;
                v126 = v284;
              }
            }

            inputAccessoryView = v285;
            inputSwitcherView = v288;
            LOBYTE(hostView) = v281;
          }

          else
          {
            if ([(NSMutableDictionary *)inputCombinedBackdropViewEdgeConstraints count])
            {
              v169 = MEMORY[0x1E69977A0];
              allValues5 = [(NSMutableDictionary *)self->_inputCombinedBackdropViewEdgeConstraints allValues];
              [v169 deactivateConstraints:allValues5];

              [(NSMutableDictionary *)self->_inputCombinedBackdropViewEdgeConstraints removeAllObjects];
            }

            if ([(NSMutableDictionary *)self->_backdropInnerGuideConstraints count])
            {
              [(NSMutableDictionary *)self->_backdropInnerGuideConstraints removeObjectForKey:@"items"];
              v171 = MEMORY[0x1E69977A0];
              allValues6 = [(NSMutableDictionary *)self->_backdropInnerGuideConstraints allValues];
              [v171 deactivateConstraints:allValues6];

              [(NSMutableDictionary *)self->_backdropInnerGuideConstraints removeAllObjects];
            }
          }

          goto LABEL_125;
        }
      }

      else
      {
        hostView = [(UIInputWindowControllerHostingItem *)self hostView];

        if (inputView)
        {
          goto LABEL_60;
        }
      }

      hostView23 = [(UIInputWindowControllerHostingItem *)self hostView];

      goto LABEL_63;
    }

    [(NSLayoutConstraint *)self->_emptyHeightConstraint setActive:0];
    v279 = hostView;
    if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") && !+[UIKeyboard usesLocalKeyboard])
    {
    }

    else
    {
      v19 = v289;
      if (v289)
      {
        v20 = 1;
        v21 = v289;
        goto LABEL_22;
      }
    }

    if (inputSwitcherView)
    {
      v20 = 0;
      v19 = 0;
      v21 = inputSwitcherView;
    }

    else
    {
      if (!inputAccessoryView)
      {
        hostView = [(UIInputWindowControllerHostingItem *)self hostView];

        v19 = 0;
        v20 = 0;
LABEL_23:
        v289 = v19;
        if (inputAccessoryView)
        {
          v22 = 1;
        }

        else
        {
          v22 = v20;
        }

        v23 = 3;
        if (inputSwitcherView)
        {
          v23 = 4;
        }

        if (v22)
        {
          v24 = 4;
        }

        else
        {
          v24 = v23;
        }

        if (!self->_inputViewEdgeConstraints)
        {
          v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
          inputViewEdgeConstraints = self->_inputViewEdgeConstraints;
          self->_inputViewEdgeConstraints = v25;
        }

        inputViewController = [(UIInputWindowControllerHostingItem *)self inputViewController];
        [(UIInputWindowControllerHostingItem *)self _aligningInsetsForChildInputViewController:inputViewController includeSceneBounds:0];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v36 = self->_inputViewEdgeConstraints;
        hostView24 = [(UIInputWindowControllerHostingItem *)self hostView];
        v416[0] = MEMORY[0x1E69E9820];
        v416[1] = 3221225472;
        v416[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke;
        v416[3] = &unk_1E7116780;
        v38 = v286;
        v417 = v38;
        selfCopy12 = self;
        v419 = v29;
        v420 = v31;
        v421 = v33;
        v422 = v35;
        v39 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v36 key:&unk_1EFE31AF8 fromView:v38 toView:hostView24 tracker:v5 creator:v416];
        [v39 setConstant:v31];

        v40 = self->_inputViewEdgeConstraints;
        hostView25 = [(UIInputWindowControllerHostingItem *)self hostView];
        v410[0] = MEMORY[0x1E69E9820];
        v410[1] = 3221225472;
        v410[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_2;
        v410[3] = &unk_1E7116780;
        v410[4] = self;
        v42 = v38;
        v411 = v42;
        v412 = v29;
        v413 = v31;
        v414 = v33;
        v415 = v35;
        v43 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v40 key:&unk_1EFE31B10 fromView:hostView25 toView:v42 tracker:v5 creator:v410];
        [v43 setConstant:v35];

        hostView26 = [(UIInputWindowControllerHostingItem *)self hostView];
        LODWORD(v43) = [hostView isDescendantOfView:hostView26];

        v282 = 0;
        if (v43)
        {
          v282 = hostView == v289;
          v45 = self->_inputViewEdgeConstraints;
          v402[0] = MEMORY[0x1E69E9820];
          v402[1] = 3221225472;
          v402[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_3;
          v402[3] = &unk_1E71167A8;
          v403 = v42;
          v404 = hostView;
          v405 = v24;
          v406 = v29;
          v407 = v31;
          v408 = v33;
          v409 = v35;
          v46 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v45 key:&unk_1EFE31B28 fromView:v403 toView:v404 tracker:v5 creator:v402];
          [v46 setConstant:v29];
        }

        inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
        if ([inputViewSet isCustomInputView])
        {
        }

        else
        {
          v48 = +[UIKeyboardImpl showsGlobeAndDictationKeysExternallyForFloatingKeyboard];

          if (v48)
          {
            goto LABEL_39;
          }
        }

        v49 = self->_inputViewEdgeConstraints;
        hostView27 = [(UIInputWindowControllerHostingItem *)self hostView];
        v396[0] = MEMORY[0x1E69E9820];
        v396[1] = 3221225472;
        v396[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_4;
        v396[3] = &unk_1E7116780;
        v396[4] = self;
        v397 = v42;
        v398 = v29;
        v399 = v31;
        v400 = v33;
        v401 = v35;
        v51 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v49 key:&unk_1EFE31B40 fromView:v397 toView:hostView27 tracker:v5 creator:v396];
        [v51 setConstant:fabs(v33)];

LABEL_39:
        dockView = [(UIInputWindowControllerHostingItem *)self dockView];
        superview6 = [dockView superview];
        hostView28 = [(UIInputWindowControllerHostingItem *)self hostView];
        v55 = hostView28;
        if (superview6 == hostView28)
        {
          _shouldShowInputDockView = [(UIInputWindowControllerHostingItem *)self _shouldShowInputDockView];

          if (_shouldShowInputDockView)
          {
            inputDockViewEdgeConstraints = self->_inputDockViewEdgeConstraints;
            if (!inputDockViewEdgeConstraints)
            {
              v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v59 = self->_inputDockViewEdgeConstraints;
              self->_inputDockViewEdgeConstraints = v58;

              inputDockViewEdgeConstraints = self->_inputDockViewEdgeConstraints;
            }

            hostView29 = [(UIInputWindowControllerHostingItem *)self hostView];
            v393[0] = MEMORY[0x1E69E9820];
            v393[1] = 3221225472;
            v393[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_5;
            v393[3] = &unk_1E71167D0;
            v61 = dockView;
            v394 = v61;
            selfCopy13 = self;
            v62 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:inputDockViewEdgeConstraints key:&unk_1EFE31AF8 fromView:v61 toView:hostView29 tracker:v5 creator:v393];
            [v62 setConstant:0.0];

            v63 = self->_inputDockViewEdgeConstraints;
            hostView30 = [(UIInputWindowControllerHostingItem *)self hostView];
            v390[0] = MEMORY[0x1E69E9820];
            v390[1] = 3221225472;
            v390[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_6;
            v390[3] = &unk_1E71167D0;
            v65 = v61;
            v391 = v65;
            selfCopy14 = self;
            v66 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v63 key:&unk_1EFE31B10 fromView:v65 toView:hostView30 tracker:v5 creator:v390];
            [v66 setConstant:0.0];

            superview7 = [v42 superview];
            hostView31 = [(UIInputWindowControllerHostingItem *)self hostView];

            if (superview7 == hostView31)
            {
              v69 = +[UIKeyboardImpl showsGlobeAndDictationKeysExternallyForFloatingKeyboard];
              v275 = self->_inputDockViewEdgeConstraints;
              if (v69)
              {
                v387[0] = MEMORY[0x1E69E9820];
                v387[1] = 3221225472;
                v387[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_7;
                v387[3] = &unk_1E71167D0;
                v276 = &v388;
                v70 = v65;
                v388 = v70;
                v71 = &v389;
                v389 = v42;
                v72 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v275 key:&unk_1EFE31B28 fromView:v70 toView:v389 tracker:v5 creator:v387];
                v73 = self->_inputDockViewEdgeConstraints;
                v385[0] = MEMORY[0x1E69E9820];
                v385[1] = 3221225472;
                v385[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_8;
                v385[3] = &unk_1E71167F8;
                v386 = v70;
                v74 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v73 key:&unk_1EFE31AF8 fromView:v386 toView:0 tracker:v5 creator:v385];
              }

              else
              {
                v382[0] = MEMORY[0x1E69E9820];
                v382[1] = 3221225472;
                v382[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_9;
                v382[3] = &unk_1E71167D0;
                v276 = &v383;
                v77 = v65;
                v383 = v77;
                v71 = &v384;
                v384 = v42;
                v78 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v275 key:&unk_1EFE31B28 fromView:v77 toView:v384 tracker:v5 creator:v382];
              }
            }

            v79 = self->_inputDockViewEdgeConstraints;
            hostView32 = [(UIInputWindowControllerHostingItem *)self hostView];
            v379[0] = MEMORY[0x1E69E9820];
            v379[1] = 3221225472;
            v379[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_10;
            v379[3] = &unk_1E71167D0;
            v380 = v65;
            selfCopy15 = self;
            v81 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v79 key:&unk_1EFE31B40 fromView:v380 toView:hostView32 tracker:v5 creator:v379];

            inputView = v286;
            goto LABEL_53;
          }
        }

        else
        {
        }

        inputView = v286;
        if ([(NSMutableDictionary *)self->_inputDockViewEdgeConstraints count])
        {
          v75 = MEMORY[0x1E69977A0];
          allValues7 = [(NSMutableDictionary *)self->_inputDockViewEdgeConstraints allValues];
          [v75 deactivateConstraints:allValues7];

          [(NSMutableDictionary *)self->_inputDockViewEdgeConstraints removeAllObjects];
        }

LABEL_53:

        inputAccessoryView = v285;
        v13 = v287;
        inputSwitcherView = v288;
        LODWORD(hostView) = v279;
        goto LABEL_54;
      }

      v20 = 0;
      v19 = 0;
      v21 = inputAccessoryView;
    }

LABEL_22:
    hostView = v21;
    goto LABEL_23;
  }
}

- (UIView)inputAccessoryView
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:101])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _inputAccessoryView = [owner _inputAccessoryView];
  }

  else
  {
    _inputAccessoryView = 0;
  }

  return _inputAccessoryView;
}

- (BOOL)useCombinedBackdrop
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  view = [owner view];
  _inheritedRenderConfig = [view _inheritedRenderConfig];
  animatedBackground = [_inheritedRenderConfig animatedBackground];
  if (animatedBackground & 1) != 0 || (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v2 = objc_claimAutoreleasedReturnValue(), [v2 restorableRenderConfig], v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "animatedBackground")) || -[UIInputWindowControllerHostingItem animatingBackdrops](self, "animatingBackdrops"))
  {
    owner2 = [(UIInputWindowControllerHostingItem *)self owner];
    expectedPlacement = [owner2 expectedPlacement];
    v11 = [expectedPlacement isFloatingAssistantView] ^ 1;

    if (animatedBackground)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

LABEL_8:
  return v11;
}

- (BOOL)_shouldShowInputDockView
{
  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  if ([inputViewSet isCustomInputView])
  {
    inputViewSet2 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    if ([inputViewSet2 shouldShowDockView])
    {
      v5 = +[UIKeyboardImpl showsGlobeAndDictationKeysExternally];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = +[UIKeyboardImpl showsGlobeAndDictationKeysExternally];
  }

  return v5;
}

- (UIInputViewSet)inputViewSet
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  inputViewSet = [owner inputViewSet];
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v6 = [WeakRetained host:self isForPurpose:100];
  v7 = objc_loadWeakRetained(&self->_container);
  v8 = [v7 host:self isForPurpose:101];
  v9 = objc_loadWeakRetained(&self->_container);
  v10 = +[UIInputViewSet inputSetWithOriginalInputSet:duplicateInputView:duplicateInputAccessoryView:duplicateInputAssistantView:](UIInputViewSet, "inputSetWithOriginalInputSet:duplicateInputView:duplicateInputAccessoryView:duplicateInputAssistantView:", inputViewSet, v6, v8, [v9 host:self isForPurpose:102]);

  return v10;
}

- (UIView)containerView
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  view = [owner view];

  return view;
}

- (id)inputAssistantViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:102])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _inputAssistantViewController = [owner _inputAssistantViewController];
  }

  else
  {
    _inputAssistantViewController = 0;
  }

  return _inputAssistantViewController;
}

- (id)inputViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:100])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _inputViewController = [owner _inputViewController];
  }

  else
  {
    _inputViewController = 0;
  }

  return _inputViewController;
}

- (UIView)inputSwitcherView
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:103])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _inputSwitcherView = [owner _inputSwitcherView];
  }

  else
  {
    _inputSwitcherView = 0;
  }

  return _inputSwitcherView;
}

- (UIView)inputAssistantView
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:102])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _inputAssistantView = [owner _inputAssistantView];
  }

  else
  {
    _inputAssistantView = 0;
  }

  return _inputAssistantView;
}

- (UIView)inputView
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:100])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _inputView = [owner _inputView];
  }

  else
  {
    _inputView = 0;
  }

  return _inputView;
}

- (UIEdgeInsets)inputViewPadding
{
  container = [(UIInputWindowControllerHostingItem *)self container];
  [container _inputViewPadding];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) hostView];
  v3 = [v2 bottomAnchor];
  v4 = [*(a1 + 40) bottomAnchor];
  v5 = [v3 constraintEqualToAnchor:v4 constant:fabs(*(a1 + 64))];

  [v5 setIdentifier:@"inputView.bottom"];

  return v5;
}

- (void)someViewDidLayoutSubviews
{
  controllerDelegate = [(UIInputWindowControllerHostingItem *)self controllerDelegate];
  [controllerDelegate controllerDidLayoutSubviews:self];

  placement = [(UIInputWindowControllerHostingItem *)self placement];
  delegate = [placement delegate];

  if (delegate == self)
  {
    placement2 = [(UIInputWindowControllerHostingItem *)self placement];
    [placement2 checkSizeForOwner:self];
  }
}

- (CGRect)visibleFrame
{
  placement = [(UIInputWindowControllerHostingItem *)self placement];
  v4 = placement;
  if (placement && ([placement isVisible] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  else if (+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating") || [v4 isFloatingAssistantView] && (-[UIInputWindowControllerHostingItem inputViewSet](self, "inputViewSet"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "inputAccessoryView"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
  {
    [(UIInputViewSetPlacementApplicator *)self->_applicator popoverFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    hostView = [(UIInputWindowControllerHostingItem *)self hostView];
    [hostView frame];
    v6 = v16;
    v8 = v17;
    v10 = v18;
    v12 = v19;
  }

  v20 = v6;
  v21 = v8;
  v22 = v10;
  v23 = v12;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (id)createItemHostView
{
  v2 = [UIInputSetHostView alloc];
  v3 = [(UIView *)v2 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v3;
}

- (void)setPlacement
{
  delegate = [(UIInputViewSetPlacement *)self->_cachedPlacement delegate];

  if (delegate == self)
  {
    [(UIInputViewSetPlacement *)self->_cachedPlacement setDelegate:0];
  }

  placement = [(UIInputWindowControllerHostingItem *)self placement];
  cachedPlacement = self->_cachedPlacement;
  self->_cachedPlacement = placement;

  v6 = self->_cachedPlacement;

  [(UIInputViewSetPlacement *)v6 setDelegate:self];
}

- (void)refreshApplicator
{
  placement = [(UIInputWindowControllerHostingItem *)self placement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    inputBackdropView = self->_inputBackdropView;
    if (inputBackdropView)
    {
      if (![(UIKBInputBackdropView *)inputBackdropView _isTransitioning])
      {
        if ([placement isFloating])
        {
          +[UIKeyboardImpl floatingNormalizedPersistentOffset];
        }

        else
        {
          +[UIKeyboardImpl normalizedPersistentOffset];
        }

        [placement setOffset:?];
      }
    }
  }

  v4 = self->_applicator;
  placement2 = [(UIInputWindowControllerHostingItem *)self placement];
  v6 = [placement2 applicatorInfoForOwner:self];
  [(UIInputViewSetPlacementApplicator *)v4 applyChanges:v6];
}

- (CGRect)notificationsFrame
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v3 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  if (windowingModeEnabled)
  {
    [(UIInputWindowControllerHostingItem *)self fullScreenFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    hostView = [(UIInputWindowControllerHostingItem *)self hostView];
    window = [hostView window];
    if ([window _isHostedInAnotherProcess])
    {
      hostView2 = [(UIInputWindowControllerHostingItem *)self hostView];
      window2 = [hostView2 window];
      _isTextEffectsWindowNotificationOwner = [window2 _isTextEffectsWindowNotificationOwner];

      if (_isTextEffectsWindowNotificationOwner)
      {
        hostView3 = [(UIInputWindowControllerHostingItem *)self hostView];
        [hostView3 frame];
        v45.origin.x = v20;
        v45.origin.y = v21;
        v45.size.width = v22;
        v45.size.height = v23;
        v41.origin.x = v7;
        v41.origin.y = v9;
        v41.size.width = v11;
        v41.size.height = v13;
        v42 = CGRectIntersection(v41, v45);
        x = v42.origin.x;
        y = v42.origin.y;
        width = v42.size.width;
        height = v42.size.height;

        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = height;
        if (!CGRectIsEmpty(v43))
        {
          hostView4 = [(UIInputWindowControllerHostingItem *)self hostView];
          [hostView4 frame];
          v7 = v29;
          v9 = v30;
          v11 = v31;
          v13 = v32;
        }
      }
    }

    else
    {
    }
  }

  else
  {
    [(UIInputWindowControllerHostingItem *)self visibleFrame];
    v7 = v33;
    v9 = v34;
    v11 = v35;
    v13 = v36;
  }

  v37 = v7;
  v38 = v9;
  v39 = v11;
  v40 = v13;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (void)initializeTranslateGestureRecognizerIfNecessary
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  _window = [owner _window];
  windowScene = [_window windowScene];
  _isKeyWindowScene = [windowScene _isKeyWindowScene];

  if (+[UIKeyboardImpl rivenInstalled])
  {
    masterController = [(UIKeyboardMotionSupport *)self->_cachedSplitKeyboardController masterController];
    v8 = masterController;
    if (masterController == self)
    {

      if (!_isKeyWindowScene)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    _isForSplitKeyboard = [(UIInputWindowControllerHostingItem *)self _isForSplitKeyboard];

    if (_isForSplitKeyboard)
    {
      [(UIInputWindowControllerHostingItem *)self configureSplitKeyboardController:1];
    }
  }

  if (!_isKeyWindowScene)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ([(UIInputWindowControllerHostingItem *)self _isForDragToDismiss])
  {
    [(UIInputWindowControllerHostingItem *)self configureScrollDismissController:1];
  }

LABEL_9:
  owner2 = [(UIInputWindowControllerHostingItem *)self owner];
  placement = [owner2 placement];
  if ([placement isFloating])
  {
LABEL_16:

    goto LABEL_17;
  }

  placement2 = [(UIInputWindowControllerHostingItem *)self placement];
  if (([placement2 isFloatingAssistantView] & 1) == 0)
  {

    goto LABEL_16;
  }

  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  assistantViewController = [inputViewSet assistantViewController];
  _usesCustomBackground = [assistantViewController _usesCustomBackground];

  if (_usesCustomBackground)
  {
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  if (!+[UIKeyboard isInputSystemUI])
  {
    v19 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    visualModeManager = [v19 visualModeManager];
    shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];

    owner3 = [(UIInputWindowControllerHostingItem *)self owner];
    _window2 = [owner3 _window];
    _isAlwaysKeyboardWindow = [_window2 _isAlwaysKeyboardWindow];
    v25 = _isAlwaysKeyboardWindow;
    if (shouldShowWithinAppWindow)
    {
      v26 = (_isAlwaysKeyboardWindow ^ 1) & _isKeyWindowScene;

      if ((v26 & 1) == 0)
      {
        return;
      }
    }

    else
    {

      if (!v25)
      {
        return;
      }
    }
  }

  v16 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  keyboardActive = [v16 keyboardActive];

  if ((keyboardActive & 1) == 0)
  {
    return;
  }

  v18 = 1;
LABEL_18:

  [(UIInputWindowControllerHostingItem *)self configureFlickingAssistantViewController:v18];
}

- (void)updateInputBackdropViewVisibility
{
  if ([(UIInputWindowControllerHostingItem *)self useCombinedBackdrop])
  {
    v3 = [(UIView *)self->_inputBackdropView isHidden]^ 1;

    [(UIInputWindowControllerHostingItem *)self updateCombinedBackdropViewAnimated:1 forKeyboardUp:v3];
  }

  else
  {
    [(UIInputWindowControllerHostingItem *)self setCombinedBackdropView:0];
    v4 = +[UIKeyboardImpl activeInstance];
    v6 = v4;
    if (v4)
    {
      v5 = [v4 _isBackdropVisible] ^ 1;
    }

    else
    {
      v5 = 0;
    }

    [(UIView *)self->_inputBackdropView setHidden:v5];
  }
}

- (void)resetPlacement
{
  delegate = [(UIInputViewSetPlacement *)self->_cachedPlacement delegate];

  if (delegate == self)
  {
    [(UIInputViewSetPlacement *)self->_cachedPlacement setDelegate:0];
  }

  cachedPlacement = self->_cachedPlacement;
  self->_cachedPlacement = 0;
}

- (void)updateInputBackdropView
{
  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  inputView = [inputViewSet inputView];
  if (!inputView || ([inputViewSet isInputViewPlaceholder] & 1) != 0)
  {
    v24 = 0;
    goto LABEL_4;
  }

  useCombinedBackdrop = [(UIInputWindowControllerHostingItem *)self useCombinedBackdrop];

  if (!useCombinedBackdrop)
  {
    _inputBackdropView = [(UIInputWindowControllerHostingItem *)self _inputBackdropView];

    inputView2 = [inputViewSet inputView];
    [inputView2 frame];
    v10 = v9;
    v12 = v11;

    hostView = [(UIInputWindowControllerHostingItem *)self hostView];
    [hostView frame];
    v15 = v14;

    hostView2 = [(UIInputWindowControllerHostingItem *)self hostView];
    [hostView2 frame];
    v18 = v17;

    _inputBackdropView2 = [(UIInputWindowControllerHostingItem *)self _inputBackdropView];
    v20 = _inputBackdropView2;
    if (_inputBackdropView2)
    {
      v21 = _inputBackdropView2;
    }

    else
    {
      v21 = [[UIKBInputBackdropView alloc] initWithFrame:v15, v10, v18, v12];
    }

    v24 = v21;

    [(UIView *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (_inputBackdropView)
    {
      goto LABEL_5;
    }

    inputView = [(UIInputWindowControllerHostingItem *)self owner];
    view = [inputView view];
    _inheritedRenderConfig = [view _inheritedRenderConfig];
    [(UIKBInputBackdropView *)v24 _setRenderConfig:_inheritedRenderConfig];

LABEL_4:
LABEL_5:
    v5 = v24;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:
  v25 = v5;
  [(UIInputWindowControllerHostingItem *)self setInputBackdropView:v5];
  [(UIInputWindowControllerHostingItem *)self updateInputBackdropViewVisibility];
}

- (BOOL)_isForDragToDismiss
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  if ([owner shouldNotifyRemoteKeyboards])
  {
    WeakRetained = objc_loadWeakRetained(&self->_container);
    v5 = [WeakRetained host:self isForPurpose:3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69977A0];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) hostView];
  v5 = [v2 constraintWithItem:v3 attribute:1 relatedBy:0 toItem:v4 attribute:1 multiplier:1.0 constant:*(a1 + 56)];

  [v5 setIdentifier:@"inputView.left"];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1E69977A0];
  v3 = [*(a1 + 32) hostView];
  v4 = [v2 constraintWithItem:v3 attribute:2 relatedBy:0 toItem:*(a1 + 40) attribute:2 multiplier:1.0 constant:*(a1 + 72)];

  [v4 setIdentifier:@"inputView.right"];

  return v4;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_3(uint64_t a1)
{
  v1 = [MEMORY[0x1E69977A0] constraintWithItem:*(a1 + 32) attribute:3 relatedBy:0 toItem:*(a1 + 40) attribute:*(a1 + 48) multiplier:1.0 constant:*(a1 + 56)];
  [v1 setIdentifier:@"inputView.top"];

  return v1;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) leftAnchor];
  v3 = [*(a1 + 40) hostView];
  v4 = [v3 leftAnchor];
  v5 = [v2 constraintEqualToAnchor:v4];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) rightAnchor];
  v3 = [*(a1 + 40) hostView];
  v4 = [v3 rightAnchor];
  v5 = [v2 constraintEqualToAnchor:v4];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_9(uint64_t a1)
{
  v2 = [*(a1 + 32) topAnchor];
  v3 = [*(a1 + 40) topAnchor];
  v4 = [v2 constraintEqualToAnchor:v3];

  return v4;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 32) bottomAnchor];
  v3 = [*(a1 + 40) hostView];
  v4 = [v3 bottomAnchor];
  v5 = [v2 constraintEqualToAnchor:v4];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_11(uint64_t a1)
{
  v2 = MEMORY[0x1E69977A0];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) hostView];
  v5 = [v2 constraintWithItem:v3 attribute:1 relatedBy:0 toItem:v4 attribute:1 multiplier:1.0 constant:*(a1 + 56)];

  [v5 setIdentifier:@"assistantView.left"];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_12(uint64_t a1)
{
  v2 = MEMORY[0x1E69977A0];
  v3 = [*(a1 + 32) hostView];
  v4 = [v2 constraintWithItem:v3 attribute:2 relatedBy:0 toItem:*(a1 + 40) attribute:2 multiplier:1.0 constant:*(a1 + 72)];

  [v4 setIdentifier:@"assistantView.right"];

  return v4;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_13(void *a1)
{
  v1 = [MEMORY[0x1E69977A0] constraintWithItem:a1[4] attribute:3 relatedBy:0 toItem:a1[5] attribute:a1[6] multiplier:1.0 constant:0.0];
  [v1 setIdentifier:@"assistantView.top"];

  return v1;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_17(uint64_t a1)
{
  v2 = [*(a1 + 32) hostView];
  v3 = [v2 leftAnchor];
  v4 = [*(a1 + 40) leftAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  [v5 setIdentifier:@"backgroundView.left"];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_18(uint64_t a1)
{
  v2 = [*(a1 + 32) rightAnchor];
  v3 = [*(a1 + 40) hostView];
  v4 = [v3 rightAnchor];
  v5 = [v2 constraintEqualToAnchor:v4];

  [v5 setIdentifier:@"backgroundView.right"];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_20(uint64_t a1)
{
  v2 = [*(a1 + 32) hostView];
  v3 = [v2 topAnchor];
  v4 = [*(a1 + 40) topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  [v5 setIdentifier:@"backgroundView.top"];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_21(uint64_t a1)
{
  v2 = [*(a1 + 32) bottomAnchor];
  v3 = [*(a1 + 40) hostView];
  v4 = [v3 bottomAnchor];
  v5 = [v2 constraintEqualToAnchor:v4];

  [v5 setIdentifier:@"backgroundView.bottom"];

  return v5;
}

- (id)animatedInputView
{
  inputViewController = [(UIInputWindowControllerHostingItem *)self inputViewController];
  animatableElement = [inputViewController animatableElement];

  return animatableElement;
}

- (id)animatedAssistantView
{
  if ([(UIInputWindowControllerHostingItem *)self assistantHostCanAnimate]&& (inputAssistantHostView = self->_inputAssistantHostView) != 0)
  {
    animatableElement = inputAssistantHostView;
  }

  else
  {
    inputAssistantViewController = [(UIInputWindowControllerHostingItem *)self inputAssistantViewController];
    animatableElement = [inputAssistantViewController animatableElement];
  }

  return animatableElement;
}

- (void)checkPlaceholdersForRemoteKeyboards
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  [owner checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:0 layoutSubviews:0];
}

- (void)updateEmptyHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:0])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    +[UIKeyboardImpl sizeForInterfaceOrientation:](UIKeyboardImpl, "sizeForInterfaceOrientation:", [owner keyboardOrientation]);
    [(NSLayoutConstraint *)self->_emptyHeightConstraint setConstant:v4];
  }

  else
  {
    [(NSLayoutConstraint *)self->_emptyHeightConstraint setConstant:0.0];
  }
}

- (void)_updateBackdropViews
{
  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v3 = +[UIKeyboardImpl activeInstance];
  if (([v3 splitTransitionInProgress] & 1) != 0 || -[UIKBInputBackdropView _isTransitioning](self->_inputBackdropView, "_isTransitioning") || (objc_msgSend(inputViewSet, "isEmpty") & 1) != 0 || !self->_inputBackdropView && !self->_inputAccessoryBackdropView)
  {
    goto LABEL_15;
  }

  if (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || ([v3 centerFilled])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    view = [owner view];
    [view layoutIfNeeded];

LABEL_9:
    inputAccessoryBackdropView = self->_inputAccessoryBackdropView;
    if (inputAccessoryBackdropView)
    {
      [(UIView *)self->_inputAccessoryBackdropView frame];
      v8 = v7;
      [(UIView *)self->_inputAccessoryBackdropView frame];
      [(UIKBInputBackdropView *)inputAccessoryBackdropView layoutInputBackdropToFullWithRect:0.0, 0.0, v8];
    }

    inputCombinedBackdropView = self->_inputCombinedBackdropView;
    if (inputCombinedBackdropView)
    {
      [(UIView *)self->_inputCombinedBackdropView bounds];
      v11 = v10;
      [(UIView *)self->_inputCombinedBackdropView bounds];
    }

    else
    {
      inputCombinedBackdropView = self->_inputBackdropView;
      [(UIView *)inputCombinedBackdropView frame];
      v11 = v12;
      [(UIView *)self->_inputBackdropView frame];
    }

    [(_UIKBLightEffectsBackground *)inputCombinedBackdropView layoutInputBackdropToFullWithRect:0.0, 0.0, v11];
    goto LABEL_15;
  }

  isSplit = [inputViewSet isSplit];
  owner2 = [(UIInputWindowControllerHostingItem *)self owner];
  view2 = [owner2 view];
  [view2 layoutIfNeeded];

  if (!isSplit)
  {
    goto LABEL_9;
  }

  [inputViewSet _leftInputViewSetFrame];
  Width = CGRectGetWidth(v34);
  [inputViewSet inputViewBounds];
  v17 = CGRectGetWidth(v35);
  [inputViewSet _rightInputViewSetFrame];
  v18 = v17 - CGRectGetWidth(v36) - Width;
  [inputViewSet inputViewSplitHeight];
  v20 = v19;
  [(NSLayoutConstraint *)self->_assistantViewHeightConstraint constant];
  v22 = v21;
  [inputViewSet inputAccessoryViewBounds];
  Height = CGRectGetHeight(v37);
  [inputViewSet inputViewBounds];
  v24 = CGRectGetWidth(v38) - Width;
  inputAccessoryView = [inputViewSet inputAccessoryView];

  if (inputAccessoryView)
  {
    [inputViewSet inputAccessoryViewBounds];
    [(UIKBInputBackdropView *)self->_inputAccessoryBackdropView layoutInputBackdropToSplitWithLeftViewRect:3 andRightViewRect:0.0 innerCorners:0.0, Width, Height, Width + v18, 0.0, CGRectGetWidth(v39) - Width - v18, Height];
    v26 = 12;
  }

  else
  {
    v26 = -1;
  }

  inputAssistantView = [inputViewSet inputAssistantView];

  if (inputAssistantView)
  {
    v20 = v20 + v22;
  }

  inputSwitcherView = [inputViewSet inputSwitcherView];

  if (inputSwitcherView)
  {
    inputSwitcherView2 = [inputViewSet inputSwitcherView];
    [inputSwitcherView2 bounds];
    v31 = v30;

    v20 = v20 + v31;
  }

  [(UIKBInputBackdropView *)self->_inputBackdropView layoutInputBackdropToSplitWithLeftViewRect:v26 andRightViewRect:0.0 innerCorners:0.0, Width, v20, Width + v18, 0.0, v24 - v18, v20];
LABEL_15:
}

- (void)updateInputAccessoryBackdropView
{
  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  inputAccessoryView = [inputViewSet inputAccessoryView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    inputAccessoryView2 = [inputViewSet inputAccessoryView];
    [inputAccessoryView2 backgroundEdgeInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    inputAccessoryView3 = [inputViewSet inputAccessoryView];
    [inputAccessoryView3 frame];
    v17 = v16;
    v19 = v18;

    hostView = [(UIInputWindowControllerHostingItem *)self hostView];
    [hostView frame];
    v22 = v21;

    hostView2 = [(UIInputWindowControllerHostingItem *)self hostView];
    [hostView2 frame];
    v25 = v24;

    _inputAccessoryBackdropView = [(UIInputWindowControllerHostingItem *)self _inputAccessoryBackdropView];
    v27 = _inputAccessoryBackdropView;
    if (_inputAccessoryBackdropView)
    {
      v28 = _inputAccessoryBackdropView;
    }

    else
    {
      v28 = [[UIKBInputBackdropView alloc] initWithFrame:v10 + v22, v8 + v17, v25 - (v14 + v10), v19 - (v8 + v12)];
    }

    v32 = v28;

    [(UIView *)v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    view = [owner view];
    _inheritedRenderConfig = [view _inheritedRenderConfig];
    [(UIKBInputBackdropView *)v32 _setRenderConfig:_inheritedRenderConfig];

    [(UIInputWindowControllerHostingItem *)self setInputAccessoryBackdropView:v32];
  }

  else
  {
    v32 = 0;
    [(UIInputWindowControllerHostingItem *)self setInputAccessoryBackdropView:0];
  }
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_19(uint64_t a1)
{
  v2 = [*(a1 + 32) topAnchor];
  v3 = [*(a1 + 40) bottomAnchor];
  v4 = [v2 constraintEqualToAnchor:v3];

  [v4 setIdentifier:@"backgroundView.top"];

  return v4;
}

- (id)inputAccessoryViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:101])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _inputAccessoryViewController = [owner _inputAccessoryViewController];
  }

  else
  {
    _inputAccessoryViewController = 0;
  }

  return _inputAccessoryViewController;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_32(uint64_t a1)
{
  v2 = MEMORY[0x1E69977A0];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) hostView];
  v5 = [v2 constraintWithItem:v3 attribute:1 relatedBy:0 toItem:v4 attribute:1 multiplier:1.0 constant:*(a1 + 56)];

  [v5 setIdentifier:@"accessoryView.left"];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_33(uint64_t a1)
{
  v2 = MEMORY[0x1E69977A0];
  v3 = [*(a1 + 32) hostView];
  v4 = [v2 constraintWithItem:v3 attribute:2 relatedBy:0 toItem:*(a1 + 40) attribute:2 multiplier:1.0 constant:*(a1 + 72)];

  [v4 setIdentifier:@"accessoryView.right"];

  return v4;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_34(uint64_t a1)
{
  v1 = MEMORY[0x1E69977A0];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) hostView];
  v4 = [v1 constraintWithItem:v2 attribute:3 relatedBy:0 toItem:v3 attribute:3 multiplier:1.0 constant:0.0];

  [v4 setIdentifier:@"accessoryView.top"];

  return v4;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_35(void *a1)
{
  v1 = [MEMORY[0x1E69977A0] constraintWithItem:a1[4] attribute:4 relatedBy:0 toItem:a1[5] attribute:a1[6] multiplier:1.0 constant:0.0];
  [v1 setIdentifier:@"accessoryView.bottom"];

  return v1;
}

- (void)clearInputAccessoryViewEdgeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  allValues = [(NSMutableDictionary *)self->_accessoryViewEdgeConstraints allValues];
  [v3 deactivateConstraints:allValues];

  [(NSMutableDictionary *)self->_accessoryViewEdgeConstraints removeAllObjects];
  if ([(NSMutableDictionary *)self->_accessoryBackdropViewEdgeConstraints count])
  {
    v5 = MEMORY[0x1E69977A0];
    allValues2 = [(NSMutableDictionary *)self->_accessoryBackdropViewEdgeConstraints allValues];
    [v5 deactivateConstraints:allValues2];

    accessoryBackdropViewEdgeConstraints = self->_accessoryBackdropViewEdgeConstraints;

    [(NSMutableDictionary *)accessoryBackdropViewEdgeConstraints removeAllObjects];
  }
}

- (void)updateCombinedBackdropView
{
  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  view = [owner view];
  _inheritedRenderConfig = [view _inheritedRenderConfig];

  v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  restorableRenderConfig = [v7 restorableRenderConfig];

  if (restorableRenderConfig)
  {
    v9 = restorableRenderConfig;

    _inheritedRenderConfig = v9;
  }

  inputView = [inputViewSet inputView];
  if (!inputView || ([inputViewSet isInputViewPlaceholder] & 1) != 0)
  {

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  animatedBackground = [_inheritedRenderConfig animatedBackground];

  if (!animatedBackground)
  {
    goto LABEL_6;
  }

  _inputCombinedBackdropView = [(UIInputWindowControllerHostingItem *)self _inputCombinedBackdropView];
  v14 = _inputCombinedBackdropView;
  if (_inputCombinedBackdropView)
  {
    v15 = _inputCombinedBackdropView;
  }

  else
  {
    v16 = [_UIKBLightEffectsBackground alloc];
    v15 = [(_UIKBLightEffectsBackground *)v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v20 = v15;

  [(UIView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIInputWindowControllerHostingItem *)self setInputBackdropView:0];
  if (![(UIInputWindowControllerHostingItem *)self animatingBackdrops])
  {
    owner2 = [(UIInputWindowControllerHostingItem *)self owner];
    v18 = [owner2 updateGuideBackdropRenderConfig:_inheritedRenderConfig animated:0];

    [(_UIKBLightEffectsBackground *)v20 setClientBackdropInUse:v18];
    [(_UIKBLightEffectsBackground *)v20 _setRenderConfig:_inheritedRenderConfig];
  }

  v11 = v20;
LABEL_7:
  v19 = v11;
  [(UIInputWindowControllerHostingItem *)self setCombinedBackdropView:v11];
}

- (void)updateInputAssistantHostViewVisibility
{
  placement = [(UIInputWindowControllerHostingItem *)self placement];
  -[TUIInputAssistantHostView setHidden:](self->_inputAssistantHostView, "setHidden:", [placement isFloatingAssistantView] ^ 1);
}

- (UIInputWindowControllerHostingItem)initWithContainer:(id)container
{
  containerCopy = container;
  v22.receiver = self;
  v22.super_class = UIInputWindowControllerHostingItem;
  v5 = [(UIInputWindowControllerHostingItem *)&v22 init];
  if (v5)
  {
    v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v6 registerController:v5];

    objc_storeWeak(&v5->_container, containerCopy);
    createItemHostView = [(UIInputWindowControllerHostingItem *)v5 createItemHostView];
    hostView = v5->_hostView;
    v5->_hostView = createItemHostView;

    v9 = [MEMORY[0x1E69977A0] constraintWithItem:v5->_hostView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
    emptyHeightConstraint = v5->_emptyHeightConstraint;
    v5->_emptyHeightConstraint = v9;

    [(NSLayoutConstraint *)v5->_emptyHeightConstraint setIdentifier:@"emptyHeight"];
    WeakRetained = objc_loadWeakRetained(&v5->_container);
    -[NSLayoutConstraint setActive:](v5->_emptyHeightConstraint, "setActive:", [WeakRetained useLayoutHostingItem] ^ 1);

    owner = [(UIInputWindowControllerHostingItem *)v5 owner];
    placement = [owner placement];
    if ([placement isFloatingAssistantView])
    {
      owner2 = [(UIInputWindowControllerHostingItem *)v5 owner];
      _window = [owner2 _window];
      _isAlwaysKeyboardWindow = [_window _isAlwaysKeyboardWindow];

      if ((_isAlwaysKeyboardWindow & 1) == 0)
      {
        owner3 = [(UIInputWindowControllerHostingItem *)v5 owner];
        view = [owner3 view];
        hostView = [(UIInputWindowControllerHostingItem *)v5 hostView];
        [view insertSubview:hostView atIndex:0];
LABEL_7:

        [(UIInputWindowControllerHostingItem *)v5 updateSupportsDockViewController];
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:v5 selector:sel_inputModeDidChange_ name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];

        goto LABEL_8;
      }
    }

    else
    {
    }

    owner3 = [(UIInputWindowControllerHostingItem *)v5 owner];
    view = [owner3 view];
    hostView = [(UIInputWindowControllerHostingItem *)v5 hostView];
    [view addSubview:hostView];
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (void)dealloc
{
  [(UIInputWindowControllerHostingItem *)self resetPlacement];
  [(UIInputWindowControllerHostingItem *)self configureSplitKeyboardController:0];
  [(UIInputWindowControllerHostingItem *)self configureScrollDismissController:0];
  [(UIInputWindowControllerHostingItem *)self configureFlickingAssistantViewController:0];
  [(UIView *)self->_hostView removeFromSuperview];
  if ([(NSLayoutConstraint *)self->_assistantViewHeightConstraint isActive])
  {
    [(UIInputWindowControllerHostingItem *)self disableViewSizingConstraints:2 forNewView:0];
  }

  [(TUIInputAssistantHostView *)self->_inputAssistantHostView removeFromSuperview];
  v3 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  [v3 unregisterController:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];

  v5.receiver = self;
  v5.super_class = UIInputWindowControllerHostingItem;
  [(UIInputWindowControllerHostingItem *)&v5 dealloc];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  placement = [(UIInputWindowControllerHostingItem *)self placement];
  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v7 = [v3 stringWithFormat:@"<%@: %p owner: %@ placement: %@ IVS: %@>", self, self, owner, placement, inputViewSet];

  return v7;
}

- (void)setPlacement:(id)placement
{
  placementCopy = placement;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v5 = [WeakRetained host:self isForPurpose:200];

  if (v5)
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    [owner setPlacement:placementCopy];
  }
}

- (void)setInputView:(id)view
{
  v47[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  inputAssistantView = [(UIInputWindowControllerHostingItem *)self inputAssistantView];
  superview = [inputAssistantView superview];
  hostView = [(UIInputWindowControllerHostingItem *)self hostView];

  hostView2 = [(UIInputWindowControllerHostingItem *)self hostView];
  v9 = hostView2;
  if (superview == hostView)
  {
    [hostView2 insertSubview:viewCopy belowSubview:inputAssistantView];
  }

  else
  {
    [hostView2 addSubview:viewCopy];
  }

  if (+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating") && (-[UIInputWindowControllerHostingItem owner](self, "owner"), v10 = objc_claimAutoreleasedReturnValue(), [v10 inputViewSet], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isCustomInputView"), v11, v10, v12))
  {
    floatingKeyboardMaskView = [(UIInputWindowControllerHostingItem *)self floatingKeyboardMaskView];

    if (!floatingKeyboardMaskView)
    {
      v14 = [UIView alloc];
      v15 = [(UIView *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
      v16 = +[UIColor blackColor];
      [(UIView *)v15 setBackgroundColor:v16];

      v17 = objc_alloc_init(UIView);
      [(UIInputWindowControllerHostingItem *)self setFloatingKeyboardMaskView:v17];

      floatingKeyboardMaskView2 = [(UIInputWindowControllerHostingItem *)self floatingKeyboardMaskView];
      [floatingKeyboardMaskView2 addSubview:v15];

      hostView3 = [(UIInputWindowControllerHostingItem *)self hostView];
      floatingKeyboardMaskView3 = [(UIInputWindowControllerHostingItem *)self floatingKeyboardMaskView];
      [hostView3 addSubview:floatingKeyboardMaskView3];

      v39 = MEMORY[0x1E69977A0];
      leadingAnchor = [(UIView *)v15 leadingAnchor];
      hostView4 = [(UIInputWindowControllerHostingItem *)self hostView];
      leadingAnchor2 = [hostView4 leadingAnchor];
      v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v47[0] = v43;
      topAnchor = [(UIView *)v15 topAnchor];
      hostView5 = [(UIInputWindowControllerHostingItem *)self hostView];
      topAnchor2 = [hostView5 topAnchor];
      v38 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-100.0];
      v47[1] = v38;
      hostView6 = [(UIInputWindowControllerHostingItem *)self hostView];
      trailingAnchor = [hostView6 trailingAnchor];
      trailingAnchor2 = [(UIView *)v15 trailingAnchor];
      v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v47[2] = v22;
      hostView7 = [(UIInputWindowControllerHostingItem *)self hostView];
      bottomAnchor = [hostView7 bottomAnchor];
      bottomAnchor2 = [(UIView *)v15 bottomAnchor];
      v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v47[3] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
      [v39 activateConstraints:v27];
    }

    hostView8 = [(UIInputWindowControllerHostingItem *)self hostView];
    maskView = [hostView8 maskView];

    if (!maskView)
    {
      hostView9 = [(UIInputWindowControllerHostingItem *)self hostView];
      floatingKeyboardMaskView4 = [(UIInputWindowControllerHostingItem *)self floatingKeyboardMaskView];
      [hostView9 setMaskView:floatingKeyboardMaskView4];
    }
  }

  else
  {
    hostView10 = [(UIInputWindowControllerHostingItem *)self hostView];
    maskView2 = [hostView10 maskView];

    if (maskView2)
    {
      hostView11 = [(UIInputWindowControllerHostingItem *)self hostView];
      [hostView11 setMaskView:0];

      floatingKeyboardMaskView5 = [(UIInputWindowControllerHostingItem *)self floatingKeyboardMaskView];
      [floatingKeyboardMaskView5 removeFromSuperview];

      [(UIInputWindowControllerHostingItem *)self setFloatingKeyboardMaskView:0];
    }
  }
}

- (void)setInputAssistantView:(id)view
{
  viewCopy = view;
  hostView = [(UIInputWindowControllerHostingItem *)self hostView];
  [hostView addSubview:viewCopy];

  [(UIInputWindowControllerHostingItem *)self updateInputAssistantViewLayering];
  placement = [(UIInputWindowControllerHostingItem *)self placement];
  if ([placement isFloatingAssistantView])
  {
    superview = [(TUIInputAssistantHostView *)self->_inputAssistantHostView superview];
    hostView2 = [(UIInputWindowControllerHostingItem *)self hostView];

    if (superview != hostView2)
    {
      inputAssistantHostView = [(UIInputWindowControllerHostingItem *)self inputAssistantHostView];
    }
  }

  else
  {
  }
}

- (void)setInputAccessoryView:(id)view
{
  viewCopy = view;
  hostView = [(UIInputWindowControllerHostingItem *)self hostView];
  [hostView addSubview:viewCopy];

  owner = [(UIInputWindowControllerHostingItem *)self owner];
  placement = [owner placement];
  if ([placement isFloatingAssistantView])
  {
    owner2 = [(UIInputWindowControllerHostingItem *)self owner];
    _window = [owner2 _window];
    _isAlwaysKeyboardWindow = [_window _isAlwaysKeyboardWindow];

    if (_isAlwaysKeyboardWindow)
    {
      goto LABEL_6;
    }

    owner = [(UIInputWindowControllerHostingItem *)self inputAssistantHostView];
    [owner setInputAccessoryView:viewCopy];
  }

  else
  {
  }

LABEL_6:
}

- (void)setInputSwitcherView:(id)view
{
  viewCopy = view;
  inputSwitcherView = [(UIInputWindowControllerHostingItem *)self inputSwitcherView];

  if (inputSwitcherView != viewCopy)
  {
    inputSwitcherView2 = [(UIInputWindowControllerHostingItem *)self inputSwitcherView];
    [inputSwitcherView2 removeFromSuperview];

    hostView = [(UIInputWindowControllerHostingItem *)self hostView];
    [hostView addSubview:viewCopy];
  }
}

- (TUIInputAssistantHostView)inputAssistantHostView
{
  v38[4] = *MEMORY[0x1E69E9840];
  hostView = [(UIInputWindowControllerHostingItem *)self hostView];
  if (!self->_inputAssistantHostView)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2050000000;
    v3 = qword_1ED49F3B8;
    v37 = qword_1ED49F3B8;
    if (!qword_1ED49F3B8)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __getTUIInputAssistantHostViewClass_block_invoke;
      v33[3] = &unk_1E70F2F20;
      v33[4] = &v34;
      __getTUIInputAssistantHostViewClass_block_invoke(v33);
      v3 = v35[3];
    }

    v4 = v3;
    _Block_object_dispose(&v34, 8);
    v5 = [v3 alloc];
    [hostView frame];
    v6 = [v5 initWithFrame:?];
    inputAssistantHostView = self->_inputAssistantHostView;
    self->_inputAssistantHostView = v6;

    [(TUIInputAssistantHostView *)self->_inputAssistantHostView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  subviews = [hostView subviews];
  inputAssistantView = [(UIInputWindowControllerHostingItem *)self inputAssistantView];
  v10 = [subviews indexOfObject:inputAssistantView];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - 1;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [hostView insertSubview:self->_inputAssistantHostView atIndex:v12];
  v13 = self->_inputAssistantHostView;
  _inheritedRenderConfig = [hostView _inheritedRenderConfig];
  [(TUIInputAssistantHostView *)v13 _setRenderConfig:_inheritedRenderConfig];

  v26 = MEMORY[0x1E69977A0];
  leadingAnchor = [(TUIInputAssistantHostView *)self->_inputAssistantHostView leadingAnchor];
  leadingAnchor2 = [hostView leadingAnchor];
  v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[0] = v29;
  trailingAnchor = [(TUIInputAssistantHostView *)self->_inputAssistantHostView trailingAnchor];
  trailingAnchor2 = [hostView trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[1] = v15;
  bottomAnchor = [(TUIInputAssistantHostView *)self->_inputAssistantHostView bottomAnchor];
  bottomAnchor2 = [hostView bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[2] = v18;
  topAnchor = [(TUIInputAssistantHostView *)self->_inputAssistantHostView topAnchor];
  topAnchor2 = [hostView topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v26 activateConstraints:v22];

  [(UIInputWindowControllerHostingItem *)self setAssistantHostCanAnimate:objc_opt_respondsToSelector() & 1];
  v23 = self->_inputAssistantHostView;
  v24 = v23;

  return v23;
}

- (UIEdgeInsets)_aligningInsetsForChildInputViewController:(id)controller includeSceneBounds:(BOOL)bounds
{
  boundsCopy = bounds;
  controllerCopy = controller;
  _alignsToContentViewController = [controllerCopy _alignsToContentViewController];
  if (+[_UIRemoteKeyboards enabled])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    v9 = boundsCopy & [owner shouldNotifyRemoteKeyboards];
  }

  else
  {
    v9 = 0;
  }

  v10 = +[UIKeyboardImpl shouldPadTopOfKeyboard];
  v11 = 0.0;
  if (!controllerCopy)
  {
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    goto LABEL_21;
  }

  v12 = v10;
  _inputViewController = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  v14 = _inputViewController;
  if (_inputViewController == controllerCopy)
  {
  }

  else
  {
    inputAssistantViewController = [(UIInputWindowControllerHostingItem *)self inputAssistantViewController];

    if (inputAssistantViewController != controllerCopy)
    {
      inputAccessoryViewController = [(UIInputWindowControllerHostingItem *)self inputAccessoryViewController];

      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      if (inputAccessoryViewController == controllerCopy)
      {
        applicator = [(UIInputWindowControllerHostingItem *)self applicator];
        [applicator inputAccessoryPadding];
        v19 = v21;
        v18 = v22;
        v17 = v23;
        v11 = v24;

        if (v12)
        {
          +[UIKeyboardImpl additionalTopPaddingForRoundedKeyboard];
          v17 = v17 - v25;
        }
      }

      goto LABEL_21;
    }
  }

  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  isCustomInputView = [inputViewSet isCustomInputView];

  if (isCustomInputView)
  {
    if (+[UIKeyboard usesInputSystemUI])
    {
      inputViewSet2 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      hostedCustomInputView = [inputViewSet2 hostedCustomInputView];

      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      if (hostedCustomInputView)
      {
        goto LABEL_41;
      }
    }

    else
    {
      _inputViewController2 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
      view = [_inputViewController2 view];
      [view bounds];
      IsEmpty = CGRectIsEmpty(v82);

      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      if (IsEmpty)
      {
        goto LABEL_41;
      }
    }
  }

  inputAssistantViewController2 = [(UIInputWindowControllerHostingItem *)self inputAssistantViewController];

  if (inputAssistantViewController2 == controllerCopy)
  {
    applicator2 = [(UIInputWindowControllerHostingItem *)self applicator];
    [applicator2 inputAssistantPadding];
  }

  else
  {
    applicator2 = [(UIInputWindowControllerHostingItem *)self container];
    [applicator2 _inputViewPadding];
  }

  v19 = v35;
  v18 = v36;
  v17 = v37;
  v11 = v38;

LABEL_21:
  if (((_alignsToContentViewController | v9) & 1) == 0)
  {
    goto LABEL_41;
  }

  if (!_alignsToContentViewController)
  {
    goto LABEL_30;
  }

  _primaryContentResponder = [controllerCopy _primaryContentResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view2 = _primaryContentResponder;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_30;
    }

    view2 = [_primaryContentResponder view];
  }

  _responderWindow = view2;

  if (_responderWindow)
  {
    hostView = [(UIInputWindowControllerHostingItem *)self hostView];
    [_responderWindow bounds];
    [hostView convertRect:_responderWindow fromView:?];
    v44 = v43;
    v46 = v45;

    owner2 = [(UIInputWindowControllerHostingItem *)self owner];
    view3 = [owner2 view];
    [view3 bounds];
    v18 = v44 - v49;

    owner3 = [(UIInputWindowControllerHostingItem *)self owner];
    view4 = [owner3 view];
    [view4 bounds];
    v11 = v52 + v53 - (v44 + v46);
    goto LABEL_39;
  }

LABEL_30:
  if (v9)
  {
    owner4 = [(UIInputWindowControllerHostingItem *)self owner];
    if ([owner4 isRotating])
    {
    }

    else
    {
      v55 = +[UIKeyboardImpl activeInstance];
      isRotating = [v55 isRotating];

      if ((isRotating & 1) == 0)
      {
        owner5 = [(UIInputWindowControllerHostingItem *)self owner];
        _window = [owner5 _window];
        [_window actualSceneBounds];
        v61 = v62;
LABEL_36:

        owner6 = [(UIInputWindowControllerHostingItem *)self owner];
        view5 = [owner6 view];
        [view5 bounds];
        v11 = v61 - (v65 + v66);

        v67 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        responder = [v67 responder];
        _responderWindow = [responder _responderWindow];

        v18 = 0.0;
        if (!_responderWindow)
        {
          goto LABEL_40;
        }

        inputAccessoryView = [(UIInputWindowControllerHostingItem *)self inputAccessoryView];
        traitCollection = [inputAccessoryView traitCollection];
        horizontalSizeClass = [traitCollection horizontalSizeClass];
        traitCollection2 = [_responderWindow traitCollection];
        horizontalSizeClass2 = [traitCollection2 horizontalSizeClass];

        if (horizontalSizeClass == horizontalSizeClass2)
        {
          goto LABEL_40;
        }

        owner7 = [(UIInputWindowControllerHostingItem *)self owner];
        inputAccessoryViewController2 = [(UIInputWindowControllerHostingItem *)self inputAccessoryViewController];
        [owner7 setOverrideTraitCollection:0 forChildViewController:inputAccessoryViewController2];

        owner3 = [(UIInputWindowControllerHostingItem *)self owner];
        view4 = [_responderWindow traitCollection];
        v76 = +[UITraitCollection traitCollectionWithHorizontalSizeClass:](UITraitCollection, "traitCollectionWithHorizontalSizeClass:", [view4 horizontalSizeClass]);
        inputAccessoryViewController3 = [(UIInputWindowControllerHostingItem *)self inputAccessoryViewController];
        [owner3 setOverrideTraitCollection:v76 forChildViewController:inputAccessoryViewController3];

LABEL_39:
LABEL_40:

        goto LABEL_41;
      }
    }

    owner5 = [(UIInputWindowControllerHostingItem *)self owner];
    _window = [owner5 _window];
    owner8 = [(UIInputWindowControllerHostingItem *)self owner];
    [_window actualSceneBoundsForLandscape:{objc_msgSend(owner8, "isViewLandscape")}];
    v61 = v60;

    goto LABEL_36;
  }

LABEL_41:

  v78 = v19;
  v79 = v18;
  v80 = v17;
  v81 = v11;
  result.right = v81;
  result.bottom = v80;
  result.left = v79;
  result.top = v78;
  return result;
}

- (void)disableViewSizingConstraints:(unint64_t)constraints forNewView:(id)view
{
  constraintsCopy = constraints;
  viewCopy = view;
  if (constraintsCopy)
  {
    inputViewHeightConstraint = self->_inputViewHeightConstraint;
    if (inputViewHeightConstraint)
    {
      firstItem = [(NSLayoutConstraint *)inputViewHeightConstraint firstItem];
      if (firstItem != viewCopy)
      {

LABEL_6:
        [(NSLayoutConstraint *)self->_inputViewHeightConstraint setActive:0];
        v9 = self->_inputViewHeightConstraint;
        self->_inputViewHeightConstraint = 0;

        goto LABEL_7;
      }

      secondItem = [(NSLayoutConstraint *)self->_inputViewHeightConstraint secondItem];

      if (secondItem)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  if ((constraintsCopy & 2) != 0)
  {
    assistantViewHeightConstraint = self->_assistantViewHeightConstraint;
    if (assistantViewHeightConstraint)
    {
      firstItem2 = [(NSLayoutConstraint *)assistantViewHeightConstraint firstItem];
      if (firstItem2 != viewCopy)
      {

LABEL_12:
        [(NSLayoutConstraint *)self->_assistantViewHeightConstraint setActive:0];
        v13 = self->_assistantViewHeightConstraint;
        self->_assistantViewHeightConstraint = 0;

        goto LABEL_13;
      }

      secondItem2 = [(NSLayoutConstraint *)self->_assistantViewHeightConstraint secondItem];

      if (secondItem2)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  if ((constraintsCopy & 4) != 0)
  {
    accessoryViewHeightConstraint = self->_accessoryViewHeightConstraint;
    if (accessoryViewHeightConstraint)
    {
      firstItem3 = [(NSLayoutConstraint *)accessoryViewHeightConstraint firstItem];
      if (firstItem3 == viewCopy)
      {
        secondItem3 = [(NSLayoutConstraint *)self->_accessoryViewHeightConstraint secondItem];

        if (!secondItem3)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      [(NSLayoutConstraint *)self->_accessoryViewHeightConstraint setActive:0];
      v17 = self->_accessoryViewHeightConstraint;
      self->_accessoryViewHeightConstraint = 0;
    }
  }

LABEL_19:
}

- (void)updateViewSizingConstraints:(id)constraints
{
  constraintsCopy = constraints;
  inputView = [(UIInputWindowControllerHostingItem *)self inputView];
  inputAssistantView = [(UIInputWindowControllerHostingItem *)self inputAssistantView];
  inputAccessoryView = [(UIInputWindowControllerHostingItem *)self inputAccessoryView];
  [(UIInputWindowControllerHostingItem *)self disableViewSizingConstraints:1 forNewView:inputView];
  if (+[UIKeyboard usesInputSystemUI])
  {
    inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    if (![inputViewSet isInputViewPlaceholder])
    {
      goto LABEL_9;
    }

    inputViewSet2 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    isCustomInputView = [inputViewSet2 isCustomInputView];

    if ((isCustomInputView & 1) == 0)
    {
      v10 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
      inputViewSet = [v10 currentUIState];

      if (inputViewSet)
      {
        owner = [(UIInputWindowControllerHostingItem *)self owner];
        keyboardOrientation = [owner keyboardOrientation];

        orientation = [inputViewSet orientation];
        owner2 = [(UIInputWindowControllerHostingItem *)self owner];
        if ([owner2 isRotating])
        {

LABEL_8:
          assistantBarVisible = [inputViewSet assistantBarVisible];
          owner3 = [(UIInputWindowControllerHostingItem *)self owner];
          inputViewController = [(UIInputWindowControllerHostingItem *)self inputViewController];
          [owner3 sizeForInputViewController:inputViewController inputView:inputView includeAssistantBar:assistantBarVisible];
          v19 = v18;
          v21 = v20;

          [inputView setFixedSize:{v19, v21}];
          goto LABEL_9;
        }

        if ((keyboardOrientation - 3) < 2 != (orientation - 3) < 2)
        {
          goto LABEL_8;
        }
      }

LABEL_9:
    }
  }

  if (inputView && SubviewUsesClassicLayout(inputView) && (-[UIInputWindowControllerHostingItem hostView](self, "hostView"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [inputView isDescendantOfView:v22], v22, v23))
  {
    owner4 = [(UIInputWindowControllerHostingItem *)self owner];
    inputViewController2 = [(UIInputWindowControllerHostingItem *)self inputViewController];
    [owner4 sizeForInputViewController:inputViewController2 inputView:inputView];
    v27 = v26;

    inputViewHeightConstraint = self->_inputViewHeightConstraint;
    if (inputViewHeightConstraint)
    {
      [(NSLayoutConstraint *)inputViewHeightConstraint setConstant:v27];
    }

    else
    {
      v31 = [MEMORY[0x1E69977A0] constraintWithItem:inputView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v27];
      LODWORD(v32) = 1148846080;
      [(NSLayoutConstraint *)v31 setPriority:v32];
      [(NSLayoutConstraint *)v31 setIdentifier:@"inputHeight"];
      v33 = self->_inputViewHeightConstraint;
      self->_inputViewHeightConstraint = v31;
    }

    [constraintsCopy addObject:self->_inputViewHeightConstraint];
  }

  else
  {
    v29 = self->_inputViewHeightConstraint;
    if (v29)
    {
      [(NSLayoutConstraint *)v29 setActive:0];
      v30 = self->_inputViewHeightConstraint;
      self->_inputViewHeightConstraint = 0;
    }
  }

  [(UIInputWindowControllerHostingItem *)self disableViewSizingConstraints:2 forNewView:inputAssistantView];
  if (inputAssistantView && ([inputAssistantView isHidden] & 1) == 0 && SubviewUsesClassicLayout(inputAssistantView) && (-[UIInputWindowControllerHostingItem hostView](self, "hostView"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(inputAssistantView, "isDescendantOfView:", v34), v34, v35))
  {
    placement = [(UIInputWindowControllerHostingItem *)self placement];
    inputViewSet3 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [placement inputAssistantViewHeightForInputViewSet:inputViewSet3];
    v39 = v38;

    assistantViewHeightConstraint = self->_assistantViewHeightConstraint;
    if (assistantViewHeightConstraint)
    {
      [(NSLayoutConstraint *)assistantViewHeightConstraint setConstant:v39];
    }

    else
    {
      v54 = [MEMORY[0x1E69977A0] constraintWithItem:inputAssistantView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v39];
      LODWORD(v55) = 1148846080;
      [(NSLayoutConstraint *)v54 setPriority:v55];
      [(NSLayoutConstraint *)v54 setIdentifier:@"assistantHeight"];
      v56 = self->_assistantViewHeightConstraint;
      self->_assistantViewHeightConstraint = v54;
    }

    [constraintsCopy addObject:self->_assistantViewHeightConstraint];
  }

  else
  {
    v41 = self->_assistantViewHeightConstraint;
    if (v41)
    {
      [(NSLayoutConstraint *)v41 setActive:0];
      v42 = self->_assistantViewHeightConstraint;
      self->_assistantViewHeightConstraint = 0;
    }
  }

  [(UIInputWindowControllerHostingItem *)self disableViewSizingConstraints:4 forNewView:inputAccessoryView];
  [inputAccessoryView sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  if (v43 > 0.0 && (v44 = v43, SubviewUsesClassicLayout(inputAccessoryView)) && (-[UIInputWindowControllerHostingItem hostView](self, "hostView"), v45 = objc_claimAutoreleasedReturnValue(), v46 = [inputAccessoryView isDescendantOfView:v45], v45, v46))
  {
    accessoryViewHeightConstraint = self->_accessoryViewHeightConstraint;
    if (accessoryViewHeightConstraint)
    {
      [(NSLayoutConstraint *)accessoryViewHeightConstraint setConstant:v44];
    }

    else
    {
      v50 = [MEMORY[0x1E69977A0] constraintWithItem:inputAccessoryView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v44];
      LODWORD(v51) = 1148846080;
      [(NSLayoutConstraint *)v50 setPriority:v51];
      [(NSLayoutConstraint *)v50 setIdentifier:@"accessoryHeight"];
      v52 = self->_accessoryViewHeightConstraint;
      self->_accessoryViewHeightConstraint = v50;
      v53 = v50;

      [constraintsCopy addObject:self->_accessoryViewHeightConstraint];
    }
  }

  else
  {
    v48 = self->_accessoryViewHeightConstraint;
    if (v48)
    {
      [(NSLayoutConstraint *)v48 setActive:0];
      v49 = self->_accessoryViewHeightConstraint;
      self->_accessoryViewHeightConstraint = 0;
    }
  }
}

- (void)clearInputViewEdgeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  allValues = [(NSMutableDictionary *)self->_inputViewEdgeConstraints allValues];
  [v3 deactivateConstraints:allValues];

  [(NSMutableDictionary *)self->_inputViewEdgeConstraints removeAllObjects];
  if ([(NSMutableDictionary *)self->_inputDockViewEdgeConstraints count])
  {
    v5 = MEMORY[0x1E69977A0];
    allValues2 = [(NSMutableDictionary *)self->_inputDockViewEdgeConstraints allValues];
    [v5 deactivateConstraints:allValues2];

    [(NSMutableDictionary *)self->_inputDockViewEdgeConstraints removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints count])
  {
    v7 = MEMORY[0x1E69977A0];
    allValues3 = [(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints allValues];
    [v7 deactivateConstraints:allValues3];

    [(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints count])
  {
    v9 = MEMORY[0x1E69977A0];
    allValues4 = [(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints allValues];
    [v9 deactivateConstraints:allValues4];

    inputBackdropViewEdgeConstraints = self->_inputBackdropViewEdgeConstraints;

    [(NSMutableDictionary *)inputBackdropViewEdgeConstraints removeAllObjects];
  }
}

- (void)resetInputViewVisibility
{
  _inputViewController = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  view = [_inputViewController view];
  [view setAlpha:1.0];

  dockView = [(UIInputWindowControllerHostingItem *)self dockView];
  [dockView setAlpha:1.0];
}

- (void)clearInputAssistantViewEdgeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  allValues = [(NSMutableDictionary *)self->_assistantViewEdgeConstraints allValues];
  [v3 deactivateConstraints:allValues];

  assistantViewEdgeConstraints = self->_assistantViewEdgeConstraints;

  [(NSMutableDictionary *)assistantViewEdgeConstraints removeAllObjects];
}

- (id)_updateOrCreateConstraintInDict:(id)dict key:(id)key fromItem:(id)item toItem:(id)toItem tracker:(id)tracker creator:(id)creator
{
  dictCopy = dict;
  keyCopy = key;
  itemCopy = item;
  toItemCopy = toItem;
  trackerCopy = tracker;
  creatorCopy = creator;
  v19 = [dictCopy objectForKey:keyCopy];
  if (!v19)
  {
    goto LABEL_6;
  }

  v20 = v19;
  firstItem = [v19 firstItem];
  v22 = firstItem;
  if (firstItem != itemCopy)
  {

LABEL_5:
    [v20 setActive:0];
    [dictCopy removeObjectForKey:keyCopy];

LABEL_6:
    v20 = creatorCopy[2](creatorCopy);
    [trackerCopy addObject:v20];
    [dictCopy setObject:v20 forKey:keyCopy];
    goto LABEL_7;
  }

  secondItem = [v20 secondItem];

  if (secondItem != toItemCopy)
  {
    goto LABEL_5;
  }

  if (([v20 isActive] & 1) == 0)
  {
    [trackerCopy addObject:v20];
  }

LABEL_7:

  return v20;
}

- (id)_updateOrCreateConstraintInDict:(id)dict key:(id)key tracker:(id)tracker creator:(id)creator
{
  dictCopy = dict;
  keyCopy = key;
  trackerCopy = tracker;
  creatorCopy = creator;
  v13 = [dictCopy objectForKey:keyCopy];
  v14 = creatorCopy[2](creatorCopy);

  if ([v13 _isEqualToConstraintValue:v14 includingConstant:1 includeOtherMutableProperties:0])
  {
    v15 = v14;
    if (([v13 isActive] & 1) == 0)
    {
      [trackerCopy addObject:v13];
      v15 = v13;
    }
  }

  else
  {
    [v13 setActive:0];
    [trackerCopy addObject:v14];
    [dictCopy setObject:v14 forKeyedSubscript:keyCopy];
    v15 = v14;
  }

  v16 = v15;

  return v15;
}

- (id)viewMatchingConstraintForAttribute:(int64_t)attribute primaryView:(id)view secondaryView:(id)secondaryView
{
  v5 = [MEMORY[0x1E69977A0] constraintWithItem:secondaryView attribute:attribute relatedBy:0 toItem:view attribute:attribute multiplier:1.0 constant:0.0];
  LODWORD(v6) = 1132068864;
  [v5 setPriority:v6];
  [v5 setIdentifier:@"viewMatching"];

  return v5;
}

- (void)rebuildConstraints:(id)constraints forView:(id)view toMatchView:(id)matchView tracker:(id)tracker
{
  constraintsCopy = constraints;
  viewCopy = view;
  matchViewCopy = matchView;
  trackerCopy = tracker;
  container = [(UIInputWindowControllerHostingItem *)self container];
  useLayoutHostingItem = [container useLayoutHostingItem];

  if ((useLayoutHostingItem & 1) == 0)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __85__UIInputWindowControllerHostingItem_rebuildConstraints_forView_toMatchView_tracker___block_invoke;
    v39[3] = &unk_1E7116758;
    v39[4] = self;
    v16 = matchViewCopy;
    v40 = v16;
    v17 = viewCopy;
    v41 = v17;
    v18 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:constraintsCopy key:&unk_1EFE31AF8 fromView:v17 toView:v16 tracker:trackerCopy creator:v39];
    [v18 setConstant:0.0];

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __85__UIInputWindowControllerHostingItem_rebuildConstraints_forView_toMatchView_tracker___block_invoke_2;
    v36[3] = &unk_1E7116758;
    v36[4] = self;
    v19 = v16;
    v37 = v19;
    v20 = v17;
    v38 = v20;
    v21 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:constraintsCopy key:&unk_1EFE31B10 fromView:v20 toView:v19 tracker:trackerCopy creator:v36];
    [v21 setConstant:0.0];

    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __85__UIInputWindowControllerHostingItem_rebuildConstraints_forView_toMatchView_tracker___block_invoke_3;
    v33[3] = &unk_1E7116758;
    v33[4] = self;
    v22 = v19;
    v34 = v22;
    v23 = v20;
    v35 = v23;
    v24 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:constraintsCopy key:&unk_1EFE31B28 fromView:v23 toView:v22 tracker:trackerCopy creator:v33];
    [v24 setConstant:0.0];

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __85__UIInputWindowControllerHostingItem_rebuildConstraints_forView_toMatchView_tracker___block_invoke_4;
    v29 = &unk_1E7116758;
    selfCopy = self;
    v31 = v22;
    v32 = v23;
    v25 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:constraintsCopy key:&unk_1EFE31B40 fromView:v32 toView:v31 tracker:trackerCopy creator:&v26];
    [v25 setConstant:{0.0, v26, v27, v28, v29, selfCopy}];
  }
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) topAnchor];
  v3 = [*(a1 + 40) bottomAnchor];
  v4 = [v2 constraintEqualToAnchor:v3];

  return v4;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_8(uint64_t a1)
{
  v1 = [*(a1 + 32) heightAnchor];
  v2 = [v1 constraintEqualToConstant:53.0];

  return v2;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_14(uint64_t a1)
{
  v1 = MEMORY[0x1E69977A0];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) hostView];
  v4 = [v1 constraintWithItem:v2 attribute:4 relatedBy:0 toItem:v3 attribute:4 multiplier:1.0 constant:0.0];

  [v4 setIdentifier:@"assistantView.bottom"];

  return v4;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_15(uint64_t a1)
{
  v2 = [*(a1 + 32) centerXAnchor];
  v3 = [*(a1 + 40) hostView];
  v4 = [v3 leftAnchor];
  v5 = [*(a1 + 40) inputViewSet];
  [v5 _leftInputViewSetFrame];
  v6 = [v2 constraintEqualToAnchor:v4 constant:CGRectGetWidth(v9) * 0.5];

  [v6 setIdentifier:@"inputSwitcherView.centerX"];

  return v6;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_16(uint64_t a1)
{
  v2 = [*(a1 + 32) topAnchor];
  v3 = [*(a1 + 40) hostView];
  v4 = [v3 topAnchor];
  v5 = [v2 constraintEqualToAnchor:v4 constant:0.0];

  [v5 setIdentifier:@"inputSwitcherView.top"];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_22(uint64_t a1)
{
  v2 = [*(a1 + 32) topAnchor];
  v3 = [*(a1 + 40) topAnchor];
  v4 = [v2 constraintEqualToAnchor:v3];

  [v4 setIdentifier:@"inputBackdrop.top"];

  return v4;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_23(uint64_t a1)
{
  v2 = [*(a1 + 32) leadingAnchor];
  v3 = [*(a1 + 40) leadingAnchor];
  v4 = [v2 constraintEqualToAnchor:v3];

  [v4 setIdentifier:@"inputBackdrop.leading"];

  return v4;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_24(uint64_t a1)
{
  v2 = [*(a1 + 32) bottomAnchor];
  v3 = [*(a1 + 40) bottomAnchor];
  v4 = [v2 constraintEqualToAnchor:v3];

  [v4 setIdentifier:@"inputBackdrop.bottom"];

  return v4;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_25(uint64_t a1)
{
  v2 = [*(a1 + 32) trailingAnchor];
  v3 = [*(a1 + 40) trailingAnchor];
  v4 = [v2 constraintEqualToAnchor:v3];

  [v4 setIdentifier:@"inputBackdrop.trailing"];

  return v4;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_26(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 232) fullBackdropLayoutGuide];
  v3 = [v2 topAnchor];
  v4 = [*(a1 + 40) topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  [v5 setIdentifier:@"inputBackdropGuides.fullTop"];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_27(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 232) fullBackdropLayoutGuide];
  v3 = [v2 leadingAnchor];
  v4 = [*(a1 + 40) leadingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  [v5 setIdentifier:@"inputBackdropGuides.fullLeading"];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_28(uint64_t a1)
{
  v2 = [*(a1 + 32) bottomAnchor];
  v3 = [*(*(a1 + 40) + 232) fullBackdropLayoutGuide];
  v4 = [v3 bottomAnchor];
  v5 = [v2 constraintEqualToAnchor:v4];

  [v5 setIdentifier:@"inputBackdropGuides.fullBottom"];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_29(uint64_t a1)
{
  v2 = [*(a1 + 32) trailingAnchor];
  v3 = [*(*(a1 + 40) + 232) fullBackdropLayoutGuide];
  v4 = [v3 trailingAnchor];
  v5 = [v2 constraintEqualToAnchor:v4];

  [v5 setIdentifier:@"inputBackdropGuides.fullTrailing"];

  return v5;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_30(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 232) assistantLayoutGuide];
  v3 = [v2 topAnchor];
  v4 = [*(a1 + 32) hostView];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];

  [v6 setIdentifier:@"inputBackdropGuides.assistantTop"];

  return v6;
}

id __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_31(uint64_t a1)
{
  v2 = [*(a1 + 32) topAnchor];
  v3 = [*(*(a1 + 40) + 232) assistantLayoutGuide];
  v4 = [v3 bottomAnchor];
  v5 = [v2 constraintEqualToAnchor:v4];

  [v5 setIdentifier:@"inputBackdropGuides.assistantBottom"];

  return v5;
}

- (void)resetBackdropHeight
{
  if (self->_backdropHeightDelta != 0.0)
  {
    [(UIInputWindowControllerHostingItem *)self extendKeyboardBackdropHeight:0.0 withDuration:0.0];
  }
}

- (void)extendKeyboardBackdropHeight:(double)height withDuration:(double)duration
{
  self->_backdropHeightDelta = height;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__UIInputWindowControllerHostingItem_extendKeyboardBackdropHeight_withDuration___block_invoke;
  v5[3] = &unk_1E70F32F0;
  v5[4] = self;
  *&v5[5] = height;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__UIInputWindowControllerHostingItem_extendKeyboardBackdropHeight_withDuration___block_invoke_2;
  v4[3] = &unk_1E70F9B38;
  v4[4] = self;
  *&v4[5] = height;
  [UIView animateWithDuration:50331648 delay:v5 options:v4 animations:duration completion:0.0];
}

void __80__UIInputWindowControllerHostingItem_extendKeyboardBackdropHeight_withDuration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) placement];
  v3 = [v2 isUndocked];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = -v4[5];
    v6 = [v4 placement];
    [v6 setExtendedHeight:v5];

    v7 = *(a1 + 32);
    v8 = [v7 placement];
    [v7 updateVisibilityConstraintsForPlacement:v8];
  }

  v9 = *(a1 + 32);
  v10 = [v9 inputAssistantViewController];
  [v9 _aligningInsetsForChildInputViewController:v10 includeSceneBounds:0];
  v12 = v11;

  v13 = [*(a1 + 32) _inputCombinedBackdropView];

  if (v13)
  {
    v14 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v20 = [v14 systemInputAssistantViewController];

    v15 = [*(a1 + 32) _inputCombinedBackdropView];
    v16 = vabdd_f64(*(a1 + 40), v12);
    v17 = [*(a1 + 32) hostView];
    v18 = [v17 traitCollection];
    [v20 _centerViewWidthForTraitCollection:v18];
    [v15 extendForCandidateViewHeight:v16 width:v19];
  }

  else
  {
    v20 = [*(*(a1 + 32) + 128) objectForKey:&unk_1EFE31B28];
    [v20 setConstant:-*(*(a1 + 32) + 40) - v12];
    v15 = [*(a1 + 32) hostView];
    [v15 layoutIfNeeded];
  }
}

void __80__UIInputWindowControllerHostingItem_extendKeyboardBackdropHeight_withDuration___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _inputCombinedBackdropView];
  if (v2)
  {
    v3 = *(a1 + 40);

    if (v3 >= 0.0)
    {
      v4 = [*(a1 + 32) _inputCombinedBackdropView];
      [v4 changeClippingStyle:0];
    }
  }
}

- (CGRect)trackingCoordinatorFrame
{
  placement = [(UIInputWindowControllerHostingItem *)self placement];
  v4 = placement;
  if (placement && ([placement isVisible] & 1) == 0)
  {
    v6 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  else if (+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating") || [v4 isFloatingAssistantView] && (-[UIInputWindowControllerHostingItem inputViewSet](self, "inputViewSet"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "inputAccessoryView"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
  {
    [(UIInputViewSetPlacementApplicator *)self->_applicator popoverFrame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    hostView = [(UIInputWindowControllerHostingItem *)self hostView];
    [hostView frame];
    v6 = v16;
    v8 = v17;
    v10 = v18;
    v12 = v19;

    if (([v4 isFloatingAssistantView] & 1) == 0)
    {
      inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      if ([inputViewSet isInputAccessoryViewPlaceholder])
      {
        inputViewSet2 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
        inputAccessoryView = [inputViewSet2 inputAccessoryView];

        if (inputAccessoryView)
        {
          inputViewSet3 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
          inputAccessoryView2 = [inputViewSet3 inputAccessoryView];
          [inputAccessoryView2 bounds];
          v26 = v25;

          v8 = v8 + v26;
          v12 = v12 - v26;
        }
      }

      else
      {
      }
    }
  }

  v27 = v6;
  v28 = v8;
  v29 = v10;
  v30 = v12;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)fullScreenFrame
{
  placement = [(UIInputWindowControllerHostingItem *)self placement];
  v4 = placement;
  if (placement && ([placement isVisible] & 1) == 0)
  {
    v34 = *MEMORY[0x1E695F058];
    v52 = *(MEMORY[0x1E695F058] + 8);
    v38 = *(MEMORY[0x1E695F058] + 16);
    v40 = *(MEMORY[0x1E695F058] + 24);
    goto LABEL_18;
  }

  if (!+[UIKeyboardImpl isFloating])
  {
    if (![v4 isFloatingAssistantView] || (-[UIInputWindowControllerHostingItem inputViewSet](self, "inputViewSet"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "inputAccessoryView"), v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      if ([inputViewSet isInputViewPlaceholder])
      {
        inputViewSet2 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
        inputAccessoryView = [inputViewSet2 inputAccessoryView];

        if (inputAccessoryView)
        {
LABEL_13:
          owner = [(UIInputWindowControllerHostingItem *)self owner];
          isTrackingElementController = [owner isTrackingElementController];

          if (!isTrackingElementController)
          {
            hostView = [(UIInputWindowControllerHostingItem *)self hostView];
            [hostView frame];
            v34 = v65;
            v52 = v66;
            v38 = v67;
            v40 = v68;

            goto LABEL_18;
          }

          [(UIInputWindowControllerHostingItem *)self visibleFrame];
          goto LABEL_15;
        }

        inputViewSet3 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
        inputView = [inputViewSet3 inputView];
        inputViewSet = [inputView placeheldView];

        superview = [inputViewSet superview];

        if (superview)
        {
          superview2 = [inputViewSet superview];
          hostView2 = [(UIInputWindowControllerHostingItem *)self hostView];
          window = [hostView2 window];
          windowScene = [window windowScene];
          _coordinateSpace = [windowScene _coordinateSpace];
          [superview2 frame];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v76 = superview2;
          window2 = [superview2 window];
          screen = [window2 screen];
          coordinateSpace = [screen coordinateSpace];
          [_coordinateSpace convertRect:coordinateSpace fromCoordinateSpace:{v23, v25, v27, v29}];
          v34 = v33;
          v36 = v35;
          v38 = v37;
          v40 = v39;

          hostView3 = [(UIInputWindowControllerHostingItem *)self hostView];
          [hostView3 frame];
          v86.origin.x = v42;
          v86.origin.y = v43;
          v86.size.width = v44;
          v86.size.height = v45;
          v77.origin.x = v34;
          v77.origin.y = v36;
          v77.size.width = v38;
          v77.size.height = v40;
          v78 = CGRectIntersection(v77, v86);
          x = v78.origin.x;
          y = v78.origin.y;
          width = v78.size.width;
          height = v78.size.height;

          v79.origin.x = x;
          v79.origin.y = y;
          v79.size.width = width;
          v79.size.height = height;
          LOBYTE(hostView3) = CGRectIsEmpty(v79);
          hostView4 = [(UIInputWindowControllerHostingItem *)self hostView];
          [hostView4 frame];
          v52 = v51;
          if (hostView3)
          {

            hostView5 = [(UIInputWindowControllerHostingItem *)self hostView];
            [hostView5 frame];
            v87.origin.x = v54;
            v87.origin.y = v55;
            v87.size.width = v56;
            v87.size.height = v57;
            v80.origin.x = v34;
            v80.origin.y = v52;
            v80.size.width = v38;
            v80.size.height = v40;
            v81 = CGRectIntersection(v80, v87);
            v58 = v81.origin.x;
            v59 = v81.origin.y;
            v60 = v81.size.width;
            v61 = v81.size.height;

            v82.origin.x = v58;
            v82.origin.y = v59;
            v82.size.width = v60;
            v82.size.height = v61;
            LOBYTE(hostView5) = CGRectIsEmpty(v82);

            if (hostView5)
            {
              goto LABEL_12;
            }
          }

          else
          {
            containerView = [(UIInputWindowControllerHostingItem *)self containerView];
            [containerView frame];
            if (v52 >= CGRectGetMaxY(v83))
            {
              containerView2 = [(UIInputWindowControllerHostingItem *)self containerView];
              [containerView2 frame];
              v88.origin.x = v34;
              v88.origin.y = v36;
              v88.size.width = v38;
              v88.size.height = v40;
              v75 = CGRectIntersectsRect(v84, v88);

              if (v75)
              {
                v52 = v36 + v40;
              }

              else
              {
                v52 = v36;
              }
            }

            else
            {

              v52 = v36;
            }
          }

          goto LABEL_18;
        }
      }

LABEL_12:

      goto LABEL_13;
    }
  }

  [(UIInputViewSetPlacementApplicator *)self->_applicator popoverFrame];
LABEL_15:
  v34 = v5;
  v52 = v6;
  v38 = v7;
  v40 = v8;
LABEL_18:

  v69 = v34;
  v70 = v52;
  v71 = v38;
  v72 = v40;
  result.size.height = v72;
  result.size.width = v71;
  result.origin.y = v70;
  result.origin.x = v69;
  return result;
}

- (CGRect)fullInputViewAndAssistantFrame
{
  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  if (![inputViewSet isInputViewPlaceholder])
  {
    goto LABEL_12;
  }

  hostView = [(UIInputWindowControllerHostingItem *)self hostView];
  window = [hostView window];
  _isHostedInAnotherProcess = [window _isHostedInAnotherProcess];

  if (_isHostedInAnotherProcess)
  {
LABEL_13:
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    inputViewSet2 = [owner inputViewSet];
    inputView = [inputViewSet2 inputView];
    [inputView frame];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    inputViewSet = [(UIInputWindowControllerHostingItem *)self hostView];
    hostView2 = [(UIInputWindowControllerHostingItem *)self hostView];
    window2 = [hostView2 window];
    coordinateSpace = [window2 coordinateSpace];
    [inputViewSet convertRect:coordinateSpace toCoordinateSpace:{v43, v45, v47, v49}];
    v32 = v50;
    v34 = v51;
    v36 = v52;
    v38 = v53;
    goto LABEL_14;
  }

  inputViewSet3 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  inputView2 = [inputViewSet3 inputView];
  inputViewSet = [inputView2 placeheldView];

  inputViewSet4 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  inputView3 = [inputViewSet4 inputView];
  hostView2 = [inputView3 associatedView];

  [inputViewSet frame];
  x = v12;
  y = v14;
  width = v16;
  height = v18;
  superview = [inputViewSet superview];

  if (superview)
  {
    window2 = [inputViewSet superview];
    superview2 = [hostView2 superview];

    if (!superview2)
    {
      goto LABEL_9;
    }

    [hostView2 frame];
    v61.origin.x = v23;
    v61.origin.y = v24;
    v61.size.width = v25;
    v61.size.height = v26;
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    v59 = CGRectUnion(v58, v61);
  }

  else
  {
    superview3 = [hostView2 superview];

    if (!superview3)
    {
LABEL_11:

LABEL_12:
      goto LABEL_13;
    }

    window2 = [hostView2 superview];
    [hostView2 frame];
  }

  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
LABEL_9:
  if (!window2)
  {
    goto LABEL_11;
  }

  coordinateSpace = [(UIInputWindowControllerHostingItem *)self hostView];
  window3 = [coordinateSpace window];
  coordinateSpace2 = [window3 coordinateSpace];
  [window2 convertRect:coordinateSpace2 toCoordinateSpace:{x, y, width, height}];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

LABEL_14:
  v54 = v32;
  v55 = v34;
  v56 = v36;
  v57 = v38;
  result.size.height = v57;
  result.size.width = v56;
  result.origin.y = v55;
  result.origin.x = v54;
  return result;
}

- (void)updateViewSizingConstraints
{
  container = [(UIInputWindowControllerHostingItem *)self container];
  useLayoutHostingItem = [container useLayoutHostingItem];

  if ((useLayoutHostingItem & 1) == 0)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:100];
    [(UIInputWindowControllerHostingItem *)self updateViewSizingConstraints:v5];
    [MEMORY[0x1E69977A0] activateConstraints:v5];
  }
}

- (void)setCombinedBackdropView:(id)view
{
  viewCopy = view;
  p_inputCombinedBackdropView = &self->_inputCombinedBackdropView;
  v7 = self->_inputCombinedBackdropView;
  objc_storeStrong(&self->_inputCombinedBackdropView, view);
  if (self->_inputCombinedBackdropView)
  {
    inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    applicator = [(UIInputWindowControllerHostingItem *)self applicator];
    backdropContainer = [applicator backdropContainer];
    v11 = backdropContainer;
    if (backdropContainer)
    {
      ownerView = backdropContainer;
    }

    else
    {
      ownerView = [(UIInputWindowControllerHostingItem *)self ownerView];
    }

    v17 = ownerView;

    superview = [(UIView *)*p_inputCombinedBackdropView superview];
    if (superview)
    {
      v19 = superview;
      superview2 = [(UIView *)*p_inputCombinedBackdropView superview];

      if (superview2 != v17)
      {
        [(NSMutableDictionary *)self->_backdropInnerGuideConstraints removeObjectForKey:@"items"];
        v21 = MEMORY[0x1E69977A0];
        allValues = [(NSMutableDictionary *)self->_backdropInnerGuideConstraints allValues];
        [v21 deactivateConstraints:allValues];

        [(NSMutableDictionary *)self->_backdropInnerGuideConstraints removeAllObjects];
        v23 = MEMORY[0x1E69977A0];
        allValues2 = [(NSMutableDictionary *)self->_inputCombinedBackdropViewEdgeConstraints allValues];
        [v23 deactivateConstraints:allValues2];

        [(NSMutableDictionary *)self->_inputCombinedBackdropViewEdgeConstraints removeAllObjects];
        [(UIView *)self->_inputCombinedBackdropView removeFromSuperview];
      }
    }

    [v17 insertSubview:self->_inputCombinedBackdropView atIndex:0];
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    [owner hideGuideBackdrop:0];

    owner2 = [(UIInputWindowControllerHostingItem *)self owner];
    v27 = [owner2 transitionGuideBackdrop:{-[UIInputWindowControllerHostingItem animatingBackdrops](self, "animatingBackdrops")}];

    inputCombinedBackdropView = self->_inputCombinedBackdropView;
    if (v27)
    {
      [(_UIKBLightEffectsBackground *)inputCombinedBackdropView setClientBackdropInUse:1];
      v29 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __62__UIInputWindowControllerHostingItem_setCombinedBackdropView___block_invoke;
      v30[3] = &unk_1E7116848;
      v31 = v27;
      [v29 performOnDistributedControllers:v30];
    }

    else
    {
      [(_UIKBLightEffectsBackground *)inputCombinedBackdropView setClientBackdropInUse:0];
    }
  }

  else
  {
    v13 = MEMORY[0x1E69977A0];
    allValues3 = [(NSMutableDictionary *)self->_inputCombinedBackdropViewEdgeConstraints allValues];
    [v13 deactivateConstraints:allValues3];

    [(NSMutableDictionary *)self->_inputCombinedBackdropViewEdgeConstraints removeAllObjects];
    [(NSMutableDictionary *)self->_backdropInnerGuideConstraints removeObjectForKey:@"items"];
    v15 = MEMORY[0x1E69977A0];
    allValues4 = [(NSMutableDictionary *)self->_backdropInnerGuideConstraints allValues];
    [v15 deactivateConstraints:allValues4];

    [(NSMutableDictionary *)self->_backdropInnerGuideConstraints removeAllObjects];
    if (v7)
    {
      [(UIView *)v7 removeFromSuperview];
      [(UIInputWindowControllerHostingItem *)self cleanUpLightEffectsTransition];
      [(UIInputWindowControllerHostingItem *)self updateInputBackdropView];
    }
  }
}

- (void)setInputBackdropView:(id)view
{
  viewCopy = view;
  v5 = self->_inputBackdropView;
  objc_storeStrong(&self->_inputBackdropView, view);
  if (self->_inputBackdropView)
  {
    inputBackdropBackgroundView = self->_inputBackdropBackgroundView;
    if (!inputBackdropBackgroundView)
    {
      v7 = [UIView alloc];
      [(UIView *)self->_inputBackdropView frame];
      v8 = [(UIView *)v7 initWithFrame:?];
      v9 = self->_inputBackdropBackgroundView;
      self->_inputBackdropBackgroundView = v8;

      [(UIView *)self->_inputBackdropBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
      if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        [(UIView *)self->_inputBackdropBackgroundView setUserInteractionEnabled:0];
      }

      hostView = [(UIInputWindowControllerHostingItem *)self hostView];
      [hostView insertSubview:self->_inputBackdropBackgroundView atIndex:0];

      inputBackdropBackgroundView = self->_inputBackdropBackgroundView;
    }

    [(UIView *)inputBackdropBackgroundView addSubview:?];
  }

  else
  {
    if (v5)
    {
      [(UIView *)v5 removeFromSuperview];
      v11 = MEMORY[0x1E69977A0];
      allValues = [(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints allValues];
      [v11 deactivateConstraints:allValues];

      [(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints removeAllObjects];
    }

    v13 = self->_inputBackdropBackgroundView;
    if (v13)
    {
      [(UIView *)v13 removeFromSuperview];
      v14 = self->_inputBackdropBackgroundView;
      self->_inputBackdropBackgroundView = 0;

      v15 = MEMORY[0x1E69977A0];
      allValues2 = [(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints allValues];
      [v15 deactivateConstraints:allValues2];

      [(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints removeAllObjects];
    }
  }
}

- (void)setInputAccessoryBackdropView:(id)view
{
  viewCopy = view;
  v5 = self->_inputAccessoryBackdropView;
  objc_storeStrong(&self->_inputAccessoryBackdropView, view);
  if (self->_inputAccessoryBackdropView)
  {
    superview = [(UIView *)self->_inputBackdropView superview];
    hostView = [(UIInputWindowControllerHostingItem *)self hostView];

    hostView2 = [(UIInputWindowControllerHostingItem *)self hostView];
    v9 = hostView2;
    inputAccessoryBackdropView = self->_inputAccessoryBackdropView;
    if (superview == hostView)
    {
      [hostView2 insertSubview:inputAccessoryBackdropView aboveSubview:self->_inputBackdropView];
    }

    else
    {
      [hostView2 insertSubview:inputAccessoryBackdropView atIndex:0];
    }
  }

  else
  {
    [(UIView *)v5 removeFromSuperview];
  }
}

- (void)updateRenderConfigForCombinedBackdrop:(id)backdrop
{
  backdropCopy = backdrop;
  if ([(UIInputWindowControllerHostingItem *)self useCombinedBackdrop])
  {
    inputCombinedBackdropView = self->_inputCombinedBackdropView;
    if (inputCombinedBackdropView)
    {
      [(_UIKBLightEffectsBackground *)inputCombinedBackdropView _setRenderConfig:backdropCopy];
    }

    else
    {
      [(UIInputWindowControllerHostingItem *)self updateCombinedBackdropView];
    }
  }
}

- (UIView)scrollTrackingView
{
  if (+[UIKeyboard inputUIOOP])
  {
    hostView = [(UIInputWindowControllerHostingItem *)self hostView];
  }

  else
  {
    hostView = 0;
  }

  return hostView;
}

- (void)configureDockViewController:(BOOL)controller
{
  if (self->_supportsDockViewController)
  {
    if (controller)
    {
      v5 = [(UIViewController *)[UISystemKeyboardDockController alloc] initWithNibName:0 bundle:0];
    }

    else
    {
      v5 = 0;
    }

    dockViewController = self->_dockViewController;
    self->_dockViewController = v5;
  }
}

- (void)clearVisibilityConstraints
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  view = [owner view];
  constraints = [(UIInputViewSetPlacementApplicator *)self->_applicator constraints];
  [view removeConstraints:constraints];
}

- (void)updateVisibilityConstraintsForPlacement:(id)placement
{
  placementCopy = placement;
  container = [(UIInputWindowControllerHostingItem *)self container];
  useLayoutHostingItem = [container useLayoutHostingItem];

  if ((useLayoutHostingItem & 1) == 0)
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      shouldShowWithinAppWindow = 1;
    }

    else
    {
      owner = [(UIInputWindowControllerHostingItem *)self owner];
      if ([owner shouldNotifyRemoteKeyboards])
      {
        v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        visualModeManager = [v8 visualModeManager];
        shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];
      }

      else
      {
        shouldShowWithinAppWindow = 1;
      }
    }

    v10 = [objc_msgSend(placementCopy applicatorClassForKeyboard:{shouldShowWithinAppWindow), "applicatorForOwner:withPlacement:", self, placementCopy}];
    if (!v10)
    {
      goto LABEL_24;
    }

    if (([(UIInputViewSetPlacementApplicator *)self->_applicator isEqual:v10]& 1) == 0)
    {
      draggableView = [v10 draggableView];
      if ([draggableView isHidden])
      {
      }

      else
      {
        twoFingerDraggableView = [v10 twoFingerDraggableView];
        isHidden = [twoFingerDraggableView isHidden];

        if ((isHidden & 1) == 0)
        {
          inputAccessoryView = [(UIInputWindowControllerHostingItem *)self inputAccessoryView];
          if (inputAccessoryView)
          {
            [(UIInputViewSetPlacementApplicator *)self->_applicator inputAccessoryPadding];
            v20 = v19;
            [v10 inputAccessoryPadding];
            v22 = v20 != v21;
          }

          else
          {
            v22 = 0;
          }

          owner2 = [(UIInputWindowControllerHostingItem *)self owner];
          view = [owner2 view];
          constraints = [(UIInputViewSetPlacementApplicator *)self->_applicator constraints];
          [view removeConstraints:constraints];

          owner4 = self->_applicator;
          objc_storeStrong(&self->_applicator, v10);
          [(UIInputViewSetPlacementApplicator *)self->_applicator prepare];
          owner3 = [(UIInputWindowControllerHostingItem *)self owner];
          view2 = [owner3 view];
          constraints2 = [(UIInputViewSetPlacementApplicator *)self->_applicator constraints];
          [view2 addConstraints:constraints2];

          if (v22)
          {
            v29 = [(NSMutableDictionary *)self->_accessoryViewEdgeConstraints objectForKey:&unk_1EFE31B40];
            [(UIInputViewSetPlacementApplicator *)self->_applicator inputAccessoryPadding];
            [v29 setConstant:v30];
          }

          [(UISplitKeyboardSupport *)self->_cachedSplitKeyboardController updatedControllerApplicator:self];
          [(UIInputViewSetPlacementApplicator *)owner4 invalidate];
          goto LABEL_22;
        }
      }
    }

    applicator = self->_applicator;
    if (!applicator || ([(UIInputViewSetPlacementApplicator *)applicator allConstraintsActive]& 1) != 0)
    {
      goto LABEL_23;
    }

    owner4 = [(UIInputWindowControllerHostingItem *)self owner];
    view3 = [(UIInputViewSetPlacementApplicator *)owner4 view];
    constraints3 = [(UIInputViewSetPlacementApplicator *)self->_applicator constraints];
    [view3 addConstraints:constraints3];

LABEL_22:
LABEL_23:
    v31 = self->_applicator;
    v32 = [placementCopy applicatorInfoForOwner:self];
    [(UIInputViewSetPlacementApplicator *)v31 applyChanges:v32];

LABEL_24:
  }
}

- (void)updateCombinedBackdropViewAnimated:(BOOL)animated forKeyboardUp:(BOOL)up
{
  upCopy = up;
  if ([(UIInputWindowControllerHostingItem *)self animatingBackdrops])
  {
    return;
  }

  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  inputView = [inputViewSet inputView];
  if (inputView)
  {
    v9 = inputView;
    inputViewSet2 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    isInputViewPlaceholder = [inputViewSet2 isInputViewPlaceholder];

    if (!isInputViewPlaceholder)
    {
      if (animated)
      {
        owner = [(UIInputWindowControllerHostingItem *)self owner];
        view = [owner view];
        _inheritedRenderConfig = [view _inheritedRenderConfig];

        [(UIInputWindowControllerHostingItem *)self setAnimatingBackdrops:1];
        [(UIInputWindowControllerHostingItem *)self updateCombinedBackdropView];
        if (self->_inputCombinedBackdropView)
        {
          if (upCopy)
          {
            inputViewSet3 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
            inputView2 = [inputViewSet3 inputView];
            if (inputView2)
            {
              v17 = inputView2;
              inputViewSet4 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
              isInputViewPlaceholder2 = [inputViewSet4 isInputViewPlaceholder];

              if ((isInputViewPlaceholder2 & 1) == 0)
              {
                v20 = MEMORY[0x1E69E9820];
                v21 = 3221225472;
                v22 = __87__UIInputWindowControllerHostingItem_updateCombinedBackdropViewAnimated_forKeyboardUp___block_invoke;
                v23 = &unk_1E70F35B8;
                selfCopy = self;
                v25 = _inheritedRenderConfig;
                [UIView performWithoutAnimation:&v20];
              }
            }

            else
            {
            }
          }

          [(UIInputWindowControllerHostingItem *)self performAnimatedTransitionToRenderConfig:_inheritedRenderConfig, v20, v21, v22, v23, selfCopy];
        }

        else
        {
          [(UIInputWindowControllerHostingItem *)self setAnimatingBackdrops:0];
        }
      }

      else
      {
        [(UIInputWindowControllerHostingItem *)self setAnimatingBackdrops:0];
        [(UIInputWindowControllerHostingItem *)self updateCombinedBackdropView];
        if (upCopy && self->_inputCombinedBackdropView)
        {

          [(UIInputWindowControllerHostingItem *)self updateViewConstraints];
        }
      }

      return;
    }
  }

  else
  {
  }

  [(UIInputWindowControllerHostingItem *)self updateCombinedBackdropView];

  [(UIInputWindowControllerHostingItem *)self setAnimatingBackdrops:0];
}

void __87__UIInputWindowControllerHostingItem_updateCombinedBackdropViewAnimated_forKeyboardUp___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) inputViewSet];
  v2 = [v4 inputView];
  if ([*(a1 + 40) lightKeyboard])
  {
    +[UIKBRenderConfig defaultConfig];
  }

  else
  {
    +[UIKBRenderConfig darkConfig];
  }
  v3 = ;
  [v2 _setRenderConfig:v3];
}

- (void)performAnimatedTransitionToRenderConfig:(id)config
{
  configCopy = config;
  if ([configCopy animatedBackground])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__UIInputWindowControllerHostingItem_performAnimatedTransitionToRenderConfig___block_invoke;
    v10[3] = &unk_1E70F3590;
    v10[4] = self;
    [UIView performWithoutAnimation:v10];
    inputCombinedBackdropView = self->_inputCombinedBackdropView;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__UIInputWindowControllerHostingItem_performAnimatedTransitionToRenderConfig___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v8[4] = self;
    v9 = configCopy;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __78__UIInputWindowControllerHostingItem_performAnimatedTransitionToRenderConfig___block_invoke_3;
    v6[3] = &unk_1E70F35B8;
    v6[4] = self;
    v7 = v9;
    [(_UIKBLightEffectsBackground *)inputCombinedBackdropView performTransitionToRenderConfig:v7 fromRenderConfig:0 alongsideAnimations:v8 completion:v6];
  }
}

void __78__UIInputWindowControllerHostingItem_performAnimatedTransitionToRenderConfig___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) owner];
  v3 = [v2 transitionGuideBackdrop:1];

  [*(*(a1 + 32) + 232) setClientBackdropInUse:v3 != 0];
}

- (void)transitionInAnimatedForRenderConfig:(id)config
{
  configCopy = config;
  if ([configCopy animatedBackground])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    [owner updateGuideBackdropRenderConfig:configCopy animated:1];

    inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    inputView = [inputViewSet inputView];
    [inputView _setRenderConfig:configCopy];
  }

  else
  {
    -[UIKBInputBackdropView transitionToStyle:isSplit:](self->_inputBackdropView, "transitionToStyle:isSplit:", [configCopy backdropStyle], 0);
    inputAccessoryBackdropView = self->_inputAccessoryBackdropView;
    backdropStyle = [configCopy backdropStyle];

    [(UIKBInputBackdropView *)inputAccessoryBackdropView transitionToStyle:backdropStyle isSplit:0];
  }
}

- (void)finalizeTransitionToRenderConfig:(id)config
{
  if ([config animatedBackground])
  {
    [(UIInputWindowControllerHostingItem *)self cleanUpLightEffectsTransition];
  }

  [(UIInputWindowControllerHostingItem *)self setAnimatingBackdrops:0];
  if (self->_inputCombinedBackdropView)
  {
    inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    isInputViewPlaceholder = [inputViewSet isInputViewPlaceholder];

    if (isInputViewPlaceholder)
    {

      [(UIInputWindowControllerHostingItem *)self setCombinedBackdropView:0];
    }
  }
}

- (void)cleanUpLightEffectsTransition
{
  layerForPositionMatchMove = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView layerForPositionMatchMove];
  [layerForPositionMatchMove removeAnimationForKey:0x1EFB7AD50];
}

- (CGSize)sizeForVisualState:(int64_t)state
{
  if (state & 0xFFFFFFFFFFFFFFFELL) == 2 && ([(UIInputWindowControllerHostingItem *)self animatedInputView], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6))
  {
    animatedInputView = [(UIInputWindowControllerHostingItem *)self animatedInputView];
    [animatedInputView sizeForVisualState:state];
    v9 = v8;
    v11 = v10;

    v12 = v9;
    v13 = v11;
  }

  else
  {
    v12 = -1.0;
    v13 = -1.0;
  }

  result.height = v13;
  result.width = v12;
  return result;
}

- (void)prepareForTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition
{
  transitionCopy = transition;
  applicator = [(UIInputWindowControllerHostingItem *)self applicator];
  [applicator updateForInteractiveTransitionStart:1];

  inputBackdropView = self->_inputBackdropView;
  if (inputBackdropView)
  {
    [(UIKBInputBackdropView *)inputBackdropView prepareForTransitionToState:state animationType:type interactiveTransition:transitionCopy];
  }

  animatedInputView = [(UIInputWindowControllerHostingItem *)self animatedInputView];

  if (animatedInputView)
  {
    animatedInputView2 = [(UIInputWindowControllerHostingItem *)self animatedInputView];
    [animatedInputView2 prepareForTransitionToState:state animationType:type interactiveTransition:transitionCopy];
  }

  animatedAssistantView = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];

  if (animatedAssistantView)
  {
    animatedAssistantView2 = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];
    [animatedAssistantView2 prepareForTransitionToState:state animationType:type interactiveTransition:transitionCopy];
  }
}

- (void)animatingTransitionFromState:(int64_t)state toState:(int64_t)toState animationType:(int64_t)type totalDuration:(double)duration
{
  inputBackdropView = self->_inputBackdropView;
  if (inputBackdropView)
  {
    [(UIKBInputBackdropView *)inputBackdropView animatingTransitionFromState:state toState:toState animationType:type totalDuration:duration];
  }

  animatedAssistantView = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];

  if (animatedAssistantView)
  {
    animatedAssistantView2 = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];
    [animatedAssistantView2 animatingTransitionFromState:state toState:toState animationType:type totalDuration:duration];
  }

  animatedInputView = [(UIInputWindowControllerHostingItem *)self animatedInputView];

  if (animatedInputView)
  {
    animatedInputView2 = [(UIInputWindowControllerHostingItem *)self animatedInputView];
    [animatedInputView2 animatingTransitionFromState:state toState:toState animationType:type totalDuration:duration];
  }
}

- (void)transitioningToState:(int64_t)state animationType:(int64_t)type completionPercentage:(double)percentage
{
  applicator = [(UIInputWindowControllerHostingItem *)self applicator];
  [applicator updateForInteractiveTransitionStart:1];

  inputBackdropView = self->_inputBackdropView;
  if (inputBackdropView)
  {
    [(UIKBInputBackdropView *)inputBackdropView transitioningToState:state animationType:type completionPercentage:percentage];
  }

  animatedAssistantView = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];

  if (animatedAssistantView)
  {
    animatedAssistantView2 = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];
    [animatedAssistantView2 transitioningToState:state animationType:type completionPercentage:percentage];
  }

  animatedInputView = [(UIInputWindowControllerHostingItem *)self animatedInputView];

  if (animatedInputView)
  {
    animatedInputView2 = [(UIInputWindowControllerHostingItem *)self animatedInputView];
    [animatedInputView2 transitioningToState:state animationType:type completionPercentage:percentage];
  }
}

- (void)finishedTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition
{
  transitionCopy = transition;
  animatedInputView = [(UIInputWindowControllerHostingItem *)self animatedInputView];

  if (animatedInputView)
  {
    animatedInputView2 = [(UIInputWindowControllerHostingItem *)self animatedInputView];
    [animatedInputView2 finishedTransitionToState:state animationType:type interactiveTransition:transitionCopy];
  }

  animatedAssistantView = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];

  if (animatedAssistantView)
  {
    animatedAssistantView2 = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];
    [animatedAssistantView2 finishedTransitionToState:state animationType:type interactiveTransition:transitionCopy];
  }

  inputBackdropView = self->_inputBackdropView;
  if (inputBackdropView)
  {
    [(UIKBInputBackdropView *)inputBackdropView finishedTransitionToState:state animationType:type interactiveTransition:transitionCopy];
  }

  applicator = [(UIInputWindowControllerHostingItem *)self applicator];
  [applicator updateForInteractiveTransitionStart:0];

  placement = [(UIInputWindowControllerHostingItem *)self placement];
  [(UIInputWindowControllerHostingItem *)self updateVisibilityConstraintsForPlacement:placement];
}

- (void)willBeginTranslation
{
  _inputViewController = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _inputViewController2 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
    [_inputViewController2 willBeginTranslation];
  }
}

- (void)finishSplitTransition:(BOOL)transition
{
  transitionCopy = transition;
  _inputViewController = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    _inputViewController2 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
    [_inputViewController2 finishSplitTransition:transitionCopy];
  }
}

- (void)didFinishTranslation
{
  _inputViewController = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    _inputViewController2 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
    [_inputViewController2 didFinishTranslation];
  }

  [(UIInputWindowControllerHostingItem *)self _updateBackdropViews];
  placement = [(UIInputWindowControllerHostingItem *)self placement];
  isUndocked = [placement isUndocked];

  if ((isUndocked & 1) == 0)
  {

    [(UIInputWindowControllerHostingItem *)self resetVerticalConstraint];
  }
}

- (void)updateProgress:(double)progress startHeight:(double)height endHeight:(double)endHeight
{
  v9 = endHeight - height;
  v10 = -(endHeight - height);
  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  [inputViewSet setSplitHeightDelta:v10];

  inputViewSet2 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  [inputViewSet2 inputViewBounds];
  v14 = v13;

  inputViewSet3 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v16 = inputViewSet3;
  if (endHeight - v9 * progress == 0.0)
  {
    inputViewKeyboardCanSplit = [inputViewSet3 inputViewKeyboardCanSplit];

    if (inputViewKeyboardCanSplit)
    {
      inputViewSet4 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      [inputViewSet4 _rightInputViewSetFrame];
      Height = CGRectGetHeight(v71);
      inputViewSet5 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      [inputViewSet5 inputViewBounds];
      v21 = CGRectGetHeight(v72);
      inputViewSet6 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      [inputViewSet6 inputAssistantViewBounds];
      v23 = v21 + CGRectGetHeight(v73);
      inputViewSet7 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      [inputViewSet7 inputAccessoryViewBounds];
      v25 = Height - (v23 + CGRectGetHeight(v74));

      self->_verticalTranslationForSplitKeyboard = fabs(v25 * progress);
      +[UIKeyboardImpl persistentOffset];
      if (progress >= 1.0)
      {
        verticalTranslationForSplitKeyboard = self->_verticalTranslationForSplitKeyboard;
        if (v26 > verticalTranslationForSplitKeyboard)
        {
          self->_verticalTranslationForSplitKeyboard = verticalTranslationForSplitKeyboard - (v25 + v26);
        }
      }
    }
  }

  else
  {
    v65 = v14;
    inputAccessoryView = [inputViewSet3 inputAccessoryView];

    inputViewSet8 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    splitExemptSubview = [inputViewSet8 splitExemptSubview];

    v31 = +[UIKeyboardImpl activeInstance];
    hideAccessoryViewsDuringSplit = [v31 hideAccessoryViewsDuringSplit];

    inputViewSet9 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    _inputViewIsSplit = [inputViewSet9 _inputViewIsSplit];

    _isTransitioning = [(UIKBInputBackdropView *)self->_inputBackdropView _isTransitioning];
    inputViewSet10 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [inputViewSet10 inputViewSplitHeight];
    v38 = v37;

    inputViewSet11 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [inputViewSet11 _leftInputViewSetFrame];
    Width = CGRectGetWidth(v75);

    inputViewSet12 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [inputViewSet12 inputViewBounds];
    v42 = CGRectGetWidth(v76);
    inputViewSet13 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [inputViewSet13 _rightInputViewSetFrame];
    v44 = v42 - CGRectGetWidth(v77) - Width;

    v45 = +[UIKeyboardImpl activeInstance];
    centerFilled = [v45 centerFilled];

    placement = [(UIInputWindowControllerHostingItem *)self placement];
    inputViewSet14 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [placement inputAssistantViewHeightForInputViewSet:inputViewSet14];

    if (v38 >= endHeight)
    {
      heightCopy = height;
    }

    else
    {
      heightCopy = height - (endHeight - v38);
    }

    self->_verticalTranslationForSplitKeyboard = fabs(v9 * progress);
    if (centerFilled)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = v44;
    }

    [(UIKBInputBackdropView *)self->_inputBackdropView _beginSplitTransitionIfNeeded:Width gapWidth:v50];
    if (!_isTransitioning)
    {
      v51 = heightCopy;
      v52 = floor(heightCopy / 34.0);
      if (inputAccessoryView)
      {
        [inputAccessoryView frame];
        v54 = v53;
        _disableLayoutFlushingCount = [inputAccessoryView _disableLayoutFlushingCount];
        if (_disableLayoutFlushingCount >= 1)
        {
          v56 = _disableLayoutFlushingCount + 1;
        }

        else
        {
          v56 = 1;
        }

        [inputAccessoryView _setDisableLayoutFlushingCount:v56];
        [inputAccessoryView _disableLayoutFlushing];
      }

      else
      {
        [splitExemptSubview frame];
        v54 = v57;
      }

      [(UIKBInputBackdropView *)self->_inputBackdropView setProgress:-1 withFrame:0.0 innerCorners:0.0, 0.0, v65, height];
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 3221225472;
      v70[2] = __75__UIInputWindowControllerHostingItem_updateProgress_startHeight_endHeight___block_invoke;
      v70[3] = &unk_1E7116870;
      v70[4] = self;
      v70[5] = 0;
      v70[6] = v54;
      *&v70[7] = v65;
      *&v70[8] = v38 + v52;
      v70[9] = -1;
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __75__UIInputWindowControllerHostingItem_updateProgress_startHeight_endHeight___block_invoke_2;
      v68[3] = &unk_1E70F3C60;
      v68[4] = self;
      v69 = inputAccessoryView;
      [UIView animateWithDuration:50530304 delay:v70 options:v68 animations:1.0 completion:1.0e-100];

      heightCopy = v51;
    }

    +[UIKeyboardImpl persistentOffset];
    v59 = v58 < -0.01;
    if (v58 <= v9)
    {
      v59 = 0;
    }

    if ((v59 & _inputViewIsSplit) == 1)
    {
      v60 = +[UIPeripheralHost activeInstance];
      [v60 setUndockedWithOffset:0 animated:{0.0, v9}];
    }

    else if (v9 < 0.0 && v58 > 0.0)
    {
      v61 = v9 + v58;
      if (!_inputViewIsSplit)
      {
        v61 = v58;
      }

      self->_verticalTranslationForSplitKeyboard = v61 + self->_verticalTranslationForSplitKeyboard;
    }

    if (v9 > 0.0 && heightCopy != height)
    {
      +[UIKeyboardImpl persistentOffset];
      if (v62 > -20.0)
      {
        v63 = +[UIPeripheralHost activeInstance];
        [v63 setUndockedWithOffset:0 animated:{0.0, progress * -20.0}];
      }
    }

    [(UIKBInputBackdropView *)self->_inputBackdropView setGestureProgressForSplit:progress];
    if (+[UIInputWindowController supportsStateBasedAnimations])
    {
      [(UIInputWindowControllerHostingItem *)self transitioningToState:4 animationType:9 completionPercentage:progress];
    }

    if (inputAccessoryView | splitExemptSubview)
    {
      if (hideAccessoryViewsDuringSplit)
      {
        [(UIInputWindowControllerHostingItem *)self setAccessoryViewVisible:0 delay:0.0];
      }

      else
      {
        inputViewSet15 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
        [inputViewSet15 _beginSplitTransitionIfNeeded];
      }

      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __75__UIInputWindowControllerHostingItem_updateProgress_startHeight_endHeight___block_invoke_3;
      v66[3] = &unk_1E7101F90;
      v67 = hideAccessoryViewsDuringSplit;
      v66[4] = self;
      *&v66[5] = progress;
      [UIView animateWithDuration:2048 delay:v66 options:&__block_literal_global_249_0 animations:0.0 completion:0.0];
    }
  }
}

void __75__UIInputWindowControllerHostingItem_updateProgress_startHeight_endHeight___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(*(a1 + 32) + 240) _removeAllAnimations:1];
    [(UIView *)*(a1 + 40) _popDisableLayoutFlushing];
    v3 = [*(*(a1 + 32) + 240) layer];
    LODWORD(v4) = 1.0;
    [v3 setSpeed:v4];

    v5 = [*(*(a1 + 32) + 240) layer];
    [v5 setTimeOffset:1.0];
  }
}

void __75__UIInputWindowControllerHostingItem_updateProgress_startHeight_endHeight___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    v3 = [*(a1 + 32) inputViewSet];
    [v3 _setSplitProgress:*(a1 + 40)];
  }
}

- (BOOL)keyboardController
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  shouldNotifyRemoteKeyboards = [owner shouldNotifyRemoteKeyboards];

  return shouldNotifyRemoteKeyboards ^ 1;
}

- (void)setHideInputViewBackdrops:(BOOL)backdrops
{
  if (backdrops)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  [(UIView *)self->_inputBackdropView setAlpha:v5];
  [(UIView *)self->_inputAccessoryBackdropView setAlpha:v5];
  if (![(UIInputWindowControllerHostingItem *)self useCombinedBackdrop]|| !backdrops)
  {
    inputCombinedBackdropView = self->_inputCombinedBackdropView;

    [(UIView *)inputCombinedBackdropView setAlpha:v5];
  }
}

- (BOOL)hideInputView
{
  _inputViewController = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  view = [_inputViewController view];
  [view alpha];
  v5 = v4 != 1.0;

  return v5;
}

- (void)setHideInputView:(BOOL)view
{
  if (view)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  _inputViewController = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  view = [_inputViewController view];
  [view setAlpha:v4];

  dockView = [(UIInputWindowControllerHostingItem *)self dockView];
  [dockView setAlpha:v4];
}

- (int64_t)inputViewBackdropStyle
{
  containerView = [(UIInputWindowControllerHostingItem *)self containerView];
  _inheritedRenderConfig = [containerView _inheritedRenderConfig];
  backdropStyle = [_inheritedRenderConfig backdropStyle];

  return backdropStyle;
}

- (BOOL)dontDismissReachability
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  dontDismissReachability = [owner dontDismissReachability];

  return dontDismissReachability;
}

- (void)setDontDismissReachability:(BOOL)reachability
{
  reachabilityCopy = reachability;
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  [owner setDontDismissReachability:reachabilityCopy];
}

- (void)updateForKeyplaneChangeWithContext:(id)context
{
  if (!self->_scrolling)
  {
    contextCopy = context;
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    [owner updateForKeyplaneChangeWithContext:contextCopy];
  }
}

- (UIView)view
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  view = [owner view];

  return view;
}

- (BOOL)isChangingPlacement
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  isChangingPlacement = [owner isChangingPlacement];

  return isChangingPlacement;
}

- (CGPoint)positionConstraintConstant
{
  [(UIInputViewSetPlacementApplicator *)self->_applicator origin];
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)constructNotificationInfoForScrollWithMode:(unint64_t)mode
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  nextAnimationStyle = [owner nextAnimationStyle];

  if ([nextAnimationStyle canDismissWithScrollView])
  {
    v7 = objc_alloc_init(UIInputViewSetNotificationInfo);
    owner2 = [(UIInputWindowControllerHostingItem *)self owner];
    nextAnimationStyle2 = [owner2 nextAnimationStyle];
    [(UIInputViewSetNotificationInfo *)v7 populateWithAnimationStyle:nextAnimationStyle2];

    owner3 = [(UIInputWindowControllerHostingItem *)self owner];
    [(UIInputWindowControllerHostingItem *)self notificationsFrame];
    [owner3 convertRectFromContainerCoordinateSpaceToScreenSpace:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [(UIInputViewSetNotificationInfo *)v7 populateStartInfoWithFrame:v12, v14, v16, v18];
    [(UIInputWindowControllerHostingItem *)self _fillInNotificationInfo:v7 forDismissMode:mode];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_fillInNotificationInfo:(id)info forDismissMode:(unint64_t)mode
{
  infoCopy = info;
  if (mode)
  {
    dockView = [(UIInputWindowControllerHostingItem *)self dockView];
    [dockView frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    inputView = [(UIInputWindowControllerHostingItem *)self inputView];
    [inputView frame];
    v46.origin.x = v19;
    v46.origin.y = v20;
    v46.size.width = v21;
    v46.size.height = v22;
    v44.origin.x = v11;
    v44.origin.y = v13;
    v44.size.width = v15;
    v44.size.height = v17;
    v45 = CGRectUnion(v44, v46);
    height = v45.size.height;

    owner = [(UIInputWindowControllerHostingItem *)self owner];
    LODWORD(inputView) = [owner isTrackingElementController];

    if (inputView)
    {
      [(UIInputWindowControllerHostingItem *)self visibleFrame];
      height = v24;
    }
  }

  else if (mode)
  {
    hostView = [(UIInputWindowControllerHostingItem *)self hostView];
    [hostView frame];
    height = v7;
  }

  else
  {
    height = 0.0;
  }

  [infoCopy beginFrame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = height + v31;
  owner2 = [(UIInputWindowControllerHostingItem *)self owner];
  [owner2 convertRectFromContainerCoordinateSpaceToScreenSpace:{v26, v32, v28, v30}];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  [infoCopy addKeyboardNotificationDebuggingInfo:@"_fillInNotificationInfo: (hosting item)"];
  [infoCopy populateEndInfoWithFrame:{v35, v37, v39, v41}];
}

- (void)prepareForSplitTransition
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  [owner prepareForSplitTransition];
}

- (void)finishSplitTransition
{
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  [owner finishSplitTransition];
}

- (void)placementNeedsUpdate:(id)update
{
  updateCopy = update;
  self->_scrolling = 0;
  placement = [(UIInputWindowControllerHostingItem *)self placement];

  if (placement == updateCopy)
  {
    v6 = [updateCopy applicatorInfoForOwner:self];
    v7 = [v6 mutableCopy];
    v8 = MEMORY[0x1E696AD98];
    WeakRetained = objc_loadWeakRetained(&self->_container);
    v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(WeakRetained, "indexOfHost:", self)}];
    [v7 setObject:v10 forKey:0x1EFB7AAF0];

    v11 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__UIInputWindowControllerHostingItem_placementNeedsUpdate___block_invoke;
    v13[3] = &unk_1E7116848;
    v14 = v6;
    v12 = v6;
    [v11 performOnDistributedControllers:v13];
  }
}

- (void)startTransition:(id)transition withInfo:(id)info
{
  transitionCopy = transition;
  infoCopy = info;
  placement = [(UIInputWindowControllerHostingItem *)self placement];
  if ([placement isFloatingAssistantView])
  {
    placement2 = [(UIInputWindowControllerHostingItem *)self placement];
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    placement3 = [owner placement];
    subPlacements = [placement3 subPlacements];
    firstObject = [subPlacements firstObject];
    v13 = placement2 == firstObject;
  }

  else
  {
    v13 = 0;
  }

  if (![transitionCopy isEqualToString:0x1EFB7AD30])
  {
    if (v13)
    {
      goto LABEL_18;
    }

    v14 = [infoCopy objectForKey:0x1EFB7ABF0];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      goto LABEL_18;
    }

    v16 = [transitionCopy isEqualToString:0x1EFB7AA90];
    if (v16)
    {
      [(UIInputWindowControllerHostingItem *)self willBeginTranslation];
      v17 = MEMORY[0x1E695E118];
    }

    else
    {
      if (![transitionCopy isEqualToString:0x1EFB7AB30])
      {
        v17 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v17 = [infoCopy objectForKey:0x1EFB7ABD0];
      [(UIInputWindowControllerHostingItem *)self willBeginTranslation];
      if (!v17)
      {
LABEL_14:
        if (+[UIInputWindowController supportsStateBasedAnimations])
        {
          [(UIInputWindowControllerHostingItem *)self prepareForTransitionToState:4 animationType:9 interactiveTransition:v16];
        }

        goto LABEL_17;
      }
    }

    owner2 = [(UIInputWindowControllerHostingItem *)self owner];
    [owner2 generateNotificationsForStart:{objc_msgSend(v17, "BOOLValue")}];

    goto LABEL_14;
  }

  if (self->_inputCombinedBackdropView)
  {
    [(UIInputWindowControllerHostingItem *)self createAnimationMatchWithInfo:infoCopy];
  }

LABEL_18:
}

- (BOOL)_isForSelf:(id)self
{
  v4 = [self objectForKeyedSubscript:0x1EFB7AAF0];
  v5 = v4;
  if (v4)
  {
    integerValue = [v4 integerValue];
    WeakRetained = objc_loadWeakRetained(&self->_container);
    v8 = integerValue == [WeakRetained indexOfHost:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateTransition:(id)transition withInfo:(id)info
{
  transitionCopy = transition;
  infoCopy = info;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__UIInputWindowControllerHostingItem_updateTransition_withInfo___block_invoke;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v9 = infoCopy;
  v51 = v9;
  v10 = _Block_copy(aBlock);
  placement = [(UIInputWindowControllerHostingItem *)self placement];
  if ([placement isFloatingAssistantView])
  {
    placement2 = [(UIInputWindowControllerHostingItem *)self placement];
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    placement3 = [owner placement];
    subPlacements = [placement3 subPlacements];
    firstObject = [subPlacements firstObject];
    v16 = placement2 == firstObject;
  }

  else
  {
    v16 = 0;
  }

  if ([transitionCopy isEqualToString:0x1EFB7AD50])
  {
    v17 = @"Offset";
  }

  else
  {
    if (v16 || ([transitionCopy isEqualToString:0x1EFB7AA90] & 1) == 0 && !objc_msgSend(transitionCopy, "isEqualToString:", 0x1EFB7AAD0))
    {
      goto LABEL_13;
    }

    v17 = @"Origin";
  }

  v18 = [v9 objectForKey:v17];
  placement2 = v18;
  if (v18)
  {
    [v18 UIOffsetValue];
    v20 = v19;
    v22 = v21;
    applicator = [(UIInputWindowControllerHostingItem *)self applicator];
    [applicator updateForOffset:{v20, v22}];
  }

LABEL_13:
  if (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") && !self->_scrolling && [transitionCopy isEqualToString:0x1EFB7AC50])
  {
    [(UIInputWindowControllerHostingItem *)self createAnimationMatchWithInfo:v9];
  }

  v24 = [transitionCopy isEqualToString:0x1EFB7AC50];
  if (v24)
  {
    placement2 = [(UIInputWindowControllerHostingItem *)self placement];
    if ([placement2 showsKeyboard])
    {
      owner2 = [(UIInputWindowControllerHostingItem *)self owner];
      if ([owner2 dontDismissKeyboardOnScrolling])
      {
        v44 = owner2;
        v26 = v10;
        v27 = 0;
        v28 = 1;
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_container);
        if ([WeakRetained host:self isForPurpose:3])
        {

          goto LABEL_45;
        }

        v45 = WeakRetained;
        v44 = owner2;
        v26 = v10;
        v28 = 1;
        v27 = 1;
      }
    }

    else
    {
      v26 = v10;
      v28 = 0;
      v27 = 0;
    }
  }

  else
  {
    v26 = v10;
    v28 = 0;
    v27 = 0;
  }

  v46 = v16;
  if (!v16 && (([transitionCopy isEqualToString:0x1EFB7AA90] & 1) != 0 || objc_msgSend(transitionCopy, "isEqualToString:", 0x1EFB7AAD0)))
  {
    v30 = placement2;
    v31 = objc_loadWeakRetained(&self->_container);
    if ([v31 host:self isForPurpose:2])
    {
      v29 = 1;
    }

    else if ([transitionCopy isEqualToString:0x1EFB7AB10])
    {
      v29 = [(UIInputWindowControllerHostingItem *)self _isForSelf:v9];
    }

    else
    {
      v29 = 0;
    }

    placement2 = v30;
    v32 = v45;
    if ((v27 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_32:

    if (v28)
    {
      goto LABEL_43;
    }

LABEL_33:
    v10 = v26;
    if (!v24)
    {
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  v29 = ([transitionCopy isEqualToString:0x1EFB7AB10] & 1) != 0 && -[UIInputWindowControllerHostingItem _isForSelf:](self, "_isForSelf:", v9);
  v32 = v45;
  if (v27)
  {
    goto LABEL_32;
  }

LABEL_42:
  if (!v28)
  {
    goto LABEL_33;
  }

LABEL_43:

  v10 = v26;
  if (v24)
  {
LABEL_34:

    if (!v29)
    {
      goto LABEL_50;
    }

LABEL_45:
    if ([transitionCopy isEqualToString:0x1EFB7AC50])
    {
      self->_scrolling = 1;
    }

    applicator2 = [(UIInputWindowControllerHostingItem *)self applicator];
    [applicator2 applyChanges:v9];
    goto LABEL_48;
  }

LABEL_44:
  if (v29)
  {
    goto LABEL_45;
  }

LABEL_50:
  if ([transitionCopy isEqualToString:0x1EFB7AB30])
  {
    v35 = objc_loadWeakRetained(&self->_container);
    v36 = [v35 host:self isForPurpose:2];

    if (v36)
    {
      applicator2 = [v9 objectForKey:0x1EFB7AB50];
      [applicator2 doubleValue];
      v38 = v37;
      v39 = [v9 objectForKey:0x1EFB7AB70];
      [v39 doubleValue];
      v41 = v40;
      v42 = [v9 objectForKey:0x1EFB7AB90];
      [v42 doubleValue];
      [(UIInputWindowControllerHostingItem *)self updateProgress:v38 startHeight:v41 endHeight:v43];

LABEL_48:
      goto LABEL_49;
    }
  }

  if (v46 || ![transitionCopy isEqualToString:0x1EFB7ADB0])
  {
    if ([transitionCopy isEqualToString:0x1EFB7ADD0])
    {
      v10[2](v10);
    }
  }

  else
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __64__UIInputWindowControllerHostingItem_updateTransition_withInfo___block_invoke_2;
    v48[3] = &unk_1E70F0F78;
    v49 = v10;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __64__UIInputWindowControllerHostingItem_updateTransition_withInfo___block_invoke_3;
    v47[3] = &unk_1E70F5AC0;
    v47[4] = self;
    [UIView animateWithDuration:0 delay:v48 options:v47 animations:0.25 completion:0.0];
  }

LABEL_49:
}

void __64__UIInputWindowControllerHostingItem_updateTransition_withInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) applicator];
  [v2 applyChanges:*(a1 + 40)];

  v4 = [*(a1 + 32) owner];
  v3 = [v4 view];
  [v3 layoutIfNeeded];
}

uint64_t __64__UIInputWindowControllerHostingItem_updateTransition_withInfo___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) finishFlickTransition];
  }

  return result;
}

- (void)completeTransition:(id)transition withInfo:(id)info
{
  transitionCopy = transition;
  infoCopy = info;
  placement = [(UIInputWindowControllerHostingItem *)self placement];
  if ([placement isFloatingAssistantView])
  {
    placement2 = [(UIInputWindowControllerHostingItem *)self placement];
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    placement3 = [owner placement];
    subPlacements = [placement3 subPlacements];
    [subPlacements firstObject];
  }

  if ([transitionCopy isEqualToString:0x1EFB7AC50])
  {
    placement4 = [(UIInputWindowControllerHostingItem *)self placement];
    if ([placement4 showsKeyboard])
    {

      goto LABEL_7;
    }

    v14 = +[UIKeyboard inputUIOOP];

    if (v14)
    {
LABEL_7:
      if (+[UIKeyboard isKeyboardProcess])
      {
        [(UIInputWindowControllerHostingItem *)self createAnimationMatchWithInfo:infoCopy];
      }

      self->_scrolling = 0;
      v15 = [infoCopy objectForKey:0x1EFB7ACD0];
      v16 = [infoCopy objectForKey:0x1EFB7ACB0];
      if (v15 || (-[UIInputWindowControllerHostingItem owner](self, "owner"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 dontDismissKeyboardOnScrolling], v17, (v18 & 1) != 0))
      {
        v19 = -[UIScrollToDismissSupport cancelNotificationsForMode:](self->_cachedScrollDismissController, "cancelNotificationsForMode:", [v15 intValue]);
        [v19 addKeyboardNotificationDebuggingInfo:@"completeTransition: cancel (hosting item)"];
        owner2 = [(UIInputWindowControllerHostingItem *)self owner];
        [owner2 postStartNotifications:2 withInfo:v19];

        [v16 doubleValue];
        v22 = v21;
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __66__UIInputWindowControllerHostingItem_completeTransition_withInfo___block_invoke_4;
        v59[3] = &unk_1E70F3590;
        v59[4] = self;
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __66__UIInputWindowControllerHostingItem_completeTransition_withInfo___block_invoke_5;
        v57[3] = &unk_1E70F3C60;
        v57[4] = self;
        v58 = v19;
        v23 = v19;
        [UIView animateWithDuration:0 delay:v59 options:v57 animations:v22 completion:0.0];

LABEL_12:
LABEL_45:

        goto LABEL_46;
      }

      objc_initWeak(&location, self);
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __66__UIInputWindowControllerHostingItem_completeTransition_withInfo___block_invoke;
      v63[3] = &unk_1E70F5A28;
      objc_copyWeak(&v64, &location);
      v48 = [v63 copy];
      interactiveTransitionCleanupBlock = self->_interactiveTransitionCleanupBlock;
      self->_interactiveTransitionCleanupBlock = v48;

      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __66__UIInputWindowControllerHostingItem_completeTransition_withInfo___block_invoke_2;
      v60[3] = &unk_1E70F35B8;
      v61 = infoCopy;
      selfCopy = self;
      v50 = _Block_copy(v60);
      if (+[UIKeyboard isKeyboardProcess])
      {
        owner3 = [(UIInputWindowControllerHostingItem *)self owner];
        v52 = +[UIInputViewAnimationStyle animationStyleImmediate];
        [owner3 pushAnimationStyle:v52];

        v50[2](v50);
        owner4 = [(UIInputWindowControllerHostingItem *)self owner];
        [owner4 popAnimationStyle];
      }

      else
      {
        if (!v16)
        {
          v50[2](v50);
          goto LABEL_52;
        }

        owner4 = [(UIInputWindowControllerHostingItem *)self owner];
        [v16 doubleValue];
        v54 = [UIInputViewAnimationStyle animationStyleAnimated:1 duration:?];
        [owner4 performOperations:v50 withAnimationStyle:v54];
      }

LABEL_52:
      objc_destroyWeak(&v64);
      objc_destroyWeak(&location);
      goto LABEL_12;
    }

    owner5 = [(UIInputWindowControllerHostingItem *)self owner];
    [owner5 moveKeyboardLayoutGuideOffscreen];
  }

  if (![transitionCopy isEqualToString:0x1EFB7ADB0])
  {
    v15 = [infoCopy objectForKey:0x1EFB7ABD0];
    v26 = [transitionCopy isEqualToString:0x1EFB7AAD0];
    placement5 = [(UIInputWindowControllerHostingItem *)self placement];
    inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [placement5 inputAssistantViewHeightForInputViewSet:inputViewSet];
    [(NSLayoutConstraint *)self->_assistantViewHeightConstraint setConstant:?];

    v29 = [infoCopy objectForKey:0x1EFB7AC10];
    LODWORD(inputViewSet) = [v29 BOOLValue];

    if (inputViewSet)
    {
      v30 = +[UIPeripheralHost sharedInstance];
      [v30 setUndockedWithOffset:0 animated:{0.0, self->_verticalTranslationForSplitKeyboard}];

      inputViewSet2 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      [inputViewSet2 refreshPresentation];

      owner6 = [(UIInputWindowControllerHostingItem *)self owner];
      [owner6 checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:v15 != 0 layoutSubviews:1];

      if (+[UIInputWindowController supportsStateBasedAnimations])
      {
        verticalTranslationForSplitKeyboard = self->_verticalTranslationForSplitKeyboard;
        if (verticalTranslationForSplitKeyboard <= 0.0)
        {
          v34 = 2;
        }

        else
        {
          v34 = 4;
        }

        if (verticalTranslationForSplitKeyboard <= 0.0)
        {
          v35 = 11;
        }

        else
        {
          v35 = 9;
        }

        v36 = +[UIKeyboardImpl isFloating];
        if (v36)
        {
          v37 = 3;
        }

        else
        {
          v37 = v34;
        }

        if (v36)
        {
          v38 = 12;
        }

        else
        {
          v38 = v35;
        }

        [(UIInputWindowControllerHostingItem *)self finishedTransitionToState:v37 animationType:v38 interactiveTransition:1];
      }
    }

    v39 = [infoCopy objectForKey:0x1EFB7ABB0];
    v40 = v39;
    if (v39)
    {
      -[UIInputWindowControllerHostingItem transitionDidFinish:](self, "transitionDidFinish:", [v39 BOOLValue]);
    }

    if (v26)
    {
      hostView = [(UIInputWindowControllerHostingItem *)self hostView];
      [hostView layoutIfNeeded];
    }

    if (v15)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __66__UIInputWindowControllerHostingItem_completeTransition_withInfo___block_invoke_6;
      aBlock[3] = &unk_1E70F35B8;
      aBlock[4] = self;
      v56 = v15;
      v42 = _Block_copy(aBlock);
      v43 = [infoCopy objectForKey:0x1EFB7AC30];
      v44 = v43;
      if (v43)
      {
        longLongValue = [v43 longLongValue];
        dispatch_after(longLongValue, MEMORY[0x1E69E96A0], v42);
      }

      else
      {
        v42[2](v42);
      }
    }

    if (v26)
    {
      [(UIInputWindowControllerHostingItem *)self didFinishTranslation];
    }

    v46 = [infoCopy objectForKey:0x1EFB7AAB0];
    v47 = v46;
    if (v46)
    {
      -[UIInputWindowControllerHostingItem finishSplitTransition:](self, "finishSplitTransition:", [v46 BOOLValue]);
    }

    goto LABEL_45;
  }

  owner7 = [(UIInputWindowControllerHostingItem *)self owner];
  [owner7 generateNotificationsForCompactAssistantFlickGestureCompletion:infoCopy];

LABEL_46:
}

void __66__UIInputWindowControllerHostingItem_completeTransition_withInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishScrollViewTransition];
  [WeakRetained removeMatchMoveAnimationIfNeeded];
}

void __66__UIInputWindowControllerHostingItem_completeTransition_withInfo___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:0x1EFB7AC90];
  v3 = [*(a1 + 40) owner];
  v4 = [*(a1 + 32) objectForKey:0x1EFB7AC70];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__UIInputWindowControllerHostingItem_completeTransition_withInfo___block_invoke_3;
  v5[3] = &unk_1E70F3590;
  v5[4] = *(a1 + 40);
  [v3 moveFromPlacement:v4 toPlacement:v2 starting:0 completion:v5];
}

void __66__UIInputWindowControllerHostingItem_completeTransition_withInfo___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) finishScrollViewTransition];
  [*(a1 + 32) removeMatchMoveAnimationIfNeeded];
  v2 = [*(a1 + 32) owner];
  [*(a1 + 32) notificationsFrame];
  [v2 convertRectFromContainerCoordinateSpaceToScreenSpace:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*(a1 + 40) populateEndInfoWithFrame:{v4, v6, v8, v10}];
  v11 = [*(a1 + 32) owner];
  [v11 postEndNotifications:2 withInfo:*(a1 + 40)];
}

void __66__UIInputWindowControllerHostingItem_completeTransition_withInfo___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) owner];
  [v2 generateNotificationsForStart:{objc_msgSend(*(a1 + 40), "BOOLValue")}];
}

- (void)setPlacement:(id)placement quietly:(BOOL)quietly animated:(BOOL)animated generateSplitNotification:(BOOL)notification
{
  notificationCopy = notification;
  animatedCopy = animated;
  quietlyCopy = quietly;
  placementCopy = placement;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if (![WeakRetained host:self isForPurpose:200])
  {
    goto LABEL_7;
  }

  if (([placementCopy isFloatingAssistantView] & 1) == 0)
  {

    goto LABEL_6;
  }

  placement = [(UIInputWindowControllerHostingItem *)self placement];
  isFloating = [placement isFloating];

  if ((isFloating & 1) == 0)
  {
LABEL_6:
    WeakRetained = [(UIInputWindowControllerHostingItem *)self owner];
    [WeakRetained setPlacement:placementCopy quietly:quietlyCopy animated:animatedCopy generateSplitNotification:notificationCopy];
LABEL_7:
  }

  v13 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  keyboardActive = [v13 keyboardActive];

  if ((keyboardActive & 1) == 0)
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _window = [owner _window];
    screen = [_window screen];
    v18 = [(UIKeyboardMotionSupport *)UIFlickingAssistantViewSupport supportForScreen:screen];

    if ([placementCopy isFloatingAssistantView])
    {
      v19 = placementCopy;
    }

    else
    {
      v19 = 0;
    }

    [v18 setRemotePlacement:v19];
  }
}

- (void)transitionDidFinish:(BOOL)finish
{
  finishCopy = finish;
  [(UIInputWindowControllerHostingItem *)self setAccessoryViewVisible:1 delay:0.15];
  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  [inputViewSet _endSplitTransitionIfNeeded];

  inputBackdropView = self->_inputBackdropView;
  inputViewSet2 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  -[UIKBInputBackdropView _endSplitTransitionIfNeeded:](inputBackdropView, "_endSplitTransitionIfNeeded:", [inputViewSet2 isSplit]);

  [(UIInputWindowControllerHostingItem *)self _updateBackdropViews];
  if (finishCopy)
  {
    inputViewSet3 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [inputViewSet3 refreshPresentation];
  }

  [(UIView *)self->_inputBackdropView _popDisableLayoutFlushing];
  inputAccessoryView = [(UIInputWindowControllerHostingItem *)self inputAccessoryView];
  [(UIView *)inputAccessoryView _popDisableLayoutFlushing];

  hostView = [(UIInputWindowControllerHostingItem *)self hostView];
  [hostView setNeedsLayout];

  owner = [(UIInputWindowControllerHostingItem *)self owner];
  [owner checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:0 layoutSubviews:1];
}

- (id)draggableView
{
  inputSwitcherView = [(UIInputWindowControllerHostingItem *)self inputSwitcherView];
  v4 = inputSwitcherView;
  if (inputSwitcherView)
  {
    v5 = inputSwitcherView;
    goto LABEL_9;
  }

  placement = [(UIInputWindowControllerHostingItem *)self placement];
  if (([placement isFloating] & 1) == 0)
  {

    goto LABEL_7;
  }

  dockView = [(UISystemKeyboardDockController *)self->_dockViewController dockView];
  centerView = [dockView centerView];

  if (!centerView)
  {
LABEL_7:
    applicator = [(UIInputWindowControllerHostingItem *)self applicator];
    draggableView = [applicator draggableView];
    goto LABEL_8;
  }

  applicator = [(UISystemKeyboardDockController *)self->_dockViewController dockView];
  draggableView = [applicator centerView];
LABEL_8:
  v5 = draggableView;

LABEL_9:

  return v5;
}

- (void)createAnimationMatchWithInfo:(id)info
{
  v38[4] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:0x1EFB7AD30];

  if (v5)
  {
    scrollTrackingView = self->_inputCombinedBackdropView;
    if (scrollTrackingView)
    {
      v7 = [infoCopy objectForKeyedSubscript:0x1EFB7AD50];

      if (v7)
      {
        layerForPositionMatchMove = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView layerForPositionMatchMove];
        [layerForPositionMatchMove removeAnimationForKey:0x1EFB7AD50];
        layer2 = [infoCopy objectForKeyedSubscript:0x1EFB7AD50];
        v9 = objc_opt_new();
        v10 = [layer2 objectForKeyedSubscript:0x1EFB7AD70];
        [v9 setSourceContextId:{objc_msgSend(v10, "integerValue")}];

        v11 = [layer2 objectForKeyedSubscript:0x1EFB7AD90];
        [v9 setSourceLayerRenderId:{objc_msgSend(v11, "integerValue")}];

        [v9 setDuration:INFINITY];
        [v9 setUsesNormalizedCoordinates:1];
        v36[0] = 0;
        v36[1] = 0;
        v12 = [MEMORY[0x1E696B098] valueWithBytes:v36 objCType:"{CGPoint=dd}"];
        v38[0] = v12;
        v35 = xmmword_18A64B730;
        v13 = [MEMORY[0x1E696B098] valueWithBytes:&v35 objCType:"{CGPoint=dd}"];
        v38[1] = v13;
        __asm { FMOV            V0.2D, #1.0 }

        v34 = _Q0;
        v19 = [MEMORY[0x1E696B098] valueWithBytes:&v34 objCType:"{CGPoint=dd}"];
        v38[2] = v19;
        v33 = xmmword_18A64B720;
        v20 = [MEMORY[0x1E696B098] valueWithBytes:&v33 objCType:"{CGPoint=dd}"];
        v38[3] = v20;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
        [v9 setSourcePoints:v21];

        v22 = layerForPositionMatchMove;
        [layerForPositionMatchMove addAnimation:v9 forKey:0x1EFB7AD50];

LABEL_8:
      }
    }
  }

  else
  {
    scrollTrackingView = [(UIInputWindowControllerHostingItem *)self scrollTrackingView];
    if (scrollTrackingView)
    {
      v23 = [infoCopy objectForKeyedSubscript:0x1EFB7AD70];

      if (v23)
      {
        layer = [(UIView *)scrollTrackingView layer];
        [layer removeAnimationForKey:@"KeyboardScrollToDismissAnimation"];

        v22 = objc_opt_new();
        v25 = [infoCopy objectForKeyedSubscript:0x1EFB7AD70];
        [v22 setSourceContextId:{objc_msgSend(v25, "integerValue")}];

        v26 = [infoCopy objectForKeyedSubscript:0x1EFB7AD90];
        [v22 setSourceLayerRenderId:{objc_msgSend(v26, "integerValue")}];

        [v22 setDuration:INFINITY];
        [v22 setUsesNormalizedCoordinates:1];
        v27 = [infoCopy objectForKeyedSubscript:0x1EFB7ACF0];
        [v27 floatValue];
        v29 = v28;

        v30 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.5, v29 * 0.5 + 0.5}];
        v37 = v30;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        [v22 setSourcePoints:v31];

        layer2 = [(UIView *)scrollTrackingView layer];
        [layer2 addAnimation:v22 forKey:@"KeyboardScrollToDismissAnimation"];
        goto LABEL_8;
      }
    }
  }
}

- (void)willBeginTranslationFromPlacement:(id)placement to:(id)to
{
  if ([(UISplitKeyboardSupport *)self->_cachedSplitKeyboardController startedPlacementFrom:placement to:to forController:self])
  {

    [(UIInputWindowControllerHostingItem *)self willBeginTranslation];
  }
}

- (void)didFinishTranslationFromPlacement:(id)placement to:(id)to
{
  placementCopy = placement;
  toCopy = to;
  if ([(UISplitKeyboardSupport *)self->_cachedSplitKeyboardController completedPlacementFrom:placementCopy to:toCopy forController:self])
  {
    [(UIInputWindowControllerHostingItem *)self didFinishTranslation];
  }

  [(UIScrollToDismissSupport *)self->_cachedScrollDismissController completedPlacementFrom:placementCopy to:toCopy forController:self];
}

- (void)resetVerticalConstraint
{
  placement = [(UIInputWindowControllerHostingItem *)self placement];
  [(UIInputWindowControllerHostingItem *)self updateVisibilityConstraintsForPlacement:placement];

  owner = [(UIInputWindowControllerHostingItem *)self owner];
  view = [owner view];
  [view layoutIfNeeded];
}

- (void)configureSplitKeyboardController:(BOOL)controller
{
  if (controller)
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _window = [owner _window];
    screen = [_window screen];
    obj = [(UIKeyboardMotionSupport *)UISplitKeyboardSupport supportForScreen:screen];

    cachedSplitKeyboardController = self->_cachedSplitKeyboardController;
    if (cachedSplitKeyboardController != obj)
    {
      [(UIKeyboardMotionSupport *)cachedSplitKeyboardController setMasterController:0];
      objc_storeStrong(&self->_cachedSplitKeyboardController, obj);
      cachedSplitKeyboardController = self->_cachedSplitKeyboardController;
    }

    [(UIKeyboardMotionSupport *)cachedSplitKeyboardController setMasterController:self];
    v8 = obj;
  }

  else
  {
    masterController = [(UIKeyboardMotionSupport *)self->_cachedSplitKeyboardController masterController];

    if (masterController == self)
    {
      [(UIKeyboardMotionSupport *)self->_cachedSplitKeyboardController setMasterController:0];
    }

    v8 = self->_cachedSplitKeyboardController;
    self->_cachedSplitKeyboardController = 0;
  }
}

- (void)setAccessoryViewVisible:(BOOL)visible delay:(double)delay
{
  visibleCopy = visible;
  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v8 = [inputViewSet setAccessoryViewVisible:visibleCopy delay:delay];

  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__UIInputWindowControllerHostingItem_setAccessoryViewVisible_delay___block_invoke;
    v9[3] = &unk_1E70F35E0;
    v9[4] = self;
    v10 = visibleCopy;
    [UIView animateWithDuration:50331648 delay:v9 options:0 animations:0.15 completion:delay];
  }
}

- (BOOL)_isForSplitKeyboard
{
  v4 = +[UIKeyboard isInputSystemUI];
  if (!v4)
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    if ([owner shouldNotifyRemoteKeyboards])
    {
      v5 = 0;
LABEL_5:

      return v5;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_container);
  v5 = [WeakRetained host:self isForPurpose:2];

  if (!v4)
  {
    goto LABEL_5;
  }

  return v5;
}

- (void)configureScrollDismissController:(BOOL)controller
{
  if (controller)
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _window = [owner _window];
    screen = [_window screen];
    obj = [(UIKeyboardMotionSupport *)UIScrollToDismissSupport supportForScreen:screen];

    cachedScrollDismissController = self->_cachedScrollDismissController;
    if (cachedScrollDismissController != obj)
    {
      [(UIKeyboardMotionSupport *)cachedScrollDismissController setMasterController:0];
      objc_storeStrong(&self->_cachedScrollDismissController, obj);
      cachedScrollDismissController = self->_cachedScrollDismissController;
    }

    [(UIKeyboardMotionSupport *)cachedScrollDismissController setMasterController:self];
    v8 = obj;
  }

  else
  {
    masterController = [(UIKeyboardMotionSupport *)self->_cachedScrollDismissController masterController];

    if (masterController == self)
    {
      [(UIKeyboardMotionSupport *)self->_cachedScrollDismissController setMasterController:0];
    }

    v8 = self->_cachedScrollDismissController;
    self->_cachedScrollDismissController = 0;
  }
}

- (void)clearInteractiveTransitionStateIfNecessary
{
  interactiveTransitionCleanupBlock = self->_interactiveTransitionCleanupBlock;
  if (interactiveTransitionCleanupBlock)
  {
    interactiveTransitionCleanupBlock[2](interactiveTransitionCleanupBlock, a2);
    v4 = self->_interactiveTransitionCleanupBlock;
    self->_interactiveTransitionCleanupBlock = 0;
  }
}

- (void)removeMatchMoveAnimationIfNeeded
{
  if (+[UIKeyboard isKeyboardProcess])
  {
    scrollTrackingView = [(UIInputWindowControllerHostingItem *)self scrollTrackingView];
    layer = [scrollTrackingView layer];
    v5 = [layer animationForKey:@"KeyboardScrollToDismissAnimation"];

    if (v5)
    {
      scrollTrackingView2 = [(UIInputWindowControllerHostingItem *)self scrollTrackingView];
      layer2 = [scrollTrackingView2 layer];
      [layer2 removeAnimationForKey:@"KeyboardScrollToDismissAnimation"];
    }
  }
}

- (void)enumerateBoundingRects:(id)rects
{
  rectsCopy = rects;
  inputViewSet = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  if ([inputViewSet isSplit])
  {
    [inputViewSet _leftInputViewSetFrame];
    rectsCopy[2](rectsCopy);
    [inputViewSet _rightInputViewSetFrame];
    rectsCopy[2](rectsCopy);
  }

  else
  {
    placement = [(UIInputWindowControllerHostingItem *)self placement];
    [placement adjustBoundsForNotificationsWithOwner:self];
    rectsCopy[2](rectsCopy);

    rectsCopy = placement;
  }
}

- (void)configureFlickingAssistantViewController:(BOOL)controller
{
  if (controller)
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _window = [owner _window];
    screen = [_window screen];
    obj = [(UIKeyboardMotionSupport *)UIFlickingAssistantViewSupport supportForScreen:screen];

    cachedFlickingAssistantViewController = self->_cachedFlickingAssistantViewController;
    if (cachedFlickingAssistantViewController != obj)
    {
      [(UIKeyboardMotionSupport *)cachedFlickingAssistantViewController setMasterController:0];
      objc_storeStrong(&self->_cachedFlickingAssistantViewController, obj);
      cachedFlickingAssistantViewController = self->_cachedFlickingAssistantViewController;
    }

    [(UIKeyboardMotionSupport *)cachedFlickingAssistantViewController setMasterController:self];
    v8 = obj;
  }

  else
  {
    masterController = [(UIKeyboardMotionSupport *)self->_cachedFlickingAssistantViewController masterController];

    if (masterController == self)
    {
      [(UIKeyboardMotionSupport *)self->_cachedFlickingAssistantViewController setMasterController:0];
    }

    v8 = self->_cachedFlickingAssistantViewController;
    self->_cachedFlickingAssistantViewController = 0;
  }
}

@end