@interface STCoreOrganizationSettings
+ (id)fetchOrCreateWithDictionaryRepresentation:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)fetchResultsRequestsForChangesToOrganizationSettingsForUserWithDSID:(id)a3;
+ (id)keyPathsForValuesAffectingIsCommunicationSafetyRestricted;
- (BOOL)isCommunicationSafetyReceivingRestricted;
- (BOOL)isCommunicationSafetyRestricted;
- (BOOL)isCommunicationSafetySendingRestricted;
- (BOOL)isEyeReliefEnabled;
- (BOOL)updateWithDictionaryRepresentation:(id)a3;
- (NSString)description;
- (id)defaultSettingsForFamilyMemberOfType:(id)a3;
- (id)dictionaryRepresentation;
- (int64_t)contentPrivacySiriImageGenerationRestriction;
- (void)_changeAppLimitsFromAskToWarn:(id)a3;
- (void)setContentPrivacySiriImageGenerationRestriction:(int64_t)a3;
@end

@implementation STCoreOrganizationSettings

- (BOOL)isCommunicationSafetySendingRestricted
{
  v2 = [(STCoreOrganizationSettings *)self primitiveValueForKey:@"isCommunicationSafetySendingRestricted"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isCommunicationSafetyReceivingRestricted
{
  v2 = [(STCoreOrganizationSettings *)self primitiveValueForKey:@"isCommunicationSafetyReceivingRestricted"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)fetchResultsRequestsForChangesToOrganizationSettingsForUserWithDSID:(id)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"user.dsid", a3];
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
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isCommunicationSafetyRestricted
{
  v3 = [(STCoreOrganizationSettings *)self isCommunicationSafetySendingRestricted];
  if (v3)
  {

    LOBYTE(v3) = [(STCoreOrganizationSettings *)self isCommunicationSafetyReceivingRestricted];
  }

  return v3;
}

+ (id)keyPathsForValuesAffectingIsCommunicationSafetyRestricted
{
  v3 = [a1 keyPathsForValuesAffectingIsCommunicationSafetySendingRestricted];
  v4 = [a1 keyPathsForValuesAffectingIsCommunicationSafetyReceivingRestricted];
  v5 = [v3 setByAddingObjectsFromSet:v4];

  return v5;
}

- (int64_t)contentPrivacySiriImageGenerationRestriction
{
  v2 = [(STCoreOrganizationSettings *)self primitiveValueForKey:@"contentPrivacySiriImageGenerationRestriction"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 longLongValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setContentPrivacySiriImageGenerationRestriction:(int64_t)a3
{
  [(STCoreOrganizationSettings *)self willChangeValueForKey:@"contentPrivacySiriImageGenerationRestriction"];
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  [(STCoreOrganizationSettings *)self setPrimitiveValue:v5 forKey:@"contentPrivacySiriImageGenerationRestriction"];

  [(STCoreOrganizationSettings *)self didChangeValueForKey:@"contentPrivacySiriImageGenerationRestriction"];
}

- (id)defaultSettingsForFamilyMemberOfType:(id)a3
{
  v7[3] = *MEMORY[0x1E69E9840];
  if ([a3 isEqualToString:@"Child"])
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

+ (id)fetchOrCreateWithDictionaryRepresentation:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [a3 objectForKeyedSubscript:@"user"];
  v10 = [a1 fetchRequest];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"user.dsid", v9];
  [v10 setPredicate:v11];

  v12 = [v10 execute:a5];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  v14 = [v12 firstObject];
  if (!v14)
  {
    v15 = [STCoreUser fetchUserWithDSID:v9 inContext:v8 error:a5];
    if (v15)
    {
      v16 = v15;
      v14 = [[a1 alloc] initWithContext:v8];
      [v14 setUser:v16];

      goto LABEL_5;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

LABEL_5:
  v17 = +[STLog persistence];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v14;
    _os_log_impl(&dword_1B831F000, v17, OS_LOG_TYPE_DEFAULT, "Settings created via the legacy path. Settings: %@", buf, 0xCu);
  }

LABEL_9:
  v18 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)updateWithDictionaryRepresentation:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"modificationDate"];
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
  v3 = [(STUniquedManagedObject *)&v22 dictionaryRepresentation];
  v4 = [(STCoreOrganizationSettings *)self user];
  v5 = [v4 dsid];
  [v3 setObject:v5 forKeyedSubscript:@"user"];

  v6 = [(STCoreOrganizationSettings *)self passcode];
  [v3 setObject:v6 forKeyedSubscript:@"passcode"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreOrganizationSettings allLimitsEnabled](self, "allLimitsEnabled")}];
  [v3 setObject:v7 forKeyedSubscript:@"allLimitsEnabled"];

  v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[STCoreOrganizationSettings defaultUserPolicies](self, "defaultUserPolicies")}];
  [v3 setObject:v8 forKeyedSubscript:@"defaultUserPolicies"];

  v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[STCoreOrganizationSettings communicationPolicy](self, "communicationPolicy")}];
  [v3 setObject:v9 forKeyedSubscript:@"communicationPolicy"];

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[STCoreOrganizationSettings communicationWhileLimitedPolicy](self, "communicationWhileLimitedPolicy")}];
  [v3 setObject:v10 forKeyedSubscript:@"communicationWhileLimitedPolicy"];

  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[STCoreOrganizationSettings contactManagementState](self, "contactManagementState")}];
  [v3 setObject:v11 forKeyedSubscript:@"contactManagementState"];

  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[STCoreOrganizationSettings contentPrivacySiriImageGenerationRestriction](self, "contentPrivacySiriImageGenerationRestriction")}];
  [v3 setObject:v12 forKeyedSubscript:@"contentPrivacySiriImageGenerationRestriction"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreOrganizationSettings isCommunicationSafetySendingRestricted](self, "isCommunicationSafetySendingRestricted")}];
  [v3 setObject:v13 forKeyedSubscript:@"isCommunicationSafetySendingRestricted"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreOrganizationSettings isCommunicationSafetyReceivingRestricted](self, "isCommunicationSafetyReceivingRestricted")}];
  [v3 setObject:v14 forKeyedSubscript:@"isCommunicationSafetyReceivingRestricted"];

  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreOrganizationSettings isCommunicationSafetyNotificationEnabled](self, "isCommunicationSafetyNotificationEnabled")}];
  [v3 setObject:v15 forKeyedSubscript:@"isCommunicationSafetyNotificationEnabled"];

  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreOrganizationSettings isCommunicationSafetyAnalyticsEnabled](self, "isCommunicationSafetyAnalyticsEnabled")}];
  [v3 setObject:v16 forKeyedSubscript:@"isCommunicationSafetyAnalyticsEnabled"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreOrganizationSettings isEyeReliefEnabled](self, "isEyeReliefEnabled")}];
  [v3 setObject:v17 forKeyedSubscript:@"isEyeReliefEnabled"];

  v18 = [(STCoreOrganizationSettings *)self modificationDate];

  if (v18)
  {
    v19 = [(STCoreOrganizationSettings *)self modificationDate];
    [v3 setObject:v19 forKeyedSubscript:@"modificationDate"];
  }

  v20 = [v3 copy];

  return v20;
}

