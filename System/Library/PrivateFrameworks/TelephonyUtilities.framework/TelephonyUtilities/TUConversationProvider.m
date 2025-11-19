@interface TUConversationProvider
+ (BOOL)matchesDefaultProviderIdentifier:(id)a3;
+ (TUConversationProvider)expanseProvider;
+ (TUConversationProvider)faceTimeProvider;
+ (TUConversationProvider)telephonyWithSharePlayProvider;
+ (TUConversationProvider)unknownProvider;
+ (id)providerForIdentifier:(id)a3;
- (BOOL)isDefaultProvider;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationProvider:(id)a3;
- (BOOL)isTelephonyWithSharePlayProvider;
- (BOOL)supportsLinks;
- (BOOL)supportsMediaType:(int64_t)a3;
- (BOOL)supportsSharePlay;
- (OS_tcc_identity)assumedIdentity;
- (TUConversationProvider)initWithCoder:(id)a3;
- (TUConversationProvider)initWithConfiguration:(id)a3;
- (TUConversationProvider)initWithConversationProvider:(id)a3;
- (id)bundleIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)pseudonymFeatureID;
- (unint64_t)defaultAVMode;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUConversationProvider

+ (TUConversationProvider)expanseProvider
{
  if (expanseProvider_onceToken != -1)
  {
    +[TUConversationProvider expanseProvider];
  }

  v3 = expanseProvider_expanseProvider;

  return v3;
}

- (OS_tcc_identity)assumedIdentity
{
  v2 = [(TUConversationProvider *)self bundleIdentifier];
  if ([v2 length])
  {
    v3 = [MEMORY[0x1E696AAE8] tu_assumedIdentityForBundleIdentifier:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __41__TUConversationProvider_expanseProvider__block_invoke()
{
  v4 = [[TUConversationProviderConfiguration alloc] initWithServiceName:@"com.apple.private.expanse"];
  v0 = TUPreferredFaceTimeBundleIdentifier();
  [(TUConversationProviderConfiguration *)v4 setBundleID:v0];

  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F09C5EA8, &unk_1F09C5EC0, &unk_1F09C5ED8, 0}];
  [(TUConversationProviderConfiguration *)v4 setSupportedMediaTypes:v1];

  [(TUConversationProviderConfiguration *)v4 setSupportsLinks:1];
  [(TUConversationProviderConfiguration *)v4 setSupportsSharePlay:1];
  [(TUConversationProviderConfiguration *)v4 setSupportsConversationHandoff:1];
  v2 = [[TUConversationProvider alloc] initWithConfiguration:v4];
  v3 = expanseProvider_expanseProvider;
  expanseProvider_expanseProvider = v2;
}

+ (TUConversationProvider)faceTimeProvider
{
  if (faceTimeProvider_onceToken != -1)
  {
    +[TUConversationProvider faceTimeProvider];
  }

  v3 = faceTimeProvider_faceTimeProvider;

  return v3;
}

void __42__TUConversationProvider_faceTimeProvider__block_invoke()
{
  v4 = [[TUConversationProviderConfiguration alloc] initWithServiceName:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"];
  v0 = TUPreferredFaceTimeBundleIdentifier();
  [(TUConversationProviderConfiguration *)v4 setBundleID:v0];

  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F09C5EA8, &unk_1F09C5EC0, &unk_1F09C5ED8, 0}];
  [(TUConversationProviderConfiguration *)v4 setSupportedMediaTypes:v1];

  [(TUConversationProviderConfiguration *)v4 setSupportsLinks:1];
  [(TUConversationProviderConfiguration *)v4 setSupportsSharePlay:1];
  [(TUConversationProviderConfiguration *)v4 setSupportsConversationHandoff:1];
  v2 = [[TUConversationProvider alloc] initWithConfiguration:v4];
  v3 = faceTimeProvider_faceTimeProvider;
  faceTimeProvider_faceTimeProvider = v2;
}

+ (TUConversationProvider)unknownProvider
{
  if (unknownProvider_onceToken != -1)
  {
    +[TUConversationProvider unknownProvider];
  }

  v3 = unknownProvider_unknownProvider;

  return v3;
}

