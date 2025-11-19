@interface UIPeripheralHost
+ (BOOL)pointIsWithinKeyboardContent:(CGPoint)a3;
+ (CGPoint)adjustedFloatingOffsetForKeyboardSize:(CGSize)a3;
+ (CGPoint)defaultUndockedOffset;
+ (CGRect)screenBoundsInAppOrientation;
+ (CGRect)visibleInputViewFrame;
+ (CGRect)visiblePeripheralFrame;
+ (Class)floatingAssistantBarPlacementClassSupportingCompactStyle:(BOOL)a3;
+ (UIEdgeInsets)floatingChromeBuffer;
+ (double)gridViewRubberBandValueForValue:(double)result target:(double)a4 timeInterval:(double)a5 velocity:(double *)a6;
+ (id)allVisibleFrames:(id)a3;
+ (id)allVisiblePeripheralFrames;
+ (id)endPlacementForInputViewSet:(id)a3 windowScene:(id)a4;
+ (id)passthroughViews;
+ (id)sharedInstance;
+ (void)_releaseSharedInstance;
+ (void)adjustFloatingPersistentOffsetForKeyboardSize:(CGSize)a3;
+ (void)setAllVisibleFrames:(id)a3;
+ (void)setFloating:(BOOL)a3 onCompletion:(id)a4;
+ (void)setKeyboardOnScreenNotifyKey:(BOOL)a3;
- (BOOL)_isCoordinatingWithSystemGestures;
- (BOOL)_isSuppressedByManualKeyboard;
- (BOOL)_isTransitioning;
- (BOOL)_restoreInputViewsWithId:(id)a3 animated:(BOOL)a4;
- (BOOL)_shouldDelayRotationForWindow:(id)a3;
- (BOOL)animationsEnabled;
- (BOOL)hasCustomInputView;
- (BOOL)hasDelayedTasksForKey:(id)a3;
- (BOOL)hasDictationKeyboard;
- (BOOL)isRotating;
- (BOOL)isTranslating;
- (BOOL)isUndocked;
- (BOOL)keyClicksEnabled;
- (BOOL)maximizeWithAnimation:(BOOL)a3;
- (BOOL)minimize;
- (BOOL)shouldUseHideNotificationForGeometry:(UIPeripheralAnimationGeometry *)a3;
- (BOOL)userInfoContainsActualGeometryChange:(id)a3;
- (CGPoint)adjustedPersistentOffset;
- (CGPoint)offHostPointForPoint:(CGPoint)a3;
- (CGRect)_inputViewRectToAvoid;
- (CGRect)screenRectFromBounds:(CGRect)a3 atCenter:(CGPoint)a4 applyingSourceHeightDelta:(double)a5;
- (CGRect)transitioningFrame;
- (CGRect)visiblePeripheralFrame:(BOOL)a3;
- (CGSize)sizeOfInputViewForInputViewSet:(id)a3 withInterfaceOrientation:(int64_t)a4;
- (CGSize)totalPeripheralSizeForOrientation:(int64_t)a3;
- (UIInputViewSet)inputViews;
- (UIInputViewSet)loadAwareInputViews;
- (UIPeripheralHost)init;
- (UIPeripheralHostState)targetState;
- (double)getVerticalOverlapForView:(id)a3 usingKeyboardInfo:(id)a4;
- (double)minimumOffsetForBuffer:(double)a3;
- (id)_currentInputView;
- (id)_renderConfigForCurrentResponder;
- (id)_renderConfigForResponder:(id)a3;
- (id)_sceneForFirstResponder:(id)a3;
- (id)_screenForFirstResponder:(id)a3;
- (id)containerRootController;
- (id)containerTextEffectsWindow;
- (id)containerTextEffectsWindowAboveStatusBar;
- (id)containerWindow;
- (id)existingContainerRootController;
- (id)lastUsedInputModeForCurrentContext;
- (id)transformedContainerView;
- (id)transitioningView;
- (id)userInfoFromGeometry:(UIPeripheralAnimationGeometry *)a3 duration:(double)a4 forWill:(BOOL)a5 forShow:(BOOL)a6;
- (int)_isKeyboardDeactivated;
- (int)currentState;
- (unint64_t)_clipCornersOfView:(id)a3;
- (void)_beginDisablingAnimations;
- (void)_clearPreservedInputViewsWithId:(id)a3 clearKeyboard:(BOOL)a4;
- (void)_clearPreservedInputViewsWithRestorableResponder:(id)a3;
- (void)_endDisablingAnimations;
- (void)_preserveInputViewsWithId:(id)a3 animated:(BOOL)a4 reset:(BOOL)a5;
- (void)_restoreInputAccessoryViewOverrideWithId:(id)a3;
- (void)_updateContainerWindowLevel;
- (void)dealloc;
- (void)disableInterfaceAutorotation:(BOOL)a3;
- (void)enableKeyboardTyping;
- (void)extendKeyboardBackdropHeight:(double)a3 withDuration:(double)a4;
- (void)finishRotation;
- (void)finishRotationOfKeyboard:(id)a3;
- (void)flushDelayedTasks;
- (void)flushDelayedTasksForKey:(id)a3;
- (void)forceOrderInAutomatic;
- (void)forceOrderInAutomaticAnimated:(BOOL)a3;
- (void)forceOrderInAutomaticFromDirection:(int)a3 withDuration:(double)a4;
- (void)forceOrderOutAutomatic;
- (void)forceOrderOutAutomaticAnimated:(BOOL)a3;
- (void)forceOrderOutAutomaticToDirection:(int)a3 withDuration:(double)a4;
- (void)forceReloadInputViews;
- (void)moveToPersistentOffset;
- (void)orderInAutomatic;
- (void)orderInAutomaticFromDirection:(int)a3 withDuration:(double)a4;
- (void)orderInAutomaticSkippingAnimation;
- (void)orderOutAutomatic;
- (void)orderOutAutomaticSkippingAnimation;
- (void)orderOutAutomaticToDirection:(int)a3 withDuration:(double)a4;
- (void)performMultipleOperations:(id)a3 withAnimationStyle:(id)a4;
- (void)performWithoutDeactivation:(id)a3;
- (void)peripheralHostWillResume:(id)a3;
- (void)postDidShowNotificationForGeometry:(UIPeripheralAnimationGeometry *)a3;
- (void)postKeyboardFrameChangeNotification:(id)a3 withInfo:(id)a4;
- (void)postWillShowNotificationForGeometry:(UIPeripheralAnimationGeometry *)a3 duration:(double)a4;
- (void)prepareForRotationOfKeyboard:(id)a3 toOrientation:(int64_t)a4;
- (void)prepareForRotationToOrientation:(int64_t)a3;
- (void)queueDelayedTask:(id)a3;
- (void)queueDelayedTask:(id)a3 forKey:(id)a4 delay:(double)a5;
- (void)removePreservedInputViewSetForInputView:(id)a3;
- (void)rotateKeyboard:(id)a3 toOrientation:(int64_t)a4;
- (void)rotateToOrientation:(int64_t)a3;
- (void)scrollView:(id)a3 didFinishPanGesture:(id)a4;
- (void)scrollView:(id)a3 didPanWithGesture:(id)a4;
- (void)setDeactivatedKeyboard:(BOOL)a3 forScene:(id)a4 forSuppressionAssertion:(BOOL)a5 updatePlacement:(BOOL)a6 wantsAssistant:(BOOL)a7 keepAccessories:(BOOL)a8;
- (void)setDocumentInputMode:(id)a3;
- (void)setInputViewsHidden:(BOOL)a3;
- (void)setKeyboardFencingEnabled:(BOOL)a3;
- (void)setKeyboardOnScreenNotifyKey:(BOOL)a3;
- (void)setTargetState:(id)a3;
- (void)setTextEffectsWindowLevelForInputView:(id)a3 responder:(id)a4;
- (void)setUndockedWithOffset:(CGPoint)a3 animated:(BOOL)a4;
- (void)textEffectsWindowDidRotate:(id)a3;
- (void)updateInputAccessoryViewVisibility:(BOOL)a3 withDuration:(double)a4;
- (void)updatePlacementForDeactivatedKeyboard:(BOOL)a3 forSuppressionAssertion:(BOOL)a4 wantsAssistant:(BOOL)a5 keepAccessories:(BOOL)a6 animationStyle:(id)a7;
- (void)updateToPlacement:(id)a3 withNormalAnimationsAndNotifications:(BOOL)a4;
@end

@implementation UIPeripheralHost

- (UIPeripheralHost)init
{
  v13.receiver = self;
  v13.super_class = UIPeripheralHost;
  v2 = [(UIPeripheralHost *)&v13 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = 257;
    *(v2 + 6) = 0;
    v4 = *MEMORY[0x1E695F058];
    v5 = *(MEMORY[0x1E695F058] + 16);
    *(v2 + 152) = *MEMORY[0x1E695F058];
    *(v2 + 168) = v5;
    *(v2 + 184) = v4;
    *(v2 + 200) = v5;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    targetStateStack = v3->_targetStateStack;
    v3->_targetStateStack = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    deferredTransitionTasks = v3->_deferredTransitionTasks;
    v3->_deferredTransitionTasks = v8;

    v3->_animationFencingEnabled = 1;
    v10 = +[UIInputViewSet emptyInputSet];
    [(UIPeripheralHost *)v3 set_inputViews:v10];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v3 selector:sel_peripheralHostWillResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [v11 addObserver:v3 selector:sel_textEffectsWindowDidRotate_ name:@"UITextEffectsWindowDidRotateNotification" object:0];
  }

  return v3;
}

+ (id)sharedInstance
{
  v2 = SharedPeripheralHost;
  if (!SharedPeripheralHost)
  {
    v3 = objc_alloc_init(UIPeripheralHost);
    v4 = SharedPeripheralHost;
    SharedPeripheralHost = v3;

    v2 = SharedPeripheralHost;
  }

  return v2;
}

- (void)flushDelayedTasks
{
  v3 = [MEMORY[0x1E696B098] valueWithPointer:self];
  [(UIPeripheralHost *)self flushDelayedTasksForKey:v3];
}

+ (CGRect)visiblePeripheralFrame
{
  v2 = +[UIPeripheralHost sharedInstance];
  if ([v2 isUndocked])
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v7 = [v2 containerRootController];
    [v7 visibleFrame];
    v3 = v8;
    v4 = v9;
    v5 = v10;
    v6 = v11;
  }

  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)isUndocked
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 existingContainerWindow];

  if (v3)
  {
    v4 = [v2 existingContainerRootController];
    LOBYTE(v3) = [v4 isUndocked];
  }

  return v3;
}

- (id)containerRootController
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 containerRootController];

  return v3;
}

- (BOOL)_isCoordinatingWithSystemGestures
{
  if (_UIApplicationIsExtension())
  {
    v3 = +[UIWindowScene _keyWindowScene];
    v4 = [v3 _topVisibleWindowPassingTest:&__block_literal_global_345_0];

    if (v4)
    {
      return 0;
    }
  }

  [(UIPeripheralHost *)self ambiguousControlCenterActivationMargin];
  if (v5 <= 0.0)
  {
    return 0;
  }

  return [(UIPeripheralHost *)self isOnScreen];
}

- (UIInputViewSet)inputViews
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 inputViews];

  return v3;
}

- (UIInputViewSet)loadAwareInputViews
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 transientInputViews];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(UIPeripheralHost *)self inputViews];
  }

  v7 = v6;

  return v7;
}

- (void)_beginDisablingAnimations
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v3 _beginDisablingAnimations];

  ++self->_disableAnimationsCount;
}

- (id)transformedContainerView
{
  v3 = [(UIPeripheralHost *)self existingContainerRootController];
  v4 = [v3 view];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(UIPeripheralHost *)self containerWindow];
  }

  v7 = v6;

  return v7;
}

- (id)existingContainerRootController
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 existingContainerRootController];

  return v3;
}

