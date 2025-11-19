@interface _UIOServerActionOriginContext
+ (id)defaultOriginContext;
+ (id)originContextForView:(id)a3 referencePoint:(CGPoint)a4;
- (CGPoint)layerReferencePoint;
- (CGPoint)translatedReferencePointForDestinationView:(id)a3;
- (_UIOServerActionOriginContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_configureWithWindow:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIOServerActionOriginContext

+ (id)defaultOriginContext
{
  v2 = objc_alloc_init(_UIOServerActionOriginContext);
  v3 = +[UIWindowScene _keyWindowScene];
  v4 = [v3 keyWindow];
  [(_UIOServerActionOriginContext *)v2 _configureWithWindow:v4];

  return v2;
}

+ (id)originContextForView:(id)a3 referencePoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  v7 = objc_alloc_init(_UIOServerActionOriginContext);
  v8 = [v6 _window];
  [(_UIOServerActionOriginContext *)v7 _configureWithWindow:v8];

  v9 = [v6 layer];

  v7->_layerId = CALayerGetRenderId();
  v7->_layerReferencePoint.x = x;
  v7->_layerReferencePoint.y = y;

  return v7;
}

- (void)_configureWithWindow:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = [v4 windowScene];
    v6 = [v5 _FBSScene];
    v7 = [v4 _contextId];

    self->_contextId = v7;
    v8 = [v6 identityToken];
    v9 = [v8 stringRepresentation];
    sceneIdentity = self->_sceneIdentity;
    self->_sceneIdentity = v9;

    v11 = [v5 systemShellHostingEnvironment];
    v12 = [v11 systemShellHostingSpaceIdentifier];
    spaceIdentifier = self->_spaceIdentifier;
    self->_spaceIdentifier = v12;

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
        v21 = v5;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "Could not find a systemShellHostingSpaceIdentifier for scene: <%{public}@: %{public}p>", &v18, 0x16u);
      }

      v17 = self->_spaceIdentifier;
      self->_spaceIdentifier = @"Unspecified";
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  sceneIdentity = self->_sceneIdentity;
  v7 = v4;
  if (sceneIdentity)
  {
    [v4 encodeObject:sceneIdentity forKey:@"scene"];
    v4 = v7;
  }

  spaceIdentifier = self->_spaceIdentifier;
  if (spaceIdentifier)
  {
    [v7 encodeObject:spaceIdentifier forKey:@"space"];
    v4 = v7;
  }

  [v4 encodeInt64:self->_layerId forKey:@"layer"];
  [v7 encodeInt32:self->_contextId forKey:@"context"];
  [v7 encodeCGPoint:@"layerPoint" forKey:{self->_layerReferencePoint.x, self->_layerReferencePoint.y}];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_UIOMutableActionOriginContext);
  [(_UIOMutableActionOriginContext *)v4 setSceneIdentity:self->_sceneIdentity];
  [(_UIOMutableActionOriginContext *)v4 setSpaceIdentifier:self->_spaceIdentifier];
  [(_UIOMutableActionOriginContext *)v4 setLayerReferencePoint:self->_layerReferencePoint.x, self->_layerReferencePoint.y];
  [(_UIOMutableActionOriginContext *)v4 setLayerId:self->_layerId];
  [(_UIOMutableActionOriginContext *)v4 setContextId:self->_contextId];
  return v4;
}

- (_UIOServerActionOriginContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIOServerActionOriginContext *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scene"];
    sceneIdentity = v5->_sceneIdentity;
    v5->_sceneIdentity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"space"];
    spaceIdentifier = v5->_spaceIdentifier;
    v5->_spaceIdentifier = v8;

    [v4 decodeCGPointForKey:@"layerPoint"];
    v5->_layerReferencePoint.x = v10;
    v5->_layerReferencePoint.y = v11;
    v5->_layerId = [v4 decodeInt64ForKey:@"layer"];
    v5->_contextId = [v4 decodeInt32ForKey:@"context"];
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

- (CGPoint)translatedReferencePointForDestinationView:(id)a3
{
  v4 = a3;
  v5 = [v4 window];
  [v5 _contextId];

  v6 = [v4 layer];

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