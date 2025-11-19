@interface UISApplicationInitializationContext
+ (id)defaultContext;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (UISApplicationInitializationContext)initWithBSXPCCoder:(id)a3;
- (UISApplicationInitializationContext)initWithDisplayContext:(id)a3 deviceContext:(id)a4 persistedSceneIdentifiers:(id)a5;
- (UISApplicationInitializationContext)initWithMainDisplayContext:(id)a3 launchDisplayContext:(id)a4 deviceContext:(id)a5 persistedSceneIdentifiers:(id)a6 supportAppSceneRequests:(BOOL)a7;
- (UISApplicationInitializationContext)initWithUISApplicationInitializationContext:(id)a3;
- (UISApplicationInitializationContext)initWithXPCDictionary:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation UISApplicationInitializationContext

+ (id)defaultContext
{
  v3 = +[UISDeviceContext defaultContext];
  v4 = [a1 alloc];
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

- (UISApplicationInitializationContext)initWithDisplayContext:(id)a3 deviceContext:(id)a4 persistedSceneIdentifiers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v12 = v11;
  if (v11 && (v13 = [v11 deviceInfoIntegerValueForKey:@"UISDeviceContextDeviceClassKey"] + 1, v13 <= 4))
  {
    v14 = 0x19u >> v13;
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v15 = [(UISApplicationInitializationContext *)self initWithMainDisplayContext:v8 launchDisplayContext:0 deviceContext:v12 persistedSceneIdentifiers:v10 supportAppSceneRequests:v14 & 1];
  return v15;
}

- (UISApplicationInitializationContext)initWithMainDisplayContext:(id)a3 launchDisplayContext:(id)a4 deviceContext:(id)a5 persistedSceneIdentifiers:(id)a6 supportAppSceneRequests:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (!v13 && v14)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"UISApplicationInitializationContext.m" lineNumber:116 description:{@"%s: Invalid display contexts specified. Providing a launch display context without an initial display context is not supported: mainDisplayContext: %@; launchDisplayContext: %@", "-[UISApplicationInitializationContext initWithMainDisplayContext:launchDisplayContext:deviceContext:persistedSceneIdentifiers:supportAppSceneRequests:]", 0, v14}];
  }

  v28.receiver = self;
  v28.super_class = UISApplicationInitializationContext;
  v17 = [(UISApplicationInitializationContext *)&v28 init];
  if (v17)
  {
    v18 = [v13 copy];
    mainDisplayContext = v17->_mainDisplayContext;
    v17->_mainDisplayContext = v18;

    v20 = [v14 copy];
    launchDisplayContext = v17->_launchDisplayContext;
    v17->_launchDisplayContext = v20;

    v22 = [v15 copy];
    deviceContext = v17->_deviceContext;
    v17->_deviceContext = v22;

    v24 = [v16 copy];
    persistedSceneIdentifiers = v17->_persistedSceneIdentifiers;
    v17->_persistedSceneIdentifiers = v24;

    v17->_supportAppSceneRequests = a7;
  }

  return v17;
}

- (UISApplicationInitializationContext)initWithUISApplicationInitializationContext:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = UISApplicationInitializationContext;
  v5 = [(UISApplicationInitializationContext *)&v19 init];
  if (v5)
  {
    v6 = [*(v4 + 1) copy];
    mainDisplayContext = v5->_mainDisplayContext;
    v5->_mainDisplayContext = v6;

    v8 = [*(v4 + 2) copy];
    launchDisplayContext = v5->_launchDisplayContext;
    v5->_launchDisplayContext = v8;

    v10 = [*(v4 + 3) copy];
    deviceContext = v5->_deviceContext;
    v5->_deviceContext = v10;

    v12 = [*(v4 + 4) copy];
    compatibilityContext = v5->_compatibilityContext;
    v5->_compatibilityContext = v12;

    v14 = [*(v4 + 5) copy];
    persistedSceneIdentifiers = v5->_persistedSceneIdentifiers;
    v5->_persistedSceneIdentifiers = v14;

    v16 = [*(v4 + 6) copy];
    defaultSceneToken = v5->_defaultSceneToken;
    v5->_defaultSceneToken = v16;

    v5->_supportAppSceneRequests = *(v4 + 56);
  }

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  mainDisplayContext = self->_mainDisplayContext;
  v5 = a3;
  [v5 encodeObject:mainDisplayContext forKey:@"_UISMainDisplayContextKey"];
  [v5 encodeObject:self->_launchDisplayContext forKey:@"_UISLaunchDisplayContextKey"];
  [v5 encodeObject:self->_deviceContext forKey:@"_UISDeviceContextKey"];
  [v5 encodeObject:self->_compatibilityContext forKey:@"_UISCompatibilityContextKey"];
  [v5 encodeCollection:self->_persistedSceneIdentifiers forKey:@"_UISPersistedSceneIdentifiersKey"];
  [v5 encodeObject:self->_defaultSceneToken forKey:@"_UISDefaultSceneTokenKey"];
  [v5 encodeBool:self->_supportAppSceneRequests forKey:@"_UISSupportAppSceneRequestsKey"];
}

