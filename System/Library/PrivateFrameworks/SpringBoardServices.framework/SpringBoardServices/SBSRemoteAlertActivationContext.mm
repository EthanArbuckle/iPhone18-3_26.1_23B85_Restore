@interface SBSRemoteAlertActivationContext
+ (id)activationContextWithLegacyAlertOptions:(id)options;
- (SBSRemoteAlertActivationContext)init;
- (SBSRemoteAlertActivationContext)initWithActions:(id)actions presentationTarget:(id)target userInfo:(id)info;
- (SBSRemoteAlertActivationContext)initWithCoder:(id)coder;
- (SBSRemoteAlertActivationContext)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)setLegacyAlertOptions:(id)options;
@end

@implementation SBSRemoteAlertActivationContext

- (SBSRemoteAlertActivationContext)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  v4 = [(SBSRemoteAlertActivationContext *)self initWithActions:v3];

  return v4;
}

- (SBSRemoteAlertActivationContext)initWithActions:(id)actions presentationTarget:(id)target userInfo:(id)info
{
  actionsCopy = actions;
  targetCopy = target;
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = SBSRemoteAlertActivationContext;
  v11 = [(SBSRemoteAlertActivationContext *)&v20 init];
  if (v11)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v11->_shouldEmbedOverShieldedApps = [bundleIdentifier isEqualToString:@"com.apple.LocalAuthenticationUIService"];

    v14 = [actionsCopy copy];
    actions = v11->_actions;
    v11->_actions = v14;

    objc_storeStrong(&v11->_presentationTarget, target);
    v16 = [infoCopy copy];
    userInfo = v11->_userInfo;
    v11->_userInfo = v16;

    v11->_presentationMode = 0;
    preferredSceneDeactivationReason = v11->_preferredSceneDeactivationReason;
    v11->_preferredSceneDeactivationReason = &unk_1F05B4E98;
  }

  return v11;
}

+ (id)activationContextWithLegacyAlertOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_alloc_init(self);
  [v5 setLegacyAlertOptions:optionsCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithActions:presentationTarget:userInfo:", self->_actions, self->_presentationTarget, self->_userInfo}];
  v5 = v4;
  if (v4)
  {
    [v4 setReason:self->_reason];
    [v5 setActivatingForSiri:self->_activatingForSiri];
    [v5 setShouldDismissPresentedBanners:self->_shouldDismissPresentedBanners];
    [v5 setShouldStashPictureInPictureIfNeeded:self->_shouldStashPictureInPictureIfNeeded];
    [v5 setActivityContinuationIdentifier:self->_activityContinuationIdentifier];
    [v5 setPresentationMode:self->_presentationMode];
    [v5 setInitialSupportedInterfaceOrientations:self->_initialSupportedInterfaceOrientations];
    [v5 setPreferredSceneDeactivationReason:self->_preferredSceneDeactivationReason];
    [v5 setShouldEmbedOverShieldedApps:self->_shouldEmbedOverShieldedApps];
  }

  return v5;
}