- (int)currentState
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([UIApp _isSpringBoard])
  {
    [v2 containerWindow];
  }

  else
  {
    [v2 existingContainerWindow];
  }
  v3 = ;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rootViewController];
    v6 = [v5 isChangingPlacement];
    v7 = [v5 isOnScreen];
    if (v6)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    if (v7)
    {
      v9 = v6 ^ 1;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v5 = +[UIKeyboard activeKeyboard];
    v10 = [v5 window];
    if (v10)
    {
      v9 = 1;
    }

    else
    {
      v9 = 3;
    }
  }

  return v9;
}

- (void)_endDisablingAnimations
{
  --self->_disableAnimationsCount;
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v2 _endDisablingAnimations];
}

- (int)_isKeyboardDeactivated
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 deactivationCount];

  return v3;
}

- (id)containerWindow
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 containerWindow];

  return v3;
}

- (BOOL)_isTransitioning
{
  v2 = [(UIPeripheralHost *)self existingContainerRootController];
  v3 = [v2 isTransitioning];

  return v3;
}

+ (CGRect)screenBoundsInAppOrientation
{
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = +[UIKeyboardSceneDelegate interfaceOrientation];
  if ((v11 - 3) >= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v8;
  }

  if ((v11 - 3) >= 2)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  v14 = v4;
  v15 = v6;
  result.size.height = v12;
  result.size.width = v13;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIApplicationWillEnterForegroundNotification";
  v6[1] = @"UITextEffectsWindowDidRotateNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  [(UIPeripheralHost *)self set_inputViews:0];
  [(UIPeripheralHost *)self set_transientInputViews:0];
  [(UIPeripheralHost *)self setResponder:0];
  v5.receiver = self;
  v5.super_class = UIPeripheralHost;
  [(UIPeripheralHost *)&v5 dealloc];
}

- (BOOL)hasDictationKeyboard
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 _layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)peripheralHostWillResume:(id)a3
{
  v4 = [(UIPeripheralHost *)self responder];
  v5 = [v4 _requiresKeyboardWhenFirstResponder];

  if (v5)
  {
    v6 = +[UIKeyboardImpl sharedInstance];
    v7 = [(UIPeripheralHost *)self responder];
    v8 = [v7 _keyboardResponder];
    [v6 setDelegate:v8];

    v9 = [v6 geometryDelegate];

    if (!v9)
    {
      v10 = +[UIKeyboard activeKeyboard];
      [v6 setGeometryDelegate:v10];
    }

    v11 = [(UIPeripheralHost *)self inputViews];
    v12 = [v11 inputViewController];
    v13 = [v12 _compatibilityController];
    v14 = +[UIKeyboardInputModeController sharedInputModeController];
    v15 = [v14 currentInputMode];
    [v13 setInputMode:v15];
  }

  [(UIPeripheralHost *)self flushDelayedTasks];
}

- (void)textEffectsWindowDidRotate:(id)a3
{
  v4 = a3;
  v12 = [(UIPeripheralHost *)self view];
  v5 = [v12 window];
  v6 = [v4 object];

  if (v5 == v6)
  {
    v7 = [(UIPeripheralHost *)self containerWindow];
    v8 = [v7 _isHostedInAnotherProcess];

    if (v8)
    {
      return;
    }

    v12 = [(UIPeripheralHost *)self containerWindow];
    v9 = [v12 interfaceOrientation];
    v5 = [(UIPeripheralHost *)self inputViews];
    v6 = [v5 keyboard];
    if (v9 == [v6 interfaceOrientation])
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = [(UIPeripheralHost *)self view];
    [v11 setAlpha:v10];
  }
}

- (CGSize)sizeOfInputViewForInputViewSet:(id)a3 withInterfaceOrientation:(int64_t)a4
{
  v5 = a3;
  if (([v5 isEmpty] & 1) != 0 || (objc_msgSend(v5, "keyboard"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [UIKeyboardImpl sizeForInterfaceOrientation:a4];
  }

  else
  {
    [UIKeyboardImpl defaultSizeForInterfaceOrientation:a4];
  }

  v9 = v7;
  v10 = v8;

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)_renderConfigForCurrentResponder
{
  v3 = [(UIPeripheralHost *)self responder];
  v4 = [(UIPeripheralHost *)self _renderConfigForResponder:v3];

  return v4;
}

- (id)_renderConfigForResponder:(id)a3
{
  v3 = a3;
  v4 = [UITextInputTraits traitEnvironmentFromTraits:v3];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 keyboardAppearance];
  }

  else
  {
    v5 = 0;
  }

  v6 = [UITextInputTraits configuredAppearanceForAppearance:v5 withTraitEnvironment:v4];
  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  v8 = [v7 currentInputMode];
  v9 = [UIKBRenderConfig configForAppearance:v6 inputMode:v8 traitEnvironment:v4];

  return v9;
}

+ (void)_releaseSharedInstance
{
  v2 = [SharedPeripheralHost view];
  v3 = [v2 layer];
  [v3 removeAllAnimations];

  v4 = SharedPeripheralHost;
  SharedPeripheralHost = 0;
}

+ (void)setKeyboardOnScreenNotifyKey:(BOOL)a3
{
  _MergedGlobals_1198 = a3;
  v3 = dword_1ED49F454;
  if (!dword_1ED49F454)
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __49__UIPeripheralHost_setKeyboardOnScreenNotifyKey___block_invoke_2;
    handler[3] = &unk_1E71177A0;
    v5 = &__block_literal_global_389;
    notify_register_dispatch("com.apple.keyboard.isOnScreen", &dword_1ED49F454, MEMORY[0x1E69E96A0], handler);

    v3 = dword_1ED49F454;
  }

  __49__UIPeripheralHost_setKeyboardOnScreenNotifyKey___block_invoke(a1, v3);
}

uint64_t __49__UIPeripheralHost_setKeyboardOnScreenNotifyKey___block_invoke(int a1, int token)
{
  state64 = 0;
  result = notify_get_state(token, &state64);
  if (result || (state64 & 1) != _MergedGlobals_1198)
  {
    state64 = _MergedGlobals_1198;
    notify_set_state(token, _MergedGlobals_1198);
    return notify_post("com.apple.keyboard.isOnScreen");
  }

  return result;
}

void __49__UIPeripheralHost_setKeyboardOnScreenNotifyKey___block_invoke_2(uint64_t a1)
{
  if (_MergedGlobals_1198 == 1)
  {
    if (![UIApp isSuspended] || (+[UIKeyboard activeKeyboard](UIKeyboard, "activeKeyboard"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "window"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "_isHostedInAnotherProcess"), v3, v2, v4))
    {
      v5 = *(*(a1 + 32) + 16);

      v5();
    }
  }
}

- (void)setKeyboardOnScreenNotifyKey:(BOOL)a3
{
  [objc_opt_class() setKeyboardOnScreenNotifyKey:a3];

  +[UIDictationController keyboardDidUpdateOnScreenStatus];
}

- (void)setKeyboardFencingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  [v4 setShouldFence:v3];
}

- (UIPeripheralHostState)targetState
{
  v3 = [(NSMutableArray *)self->_targetStateStack count];
  if (v3)
  {
    v3 = [(NSMutableArray *)self->_targetStateStack lastObject];
  }

  return v3;
}

- (void)setTargetState:(id)a3
{
  targetStateStack = self->_targetStateStack;
  if (a3)
  {

    [(NSMutableArray *)targetStateStack addObject:?];
  }

  else if ([(NSMutableArray *)targetStateStack count])
  {
    v5 = self->_targetStateStack;

    [(NSMutableArray *)v5 removeLastObject];
  }
}

- (void)postKeyboardFrameChangeNotification:(id)a3 withInfo:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (!self->_isTranslating || ([v11 _containsSubstring:@"ChangeFrameNotification"] & 1) == 0)
  {
    if ([v11 isEqualToString:@"UIKeyboardWillChangeFrameNotification"])
    {
      v7 = UIKeyboardPrivateWillChangeFrameNotification;
    }

    else
    {
      if (![v11 isEqualToString:@"UIKeyboardDidChangeFrameNotification"])
      {
        v8 = 0;
        goto LABEL_9;
      }

      v7 = UIKeyboardPrivateDidChangeFrameNotification;
    }

    v8 = *v7;
LABEL_9:
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = [(UIPeripheralHost *)self _screenForFirstResponder:self->_responder];
    [v9 postNotificationName:v8 object:v10 userInfo:v6];

    [v9 postNotificationName:v11 object:0 userInfo:v6];
  }
}

- (void)disableInterfaceAutorotation:(BOOL)a3
{
  if (a3)
  {
    if (self->_interfaceAutorotationDisabled)
    {
      return;
    }

    v4 = 1;
    v5 = &selRef_beginDisablingInterfaceAutorotation;
  }

  else
  {
    if (!self->_interfaceAutorotationDisabled)
    {
      return;
    }

    v4 = 0;
    v5 = &selRef_endDisablingInterfaceAutorotation;
  }

  v6 = [UIApp windows];
  [v6 makeObjectsPerformSelector:*v5];

  self->_interfaceAutorotationDisabled = v4;
}

- (void)prepareForRotationToOrientation:(int64_t)a3
{
  v6 = [(UIPeripheralHost *)self inputViews];
  v5 = [v6 keyboard];
  [(UIPeripheralHost *)self prepareForRotationOfKeyboard:v5 toOrientation:a3];
}

- (void)rotateToOrientation:(int64_t)a3
{
  v6 = [(UIPeripheralHost *)self inputViews];
  v5 = [v6 keyboard];
  [(UIPeripheralHost *)self rotateKeyboard:v5 toOrientation:a3];
}

- (void)finishRotation
{
  v4 = [(UIPeripheralHost *)self inputViews];
  v3 = [v4 keyboard];
  [(UIPeripheralHost *)self finishRotationOfKeyboard:v3];
}

- (void)prepareForRotationOfKeyboard:(id)a3 toOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v31 = v6;
    v8 = [v6 window];
    v9 = [v8 _isTextEffectsWindow];

    v7 = v31;
    if ((v9 & 1) == 0)
    {
      if ([UIApp _isSpringBoard])
      {
        v10 = [v31 window];
        [v10 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        [v31 bounds];
        [v31 convertRect:0 toView:?];
        v34.origin.x = v19;
        v34.origin.y = v20;
        v34.size.width = v21;
        v34.size.height = v22;
        v33.origin.x = v12;
        v33.origin.y = v14;
        v33.size.width = v16;
        v33.size.height = v18;
        v23 = CGRectContainsRect(v33, v34);

        if (!v23)
        {
          [v31 setHidden:1];
        }
      }

      v24 = [v31 window];
      [v24 _rotationDuration];
      v26 = v25;

      v27 = [(UIPeripheralHost *)self containerRootController];
      [v27 _prepareForRotationToOrientation:a4 duration:v26];

      v28 = +[_UIRemoteKeyboards enabled];
      v7 = v31;
      if (v28)
      {
        v29 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        v30 = [v29 inputWindowRootViewController];

        [v30 _prepareForRotationToOrientation:a4 duration:v26];
        v7 = v31;
      }
    }
  }
}

- (void)rotateKeyboard:(id)a3 toOrientation:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v17 = v6;
    v8 = [v6 window];
    v9 = [v8 _isTextEffectsWindow];

    v7 = v17;
    if ((v9 & 1) == 0)
    {
      v10 = [v17 window];
      [v10 _rotationDuration];
      v12 = v11;

      v13 = [(UIPeripheralHost *)self containerRootController];
      [v13 _rotateToOrientation:a4 duration:v12];

      v14 = +[_UIRemoteKeyboards enabled];
      v7 = v17;
      if (v14)
      {
        v15 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        v16 = [v15 inputWindowRootViewController];

        [v16 _rotateToOrientation:a4 duration:v12];
        v7 = v17;
      }
    }
  }
}

