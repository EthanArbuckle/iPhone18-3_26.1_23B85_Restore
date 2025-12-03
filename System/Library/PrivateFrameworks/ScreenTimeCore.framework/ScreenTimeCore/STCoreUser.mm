@interface STCoreUser
+ (id)fetchLocalUserInContext:(id)context error:(id *)error;
+ (id)fetchRequest;
+ (id)fetchRequestForFamilyMembers;
+ (id)fetchRequestForUsersWithDSID:(id)d;
+ (id)fetchRequestMatchingAppleID:(id)d;
+ (id)fetchRequestMatchingLocalUser;
+ (id)fetchRequestMatchingUmanagedRemoteAdults;
+ (id)fetchUserWithAppleID:(id)d inContext:(id)context error:(id *)error;
+ (id)fetchUserWithDSID:(id)d inContext:(id)context error:(id *)error;
+ (id)keyPathsForValuesAffectingSyncingEnabled;
+ (id)localizedFullNameForAppleID:(id)d givenName:(id)name familyName:(id)familyName systemFullUserName:(id)userName;
- (BOOL)_validateAltDSID:(id)d;
- (BOOL)_validateAppleID:(id)d;
- (BOOL)_validateDSID:(id)d;
- (BOOL)_validateLocalUser:(id)user;
- (BOOL)_validateNumberOfLocalUsers:(id)users;
- (BOOL)_validateRemoteUser:(id)user;
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
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
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
- (STCoreUser)initWithFamilyMemberType:(id)type context:(id)context;
- (id)_contactStoreForUser;
- (id)_primaryContainerInContactStore:(id)store withError:(id *)error;
- (id)contentPrivacyConfigurationIdentifierForType:(id)type;
- (int64_t)communicationPolicy;
- (int64_t)communicationWhileLimitedPolicy;
- (int64_t)contactManagementState;
- (int64_t)contentPrivacySiriImageGenerationRestriction;
- (int64_t)defaultUserPolicies;
- (void)_contactStoreForUser;
- (void)didChangeValueForKey:(id)key;
- (void)resetPasscode;
- (void)setAppExceptions:(id)exceptions;
- (void)setCommunicationPolicy:(int64_t)policy;
- (void)setCommunicationWhileLimitedPolicy:(int64_t)policy;
- (void)setContactManagementState:(int64_t)state;
- (void)setContactsEditable:(BOOL)editable;
- (void)setContentPrivacySiriImageGenerationRestriction:(int64_t)restriction;
- (void)setDefaultUserPolicies:(int64_t)policies;
- (void)setEffectivePasscode:(id)passcode;
- (void)setEffectiveRecoveryAltDSID:(id)d;
- (void)setObservableAllLimitsEnabled:(BOOL)enabled;
- (void)setObservableCommunicationSafetyAnalyticsEnabled:(BOOL)enabled;
- (void)setObservableCommunicationSafetyNotificationEnabled:(BOOL)enabled;
- (void)setObservableCommunicationSafetyReceivingRestricted:(BOOL)restricted;
- (void)setObservableCommunicationSafetySendingRestricted:(BOOL)restricted;
- (void)setObservableManagementEnabled:(BOOL)enabled;
- (void)setObservableScreenTimeEnabled:(BOOL)enabled;
- (void)setObservableShareWebUsage:(BOOL)usage;
- (void)setObservableSyncingEnabled:(BOOL)enabled;
- (void)updateWithDescription:(id)description;
@end

@implementation STCoreUser

- (BOOL)isCommunicationSafetySendingRestricted
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  isCommunicationSafetySendingRestricted = [unmodeledManagingOrganizationSettings isCommunicationSafetySendingRestricted];

  return isCommunicationSafetySendingRestricted;
}

- (BOOL)isCommunicationSafetyReceivingRestricted
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  isCommunicationSafetyReceivingRestricted = [unmodeledManagingOrganizationSettings isCommunicationSafetyReceivingRestricted];

  return isCommunicationSafetyReceivingRestricted;
}

- (BOOL)isCommunicationSafetyNotificationEnabled
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  isCommunicationSafetyNotificationEnabled = [unmodeledManagingOrganizationSettings isCommunicationSafetyNotificationEnabled];

  return isCommunicationSafetyNotificationEnabled;
}

- (BOOL)isCommunicationSafetyAnalyticsEnabled
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  isCommunicationSafetyAnalyticsEnabled = [unmodeledManagingOrganizationSettings isCommunicationSafetyAnalyticsEnabled];

  return isCommunicationSafetyAnalyticsEnabled;
}

+ (id)fetchRequestMatchingLocalUser
{
  fetchRequest = [self fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"localUserDeviceState"];
  [fetchRequest setPredicate:v3];

  return fetchRequest;
}

+ (id)fetchRequest
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___STCoreUser;
  v2 = objc_msgSendSuper2(&v4, sel_fetchRequest);

  return v2;
}

- (STCoreOrganizationSettings)unmodeledManagingOrganizationSettings
{
  localSettings = [(STCoreUser *)self localSettings];
  familySettings = [(STCoreUser *)self familySettings];
  cloudSettings = [(STCoreUser *)self cloudSettings];
  isManaged = [familySettings isManaged];
  v7 = familySettings;
  if ((isManaged & 1) != 0 || (v7 = cloudSettings) != 0 || ([MEMORY[0x1E69ADFB8] sharedConnection], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "effectiveBoolValueForSetting:", *MEMORY[0x1E69ADE50]), v8, v7 = localSettings, v9 != 2))
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
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = unmodeledManagingOrganizationSettings;
  if (unmodeledManagingOrganizationSettings)
  {
    communicationPolicy = [unmodeledManagingOrganizationSettings communicationPolicy];
  }

  else
  {
    communicationPolicy = 0;
  }

  return communicationPolicy;
}

