@interface _UIRemoteViewControllerSceneContext
+ (id)contextForWindow:(void *)window inScene:;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UIRemoteViewControllerSceneContext)initWithCoder:(id)coder;
- (_UIRemoteViewControllerSceneContext)initWithDisplayIdentity:(id)identity screenReferenceDisplayModeStatus:(int64_t)status enhancedWindowEnabled:(BOOL)enabled systemReferenceAngle:(double)angle systemReferenceAngleMode:(unint64_t)mode isCapturingContentForAdditionalRenderingDestination:(BOOL)destination hardwareKeyboardExclusivityIdentifier:(id)identifier systemShellHostingSpaceIdentifier:(id)self0 systemDisplayIdentifier:(id)self1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIRemoteViewControllerSceneContext

+ (id)contextForWindow:(void *)window inScene:
{
  v4 = a2;
  windowCopy = window;
  v6 = objc_opt_self();
  if (windowCopy)
  {
    v7 = v6;
    screen = [windowCopy screen];
    _enhancedWindowingEnabled = [windowCopy _enhancedWindowingEnabled];
    [v4 _systemReferenceAngle];
    v10 = v9;
    _systemReferenceAngleMode = [v4 _systemReferenceAngleMode];
    screen2 = [windowCopy screen];
    isCaptured = [screen2 isCaptured];

    keyboardSceneDelegate = [windowCopy keyboardSceneDelegate];
    hardwareKeyboardExclusivityIdentifier = [keyboardSceneDelegate hardwareKeyboardExclusivityIdentifier];

    v14 = [v7 alloc];
    v27 = screen;
    displayIdentity = [screen displayIdentity];
    referenceDisplayModeStatus = [screen referenceDisplayModeStatus];
    systemShellHostingEnvironment = [windowCopy systemShellHostingEnvironment];
    systemShellHostingSpaceIdentifier = [systemShellHostingEnvironment systemShellHostingSpaceIdentifier];
    renderingEnvironment = [windowCopy renderingEnvironment];
    [renderingEnvironment systemDisplayIdentifier];
    v21 = v20 = v4;
    v22 = v14;
    v23 = hardwareKeyboardExclusivityIdentifier;
    v24 = [v22 initWithDisplayIdentity:displayIdentity screenReferenceDisplayModeStatus:referenceDisplayModeStatus enhancedWindowEnabled:_enhancedWindowingEnabled systemReferenceAngle:_systemReferenceAngleMode systemReferenceAngleMode:isCaptured isCapturingContentForAdditionalRenderingDestination:hardwareKeyboardExclusivityIdentifier hardwareKeyboardExclusivityIdentifier:v10 systemShellHostingSpaceIdentifier:systemShellHostingSpaceIdentifier systemDisplayIdentifier:v21];

    v4 = v20;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (_UIRemoteViewControllerSceneContext)initWithDisplayIdentity:(id)identity screenReferenceDisplayModeStatus:(int64_t)status enhancedWindowEnabled:(BOOL)enabled systemReferenceAngle:(double)angle systemReferenceAngleMode:(unint64_t)mode isCapturingContentForAdditionalRenderingDestination:(BOOL)destination hardwareKeyboardExclusivityIdentifier:(id)identifier systemShellHostingSpaceIdentifier:(id)self0 systemDisplayIdentifier:(id)self1
{
  identityCopy = identity;
  identifierCopy = identifier;
  spaceIdentifierCopy = spaceIdentifier;
  displayIdentifierCopy = displayIdentifier;
  v26.receiver = self;
  v26.super_class = _UIRemoteViewControllerSceneContext;
  v20 = [(_UIRemoteViewControllerSceneContext *)&v26 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_displayIdentity, identity);
    v21->_screenReferenceDisplayModeStatus = status;
    v21->_enhancedWindowingEnabled = enabled;
    v21->_systemReferenceAngle = angle;
    v21->_systemReferenceAngleMode = mode;
    v21->_isCapturingContentForAdditionalRenderingDestination = destination;
    objc_storeStrong(&v21->_hardwareKeyboardExclusivityIdentifier, identifier);
    objc_storeStrong(&v21->_systemShellHostingSpaceIdentifier, spaceIdentifier);
    objc_storeStrong(&v21->_systemDisplayIdentifier, displayIdentifier);
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    v6 = v5[4];
    if (v6 == self->_displayIdentity && v5[5] == self->_screenReferenceDisplayModeStatus && self->_enhancedWindowingEnabled == *(v5 + 9) && *(v5 + 6) == self->_systemReferenceAngle && v5[7] == self->_systemReferenceAngleMode && self->_isCapturingContentForAdditionalRenderingDestination == [v5 isCapturingContentForAdditionalRenderingDestination])
    {
      v7 = v5[8];
      if (BSEqualStrings())
      {
        systemShellHostingSpaceIdentifier = [v5 systemShellHostingSpaceIdentifier];
        if (BSEqualStrings())
        {
          systemDisplayIdentifier = [v5 systemDisplayIdentifier];
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
  build = [v3 build];

  return build;
}

- (_UIRemoteViewControllerSceneContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UIRemoteViewControllerSceneContextDisplayIdentity"];
  v6 = [coderCopy decodeIntegerForKey:@"_UIRemoteViewControllerSceneContextScreenReferenceDisplayModeStatus"];
  v7 = [coderCopy decodeBoolForKey:@"_UIRemoteViewControllerSceneContextEnhancedWindowingEnabled"];
  [coderCopy _ui_decodeCGFloatForKey:@"_UIRemoteViewControllerSceneContextSystemReferenceAngle"];
  v9 = v8;
  v10 = [coderCopy decodeIntegerForKey:@"_UIRemoteViewControllerSceneContextSystemReferenceAngleMode"];
  v11 = [coderCopy _ui_decodeBoolForKey:@"_UIRemoteViewControllerSceneContextIsCapturingContentForAdditionalRenderingDestination" defaultValue:0];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UIRemoteViewControllerSceneContextHardwareKeyboardExclusivityIdentifier"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UIRemoteViewControllerSceneContextSystemShellHostingSpaceIdentifier"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UIRemoteViewControllerSceneContextSystemDisplayIdentifier"];

  v15 = [[_UIRemoteViewControllerSceneContext alloc] initWithDisplayIdentity:v5 screenReferenceDisplayModeStatus:v6 enhancedWindowEnabled:v7 systemReferenceAngle:v10 systemReferenceAngleMode:v11 isCapturingContentForAdditionalRenderingDestination:v12 hardwareKeyboardExclusivityIdentifier:v9 systemShellHostingSpaceIdentifier:v13 systemDisplayIdentifier:v14];
  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  displayIdentity = self->_displayIdentity;
  coderCopy = coder;
  [coderCopy encodeObject:displayIdentity forKey:@"_UIRemoteViewControllerSceneContextDisplayIdentity"];
  [coderCopy encodeInteger:self->_screenReferenceDisplayModeStatus forKey:@"_UIRemoteViewControllerSceneContextScreenReferenceDisplayModeStatus"];
  [coderCopy encodeBool:self->_enhancedWindowingEnabled forKey:@"_UIRemoteViewControllerSceneContextEnhancedWindowingEnabled"];
  [coderCopy _ui_encodeCGFloat:@"_UIRemoteViewControllerSceneContextSystemReferenceAngle" forKey:self->_systemReferenceAngle];
  [coderCopy encodeInteger:self->_systemReferenceAngleMode forKey:@"_UIRemoteViewControllerSceneContextSystemReferenceAngleMode"];
  [coderCopy encodeBool:self->_isCapturingContentForAdditionalRenderingDestination forKey:@"_UIRemoteViewControllerSceneContextIsCapturingContentForAdditionalRenderingDestination"];
  [coderCopy encodeObject:self->_hardwareKeyboardExclusivityIdentifier forKey:@"_UIRemoteViewControllerSceneContextHardwareKeyboardExclusivityIdentifier"];
  [coderCopy encodeObject:self->_systemShellHostingSpaceIdentifier forKey:@"_UIRemoteViewControllerSceneContextSystemShellHostingSpaceIdentifier"];
  [coderCopy encodeObject:self->_systemDisplayIdentifier forKey:@"_UIRemoteViewControllerSceneContextSystemDisplayIdentifier"];
}

@end