- (void)finishRotationOfKeyboard:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = v4;
    v6 = [v4 window];
    v7 = [v6 _isTextEffectsWindow];

    v5 = v12;
    if ((v7 & 1) == 0)
    {
      if ([UIApp _isSpringBoard])
      {
        [v12 setHidden:0];
      }

      v8 = [(UIPeripheralHost *)self containerRootController];
      [v8 _finishRotationFromInterfaceOrientation:0];

      v9 = +[_UIRemoteKeyboards enabled];
      v5 = v12;
      if (v9)
      {
        v10 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        v11 = [v10 inputWindowRootViewController];

        [v11 _finishRotationFromInterfaceOrientation:0];
        v5 = v12;
      }
    }
  }
}

- (id)_sceneForFirstResponder:(id)a3
{
  v3 = [a3 _responderWindow];
  v4 = [v3 windowScene];

  return v4;
}

- (BOOL)animationsEnabled
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 responder];
  v5 = [(UIPeripheralHost *)self _sceneForFirstResponder:v4];
  v6 = [UITextEffectsHostingInfo hostingInfoForWindowScene:v5];
  v7 = [v6 useHostedInstance];

  v8 = (v7 & 1) != 0 || [UIApp applicationState] != 2;
  v9 = self->_disableAnimationsCount < 1;

  return v9 && v8;
}

- (void)forceOrderInAutomatic
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v2 forceOrderInAutomaticAnimated:1];
}

- (void)forceOrderOutAutomatic
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v2 forceOrderOutAutomaticAnimated:1];
}

- (void)forceOrderInAutomaticAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 forceOrderInAutomaticAnimated:v3];
}

- (void)forceOrderOutAutomaticAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 forceOrderOutAutomaticAnimated:v3];
}

- (void)forceOrderInAutomaticFromDirection:(int)a3 withDuration:(double)a4
{
  v5 = *&a3;
  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v6 forceOrderInAutomaticFromDirection:v5 withDuration:a4];
}

- (void)forceOrderOutAutomaticToDirection:(int)a3 withDuration:(double)a4
{
  v5 = *&a3;
  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v6 forceOrderOutAutomaticToDirection:v5 withDuration:a4];
}

- (void)orderInAutomatic
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v4 automaticAppearanceReallyEnabled])
  {
    v2 = [v4 nextAnimationStyle];
    v3 = [v2 legacyAnimationCopy];

    [v4 orderInWithAnimationStyle:v3];
  }
}

- (void)orderInAutomaticSkippingAnimation
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v4 automaticAppearanceReallyEnabled])
  {
    v2 = [v4 nextAnimationStyle];
    v3 = [v2 legacyAnimationCopy];

    [v3 setAnimated:0];
    [v4 orderInWithAnimationStyle:v3];
  }
}

- (void)orderInAutomaticFromDirection:(int)a3 withDuration:(double)a4
{
  v5 = *&a3;
  v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v7 automaticAppearanceReallyEnabled])
  {
    v6 = [UIInputViewAnimationStyleDirectional animationStyleAnimated:a4 > 0.0 duration:v5 outDirection:a4];
    [v7 orderInWithAnimationStyle:v6];
  }
}

- (void)orderOutAutomatic
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v4 automaticAppearanceReallyEnabled])
  {
    v2 = [v4 nextAnimationStyle];
    v3 = [v2 legacyAnimationCopy];

    [v4 orderOutWithAnimationStyle:v3];
  }
}

- (void)orderOutAutomaticSkippingAnimation
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v4 automaticAppearanceReallyEnabled])
  {
    v2 = [v4 nextAnimationStyle];
    v3 = [v2 legacyAnimationCopy];

    [v3 setAnimated:0];
    [v4 orderOutWithAnimationStyle:v3];
  }
}

- (void)orderOutAutomaticToDirection:(int)a3 withDuration:(double)a4
{
  v5 = *&a3;
  v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v7 automaticAppearanceReallyEnabled])
  {
    v6 = [UIInputViewAnimationStyleDirectional animationStyleAnimated:a4 > 0.0 duration:v5 outDirection:a4];
    [v7 orderOutWithAnimationStyle:v6];
  }
}

- (void)setDocumentInputMode:(id)a3
{
  v6 = [a3 primaryLanguage];
  v4 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v6];
  documentInputMode = self->_documentInputMode;
  self->_documentInputMode = v4;
}

- (BOOL)hasCustomInputView
{
  v3 = [(UIPeripheralHost *)self inputViews];
  v4 = [v3 inputView];
  if (v4)
  {
    v5 = [(UIPeripheralHost *)self inputViews];
    v6 = [v5 keyboard];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGSize)totalPeripheralSizeForOrientation:(int64_t)a3
{
  v5 = [(UIPeripheralHost *)self inputViews];
  [(UIPeripheralHost *)self sizeOfInputViewForInputViewSet:v5 withInterfaceOrientation:a3];
  v7 = v6;
  v9 = v8;

  if ([(UIPeripheralHost *)self hasCustomInputView])
  {
    v10 = [(UIPeripheralHost *)self inputViews];
    [v10 inputViewBounds];
    v9 = v11;
  }

  v12 = [(UIPeripheralHost *)self inputViews];
  v13 = [v12 inputAccessoryView];

  if (v13)
  {
    v14 = [(UIPeripheralHost *)self inputViews];
    v15 = [v14 inputView];

    if (!v15)
    {
      v9 = 0.0;
    }

    v16 = [(UIPeripheralHost *)self inputViews];
    [v16 inputAccessoryViewBounds];
    v9 = v9 + v17;
  }

  v18 = [(UIPeripheralHost *)self inputViews];
  [v18 keyboard];

  v19 = v7;
  v20 = v9;
  result.height = v20;
  result.width = v19;
  return result;
}

- (BOOL)userInfoContainsActualGeometryChange:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"UIKeyboardFrameBeginUserInfoKey"];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v3 objectForKey:@"UIKeyboardFrameEndUserInfoKey"];

  [v13 CGRectValue];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  v24.origin.x = v15;
  v24.origin.y = v17;
  v24.size.width = v19;
  v24.size.height = v21;
  return !CGRectEqualToRect(v23, v24);
}

- (CGRect)screenRectFromBounds:(CGRect)a3 atCenter:(CGPoint)a4 applyingSourceHeightDelta:(double)a5
{
  x = a4.x;
  width = a3.size.width;
  y = a3.origin.y;
  v8 = a3.origin.x;
  v10 = a3.size.height + a5;
  v11 = a4.y + a5 * 0.5;
  v12 = [(UIPeripheralHost *)self containerWindow];
  [v12 convertRect:0 toWindow:{v8, y, width, v10}];
  v14 = v13;
  v16 = v15;

  v17 = [(UIPeripheralHost *)self containerWindow];
  [v17 convertPoint:0 toWindow:{x, v11}];
  v19 = v18;
  v21 = v20;

  v22 = v19 - v14 * 0.5;
  v23 = v21 - v16 * 0.5;
  v24 = v14;
  v25 = v16;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)userInfoFromGeometry:(UIPeripheralAnimationGeometry *)a3 duration:(double)a4 forWill:(BOOL)a5 forShow:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = 24;
  if (a6)
  {
    v10 = 8;
  }

  v11 = 16;
  if (a6)
  {
    v11 = 0;
  }

  v12 = *(&a3->outPosition.x + v11);
  v13 = *(&a3->outPosition.x + v10);
  if (a6 && ![(UIPeripheralHost *)self isUndocked])
  {
    v16 = [(UIPeripheralHost *)self inputViews];
    v17 = [v16 isSplit];
    v18 = 24;
    if (v17)
    {
      v18 = 8;
    }

    v19 = 16;
    if (v17)
    {
      v19 = 0;
    }

    x = *(&a3->outPosition.x + v19);
    y = *(&a3->outPosition.x + v18);
  }

  else
  {
    x = a3->outPosition.x;
    y = a3->outPosition.y;
  }

  if (v7)
  {
    [(UIPeripheralHost *)self screenRectFromBounds:a3->bounds.origin.x atCenter:a3->bounds.origin.y applyingSourceHeightDelta:a3->bounds.size.width, a3->bounds.size.height, v12, v13, -a3->targetFrameHeightDelta];
    v82 = v21;
    v83 = v20;
    v80 = v23;
    v81 = v22;
    [(UIPeripheralHost *)self screenRectFromBounds:a3->bounds.origin.x atCenter:a3->bounds.origin.y applyingSourceHeightDelta:a3->bounds.size.width, a3->bounds.size.height, x, y, 0.0];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = 7;
  }

  else
  {
    v33 = [(UIPeripheralHost *)self targetState];
    v34 = [v33 screenGeometry];
    v35 = [v34 objectForKey:@"UIKeyboardFrameBeginUserInfoKey"];
    [v35 CGRectValue];
    v82 = v37;
    v83 = v36;
    v80 = v39;
    v81 = v38;

    v40 = [(UIPeripheralHost *)self targetState];
    v41 = [v40 screenGeometry];
    v42 = [v41 objectForKey:@"UIKeyboardFrameEndUserInfoKey"];
    [v42 CGRectValue];
    v25 = v43;
    v27 = v44;
    v29 = v45;
    v31 = v46;

    v32 = 5;
  }

  if ([(UIPeripheralHost *)self isUndocked])
  {
    v47 = [(UIPeripheralHost *)self inputViews];
    v48 = [v47 inputView];

    if (v48)
    {
      if (v6)
      {
        tx = a3->transform.tx;
        ty = a3->transform.ty;
        v51 = x + tx;
        v52 = y + ty;
        [(UIPeripheralHost *)self screenRectFromBounds:a3->bounds.origin.x atCenter:a3->bounds.origin.y applyingSourceHeightDelta:a3->bounds.size.width, a3->bounds.size.height, v12 + tx, v13 + ty, -a3->targetFrameHeightDelta];
        v82 = v54;
        v83 = v53;
        v80 = v56;
        v81 = v55;
        [(UIPeripheralHost *)self screenRectFromBounds:a3->bounds.origin.x atCenter:a3->bounds.origin.y applyingSourceHeightDelta:a3->bounds.size.width, a3->bounds.size.height, v51, v52, -a3->targetFrameHeightDelta];
        v25 = v57;
        v27 = v58;
        v29 = v59;
        v31 = v60;
      }
    }
  }

  v61 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v32];
  v62 = [MEMORY[0x1E696B098] valueWithCGRect:{v83, v82, v81, v80}];
  [v61 setObject:v62 forKey:@"UIKeyboardFrameBeginUserInfoKey"];

  v63 = [MEMORY[0x1E696B098] valueWithCGRect:{v25, v27, v29, v31}];
  [v61 setObject:v63 forKey:@"UIKeyboardFrameEndUserInfoKey"];

  v64 = [MEMORY[0x1E696B098] valueWithCGPoint:{v12, v13}];
  [v61 setObject:v64 forKey:@"UIKeyboardCenterBeginUserInfoKey"];

  v65 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
  [v61 setObject:v65 forKey:@"UIKeyboardCenterEndUserInfoKey"];

  v66 = [MEMORY[0x1E696B098] valueWithCGRect:{a3->bounds.origin.x, a3->bounds.origin.y, a3->bounds.size.width, a3->bounds.size.height}];
  [v61 setObject:v66 forKey:@"UIKeyboardBoundsUserInfoKey"];

  v67 = MEMORY[0x1E696AD98];
  v68 = +[UIKeyboardImpl activeInstance];
  v69 = [v67 numberWithBool:{objc_msgSend(v68, "splitTransitionInProgress")}];
  [v61 setObject:v69 forKey:@"UIKeyboardFrameChangedByUserInteraction"];

  if (v7)
  {
    v70 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    [v61 setObject:v70 forKey:@"UIKeyboardAnimationDurationUserInfoKey"];

    v71 = [MEMORY[0x1E696AD98] numberWithInteger:7];
    [v61 setObject:v71 forKey:@"UIKeyboardAnimationCurveUserInfoKey"];

    v72 = [(UIPeripheralHost *)self targetState];

    if (v72)
    {
      v73 = MEMORY[0x1E695DF20];
      v74 = [MEMORY[0x1E696B098] valueWithCGRect:{v83, v82, v81, v80}];
      v75 = [MEMORY[0x1E696B098] valueWithCGRect:{v25, v27, v29, v31}];
      v76 = [v73 dictionaryWithObjectsAndKeys:{v74, @"UIKeyboardFrameBeginUserInfoKey", v75, @"UIKeyboardFrameEndUserInfoKey", 0}];
      v77 = [(UIPeripheralHost *)self targetState];
      [v77 setScreenGeometry:v76];
    }
  }

  return v61;
}

