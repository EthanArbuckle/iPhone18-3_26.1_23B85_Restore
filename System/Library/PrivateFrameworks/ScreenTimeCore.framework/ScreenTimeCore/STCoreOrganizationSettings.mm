@interface STCoreOrganizationSettings
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error;
+ (id)fetchResultsRequestsForChangesToOrganizationSettingsForUserWithDSID:(id)d;
+ (id)keyPathsForValuesAffectingIsCommunicationSafetyRestricted;
- (BOOL)isCommunicationSafetyReceivingRestricted;
- (BOOL)isCommunicationSafetyRestricted;
- (BOOL)isCommunicationSafetySendingRestricted;
- (BOOL)isEyeReliefEnabled;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (NSString)description;
- (id)defaultSettingsForFamilyMemberOfType:(id)type;
- (id)dictionaryRepresentation;
- (int64_t)contentPrivacySiriImageGenerationRestriction;
- (void)_changeAppLimitsFromAskToWarn:(id)warn;
- (void)setContentPrivacySiriImageGenerationRestriction:(int64_t)restriction;
@end

@implementation STCoreOrganizationSettings

- (BOOL)isCommunicationSafetySendingRestricted
{
  v2 = [(STCoreOrganizationSettings *)self primitiveValueForKey:@"isCommunicationSafetySendingRestricted"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isCommunicationSafetyReceivingRestricted
{
  v2 = [(STCoreOrganizationSettings *)self primitiveValueForKey:@"isCommunicationSafetyReceivingRestricted"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (id)fetchResultsRequestsForChangesToOrganizationSettingsForUserWithDSID:(id)d
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"user.dsid", d];
  v4 = +[STLocalOrganizationSettings fetchRequest];
  [v4 setPredicate:v3];
  v5 = +[STiCloudOrganizationSettings fetchRequest];
  [v5 setPredicate:v3];
  v6 = +[STFamilyOrganizationSettings fetchRequest];
  [v6 setPredicate:v3];
  v7 = [STFetchResultsRequest requestWithFetchRequest:v4];
  v13[0] = v7;
  v8 = [STFetchResultsRequest requestWithFetchRequest:v5];
  v13[1] = v8;
  v9 = [STFetchResultsRequest requestWithFetchRequest:v6];
  v13[2] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)isEyeReliefEnabled
{
  v2 = [(STCoreOrganizationSettings *)self primitiveValueForKey:@"isEyeReliefEnabled"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isCommunicationSafetyRestricted
{
  isCommunicationSafetySendingRestricted = [(STCoreOrganizationSettings *)self isCommunicationSafetySendingRestricted];
  if (isCommunicationSafetySendingRestricted)
  {

    LOBYTE(isCommunicationSafetySendingRestricted) = [(STCoreOrganizationSettings *)self isCommunicationSafetyReceivingRestricted];
  }

  return isCommunicationSafetySendingRestricted;
}

+ (id)keyPathsForValuesAffectingIsCommunicationSafetyRestricted
{
  keyPathsForValuesAffectingIsCommunicationSafetySendingRestricted = [self keyPathsForValuesAffectingIsCommunicationSafetySendingRestricted];
  keyPathsForValuesAffectingIsCommunicationSafetyReceivingRestricted = [self keyPathsForValuesAffectingIsCommunicationSafetyReceivingRestricted];
  v5 = [keyPathsForValuesAffectingIsCommunicationSafetySendingRestricted setByAddingObjectsFromSet:keyPathsForValuesAffectingIsCommunicationSafetyReceivingRestricted];

  return v5;
}

- (int64_t)contentPrivacySiriImageGenerationRestriction
{
  v2 = [(STCoreOrganizationSettings *)self primitiveValueForKey:@"contentPrivacySiriImageGenerationRestriction"];
  v3 = v2;
  if (v2)
  {
    longLongValue = [v2 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (void)setContentPrivacySiriImageGenerationRestriction:(int64_t)restriction
{
  [(STCoreOrganizationSettings *)self willChangeValueForKey:@"contentPrivacySiriImageGenerationRestriction"];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:restriction];
  [(STCoreOrganizationSettings *)self setPrimitiveValue:v5 forKey:@"contentPrivacySiriImageGenerationRestriction"];

  [(STCoreOrganizationSettings *)self didChangeValueForKey:@"contentPrivacySiriImageGenerationRestriction"];
}

- (id)defaultSettingsForFamilyMemberOfType:(id)type
{
  v7[3] = *MEMORY[0x1E69E9840];
  if ([type isEqualToString:@"Child"])
  {
    v6[0] = @"isEyeReliefEnabled";
    v6[1] = @"isCommunicationSafetySendingRestricted";
    v7[0] = &unk_1F3059B10;
    v7[1] = &unk_1F3059B10;
    v6[2] = @"isCommunicationSafetyReceivingRestricted";
    v7[2] = &unk_1F3059B10;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)representation inContext:(id)context error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [representation objectForKeyedSubscript:@"user"];
  fetchRequest = [self fetchRequest];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"user.dsid", v9];
  [fetchRequest setPredicate:v11];

  v12 = [fetchRequest execute:error];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  firstObject = [v12 firstObject];
  if (!firstObject)
  {
    v15 = [STCoreUser fetchUserWithDSID:v9 inContext:contextCopy error:error];
    if (v15)
    {
      v16 = v15;
      firstObject = [[self alloc] initWithContext:contextCopy];
      [firstObject setUser:v16];

      goto LABEL_5;
    }

LABEL_8:
    firstObject = 0;
    goto LABEL_9;
  }

LABEL_5:
  v17 = +[STLog persistence];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = firstObject;
    _os_log_impl(&dword_1B831F000, v17, OS_LOG_TYPE_DEFAULT, "Settings created via the legacy path. Settings: %@", buf, 0xCu);
  }

LABEL_9:
  v18 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  v4 = [representation objectForKeyedSubscript:@"modificationDate"];
  if (v4)
  {
    [(STCoreOrganizationSettings *)self setModificationDate:v4];
  }

  return 1;
}

- (id)dictionaryRepresentation
{
  v22.receiver = self;
  v22.super_class = STCoreOrganizationSettings;
  dictionaryRepresentation = [(STUniquedManagedObject *)&v22 dictionaryRepresentation];
  user = [(STCoreOrganizationSettings *)self user];
  dsid = [user dsid];
  [dictionaryRepresentation setObject:dsid forKeyedSubscript:@"user"];

  passcode = [(STCoreOrganizationSettings *)self passcode];
  [dictionaryRepresentation setObject:passcode forKeyedSubscript:@"passcode"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreOrganizationSettings allLimitsEnabled](self, "allLimitsEnabled")}];
  [dictionaryRepresentation setObject:v7 forKeyedSubscript:@"allLimitsEnabled"];

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[STCoreOrganizationSettings defaultUserPolicies](self, "defaultUserPolicies")}];
  [dictionaryRepresentation setObject:v8 forKeyedSubscript:@"defaultUserPolicies"];

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[STCoreOrganizationSettings communicationPolicy](self, "communicationPolicy")}];
  [dictionaryRepresentation setObject:v9 forKeyedSubscript:@"communicationPolicy"];

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[STCoreOrganizationSettings communicationWhileLimitedPolicy](self, "communicationWhileLimitedPolicy")}];
  [dictionaryRepresentation setObject:v10 forKeyedSubscript:@"communicationWhileLimitedPolicy"];

  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[STCoreOrganizationSettings contactManagementState](self, "contactManagementState")}];
  [dictionaryRepresentation setObject:v11 forKeyedSubscript:@"contactManagementState"];

  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[STCoreOrganizationSettings contentPrivacySiriImageGenerationRestriction](self, "contentPrivacySiriImageGenerationRestriction")}];
  [dictionaryRepresentation setObject:v12 forKeyedSubscript:@"contentPrivacySiriImageGenerationRestriction"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreOrganizationSettings isCommunicationSafetySendingRestricted](self, "isCommunicationSafetySendingRestricted")}];
  [dictionaryRepresentation setObject:v13 forKeyedSubscript:@"isCommunicationSafetySendingRestricted"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreOrganizationSettings isCommunicationSafetyReceivingRestricted](self, "isCommunicationSafetyReceivingRestricted")}];
  [dictionaryRepresentation setObject:v14 forKeyedSubscript:@"isCommunicationSafetyReceivingRestricted"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreOrganizationSettings isCommunicationSafetyNotificationEnabled](self, "isCommunicationSafetyNotificationEnabled")}];
  [dictionaryRepresentation setObject:v15 forKeyedSubscript:@"isCommunicationSafetyNotificationEnabled"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreOrganizationSettings isCommunicationSafetyAnalyticsEnabled](self, "isCommunicationSafetyAnalyticsEnabled")}];
  [dictionaryRepresentation setObject:v16 forKeyedSubscript:@"isCommunicationSafetyAnalyticsEnabled"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreOrganizationSettings isEyeReliefEnabled](self, "isEyeReliefEnabled")}];
  [dictionaryRepresentation setObject:v17 forKeyedSubscript:@"isEyeReliefEnabled"];

  modificationDate = [(STCoreOrganizationSettings *)self modificationDate];

  if (modificationDate)
  {
    modificationDate2 = [(STCoreOrganizationSettings *)self modificationDate];
    [dictionaryRepresentation setObject:modificationDate2 forKeyedSubscript:@"modificationDate"];
  }

  v20 = [dictionaryRepresentation copy];

  return v20;
}

