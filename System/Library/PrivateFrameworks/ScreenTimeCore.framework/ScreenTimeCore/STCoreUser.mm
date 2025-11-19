@interface STCoreUser
+ (id)fetchLocalUserInContext:(id)a3 error:(id *)a4;
+ (id)fetchRequest;
+ (id)fetchRequestForFamilyMembers;
+ (id)fetchRequestForUsersWithDSID:(id)a3;
+ (id)fetchRequestMatchingAppleID:(id)a3;
+ (id)fetchRequestMatchingLocalUser;
+ (id)fetchRequestMatchingUmanagedRemoteAdults;
+ (id)fetchUserWithAppleID:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)fetchUserWithDSID:(id)a3 inContext:(id)a4 error:(id *)a5;
+ (id)keyPathsForValuesAffectingSyncingEnabled;
+ (id)localizedFullNameForAppleID:(id)a3 givenName:(id)a4 familyName:(id)a5 systemFullUserName:(id)a6;
- (BOOL)_validateAltDSID:(id)a3;
- (BOOL)_validateAppleID:(id)a3;
- (BOOL)_validateDSID:(id)a3;
- (BOOL)_validateLocalUser:(id)a3;
- (BOOL)_validateNumberOfLocalUsers:(id)a3;
- (BOOL)_validateRemoteUser:(id)a3;
- (BOOL)allLimitsEnabled;
- (BOOL)canSetUpFamily;
- (BOOL)contactsEditable;
- (BOOL)isCommunicationSafetyAnalyticsEnabled;
- (BOOL)isCommunicationSafetyNotificationEnabled;
- (BOOL)isCommunicationSafetyReceivingRestricted;
- (BOOL)isCommunicationSafetyRestricted;
- (BOOL)isCommunicationSafetySendingRestricted;
- (BOOL)isEyeReliefEnabled;
- (BOOL)isManaged;
- (BOOL)isManaging;
- (BOOL)needsToSetPasscode;
- (BOOL)observableAllLimitsEnabled;
- (BOOL)observableCanSetUpFamily;
- (BOOL)observableCommunicationSafetyAnalyticsEnabled;
- (BOOL)observableCommunicationSafetyNotificationEnabled;
- (BOOL)observableCommunicationSafetyReceivingRestricted;
- (BOOL)observableCommunicationSafetySendingRestricted;
- (BOOL)observableManagementEnabled;
- (BOOL)observableScreenTimeEnabled;
- (BOOL)observableShareWebUsage;
- (BOOL)observableSyncingEnabled;
- (BOOL)screenTimeEnabled;
- (BOOL)shareWebUsage;
- (BOOL)syncingEnabled;
- (BOOL)unmodeledParticipatesInSharedLedger;
- (BOOL)validateForDelete:(id *)a3;
- (BOOL)validateForInsert:(id *)a3;
- (BOOL)validateForUpdate:(id *)a3;
- (NSNumber)isAppAndWebsiteActivityEnabled;
- (NSSet)appExceptions;
- (NSString)alwaysAllowActivationIdentifier;
- (NSString)alwaysAllowConfigurationIdentifier;
- (NSString)automaticDateTimeConfigurationIdentifier;
- (NSString)contentPrivacyActivationIdentifier;
- (NSString)effectivePasscode;
- (NSString)effectiveRecoveryAltDSID;
- (NSString)iCloudLogoutConfigurationIdentifier;
- (NSString)localizedFullName;
- (NSString)managedUserActivationIdentifier;
- (NSString)organizationIdentifier;
- (STCoreOrganization)managingOrganization;
- (STCoreOrganizationSettings)unmodeledManagingOrganizationSettings;
- (STCoreUser)initWithFamilyMemberType:(id)a3 context:(id)a4;
- (id)_contactStoreForUser;
- (id)_primaryContainerInContactStore:(id)a3 withError:(id *)a4;
- (id)contentPrivacyConfigurationIdentifierForType:(id)a3;
- (int64_t)communicationPolicy;
- (int64_t)communicationWhileLimitedPolicy;
- (int64_t)contactManagementState;
- (int64_t)contentPrivacySiriImageGenerationRestriction;
- (int64_t)defaultUserPolicies;
- (void)_contactStoreForUser;
- (void)didChangeValueForKey:(id)a3;
- (void)resetPasscode;
- (void)setAppExceptions:(id)a3;
- (void)setCommunicationPolicy:(int64_t)a3;
- (void)setCommunicationWhileLimitedPolicy:(int64_t)a3;
- (void)setContactManagementState:(int64_t)a3;
- (void)setContactsEditable:(BOOL)a3;
- (void)setContentPrivacySiriImageGenerationRestriction:(int64_t)a3;
- (void)setDefaultUserPolicies:(int64_t)a3;
- (void)setEffectivePasscode:(id)a3;
- (void)setEffectiveRecoveryAltDSID:(id)a3;
- (void)setObservableAllLimitsEnabled:(BOOL)a3;
- (void)setObservableCommunicationSafetyAnalyticsEnabled:(BOOL)a3;
- (void)setObservableCommunicationSafetyNotificationEnabled:(BOOL)a3;
- (void)setObservableCommunicationSafetyReceivingRestricted:(BOOL)a3;
- (void)setObservableCommunicationSafetySendingRestricted:(BOOL)a3;
- (void)setObservableManagementEnabled:(BOOL)a3;
- (void)setObservableScreenTimeEnabled:(BOOL)a3;
- (void)setObservableShareWebUsage:(BOOL)a3;
- (void)setObservableSyncingEnabled:(BOOL)a3;
- (void)updateWithDescription:(id)a3;
@end

@implementation STCoreUser

- (BOOL)isCommunicationSafetySendingRestricted
{
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = [v2 isCommunicationSafetySendingRestricted];

  return v3;
}

- (BOOL)isCommunicationSafetyReceivingRestricted
{
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = [v2 isCommunicationSafetyReceivingRestricted];

  return v3;
}

- (BOOL)isCommunicationSafetyNotificationEnabled
{
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = [v2 isCommunicationSafetyNotificationEnabled];

  return v3;
}

- (BOOL)isCommunicationSafetyAnalyticsEnabled
{
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = [v2 isCommunicationSafetyAnalyticsEnabled];

  return v3;
}

+ (id)fetchRequestMatchingLocalUser
{
  v2 = [a1 fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"localUserDeviceState"];
  [v2 setPredicate:v3];

  return v2;
}

