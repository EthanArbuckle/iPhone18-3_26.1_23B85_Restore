@interface UIPeripheralHost
+ (BOOL)pointIsWithinKeyboardContent:(CGPoint)content;
+ (CGPoint)adjustedFloatingOffsetForKeyboardSize:(CGSize)size;
+ (CGPoint)defaultUndockedOffset;
+ (CGRect)screenBoundsInAppOrientation;
+ (CGRect)visibleInputViewFrame;
+ (CGRect)visiblePeripheralFrame;
+ (Class)floatingAssistantBarPlacementClassSupportingCompactStyle:(BOOL)style;
+ (UIEdgeInsets)floatingChromeBuffer;
+ (double)gridViewRubberBandValueForValue:(double)result target:(double)target timeInterval:(double)interval velocity:(double *)velocity;
+ (id)allVisibleFrames:(id)frames;
+ (id)allVisiblePeripheralFrames;
+ (id)endPlacementForInputViewSet:(id)set windowScene:(id)scene;
+ (id)passthroughViews;
+ (id)sharedInstance;
+ (void)_releaseSharedInstance;
+ (void)adjustFloatingPersistentOffsetForKeyboardSize:(CGSize)size;
+ (void)setAllVisibleFrames:(id)frames;
+ (void)setFloating:(BOOL)floating onCompletion:(id)completion;
+ (void)setKeyboardOnScreenNotifyKey:(BOOL)key;
- (BOOL)_isCoordinatingWithSystemGestures;
- (BOOL)_isSuppressedByManualKeyboard;
- (BOOL)_isTransitioning;
- (BOOL)_restoreInputViewsWithId:(id)id animated:(BOOL)animated;
- (BOOL)_shouldDelayRotationForWindow:(id)window;
- (BOOL)animationsEnabled;
- (BOOL)hasCustomInputView;
- (BOOL)hasDelayedTasksForKey:(id)key;
- (BOOL)hasDictationKeyboard;
- (BOOL)isRotating;
- (BOOL)isTranslating;
- (BOOL)isUndocked;
- (BOOL)keyClicksEnabled;
- (BOOL)maximizeWithAnimation:(BOOL)animation;
- (BOOL)minimize;
- (BOOL)shouldUseHideNotificationForGeometry:(UIPeripheralAnimationGeometry *)geometry;
- (BOOL)userInfoContainsActualGeometryChange:(id)change;
- (CGPoint)adjustedPersistentOffset;
- (CGPoint)offHostPointForPoint:(CGPoint)point;
- (CGRect)_inputViewRectToAvoid;
- (CGRect)screenRectFromBounds:(CGRect)bounds atCenter:(CGPoint)center applyingSourceHeightDelta:(double)delta;
- (CGRect)transitioningFrame;
- (CGRect)visiblePeripheralFrame:(BOOL)frame;
- (CGSize)sizeOfInputViewForInputViewSet:(id)set withInterfaceOrientation:(int64_t)orientation;
- (CGSize)totalPeripheralSizeForOrientation:(int64_t)orientation;
- (UIInputViewSet)inputViews;
- (UIInputViewSet)loadAwareInputViews;
- (UIPeripheralHost)init;
- (UIPeripheralHostState)targetState;
- (double)getVerticalOverlapForView:(id)view usingKeyboardInfo:(id)info;
- (double)minimumOffsetForBuffer:(double)buffer;
- (id)_currentInputView;
- (id)_renderConfigForCurrentResponder;
- (id)_renderConfigForResponder:(id)responder;
- (id)_sceneForFirstResponder:(id)responder;
- (id)_screenForFirstResponder:(id)responder;
- (id)containerRootController;
- (id)containerTextEffectsWindow;
- (id)containerTextEffectsWindowAboveStatusBar;
- (id)containerWindow;
- (id)existingContainerRootController;
- (id)lastUsedInputModeForCurrentContext;
- (id)transformedContainerView;
- (id)transitioningView;
- (id)userInfoFromGeometry:(UIPeripheralAnimationGeometry *)geometry duration:(double)duration forWill:(BOOL)will forShow:(BOOL)show;
- (int)_isKeyboardDeactivated;
- (int)currentState;
- (unint64_t)_clipCornersOfView:(id)view;
- (void)_beginDisablingAnimations;
- (void)_clearPreservedInputViewsWithId:(id)id clearKeyboard:(BOOL)keyboard;
- (void)_clearPreservedInputViewsWithRestorableResponder:(id)responder;
- (void)_endDisablingAnimations;
- (void)_preserveInputViewsWithId:(id)id animated:(BOOL)animated reset:(BOOL)reset;
- (void)_restoreInputAccessoryViewOverrideWithId:(id)id;
- (void)_updateContainerWindowLevel;
- (void)dealloc;
- (void)disableInterfaceAutorotation:(BOOL)autorotation;
- (void)enableKeyboardTyping;
- (void)extendKeyboardBackdropHeight:(double)height withDuration:(double)duration;
- (void)finishRotation;
- (void)finishRotationOfKeyboard:(id)keyboard;
- (void)flushDelayedTasks;
- (void)flushDelayedTasksForKey:(id)key;
- (void)forceOrderInAutomatic;
- (void)forceOrderInAutomaticAnimated:(BOOL)animated;
- (void)forceOrderInAutomaticFromDirection:(int)direction withDuration:(double)duration;
- (void)forceOrderOutAutomatic;
- (void)forceOrderOutAutomaticAnimated:(BOOL)animated;
- (void)forceOrderOutAutomaticToDirection:(int)direction withDuration:(double)duration;
- (void)forceReloadInputViews;
- (void)moveToPersistentOffset;
- (void)orderInAutomatic;
- (void)orderInAutomaticFromDirection:(int)direction withDuration:(double)duration;
- (void)orderInAutomaticSkippingAnimation;
- (void)orderOutAutomatic;
- (void)orderOutAutomaticSkippingAnimation;
- (void)orderOutAutomaticToDirection:(int)direction withDuration:(double)duration;
- (void)performMultipleOperations:(id)operations withAnimationStyle:(id)style;
- (void)performWithoutDeactivation:(id)deactivation;
- (void)peripheralHostWillResume:(id)resume;
- (void)postDidShowNotificationForGeometry:(UIPeripheralAnimationGeometry *)geometry;
- (void)postKeyboardFrameChangeNotification:(id)notification withInfo:(id)info;
- (void)postWillShowNotificationForGeometry:(UIPeripheralAnimationGeometry *)geometry duration:(double)duration;
- (void)prepareForRotationOfKeyboard:(id)keyboard toOrientation:(int64_t)orientation;
- (void)prepareForRotationToOrientation:(int64_t)orientation;
- (void)queueDelayedTask:(id)task;
- (void)queueDelayedTask:(id)task forKey:(id)key delay:(double)delay;
- (void)removePreservedInputViewSetForInputView:(id)view;
- (void)rotateKeyboard:(id)keyboard toOrientation:(int64_t)orientation;
- (void)rotateToOrientation:(int64_t)orientation;
- (void)scrollView:(id)view didFinishPanGesture:(id)gesture;
- (void)scrollView:(id)view didPanWithGesture:(id)gesture;
- (void)setDeactivatedKeyboard:(BOOL)keyboard forScene:(id)scene forSuppressionAssertion:(BOOL)assertion updatePlacement:(BOOL)placement wantsAssistant:(BOOL)assistant keepAccessories:(BOOL)accessories;
- (void)setDocumentInputMode:(id)mode;
- (void)setInputViewsHidden:(BOOL)hidden;
- (void)setKeyboardFencingEnabled:(BOOL)enabled;
- (void)setKeyboardOnScreenNotifyKey:(BOOL)key;
- (void)setTargetState:(id)state;
- (void)setTextEffectsWindowLevelForInputView:(id)view responder:(id)responder;
- (void)setUndockedWithOffset:(CGPoint)offset animated:(BOOL)animated;
- (void)textEffectsWindowDidRotate:(id)rotate;
- (void)updateInputAccessoryViewVisibility:(BOOL)visibility withDuration:(double)duration;
- (void)updatePlacementForDeactivatedKeyboard:(BOOL)keyboard forSuppressionAssertion:(BOOL)assertion wantsAssistant:(BOOL)assistant keepAccessories:(BOOL)accessories animationStyle:(id)style;
- (void)updateToPlacement:(id)placement withNormalAnimationsAndNotifications:(BOOL)notifications;
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

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_peripheralHostWillResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v3 selector:sel_textEffectsWindowDidRotate_ name:@"UITextEffectsWindowDidRotateNotification" object:0];
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
    containerRootController = [v2 containerRootController];
    [containerRootController visibleFrame];
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
  existingContainerWindow = [v2 existingContainerWindow];

  if (existingContainerWindow)
  {
    existingContainerRootController = [v2 existingContainerRootController];
    LOBYTE(existingContainerWindow) = [existingContainerRootController isUndocked];
  }

  return existingContainerWindow;
}

- (id)containerRootController
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  containerRootController = [v2 containerRootController];

  return containerRootController;
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
  inputViews = [v2 inputViews];

  return inputViews;
}

- (UIInputViewSet)loadAwareInputViews
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  transientInputViews = [v3 transientInputViews];
  v5 = transientInputViews;
  if (transientInputViews)
  {
    inputViews = transientInputViews;
  }

  else
  {
    inputViews = [(UIPeripheralHost *)self inputViews];
  }

  v7 = inputViews;

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
  existingContainerRootController = [(UIPeripheralHost *)self existingContainerRootController];
  view = [existingContainerRootController view];
  v5 = view;
  if (view)
  {
    containerWindow = view;
  }

  else
  {
    containerWindow = [(UIPeripheralHost *)self containerWindow];
  }

  v7 = containerWindow;

  return v7;
}