- (int64_t)communicationWhileLimitedPolicy
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = unmodeledManagingOrganizationSettings;
  if (unmodeledManagingOrganizationSettings)
  {
    communicationWhileLimitedPolicy = [unmodeledManagingOrganizationSettings communicationWhileLimitedPolicy];
  }

  else
  {
    communicationWhileLimitedPolicy = 0;
  }

  return communicationWhileLimitedPolicy;
}

- (STCoreUser)initWithFamilyMemberType:(id)type context:(id)context
{
  typeCopy = type;
  v10.receiver = self;
  v10.super_class = STCoreUser;
  v7 = [(STCoreUser *)&v10 initWithContext:context];
  familyMemberType = v7->_familyMemberType;
  v7->_familyMemberType = typeCopy;

  return v7;
}

- (void)updateWithDescription:(id)description
{
  descriptionCopy = description;
  userDSID = [descriptionCopy userDSID];
  unsignedIntegerValue = [userDSID unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    dsid = [(STCoreUser *)self dsid];
    userDSID2 = [descriptionCopy userDSID];
    v8 = [dsid isEqualToNumber:userDSID2];

    if ((v8 & 1) == 0)
    {
      userDSID3 = [descriptionCopy userDSID];
      [(STCoreUser *)self setDsid:userDSID3];
    }

    altDSID = [(STCoreUser *)self altDSID];
    userAltDSID = [descriptionCopy userAltDSID];
    v12 = [altDSID isEqualToString:userAltDSID];

    if ((v12 & 1) == 0)
    {
      userAltDSID2 = [descriptionCopy userAltDSID];
      [(STCoreUser *)self setAltDSID:userAltDSID2];
    }

    givenName = [(STCoreUser *)self givenName];
    givenName2 = [descriptionCopy givenName];
    v16 = [givenName isEqualToString:givenName2];

    if ((v16 & 1) == 0)
    {
      givenName3 = [descriptionCopy givenName];
      [(STCoreUser *)self setGivenName:givenName3];
    }

    familyName = [(STCoreUser *)self familyName];
    familyName2 = [descriptionCopy familyName];
    v20 = [familyName isEqualToString:familyName2];

    if ((v20 & 1) == 0)
    {
      familyName3 = [descriptionCopy familyName];
      [(STCoreUser *)self setFamilyName:familyName3];
    }
  }

  else
  {
    givenName4 = [(STCoreUser *)self givenName];

    if (givenName4)
    {
      [(STCoreUser *)self setGivenName:0];
    }

    familyName4 = [(STCoreUser *)self familyName];

    if (familyName4)
    {
      [(STCoreUser *)self setFamilyName:0];
    }

    familyMemberType = [(STCoreUser *)self familyMemberType];

    if (familyMemberType != @"Unknown")
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

    dsid2 = [(STCoreUser *)self dsid];
    v26 = [dsid2 isEqualToNumber:&unk_1F3059B28];

    if ((v26 & 1) == 0)
    {
      [(STCoreUser *)self setDsid:&unk_1F3059B28];
    }

    altDSID2 = [(STCoreUser *)self altDSID];

    if (altDSID2)
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

- (void)didChangeValueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"dsid"])
  {
    userDeviceStates = [(STCoreUser *)self userDeviceStates];
    [userDeviceStates makeObjectsPerformSelector:sel_updateUniqueIdentifier];

    familySettings = [(STCoreUser *)self familySettings];
    [familySettings updateUniqueIdentifier];
  }

  v7.receiver = self;
  v7.super_class = STCoreUser;
  [(STCoreUser *)&v7 didChangeValueForKey:keyCopy];
}

+ (id)fetchLocalUserInContext:(id)context error:(id *)error
{
  v32[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  fetchRequestMatchingLocalUser = [self fetchRequestMatchingLocalUser];
  v8 = [contextCopy executeFetchRequest:fetchRequestMatchingLocalUser error:error];

  if (!v8)
  {
    goto LABEL_6;
  }

  if ([v8 count] < 2)
  {
    firstObject = [v8 firstObject];
    v14 = firstObject;
    if (firstObject)
    {
      v14 = firstObject;
      v15 = v14;
    }

    else
    {
      if (error)
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
          *error = [v21 errorWithDomain:@"STErrorDomain" code:10 userInfo:v22];
        }
      }

      v15 = 0;
    }

    goto LABEL_13;
  }

  if (!error)
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
  *error = v15 = 0;
LABEL_13:

LABEL_14:
  v23 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)fetchUserWithDSID:(id)d inContext:(id)context error:(id *)error
{
  context = [STCoreUser fetchRequestForUsersWithDSID:d, context];
  v7 = [context execute:error];

  if (v7)
  {
    firstObject = [v7 firstObject];
    v9 = firstObject;
    if (firstObject)
    {
      v10 = firstObject;
    }

    else if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:11 userInfo:0];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)fetchUserWithAppleID:(id)d inContext:(id)context error:(id *)error
{
  context = [STCoreUser fetchRequestMatchingAppleID:d, context];
  v7 = [context execute:error];

  if (v7)
  {
    firstObject = [v7 firstObject];
    v9 = firstObject;
    if (firstObject)
    {
      v10 = firstObject;
    }

    else if (error)
    {
      *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"STErrorDomain" code:11 userInfo:0];
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
  fetchRequest = [self fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL AND (%K == %@ OR %K == %@) AND (%K == nil OR %K == NO)", @"localUserDeviceState", @"familyMemberType", @"Unknown", @"familyMemberType", @"Adult", @"familySettings", @"familySettings.isManaged"];
  [fetchRequest setPredicate:v3];

  return fetchRequest;
}

+ (id)fetchRequestForUsersWithDSID:(id)d
{
  dCopy = d;
  fetchRequest = [self fetchRequest];
  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"dsid", dCopy];

  [fetchRequest setPredicate:dCopy];

  return fetchRequest;
}

+ (id)fetchRequestForFamilyMembers
{
  v8[1] = *MEMORY[0x1E69E9840];
  fetchRequest = [self fetchRequest];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"familySettings"];
  [fetchRequest setPredicate:v3];

  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dsid" ascending:1];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [fetchRequest setSortDescriptors:v5];

  v6 = *MEMORY[0x1E69E9840];

  return fetchRequest;
}