+ (id)fetchRequest
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___STCoreUser;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

- (STCoreOrganizationSettings)unmodeledManagingOrganizationSettings
{
  v3 = [(STCoreUser *)self localSettings];
  v4 = [(STCoreUser *)self familySettings];
  v5 = [(STCoreUser *)self cloudSettings];
  v6 = [v4 isManaged];
  v7 = v4;
  if ((v6 & 1) != 0 || (v7 = v5) != 0 || ([MEMORY[0x1E69ADFB8] sharedConnection], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "effectiveBoolValueForSetting:", *MEMORY[0x1E69ADE50]), v8, v7 = v3, v9 != 2))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)communicationPolicy
{
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 communicationPolicy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)communicationWhileLimitedPolicy
{
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 communicationWhileLimitedPolicy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (STCoreUser)initWithFamilyMemberType:(id)a3 context:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = STCoreUser;
  v7 = [(STCoreUser *)&v10 initWithContext:a4];
  familyMemberType = v7->_familyMemberType;
  v7->_familyMemberType = v6;

  return v7;
}

- (void)updateWithDescription:(id)a3
{
  v28 = a3;
  v4 = [v28 userDSID];
  v5 = [v4 unsignedIntegerValue];

  if (v5)
  {
    v6 = [(STCoreUser *)self dsid];
    v7 = [v28 userDSID];
    v8 = [v6 isEqualToNumber:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [v28 userDSID];
      [(STCoreUser *)self setDsid:v9];
    }

    v10 = [(STCoreUser *)self altDSID];
    v11 = [v28 userAltDSID];
    v12 = [v10 isEqualToString:v11];

    if ((v12 & 1) == 0)
    {
      v13 = [v28 userAltDSID];
      [(STCoreUser *)self setAltDSID:v13];
    }

    v14 = [(STCoreUser *)self givenName];
    v15 = [v28 givenName];
    v16 = [v14 isEqualToString:v15];

    if ((v16 & 1) == 0)
    {
      v17 = [v28 givenName];
      [(STCoreUser *)self setGivenName:v17];
    }

    v18 = [(STCoreUser *)self familyName];
    v19 = [v28 familyName];
    v20 = [v18 isEqualToString:v19];

    if ((v20 & 1) == 0)
    {
      v21 = [v28 familyName];
      [(STCoreUser *)self setFamilyName:v21];
    }
  }

  else
  {
    v22 = [(STCoreUser *)self givenName];

    if (v22)
    {
      [(STCoreUser *)self setGivenName:0];
    }

    v23 = [(STCoreUser *)self familyName];

    if (v23)
    {
      [(STCoreUser *)self setFamilyName:0];
    }

    v24 = [(STCoreUser *)self familyMemberType];

    if (v24 != @"Unknown")
    {
      [(STCoreUser *)self setFamilyMemberType:@"Unknown"];
    }

    if ([(STCoreUser *)self isParent])
    {
      [(STCoreUser *)self setIsParent:0];
    }

    if ([(STCoreUser *)self isFamilyOrganizer])
    {
      [(STCoreUser *)self setIsFamilyOrganizer:0];
    }

    v25 = [(STCoreUser *)self dsid];
    v26 = [v25 isEqualToNumber:&unk_1F3059B28];

    if ((v26 & 1) == 0)
    {
      [(STCoreUser *)self setDsid:&unk_1F3059B28];
    }

    v27 = [(STCoreUser *)self altDSID];

    if (v27)
    {
      [(STCoreUser *)self setAltDSID:0];
    }

    if ([(STCoreUser *)self supportsEncryption])
    {
      [(STCoreUser *)self setSupportsEncryption:0];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)didChangeValueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"dsid"])
  {
    v5 = [(STCoreUser *)self userDeviceStates];
    [v5 makeObjectsPerformSelector:sel_updateUniqueIdentifier];

    v6 = [(STCoreUser *)self familySettings];
    [v6 updateUniqueIdentifier];
  }

  v7.receiver = self;
  v7.super_class = STCoreUser;
  [(STCoreUser *)&v7 didChangeValueForKey:v4];
}

+ (id)fetchLocalUserInContext:(id)a3 error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 fetchRequestMatchingLocalUser];
  v8 = [v6 executeFetchRequest:v7 error:a4];

  if (!v8)
  {
    goto LABEL_6;
  }

  if ([v8 count] < 2)
  {
    v16 = [v8 firstObject];
    v14 = v16;
    if (v16)
    {
      v14 = v16;
      v15 = v14;
    }

    else
    {
      if (a4)
      {
        v17 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A578];
        v27 = *MEMORY[0x1E696A578];
        v28 = @"There must be at least one local user object.";
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v20 = [v17 errorWithDomain:@"STErrorDomain" code:10 userInfo:v19];

        if (v20)
        {
          v21 = MEMORY[0x1E696ABC0];
          v25 = v18;
          v26 = @"There must be at least one local user object.";
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *a4 = [v21 errorWithDomain:@"STErrorDomain" code:10 userInfo:v22];
        }
      }

      v15 = 0;
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  v9 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v31 = *MEMORY[0x1E696A578];
  v32[0] = @"There must be one and only one local user object.";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
  v12 = [v9 errorWithDomain:@"STErrorDomain" code:508 userInfo:v11];

  if (!v12)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_14;
  }

  v13 = MEMORY[0x1E696ABC0];
  v29 = v10;
  v30 = @"There must be one and only one local user object.";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [v13 errorWithDomain:@"STErrorDomain" code:508 userInfo:v14];
  *a4 = v15 = 0;
LABEL_13:

