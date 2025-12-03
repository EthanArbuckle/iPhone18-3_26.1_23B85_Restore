@interface _UIHomeAffordanceHostSceneComponent
- (CGRect)homeAffordanceScreenFixedFrame;
- (NSString)debugDescription;
- (void)_evaluateHomeAffordanceIntersectionWithSceneFrameAndSendIfNeeded:(double)needed;
- (void)_sendClientDoubleTapGestureDidSucceedAction:(void *)action;
- (void)_sendClientHomeAffordanceSceneReferenceFrame:(double)frame;
- (void)appendDescriptionToStream:(id)stream;
- (void)doubleTapGestureDidSucceed:(BOOL)succeed;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneWillActivate:(id)activate;
- (void)setHomeAffordanceScreenFixedFrame:(CGRect)frame;
- (void)setScene:(id)scene;
@end

@implementation _UIHomeAffordanceHostSceneComponent

- (void)setScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = _UIHomeAffordanceHostSceneComponent;
  [(FBSSceneComponent *)&v5 setScene:scene];
  v4 = _UIDeviceSupportsGlobalEdgeSwipeTouches();
  if (v4)
  {
    LOBYTE(v4) = _UIApplicationSupportsHomeAffordanceObservation();
  }

  *&self->_flags = *&self->_flags & 0xFE | v4;
}

- (void)_sendClientHomeAffordanceSceneReferenceFrame:(double)frame
{
  if (_UIDeviceSupportsGlobalEdgeSwipeTouches())
  {
    if (_UIApplicationSupportsHomeAffordanceObservation())
    {
      hostScene = [self hostScene];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __84___UIHomeAffordanceHostSceneComponent__sendClientHomeAffordanceSceneReferenceFrame___block_invoke;
      v11[3] = &__block_descriptor_64_e69_v16__0__FBSMutableSceneSettings__UIHomeAffordanceHostSceneSettings__8l;
      *&v11[4] = a2;
      *&v11[5] = frame;
      *&v11[6] = a4;
      *&v11[7] = a5;
      [hostScene updateSettingsWithBlock:v11];
    }
  }
}