+ (id)fetchRequestMatchingAppleID:(id)d
{
  dCopy = d;
  fetchRequest = [self fetchRequest];
  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"appleID", dCopy];

  [fetchRequest setPredicate:dCopy];

  return fetchRequest;
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
  localUserDeviceState = [(STCoreUser *)self localUserDeviceState];

  if (localUserDeviceState)
  {
    v4 = objc_opt_new();
  }

  else
  {
    altDSID = [(STCoreUser *)self altDSID];
    if (altDSID)
    {
      v6 = objc_alloc(MEMORY[0x1E699C060]);
      v13[0] = @"member-first-name";
      givenName = [(STCoreUser *)self givenName];
      v14[0] = givenName;
      v13[1] = @"member-dsid";
      dsid = [(STCoreUser *)self dsid];
      v13[2] = @"member-altDSID";
      v14[1] = dsid;
      v14[2] = altDSID;
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

- (id)_primaryContainerInContactStore:(id)store withError:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  storeCopy = store;
  localUserDeviceState = [(STCoreUser *)self localUserDeviceState];

  if (localUserDeviceState)
  {
    v8 = objc_opt_new();
    aa_primaryAppleAccount = [v8 aa_primaryAppleAccount];
    if (aa_primaryAppleAccount)
    {
      v10 = aa_primaryAppleAccount;
      childCardDAVAccountIdentifier = [aa_primaryAppleAccount childCardDAVAccountIdentifier];
      if (childCardDAVAccountIdentifier)
      {
        v12 = childCardDAVAccountIdentifier;
        v13 = [MEMORY[0x1E695CE48] predicateForContainersInAccountWithExternalIdentifier:childCardDAVAccountIdentifier];

        v8 = v13;
LABEL_7:
        v18 = [storeCopy containersMatchingPredicate:v8 error:error];
        firstObject = [v18 firstObject];

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
    defaultContainerIdentifier = [storeCopy defaultContainerIdentifier];
    if (defaultContainerIdentifier)
    {
      v15 = defaultContainerIdentifier;
      v16 = MEMORY[0x1E695CE48];
      v24[0] = defaultContainerIdentifier;
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

  firstObject = 0;
LABEL_17:

  v22 = *MEMORY[0x1E69E9840];

  return firstObject;
}

+ (id)localizedFullNameForAppleID:(id)d givenName:(id)name familyName:(id)familyName systemFullUserName:(id)userName
{
  nameCopy = name;
  familyNameCopy = familyName;
  userNameCopy = userName;
  dCopy = d;
  v13 = objc_opt_new();
  v14 = [dCopy length];

  if (v14)
  {
    [v13 setGivenName:nameCopy];
    [v13 setFamilyName:familyNameCopy];
LABEL_5:
    v17 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v13 style:0 options:0];
    v15 = v13;
    goto LABEL_6;
  }

  v15 = objc_opt_new();
  v16 = [v15 personNameComponentsFromString:userNameCopy];

  if (v16)
  {

    v13 = v16;
    goto LABEL_5;
  }

  v17 = userNameCopy;
LABEL_6:

  return v17;
}

- (NSString)localizedFullName
{
  appleID = [(STCoreUser *)self appleID];
  givenName = [(STCoreUser *)self givenName];
  familyName = [(STCoreUser *)self familyName];
  v6 = NSFullUserName();
  v7 = [STCoreUser localizedFullNameForAppleID:appleID givenName:givenName familyName:familyName systemFullUserName:v6];

  return v7;
}

- (BOOL)screenTimeEnabled
{
  localUserDeviceState = [(STCoreUser *)self localUserDeviceState];

  if (localUserDeviceState)
  {
    managedObjectContext = [(STCoreUser *)self managedObjectContext];
    v16 = 0;
    v5 = [STScreenTimeSettings fetchScreenTimeSettingsInContext:managedObjectContext error:&v16];
    v6 = v16;

    if (v5)
    {
      screenTimeEnabled = [v5 screenTimeEnabled];
    }

    else
    {
      v13 = +[STLog persistence];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [STCoreUser(UnmodeledProperties) screenTimeEnabled];
      }

      screenTimeEnabled = 0;
    }

    return screenTimeEnabled;
  }

  familySettings = [(STCoreUser *)self familySettings];
  isAppAndWebsiteActivityEnabled = [familySettings isAppAndWebsiteActivityEnabled];

  familySettings2 = [(STCoreUser *)self familySettings];
  v11 = familySettings2;
  if (isAppAndWebsiteActivityEnabled)
  {
    isAppAndWebsiteActivityEnabled2 = [familySettings2 isAppAndWebsiteActivityEnabled];
    screenTimeEnabled = [isAppAndWebsiteActivityEnabled2 BOOLValue];

    return screenTimeEnabled;
  }

  isManaged = [familySettings2 isManaged];

  return isManaged;
}

- (NSNumber)isAppAndWebsiteActivityEnabled
{
  familySettings = [(STCoreUser *)self familySettings];
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];

  if (unmodeledManagingOrganizationSettings == familySettings)
  {
    isAppAndWebsiteActivityEnabled = [familySettings isAppAndWebsiteActivityEnabled];
  }

  else
  {
    cloudSettings = [(STCoreUser *)self cloudSettings];
    unmodeledManagingOrganizationSettings2 = [(STCoreUser *)self unmodeledManagingOrganizationSettings];

    if (unmodeledManagingOrganizationSettings2 == cloudSettings)
    {
      isAppAndWebsiteActivityEnabled = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(cloudSettings, "isAppAndWebsiteActivityEnabled")}];
    }

    else
    {
      isAppAndWebsiteActivityEnabled = 0;
    }
  }

  return isAppAndWebsiteActivityEnabled;
}

