@interface UIKeyboardTrackingCoordinator
+ (id)trackingCoordinatorForScene:(id)scene;
- (CGRect)lastSentEndFrame;
- (CGRect)previousEndFrame;
- (UIKeyboardTrackingCoordinator)initWithWindowScene:(id)scene;
- (id)notificationInfoForStartFrame:(CGRect)frame endFrame:(CGRect)endFrame animationDuration:(double)duration;
- (id)trackingCoordinator;
- (void)animateTrackingElementsFromStart:(CGRect)start toEnd:(CGRect)end duration:(double)duration forShow:(BOOL)show;
- (void)moveKeyboardTrackingElementsFromStartFrame:(CGRect)frame endFrame:(CGRect)endFrame duration:(double)duration isStart:(BOOL)start forShow:(BOOL)show;
@end

@implementation UIKeyboardTrackingCoordinator

- (UIKeyboardTrackingCoordinator)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v11.receiver = self;
  v11.super_class = UIKeyboardTrackingCoordinator;
  v5 = [(UIKeyboardTrackingCoordinator *)&v11 init];
  if (v5)
  {
    v6 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:sceneCopy];
    rootViewController = [v6 rootViewController];
    controllerForTrackingElements = v5->_controllerForTrackingElements;
    v5->_controllerForTrackingElements = rootViewController;

    v9 = *(MEMORY[0x1E695F058] + 16);
    v5->_lastSentEndFrame.origin = *MEMORY[0x1E695F058];
    v5->_lastSentEndFrame.size = v9;
  }

  return v5;
}

+ (id)trackingCoordinatorForScene:(id)scene
{
  sceneCopy = scene;
  if (os_variant_has_internal_diagnostics())
  {
    if (!sceneCopy)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "UIKeyboardTrackingCoordinator requires a valid windowScene", buf, 2u);
      }
    }
  }

  else if (!sceneCopy)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &trackingCoordinatorForScene____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "UIKeyboardTrackingCoordinator requires a valid windowScene", v8, 2u);
    }
  }

  v4 = [[UIKeyboardTrackingCoordinator alloc] initWithWindowScene:sceneCopy];

  return v4;
}

- (id)trackingCoordinator
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  trackingElementCoordinator = [v2 trackingElementCoordinator];

  return trackingElementCoordinator;
}

- (CGRect)previousEndFrame
{
  x = self->_lastSentEndFrame.origin.x;
  y = self->_lastSentEndFrame.origin.y;
  width = self->_lastSentEndFrame.size.width;
  height = self->_lastSentEndFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)notificationInfoForStartFrame:(CGRect)frame endFrame:(CGRect)endFrame animationDuration:(double)duration
{
  height = endFrame.size.height;
  width = endFrame.size.width;
  y = endFrame.origin.y;
  x = endFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  v12 = +[UIInputViewSetNotificationInfo info];
  [v12 populateStartInfoWithFrame:{v11, v10, v9, v8}];
  [v12 populateEndInfoWithFrame:{x, y, width, height}];
  v13 = [UIInputViewAnimationStyle animationStyleAnimated:duration > 0.0 duration:duration];
  [v12 populateWithAnimationStyle:v13];

  [v12 addKeyboardNotificationDebuggingInfo:@"UIKeyboardTrackingCoordinator"];

  return v12;
}