- (UISApplicationInitializationContext)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UISMainDisplayContextKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UISLaunchDisplayContextKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UISDeviceContextKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UISCompatibilityContextKey"];
  v9 = objc_opt_class();
  v10 = [v4 decodeCollectionOfClass:v9 containingClass:objc_opt_class() forKey:@"_UISPersistedSceneIdentifiersKey"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UISDefaultSceneTokenKey"];
  v12 = [v4 decodeBoolForKey:@"_UISSupportAppSceneRequestsKey"];

  v13 = [(UISApplicationInitializationContext *)self initWithMainDisplayContext:v5 launchDisplayContext:v6 deviceContext:v7 persistedSceneIdentifiers:v10 supportAppSceneRequests:v12];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_defaultSceneToken, v11);
    objc_storeStrong(&v14->_compatibilityContext, v8);
  }

  return v14;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UISApplicationInitializationContext.m" lineNumber:205 description:{@"%s is not supported", "-[UISApplicationInitializationContext encodeWithXPCDictionary:]"}];
}

- (UISApplicationInitializationContext)initWithXPCDictionary:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"UISApplicationInitializationContext.m" lineNumber:209 description:{@"%s is not supported", "-[UISApplicationInitializationContext initWithXPCDictionary:]"}];

  return 0;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [UISMutableApplicationInitializationContext alloc];

  return [(UISApplicationInitializationContext *)v4 initWithUISApplicationInitializationContext:self];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 == self)
  {
    LOBYTE(v15) = 1;
    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(UISApplicationInitializationContext *)self mainDisplayContext];
    v8 = [(UISApplicationInitializationContext *)v6 mainDisplayContext];
    if (BSEqualObjects())
    {
      v9 = [(UISApplicationInitializationContext *)self launchDisplayContext];
      v10 = [(UISApplicationInitializationContext *)v6 launchDisplayContext];
      if (BSEqualObjects())
      {
        v11 = [(UISApplicationInitializationContext *)self compatibilityContext];
        v12 = [(UISApplicationInitializationContext *)v6 compatibilityContext];
        if (BSEqualObjects())
        {
          v13 = [(UISApplicationInitializationContext *)self deviceContext];
          v14 = [(UISApplicationInitializationContext *)v6 deviceContext];
          v22 = v13;
          if (v13 == v14)
          {
            v21 = v14;
            v16 = [(UISApplicationInitializationContext *)self defaultSceneToken];
            [(UISApplicationInitializationContext *)v6 defaultSceneToken];
            v17 = v20 = v16;
            if (BSEqualObjects())
            {
              v18 = [(UISApplicationInitializationContext *)self supportAppSceneRequests];
              v15 = v18 ^ [(UISApplicationInitializationContext *)v6 supportAppSceneRequests]^ 1;
            }

            else
            {
              LOBYTE(v15) = 0;
            }

            v14 = v21;
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
  v5 = [(UISApplicationInitializationContext *)self mainDisplayContext];
  v6 = [v5 hash];
  v7 = [(UISApplicationInitializationContext *)self launchDisplayContext];
  v8 = [v7 hash] ^ v6;
  v9 = [(UISApplicationInitializationContext *)self deviceContext];
  v10 = [v9 hash];
  v11 = [(UISApplicationInitializationContext *)self compatibilityContext];
  v12 = supportAppSceneRequests + (v8 ^ v10 ^ [v11 hash]);

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
  v10 = [v3 build];

  return v10;
}

@end