- (id)existingContainerRootController
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  existingContainerRootController = [v2 existingContainerRootController];

  return existingContainerRootController;
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
    rootViewController = [v3 rootViewController];
    isChangingPlacement = [rootViewController isChangingPlacement];
    isOnScreen = [rootViewController isOnScreen];
    if (isChangingPlacement)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }

    if (isOnScreen)
    {
      v9 = isChangingPlacement ^ 1;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    rootViewController = +[UIKeyboard activeKeyboard];
    window = [rootViewController window];
    if (window)
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
  deactivationCount = [v2 deactivationCount];

  return deactivationCount;
}

- (id)containerWindow
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  containerWindow = [v2 containerWindow];

  return containerWindow;
}

- (BOOL)_isTransitioning
{
  existingContainerRootController = [(UIPeripheralHost *)self existingContainerRootController];
  isTransitioning = [existingContainerRootController isTransitioning];

  return isTransitioning;
}

+ (CGRect)screenBoundsInAppOrientation
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIApplicationWillEnterForegroundNotification";
  v6[1] = @"UITextEffectsWindowDidRotateNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

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
  _layout = [v2 _layout];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)peripheralHostWillResume:(id)resume
{
  responder = [(UIPeripheralHost *)self responder];
  _requiresKeyboardWhenFirstResponder = [responder _requiresKeyboardWhenFirstResponder];

  if (_requiresKeyboardWhenFirstResponder)
  {
    v6 = +[UIKeyboardImpl sharedInstance];
    responder2 = [(UIPeripheralHost *)self responder];
    _keyboardResponder = [responder2 _keyboardResponder];
    [v6 setDelegate:_keyboardResponder];

    geometryDelegate = [v6 geometryDelegate];

    if (!geometryDelegate)
    {
      v10 = +[UIKeyboard activeKeyboard];
      [v6 setGeometryDelegate:v10];
    }

    inputViews = [(UIPeripheralHost *)self inputViews];
    inputViewController = [inputViews inputViewController];
    _compatibilityController = [inputViewController _compatibilityController];
    v14 = +[UIKeyboardInputModeController sharedInputModeController];
    currentInputMode = [v14 currentInputMode];
    [_compatibilityController setInputMode:currentInputMode];
  }

  [(UIPeripheralHost *)self flushDelayedTasks];
}

- (void)textEffectsWindowDidRotate:(id)rotate
{
  rotateCopy = rotate;
  view = [(UIPeripheralHost *)self view];
  window = [view window];
  object = [rotateCopy object];

  if (window == object)
  {
    containerWindow = [(UIPeripheralHost *)self containerWindow];
    _isHostedInAnotherProcess = [containerWindow _isHostedInAnotherProcess];

    if (_isHostedInAnotherProcess)
    {
      return;
    }

    view = [(UIPeripheralHost *)self containerWindow];
    interfaceOrientation = [view interfaceOrientation];
    window = [(UIPeripheralHost *)self inputViews];
    object = [window keyboard];
    if (interfaceOrientation == [object interfaceOrientation])
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }

    view2 = [(UIPeripheralHost *)self view];
    [view2 setAlpha:v10];
  }
}

- (CGSize)sizeOfInputViewForInputViewSet:(id)set withInterfaceOrientation:(int64_t)orientation
{
  setCopy = set;
  if (([setCopy isEmpty] & 1) != 0 || (objc_msgSend(setCopy, "keyboard"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    [UIKeyboardImpl sizeForInterfaceOrientation:orientation];
  }

  else
  {
    [UIKeyboardImpl defaultSizeForInterfaceOrientation:orientation];
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
  responder = [(UIPeripheralHost *)self responder];
  v4 = [(UIPeripheralHost *)self _renderConfigForResponder:responder];

  return v4;
}

- (id)_renderConfigForResponder:(id)responder
{
  responderCopy = responder;
  v4 = [UITextInputTraits traitEnvironmentFromTraits:responderCopy];
  if (objc_opt_respondsToSelector())
  {
    keyboardAppearance = [responderCopy keyboardAppearance];
  }

  else
  {
    keyboardAppearance = 0;
  }

  v6 = [UITextInputTraits configuredAppearanceForAppearance:keyboardAppearance withTraitEnvironment:v4];
  v7 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v7 currentInputMode];
  v9 = [UIKBRenderConfig configForAppearance:v6 inputMode:currentInputMode traitEnvironment:v4];

  return v9;
}

+ (void)_releaseSharedInstance
{
  view = [SharedPeripheralHost view];
  layer = [view layer];
  [layer removeAllAnimations];

  v4 = SharedPeripheralHost;
  SharedPeripheralHost = 0;
}

+ (void)setKeyboardOnScreenNotifyKey:(BOOL)key
{
  _MergedGlobals_1198 = key;
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

  __49__UIPeripheralHost_setKeyboardOnScreenNotifyKey___block_invoke(self, v3);
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

- (void)setKeyboardOnScreenNotifyKey:(BOOL)key
{
  [objc_opt_class() setKeyboardOnScreenNotifyKey:key];

  +[UIDictationController keyboardDidUpdateOnScreenStatus];
}

- (void)setKeyboardFencingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  [v4 setShouldFence:enabledCopy];
}

- (UIPeripheralHostState)targetState
{
  lastObject = [(NSMutableArray *)self->_targetStateStack count];
  if (lastObject)
  {
    lastObject = [(NSMutableArray *)self->_targetStateStack lastObject];
  }

  return lastObject;
}

- (void)setTargetState:(id)state
{
  targetStateStack = self->_targetStateStack;
  if (state)
  {

    [(NSMutableArray *)targetStateStack addObject:?];
  }

  else if ([(NSMutableArray *)targetStateStack count])
  {
    v5 = self->_targetStateStack;

    [(NSMutableArray *)v5 removeLastObject];
  }
}

- (void)postKeyboardFrameChangeNotification:(id)notification withInfo:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  if (!self->_isTranslating || ([notificationCopy _containsSubstring:@"ChangeFrameNotification"] & 1) == 0)
  {
    if ([notificationCopy isEqualToString:@"UIKeyboardWillChangeFrameNotification"])
    {
      v7 = UIKeyboardPrivateWillChangeFrameNotification;
    }

    else
    {
      if (![notificationCopy isEqualToString:@"UIKeyboardDidChangeFrameNotification"])
      {
        v8 = 0;
        goto LABEL_9;
      }

      v7 = UIKeyboardPrivateDidChangeFrameNotification;
    }

    v8 = *v7;
LABEL_9:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = [(UIPeripheralHost *)self _screenForFirstResponder:self->_responder];
    [defaultCenter postNotificationName:v8 object:v10 userInfo:infoCopy];

    [defaultCenter postNotificationName:notificationCopy object:0 userInfo:infoCopy];
  }
}

- (void)disableInterfaceAutorotation:(BOOL)autorotation
{
  if (autorotation)
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

  windows = [UIApp windows];
  [windows makeObjectsPerformSelector:*v5];

  self->_interfaceAutorotationDisabled = v4;
}

- (void)prepareForRotationToOrientation:(int64_t)orientation
{
  inputViews = [(UIPeripheralHost *)self inputViews];
  keyboard = [inputViews keyboard];
  [(UIPeripheralHost *)self prepareForRotationOfKeyboard:keyboard toOrientation:orientation];
}

- (void)rotateToOrientation:(int64_t)orientation
{
  inputViews = [(UIPeripheralHost *)self inputViews];
  keyboard = [inputViews keyboard];
  [(UIPeripheralHost *)self rotateKeyboard:keyboard toOrientation:orientation];
}

- (void)finishRotation
{
  inputViews = [(UIPeripheralHost *)self inputViews];
  keyboard = [inputViews keyboard];
  [(UIPeripheralHost *)self finishRotationOfKeyboard:keyboard];
}

- (void)prepareForRotationOfKeyboard:(id)keyboard toOrientation:(int64_t)orientation
{
  keyboardCopy = keyboard;
  v7 = keyboardCopy;
  if (keyboardCopy)
  {
    v31 = keyboardCopy;
    window = [keyboardCopy window];
    _isTextEffectsWindow = [window _isTextEffectsWindow];

    v7 = v31;
    if ((_isTextEffectsWindow & 1) == 0)
    {
      if ([UIApp _isSpringBoard])
      {
        window2 = [v31 window];
        [window2 bounds];
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

      window3 = [v31 window];
      [window3 _rotationDuration];
      v26 = v25;

      containerRootController = [(UIPeripheralHost *)self containerRootController];
      [containerRootController _prepareForRotationToOrientation:orientation duration:v26];

      v28 = +[_UIRemoteKeyboards enabled];
      v7 = v31;
      if (v28)
      {
        v29 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        inputWindowRootViewController = [v29 inputWindowRootViewController];

        [inputWindowRootViewController _prepareForRotationToOrientation:orientation duration:v26];
        v7 = v31;
      }
    }
  }
}

- (void)rotateKeyboard:(id)keyboard toOrientation:(int64_t)orientation
{
  keyboardCopy = keyboard;
  v7 = keyboardCopy;
  if (keyboardCopy)
  {
    v17 = keyboardCopy;
    window = [keyboardCopy window];
    _isTextEffectsWindow = [window _isTextEffectsWindow];

    v7 = v17;
    if ((_isTextEffectsWindow & 1) == 0)
    {
      window2 = [v17 window];
      [window2 _rotationDuration];
      v12 = v11;

      containerRootController = [(UIPeripheralHost *)self containerRootController];
      [containerRootController _rotateToOrientation:orientation duration:v12];

      v14 = +[_UIRemoteKeyboards enabled];
      v7 = v17;
      if (v14)
      {
        v15 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        inputWindowRootViewController = [v15 inputWindowRootViewController];

        [inputWindowRootViewController _rotateToOrientation:orientation duration:v12];
        v7 = v17;
      }
    }
  }
}

- (void)finishRotationOfKeyboard:(id)keyboard
{
  keyboardCopy = keyboard;
  v5 = keyboardCopy;
  if (keyboardCopy)
  {
    v12 = keyboardCopy;
    window = [keyboardCopy window];
    _isTextEffectsWindow = [window _isTextEffectsWindow];

    v5 = v12;
    if ((_isTextEffectsWindow & 1) == 0)
    {
      if ([UIApp _isSpringBoard])
      {
        [v12 setHidden:0];
      }

      containerRootController = [(UIPeripheralHost *)self containerRootController];
      [containerRootController _finishRotationFromInterfaceOrientation:0];

      v9 = +[_UIRemoteKeyboards enabled];
      v5 = v12;
      if (v9)
      {
        v10 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
        inputWindowRootViewController = [v10 inputWindowRootViewController];

        [inputWindowRootViewController _finishRotationFromInterfaceOrientation:0];
        v5 = v12;
      }
    }
  }
}

- (id)_sceneForFirstResponder:(id)responder
{
  _responderWindow = [responder _responderWindow];
  windowScene = [_responderWindow windowScene];

  return windowScene;
}

- (BOOL)animationsEnabled
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  responder = [v3 responder];
  v5 = [(UIPeripheralHost *)self _sceneForFirstResponder:responder];
  v6 = [UITextEffectsHostingInfo hostingInfoForWindowScene:v5];
  useHostedInstance = [v6 useHostedInstance];

  v8 = (useHostedInstance & 1) != 0 || [UIApp applicationState] != 2;
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

- (void)forceOrderInAutomaticAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 forceOrderInAutomaticAnimated:animatedCopy];
}

- (void)forceOrderOutAutomaticAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 forceOrderOutAutomaticAnimated:animatedCopy];
}

- (void)forceOrderInAutomaticFromDirection:(int)direction withDuration:(double)duration
{
  v5 = *&direction;
  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v6 forceOrderInAutomaticFromDirection:v5 withDuration:duration];
}

- (void)forceOrderOutAutomaticToDirection:(int)direction withDuration:(double)duration
{
  v5 = *&direction;
  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v6 forceOrderOutAutomaticToDirection:v5 withDuration:duration];
}

- (void)orderInAutomatic
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v4 automaticAppearanceReallyEnabled])
  {
    nextAnimationStyle = [v4 nextAnimationStyle];
    legacyAnimationCopy = [nextAnimationStyle legacyAnimationCopy];

    [v4 orderInWithAnimationStyle:legacyAnimationCopy];
  }
}

- (void)orderInAutomaticSkippingAnimation
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v4 automaticAppearanceReallyEnabled])
  {
    nextAnimationStyle = [v4 nextAnimationStyle];
    legacyAnimationCopy = [nextAnimationStyle legacyAnimationCopy];

    [legacyAnimationCopy setAnimated:0];
    [v4 orderInWithAnimationStyle:legacyAnimationCopy];
  }
}

- (void)orderInAutomaticFromDirection:(int)direction withDuration:(double)duration
{
  v5 = *&direction;
  v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v7 automaticAppearanceReallyEnabled])
  {
    v6 = [UIInputViewAnimationStyleDirectional animationStyleAnimated:duration > 0.0 duration:v5 outDirection:duration];
    [v7 orderInWithAnimationStyle:v6];
  }
}

- (void)orderOutAutomatic
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v4 automaticAppearanceReallyEnabled])
  {
    nextAnimationStyle = [v4 nextAnimationStyle];
    legacyAnimationCopy = [nextAnimationStyle legacyAnimationCopy];

    [v4 orderOutWithAnimationStyle:legacyAnimationCopy];
  }
}

- (void)orderOutAutomaticSkippingAnimation
{
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v4 automaticAppearanceReallyEnabled])
  {
    nextAnimationStyle = [v4 nextAnimationStyle];
    legacyAnimationCopy = [nextAnimationStyle legacyAnimationCopy];

    [legacyAnimationCopy setAnimated:0];
    [v4 orderOutWithAnimationStyle:legacyAnimationCopy];
  }
}

- (void)orderOutAutomaticToDirection:(int)direction withDuration:(double)duration
{
  v5 = *&direction;
  v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if ([v7 automaticAppearanceReallyEnabled])
  {
    v6 = [UIInputViewAnimationStyleDirectional animationStyleAnimated:duration > 0.0 duration:v5 outDirection:duration];
    [v7 orderOutWithAnimationStyle:v6];
  }
}

- (void)setDocumentInputMode:(id)mode
{
  primaryLanguage = [mode primaryLanguage];
  v4 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:primaryLanguage];
  documentInputMode = self->_documentInputMode;
  self->_documentInputMode = v4;
}

