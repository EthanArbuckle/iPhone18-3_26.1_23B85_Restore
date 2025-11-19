@interface TUIKeyboardTrackingProvider
+ (id)trackingProviderForKeyboardScene:(id)a3;
- (CGRect)convertFrameToTrackingCoordinatorSpace:(CGRect)a3;
- (CGRect)lastKnownFrame;
- (TUIKeyboardTrackingProvider)initWithWindowScene:(id)a3;
- (id)description;
- (id)localCoordinateSpace;
- (id)localTrackingCoordinator;
- (void)interactiveOffsetUpdateFromPoint:(CGPoint)a3;
- (void)interactiveSizeUpdate:(CGSize)a3;
- (void)interactiveUpdateFromPoint:(CGPoint)a3 size:(CGSize)a4;
- (void)keyboardChangeToStateComplete:(id)a3;
- (void)keyboardWillChangeFrame:(CGRect)a3 animationInfo:(id)a4;
- (void)keyboardWillChangeState:(id)a3 endFrame:(CGRect)a4 animationInfo:(id)a5;
@end

@implementation TUIKeyboardTrackingProvider

- (id)localCoordinateSpace
{
  v2 = [(TUIKeyboardTrackingProvider *)self keyboardScene];
  v3 = [v2 effectiveGeometry];
  v4 = [v3 coordinateSpace];

  return v4;
}

- (id)localTrackingCoordinator
{
  v2 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  v3 = [v2 trackingElementCoordinator];

  return v3;
}

- (CGRect)lastKnownFrame
{
  x = self->_lastKnownFrame.origin.x;
  y = self->_lastKnownFrame.origin.y;
  width = self->_lastKnownFrame.size.width;
  height = self->_lastKnownFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)interactiveUpdateFromPoint:(CGPoint)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  y = a3.y;
  x = a3.x;
  v17 = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
  v9 = [(TUIKeyboardTrackingProvider *)self localCoordinateSpace];
  v10 = [v17 primaryScene];
  v11 = [v10 effectiveGeometry];
  v12 = [v11 coordinateSpace];
  [v9 convertPoint:v12 toCoordinateSpace:{x, y}];
  v14 = v13;
  v16 = v15;

  [v17 interactiveUpdateChangingOffset:v14 size:{v16, width, height}];
}

- (void)interactiveSizeUpdate:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
  [v5 interactiveSizeUpdate:{width, height}];
}

- (void)interactiveOffsetUpdateFromPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  v15 = [v6 trackingElementCoordinator];

  v7 = [(TUIKeyboardTrackingProvider *)self localCoordinateSpace];
  v8 = [v15 primaryScene];
  v9 = [v8 effectiveGeometry];
  v10 = [v9 coordinateSpace];
  [v7 convertPoint:v10 toCoordinateSpace:{x, y}];
  v12 = v11;
  v14 = v13;

  [v15 interactiveOffsetUpdate:{v12, v14}];
}

- (void)keyboardChangeToStateComplete:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  lastKnownAnimationInfo = self->_lastKnownAnimationInfo;
  if (lastKnownAnimationInfo && ![(TUIKeyboardAnimationInfo *)lastKnownAnimationInfo isRotating])
  {
    [(TUIKeyboardTrackingProvider *)self convertFrameToTrackingCoordinatorSpace:self->_lastKnownFrame.origin.x, self->_lastKnownFrame.origin.y, self->_lastKnownFrame.size.width, self->_lastKnownFrame.size.height];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = _TUIKeyboardTrackingLogger_8526();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_debug_impl(&dword_18FFDC000, v15, OS_LOG_TYPE_DEBUG, "Tracking provider change to %@ complete.", &v16, 0xCu);
    }

    v6 = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
    [v6 postEndNotificationOnlyWithEndFrame:v4 state:self->_lastKnownAnimationInfo animationInfo:v8, v10, v12, v14];
  }

  else
  {
    v6 = _TUIKeyboardTrackingLogger_8526();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_debug_impl(&dword_18FFDC000, v6, OS_LOG_TYPE_DEBUG, "Tracking provider skipping state complete due to rotation. State: %@", &v16, 0xCu);
    }
  }
}

