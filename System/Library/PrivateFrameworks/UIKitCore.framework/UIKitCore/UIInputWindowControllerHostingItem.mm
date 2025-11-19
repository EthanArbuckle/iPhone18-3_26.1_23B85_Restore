@interface UIInputWindowControllerHostingItem
- (BOOL)_isForDragToDismiss;
- (BOOL)_isForSelf:(id)a3;
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
- (CGSize)sizeForVisualState:(int64_t)a3;
- (NSString)debugDescription;
- (TUIInputAssistantHostView)inputAssistantHostView;
- (UIEdgeInsets)_aligningInsetsForChildInputViewController:(id)a3 includeSceneBounds:(BOOL)a4;
- (UIEdgeInsets)inputViewPadding;
- (UIInputViewSet)inputViewSet;
- (UIInputViewSetPlacement)placement;
- (UIInputWindowController)owner;
- (UIInputWindowControllerHosting)container;
- (UIInputWindowControllerHostingItem)initWithContainer:(id)a3;
- (UIView)containerView;
- (UIView)inputAccessoryView;
- (UIView)inputAssistantView;
- (UIView)inputSwitcherView;
- (UIView)inputView;
- (UIView)scrollTrackingView;
- (UIView)view;
- (id)_updateOrCreateConstraintInDict:(id)a3 key:(id)a4 fromItem:(id)a5 toItem:(id)a6 tracker:(id)a7 creator:(id)a8;
- (id)_updateOrCreateConstraintInDict:(id)a3 key:(id)a4 tracker:(id)a5 creator:(id)a6;
- (id)animatedAssistantView;
- (id)animatedInputView;
- (id)constructNotificationInfoForScrollWithMode:(unint64_t)a3;
- (id)createItemHostView;
- (id)draggableView;
- (id)inputAccessoryViewController;
- (id)inputAssistantViewController;
- (id)inputViewController;
- (id)ownerView;
- (id)viewMatchingConstraintForAttribute:(int64_t)a3 primaryView:(id)a4 secondaryView:(id)a5;
- (int64_t)inputViewBackdropStyle;
- (void)_fillInNotificationInfo:(id)a3 forDismissMode:(unint64_t)a4;
- (void)_updateBackdropViews;
- (void)animatingTransitionFromState:(int64_t)a3 toState:(int64_t)a4 animationType:(int64_t)a5 totalDuration:(double)a6;
- (void)checkPlaceholdersForRemoteKeyboards;
- (void)cleanUpLightEffectsTransition;
- (void)clearInputAccessoryViewEdgeConstraints;
- (void)clearInputAssistantViewEdgeConstraints;
- (void)clearInputViewEdgeConstraints;
- (void)clearInteractiveTransitionStateIfNecessary;
- (void)clearVisibilityConstraints;
- (void)completeTransition:(id)a3 withInfo:(id)a4;
- (void)configureDockViewController:(BOOL)a3;
- (void)configureFlickingAssistantViewController:(BOOL)a3;
- (void)configureScrollDismissController:(BOOL)a3;
- (void)configureSplitKeyboardController:(BOOL)a3;
- (void)createAnimationMatchWithInfo:(id)a3;
- (void)dealloc;
- (void)didFinishTranslation;
- (void)didFinishTranslationFromPlacement:(id)a3 to:(id)a4;
- (void)disableViewSizingConstraints:(unint64_t)a3 forNewView:(id)a4;
- (void)enumerateBoundingRects:(id)a3;
- (void)extendKeyboardBackdropHeight:(double)a3 withDuration:(double)a4;
- (void)finalizeTransitionToRenderConfig:(id)a3;
- (void)finishSplitTransition;
- (void)finishSplitTransition:(BOOL)a3;
- (void)finishedTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5;
- (void)initializeTranslateGestureRecognizerIfNecessary;
- (void)performAnimatedTransitionToRenderConfig:(id)a3;
- (void)placementNeedsUpdate:(id)a3;
- (void)prepareForSplitTransition;
- (void)prepareForTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5;
- (void)rebuildConstraints:(id)a3 forView:(id)a4 toMatchView:(id)a5 tracker:(id)a6;
- (void)refreshApplicator;
- (void)removeMatchMoveAnimationIfNeeded;
- (void)resetBackdropHeight;
- (void)resetInputViewVisibility;
- (void)resetPlacement;
- (void)resetVerticalConstraint;
- (void)setAccessoryViewVisible:(BOOL)a3 delay:(double)a4;
- (void)setCombinedBackdropView:(id)a3;
- (void)setDontDismissReachability:(BOOL)a3;
- (void)setHideInputView:(BOOL)a3;
- (void)setHideInputViewBackdrops:(BOOL)a3;
- (void)setInputAccessoryBackdropView:(id)a3;
- (void)setInputAccessoryView:(id)a3;
- (void)setInputAssistantView:(id)a3;
- (void)setInputBackdropView:(id)a3;
- (void)setInputSwitcherView:(id)a3;
- (void)setInputView:(id)a3;
- (void)setPlacement;
- (void)setPlacement:(id)a3;
- (void)setPlacement:(id)a3 quietly:(BOOL)a4 animated:(BOOL)a5 generateSplitNotification:(BOOL)a6;
- (void)someViewDidLayoutSubviews;
- (void)startTransition:(id)a3 withInfo:(id)a4;
- (void)transitionDidFinish:(BOOL)a3;
- (void)transitionInAnimatedForRenderConfig:(id)a3;
- (void)transitioningToState:(int64_t)a3 animationType:(int64_t)a4 completionPercentage:(double)a5;
- (void)updateCombinedBackdropView;
- (void)updateCombinedBackdropViewAnimated:(BOOL)a3 forKeyboardUp:(BOOL)a4;
- (void)updateConstraintInsets;
- (void)updateEmptyHeightConstraint;
- (void)updateForKeyplaneChangeWithContext:(id)a3;
- (void)updateInputAccessoryBackdropView;
- (void)updateInputAssistantHostViewVisibility;
- (void)updateInputAssistantViewLayering;
- (void)updateInputBackdropView;
- (void)updateInputBackdropViewVisibility;
- (void)updateKeyboardDockViewVisibility;
- (void)updateProgress:(double)a3 startHeight:(double)a4 endHeight:(double)a5;
- (void)updateRenderConfigForCombinedBackdrop:(id)a3;
- (void)updateSupportsDockViewController;
- (void)updateTransition:(id)a3 withInfo:(id)a4;
- (void)updateViewConstraints;
- (void)updateViewSizingConstraints;
- (void)updateViewSizingConstraints:(id)a3;
- (void)updateVisibilityConstraintsForPlacement:(id)a3;
- (void)willBeginTranslation;
- (void)willBeginTranslationFromPlacement:(id)a3 to:(id)a4;
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
  v12 = [(UIInputWindowControllerHostingItem *)self inputAssistantView];
  v3 = [(UIInputWindowControllerHostingItem *)self inputView];
  if (+[UIKeyboard isRemoteEmojiCollectionViewEnabled])
  {
    v4 = [v12 superview];
    v5 = [(UIInputWindowControllerHostingItem *)self hostView];
    if (v4 != v5)
    {
LABEL_3:

      goto LABEL_5;
    }

    v6 = [v3 superview];
    v7 = [(UIInputWindowControllerHostingItem *)self hostView];

    if (v6 == v7)
    {
      v8 = +[UIKeyboardInputModeController sharedInputModeController];
      v4 = [v8 currentInputMode];

      v9 = [v4 isEmojiInputMode];
      v10 = [(UIInputWindowControllerHostingItem *)self hostView];
      v5 = v10;
      if (v9)
      {
        v11 = [(UIInputWindowControllerHostingItem *)self inputView];
        [v5 insertSubview:v12 belowSubview:v11];
      }

      else
      {
        [v10 bringSubviewToFront:v12];
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
  v2 = [(UIInputWindowControllerHostingItem *)self owner];
  v3 = [v2 view];

  return v3;
}

- (UIInputWindowController)owner
{
  v2 = [(UIInputWindowControllerHostingItem *)self container];
  v3 = [v2 owner];

  return v3;
}

- (void)updateSupportsDockViewController
{
  supportsDockViewController = self->_supportsDockViewController;
  v4 = +[UIKeyboardImpl showsGlobeAndDictationKeysExternally];
  self->_supportsDockViewController = v4;
  if (!supportsDockViewController && v4)
  {
    v7 = [(UIInputWindowControllerHostingItem *)self hostView];
    v5 = [v7 window];
    if (v5)
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
  v2 = [(UIInputWindowControllerHostingItem *)self owner];
  v3 = [v2 isOnScreenRotating];

  return v3;
}

- (void)updateKeyboardDockViewVisibility
{
  if (self->_supportsDockViewController)
  {
    if (!self->_dockViewController)
    {
      [(UIInputWindowControllerHostingItem *)self configureDockViewController:1];
      v3 = [(UIInputWindowControllerHostingItem *)self hostView];
      v4 = [(UIViewController *)self->_dockViewController view];
      [v3 addSubview:v4];
    }

    v5 = [(UIInputWindowControllerHostingItem *)self _shouldShowInputDockView];
    v6 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    v7 = [v6 inputView];
    if (v7)
    {
      v8 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      if ([v8 isInputViewPlaceholder])
      {
        v9 = 0;
      }

      else
      {
        v10 = +[UIKeyboardImpl activeInstance];
        v9 = v5 & ([v10 isMinimized] ^ 1);
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = +[UIKeyboardInputModeController sharedInputModeController];
    v12 = [v11 currentInputMode];
    v13 = [v12 identifier];
    v14 = [v13 isEqualToString:@"autofillsignup"];

    v15 = [(UISystemKeyboardDockController *)self->_dockViewController dockView];
    [v15 setHidden:v14 & v9 | v9 ^ 1u];

    if (((v14 & v9) | v9 ^ 1))
    {
      dockViewController = self->_dockViewController;

      [(UISystemKeyboardDockController *)dockViewController updateDockItemsVisibility];
    }

    else
    {
      v16 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v17 = [v16 responder];
      v18 = [v17 inputAssistantItem];
      v20 = [v18 _dictationReplacementAction];

      [(UISystemKeyboardDockController *)self->_dockViewController updateDockItemsVisibilityWithCustomDictationAction:v20];
    }
  }
}

- (void)updateConstraintInsets
{
  v3 = [(UIInputWindowControllerHostingItem *)self inputView];

  if (v3)
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 placement];
    if ([v5 isFloating] && self->_inputCombinedBackdropView)
    {
      +[UIKeyboardPopoverContainer contentInsets];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
    }

    else
    {
      v14 = [(UIInputWindowControllerHostingItem *)self inputViewController];
      [(UIInputWindowControllerHostingItem *)self _aligningInsetsForChildInputViewController:v14 includeSceneBounds:0];
      v7 = v15;
      v9 = v16;
      v11 = v17;
      v13 = v18;
    }

    __60__UIInputWindowControllerHostingItem_updateConstraintInsets__block_invoke(self->_inputViewEdgeConstraints, v7, v9, v11, v13);
  }

  v19 = [(UIInputWindowControllerHostingItem *)self inputAssistantView];

  if (v19)
  {
    v20 = [(UIInputWindowControllerHostingItem *)self inputAssistantViewController];
    [(UIInputWindowControllerHostingItem *)self _aligningInsetsForChildInputViewController:v20 includeSceneBounds:0];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    __60__UIInputWindowControllerHostingItem_updateConstraintInsets__block_invoke(self->_assistantViewEdgeConstraints, v22, v24, v26, v28);
  }

  v29 = [(UIInputWindowControllerHostingItem *)self inputAccessoryView];

  if (v29)
  {
    v30 = [(UIInputWindowControllerHostingItem *)self inputAccessoryViewController];
    [(UIInputWindowControllerHostingItem *)self _aligningInsetsForChildInputViewController:v30 includeSceneBounds:1];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    __60__UIInputWindowControllerHostingItem_updateConstraintInsets__block_invoke(self->_accessoryViewEdgeConstraints, v32, v34, v36, v38);
  }

  if (self->_inputBackdropView)
  {
    v39 = [(UIInputWindowControllerHostingItem *)self owner];
    v40 = [v39 placement];
    v41 = 0.0;
    v42 = 0.0;
    v43 = 0.0;
    v44 = 0.0;
    if ([v40 isFloating])
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
  v3 = [(UIInputWindowControllerHostingItem *)self container];
  v4 = [v3 useLayoutHostingItem];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:100];
    v6 = [(UIInputWindowControllerHostingItem *)self owner];
    if ([v6 isRotating])
    {
      v7 = [(NSMutableDictionary *)self->_inputViewEdgeConstraints count];

      if (v7)
      {
        v8 = [(UIInputWindowControllerHostingItem *)self owner];
        [v8 updateKeyboardDockViewVisibility];

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
    v9 = [(UIInputWindowControllerHostingItem *)self inputView];
    v10 = [(UIInputWindowControllerHostingItem *)self inputAssistantView];
    v11 = [(UIInputWindowControllerHostingItem *)self inputAccessoryView];
    v12 = [(UIInputWindowControllerHostingItem *)self inputSwitcherView];
    v13 = v10;
    if (+[UIKeyboardImpl shouldMergeAssistantBarWithKeyboardLayout](UIKeyboardImpl, "shouldMergeAssistantBarWithKeyboardLayout") || (v14 = [v13 isHidden], v15 = v13, v14))
    {

      v15 = 0;
    }

    v289 = v15;
    v16 = [v9 superview];
    v18 = [(UIInputWindowControllerHostingItem *)self hostView];

    v17 = v16 == v18;
    LODWORD(v18) = v16 == v18;
    v285 = v11;
    v286 = v9;
    v287 = v13;
    v288 = v12;
    if (!v17)
    {
      if ([(NSMutableDictionary *)self->_inputViewEdgeConstraints count])
      {
        [(UIInputWindowControllerHostingItem *)self clearInputViewEdgeConstraints];
      }

      v282 = 0;
LABEL_54:
      v82 = [v13 superview];
      v83 = [(UIInputWindowControllerHostingItem *)self hostView];

      if (v82 != v83)
      {
        if ([(NSMutableDictionary *)self->_assistantViewEdgeConstraints count])
        {
          [(UIInputWindowControllerHostingItem *)self clearInputAssistantViewEdgeConstraints];
        }

        goto LABEL_75;
      }

      [(NSLayoutConstraint *)self->_emptyHeightConstraint setActive:0];
      v84 = v12;
      if (v12 || (v84 = v11) != 0)
      {
        v18 = v84;
        if (v9)
        {
LABEL_60:
          v85 = v9;
LABEL_63:
          if (v11 | v288)
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

          v89 = [(UIInputWindowControllerHostingItem *)self inputAssistantViewController];
          [(UIInputWindowControllerHostingItem *)self _aligningInsetsForChildInputViewController:v89 includeSceneBounds:0];
          v91 = v90;
          v93 = v92;
          v95 = v94;
          v97 = v96;

          v98 = self->_assistantViewEdgeConstraints;
          v99 = [(UIInputWindowControllerHostingItem *)self hostView];
          v372[0] = MEMORY[0x1E69E9820];
          v372[1] = 3221225472;
          v372[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_11;
          v372[3] = &unk_1E7116780;
          v100 = v287;
          v373 = v100;
          v374 = self;
          v375 = v91;
          v376 = v93;
          v377 = v95;
          v378 = v97;
          v101 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v98 key:&unk_1EFE31AF8 fromView:v100 toView:v99 tracker:v5 creator:v372];
          [v101 setConstant:v93];

          v102 = self->_assistantViewEdgeConstraints;
          v103 = [(UIInputWindowControllerHostingItem *)self hostView];
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
          v105 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v102 key:&unk_1EFE31B10 fromView:v103 toView:v104 tracker:v5 creator:v366];
          [v105 setConstant:v97];

          v106 = [(UIInputWindowControllerHostingItem *)self hostView];
          LODWORD(v105) = [v18 isDescendantOfView:v106];

          if (v105)
          {
            v107 = self->_assistantViewEdgeConstraints;
            v362[0] = MEMORY[0x1E69E9820];
            v362[1] = 3221225472;
            v362[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_13;
            v362[3] = &unk_1E7116820;
            v363 = v104;
            v364 = v18;
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
            v9 = v286;
          }

          else
          {
            v9 = v286;
            if (!v286)
            {
              v111 = self->_assistantViewEdgeConstraints;
              v112 = [(UIInputWindowControllerHostingItem *)self hostView];
              v359[0] = MEMORY[0x1E69E9820];
              v359[1] = 3221225472;
              v359[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_14;
              v359[3] = &unk_1E71167D0;
              v360 = v104;
              v361 = self;
              v113 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v111 key:&unk_1EFE31B40 fromView:v360 toView:v112 tracker:v5 creator:v359];
              [v113 setConstant:0.0];
            }
          }

          LODWORD(v18) = 1;
          v11 = v285;
          v12 = v288;
LABEL_75:
          v114 = [v12 superview];
          v115 = [(UIInputWindowControllerHostingItem *)self hostView];

          if (v114 == v115)
          {
            v118 = v18;
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
            v122 = v12;
            v357 = v122;
            v358 = self;
            v123 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:inputSwitcherViewConstraints key:@"inputSwitcherView.centerX" tracker:v5 creator:v356];
            v124 = self->_inputSwitcherViewConstraints;
            v18 = [(UIInputWindowControllerHostingItem *)self hostView];
            v353[0] = MEMORY[0x1E69E9820];
            v353[1] = 3221225472;
            v353[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_16;
            v353[3] = &unk_1E71167D0;
            v354 = v122;
            v355 = self;
            v125 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v124 key:@"inputSwitcherView.top" fromView:v354 toView:v18 tracker:v5 creator:v353];

            LOBYTE(v18) = v118;
            v9 = v286;
            if (!v118)
            {
              goto LABEL_125;
            }
          }

          else
          {
            v116 = MEMORY[0x1E69977A0];
            v117 = [(NSMutableDictionary *)self->_inputSwitcherViewConstraints allValues];
            [v116 deactivateConstraints:v117];

            [(NSMutableDictionary *)self->_inputSwitcherViewConstraints removeAllObjects];
            if (!v18)
            {
LABEL_125:
              v226 = [v11 superview];
              v227 = [(UIInputWindowControllerHostingItem *)self hostView];

              if (v226 == v227)
              {
                [(NSLayoutConstraint *)self->_emptyHeightConstraint setActive:0];
                v230 = v289;
                if (v289 || (v230 = v9) != 0)
                {
                  v231 = v230;
                }

                else
                {
                  v231 = [(UIInputWindowControllerHostingItem *)self hostView];
                }

                if (v289 | v9)
                {
                  v232 = 3;
                }

                else
                {
                  v232 = 4;
                }

                v233 = [(UIInputWindowControllerHostingItem *)self owner];
                v234 = [v233 forceAccessoryViewToBottomOfHostView];

                if (v234)
                {
                  v235 = [(UIInputWindowControllerHostingItem *)self hostView];

                  v232 = 4;
                  v231 = v235;
                }

                accessoryViewEdgeConstraints = self->_accessoryViewEdgeConstraints;
                if (accessoryViewEdgeConstraints)
                {
                  if ([(NSMutableDictionary *)accessoryViewEdgeConstraints count])
                  {
                    v237 = [(UIInputWindowControllerHostingItem *)self owner];
                    v238 = [v237 isTransitioningBetweenKeyboardStates];

                    if (v238)
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

                v241 = [(UIInputWindowControllerHostingItem *)self inputAccessoryViewController];
                [(UIInputWindowControllerHostingItem *)self _aligningInsetsForChildInputViewController:v241 includeSceneBounds:1];
                v243 = v242;
                v245 = v244;
                v247 = v246;
                v249 = v248;

                v250 = self->_accessoryViewEdgeConstraints;
                v251 = [(UIInputWindowControllerHostingItem *)self hostView];
                v303[0] = MEMORY[0x1E69E9820];
                v303[1] = 3221225472;
                v303[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_32;
                v303[3] = &unk_1E7116780;
                v252 = v11;
                v304 = v252;
                v305 = self;
                v306 = v243;
                v307 = v245;
                v308 = v247;
                v309 = v249;
                v253 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v250 key:&unk_1EFE31AF8 fromView:v252 toView:v251 tracker:v5 creator:v303];
                [v253 setConstant:v245];

                v254 = self->_accessoryViewEdgeConstraints;
                v255 = [(UIInputWindowControllerHostingItem *)self hostView];
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
                v257 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v254 key:&unk_1EFE31B10 fromView:v255 toView:v256 tracker:v5 creator:v297];
                [v257 setConstant:v249];

                v258 = self->_accessoryViewEdgeConstraints;
                v259 = [(UIInputWindowControllerHostingItem *)self hostView];
                v294[0] = MEMORY[0x1E69E9820];
                v294[1] = 3221225472;
                v294[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_34;
                v294[3] = &unk_1E71167D0;
                v260 = v256;
                v295 = v260;
                v296 = self;
                v261 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v258 key:&unk_1EFE31B28 fromView:v260 toView:v259 tracker:v5 creator:v294];
                [v261 setConstant:v243];

                v262 = [(UIInputWindowControllerHostingItem *)self hostView];
                LODWORD(v258) = [v231 isDescendantOfView:v262];

                if (v258)
                {
                  v263 = self->_accessoryViewEdgeConstraints;
                  v290[0] = MEMORY[0x1E69E9820];
                  v290[1] = 3221225472;
                  v290[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_35;
                  v290[3] = &unk_1E7116820;
                  v291 = v260;
                  v292 = v231;
                  v293 = v232;
                  v264 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v263 key:&unk_1EFE31B40 fromView:v291 toView:v292 tracker:v5 creator:v290];
                  [v264 setConstant:v247];
                }

                v265 = self->_inputAccessoryBackdropView;
                v266 = [(UIInputWindowControllerHostingItem *)self hostView];
                v267 = [(UIView *)v265 isDescendantOfView:v266];

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
                    v273 = [(NSMutableDictionary *)self->_accessoryBackdropViewEdgeConstraints allValues];
                    [v272 deactivateConstraints:v273];

                    [(NSMutableDictionary *)self->_accessoryBackdropViewEdgeConstraints removeAllObjects];
                  }
                }

                [*(v269 + 1952) activateConstraints:v5];
                v11 = v285;
                v228 = v287;
                v12 = v288;
              }

              else
              {
                v228 = v287;
                if ([(NSMutableDictionary *)self->_accessoryViewEdgeConstraints count])
                {
                  [(UIInputWindowControllerHostingItem *)self clearInputAccessoryViewEdgeConstraints];
                }

                [MEMORY[0x1E69977A0] activateConstraints:v5];
                if ((v18 & 1) == 0)
                {
                  v229 = [(UIInputWindowControllerHostingItem *)self container];
                  -[NSLayoutConstraint setActive:](self->_emptyHeightConstraint, "setActive:", [v229 useLayoutHostingItem] ^ 1);
                }
              }

              [(UIInputWindowControllerHostingItem *)self updateConstraintInsets];
              v274 = [(UIInputWindowControllerHostingItem *)self placement];
              [(UIInputWindowControllerHostingItem *)self updateVisibilityConstraintsForPlacement:v274];

              goto LABEL_153;
            }
          }

          v126 = self->_inputBackdropView;
          v127 = [(UIInputWindowControllerHostingItem *)self hostView];
          v128 = [(UIView *)v126 isDescendantOfView:v127];

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
            v132 = [(UIInputWindowControllerHostingItem *)self hostView];
            v133 = [(UIView *)v131 isDescendantOfView:v132];

            if (v133)
            {
              v283 = v126;
              v280 = v18;
              v134 = v9;
              v135 = self->_inputBackdropBackgroundViewEdgeConstraints;
              v136 = [(UIInputWindowControllerHostingItem *)self hostView];
              v351[0] = MEMORY[0x1E69E9820];
              v351[1] = 3221225472;
              v351[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_17;
              v351[3] = &unk_1E71167D0;
              v351[4] = self;
              v137 = v131;
              v352 = v137;
              v138 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v135 key:&unk_1EFE31AF8 fromView:v136 toView:v137 tracker:v5 creator:v351];

              v139 = self->_inputBackdropBackgroundViewEdgeConstraints;
              v140 = [(UIInputWindowControllerHostingItem *)self hostView];
              v348[0] = MEMORY[0x1E69E9820];
              v348[1] = 3221225472;
              v348[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_18;
              v348[3] = &unk_1E71167D0;
              v141 = v137;
              v142 = v11;
              v143 = v141;
              v349 = v141;
              v350 = self;
              v144 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v139 key:&unk_1EFE31B10 fromView:v141 toView:v140 tracker:v5 creator:v348];

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
                v152 = [(UIInputWindowControllerHostingItem *)self hostView];
                v343[0] = MEMORY[0x1E69E9820];
                v343[1] = 3221225472;
                v343[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_20;
                v343[3] = &unk_1E71167D0;
                v343[4] = self;
                v344 = v143;
                v153 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v145 key:&unk_1EFE31B28 fromView:v152 toView:v344 tracker:v5 creator:v343];

                v147 = v344;
              }

              v154 = self->_inputBackdropBackgroundViewEdgeConstraints;
              v155 = [(UIInputWindowControllerHostingItem *)self hostView];
              v340[0] = MEMORY[0x1E69E9820];
              v340[1] = 3221225472;
              v340[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_21;
              v340[3] = &unk_1E71167D0;
              v341 = v143;
              v342 = self;
              v156 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v154 key:&unk_1EFE31B40 fromView:v341 toView:v155 tracker:v5 creator:v340];

              v9 = v134;
              v126 = v283;
              v11 = v285;
              LOBYTE(v18) = v280;
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

            v12 = v288;
          }

          else
          {
            if ([(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints count])
            {
              v148 = MEMORY[0x1E69977A0];
              v149 = [(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints allValues];
              [v148 deactivateConstraints:v149];

              [(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints removeAllObjects];
            }

            if ([(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints count])
            {
              v150 = MEMORY[0x1E69977A0];
              v151 = [(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints allValues];
              [v150 deactivateConstraints:v151];

              [(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints removeAllObjects];
            }
          }

          inputCombinedBackdropView = self->_inputCombinedBackdropView;
          v161 = [(UIInputWindowControllerHostingItem *)self ownerView];
          LODWORD(inputCombinedBackdropView) = [(UIView *)inputCombinedBackdropView isDescendantOfView:v161];

          inputCombinedBackdropViewEdgeConstraints = self->_inputCombinedBackdropViewEdgeConstraints;
          if (inputCombinedBackdropView)
          {
            v281 = v18;
            if (!inputCombinedBackdropViewEdgeConstraints)
            {
              v163 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
              v164 = self->_inputCombinedBackdropViewEdgeConstraints;
              self->_inputCombinedBackdropViewEdgeConstraints = v163;
            }

            v165 = [(UIInputWindowControllerHostingItem *)self applicator];
            v166 = [v165 backdropContainer];
            v167 = v166;
            if (v166)
            {
              v168 = v166;
            }

            else
            {
              v168 = [(UIInputWindowControllerHostingItem *)self ownerView];
            }

            v173 = self->_inputCombinedBackdropView;
            v174 = self->_inputCombinedBackdropViewEdgeConstraints;
            v337[0] = MEMORY[0x1E69E9820];
            v337[1] = 3221225472;
            v337[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_22;
            v337[3] = &unk_1E71167D0;
            v175 = v173;
            v338 = v175;
            v176 = v168;
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

            if (v9)
            {
              v190 = [v9 superview];

              if (v190)
              {
                v191 = [(UIInputWindowControllerHostingItem *)self applicator];
                v192 = [v191 backdropContainer];
                v193 = v192;
                if (v192)
                {
                  v194 = v192;
                }

                else
                {
                  v194 = [(UIInputWindowControllerHostingItem *)self hostView];
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
                v424[2] = v194;
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
                v205 = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView fullBackdropLayoutGuide];
                v322[0] = MEMORY[0x1E69E9820];
                v322[1] = 3221225472;
                v322[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_26;
                v322[3] = &unk_1E71167D0;
                v322[4] = self;
                v206 = v194;
                v323 = v206;
                v207 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v204 key:&unk_1EFE31B28 fromItem:v205 toItem:v206 tracker:v5 creator:v322];
                [v207 setConstant:0.0];

                v208 = self->_backdropInnerGuideConstraints;
                v209 = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView fullBackdropLayoutGuide];
                v320[0] = MEMORY[0x1E69E9820];
                v320[1] = 3221225472;
                v320[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_27;
                v320[3] = &unk_1E71167D0;
                v320[4] = self;
                v210 = v206;
                v321 = v210;
                v211 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v208 key:&unk_1EFE31AF8 fromItem:v209 toItem:v210 tracker:v5 creator:v320];
                [v211 setConstant:0.0];

                v212 = self->_backdropInnerGuideConstraints;
                v213 = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView fullBackdropLayoutGuide];
                v317[0] = MEMORY[0x1E69E9820];
                v317[1] = 3221225472;
                v317[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_28;
                v317[3] = &unk_1E71167D0;
                v214 = v210;
                v318 = v214;
                v319 = self;
                v215 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v212 key:&unk_1EFE31B40 fromItem:v214 toItem:v213 tracker:v5 creator:v317];
                [v215 setConstant:0.0];

                v216 = self->_backdropInnerGuideConstraints;
                v217 = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView fullBackdropLayoutGuide];
                v314[0] = MEMORY[0x1E69E9820];
                v314[1] = 3221225472;
                v314[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_29;
                v314[3] = &unk_1E71167D0;
                v218 = v214;
                v315 = v218;
                v316 = self;
                v219 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v216 key:&unk_1EFE31B10 fromItem:v218 toItem:v217 tracker:v5 creator:v314];
                [v219 setConstant:0.0];

                v220 = self->_backdropInnerGuideConstraints;
                v221 = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView assistantLayoutGuide];
                v313[0] = MEMORY[0x1E69E9820];
                v313[1] = 3221225472;
                v313[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_30;
                v313[3] = &unk_1E71167F8;
                v313[4] = self;
                v222 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v220 key:@"inputBackdropGuides.assistantTop" fromItem:v221 toItem:v218 tracker:v5 creator:v313];
                [v222 setConstant:0.0];

                v223 = self->_backdropInnerGuideConstraints;
                v224 = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView assistantLayoutGuide];
                v310[0] = MEMORY[0x1E69E9820];
                v310[1] = 3221225472;
                v310[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_31;
                v310[3] = &unk_1E71167D0;
                v311 = v286;
                v312 = self;
                v225 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v223 key:@"inputBackdropGuides.assistantBottom" fromItem:v311 toItem:v224 tracker:v5 creator:v310];
                [v225 setConstant:0.0];

                v9 = v286;
                v126 = v284;
              }
            }

            v11 = v285;
            v12 = v288;
            LOBYTE(v18) = v281;
          }

          else
          {
            if ([(NSMutableDictionary *)inputCombinedBackdropViewEdgeConstraints count])
            {
              v169 = MEMORY[0x1E69977A0];
              v170 = [(NSMutableDictionary *)self->_inputCombinedBackdropViewEdgeConstraints allValues];
              [v169 deactivateConstraints:v170];

              [(NSMutableDictionary *)self->_inputCombinedBackdropViewEdgeConstraints removeAllObjects];
            }

            if ([(NSMutableDictionary *)self->_backdropInnerGuideConstraints count])
            {
              [(NSMutableDictionary *)self->_backdropInnerGuideConstraints removeObjectForKey:@"items"];
              v171 = MEMORY[0x1E69977A0];
              v172 = [(NSMutableDictionary *)self->_backdropInnerGuideConstraints allValues];
              [v171 deactivateConstraints:v172];

              [(NSMutableDictionary *)self->_backdropInnerGuideConstraints removeAllObjects];
            }
          }

          goto LABEL_125;
        }
      }

      else
      {
        v18 = [(UIInputWindowControllerHostingItem *)self hostView];

        if (v9)
        {
          goto LABEL_60;
        }
      }

      v85 = [(UIInputWindowControllerHostingItem *)self hostView];

      goto LABEL_63;
    }

    [(NSLayoutConstraint *)self->_emptyHeightConstraint setActive:0];
    v279 = v18;
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

    if (v12)
    {
      v20 = 0;
      v19 = 0;
      v21 = v12;
    }

    else
    {
      if (!v11)
      {
        v18 = [(UIInputWindowControllerHostingItem *)self hostView];

        v19 = 0;
        v20 = 0;
LABEL_23:
        v289 = v19;
        if (v11)
        {
          v22 = 1;
        }

        else
        {
          v22 = v20;
        }

        v23 = 3;
        if (v12)
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

        v27 = [(UIInputWindowControllerHostingItem *)self inputViewController];
        [(UIInputWindowControllerHostingItem *)self _aligningInsetsForChildInputViewController:v27 includeSceneBounds:0];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v36 = self->_inputViewEdgeConstraints;
        v37 = [(UIInputWindowControllerHostingItem *)self hostView];
        v416[0] = MEMORY[0x1E69E9820];
        v416[1] = 3221225472;
        v416[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke;
        v416[3] = &unk_1E7116780;
        v38 = v286;
        v417 = v38;
        v418 = self;
        v419 = v29;
        v420 = v31;
        v421 = v33;
        v422 = v35;
        v39 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v36 key:&unk_1EFE31AF8 fromView:v38 toView:v37 tracker:v5 creator:v416];
        [v39 setConstant:v31];

        v40 = self->_inputViewEdgeConstraints;
        v41 = [(UIInputWindowControllerHostingItem *)self hostView];
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
        v43 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v40 key:&unk_1EFE31B10 fromView:v41 toView:v42 tracker:v5 creator:v410];
        [v43 setConstant:v35];

        v44 = [(UIInputWindowControllerHostingItem *)self hostView];
        LODWORD(v43) = [v18 isDescendantOfView:v44];

        v282 = 0;
        if (v43)
        {
          v282 = v18 == v289;
          v45 = self->_inputViewEdgeConstraints;
          v402[0] = MEMORY[0x1E69E9820];
          v402[1] = 3221225472;
          v402[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_3;
          v402[3] = &unk_1E71167A8;
          v403 = v42;
          v404 = v18;
          v405 = v24;
          v406 = v29;
          v407 = v31;
          v408 = v33;
          v409 = v35;
          v46 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v45 key:&unk_1EFE31B28 fromView:v403 toView:v404 tracker:v5 creator:v402];
          [v46 setConstant:v29];
        }

        v47 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
        if ([v47 isCustomInputView])
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
        v50 = [(UIInputWindowControllerHostingItem *)self hostView];
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
        v51 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v49 key:&unk_1EFE31B40 fromView:v397 toView:v50 tracker:v5 creator:v396];
        [v51 setConstant:fabs(v33)];

LABEL_39:
        v52 = [(UIInputWindowControllerHostingItem *)self dockView];
        v53 = [v52 superview];
        v54 = [(UIInputWindowControllerHostingItem *)self hostView];
        v55 = v54;
        if (v53 == v54)
        {
          v56 = [(UIInputWindowControllerHostingItem *)self _shouldShowInputDockView];

          if (v56)
          {
            inputDockViewEdgeConstraints = self->_inputDockViewEdgeConstraints;
            if (!inputDockViewEdgeConstraints)
            {
              v58 = objc_alloc_init(MEMORY[0x1E695DF90]);
              v59 = self->_inputDockViewEdgeConstraints;
              self->_inputDockViewEdgeConstraints = v58;

              inputDockViewEdgeConstraints = self->_inputDockViewEdgeConstraints;
            }

            v60 = [(UIInputWindowControllerHostingItem *)self hostView];
            v393[0] = MEMORY[0x1E69E9820];
            v393[1] = 3221225472;
            v393[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_5;
            v393[3] = &unk_1E71167D0;
            v61 = v52;
            v394 = v61;
            v395 = self;
            v62 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:inputDockViewEdgeConstraints key:&unk_1EFE31AF8 fromView:v61 toView:v60 tracker:v5 creator:v393];
            [v62 setConstant:0.0];

            v63 = self->_inputDockViewEdgeConstraints;
            v64 = [(UIInputWindowControllerHostingItem *)self hostView];
            v390[0] = MEMORY[0x1E69E9820];
            v390[1] = 3221225472;
            v390[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_6;
            v390[3] = &unk_1E71167D0;
            v65 = v61;
            v391 = v65;
            v392 = self;
            v66 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v63 key:&unk_1EFE31B10 fromView:v65 toView:v64 tracker:v5 creator:v390];
            [v66 setConstant:0.0];

            v67 = [v42 superview];
            v68 = [(UIInputWindowControllerHostingItem *)self hostView];

            if (v67 == v68)
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
            v80 = [(UIInputWindowControllerHostingItem *)self hostView];
            v379[0] = MEMORY[0x1E69E9820];
            v379[1] = 3221225472;
            v379[2] = __59__UIInputWindowControllerHostingItem_updateViewConstraints__block_invoke_10;
            v379[3] = &unk_1E71167D0;
            v380 = v65;
            v381 = self;
            v81 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v79 key:&unk_1EFE31B40 fromView:v380 toView:v80 tracker:v5 creator:v379];

            v9 = v286;
            goto LABEL_53;
          }
        }

        else
        {
        }

        v9 = v286;
        if ([(NSMutableDictionary *)self->_inputDockViewEdgeConstraints count])
        {
          v75 = MEMORY[0x1E69977A0];
          v76 = [(NSMutableDictionary *)self->_inputDockViewEdgeConstraints allValues];
          [v75 deactivateConstraints:v76];

          [(NSMutableDictionary *)self->_inputDockViewEdgeConstraints removeAllObjects];
        }

LABEL_53:

        v11 = v285;
        v13 = v287;
        v12 = v288;
        LODWORD(v18) = v279;
        goto LABEL_54;
      }

      v20 = 0;
      v19 = 0;
      v21 = v11;
    }

LABEL_22:
    v18 = v21;
    goto LABEL_23;
  }
}