- (id)transitioningView
{
  v2 = [(UIPeripheralHost *)self view];
  v3 = [v2 superview];

  return v3;
}

- (CGRect)transitioningFrame
{
  v2 = [(UIPeripheralHost *)self containerRootController];
  [v2 transitioningFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)updateToPlacement:(id)a3 withNormalAnimationsAndNotifications:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIPeripheralHost *)self containerRootController];
  [v7 updateToPlacement:v6 withNormalAnimationsAndNotifications:v4];
}

- (void)setInputViewsHidden:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIPeripheralHost *)self containerRootController];
  [v4 setInputViewsHidden:v3];
}

- (id)_screenForFirstResponder:(id)a3
{
  v3 = [a3 _responderWindow];
  v4 = [v3 screen];

  if ([v4 _userInterfaceIdiom] == 3)
  {
    v5 = v4;
  }

  else
  {
    v5 = [objc_opt_self() mainScreen];
  }

  v6 = v5;

  return v6;
}

- (void)queueDelayedTask:(id)a3
{
  v4 = MEMORY[0x1E696B098];
  v5 = a3;
  v6 = [v4 valueWithPointer:self];
  [(UIPeripheralHost *)self queueDelayedTask:v5 forKey:v6];
}

- (void)queueDelayedTask:(id)a3 forKey:(id)a4 delay:(double)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(NSMutableDictionary *)self->_deferredTransitionTasks objectForKey:v9];
  if (v10)
  {
    v11 = v10;
    v12 = _Block_copy(v10);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __65__UIPeripheralHost_UIKitInternal__queueDelayedTask_forKey_delay___block_invoke_2;
    v26 = &unk_1E70F77D0;
    v27 = v12;
    v28 = v8;
    v13 = v12;
    v14 = [&v23 copy];

    deferredTransitionTasks = self->_deferredTransitionTasks;
    v16 = _Block_copy(v14);
    [(NSMutableDictionary *)deferredTransitionTasks setObject:v16 forKey:v9, v23, v24, v25, v26];
  }

  else
  {
    v17 = [(UIPeripheralHost *)self existingContainerRootController];
    v18 = [v17 isTransitionStarted];

    if (v18)
    {
      v8[2](v8);
    }

    else
    {
      v19 = [v8 copy];
      v20 = self->_deferredTransitionTasks;
      v21 = _Block_copy(v19);
      [(NSMutableDictionary *)v20 setObject:v21 forKey:v9];

      v22 = dispatch_time(0, (a5 * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__UIPeripheralHost_UIKitInternal__queueDelayedTask_forKey_delay___block_invoke;
      block[3] = &unk_1E70F35B8;
      block[4] = self;
      v30 = v9;
      dispatch_after(v22, MEMORY[0x1E69E96A0], block);
    }
  }
}

void __65__UIPeripheralHost_UIKitInternal__queueDelayedTask_forKey_delay___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 264) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v6 = v2;
    [*(*(a1 + 32) + 264) removeObjectForKey:*(a1 + 40)];
    v3 = [*(a1 + 32) existingContainerRootController];
    if ([v3 isTransitioning])
    {
      v4 = [*(a1 + 32) existingContainerRootController];
      v5 = [v4 isTransitionStarted];

      if (!v5)
      {
        [*(a1 + 32) queueDelayedTask:v6 forKey:*(a1 + 40)];
LABEL_7:
        v2 = v6;
        goto LABEL_8;
      }
    }

    else
    {
    }

    (*(v6 + 2))();
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t __65__UIPeripheralHost_UIKitInternal__queueDelayedTask_forKey_delay___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)flushDelayedTasksForKey:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableDictionary *)self->_deferredTransitionTasks objectForKey:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_deferredTransitionTasks removeObjectForKey:v5];
    v4[2](v4);
  }
}

- (BOOL)hasDelayedTasksForKey:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_deferredTransitionTasks objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)containerTextEffectsWindow
{
  v2 = [(UIPeripheralHost *)self containerWindow];
  if ([v2 _isTextEffectsWindow])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)containerTextEffectsWindowAboveStatusBar
{
  v2 = [(UIPeripheralHost *)self containerTextEffectsWindow];
  v3 = [v2 aboveStatusBarWindow];

  return v3;
}

- (void)_updateContainerWindowLevel
{
  v4 = [(UIPeripheralHost *)self inputViews];
  v3 = [(UIPeripheralHost *)self responder];
  [(UIPeripheralHost *)self setTextEffectsWindowLevelForInputView:v4 responder:v3];
}

- (void)setTextEffectsWindowLevelForInputView:(id)a3 responder:(id)a4
{
  v24 = a4;
  if (![a3 isEmpty] || (+[UIKeyboardSceneDelegate automaticKeyboardArbiterClient](UIKeyboardSceneDelegate, "automaticKeyboardArbiterClient"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasAnyHostedViews"), v6, v7))
  {
    v8 = [v24 _responderWindow];
    if (v8)
    {
      v9 = v8;
      v10 = [v24 _responderWindow];
      v11 = [(UIPeripheralHost *)self containerTextEffectsWindow];

      if (v10 != v11)
      {
        v12 = [(UIPeripheralHost *)self containerTextEffectsWindow];
        v13 = [v12 _isHostedInAnotherProcess];

        if ((v13 & 1) == 0)
        {
          v14 = [v24 _responderWindow];
          [v14 level];
          v16 = v15;

          v17 = [v24 _responderWindow];
          v18 = [(UIWindow *)v17 _fbsScene];
          v19 = [v18 settings];
          [v19 level];
          v21 = v20;

          v22 = [(UIPeripheralHost *)self containerTextEffectsWindow];
          [v22 _setWindowLevel:v16 + 1.0];

          v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          [v23 setWindowLevel:v24 sceneLevel:v16 + 2.0 forResponder:v21 + 2.0];
        }
      }
    }
  }
}

- (void)forceReloadInputViews
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v2 = [v3 responder];
  [v3 _reloadInputViewsForResponder:v2];
}

- (void)setDeactivatedKeyboard:(BOOL)a3 forScene:(id)a4 forSuppressionAssertion:(BOOL)a5 updatePlacement:(BOOL)a6 wantsAssistant:(BOOL)a7 keepAccessories:(BOOL)a8
{
  v30 = a8;
  v8 = a7;
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v43 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = _UIPeripheralHostLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *&buf[4] = v11;
    LOWORD(v39) = 2112;
    *(&v39 + 2) = v13;
    WORD5(v39) = 1024;
    HIDWORD(v39) = v10;
    _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "setDeactivatedKeyboard: %d forScene: %@ forSuppressionAssertion: %d", buf, 0x18u);
  }

  if (!v13)
  {
    v15 = [(UIPeripheralHost *)self containerWindow];
    v16 = [v15 screen];
    v13 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:v16];

    if (!v13)
    {
      v17 = [(UIPeripheralHost *)self containerWindow];
      v13 = [v17 windowScene];
    }
  }

  *buf = 0;
  *&v39 = buf;
  *(&v39 + 1) = 0x3032000000;
  v40 = __Block_byref_object_copy__136;
  v41 = __Block_byref_object_dispose__136;
  v42 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __138__UIPeripheralHost_UIKitInternal__setDeactivatedKeyboard_forScene_forSuppressionAssertion_updatePlacement_wantsAssistant_keepAccessories___block_invoke;
  v33[3] = &unk_1E7117698;
  v18 = v13;
  v34 = v18;
  v35 = buf;
  [UIKeyboardSceneDelegate performOnControllers:v33];
  v19 = *(v39 + 40);
  if (v19 || !v11)
  {
    v20 = [v19 containerRootController];
    v21 = [*(v39 + 40) nextAnimationStyle];
    v22 = *(v39 + 40);
    if (v11)
    {
      v23 = [*(v39 + 40) deactivationCount];
      [v22 setDeactivationCount:v23 + 1];
      if (v23)
      {
        v24 = 0;
      }

      else
      {
        v25 = +[UIKeyboardImpl activeInstance];
        v26 = [v25 showsCandidateBar];

        if (v26)
        {
          v27 = +[UIKeyboardImpl activeInstance];
          v28 = [v27 candidateController];
          [v28 collapse];
        }

        v24 = 1;
      }
    }

    else
    {
      if ([*(v39 + 40) deactivationCount])
      {
        [*(v39 + 40) setDeactivationCount:{objc_msgSend(*(v39 + 40), "deactivationCount") - 1}];
      }

      v24 = [*(v39 + 40) deactivationCount] == 0;
    }

    v29 = _UIPeripheralHostLogger();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v36 = 67109120;
      v37 = v24;
      _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_DEFAULT, "setDeactivatedKeyboard, shouldUpdatePlacement: %d", v36, 8u);
    }

    if (v24)
    {
      if (v9)
      {
        [(UIPeripheralHost *)self updatePlacementForDeactivatedKeyboard:v11 forSuppressionAssertion:v10 wantsAssistant:v8 keepAccessories:v30 animationStyle:v21];
      }

      else
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __138__UIPeripheralHost_UIKitInternal__setDeactivatedKeyboard_forScene_forSuppressionAssertion_updatePlacement_wantsAssistant_keepAccessories___block_invoke_327;
        v31[3] = &__block_descriptor_33_e33_v16__0__UIInputWindowController_8l;
        v32 = v11;
        [(UIPeripheralHost *)self performMultipleOperations:v31 withAnimationStyle:v21];
      }
    }
  }

  _Block_object_dispose(buf, 8);
}

void __138__UIPeripheralHost_UIKitInternal__setDeactivatedKeyboard_forScene_forSuppressionAssertion_updatePlacement_wantsAssistant_keepAccessories___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v4 = [v6 scene];
  v5 = *(a1 + 32);

  if (v4 == v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

void __138__UIPeripheralHost_UIKitInternal__setDeactivatedKeyboard_forScene_forSuppressionAssertion_updatePlacement_wantsAssistant_keepAccessories___block_invoke_327(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 placement];
  [v3 setPlacementChangeDisabled:v2 withPlacement:v4];
}

- (void)updatePlacementForDeactivatedKeyboard:(BOOL)a3 forSuppressionAssertion:(BOOL)a4 wantsAssistant:(BOOL)a5 keepAccessories:(BOOL)a6 animationStyle:(id)a7
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __143__UIPeripheralHost_UIKitInternal__updatePlacementForDeactivatedKeyboard_forSuppressionAssertion_wantsAssistant_keepAccessories_animationStyle___block_invoke;
  v7[3] = &__block_descriptor_36_e33_v16__0__UIInputWindowController_8l;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [(UIPeripheralHost *)self performMultipleOperations:v7 withAnimationStyle:a7];
}

void __143__UIPeripheralHost_UIKitInternal__updatePlacementForDeactivatedKeyboard_forSuppressionAssertion_wantsAssistant_keepAccessories_animationStyle___block_invoke(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = a1[32];
  v5 = [v3 placement];
  v6 = [v7 _placementForDeactivatedKeyboard:v4 currentPlacement:v5 forSuppressionAssertion:a1[33] wantsAssistant:a1[34] keepAccessories:a1[35]];

  [v3 setPlacementChangeDisabled:a1[32] withPlacement:v6];
}

- (void)performWithoutDeactivation:(id)a3
{
  v8 = a3;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 deactivationCount];
  if (v5)
  {
    [v4 setDeactivationCount:1];
    v6 = [v4 scene];
    [(UIPeripheralHost *)self setDeactivatedKeyboard:0 forScene:v6];

    v8[2]();
    v7 = [v4 scene];
    [(UIPeripheralHost *)self setDeactivatedKeyboard:1 forScene:v7];

    [v4 setDeactivationCount:{objc_msgSend(v4, "deactivationCount") + v5 - 1}];
  }

  else
  {
    v8[2]();
  }
}