- (BOOL)hasCustomInputView
{
  inputViews = [(UIPeripheralHost *)self inputViews];
  inputView = [inputViews inputView];
  if (inputView)
  {
    inputViews2 = [(UIPeripheralHost *)self inputViews];
    keyboard = [inputViews2 keyboard];
    v7 = keyboard == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CGSize)totalPeripheralSizeForOrientation:(int64_t)orientation
{
  inputViews = [(UIPeripheralHost *)self inputViews];
  [(UIPeripheralHost *)self sizeOfInputViewForInputViewSet:inputViews withInterfaceOrientation:orientation];
  v7 = v6;
  v9 = v8;

  if ([(UIPeripheralHost *)self hasCustomInputView])
  {
    inputViews2 = [(UIPeripheralHost *)self inputViews];
    [inputViews2 inputViewBounds];
    v9 = v11;
  }

  inputViews3 = [(UIPeripheralHost *)self inputViews];
  inputAccessoryView = [inputViews3 inputAccessoryView];

  if (inputAccessoryView)
  {
    inputViews4 = [(UIPeripheralHost *)self inputViews];
    inputView = [inputViews4 inputView];

    if (!inputView)
    {
      v9 = 0.0;
    }

    inputViews5 = [(UIPeripheralHost *)self inputViews];
    [inputViews5 inputAccessoryViewBounds];
    v9 = v9 + v17;
  }

  inputViews6 = [(UIPeripheralHost *)self inputViews];
  [inputViews6 keyboard];

  v19 = v7;
  v20 = v9;
  result.height = v20;
  result.width = v19;
  return result;
}

- (BOOL)userInfoContainsActualGeometryChange:(id)change
{
  changeCopy = change;
  v4 = [changeCopy objectForKey:@"UIKeyboardFrameBeginUserInfoKey"];
  [v4 CGRectValue];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [changeCopy objectForKey:@"UIKeyboardFrameEndUserInfoKey"];

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

- (CGRect)screenRectFromBounds:(CGRect)bounds atCenter:(CGPoint)center applyingSourceHeightDelta:(double)delta
{
  x = center.x;
  width = bounds.size.width;
  y = bounds.origin.y;
  v8 = bounds.origin.x;
  v10 = bounds.size.height + delta;
  v11 = center.y + delta * 0.5;
  containerWindow = [(UIPeripheralHost *)self containerWindow];
  [containerWindow convertRect:0 toWindow:{v8, y, width, v10}];
  v14 = v13;
  v16 = v15;

  containerWindow2 = [(UIPeripheralHost *)self containerWindow];
  [containerWindow2 convertPoint:0 toWindow:{x, v11}];
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

- (id)userInfoFromGeometry:(UIPeripheralAnimationGeometry *)geometry duration:(double)duration forWill:(BOOL)will forShow:(BOOL)show
{
  showCopy = show;
  willCopy = will;
  v10 = 24;
  if (show)
  {
    v10 = 8;
  }

  v11 = 16;
  if (show)
  {
    v11 = 0;
  }

  v12 = *(&geometry->outPosition.x + v11);
  v13 = *(&geometry->outPosition.x + v10);
  if (show && ![(UIPeripheralHost *)self isUndocked])
  {
    inputViews = [(UIPeripheralHost *)self inputViews];
    isSplit = [inputViews isSplit];
    v18 = 24;
    if (isSplit)
    {
      v18 = 8;
    }

    v19 = 16;
    if (isSplit)
    {
      v19 = 0;
    }

    x = *(&geometry->outPosition.x + v19);
    y = *(&geometry->outPosition.x + v18);
  }

  else
  {
    x = geometry->outPosition.x;
    y = geometry->outPosition.y;
  }

  if (willCopy)
  {
    [(UIPeripheralHost *)self screenRectFromBounds:geometry->bounds.origin.x atCenter:geometry->bounds.origin.y applyingSourceHeightDelta:geometry->bounds.size.width, geometry->bounds.size.height, v12, v13, -geometry->targetFrameHeightDelta];
    v82 = v21;
    v83 = v20;
    v80 = v23;
    v81 = v22;
    [(UIPeripheralHost *)self screenRectFromBounds:geometry->bounds.origin.x atCenter:geometry->bounds.origin.y applyingSourceHeightDelta:geometry->bounds.size.width, geometry->bounds.size.height, x, y, 0.0];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = 7;
  }

  else
  {
    targetState = [(UIPeripheralHost *)self targetState];
    screenGeometry = [targetState screenGeometry];
    v35 = [screenGeometry objectForKey:@"UIKeyboardFrameBeginUserInfoKey"];
    [v35 CGRectValue];
    v82 = v37;
    v83 = v36;
    v80 = v39;
    v81 = v38;

    targetState2 = [(UIPeripheralHost *)self targetState];
    screenGeometry2 = [targetState2 screenGeometry];
    v42 = [screenGeometry2 objectForKey:@"UIKeyboardFrameEndUserInfoKey"];
    [v42 CGRectValue];
    v25 = v43;
    v27 = v44;
    v29 = v45;
    v31 = v46;

    v32 = 5;
  }

  if ([(UIPeripheralHost *)self isUndocked])
  {
    inputViews2 = [(UIPeripheralHost *)self inputViews];
    inputView = [inputViews2 inputView];

    if (inputView)
    {
      if (showCopy)
      {
        tx = geometry->transform.tx;
        ty = geometry->transform.ty;
        v51 = x + tx;
        v52 = y + ty;
        [(UIPeripheralHost *)self screenRectFromBounds:geometry->bounds.origin.x atCenter:geometry->bounds.origin.y applyingSourceHeightDelta:geometry->bounds.size.width, geometry->bounds.size.height, v12 + tx, v13 + ty, -geometry->targetFrameHeightDelta];
        v82 = v54;
        v83 = v53;
        v80 = v56;
        v81 = v55;
        [(UIPeripheralHost *)self screenRectFromBounds:geometry->bounds.origin.x atCenter:geometry->bounds.origin.y applyingSourceHeightDelta:geometry->bounds.size.width, geometry->bounds.size.height, v51, v52, -geometry->targetFrameHeightDelta];
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

  v66 = [MEMORY[0x1E696B098] valueWithCGRect:{geometry->bounds.origin.x, geometry->bounds.origin.y, geometry->bounds.size.width, geometry->bounds.size.height}];
  [v61 setObject:v66 forKey:@"UIKeyboardBoundsUserInfoKey"];

  v67 = MEMORY[0x1E696AD98];
  v68 = +[UIKeyboardImpl activeInstance];
  v69 = [v67 numberWithBool:{objc_msgSend(v68, "splitTransitionInProgress")}];
  [v61 setObject:v69 forKey:@"UIKeyboardFrameChangedByUserInteraction"];

  if (willCopy)
  {
    v70 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    [v61 setObject:v70 forKey:@"UIKeyboardAnimationDurationUserInfoKey"];

    v71 = [MEMORY[0x1E696AD98] numberWithInteger:7];
    [v61 setObject:v71 forKey:@"UIKeyboardAnimationCurveUserInfoKey"];

    targetState3 = [(UIPeripheralHost *)self targetState];

    if (targetState3)
    {
      v73 = MEMORY[0x1E695DF20];
      v74 = [MEMORY[0x1E696B098] valueWithCGRect:{v83, v82, v81, v80}];
      v75 = [MEMORY[0x1E696B098] valueWithCGRect:{v25, v27, v29, v31}];
      v76 = [v73 dictionaryWithObjectsAndKeys:{v74, @"UIKeyboardFrameBeginUserInfoKey", v75, @"UIKeyboardFrameEndUserInfoKey", 0}];
      targetState4 = [(UIPeripheralHost *)self targetState];
      [targetState4 setScreenGeometry:v76];
    }
  }

  return v61;
}

- (id)transitioningView
{
  view = [(UIPeripheralHost *)self view];
  superview = [view superview];

  return superview;
}

- (CGRect)transitioningFrame
{
  containerRootController = [(UIPeripheralHost *)self containerRootController];
  [containerRootController transitioningFrame];
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

- (void)updateToPlacement:(id)placement withNormalAnimationsAndNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  placementCopy = placement;
  containerRootController = [(UIPeripheralHost *)self containerRootController];
  [containerRootController updateToPlacement:placementCopy withNormalAnimationsAndNotifications:notificationsCopy];
}

- (void)setInputViewsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  containerRootController = [(UIPeripheralHost *)self containerRootController];
  [containerRootController setInputViewsHidden:hiddenCopy];
}

- (id)_screenForFirstResponder:(id)responder
{
  _responderWindow = [responder _responderWindow];
  screen = [_responderWindow screen];

  if ([screen _userInterfaceIdiom] == 3)
  {
    mainScreen = screen;
  }

  else
  {
    mainScreen = [objc_opt_self() mainScreen];
  }

  v6 = mainScreen;

  return v6;
}

- (void)queueDelayedTask:(id)task
{
  v4 = MEMORY[0x1E696B098];
  taskCopy = task;
  v6 = [v4 valueWithPointer:self];
  [(UIPeripheralHost *)self queueDelayedTask:taskCopy forKey:v6];
}

- (void)queueDelayedTask:(id)task forKey:(id)key delay:(double)delay
{
  taskCopy = task;
  keyCopy = key;
  v10 = [(NSMutableDictionary *)self->_deferredTransitionTasks objectForKey:keyCopy];
  if (v10)
  {
    v11 = v10;
    v12 = _Block_copy(v10);
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __65__UIPeripheralHost_UIKitInternal__queueDelayedTask_forKey_delay___block_invoke_2;
    v26 = &unk_1E70F77D0;
    v27 = v12;
    v28 = taskCopy;
    v13 = v12;
    v14 = [&v23 copy];

    deferredTransitionTasks = self->_deferredTransitionTasks;
    v16 = _Block_copy(v14);
    [(NSMutableDictionary *)deferredTransitionTasks setObject:v16 forKey:keyCopy, v23, v24, v25, v26];
  }

  else
  {
    existingContainerRootController = [(UIPeripheralHost *)self existingContainerRootController];
    isTransitionStarted = [existingContainerRootController isTransitionStarted];

    if (isTransitionStarted)
    {
      taskCopy[2](taskCopy);
    }

    else
    {
      v19 = [taskCopy copy];
      v20 = self->_deferredTransitionTasks;
      v21 = _Block_copy(v19);
      [(NSMutableDictionary *)v20 setObject:v21 forKey:keyCopy];

      v22 = dispatch_time(0, (delay * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__UIPeripheralHost_UIKitInternal__queueDelayedTask_forKey_delay___block_invoke;
      block[3] = &unk_1E70F35B8;
      block[4] = self;
      v30 = keyCopy;
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

- (void)flushDelayedTasksForKey:(id)key
{
  keyCopy = key;
  v4 = [(NSMutableDictionary *)self->_deferredTransitionTasks objectForKey:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_deferredTransitionTasks removeObjectForKey:keyCopy];
    v4[2](v4);
  }
}

- (BOOL)hasDelayedTasksForKey:(id)key
{
  v3 = [(NSMutableDictionary *)self->_deferredTransitionTasks objectForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (id)containerTextEffectsWindow
{
  containerWindow = [(UIPeripheralHost *)self containerWindow];
  if ([containerWindow _isTextEffectsWindow])
  {
    v3 = containerWindow;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)containerTextEffectsWindowAboveStatusBar
{
  containerTextEffectsWindow = [(UIPeripheralHost *)self containerTextEffectsWindow];
  aboveStatusBarWindow = [containerTextEffectsWindow aboveStatusBarWindow];

  return aboveStatusBarWindow;
}

- (void)_updateContainerWindowLevel
{
  inputViews = [(UIPeripheralHost *)self inputViews];
  responder = [(UIPeripheralHost *)self responder];
  [(UIPeripheralHost *)self setTextEffectsWindowLevelForInputView:inputViews responder:responder];
}

- (void)setTextEffectsWindowLevelForInputView:(id)view responder:(id)responder
{
  responderCopy = responder;
  if (![view isEmpty] || (+[UIKeyboardSceneDelegate automaticKeyboardArbiterClient](UIKeyboardSceneDelegate, "automaticKeyboardArbiterClient"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasAnyHostedViews"), v6, v7))
  {
    _responderWindow = [responderCopy _responderWindow];
    if (_responderWindow)
    {
      v9 = _responderWindow;
      _responderWindow2 = [responderCopy _responderWindow];
      containerTextEffectsWindow = [(UIPeripheralHost *)self containerTextEffectsWindow];

      if (_responderWindow2 != containerTextEffectsWindow)
      {
        containerTextEffectsWindow2 = [(UIPeripheralHost *)self containerTextEffectsWindow];
        _isHostedInAnotherProcess = [containerTextEffectsWindow2 _isHostedInAnotherProcess];

        if ((_isHostedInAnotherProcess & 1) == 0)
        {
          _responderWindow3 = [responderCopy _responderWindow];
          [_responderWindow3 level];
          v16 = v15;

          _responderWindow4 = [responderCopy _responderWindow];
          _fbsScene = [(UIWindow *)_responderWindow4 _fbsScene];
          settings = [_fbsScene settings];
          [settings level];
          v21 = v20;

          containerTextEffectsWindow3 = [(UIPeripheralHost *)self containerTextEffectsWindow];
          [containerTextEffectsWindow3 _setWindowLevel:v16 + 1.0];

          v23 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
          [v23 setWindowLevel:responderCopy sceneLevel:v16 + 2.0 forResponder:v21 + 2.0];
        }
      }
    }
  }
}

- (void)forceReloadInputViews
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  responder = [v3 responder];
  [v3 _reloadInputViewsForResponder:responder];
}

- (void)setDeactivatedKeyboard:(BOOL)keyboard forScene:(id)scene forSuppressionAssertion:(BOOL)assertion updatePlacement:(BOOL)placement wantsAssistant:(BOOL)assistant keepAccessories:(BOOL)accessories
{
  accessoriesCopy = accessories;
  assistantCopy = assistant;
  placementCopy = placement;
  assertionCopy = assertion;
  keyboardCopy = keyboard;
  v43 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  v14 = _UIPeripheralHostLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    *&buf[4] = keyboardCopy;
    LOWORD(v39) = 2112;
    *(&v39 + 2) = sceneCopy;
    WORD5(v39) = 1024;
    HIDWORD(v39) = assertionCopy;
    _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "setDeactivatedKeyboard: %d forScene: %@ forSuppressionAssertion: %d", buf, 0x18u);
  }

  if (!sceneCopy)
  {
    containerWindow = [(UIPeripheralHost *)self containerWindow];
    screen = [containerWindow screen];
    sceneCopy = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:screen];

    if (!sceneCopy)
    {
      containerWindow2 = [(UIPeripheralHost *)self containerWindow];
      sceneCopy = [containerWindow2 windowScene];
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
  v18 = sceneCopy;
  v34 = v18;
  v35 = buf;
  [UIKeyboardSceneDelegate performOnControllers:v33];
  v19 = *(v39 + 40);
  if (v19 || !keyboardCopy)
  {
    containerRootController = [v19 containerRootController];
    nextAnimationStyle = [*(v39 + 40) nextAnimationStyle];
    v22 = *(v39 + 40);
    if (keyboardCopy)
    {
      deactivationCount = [*(v39 + 40) deactivationCount];
      [v22 setDeactivationCount:deactivationCount + 1];
      if (deactivationCount)
      {
        v24 = 0;
      }

      else
      {
        v25 = +[UIKeyboardImpl activeInstance];
        showsCandidateBar = [v25 showsCandidateBar];

        if (showsCandidateBar)
        {
          v27 = +[UIKeyboardImpl activeInstance];
          candidateController = [v27 candidateController];
          [candidateController collapse];
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
      if (placementCopy)
      {
        [(UIPeripheralHost *)self updatePlacementForDeactivatedKeyboard:keyboardCopy forSuppressionAssertion:assertionCopy wantsAssistant:assistantCopy keepAccessories:accessoriesCopy animationStyle:nextAnimationStyle];
      }

      else
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __138__UIPeripheralHost_UIKitInternal__setDeactivatedKeyboard_forScene_forSuppressionAssertion_updatePlacement_wantsAssistant_keepAccessories___block_invoke_327;
        v31[3] = &__block_descriptor_33_e33_v16__0__UIInputWindowController_8l;
        v32 = keyboardCopy;
        [(UIPeripheralHost *)self performMultipleOperations:v31 withAnimationStyle:nextAnimationStyle];
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

- (void)updatePlacementForDeactivatedKeyboard:(BOOL)keyboard forSuppressionAssertion:(BOOL)assertion wantsAssistant:(BOOL)assistant keepAccessories:(BOOL)accessories animationStyle:(id)style
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __143__UIPeripheralHost_UIKitInternal__updatePlacementForDeactivatedKeyboard_forSuppressionAssertion_wantsAssistant_keepAccessories_animationStyle___block_invoke;
  v7[3] = &__block_descriptor_36_e33_v16__0__UIInputWindowController_8l;
  keyboardCopy = keyboard;
  assertionCopy = assertion;
  assistantCopy = assistant;
  accessoriesCopy = accessories;
  [(UIPeripheralHost *)self performMultipleOperations:v7 withAnimationStyle:style];
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

- (void)performWithoutDeactivation:(id)deactivation
{
  deactivationCopy = deactivation;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  deactivationCount = [v4 deactivationCount];
  if (deactivationCount)
  {
    [v4 setDeactivationCount:1];
    scene = [v4 scene];
    [(UIPeripheralHost *)self setDeactivatedKeyboard:0 forScene:scene];

    deactivationCopy[2]();
    scene2 = [v4 scene];
    [(UIPeripheralHost *)self setDeactivatedKeyboard:1 forScene:scene2];

    [v4 setDeactivationCount:{objc_msgSend(v4, "deactivationCount") + deactivationCount - 1}];
  }

  else
  {
    deactivationCopy[2]();
  }
}

- (id)lastUsedInputModeForCurrentContext
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  responder = [v2 responder];

  textInputContextIdentifier = [responder textInputContextIdentifier];

  if (textInputContextIdentifier)
  {
    v5 = +[UIKeyboardInputModeController sharedInputModeController];
    textInputMode = [responder textInputMode];
    textInputContextIdentifier = [v5 lastUsedInputModeForTextInputMode:textInputMode];
  }

  return textInputContextIdentifier;
}

- (CGRect)visiblePeripheralFrame:(BOOL)frame
{
  frameCopy = frame;
  targetState = [(UIPeripheralHost *)self targetState];

  if (targetState && frameCopy)
  {
    targetState2 = [(UIPeripheralHost *)self targetState];
    v7 = targetState2;
    if (targetState2)
    {
      [targetState2 geometry];
      v8 = v60;
      v9 = v59;
    }

    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }

    targetState3 = [(UIPeripheralHost *)self targetState];
    inPositionIsDestination = [targetState3 inPositionIsDestination];
    targetState4 = [(UIPeripheralHost *)self targetState];
    v33 = targetState4;
    if (inPositionIsDestination)
    {
      if (targetState4)
      {
        [targetState4 geometry];
        v34 = v58;
        v35 = v57;
      }

      else
      {
        v35 = 0.0;
        v34 = 0.0;
      }
    }

    else if (targetState4)
    {
      [targetState4 geometry];
      v34 = v56;
      v35 = v55;
    }

    else
    {
      v35 = 0.0;
      v34 = 0.0;
    }

    view = [(UIPeripheralHost *)self view];
    window = [view window];
    [UIScreen convertRect:window fromView:v35 - v9 * 0.5, v34 - v8 * 0.5, v9, v8];
    v23 = v38;
    v25 = v39;
    v27 = v40;
    v29 = v41;
  }

  else
  {
    view2 = [(UIPeripheralHost *)self view];
    superview = [view2 superview];

    if (superview)
    {
      view3 = [(UIPeripheralHost *)self view];
      [view3 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
      view4 = [(UIPeripheralHost *)self view];
      [UIScreen convertRect:view4 fromView:v14, v16, v18, v20];
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

  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
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
    containerRootController = [v2 containerRootController];
    [containerRootController visibleInputViewFrame];
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

+ (void)setAllVisibleFrames:(id)frames
{
  v26 = *MEMORY[0x1E69E9840];
  framesCopy = frames;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__UIPeripheralHost_UIKitInternal__setAllVisibleFrames___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_1ED49F458 != -1)
  {
    dispatch_once(&qword_1ED49F458, block);
  }

  if (qword_1ED49F460)
  {
    subviews = [qword_1ED49F460 subviews];
    [subviews makeObjectsPerformSelector:sel_removeFromSuperview];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = framesCopy;
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
          layer = [(UIView *)v13 layer];
          [layer setAllowsHitTesting:0];

          layer2 = [(UIView *)v13 layer];
          [layer2 setBorderWidth:5.0];

          v16 = +[UIColor redColor];
          cGColor = [v16 CGColor];
          layer3 = [(UIView *)v13 layer];
          [layer3 setBorderColor:cGColor];

          [qword_1ED49F460 addSubview:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }
  }

  sharedInstance = [self sharedInstance];
  [sharedInstance setAllVisibleFrames:framesCopy];
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

+ (id)allVisibleFrames:(id)frames
{
  v106 = *MEMORY[0x1E69E9840];
  framesCopy = frames;
  v4 = off_1E70EA000;
  v5 = +[UIKeyboardImpl activeInstance];
  candidateController = [v5 candidateController];

  array = [MEMORY[0x1E695DF70] array];
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  hosting = [framesCopy hosting];
  allHostingItems = [hosting allHostingItems];

  obj = allHostingItems;
  v9 = [allHostingItems countByEnumeratingWithState:&v101 objects:v105 count:16];
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
        view = [framesCopy view];
        [view frame];
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
          inputViewSet = [framesCopy inputViewSet];
          if ([inputViewSet isSplit])
          {
            activeInstance = [(__objc2_class *)v4[11] activeInstance];
            centerFilled = [activeInstance centerFilled];

            if ((centerFilled & 1) == 0)
            {
              inputViewSet2 = [framesCopy inputViewSet];
              [inputViewSet2 _leftInputViewSetFrame];
              v36 = v35;

              inputViewSet3 = [framesCopy inputViewSet];
              [inputViewSet3 _rightInputViewSetFrame];
              v39 = v38;

              v40 = y + 0.0;
              v41 = [MEMORY[0x1E696B098] valueWithCGRect:{x + 0.0, v40, width - (width - v36 + 0.0), height}];
              [array addObject:v41];

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

          placement = [v13 placement];
          if ([placement isFloatingAssistantView])
          {
            placement2 = [v13 placement];
            isFloating = [placement2 isFloating];

            if ((isFloating & 1) == 0)
            {
              v50 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
              systemInputAssistantViewController = [v50 systemInputAssistantViewController];

              view2 = [systemInputAssistantViewController view];
              hostView = [v13 hostView];
              v54 = [view2 isDescendantOfView:hostView];

              if (v54)
              {
                view3 = [systemInputAssistantViewController view];
                [systemInputAssistantViewController barFrame];
                v57 = v56;
                v59 = v58;
                v61 = v60;
                v63 = v62;
                hostView2 = [v13 hostView];
                superview = [hostView2 superview];
                [view3 convertRect:superview toView:{v57, v59, v61, v63}];
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
                  [array addObject:v74];
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
          [array addObject:v75];

          if ([candidateController barIsExtended])
          {
            candidateBar = [candidateController candidateBar];
            hostView3 = [v13 hostView];
            v78 = [candidateBar isDescendantOfView:hostView3];

            if (v78)
            {
              candidateBar2 = [candidateController candidateBar];
              [candidateController candidateViewFrame];
              v81 = v80;
              v83 = v82;
              v85 = v84;
              v87 = v86;
              hostView4 = [v13 hostView];
              superview2 = [hostView4 superview];
              [candidateBar2 convertRect:superview2 toView:{v81, v83, v85, v87}];
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
                systemInputAssistantViewController = [v42 valueWithCGRect:{v43, v45, v44, v46}];
                [array addObject:systemInputAssistantViewController];
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

  return array;
}

+ (id)allVisiblePeripheralFrames
{
  v27 = *MEMORY[0x1E69E9840];
  sharedInstance = [self sharedInstance];
  containerRootController = [sharedInstance containerRootController];
  if (containerRootController)
  {
    v17 = sharedInstance;
    array = [MEMORY[0x1E695DF70] array];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__UIPeripheralHost_UIKitInternal__allVisiblePeripheralFrames__block_invoke;
    aBlock[3] = &unk_1E7117700;
    v16 = array;
    v25 = v16;
    v5 = _Block_copy(aBlock);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    hosting = [containerRootController hosting];
    allHostingItems = [hosting allHostingItems];

    v8 = [allHostingItems countByEnumeratingWithState:&v20 objects:v26 count:16];
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
            objc_enumerationMutation(allHostingItems);
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

        v9 = [allHostingItems countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v9);
    }

    v14 = v16;
    sharedInstance = v17;
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

+ (BOOL)pointIsWithinKeyboardContent:(CGPoint)content
{
  y = content.y;
  x = content.x;
  v28 = *MEMORY[0x1E69E9840];
  mainScreen = [objc_opt_self() mainScreen];
  coordinateSpace = [mainScreen coordinateSpace];
  fixedCoordinateSpace = [mainScreen fixedCoordinateSpace];
  v9 = +[UIPeripheralHost sharedInstance];
  containerRootController = [v9 containerRootController];

  inputViewSet = [containerRootController inputViewSet];
  inputView = [inputViewSet inputView];

  if (inputView)
  {
    if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 && [UIApp _isSpringBoard] && (+[UIKeyboardSceneDelegate activeKeyboardSceneDelegate](UIKeyboardSceneDelegate, "activeKeyboardSceneDelegate"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "visualModeManager"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "windowingModeEnabled"), v14, v13, v15))
    {
      sharedInstance = [self sharedInstance];
      allVisibleFrames = [sharedInstance allVisibleFrames];
    }

    else
    {
      allVisibleFrames = [self allVisiblePeripheralFrames];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = allVisibleFrames;
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
          [fixedCoordinateSpace convertRect:coordinateSpace fromCoordinateSpace:?];
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

- (double)minimumOffsetForBuffer:(double)buffer
{
  bufferCopy = buffer;
  if (buffer == 0.0)
  {
    containerWindow = [(UIPeripheralHost *)self containerWindow];
    v6 = __UIStatusBarManagerForWindow(containerWindow);
    [v6 statusBarHeight];
    bufferCopy = v7;
  }

  containerWindow2 = [(UIPeripheralHost *)self containerWindow];
  [containerWindow2 bounds];
  v10 = v9;

  [(UIPeripheralHost *)self totalPeripheralSizeForOrientation:+[UIKeyboardSceneDelegate interfaceOrientation]];
  return -(v10 - v11 - bufferCopy);
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

- (void)setUndockedWithOffset:(CGPoint)offset animated:(BOOL)animated
{
  LODWORD(v4) = animated;
  y = offset.y;
  x = offset.x;
  v8 = 1;
  if (!+[UIKeyboardImpl isFloating])
  {
    inputViews = [(UIPeripheralHost *)self inputViews];
    _inputViewIsSplit = [inputViews _inputViewIsSplit];
    v11 = y < 0.0;
    if (y > 0.0)
    {
      v11 = 1;
    }

    v8 = _inputViewIsSplit | v11;
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
  containerWindow = [(UIPeripheralHost *)self containerWindow];
  [containerWindow frame];
  v15 = v14;
  containerWindow2 = [(UIPeripheralHost *)self containerWindow];
  [containerWindow2 frame];
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
    inputViews2 = [(UIPeripheralHost *)self inputViews];
    v37 = [UIPeripheralHost endPlacementForInputViewSet:inputViews2 windowScene:0];
  }

  containerWindow3 = [(UIPeripheralHost *)self containerWindow];
  screen = [containerWindow3 screen];
  v33 = [(UIKeyboardMotionSupport *)UISplitKeyboardSupport supportForScreen:screen];
  [v33 translateToPlacement:v37 animated:v4];

  v34 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v34 currentInputMode];

  if ([currentInputMode isExtensionInputMode] && (objc_msgSend(currentInputMode, "isDisplayed") & 1) == 0)
  {
    v36 = +[UIKeyboardImpl activeInstance];
    [v36 postInputViewControllerShouldUpdateNotification:currentInputMode];
  }
}

+ (UIEdgeInsets)floatingChromeBuffer
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  inputViews = [v2 inputViews];
  inputAccessoryView = [inputViews inputAccessoryView];
  [inputAccessoryView bounds];
  v6 = v5;

  containerWindow = [v2 containerWindow];
  v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  visualModeManager = [v8 visualModeManager];
  windowingModeEnabled = [visualModeManager windowingModeEnabled];

  if (windowingModeEnabled)
  {
    v11 = 140.0;
  }

  else
  {
    [containerWindow slideOverWindowVerticalOffset];
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

+ (void)adjustFloatingPersistentOffsetForKeyboardSize:(CGSize)size
{
  [UIPeripheralHost adjustedFloatingOffsetForKeyboardSize:size.width, size.height];

  [UIKeyboardImpl setFloatingPersistentOffset:?];
}

+ (CGPoint)adjustedFloatingOffsetForKeyboardSize:(CGSize)size
{
  height = size.height;
  +[UIKeyboardImpl floatingWidth];
  v5 = v4;
  +[UIKeyboardImpl floatingPersistentOffset];
  v7 = v6;
  v43 = v8;
  v44 = v6;
  v9 = v8;
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v12 = v11;
  v14 = v13;

  [UIInputViewSetPlacementFloating frameAtOffset:v7 keyboardSize:v9 screenSize:v5, height, v12, v14];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  mainScreen2 = [objc_opt_self() mainScreen];
  [mainScreen2 bounds];
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

+ (void)setFloating:(BOOL)floating onCompletion:(id)completion
{
  floatingCopy = floating;
  completionCopy = completion;
  v5 = +[UIKeyboardImpl isFloating]^ floatingCopy;
  if (v5 == 1)
  {
    [UIKeyboardImpl setFloating:floatingCopy];
    v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v6 reloadPlacement];
  }

  v7 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v5);
    v7 = completionCopy;
  }
}

- (void)moveToPersistentOffset
{
  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    inputViews = [(UIPeripheralHost *)self inputViews];
    keyboard = [inputViews keyboard];
    isMinimized = [keyboard isMinimized];

    if ((isMinimized & 1) == 0)
    {
      +[UIKeyboardImpl persistentOffset];

      [(UIPeripheralHost *)self setUndockedWithOffset:0 animated:?];
    }
  }
}

- (unint64_t)_clipCornersOfView:(id)view
{
  _transientInputViews = [(UIPeripheralHost *)self _transientInputViews];
  v5 = _transientInputViews;
  if (_transientInputViews)
  {
    inputViews = _transientInputViews;
  }

  else
  {
    inputViews = [(UIPeripheralHost *)self inputViews];
  }

  v7 = inputViews;

  _splittableInputAccessoryView = [v7 _splittableInputAccessoryView];
  inputAccessoryView = [v7 inputAccessoryView];

  if (inputAccessoryView)
  {
    if (_splittableInputAccessoryView)
    {
      [_splittableInputAccessoryView leftContentViewSize];
      if (v10 == 0.0)
      {
        v11 = 14;
      }

      else
      {
        v11 = 12;
      }

      [_splittableInputAccessoryView rightContentViewSize];
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
    inputViews = [(UIPeripheralHost *)self inputViews];
    [inputViews inputViewBounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    inputViews2 = [(UIPeripheralHost *)self inputViews];
    inputView = [inputViews2 inputView];
    [UIScreen convertRect:inputView fromView:v13, v15, v17, v19];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    containerWindow = [(UIPeripheralHost *)self containerWindow];
    [containerWindow hostedFrame];
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

- (CGPoint)offHostPointForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(UIPeripheralHost *)self isOnScreen])
  {
    [(UIPeripheralHost *)self _inputViewRectToAvoid];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    transformedContainerView = [(UIPeripheralHost *)self transformedContainerView];
    [UIScreen convertRect:transformedContainerView toView:v7, v9, v11, v13];
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
      inputViews = [(UIPeripheralHost *)self inputViews];
      isSplit = [inputViews isSplit];

      if (isSplit)
      {
        inputViews2 = [(UIPeripheralHost *)self inputViews];
        [inputViews2 _leftInputViewSetFrame];
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
          inputViews3 = [(UIPeripheralHost *)self inputViews];
          [inputViews3 _rightInputViewSetFrame];
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

- (double)getVerticalOverlapForView:(id)view usingKeyboardInfo:(id)info
{
  viewCopy = view;
  infoCopy = info;
  v8 = 0.0;
  if ([(UIPeripheralHost *)self isOnScreen]&& ![(UIPeripheralHost *)self isUndocked])
  {
    inputViews = [(UIPeripheralHost *)self inputViews];
    if ([inputViews _inputViewIsSplit])
    {
      goto LABEL_7;
    }

    window = [viewCopy window];
    if (!window)
    {
      goto LABEL_7;
    }

    v11 = window;
    inputViews2 = [(UIPeripheralHost *)self inputViews];
    inputView = [inputViews2 inputView];
    if ([viewCopy isDescendantOfView:inputView])
    {

LABEL_7:
      goto LABEL_8;
    }

    inputViews3 = [(UIPeripheralHost *)self inputViews];
    inputAccessoryView = [inputViews3 inputAccessoryView];
    v17 = [viewCopy isDescendantOfView:inputAccessoryView];

    if ((v17 & 1) == 0)
    {
      if (infoCopy)
      {
        containerRootController = [infoCopy objectForKey:@"UIKeyboardFrameEndUserInfoKey"];
        [containerRootController CGRectValue];
      }

      else
      {
        containerRootController = [(UIPeripheralHost *)self containerRootController];
        [containerRootController visibleFrame];
      }

      [UIScreen convertRect:viewCopy toView:?];
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
        [viewCopy bounds];
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

- (BOOL)shouldUseHideNotificationForGeometry:(UIPeripheralAnimationGeometry *)geometry
{
  containerWindow = [(UIPeripheralHost *)self containerWindow];
  [containerWindow bounds];
  v7 = v6;

  inputViews = [(UIPeripheralHost *)self inputViews];
  inputAccessoryView = [inputViews inputAccessoryView];
  if (inputAccessoryView)
  {
    v10 = 0;
  }

  else
  {
    v10 = geometry->inPosition.y + geometry->bounds.size.height * -0.5 >= v7;
  }

  return v10;
}

- (void)postWillShowNotificationForGeometry:(UIPeripheralAnimationGeometry *)geometry duration:(double)duration
{
  v7 = *&geometry->transform.c;
  v29 = *&geometry->transform.a;
  v30 = v7;
  v31 = *&geometry->transform.tx;
  targetFrameHeightDelta = geometry->targetFrameHeightDelta;
  inPosition = geometry->inPosition;
  outPosition = geometry->outPosition;
  v26 = inPosition;
  size = geometry->bounds.size;
  origin = geometry->bounds.origin;
  v28 = size;
  v10 = [UIPeripheralHostState stateWithGeometry:&outPosition inPositionIsDestination:1];
  [(UIPeripheralHost *)self setTargetState:v10];

  v11 = *&geometry->transform.c;
  v29 = *&geometry->transform.a;
  v30 = v11;
  v31 = *&geometry->transform.tx;
  targetFrameHeightDelta = geometry->targetFrameHeightDelta;
  v12 = geometry->inPosition;
  outPosition = geometry->outPosition;
  v26 = v12;
  v13 = geometry->bounds.size;
  origin = geometry->bounds.origin;
  v28 = v13;
  v14 = [(UIPeripheralHost *)self userInfoFromGeometry:&outPosition duration:1 forWill:1 forShow:duration];
  v15 = [(UIPeripheralHost *)self userInfoContainsActualGeometryChange:v14];
  v16 = @"UIKeyboardPrivateWillShowNotification";
  v17 = @"UIKeyboardWillShowNotification";
  v18 = *&geometry->transform.c;
  v29 = *&geometry->transform.a;
  v30 = v18;
  v31 = *&geometry->transform.tx;
  targetFrameHeightDelta = geometry->targetFrameHeightDelta;
  v19 = geometry->inPosition;
  outPosition = geometry->outPosition;
  v26 = v19;
  v20 = geometry->bounds.size;
  origin = geometry->bounds.origin;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v24 = [(UIPeripheralHost *)self _screenForFirstResponder:self->_responder];
    [defaultCenter postNotificationName:v16 object:v24 userInfo:v14];

    [defaultCenter postNotificationName:v17 object:0 userInfo:v14];
  }
}

- (void)postDidShowNotificationForGeometry:(UIPeripheralAnimationGeometry *)geometry
{
  v5 = *&geometry->transform.c;
  v23 = *&geometry->transform.a;
  v24 = v5;
  v25 = *&geometry->transform.tx;
  targetFrameHeightDelta = geometry->targetFrameHeightDelta;
  inPosition = geometry->inPosition;
  outPosition = geometry->outPosition;
  v20 = inPosition;
  size = geometry->bounds.size;
  origin = geometry->bounds.origin;
  v22 = size;
  v8 = [(UIPeripheralHost *)self userInfoFromGeometry:&outPosition duration:0 forWill:1 forShow:0.0];
  v9 = [(UIPeripheralHost *)self userInfoContainsActualGeometryChange:v8];
  v10 = @"UIKeyboardDidShowNotification";
  v11 = @"UIKeyboardPrivateDidShowNotification";
  v12 = *&geometry->transform.c;
  v23 = *&geometry->transform.a;
  v24 = v12;
  v25 = *&geometry->transform.tx;
  targetFrameHeightDelta = geometry->targetFrameHeightDelta;
  v13 = geometry->inPosition;
  outPosition = geometry->outPosition;
  v20 = v13;
  v14 = geometry->bounds.size;
  origin = geometry->bounds.origin;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v18 = [(UIPeripheralHost *)self _screenForFirstResponder:self->_responder];
    [defaultCenter postNotificationName:v11 object:v18 userInfo:v8];

    [defaultCenter postNotificationName:v10 object:0 userInfo:v8];
  }

  [(UIPeripheralHost *)self setTargetState:0];
}

- (void)performMultipleOperations:(id)operations withAnimationStyle:(id)style
{
  operationsCopy = operations;
  styleCopy = style;
  if (+[_UIRemoteKeyboards enabled])
  {
    array = [MEMORY[0x1E695DF70] array];
    v9 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__UIPeripheralHost_UIKitInternal__performMultipleOperations_withAnimationStyle___block_invoke;
    v21[3] = &unk_1E7108338;
    v22 = array;
    v24 = operationsCopy;
    v23 = styleCopy;
    v10 = array;
    [v9 performOnControllers:v21];
  }

  else
  {
    containerRootController = [(UIPeripheralHost *)self containerRootController];
    inputViewSet = [containerRootController inputViewSet];
    inputView = [inputViewSet inputView];
    if (inputView)
    {
      v14 = inputView;
      containerRootController2 = [(UIPeripheralHost *)self containerRootController];
      inputViewSet2 = [containerRootController2 inputViewSet];
      isCustomInputView = [inputViewSet2 isCustomInputView];

      if ((isCustomInputView & 1) == 0)
      {
        containerRootController3 = [(UIPeripheralHost *)self containerRootController];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __80__UIPeripheralHost_UIKitInternal__performMultipleOperations_withAnimationStyle___block_invoke_3;
        v19[3] = &unk_1E70F4A50;
        v19[4] = self;
        v20 = operationsCopy;
        [containerRootController3 performOperations:v19 withAnimationStyle:styleCopy];
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

- (BOOL)maximizeWithAnimation:(BOOL)animation
{
  animationCopy = animation;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 maximizeWithAnimation:animationCopy];

  return 1;
}

- (void)enableKeyboardTyping
{
  inputViews = [(UIPeripheralHost *)self inputViews];
  keyboard = [inputViews keyboard];
  [keyboard setTypingEnabled:1];
}

- (id)_currentInputView
{
  inputViews = [(UIPeripheralHost *)self inputViews];
  inputView = [inputViews inputView];

  return inputView;
}

- (BOOL)_isSuppressedByManualKeyboard
{
  view = [(UIPeripheralHost *)self view];
  superview = [view superview];
  if (superview)
  {
    v5 = superview;
    view2 = [(UIPeripheralHost *)self view];
    isHidden = [view2 isHidden];

    if (!isHidden)
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
    inputViews = [v3 _topVisibleWindowPassingTest:&__block_literal_global_351_4];

    usesKeyClicks = inputViews != 0;
  }

  else
  {
    if (![(UIPeripheralHost *)self isOnScreen])
    {
      return 0;
    }

    inputViews = [(UIPeripheralHost *)self inputViews];
    usesKeyClicks = [inputViews usesKeyClicks];
  }

  return usesKeyClicks;
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

- (void)_preserveInputViewsWithId:(id)id animated:(BOOL)animated reset:(BOOL)reset
{
  resetCopy = reset;
  animatedCopy = animated;
  idCopy = id;
  if (![(UIPeripheralHost *)self _isKeyboardDeactivated])
  {
    v8 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v8 _preserveInputViewsWithId:idCopy animated:animatedCopy reset:resetCopy];
  }
}

- (void)_restoreInputAccessoryViewOverrideWithId:(id)id
{
  idCopy = id;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 _restoreInputAccessoryViewOverrideWithId:idCopy];
}

- (BOOL)_restoreInputViewsWithId:(id)id animated:(BOOL)animated
{
  animatedCopy = animated;
  idCopy = id;
  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  LOBYTE(animatedCopy) = [v6 _restoreInputViewsWithId:idCopy animated:animatedCopy];

  return animatedCopy;
}

- (void)_clearPreservedInputViewsWithId:(id)id clearKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  idCopy = id;
  v6 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v6 _clearPreservedInputViewsWithId:idCopy clearKeyboard:keyboardCopy];
}

- (void)_clearPreservedInputViewsWithRestorableResponder:(id)responder
{
  responderCopy = responder;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 _clearPreservedInputViewsWithRestorableResponder:responderCopy];
}

- (void)removePreservedInputViewSetForInputView:(id)view
{
  viewCopy = view;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v4 _removePreservedInputViewSetForInputView:viewCopy];
}

- (BOOL)isRotating
{
  containerRootController = [(UIPeripheralHost *)self containerRootController];
  isRotating = [containerRootController isRotating];

  return isRotating;
}

- (BOOL)isTranslating
{
  containerRootController = [(UIPeripheralHost *)self containerRootController];
  isTranslating = [containerRootController isTranslating];

  return isTranslating;
}

- (void)extendKeyboardBackdropHeight:(double)height withDuration:(double)duration
{
  containerRootController = [(UIPeripheralHost *)self containerRootController];
  [containerRootController extendKeyboardBackdropHeight:height withDuration:duration];
}

- (void)updateInputAccessoryViewVisibility:(BOOL)visibility withDuration:(double)duration
{
  visibilityCopy = visibility;
  containerRootController = [(UIPeripheralHost *)self containerRootController];
  [containerRootController animateAccessoryViewVisibility:visibilityCopy withDuration:duration];
}

+ (double)gridViewRubberBandValueForValue:(double)result target:(double)target timeInterval:(double)interval velocity:(double *)velocity
{
  intervalCopy = interval;
  v7 = *velocity;
  if (intervalCopy >= 1)
  {
    do
    {
      v7 = (v7 + (target - result) * 0.00014) * 0.98;
      result = result + v7;
      --intervalCopy;
    }

    while (intervalCopy);
  }

  *velocity = v7;
  return result;
}

+ (id)passthroughViews
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = +[UIPeripheralHost sharedInstance];
  _inputViews = [v2 _inputViews];

  inputViewController = [_inputViews inputViewController];
  view = [inputViewController view];
  if (view)
  {
    inputView = view;

LABEL_4:
    v9[0] = inputView;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

    goto LABEL_5;
  }

  inputView = [_inputViews inputView];

  if (inputView)
  {
    goto LABEL_4;
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_5:

  return v7;
}

- (BOOL)_shouldDelayRotationForWindow:(id)window
{
  windowCopy = window;
  v5 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  existingContainerWindow = [v5 existingContainerWindow];

  v7 = existingContainerWindow == windowCopy && [(UIPeripheralHost *)self currentState]== 2 && [(UIPeripheralHost *)self isRotating];
  return v7;
}

- (void)scrollView:(id)view didPanWithGesture:(id)gesture
{
  gestureCopy = gesture;
  viewCopy = view;
  window = [viewCopy window];
  screen = [window screen];
  v8 = [(UIKeyboardMotionSupport *)UIScrollToDismissSupport supportForScreen:screen];
  [v8 scrollView:viewCopy didPanWithGesture:gestureCopy];
}

- (void)scrollView:(id)view didFinishPanGesture:(id)gesture
{
  gestureCopy = gesture;
  viewCopy = view;
  window = [viewCopy window];
  screen = [window screen];
  v8 = [(UIKeyboardMotionSupport *)UIScrollToDismissSupport supportForScreen:screen];
  [v8 scrollView:viewCopy didFinishPanGesture:gestureCopy];
}

+ (Class)floatingAssistantBarPlacementClassSupportingCompactStyle:(BOOL)style
{
  styleCopy = style;
  v4 = objc_opt_class();
  if (styleCopy)
  {
    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v5 preferencesActions];
    compactAssistantBarPersistentLocation = [preferencesActions compactAssistantBarPersistentLocation];

    if (compactAssistantBarPersistentLocation == 4)
    {
      v8 = +[UIKeyboardImpl activeInstance];
      inputDelegate = [v8 inputDelegate];
      textInputView = [inputDelegate textInputView];
      [textInputView _shouldReverseLayoutDirection];
      v4 = objc_opt_class();
    }

    else if (compactAssistantBarPersistentLocation == 5 || compactAssistantBarPersistentLocation == 6)
    {
      v4 = objc_opt_class();
    }
  }

  return v4;
}

+ (id)endPlacementForInputViewSet:(id)set windowScene:(id)scene
{
  v86 = *MEMORY[0x1E69E9840];
  setCopy = set;
  sceneCopy = scene;
  v6 = _UIPeripheralHostLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = setCopy;
    *&buf[12] = 2112;
    *&buf[14] = sceneCopy;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "endPlacementForInputViewSet: %@ windowScene: %@", buf, 0x16u);
  }

  v67 = +[UIKeyboardImpl activeInstance];
  v64 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
  v68 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v68 systemInputAssistantViewController];
  v7 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
  v62 = [v7 hasLocalMinimumKeyboardHeightForScene:sceneCopy];
  isCustomInputView = [setCopy isCustomInputView];
  if (v67)
  {
    v9 = isCustomInputView;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    isMinimized = 0;
  }

  else
  {
    isMinimized = [v67 isMinimized];
  }

  if ([v7 wantsAssistantWhileSuppressingKeyboard])
  {
    disableBecomeFirstResponder = [v7 disableBecomeFirstResponder];
  }

  else
  {
    disableBecomeFirstResponder = 0;
  }

  if (![setCopy isRemoteKeyboard] || +[UIKeyboard usesLocalKeyboard](UIKeyboard, "usesLocalKeyboard"))
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

    inputAccessoryView = [setCopy inputAccessoryView];
    v11 = inputAccessoryView != 0;
  }

LABEL_15:
  hardwareKeyboardExclusivityIdentifier = [v68 hardwareKeyboardExclusivityIdentifier];
  if (hardwareKeyboardExclusivityIdentifier)
  {
    centerViewController = [systemInputAssistantViewController centerViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  v14 = (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1;
  if (+[UIKeyboard usesInputSystemUI](UIKeyboard, "usesInputSystemUI") || ![setCopy isRemoteKeyboard])
  {
    isFloating = +[UIKeyboardImpl isFloating];
  }

  else
  {
    v15 = +[_UIRemoteKeyboards sharedRemoteKeyboards];
    isFloating = [v15 isFloating];
  }

  v16 = [systemInputAssistantViewController shouldBeShownForInputDelegate:0 inputViews:setCopy];
  supportsCompactStyle = [systemInputAssistantViewController supportsCompactStyle];
  if ([setCopy isRemoteKeyboard])
  {
    assistantBarVisible = [v7 assistantBarVisible];
  }

  else
  {
    assistantBarVisible = 0;
  }

  inputView = [setCopy inputView];
  inputAssistantView = [setCopy inputAssistantView];
  if ([setCopy isInputViewPlaceholder])
  {
    v19 = inputView;
    associatedView = [v19 associatedView];

    if (associatedView)
    {
      inputView = [v19 fallbackView];

      associatedView2 = [v19 associatedView];

      inputAssistantView = associatedView2;
    }

    else
    {
      inputView = v19;
    }
  }

  if (!((inputView == 0) | disableBecomeFirstResponder & 1) && v62 & 1 | ((isMinimized & 1) == 0) | v11)
  {
    placement2 = buf;
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
    v77 = isFloating;
    v73 = v64;
    v75 = buf;
    v74 = v67;
    selfCopy = self;
    v78 = supportsCompactStyle;
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

      placement2 = *(*&buf[8] + 40);
      v26 = 0;
    }

    else
    {
      [setCopy inputAccessoryView];

      v26 = objc_opt_class();
    }

    _Block_object_dispose(buf, 8);
    if (v23)
    {
      goto LABEL_64;
    }

    goto LABEL_58;
  }

  if (((v16 | assistantBarVisible) & 1) != 0 && ([v67 _shouldSuppressSoftwareKeyboardAndAssistantView] & 1) == 0)
  {
    if (inputAssistantView || ([setCopy inputView], v27 = objc_claimAutoreleasedReturnValue(), v28 = v27 != 0, v27, ((v28 & isMinimized | disableBecomeFirstResponder) & 1) != 0))
    {
      if ((v14 | isKindOfClass))
      {
        v29 = [systemInputAssistantViewController shouldUseCustomBackground:0];
        screen = [sceneCopy screen];
        v31 = [(UIKeyboardMotionSupport *)UIFlickingAssistantViewSupport supportForScreen:screen];

        if (v29)
        {
          v32 = objc_opt_class();
        }

        else
        {
          remotePlacement = [v31 remotePlacement];

          if (remotePlacement)
          {
            remotePlacement2 = [v31 remotePlacement];
            v26 = objc_opt_class();

LABEL_57:
LABEL_58:
            if (v26)
            {
LABEL_61:
              v38 = _UIPeripheralHostLogger();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                placement = [v26 placement];
                *buf = 138412290;
                *&buf[4] = placement;
                _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_DEFAULT, "endPlacementForInputViewSet, returning -> %@", buf, 0xCu);
              }

              placement2 = [v26 placement];
              goto LABEL_64;
            }

            goto LABEL_59;
          }

          v32 = [self floatingAssistantBarPlacementClassSupportingCompactStyle:supportsCompactStyle];
        }

        v26 = v32;
        goto LABEL_57;
      }

      if (isMinimized && [systemInputAssistantViewController isVisibleWhenMinimized])
      {
        v26 = objc_opt_class();
        goto LABEL_58;
      }
    }
  }

LABEL_59:
  inputAccessoryView2 = [setCopy inputAccessoryView];
  v37 = inputAccessoryView2 == 0;

  if (!v37)
  {
    v26 = objc_opt_class();
    goto LABEL_61;
  }

  if (isMinimized & 1 | ((isFloating & 1) == 0))
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __75__UIPeripheralHost_UIKitInternal__endPlacementForInputViewSet_windowScene___block_invoke_367;
    v70[3] = &unk_1E7117778;
    v71 = v7;
    placement2 = [UIInputViewSetPlacement deactivatedKeyboardPlacementWithCurrentPlacement:v70];
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
      v55 = [objc_msgSend(self floatingAssistantBarPlacementClassSupportingCompactStyle:{supportsCompactStyle), "placement"}];
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

    placement2 = [UIInputViewSetPlacementInvisibleForFloatingTransition placementWithPlacement:v54];
  }

LABEL_64:

  return placement2;
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