LABEL_14:
  v23 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)fetchUserWithDSID:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v6 = [STCoreUser fetchRequestForUsersWithDSID:a3, a4];
  v7 = [v6 execute:a5];

  if (v7)
  {
    v8 = [v7 firstObject];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else if (a5)
    {
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:11 userInfo:0];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)fetchUserWithAppleID:(id)a3 inContext:(id)a4 error:(id *)a5
{
  v6 = [STCoreUser fetchRequestMatchingAppleID:a3, a4];
  v7 = [v6 execute:a5];

  if (v7)
  {
    v8 = [v7 firstObject];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else if (a5)
    {
      *a5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:11 userInfo:0];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)fetchRequestMatchingUmanagedRemoteAdults
{
  v2 = [a1 fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL AND (%K == %@ OR %K == %@) AND (%K == nil OR %K == NO)", @"localUserDeviceState", @"familyMemberType", @"Unknown", @"familyMemberType", @"Adult", @"familySettings", @"familySettings.isManaged"];
  [v2 setPredicate:v3];

  return v2;
}

+ (id)fetchRequestForUsersWithDSID:(id)a3
{
  v4 = a3;
  v5 = [a1 fetchRequest];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"dsid", v4];

  [v5 setPredicate:v6];

  return v5;
}

+ (id)fetchRequestForFamilyMembers
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = [a1 fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"familySettings"];
  [v2 setPredicate:v3];

  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dsid" ascending:1];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v2 setSortDescriptors:v5];

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)fetchRequestMatchingAppleID:(id)a3
{
  v4 = a3;
  v5 = [a1 fetchRequest];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"appleID", v4];

  [v5 setPredicate:v6];

  return v5;
}

void __46__STCoreUser_notifyServerOfScreenTimeEnabled___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STLog persistence];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __46__STCoreUser_notifyServerOfScreenTimeEnabled___block_invoke_cold_1();
    }
  }
}

- (id)_contactStoreForUser
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = [(STCoreUser *)self localUserDeviceState];

  if (v3)
  {
    v4 = objc_opt_new();
  }

  else
  {
    v5 = [(STCoreUser *)self altDSID];
    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x1E699C060]);
      v13[0] = @"member-first-name";
      v7 = [(STCoreUser *)self givenName];
      v14[0] = v7;
      v13[1] = @"member-dsid";
      v8 = [(STCoreUser *)self dsid];
      v13[2] = @"member-altDSID";
      v14[1] = v8;
      v14[2] = v5;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
      v10 = [v6 initWithDictionaryRepresentation:v9];

      v4 = [MEMORY[0x1E695CE18] storeForFamilyMember:v10];
    }

    else
    {
      v10 = +[STLog persistence];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [STCoreUser _contactStoreForUser];
      }

      v4 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_primaryContainerInContactStore:(id)a3 withError:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(STCoreUser *)self localUserDeviceState];

  if (v7)
  {
    v8 = objc_opt_new();
    v9 = [v8 aa_primaryAppleAccount];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 childCardDAVAccountIdentifier];
      if (v11)
      {
        v12 = v11;
        v13 = [MEMORY[0x1E695CE48] predicateForContainersInAccountWithExternalIdentifier:v11];

        v8 = v13;
LABEL_7:
        v18 = [v6 containersMatchingPredicate:v8 error:a4];
        v19 = [v18 firstObject];

        goto LABEL_17;
      }

      v21 = +[STLog persistence];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [STCoreUser _primaryContainerInContactStore:withError:];
      }
    }

    else
    {
      v20 = +[STLog persistence];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [STCoreUser _primaryContainerInContactStore:withError:];
      }
    }
  }

  else
  {
    v14 = [v6 defaultContainerIdentifier];
    if (v14)
    {
      v15 = v14;
      v16 = MEMORY[0x1E695CE48];
      v24[0] = v14;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      v8 = [v16 predicateForContainersWithIdentifiers:v17];

      goto LABEL_7;
    }

    v8 = +[STLog persistence];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [STCoreUser _primaryContainerInContactStore:withError:];
    }
  }

  v19 = 0;
LABEL_17:

  v22 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)localizedFullNameForAppleID:(id)a3 givenName:(id)a4 familyName:(id)a5 systemFullUserName:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = [v12 length];

  if (v14)
  {
    [v13 setGivenName:v9];
    [v13 setFamilyName:v10];
LABEL_5:
    v17 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v13 style:0 options:0];
    v15 = v13;
    goto LABEL_6;
  }

  v15 = objc_opt_new();
  v16 = [v15 personNameComponentsFromString:v11];

  if (v16)
  {

    v13 = v16;
    goto LABEL_5;
  }

  v17 = v11;
LABEL_6:

  return v17;
}

- (NSString)localizedFullName
{
  v3 = [(STCoreUser *)self appleID];
  v4 = [(STCoreUser *)self givenName];
  v5 = [(STCoreUser *)self familyName];
  v6 = NSFullUserName();
  v7 = [STCoreUser localizedFullNameForAppleID:v3 givenName:v4 familyName:v5 systemFullUserName:v6];

  return v7;
}

- (BOOL)screenTimeEnabled
{
  v3 = [(STCoreUser *)self localUserDeviceState];

  if (v3)
  {
    v4 = [(STCoreUser *)self managedObjectContext];
    v16 = 0;
    v5 = [STScreenTimeSettings fetchScreenTimeSettingsInContext:v4 error:&v16];
    v6 = v16;

    if (v5)
    {
      v7 = [v5 screenTimeEnabled];
    }

    else
    {
      v13 = +[STLog persistence];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [STCoreUser(UnmodeledProperties) screenTimeEnabled];
      }

      v7 = 0;
    }

    return v7;
  }

  v8 = [(STCoreUser *)self familySettings];
  v9 = [v8 isAppAndWebsiteActivityEnabled];

  v10 = [(STCoreUser *)self familySettings];
  v11 = v10;
  if (v9)
  {
    v12 = [v10 isAppAndWebsiteActivityEnabled];
    v7 = [v12 BOOLValue];

    return v7;
  }

  v15 = [v10 isManaged];

  return v15;
}

