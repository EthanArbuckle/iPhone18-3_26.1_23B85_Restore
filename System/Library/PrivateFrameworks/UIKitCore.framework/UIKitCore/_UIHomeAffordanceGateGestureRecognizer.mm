@interface _UIHomeAffordanceGateGestureRecognizer
+ (uint64_t)isAvailable;
- (_UIHomeAffordanceGateGestureRecognizer)init;
- (double)_touchSloppinessFactor;
- (void)_notifier:(id)_notifier homeAffordanceDoubleTapGestureDidSucceed:(BOOL)succeed;
- (void)_notifier:(id)_notifier homeAffordanceFrameDidChange:(CGRect)change;
- (void)_windowDidMoveToNilScene:(id)scene;
- (void)_windowDidMoveToScene:(id)scene;
- (void)reset;
- (void)setState:(int64_t)state;
- (void)setView:(id)view;
- (void)tapRecognizerFailedToRecognizeTap:(id)tap;
- (void)tapRecognizerRecognizedTap:(id)tap;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation _UIHomeAffordanceGateGestureRecognizer

+ (uint64_t)isAvailable
{
  objc_opt_self();
  result = _UIDeviceSupportsGlobalEdgeSwipeTouches();
  if (result)
  {

    return _UIApplicationSupportsHomeAffordanceObservation();
  }

  return result;
}

- (_UIHomeAffordanceGateGestureRecognizer)init
{
  objc_opt_self();
  if (!_UIDeviceSupportsGlobalEdgeSwipeTouches() || (_UIApplicationSupportsHomeAffordanceObservation() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceGateGestureRecognizer.m" lineNumber:43 description:@"Home affordance gate feature is disabled."];
  }

  v6.receiver = self;
  v6.super_class = _UIHomeAffordanceGateGestureRecognizer;
  return [(UIGestureRecognizer *)&v6 initWithTarget:0 action:0];
}

- (void)reset
{
  [(UITapRecognizer *)self->_tapRecognizer _reset];
  self->_didReceiveTouch = 0;
  [(BSAbsoluteMachTimer *)self->_timeoutTimer invalidate];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = 0;
}

- (void)setState:(int64_t)state
{
  if (state > 5 || ((1 << state) & 0x29) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceGateGestureRecognizer.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"state == UIGestureRecognizerStatePossible || state == UIGestureRecognizerStateEnded || state == UIGestureRecognizerStateFailed"}];
  }

  [(BSAbsoluteMachTimer *)self->_timeoutTimer cancel];
  v7.receiver = self;
  v7.super_class = _UIHomeAffordanceGateGestureRecognizer;
  [(UIGestureRecognizer *)&v7 setState:state];
}

