@interface TUIKeyboardTrackingProvider
+ (id)trackingProviderForKeyboardScene:(id)scene;
- (CGRect)convertFrameToTrackingCoordinatorSpace:(CGRect)space;
- (CGRect)lastKnownFrame;
- (TUIKeyboardTrackingProvider)initWithWindowScene:(id)scene;
- (id)description;
- (id)localCoordinateSpace;
- (id)localTrackingCoordinator;
- (void)interactiveOffsetUpdateFromPoint:(CGPoint)point;
- (void)interactiveSizeUpdate:(CGSize)update;
- (void)interactiveUpdateFromPoint:(CGPoint)point size:(CGSize)size;
- (void)keyboardChangeToStateComplete:(id)complete;
- (void)keyboardWillChangeFrame:(CGRect)frame animationInfo:(id)info;
- (void)keyboardWillChangeState:(id)state endFrame:(CGRect)frame animationInfo:(id)info;
@end

@implementation TUIKeyboardTrackingProvider

- (id)localCoordinateSpace
{
  keyboardScene = [(TUIKeyboardTrackingProvider *)self keyboardScene];
  effectiveGeometry = [keyboardScene effectiveGeometry];
  coordinateSpace = [effectiveGeometry coordinateSpace];

  return coordinateSpace;
}

- (id)localTrackingCoordinator
{
  activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  trackingElementCoordinator = [activeKeyboardSceneDelegate trackingElementCoordinator];

  return trackingElementCoordinator;
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

- (void)interactiveUpdateFromPoint:(CGPoint)point size:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = point.y;
  x = point.x;
  localTrackingCoordinator = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
  localCoordinateSpace = [(TUIKeyboardTrackingProvider *)self localCoordinateSpace];
  primaryScene = [localTrackingCoordinator primaryScene];
  effectiveGeometry = [primaryScene effectiveGeometry];
  coordinateSpace = [effectiveGeometry coordinateSpace];
  [localCoordinateSpace convertPoint:coordinateSpace toCoordinateSpace:{x, y}];
  v14 = v13;
  v16 = v15;

  [localTrackingCoordinator interactiveUpdateChangingOffset:v14 size:{v16, width, height}];
}

- (void)interactiveSizeUpdate:(CGSize)update
{
  height = update.height;
  width = update.width;
  localTrackingCoordinator = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
  [localTrackingCoordinator interactiveSizeUpdate:{width, height}];
}

- (void)interactiveOffsetUpdateFromPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  trackingElementCoordinator = [activeKeyboardSceneDelegate trackingElementCoordinator];

  localCoordinateSpace = [(TUIKeyboardTrackingProvider *)self localCoordinateSpace];
  primaryScene = [trackingElementCoordinator primaryScene];
  effectiveGeometry = [primaryScene effectiveGeometry];
  coordinateSpace = [effectiveGeometry coordinateSpace];
  [localCoordinateSpace convertPoint:coordinateSpace toCoordinateSpace:{x, y}];
  v12 = v11;
  v14 = v13;

  [trackingElementCoordinator interactiveOffsetUpdate:{v12, v14}];
}

- (void)keyboardChangeToStateComplete:(id)complete
{
  v18 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
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
      v17 = completeCopy;
      _os_log_debug_impl(&dword_18FFDC000, v15, OS_LOG_TYPE_DEBUG, "Tracking provider change to %@ complete.", &v16, 0xCu);
    }

    localTrackingCoordinator = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
    [localTrackingCoordinator postEndNotificationOnlyWithEndFrame:completeCopy state:self->_lastKnownAnimationInfo animationInfo:v8, v10, v12, v14];
  }

  else
  {
    localTrackingCoordinator = _TUIKeyboardTrackingLogger_8526();
    if (os_log_type_enabled(localTrackingCoordinator, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = completeCopy;
      _os_log_debug_impl(&dword_18FFDC000, localTrackingCoordinator, OS_LOG_TYPE_DEBUG, "Tracking provider skipping state complete due to rotation. State: %@", &v16, 0xCu);
    }
  }
}

- (void)keyboardWillChangeFrame:(CGRect)frame animationInfo:(id)info
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  self->_lastKnownFrame.origin.x = x;
  self->_lastKnownFrame.origin.y = y;
  self->_lastKnownFrame.size.width = width;
  self->_lastKnownFrame.size.height = height;
  objc_storeStrong(&self->_lastKnownAnimationInfo, info);
  if (![infoCopy isRotating] || (objc_msgSend(infoCopy, "notificationInfo"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
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
      v29 = infoCopy;
      _os_log_debug_impl(&dword_18FFDC000, v20, OS_LOG_TYPE_DEBUG, "Tracking provider will change frame: %@ [converted: %@] info: %@", &v24, 0x20u);
    }

    localTrackingCoordinator = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
    [localTrackingCoordinator postNotificationsOnlyWithEndFrame:infoCopy animationInfo:{v13, v15, v17, v19}];
  }
}