- (void)_changeAppLimitsFromAskToWarn:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 type];
  if ([v4 isEqualToString:@"usage-limit"])
  {

    goto LABEL_4;
  }

  v5 = [v3 type];
  v6 = [v5 isEqualToString:@"downtime"];

  if (v6)
  {
LABEL_4:
    v7 = [v3 configurations];
    v8 = [v7 anyObject];

    if (!v8)
    {
LABEL_31:

      goto LABEL_32;
    }

    v9 = [v8 payloadPlist];

    if (!v9)
    {
      v13 = +[STLog persistence];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [STCoreOrganizationSettings _changeAppLimitsFromAskToWarn:];
      }

      goto LABEL_30;
    }

    v10 = MEMORY[0x1E6996208];
    v11 = [v8 payloadPlist];
    v28 = 0;
    v12 = [v10 declarationForData:v11 error:&v28];
    v13 = v28;

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v12;
        v15 = [v14 payloadMode];
        v16 = [v15 isEqualToString:*MEMORY[0x1E6996190]];

        if (v16)
        {
          v17 = MEMORY[0x1E69961A0];
LABEL_21:
          [v12 setPayloadMode:*v17];

          v23 = +[STLog persistence];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v8 identifier];
            *buf = 138543362;
            v30 = v24;
            _os_log_impl(&dword_1B831F000, v23, OS_LOG_TYPE_DEFAULT, "Updating configuration payload %{public}@ from ask to warn", buf, 0xCu);
          }

          [v12 updateServerHash];
          v27 = v13;
          v14 = [v12 serializeAsDataWithError:&v27];
          v18 = v27;

          if (v14)
          {
            [v8 setPayloadPlist:v14];
          }

          else
          {
            v25 = +[STLog persistence];
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [STCoreOrganizationSettings _changeAppLimitsFromAskToWarn:v8];
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
          v19 = [v14 payloadMode];
          v20 = [v19 isEqualToString:*MEMORY[0x1E69961B8]];

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
          v21 = [v14 payloadMode];
          v22 = [v21 isEqualToString:*MEMORY[0x1E69961A8]];

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
        [STCoreOrganizationSettings _changeAppLimitsFromAskToWarn:v8];
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
  v9 = [(STCoreOrganizationSettings *)self user];
  v6 = [v9 dsid];
  v3 = [(STCoreOrganizationSettings *)self passcode];
  v4 = [v8 stringWithFormat:@"<%@: %p> ({\n user: %@\n passcode enabled: %d\n allLimitsEnabled: %d\n defaultUserPolicies: %lu\n communicationPolicy: %lld\n communicationWhileLimitedPolicy: %lld\n contactManagementState: %lld\n contentPrivacySiriImageGenerationRestriction: %lld\n isCommunicationSafetySendingRestricted: %d\n isCommunicationSafetyReceivingRestricted: %d\n isCommunicationSafetyNotificationEnabled: %d\n isCommunicationSafetyAnalyticsEnabled: %d\n isEyeReliefEnabled: %d\n)}", v7, self, v6, v3 != 0, -[STCoreOrganizationSettings allLimitsEnabled](self, "allLimitsEnabled"), -[STCoreOrganizationSettings defaultUserPolicies](self, "defaultUserPolicies"), -[STCoreOrganizationSettings communicationPolicy](self, "communicationPolicy"), -[STCoreOrganizationSettings communicationWhileLimitedPolicy](self, "communicationWhileLimitedPolicy"), -[STCoreOrganizationSettings contactManagementState](self, "contactManagementState"), -[STCoreOrganizationSettings contentPrivacySiriImageGenerationRestriction](self, "contentPrivacySiriImageGenerationRestriction"), -[STCoreOrganizationSettings isCommunicationSafetySendingRestricted](self, "isCommunicationSafetySendingRestricted"), -[STCoreOrganizationSettings isCommunicationSafetyReceivingRestricted](self, "isCommunicationSafetyReceivingRestricted"), -[STCoreOrganizationSettings isCommunicationSafetyNotificationEnabled](self, "isCommunicationSafetyNotificationEnabled"), -[STCoreOrganizationSettings isCommunicationSafetyAnalyticsEnabled](self, "isCommunicationSafetyAnalyticsEnabled"), -[STCoreOrganizationSettings isEyeReliefEnabled](self, "isEyeReliefEnabled")];

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