- (SBSRemoteAlertActivationContext)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = BSDeserializeSetOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
  v6 = BSCreateDeserializedBSXPCEncodableObjectFromXPCDictionaryWithKey();
  v7 = BSDeserializeCFValueFromXPCDictionaryWithKey();
  v8 = [(SBSRemoteAlertActivationContext *)self initWithActions:v5 presentationTarget:v6 userInfo:v7];
  if (v8)
  {
    v9 = BSDeserializeCFValueFromXPCDictionaryWithKey();
    legacyAlertOptions = v8->_legacyAlertOptions;
    v8->_legacyAlertOptions = v9;

    v11 = BSDeserializeStringFromXPCDictionaryWithKey();
    reason = v8->_reason;
    v8->_reason = v11;

    v8->_activatingForSiri = xpc_dictionary_get_BOOL(dictionaryCopy, "activatingForSiri");
    objc_opt_class();
    v13 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
    activityContinuationIdentifier = v8->_activityContinuationIdentifier;
    v8->_activityContinuationIdentifier = v13;

    v8->_switcherEligible = xpc_dictionary_get_BOOL(dictionaryCopy, "switcherEligible");
    v8->_shouldInvalidateWhenDeactivated = xpc_dictionary_get_BOOL(dictionaryCopy, "shouldInvalidateWhenDeactivated");
    v8->_shouldDismissPresentedBanners = xpc_dictionary_get_BOOL(dictionaryCopy, "shouldDismissPresentedBanners");
    v8->_shouldStashPictureInPictureIfNeeded = xpc_dictionary_get_BOOL(dictionaryCopy, "shouldStashPictureInPictureIfNeeded");
    v8->_presentationMode = xpc_dictionary_get_int64(dictionaryCopy, "presentationMode");
    v8->_initialSupportedInterfaceOrientations = xpc_dictionary_get_int64(dictionaryCopy, "initialSupportedInterfaceOrientations");
    objc_opt_class();
    v15 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
    preferredSceneDeactivationReason = v8->_preferredSceneDeactivationReason;
    v8->_preferredSceneDeactivationReason = v15;

    v8->_shouldEmbedOverShieldedApps = xpc_dictionary_get_BOOL(dictionaryCopy, "shouldEmbedOverShieldedApps");
  }

  return v8;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  if (self->_reason)
  {
    BSSerializeStringToXPCDictionaryWithKey();
  }

  if (self->_legacyAlertOptions)
  {
    BSSerializeCFValueToXPCDictionaryWithKey();
  }

  if (self->_activityContinuationIdentifier)
  {
    BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
  }

  if ([(NSSet *)self->_actions count])
  {
    BSSerializeSetToXPCDictionaryWithKey();
  }

  if (self->_presentationTarget)
  {
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }

  if (self->_userInfo)
  {
    BSSerializeCFValueToXPCDictionaryWithKey();
  }

  v4 = xdict;
  if (self->_preferredSceneDeactivationReason)
  {
    BSSerializeNSSecureEncodableObjectToXPCDictionaryWithKey();
    v4 = xdict;
  }

  xpc_dictionary_set_BOOL(v4, "activatingForSiri", self->_activatingForSiri);
  xpc_dictionary_set_BOOL(xdict, "switcherEligible", self->_switcherEligible);
  xpc_dictionary_set_BOOL(xdict, "shouldInvalidateWhenDeactivated", self->_shouldInvalidateWhenDeactivated);
  xpc_dictionary_set_BOOL(xdict, "shouldDismissPresentedBanners", self->_shouldDismissPresentedBanners);
  xpc_dictionary_set_BOOL(xdict, "shouldStashPictureInPictureIfNeeded", self->_shouldStashPictureInPictureIfNeeded);
  xpc_dictionary_set_int64(xdict, "presentationMode", self->_presentationMode);
  xpc_dictionary_set_int64(xdict, "initialSupportedInterfaceOrientations", self->_initialSupportedInterfaceOrientations);
  xpc_dictionary_set_BOOL(xdict, "shouldEmbedOverShieldedApps", self->_shouldEmbedOverShieldedApps);
}

id __59__SBSRemoteAlertActivationContext_encodeWithXPCDictionary___block_invoke()
{
  v0 = BSCreateSerializedBSXPCEncodableObject();

  return v0;
}

- (SBSRemoteAlertActivationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"actions"];

  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"presentationTarget"];

  if (v8)
  {
    [MEMORY[0x1E695DFD8] setWithArray:v8];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v11 = ;
  v12 = [(SBSRemoteAlertActivationContext *)self initWithActions:v11 presentationTarget:v10];

  if (v12)
  {
    v13 = [coderCopy decodePropertyListForKey:@"legacyOptions"];
    if ([v13 isNSDictionary])
    {
      objc_storeStrong(&v12->_legacyAlertOptions, v13);
    }

    v14 = [coderCopy decodePropertyListForKey:@"userInfo"];
    if ([v14 isNSDictionary])
    {
      objc_storeStrong(&v12->_userInfo, v14);
    }

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v12->_reason;
    v12->_reason = v15;

    v12->_activatingForSiri = [coderCopy decodeBoolForKey:@"activatingForSiri"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activityContinuationIdentifier"];
    activityContinuationIdentifier = v12->_activityContinuationIdentifier;
    v12->_activityContinuationIdentifier = v17;

    v12->_switcherEligible = [coderCopy decodeBoolForKey:@"switcherEligible"];
    v12->_shouldInvalidateWhenDeactivated = [coderCopy decodeBoolForKey:@"shouldInvalidateWhenDeactivated"];
    v12->_shouldDismissPresentedBanners = [coderCopy decodeBoolForKey:@"shouldDismissPresentedBanners"];
    v12->_shouldStashPictureInPictureIfNeeded = [coderCopy decodeBoolForKey:@"shouldStashPictureInPictureIfNeeded"];
    v12->_presentationMode = [coderCopy decodeIntegerForKey:@"presentationMode"];
    v12->_initialSupportedInterfaceOrientations = [coderCopy decodeIntegerForKey:@"initialSupportedInterfaceOrientations"];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredSceneDeactivationReason"];
    preferredSceneDeactivationReason = v12->_preferredSceneDeactivationReason;
    v12->_preferredSceneDeactivationReason = v19;

    v12->_shouldEmbedOverShieldedApps = [coderCopy decodeBoolForKey:@"shouldEmbedOverShieldedApps"];
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actions = self->_actions;
  v14 = coderCopy;
  if (actions)
  {
    allObjects = [(NSSet *)actions allObjects];
    [v14 encodeObject:allObjects forKey:@"actions"];
  }

  activityContinuationIdentifier = self->_activityContinuationIdentifier;
  if (activityContinuationIdentifier)
  {
    [v14 encodeObject:activityContinuationIdentifier forKey:@"activityContinuationIdentifier"];
  }

  legacyAlertOptions = self->_legacyAlertOptions;
  v9 = v14;
  if (legacyAlertOptions)
  {
    [v14 encodeObject:legacyAlertOptions forKey:@"legacyOptions"];
    v9 = v14;
  }

  reason = self->_reason;
  if (reason)
  {
    [v14 encodeObject:reason forKey:@"reason"];
    v9 = v14;
  }

  presentationTarget = self->_presentationTarget;
  if (presentationTarget)
  {
    [v14 encodeObject:presentationTarget forKey:@"presentationTarget"];
    v9 = v14;
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v14 encodeObject:userInfo forKey:@"userInfo"];
    v9 = v14;
  }

  preferredSceneDeactivationReason = self->_preferredSceneDeactivationReason;
  if (preferredSceneDeactivationReason)
  {
    [v14 encodeObject:preferredSceneDeactivationReason forKey:@"preferredSceneDeactivationReason"];
    v9 = v14;
  }

  [v9 encodeBool:self->_activatingForSiri forKey:@"activatingForSiri"];
  [v14 encodeBool:self->_switcherEligible forKey:@"switcherEligible"];
  [v14 encodeBool:self->_shouldEmbedOverShieldedApps forKey:@"shouldEmbedOverShieldedApps"];
  [v14 encodeBool:self->_shouldInvalidateWhenDeactivated forKey:@"shouldInvalidateWhenDeactivated"];
  [v14 encodeBool:self->_shouldDismissPresentedBanners forKey:@"shouldDismissPresentedBanners"];
  [v14 encodeBool:self->_shouldStashPictureInPictureIfNeeded forKey:@"shouldStashPictureInPictureIfNeeded"];
  [v14 encodeInteger:self->_presentationMode forKey:@"presentationMode"];
  [v14 encodeInteger:self->_initialSupportedInterfaceOrientations forKey:@"initialSupportedInterfaceOrientations"];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSRemoteAlertActivationContext *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSRemoteAlertActivationContext *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(SBSRemoteAlertActivationContext *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_reason withName:@"reason"];
  v6 = [succinctDescriptionBuilder appendObject:self->_actions withName:@"actions"];
  v7 = [succinctDescriptionBuilder appendObject:self->_activityContinuationIdentifier withName:@"activityContinuationIdentifier" skipIfNil:1];
  v8 = [succinctDescriptionBuilder appendObject:self->_legacyAlertOptions withName:@"legacyAlertOptions" skipIfNil:1];
  v9 = [(SBSRemoteAlertPresentationTarget *)self->_presentationTarget description];
  v10 = [succinctDescriptionBuilder appendObject:v9 withName:@"presentationTarget"];

  v11 = [succinctDescriptionBuilder appendBool:self->_shouldEmbedOverShieldedApps withName:@"shouldEmbedOverShieldedApps" ifEqualTo:1];
  v12 = [succinctDescriptionBuilder appendBool:self->_activatingForSiri withName:@"activatingForSiri"];
  v13 = [succinctDescriptionBuilder appendBool:self->_shouldInvalidateWhenDeactivated withName:@"shouldInvalidateWhenDeactivated"];
  v14 = [succinctDescriptionBuilder appendBool:self->_shouldDismissPresentedBanners withName:@"shouldDismissPresentedBanners" ifEqualTo:1];
  v15 = [succinctDescriptionBuilder appendBool:self->_shouldStashPictureInPictureIfNeeded withName:@"shouldStashPictureInPictureIfNeeded" ifEqualTo:1];
  v16 = [succinctDescriptionBuilder appendInteger:self->_presentationMode withName:@"presentationMode"];
  if (self->_initialSupportedInterfaceOrientations)
  {
    v17 = BSInterfaceOrientationMaskDescription();
    v18 = [succinctDescriptionBuilder appendObject:v17 withName:@"initialSupportedInterfaceOrientations"];
  }

  v19 = [(NSDictionary *)self->_userInfo description];
  v20 = [succinctDescriptionBuilder appendObject:v19 withName:0];

  return succinctDescriptionBuilder;
}

- (void)setLegacyAlertOptions:(id)options
{
  optionsCopy = options;
  legacyAlertOptions = self->_legacyAlertOptions;
  if (legacyAlertOptions != optionsCopy)
  {
    v13 = optionsCopy;
    if (![(NSDictionary *)legacyAlertOptions isEqualToDictionary:optionsCopy])
    {
      v6 = [(NSDictionary *)v13 copy];
      v7 = self->_legacyAlertOptions;
      self->_legacyAlertOptions = v6;

      if (self->_legacyAlertOptions)
      {
        reason = [(SBSRemoteAlertActivationContext *)self reason];

        if (!reason)
        {
          v9 = [(NSDictionary *)self->_legacyAlertOptions bs_safeStringForKey:@"CustomActivationReason"];
          [(SBSRemoteAlertActivationContext *)self setReason:v9];
        }

        activityContinuationIdentifier = [(SBSRemoteAlertActivationContext *)self activityContinuationIdentifier];

        if (!activityContinuationIdentifier)
        {
          v11 = [(NSDictionary *)self->_legacyAlertOptions bs_safeStringForKey:@"ActivityContinuationIdentifier"];
          if (v11)
          {
            v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v11];
            if (v12)
            {
              [(SBSRemoteAlertActivationContext *)self setActivityContinuationIdentifier:v12];
            }
          }
        }

        [(SBSRemoteAlertActivationContext *)self setActivatingForSiri:[(NSDictionary *)self->_legacyAlertOptions bs_BOOLForKey:@"ActivateForAssistant"]];
      }
    }
  }

  MEMORY[0x1EEE66BB8]();
}

@end