- (void)_changeAppLimitsFromAskToWarn:(id)warn
{
  v31 = *MEMORY[0x1E69E9840];
  warnCopy = warn;
  type = [warnCopy type];
  if ([type isEqualToString:@"usage-limit"])
  {

    goto LABEL_4;
  }

  type2 = [warnCopy type];
  v6 = [type2 isEqualToString:@"downtime"];

  if (v6)
  {
LABEL_4:
    configurations = [warnCopy configurations];
    anyObject = [configurations anyObject];

    if (!anyObject)
    {
LABEL_31:

      goto LABEL_32;
    }

    payloadPlist = [anyObject payloadPlist];

    if (!payloadPlist)
    {
      v13 = +[STLog persistence];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [STCoreOrganizationSettings _changeAppLimitsFromAskToWarn:];
      }

      goto LABEL_30;
    }

    v10 = MEMORY[0x1E6996208];
    payloadPlist2 = [anyObject payloadPlist];
    v28 = 0;
    v12 = [v10 declarationForData:payloadPlist2 error:&v28];
    v13 = v28;

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v12;
        payloadMode = [v14 payloadMode];
        v16 = [payloadMode isEqualToString:*MEMORY[0x1E6996190]];

        if (v16)
        {
          v17 = MEMORY[0x1E69961A0];
LABEL_21:
          [v12 setPayloadMode:*v17];

          v23 = +[STLog persistence];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [anyObject identifier];
            *buf = 138543362;
            v30 = identifier;
            _os_log_impl(&dword_1B831F000, v23, OS_LOG_TYPE_DEFAULT, "Updating configuration payload %{public}@ from ask to warn", buf, 0xCu);
          }

          [v12 updateServerHash];
          v27 = v13;
          v14 = [v12 serializeAsDataWithError:&v27];
          v18 = v27;

          if (v14)
          {
            [anyObject setPayloadPlist:v14];
          }

          else
          {
            v25 = +[STLog persistence];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [STCoreOrganizationSettings _changeAppLimitsFromAskToWarn:anyObject];
            }
          }

          goto LABEL_28;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v12;
          payloadMode2 = [v14 payloadMode];
          v20 = [payloadMode2 isEqualToString:*MEMORY[0x1E69961B8]];

          if (v20)
          {
            v17 = MEMORY[0x1E69961C0];
            goto LABEL_21;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_29:

LABEL_30:
            goto LABEL_31;
          }

          v14 = v12;
          payloadMode3 = [v14 payloadMode];
          v22 = [payloadMode3 isEqualToString:*MEMORY[0x1E69961A8]];

          if (v22)
          {
            v17 = MEMORY[0x1E69961B0];
            goto LABEL_21;
          }
        }
      }
    }

    else
    {
      v14 = +[STLog persistence];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [STCoreOrganizationSettings _changeAppLimitsFromAskToWarn:anyObject];
      }
    }

    v18 = v13;
