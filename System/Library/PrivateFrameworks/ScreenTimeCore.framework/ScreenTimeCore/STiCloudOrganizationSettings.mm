@interface STiCloudOrganizationSettings
- (BOOL)_validateNumberOfCloudSettings:(id)settings;
- (BOOL)_validateUser:(id)user;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (id)computeUniqueIdentifier;
- (id)dictionaryRepresentation;
- (void)didChangeValueForKey:(id)key;
@end

@implementation STiCloudOrganizationSettings

- (id)computeUniqueIdentifier
{
  v2 = objc_opt_class();

  return [v2 serializableClassName];
}

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v46.receiver = self;
  v46.super_class = STiCloudOrganizationSettings;
  if ([(STCoreOrganizationSettings *)&v46 updateWithDictionaryRepresentation:representationCopy])
  {
    managedObjectContext = [(STiCloudOrganizationSettings *)self managedObjectContext];
    v45 = 0;
    v6 = [STiCloudOrganization fetchOrCreateiCloudOrganizationWithContext:managedObjectContext error:&v45];
    v7 = v45;

    v8 = v6 != 0;
    if (v6)
    {
      [(STiCloudOrganizationSettings *)self setOrganization:v6];
      v9 = [representationCopy objectForKeyedSubscript:@"passcode"];
      [(STiCloudOrganizationSettings *)self setPasscode:v9];

      v10 = [representationCopy objectForKeyedSubscript:@"recoveryAltDSID"];
      [(STiCloudOrganizationSettings *)self setRecoveryAltDSID:v10];

      v11 = [representationCopy objectForKeyedSubscript:@"allLimitsEnabled"];
      v12 = v11;
      if (v11)
      {
        [(STiCloudOrganizationSettings *)self setAllLimitsEnabled:[v11 BOOLValue]];
      }

      v13 = [representationCopy objectForKeyedSubscript:@"defaultUserPolicies"];
      v14 = v13;
      if (v13)
      {
        -[STiCloudOrganizationSettings setDefaultUserPolicies:](self, "setDefaultUserPolicies:", [v13 longLongValue]);
      }

      v15 = [representationCopy objectForKeyedSubscript:@"communicationPolicy"];
      v16 = v15;
      if (v15)
      {
        -[STiCloudOrganizationSettings setCommunicationPolicy:](self, "setCommunicationPolicy:", [v15 longLongValue]);
      }

      v17 = [representationCopy objectForKeyedSubscript:@"communicationWhileLimitedPolicy"];
      v18 = v17;
      if (v17)
      {
        -[STiCloudOrganizationSettings setCommunicationWhileLimitedPolicy:](self, "setCommunicationWhileLimitedPolicy:", [v17 longLongValue]);
      }

      v42 = v14;
      v43 = v12;
      v19 = [representationCopy objectForKeyedSubscript:@"contactManagementState"];
      v20 = v19;
      if (v19)
      {
        longLongValue = [v19 longLongValue];
        if (longLongValue != [(STiCloudOrganizationSettings *)self contactManagementState])
        {
          -[STiCloudOrganizationSettings setContactManagementState:](self, "setContactManagementState:", [v20 longLongValue]);
        }
      }

      v41 = v16;
      v22 = [representationCopy objectForKeyedSubscript:{@"contentPrivacySiriImageGenerationRestriction", v20}];
      v23 = v22;
      if (v22)
      {
        longLongValue2 = [v22 longLongValue];
        if (longLongValue2 != [(STCoreOrganizationSettings *)self contentPrivacySiriImageGenerationRestriction])
        {
          -[STCoreOrganizationSettings setContentPrivacySiriImageGenerationRestriction:](self, "setContentPrivacySiriImageGenerationRestriction:", [v23 longLongValue]);
        }
      }

      v40 = v18;
      v25 = [representationCopy objectForKeyedSubscript:@"isCommunicationSafetySendingRestricted"];
      v26 = v25;
      if (v25)
      {
        -[STCoreOrganizationSettings setIsCommunicationSafetySendingRestricted:](self, "setIsCommunicationSafetySendingRestricted:", [v25 BOOLValue]);
      }

      v27 = [representationCopy objectForKeyedSubscript:@"isCommunicationSafetyReceivingRestricted"];
      v28 = v27;
      if (v27)
      {
        -[STCoreOrganizationSettings setIsCommunicationSafetyReceivingRestricted:](self, "setIsCommunicationSafetyReceivingRestricted:", [v27 BOOLValue]);
      }

      v29 = [representationCopy objectForKeyedSubscript:@"isCommunicationSafetyNotificationEnabled"];
      v30 = v29;
      if (v29)
      {
        -[STiCloudOrganizationSettings setIsCommunicationSafetyNotificationEnabled:](self, "setIsCommunicationSafetyNotificationEnabled:", [v29 BOOLValue]);
      }

      v44 = v7;
      v31 = [representationCopy objectForKeyedSubscript:@"isCommunicationSafetyAnalyticsEnabled"];
      v32 = v31;
      if (v31)
      {
        -[STiCloudOrganizationSettings setIsCommunicationSafetyAnalyticsEnabled:](self, "setIsCommunicationSafetyAnalyticsEnabled:", [v31 BOOLValue]);
      }

      v33 = [representationCopy objectForKeyedSubscript:@"isEyeReliefEnabled"];
      v34 = v33;
      if (v33)
      {
        -[STCoreOrganizationSettings setIsEyeReliefEnabled:](self, "setIsEyeReliefEnabled:", [v33 BOOLValue]);
      }

      v35 = [representationCopy objectForKeyedSubscript:@"isAppAndWebsiteActivityEnabled"];
      v36 = v35;
      if (v35)
      {
        -[STiCloudOrganizationSettings setIsAppAndWebsiteActivityEnabled:](self, "setIsAppAndWebsiteActivityEnabled:", [v35 BOOLValue]);
      }

      [(STUniquedManagedObject *)self updateUniqueIdentifier];

      v8 = 1;
      v37 = v43;
      v7 = v44;
    }

    else
    {
      v37 = +[STLog persistence];
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        [STiCloudOrganizationSettings updateWithDictionaryRepresentation:];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)dictionaryRepresentation
{
  v3 = MEMORY[0x1E695DF90];
  v13.receiver = self;
  v13.super_class = STiCloudOrganizationSettings;
  dictionaryRepresentation = [(STCoreOrganizationSettings *)&v13 dictionaryRepresentation];
  v5 = [v3 dictionaryWithDictionary:dictionaryRepresentation];

  serializableClassName = [objc_opt_class() serializableClassName];
  [v5 setObject:serializableClassName forKeyedSubscript:@"class"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[STiCloudOrganizationSettings isAppAndWebsiteActivityEnabled](self, "isAppAndWebsiteActivityEnabled")}];
  [v5 setObject:v7 forKeyedSubscript:@"isAppAndWebsiteActivityEnabled"];

  organization = [(STiCloudOrganizationSettings *)self organization];
  serializableClassName2 = [objc_opt_class() serializableClassName];
  [v5 setObject:serializableClassName2 forKeyedSubscript:@"organization"];

  recoveryAltDSID = [(STiCloudOrganizationSettings *)self recoveryAltDSID];
  [v5 setObject:recoveryAltDSID forKeyedSubscript:@"recoveryAltDSID"];

  v11 = [v5 copy];

  return v11;
}