+ (id)keyPathsForValuesAffectingSyncingEnabled
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)syncingEnabled
{
  localUserDeviceState = [(STCoreUser *)self localUserDeviceState];

  if (!localUserDeviceState)
  {
    return 0;
  }

  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v10 = 0;
  v5 = [STScreenTimeSettings fetchScreenTimeSettingsInContext:managedObjectContext error:&v10];
  v6 = v10;

  if (v5)
  {
    cloudSyncEnabled = [v5 cloudSyncEnabled];
  }

  else
  {
    v8 = +[STLog persistence];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [STCoreUser(UnmodeledProperties) screenTimeEnabled];
    }

    cloudSyncEnabled = 0;
  }

  return cloudSyncEnabled;
}

- (BOOL)canSetUpFamily
{
  localUserDeviceState = [(STCoreUser *)self localUserDeviceState];

  if (localUserDeviceState)
  {
    localUserDeviceState = [(STCoreUser *)self dsid];
    if (localUserDeviceState)
    {
      dsid = [(STCoreUser *)self dsid];
      v5 = [dsid isEqualToNumber:&unk_1F3059B28];

      if (v5)
      {
        LOBYTE(localUserDeviceState) = 0;
      }

      else
      {
        familyMemberType = [(STCoreUser *)self familyMemberType];
        if ([familyMemberType isEqualToString:@"Adult"] & 1) != 0 || (objc_msgSend(familyMemberType, "isEqualToString:", @"Teen"))
        {
          LOBYTE(localUserDeviceState) = 0;
        }

        else
        {
          LODWORD(localUserDeviceState) = [familyMemberType isEqualToString:@"Child"] ^ 1;
        }
      }
    }
  }

  return localUserDeviceState;
}

- (BOOL)allLimitsEnabled
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  allLimitsEnabled = [unmodeledManagingOrganizationSettings allLimitsEnabled];

  return allLimitsEnabled;
}

- (int64_t)defaultUserPolicies
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  defaultUserPolicies = [unmodeledManagingOrganizationSettings defaultUserPolicies];

  return defaultUserPolicies;
}

- (STCoreOrganization)managingOrganization
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  localSettings = [(STCoreUser *)self localSettings];

  if (unmodeledManagingOrganizationSettings == localSettings)
  {
    localSettings2 = [(STCoreUser *)self localSettings];
  }

  else
  {
    cloudSettings = [(STCoreUser *)self cloudSettings];

    if (unmodeledManagingOrganizationSettings == cloudSettings)
    {
      localSettings2 = [(STCoreUser *)self cloudSettings];
    }

    else
    {
      familySettings = [(STCoreUser *)self familySettings];

      if (unmodeledManagingOrganizationSettings != familySettings)
      {
        organization = 0;
        goto LABEL_9;
      }

      localSettings2 = [(STCoreUser *)self familySettings];
    }
  }

  v9 = localSettings2;
  organization = [localSettings2 organization];

LABEL_9:

  return organization;
}

- (BOOL)isManaged
{
  familySettings = [(STCoreUser *)self familySettings];
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];

  if (unmodeledManagingOrganizationSettings == familySettings)
  {
    isManaged = [familySettings isManaged];
  }

  else
  {
    isManaged = 0;
  }

  return isManaged;
}

- (BOOL)isManaging
{
  familySettings = [(STCoreUser *)self familySettings];
  isParent = [(STCoreUser *)self isParent];
  v5 = 0;
  if (isParent && familySettings)
  {
    organization = [familySettings organization];
    v7 = [organization valueForKeyPath:@"settings.isManaged"];
    v5 = [v7 containsObject:MEMORY[0x1E695E118]];
  }

  return v5;
}

- (NSString)effectivePasscode
{
  v13 = *MEMORY[0x1E69E9840];
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = +[STLog screentime];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    passcode = [unmodeledManagingOrganizationSettings passcode];
    v9 = 138543618;
    v10 = v4;
    v11 = 1024;
    v12 = passcode != 0;
    _os_log_impl(&dword_1B831F000, v3, OS_LOG_TYPE_INFO, "The effective passcode is from %{public}@ and is set %d", &v9, 0x12u);
  }

  passcode2 = [unmodeledManagingOrganizationSettings passcode];

  v7 = *MEMORY[0x1E69E9840];

  return passcode2;
}

- (NSString)effectiveRecoveryAltDSID
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  localSettings = [(STCoreUser *)self localSettings];
  cloudSettings = [(STCoreUser *)self cloudSettings];
  v6 = localSettings;
  if (unmodeledManagingOrganizationSettings == localSettings || (v6 = cloudSettings, unmodeledManagingOrganizationSettings == cloudSettings))
  {
    recoveryAltDSID = [v6 recoveryAltDSID];
  }

  else
  {
    recoveryAltDSID = 0;
  }

  return recoveryAltDSID;
}

- (BOOL)needsToSetPasscode
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  needsToSetPasscode = [unmodeledManagingOrganizationSettings needsToSetPasscode];

  return needsToSetPasscode;
}

- (BOOL)shareWebUsage
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  familySettings = [(STCoreUser *)self familySettings];
  v5 = familySettings;
  if (unmodeledManagingOrganizationSettings == familySettings)
  {
    shareWebUsage = [familySettings shareWebUsage];
  }

  else
  {
    shareWebUsage = 1;
  }

  return shareWebUsage;
}

- (NSSet)appExceptions
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  familySettings = [(STCoreUser *)self familySettings];
  v5 = familySettings;
  if (unmodeledManagingOrganizationSettings == familySettings)
  {
    appExceptions = [familySettings appExceptions];
  }

  else
  {
    appExceptions = objc_opt_new();
  }

  v7 = appExceptions;

  return v7;
}