- (void)setView:(id)view
{
  view = [(UIGestureRecognizer *)self view];
  v15.receiver = self;
  v15.super_class = _UIHomeAffordanceGateGestureRecognizer;
  [(UIGestureRecognizer *)&v15 setView:view];
  castToWindow(view);
  objc_claimAutoreleasedReturnValue();
  castToWindow(view);
  objc_claimAutoreleasedReturnValue();
  if (self)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"_UIWindowDidMoveToSceneNotification" object:view];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:self name:@"_UIWindowWillMoveToNilSceneNotification" object:view];

    homeAffordanceObserver = self->_homeAffordanceObserver;
    self->_homeAffordanceObserver = 0;

    if (view)
    {
      defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter3 addObserver:self selector:sel__windowDidMoveToScene_ name:@"_UIWindowDidMoveToSceneNotification" object:view];

      defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter4 addObserver:self selector:sel__windowDidMoveToNilScene_ name:@"_UIWindowWillMoveToNilSceneNotification" object:view];

      windowScene = [view windowScene];
      _homeAffordanceSceneNotifier = [windowScene _homeAffordanceSceneNotifier];
      v13 = [_homeAffordanceSceneNotifier registerHomeAffordanceObserver:self inWindow:view];
      v14 = self->_homeAffordanceObserver;
      self->_homeAffordanceObserver = v13;
    }
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v36 = *MEMORY[0x1E69E9840];
  if (self->_didReceiveTouch || [began count] != 1 || (objc_msgSend(began, "anyObject"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "_locationInSceneReferenceSpace"), v37.x = v8, v37.y = v9, v10 = CGRectContainsPoint(self->_homeAffordanceFrame, v37), v7, !v10))
  {
    anyObject = [began anyObject];
    [anyObject _locationInSceneReferenceSpace];
    v38.x = v16;
    v38.y = v17;
    v18 = CGRectContainsPoint(self->_homeAffordanceFrame, v38);

    if (v18)
    {
      if (self->_didReceiveTouch)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceGestureGate", &qword_1ED49A300);
        if ((*CategoryCachedImpl & 1) == 0)
        {
          goto LABEL_19;
        }

        v20 = *(CategoryCachedImpl + 8);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 134217984;
        selfCopy4 = self;
        v21 = "<%p> home affordance gate received the second touch";
      }

      else
      {
        if ([began count] < 2)
        {
          goto LABEL_19;
        }

        v23 = __UILogGetCategoryCachedImpl("HomeAffordanceGestureGate", &qword_1ED49A308);
        if ((*v23 & 1) == 0)
        {
          goto LABEL_19;
        }

        v20 = *(v23 + 8);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_19;
        }

        *buf = 134217984;
        selfCopy4 = self;
        v21 = "<%p> home affordance gate received too many simultaneous touches";
      }
    }

    else
    {
      v22 = __UILogGetCategoryCachedImpl("HomeAffordanceGestureGate", &qword_1ED49A2F8);
      if ((*v22 & 1) == 0)
      {
        goto LABEL_19;
      }

      v20 = *(v22 + 8);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 134217984;
      selfCopy4 = self;
      v21 = "<%p> home affordance gate received touch outside of target region";
    }

    _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
LABEL_19:
    [(_UIHomeAffordanceGateGestureRecognizer *)self setState:5];
    return;
  }

  v11 = __UILogGetCategoryCachedImpl("HomeAffordanceGestureGate", &_MergedGlobals_3_13);
  if (*v11)
  {
    v24 = *(v11 + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = MEMORY[0x1E696B098];
      v26 = v24;
      anyObject2 = [began anyObject];
      [anyObject2 _locationInSceneReferenceSpace];
      v31[0] = v28;
      v31[1] = v29;
      v30 = [v25 valueWithBytes:v31 objCType:"{CGPoint=dd}"];
      *buf = 134218242;
      selfCopy4 = self;
      v34 = 2112;
      v35 = v30;
      _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "<%p> home affordance gate received the first touch in region: %@", buf, 0x16u);
    }
  }

  self->_didReceiveTouch = 1;
  tapRecognizer = self->_tapRecognizer;
  if (!tapRecognizer)
  {
    v13 = objc_opt_new();
    v14 = self->_tapRecognizer;
    self->_tapRecognizer = v13;

    [(UITapRecognizer *)self->_tapRecognizer setDelegate:self];
    tapRecognizer = self->_tapRecognizer;
  }

  [(UITapRecognizer *)tapRecognizer touchesBegan:began withEvent:event];
}

- (double)_touchSloppinessFactor
{
  view = [(UIGestureRecognizer *)self view];
  [view _touchSloppinessFactor];
  v4 = v3;

  return v4;
}

- (void)tapRecognizerFailedToRecognizeTap:(id)tap
{
  v8 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceGestureGate", &tapRecognizerFailedToRecognizeTap____s_category);
  if (*CategoryCachedImpl)
  {
    v5 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "<%p> Home affordance gate failed to recognize tap.", &v6, 0xCu);
    }
  }

  [(_UIHomeAffordanceGateGestureRecognizer *)self setState:5];
}

