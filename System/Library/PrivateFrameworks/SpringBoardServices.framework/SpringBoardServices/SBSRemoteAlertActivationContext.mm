@interface SBSRemoteAlertActivationContext
+ (id)activationContextWithLegacyAlertOptions:(id)a3;
- (SBSRemoteAlertActivationContext)init;
- (SBSRemoteAlertActivationContext)initWithActions:(id)a3 presentationTarget:(id)a4 userInfo:(id)a5;
- (SBSRemoteAlertActivationContext)initWithCoder:(id)a3;
- (SBSRemoteAlertActivationContext)initWithXPCDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
- (void)setLegacyAlertOptions:(id)a3;
@end

@implementation SBSRemoteAlertActivationContext

- (SBSRemoteAlertActivationContext)init
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  v4 = [(SBSRemoteAlertActivationContext *)self initWithActions:v3];

  return v4;
}

- (SBSRemoteAlertActivationContext)initWithActions:(id)a3 presentationTarget:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = SBSRemoteAlertActivationContext;
  v11 = [(SBSRemoteAlertActivationContext *)&v20 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AAE8] mainBundle];
    v13 = [v12 bundleIdentifier];
    v11->_shouldEmbedOverShieldedApps = [v13 isEqualToString:@"com.apple.LocalAuthenticationUIService"];

    v14 = [v8 copy];
    actions = v11->_actions;
    v11->_actions = v14;

    objc_storeStrong(&v11->_presentationTarget, a4);
    v16 = [v10 copy];
    userInfo = v11->_userInfo;
    v11->_userInfo = v16;

    v11->_presentationMode = 0;
    preferredSceneDeactivationReason = v11->_preferredSceneDeactivationReason;
    v11->_preferredSceneDeactivationReason = &unk_1F05B4E98;
  }

  return v11;
}

+ (id)activationContextWithLegacyAlertOptions:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setLegacyAlertOptions:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithActions:presentationTarget:userInfo:", self->_actions, self->_presentationTarget, self->_userInfo}];
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

- (SBSRemoteAlertActivationContext)initWithXPCDictionary:(id)a3
{
  v4 = a3;
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

    v8->_activatingForSiri = xpc_dictionary_get_BOOL(v4, "activatingForSiri");
    objc_opt_class();
    v13 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
    activityContinuationIdentifier = v8->_activityContinuationIdentifier;
    v8->_activityContinuationIdentifier = v13;

    v8->_switcherEligible = xpc_dictionary_get_BOOL(v4, "switcherEligible");
    v8->_shouldInvalidateWhenDeactivated = xpc_dictionary_get_BOOL(v4, "shouldInvalidateWhenDeactivated");
    v8->_shouldDismissPresentedBanners = xpc_dictionary_get_BOOL(v4, "shouldDismissPresentedBanners");
    v8->_shouldStashPictureInPictureIfNeeded = xpc_dictionary_get_BOOL(v4, "shouldStashPictureInPictureIfNeeded");
    v8->_presentationMode = xpc_dictionary_get_int64(v4, "presentationMode");
    v8->_initialSupportedInterfaceOrientations = xpc_dictionary_get_int64(v4, "initialSupportedInterfaceOrientations");
    objc_opt_class();
    v15 = BSDeserializeNSSecureEncodableObjectOfClassFromXPCDictionaryWithKey();
    preferredSceneDeactivationReason = v8->_preferredSceneDeactivationReason;
    v8->_preferredSceneDeactivationReason = v15;

    v8->_shouldEmbedOverShieldedApps = xpc_dictionary_get_BOOL(v4, "shouldEmbedOverShieldedApps");
  }

  return v8;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
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

- (SBSRemoteAlertActivationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"actions"];

  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"presentationTarget"];

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
    v13 = [v4 decodePropertyListForKey:@"legacyOptions"];
    if ([v13 isNSDictionary])
    {
      objc_storeStrong(&v12->_legacyAlertOptions, v13);
    }

    v14 = [v4 decodePropertyListForKey:@"userInfo"];
    if ([v14 isNSDictionary])
    {
      objc_storeStrong(&v12->_userInfo, v14);
    }

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v12->_reason;
    v12->_reason = v15;

    v12->_activatingForSiri = [v4 decodeBoolForKey:@"activatingForSiri"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityContinuationIdentifier"];
    activityContinuationIdentifier = v12->_activityContinuationIdentifier;
    v12->_activityContinuationIdentifier = v17;

    v12->_switcherEligible = [v4 decodeBoolForKey:@"switcherEligible"];
    v12->_shouldInvalidateWhenDeactivated = [v4 decodeBoolForKey:@"shouldInvalidateWhenDeactivated"];
    v12->_shouldDismissPresentedBanners = [v4 decodeBoolForKey:@"shouldDismissPresentedBanners"];
    v12->_shouldStashPictureInPictureIfNeeded = [v4 decodeBoolForKey:@"shouldStashPictureInPictureIfNeeded"];
    v12->_presentationMode = [v4 decodeIntegerForKey:@"presentationMode"];
    v12->_initialSupportedInterfaceOrientations = [v4 decodeIntegerForKey:@"initialSupportedInterfaceOrientations"];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredSceneDeactivationReason"];
    preferredSceneDeactivationReason = v12->_preferredSceneDeactivationReason;
    v12->_preferredSceneDeactivationReason = v19;

    v12->_shouldEmbedOverShieldedApps = [v4 decodeBoolForKey:@"shouldEmbedOverShieldedApps"];
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  actions = self->_actions;
  v14 = v4;
  if (actions)
  {
    v6 = [(NSSet *)actions allObjects];
    [v14 encodeObject:v6 forKey:@"actions"];
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
  v2 = [(SBSRemoteAlertActivationContext *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSRemoteAlertActivationContext *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBSRemoteAlertActivationContext *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_reason withName:@"reason"];
  v6 = [v4 appendObject:self->_actions withName:@"actions"];
  v7 = [v4 appendObject:self->_activityContinuationIdentifier withName:@"activityContinuationIdentifier" skipIfNil:1];
  v8 = [v4 appendObject:self->_legacyAlertOptions withName:@"legacyAlertOptions" skipIfNil:1];
  v9 = [(SBSRemoteAlertPresentationTarget *)self->_presentationTarget description];
  v10 = [v4 appendObject:v9 withName:@"presentationTarget"];

  v11 = [v4 appendBool:self->_shouldEmbedOverShieldedApps withName:@"shouldEmbedOverShieldedApps" ifEqualTo:1];
  v12 = [v4 appendBool:self->_activatingForSiri withName:@"activatingForSiri"];
  v13 = [v4 appendBool:self->_shouldInvalidateWhenDeactivated withName:@"shouldInvalidateWhenDeactivated"];
  v14 = [v4 appendBool:self->_shouldDismissPresentedBanners withName:@"shouldDismissPresentedBanners" ifEqualTo:1];
  v15 = [v4 appendBool:self->_shouldStashPictureInPictureIfNeeded withName:@"shouldStashPictureInPictureIfNeeded" ifEqualTo:1];
  v16 = [v4 appendInteger:self->_presentationMode withName:@"presentationMode"];
  if (self->_initialSupportedInterfaceOrientations)
  {
    v17 = BSInterfaceOrientationMaskDescription();
    v18 = [v4 appendObject:v17 withName:@"initialSupportedInterfaceOrientations"];
  }

  v19 = [(NSDictionary *)self->_userInfo description];
  v20 = [v4 appendObject:v19 withName:0];

  return v4;
}

- (void)setLegacyAlertOptions:(id)a3
{
  v4 = a3;
  legacyAlertOptions = self->_legacyAlertOptions;
  if (legacyAlertOptions != v4)
  {
    v13 = v4;
    if (![(NSDictionary *)legacyAlertOptions isEqualToDictionary:v4])
    {
      v6 = [(NSDictionary *)v13 copy];
      v7 = self->_legacyAlertOptions;
      self->_legacyAlertOptions = v6;

      if (self->_legacyAlertOptions)
      {
        v8 = [(SBSRemoteAlertActivationContext *)self reason];

        if (!v8)
        {
          v9 = [(NSDictionary *)self->_legacyAlertOptions bs_safeStringForKey:@"CustomActivationReason"];
          [(SBSRemoteAlertActivationContext *)self setReason:v9];
        }

        v10 = [(SBSRemoteAlertActivationContext *)self activityContinuationIdentifier];

        if (!v10)
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