- (UIView)inputAccessoryView
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:101])
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _inputAccessoryView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)useCombinedBackdrop
{
  v5 = [(UIInputWindowControllerHostingItem *)self owner];
  v6 = [v5 view];
  v7 = [v6 _inheritedRenderConfig];
  v8 = [v7 animatedBackground];
  if (v8 & 1) != 0 || (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v2 = objc_claimAutoreleasedReturnValue(), [v2 restorableRenderConfig], v3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v3, "animatedBackground")) || -[UIInputWindowControllerHostingItem animatingBackdrops](self, "animatingBackdrops"))
  {
    v9 = [(UIInputWindowControllerHostingItem *)self owner];
    v10 = [v9 expectedPlacement];
    v11 = [v10 isFloatingAssistantView] ^ 1;

    if (v8)
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
  v3 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  if ([v3 isCustomInputView])
  {
    v4 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    if ([v4 shouldShowDockView])
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
  v3 = [(UIInputWindowControllerHostingItem *)self owner];
  v4 = [v3 inputViewSet];
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v6 = [WeakRetained host:self isForPurpose:100];
  v7 = objc_loadWeakRetained(&self->_container);
  v8 = [v7 host:self isForPurpose:101];
  v9 = objc_loadWeakRetained(&self->_container);
  v10 = +[UIInputViewSet inputSetWithOriginalInputSet:duplicateInputView:duplicateInputAccessoryView:duplicateInputAssistantView:](UIInputViewSet, "inputSetWithOriginalInputSet:duplicateInputView:duplicateInputAccessoryView:duplicateInputAssistantView:", v4, v6, v8, [v9 host:self isForPurpose:102]);

  return v10;
}

- (UIView)containerView
{
  v2 = [(UIInputWindowControllerHostingItem *)self owner];
  v3 = [v2 view];

  return v3;
}

- (id)inputAssistantViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:102])
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _inputAssistantViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)inputViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:100])
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _inputViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIView)inputSwitcherView
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:103])
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _inputSwitcherView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIView)inputAssistantView
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:102])
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _inputAssistantView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIView)inputView
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:100])
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _inputView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIEdgeInsets)inputViewPadding
{
  v2 = [(UIInputWindowControllerHostingItem *)self container];
  [v2 _inputViewPadding];
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
  v3 = [(UIInputWindowControllerHostingItem *)self controllerDelegate];
  [v3 controllerDidLayoutSubviews:self];

  v4 = [(UIInputWindowControllerHostingItem *)self placement];
  v5 = [v4 delegate];

  if (v5 == self)
  {
    v6 = [(UIInputWindowControllerHostingItem *)self placement];
    [v6 checkSizeForOwner:self];
  }
}