- (void)tapRecognizerRecognizedTap:(id)tap
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  timeoutTimer = self->_timeoutTimer;
  if (has_internal_diagnostics)
  {
    if (timeoutTimer)
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "The timer must not run at this point", location, 2u);
      }
    }
  }

  else if (timeoutTimer)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &tapRecognizerRecognizedTap____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "The timer must not run at this point", location, 2u);
    }
  }

  v6 = [objc_alloc(MEMORY[0x1E698E5E8]) initWithIdentifier:@"com.apple.UIKit.HomeAffordanceGateTimer"];
  v7 = self->_timeoutTimer;
  self->_timeoutTimer = v6;

  objc_initWeak(location, self);
  v8 = self->_timeoutTimer;
  v9 = MEMORY[0x1E69E96A0];
  v10 = MEMORY[0x1E69E96A0];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69___UIHomeAffordanceGateGestureRecognizer_tapRecognizerRecognizedTap___block_invoke;
  v13[3] = &unk_1E710D988;
  objc_copyWeak(&v14, location);
  [(BSAbsoluteMachTimer *)v8 scheduleWithFireInterval:v9 leewayInterval:v13 queue:0.5 handler:0.0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(location);
}

- (void)_notifier:(id)_notifier homeAffordanceFrameDidChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v19 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceGestureGate", &_notifier_homeAffordanceFrameDidChange____s_category_0);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696B098];
      *v14 = x;
      *&v14[1] = y;
      *&v14[2] = width;
      *&v14[3] = height;
      v12 = v10;
      v13 = [v11 valueWithBytes:v14 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      *buf = 134218242;
      selfCopy = self;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "<%p> Home affordance frame updated: %@", buf, 0x16u);
    }
  }

  self->_homeAffordanceFrame.origin.x = x;
  self->_homeAffordanceFrame.origin.y = y;
  self->_homeAffordanceFrame.size.width = width;
  self->_homeAffordanceFrame.size.height = height;
}

- (void)_notifier:(id)_notifier homeAffordanceDoubleTapGestureDidSucceed:(BOOL)succeed
{
  succeedCopy = succeed;
  v16 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HomeAffordanceGestureGate", &_notifier_homeAffordanceDoubleTapGestureDidSucceed____s_category_0);
  if (*CategoryCachedImpl)
  {
    v8 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = v8;
      v11 = [v9 numberWithBool:succeedCopy];
      v12 = 134218242;
      selfCopy = self;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "<%p> Home affordance double tap did succeed: %@", &v12, 0x16u);
    }
  }

  if (succeedCopy)
  {
    v7 = 3;
  }

  else
  {
    v7 = 5;
  }

  [(_UIHomeAffordanceGateGestureRecognizer *)self setState:v7];
}

- (void)_windowDidMoveToScene:(id)scene
{
  object = [scene object];
  view = [(UIGestureRecognizer *)self view];

  v6 = object;
  if (object != view)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = object;
    if (v12)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v13 stringWithFormat:@"<%@: %p>", v15, v12];
    }

    else
    {
      v16 = @"(nil)";
    }

    windowScene = [v12 windowScene];
    if (windowScene)
    {
      v18 = MEMORY[0x1E696AEC0];
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v18 stringWithFormat:@"<%@: %p>", v20, windowScene];
    }

    else
    {
      v21 = @"(nil)";
    }

    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHomeAffordanceGateGestureRecognizer.m" lineNumber:197 description:{@"Window scene notification is out of sync with home affordance gate: %@; window; %@; windowScene: %@;", self, v16, v21}];

    v6 = object;
  }

  windowScene2 = [v6 windowScene];
  _homeAffordanceSceneNotifier = [windowScene2 _homeAffordanceSceneNotifier];
  v9 = [_homeAffordanceSceneNotifier registerHomeAffordanceObserver:self inWindow:object];
  homeAffordanceObserver = self->_homeAffordanceObserver;
  self->_homeAffordanceObserver = v9;
}

- (void)_windowDidMoveToNilScene:(id)scene
{
  homeAffordanceObserver = self->_homeAffordanceObserver;
  self->_homeAffordanceObserver = 0;
}

@end