void __41__TUConversationProvider_unknownProvider__block_invoke()
{
  v4 = [[TUConversationProviderConfiguration alloc] initWithServiceName:@"com.apple.private.unknown"];
  v0 = TUPreferredFaceTimeBundleIdentifier();
  [(TUConversationProviderConfiguration *)v4 setBundleID:v0];

  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F09C5EA8, &unk_1F09C5EC0, &unk_1F09C5ED8, 0}];
  [(TUConversationProviderConfiguration *)v4 setSupportedMediaTypes:v1];

  [(TUConversationProviderConfiguration *)v4 setSupportsLinks:1];
  [(TUConversationProviderConfiguration *)v4 setSupportsSharePlay:1];
  [(TUConversationProviderConfiguration *)v4 setSupportsConversationHandoff:1];
  v2 = [[TUConversationProvider alloc] initWithConfiguration:v4];
  v3 = unknownProvider_unknownProvider;
  unknownProvider_unknownProvider = v2;
}

+ (TUConversationProvider)telephonyWithSharePlayProvider
{
  if (telephonyWithSharePlayProvider_onceToken != -1)
  {
    +[TUConversationProvider telephonyWithSharePlayProvider];
  }

  v3 = telephonyWithSharePlayProvider_telephonyWithSharePlayProvider;

  return v3;
}

void __56__TUConversationProvider_telephonyWithSharePlayProvider__block_invoke()
{
  v0 = [TUConversationProviderConfiguration alloc];
  v4 = [(TUConversationProviderConfiguration *)v0 initWithServiceName:*MEMORY[0x1E69A47F8]];
  [(TUConversationProviderConfiguration *)v4 setBundleID:@"com.apple.private.telephony"];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F09C5EA8, &unk_1F09C5EC0, &unk_1F09C5ED8, 0}];
  [(TUConversationProviderConfiguration *)v4 setSupportedMediaTypes:v1];

  [(TUConversationProviderConfiguration *)v4 setSupportsSharePlay:1];
  [(TUConversationProviderConfiguration *)v4 setSupportsConversationHandoff:1];
  v2 = [[TUConversationProvider alloc] initWithConfiguration:v4];
  v3 = telephonyWithSharePlayProvider_telephonyWithSharePlayProvider;
  telephonyWithSharePlayProvider_telephonyWithSharePlayProvider = v2;
}

- (BOOL)isDefaultProvider
{
  v3 = +[TUConversationProvider expanseProvider];
  if ([(TUConversationProvider *)self isEqual:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[TUConversationProvider faceTimeProvider];
    if ([(TUConversationProvider *)self isEqual:v5])
    {
      v4 = 1;
    }

    else
    {
      v6 = +[TUConversationProvider unknownProvider];
      v4 = [(TUConversationProvider *)self isEqual:v6];
    }
  }

  return v4;
}

- (BOOL)isTelephonyWithSharePlayProvider
{
  v3 = +[TUConversationProvider telephonyWithSharePlayProvider];
  LOBYTE(self) = [(TUConversationProvider *)self isEqual:v3];

  return self;
}

+ (BOOL)matchesDefaultProviderIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[TUConversationProvider expanseProvider];
  v5 = [v4 identifier];
  if ([v5 isEqualToString:v3])
  {
    v6 = 1;
  }

  else
  {
    v7 = +[TUConversationProvider faceTimeProvider];
    v8 = [v7 identifier];
    if ([v8 isEqualToString:v3])
    {
      v6 = 1;
    }

    else
    {
      v9 = +[TUConversationProvider unknownProvider];
      v10 = [v9 identifier];
      v6 = [v10 isEqualToString:v3];
    }
  }

  return v6;
}

- (TUConversationProvider)initWithConfiguration:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = TUConversationProvider;
  v6 = [(TUConversationProvider *)&v14 init];
  if (v6)
  {
    v7 = [v5 serviceName];
    v8 = [v7 copy];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [v5 supportedMediaTypes];
    v11 = [v10 allObjects];
    supportedMediaTypes = v6->_supportedMediaTypes;
    v6->_supportedMediaTypes = v11;

    objc_storeStrong(&v6->_providerConfiguration, a3);
  }

  return v6;
}