- (NSString)organizationIdentifier
{
  localUserDeviceState = [(STCoreUser *)self localUserDeviceState];
  v4 = &STOrganizationIdentifierFamily;
  if (localUserDeviceState && ![(STCoreUser *)self isManaged])
  {
    v4 = STOrganizationIdentifierPersonal;
  }

  v5 = *v4;
  v6 = *v4;

  return v5;
}

- (BOOL)contactsEditable
{
  _contactStoreForUser = [(STCoreUser *)self _contactStoreForUser];
  if (_contactStoreForUser)
  {
    v8 = 0;
    v4 = [(STCoreUser *)self _primaryContainerInContactStore:_contactStoreForUser withError:&v8];
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
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  isCommunicationSafetyRestricted = [unmodeledManagingOrganizationSettings isCommunicationSafetyRestricted];

  return isCommunicationSafetyRestricted;
}

- (BOOL)isEyeReliefEnabled
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  isEyeReliefEnabled = [unmodeledManagingOrganizationSettings isEyeReliefEnabled];

  return isEyeReliefEnabled;
}

- (void)setDefaultUserPolicies:(int64_t)policies
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  [unmodeledManagingOrganizationSettings setDefaultUserPolicies:policies];
  familySettings = [(STCoreUser *)self familySettings];
  if (unmodeledManagingOrganizationSettings == familySettings)
  {
    [familySettings setIsDirty:1];
  }
}

- (void)setAppExceptions:(id)exceptions
{
  exceptionsCopy = exceptions;
  familySettings = [(STCoreUser *)self familySettings];
  [familySettings setAppExceptions:exceptionsCopy];

  [familySettings setIsDirty:1];
}

- (void)setEffectivePasscode:(id)passcode
{
  v14 = *MEMORY[0x1E69E9840];
  passcodeCopy = passcode;
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v6 = +[STLog screentime];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 1024;
    v13 = passcodeCopy != 0;
    _os_log_impl(&dword_1B831F000, v6, OS_LOG_TYPE_DEFAULT, "The effective passcode is from %{public}@ and is being set %d", &v10, 0x12u);
  }

  [unmodeledManagingOrganizationSettings setPasscode:passcodeCopy];
  familySettings = [(STCoreUser *)self familySettings];
  v8 = familySettings;
  if (unmodeledManagingOrganizationSettings == familySettings)
  {
    [familySettings setIsDirty:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)setEffectiveRecoveryAltDSID:(id)d
{
  dCopy = d;
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  localSettings = [(STCoreUser *)self localSettings];
  cloudSettings = [(STCoreUser *)self cloudSettings];
  v8 = cloudSettings;
  if (unmodeledManagingOrganizationSettings == localSettings)
  {
    cloudSettings = localSettings;
    goto LABEL_6;
  }

  if (unmodeledManagingOrganizationSettings == cloudSettings)
  {
LABEL_6:
    [cloudSettings setRecoveryAltDSID:dCopy];
    goto LABEL_7;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    [STCoreUser(UnmodeledInternal) setEffectiveRecoveryAltDSID:];
  }

LABEL_7:
}

- (void)setCommunicationPolicy:(int64_t)policy
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  [unmodeledManagingOrganizationSettings setCommunicationPolicy:policy];
  familySettings = [(STCoreUser *)self familySettings];
  if (unmodeledManagingOrganizationSettings == familySettings)
  {
    [familySettings setIsDirty:1];
  }
}

- (void)setCommunicationWhileLimitedPolicy:(int64_t)policy
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  [unmodeledManagingOrganizationSettings setCommunicationWhileLimitedPolicy:policy];
  familySettings = [(STCoreUser *)self familySettings];
  if (unmodeledManagingOrganizationSettings == familySettings)
  {
    [familySettings setIsDirty:1];
  }
}

- (int64_t)contactManagementState
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = unmodeledManagingOrganizationSettings;
  if (unmodeledManagingOrganizationSettings)
  {
    contactManagementState = [unmodeledManagingOrganizationSettings contactManagementState];
  }

  else
  {
    contactManagementState = 0;
  }

  return contactManagementState;
}

- (void)setContactManagementState:(int64_t)state
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  [unmodeledManagingOrganizationSettings setContactManagementState:state];
  familySettings = [(STCoreUser *)self familySettings];
  if (unmodeledManagingOrganizationSettings == familySettings)
  {
    [familySettings setIsDirty:1];
  }
}

- (int64_t)contentPrivacySiriImageGenerationRestriction
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  v3 = unmodeledManagingOrganizationSettings;
  if (unmodeledManagingOrganizationSettings)
  {
    contentPrivacySiriImageGenerationRestriction = [unmodeledManagingOrganizationSettings contentPrivacySiriImageGenerationRestriction];
  }

  else
  {
    contentPrivacySiriImageGenerationRestriction = 0;
  }

  return contentPrivacySiriImageGenerationRestriction;
}

- (void)setContentPrivacySiriImageGenerationRestriction:(int64_t)restriction
{
  unmodeledManagingOrganizationSettings = [(STCoreUser *)self unmodeledManagingOrganizationSettings];
  [unmodeledManagingOrganizationSettings setContentPrivacySiriImageGenerationRestriction:restriction];
  familySettings = [(STCoreUser *)self familySettings];
  if (unmodeledManagingOrganizationSettings == familySettings)
  {
    [familySettings setIsDirty:1];
  }
}