- (id)lastUsedInputModeForCurrentContext
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 responder];

  v4 = [v3 textInputContextIdentifier];

  if (v4)
  {
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    v6 = [v3 textInputMode];
    v4 = [v5 lastUsedInputModeForTextInputMode:v6];
  }

  return v4;
}

- (CGRect)visiblePeripheralFrame:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIPeripheralHost *)self targetState];

  if (v5 && v3)
  {
    v6 = [(UIPeripheralHost *)self targetState];
    v7 = v6;
    if (v6)
    {
      [v6 geometry];
      v8 = v60;
      v9 = v59;
    }

    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }

    v30 = [(UIPeripheralHost *)self targetState];
    v31 = [v30 inPositionIsDestination];
    v32 = [(UIPeripheralHost *)self targetState];
    v33 = v32;
    if (v31)
    {
      if (v32)
      {
        [v32 geometry];
        v34 = v58;
        v35 = v57;
      }

      else
      {
        v35 = 0.0;
        v34 = 0.0;
      }
    }

    else if (v32)
    {
      [v32 geometry];
      v34 = v56;
      v35 = v55;
    }

    else
    {
      v35 = 0.0;
      v34 = 0.0;
    }

    v36 = [(UIPeripheralHost *)self view];
    v37 = [v36 window];
    [UIScreen convertRect:v37 fromView:v35 - v9 * 0.5, v34 - v8 * 0.5, v9, v8];
    v23 = v38;
    v25 = v39;
    v27 = v40;
    v29 = v41;
  }

  else
  {
    v10 = [(UIPeripheralHost *)self view];
    v11 = [v10 superview];

    if (v11)
    {
      v12 = [(UIPeripheralHost *)self view];
      [v12 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = [(UIPeripheralHost *)self view];
      [UIScreen convertRect:v21 fromView:v14, v16, v18, v20];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
    }

    else
    {
      v23 = *MEMORY[0x1E695F050];
      v25 = *(MEMORY[0x1E695F050] + 8);
      v27 = *(MEMORY[0x1E695F050] + 16);
      v29 = *(MEMORY[0x1E695F050] + 24);
    }
  }

  v42 = [objc_opt_self() mainScreen];
  [v42 bounds];
  v64.origin.x = v43;
  v64.origin.y = v44;
  v64.size.width = v45;
  v64.size.height = v46;
  v61.origin.x = v23;
  v61.origin.y = v25;
  v61.size.width = v27;
  v61.size.height = v29;
  v62 = CGRectIntersection(v61, v64);
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;

  v51 = x;
  v52 = y;
  v53 = width;
  v54 = height;
  result.size.height = v54;
  result.size.width = v53;
  result.origin.y = v52;
  result.origin.x = v51;
  return result;
}

+ (CGRect)visibleInputViewFrame
{
  v2 = +[UIPeripheralHost sharedInstance];
  if ([v2 isUndocked])
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v7 = [v2 containerRootController];
    [v7 visibleInputViewFrame];
    v3 = v8;
    v4 = v9;
    v5 = v10;
    v6 = v11;
  }

  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

+ (void)setAllVisibleFrames:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__UIPeripheralHost_UIKitInternal__setAllVisibleFrames___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED49F458 != -1)
  {
    dispatch_once(&qword_1ED49F458, block);
  }

  if (qword_1ED49F460)
  {
    v5 = [qword_1ED49F460 subviews];
    [v5 makeObjectsPerformSelector:sel_removeFromSuperview];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = [UIView alloc];
          [v11 rectValue];
          v28 = CGRectInset(v27, -5.0, -5.0);
          v13 = [(UIView *)v12 initWithFrame:v28.origin.x, v28.origin.y, v28.size.width, v28.size.height];
          v14 = [(UIView *)v13 layer];
          [v14 setAllowsHitTesting:0];

          v15 = [(UIView *)v13 layer];
          [v15 setBorderWidth:5.0];

          v16 = +[UIColor redColor];
          v17 = [v16 CGColor];
          v18 = [(UIView *)v13 layer];
          [v18 setBorderColor:v17];

          [qword_1ED49F460 addSubview:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }
  }

  v19 = [a1 sharedInstance];
  [v19 setAllVisibleFrames:v4];
}

void __55__UIPeripheralHost_UIKitInternal__setAllVisibleFrames___block_invoke(uint64_t a1)
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (qword_1ED49F478 != -1)
    {
      dispatch_once(&qword_1ED49F478, &__block_literal_global_534);
    }

    v2 = [MEMORY[0x1E69D9680] sharedPreferencesController];
    v10 = [v2 valueForPreferenceKey:@"KeyboardPlaceholderDebugOverlay"];

    if ([v10 BOOLValue])
    {
      v3 = [UIApp _isSpringBoard];

      if (!v3)
      {
        return;
      }

      v4 = [*(a1 + 32) sharedInstance];
      v5 = [v4 containerRootController];
      v10 = [v5 view];

      v6 = [UIView alloc];
      [v10 bounds];
      v7 = [(UIView *)v6 initWithFrame:?];
      v8 = qword_1ED49F460;
      qword_1ED49F460 = v7;

      v9 = [qword_1ED49F460 layer];
      [v9 setAllowsHitTesting:0];

      [v10 addSubview:qword_1ED49F460];
    }
  }
}

+ (id)allVisibleFrames:(id)a3
{
  v106 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = off_1E70EA000;
  v5 = +[UIKeyboardImpl activeInstance];
  v99 = [v5 candidateController];

  v6 = [MEMORY[0x1E695DF70] array];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v7 = [v3 hosting];
  v8 = [v7 allHostingItems];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v101 objects:v105 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v102;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v102 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v101 + 1) + 8 * i);
        v14 = [v3 view];
        [v14 frame];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        [v13 visibleFrame];
        v113.origin.x = v23;
        v113.origin.y = v24;
        v113.size.width = v25;
        v113.size.height = v26;
        v108.origin.x = v16;
        v108.origin.y = v18;
        v108.size.width = v20;
        v108.size.height = v22;
        v109 = CGRectIntersection(v108, v113);
        x = v109.origin.x;
        y = v109.origin.y;
        width = v109.size.width;
        height = v109.size.height;

        v110.origin.x = x;
        v110.origin.y = y;
        v110.size.width = width;
        v110.size.height = height;
        if (!CGRectIsEmpty(v110))
        {
          v31 = [v3 inputViewSet];
          if ([v31 isSplit])
          {
            v32 = [(__objc2_class *)v4[11] activeInstance];
            v33 = [v32 centerFilled];

            if ((v33 & 1) == 0)
            {
              v34 = [v3 inputViewSet];
              [v34 _leftInputViewSetFrame];
              v36 = v35;

              v37 = [v3 inputViewSet];
              [v37 _rightInputViewSetFrame];
              v39 = v38;

              v40 = y + 0.0;
              v41 = [MEMORY[0x1E696B098] valueWithCGRect:{x + 0.0, v40, width - (width - v36 + 0.0), height}];
              [v6 addObject:v41];

              v42 = MEMORY[0x1E696B098];
              v43 = x + v39;
              v44 = width - (v39 + 0.0);
              v45 = v40;
              v46 = height;
              goto LABEL_22;
            }
          }

          else
          {
          }

          v47 = [v13 placement];
          if ([v47 isFloatingAssistantView])
          {
            v48 = [v13 placement];
            v49 = [v48 isFloating];

            if ((v49 & 1) == 0)
            {
              v50 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
              v51 = [v50 systemInputAssistantViewController];

              v52 = [v51 view];
              v53 = [v13 hostView];
              v54 = [v52 isDescendantOfView:v53];

              if (v54)
              {
                v55 = [v51 view];
                [v51 barFrame];
                v57 = v56;
                v59 = v58;
                v61 = v60;
                v63 = v62;
                v64 = [v13 hostView];
                v65 = [v64 superview];
                [v55 convertRect:v65 toView:{v57, v59, v61, v63}];
                v67 = v66;
                v69 = v68;
                v71 = v70;
                v73 = v72;

                v111.origin.x = v67;
                v111.origin.y = v69;
                v111.size.width = v71;
                v111.size.height = v73;
                if (!CGRectIsEmpty(v111))
                {
                  v74 = [MEMORY[0x1E696B098] valueWithCGRect:{v67, v69, v71, v73}];
                  [v6 addObject:v74];
                }
              }

              v4 = off_1E70EA000;
              goto LABEL_23;
            }
          }

          else
          {
          }

          v75 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
          [v6 addObject:v75];

          if ([v99 barIsExtended])
          {
            v76 = [v99 candidateBar];
            v77 = [v13 hostView];
            v78 = [v76 isDescendantOfView:v77];

            if (v78)
            {
              v79 = [v99 candidateBar];
              [v99 candidateViewFrame];
              v81 = v80;
              v83 = v82;
              v85 = v84;
              v87 = v86;
              v88 = [v13 hostView];
              v89 = [v88 superview];
              [v79 convertRect:v89 toView:{v81, v83, v85, v87}];
              v91 = v90;
              v93 = v92;
              v95 = v94;
              v97 = v96;

              v112.origin.x = v91;
              v112.origin.y = v93;
              v112.size.width = v95;
              v112.size.height = v97;
              if (!CGRectIsEmpty(v112))
              {
                v42 = MEMORY[0x1E696B098];
                v43 = v91;
                v45 = v93;
                v44 = v95;
                v46 = v97;
LABEL_22:
                v51 = [v42 valueWithCGRect:{v43, v45, v44, v46}];
                [v6 addObject:v51];
LABEL_23:

                continue;
              }
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
    }

    while (v10);
  }

  return v6;
}

+ (id)allVisiblePeripheralFrames
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [a1 sharedInstance];
  v3 = [v2 containerRootController];
  if (v3)
  {
    v17 = v2;
    v4 = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__UIPeripheralHost_UIKitInternal__allVisiblePeripheralFrames__block_invoke;
    aBlock[3] = &unk_1E7117700;
    v16 = v4;
    v25 = v16;
    v5 = _Block_copy(aBlock);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = [v3 hosting];
    v7 = [v6 allHostingItems];

    v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __61__UIPeripheralHost_UIKitInternal__allVisiblePeripheralFrames__block_invoke_2;
          v18[3] = &unk_1E7117728;
          v13 = v5;
          v18[4] = v12;
          v19 = v13;
          [v12 enumerateBoundingRects:{v18, v16}];
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v9);
    }

    v14 = v16;
    v2 = v17;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

void __61__UIPeripheralHost_UIKitInternal__allVisiblePeripheralFrames__block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v39 = [a2 hostView];
  [v39 convertRect:0 toView:{a3, a4, a5, a6}];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v39 window];
  [v19 convertRect:0 toWindow:{v12, v14, v16, v18}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [objc_opt_self() mainScreen];
  [v28 bounds];
  v44.origin.x = v29;
  v44.origin.y = v30;
  v44.size.width = v31;
  v44.size.height = v32;
  v41.origin.x = v21;
  v41.origin.y = v23;
  v41.size.width = v25;
  v41.size.height = v27;
  v42 = CGRectIntersection(v41, v44);
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
    v37 = *(a1 + 32);
    v38 = [MEMORY[0x1E696B098] valueWithCGRect:{x, y, width, height}];
    [v37 addObject:v38];
  }
}