- (TUConversationProvider)initWithConversationProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = TUConversationProvider;
  v5 = [(TUConversationProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_identifier, v4[1]);
    objc_storeStrong(&v6->_supportedMediaTypes, v4[2]);
    objc_storeStrong(&v6->_providerConfiguration, v4[3]);
  }

  return v6;
}

- (unint64_t)defaultAVMode
{
  v3 = 2;
  if (![(TUConversationProvider *)self supportsAVMode:2])
  {
    return [(TUConversationProvider *)self supportsAVMode:1];
  }

  return v3;
}

- (BOOL)supportsSharePlay
{
  v2 = [(TUConversationProvider *)self providerConfiguration];
  v3 = [v2 supportsSharePlay];

  return v3;
}

- (BOOL)supportsLinks
{
  v2 = [(TUConversationProvider *)self providerConfiguration];
  v3 = [v2 supportsLinks];

  return v3;
}

- (id)bundleIdentifier
{
  v2 = [(TUConversationProvider *)self providerConfiguration];
  v3 = [v2 bundleID];

  return v3;
}

- (id)pseudonymFeatureID
{
  v2 = [(TUConversationProvider *)self providerConfiguration];
  v3 = [v2 pseudonymFeatureID];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TUConversationProvider alloc];

  return [(TUConversationProvider *)v4 initWithConversationProvider:self];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(TUConversationProvider *)self identifier];
  v7 = [(TUConversationProvider *)self providerConfiguration];
  v8 = [v3 stringWithFormat:@"<%@ %p identifier: %@ providerConfiguration: %@>", v5, self, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationProvider *)self isEqualToConversationProvider:v4];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(TUConversationProvider *)self bundleIdentifier];
  v4 = [v3 hash];
  v5 = [(TUConversationProvider *)self identifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(TUConversationProvider *)self pseudonymFeatureID];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqualToConversationProvider:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationProvider *)self identifier];
  v6 = [v4 identifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(TUConversationProvider *)self supportedMediaTypes];
    v8 = [v4 supportedMediaTypes];
    if (TUObjectsAreEqualOrNil(v7, v8))
    {
      v9 = [(TUConversationProvider *)self providerConfiguration];
      v10 = [v4 providerConfiguration];
      v11 = TUObjectsAreEqualOrNil(v9, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (TUConversationProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = TUConversationProvider;
  v5 = [(TUConversationProvider *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_identifier);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = NSStringFromSelector(sel_supportedMediaTypes);
    v14 = [v4 decodeObjectOfClasses:v12 forKey:v13];
    supportedMediaTypes = v5->_supportedMediaTypes;
    v5->_supportedMediaTypes = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_providerConfiguration);
    v18 = [v4 decodeObjectOfClass:v16 forKey:v17];
    providerConfiguration = v5->_providerConfiguration;
    v5->_providerConfiguration = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUConversationProvider *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUConversationProvider *)self supportedMediaTypes];
  v8 = NSStringFromSelector(sel_supportedMediaTypes);
  [v4 encodeObject:v7 forKey:v8];

  v10 = [(TUConversationProvider *)self providerConfiguration];
  v9 = NSStringFromSelector(sel_providerConfiguration);
  [v4 encodeObject:v10 forKey:v9];
}

+ (id)providerForIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[TUConversationProvider faceTimeProvider];
  v6 = [v5 identifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = +[TUConversationProvider faceTimeProvider];
  }

  else
  {
    v9 = +[TUConversationProvider expanseProvider];
    v10 = [v9 identifier];
    v11 = [v4 isEqualToString:v10];

    if (v11)
    {
      v8 = +[TUConversationProvider expanseProvider];
    }

    else
    {
      v12 = [a1 telephonyWithSharePlayProvider];
      v13 = [v12 identifier];
      v14 = [v4 isEqualToString:v13];

      if (v14)
      {
        +[TUConversationProvider telephonyWithSharePlayProvider];
      }

      else
      {
        +[TUConversationProvider unknownProvider];
      }
      v8 = ;
    }
  }

  v15 = v8;

  return v15;
}

- (BOOL)supportsMediaType:(int64_t)a3
{
  v4 = [(TUConversationProvider *)self supportedMediaTypes];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 containsObject:v5];

  return v6;
}

@end