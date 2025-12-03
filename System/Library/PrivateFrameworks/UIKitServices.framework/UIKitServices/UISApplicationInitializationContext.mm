@interface UISApplicationInitializationContext
+ (id)defaultContext;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (UISApplicationInitializationContext)initWithBSXPCCoder:(id)coder;
- (UISApplicationInitializationContext)initWithDisplayContext:(id)context deviceContext:(id)deviceContext persistedSceneIdentifiers:(id)identifiers;
- (UISApplicationInitializationContext)initWithMainDisplayContext:(id)context launchDisplayContext:(id)displayContext deviceContext:(id)deviceContext persistedSceneIdentifiers:(id)identifiers supportAppSceneRequests:(BOOL)requests;
- (UISApplicationInitializationContext)initWithUISApplicationInitializationContext:(id)context;
- (UISApplicationInitializationContext)initWithXPCDictionary:(id)dictionary;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation UISApplicationInitializationContext

+ (id)defaultContext
{
  v3 = +[UISDeviceContext defaultContext];
  v4 = [self alloc];
  v5 = +[UISDisplayContext defaultContext];
  v6 = v3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 deviceInfoIntegerValueForKey:@"UISDeviceContextDeviceClassKey"];
    if ((v8 + 1) <= 4)
    {
      v9 = 0x19u >> (v8 + 1);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [v4 initWithMainDisplayContext:v5 launchDisplayContext:0 deviceContext:v7 persistedSceneIdentifiers:0 supportAppSceneRequests:v9 & 1];

  return v10;
}

- (UISApplicationInitializationContext)initWithDisplayContext:(id)context deviceContext:(id)deviceContext persistedSceneIdentifiers:(id)identifiers
{
  contextCopy = context;
  deviceContextCopy = deviceContext;
  identifiersCopy = identifiers;
  v11 = deviceContextCopy;
  v12 = v11;
  if (v11 && (v13 = [v11 deviceInfoIntegerValueForKey:@"UISDeviceContextDeviceClassKey"] + 1, v13 <= 4))
  {
    v14 = 0x19u >> v13;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v15 = [(UISApplicationInitializationContext *)self initWithMainDisplayContext:contextCopy launchDisplayContext:0 deviceContext:v12 persistedSceneIdentifiers:identifiersCopy supportAppSceneRequests:v14 & 1];
  return v15;
}

- (UISApplicationInitializationContext)initWithMainDisplayContext:(id)context launchDisplayContext:(id)displayContext deviceContext:(id)deviceContext persistedSceneIdentifiers:(id)identifiers supportAppSceneRequests:(BOOL)requests
{
  contextCopy = context;
  displayContextCopy = displayContext;
  deviceContextCopy = deviceContext;
  identifiersCopy = identifiers;
  if (!contextCopy && displayContextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UISApplicationInitializationContext.m" lineNumber:116 description:{@"%s: Invalid display contexts specified. Providing a launch display context without an initial display context is not supported: mainDisplayContext: %@; launchDisplayContext: %@", "-[UISApplicationInitializationContext initWithMainDisplayContext:launchDisplayContext:deviceContext:persistedSceneIdentifiers:supportAppSceneRequests:]", 0, displayContextCopy}];
  }

  v28.receiver = self;
  v28.super_class = UISApplicationInitializationContext;
  v17 = [(UISApplicationInitializationContext *)&v28 init];
  if (v17)
  {
    v18 = [contextCopy copy];
    mainDisplayContext = v17->_mainDisplayContext;
    v17->_mainDisplayContext = v18;

    v20 = [displayContextCopy copy];
    launchDisplayContext = v17->_launchDisplayContext;
    v17->_launchDisplayContext = v20;

    v22 = [deviceContextCopy copy];
    deviceContext = v17->_deviceContext;
    v17->_deviceContext = v22;

    v24 = [identifiersCopy copy];
    persistedSceneIdentifiers = v17->_persistedSceneIdentifiers;
    v17->_persistedSceneIdentifiers = v24;

    v17->_supportAppSceneRequests = requests;
  }

  return v17;
}

- (UISApplicationInitializationContext)initWithUISApplicationInitializationContext:(id)context
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = UISApplicationInitializationContext;
  v5 = [(UISApplicationInitializationContext *)&v19 init];
  if (v5)
  {
    v6 = [*(contextCopy + 1) copy];
    mainDisplayContext = v5->_mainDisplayContext;
    v5->_mainDisplayContext = v6;

    v8 = [*(contextCopy + 2) copy];
    launchDisplayContext = v5->_launchDisplayContext;
    v5->_launchDisplayContext = v8;

    v10 = [*(contextCopy + 3) copy];
    deviceContext = v5->_deviceContext;
    v5->_deviceContext = v10;

    v12 = [*(contextCopy + 4) copy];
    compatibilityContext = v5->_compatibilityContext;
    v5->_compatibilityContext = v12;

    v14 = [*(contextCopy + 5) copy];
    persistedSceneIdentifiers = v5->_persistedSceneIdentifiers;
    v5->_persistedSceneIdentifiers = v14;

    v16 = [*(contextCopy + 6) copy];
    defaultSceneToken = v5->_defaultSceneToken;
    v5->_defaultSceneToken = v16;

    v5->_supportAppSceneRequests = *(contextCopy + 56);
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  mainDisplayContext = self->_mainDisplayContext;
  coderCopy = coder;
  [coderCopy encodeObject:mainDisplayContext forKey:@"_UISMainDisplayContextKey"];
  [coderCopy encodeObject:self->_launchDisplayContext forKey:@"_UISLaunchDisplayContextKey"];
  [coderCopy encodeObject:self->_deviceContext forKey:@"_UISDeviceContextKey"];
  [coderCopy encodeObject:self->_compatibilityContext forKey:@"_UISCompatibilityContextKey"];
  [coderCopy encodeCollection:self->_persistedSceneIdentifiers forKey:@"_UISPersistedSceneIdentifiersKey"];
  [coderCopy encodeObject:self->_defaultSceneToken forKey:@"_UISDefaultSceneTokenKey"];
  [coderCopy encodeBool:self->_supportAppSceneRequests forKey:@"_UISSupportAppSceneRequestsKey"];
}

- (UISApplicationInitializationContext)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UISMainDisplayContextKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UISLaunchDisplayContextKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UISDeviceContextKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UISCompatibilityContextKey"];
  v9 = objc_opt_class();
  v10 = [coderCopy decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"_UISPersistedSceneIdentifiersKey"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UISDefaultSceneTokenKey"];
  v12 = [coderCopy decodeBoolForKey:@"_UISSupportAppSceneRequestsKey"];

  v13 = [(UISApplicationInitializationContext *)self initWithMainDisplayContext:v5 launchDisplayContext:v6 deviceContext:v7 persistedSceneIdentifiers:v10 supportAppSceneRequests:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_defaultSceneToken, v11);
    objc_storeStrong(&v14->_compatibilityContext, v8);
  }

  return v14;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UISApplicationInitializationContext.m" lineNumber:205 description:{@"%s is not supported", "-[UISApplicationInitializationContext encodeWithXPCDictionary:]"}];
}