+ (BOOL)pointIsWithinKeyboardContent:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v28 = *MEMORY[0x1E69E9840];
  v6 = [objc_opt_self() mainScreen];
  v7 = [v6 coordinateSpace];
  v8 = [v6 fixedCoordinateSpace];
  v9 = +[UIPeripheralHost sharedInstance];
  v10 = [v9 containerRootController];

  v11 = [v10 inputViewSet];
  v12 = [v11 inputView];

  if (v12)
  {
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && [UIApp _isSpringBoard] && (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "visualModeManager"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "windowingModeEnabled"), v14, v13, v15))
    {
      v16 = [a1 sharedInstance];
      v17 = [v16 allVisibleFrames];
    }

    else
    {
      v17 = [a1 allVisiblePeripheralFrames];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v17;
    v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v19)
    {
      v20 = *v24;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v23 + 1) + 8 * i) rectValue];
          [v8 convertRect:v7 fromCoordinateSpace:?];
          v29.x = x;
          v29.y = y;
          if (CGRectContainsPoint(v30, v29))
          {
            LOBYTE(v19) = 1;
            goto LABEL_17;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

- (double)minimumOffsetForBuffer:(double)a3
{
  v3 = a3;
  if (a3 == 0.0)
  {
    v5 = [(UIPeripheralHost *)self containerWindow];
    v6 = __UIStatusBarManagerForWindow(v5);
    [v6 statusBarHeight];
    v3 = v7;
  }

  v8 = [(UIPeripheralHost *)self containerWindow];
  [v8 bounds];
  v10 = v9;

  [(UIPeripheralHost *)self totalPeripheralSizeForOrientation:+[UIKeyboardSceneDelegate interfaceOrientation]];
  return -(v10 - v11 - v3);
}

- (CGPoint)adjustedPersistentOffset
{
  if (+[UIKeyboardImpl rivenTranslationPreference])
  {
    +[UIKeyboardImpl persistentOffset];
    v4 = v3;
    [(UIPeripheralHost *)self minimumOffsetForBuffer:92.0];
    if (v4 >= v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    v7 = 0.0;
  }

  else
  {
    v7 = *MEMORY[0x1E695EFF8];
    v6 = *(MEMORY[0x1E695EFF8] + 8);
  }

  result.y = v6;
  result.x = v7;
  return result;
}

- (void)setUndockedWithOffset:(CGPoint)a3 animated:(BOOL)a4
{
  LODWORD(v4) = a4;
  y = a3.y;
  x = a3.x;
  v8 = 1;
  if (!+[UIKeyboardImpl isFloating])
  {
    v9 = [(UIPeripheralHost *)self inputViews];
    v10 = [v9 _inputViewIsSplit];
    v11 = y < 0.0;
    if (y > 0.0)
    {
      v11 = 1;
    }

    v8 = v10 | v11;
  }

  +[UIKeyboardImpl persistentOffset];
  if (y == v12)
  {
    v4 = 0;
  }

  else
  {
    v4 = v4;
  }

  self->_isTranslating = 1;
  [UIKeyboardImpl setPersistentOffset:x, y];
  v13 = [(UIPeripheralHost *)self containerWindow];
  [v13 frame];
  v15 = v14;
  v16 = [(UIPeripheralHost *)self containerWindow];
  [v16 frame];
  v18 = v17;

  if (v8)
  {
    v19 = fabs(x) / v15;
    v20 = fabs(y) / v18;
    if (+[UIKeyboardImpl isFloating])
    {
      +[UIPeripheralHost floatingChromeBuffer];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      +[UIKeyboardImpl floatingWidth];
      [UIInputViewSetPlacementFloating placementWithUndockedOffset:v19 chromeBuffer:v20 floatingWidth:v22, v24, v26, v28, v29];
    }

    else
    {
      [UIInputViewSetPlacementUndocked placementWithUndockedOffset:v19 chromeBuffer:v20, 92.0, 0.0, 0.0, 0.0];
    }
    v37 = ;
  }

  else
  {
    v30 = [(UIPeripheralHost *)self inputViews];
    v37 = [UIPeripheralHost endPlacementForInputViewSet:v30 windowScene:0];
  }

  v31 = [(UIPeripheralHost *)self containerWindow];
  v32 = [v31 screen];
  v33 = [(UIKeyboardMotionSupport *)UISplitKeyboardSupport supportForScreen:v32];
  [v33 translateToPlacement:v37 animated:v4];

  v34 = +[UIKeyboardInputModeController sharedInputModeController];
  v35 = [v34 currentInputMode];

  if ([v35 isExtensionInputMode] && (objc_msgSend(v35, "isDisplayed") & 1) == 0)
  {
    v36 = +[UIKeyboardImpl activeInstance];
    [v36 postInputViewControllerShouldUpdateNotification:v35];
  }
}

+ (UIEdgeInsets)floatingChromeBuffer
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 inputViews];
  v4 = [v3 inputAccessoryView];
  [v4 bounds];
  v6 = v5;

  v7 = [v2 containerWindow];
  v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v9 = [v8 visualModeManager];
  v10 = [v9 windowingModeEnabled];

  if (v10)
  {
    v11 = 140.0;
  }

  else
  {
    [v7 slideOverWindowVerticalOffset];
    v6 = v6 + v12;
    v11 = 30.0;
  }

  v13 = fmax(v11, v6);
  +[UIKeyboardImpl requestedFloatingInsets];
  v15 = fmax(v14, 92.0);
  v17 = fmax(v16, 0.0);
  v19 = fmax(v13, v18);
  v21 = fmax(v20, 0.0);

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.right = v25;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

+ (void)adjustFloatingPersistentOffsetForKeyboardSize:(CGSize)a3
{
  [UIPeripheralHost adjustedFloatingOffsetForKeyboardSize:a3.width, a3.height];

  [UIKeyboardImpl setFloatingPersistentOffset:?];
}

+ (CGPoint)adjustedFloatingOffsetForKeyboardSize:(CGSize)a3
{
  height = a3.height;
  +[UIKeyboardImpl floatingWidth];
  v5 = v4;
  +[UIKeyboardImpl floatingPersistentOffset];
  v7 = v6;
  v43 = v8;
  v44 = v6;
  v9 = v8;
  v10 = [objc_opt_self() mainScreen];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  [UIInputViewSetPlacementFloating frameAtOffset:v7 keyboardSize:v9 screenSize:v5, height, v12, v14];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [objc_opt_self() mainScreen];
  [v23 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  +[UIPeripheralHost floatingChromeBuffer];
  v33 = v25 + v32;
  v35 = v27 + v34;
  v37 = v29 - (v32 + v36);
  v39 = v31 - (v34 + v38);

  v41 = v44 + UIRectContainInRect(v16, v18, v20, v22, v33, v35, v37, v39) - v16;
  v42 = v43 + v18 - v40;
  result.y = v42;
  result.x = v41;
  return result;
}

+ (CGPoint)defaultUndockedOffset
{
  v2 = +[UIKeyboardImpl isFloating];

  [UIKeyboardImpl defaultUndockedOffsetForFloating:v2];
  result.y = v4;
  result.x = v3;
  return result;
}

+ (void)setFloating:(BOOL)a3 onCompletion:(id)a4
{
  v4 = a3;
  v8 = a4;
  v5 = +[UIKeyboardImpl isFloating]^ v4;
  if (v5 == 1)
  {
    [UIKeyboardImpl setFloating:v4];
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v6 reloadPlacement];
  }

  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v5);
    v7 = v8;
  }
}

- (void)moveToPersistentOffset
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v3 = [(UIPeripheralHost *)self inputViews];
    v4 = [v3 keyboard];
    v5 = [v4 isMinimized];

    if ((v5 & 1) == 0)
    {
      +[UIKeyboardImpl persistentOffset];

      [(UIPeripheralHost *)self setUndockedWithOffset:0 animated:?];
    }
  }
}

- (unint64_t)_clipCornersOfView:(id)a3
{
  v4 = [(UIPeripheralHost *)self _transientInputViews];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(UIPeripheralHost *)self inputViews];
  }

  v7 = v6;

  v8 = [v7 _splittableInputAccessoryView];
  v9 = [v7 inputAccessoryView];

  if (v9)
  {
    if (v8)
    {
      [v8 leftContentViewSize];
      if (v10 == 0.0)
      {
        v11 = 14;
      }

      else
      {
        v11 = 12;
      }

      [v8 rightContentViewSize];
      if (v12 == 0.0)
      {
        v11 |= 1uLL;
      }
    }

    else
    {
      v11 = 12;
    }
  }

  else
  {
    v11 = 15;
  }

  return v11;
}

- (CGRect)_inputViewRectToAvoid
{
  if ([(UIPeripheralHost *)self _isSuppressedByManualKeyboard])
  {
    +[UIPeripheralHost visiblePeripheralFrame];
    x = v3;
    y = v5;
    width = v7;
    height = v9;
  }

  else
  {
    v11 = [(UIPeripheralHost *)self inputViews];
    [v11 inputViewBounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [(UIPeripheralHost *)self inputViews];
    v21 = [v20 inputView];
    [UIScreen convertRect:v21 fromView:v13, v15, v17, v19];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v30 = [(UIPeripheralHost *)self containerWindow];
    [v30 hostedFrame];
    v42.origin.x = v31;
    v42.origin.y = v32;
    v42.size.width = v33;
    v42.size.height = v34;
    v39.origin.x = v23;
    v39.origin.y = v25;
    v39.size.width = v27;
    v39.size.height = v29;
    v40 = CGRectIntersection(v39, v42);
    x = v40.origin.x;
    y = v40.origin.y;
    width = v40.size.width;
    height = v40.size.height;
  }

  v35 = x;
  v36 = y;
  v37 = width;
  v38 = height;
  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

uint64_t __68__UIPeripheralHost_UIKitInternal___isCoordinatingWithSystemGestures__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 rootViewController];
  v3 = [v2 childViewControllers];
  v4 = [v3 firstObject];

  objc_opt_class();
  LOBYTE(v2) = objc_opt_isKindOfClass();

  return v2 & 1;
}

- (CGPoint)offHostPointForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if ([(UIPeripheralHost *)self isOnScreen])
  {
    [(UIPeripheralHost *)self _inputViewRectToAvoid];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(UIPeripheralHost *)self transformedContainerView];
    [UIScreen convertRect:v14 toView:v7, v9, v11, v13];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v34.origin.x = v16;
    v34.origin.y = v18;
    v34.size.width = v20;
    v34.size.height = v22;
    v33.x = x;
    v33.y = y;
    if (CGRectContainsPoint(v34, v33))
    {
      v23 = [(UIPeripheralHost *)self inputViews];
      v24 = [v23 isSplit];

      if (v24)
      {
        v25 = [(UIPeripheralHost *)self inputViews];
        [v25 _leftInputViewSetFrame];
        if (x <= CGRectGetWidth(v35))
        {
        }

        else
        {
          v36.origin.x = v16;
          v36.origin.y = v18;
          v36.size.width = v20;
          v36.size.height = v22;
          Width = CGRectGetWidth(v36);
          v27 = [(UIPeripheralHost *)self inputViews];
          [v27 _rightInputViewSetFrame];
          v28 = Width - CGRectGetWidth(v37);

          if (x < v28)
          {
            goto LABEL_13;
          }
        }
      }

      if ([(UIPeripheralHost *)self isUndocked]&& (v38.origin.x = v16, v38.origin.y = v18, v38.size.width = v20, v38.size.height = v22, y >= CGRectGetMidY(v38)))
      {
        v40.origin.x = v16;
        v40.origin.y = v18;
        v40.size.width = v20;
        v40.size.height = v22;
        MaxY = CGRectGetMaxY(v40);
      }

      else
      {
        v39.origin.x = v16;
        v39.origin.y = v18;
        v39.size.width = v20;
        v39.size.height = v22;
        MaxY = CGRectGetMinY(v39);
      }

      y = MaxY;
    }
  }

LABEL_13:
  v30 = x;
  v31 = y;
  result.y = v31;
  result.x = v30;
  return result;
}