- (NSNumber)isAppAndWebsiteActivityEnabled
{
  v3 = [(STCoreUser *)self familySettings];
  v4 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];

  if (v4 == v3)
  {
    v7 = [v3 isAppAndWebsiteActivityEnabled];
  }

  else
  {
    v5 = [(STCoreUser *)self cloudSettings];
    v6 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];

    if (v6 == v5)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isAppAndWebsiteActivityEnabled")}];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)keyPathsForValuesAffectingSyncingEnabled
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)syncingEnabled
{
  v3 = [(STCoreUser *)self localUserDeviceState];

  if (!v3)
  {
    return 0;
  }

  v4 = [(STCoreUser *)self managedObjectContext];
  v10 = 0;
  v5 = [STScreenTimeSettings fetchScreenTimeSettingsInContext:v4 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = [v5 cloudSyncEnabled];
  }

  else
  {
    v8 = +[STLog persistence];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [STCoreUser(UnmodeledProperties) screenTimeEnabled];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)canSetUpFamily
{
  v3 = [(STCoreUser *)self localUserDeviceState];

  if (v3)
  {
    v3 = [(STCoreUser *)self dsid];
    if (v3)
    {
      v4 = [(STCoreUser *)self dsid];
      v5 = [v4 isEqualToNumber:&unk_1F3059B28];

      if (v5)
      {
        LOBYTE(v3) = 0;
      }

      else
      {
        v6 = [(STCoreUser *)self familyMemberType];
        if ([v6 isEqualToString:@"Adult"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"Teen"))
        {
          LOBYTE(v3) = 0;
        }

        else
        {
          LODWORD(v3) = [v6 isEqualToString:@"Child"] ^ 1;
        }
      }
    }
  }

  return v3;
}

- (BOOL)allLimitsEnabled
{
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = [v2 allLimitsEnabled];

  return v3;
}

- (int64_t)defaultUserPolicies
{
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = [v2 defaultUserPolicies];

  return v3;
}

- (STCoreOrganization)managingOrganization
{
  v3 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v4 = [(STCoreUser *)self localSettings];

  if (v3 == v4)
  {
    v8 = [(STCoreUser *)self localSettings];
  }

  else
  {
    v5 = [(STCoreUser *)self cloudSettings];

    if (v3 == v5)
    {
      v8 = [(STCoreUser *)self cloudSettings];
    }

    else
    {
      v6 = [(STCoreUser *)self familySettings];

      if (v3 != v6)
      {
        v7 = 0;
        goto LABEL_9;
      }

      v8 = [(STCoreUser *)self familySettings];
    }
  }

  v9 = v8;
  v7 = [v8 organization];

LABEL_9:

  return v7;
}

- (BOOL)isManaged
{
  v3 = [(STCoreUser *)self familySettings];
  v4 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];

  if (v4 == v3)
  {
    v5 = [v3 isManaged];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isManaging
{
  v3 = [(STCoreUser *)self familySettings];
  v4 = [(STCoreUser *)self isParent];
  v5 = 0;
  if (v4 && v3)
  {
    v6 = [v3 organization];
    v7 = [v6 valueForKeyPath:@"settings.isManaged"];
    v5 = [v7 containsObject:MEMORY[0x1E695E118]];
  }

  return v5;
}

- (NSString)effectivePasscode
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = +[STLog screentime];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = [v2 passcode];
    v9 = 138543618;
    v10 = v4;
    v11 = 1024;
    v12 = v5 != 0;
    _os_log_impl(&dword_1B831F000, v3, OS_LOG_TYPE_INFO, "The effective passcode is from %{public}@ and is set %d", &v9, 0x12u);
  }

  v6 = [v2 passcode];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (NSString)effectiveRecoveryAltDSID
{
  v3 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v4 = [(STCoreUser *)self localSettings];
  v5 = [(STCoreUser *)self cloudSettings];
  v6 = v4;
  if (v3 == v4 || (v6 = v5, v3 == v5))
  {
    v7 = [v6 recoveryAltDSID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)needsToSetPasscode
{
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = [v2 needsToSetPasscode];

  return v3;
}

- (BOOL)shareWebUsage
{
  v3 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v4 = [(STCoreUser *)self familySettings];
  v5 = v4;
  if (v3 == v4)
  {
    v6 = [v4 shareWebUsage];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (NSSet)appExceptions
{
  v3 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v4 = [(STCoreUser *)self familySettings];
  v5 = v4;
  if (v3 == v4)
  {
    v6 = [v4 appExceptions];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;

  return v7;
}

- (NSString)organizationIdentifier
{
  v3 = [(STCoreUser *)self localUserDeviceState];
  v4 = &STOrganizationIdentifierFamily;
  if (v3 && ![(STCoreUser *)self isManaged])
  {
    v4 = STOrganizationIdentifierPersonal;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (BOOL)contactsEditable
{
  v3 = [(STCoreUser *)self _contactStoreForUser];
  if (v3)
  {
    v8 = 0;
    v4 = [(STCoreUser *)self _primaryContainerInContactStore:v3 withError:&v8];
    v5 = v8;
    if (v4)
    {
      LODWORD(v6) = [v4 isGuardianRestricted] ^ 1;
    }

    else
    {
      v6 = +[STLog persistence];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STCoreUser(UnmodeledProperties) contactsEditable];
      }

      LOBYTE(v6) = 1;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)isCommunicationSafetyRestricted
{
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = [v2 isCommunicationSafetyRestricted];

  return v3;
}

- (BOOL)isEyeReliefEnabled
{
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = [v2 isEyeReliefEnabled];

  return v3;
}

- (void)setDefaultUserPolicies:(int64_t)a3
{
  v6 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  [v6 setDefaultUserPolicies:a3];
  v5 = [(STCoreUser *)self familySettings];
  if (v6 == v5)
  {
    [v5 setIsDirty:1];
  }
}

- (void)setAppExceptions:(id)a3
{
  v4 = a3;
  v5 = [(STCoreUser *)self familySettings];
  [v5 setAppExceptions:v4];

  [v5 setIsDirty:1];
}

- (void)setEffectivePasscode:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v6 = +[STLog screentime];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 1024;
    v13 = v4 != 0;
    _os_log_impl(&dword_1B831F000, v6, OS_LOG_TYPE_DEFAULT, "The effective passcode is from %{public}@ and is being set %d", &v10, 0x12u);
  }

  [v5 setPasscode:v4];
  v7 = [(STCoreUser *)self familySettings];
  v8 = v7;
  if (v5 == v7)
  {
    [v7 setIsDirty:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setEffectiveRecoveryAltDSID:(id)a3
{
  v4 = a3;
  v5 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v6 = [(STCoreUser *)self localSettings];
  v7 = [(STCoreUser *)self cloudSettings];
  v8 = v7;
  if (v5 == v6)
  {
    v7 = v6;
    goto LABEL_6;
  }

  if (v5 == v7)
  {
LABEL_6:
    [v7 setRecoveryAltDSID:v4];
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    [STCoreUser(UnmodeledInternal) setEffectiveRecoveryAltDSID:];
  }

LABEL_7:
}

- (void)setCommunicationPolicy:(int64_t)a3
{
  v6 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  [v6 setCommunicationPolicy:a3];
  v5 = [(STCoreUser *)self familySettings];
  if (v6 == v5)
  {
    [v5 setIsDirty:1];
  }
}

- (void)setCommunicationWhileLimitedPolicy:(int64_t)a3
{
  v6 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  [v6 setCommunicationWhileLimitedPolicy:a3];
  v5 = [(STCoreUser *)self familySettings];
  if (v6 == v5)
  {
    [v5 setIsDirty:1];
  }
}

- (int64_t)contactManagementState
{
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 contactManagementState];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setContactManagementState:(int64_t)a3
{
  v6 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  [v6 setContactManagementState:a3];
  v5 = [(STCoreUser *)self familySettings];
  if (v6 == v5)
  {
    [v5 setIsDirty:1];
  }
}

- (int64_t)contentPrivacySiriImageGenerationRestriction
{
  v2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 contentPrivacySiriImageGenerationRestriction];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setContentPrivacySiriImageGenerationRestriction:(int64_t)a3
{
  v6 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  [v6 setContentPrivacySiriImageGenerationRestriction:a3];
  v5 = [(STCoreUser *)self familySettings];
  if (v6 == v5)
  {
    [v5 setIsDirty:1];
  }
}

- (void)setContactsEditable:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(STCoreUser *)self _contactStoreForUser];
  if (v5)
  {
    v18 = 0;
    v6 = [(STCoreUser *)self _primaryContainerInContactStore:v5 withError:&v18];
    v7 = v18;
    v8 = [v6 mutableCopy];

    if (v8)
    {
      v9 = !v3;
      [v8 setGuardianRestricted:!v3];
      v10 = objc_opt_new();
      [v10 setIgnoresGuardianRestrictions:1];
      [v10 updateContainer:v8];
      v17 = v7;
      v11 = [v5 executeSaveRequest:v10 error:&v17];
      v12 = v17;

      v13 = +[STLog persistence];
      v14 = v13;
      if (v11)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v8 identifier];
          *buf = 67109378;
          v20 = v9;
          v21 = 2114;
          v22 = v15;
          _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_DEFAULT, "Set guardian restricted to %d on container %{public}@", buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(STCoreUser(UnmodeledInternal) *)v3 setContactsEditable:v12, v14];
      }
    }

    else
    {
      v10 = +[STLog persistence];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [STCoreUser(UnmodeledInternal) setContactsEditable:];
      }

      v12 = v7;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)unmodeledParticipatesInSharedLedger
{
  v3 = [(STCoreUser *)self familySettings];
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [(STCoreUser *)self familySettings];
  if (([v5 isManaged] & 1) != 0 || -[STCoreUser isFamilyOrganizer](self, "isFamilyOrganizer"))
  {

    goto LABEL_8;
  }

  v6 = [(STCoreUser *)self isParent];

  if ((v6 & 1) == 0)
  {
LABEL_7:
    v4 = [(STCoreUser *)self familyMemberType];
    if (([v4 isEqualToString:@"Child"] & 1) == 0)
    {
      v7 = [v4 isEqualToString:@"Teen"];
      goto LABEL_10;
    }

LABEL_8:
    v7 = 1;
LABEL_10:

    return v7;
  }

  return 1;
}

- (NSString)contentPrivacyActivationIdentifier
{
  v3 = [(STCoreUser *)self organizationIdentifier];
  if ([v3 isEqualToString:@"personal"])
  {
    v4 = @"digital_health_restrictions";
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(STCoreUser *)self dsid];
    v7 = [v6 stringValue];
    v4 = [v5 stringWithFormat:@"%@.%@", @"digital_health_restrictions", v7];
  }

  return v4;
}

- (id)contentPrivacyConfigurationIdentifierForType:(id)a3
{
  v4 = a3;
  v5 = [(STCoreUser *)self organizationIdentifier];
  v6 = [v5 isEqualToString:@"personal"];
  v7 = MEMORY[0x1E696AEC0];
  if (v6)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"digital_health_restrictions", v4];
  }

  else
  {
    v9 = [(STCoreUser *)self dsid];
    v10 = [v9 stringValue];
    v8 = [v7 stringWithFormat:@"%@.%@.%@", @"digital_health_restrictions", v10, v4];
  }

  return v8;
}

- (NSString)alwaysAllowActivationIdentifier
{
  v3 = [(STCoreUser *)self organizationIdentifier];
  if ([v3 isEqualToString:@"personal"])
  {
    v4 = createIdentifierWithComponents(@"always_allow_activation", v3, 0);
  }

  else
  {
    v5 = [(STCoreUser *)self dsid];
    v6 = [v5 stringValue];
    v4 = createIdentifierWithComponents(@"always_allow_activation", v3, v6);
  }

  return v4;
}

- (NSString)alwaysAllowConfigurationIdentifier
{
  v3 = [(STCoreUser *)self organizationIdentifier];
  if ([v3 isEqualToString:@"personal"])
  {
    v4 = createIdentifierWithComponents(@"always_allow_app_configuration", v3, 0);
  }

  else
  {
    v5 = [(STCoreUser *)self dsid];
    v6 = [v5 stringValue];
    v4 = createIdentifierWithComponents(@"always_allow_app_configuration", v3, v6);
  }

  return v4;
}

- (NSString)managedUserActivationIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(STCoreUser *)self dsid];
  v4 = [v3 stringValue];
  v5 = [v2 stringWithFormat:@"%@_%@", @"managed_user_activation", v4];

  return v5;
}

- (NSString)iCloudLogoutConfigurationIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(STCoreUser *)self dsid];
  v4 = [v3 stringValue];
  v5 = [v2 stringWithFormat:@"%@_%@", @"icloud_logout_configuration", v4];

  return v5;
}

- (NSString)automaticDateTimeConfigurationIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(STCoreUser *)self dsid];
  v4 = [v3 stringValue];
  v5 = [v2 stringWithFormat:@"%@_%@", @"force_date_time_configuration", v4];

  return v5;
}

- (BOOL)validateForUpdate:(id *)a3
{
  v11.receiver = self;
  v11.super_class = STCoreUser;
  if (![(STCoreUser *)&v11 validateForUpdate:?])
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreUser(Identifiers) validateForUpdate:a3];
    }

    v7 = 0;
    goto LABEL_15;
  }

  if (_os_feature_enabled_impl())
  {
    v5 = objc_opt_new();
    v6 = [(STCoreUser *)self localUserDeviceState];

    if (v6)
    {
      [(STCoreUser *)self _validateLocalUser:v5];
    }

    else
    {
      [(STCoreUser *)self _validateRemoteUser:v5];
    }

    [(STCoreUser *)self _validateNumberOfLocalUsers:v5];
    [(STCoreUser *)self _validateDSID:v5];
    [(STCoreUser *)self _validateAltDSID:v5];
    [(STCoreUser *)self _validateAppleID:v5];
    if ([v5 count])
    {
      v8 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [STCoreUser(Identifiers) validateForUpdate:?];
      }
    }

    v10.receiver = self;
    v10.super_class = STCoreUser;
    v7 = [(NSManagedObject *)&v10 parseValidationErrors:a3 otherErrors:v5];