- (void)animateTrackingElementsFromStart:(CGRect)start toEnd:(CGRect)end duration:(double)duration forShow:(BOOL)show
{
  showCopy = show;
  height = end.size.height;
  width = end.size.width;
  y = end.origin.y;
  x = end.origin.x;
  v11 = start.size.height;
  v12 = start.size.width;
  v13 = start.origin.y;
  v14 = start.origin.x;
  v16 = start.size.width;
  v17 = start.origin.y;
  v18 = start.origin.x;
  v38 = *MEMORY[0x1E69E9840];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v16 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if ((has_internal_diagnostics & 1) == 0)
    {
LABEL_12:
      v21 = *(__UILogGetCategoryCachedImpl("Assert", &animateTrackingElementsFromStart_toEnd_duration_forShow____s_category) + 8);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v22 = v21;
      v39.origin.x = v14;
      v39.origin.y = v13;
      v39.size.width = v12;
      v39.size.height = v11;
      v23 = NSStringFromCGRect(v39);
      v40.origin.x = x;
      v40.origin.y = y;
      v40.size.width = width;
      v40.size.height = height;
      v24 = NSStringFromCGRect(v40);
      *buf = 138412546;
      v35 = v23;
      v36 = 2112;
      v37 = v24;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Both startFrame and endFrame must be valid rects to animate keyboard tracking elements. Start %@ End %@", buf, 0x16u);
      goto LABEL_14;
    }
  }

  else
  {
    v20 = fabs(v11);
    if ((has_internal_diagnostics & 1) == 0)
    {
      if (v20 != INFINITY && (*&x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&width & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&height & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (v20 != INFINITY && (*&x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&width & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&height & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      goto LABEL_16;
    }
  }

  v22 = __UIFaultDebugAssertLog();
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_15;
  }

  v41.origin.x = v14;
  v41.origin.y = v13;
  v41.size.width = v12;
  v41.size.height = v11;
  v23 = NSStringFromCGRect(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v24 = NSStringFromCGRect(v42);
  *buf = 138412546;
  v35 = v23;
  v36 = 2112;
  v37 = v24;
  _os_log_fault_impl(&dword_188A29000, v22, OS_LOG_TYPE_FAULT, "Both startFrame and endFrame must be valid rects to animate keyboard tracking elements. Start %@ End %@", buf, 0x16u);
LABEL_14:

LABEL_15:
LABEL_16:
  v25 = [(UIKeyboardTrackingCoordinator *)self notificationInfoForStartFrame:v14 endFrame:v13 animationDuration:v12, v11, x, y, width, height, *&duration];
  self->_lastSentEndFrame.origin.x = x;
  self->_lastSentEndFrame.origin.y = y;
  if (showCopy)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  self->_lastSentEndFrame.size.width = width;
  self->_lastSentEndFrame.size.height = height;
  controllerForTrackingElements = [(UIKeyboardTrackingCoordinator *)self controllerForTrackingElements];
  [controllerForTrackingElements animateKeyboardTrackingElementsWithNotificationInfo:v25 notificationType:v26 updateForStart:1 updateForEnd:1];

  if (+[UIInputWindowController useMetronomeTracking])
  {
    TUIKeyboardStateClass_2 = getTUIKeyboardStateClass_2();
    if (showCopy)
    {
      onscreenState = [TUIKeyboardStateClass_2 onscreenState];
      v30 = 2;
    }

    else
    {
      onscreenState = [TUIKeyboardStateClass_2 offscreenState];
      v30 = 1;
    }

    [onscreenState setIsNonKeyboard:1];
    defaultInfo = [getTUIKeyboardAnimationInfoClass_1() defaultInfo];
    [defaultInfo setDuration:duration];
    [defaultInfo setAnimationType:v30];
    userInfo = [v25 userInfo];
    [defaultInfo setNotificationInfo:userInfo];

    trackingCoordinator = [(UIKeyboardTrackingCoordinator *)self trackingCoordinator];
    [trackingCoordinator updateClientsForState:onscreenState finalFrame:defaultInfo animationInfo:1 forStart:{x, y, width, height}];
  }
}

- (void)moveKeyboardTrackingElementsFromStartFrame:(CGRect)frame endFrame:(CGRect)endFrame duration:(double)duration isStart:(BOOL)start forShow:(BOOL)show
{
  showCopy = show;
  startCopy = start;
  height = endFrame.size.height;
  width = endFrame.size.width;
  y = endFrame.origin.y;
  x = endFrame.origin.x;
  v13 = frame.size.height;
  v14 = frame.size.width;
  v15 = frame.origin.y;
  v16 = frame.origin.x;
  v18 = frame.size.width;
  v19 = frame.origin.y;
  v20 = frame.origin.x;
  v40 = *MEMORY[0x1E69E9840];
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v19 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if ((has_internal_diagnostics & 1) == 0)
    {
LABEL_12:
      v23 = *(__UILogGetCategoryCachedImpl("Assert", &moveKeyboardTrackingElementsFromStartFrame_endFrame_duration_isStart_forShow____s_category) + 8);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      v24 = v23;
      v41.origin.x = v16;
      v41.origin.y = v15;
      v41.size.width = v14;
      v41.size.height = v13;
      v25 = NSStringFromCGRect(v41);
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      v26 = NSStringFromCGRect(v42);
      *buf = 138412546;
      v37 = v25;
      v38 = 2112;
      v39 = v26;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Both startFrame and endFrame must be valid rects to move keyboard tracking elements. Start %@ End %@", buf, 0x16u);
      goto LABEL_14;
    }
  }

  else
  {
    v22 = fabs(v13);
    if ((has_internal_diagnostics & 1) == 0)
    {
      if (v22 != INFINITY && (*&x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&width & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&height & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    if (v22 != INFINITY && (*&x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&width & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&height & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      goto LABEL_16;
    }
  }

  v24 = __UIFaultDebugAssertLog();
  if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    goto LABEL_15;
  }

  v43.origin.x = v16;
  v43.origin.y = v15;
  v43.size.width = v14;
  v43.size.height = v13;
  v25 = NSStringFromCGRect(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  v26 = NSStringFromCGRect(v44);
  *buf = 138412546;
  v37 = v25;
  v38 = 2112;
  v39 = v26;
  _os_log_fault_impl(&dword_188A29000, v24, OS_LOG_TYPE_FAULT, "Both startFrame and endFrame must be valid rects to move keyboard tracking elements. Start %@ End %@", buf, 0x16u);
LABEL_14:

LABEL_15:
LABEL_16:
  v27 = [(UIKeyboardTrackingCoordinator *)self notificationInfoForStartFrame:v16 endFrame:v15 animationDuration:v14, v13, x, y, width, height, *&duration];
  self->_lastSentEndFrame.origin.x = x;
  self->_lastSentEndFrame.origin.y = y;
  if (showCopy)
  {
    v28 = 2;
  }

  else
  {
    v28 = 3;
  }

  self->_lastSentEndFrame.size.width = width;
  self->_lastSentEndFrame.size.height = height;
  controllerForTrackingElements = [(UIKeyboardTrackingCoordinator *)self controllerForTrackingElements];
  [controllerForTrackingElements animateKeyboardTrackingElementsWithNotificationInfo:v27 notificationType:v28 updateForStart:startCopy updateForEnd:startCopy ^ 1];

  if (+[UIInputWindowController useMetronomeTracking])
  {
    TUIKeyboardStateClass_2 = getTUIKeyboardStateClass_2();
    if (showCopy)
    {
      onscreenState = [TUIKeyboardStateClass_2 onscreenState];
      v32 = 2;
    }

    else
    {
      onscreenState = [TUIKeyboardStateClass_2 offscreenState];
      v32 = 1;
    }

    [onscreenState setIsNonKeyboard:1];
    defaultInfo = [getTUIKeyboardAnimationInfoClass_1() defaultInfo];
    [defaultInfo setAnimationType:v32];
    userInfo = [v27 userInfo];
    [defaultInfo setNotificationInfo:userInfo];

    trackingCoordinator = [(UIKeyboardTrackingCoordinator *)self trackingCoordinator];
    [trackingCoordinator updateClientsForState:onscreenState finalFrame:defaultInfo animationInfo:startCopy forStart:{x, y, width, height}];
  }
}

- (CGRect)lastSentEndFrame
{
  x = self->_lastSentEndFrame.origin.x;
  y = self->_lastSentEndFrame.origin.y;
  width = self->_lastSentEndFrame.size.width;
  height = self->_lastSentEndFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end