- (void)_evaluateHomeAffordanceIntersectionWithSceneFrameAndSendIfNeeded:(double)needed
{
  if (self)
  {
    v31 = CGRectIntersection(*&a2, self[1]);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    IsNull = CGRectIsNull(v31);
    v11 = IsNull ? *(MEMORY[0x1E695F058] + 24) : height;
    v12 = IsNull ? *(MEMORY[0x1E695F058] + 16) : width;
    v13 = IsNull ? *(MEMORY[0x1E695F058] + 8) : y;
    v14 = IsNull ? *MEMORY[0x1E695F058] : x;
    v32.origin.x = v14;
    v32.origin.y = v13;
    v32.size.width = v12;
    v32.size.height = v11;
    v15 = CGRectEqualToRect(v32, *MEMORY[0x1E695F058]);
    if (v15)
    {
      v16 = v12;
    }

    else
    {
      v14 = x - a2;
      v13 = y - needed;
      v16 = width;
    }

    v17 = v15 ? v11 : height;
    hostScene = [(CGRect *)self hostScene];
    settings = [hostScene settings];
    [settings homeAffordanceSceneReferenceFrame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v33.origin.x = v14;
    v33.origin.y = v13;
    v33.size.width = v16;
    v33.size.height = v17;
    v34.origin.x = v21;
    v34.origin.y = v23;
    v34.size.width = v25;
    v34.size.height = v27;
    if (!CGRectEqualToRect(v33, v34))
    {

      [(_UIHomeAffordanceHostSceneComponent *)self _sendClientHomeAffordanceSceneReferenceFrame:v14, v13, v16, v17];
    }
  }
}

- (CGRect)homeAffordanceScreenFixedFrame
{
  x = self->_homeAffordanceScreenFixedFrame.origin.x;
  y = self->_homeAffordanceScreenFixedFrame.origin.y;
  width = self->_homeAffordanceScreenFixedFrame.size.width;
  height = self->_homeAffordanceScreenFixedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setHomeAffordanceScreenFixedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  p_homeAffordanceScreenFixedFrame = &self->_homeAffordanceScreenFixedFrame;
  if (!CGRectEqualToRect(frame, self->_homeAffordanceScreenFixedFrame))
  {
    p_homeAffordanceScreenFixedFrame->origin.x = x;
    p_homeAffordanceScreenFixedFrame->origin.y = y;
    p_homeAffordanceScreenFixedFrame->size.width = width;
    p_homeAffordanceScreenFixedFrame->size.height = height;
    if (!self->_proxyHomeAffordanceObserverInteraction)
    {
      hostScene = [(FBSSceneComponent *)self hostScene];
      settings = [hostScene settings];
      [settings frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [(_UIHomeAffordanceHostSceneComponent *)self _evaluateHomeAffordanceIntersectionWithSceneFrameAndSendIfNeeded:v12, v14, v16, v18];
    }
  }
}

- (void)_sendClientDoubleTapGestureDidSucceedAction:(void *)action
{
  if (action && _UIDeviceSupportsGlobalEdgeSwipeTouches() && _UIApplicationSupportsHomeAffordanceObservation())
  {
    v6 = [_UIHomeAffordanceDoubleTapGestureActionToClient actionForDoubleTapGestureDidSucceed:a2];
    scene = [action scene];
    v5 = [MEMORY[0x1E695DFD8] setWithObject:v6];
    [scene sendPrivateActions:v5];
  }
}

- (void)doubleTapGestureDidSucceed:(BOOL)succeed
{
  if (!self->_proxyHomeAffordanceObserverInteraction)
  {
    [(_UIHomeAffordanceHostSceneComponent *)self _sendClientDoubleTapGestureDidSucceedAction:succeed];
  }
}

- (void)sceneWillActivate:(id)activate
{
  activateCopy = activate;
  v5 = activateCopy;
  if (*&self->_flags)
  {
    v16 = activateCopy;
    v6 = _UIDeviceSupportsGlobalEdgeSwipeTouches();
    v5 = v16;
    if (v6)
    {
      v7 = _UIApplicationSupportsHomeAffordanceObservation();
      v5 = v16;
      if (v7)
      {
        if (*&self->_flags)
        {
          v8 = _UIDeviceSupportsGlobalEdgeSwipeTouches();
          v5 = v16;
          if (v8)
          {
            v9 = _UIApplicationSupportsHomeAffordanceObservation();
            v5 = v16;
            if (v9)
            {
              hostScene = [(FBSSceneComponent *)self hostScene];
              uiSceneHostingController = [hostScene uiSceneHostingController];
              sceneView = [uiSceneHostingController sceneView];

              if (sceneView && !self->_proxyHomeAffordanceObserverInteraction)
              {
                objc_initWeak(&location, self);
                v13 = [_UIHomeAffordanceObserverProxyInteraction alloc];
                v19[0] = MEMORY[0x1E69E9820];
                v19[1] = 3221225472;
                v19[2] = __86___UIHomeAffordanceHostSceneComponent__setUpHomeAffordanceObserverInteractionIfNeeded__block_invoke;
                v19[3] = &unk_1E7120B88;
                objc_copyWeak(&v20, &location);
                v17[0] = MEMORY[0x1E69E9820];
                v17[1] = 3221225472;
                v17[2] = __86___UIHomeAffordanceHostSceneComponent__setUpHomeAffordanceObserverInteractionIfNeeded__block_invoke_2;
                v17[3] = &unk_1E70F3668;
                objc_copyWeak(&v18, &location);
                v14 = [(_UIHomeAffordanceObserverProxyInteraction *)v13 initWithIntersectedFrameHandler:v19 doubleTapGestureHandler:v17];
                proxyHomeAffordanceObserverInteraction = self->_proxyHomeAffordanceObserverInteraction;
                self->_proxyHomeAffordanceObserverInteraction = v14;

                [sceneView addInteraction:self->_proxyHomeAffordanceObserverInteraction];
                objc_destroyWeak(&v18);
                objc_destroyWeak(&v20);
                objc_destroyWeak(&location);
              }

              v5 = v16;
            }
          }
        }

        *&self->_flags &= ~1u;
      }
    }
  }
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  if (*&self->_flags)
  {
    if (_UIDeviceSupportsGlobalEdgeSwipeTouches())
    {
      if (_UIApplicationSupportsHomeAffordanceObservation())
      {
        settingsDiff = [settingsCopy settingsDiff];
        v8 = [settingsDiff containsProperty:sel_frame];

        if (v8)
        {
          settings = [settingsCopy settings];
          [settings frame];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;

          [(_UIHomeAffordanceHostSceneComponent *)self _evaluateHomeAffordanceIntersectionWithSceneFrameAndSendIfNeeded:v11, v13, v15, v17];
        }
      }
    }
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65___UIHomeAffordanceHostSceneComponent_appendDescriptionToStream___block_invoke;
  v9[3] = &unk_1E70F35B8;
  v5 = streamCopy;
  v10 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v9];
  if ([v5 hasDebugStyle])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65___UIHomeAffordanceHostSceneComponent_appendDescriptionToStream___block_invoke_2;
    v6[3] = &unk_1E70F35B8;
    v7 = v5;
    selfCopy2 = self;
    [v7 appendBodySectionWithName:0 block:v6];
  }
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end