LABEL_15:

    return v7;
  }

  return 1;
}

- (BOOL)validateForInsert:(id *)a3
{
  v11.receiver = self;
  v11.super_class = STCoreUser;
  if (![(STCoreUser *)&v11 validateForInsert:?])
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreUser(Identifiers) validateForInsert:a3];
    }

    v7 = 0;
    goto LABEL_15;
  }

  if (_os_feature_enabled_impl())
  {
    v5 = objc_opt_new();
    v6 = [(STCoreUser *)self localUserDeviceState];

    if (v6)
    {
      [(STCoreUser *)self _validateLocalUser:v5];
    }

    else
    {
      [(STCoreUser *)self _validateRemoteUser:v5];
    }

    [(STCoreUser *)self _validateNumberOfLocalUsers:v5];
    [(STCoreUser *)self _validateDSID:v5];
    [(STCoreUser *)self _validateAltDSID:v5];
    [(STCoreUser *)self _validateAppleID:v5];
    if ([v5 count])
    {
      v8 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [STCoreUser(Identifiers) validateForInsert:?];
      }
    }

    v10.receiver = self;
    v10.super_class = STCoreUser;
    v7 = [(NSManagedObject *)&v10 parseValidationErrors:a3 otherErrors:v5];
LABEL_15:

    return v7;
  }

  return 1;
}

- (BOOL)validateForDelete:(id *)a3
{
  v10.receiver = self;
  v10.super_class = STCoreUser;
  if ([(STCoreUser *)&v10 validateForDelete:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STCoreUser *)self _validateNumberOfLocalUsers:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STCoreUser(Identifiers) validateForDelete:?];
      }
    }

    v9.receiver = self;
    v9.super_class = STCoreUser;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:a3 otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreUser(Identifiers) validateForDelete:a3];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateAppleID:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STCoreUser *)self appleID];
  v6 = [STCoreUser fetchRequestMatchingAppleID:v5];

  v20 = 0;
  v7 = [v6 execute:&v20];
  v8 = v20;
  if (!v7)
  {
    [v4 addObject:v8];
    v17 = 0;
    goto LABEL_10;
  }

  if ([v7 count] >= 2)
  {
    v9 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"There are multiple users with the same Apple ID.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v11 = [v9 errorWithDomain:@"STErrorDomain" code:511 userInfo:v10];
    [v4 addObject:v11];
  }

  v12 = [(STCoreUser *)self appleID];
  if (![v12 length])
  {
    goto LABEL_7;
  }

  v13 = [(STCoreUser *)self dsid];
  v14 = [v13 intValue];

  if (!v14)
  {
    v15 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22 = @"If the user has an Apple ID, they must have a DSID.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v16 = [v15 errorWithDomain:@"STErrorDomain" code:512 userInfo:v12];
    [v4 addObject:v16];

LABEL_7:
  }

  v17 = [v4 count] == 0;
LABEL_10:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_validateAltDSID:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[STCoreUser fetchRequest];
  v6 = MEMORY[0x1E696AE18];
  v7 = [(STCoreUser *)self altDSID];
  v8 = [v6 predicateWithFormat:@"%K == %@", @"altDSID", v7];
  [v5 setPredicate:v8];

  v22 = 0;
  v9 = [v5 execute:&v22];
  v10 = v22;
  if (!v9)
  {
    [v4 addObject:v10];
    v19 = 0;
    goto LABEL_10;
  }

  if ([v9 count] >= 2)
  {
    v11 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = @"There are multiple users with the same altDSID.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v13 = [v11 errorWithDomain:@"STErrorDomain" code:516 userInfo:v12];
    [v4 addObject:v13];
  }

  v14 = [(STCoreUser *)self dsid];
  if ([v14 isEqual:&unk_1F3059B28])
  {
    goto LABEL_7;
  }

  v15 = [(STCoreUser *)self altDSID];
  v16 = [v15 length];

  if (!v16)
  {
    v17 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = @"If the user has a DSID, they must have an altDSID.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v18 = [v17 errorWithDomain:@"STErrorDomain" code:517 userInfo:v14];
    [v4 addObject:v18];

LABEL_7:
  }

  v19 = [v4 count] == 0;
LABEL_10:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)_validateDSID:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STCoreUser *)self dsid];
  v6 = [STCoreUser fetchRequestForUsersWithDSID:v5];

  v15 = 0;
  v7 = [v6 execute:&v15];
  v8 = v15;
  if (v7)
  {
    if ([v7 count] >= 2)
    {
      v9 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696A578];
      v17[0] = @"There are multiple users with the same DSID.";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v11 = [v9 errorWithDomain:@"STErrorDomain" code:509 userInfo:v10];
      [v4 addObject:v11];
    }

    v12 = [v4 count] == 0;
  }

  else
  {
    [v4 addObject:v8];
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)_validateLocalUser:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(STCoreUser *)self familyMemberType];
  if (v5 == @"Child")
  {
    goto LABEL_6;
  }

  v6 = [(STCoreUser *)self familyMemberType];
  v7 = v6;
  if (v6 == @"Teen")
  {

LABEL_6:
    goto LABEL_7;
  }

  v8 = [(STCoreUser *)self familyMemberType];
  v9 = v8;
  if (v8 != @"Adult")
  {

    goto LABEL_10;
  }

  v14 = [(STCoreUser *)self isParent];

  if (v14)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = [(STCoreUser *)self familySettings];

  if (!v10)
  {
    v11 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"A local user who is a child, teen, nor non-parent adult must have family settings.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = [v11 errorWithDomain:@"STErrorDomain" code:514 userInfo:v12];
    [v4 addObject:v13];
  }