- (CGRect)visibleFrame
{
  v3 = [(UIInputWindowControllerHostingItem *)self placement];
  v4 = v3;
  if (v3 && ([v3 isVisible] & 1) == 0)
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
    v15 = [(UIInputWindowControllerHostingItem *)self hostView];
    [v15 frame];
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
  v3 = [(UIInputViewSetPlacement *)self->_cachedPlacement delegate];

  if (v3 == self)
  {
    [(UIInputViewSetPlacement *)self->_cachedPlacement setDelegate:0];
  }

  v4 = [(UIInputWindowControllerHostingItem *)self placement];
  cachedPlacement = self->_cachedPlacement;
  self->_cachedPlacement = v4;

  v6 = self->_cachedPlacement;

  [(UIInputViewSetPlacement *)v6 setDelegate:self];
}

- (void)refreshApplicator
{
  v7 = [(UIInputWindowControllerHostingItem *)self placement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    inputBackdropView = self->_inputBackdropView;
    if (inputBackdropView)
    {
      if (![(UIKBInputBackdropView *)inputBackdropView _isTransitioning])
      {
        if ([v7 isFloating])
        {
          +[UIKeyboardImpl floatingNormalizedPersistentOffset];
        }

        else
        {
          +[UIKeyboardImpl normalizedPersistentOffset];
        }

        [v7 setOffset:?];
      }
    }
  }

  v4 = self->_applicator;
  v5 = [(UIInputWindowControllerHostingItem *)self placement];
  v6 = [v5 applicatorInfoForOwner:self];
  [(UIInputViewSetPlacementApplicator *)v4 applyChanges:v6];
}