- (void)didChangeValueForKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if ([keyCopy isEqualToString:@"user"])
  {
    [(STUniquedManagedObject *)self updateUniqueIdentifier];
  }

  else if ([keyCopy isEqualToString:@"passcode"])
  {
    passcode = [(STiCloudOrganizationSettings *)self passcode];

    if (!passcode)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      organization = [(STiCloudOrganizationSettings *)self organization];
      blueprints = [organization blueprints];

      v8 = [blueprints countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(blueprints);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            users = [v12 users];
            user = [(STiCloudOrganizationSettings *)self user];
            v15 = [users containsObject:user];

            if (v15)
            {
              [(STCoreOrganizationSettings *)self _changeAppLimitsFromAskToWarn:v12];
            }
          }

          v9 = [blueprints countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }
    }
  }

  v17.receiver = self;
  v17.super_class = STiCloudOrganizationSettings;
  [(STiCloudOrganizationSettings *)&v17 didChangeValueForKey:keyCopy];

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)validateForUpdate:(id *)update
{
  v10.receiver = self;
  v10.super_class = STiCloudOrganizationSettings;
  if ([(STiCloudOrganizationSettings *)&v10 validateForUpdate:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STiCloudOrganizationSettings *)self _validateNumberOfCloudSettings:v5];
    [(STiCloudOrganizationSettings *)self _validateUser:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STiCloudOrganizationSettings validateForUpdate:];
      }
    }

    v9.receiver = self;
    v9.super_class = STiCloudOrganizationSettings;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:update otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STiCloudOrganizationSettings validateForUpdate:update];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)insert
{
  v10.receiver = self;
  v10.super_class = STiCloudOrganizationSettings;
  if ([(STiCloudOrganizationSettings *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STiCloudOrganizationSettings *)self _validateNumberOfCloudSettings:v5];
    [(STiCloudOrganizationSettings *)self _validateUser:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STiCloudOrganizationSettings validateForInsert:];
      }
    }

    v9.receiver = self;
    v9.super_class = STiCloudOrganizationSettings;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:insert otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STiCloudOrganizationSettings validateForInsert:insert];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)delete
{
  v4.receiver = self;
  v4.super_class = STiCloudOrganizationSettings;
  return [(STiCloudOrganizationSettings *)&v4 validateForDelete:delete];
}

- (BOOL)_validateNumberOfCloudSettings:(id)settings
{
  v15[1] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  v4 = +[STiCloudOrganizationSettings fetchRequest];
  v13 = 0;
  v5 = [v4 execute:&v13];
  v6 = v13;
  if (v5)
  {
    if ([v5 count] >= 2)
    {
      v7 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A578];
      v15[0] = @"There must be no more than one cloud settings object.";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v9 = [v7 errorWithDomain:@"STErrorDomain" code:533 userInfo:v8];
      [settingsCopy addObject:v9];
    }

    v10 = [settingsCopy count] == 0;
  }

  else
  {
    [settingsCopy addObject:v6];
    v10 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_validateUser:(id)user
{
  v14[1] = *MEMORY[0x1E69E9840];
  userCopy = user;
  user = [(STiCloudOrganizationSettings *)self user];
  localUserDeviceState = [user localUserDeviceState];

  if (!localUserDeviceState)
  {
    v7 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = @"Cloud settings are assigned to a remote user. Cloud settings can only be assigned to a local user.";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v9 = [v7 errorWithDomain:@"STErrorDomain" code:534 userInfo:v8];
    [userCopy addObject:v9];
  }

  v10 = [userCopy count] == 0;

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)updateWithDictionaryRepresentation:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateForUpdate:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for update on CloudOrganizationSettings failed with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_0(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)validateForInsert:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_5(&dword_1B831F000, v0, v1, "%{public}s Validate for Insert on CloudOrganizationSettings failed with error: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end