- (void)keyboardWillChangeFrame:(CGRect)a3 animationInfo:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  v10 = a4;
  self->_lastKnownFrame.origin.x = x;
  self->_lastKnownFrame.origin.y = y;
  self->_lastKnownFrame.size.width = width;
  self->_lastKnownFrame.size.height = height;
  objc_storeStrong(&self->_lastKnownAnimationInfo, a4);
  if (![v10 isRotating] || (objc_msgSend(v10, "notificationInfo"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    [(TUIKeyboardTrackingProvider *)self convertFrameToTrackingCoordinatorSpace:x, y, width, height];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = _TUIKeyboardTrackingLogger_8526();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v22 = NSStringFromCGRect(v31);
      v32.origin.x = v13;
      v32.origin.y = v15;
      v32.size.width = v17;
      v32.size.height = v19;
      v23 = NSStringFromCGRect(v32);
      v24 = 138412802;
      v25 = v22;
      v26 = 2112;
      v27 = v23;
      v28 = 2112;
      v29 = v10;
      _os_log_debug_impl(&dword_18FFDC000, v20, OS_LOG_TYPE_DEBUG, "Tracking provider will change frame: %@ [converted: %@] info: %@", &v24, 0x20u);
    }

    v21 = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
    [v21 postNotificationsOnlyWithEndFrame:v10 animationInfo:{v13, v15, v17, v19}];
  }
}

- (void)keyboardWillChangeState:(id)a3 endFrame:(CGRect)a4 animationInfo:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  objc_storeStrong(&self->_lastKnownState, a3);
  self->_lastKnownFrame.origin.x = x;
  self->_lastKnownFrame.origin.y = y;
  self->_lastKnownFrame.size.width = width;
  self->_lastKnownFrame.size.height = height;
  objc_storeStrong(&self->_lastKnownAnimationInfo, a5);
  if ([v13 isRotating])
  {
    v14 = _TUIKeyboardTrackingLogger_8526();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v15 = NSStringFromCGRect(v36);
      v27 = 138412290;
      v28 = v15;
      _os_log_debug_impl(&dword_18FFDC000, v14, OS_LOG_TYPE_DEBUG, "Tracking provider skipping will change state due to rotation. End frame: %@", &v27, 0xCu);
    }
  }

  else
  {
    [(TUIKeyboardTrackingProvider *)self convertFrameToTrackingCoordinatorSpace:x, y, width, height];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = _TUIKeyboardTrackingLogger_8526();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      v25 = NSStringFromCGRect(v37);
      v38.origin.x = v17;
      v38.origin.y = v19;
      v38.size.width = v21;
      v38.size.height = v23;
      v26 = NSStringFromCGRect(v38);
      v27 = 138413058;
      v28 = v12;
      v29 = 2112;
      v30 = v25;
      v31 = 2112;
      v32 = v26;
      v33 = 2112;
      v34 = v13;
      _os_log_debug_impl(&dword_18FFDC000, v24, OS_LOG_TYPE_DEBUG, "Tracking provider will change state: %@ frame: %@ [converted: %@] info: %@", &v27, 0x2Au);
    }

    v14 = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
    [v14 updateClientsForState:v12 finalFrame:v13 animationInfo:1 forStart:v17, v19, v21, v23];
  }
}

- (CGRect)convertFrameToTrackingCoordinatorSpace:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(TUIKeyboardTrackingProvider *)self localCoordinateSpace];
  if (v8)
  {
    v9 = v8;
    v10 = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
    v11 = [v10 primaryScene];
    if (!v11)
    {
LABEL_5:

      goto LABEL_6;
    }

    v12 = v11;
    v13 = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
    v14 = [v13 primaryScene];
    v15 = [v14 effectiveGeometry];
    v16 = [v15 coordinateSpace];
    [v16 bounds];
    IsNull = CGRectIsNull(v29);

    if (!IsNull)
    {
      v9 = [(TUIKeyboardTrackingProvider *)self localCoordinateSpace];
      v10 = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
      v18 = [v10 primaryScene];
      v19 = [v18 effectiveGeometry];
      v20 = [v19 coordinateSpace];
      [v9 convertRect:v20 toCoordinateSpace:{x, y, width, height}];
      x = v21;
      y = v22;
      width = v23;
      height = v24;

      goto LABEL_5;
    }
  }

LABEL_6:
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TUIKeyboardTrackingProvider *)self keyboardScene];
  v6 = [v3 stringWithFormat:@"<%@:%p scene=%@>", v4, self, v5];

  return v6;
}

- (TUIKeyboardTrackingProvider)initWithWindowScene:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUIKeyboardTrackingProvider;
  v6 = [(TUIKeyboardTrackingProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyboardScene, a3);
  }

  return v7;
}

+ (id)trackingProviderForKeyboardScene:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [[TUIKeyboardTrackingProvider alloc] initWithWindowScene:v3];
  v5 = _TUIKeyboardTrackingLogger_8526();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_debug_impl(&dword_18FFDC000, v5, OS_LOG_TYPE_DEBUG, "Tracking provider created with scene: %@", &v7, 0xCu);
  }

  return v4;
}

@end