- (CGRect)notificationsFrame
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 visualModeManager];
  v5 = [v4 windowingModeEnabled];

  if (v5)
  {
    [(UIInputWindowControllerHostingItem *)self fullScreenFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(UIInputWindowControllerHostingItem *)self hostView];
    v15 = [v14 window];
    if ([v15 _isHostedInAnotherProcess])
    {
      v16 = [(UIInputWindowControllerHostingItem *)self hostView];
      v17 = [v16 window];
      v18 = [v17 _isTextEffectsWindowNotificationOwner];

      if (v18)
      {
        v19 = [(UIInputWindowControllerHostingItem *)self hostView];
        [v19 frame];
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
          v28 = [(UIInputWindowControllerHostingItem *)self hostView];
          [v28 frame];
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
  v3 = [(UIInputWindowControllerHostingItem *)self owner];
  v4 = [v3 _window];
  v5 = [v4 windowScene];
  v6 = [v5 _isKeyWindowScene];

  if (+[UIKeyboardImpl rivenInstalled])
  {
    v7 = [(UIKeyboardMotionSupport *)self->_cachedSplitKeyboardController masterController];
    v8 = v7;
    if (v7 == self)
    {

      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    v9 = [(UIInputWindowControllerHostingItem *)self _isForSplitKeyboard];

    if (v9)
    {
      [(UIInputWindowControllerHostingItem *)self configureSplitKeyboardController:1];
    }
  }

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ([(UIInputWindowControllerHostingItem *)self _isForDragToDismiss])
  {
    [(UIInputWindowControllerHostingItem *)self configureScrollDismissController:1];
  }

LABEL_9:
  v10 = [(UIInputWindowControllerHostingItem *)self owner];
  v11 = [v10 placement];
  if ([v11 isFloating])
  {
LABEL_16:

    goto LABEL_17;
  }

  v12 = [(UIInputWindowControllerHostingItem *)self placement];
  if (([v12 isFloatingAssistantView] & 1) == 0)
  {

    goto LABEL_16;
  }

  v13 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v14 = [v13 assistantViewController];
  v15 = [v14 _usesCustomBackground];

  if (v15)
  {
LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  if (!+[UIKeyboard isInputSystemUI])
  {
    v19 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v20 = [v19 visualModeManager];
    v21 = [v20 shouldShowWithinAppWindow];

    v22 = [(UIInputWindowControllerHostingItem *)self owner];
    v23 = [v22 _window];
    v24 = [v23 _isAlwaysKeyboardWindow];
    v25 = v24;
    if (v21)
    {
      v26 = (v24 ^ 1) & v6;

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
  v17 = [v16 keyboardActive];

  if ((v17 & 1) == 0)
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
  v3 = [(UIInputViewSetPlacement *)self->_cachedPlacement delegate];

  if (v3 == self)
  {
    [(UIInputViewSetPlacement *)self->_cachedPlacement setDelegate:0];
  }

  cachedPlacement = self->_cachedPlacement;
  self->_cachedPlacement = 0;
}

- (void)updateInputBackdropView
{
  v3 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v4 = [v3 inputView];
  if (!v4 || ([v3 isInputViewPlaceholder] & 1) != 0)
  {
    v24 = 0;
    goto LABEL_4;
  }

  v6 = [(UIInputWindowControllerHostingItem *)self useCombinedBackdrop];

  if (!v6)
  {
    v7 = [(UIInputWindowControllerHostingItem *)self _inputBackdropView];

    v8 = [v3 inputView];
    [v8 frame];
    v10 = v9;
    v12 = v11;

    v13 = [(UIInputWindowControllerHostingItem *)self hostView];
    [v13 frame];
    v15 = v14;

    v16 = [(UIInputWindowControllerHostingItem *)self hostView];
    [v16 frame];
    v18 = v17;

    v19 = [(UIInputWindowControllerHostingItem *)self _inputBackdropView];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = [[UIKBInputBackdropView alloc] initWithFrame:v15, v10, v18, v12];
    }

    v24 = v21;

    [(UIView *)v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    if (v7)
    {
      goto LABEL_5;
    }

    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v22 = [v4 view];
    v23 = [v22 _inheritedRenderConfig];
    [(UIKBInputBackdropView *)v24 _setRenderConfig:v23];

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
  v3 = [(UIInputWindowControllerHostingItem *)self owner];
  if ([v3 shouldNotifyRemoteKeyboards])
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
  v2 = [(UIInputWindowControllerHostingItem *)self inputViewController];
  v3 = [v2 animatableElement];

  return v3;
}

- (id)animatedAssistantView
{
  if ([(UIInputWindowControllerHostingItem *)self assistantHostCanAnimate]&& (inputAssistantHostView = self->_inputAssistantHostView) != 0)
  {
    v4 = inputAssistantHostView;
  }

  else
  {
    v5 = [(UIInputWindowControllerHostingItem *)self inputAssistantViewController];
    v4 = [v5 animatableElement];
  }

  return v4;
}

- (void)checkPlaceholdersForRemoteKeyboards
{
  v2 = [(UIInputWindowControllerHostingItem *)self owner];
  [v2 checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:0 layoutSubviews:0];
}

- (void)updateEmptyHeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if ([WeakRetained host:self isForPurpose:0])
  {
    v3 = [(UIInputWindowControllerHostingItem *)self owner];
    +[UIKeyboardImpl sizeForInterfaceOrientation:](UIKeyboardImpl, "sizeForInterfaceOrientation:", [v3 keyboardOrientation]);
    [(NSLayoutConstraint *)self->_emptyHeightConstraint setConstant:v4];
  }

  else
  {
    [(NSLayoutConstraint *)self->_emptyHeightConstraint setConstant:0.0];
  }
}

- (void)_updateBackdropViews
{
  v32 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v3 = +[UIKeyboardImpl activeInstance];
  if (([v3 splitTransitionInProgress] & 1) != 0 || -[UIKBInputBackdropView _isTransitioning](self->_inputBackdropView, "_isTransitioning") || (objc_msgSend(v32, "isEmpty") & 1) != 0 || !self->_inputBackdropView && !self->_inputAccessoryBackdropView)
  {
    goto LABEL_15;
  }

  if (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || ([v3 centerFilled])
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 view];
    [v5 layoutIfNeeded];

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

  v13 = [v32 isSplit];
  v14 = [(UIInputWindowControllerHostingItem *)self owner];
  v15 = [v14 view];
  [v15 layoutIfNeeded];

  if (!v13)
  {
    goto LABEL_9;
  }

  [v32 _leftInputViewSetFrame];
  Width = CGRectGetWidth(v34);
  [v32 inputViewBounds];
  v17 = CGRectGetWidth(v35);
  [v32 _rightInputViewSetFrame];
  v18 = v17 - CGRectGetWidth(v36) - Width;
  [v32 inputViewSplitHeight];
  v20 = v19;
  [(NSLayoutConstraint *)self->_assistantViewHeightConstraint constant];
  v22 = v21;
  [v32 inputAccessoryViewBounds];
  Height = CGRectGetHeight(v37);
  [v32 inputViewBounds];
  v24 = CGRectGetWidth(v38) - Width;
  v25 = [v32 inputAccessoryView];

  if (v25)
  {
    [v32 inputAccessoryViewBounds];
    [(UIKBInputBackdropView *)self->_inputAccessoryBackdropView layoutInputBackdropToSplitWithLeftViewRect:3 andRightViewRect:0.0 innerCorners:0.0, Width, Height, Width + v18, 0.0, CGRectGetWidth(v39) - Width - v18, Height];
    v26 = 12;
  }

  else
  {
    v26 = -1;
  }

  v27 = [v32 inputAssistantView];

  if (v27)
  {
    v20 = v20 + v22;
  }

  v28 = [v32 inputSwitcherView];

  if (v28)
  {
    v29 = [v32 inputSwitcherView];
    [v29 bounds];
    v31 = v30;

    v20 = v20 + v31;
  }

  [(UIKBInputBackdropView *)self->_inputBackdropView layoutInputBackdropToSplitWithLeftViewRect:v26 andRightViewRect:0.0 innerCorners:0.0, Width, v20, Width + v18, 0.0, v24 - v18, v20];
LABEL_15:
}

- (void)updateInputAccessoryBackdropView
{
  v3 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v4 = [v3 inputAccessoryView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 inputAccessoryView];
    [v6 backgroundEdgeInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v3 inputAccessoryView];
    [v15 frame];
    v17 = v16;
    v19 = v18;

    v20 = [(UIInputWindowControllerHostingItem *)self hostView];
    [v20 frame];
    v22 = v21;

    v23 = [(UIInputWindowControllerHostingItem *)self hostView];
    [v23 frame];
    v25 = v24;

    v26 = [(UIInputWindowControllerHostingItem *)self _inputAccessoryBackdropView];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = [[UIKBInputBackdropView alloc] initWithFrame:v10 + v22, v8 + v17, v25 - (v14 + v10), v19 - (v8 + v12)];
    }

    v32 = v28;

    [(UIView *)v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = [(UIInputWindowControllerHostingItem *)self owner];
    v30 = [v29 view];
    v31 = [v30 _inheritedRenderConfig];
    [(UIKBInputBackdropView *)v32 _setRenderConfig:v31];

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
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _inputAccessoryViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
  v4 = [(NSMutableDictionary *)self->_accessoryViewEdgeConstraints allValues];
  [v3 deactivateConstraints:v4];

  [(NSMutableDictionary *)self->_accessoryViewEdgeConstraints removeAllObjects];
  if ([(NSMutableDictionary *)self->_accessoryBackdropViewEdgeConstraints count])
  {
    v5 = MEMORY[0x1E69977A0];
    v6 = [(NSMutableDictionary *)self->_accessoryBackdropViewEdgeConstraints allValues];
    [v5 deactivateConstraints:v6];

    accessoryBackdropViewEdgeConstraints = self->_accessoryBackdropViewEdgeConstraints;

    [(NSMutableDictionary *)accessoryBackdropViewEdgeConstraints removeAllObjects];
  }
}

- (void)updateCombinedBackdropView
{
  v3 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v4 = [(UIInputWindowControllerHostingItem *)self owner];
  v5 = [v4 view];
  v6 = [v5 _inheritedRenderConfig];

  v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v8 = [v7 restorableRenderConfig];

  if (v8)
  {
    v9 = v8;

    v6 = v9;
  }

  v10 = [v3 inputView];
  if (!v10 || ([v3 isInputViewPlaceholder] & 1) != 0)
  {

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v12 = [v6 animatedBackground];

  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = [(UIInputWindowControllerHostingItem *)self _inputCombinedBackdropView];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
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
    v17 = [(UIInputWindowControllerHostingItem *)self owner];
    v18 = [v17 updateGuideBackdropRenderConfig:v6 animated:0];

    [(_UIKBLightEffectsBackground *)v20 setClientBackdropInUse:v18];
    [(_UIKBLightEffectsBackground *)v20 _setRenderConfig:v6];
  }

  v11 = v20;
LABEL_7:
  v19 = v11;
  [(UIInputWindowControllerHostingItem *)self setCombinedBackdropView:v11];
}

- (void)updateInputAssistantHostViewVisibility
{
  v3 = [(UIInputWindowControllerHostingItem *)self placement];
  -[TUIInputAssistantHostView setHidden:](self->_inputAssistantHostView, "setHidden:", [v3 isFloatingAssistantView] ^ 1);
}

- (UIInputWindowControllerHostingItem)initWithContainer:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = UIInputWindowControllerHostingItem;
  v5 = [(UIInputWindowControllerHostingItem *)&v22 init];
  if (v5)
  {
    v6 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    [v6 registerController:v5];

    objc_storeWeak(&v5->_container, v4);
    v7 = [(UIInputWindowControllerHostingItem *)v5 createItemHostView];
    hostView = v5->_hostView;
    v5->_hostView = v7;

    v9 = [MEMORY[0x1E69977A0] constraintWithItem:v5->_hostView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
    emptyHeightConstraint = v5->_emptyHeightConstraint;
    v5->_emptyHeightConstraint = v9;

    [(NSLayoutConstraint *)v5->_emptyHeightConstraint setIdentifier:@"emptyHeight"];
    WeakRetained = objc_loadWeakRetained(&v5->_container);
    -[NSLayoutConstraint setActive:](v5->_emptyHeightConstraint, "setActive:", [WeakRetained useLayoutHostingItem] ^ 1);

    v12 = [(UIInputWindowControllerHostingItem *)v5 owner];
    v13 = [v12 placement];
    if ([v13 isFloatingAssistantView])
    {
      v14 = [(UIInputWindowControllerHostingItem *)v5 owner];
      v15 = [v14 _window];
      v16 = [v15 _isAlwaysKeyboardWindow];

      if ((v16 & 1) == 0)
      {
        v17 = [(UIInputWindowControllerHostingItem *)v5 owner];
        v18 = [v17 view];
        v19 = [(UIInputWindowControllerHostingItem *)v5 hostView];
        [v18 insertSubview:v19 atIndex:0];
LABEL_7:

        [(UIInputWindowControllerHostingItem *)v5 updateSupportsDockViewController];
        v20 = [MEMORY[0x1E696AD88] defaultCenter];
        [v20 addObserver:v5 selector:sel_inputModeDidChange_ name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];

        goto LABEL_8;
      }
    }

    else
    {
    }

    v17 = [(UIInputWindowControllerHostingItem *)v5 owner];
    v18 = [v17 view];
    v19 = [(UIInputWindowControllerHostingItem *)v5 hostView];
    [v18 addSubview:v19];
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

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];

  v5.receiver = self;
  v5.super_class = UIInputWindowControllerHostingItem;
  [(UIInputWindowControllerHostingItem *)&v5 dealloc];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UIInputWindowControllerHostingItem *)self owner];
  v5 = [(UIInputWindowControllerHostingItem *)self placement];
  v6 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v7 = [v3 stringWithFormat:@"<%@: %p owner: %@ placement: %@ IVS: %@>", self, self, v4, v5, v6];

  return v7;
}

- (void)setPlacement:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  v5 = [WeakRetained host:self isForPurpose:200];

  if (v5)
  {
    v6 = [(UIInputWindowControllerHostingItem *)self owner];
    [v6 setPlacement:v7];
  }
}

- (void)setInputView:(id)a3
{
  v47[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIInputWindowControllerHostingItem *)self inputAssistantView];
  v6 = [v5 superview];
  v7 = [(UIInputWindowControllerHostingItem *)self hostView];

  v8 = [(UIInputWindowControllerHostingItem *)self hostView];
  v9 = v8;
  if (v6 == v7)
  {
    [v8 insertSubview:v4 belowSubview:v5];
  }

  else
  {
    [v8 addSubview:v4];
  }

  if (+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating") && (-[UIInputWindowControllerHostingItem owner](self, "owner"), v10 = objc_claimAutoreleasedReturnValue(), [v10 inputViewSet], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isCustomInputView"), v11, v10, v12))
  {
    v13 = [(UIInputWindowControllerHostingItem *)self floatingKeyboardMaskView];

    if (!v13)
    {
      v14 = [UIView alloc];
      v15 = [(UIView *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(UIView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
      v16 = +[UIColor blackColor];
      [(UIView *)v15 setBackgroundColor:v16];

      v17 = objc_alloc_init(UIView);
      [(UIInputWindowControllerHostingItem *)self setFloatingKeyboardMaskView:v17];

      v18 = [(UIInputWindowControllerHostingItem *)self floatingKeyboardMaskView];
      [v18 addSubview:v15];

      v19 = [(UIInputWindowControllerHostingItem *)self hostView];
      v20 = [(UIInputWindowControllerHostingItem *)self floatingKeyboardMaskView];
      [v19 addSubview:v20];

      v39 = MEMORY[0x1E69977A0];
      v45 = [(UIView *)v15 leadingAnchor];
      v46 = [(UIInputWindowControllerHostingItem *)self hostView];
      v44 = [v46 leadingAnchor];
      v43 = [v45 constraintEqualToAnchor:v44];
      v47[0] = v43;
      v41 = [(UIView *)v15 topAnchor];
      v42 = [(UIInputWindowControllerHostingItem *)self hostView];
      v40 = [v42 topAnchor];
      v38 = [v41 constraintEqualToAnchor:v40 constant:-100.0];
      v47[1] = v38;
      v37 = [(UIInputWindowControllerHostingItem *)self hostView];
      v36 = [v37 trailingAnchor];
      v21 = [(UIView *)v15 trailingAnchor];
      v22 = [v36 constraintEqualToAnchor:v21];
      v47[2] = v22;
      v23 = [(UIInputWindowControllerHostingItem *)self hostView];
      v24 = [v23 bottomAnchor];
      v25 = [(UIView *)v15 bottomAnchor];
      v26 = [v24 constraintEqualToAnchor:v25];
      v47[3] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:4];
      [v39 activateConstraints:v27];
    }

    v28 = [(UIInputWindowControllerHostingItem *)self hostView];
    v29 = [v28 maskView];

    if (!v29)
    {
      v30 = [(UIInputWindowControllerHostingItem *)self hostView];
      v31 = [(UIInputWindowControllerHostingItem *)self floatingKeyboardMaskView];
      [v30 setMaskView:v31];
    }
  }

  else
  {
    v32 = [(UIInputWindowControllerHostingItem *)self hostView];
    v33 = [v32 maskView];

    if (v33)
    {
      v34 = [(UIInputWindowControllerHostingItem *)self hostView];
      [v34 setMaskView:0];

      v35 = [(UIInputWindowControllerHostingItem *)self floatingKeyboardMaskView];
      [v35 removeFromSuperview];

      [(UIInputWindowControllerHostingItem *)self setFloatingKeyboardMaskView:0];
    }
  }
}

- (void)setInputAssistantView:(id)a3
{
  v4 = a3;
  v5 = [(UIInputWindowControllerHostingItem *)self hostView];
  [v5 addSubview:v4];

  [(UIInputWindowControllerHostingItem *)self updateInputAssistantViewLayering];
  v9 = [(UIInputWindowControllerHostingItem *)self placement];
  if ([v9 isFloatingAssistantView])
  {
    v6 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView superview];
    v7 = [(UIInputWindowControllerHostingItem *)self hostView];

    if (v6 != v7)
    {
      v8 = [(UIInputWindowControllerHostingItem *)self inputAssistantHostView];
    }
  }

  else
  {
  }
}

- (void)setInputAccessoryView:(id)a3
{
  v10 = a3;
  v4 = [(UIInputWindowControllerHostingItem *)self hostView];
  [v4 addSubview:v10];

  v5 = [(UIInputWindowControllerHostingItem *)self owner];
  v6 = [v5 placement];
  if ([v6 isFloatingAssistantView])
  {
    v7 = [(UIInputWindowControllerHostingItem *)self owner];
    v8 = [v7 _window];
    v9 = [v8 _isAlwaysKeyboardWindow];

    if (v9)
    {
      goto LABEL_6;
    }

    v5 = [(UIInputWindowControllerHostingItem *)self inputAssistantHostView];
    [v5 setInputAccessoryView:v10];
  }

  else
  {
  }

LABEL_6:
}

- (void)setInputSwitcherView:(id)a3
{
  v7 = a3;
  v4 = [(UIInputWindowControllerHostingItem *)self inputSwitcherView];

  if (v4 != v7)
  {
    v5 = [(UIInputWindowControllerHostingItem *)self inputSwitcherView];
    [v5 removeFromSuperview];

    v6 = [(UIInputWindowControllerHostingItem *)self hostView];
    [v6 addSubview:v7];
  }
}

- (TUIInputAssistantHostView)inputAssistantHostView
{
  v38[4] = *MEMORY[0x1E69E9840];
  v2 = [(UIInputWindowControllerHostingItem *)self hostView];
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
    [v2 frame];
    v6 = [v5 initWithFrame:?];
    inputAssistantHostView = self->_inputAssistantHostView;
    self->_inputAssistantHostView = v6;

    [(TUIInputAssistantHostView *)self->_inputAssistantHostView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v8 = [v2 subviews];
  v9 = [(UIInputWindowControllerHostingItem *)self inputAssistantView];
  v10 = [v8 indexOfObject:v9];

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

  [v2 insertSubview:self->_inputAssistantHostView atIndex:v12];
  v13 = self->_inputAssistantHostView;
  v14 = [v2 _inheritedRenderConfig];
  [(TUIInputAssistantHostView *)v13 _setRenderConfig:v14];

  v26 = MEMORY[0x1E69977A0];
  v31 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView leadingAnchor];
  v30 = [v2 leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v38[0] = v29;
  v28 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView trailingAnchor];
  v27 = [v2 trailingAnchor];
  v15 = [v28 constraintEqualToAnchor:v27];
  v38[1] = v15;
  v16 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView bottomAnchor];
  v17 = [v2 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  v38[2] = v18;
  v19 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView topAnchor];
  v20 = [v2 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  v38[3] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v26 activateConstraints:v22];

  [(UIInputWindowControllerHostingItem *)self setAssistantHostCanAnimate:objc_opt_respondsToSelector() & 1];
  v23 = self->_inputAssistantHostView;
  v24 = v23;

  return v23;
}

