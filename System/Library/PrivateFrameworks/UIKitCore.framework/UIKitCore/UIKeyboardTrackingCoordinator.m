@interface UIKeyboardTrackingCoordinator
+ (id)trackingCoordinatorForScene:(id)a3;
- (CGRect)lastSentEndFrame;
- (CGRect)previousEndFrame;
- (UIKeyboardTrackingCoordinator)initWithWindowScene:(id)a3;
- (id)notificationInfoForStartFrame:(CGRect)a3 endFrame:(CGRect)a4 animationDuration:(double)a5;
- (id)trackingCoordinator;
- (void)animateTrackingElementsFromStart:(CGRect)a3 toEnd:(CGRect)a4 duration:(double)a5 forShow:(BOOL)a6;
- (void)moveKeyboardTrackingElementsFromStartFrame:(CGRect)a3 endFrame:(CGRect)a4 duration:(double)a5 isStart:(BOOL)a6 forShow:(BOOL)a7;
@end

@implementation UIKeyboardTrackingCoordinator

- (UIKeyboardTrackingCoordinator)initWithWindowScene:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UIKeyboardTrackingCoordinator;
  v5 = [(UIKeyboardTrackingCoordinator *)&v11 init];
  if (v5)
  {
    v6 = [UITextEffectsWindow activeTextEffectsWindowForWindowScene:v4];
    v7 = [v6 rootViewController];
    controllerForTrackingElements = v5->_controllerForTrackingElements;
    v5->_controllerForTrackingElements = v7;

    v9 = *(MEMORY[0x1E695F058] + 16);
    v5->_lastSentEndFrame.origin = *MEMORY[0x1E695F058];
    v5->_lastSentEndFrame.size = v9;
  }

  return v5;
}

+ (id)trackingCoordinatorForScene:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    if (!v3)
    {
      v6 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "UIKeyboardTrackingCoordinator requires a valid windowScene", buf, 2u);
      }
    }
  }

  else if (!v3)
  {
    v7 = *(__UILogGetCategoryCachedImpl("Assert", &trackingCoordinatorForScene____s_category) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "UIKeyboardTrackingCoordinator requires a valid windowScene", v8, 2u);
    }
  }

  v4 = [[UIKeyboardTrackingCoordinator alloc] initWithWindowScene:v3];

  return v4;
}

- (id)trackingCoordinator
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 trackingElementCoordinator];

  return v3;
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

- (id)notificationInfoForStartFrame:(CGRect)a3 endFrame:(CGRect)a4 animationDuration:(double)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  v12 = +[UIInputViewSetNotificationInfo info];
  [v12 populateStartInfoWithFrame:{v11, v10, v9, v8}];
  [v12 populateEndInfoWithFrame:{x, y, width, height}];
  v13 = [UIInputViewAnimationStyle animationStyleAnimated:a5 > 0.0 duration:a5];
  [v12 populateWithAnimationStyle:v13];

  [v12 addKeyboardNotificationDebuggingInfo:@"UIKeyboardTrackingCoordinator"];

  return v12;
}

- (void)animateTrackingElementsFromStart:(CGRect)a3 toEnd:(CGRect)a4 duration:(double)a5 forShow:(BOOL)a6
{
  v6 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3.size.height;
  v12 = a3.size.width;
  v13 = a3.origin.y;
  v14 = a3.origin.x;
  v16 = a3.size.width;
  v17 = a3.origin.y;
  v18 = a3.origin.x;
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
  v25 = [(UIKeyboardTrackingCoordinator *)self notificationInfoForStartFrame:v14 endFrame:v13 animationDuration:v12, v11, x, y, width, height, *&a5];
  self->_lastSentEndFrame.origin.x = x;
  self->_lastSentEndFrame.origin.y = y;
  if (v6)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  self->_lastSentEndFrame.size.width = width;
  self->_lastSentEndFrame.size.height = height;
  v27 = [(UIKeyboardTrackingCoordinator *)self controllerForTrackingElements];
  [v27 animateKeyboardTrackingElementsWithNotificationInfo:v25 notificationType:v26 updateForStart:1 updateForEnd:1];

  if (+[UIInputWindowController useMetronomeTracking])
  {
    TUIKeyboardStateClass_2 = getTUIKeyboardStateClass_2();
    if (v6)
    {
      v29 = [TUIKeyboardStateClass_2 onscreenState];
      v30 = 2;
    }

    else
    {
      v29 = [TUIKeyboardStateClass_2 offscreenState];
      v30 = 1;
    }

    [v29 setIsNonKeyboard:1];
    v31 = [getTUIKeyboardAnimationInfoClass_1() defaultInfo];
    [v31 setDuration:a5];
    [v31 setAnimationType:v30];
    v32 = [v25 userInfo];
    [v31 setNotificationInfo:v32];

    v33 = [(UIKeyboardTrackingCoordinator *)self trackingCoordinator];
    [v33 updateClientsForState:v29 finalFrame:v31 animationInfo:1 forStart:{x, y, width, height}];
  }
}

- (void)moveKeyboardTrackingElementsFromStartFrame:(CGRect)a3 endFrame:(CGRect)a4 duration:(double)a5 isStart:(BOOL)a6 forShow:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3.size.height;
  v14 = a3.size.width;
  v15 = a3.origin.y;
  v16 = a3.origin.x;
  v18 = a3.size.width;
  v19 = a3.origin.y;
  v20 = a3.origin.x;
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
  v27 = [(UIKeyboardTrackingCoordinator *)self notificationInfoForStartFrame:v16 endFrame:v15 animationDuration:v14, v13, x, y, width, height, *&a5];
  self->_lastSentEndFrame.origin.x = x;
  self->_lastSentEndFrame.origin.y = y;
  if (v7)
  {
    v28 = 2;
  }

  else
  {
    v28 = 3;
  }

  self->_lastSentEndFrame.size.width = width;
  self->_lastSentEndFrame.size.height = height;
  v29 = [(UIKeyboardTrackingCoordinator *)self controllerForTrackingElements];
  [v29 animateKeyboardTrackingElementsWithNotificationInfo:v27 notificationType:v28 updateForStart:v8 updateForEnd:v8 ^ 1];

  if (+[UIInputWindowController useMetronomeTracking])
  {
    TUIKeyboardStateClass_2 = getTUIKeyboardStateClass_2();
    if (v7)
    {
      v31 = [TUIKeyboardStateClass_2 onscreenState];
      v32 = 2;
    }

    else
    {
      v31 = [TUIKeyboardStateClass_2 offscreenState];
      v32 = 1;
    }

    [v31 setIsNonKeyboard:1];
    v33 = [getTUIKeyboardAnimationInfoClass_1() defaultInfo];
    [v33 setAnimationType:v32];
    v34 = [v27 userInfo];
    [v33 setNotificationInfo:v34];

    v35 = [(UIKeyboardTrackingCoordinator *)self trackingCoordinator];
    [v35 updateClientsForState:v31 finalFrame:v33 animationInfo:v8 forStart:{x, y, width, height}];
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