LABEL_28:

    v13 = v18;
    goto LABEL_29;
  }

LABEL_32:

  v26 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v8 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  user = [(STCoreOrganizationSettings *)self user];
  dsid = [user dsid];
  passcode = [(STCoreOrganizationSettings *)self passcode];
  v4 = [v8 stringWithFormat:@"<%@: %p> ({\n user: %@\n passcode enabled: %d\n allLimitsEnabled: %d\n defaultUserPolicies: %lu\n communicationPolicy: %lld\n communicationWhileLimitedPolicy: %lld\n contactManagementState: %lld\n contentPrivacySiriImageGenerationRestriction: %lld\n isCommunicationSafetySendingRestricted: %d\n isCommunicationSafetyReceivingRestricted: %d\n isCommunicationSafetyNotificationEnabled: %d\n isCommunicationSafetyAnalyticsEnabled: %d\n isEyeReliefEnabled: %d\n)}", v7, self, dsid, passcode != 0, -[STCoreOrganizationSettings allLimitsEnabled](self, "allLimitsEnabled"), -[STCoreOrganizationSettings defaultUserPolicies](self, "defaultUserPolicies"), -[STCoreOrganizationSettings communicationPolicy](self, "communicationPolicy"), -[STCoreOrganizationSettings communicationWhileLimitedPolicy](self, "communicationWhileLimitedPolicy"), -[STCoreOrganizationSettings contactManagementState](self, "contactManagementState"), -[STCoreOrganizationSettings contentPrivacySiriImageGenerationRestriction](self, "contentPrivacySiriImageGenerationRestriction"), -[STCoreOrganizationSettings isCommunicationSafetySendingRestricted](self, "isCommunicationSafetySendingRestricted"), -[STCoreOrganizationSettings isCommunicationSafetyReceivingRestricted](self, "isCommunicationSafetyReceivingRestricted"), -[STCoreOrganizationSettings isCommunicationSafetyNotificationEnabled](self, "isCommunicationSafetyNotificationEnabled"), -[STCoreOrganizationSettings isCommunicationSafetyAnalyticsEnabled](self, "isCommunicationSafetyAnalyticsEnabled"), -[STCoreOrganizationSettings isEyeReliefEnabled](self, "isEyeReliefEnabled")];

  return v4;
}

- (void)_changeAppLimitsFromAskToWarn:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3(&dword_1B831F000, v2, v3, "Failed to serialize configuration payload %{public}@: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_changeAppLimitsFromAskToWarn:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3(&dword_1B831F000, v2, v3, "Failed to deserialize configuration payload %{public}@: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_changeAppLimitsFromAskToWarn:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end