LABEL_10:
  v15 = [v4 count] == 0;

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_validateNumberOfLocalUsers:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[STCoreUser fetchRequestMatchingLocalUser];
  v16 = 0;
  v5 = [v4 execute:&v16];
  v6 = v16;
  if (v5)
  {
    if ([v5 count] >= 2)
    {
      v7 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696A578];
      v20[0] = @"There must be one and only one local user.";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v9 = [v7 errorWithDomain:@"STErrorDomain" code:508 userInfo:v8];
      [v3 addObject:v9];
    }

    if (![v5 count])
    {
      v10 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18 = @"There must be one local user.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v12 = [v10 errorWithDomain:@"STErrorDomain" code:10 userInfo:v11];
      [v3 addObject:v12];
    }

    v13 = [v3 count] == 0;
  }

  else
  {
    [v3 addObject:v6];
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)_validateRemoteUser:(id)a3
{
  v22[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([(STCoreUser *)self isParent]& 1) == 0)
  {
    v5 = [(STCoreUser *)self familySettings];

    if (!v5)
    {
      v6 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v22[0] = @"A remote user must have Family Settings.";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v8 = [v6 errorWithDomain:@"STErrorDomain" code:514 userInfo:v7];
      [v4 addObject:v8];
    }
  }

  v9 = [(STCoreUser *)self familyMemberType];
  if (!v9 || (v10 = v9, -[STCoreUser familyMemberType](self, "familyMemberType"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqualToString:@"Unknown"], v11, v10, v12))
  {
    v13 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20 = @"A remote user must be family member..";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [v13 errorWithDomain:@"STErrorDomain" code:513 userInfo:v14];
    [v4 addObject:v15];
  }

  v16 = [v4 count] == 0;

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)observableScreenTimeEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__STCoreUser_Observable__observableScreenTimeEnabled__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __53__STCoreUser_Observable__observableScreenTimeEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenTimeEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableScreenTimeEnabled:(BOOL)a3
{
  v5 = [(STCoreUser *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__STCoreUser_Observable__setObservableScreenTimeEnabled___block_invoke;
  v7[3] = &unk_1E7CE7580;
  v9 = a3;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [v6 performBlockAndWait:v7];
}

void __57__STCoreUser_Observable__setObservableScreenTimeEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setScreenTimeEnabled:*(a1 + 48)];
  if ([*(a1 + 40) hasChanges])
  {
    v2 = *(a1 + 40);
    v6 = 0;
    v3 = [v2 save:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v5 = +[STLog persistence];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __57__STCoreUser_Observable__setObservableScreenTimeEnabled___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (BOOL)observableManagementEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__STCoreUser_Observable__observableManagementEnabled__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __53__STCoreUser_Observable__observableManagementEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isManaged];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableManagementEnabled:(BOOL)a3
{
  v5 = [(STCoreUser *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__STCoreUser_Observable__setObservableManagementEnabled___block_invoke;
  v7[3] = &unk_1E7CE7580;
  v9 = a3;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [v6 performBlockAndWait:v7];
}

void __57__STCoreUser_Observable__setObservableManagementEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setManaged:*(a1 + 48)];
  if ([*(a1 + 40) hasChanges])
  {
    v2 = *(a1 + 40);
    v6 = 0;
    v3 = [v2 save:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v5 = +[STLog persistence];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __57__STCoreUser_Observable__setObservableManagementEnabled___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (BOOL)observableSyncingEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__STCoreUser_Observable__observableSyncingEnabled__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __50__STCoreUser_Observable__observableSyncingEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) syncingEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableSyncingEnabled:(BOOL)a3
{
  v5 = [(STCoreUser *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__STCoreUser_Observable__setObservableSyncingEnabled___block_invoke;
  v7[3] = &unk_1E7CE7580;
  v9 = a3;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [v6 performBlockAndWait:v7];
}

void __54__STCoreUser_Observable__setObservableSyncingEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSyncingEnabled:*(a1 + 48)];
  if ([*(a1 + 40) hasChanges])
  {
    v2 = *(a1 + 40);
    v6 = 0;
    v3 = [v2 save:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v5 = +[STLog persistence];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __54__STCoreUser_Observable__setObservableSyncingEnabled___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (BOOL)observableAllLimitsEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__STCoreUser_Observable__observableAllLimitsEnabled__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __52__STCoreUser_Observable__observableAllLimitsEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) allLimitsEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableAllLimitsEnabled:(BOOL)a3
{
  v5 = [(STCoreUser *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__STCoreUser_Observable__setObservableAllLimitsEnabled___block_invoke;
  v7[3] = &unk_1E7CE7580;
  v9 = a3;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [v6 performBlockAndWait:v7];
}

void __56__STCoreUser_Observable__setObservableAllLimitsEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAllLimitsEnabled:*(a1 + 48)];
  if ([*(a1 + 40) hasChanges])
  {
    v2 = *(a1 + 40);
    v6 = 0;
    v3 = [v2 save:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v5 = +[STLog persistence];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __56__STCoreUser_Observable__setObservableAllLimitsEnabled___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (BOOL)observableCanSetUpFamily
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__STCoreUser_Observable__observableCanSetUpFamily__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __50__STCoreUser_Observable__observableCanSetUpFamily__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) canSetUpFamily];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)observableShareWebUsage
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__STCoreUser_Observable__observableShareWebUsage__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __49__STCoreUser_Observable__observableShareWebUsage__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shareWebUsage];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableShareWebUsage:(BOOL)a3
{
  v5 = [(STCoreUser *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__STCoreUser_Observable__setObservableShareWebUsage___block_invoke;
  v7[3] = &unk_1E7CE7580;
  v9 = a3;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [v6 performBlockAndWait:v7];
}

void __53__STCoreUser_Observable__setObservableShareWebUsage___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShareWebUsage:*(a1 + 48)];
  if ([*(a1 + 40) hasChanges])
  {
    v2 = *(a1 + 40);
    v6 = 0;
    v3 = [v2 save:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v5 = +[STLog persistence];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __53__STCoreUser_Observable__setObservableShareWebUsage___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (void)resetPasscode
{
  v4 = [[STPINController alloc] initWithUser:self];
  v3 = [(STCoreUser *)self effectivePasscode];
  [(STPINController *)v4 removePIN:v3 completionHandler:&__block_literal_global_10];
}

void __39__STCoreUser_Observable__resetPasscode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STLog persistence];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __39__STCoreUser_Observable__resetPasscode__block_invoke_cold_1();
    }
  }
}

- (BOOL)observableCommunicationSafetySendingRestricted
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__STCoreUser_Observable__observableCommunicationSafetySendingRestricted__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __72__STCoreUser_Observable__observableCommunicationSafetySendingRestricted__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCommunicationSafetySendingRestricted];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableCommunicationSafetySendingRestricted:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = +[STLog communicationSafety];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v13 = v3;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Setting isCommunicationSafetySendingRestricted restriction to: %{public}u", buf, 8u);
  }

  v6 = [(STCoreUser *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__STCoreUser_Observable__setObservableCommunicationSafetySendingRestricted___block_invoke;
  v9[3] = &unk_1E7CE7580;
  v11 = v3;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  [v7 performBlockAndWait:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __76__STCoreUser_Observable__setObservableCommunicationSafetySendingRestricted___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsCommunicationSafetySendingRestricted:*(a1 + 48)];
  if ([*(a1 + 40) hasChanges])
  {
    v2 = *(a1 + 40);
    v6 = 0;
    v3 = [v2 save:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v5 = +[STLog communicationSafety];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __76__STCoreUser_Observable__setObservableCommunicationSafetySendingRestricted___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (BOOL)observableCommunicationSafetyReceivingRestricted
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__STCoreUser_Observable__observableCommunicationSafetyReceivingRestricted__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __74__STCoreUser_Observable__observableCommunicationSafetyReceivingRestricted__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCommunicationSafetyReceivingRestricted];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableCommunicationSafetyReceivingRestricted:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = +[STLog communicationSafety];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v13 = v3;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Setting isCommunicationSafetyReceivingRestricted restriction to: %{public}u", buf, 8u);
  }

  v6 = [(STCoreUser *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__STCoreUser_Observable__setObservableCommunicationSafetyReceivingRestricted___block_invoke;
  v9[3] = &unk_1E7CE7580;
  v11 = v3;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  [v7 performBlockAndWait:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __78__STCoreUser_Observable__setObservableCommunicationSafetyReceivingRestricted___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsCommunicationSafetyReceivingRestricted:*(a1 + 48)];
  if ([*(a1 + 40) hasChanges])
  {
    v2 = *(a1 + 40);
    v6 = 0;
    v3 = [v2 save:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v5 = +[STLog communicationSafety];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __78__STCoreUser_Observable__setObservableCommunicationSafetyReceivingRestricted___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (BOOL)observableCommunicationSafetyNotificationEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__STCoreUser_Observable__observableCommunicationSafetyNotificationEnabled__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __74__STCoreUser_Observable__observableCommunicationSafetyNotificationEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCommunicationSafetyNotificationEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableCommunicationSafetyNotificationEnabled:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = +[STLog communicationSafety];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v13 = v3;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Setting isCommunicationSafetyNotificationEnabled restriction to: %{public}u", buf, 8u);
  }

  v6 = [(STCoreUser *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__STCoreUser_Observable__setObservableCommunicationSafetyNotificationEnabled___block_invoke;
  v9[3] = &unk_1E7CE7580;
  v11 = v3;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  [v7 performBlockAndWait:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __78__STCoreUser_Observable__setObservableCommunicationSafetyNotificationEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsCommunicationSafetyNotificationEnabled:*(a1 + 48)];
  if ([*(a1 + 40) hasChanges])
  {
    v2 = *(a1 + 40);
    v6 = 0;
    v3 = [v2 save:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v5 = +[STLog communicationSafety];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __78__STCoreUser_Observable__setObservableCommunicationSafetyNotificationEnabled___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

- (BOOL)observableCommunicationSafetyAnalyticsEnabled
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__STCoreUser_Observable__observableCommunicationSafetyAnalyticsEnabled__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __71__STCoreUser_Observable__observableCommunicationSafetyAnalyticsEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCommunicationSafetyAnalyticsEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableCommunicationSafetyAnalyticsEnabled:(BOOL)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = +[STLog communicationSafety];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v13 = v3;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Setting isCommunicationSafetyAnalyticsEnabled to: %{public}u", buf, 8u);
  }

  v6 = [(STCoreUser *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__STCoreUser_Observable__setObservableCommunicationSafetyAnalyticsEnabled___block_invoke;
  v9[3] = &unk_1E7CE7580;
  v11 = v3;
  v9[4] = self;
  v10 = v6;
  v7 = v6;
  [v7 performBlockAndWait:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __75__STCoreUser_Observable__setObservableCommunicationSafetyAnalyticsEnabled___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsCommunicationSafetyAnalyticsEnabled:*(a1 + 48)];
  if ([*(a1 + 40) hasChanges])
  {
    v2 = *(a1 + 40);
    v6 = 0;
    v3 = [v2 save:&v6];
    v4 = v6;
    if ((v3 & 1) == 0)
    {
      v5 = +[STLog communicationSafety];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __75__STCoreUser_Observable__setObservableCommunicationSafetyAnalyticsEnabled___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v4 = 0;
  }
}

void __46__STCoreUser_notifyServerOfScreenTimeEnabled___block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_contactStoreForUser
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_6();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __57__STCoreUser_Observable__setObservableScreenTimeEnabled___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to save Screen Time enabled: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __57__STCoreUser_Observable__setObservableManagementEnabled___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to save management enabled: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__STCoreUser_Observable__setObservableSyncingEnabled___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to save syncing enabled: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __56__STCoreUser_Observable__setObservableAllLimitsEnabled___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to save all limits enabled: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __53__STCoreUser_Observable__setObservableShareWebUsage___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to save web usage sharing: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __39__STCoreUser_Observable__resetPasscode__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to reset passcode: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __76__STCoreUser_Observable__setObservableCommunicationSafetySendingRestricted___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to save communication safety sending restriction: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __78__STCoreUser_Observable__setObservableCommunicationSafetyReceivingRestricted___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to save communication safety receiving restriction: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __78__STCoreUser_Observable__setObservableCommunicationSafetyNotificationEnabled___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to save isCommunicationSafetyNotificationEnabled restriction: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __75__STCoreUser_Observable__setObservableCommunicationSafetyAnalyticsEnabled___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4_0(&dword_1B831F000, v0, v1, "Failed to save isCommunicationSafetyAnalyticsEnabled: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end