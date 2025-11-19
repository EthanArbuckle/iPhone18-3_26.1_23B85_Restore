@interface _UIRemoteViewControllerSceneContext
+ (id)contextForWindow:(void *)a3 inScene:;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UIRemoteViewControllerSceneContext)initWithCoder:(id)a3;
- (_UIRemoteViewControllerSceneContext)initWithDisplayIdentity:(id)a3 screenReferenceDisplayModeStatus:(int64_t)a4 enhancedWindowEnabled:(BOOL)a5 systemReferenceAngle:(double)a6 systemReferenceAngleMode:(unint64_t)a7 isCapturingContentForAdditionalRenderingDestination:(BOOL)a8 hardwareKeyboardExclusivityIdentifier:(id)a9 systemShellHostingSpaceIdentifier:(id)a10 systemDisplayIdentifier:(id)a11;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIRemoteViewControllerSceneContext

+ (id)contextForWindow:(void *)a3 inScene:
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  if (v5)
  {
    v7 = v6;
    v8 = [v5 screen];
    v29 = [v5 _enhancedWindowingEnabled];
    [v4 _systemReferenceAngle];
    v10 = v9;
    v28 = [v4 _systemReferenceAngleMode];
    v11 = [v5 screen];
    v26 = [v11 isCaptured];

    v12 = [v5 keyboardSceneDelegate];
    v13 = [v12 hardwareKeyboardExclusivityIdentifier];

    v14 = [v7 alloc];
    v27 = v8;
    v15 = [v8 displayIdentity];
    v16 = [v8 referenceDisplayModeStatus];
    v17 = [v5 systemShellHostingEnvironment];
    v18 = [v17 systemShellHostingSpaceIdentifier];
    v19 = [v5 renderingEnvironment];
    [v19 systemDisplayIdentifier];
    v21 = v20 = v4;
    v22 = v14;
    v23 = v13;
    v24 = [v22 initWithDisplayIdentity:v15 screenReferenceDisplayModeStatus:v16 enhancedWindowEnabled:v29 systemReferenceAngle:v28 systemReferenceAngleMode:v26 isCapturingContentForAdditionalRenderingDestination:v13 hardwareKeyboardExclusivityIdentifier:v10 systemShellHostingSpaceIdentifier:v18 systemDisplayIdentifier:v21];

    v4 = v20;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (_UIRemoteViewControllerSceneContext)initWithDisplayIdentity:(id)a3 screenReferenceDisplayModeStatus:(int64_t)a4 enhancedWindowEnabled:(BOOL)a5 systemReferenceAngle:(double)a6 systemReferenceAngleMode:(unint64_t)a7 isCapturingContentForAdditionalRenderingDestination:(BOOL)a8 hardwareKeyboardExclusivityIdentifier:(id)a9 systemShellHostingSpaceIdentifier:(id)a10 systemDisplayIdentifier:(id)a11
{
  v25 = a3;
  v17 = a9;
  v18 = a10;
  v19 = a11;
  v26.receiver = self;
  v26.super_class = _UIRemoteViewControllerSceneContext;
  v20 = [(_UIRemoteViewControllerSceneContext *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_displayIdentity, a3);
    v21->_screenReferenceDisplayModeStatus = a4;
    v21->_enhancedWindowingEnabled = a5;
    v21->_systemReferenceAngle = a6;
    v21->_systemReferenceAngleMode = a7;
    v21->_isCapturingContentForAdditionalRenderingDestination = a8;
    objc_storeStrong(&v21->_hardwareKeyboardExclusivityIdentifier, a9);
    objc_storeStrong(&v21->_systemShellHostingSpaceIdentifier, a10);
    objc_storeStrong(&v21->_systemDisplayIdentifier, a11);
  }

  return v21;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = v5[4];
    if (v6 == self->_displayIdentity && v5[5] == self->_screenReferenceDisplayModeStatus && self->_enhancedWindowingEnabled == *(v5 + 9) && *(v5 + 6) == self->_systemReferenceAngle && v5[7] == self->_systemReferenceAngleMode && self->_isCapturingContentForAdditionalRenderingDestination == [v5 isCapturingContentForAdditionalRenderingDestination])
    {
      v7 = v5[8];
      if (BSEqualStrings())
      {
        v8 = [v5 systemShellHostingSpaceIdentifier];
        if (BSEqualStrings())
        {
          v9 = [v5 systemDisplayIdentifier];
          v10 = BSEqualStrings();
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_displayIdentity withName:@"displayIdentity"];
  v5 = [v3 ui_appendReferenceDisplayModeStatus:self->_screenReferenceDisplayModeStatus withName:@"screenReferenceDisplayModeStatus"];
  v6 = [v3 appendBool:self->_enhancedWindowingEnabled withName:@"enhancedWindowingEnabled"];
  v7 = _UISStringForSystemReferenceAngleMode();
  [v3 appendString:v7 withName:@"systemReferenceAngleMode"];

  v8 = [v3 appendFloat:@"systemReferenceAngle" withName:self->_systemReferenceAngle];
  v9 = [v3 appendBool:self->_isCapturingContentForAdditionalRenderingDestination withName:@"isCapturingContentForAdditionalRenderingDestination"];
  [v3 appendString:self->_hardwareKeyboardExclusivityIdentifier withName:@"hardwareKeyboardExclusivityIdentifier"];
  [v3 appendString:self->_systemShellHostingSpaceIdentifier withName:@"systemShellHostingSpaceIdentifier"];
  [v3 appendString:self->_systemDisplayIdentifier withName:@"systemDisplayIdentifier"];
  v10 = [v3 build];

  return v10;
}

- (_UIRemoteViewControllerSceneContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UIRemoteViewControllerSceneContextDisplayIdentity"];
  v6 = [v4 decodeIntegerForKey:@"_UIRemoteViewControllerSceneContextScreenReferenceDisplayModeStatus"];
  v7 = [v4 decodeBoolForKey:@"_UIRemoteViewControllerSceneContextEnhancedWindowingEnabled"];
  [v4 _ui_decodeCGFloatForKey:@"_UIRemoteViewControllerSceneContextSystemReferenceAngle"];
  v9 = v8;
  v10 = [v4 decodeIntegerForKey:@"_UIRemoteViewControllerSceneContextSystemReferenceAngleMode"];
  v11 = [v4 _ui_decodeBoolForKey:@"_UIRemoteViewControllerSceneContextIsCapturingContentForAdditionalRenderingDestination" defaultValue:0];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UIRemoteViewControllerSceneContextHardwareKeyboardExclusivityIdentifier"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UIRemoteViewControllerSceneContextSystemShellHostingSpaceIdentifier"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UIRemoteViewControllerSceneContextSystemDisplayIdentifier"];

  v15 = [[_UIRemoteViewControllerSceneContext alloc] initWithDisplayIdentity:v5 screenReferenceDisplayModeStatus:v6 enhancedWindowEnabled:v7 systemReferenceAngle:v10 systemReferenceAngleMode:v11 isCapturingContentForAdditionalRenderingDestination:v12 hardwareKeyboardExclusivityIdentifier:v9 systemShellHostingSpaceIdentifier:v13 systemDisplayIdentifier:v14];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  displayIdentity = self->_displayIdentity;
  v5 = a3;
  [v5 encodeObject:displayIdentity forKey:@"_UIRemoteViewControllerSceneContextDisplayIdentity"];
  [v5 encodeInteger:self->_screenReferenceDisplayModeStatus forKey:@"_UIRemoteViewControllerSceneContextScreenReferenceDisplayModeStatus"];
  [v5 encodeBool:self->_enhancedWindowingEnabled forKey:@"_UIRemoteViewControllerSceneContextEnhancedWindowingEnabled"];
  [v5 _ui_encodeCGFloat:@"_UIRemoteViewControllerSceneContextSystemReferenceAngle" forKey:self->_systemReferenceAngle];
  [v5 encodeInteger:self->_systemReferenceAngleMode forKey:@"_UIRemoteViewControllerSceneContextSystemReferenceAngleMode"];
  [v5 encodeBool:self->_isCapturingContentForAdditionalRenderingDestination forKey:@"_UIRemoteViewControllerSceneContextIsCapturingContentForAdditionalRenderingDestination"];
  [v5 encodeObject:self->_hardwareKeyboardExclusivityIdentifier forKey:@"_UIRemoteViewControllerSceneContextHardwareKeyboardExclusivityIdentifier"];
  [v5 encodeObject:self->_systemShellHostingSpaceIdentifier forKey:@"_UIRemoteViewControllerSceneContextSystemShellHostingSpaceIdentifier"];
  [v5 encodeObject:self->_systemDisplayIdentifier forKey:@"_UIRemoteViewControllerSceneContextSystemDisplayIdentifier"];
}

@end