- (UISApplicationInitializationContext)initWithXPCDictionary:(id)dictionary
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UISApplicationInitializationContext.m" lineNumber:209 description:{@"%s is not supported", "-[UISApplicationInitializationContext initWithXPCDictionary:]"}];

  return 0;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [UISMutableApplicationInitializationContext alloc];

  return [(UISApplicationInitializationContext *)v4 initWithUISApplicationInitializationContext:self];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_9;
  }

  if (equalCopy == self)
  {
    LOBYTE(v15) = 1;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    mainDisplayContext = [(UISApplicationInitializationContext *)self mainDisplayContext];
    mainDisplayContext2 = [(UISApplicationInitializationContext *)v6 mainDisplayContext];
    if (BSEqualObjects())
    {
      launchDisplayContext = [(UISApplicationInitializationContext *)self launchDisplayContext];
      launchDisplayContext2 = [(UISApplicationInitializationContext *)v6 launchDisplayContext];
      if (BSEqualObjects())
      {
        compatibilityContext = [(UISApplicationInitializationContext *)self compatibilityContext];
        compatibilityContext2 = [(UISApplicationInitializationContext *)v6 compatibilityContext];
        if (BSEqualObjects())
        {
          deviceContext = [(UISApplicationInitializationContext *)self deviceContext];
          deviceContext2 = [(UISApplicationInitializationContext *)v6 deviceContext];
          v22 = deviceContext;
          if (deviceContext == deviceContext2)
          {
            v21 = deviceContext2;
            defaultSceneToken = [(UISApplicationInitializationContext *)self defaultSceneToken];
            [(UISApplicationInitializationContext *)v6 defaultSceneToken];
            v17 = v20 = defaultSceneToken;
            if (BSEqualObjects())
            {
              supportAppSceneRequests = [(UISApplicationInitializationContext *)self supportAppSceneRequests];
              v15 = supportAppSceneRequests ^ [(UISApplicationInitializationContext *)v6 supportAppSceneRequests]^ 1;
            }

            else
            {
              LOBYTE(v15) = 0;
            }

            deviceContext2 = v21;
          }

          else
          {
            LOBYTE(v15) = 0;
          }
        }

        else
        {
          LOBYTE(v15) = 0;
        }
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v15) = 0;
  }

LABEL_22:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(FBSSceneIdentityToken *)self->_defaultSceneToken hash];
  supportAppSceneRequests = self->_supportAppSceneRequests;
  mainDisplayContext = [(UISApplicationInitializationContext *)self mainDisplayContext];
  v6 = [mainDisplayContext hash];
  launchDisplayContext = [(UISApplicationInitializationContext *)self launchDisplayContext];
  v8 = [launchDisplayContext hash] ^ v6;
  deviceContext = [(UISApplicationInitializationContext *)self deviceContext];
  v10 = [deviceContext hash];
  compatibilityContext = [(UISApplicationInitializationContext *)self compatibilityContext];
  v12 = supportAppSceneRequests + (v8 ^ v10 ^ [compatibilityContext hash]);

  return v3 + v12;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_mainDisplayContext withName:@"MainDisplayContext"];
  v5 = [v3 appendObject:self->_launchDisplayContext withName:@"LaunchDisplayContext"];
  v6 = [v3 appendObject:self->_deviceContext withName:@"DeviceContext"];
  v7 = [v3 appendObject:self->_compatibilityContext withName:@"CompatibilityContext"];
  v8 = [v3 appendObject:self->_defaultSceneToken withName:@"DefaultSceneToken"];
  v9 = [v3 appendBool:self->_supportAppSceneRequests withName:@"SupportAppSceneRequests"];
  build = [v3 build];

  return build;
}

@end