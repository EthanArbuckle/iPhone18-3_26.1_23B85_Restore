@interface SBSRemoteAlertPresentationTargetPredicate
+ (id)predicateForLaunchingApplicationIdentity:(id)a3;
+ (id)predicateForProcess:(id)a3;
- (SBSRemoteAlertPresentationTargetPredicate)initWithCoder:(id)a3;
- (SBSRemoteAlertPresentationTargetPredicate)initWithXPCDictionary:(id)a3;
- (id)_init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation SBSRemoteAlertPresentationTargetPredicate

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SBSRemoteAlertPresentationTargetPredicate;
  return [(SBSRemoteAlertPresentationTargetPredicate *)&v3 init];
}

+ (id)predicateForProcess:(id)a3
{
  v3 = a3;
  v4 = [[SBSRemoteAlertPresentationTargetPredicate alloc] _init];
  [v4 setProcess:v3];

  return v4;
}

+ (id)predicateForLaunchingApplicationIdentity:(id)a3
{
  v3 = a3;
  v4 = [[SBSRemoteAlertPresentationTargetPredicate alloc] _init];
  [v4 setLaunchingApplicationIdentity:v3];

  return v4;
}

- (SBSRemoteAlertPresentationTargetPredicate)initWithXPCDictionary:(id)a3
{
  v4 = a3;
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

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
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

- (SBSRemoteAlertPresentationTargetPredicate)initWithCoder:(id)a3
{
  v4 = a3;
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

  v5 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v12;
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
  v2 = [(SBSRemoteAlertPresentationTargetPredicate *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSRemoteAlertPresentationTargetPredicate *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBSRemoteAlertPresentationTargetPredicate *)self succinctDescriptionBuilder];
  v5 = [(BSProcessHandle *)self->_process description];
  v6 = [v4 appendObject:v5 withName:@"process" skipIfNil:1];

  v7 = [v4 appendObject:self->_launchingApplicationIdentity withName:@"launchingApplicationIdentity" skipIfNil:1];
  v8 = [v4 appendObject:self->_scenePersistentIdentifier withName:@"scenePersistentIdentifier" skipIfNil:1];

  return v4;
}

@end