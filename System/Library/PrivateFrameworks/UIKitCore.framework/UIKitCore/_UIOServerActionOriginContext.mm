@interface _UIOServerActionOriginContext
+ (id)defaultOriginContext;
+ (id)originContextForView:(id)view referencePoint:(CGPoint)point;
- (CGPoint)layerReferencePoint;
- (CGPoint)translatedReferencePointForDestinationView:(id)view;
- (_UIOServerActionOriginContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_configureWithWindow:(id)window;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIOServerActionOriginContext

+ (id)defaultOriginContext
{
  v2 = objc_alloc_init(_UIOServerActionOriginContext);
  v3 = +[UIWindowScene _keyWindowScene];
  keyWindow = [v3 keyWindow];
  [(_UIOServerActionOriginContext *)v2 _configureWithWindow:keyWindow];

  return v2;
}

+ (id)originContextForView:(id)view referencePoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  v7 = objc_alloc_init(_UIOServerActionOriginContext);
  _window = [viewCopy _window];
  [(_UIOServerActionOriginContext *)v7 _configureWithWindow:_window];

  layer = [viewCopy layer];

  v7->_layerId = CALayerGetRenderId();
  v7->_layerReferencePoint.x = x;
  v7->_layerReferencePoint.y = y;

  return v7;
}

- (void)_configureWithWindow:(id)window
{
  v22 = *MEMORY[0x1E69E9840];
  if (window)
  {
    windowCopy = window;
    windowScene = [windowCopy windowScene];
    _FBSScene = [windowScene _FBSScene];
    _contextId = [windowCopy _contextId];

    self->_contextId = _contextId;
    identityToken = [_FBSScene identityToken];
    stringRepresentation = [identityToken stringRepresentation];
    sceneIdentity = self->_sceneIdentity;
    self->_sceneIdentity = stringRepresentation;

    systemShellHostingEnvironment = [windowScene systemShellHostingEnvironment];
    systemShellHostingSpaceIdentifier = [systemShellHostingEnvironment systemShellHostingSpaceIdentifier];
    spaceIdentifier = self->_spaceIdentifier;
    self->_spaceIdentifier = systemShellHostingSpaceIdentifier;

    if (!self->_spaceIdentifier)
    {
      v14 = UIOLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v18 = 138543618;
        v19 = v16;
        v20 = 2050;
        v21 = windowScene;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "Could not find a systemShellHostingSpaceIdentifier for scene: <%{public}@: %{public}p>", &v18, 0x16u);
      }

      v17 = self->_spaceIdentifier;
      self->_spaceIdentifier = @"Unspecified";
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sceneIdentity = self->_sceneIdentity;
  v7 = coderCopy;
  if (sceneIdentity)
  {
    [coderCopy encodeObject:sceneIdentity forKey:@"scene"];
    coderCopy = v7;
  }

  spaceIdentifier = self->_spaceIdentifier;
  if (spaceIdentifier)
  {
    [v7 encodeObject:spaceIdentifier forKey:@"space"];
    coderCopy = v7;
  }

  [coderCopy encodeInt64:self->_layerId forKey:@"layer"];
  [v7 encodeInt32:self->_contextId forKey:@"context"];
  [v7 encodeCGPoint:@"layerPoint" forKey:{self->_layerReferencePoint.x, self->_layerReferencePoint.y}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if ([(_UIOServerActionOriginContext *)self isMemberOfClass:objc_opt_class()])
  {

    return self;
  }

  else
  {
    v4 = objc_alloc_init(_UIOServerActionOriginContext);
    objc_storeStrong(&v4->_sceneIdentity, self->_sceneIdentity);
    objc_storeStrong(&v4->_spaceIdentifier, self->_spaceIdentifier);
    v4->_layerReferencePoint = self->_layerReferencePoint;
    v4->_layerId = self->_layerId;
    v4->_contextId = self->_contextId;
    return v4;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(_UIOMutableActionOriginContext);
  [(_UIOMutableActionOriginContext *)v4 setSceneIdentity:self->_sceneIdentity];
  [(_UIOMutableActionOriginContext *)v4 setSpaceIdentifier:self->_spaceIdentifier];
  [(_UIOMutableActionOriginContext *)v4 setLayerReferencePoint:self->_layerReferencePoint.x, self->_layerReferencePoint.y];
  [(_UIOMutableActionOriginContext *)v4 setLayerId:self->_layerId];
  [(_UIOMutableActionOriginContext *)v4 setContextId:self->_contextId];
  return v4;
}

- (_UIOServerActionOriginContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(_UIOServerActionOriginContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scene"];
    sceneIdentity = v5->_sceneIdentity;
    v5->_sceneIdentity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"space"];
    spaceIdentifier = v5->_spaceIdentifier;
    v5->_spaceIdentifier = v8;

    [coderCopy decodeCGPointForKey:@"layerPoint"];
    v5->_layerReferencePoint.x = v10;
    v5->_layerReferencePoint.y = v11;
    v5->_layerId = [coderCopy decodeInt64ForKey:@"layer"];
    v5->_contextId = [coderCopy decodeInt32ForKey:@"context"];
  }

  return v5;
}

- (id)description
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_sceneIdentity);
  v11 = v3;
  v4 = NSStringFromSelector(sel_spaceIdentifier);
  v12 = v4;
  v5 = NSStringFromSelector(sel_layerReferencePoint);
  v13 = v5;
  v6 = NSStringFromSelector(sel_layerId);
  v14 = v6;
  v7 = NSStringFromSelector(sel_contextId);
  v15 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:5];
  v9 = [UIDescriptionBuilder descriptionForObject:self keys:v8, v11, v12, v13, v14];

  return v9;
}

- (CGPoint)translatedReferencePointForDestinationView:(id)view
{
  viewCopy = view;
  window = [viewCopy window];
  [window _contextId];

  layer = [viewCopy layer];

  CALayerGetRenderId();
  memset(&v16, 0, sizeof(v16));
  BKSHIDServicesGetCALayerTransform();
  v7 = *(MEMORY[0x1E69792E8] + 80);
  *&v15.m31 = *(MEMORY[0x1E69792E8] + 64);
  *&v15.m33 = v7;
  v8 = *(MEMORY[0x1E69792E8] + 112);
  *&v15.m41 = *(MEMORY[0x1E69792E8] + 96);
  *&v15.m43 = v8;
  v9 = *(MEMORY[0x1E69792E8] + 16);
  *&v15.m11 = *MEMORY[0x1E69792E8];
  *&v15.m13 = v9;
  v10 = *(MEMORY[0x1E69792E8] + 48);
  *&v15.m21 = *(MEMORY[0x1E69792E8] + 32);
  *&v15.m23 = v10;
  if (self->_contextId)
  {
    BKSHIDServicesGetCALayerTransform();
  }

  v14 = v15;
  CA_CGPointApplyTransform();
  v13 = v16;
  CATransform3DInvert(&v14, &v13);
  CA_CGPointApplyTransform();
  result.y = v12;
  result.x = v11;
  return result;
}

- (CGPoint)layerReferencePoint
{
  x = self->_layerReferencePoint.x;
  y = self->_layerReferencePoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end