- (void)keyboardWillChangeState:(id)state endFrame:(CGRect)frame animationInfo:(id)info
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  infoCopy = info;
  objc_storeStrong(&self->_lastKnownState, state);
  self->_lastKnownFrame.origin.x = x;
  self->_lastKnownFrame.origin.y = y;
  self->_lastKnownFrame.size.width = width;
  self->_lastKnownFrame.size.height = height;
  objc_storeStrong(&self->_lastKnownAnimationInfo, info);
  if ([infoCopy isRotating])
  {
    localTrackingCoordinator = _TUIKeyboardTrackingLogger_8526();
    if (os_log_type_enabled(localTrackingCoordinator, OS_LOG_TYPE_DEBUG))
    {
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      v15 = NSStringFromCGRect(v36);
      v27 = 138412290;
      v28 = v15;
      _os_log_debug_impl(&dword_18FFDC000, localTrackingCoordinator, OS_LOG_TYPE_DEBUG, "Tracking provider skipping will change state due to rotation. End frame: %@", &v27, 0xCu);
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
      v28 = stateCopy;
      v29 = 2112;
      v30 = v25;
      v31 = 2112;
      v32 = v26;
      v33 = 2112;
      v34 = infoCopy;
      _os_log_debug_impl(&dword_18FFDC000, v24, OS_LOG_TYPE_DEBUG, "Tracking provider will change state: %@ frame: %@ [converted: %@] info: %@", &v27, 0x2Au);
    }

    localTrackingCoordinator = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
    [localTrackingCoordinator updateClientsForState:stateCopy finalFrame:infoCopy animationInfo:1 forStart:v17, v19, v21, v23];
  }
}

- (CGRect)convertFrameToTrackingCoordinatorSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  localCoordinateSpace = [(TUIKeyboardTrackingProvider *)self localCoordinateSpace];
  if (localCoordinateSpace)
  {
    localCoordinateSpace2 = localCoordinateSpace;
    localTrackingCoordinator = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
    primaryScene = [localTrackingCoordinator primaryScene];
    if (!primaryScene)
    {
LABEL_5:

      goto LABEL_6;
    }

    v12 = primaryScene;
    localTrackingCoordinator2 = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
    primaryScene2 = [localTrackingCoordinator2 primaryScene];
    effectiveGeometry = [primaryScene2 effectiveGeometry];
    coordinateSpace = [effectiveGeometry coordinateSpace];
    [coordinateSpace bounds];
    IsNull = CGRectIsNull(v29);

    if (!IsNull)
    {
      localCoordinateSpace2 = [(TUIKeyboardTrackingProvider *)self localCoordinateSpace];
      localTrackingCoordinator = [(TUIKeyboardTrackingProvider *)self localTrackingCoordinator];
      primaryScene3 = [localTrackingCoordinator primaryScene];
      effectiveGeometry2 = [primaryScene3 effectiveGeometry];
      coordinateSpace2 = [effectiveGeometry2 coordinateSpace];
      [localCoordinateSpace2 convertRect:coordinateSpace2 toCoordinateSpace:{x, y, width, height}];
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
  keyboardScene = [(TUIKeyboardTrackingProvider *)self keyboardScene];
  v6 = [v3 stringWithFormat:@"<%@:%p scene=%@>", v4, self, keyboardScene];

  return v6;
}

- (TUIKeyboardTrackingProvider)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v9.receiver = self;
  v9.super_class = TUIKeyboardTrackingProvider;
  v6 = [(TUIKeyboardTrackingProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyboardScene, scene);
  }

  return v7;
}

+ (id)trackingProviderForKeyboardScene:(id)scene
{
  v9 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  v4 = [[TUIKeyboardTrackingProvider alloc] initWithWindowScene:sceneCopy];
  v5 = _TUIKeyboardTrackingLogger_8526();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = sceneCopy;
    _os_log_debug_impl(&dword_18FFDC000, v5, OS_LOG_TYPE_DEBUG, "Tracking provider created with scene: %@", &v7, 0xCu);
  }

  return v4;
}

@end