- (UIEdgeInsets)_aligningInsetsForChildInputViewController:(id)a3 includeSceneBounds:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 _alignsToContentViewController];
  if (+[_UIRemoteKeyboards enabled])
  {
    v8 = [(UIInputWindowControllerHostingItem *)self owner];
    v9 = v4 & [v8 shouldNotifyRemoteKeyboards];
  }

  else
  {
    v9 = 0;
  }

  v10 = +[UIKeyboardImpl shouldPadTopOfKeyboard];
  v11 = 0.0;
  if (!v6)
  {
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    goto LABEL_21;
  }

  v12 = v10;
  v13 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  v14 = v13;
  if (v13 == v6)
  {
  }

  else
  {
    v15 = [(UIInputWindowControllerHostingItem *)self inputAssistantViewController];

    if (v15 != v6)
    {
      v16 = [(UIInputWindowControllerHostingItem *)self inputAccessoryViewController];

      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      if (v16 == v6)
      {
        v20 = [(UIInputWindowControllerHostingItem *)self applicator];
        [v20 inputAccessoryPadding];
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

  v26 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v27 = [v26 isCustomInputView];

  if (v27)
  {
    if (+[UIKeyboard usesInputSystemUI])
    {
      v28 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      v29 = [v28 hostedCustomInputView];

      v17 = 0.0;
      v18 = 0.0;
      v19 = 0.0;
      if (v29)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v30 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
      v31 = [v30 view];
      [v31 bounds];
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

  v33 = [(UIInputWindowControllerHostingItem *)self inputAssistantViewController];

  if (v33 == v6)
  {
    v34 = [(UIInputWindowControllerHostingItem *)self applicator];
    [v34 inputAssistantPadding];
  }

  else
  {
    v34 = [(UIInputWindowControllerHostingItem *)self container];
    [v34 _inputViewPadding];
  }

  v19 = v35;
  v18 = v36;
  v17 = v37;
  v11 = v38;

LABEL_21:
  if (((v7 | v9) & 1) == 0)
  {
    goto LABEL_41;
  }

  if (!v7)
  {
    goto LABEL_30;
  }

  v39 = [v6 _primaryContentResponder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = v39;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_30;
    }

    v40 = [v39 view];
  }

  v41 = v40;

  if (v41)
  {
    v42 = [(UIInputWindowControllerHostingItem *)self hostView];
    [v41 bounds];
    [v42 convertRect:v41 fromView:?];
    v44 = v43;
    v46 = v45;

    v47 = [(UIInputWindowControllerHostingItem *)self owner];
    v48 = [v47 view];
    [v48 bounds];
    v18 = v44 - v49;

    v50 = [(UIInputWindowControllerHostingItem *)self owner];
    v51 = [v50 view];
    [v51 bounds];
    v11 = v52 + v53 - (v44 + v46);
    goto LABEL_39;
  }

LABEL_30:
  if (v9)
  {
    v54 = [(UIInputWindowControllerHostingItem *)self owner];
    if ([v54 isRotating])
    {
    }

    else
    {
      v55 = +[UIKeyboardImpl activeInstance];
      v56 = [v55 isRotating];

      if ((v56 & 1) == 0)
      {
        v57 = [(UIInputWindowControllerHostingItem *)self owner];
        v58 = [v57 _window];
        [v58 actualSceneBounds];
        v61 = v62;
LABEL_36:

        v63 = [(UIInputWindowControllerHostingItem *)self owner];
        v64 = [v63 view];
        [v64 bounds];
        v11 = v61 - (v65 + v66);

        v67 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v68 = [v67 responder];
        v41 = [v68 _responderWindow];

        v18 = 0.0;
        if (!v41)
        {
          goto LABEL_40;
        }

        v69 = [(UIInputWindowControllerHostingItem *)self inputAccessoryView];
        v70 = [v69 traitCollection];
        v71 = [v70 horizontalSizeClass];
        v72 = [v41 traitCollection];
        v73 = [v72 horizontalSizeClass];

        if (v71 == v73)
        {
          goto LABEL_40;
        }

        v74 = [(UIInputWindowControllerHostingItem *)self owner];
        v75 = [(UIInputWindowControllerHostingItem *)self inputAccessoryViewController];
        [v74 setOverrideTraitCollection:0 forChildViewController:v75];

        v50 = [(UIInputWindowControllerHostingItem *)self owner];
        v51 = [v41 traitCollection];
        v76 = +[UITraitCollection traitCollectionWithHorizontalSizeClass:](UITraitCollection, "traitCollectionWithHorizontalSizeClass:", [v51 horizontalSizeClass]);
        v77 = [(UIInputWindowControllerHostingItem *)self inputAccessoryViewController];
        [v50 setOverrideTraitCollection:v76 forChildViewController:v77];

LABEL_39:
LABEL_40:

        goto LABEL_41;
      }
    }

    v57 = [(UIInputWindowControllerHostingItem *)self owner];
    v58 = [v57 _window];
    v59 = [(UIInputWindowControllerHostingItem *)self owner];
    [v58 actualSceneBoundsForLandscape:{objc_msgSend(v59, "isViewLandscape")}];
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

- (void)disableViewSizingConstraints:(unint64_t)a3 forNewView:(id)a4
{
  v4 = a3;
  v18 = a4;
  if (v4)
  {
    inputViewHeightConstraint = self->_inputViewHeightConstraint;
    if (inputViewHeightConstraint)
    {
      v7 = [(NSLayoutConstraint *)inputViewHeightConstraint firstItem];
      if (v7 != v18)
      {

LABEL_6:
        [(NSLayoutConstraint *)self->_inputViewHeightConstraint setActive:0];
        v9 = self->_inputViewHeightConstraint;
        self->_inputViewHeightConstraint = 0;

        goto LABEL_7;
      }

      v8 = [(NSLayoutConstraint *)self->_inputViewHeightConstraint secondItem];

      if (v8)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  if ((v4 & 2) != 0)
  {
    assistantViewHeightConstraint = self->_assistantViewHeightConstraint;
    if (assistantViewHeightConstraint)
    {
      v11 = [(NSLayoutConstraint *)assistantViewHeightConstraint firstItem];
      if (v11 != v18)
      {

LABEL_12:
        [(NSLayoutConstraint *)self->_assistantViewHeightConstraint setActive:0];
        v13 = self->_assistantViewHeightConstraint;
        self->_assistantViewHeightConstraint = 0;

        goto LABEL_13;
      }

      v12 = [(NSLayoutConstraint *)self->_assistantViewHeightConstraint secondItem];

      if (v12)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  if ((v4 & 4) != 0)
  {
    accessoryViewHeightConstraint = self->_accessoryViewHeightConstraint;
    if (accessoryViewHeightConstraint)
    {
      v15 = [(NSLayoutConstraint *)accessoryViewHeightConstraint firstItem];
      if (v15 == v18)
      {
        v16 = [(NSLayoutConstraint *)self->_accessoryViewHeightConstraint secondItem];

        if (!v16)
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

- (void)updateViewSizingConstraints:(id)a3
{
  v57 = a3;
  v4 = [(UIInputWindowControllerHostingItem *)self inputView];
  v5 = [(UIInputWindowControllerHostingItem *)self inputAssistantView];
  v6 = [(UIInputWindowControllerHostingItem *)self inputAccessoryView];
  [(UIInputWindowControllerHostingItem *)self disableViewSizingConstraints:1 forNewView:v4];
  if (+[UIKeyboard usesInputSystemUI])
  {
    v7 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    if (![v7 isInputViewPlaceholder])
    {
      goto LABEL_9;
    }

    v8 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    v9 = [v8 isCustomInputView];

    if ((v9 & 1) == 0)
    {
      v10 = +[_UIKeyboardArbiterClient automaticSharedArbiterClient];
      v7 = [v10 currentUIState];

      if (v7)
      {
        v11 = [(UIInputWindowControllerHostingItem *)self owner];
        v12 = [v11 keyboardOrientation];

        v13 = [v7 orientation];
        v14 = [(UIInputWindowControllerHostingItem *)self owner];
        if ([v14 isRotating])
        {

LABEL_8:
          v15 = [v7 assistantBarVisible];
          v16 = [(UIInputWindowControllerHostingItem *)self owner];
          v17 = [(UIInputWindowControllerHostingItem *)self inputViewController];
          [v16 sizeForInputViewController:v17 inputView:v4 includeAssistantBar:v15];
          v19 = v18;
          v21 = v20;

          [v4 setFixedSize:{v19, v21}];
          goto LABEL_9;
        }

        if ((v12 - 3) < 2 != (v13 - 3) < 2)
        {
          goto LABEL_8;
        }
      }

LABEL_9:
    }
  }

  if (v4 && SubviewUsesClassicLayout(v4) && (-[UIInputWindowControllerHostingItem hostView](self, "hostView"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v4 isDescendantOfView:v22], v22, v23))
  {
    v24 = [(UIInputWindowControllerHostingItem *)self owner];
    v25 = [(UIInputWindowControllerHostingItem *)self inputViewController];
    [v24 sizeForInputViewController:v25 inputView:v4];
    v27 = v26;

    inputViewHeightConstraint = self->_inputViewHeightConstraint;
    if (inputViewHeightConstraint)
    {
      [(NSLayoutConstraint *)inputViewHeightConstraint setConstant:v27];
    }

    else
    {
      v31 = [MEMORY[0x1E69977A0] constraintWithItem:v4 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v27];
      LODWORD(v32) = 1148846080;
      [(NSLayoutConstraint *)v31 setPriority:v32];
      [(NSLayoutConstraint *)v31 setIdentifier:@"inputHeight"];
      v33 = self->_inputViewHeightConstraint;
      self->_inputViewHeightConstraint = v31;
    }

    [v57 addObject:self->_inputViewHeightConstraint];
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

  [(UIInputWindowControllerHostingItem *)self disableViewSizingConstraints:2 forNewView:v5];
  if (v5 && ([v5 isHidden] & 1) == 0 && SubviewUsesClassicLayout(v5) && (-[UIInputWindowControllerHostingItem hostView](self, "hostView"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v5, "isDescendantOfView:", v34), v34, v35))
  {
    v36 = [(UIInputWindowControllerHostingItem *)self placement];
    v37 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [v36 inputAssistantViewHeightForInputViewSet:v37];
    v39 = v38;

    assistantViewHeightConstraint = self->_assistantViewHeightConstraint;
    if (assistantViewHeightConstraint)
    {
      [(NSLayoutConstraint *)assistantViewHeightConstraint setConstant:v39];
    }

    else
    {
      v54 = [MEMORY[0x1E69977A0] constraintWithItem:v5 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v39];
      LODWORD(v55) = 1148846080;
      [(NSLayoutConstraint *)v54 setPriority:v55];
      [(NSLayoutConstraint *)v54 setIdentifier:@"assistantHeight"];
      v56 = self->_assistantViewHeightConstraint;
      self->_assistantViewHeightConstraint = v54;
    }

    [v57 addObject:self->_assistantViewHeightConstraint];
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

  [(UIInputWindowControllerHostingItem *)self disableViewSizingConstraints:4 forNewView:v6];
  [v6 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  if (v43 > 0.0 && (v44 = v43, SubviewUsesClassicLayout(v6)) && (-[UIInputWindowControllerHostingItem hostView](self, "hostView"), v45 = objc_claimAutoreleasedReturnValue(), v46 = [v6 isDescendantOfView:v45], v45, v46))
  {
    accessoryViewHeightConstraint = self->_accessoryViewHeightConstraint;
    if (accessoryViewHeightConstraint)
    {
      [(NSLayoutConstraint *)accessoryViewHeightConstraint setConstant:v44];
    }

    else
    {
      v50 = [MEMORY[0x1E69977A0] constraintWithItem:v6 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:v44];
      LODWORD(v51) = 1148846080;
      [(NSLayoutConstraint *)v50 setPriority:v51];
      [(NSLayoutConstraint *)v50 setIdentifier:@"accessoryHeight"];
      v52 = self->_accessoryViewHeightConstraint;
      self->_accessoryViewHeightConstraint = v50;
      v53 = v50;

      [v57 addObject:self->_accessoryViewHeightConstraint];
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
  v4 = [(NSMutableDictionary *)self->_inputViewEdgeConstraints allValues];
  [v3 deactivateConstraints:v4];

  [(NSMutableDictionary *)self->_inputViewEdgeConstraints removeAllObjects];
  if ([(NSMutableDictionary *)self->_inputDockViewEdgeConstraints count])
  {
    v5 = MEMORY[0x1E69977A0];
    v6 = [(NSMutableDictionary *)self->_inputDockViewEdgeConstraints allValues];
    [v5 deactivateConstraints:v6];

    [(NSMutableDictionary *)self->_inputDockViewEdgeConstraints removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints count])
  {
    v7 = MEMORY[0x1E69977A0];
    v8 = [(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints allValues];
    [v7 deactivateConstraints:v8];

    [(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints removeAllObjects];
  }

  if ([(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints count])
  {
    v9 = MEMORY[0x1E69977A0];
    v10 = [(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints allValues];
    [v9 deactivateConstraints:v10];

    inputBackdropViewEdgeConstraints = self->_inputBackdropViewEdgeConstraints;

    [(NSMutableDictionary *)inputBackdropViewEdgeConstraints removeAllObjects];
  }
}

- (void)resetInputViewVisibility
{
  v3 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  v4 = [v3 view];
  [v4 setAlpha:1.0];

  v5 = [(UIInputWindowControllerHostingItem *)self dockView];
  [v5 setAlpha:1.0];
}

- (void)clearInputAssistantViewEdgeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  v4 = [(NSMutableDictionary *)self->_assistantViewEdgeConstraints allValues];
  [v3 deactivateConstraints:v4];

  assistantViewEdgeConstraints = self->_assistantViewEdgeConstraints;

  [(NSMutableDictionary *)assistantViewEdgeConstraints removeAllObjects];
}

- (id)_updateOrCreateConstraintInDict:(id)a3 key:(id)a4 fromItem:(id)a5 toItem:(id)a6 tracker:(id)a7 creator:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v13 objectForKey:v14];
  if (!v19)
  {
    goto LABEL_6;
  }

  v20 = v19;
  v21 = [v19 firstItem];
  v22 = v21;
  if (v21 != v15)
  {

LABEL_5:
    [v20 setActive:0];
    [v13 removeObjectForKey:v14];

LABEL_6:
    v20 = v18[2](v18);
    [v17 addObject:v20];
    [v13 setObject:v20 forKey:v14];
    goto LABEL_7;
  }

  v23 = [v20 secondItem];

  if (v23 != v16)
  {
    goto LABEL_5;
  }

  if (([v20 isActive] & 1) == 0)
  {
    [v17 addObject:v20];
  }

LABEL_7:

  return v20;
}

- (id)_updateOrCreateConstraintInDict:(id)a3 key:(id)a4 tracker:(id)a5 creator:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 objectForKey:v10];
  v14 = v12[2](v12);

  if ([v13 _isEqualToConstraintValue:v14 includingConstant:1 includeOtherMutableProperties:0])
  {
    v15 = v14;
    if (([v13 isActive] & 1) == 0)
    {
      [v11 addObject:v13];
      v15 = v13;
    }
  }

  else
  {
    [v13 setActive:0];
    [v11 addObject:v14];
    [v9 setObject:v14 forKeyedSubscript:v10];
    v15 = v14;
  }

  v16 = v15;

  return v15;
}

- (id)viewMatchingConstraintForAttribute:(int64_t)a3 primaryView:(id)a4 secondaryView:(id)a5
{
  v5 = [MEMORY[0x1E69977A0] constraintWithItem:a5 attribute:a3 relatedBy:0 toItem:a4 attribute:a3 multiplier:1.0 constant:0.0];
  LODWORD(v6) = 1132068864;
  [v5 setPriority:v6];
  [v5 setIdentifier:@"viewMatching"];

  return v5;
}

- (void)rebuildConstraints:(id)a3 forView:(id)a4 toMatchView:(id)a5 tracker:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(UIInputWindowControllerHostingItem *)self container];
  v15 = [v14 useLayoutHostingItem];

  if ((v15 & 1) == 0)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __85__UIInputWindowControllerHostingItem_rebuildConstraints_forView_toMatchView_tracker___block_invoke;
    v39[3] = &unk_1E7116758;
    v39[4] = self;
    v16 = v12;
    v40 = v16;
    v17 = v11;
    v41 = v17;
    v18 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v10 key:&unk_1EFE31AF8 fromView:v17 toView:v16 tracker:v13 creator:v39];
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
    v21 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v10 key:&unk_1EFE31B10 fromView:v20 toView:v19 tracker:v13 creator:v36];
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
    v24 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v10 key:&unk_1EFE31B28 fromView:v23 toView:v22 tracker:v13 creator:v33];
    [v24 setConstant:0.0];

    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = __85__UIInputWindowControllerHostingItem_rebuildConstraints_forView_toMatchView_tracker___block_invoke_4;
    v29 = &unk_1E7116758;
    v30 = self;
    v31 = v22;
    v32 = v23;
    v25 = [(UIInputWindowControllerHostingItem *)self _updateOrCreateConstraintInDict:v10 key:&unk_1EFE31B40 fromView:v32 toView:v31 tracker:v13 creator:&v26];
    [v25 setConstant:{0.0, v26, v27, v28, v29, v30}];
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

- (void)extendKeyboardBackdropHeight:(double)a3 withDuration:(double)a4
{
  self->_backdropHeightDelta = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __80__UIInputWindowControllerHostingItem_extendKeyboardBackdropHeight_withDuration___block_invoke;
  v5[3] = &unk_1E70F32F0;
  v5[4] = self;
  *&v5[5] = a3;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__UIInputWindowControllerHostingItem_extendKeyboardBackdropHeight_withDuration___block_invoke_2;
  v4[3] = &unk_1E70F9B38;
  v4[4] = self;
  *&v4[5] = a3;
  [UIView animateWithDuration:50331648 delay:v5 options:v4 animations:a4 completion:0.0];
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
  v3 = [(UIInputWindowControllerHostingItem *)self placement];
  v4 = v3;
  if (v3 && ([v3 isVisible] & 1) == 0)
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
    v15 = [(UIInputWindowControllerHostingItem *)self hostView];
    [v15 frame];
    v6 = v16;
    v8 = v17;
    v10 = v18;
    v12 = v19;

    if (([v4 isFloatingAssistantView] & 1) == 0)
    {
      v20 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      if ([v20 isInputAccessoryViewPlaceholder])
      {
        v21 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
        v22 = [v21 inputAccessoryView];

        if (v22)
        {
          v23 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
          v24 = [v23 inputAccessoryView];
          [v24 bounds];
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
  v3 = [(UIInputWindowControllerHostingItem *)self placement];
  v4 = v3;
  if (v3 && ([v3 isVisible] & 1) == 0)
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
      v11 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      if ([v11 isInputViewPlaceholder])
      {
        v12 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
        v13 = [v12 inputAccessoryView];

        if (v13)
        {
LABEL_13:
          v62 = [(UIInputWindowControllerHostingItem *)self owner];
          v63 = [v62 isTrackingElementController];

          if (!v63)
          {
            v64 = [(UIInputWindowControllerHostingItem *)self hostView];
            [v64 frame];
            v34 = v65;
            v52 = v66;
            v38 = v67;
            v40 = v68;

            goto LABEL_18;
          }

          [(UIInputWindowControllerHostingItem *)self visibleFrame];
          goto LABEL_15;
        }

        v14 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
        v15 = [v14 inputView];
        v11 = [v15 placeheldView];

        v16 = [v11 superview];

        if (v16)
        {
          v17 = [v11 superview];
          v18 = [(UIInputWindowControllerHostingItem *)self hostView];
          v19 = [v18 window];
          v20 = [v19 windowScene];
          v21 = [v20 _coordinateSpace];
          [v17 frame];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v76 = v17;
          v30 = [v17 window];
          v31 = [v30 screen];
          v32 = [v31 coordinateSpace];
          [v21 convertRect:v32 fromCoordinateSpace:{v23, v25, v27, v29}];
          v34 = v33;
          v36 = v35;
          v38 = v37;
          v40 = v39;

          v41 = [(UIInputWindowControllerHostingItem *)self hostView];
          [v41 frame];
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
          LOBYTE(v41) = CGRectIsEmpty(v79);
          v50 = [(UIInputWindowControllerHostingItem *)self hostView];
          [v50 frame];
          v52 = v51;
          if (v41)
          {

            v53 = [(UIInputWindowControllerHostingItem *)self hostView];
            [v53 frame];
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
            LOBYTE(v53) = CGRectIsEmpty(v82);

            if (v53)
            {
              goto LABEL_12;
            }
          }

          else
          {
            v73 = [(UIInputWindowControllerHostingItem *)self containerView];
            [v73 frame];
            if (v52 >= CGRectGetMaxY(v83))
            {
              v74 = [(UIInputWindowControllerHostingItem *)self containerView];
              [v74 frame];
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
  v3 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  if (![v3 isInputViewPlaceholder])
  {
    goto LABEL_12;
  }

  v4 = [(UIInputWindowControllerHostingItem *)self hostView];
  v5 = [v4 window];
  v6 = [v5 _isHostedInAnotherProcess];

  if (v6)
  {
LABEL_13:
    v39 = [(UIInputWindowControllerHostingItem *)self owner];
    v40 = [v39 inputViewSet];
    v41 = [v40 inputView];
    [v41 frame];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v3 = [(UIInputWindowControllerHostingItem *)self hostView];
    v11 = [(UIInputWindowControllerHostingItem *)self hostView];
    v21 = [v11 window];
    v28 = [v21 coordinateSpace];
    [v3 convertRect:v28 toCoordinateSpace:{v43, v45, v47, v49}];
    v32 = v50;
    v34 = v51;
    v36 = v52;
    v38 = v53;
    goto LABEL_14;
  }

  v7 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v8 = [v7 inputView];
  v3 = [v8 placeheldView];

  v9 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v10 = [v9 inputView];
  v11 = [v10 associatedView];

  [v3 frame];
  x = v12;
  y = v14;
  width = v16;
  height = v18;
  v20 = [v3 superview];

  if (v20)
  {
    v21 = [v3 superview];
    v22 = [v11 superview];

    if (!v22)
    {
      goto LABEL_9;
    }

    [v11 frame];
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
    v27 = [v11 superview];

    if (!v27)
    {
LABEL_11:

LABEL_12:
      goto LABEL_13;
    }

    v21 = [v11 superview];
    [v11 frame];
  }

  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
LABEL_9:
  if (!v21)
  {
    goto LABEL_11;
  }

  v28 = [(UIInputWindowControllerHostingItem *)self hostView];
  v29 = [v28 window];
  v30 = [v29 coordinateSpace];
  [v21 convertRect:v30 toCoordinateSpace:{x, y, width, height}];
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
  v3 = [(UIInputWindowControllerHostingItem *)self container];
  v4 = [v3 useLayoutHostingItem];

  if ((v4 & 1) == 0)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:100];
    [(UIInputWindowControllerHostingItem *)self updateViewSizingConstraints:v5];
    [MEMORY[0x1E69977A0] activateConstraints:v5];
  }
}

- (void)setCombinedBackdropView:(id)a3
{
  v5 = a3;
  p_inputCombinedBackdropView = &self->_inputCombinedBackdropView;
  v7 = self->_inputCombinedBackdropView;
  objc_storeStrong(&self->_inputCombinedBackdropView, a3);
  if (self->_inputCombinedBackdropView)
  {
    v8 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    v9 = [(UIInputWindowControllerHostingItem *)self applicator];
    v10 = [v9 backdropContainer];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [(UIInputWindowControllerHostingItem *)self ownerView];
    }

    v17 = v12;

    v18 = [(UIView *)*p_inputCombinedBackdropView superview];
    if (v18)
    {
      v19 = v18;
      v20 = [(UIView *)*p_inputCombinedBackdropView superview];

      if (v20 != v17)
      {
        [(NSMutableDictionary *)self->_backdropInnerGuideConstraints removeObjectForKey:@"items"];
        v21 = MEMORY[0x1E69977A0];
        v22 = [(NSMutableDictionary *)self->_backdropInnerGuideConstraints allValues];
        [v21 deactivateConstraints:v22];

        [(NSMutableDictionary *)self->_backdropInnerGuideConstraints removeAllObjects];
        v23 = MEMORY[0x1E69977A0];
        v24 = [(NSMutableDictionary *)self->_inputCombinedBackdropViewEdgeConstraints allValues];
        [v23 deactivateConstraints:v24];

        [(NSMutableDictionary *)self->_inputCombinedBackdropViewEdgeConstraints removeAllObjects];
        [(UIView *)self->_inputCombinedBackdropView removeFromSuperview];
      }
    }

    [v17 insertSubview:self->_inputCombinedBackdropView atIndex:0];
    v25 = [(UIInputWindowControllerHostingItem *)self owner];
    [v25 hideGuideBackdrop:0];

    v26 = [(UIInputWindowControllerHostingItem *)self owner];
    v27 = [v26 transitionGuideBackdrop:{-[UIInputWindowControllerHostingItem animatingBackdrops](self, "animatingBackdrops")}];

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
    v14 = [(NSMutableDictionary *)self->_inputCombinedBackdropViewEdgeConstraints allValues];
    [v13 deactivateConstraints:v14];

    [(NSMutableDictionary *)self->_inputCombinedBackdropViewEdgeConstraints removeAllObjects];
    [(NSMutableDictionary *)self->_backdropInnerGuideConstraints removeObjectForKey:@"items"];
    v15 = MEMORY[0x1E69977A0];
    v16 = [(NSMutableDictionary *)self->_backdropInnerGuideConstraints allValues];
    [v15 deactivateConstraints:v16];

    [(NSMutableDictionary *)self->_backdropInnerGuideConstraints removeAllObjects];
    if (v7)
    {
      [(UIView *)v7 removeFromSuperview];
      [(UIInputWindowControllerHostingItem *)self cleanUpLightEffectsTransition];
      [(UIInputWindowControllerHostingItem *)self updateInputBackdropView];
    }
  }
}

- (void)setInputBackdropView:(id)a3
{
  v17 = a3;
  v5 = self->_inputBackdropView;
  objc_storeStrong(&self->_inputBackdropView, a3);
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

      v10 = [(UIInputWindowControllerHostingItem *)self hostView];
      [v10 insertSubview:self->_inputBackdropBackgroundView atIndex:0];

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
      v12 = [(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints allValues];
      [v11 deactivateConstraints:v12];

      [(NSMutableDictionary *)self->_inputBackdropViewEdgeConstraints removeAllObjects];
    }

    v13 = self->_inputBackdropBackgroundView;
    if (v13)
    {
      [(UIView *)v13 removeFromSuperview];
      v14 = self->_inputBackdropBackgroundView;
      self->_inputBackdropBackgroundView = 0;

      v15 = MEMORY[0x1E69977A0];
      v16 = [(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints allValues];
      [v15 deactivateConstraints:v16];

      [(NSMutableDictionary *)self->_inputBackdropBackgroundViewEdgeConstraints removeAllObjects];
    }
  }
}

- (void)setInputAccessoryBackdropView:(id)a3
{
  v11 = a3;
  v5 = self->_inputAccessoryBackdropView;
  objc_storeStrong(&self->_inputAccessoryBackdropView, a3);
  if (self->_inputAccessoryBackdropView)
  {
    v6 = [(UIView *)self->_inputBackdropView superview];
    v7 = [(UIInputWindowControllerHostingItem *)self hostView];

    v8 = [(UIInputWindowControllerHostingItem *)self hostView];
    v9 = v8;
    inputAccessoryBackdropView = self->_inputAccessoryBackdropView;
    if (v6 == v7)
    {
      [v8 insertSubview:inputAccessoryBackdropView aboveSubview:self->_inputBackdropView];
    }

    else
    {
      [v8 insertSubview:inputAccessoryBackdropView atIndex:0];
    }
  }

  else
  {
    [(UIView *)v5 removeFromSuperview];
  }
}

- (void)updateRenderConfigForCombinedBackdrop:(id)a3
{
  v5 = a3;
  if ([(UIInputWindowControllerHostingItem *)self useCombinedBackdrop])
  {
    inputCombinedBackdropView = self->_inputCombinedBackdropView;
    if (inputCombinedBackdropView)
    {
      [(_UIKBLightEffectsBackground *)inputCombinedBackdropView _setRenderConfig:v5];
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
    v3 = [(UIInputWindowControllerHostingItem *)self hostView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)configureDockViewController:(BOOL)a3
{
  if (self->_supportsDockViewController)
  {
    if (a3)
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
  v5 = [(UIInputWindowControllerHostingItem *)self owner];
  v3 = [v5 view];
  v4 = [(UIInputViewSetPlacementApplicator *)self->_applicator constraints];
  [v3 removeConstraints:v4];
}

- (void)updateVisibilityConstraintsForPlacement:(id)a3
{
  v33 = a3;
  v4 = [(UIInputWindowControllerHostingItem *)self container];
  v5 = [v4 useLayoutHostingItem];

  if ((v5 & 1) == 0)
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      v6 = 1;
    }

    else
    {
      v7 = [(UIInputWindowControllerHostingItem *)self owner];
      if ([v7 shouldNotifyRemoteKeyboards])
      {
        v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
        v9 = [v8 visualModeManager];
        v6 = [v9 shouldShowWithinAppWindow];
      }

      else
      {
        v6 = 1;
      }
    }

    v10 = [objc_msgSend(v33 applicatorClassForKeyboard:{v6), "applicatorForOwner:withPlacement:", self, v33}];
    if (!v10)
    {
      goto LABEL_24;
    }

    if (([(UIInputViewSetPlacementApplicator *)self->_applicator isEqual:v10]& 1) == 0)
    {
      v11 = [v10 draggableView];
      if ([v11 isHidden])
      {
      }

      else
      {
        v12 = [v10 twoFingerDraggableView];
        v13 = [v12 isHidden];

        if ((v13 & 1) == 0)
        {
          v18 = [(UIInputWindowControllerHostingItem *)self inputAccessoryView];
          if (v18)
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

          v23 = [(UIInputWindowControllerHostingItem *)self owner];
          v24 = [v23 view];
          v25 = [(UIInputViewSetPlacementApplicator *)self->_applicator constraints];
          [v24 removeConstraints:v25];

          v15 = self->_applicator;
          objc_storeStrong(&self->_applicator, v10);
          [(UIInputViewSetPlacementApplicator *)self->_applicator prepare];
          v26 = [(UIInputWindowControllerHostingItem *)self owner];
          v27 = [v26 view];
          v28 = [(UIInputViewSetPlacementApplicator *)self->_applicator constraints];
          [v27 addConstraints:v28];

          if (v22)
          {
            v29 = [(NSMutableDictionary *)self->_accessoryViewEdgeConstraints objectForKey:&unk_1EFE31B40];
            [(UIInputViewSetPlacementApplicator *)self->_applicator inputAccessoryPadding];
            [v29 setConstant:v30];
          }

          [(UISplitKeyboardSupport *)self->_cachedSplitKeyboardController updatedControllerApplicator:self];
          [(UIInputViewSetPlacementApplicator *)v15 invalidate];
          goto LABEL_22;
        }
      }
    }

    applicator = self->_applicator;
    if (!applicator || ([(UIInputViewSetPlacementApplicator *)applicator allConstraintsActive]& 1) != 0)
    {
      goto LABEL_23;
    }

    v15 = [(UIInputWindowControllerHostingItem *)self owner];
    v16 = [(UIInputViewSetPlacementApplicator *)v15 view];
    v17 = [(UIInputViewSetPlacementApplicator *)self->_applicator constraints];
    [v16 addConstraints:v17];

LABEL_22:
LABEL_23:
    v31 = self->_applicator;
    v32 = [v33 applicatorInfoForOwner:self];
    [(UIInputViewSetPlacementApplicator *)v31 applyChanges:v32];

LABEL_24:
  }
}

- (void)updateCombinedBackdropViewAnimated:(BOOL)a3 forKeyboardUp:(BOOL)a4
{
  v4 = a4;
  if ([(UIInputWindowControllerHostingItem *)self animatingBackdrops])
  {
    return;
  }

  v7 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v8 = [v7 inputView];
  if (v8)
  {
    v9 = v8;
    v10 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    v11 = [v10 isInputViewPlaceholder];

    if (!v11)
    {
      if (a3)
      {
        v12 = [(UIInputWindowControllerHostingItem *)self owner];
        v13 = [v12 view];
        v14 = [v13 _inheritedRenderConfig];

        [(UIInputWindowControllerHostingItem *)self setAnimatingBackdrops:1];
        [(UIInputWindowControllerHostingItem *)self updateCombinedBackdropView];
        if (self->_inputCombinedBackdropView)
        {
          if (v4)
          {
            v15 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
            v16 = [v15 inputView];
            if (v16)
            {
              v17 = v16;
              v18 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
              v19 = [v18 isInputViewPlaceholder];

              if ((v19 & 1) == 0)
              {
                v20 = MEMORY[0x1E69E9820];
                v21 = 3221225472;
                v22 = __87__UIInputWindowControllerHostingItem_updateCombinedBackdropViewAnimated_forKeyboardUp___block_invoke;
                v23 = &unk_1E70F35B8;
                v24 = self;
                v25 = v14;
                [UIView performWithoutAnimation:&v20];
              }
            }

            else
            {
            }
          }

          [(UIInputWindowControllerHostingItem *)self performAnimatedTransitionToRenderConfig:v14, v20, v21, v22, v23, v24];
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
        if (v4 && self->_inputCombinedBackdropView)
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

- (void)performAnimatedTransitionToRenderConfig:(id)a3
{
  v4 = a3;
  if ([v4 animatedBackground])
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
    v9 = v4;
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

- (void)transitionInAnimatedForRenderConfig:(id)a3
{
  v4 = a3;
  if ([v4 animatedBackground])
  {
    v5 = [(UIInputWindowControllerHostingItem *)self owner];
    [v5 updateGuideBackdropRenderConfig:v4 animated:1];

    v9 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    v6 = [v9 inputView];
    [v6 _setRenderConfig:v4];
  }

  else
  {
    -[UIKBInputBackdropView transitionToStyle:isSplit:](self->_inputBackdropView, "transitionToStyle:isSplit:", [v4 backdropStyle], 0);
    inputAccessoryBackdropView = self->_inputAccessoryBackdropView;
    v8 = [v4 backdropStyle];

    [(UIKBInputBackdropView *)inputAccessoryBackdropView transitionToStyle:v8 isSplit:0];
  }
}

- (void)finalizeTransitionToRenderConfig:(id)a3
{
  if ([a3 animatedBackground])
  {
    [(UIInputWindowControllerHostingItem *)self cleanUpLightEffectsTransition];
  }

  [(UIInputWindowControllerHostingItem *)self setAnimatingBackdrops:0];
  if (self->_inputCombinedBackdropView)
  {
    v4 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    v5 = [v4 isInputViewPlaceholder];

    if (v5)
    {

      [(UIInputWindowControllerHostingItem *)self setCombinedBackdropView:0];
    }
  }
}

- (void)cleanUpLightEffectsTransition
{
  v2 = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView layerForPositionMatchMove];
  [v2 removeAnimationForKey:0x1EFB7AD50];
}

- (CGSize)sizeForVisualState:(int64_t)a3
{
  if (a3 & 0xFFFFFFFFFFFFFFFELL) == 2 && ([(UIInputWindowControllerHostingItem *)self animatedInputView], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6))
  {
    v7 = [(UIInputWindowControllerHostingItem *)self animatedInputView];
    [v7 sizeForVisualState:a3];
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

- (void)prepareForTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5
{
  v5 = a5;
  v9 = [(UIInputWindowControllerHostingItem *)self applicator];
  [v9 updateForInteractiveTransitionStart:1];

  inputBackdropView = self->_inputBackdropView;
  if (inputBackdropView)
  {
    [(UIKBInputBackdropView *)inputBackdropView prepareForTransitionToState:a3 animationType:a4 interactiveTransition:v5];
  }

  v11 = [(UIInputWindowControllerHostingItem *)self animatedInputView];

  if (v11)
  {
    v12 = [(UIInputWindowControllerHostingItem *)self animatedInputView];
    [v12 prepareForTransitionToState:a3 animationType:a4 interactiveTransition:v5];
  }

  v13 = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];

  if (v13)
  {
    v14 = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];
    [v14 prepareForTransitionToState:a3 animationType:a4 interactiveTransition:v5];
  }
}

- (void)animatingTransitionFromState:(int64_t)a3 toState:(int64_t)a4 animationType:(int64_t)a5 totalDuration:(double)a6
{
  inputBackdropView = self->_inputBackdropView;
  if (inputBackdropView)
  {
    [(UIKBInputBackdropView *)inputBackdropView animatingTransitionFromState:a3 toState:a4 animationType:a5 totalDuration:a6];
  }

  v12 = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];

  if (v12)
  {
    v13 = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];
    [v13 animatingTransitionFromState:a3 toState:a4 animationType:a5 totalDuration:a6];
  }

  v14 = [(UIInputWindowControllerHostingItem *)self animatedInputView];

  if (v14)
  {
    v15 = [(UIInputWindowControllerHostingItem *)self animatedInputView];
    [v15 animatingTransitionFromState:a3 toState:a4 animationType:a5 totalDuration:a6];
  }
}

- (void)transitioningToState:(int64_t)a3 animationType:(int64_t)a4 completionPercentage:(double)a5
{
  v9 = [(UIInputWindowControllerHostingItem *)self applicator];
  [v9 updateForInteractiveTransitionStart:1];

  inputBackdropView = self->_inputBackdropView;
  if (inputBackdropView)
  {
    [(UIKBInputBackdropView *)inputBackdropView transitioningToState:a3 animationType:a4 completionPercentage:a5];
  }

  v11 = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];

  if (v11)
  {
    v12 = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];
    [v12 transitioningToState:a3 animationType:a4 completionPercentage:a5];
  }

  v13 = [(UIInputWindowControllerHostingItem *)self animatedInputView];

  if (v13)
  {
    v14 = [(UIInputWindowControllerHostingItem *)self animatedInputView];
    [v14 transitioningToState:a3 animationType:a4 completionPercentage:a5];
  }
}

- (void)finishedTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5
{
  v5 = a5;
  v9 = [(UIInputWindowControllerHostingItem *)self animatedInputView];

  if (v9)
  {
    v10 = [(UIInputWindowControllerHostingItem *)self animatedInputView];
    [v10 finishedTransitionToState:a3 animationType:a4 interactiveTransition:v5];
  }

  v11 = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];

  if (v11)
  {
    v12 = [(UIInputWindowControllerHostingItem *)self animatedAssistantView];
    [v12 finishedTransitionToState:a3 animationType:a4 interactiveTransition:v5];
  }

  inputBackdropView = self->_inputBackdropView;
  if (inputBackdropView)
  {
    [(UIKBInputBackdropView *)inputBackdropView finishedTransitionToState:a3 animationType:a4 interactiveTransition:v5];
  }

  v14 = [(UIInputWindowControllerHostingItem *)self applicator];
  [v14 updateForInteractiveTransitionStart:0];

  v15 = [(UIInputWindowControllerHostingItem *)self placement];
  [(UIInputWindowControllerHostingItem *)self updateVisibilityConstraintsForPlacement:v15];
}

- (void)willBeginTranslation
{
  v3 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
    [v5 willBeginTranslation];
  }
}

- (void)finishSplitTransition:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
    [v7 finishSplitTransition:v3];
  }
}

- (void)didFinishTranslation
{
  v3 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
    [v5 didFinishTranslation];
  }

  [(UIInputWindowControllerHostingItem *)self _updateBackdropViews];
  v6 = [(UIInputWindowControllerHostingItem *)self placement];
  v7 = [v6 isUndocked];

  if ((v7 & 1) == 0)
  {

    [(UIInputWindowControllerHostingItem *)self resetVerticalConstraint];
  }
}

- (void)updateProgress:(double)a3 startHeight:(double)a4 endHeight:(double)a5
{
  v9 = a5 - a4;
  v10 = -(a5 - a4);
  v11 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  [v11 setSplitHeightDelta:v10];

  v12 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  [v12 inputViewBounds];
  v14 = v13;

  v15 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v16 = v15;
  if (a5 - v9 * a3 == 0.0)
  {
    v17 = [v15 inputViewKeyboardCanSplit];

    if (v17)
    {
      v18 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      [v18 _rightInputViewSetFrame];
      Height = CGRectGetHeight(v71);
      v20 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      [v20 inputViewBounds];
      v21 = CGRectGetHeight(v72);
      v22 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      [v22 inputAssistantViewBounds];
      v23 = v21 + CGRectGetHeight(v73);
      v24 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      [v24 inputAccessoryViewBounds];
      v25 = Height - (v23 + CGRectGetHeight(v74));

      self->_verticalTranslationForSplitKeyboard = fabs(v25 * a3);
      +[UIKeyboardImpl persistentOffset];
      if (a3 >= 1.0)
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
    v28 = [v15 inputAccessoryView];

    v29 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    v30 = [v29 splitExemptSubview];

    v31 = +[UIKeyboardImpl activeInstance];
    v32 = [v31 hideAccessoryViewsDuringSplit];

    v33 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    v34 = [v33 _inputViewIsSplit];

    v35 = [(UIKBInputBackdropView *)self->_inputBackdropView _isTransitioning];
    v36 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [v36 inputViewSplitHeight];
    v38 = v37;

    v39 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [v39 _leftInputViewSetFrame];
    Width = CGRectGetWidth(v75);

    v41 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [v41 inputViewBounds];
    v42 = CGRectGetWidth(v76);
    v43 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [v43 _rightInputViewSetFrame];
    v44 = v42 - CGRectGetWidth(v77) - Width;

    v45 = +[UIKeyboardImpl activeInstance];
    v46 = [v45 centerFilled];

    v47 = [(UIInputWindowControllerHostingItem *)self placement];
    v48 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [v47 inputAssistantViewHeightForInputViewSet:v48];

    if (v38 >= a5)
    {
      v49 = a4;
    }

    else
    {
      v49 = a4 - (a5 - v38);
    }

    self->_verticalTranslationForSplitKeyboard = fabs(v9 * a3);
    if (v46)
    {
      v50 = 0.0;
    }

    else
    {
      v50 = v44;
    }

    [(UIKBInputBackdropView *)self->_inputBackdropView _beginSplitTransitionIfNeeded:Width gapWidth:v50];
    if (!v35)
    {
      v51 = v49;
      v52 = floor(v49 / 34.0);
      if (v28)
      {
        [v28 frame];
        v54 = v53;
        v55 = [v28 _disableLayoutFlushingCount];
        if (v55 >= 1)
        {
          v56 = v55 + 1;
        }

        else
        {
          v56 = 1;
        }

        [v28 _setDisableLayoutFlushingCount:v56];
        [v28 _disableLayoutFlushing];
      }

      else
      {
        [v30 frame];
        v54 = v57;
      }

      [(UIKBInputBackdropView *)self->_inputBackdropView setProgress:-1 withFrame:0.0 innerCorners:0.0, 0.0, v65, a4];
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
      v69 = v28;
      [UIView animateWithDuration:50530304 delay:v70 options:v68 animations:1.0 completion:1.0e-100];

      v49 = v51;
    }

    +[UIKeyboardImpl persistentOffset];
    v59 = v58 < -0.01;
    if (v58 <= v9)
    {
      v59 = 0;
    }

    if ((v59 & v34) == 1)
    {
      v60 = +[UIPeripheralHost activeInstance];
      [v60 setUndockedWithOffset:0 animated:{0.0, v9}];
    }

    else if (v9 < 0.0 && v58 > 0.0)
    {
      v61 = v9 + v58;
      if (!v34)
      {
        v61 = v58;
      }

      self->_verticalTranslationForSplitKeyboard = v61 + self->_verticalTranslationForSplitKeyboard;
    }

    if (v9 > 0.0 && v49 != a4)
    {
      +[UIKeyboardImpl persistentOffset];
      if (v62 > -20.0)
      {
        v63 = +[UIPeripheralHost activeInstance];
        [v63 setUndockedWithOffset:0 animated:{0.0, a3 * -20.0}];
      }
    }

    [(UIKBInputBackdropView *)self->_inputBackdropView setGestureProgressForSplit:a3];
    if (+[UIInputWindowController supportsStateBasedAnimations])
    {
      [(UIInputWindowControllerHostingItem *)self transitioningToState:4 animationType:9 completionPercentage:a3];
    }

    if (v28 | v30)
    {
      if (v32)
      {
        [(UIInputWindowControllerHostingItem *)self setAccessoryViewVisible:0 delay:0.0];
      }

      else
      {
        v64 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
        [v64 _beginSplitTransitionIfNeeded];
      }

      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __75__UIInputWindowControllerHostingItem_updateProgress_startHeight_endHeight___block_invoke_3;
      v66[3] = &unk_1E7101F90;
      v67 = v32;
      v66[4] = self;
      *&v66[5] = a3;
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
  v2 = [(UIInputWindowControllerHostingItem *)self owner];
  v3 = [v2 shouldNotifyRemoteKeyboards];

  return v3 ^ 1;
}

- (void)setHideInputViewBackdrops:(BOOL)a3
{
  if (a3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  [(UIView *)self->_inputBackdropView setAlpha:v5];
  [(UIView *)self->_inputAccessoryBackdropView setAlpha:v5];
  if (![(UIInputWindowControllerHostingItem *)self useCombinedBackdrop]|| !a3)
  {
    inputCombinedBackdropView = self->_inputCombinedBackdropView;

    [(UIView *)inputCombinedBackdropView setAlpha:v5];
  }
}

- (BOOL)hideInputView
{
  v2 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  v3 = [v2 view];
  [v3 alpha];
  v5 = v4 != 1.0;

  return v5;
}

- (void)setHideInputView:(BOOL)a3
{
  if (a3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = [(UIInputWindowControllerHostingItem *)self _inputViewController];
  v6 = [v5 view];
  [v6 setAlpha:v4];

  v7 = [(UIInputWindowControllerHostingItem *)self dockView];
  [v7 setAlpha:v4];
}

- (int64_t)inputViewBackdropStyle
{
  v2 = [(UIInputWindowControllerHostingItem *)self containerView];
  v3 = [v2 _inheritedRenderConfig];
  v4 = [v3 backdropStyle];

  return v4;
}

- (BOOL)dontDismissReachability
{
  v2 = [(UIInputWindowControllerHostingItem *)self owner];
  v3 = [v2 dontDismissReachability];

  return v3;
}

- (void)setDontDismissReachability:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIInputWindowControllerHostingItem *)self owner];
  [v4 setDontDismissReachability:v3];
}

- (void)updateForKeyplaneChangeWithContext:(id)a3
{
  if (!self->_scrolling)
  {
    v5 = a3;
    v6 = [(UIInputWindowControllerHostingItem *)self owner];
    [v6 updateForKeyplaneChangeWithContext:v5];
  }
}

- (UIView)view
{
  v2 = [(UIInputWindowControllerHostingItem *)self owner];
  v3 = [v2 view];

  return v3;
}

- (BOOL)isChangingPlacement
{
  v2 = [(UIInputWindowControllerHostingItem *)self owner];
  v3 = [v2 isChangingPlacement];

  return v3;
}

- (CGPoint)positionConstraintConstant
{
  [(UIInputViewSetPlacementApplicator *)self->_applicator origin];
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)constructNotificationInfoForScrollWithMode:(unint64_t)a3
{
  v5 = [(UIInputWindowControllerHostingItem *)self owner];
  v6 = [v5 nextAnimationStyle];

  if ([v6 canDismissWithScrollView])
  {
    v7 = objc_alloc_init(UIInputViewSetNotificationInfo);
    v8 = [(UIInputWindowControllerHostingItem *)self owner];
    v9 = [v8 nextAnimationStyle];
    [(UIInputViewSetNotificationInfo *)v7 populateWithAnimationStyle:v9];

    v10 = [(UIInputWindowControllerHostingItem *)self owner];
    [(UIInputWindowControllerHostingItem *)self notificationsFrame];
    [v10 convertRectFromContainerCoordinateSpaceToScreenSpace:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [(UIInputViewSetNotificationInfo *)v7 populateStartInfoWithFrame:v12, v14, v16, v18];
    [(UIInputWindowControllerHostingItem *)self _fillInNotificationInfo:v7 forDismissMode:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_fillInNotificationInfo:(id)a3 forDismissMode:(unint64_t)a4
{
  v42 = a3;
  if (a4)
  {
    v9 = [(UIInputWindowControllerHostingItem *)self dockView];
    [v9 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [(UIInputWindowControllerHostingItem *)self inputView];
    [v18 frame];
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

    v23 = [(UIInputWindowControllerHostingItem *)self owner];
    LODWORD(v18) = [v23 isTrackingElementController];

    if (v18)
    {
      [(UIInputWindowControllerHostingItem *)self visibleFrame];
      height = v24;
    }
  }

  else if (a4)
  {
    v6 = [(UIInputWindowControllerHostingItem *)self hostView];
    [v6 frame];
    height = v7;
  }

  else
  {
    height = 0.0;
  }

  [v42 beginFrame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = height + v31;
  v33 = [(UIInputWindowControllerHostingItem *)self owner];
  [v33 convertRectFromContainerCoordinateSpaceToScreenSpace:{v26, v32, v28, v30}];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  [v42 addKeyboardNotificationDebuggingInfo:@"_fillInNotificationInfo: (hosting item)"];
  [v42 populateEndInfoWithFrame:{v35, v37, v39, v41}];
}

- (void)prepareForSplitTransition
{
  v2 = [(UIInputWindowControllerHostingItem *)self owner];
  [v2 prepareForSplitTransition];
}

- (void)finishSplitTransition
{
  v2 = [(UIInputWindowControllerHostingItem *)self owner];
  [v2 finishSplitTransition];
}

- (void)placementNeedsUpdate:(id)a3
{
  v4 = a3;
  self->_scrolling = 0;
  v5 = [(UIInputWindowControllerHostingItem *)self placement];

  if (v5 == v4)
  {
    v6 = [v4 applicatorInfoForOwner:self];
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

- (void)startTransition:(id)a3 withInfo:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(UIInputWindowControllerHostingItem *)self placement];
  if ([v7 isFloatingAssistantView])
  {
    v8 = [(UIInputWindowControllerHostingItem *)self placement];
    v9 = [(UIInputWindowControllerHostingItem *)self owner];
    v10 = [v9 placement];
    v11 = [v10 subPlacements];
    v12 = [v11 firstObject];
    v13 = v8 == v12;
  }

  else
  {
    v13 = 0;
  }

  if (![v19 isEqualToString:0x1EFB7AD30])
  {
    if (v13)
    {
      goto LABEL_18;
    }

    v14 = [v6 objectForKey:0x1EFB7ABF0];
    v15 = [v14 BOOLValue];

    if (v15)
    {
      goto LABEL_18;
    }

    v16 = [v19 isEqualToString:0x1EFB7AA90];
    if (v16)
    {
      [(UIInputWindowControllerHostingItem *)self willBeginTranslation];
      v17 = MEMORY[0x1E695E118];
    }

    else
    {
      if (![v19 isEqualToString:0x1EFB7AB30])
      {
        v17 = 0;
LABEL_17:

        goto LABEL_18;
      }

      v17 = [v6 objectForKey:0x1EFB7ABD0];
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

    v18 = [(UIInputWindowControllerHostingItem *)self owner];
    [v18 generateNotificationsForStart:{objc_msgSend(v17, "BOOLValue")}];

    goto LABEL_14;
  }

  if (self->_inputCombinedBackdropView)
  {
    [(UIInputWindowControllerHostingItem *)self createAnimationMatchWithInfo:v6];
  }

LABEL_18:
}

- (BOOL)_isForSelf:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:0x1EFB7AAF0];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
    WeakRetained = objc_loadWeakRetained(&self->_container);
    v8 = v6 == [WeakRetained indexOfHost:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateTransition:(id)a3 withInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__UIInputWindowControllerHostingItem_updateTransition_withInfo___block_invoke;
  aBlock[3] = &unk_1E70F35B8;
  aBlock[4] = self;
  v9 = v8;
  v51 = v9;
  v10 = _Block_copy(aBlock);
  v11 = [(UIInputWindowControllerHostingItem *)self placement];
  if ([v11 isFloatingAssistantView])
  {
    v4 = [(UIInputWindowControllerHostingItem *)self placement];
    v12 = [(UIInputWindowControllerHostingItem *)self owner];
    v13 = [v12 placement];
    v14 = [v13 subPlacements];
    v15 = [v14 firstObject];
    v16 = v4 == v15;
  }

  else
  {
    v16 = 0;
  }

  if ([v7 isEqualToString:0x1EFB7AD50])
  {
    v17 = @"Offset";
  }

  else
  {
    if (v16 || ([v7 isEqualToString:0x1EFB7AA90] & 1) == 0 && !objc_msgSend(v7, "isEqualToString:", 0x1EFB7AAD0))
    {
      goto LABEL_13;
    }

    v17 = @"Origin";
  }

  v18 = [v9 objectForKey:v17];
  v4 = v18;
  if (v18)
  {
    [v18 UIOffsetValue];
    v20 = v19;
    v22 = v21;
    v23 = [(UIInputWindowControllerHostingItem *)self applicator];
    [v23 updateForOffset:{v20, v22}];
  }

LABEL_13:
  if (+[UIKeyboard isKeyboardProcess](UIKeyboard, "isKeyboardProcess") && !self->_scrolling && [v7 isEqualToString:0x1EFB7AC50])
  {
    [(UIInputWindowControllerHostingItem *)self createAnimationMatchWithInfo:v9];
  }

  v24 = [v7 isEqualToString:0x1EFB7AC50];
  if (v24)
  {
    v4 = [(UIInputWindowControllerHostingItem *)self placement];
    if ([v4 showsKeyboard])
    {
      v25 = [(UIInputWindowControllerHostingItem *)self owner];
      if ([v25 dontDismissKeyboardOnScrolling])
      {
        v44 = v25;
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
        v44 = v25;
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
  if (!v16 && (([v7 isEqualToString:0x1EFB7AA90] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", 0x1EFB7AAD0)))
  {
    v30 = v4;
    v31 = objc_loadWeakRetained(&self->_container);
    if ([v31 host:self isForPurpose:2])
    {
      v29 = 1;
    }

    else if ([v7 isEqualToString:0x1EFB7AB10])
    {
      v29 = [(UIInputWindowControllerHostingItem *)self _isForSelf:v9];
    }

    else
    {
      v29 = 0;
    }

    v4 = v30;
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

  v29 = ([v7 isEqualToString:0x1EFB7AB10] & 1) != 0 && -[UIInputWindowControllerHostingItem _isForSelf:](self, "_isForSelf:", v9);
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
    if ([v7 isEqualToString:0x1EFB7AC50])
    {
      self->_scrolling = 1;
    }

    v34 = [(UIInputWindowControllerHostingItem *)self applicator];
    [v34 applyChanges:v9];
    goto LABEL_48;
  }

LABEL_44:
  if (v29)
  {
    goto LABEL_45;
  }

LABEL_50:
  if ([v7 isEqualToString:0x1EFB7AB30])
  {
    v35 = objc_loadWeakRetained(&self->_container);
    v36 = [v35 host:self isForPurpose:2];

    if (v36)
    {
      v34 = [v9 objectForKey:0x1EFB7AB50];
      [v34 doubleValue];
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

  if (v46 || ![v7 isEqualToString:0x1EFB7ADB0])
  {
    if ([v7 isEqualToString:0x1EFB7ADD0])
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

- (void)completeTransition:(id)a3 withInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIInputWindowControllerHostingItem *)self placement];
  if ([v8 isFloatingAssistantView])
  {
    v9 = [(UIInputWindowControllerHostingItem *)self placement];
    v10 = [(UIInputWindowControllerHostingItem *)self owner];
    v11 = [v10 placement];
    v12 = [v11 subPlacements];
    [v12 firstObject];
  }

  if ([v6 isEqualToString:0x1EFB7AC50])
  {
    v13 = [(UIInputWindowControllerHostingItem *)self placement];
    if ([v13 showsKeyboard])
    {

      goto LABEL_7;
    }

    v14 = +[UIKeyboard inputUIOOP];

    if (v14)
    {
LABEL_7:
      if (+[UIKeyboard isKeyboardProcess])
      {
        [(UIInputWindowControllerHostingItem *)self createAnimationMatchWithInfo:v7];
      }

      self->_scrolling = 0;
      v15 = [v7 objectForKey:0x1EFB7ACD0];
      v16 = [v7 objectForKey:0x1EFB7ACB0];
      if (v15 || (-[UIInputWindowControllerHostingItem owner](self, "owner"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 dontDismissKeyboardOnScrolling], v17, (v18 & 1) != 0))
      {
        v19 = -[UIScrollToDismissSupport cancelNotificationsForMode:](self->_cachedScrollDismissController, "cancelNotificationsForMode:", [v15 intValue]);
        [v19 addKeyboardNotificationDebuggingInfo:@"completeTransition: cancel (hosting item)"];
        v20 = [(UIInputWindowControllerHostingItem *)self owner];
        [v20 postStartNotifications:2 withInfo:v19];

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
      v61 = v7;
      v62 = self;
      v50 = _Block_copy(v60);
      if (+[UIKeyboard isKeyboardProcess])
      {
        v51 = [(UIInputWindowControllerHostingItem *)self owner];
        v52 = +[UIInputViewAnimationStyle animationStyleImmediate];
        [v51 pushAnimationStyle:v52];

        v50[2](v50);
        v53 = [(UIInputWindowControllerHostingItem *)self owner];
        [v53 popAnimationStyle];
      }

      else
      {
        if (!v16)
        {
          v50[2](v50);
          goto LABEL_52;
        }

        v53 = [(UIInputWindowControllerHostingItem *)self owner];
        [v16 doubleValue];
        v54 = [UIInputViewAnimationStyle animationStyleAnimated:1 duration:?];
        [v53 performOperations:v50 withAnimationStyle:v54];
      }

LABEL_52:
      objc_destroyWeak(&v64);
      objc_destroyWeak(&location);
      goto LABEL_12;
    }

    v24 = [(UIInputWindowControllerHostingItem *)self owner];
    [v24 moveKeyboardLayoutGuideOffscreen];
  }

  if (![v6 isEqualToString:0x1EFB7ADB0])
  {
    v15 = [v7 objectForKey:0x1EFB7ABD0];
    v26 = [v6 isEqualToString:0x1EFB7AAD0];
    v27 = [(UIInputWindowControllerHostingItem *)self placement];
    v28 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [v27 inputAssistantViewHeightForInputViewSet:v28];
    [(NSLayoutConstraint *)self->_assistantViewHeightConstraint setConstant:?];

    v29 = [v7 objectForKey:0x1EFB7AC10];
    LODWORD(v28) = [v29 BOOLValue];

    if (v28)
    {
      v30 = +[UIPeripheralHost sharedInstance];
      [v30 setUndockedWithOffset:0 animated:{0.0, self->_verticalTranslationForSplitKeyboard}];

      v31 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
      [v31 refreshPresentation];

      v32 = [(UIInputWindowControllerHostingItem *)self owner];
      [v32 checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:v15 != 0 layoutSubviews:1];

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

    v39 = [v7 objectForKey:0x1EFB7ABB0];
    v40 = v39;
    if (v39)
    {
      -[UIInputWindowControllerHostingItem transitionDidFinish:](self, "transitionDidFinish:", [v39 BOOLValue]);
    }

    if (v26)
    {
      v41 = [(UIInputWindowControllerHostingItem *)self hostView];
      [v41 layoutIfNeeded];
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
      v43 = [v7 objectForKey:0x1EFB7AC30];
      v44 = v43;
      if (v43)
      {
        v45 = [v43 longLongValue];
        dispatch_after(v45, MEMORY[0x1E69E96A0], v42);
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

    v46 = [v7 objectForKey:0x1EFB7AAB0];
    v47 = v46;
    if (v46)
    {
      -[UIInputWindowControllerHostingItem finishSplitTransition:](self, "finishSplitTransition:", [v46 BOOLValue]);
    }

    goto LABEL_45;
  }

  v25 = [(UIInputWindowControllerHostingItem *)self owner];
  [v25 generateNotificationsForCompactAssistantFlickGestureCompletion:v7];

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

- (void)setPlacement:(id)a3 quietly:(BOOL)a4 animated:(BOOL)a5 generateSplitNotification:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v20 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_container);
  if (![WeakRetained host:self isForPurpose:200])
  {
    goto LABEL_7;
  }

  if (([v20 isFloatingAssistantView] & 1) == 0)
  {

    goto LABEL_6;
  }

  v11 = [(UIInputWindowControllerHostingItem *)self placement];
  v12 = [v11 isFloating];

  if ((v12 & 1) == 0)
  {
LABEL_6:
    WeakRetained = [(UIInputWindowControllerHostingItem *)self owner];
    [WeakRetained setPlacement:v20 quietly:v8 animated:v7 generateSplitNotification:v6];
LABEL_7:
  }

  v13 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v14 = [v13 keyboardActive];

  if ((v14 & 1) == 0)
  {
    v15 = [(UIInputWindowControllerHostingItem *)self owner];
    v16 = [v15 _window];
    v17 = [v16 screen];
    v18 = [(UIKeyboardMotionSupport *)UIFlickingAssistantViewSupport supportForScreen:v17];

    if ([v20 isFloatingAssistantView])
    {
      v19 = v20;
    }

    else
    {
      v19 = 0;
    }

    [v18 setRemotePlacement:v19];
  }
}

- (void)transitionDidFinish:(BOOL)a3
{
  v3 = a3;
  [(UIInputWindowControllerHostingItem *)self setAccessoryViewVisible:1 delay:0.15];
  v5 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  [v5 _endSplitTransitionIfNeeded];

  inputBackdropView = self->_inputBackdropView;
  v7 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  -[UIKBInputBackdropView _endSplitTransitionIfNeeded:](inputBackdropView, "_endSplitTransitionIfNeeded:", [v7 isSplit]);

  [(UIInputWindowControllerHostingItem *)self _updateBackdropViews];
  if (v3)
  {
    v8 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
    [v8 refreshPresentation];
  }

  [(UIView *)self->_inputBackdropView _popDisableLayoutFlushing];
  v9 = [(UIInputWindowControllerHostingItem *)self inputAccessoryView];
  [(UIView *)v9 _popDisableLayoutFlushing];

  v10 = [(UIInputWindowControllerHostingItem *)self hostView];
  [v10 setNeedsLayout];

  v11 = [(UIInputWindowControllerHostingItem *)self owner];
  [v11 checkPlaceholdersForRemoteKeyboardsAndForceConstraintsUpdate:0 layoutSubviews:1];
}

- (id)draggableView
{
  v3 = [(UIInputWindowControllerHostingItem *)self inputSwitcherView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    goto LABEL_9;
  }

  v6 = [(UIInputWindowControllerHostingItem *)self placement];
  if (([v6 isFloating] & 1) == 0)
  {

    goto LABEL_7;
  }

  v7 = [(UISystemKeyboardDockController *)self->_dockViewController dockView];
  v8 = [v7 centerView];

  if (!v8)
  {
LABEL_7:
    v9 = [(UIInputWindowControllerHostingItem *)self applicator];
    v10 = [v9 draggableView];
    goto LABEL_8;
  }

  v9 = [(UISystemKeyboardDockController *)self->_dockViewController dockView];
  v10 = [v9 centerView];
LABEL_8:
  v5 = v10;

LABEL_9:

  return v5;
}

- (void)createAnimationMatchWithInfo:(id)a3
{
  v38[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:0x1EFB7AD30];

  if (v5)
  {
    v6 = self->_inputCombinedBackdropView;
    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:0x1EFB7AD50];

      if (v7)
      {
        v32 = [(_UIKBLightEffectsBackground *)self->_inputCombinedBackdropView layerForPositionMatchMove];
        [v32 removeAnimationForKey:0x1EFB7AD50];
        v8 = [v4 objectForKeyedSubscript:0x1EFB7AD50];
        v9 = objc_opt_new();
        v10 = [v8 objectForKeyedSubscript:0x1EFB7AD70];
        [v9 setSourceContextId:{objc_msgSend(v10, "integerValue")}];

        v11 = [v8 objectForKeyedSubscript:0x1EFB7AD90];
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

        v22 = v32;
        [v32 addAnimation:v9 forKey:0x1EFB7AD50];

LABEL_8:
      }
    }
  }

  else
  {
    v6 = [(UIInputWindowControllerHostingItem *)self scrollTrackingView];
    if (v6)
    {
      v23 = [v4 objectForKeyedSubscript:0x1EFB7AD70];

      if (v23)
      {
        v24 = [(UIView *)v6 layer];
        [v24 removeAnimationForKey:@"KeyboardScrollToDismissAnimation"];

        v22 = objc_opt_new();
        v25 = [v4 objectForKeyedSubscript:0x1EFB7AD70];
        [v22 setSourceContextId:{objc_msgSend(v25, "integerValue")}];

        v26 = [v4 objectForKeyedSubscript:0x1EFB7AD90];
        [v22 setSourceLayerRenderId:{objc_msgSend(v26, "integerValue")}];

        [v22 setDuration:INFINITY];
        [v22 setUsesNormalizedCoordinates:1];
        v27 = [v4 objectForKeyedSubscript:0x1EFB7ACF0];
        [v27 floatValue];
        v29 = v28;

        v30 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.5, v29 * 0.5 + 0.5}];
        v37 = v30;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
        [v22 setSourcePoints:v31];

        v8 = [(UIView *)v6 layer];
        [v8 addAnimation:v22 forKey:@"KeyboardScrollToDismissAnimation"];
        goto LABEL_8;
      }
    }
  }
}

- (void)willBeginTranslationFromPlacement:(id)a3 to:(id)a4
{
  if ([(UISplitKeyboardSupport *)self->_cachedSplitKeyboardController startedPlacementFrom:a3 to:a4 forController:self])
  {

    [(UIInputWindowControllerHostingItem *)self willBeginTranslation];
  }
}

- (void)didFinishTranslationFromPlacement:(id)a3 to:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([(UISplitKeyboardSupport *)self->_cachedSplitKeyboardController completedPlacementFrom:v7 to:v6 forController:self])
  {
    [(UIInputWindowControllerHostingItem *)self didFinishTranslation];
  }

  [(UIScrollToDismissSupport *)self->_cachedScrollDismissController completedPlacementFrom:v7 to:v6 forController:self];
}

- (void)resetVerticalConstraint
{
  v3 = [(UIInputWindowControllerHostingItem *)self placement];
  [(UIInputWindowControllerHostingItem *)self updateVisibilityConstraintsForPlacement:v3];

  v5 = [(UIInputWindowControllerHostingItem *)self owner];
  v4 = [v5 view];
  [v4 layoutIfNeeded];
}

- (void)configureSplitKeyboardController:(BOOL)a3
{
  if (a3)
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _window];
    v6 = [v5 screen];
    obj = [(UIKeyboardMotionSupport *)UISplitKeyboardSupport supportForScreen:v6];

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
    v9 = [(UIKeyboardMotionSupport *)self->_cachedSplitKeyboardController masterController];

    if (v9 == self)
    {
      [(UIKeyboardMotionSupport *)self->_cachedSplitKeyboardController setMasterController:0];
    }

    v8 = self->_cachedSplitKeyboardController;
    self->_cachedSplitKeyboardController = 0;
  }
}

- (void)setAccessoryViewVisible:(BOOL)a3 delay:(double)a4
{
  v5 = a3;
  v7 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  v8 = [v7 setAccessoryViewVisible:v5 delay:a4];

  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__UIInputWindowControllerHostingItem_setAccessoryViewVisible_delay___block_invoke;
    v9[3] = &unk_1E70F35E0;
    v9[4] = self;
    v10 = v5;
    [UIView animateWithDuration:50331648 delay:v9 options:0 animations:0.15 completion:a4];
  }
}

- (BOOL)_isForSplitKeyboard
{
  v4 = +[UIKeyboard isInputSystemUI];
  if (!v4)
  {
    v2 = [(UIInputWindowControllerHostingItem *)self owner];
    if ([v2 shouldNotifyRemoteKeyboards])
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

- (void)configureScrollDismissController:(BOOL)a3
{
  if (a3)
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _window];
    v6 = [v5 screen];
    obj = [(UIKeyboardMotionSupport *)UIScrollToDismissSupport supportForScreen:v6];

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
    v9 = [(UIKeyboardMotionSupport *)self->_cachedScrollDismissController masterController];

    if (v9 == self)
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
    v3 = [(UIInputWindowControllerHostingItem *)self scrollTrackingView];
    v4 = [v3 layer];
    v5 = [v4 animationForKey:@"KeyboardScrollToDismissAnimation"];

    if (v5)
    {
      v7 = [(UIInputWindowControllerHostingItem *)self scrollTrackingView];
      v6 = [v7 layer];
      [v6 removeAnimationForKey:@"KeyboardScrollToDismissAnimation"];
    }
  }
}

- (void)enumerateBoundingRects:(id)a3
{
  v4 = a3;
  v6 = [(UIInputWindowControllerHostingItem *)self inputViewSet];
  if ([v6 isSplit])
  {
    [v6 _leftInputViewSetFrame];
    v4[2](v4);
    [v6 _rightInputViewSetFrame];
    v4[2](v4);
  }

  else
  {
    v5 = [(UIInputWindowControllerHostingItem *)self placement];
    [v5 adjustBoundsForNotificationsWithOwner:self];
    v4[2](v4);

    v4 = v5;
  }
}

- (void)configureFlickingAssistantViewController:(BOOL)a3
{
  if (a3)
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _window];
    v6 = [v5 screen];
    obj = [(UIKeyboardMotionSupport *)UIFlickingAssistantViewSupport supportForScreen:v6];

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
    v9 = [(UIKeyboardMotionSupport *)self->_cachedFlickingAssistantViewController masterController];

    if (v9 == self)
    {
      [(UIKeyboardMotionSupport *)self->_cachedFlickingAssistantViewController setMasterController:0];
    }

    v8 = self->_cachedFlickingAssistantViewController;
    self->_cachedFlickingAssistantViewController = 0;
  }
}

@end