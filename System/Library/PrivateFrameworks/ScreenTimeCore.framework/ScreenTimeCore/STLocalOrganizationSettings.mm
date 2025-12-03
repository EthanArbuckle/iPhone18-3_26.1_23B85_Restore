@interface STLocalOrganizationSettings
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
- (void)didChangeValueForKey:(id)key;
@end

@implementation STLocalOrganizationSettings

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v44.receiver = self;
  v44.super_class = STLocalOrganizationSettings;
  if ([(STCoreOrganizationSettings *)&v44 updateWithDictionaryRepresentation:representationCopy])
  {
    managedObjectContext = [(STLocalOrganizationSettings *)self managedObjectContext];
    v43 = 0;
    v6 = [STLocalOrganization fetchOrCreateLocalOrganizationWithContext:managedObjectContext error:&v43];
    v7 = v43;

    v8 = v6 != 0;
    if (v6)
    {
      [(STLocalOrganizationSettings *)self setOrganization:v6];
      v9 = [representationCopy objectForKeyedSubscript:@"passcode"];
      [(STLocalOrganizationSettings *)self setPasscode:v9];

      v10 = [representationCopy objectForKeyedSubscript:@"recoveryAltDSID"];
      [(STLocalOrganizationSettings *)self setRecoveryAltDSID:v10];

      v11 = [representationCopy objectForKeyedSubscript:@"allLimitsEnabled"];
      v12 = v11;
      if (v11)
      {
        [(STLocalOrganizationSettings *)self setAllLimitsEnabled:[v11 BOOLValue]];
      }

      v13 = [representationCopy objectForKeyedSubscript:@"defaultUserPolicies"];
      v14 = v13;
      if (v13)
      {
        -[STLocalOrganizationSettings setDefaultUserPolicies:](self, "setDefaultUserPolicies:", [v13 longLongValue]);
      }

      v15 = [representationCopy objectForKeyedSubscript:@"communicationPolicy"];
      v16 = v15;
      if (v15)
      {
        -[STLocalOrganizationSettings setCommunicationPolicy:](self, "setCommunicationPolicy:", [v15 longLongValue]);
      }

      v17 = [representationCopy objectForKeyedSubscript:@"communicationWhileLimitedPolicy"];
      v18 = v17;
      if (v17)
      {
        -[STLocalOrganizationSettings setCommunicationWhileLimitedPolicy:](self, "setCommunicationWhileLimitedPolicy:", [v17 longLongValue]);
      }

      v40 = v14;
      v41 = v12;
      v19 = [representationCopy objectForKeyedSubscript:@"contactManagementState"];
      v20 = v19;
      if (v19)
      {
        longLongValue = [v19 longLongValue];
        if (longLongValue != [(STLocalOrganizationSettings *)self contactManagementState])
        {
          -[STLocalOrganizationSettings setContactManagementState:](self, "setContactManagementState:", [v20 longLongValue]);
        }
      }

      v39 = v16;
      v22 = [representationCopy objectForKeyedSubscript:@"contentPrivacySiriImageGenerationRestriction"];
      v23 = v22;
      if (v22)
      {
        longLongValue2 = [v22 longLongValue];
        if (longLongValue2 != [(STCoreOrganizationSettings *)self contentPrivacySiriImageGenerationRestriction])
        {
          -[STCoreOrganizationSettings setContentPrivacySiriImageGenerationRestriction:](self, "setContentPrivacySiriImageGenerationRestriction:", [v23 longLongValue]);
        }
      }

      v38 = v18;
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

      v42 = v6;
      v29 = [representationCopy objectForKeyedSubscript:@"isCommunicationSafetyNotificationEnabled"];
      v30 = v29;
      if (v29)
      {
        -[STLocalOrganizationSettings setIsCommunicationSafetyNotificationEnabled:](self, "setIsCommunicationSafetyNotificationEnabled:", [v29 BOOLValue]);
      }

      v31 = v7;
      v32 = [representationCopy objectForKeyedSubscript:@"isCommunicationSafetyAnalyticsEnabled"];
      v33 = v32;
      if (v32)
      {
        -[STLocalOrganizationSettings setIsCommunicationSafetyAnalyticsEnabled:](self, "setIsCommunicationSafetyAnalyticsEnabled:", [v32 BOOLValue]);
      }

      v34 = [representationCopy objectForKeyedSubscript:@"isEyeReliefEnabled"];
      v35 = v34;
      if (v34)
      {
        -[STCoreOrganizationSettings setIsEyeReliefEnabled:](self, "setIsEyeReliefEnabled:", [v34 BOOLValue]);
      }

      v8 = 1;
      v7 = v31;
      v36 = v41;
      v6 = v42;
    }

    else
    {
      v36 = +[STLog persistence];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        [STLocalOrganizationSettings updateWithDictionaryRepresentation:];
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
  v12.receiver = self;
  v12.super_class = STLocalOrganizationSettings;
  dictionaryRepresentation = [(STCoreOrganizationSettings *)&v12 dictionaryRepresentation];
  v5 = [v3 dictionaryWithDictionary:dictionaryRepresentation];

  organization = [(STLocalOrganizationSettings *)self organization];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 setObject:v8 forKeyedSubscript:@"organization"];

  recoveryAltDSID = [(STLocalOrganizationSettings *)self recoveryAltDSID];
  [v5 setObject:recoveryAltDSID forKeyedSubscript:@"recoveryAltDSID"];

  v10 = [v5 copy];

  return v10;
}

- (void)didChangeValueForKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if ([keyCopy isEqualToString:@"passcode"])
  {
    [(STLocalOrganizationSettings *)self setNeedsToSetPasscode:0];
    passcode = [(STLocalOrganizationSettings *)self passcode];

    if (!passcode)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      organization = [(STLocalOrganizationSettings *)self organization];
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
            user = [(STLocalOrganizationSettings *)self user];
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
  v17.super_class = STLocalOrganizationSettings;
  [(STLocalOrganizationSettings *)&v17 didChangeValueForKey:keyCopy];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updateWithDictionaryRepresentation:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end