- (double)getVerticalOverlapForView:(id)a3 usingKeyboardInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = 0.0;
  if ([(UIPeripheralHost *)self isOnScreen]&& ![(UIPeripheralHost *)self isUndocked])
  {
    v9 = [(UIPeripheralHost *)self inputViews];
    if ([v9 _inputViewIsSplit])
    {
      goto LABEL_7;
    }

    v10 = [v6 window];
    if (!v10)
    {
      goto LABEL_7;
    }

    v11 = v10;
    v12 = [(UIPeripheralHost *)self inputViews];
    v13 = [v12 inputView];
    if ([v6 isDescendantOfView:v13])
    {

LABEL_7:
      goto LABEL_8;
    }

    v15 = [(UIPeripheralHost *)self inputViews];
    v16 = [v15 inputAccessoryView];
    v17 = [v6 isDescendantOfView:v16];

    if ((v17 & 1) == 0)
    {
      if (v7)
      {
        v18 = [v7 objectForKey:@"UIKeyboardFrameEndUserInfoKey"];
        [v18 CGRectValue];
      }

      else
      {
        v18 = [(UIPeripheralHost *)self containerRootController];
        [v18 visibleFrame];
      }

      [UIScreen convertRect:v6 toView:?];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v28.origin.x = v20;
      v28.origin.y = v22;
      v28.size.width = v24;
      v28.size.height = v26;
      if (!CGRectIsEmpty(v28))
      {
        [v6 bounds];
        MaxY = CGRectGetMaxY(v29);
        v30.origin.x = v20;
        v30.origin.y = v22;
        v30.size.width = v24;
        v30.size.height = v26;
        v8 = fmax(MaxY - CGRectGetMinY(v30), 0.0);
      }
    }
  }

LABEL_8:

  return v8;
}

- (BOOL)shouldUseHideNotificationForGeometry:(UIPeripheralAnimationGeometry *)a3
{
  v5 = [(UIPeripheralHost *)self containerWindow];
  [v5 bounds];
  v7 = v6;

  v8 = [(UIPeripheralHost *)self inputViews];
  v9 = [v8 inputAccessoryView];
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3->inPosition.y + a3->bounds.size.height * -0.5 >= v7;
  }

  return v10;
}

- (void)postWillShowNotificationForGeometry:(UIPeripheralAnimationGeometry *)a3 duration:(double)a4
{
  v7 = *&a3->transform.c;
  v29 = *&a3->transform.a;
  v30 = v7;
  v31 = *&a3->transform.tx;
  targetFrameHeightDelta = a3->targetFrameHeightDelta;
  inPosition = a3->inPosition;
  outPosition = a3->outPosition;
  v26 = inPosition;
  size = a3->bounds.size;
  origin = a3->bounds.origin;
  v28 = size;
  v10 = [UIPeripheralHostState stateWithGeometry:&outPosition inPositionIsDestination:1];
  [(UIPeripheralHost *)self setTargetState:v10];

  v11 = *&a3->transform.c;
  v29 = *&a3->transform.a;
  v30 = v11;
  v31 = *&a3->transform.tx;
  targetFrameHeightDelta = a3->targetFrameHeightDelta;
  v12 = a3->inPosition;
  outPosition = a3->outPosition;
  v26 = v12;
  v13 = a3->bounds.size;
  origin = a3->bounds.origin;
  v28 = v13;
  v14 = [(UIPeripheralHost *)self userInfoFromGeometry:&outPosition duration:1 forWill:1 forShow:a4];
  v15 = [(UIPeripheralHost *)self userInfoContainsActualGeometryChange:v14];
  v16 = @"UIKeyboardPrivateWillShowNotification";
  v17 = @"UIKeyboardWillShowNotification";
  v18 = *&a3->transform.c;
  v29 = *&a3->transform.a;
  v30 = v18;
  v31 = *&a3->transform.tx;
  targetFrameHeightDelta = a3->targetFrameHeightDelta;
  v19 = a3->inPosition;
  outPosition = a3->outPosition;
  v26 = v19;
  v20 = a3->bounds.size;
  origin = a3->bounds.origin;
  v28 = v20;
  if ([(UIPeripheralHost *)self shouldUseHideNotificationForGeometry:&outPosition])
  {
    v21 = @"UIKeyboardPrivateWillHideNotification";

    v22 = @"UIKeyboardWillHideNotification";
    v17 = v22;
    v16 = v21;
  }

  [(UIPeripheralHost *)self postKeyboardFrameChangeNotification:@"UIKeyboardWillChangeFrameNotification" withInfo:v14];
  if (v15 && ![(UIPeripheralHost *)self isUndocked])
  {
    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    v24 = [(UIPeripheralHost *)self _screenForFirstResponder:self->_responder];
    [v23 postNotificationName:v16 object:v24 userInfo:v14];

    [v23 postNotificationName:v17 object:0 userInfo:v14];
  }
}

- (void)postDidShowNotificationForGeometry:(UIPeripheralAnimationGeometry *)a3
{
  v5 = *&a3->transform.c;
  v23 = *&a3->transform.a;
  v24 = v5;
  v25 = *&a3->transform.tx;
  targetFrameHeightDelta = a3->targetFrameHeightDelta;
  inPosition = a3->inPosition;
  outPosition = a3->outPosition;
  v20 = inPosition;
  size = a3->bounds.size;
  origin = a3->bounds.origin;
  v22 = size;
  v8 = [(UIPeripheralHost *)self userInfoFromGeometry:&outPosition duration:0 forWill:1 forShow:0.0];
  v9 = [(UIPeripheralHost *)self userInfoContainsActualGeometryChange:v8];
  v10 = @"UIKeyboardDidShowNotification";
  v11 = @"UIKeyboardPrivateDidShowNotification";
  v12 = *&a3->transform.c;
  v23 = *&a3->transform.a;
  v24 = v12;
  v25 = *&a3->transform.tx;
  targetFrameHeightDelta = a3->targetFrameHeightDelta;
  v13 = a3->inPosition;
  outPosition = a3->outPosition;
  v20 = v13;
  v14 = a3->bounds.size;
  origin = a3->bounds.origin;
  v22 = v14;
  if ([(UIPeripheralHost *)self shouldUseHideNotificationForGeometry:&outPosition])
  {
    v15 = @"UIKeyboardDidHideNotification";

    v16 = @"UIKeyboardPrivateDidHideNotification";
    v11 = v16;
    v10 = v15;
  }

  [(UIPeripheralHost *)self postKeyboardFrameChangeNotification:@"UIKeyboardDidChangeFrameNotification" withInfo:v8];
  if (v9 && ![(UIPeripheralHost *)self isUndocked])
  {
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = [(UIPeripheralHost *)self _screenForFirstResponder:self->_responder];
    [v17 postNotificationName:v11 object:v18 userInfo:v8];

    [v17 postNotificationName:v10 object:0 userInfo:v8];
  }

  [(UIPeripheralHost *)self setTargetState:0];
}

- (void)performMultipleOperations:(id)a3 withAnimationStyle:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (+[_UIRemoteKeyboards enabled])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__UIPeripheralHost_UIKitInternal__performMultipleOperations_withAnimationStyle___block_invoke;
    v21[3] = &unk_1E7108338;
    v22 = v8;
    v24 = v6;
    v23 = v7;
    v10 = v8;
    [v9 performOnControllers:v21];
  }

  else
  {
    v11 = [(UIPeripheralHost *)self containerRootController];
    v12 = [v11 inputViewSet];
    v13 = [v12 inputView];
    if (v13)
    {
      v14 = v13;
      v15 = [(UIPeripheralHost *)self containerRootController];
      v16 = [v15 inputViewSet];
      v17 = [v16 isCustomInputView];

      if ((v17 & 1) == 0)
      {
        v18 = [(UIPeripheralHost *)self containerRootController];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __80__UIPeripheralHost_UIKitInternal__performMultipleOperations_withAnimationStyle___block_invoke_3;
        v19[3] = &unk_1E70F4A50;
        v19[4] = self;
        v20 = v6;
        [v18 performOperations:v19 withAnimationStyle:v7];
      }
    }

    else
    {
    }
  }
}

void __80__UIPeripheralHost_UIKitInternal__performMultipleOperations_withAnimationStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v4 = [v3 owner];
  }

  v5 = v4;
  if (v4 && ([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __80__UIPeripheralHost_UIKitInternal__performMultipleOperations_withAnimationStyle___block_invoke_2;
    v9 = &unk_1E70F4A50;
    v11 = *(a1 + 48);
    v5 = v5;
    v10 = v5;
    [v5 performOperations:&v6 withAnimationStyle:*(a1 + 40)];
    [*(a1 + 32) addObject:{v5, v6, v7, v8, v9}];
  }

LABEL_9:
}

void __80__UIPeripheralHost_UIKitInternal__performMultipleOperations_withAnimationStyle___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) containerRootController];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)minimize
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v2 minimize];

  return 1;
}

- (BOOL)maximizeWithAnimation:(BOOL)a3
{
  v3 = a3;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 maximizeWithAnimation:v3];

  return 1;
}

- (void)enableKeyboardTyping
{
  v3 = [(UIPeripheralHost *)self inputViews];
  v2 = [v3 keyboard];
  [v2 setTypingEnabled:1];
}

- (id)_currentInputView
{
  v2 = [(UIPeripheralHost *)self inputViews];
  v3 = [v2 inputView];

  return v3;
}

- (BOOL)_isSuppressedByManualKeyboard
{
  v3 = [(UIPeripheralHost *)self view];
  v4 = [v3 superview];
  if (v4)
  {
    v5 = v4;
    v6 = [(UIPeripheralHost *)self view];
    v7 = [v6 isHidden];

    if (!v7)
    {
      LOBYTE(v8) = 0;
      return v8;
    }
  }

  else
  {
  }

  v9 = +[UIKeyboard activeKeyboard];
  v10 = v9;
  if (v9)
  {
    v8 = [v9 _isAutomaticKeyboard] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)keyClicksEnabled
{
  if (_UIApplicationIsExtension())
  {
    v3 = +[UIWindowScene _keyWindowScene];
    v4 = [v3 _topVisibleWindowPassingTest:&__block_literal_global_351_4];

    v5 = v4 != 0;
  }

  else
  {
    if (![(UIPeripheralHost *)self isOnScreen])
    {
      return 0;
    }

    v4 = [(UIPeripheralHost *)self inputViews];
    v5 = [v4 usesKeyClicks];
  }

  return v5;
}

uint64_t __51__UIPeripheralHost_UIKitInternal__keyClicksEnabled__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 rootViewController];
  v3 = [v2 childViewControllers];
  v4 = [v3 firstObject];

  if (v4 && (v4[94] & 3u) - 1 <= 1)
  {
    v5 = [v4 view];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 view];
      v7 = [v6 enableInputClicksWhenVisible];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_preserveInputViewsWithId:(id)a3 animated:(BOOL)a4 reset:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = a3;
  if (![(UIPeripheralHost *)self _isKeyboardDeactivated])
  {
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v8 _preserveInputViewsWithId:v9 animated:v6 reset:v5];
  }
}

- (void)_restoreInputAccessoryViewOverrideWithId:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 _restoreInputAccessoryViewOverrideWithId:v3];
}

- (BOOL)_restoreInputViewsWithId:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  LOBYTE(v4) = [v6 _restoreInputViewsWithId:v5 animated:v4];

  return v4;
}

- (void)_clearPreservedInputViewsWithId:(id)a3 clearKeyboard:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v6 _clearPreservedInputViewsWithId:v5 clearKeyboard:v4];
}

- (void)_clearPreservedInputViewsWithRestorableResponder:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 _clearPreservedInputViewsWithRestorableResponder:v3];
}

- (void)removePreservedInputViewSetForInputView:(id)a3
{
  v3 = a3;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 _removePreservedInputViewSetForInputView:v3];
}

- (BOOL)isRotating
{
  v2 = [(UIPeripheralHost *)self containerRootController];
  v3 = [v2 isRotating];

  return v3;
}

- (BOOL)isTranslating
{
  v2 = [(UIPeripheralHost *)self containerRootController];
  v3 = [v2 isTranslating];

  return v3;
}

- (void)extendKeyboardBackdropHeight:(double)a3 withDuration:(double)a4
{
  v6 = [(UIPeripheralHost *)self containerRootController];
  [v6 extendKeyboardBackdropHeight:a3 withDuration:a4];
}