- (void)setContactsEditable:(BOOL)editable
{
  editableCopy = editable;
  v23 = *MEMORY[0x1E69E9840];
  _contactStoreForUser = [(STCoreUser *)self _contactStoreForUser];
  if (_contactStoreForUser)
  {
    v18 = 0;
    v6 = [(STCoreUser *)self _primaryContainerInContactStore:_contactStoreForUser withError:&v18];
    v7 = v18;
    v8 = [v6 mutableCopy];

    if (v8)
    {
      v9 = !editableCopy;
      [v8 setGuardianRestricted:!editableCopy];
      v10 = objc_opt_new();
      [v10 setIgnoresGuardianRestrictions:1];
      [v10 updateContainer:v8];
      v17 = v7;
      v11 = [_contactStoreForUser executeSaveRequest:v10 error:&v17];
      v12 = v17;

      v13 = +[STLog persistence];
      v14 = v13;
      if (v11)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [v8 identifier];
          *buf = 67109378;
          v20 = v9;
          v21 = 2114;
          v22 = identifier;
          _os_log_impl(&dword_1B831F000, v14, OS_LOG_TYPE_DEFAULT, "Set guardian restricted to %d on container %{public}@", buf, 0x12u);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(STCoreUser(UnmodeledInternal) *)editableCopy setContactsEditable:v12, v14];
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
  familySettings = [(STCoreUser *)self familySettings];
  if (!familySettings)
  {
    goto LABEL_7;
  }

  familyMemberType = familySettings;
  familySettings2 = [(STCoreUser *)self familySettings];
  if (([familySettings2 isManaged] & 1) != 0 || -[STCoreUser isFamilyOrganizer](self, "isFamilyOrganizer"))
  {

    goto LABEL_8;
  }

  isParent = [(STCoreUser *)self isParent];

  if ((isParent & 1) == 0)
  {
LABEL_7:
    familyMemberType = [(STCoreUser *)self familyMemberType];
    if (([familyMemberType isEqualToString:@"Child"] & 1) == 0)
    {
      v7 = [familyMemberType isEqualToString:@"Teen"];
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
  organizationIdentifier = [(STCoreUser *)self organizationIdentifier];
  if ([organizationIdentifier isEqualToString:@"personal"])
  {
    v4 = @"digital_health_restrictions";
  }

  else
  {
    v5 = MEMORY[0x1E696AEC0];
    dsid = [(STCoreUser *)self dsid];
    stringValue = [dsid stringValue];
    v4 = [v5 stringWithFormat:@"%@.%@", @"digital_health_restrictions", stringValue];
  }

  return v4;
}

- (id)contentPrivacyConfigurationIdentifierForType:(id)type
{
  typeCopy = type;
  organizationIdentifier = [(STCoreUser *)self organizationIdentifier];
  v6 = [organizationIdentifier isEqualToString:@"personal"];
  v7 = MEMORY[0x1E696AEC0];
  if (v6)
  {
    typeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"digital_health_restrictions", typeCopy];
  }

  else
  {
    dsid = [(STCoreUser *)self dsid];
    stringValue = [dsid stringValue];
    typeCopy = [v7 stringWithFormat:@"%@.%@.%@", @"digital_health_restrictions", stringValue, typeCopy];
  }

  return typeCopy;
}

- (NSString)alwaysAllowActivationIdentifier
{
  organizationIdentifier = [(STCoreUser *)self organizationIdentifier];
  if ([organizationIdentifier isEqualToString:@"personal"])
  {
    v4 = createIdentifierWithComponents(@"always_allow_activation", organizationIdentifier, 0);
  }

  else
  {
    dsid = [(STCoreUser *)self dsid];
    stringValue = [dsid stringValue];
    v4 = createIdentifierWithComponents(@"always_allow_activation", organizationIdentifier, stringValue);
  }

  return v4;
}

- (NSString)alwaysAllowConfigurationIdentifier
{
  organizationIdentifier = [(STCoreUser *)self organizationIdentifier];
  if ([organizationIdentifier isEqualToString:@"personal"])
  {
    v4 = createIdentifierWithComponents(@"always_allow_app_configuration", organizationIdentifier, 0);
  }

  else
  {
    dsid = [(STCoreUser *)self dsid];
    stringValue = [dsid stringValue];
    v4 = createIdentifierWithComponents(@"always_allow_app_configuration", organizationIdentifier, stringValue);
  }

  return v4;
}

- (NSString)managedUserActivationIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  dsid = [(STCoreUser *)self dsid];
  stringValue = [dsid stringValue];
  v5 = [v2 stringWithFormat:@"%@_%@", @"managed_user_activation", stringValue];

  return v5;
}

- (NSString)iCloudLogoutConfigurationIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  dsid = [(STCoreUser *)self dsid];
  stringValue = [dsid stringValue];
  v5 = [v2 stringWithFormat:@"%@_%@", @"icloud_logout_configuration", stringValue];

  return v5;
}

- (NSString)automaticDateTimeConfigurationIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  dsid = [(STCoreUser *)self dsid];
  stringValue = [dsid stringValue];
  v5 = [v2 stringWithFormat:@"%@_%@", @"force_date_time_configuration", stringValue];

  return v5;
}

- (BOOL)validateForUpdate:(id *)update
{
  v11.receiver = self;
  v11.super_class = STCoreUser;
  if (![(STCoreUser *)&v11 validateForUpdate:?])
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreUser(Identifiers) validateForUpdate:update];
    }

    v7 = 0;
    goto LABEL_15;
  }

  if (_os_feature_enabled_impl())
  {
    v5 = objc_opt_new();
    localUserDeviceState = [(STCoreUser *)self localUserDeviceState];

    if (localUserDeviceState)
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
    v7 = [(NSManagedObject *)&v10 parseValidationErrors:update otherErrors:v5];
LABEL_15:

    return v7;
  }

  return 1;
}

- (BOOL)validateForInsert:(id *)insert
{
  v11.receiver = self;
  v11.super_class = STCoreUser;
  if (![(STCoreUser *)&v11 validateForInsert:?])
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreUser(Identifiers) validateForInsert:insert];
    }

    v7 = 0;
    goto LABEL_15;
  }

  if (_os_feature_enabled_impl())
  {
    v5 = objc_opt_new();
    localUserDeviceState = [(STCoreUser *)self localUserDeviceState];

    if (localUserDeviceState)
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
    v7 = [(NSManagedObject *)&v10 parseValidationErrors:insert otherErrors:v5];
LABEL_15:

    return v7;
  }

  return 1;
}

