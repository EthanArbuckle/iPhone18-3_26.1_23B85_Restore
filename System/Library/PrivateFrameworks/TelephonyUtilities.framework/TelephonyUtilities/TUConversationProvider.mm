@interface TUConversationProvider
+ (BOOL)matchesDefaultProviderIdentifier:(id)identifier;
+ (TUConversationProvider)expanseProvider;
+ (TUConversationProvider)faceTimeProvider;
+ (TUConversationProvider)telephonyWithSharePlayProvider;
+ (TUConversationProvider)unknownProvider;
+ (id)providerForIdentifier:(id)identifier;
- (BOOL)isDefaultProvider;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationProvider:(id)provider;
- (BOOL)isTelephonyWithSharePlayProvider;
- (BOOL)supportsLinks;
- (BOOL)supportsMediaType:(int64_t)type;
- (BOOL)supportsSharePlay;
- (OS_tcc_identity)assumedIdentity;
- (TUConversationProvider)initWithCoder:(id)coder;
- (TUConversationProvider)initWithConfiguration:(id)configuration;
- (TUConversationProvider)initWithConversationProvider:(id)provider;
- (id)bundleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)pseudonymFeatureID;
- (unint64_t)defaultAVMode;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  bundleIdentifier = [(TUConversationProvider *)self bundleIdentifier];
  if ([bundleIdentifier length])
  {
    v3 = [MEMORY[0x1E696AAE8] tu_assumedIdentityForBundleIdentifier:bundleIdentifier];
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

+ (BOOL)matchesDefaultProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[TUConversationProvider expanseProvider];
  identifier = [v4 identifier];
  if ([identifier isEqualToString:identifierCopy])
  {
    v6 = 1;
  }

  else
  {
    v7 = +[TUConversationProvider faceTimeProvider];
    identifier2 = [v7 identifier];
    if ([identifier2 isEqualToString:identifierCopy])
    {
      v6 = 1;
    }

    else
    {
      v9 = +[TUConversationProvider unknownProvider];
      identifier3 = [v9 identifier];
      v6 = [identifier3 isEqualToString:identifierCopy];
    }
  }

  return v6;
}

- (TUConversationProvider)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = TUConversationProvider;
  v6 = [(TUConversationProvider *)&v14 init];
  if (v6)
  {
    serviceName = [configurationCopy serviceName];
    v8 = [serviceName copy];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    supportedMediaTypes = [configurationCopy supportedMediaTypes];
    allObjects = [supportedMediaTypes allObjects];
    supportedMediaTypes = v6->_supportedMediaTypes;
    v6->_supportedMediaTypes = allObjects;

    objc_storeStrong(&v6->_providerConfiguration, configuration);
  }

  return v6;
}

- (TUConversationProvider)initWithConversationProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = TUConversationProvider;
  v5 = [(TUConversationProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_identifier, providerCopy[1]);
    objc_storeStrong(&v6->_supportedMediaTypes, providerCopy[2]);
    objc_storeStrong(&v6->_providerConfiguration, providerCopy[3]);
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
  providerConfiguration = [(TUConversationProvider *)self providerConfiguration];
  supportsSharePlay = [providerConfiguration supportsSharePlay];

  return supportsSharePlay;
}

- (BOOL)supportsLinks
{
  providerConfiguration = [(TUConversationProvider *)self providerConfiguration];
  supportsLinks = [providerConfiguration supportsLinks];

  return supportsLinks;
}

- (id)bundleIdentifier
{
  providerConfiguration = [(TUConversationProvider *)self providerConfiguration];
  bundleID = [providerConfiguration bundleID];

  return bundleID;
}

- (id)pseudonymFeatureID
{
  providerConfiguration = [(TUConversationProvider *)self providerConfiguration];
  pseudonymFeatureID = [providerConfiguration pseudonymFeatureID];

  return pseudonymFeatureID;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUConversationProvider alloc];

  return [(TUConversationProvider *)v4 initWithConversationProvider:self];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(TUConversationProvider *)self identifier];
  providerConfiguration = [(TUConversationProvider *)self providerConfiguration];
  v8 = [v3 stringWithFormat:@"<%@ %p identifier: %@ providerConfiguration: %@>", v5, self, identifier, providerConfiguration];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUConversationProvider *)self isEqualToConversationProvider:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  bundleIdentifier = [(TUConversationProvider *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  identifier = [(TUConversationProvider *)self identifier];
  v6 = [identifier hash] ^ v4;
  pseudonymFeatureID = [(TUConversationProvider *)self pseudonymFeatureID];
  v8 = [pseudonymFeatureID hash];

  return v6 ^ v8;
}

- (BOOL)isEqualToConversationProvider:(id)provider
{
  providerCopy = provider;
  identifier = [(TUConversationProvider *)self identifier];
  identifier2 = [providerCopy identifier];
  if ([identifier isEqualToString:identifier2])
  {
    supportedMediaTypes = [(TUConversationProvider *)self supportedMediaTypes];
    supportedMediaTypes2 = [providerCopy supportedMediaTypes];
    if (TUObjectsAreEqualOrNil(supportedMediaTypes, supportedMediaTypes2))
    {
      providerConfiguration = [(TUConversationProvider *)self providerConfiguration];
      providerConfiguration2 = [providerCopy providerConfiguration];
      v11 = TUObjectsAreEqualOrNil(providerConfiguration, providerConfiguration2);
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

- (TUConversationProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = TUConversationProvider;
  v5 = [(TUConversationProvider *)&v21 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_identifier);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = NSStringFromSelector(sel_supportedMediaTypes);
    v14 = [coderCopy decodeObjectOfClasses:v12 forKey:v13];
    supportedMediaTypes = v5->_supportedMediaTypes;
    v5->_supportedMediaTypes = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_providerConfiguration);
    v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];
    providerConfiguration = v5->_providerConfiguration;
    v5->_providerConfiguration = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(TUConversationProvider *)self identifier];
  v6 = NSStringFromSelector(sel_identifier);
  [coderCopy encodeObject:identifier forKey:v6];

  supportedMediaTypes = [(TUConversationProvider *)self supportedMediaTypes];
  v8 = NSStringFromSelector(sel_supportedMediaTypes);
  [coderCopy encodeObject:supportedMediaTypes forKey:v8];

  providerConfiguration = [(TUConversationProvider *)self providerConfiguration];
  v9 = NSStringFromSelector(sel_providerConfiguration);
  [coderCopy encodeObject:providerConfiguration forKey:v9];
}

+ (id)providerForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[TUConversationProvider faceTimeProvider];
  identifier = [v5 identifier];
  v7 = [identifierCopy isEqualToString:identifier];

  if (v7)
  {
    v8 = +[TUConversationProvider faceTimeProvider];
  }

  else
  {
    v9 = +[TUConversationProvider expanseProvider];
    identifier2 = [v9 identifier];
    v11 = [identifierCopy isEqualToString:identifier2];

    if (v11)
    {
      v8 = +[TUConversationProvider expanseProvider];
    }

    else
    {
      telephonyWithSharePlayProvider = [self telephonyWithSharePlayProvider];
      identifier3 = [telephonyWithSharePlayProvider identifier];
      v14 = [identifierCopy isEqualToString:identifier3];

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

- (BOOL)supportsMediaType:(int64_t)type
{
  supportedMediaTypes = [(TUConversationProvider *)self supportedMediaTypes];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v6 = [supportedMediaTypes containsObject:v5];

  return v6;
}

@end