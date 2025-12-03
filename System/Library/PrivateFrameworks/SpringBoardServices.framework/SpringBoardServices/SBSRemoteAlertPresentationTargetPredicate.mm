@interface SBSRemoteAlertPresentationTargetPredicate
+ (id)predicateForLaunchingApplicationIdentity:(id)identity;
+ (id)predicateForProcess:(id)process;
- (SBSRemoteAlertPresentationTargetPredicate)initWithCoder:(id)coder;
- (SBSRemoteAlertPresentationTargetPredicate)initWithXPCDictionary:(id)dictionary;
- (id)_init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation SBSRemoteAlertPresentationTargetPredicate

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SBSRemoteAlertPresentationTargetPredicate;
  return [(SBSRemoteAlertPresentationTargetPredicate *)&v3 init];
}

+ (id)predicateForProcess:(id)process
{
  processCopy = process;
  _init = [[SBSRemoteAlertPresentationTargetPredicate alloc] _init];
  [_init setProcess:processCopy];

  return _init;
}

+ (id)predicateForLaunchingApplicationIdentity:(id)identity
{
  identityCopy = identity;
  _init = [[SBSRemoteAlertPresentationTargetPredicate alloc] _init];
  [_init setLaunchingApplicationIdentity:identityCopy];

  return _init;
}

- (SBSRemoteAlertPresentationTargetPredicate)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();
  objc_opt_class();
  v6 = BSCreateDeserializedNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
  v7 = v6;
  if (v5)
  {
    v8 = [SBSRemoteAlertPresentationTargetPredicate predicateForProcess:v5];
  }

  else
  {
    if (!v6)
    {
      v9 = 0;
      goto LABEL_8;
    }

    v8 = [SBSRemoteAlertPresentationTargetPredicate predicateForLaunchingApplicationIdentity:v6];
  }

  v9 = v8;
  if (v8)
  {
    v10 = BSCreateDeserializedStringFromXPCDictionaryWithKey();
    [(SBSRemoteAlertPresentationTargetPredicate *)v9 setScenePersistentIdentifier:v10];
  }

LABEL_8:

  return v9;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (self->_process)
  {
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }

  else if (self->_launchingApplicationIdentity)
  {
    BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  }

  BSSerializeStringToXPCDictionaryWithKey();
}

- (SBSRemoteAlertPresentationTargetPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = MEMORY[0x1E695DF30];
    v9 = *MEMORY[0x1E695D940];
    v10 = objc_opt_class();
    v5 = NSStringFromClass(v10);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v8 raise:v9 format:{@"An %@ can only be decoded with an instance of NSXPCCoder; attempting to decode with %@", v5, v12}];
    v13 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v5 = coderCopy;
  if ([v5 containsValueForKey:@"process"])
  {
    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"process"];
    v7 = [SBSRemoteAlertPresentationTargetPredicate predicateForProcess:v6];
  }

  else
  {
    if (![v5 containsValueForKey:@"launchingIdentity"])
    {
      v13 = 0;
      goto LABEL_10;
    }

    v6 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"launchingIdentity"];
    v7 = [SBSRemoteAlertPresentationTargetPredicate predicateForLaunchingApplicationIdentity:v6];
  }

  v13 = v7;

  if (v13)
  {
    v12 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"scenePersistentIdentifier"];
    [(SBSRemoteAlertPresentationTargetPredicate *)v13 setScenePersistentIdentifier:v12];
    goto LABEL_9;
  }

LABEL_10:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = coderCopy;
    v5 = v4;
    if (self->_process || self->_launchingApplicationIdentity)
    {
      [v4 encodeObject:? forKey:?];
    }

    scenePersistentIdentifier = self->_scenePersistentIdentifier;
    if (scenePersistentIdentifier)
    {
      [v5 encodeObject:scenePersistentIdentifier forKey:@"scenePersistentIdentifier"];
    }
  }

  else
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = objc_opt_class();
    v5 = NSStringFromClass(v8);
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [v6 raise:v7 format:{@"An %@ can only be encoded with an instance of NSXPCCoder; attempting to encode with %@", v5, v10}];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSRemoteAlertPresentationTargetPredicate *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSRemoteAlertPresentationTargetPredicate *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBSRemoteAlertPresentationTargetPredicate *)self succinctDescriptionBuilder];
  v5 = [(BSProcessHandle *)self->_process description];
  v6 = [succinctDescriptionBuilder appendObject:v5 withName:@"process" skipIfNil:1];

  v7 = [succinctDescriptionBuilder appendObject:self->_launchingApplicationIdentity withName:@"launchingApplicationIdentity" skipIfNil:1];
  v8 = [succinctDescriptionBuilder appendObject:self->_scenePersistentIdentifier withName:@"scenePersistentIdentifier" skipIfNil:1];

  return succinctDescriptionBuilder;
}

@end