- (BOOL)validateForDelete:(id *)delete
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
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:delete otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreUser(Identifiers) validateForDelete:delete];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_validateAppleID:(id)d
{
  v24[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  appleID = [(STCoreUser *)self appleID];
  v6 = [STCoreUser fetchRequestMatchingAppleID:appleID];

  v20 = 0;
  v7 = [v6 execute:&v20];
  v8 = v20;
  if (!v7)
  {
    [dCopy addObject:v8];
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
    [dCopy addObject:v11];
  }

  appleID2 = [(STCoreUser *)self appleID];
  if (![appleID2 length])
  {
    goto LABEL_7;
  }

  dsid = [(STCoreUser *)self dsid];
  intValue = [dsid intValue];

  if (!intValue)
  {
    v15 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22 = @"If the user has an Apple ID, they must have a DSID.";
    appleID2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v16 = [v15 errorWithDomain:@"STErrorDomain" code:512 userInfo:appleID2];
    [dCopy addObject:v16];

LABEL_7:
  }

  v17 = [dCopy count] == 0;
LABEL_10:

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_validateAltDSID:(id)d
{
  v26[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[STCoreUser fetchRequest];
  v6 = MEMORY[0x1E696AE18];
  altDSID = [(STCoreUser *)self altDSID];
  v8 = [v6 predicateWithFormat:@"%K == %@", @"altDSID", altDSID];
  [v5 setPredicate:v8];

  v22 = 0;
  v9 = [v5 execute:&v22];
  v10 = v22;
  if (!v9)
  {
    [dCopy addObject:v10];
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
    [dCopy addObject:v13];
  }

  dsid = [(STCoreUser *)self dsid];
  if ([dsid isEqual:&unk_1F3059B28])
  {
    goto LABEL_7;
  }

  altDSID2 = [(STCoreUser *)self altDSID];
  v16 = [altDSID2 length];

  if (!v16)
  {
    v17 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24 = @"If the user has a DSID, they must have an altDSID.";
    dsid = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v18 = [v17 errorWithDomain:@"STErrorDomain" code:517 userInfo:dsid];
    [dCopy addObject:v18];

LABEL_7:
  }

  v19 = [dCopy count] == 0;
LABEL_10:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (BOOL)_validateDSID:(id)d
{
  v17[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  dsid = [(STCoreUser *)self dsid];
  v6 = [STCoreUser fetchRequestForUsersWithDSID:dsid];

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
      [dCopy addObject:v11];
    }

    v12 = [dCopy count] == 0;
  }

  else
  {
    [dCopy addObject:v8];
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)_validateLocalUser:(id)user
{
  v19[1] = *MEMORY[0x1E69E9840];
  userCopy = user;
  familyMemberType = [(STCoreUser *)self familyMemberType];
  if (familyMemberType == @"Child")
  {
    goto LABEL_6;
  }

  familyMemberType2 = [(STCoreUser *)self familyMemberType];
  v7 = familyMemberType2;
  if (familyMemberType2 == @"Teen")
  {

LABEL_6:
    goto LABEL_7;
  }

  familyMemberType3 = [(STCoreUser *)self familyMemberType];
  v9 = familyMemberType3;
  if (familyMemberType3 != @"Adult")
  {

    goto LABEL_10;
  }

  isParent = [(STCoreUser *)self isParent];

  if (isParent)
  {
    goto LABEL_10;
  }

LABEL_7:
  familySettings = [(STCoreUser *)self familySettings];

  if (!familySettings)
  {
    v11 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A578];
    v19[0] = @"A local user who is a child, teen, nor non-parent adult must have family settings.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v13 = [v11 errorWithDomain:@"STErrorDomain" code:514 userInfo:v12];
    [userCopy addObject:v13];
  }

LABEL_10:
  v15 = [userCopy count] == 0;

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)_validateNumberOfLocalUsers:(id)users
{
  v20[1] = *MEMORY[0x1E69E9840];
  usersCopy = users;
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
      [usersCopy addObject:v9];
    }

    if (![v5 count])
    {
      v10 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E696A578];
      v18 = @"There must be one local user.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v12 = [v10 errorWithDomain:@"STErrorDomain" code:10 userInfo:v11];
      [usersCopy addObject:v12];
    }

    v13 = [usersCopy count] == 0;
  }

  else
  {
    [usersCopy addObject:v6];
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (BOOL)_validateRemoteUser:(id)user
{
  v22[1] = *MEMORY[0x1E69E9840];
  userCopy = user;
  if (([(STCoreUser *)self isParent]& 1) == 0)
  {
    familySettings = [(STCoreUser *)self familySettings];

    if (!familySettings)
    {
      v6 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A578];
      v22[0] = @"A remote user must have Family Settings.";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v8 = [v6 errorWithDomain:@"STErrorDomain" code:514 userInfo:v7];
      [userCopy addObject:v8];
    }
  }

  familyMemberType = [(STCoreUser *)self familyMemberType];
  if (!familyMemberType || (v10 = familyMemberType, -[STCoreUser familyMemberType](self, "familyMemberType"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqualToString:@"Unknown"], v11, v10, v12))
  {
    v13 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v20 = @"A remote user must be family member..";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [v13 errorWithDomain:@"STErrorDomain" code:513 userInfo:v14];
    [userCopy addObject:v15];
  }

  v16 = [userCopy count] == 0;

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)observableScreenTimeEnabled
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__STCoreUser_Observable__observableScreenTimeEnabled__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __53__STCoreUser_Observable__observableScreenTimeEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) screenTimeEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableScreenTimeEnabled:(BOOL)enabled
{
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__STCoreUser_Observable__setObservableScreenTimeEnabled___block_invoke;
  v7[3] = &unk_1E7CE7580;
  enabledCopy = enabled;
  v7[4] = self;
  v8 = managedObjectContext;
  v6 = managedObjectContext;
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__STCoreUser_Observable__observableManagementEnabled__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __53__STCoreUser_Observable__observableManagementEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isManaged];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableManagementEnabled:(BOOL)enabled
{
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__STCoreUser_Observable__setObservableManagementEnabled___block_invoke;
  v7[3] = &unk_1E7CE7580;
  enabledCopy = enabled;
  v7[4] = self;
  v8 = managedObjectContext;
  v6 = managedObjectContext;
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__STCoreUser_Observable__observableSyncingEnabled__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __50__STCoreUser_Observable__observableSyncingEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) syncingEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableSyncingEnabled:(BOOL)enabled
{
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__STCoreUser_Observable__setObservableSyncingEnabled___block_invoke;
  v7[3] = &unk_1E7CE7580;
  enabledCopy = enabled;
  v7[4] = self;
  v8 = managedObjectContext;
  v6 = managedObjectContext;
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__STCoreUser_Observable__observableAllLimitsEnabled__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __52__STCoreUser_Observable__observableAllLimitsEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) allLimitsEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableAllLimitsEnabled:(BOOL)enabled
{
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__STCoreUser_Observable__setObservableAllLimitsEnabled___block_invoke;
  v7[3] = &unk_1E7CE7580;
  enabledCopy = enabled;
  v7[4] = self;
  v8 = managedObjectContext;
  v6 = managedObjectContext;
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__STCoreUser_Observable__observableCanSetUpFamily__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __50__STCoreUser_Observable__observableCanSetUpFamily__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) canSetUpFamily];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)observableShareWebUsage
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__STCoreUser_Observable__observableShareWebUsage__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __49__STCoreUser_Observable__observableShareWebUsage__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) shareWebUsage];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableShareWebUsage:(BOOL)usage
{
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__STCoreUser_Observable__setObservableShareWebUsage___block_invoke;
  v7[3] = &unk_1E7CE7580;
  usageCopy = usage;
  v7[4] = self;
  v8 = managedObjectContext;
  v6 = managedObjectContext;
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
  effectivePasscode = [(STCoreUser *)self effectivePasscode];
  [(STPINController *)v4 removePIN:effectivePasscode completionHandler:&__block_literal_global_10];
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__STCoreUser_Observable__observableCommunicationSafetySendingRestricted__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __72__STCoreUser_Observable__observableCommunicationSafetySendingRestricted__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCommunicationSafetySendingRestricted];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableCommunicationSafetySendingRestricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  v14 = *MEMORY[0x1E69E9840];
  v5 = +[STLog communicationSafety];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v13 = restrictedCopy;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Setting isCommunicationSafetySendingRestricted restriction to: %{public}u", buf, 8u);
  }

  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__STCoreUser_Observable__setObservableCommunicationSafetySendingRestricted___block_invoke;
  v9[3] = &unk_1E7CE7580;
  v11 = restrictedCopy;
  v9[4] = self;
  v10 = managedObjectContext;
  v7 = managedObjectContext;
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__STCoreUser_Observable__observableCommunicationSafetyReceivingRestricted__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __74__STCoreUser_Observable__observableCommunicationSafetyReceivingRestricted__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCommunicationSafetyReceivingRestricted];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableCommunicationSafetyReceivingRestricted:(BOOL)restricted
{
  restrictedCopy = restricted;
  v14 = *MEMORY[0x1E69E9840];
  v5 = +[STLog communicationSafety];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v13 = restrictedCopy;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Setting isCommunicationSafetyReceivingRestricted restriction to: %{public}u", buf, 8u);
  }

  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__STCoreUser_Observable__setObservableCommunicationSafetyReceivingRestricted___block_invoke;
  v9[3] = &unk_1E7CE7580;
  v11 = restrictedCopy;
  v9[4] = self;
  v10 = managedObjectContext;
  v7 = managedObjectContext;
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __74__STCoreUser_Observable__observableCommunicationSafetyNotificationEnabled__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __74__STCoreUser_Observable__observableCommunicationSafetyNotificationEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCommunicationSafetyNotificationEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableCommunicationSafetyNotificationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v14 = *MEMORY[0x1E69E9840];
  v5 = +[STLog communicationSafety];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v13 = enabledCopy;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Setting isCommunicationSafetyNotificationEnabled restriction to: %{public}u", buf, 8u);
  }

  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__STCoreUser_Observable__setObservableCommunicationSafetyNotificationEnabled___block_invoke;
  v9[3] = &unk_1E7CE7580;
  v11 = enabledCopy;
  v9[4] = self;
  v10 = managedObjectContext;
  v7 = managedObjectContext;
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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__STCoreUser_Observable__observableCommunicationSafetyAnalyticsEnabled__block_invoke;
  v5[3] = &unk_1E7CE7558;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [managedObjectContext performBlockAndWait:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __71__STCoreUser_Observable__observableCommunicationSafetyAnalyticsEnabled__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isCommunicationSafetyAnalyticsEnabled];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setObservableCommunicationSafetyAnalyticsEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v14 = *MEMORY[0x1E69E9840];
  v5 = +[STLog communicationSafety];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v13 = enabledCopy;
    _os_log_impl(&dword_1B831F000, v5, OS_LOG_TYPE_DEFAULT, "Setting isCommunicationSafetyAnalyticsEnabled to: %{public}u", buf, 8u);
  }

  managedObjectContext = [(STCoreUser *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__STCoreUser_Observable__setObservableCommunicationSafetyAnalyticsEnabled___block_invoke;
  v9[3] = &unk_1E7CE7580;
  v11 = enabledCopy;
  v9[4] = self;
  v10 = managedObjectContext;
  v7 = managedObjectContext;
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