- (void)updateInputAccessoryViewVisibility:(BOOL)a3 withDuration:(double)a4
{
  v5 = a3;
  v6 = [(UIPeripheralHost *)self containerRootController];
  [v6 animateAccessoryViewVisibility:v5 withDuration:a4];
}

+ (double)gridViewRubberBandValueForValue:(double)result target:(double)a4 timeInterval:(double)a5 velocity:(double *)a6
{
  v6 = a5;
  v7 = *a6;
  if (v6 >= 1)
  {
    do
    {
      v7 = (v7 + (a4 - result) * 0.00014) * 0.98;
      result = result + v7;
      --v6;
    }

    while (v6);
  }

  *a6 = v7;
  return result;
}

+ (id)passthroughViews
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = +[UIPeripheralHost sharedInstance];
  v3 = [v2 _inputViews];

  v4 = [v3 inputViewController];
  v5 = [v4 view];
  if (v5)
  {
    v6 = v5;

LABEL_4:
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

    goto LABEL_5;
  }

  v6 = [v3 inputView];

  if (v6)
  {
    goto LABEL_4;
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_5:

  return v7;
}

- (BOOL)_shouldDelayRotationForWindow:(id)a3
{
  v4 = a3;
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v6 = [v5 existingContainerWindow];

  v7 = v6 == v4 && [(UIPeripheralHost *)self currentState]== 2 && [(UIPeripheralHost *)self isRotating];
  return v7;
}

- (void)scrollView:(id)a3 didPanWithGesture:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v6 window];
  v7 = [v9 screen];
  v8 = [(UIKeyboardMotionSupport *)UIScrollToDismissSupport supportForScreen:v7];
  [v8 scrollView:v6 didPanWithGesture:v5];
}

- (void)scrollView:(id)a3 didFinishPanGesture:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v6 window];
  v7 = [v9 screen];
  v8 = [(UIKeyboardMotionSupport *)UIScrollToDismissSupport supportForScreen:v7];
  [v8 scrollView:v6 didFinishPanGesture:v5];
}

+ (Class)floatingAssistantBarPlacementClassSupportingCompactStyle:(BOOL)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  if (v3)
  {
    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v6 = [v5 preferencesActions];
    v7 = [v6 compactAssistantBarPersistentLocation];

    if (v7 == 4)
    {
      v8 = +[UIKeyboardImpl activeInstance];
      v9 = [v8 inputDelegate];
      v10 = [v9 textInputView];
      [v10 _shouldReverseLayoutDirection];
      v4 = objc_opt_class();
    }

    else if (v7 == 5 || v7 == 6)
    {
      v4 = objc_opt_class();
    }
  }

  return v4;
}

+ (id)endPlacementForInputViewSet:(id)a3 windowScene:(id)a4
{
  v86 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v66 = a4;
  v6 = _UIPeripheralHostLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2112;
    *&buf[14] = v66;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "endPlacementForInputViewSet: %@ windowScene: %@", buf, 0x16u);
  }

  v67 = +[UIKeyboardImpl activeInstance];
  v64 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v68 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v69 = [v68 systemInputAssistantViewController];
  v7 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v62 = [v7 hasLocalMinimumKeyboardHeightForScene:v66];
  v8 = [v5 isCustomInputView];
  if (v67)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v63 = 0;
  }

  else
  {
    v63 = [v67 isMinimized];
  }

  if ([v7 wantsAssistantWhileSuppressingKeyboard])
  {
    v10 = [v7 disableBecomeFirstResponder];
  }

  else
  {
    v10 = 0;
  }

  if (![v5 isRemoteKeyboard] || +[UIKeyboard usesLocalKeyboard](UIKeyboard, "usesLocalKeyboard"))
  {
    goto LABEL_14;
  }

  if ([v64 snapshotting])
  {
    v11 = 1;
  }

  else
  {
    if ([v64 keyboardActive])
    {
LABEL_14:
      v11 = 0;
      goto LABEL_15;
    }

    v33 = [v5 inputAccessoryView];
    v11 = v33 != 0;
  }

LABEL_15:
  v12 = [v68 hardwareKeyboardExclusivityIdentifier];
  if (v12)
  {
    v13 = [v69 centerViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v14 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || ![v5 isRemoteKeyboard])
  {
    v61 = +[UIKeyboardImpl isFloating];
  }

  else
  {
    v15 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    v61 = [v15 isFloating];
  }

  v16 = [v69 shouldBeShownForInputDelegate:0 inputViews:v5];
  v59 = [v69 supportsCompactStyle];
  if ([v5 isRemoteKeyboard])
  {
    v17 = [v7 assistantBarVisible];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v5 inputView];
  v65 = [v5 inputAssistantView];
  if ([v5 isInputViewPlaceholder])
  {
    v19 = v18;
    v20 = [v19 associatedView];

    if (v20)
    {
      v18 = [v19 fallbackView];

      v21 = [v19 associatedView];

      v65 = v21;
    }

    else
    {
      v18 = v19;
    }
  }

  if (!((v18 == 0) | v10 & 1) && v62 & 1 | ((v63 & 1) == 0) | v11)
  {
    v22 = buf;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v83 = __Block_byref_object_copy__136;
    v84 = __Block_byref_object_dispose__136;
    v85 = 0;
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __75__UIPeripheralHost_UIKitInternal__endPlacementForInputViewSet_windowScene___block_invoke;
    v72[3] = &unk_1E7117750;
    v77 = v61;
    v73 = v64;
    v75 = buf;
    v74 = v67;
    v76 = a1;
    v78 = v59;
    [UIKeyboardImpl performWithoutFloatingLock:v72];
    v23 = *(*&buf[8] + 40);
    if (v23)
    {
      v24 = _UIPeripheralHostLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(*&buf[8] + 40);
        *v80 = 138412290;
        v81 = v25;
        _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "endPlacementForInputViewSet, early return -> %@", v80, 0xCu);
      }

      v22 = *(*&buf[8] + 40);
      v26 = 0;
    }

    else
    {
      [v5 inputAccessoryView];

      v26 = objc_opt_class();
    }

    _Block_object_dispose(buf, 8);
    if (v23)
    {
      goto LABEL_64;
    }

    goto LABEL_58;
  }

  if (((v16 | v17) & 1) != 0 && ([v67 _shouldSuppressSoftwareKeyboardAndAssistantView] & 1) == 0)
  {
    if (v65 || ([v5 inputView], v27 = objc_claimAutoreleasedReturnValue(), v28 = v27 != 0, v27, ((v28 & v63 | v10) & 1) != 0))
    {
      if ((v14 | isKindOfClass))
      {
        v29 = [v69 shouldUseCustomBackground:0];
        v30 = [v66 screen];
        v31 = [(UIKeyboardMotionSupport *)UIFlickingAssistantViewSupport supportForScreen:v30];

        if (v29)
        {
          v32 = objc_opt_class();
        }

        else
        {
          v34 = [v31 remotePlacement];

          if (v34)
          {
            v35 = [v31 remotePlacement];
            v26 = objc_opt_class();

LABEL_57:
LABEL_58:
            if (v26)
            {
LABEL_61:
              v38 = _UIPeripheralHostLogger();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 = [v26 placement];
                *buf = 138412290;
                *&buf[4] = v39;
                _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_DEFAULT, "endPlacementForInputViewSet, returning -> %@", buf, 0xCu);
              }

              v22 = [v26 placement];
              goto LABEL_64;
            }

            goto LABEL_59;
          }

          v32 = [a1 floatingAssistantBarPlacementClassSupportingCompactStyle:v59];
        }

        v26 = v32;
        goto LABEL_57;
      }

      if (v63 && [v69 isVisibleWhenMinimized])
      {
        v26 = objc_opt_class();
        goto LABEL_58;
      }
    }
  }

LABEL_59:
  v36 = [v5 inputAccessoryView];
  v37 = v36 == 0;

  if (!v37)
  {
    v26 = objc_opt_class();
    goto LABEL_61;
  }

  if (v63 & 1 | ((v61 & 1) == 0))
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __75__UIPeripheralHost_UIKitInternal__endPlacementForInputViewSet_windowScene___block_invoke_367;
    v70[3] = &unk_1E7117778;
    v71 = v7;
    v22 = [UIInputViewSetPlacement deactivatedKeyboardPlacementWithCurrentPlacement:v70];
  }

  else
  {
    +[UIKeyboardImpl normalizedPersistentOffset];
    v42 = v41;
    v44 = v43;
    +[UIPeripheralHost floatingChromeBuffer];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    +[UIKeyboardImpl floatingWidth];
    v54 = [UIInputViewSetPlacementFloating placementWithUndockedOffset:v42 chromeBuffer:v44 floatingWidth:v46, v48, v50, v52, v53];
    if (+[UIKeyboard isModelessActive](UIKeyboard, "isModelessActive") && +[UIKeyboardImpl isFloatingForced](UIKeyboardImpl, "isFloatingForced") && ([v67 _shouldSuppressAssistantBar] & 1) == 0)
    {
      v55 = [objc_msgSend(a1 floatingAssistantBarPlacementClassSupportingCompactStyle:{v59), "placement"}];
      v79 = v55;
      v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
      [v54 setSubPlacements:v56];
    }

    v57 = _UIPeripheralHostLogger();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v54;
      _os_log_impl(&dword_188A29000, v57, OS_LOG_TYPE_DEFAULT, "endPlacementForInputViewSet, invisible return -> %@", buf, 0xCu);
    }

    v22 = [UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:v54];
  }

LABEL_64:

  return v22;
}

void __75__UIPeripheralHost_UIKitInternal__endPlacementForInputViewSet_windowScene___block_invoke(uint64_t a1)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) handlingRemoteEvent] || (*(a1 + 64) & 1) != 0 || (objc_msgSend(*(a1 + 32), "remoteKeyboardUndocked") & 1) != 0)
  {
    +[UIKeyboardImpl normalizedPersistentOffset];
    v3 = v2;
    v5 = v4;
  }

  else
  {
    v3 = *MEMORY[0x1E695EFF8];
    v5 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if (*(a1 + 64) == 1)
  {
    +[UIPeripheralHost floatingChromeBuffer];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    +[UIKeyboardImpl floatingWidth];
    v15 = [UIInputViewSetPlacementFloating placementWithUndockedOffset:v3 chromeBuffer:v5 floatingWidth:v7, v9, v11, v13, v14];
    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    if (+[UIKeyboard isMajelEnabled](UIKeyboard, "isMajelEnabled") && +[UIKeyboardImpl isFloatingForced](UIKeyboardImpl, "isFloatingForced") && ([*(a1 + 40) _shouldSuppressAssistantBar] & 1) == 0)
    {
      v18 = [objc_msgSend(*(a1 + 56) floatingAssistantBarPlacementClassSupportingCompactStyle:{*(a1 + 65)), "placement"}];
      v23[0] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
      [*(*(*(a1 + 48) + 8) + 40) setSubPlacements:v19];
    }
  }

  else if ((+[UIKeyboardImpl rivenTranslationPreference](UIKeyboardImpl, "rivenTranslationPreference") || [*(a1 + 32) remoteKeyboardUndocked]) && (fabs(v5) > 0.01 || +[UIKeyboardImpl isSplit](UIKeyboardImpl, "isSplit")))
  {
    +[UIKeyboardImpl normalizedPersistentOffset];
    v20 = [UIInputViewSetPlacementUndocked placementWithUndockedOffset:"placementWithUndockedOffset:chromeBuffer:" chromeBuffer:?];
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;
  }
}

id __75__UIPeripheralHost_UIKitInternal__endPlacementForInputViewSet_windowScene___block_invoke_367(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) keyboardWindow];
  v2 = [v1 rootViewController];

  if (!v2)
  {
    v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v2 = [v3 containerRootController];
  }

  v4 = _UIPeripheralHostLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v2 placement];
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "endPlacementForInputViewSet, deactivated return -> %@", &v8, 0xCu);
  }

  v6 = [v2 placement];

  return v6;
}

@end