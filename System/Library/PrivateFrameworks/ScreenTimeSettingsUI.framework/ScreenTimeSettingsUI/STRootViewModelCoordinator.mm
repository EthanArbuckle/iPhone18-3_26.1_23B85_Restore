@interface STRootViewModelCoordinator
+ (id)createValuesByRestrictionWithValuesByRestrictionItem:(id)a3 isSiriImageGenerationAllowed:(BOOL)a4;
+ (id)defaultValueForRestrictionIdentifier:(id)a3 forIsLocalDevice:(BOOL)a4;
+ (id)keyPathsForValuesAffectingUsageDetailsCoordinator;
+ (id)loadViewModelFromManagedObjectContext:(id)a3 isLocalUser:(BOOL)a4 userDSID:(id)a5 error:(id *)a6;
- (BOOL)_currentAccountIsProto;
- (BOOL)hasShownAppRatingChangeTip;
- (BOOL)hasShownMiniBuddy;
- (BOOL)isPasscodeEnabled;
- (BOOL)shouldShowConnectToFamilyForSignIn;
- (BOOL)validatePIN:(id)a3;
- (STCommunicationSafetyViewModelCoordinator)communicationSafetyCoordinator;
- (STContentPrivacyViewModelCoordinator)contentPrivacyCoordinator;
- (STEyeReliefViewModelCoordinator)eyeReliefCoordinator;
- (STRootViewModelCoordinator)initWithUserDSID:(id)a3 deviceIdentifier:(id)a4 usageReportType:(id)a5 usageContext:(int64_t)a6;
- (STTimeAllowancesViewModelCoordinator)timeAllowancesCoordinator;
- (STUsageDetailsViewModelCoordinator)usageDetailsCoordinator;
- (id)coordinatorForChild:(id)a3 deviceIdentifier:(id)a4 usageReportType:(id)a5;
- (id)defaultValueForRestrictionIdentifier:(id)a3;
- (id)organizationIdentifierForManagement;
- (id)organizationIdentifierForUsage;
- (void)_registerForPersistentStoreNotifications;
- (void)_registerForWillResignActiveNotifications;
- (void)_reportCoreAnalyticsEventScreenTimeEnabled:(BOOL)a3 user:(id)a4 userType:(unint64_t)a5 userIsRemote:(BOOL)a6;
- (void)_setPIN:(id)a3 recoveryAltDSID:(id)a4 shouldSetRecoveryAppleID:(BOOL)a5 completionHandler:(id)a6;
- (void)_validateDeviceIdentifier;
- (void)_willRefreshUsage:(id)a3;
- (void)applyIntroductionViewModel:(id)a3 withCompletionHandler:(id)a4;
- (void)enableManagementWithPIN:(id)a3 recoveryAltDSID:(id)a4 completionHandler:(id)a5;
- (void)loadRegionRatingsWithCompletionHandler:(id)a3;
- (void)loadValuesByRestrictionWithCompletionHandler:(id)a3;
- (void)loadViewModelRightNow;
- (void)loadViewModelWithCompletionHandler:(id)a3;
- (void)saveViewModel:(id)a3;
- (void)setHasShownAppRatingChangeTip:(BOOL)a3;
- (void)setHasShownMiniBuddy:(BOOL)a3;
- (void)setManagementEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)setScreenTimeEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)setScreenTimeSyncingEnabled:(BOOL)a3 completionHandler:(id)a4;
- (void)setShareWebUsageEnabled:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation STRootViewModelCoordinator

- (STRootViewModelCoordinator)initWithUserDSID:(id)a3 deviceIdentifier:(id)a4 usageReportType:(id)a5 usageContext:(int64_t)a6
{
  v31.receiver = self;
  v31.super_class = STRootViewModelCoordinator;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [(STRootViewModelCoordinator *)&v31 init];
  v13 = [v11 copy];
  userDSID = v12->_userDSID;
  v12->_userDSID = v13;

  v15 = [v10 copy];
  deviceIdentifier = v12->_deviceIdentifier;
  v12->_deviceIdentifier = v15;

  v17 = [v9 copy];
  usageReportType = v12->_usageReportType;
  v12->_usageReportType = v17;

  v12->_usageContext = a6;
  v19 = [MEMORY[0x277D4B898] sharedController];
  persistenceController = v12->_persistenceController;
  v12->_persistenceController = v19;

  v21 = [v11 unsignedIntegerValue];
  if (!v21)
  {
    v12->_isLocalUser = 1;
  }

  v22 = [(STAdminPersistenceController *)v12->_persistenceController persistentContainer];
  v23 = [MEMORY[0x277D4B8C0] sharedCache];
  [v23 setPersistentContainer:v22];

  userName = v12->_userName;
  v12->_userName = 0;

  v25 = objc_opt_new();
  viewModel = v12->_viewModel;
  v12->_viewModel = v25;

  v27 = objc_opt_new();
  coordinatorsByChildDSID = v12->_coordinatorsByChildDSID;
  v12->_coordinatorsByChildDSID = v27;

  [(STRootViewModelCoordinator *)v12 loadViewModelRightNow];
  [(STRootViewModelCoordinator *)v12 _registerForPersistentStoreNotifications];
  [(STRootViewModelCoordinator *)v12 _registerForWillResignActiveNotifications];
  v29 = [MEMORY[0x277CCAB98] defaultCenter];
  [v29 addObserver:v12 selector:sel__willRefreshUsage_ name:0x287677CE8 object:0];

  return v12;
}

- (void)_registerForPersistentStoreNotifications
{
  v24[5] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D4B9C8];
  v4 = [MEMORY[0x277D4B988] fetchRequest];
  v5 = [v3 requestWithFetchRequest:v4];

  v6 = MEMORY[0x277D4B9C8];
  v7 = [MEMORY[0x277D4B980] fetchRequest];
  v8 = [v6 requestWithFetchRequest:v7];

  v9 = MEMORY[0x277D4B9C8];
  v10 = [MEMORY[0x277D4BA90] fetchRequest];
  v11 = [v9 requestWithFetchRequest:v10];

  v12 = MEMORY[0x277D4B9C8];
  v13 = [MEMORY[0x277D4B9D8] fetchRequest];
  v14 = [v12 requestWithFetchRequest:v13];

  v15 = MEMORY[0x277D4B9C8];
  v16 = [MEMORY[0x277D4BAD8] fetchRequest];
  v17 = [v15 requestWithFetchRequest:v16];

  v18 = objc_alloc(MEMORY[0x277D4B9D0]);
  v19 = [(STRootViewModelCoordinator *)self persistenceController];
  v20 = [v19 viewContext];
  v24[0] = v5;
  v24[1] = v8;
  v24[2] = v11;
  v24[3] = v14;
  v24[4] = v17;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];
  v22 = [v18 initWithContext:v20 resultsRequests:v21];

  [v22 setDelegate:self];
  fetchedResultsController = self->_fetchedResultsController;
  self->_fetchedResultsController = v22;
}

- (void)_registerForWillResignActiveNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__passcodeSessionHasEnded_ name:*MEMORY[0x277D76768] object:0];
}

- (id)coordinatorForChild:(id)a3 deviceIdentifier:(id)a4 usageReportType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(STRootViewModelCoordinator *)self coordinatorsByChildDSID];
  v12 = [v8 dsid];
  v13 = [v11 objectForKeyedSubscript:v12];

  if (!v13)
  {
    v14 = [STRootViewModelCoordinator alloc];
    v15 = [v8 dsid];
    v13 = [(STRootViewModelCoordinator *)v14 initWithUserDSID:v15 deviceIdentifier:v9 usageReportType:v10 usageContext:[(STRootViewModelCoordinator *)self usageContext]];

    v16 = [(STRootViewModelCoordinator *)self coordinatorsByChildDSID];
    v17 = [v8 dsid];
    [v16 setObject:v13 forKeyedSubscript:v17];
  }

  return v13;
}

+ (id)keyPathsForValuesAffectingUsageDetailsCoordinator
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = @"viewModel.screenTimeEnabled";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (STUsageDetailsViewModelCoordinator)usageDetailsCoordinator
{
  if (!self->_usageDetailsCoordinator)
  {
    v3 = [(STRootViewModelCoordinator *)self viewModel];
    v4 = [v3 isScreenTimeEnabled];

    if (v4)
    {
      v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K == %hd OR %K == %hd)", @"platform", 4, @"platform", 5];
      v6 = [(STRootViewModelCoordinator *)self viewModel];
      v7 = [v6 devices];
      v8 = [v7 filteredArrayUsingPredicate:v5];

      [(STRootViewModelCoordinator *)self _validateDeviceIdentifier];
      v9 = [STUsageDetailsViewModelCoordinator alloc];
      v10 = [(STRootViewModelCoordinator *)self persistenceController];
      v11 = [(STRootViewModelCoordinator *)self organizationIdentifierForUsage];
      v12 = [(STRootViewModelCoordinator *)self userDSID];
      v13 = [(STRootViewModelCoordinator *)self deviceIdentifier];
      v14 = [(STRootViewModelCoordinator *)self usageReportType];
      v15 = [(STUsageDetailsViewModelCoordinator *)v9 initWithPersistenceController:v10 organizationIdentifier:v11 userDSID:v12 devices:v8 selectedDeviceIdentifier:v13 selectedUsageReportType:v14 usageContext:[(STRootViewModelCoordinator *)self usageContext]];
      usageDetailsCoordinator = self->_usageDetailsCoordinator;
      self->_usageDetailsCoordinator = v15;
    }
  }

  v17 = self->_usageDetailsCoordinator;

  return v17;
}

- (void)_validateDeviceIdentifier
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(STRootViewModelCoordinator *)self viewModel];
  v4 = [v3 devices];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__STRootViewModelCoordinator__validateDeviceIdentifier__block_invoke;
  v14[3] = &unk_279B7DEB0;
  v14[4] = self;
  v5 = [v4 indexOfObjectPassingTest:v14];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(STRootViewModelCoordinator *)self isLocalUser])
    {
      v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == YES", @"isLocalDevice"];
      v7 = [(STRootViewModelCoordinator *)self viewModel];
      v8 = [v7 devices];
      v9 = [v8 filteredArrayUsingPredicate:v6];
    }

    else
    {
      v6 = [(STRootViewModelCoordinator *)self viewModel];
      v9 = [v6 devices];
    }

    v10 = [v9 firstObject];
    v11 = [v10 identifier];

    v12 = +[STUILog usage];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(STRootViewModelCoordinator *)self deviceIdentifier];
      *buf = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_264BA2000, v12, OS_LOG_TYPE_DEFAULT, "_validateDeviceIdentifier: deviceIdentifier %{public}@ not found. Switching to %{public}@", buf, 0x16u);
    }

    [(STRootViewModelCoordinator *)self setDeviceIdentifier:v11];
  }
}

uint64_t __55__STRootViewModelCoordinator__validateDeviceIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) deviceIdentifier];
  if (v4)
  {
    v5 = [*(a1 + 32) deviceIdentifier];
    v6 = [v3 identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (STTimeAllowancesViewModelCoordinator)timeAllowancesCoordinator
{
  timeAllowancesCoordinator = self->_timeAllowancesCoordinator;
  if (!timeAllowancesCoordinator)
  {
    v4 = [STTimeAllowancesViewModelCoordinator alloc];
    v5 = [(STRootViewModelCoordinator *)self persistenceController];
    v6 = [(STRootViewModelCoordinator *)self userDSID];
    v7 = [(STTimeAllowancesViewModelCoordinator *)v4 initWithPersistenceController:v5 userDSID:v6];
    v8 = self->_timeAllowancesCoordinator;
    self->_timeAllowancesCoordinator = v7;

    timeAllowancesCoordinator = self->_timeAllowancesCoordinator;
  }

  return timeAllowancesCoordinator;
}

- (STContentPrivacyViewModelCoordinator)contentPrivacyCoordinator
{
  contentPrivacyCoordinator = self->_contentPrivacyCoordinator;
  if (!contentPrivacyCoordinator)
  {
    v4 = [STContentPrivacyViewModelCoordinator alloc];
    v5 = [(STRootViewModelCoordinator *)self persistenceController];
    v6 = [(STRootViewModelCoordinator *)self userDSID];
    v7 = [(STRootViewModelCoordinator *)self userName];
    v8 = [(STContentPrivacyViewModelCoordinator *)v4 initWithPersistenceController:v5 userDSID:v6 userName:v7 currentAccountIsProto:[(STRootViewModelCoordinator *)self _currentAccountIsProto]];
    v9 = self->_contentPrivacyCoordinator;
    self->_contentPrivacyCoordinator = v8;

    contentPrivacyCoordinator = self->_contentPrivacyCoordinator;
  }

  return contentPrivacyCoordinator;
}

- (STCommunicationSafetyViewModelCoordinator)communicationSafetyCoordinator
{
  communicationSafetyCoordinator = self->_communicationSafetyCoordinator;
  if (!communicationSafetyCoordinator)
  {
    v4 = [STCommunicationSafetyViewModelCoordinator alloc];
    v5 = [(STRootViewModelCoordinator *)self persistenceController];
    v6 = [(STRootViewModelCoordinator *)self userDSID];
    v7 = [(STCommunicationSafetyViewModelCoordinator *)v4 initWithPersistenceController:v5 userDSID:v6 currentAccountIsProto:[(STRootViewModelCoordinator *)self _currentAccountIsProto]];
    v8 = self->_communicationSafetyCoordinator;
    self->_communicationSafetyCoordinator = v7;

    communicationSafetyCoordinator = self->_communicationSafetyCoordinator;
  }

  return communicationSafetyCoordinator;
}

- (STEyeReliefViewModelCoordinator)eyeReliefCoordinator
{
  eyeReliefCoordinator = self->_eyeReliefCoordinator;
  if (!eyeReliefCoordinator)
  {
    v4 = [STEyeReliefViewModelCoordinator alloc];
    v5 = [(STRootViewModelCoordinator *)self persistenceController];
    v6 = [(STRootViewModelCoordinator *)self userDSID];
    v7 = [(STEyeReliefViewModelCoordinator *)v4 initWithPersistenceController:v5 userDSID:v6 currentAccountIsProto:[(STRootViewModelCoordinator *)self _currentAccountIsProto]];
    v8 = self->_eyeReliefCoordinator;
    self->_eyeReliefCoordinator = v7;

    eyeReliefCoordinator = self->_eyeReliefCoordinator;
  }

  return eyeReliefCoordinator;
}

- (BOOL)_currentAccountIsProto
{
  v3 = objc_opt_class();
  v4 = [(STRootViewModelCoordinator *)self _akAccountManager];
  LOBYTE(v3) = [v3 currentAccountIsProtoForAKAccountManager:v4];

  return v3;
}

- (BOOL)hasShownMiniBuddy
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"RMSetupShown"];

  return v3;
}

- (void)setHasShownMiniBuddy:(BOOL)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v3 setBool:1 forKey:@"RMSetupShown"];
  }
}

- (BOOL)hasShownAppRatingChangeTip
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:0x2876701E8];

  return v3;
}

- (void)setHasShownAppRatingChangeTip:(BOOL)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v3 setBool:1 forKey:0x2876701E8];
  }
}

- (BOOL)shouldShowConnectToFamilyForSignIn
{
  v3 = objc_opt_class();
  v4 = [(STRootViewModelCoordinator *)self _akAccountManager];
  LOBYTE(v3) = [v3 shouldShowConnectToFamilyForSignInForAKAccountManager:v4];

  return v3;
}

- (BOOL)isPasscodeEnabled
{
  v2 = [(STRootViewModelCoordinator *)self viewModel];
  v3 = [v2 me];
  v4 = [v3 hasPasscode];

  return v4;
}

- (BOOL)validatePIN:(id)a3
{
  v4 = a3;
  v5 = [(STRootViewModelCoordinator *)self viewModel];
  v6 = [v5 me];

  v7 = [v6 passcode];
  v8 = [v7 isEqualToString:v4];

  if (_os_feature_enabled_impl() && v8)
  {
    v9 = [(STRootViewModelCoordinator *)self persistenceController];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__STRootViewModelCoordinator_validatePIN___block_invoke;
    v11[3] = &unk_279B7DED8;
    v12 = v6;
    v13 = self;
    [v9 performBackgroundTask:v11];
  }

  return v8;
}

void __42__STRootViewModelCoordinator_validatePIN___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 userObjectID];
  v6 = [v4 objectWithID:v5];

  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = [v6 localUserDeviceState];
  v9 = [v8 device];
  [v9 setLastPasscodeUseDate:v7];

  v10 = [*(a1 + 40) persistenceController];
  v14 = 0;
  LODWORD(v9) = [v10 saveContext:v4 error:&v14];

  v11 = v14;
  v12 = +[STUILog persistence];
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v7;
      _os_log_impl(&dword_264BA2000, v13, OS_LOG_TYPE_DEFAULT, "Successfully saved last passcode use date: %{public}@", buf, 0xCu);
    }

    if ([*(a1 + 32) isManaged])
    {
      [MEMORY[0x277D4BA18] sendPasscodeActivityToParentsWithCompletionHandler:&__block_literal_global_16];
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __42__STRootViewModelCoordinator_validatePIN___block_invoke_cold_1();
    }
  }
}

void __42__STRootViewModelCoordinator_validatePIN___block_invoke_425(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[STUILog persistence];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__STRootViewModelCoordinator_validatePIN___block_invoke_425_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_DEFAULT, "Successfully sent passcode activity", v5, 2u);
  }
}

- (void)_setPIN:(id)a3 recoveryAltDSID:(id)a4 shouldSetRecoveryAppleID:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(STRootViewModelCoordinator *)self viewModel];
  v14 = [v13 me];

  v15 = [(STRootViewModelCoordinator *)self timeAllowancesCoordinator];
  v16 = [v15 viewModel];
  v17 = [v16 allowancesByIdentifier];

  v18 = [(STRootViewModelCoordinator *)self persistenceController];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __97__STRootViewModelCoordinator__setPIN_recoveryAltDSID_shouldSetRecoveryAppleID_completionHandler___block_invoke;
  v24[3] = &unk_279B7DF28;
  v25 = v14;
  v26 = v10;
  v31 = a5;
  v27 = v11;
  v28 = v17;
  v29 = self;
  v30 = v12;
  v19 = v12;
  v20 = v17;
  v21 = v11;
  v22 = v10;
  v23 = v14;
  [v18 performBackgroundTask:v24];
}

void __97__STRootViewModelCoordinator__setPIN_recoveryAltDSID_shouldSetRecoveryAppleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) userObjectID];
  v5 = [v3 objectWithID:v4];

  [v5 setEffectivePasscode:*(a1 + 40)];
  if (*(a1 + 80) == 1)
  {
    [v5 setEffectiveRecoveryAltDSID:*(a1 + 48)];
  }

  if (*(a1 + 40))
  {
    v23 = 0;
    v6 = [MEMORY[0x277D4B928] saveManagedUserBlueprintForUser:v5 error:&v23];
    v7 = v23;
    if (v6)
    {
      goto LABEL_13;
    }

    v8 = +[STUILog persistence];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __97__STRootViewModelCoordinator__setPIN_recoveryAltDSID_shouldSetRecoveryAppleID_completionHandler___block_invoke_cold_1();
    }
  }

  else
  {
    v22 = 0;
    v9 = [MEMORY[0x277D4B928] deleteManagedUserBlueprintForUser:v5 error:&v22];
    v7 = v22;
    if ((v9 & 1) == 0)
    {
      v10 = +[STUILog persistence];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __97__STRootViewModelCoordinator__setPIN_recoveryAltDSID_shouldSetRecoveryAppleID_completionHandler___block_invoke_cold_2();
      }
    }

    [v5 setContactsEditable:1];
    [v5 setIsCommunicationSafetySendingRestricted:0];
    [v5 setIsCommunicationSafetyReceivingRestricted:0];
    [v5 setIsCommunicationSafetyNotificationEnabled:0];
    [v5 setIsCommunicationSafetyAnalyticsEnabled:0];
    v11 = *(a1 + 56);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __97__STRootViewModelCoordinator__setPIN_recoveryAltDSID_shouldSetRecoveryAppleID_completionHandler___block_invoke_429;
    v20[3] = &unk_279B7DF00;
    v21 = v5;
    [v11 enumerateKeysAndObjectsUsingBlock:v20];
    v8 = v21;
  }

LABEL_13:
  v12 = [*(a1 + 64) persistenceController];
  v19 = v7;
  v13 = [v12 saveContext:v3 error:&v19];
  v14 = v19;

  v15 = *(a1 + 72);
  if (v13)
  {
    v16 = v15;
    if (v16)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v16[2](v16, 0);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
        v27 = &unk_279B7D130;
        v18 = v16;
        v28 = 0;
        v29 = v18;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }

  else
  {
    v16 = v15;
    v17 = v14;
    if (v16)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (v16)[2](v16, v17);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
        v27 = &unk_279B7D130;
        v29 = v16;
        v28 = v17;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }
}

void __97__STRootViewModelCoordinator__setPIN_recoveryAltDSID_shouldSetRecoveryAppleID_completionHandler___block_invoke_429(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 behaviorType] == 1)
  {
    [v4 setBehaviorType:0];
    v5 = *(a1 + 32);
    v9 = 0;
    v6 = [STTimeAllowancesViewModelCoordinator saveAllowance:v4 forUser:v5 error:&v9];
    v7 = v9;
    if (!v6)
    {
      v8 = +[STUILog persistence];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __97__STRootViewModelCoordinator__setPIN_recoveryAltDSID_shouldSetRecoveryAppleID_completionHandler___block_invoke_429_cold_1();
      }
    }
  }
}

- (void)setScreenTimeEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(STRootViewModelCoordinator *)self viewModel];
  v8 = [v7 me];

  v9 = [(STRootViewModelCoordinator *)self persistenceController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__STRootViewModelCoordinator_setScreenTimeEnabled_completionHandler___block_invoke;
  v12[3] = &unk_279B7DF50;
  v16 = a3;
  v13 = v8;
  v14 = self;
  v15 = v6;
  v10 = v6;
  v11 = v8;
  [v9 performBackgroundTask:v12];
}

void __69__STRootViewModelCoordinator_setScreenTimeEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 userObjectID];
  v6 = [v4 objectWithID:v5];

  [v6 isManaged];
  [v6 setScreenTimeEnabled:*(a1 + 56)];
  v7 = [*(a1 + 40) persistenceController];
  v20 = 0;
  v8 = [v7 saveContext:v4 error:&v20];

  v9 = v20;
  if (v8)
  {
    if (*(a1 + 56) == 1)
    {
      v10 = [*(a1 + 40) timeAllowancesCoordinator];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __69__STRootViewModelCoordinator_setScreenTimeEnabled_completionHandler___block_invoke_2;
      v18 = &unk_279B7D640;
      v19 = *(a1 + 48);
      [v10 saveDefaultAlwaysAllowListWithCompletionHandler:&v15];
    }

    else
    {
      v13 = *(a1 + 48);
      if (v13)
      {
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          v13[2](v13, 0);
        }

        else
        {
          block = MEMORY[0x277D85DD0];
          v22 = 3221225472;
          v23 = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
          v24 = &unk_279B7D130;
          v14 = v13;
          v25 = 0;
          v26 = v14;
          dispatch_async(MEMORY[0x277D85CD0], &block);
        }
      }
    }

    [*(a1 + 40) _reportCoreAnalyticsEventScreenTimeEnabled:*(a1 + 56) user:v6 userType:objc_msgSend(*(a1 + 32) userIsRemote:{"type", v15, v16, v17, v18), objc_msgSend(*(a1 + 32), "isRemoteUser")}];
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = v9;
    if (v11)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v11[2](v11, v12);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v22 = 3221225472;
        v23 = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
        v24 = &unk_279B7D130;
        v26 = v11;
        v25 = v12;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }
}

void __69__STRootViewModelCoordinator_setScreenTimeEnabled_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v4)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v4[2](v4, v5);
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
      v6[3] = &unk_279B7D130;
      v8 = v4;
      v7 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v6);
    }
  }
}

- (void)setManagementEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(STRootViewModelCoordinator *)self viewModel];
  v8 = [v7 me];

  v9 = [(STRootViewModelCoordinator *)self persistenceController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__STRootViewModelCoordinator_setManagementEnabled_completionHandler___block_invoke;
  v12[3] = &unk_279B7DF50;
  v16 = a3;
  v13 = v8;
  v14 = self;
  v15 = v6;
  v10 = v6;
  v11 = v8;
  [v9 performBackgroundTask:v12];
}

void __69__STRootViewModelCoordinator_setManagementEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 userObjectID];
  v6 = [v4 objectWithID:v5];

  v7 = [v6 isManaged];
  [v6 setManaged:*(a1 + 56)];
  v8 = [*(a1 + 40) persistenceController];
  v14 = 0;
  v9 = [v8 saveContext:v4 error:&v14];

  v10 = v14;
  if (v9)
  {
    if (([v6 isManaged] | v7))
    {
      [v6 notifyServerOfScreenTimeEnabled:*(a1 + 56)];
    }

    v11 = *(a1 + 48);
    if (v11)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v11[2](v11, 0);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
        v18 = &unk_279B7D130;
        v13 = v11;
        v19 = 0;
        v20 = v13;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }

  else
  {
    v11 = *(a1 + 48);
    v12 = v10;
    if (v11)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (v11)[2](v11, v12);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
        v18 = &unk_279B7D130;
        v20 = v11;
        v19 = v12;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }
}

- (void)setScreenTimeSyncingEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(STRootViewModelCoordinator *)self viewModel];
  v8 = [v7 me];

  v9 = [(STRootViewModelCoordinator *)self persistenceController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__STRootViewModelCoordinator_setScreenTimeSyncingEnabled_completionHandler___block_invoke;
  v12[3] = &unk_279B7DF50;
  v16 = a3;
  v13 = v8;
  v14 = self;
  v15 = v6;
  v10 = v6;
  v11 = v8;
  [v9 performBackgroundTask:v12];
}

void __76__STRootViewModelCoordinator_setScreenTimeSyncingEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 userObjectID];
  v6 = [v4 objectWithID:v5];

  [v6 setSyncingEnabled:*(a1 + 56)];
  v7 = [*(a1 + 40) persistenceController];
  v14 = 0;
  v8 = [v7 saveContext:v4 error:&v14];

  v9 = v14;
  v10 = *(a1 + 48);
  if (v8)
  {
    v11 = v10;
    if (v11)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v11[2](v11, 0);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
        v18 = &unk_279B7D130;
        v13 = v11;
        v19 = 0;
        v20 = v13;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }

  else
  {
    v11 = v10;
    v12 = v9;
    if (v11)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (v11)[2](v11, v12);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
        v18 = &unk_279B7D130;
        v20 = v11;
        v19 = v12;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }
}

- (void)setShareWebUsageEnabled:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(STRootViewModelCoordinator *)self viewModel];
  v8 = [v7 me];

  v9 = [(STRootViewModelCoordinator *)self persistenceController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__STRootViewModelCoordinator_setShareWebUsageEnabled_completionHandler___block_invoke;
  v12[3] = &unk_279B7DF50;
  v16 = a3;
  v13 = v8;
  v14 = self;
  v15 = v6;
  v10 = v6;
  v11 = v8;
  [v9 performBackgroundTask:v12];
}

void __72__STRootViewModelCoordinator_setShareWebUsageEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 userObjectID];
  v6 = [v4 objectWithID:v5];

  [v6 setShareWebUsage:*(a1 + 56)];
  v7 = [*(a1 + 40) persistenceController];
  v14 = 0;
  v8 = [v7 saveContext:v4 error:&v14];

  v9 = v14;
  v10 = *(a1 + 48);
  if (v8)
  {
    v11 = v10;
    if (v11)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v11[2](v11, 0);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
        v18 = &unk_279B7D130;
        v13 = v11;
        v19 = 0;
        v20 = v13;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }

  else
  {
    v11 = v10;
    v12 = v9;
    if (v11)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        (v11)[2](v11, v12);
      }

      else
      {
        block = MEMORY[0x277D85DD0];
        v16 = 3221225472;
        v17 = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
        v18 = &unk_279B7D130;
        v20 = v11;
        v19 = v12;
        dispatch_async(MEMORY[0x277D85CD0], &block);
      }
    }
  }
}

- (void)enableManagementWithPIN:(id)a3 recoveryAltDSID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(STRootViewModelCoordinator *)self viewModel];
  v12 = [v11 me];

  v13 = [(STRootViewModelCoordinator *)self persistenceController];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__STRootViewModelCoordinator_enableManagementWithPIN_recoveryAltDSID_completionHandler___block_invoke;
  v18[3] = &unk_279B7DF78;
  v19 = v12;
  v20 = v8;
  v21 = v9;
  v22 = self;
  v23 = v10;
  v14 = v10;
  v15 = v9;
  v16 = v8;
  v17 = v12;
  [v13 performBackgroundTask:v18];
}

void __88__STRootViewModelCoordinator_enableManagementWithPIN_recoveryAltDSID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) userObjectID];
  v5 = [v3 objectWithID:v4];

  [v5 setManaged:1];
  [v5 setEffectivePasscode:*(a1 + 40)];
  [v5 setEffectiveRecoveryAltDSID:*(a1 + 48)];
  if (*(a1 + 40))
  {
    v24 = 0;
    v6 = [MEMORY[0x277D4B928] saveManagedUserBlueprintForUser:v5 error:&v24];
    v7 = v24;
    if ((v6 & 1) == 0)
    {
      v8 = +[STUILog persistence];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __97__STRootViewModelCoordinator__setPIN_recoveryAltDSID_shouldSetRecoveryAppleID_completionHandler___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v23 = 0;
    v9 = [MEMORY[0x277D4B928] deleteManagedUserBlueprintForUser:v5 error:&v23];
    v7 = v23;
    if ((v9 & 1) == 0)
    {
      v10 = +[STUILog persistence];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __97__STRootViewModelCoordinator__setPIN_recoveryAltDSID_shouldSetRecoveryAppleID_completionHandler___block_invoke_cold_2();
      }
    }

    [v5 setContactsEditable:1];
    [v5 setIsCommunicationSafetySendingRestricted:0];
    [v5 setIsCommunicationSafetyReceivingRestricted:0];
    [v5 setIsCommunicationSafetyNotificationEnabled:0];
    [v5 setIsCommunicationSafetyAnalyticsEnabled:0];
  }

  v11 = [*(a1 + 56) persistenceController];
  v22 = v7;
  v12 = [v11 saveContext:v3 error:&v22];
  v13 = v22;

  if (v12)
  {
    if ([v5 isManaged])
    {
      [v5 notifyServerOfScreenTimeEnabled:1];
    }

    v14 = [*(a1 + 56) timeAllowancesCoordinator];
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __88__STRootViewModelCoordinator_enableManagementWithPIN_recoveryAltDSID_completionHandler___block_invoke_431;
    v20 = &unk_279B7D640;
    v21 = *(a1 + 64);
    [v14 saveDefaultAlwaysAllowListWithCompletionHandler:&v17];

    [*(a1 + 56) _reportCoreAnalyticsEventScreenTimeEnabled:1 user:v5 userType:objc_msgSend(*(a1 + 32) userIsRemote:{"type", v17, v18, v19, v20), objc_msgSend(*(a1 + 32), "isRemoteUser")}];
  }

  else
  {
    v15 = *(a1 + 64);
    v16 = v13;
    if (v15)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v15[2](v15, v16);
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
        block[3] = &unk_279B7D130;
        v27 = v15;
        v26 = v16;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }
}

void __88__STRootViewModelCoordinator_enableManagementWithPIN_recoveryAltDSID_completionHandler___block_invoke_431(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  if (v4)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v4[2](v4, v5);
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
      v6[3] = &unk_279B7D130;
      v8 = v4;
      v7 = v5;
      dispatch_async(MEMORY[0x277D85CD0], v6);
    }
  }
}

- (void)applyIntroductionViewModel:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v30 = [(STRootViewModelCoordinator *)self timeAllowancesCoordinator];
  v29 = [(STRootViewModelCoordinator *)self communicationSafetyCoordinator];
  v8 = [(STRootViewModelCoordinator *)self contentPrivacyCoordinator];
  v9 = [(STRootViewModelCoordinator *)self eyeReliefCoordinator];
  if (v7)
  {
    v10 = dispatch_group_create();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 communicationSafetyEnabled];
  v12 = [v11 BOOLValue];

  if (v12)
  {
    if (v7)
    {
      dispatch_group_enter(v10);
    }

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke;
    v53[3] = &unk_279B7D090;
    v55 = v7 != 0;
    v54 = v10;
    [v29 saveCommunicationSafetyReceivingRestricted:1 communicationSafetySendingRestricted:1 completionHandler:v53];
  }

  v13 = [v6 appAndWebsiteActivityEnabled];

  if (v13)
  {
    v14 = [v6 appAndWebsiteActivityEnabled];
    v15 = [v14 BOOLValue];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_432;
    v51[3] = &unk_279B7CC18;
    v52 = v6;
    [(STRootViewModelCoordinator *)self setScreenTimeEnabled:v15 completionHandler:v51];
  }

  v16 = [v6 bedtime];

  if (v16)
  {
    if (v7)
    {
      dispatch_group_enter(v10);
    }

    v17 = [v6 bedtime];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_439;
    v48[3] = &unk_279B7D090;
    v50 = v7 != 0;
    v49 = v10;
    [v30 saveDeviceBedtime:v17 completionHandler:v48];
  }

  v18 = [v6 allowance];

  if (v18)
  {
    if (v7)
    {
      dispatch_group_enter(v10);
    }

    v19 = [v6 allowance];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_440;
    v45[3] = &unk_279B7D090;
    v47 = v7 != 0;
    v46 = v10;
    [v30 saveAllowance:v19 completionHandler:v45];
  }

  v20 = [v6 restrictions];
  v21 = [v20 count];

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    if (!v21 && ![v6 imageGenerationRestriction])
    {
      goto LABEL_22;
    }
  }

  else if (!v21)
  {
LABEL_22:
    [v8 saveContentPrivacyEnabled:0 completionHandler:&__block_literal_global_451];
    goto LABEL_31;
  }

  [v8 saveContentPrivacyEnabled:1 completionHandler:&__block_literal_global_445];
  v22 = [v6 restrictions];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_446;
  v41[3] = &unk_279B7DFA0;
  v44 = v7 != 0;
  v23 = v10;
  v42 = v23;
  v24 = v8;
  v43 = v24;
  [v22 enumerateKeysAndObjectsUsingBlock:v41];

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && ([v6 imageGenerationRestriction] - 1) <= 1)
  {
    v25 = [v6 imageGenerationRestriction];
    if (v7)
    {
      dispatch_group_enter(v23);
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_448;
    v37[3] = &unk_279B7DFC8;
    v39 = v7 != 0;
    v38 = v23;
    v40 = v25 == 1;
    [v24 saveSiriImageGenerationIsAllowed:v25 == 1 completionHandler:v37];
  }

LABEL_31:
  v26 = [v6 screenDistanceEnabled];

  if (v26)
  {
    v27 = [v6 screenDistanceEnabled];
    v28 = [v27 BOOLValue];

    if (v7)
    {
      dispatch_group_enter(v10);
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_452;
    v33[3] = &unk_279B7CD08;
    v36 = v7 != 0;
    v34 = v10;
    v35 = v6;
    [v9 persistEyeReliefState:v28 withCompletionHandler:v33];
  }

  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_453;
    block[3] = &unk_279B7D270;
    v32 = v7;
    dispatch_group_notify(v10, MEMORY[0x277D85CD0], block);
  }
}

void __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    dispatch_group_leave(*(a1 + 32));
  }

  v4 = +[STUILog childSetup];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Successfully saved Communication Safety setup during onboarding.", v6, 2u);
  }
}

void __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_432(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[STUILog childSetup];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_432_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) appAndWebsiteActivityEnabled];
    v7 = [v6 BOOLValue];
    v8 = @"disabled";
    if (v7)
    {
      v8 = @"enabled";
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Successfully set App & Website Activity state during onboarding: %@", &v9, 0xCu);
  }
}

void __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_439(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    dispatch_group_leave(*(a1 + 32));
  }

  v4 = +[STUILog childSetup];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_439_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Successfully saved Downtime during onboarding.", v6, 2u);
  }
}

void __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_440(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    dispatch_group_leave(*(a1 + 32));
  }

  v4 = +[STUILog childSetup];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_440_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Successfully saved App Limit during onboarding.", v6, 2u);
  }
}

void __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_443(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[STUILog childSetup];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_443_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_DEFAULT, "Successfully enabled Content & Privacy during onboarding.", v5, 2u);
  }
}

void __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_446(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (STRestrictionTypeWithString_onceToken != -1)
  {
    __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_446_cold_1();
  }

  v8 = [STRestrictionTypeWithString_restrictionItemTypes objectForKeyedSubscript:v7];
  if (v8)
  {
    v9 = [v7 componentsSeparatedByString:@"."];
    v10 = [v9 mutableCopy];

    v11 = [v10 lastObject];
    [v10 removeLastObject];
    v12 = [v10 componentsJoinedByString:@"."];
    v13 = -[STRestrictionItem initWithConfiguration:restrictionKey:labelName:type:restrictionValue:]([STRestrictionItem alloc], "initWithConfiguration:restrictionKey:labelName:type:restrictionValue:", v12, v11, &stru_28766E5A8, [v8 unsignedIntegerValue], 0);
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = *(a1 + 48);
    if (v14 == 1)
    {
      dispatch_group_enter(*(a1 + 32));
      LOBYTE(v14) = *(a1 + 48);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_2;
    v16[3] = &unk_279B7CD08;
    v19 = v14;
    v15 = *(a1 + 40);
    v17 = *(a1 + 32);
    v18 = v13;
    [v15 saveRestrictionValue:v6 forItem:v18 completionHandler:v16];
  }
}

void __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    dispatch_group_leave(*(a1 + 32));
  }

  v4 = +[STUILog childSetup];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_2_cold_1(a1, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Successfully saved content restriction for item %{public}@ during onboarding.", &v7, 0xCu);
  }
}

void __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_448(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    dispatch_group_leave(*(a1 + 32));
  }

  v4 = +[STUILog childSetup];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_448_cold_1(a1, v3);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 41);
    v7[0] = 67240192;
    v7[1] = v6;
    _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Successfully saved Image Creation value %{public}d during onboarding", v7, 8u);
  }
}

void __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_449(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[STUILog childSetup];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_449_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264BA2000, v4, OS_LOG_TYPE_DEFAULT, "Successfully disabled Content & Privacy during onboarding.", v5, 2u);
  }
}

void __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_452(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    dispatch_group_leave(*(a1 + 32));
  }

  v4 = +[STUILog childSetup];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_452_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) screenDistanceEnabled];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_264BA2000, v5, OS_LOG_TYPE_DEFAULT, "Successfully saved Screen Distance state: %@", &v7, 0xCu);
  }
}

uint64_t __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_453(uint64_t a1)
{
  v2 = +[STUILog childSetup];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264BA2000, v2, OS_LOG_TYPE_DEFAULT, "Calling onboarding completion handler. Finished saving values for model.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)loadRegionRatingsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STRootViewModelCoordinator *)self userDSID];
  v6 = MEMORY[0x277D4BA70];
  v7 = [(STRootViewModelCoordinator *)self persistenceController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__STRootViewModelCoordinator_loadRegionRatingsWithCompletionHandler___block_invoke;
  v10[3] = &unk_279B7E018;
  v11 = v5;
  v12 = v4;
  v8 = v5;
  v9 = v4;
  [v6 fetchRestrictionsForUserDSID:v8 persistenceController:v7 completionHandler:v10];
}

void __69__STRootViewModelCoordinator_loadRegionRatingsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[STUILog apps];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__STRootViewModelCoordinator_loadRegionRatingsWithCompletionHandler___block_invoke_cold_1(v6);
    }

    v8 = *(*(a1 + 40) + 16);
    goto LABEL_9;
  }

  v9 = [v5 appsRating];
  if (!v9 || (v10 = v9, [v5 appsRating], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "intValue"), v13 = *MEMORY[0x277D4BC70], v11, v10, v13 <= v12))
  {
    v8 = *(*(a1 + 40) + 16);
LABEL_9:
    v8();
    goto LABEL_10;
  }

  v14 = [objc_alloc(MEMORY[0x277D4BA48]) initWithUnrated:0 userDSID:*(a1 + 32)];
  v15 = MEMORY[0x277D4BA40];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__STRootViewModelCoordinator_loadRegionRatingsWithCompletionHandler___block_invoke_458;
  v16[3] = &unk_279B7DFF0;
  v18 = *(a1 + 40);
  v17 = v5;
  [v15 loadRegionRatingsWithOptions:v14 completionHandler:v16];

LABEL_10:
}

void __69__STRootViewModelCoordinator_loadRegionRatingsWithCompletionHandler___block_invoke_458(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v13 = v5;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [v5 preferredRegion];
    v7 = [v13 localizedAppRatingsForRegion:v6];

    v8 = [*(a1 + 32) appsRating];
    v9 = [v7 allKeys];
    v10 = [v13 getClosestRestrictionMatch:v8 within:v9 forPayloadKey:@"ratingApps"];

    v11 = *(a1 + 40);
    v12 = [v7 objectForKey:v10];
    (*(v11 + 16))(v11, 1, v12, 0);
  }
}

- (void)_reportCoreAnalyticsEventScreenTimeEnabled:(BOOL)a3 user:(id)a4 userType:(unint64_t)a5 userIsRemote:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v9 = [a4 effectivePasscode];

  if (a5 > 7)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_264CD1AA8[a5];
  }

  v16 = [MEMORY[0x277D4B988] fetchRequest];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NULL AND %K == YES", @"familySettings", @"isParent"];
  [v16 setPredicate:v11];

  v12 = [v16 execute:0];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 count];
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_alloc(MEMORY[0x277D4BA88]) initWithScreenTimeEnabled:v8 numberOfGuardians:v14 pinSet:v9 != 0 userAgeGroup:v10 userIsRemote:v6];
  [MEMORY[0x277D4B970] reportEvent:v15];
}

+ (id)loadViewModelFromManagedObjectContext:(id)a3 isLocalUser:(BOOL)a4 userDSID:(id)a5 error:(id *)a6
{
  v8 = a4;
  v290 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v218 = objc_opt_new();
  v217 = v8;
  if (v8)
  {
    v260 = 0;
    v11 = [MEMORY[0x277D4B988] fetchLocalUserInContext:v9 error:&v260];
    v228 = v260;
    if (v11)
    {
      v12 = [[STUIUser alloc] initWithUser:v11];
      [v218 setMe:v12];
      v212 = v10;
      if ([(STUIUser *)v12 isParent])
      {
        v211 = v12;
        v213 = v9;
        v215 = v11;
        v259 = v228;
        v13 = [MEMORY[0x277D4B9C0] fetchWithContext:v9 error:&v259];
        v209 = v259;

        v220 = objc_opt_new();
        v255 = 0u;
        v256 = 0u;
        v257 = 0u;
        v258 = 0u;
        v210 = v13;
        obj = [v13 settings];
        v223 = [obj countByEnumeratingWithState:&v255 objects:v278 count:16];
        if (!v223)
        {
          goto LABEL_83;
        }

        v222 = *v256;
        v14 = 0x277D4B000uLL;
        while (1)
        {
          v15 = 0;
          do
          {
            if (*v256 != v222)
            {
              objc_enumerationMutation(obj);
            }

            v226 = v15;
            v16 = *(*(&v255 + 1) + 8 * v15);
            v17 = [STUIUser alloc];
            v18 = [v16 user];
            v19 = [(STUIUser *)v17 initWithUser:v18];

            if ([(STUIUser *)v19 isChild])
            {
              [v220 addObject:v19];
            }

            v224 = [v16 user];
            v20 = [v224 userDeviceStates];
            v225 = v19;
            v21 = [(STUIUser *)v19 altDSID];
            v22 = v20;
            v229 = v21;
            v250 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
            v23 = +[STUILog usage];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v283 = v229;
              _os_log_impl(&dword_264BA2000, v23, OS_LOG_TYPE_DEFAULT, "Finding devices for user: %{public}@", buf, 0xCu);
            }

            v24 = [MEMORY[0x277CBEBD0] standardUserDefaults];
            v25 = [v24 BOOLForKey:0x287677CC8];

            if (_os_feature_enabled_impl() && (v25 & 1) == 0)
            {
              v274 = 0;
              v26 = [_TtC20ScreenTimeSettingsUI13DeviceDetails detailsForUserWithAltDSID:v229 error:&v274];
              v27 = v274;
              if (v26)
              {
                v272 = 0u;
                v273 = 0u;
                v270 = 0u;
                v271 = 0u;
                v241 = v26;
                v28 = [v241 countByEnumeratingWithState:&v270 objects:buf count:16];
                if (v28)
                {
                  v29 = v28;
                  v219 = v27;
                  v230 = v26;
                  v238 = v22;
                  v247 = *v271;
                  do
                  {
                    for (i = 0; i != v29; ++i)
                    {
                      if (*v271 != v247)
                      {
                        objc_enumerationMutation(v241);
                      }

                      v31 = *(*(&v270 + 1) + 8 * i);
                      v32 = [v31 coreDuetIdentifier];
                      v33 = +[STUILog usage];
                      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                      {
                        v34 = [v31 identifier];
                        v35 = [v31 name];
                        *v279 = 138543874;
                        *&v279[4] = v32;
                        *&v279[12] = 2114;
                        *&v279[14] = v34;
                        *&v279[22] = 2114;
                        *&v279[24] = v35;
                        _os_log_impl(&dword_264BA2000, v33, OS_LOG_TYPE_DEFAULT, "Device Activity Device Found:  %{public}@ %{public}@ %{public}@", v279, 0x20u);
                      }

                      v36 = [STUIDevice alloc];
                      v37 = [v31 name];
                      v38 = [v31 identifier];
                      v39 = [v31 platform];
                      v40 = [v31 isLocalDevice];
                      v41 = [v31 lastUpdatedDate];
                      v42 = [(STUIDevice *)v36 initWithName:v37 identifier:v38 coreDuetIdentifier:v32 platform:v39 hasDeviceActivity:1 isLocalDevice:v40 lastFamilyCheckinDate:v41];

                      [v250 addObject:v42];
                      v43 = +[STUILog usage];
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                      {
                        v44 = [v31 identifier];
                        *v279 = 138543618;
                        *&v279[4] = v32;
                        *&v279[12] = 2114;
                        *&v279[14] = v44;
                        _os_log_impl(&dword_264BA2000, v43, OS_LOG_TYPE_DEFAULT, "Device Activity Device added: %{public}@, %{public}@", v279, 0x16u);
                      }
                    }

                    v29 = [v241 countByEnumeratingWithState:&v270 objects:buf count:16];
                  }

                  while (v29);
                  v14 = 0x277D4B000;
                  v22 = v238;
                  v26 = v230;
                  v27 = v219;
                }
              }

              else
              {
                v241 = +[STUILog usage];
                if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v283 = v27;
                  _os_log_error_impl(&dword_264BA2000, v241, OS_LOG_TYPE_ERROR, "Failed to fetch device details from DeviceActivity: %{public}@", buf, 0xCu);
                }
              }
            }

            v268 = 0u;
            v269 = 0u;
            v266 = 0u;
            v267 = 0u;
            v45 = v22;
            v46 = [v45 countByEnumeratingWithState:&v266 objects:v279 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v267;
              v239 = *v267;
              v242 = v45;
              do
              {
                v49 = 0;
                v248 = v47;
                do
                {
                  if (*v267 != v48)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v50 = *(*(&v266 + 1) + 8 * v49);
                  v51 = [v50 device];
                  v52 = v51;
                  if (v51)
                  {
                    if ([v51 platform] != 1 && objc_msgSend(v52, "platform") != 2)
                    {
                      v57 = +[STUILog usage];
                      if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_68;
                      }

                      v66 = [v52 name];
                      *v284 = 138543362;
                      v285 = v66;
                      v67 = v57;
                      v68 = "Skipping %{public}@ because it is not an iOS or macOS device";
                      goto LABEL_52;
                    }

                    if (([*(v14 + 2456) hasLegacyUsageData:v52] & 1) == 0)
                    {
                      v57 = +[STUILog usage];
                      if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_68;
                      }

                      v66 = [v52 name];
                      *v284 = 138543362;
                      v285 = v66;
                      v67 = v57;
                      v68 = "Skipping %{public}@ because it has no legacy usage data";
LABEL_52:
                      _os_log_impl(&dword_264BA2000, v67, OS_LOG_TYPE_DEFAULT, v68, v284, 0xCu);

                      goto LABEL_68;
                    }

                    v53 = [v50 coreDuetIdentifier];
                    v54 = +[STUILog usage];
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v55 = [v52 identifier];
                      v56 = [v52 name];
                      *v284 = 138543874;
                      v285 = v53;
                      v286 = 2114;
                      v287 = v55;
                      v288 = 2114;
                      v289 = v56;
                      _os_log_impl(&dword_264BA2000, v54, OS_LOG_TYPE_DEFAULT, "Screen Time Device Found: coreDuetIdentifier: %{public}@ %{public}@ %{public}@", v284, 0x20u);

                      v47 = v248;
                      v48 = v239;
                    }

                    v261 = MEMORY[0x277D85DD0];
                    v262 = 3221225472;
                    v263 = __createDevices_block_invoke;
                    v264 = &unk_279B7DEB0;
                    v57 = v53;
                    v265 = v57;
                    v58 = [v250 indexOfObjectPassingTest:&v261];
                    if (v58 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v59 = [v50 user];
                      v60 = v52;
                      v61 = [MEMORY[0x277D4BAB8] fetchRequestMatchingUser:v59 device:v60];
                      v275 = 0;
                      v62 = [v61 execute:&v275];
                      v63 = v275;
                      if (v63)
                      {
                        v64 = +[STUILog usage];
                        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
                        {
                          v65 = [v59 altDSID];
                          v231 = [v60 name];
                          *v284 = 138543874;
                          v285 = v65;
                          v286 = 2114;
                          v287 = v231;
                          v288 = 2114;
                          v289 = v63;
                          _os_log_fault_impl(&dword_264BA2000, v64, OS_LOG_TYPE_FAULT, "fetchLastUpdatedDate Request failed for user %{public}@ and device %{public}@: %{public}@", v284, 0x20u);
                        }

                        goto LABEL_60;
                      }

                      if (!v62 || ![v62 count] || (objc_msgSend(v62, "objectAtIndexedSubscript:", 0), v72 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v72, "lastUpdatedDate"), v73 = objc_claimAutoreleasedReturnValue(), v73, v72, !v73))
                      {
                        v64 = +[STUILog usage];
                        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
                        {
                          v232 = [v59 altDSID];
                          v83 = [v60 name];
                          *v284 = 138543874;
                          v285 = v232;
                          v286 = 2114;
                          v287 = v83;
                          v84 = v83;
                          v288 = 2114;
                          v289 = v62;
                          _os_log_error_impl(&dword_264BA2000, v64, OS_LOG_TYPE_ERROR, "fetchLastUpdatedDate no usage for user %{public}@ and device %{public}@: %{public}@", v284, 0x20u);
                        }

LABEL_60:

                        v73 = 0;
                      }

                      v70 = v73;

                      v74 = [STUIDevice alloc];
                      v75 = [v60 name];
                      v76 = [v60 identifier];
                      v77 = [v60 platform];
                      v78 = [v60 localUserDeviceState];
                      v79 = [(STUIDevice *)v74 initWithName:v75 identifier:v76 coreDuetIdentifier:v57 platform:v77 hasDeviceActivity:0 isLocalDevice:v78 != 0 lastFamilyCheckinDate:v70];

                      if (_os_feature_enabled_impl())
                      {
                        v80 = [v60 lastPasscodeUseDate];
                        [(STUIDevice *)v79 setLastPasscodeUseDate:v80];

                        -[STUIDevice setSupportsPasscodeActivity:](v79, "setSupportsPasscodeActivity:", [v60 supportsPasscodeActivity]);
                      }

                      [v250 addObject:v79];
                      v81 = +[STUILog usage];
                      v47 = v248;
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                      {
                        v82 = [(STUIDevice *)v79 identifier];
                        *v284 = 138543618;
                        v285 = v57;
                        v286 = 2114;
                        v287 = v82;
                        _os_log_impl(&dword_264BA2000, v81, OS_LOG_TYPE_DEFAULT, "Screen Time Device added: %{public}@, %{public}@", v284, 0x16u);
                      }

                      v14 = 0x277D4B000;
                      v48 = v239;
LABEL_66:
                    }

                    else
                    {
                      v69 = v58;
                      if (_os_feature_enabled_impl())
                      {
                        v70 = [v250 objectAtIndexedSubscript:v69];
                        v71 = [v52 lastPasscodeUseDate];
                        [v70 setLastPasscodeUseDate:v71];

                        [v70 setSupportsPasscodeActivity:{objc_msgSend(v52, "supportsPasscodeActivity")}];
                        goto LABEL_66;
                      }
                    }

                    v45 = v242;
                    goto LABEL_68;
                  }

                  v57 = +[STUILog usage];
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    *v284 = 138543618;
                    v285 = 0;
                    v286 = 2114;
                    v287 = v50;
                    _os_log_error_impl(&dword_264BA2000, v57, OS_LOG_TYPE_ERROR, "Could not create an STUIDevice from source device %{public}@ for user and device: %{public}@", v284, 0x16u);
                  }

LABEL_68:

                  ++v49;
                }

                while (v47 != v49);
                v47 = [v45 countByEnumeratingWithState:&v266 objects:v279 count:16];
              }

              while (v47);
            }

            v85 = v250;
            v86 = v85;
            v87 = [MEMORY[0x277CBEA80] currentCalendar];
            v88 = [MEMORY[0x277CBEAA8] now];
            v89 = [v87 startOfDayForDate:v88];
            v90 = [v87 dateByAddingUnit:0x2000 value:-1 toDate:v89 options:0];

            v280 = 0u;
            v281 = 0u;
            memset(v279, 0, sizeof(v279));
            v91 = v86;
            v92 = [v91 countByEnumeratingWithState:v279 objects:buf count:16];
            if (v92)
            {
              v93 = **&v279[16];
              while (2)
              {
                for (j = 0; j != v92; ++j)
                {
                  if (**&v279[16] != v93)
                  {
                    objc_enumerationMutation(v91);
                  }

                  v95 = [*(*&v279[8] + 8 * j) lastFamilyCheckinDate];
                  v96 = [v90 compare:v95];

                  if (v96 == 1)
                  {
                    v92 = 1;
                    goto LABEL_80;
                  }
                }

                v92 = [v91 countByEnumeratingWithState:v279 objects:buf count:16];
                if (v92)
                {
                  continue;
                }

                break;
              }

LABEL_80:
              v14 = 0x277D4B000;
            }

            [(STUIUser *)v225 setHasDeviceWithoutUsageReported:v92];
            v15 = v226 + 1;
          }

          while (v226 + 1 != v223);
          v223 = [obj countByEnumeratingWithState:&v255 objects:v278 count:16];
          if (!v223)
          {
LABEL_83:

            v97 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
            v277[0] = v97;
            v98 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dsid" ascending:1];
            v277[1] = v98;
            v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v277 count:2];

            v100 = [v220 sortedArrayUsingDescriptors:v99];
            v101 = v218;
            [v218 setChildren:v100];

            v228 = v209;
            v9 = v213;
            v11 = v215;
            v12 = v211;
            goto LABEL_93;
          }
        }
      }

      v101 = v218;
LABEL_93:
      [v101 setIsCloudSyncEnabled:{objc_msgSend(v11, "syncingEnabled")}];
      goto LABEL_94;
    }

    v102 = v10;
    v103 = +[STUILog persistence];
    v104 = v228;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      +[STRootViewModelCoordinator loadViewModelFromManagedObjectContext:isLocalUser:userDSID:error:];
    }

LABEL_90:

    if (a6)
    {
      v105 = v104;
      v106 = 0;
      *a6 = v104;
    }

    else
    {
      v106 = 0;
    }

    v135 = v218;
    goto LABEL_190;
  }

  v254 = 0;
  v11 = [MEMORY[0x277D4B988] fetchUserWithDSID:v10 inContext:v9 error:&v254];
  v228 = v254;
  if (!v11)
  {
    v102 = v10;
    v103 = +[STUILog persistence];
    v104 = v228;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      +[STRootViewModelCoordinator loadViewModelFromManagedObjectContext:isLocalUser:userDSID:error:];
    }

    goto LABEL_90;
  }

  v212 = v10;
  v12 = [[STUIUser alloc] initWithUser:v11];
  [v218 setMe:v12];
LABEL_94:
  v214 = v9;

  v107 = [v11 userDeviceStates];
  v216 = v11;
  v108 = [v11 altDSID];
  v109 = v107;
  v110 = v108;
  v251 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v109, "count")}];
  v111 = 0x279B7B000uLL;
  v112 = +[STUILog usage];
  v113 = &off_264CD1000;
  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v283 = v110;
    _os_log_impl(&dword_264BA2000, v112, OS_LOG_TYPE_DEFAULT, "Finding devices for user: %{public}@", buf, 0xCu);
  }

  v114 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v115 = [v114 BOOLForKey:0x287677CC8];

  v227 = v110;
  if (_os_feature_enabled_impl() && (v115 & 1) == 0)
  {
    v274 = 0;
    v116 = [_TtC20ScreenTimeSettingsUI13DeviceDetails detailsForUserWithAltDSID:v110 error:&v274];
    v117 = v274;
    if (v116)
    {
      v272 = 0u;
      v273 = 0u;
      v270 = 0u;
      v271 = 0u;
      v245 = v116;
      v118 = [v245 countByEnumeratingWithState:&v270 objects:buf count:16];
      if (v118)
      {
        v119 = v118;
        v235 = v117;
        v236 = v116;
        v240 = v109;
        v249 = *v271;
        do
        {
          for (k = 0; k != v119; ++k)
          {
            if (*v271 != v249)
            {
              objc_enumerationMutation(v245);
            }

            v121 = *(*(&v270 + 1) + 8 * k);
            v122 = [v121 coreDuetIdentifier];
            v123 = +[STUILog usage];
            if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
            {
              v124 = [v121 identifier];
              v125 = [v121 name];
              *v279 = 138543874;
              *&v279[4] = v122;
              *&v279[12] = 2114;
              *&v279[14] = v124;
              *&v279[22] = 2114;
              *&v279[24] = v125;
              _os_log_impl(&dword_264BA2000, v123, OS_LOG_TYPE_DEFAULT, "Device Activity Device Found:  %{public}@ %{public}@ %{public}@", v279, 0x20u);
            }

            v126 = [STUIDevice alloc];
            v127 = [v121 name];
            v128 = [v121 identifier];
            v129 = [v121 platform];
            v130 = [v121 isLocalDevice];
            v131 = [v121 lastUpdatedDate];
            v132 = [(STUIDevice *)v126 initWithName:v127 identifier:v128 coreDuetIdentifier:v122 platform:v129 hasDeviceActivity:1 isLocalDevice:v130 lastFamilyCheckinDate:v131];

            [v251 addObject:v132];
            v111 = 0x279B7B000uLL;
            v133 = +[STUILog usage];
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
            {
              v134 = [v121 identifier];
              *v279 = 138543618;
              *&v279[4] = v122;
              *&v279[12] = 2114;
              *&v279[14] = v134;
              _os_log_impl(&dword_264BA2000, v133, OS_LOG_TYPE_DEFAULT, "Device Activity Device added: %{public}@, %{public}@", v279, 0x16u);
            }
          }

          v119 = [v245 countByEnumeratingWithState:&v270 objects:buf count:16];
        }

        while (v119);
        v113 = &off_264CD1000;
        v116 = v236;
        v109 = v240;
        v117 = v235;
      }
    }

    else
    {
      v245 = +[STUILog usage];
      if (os_log_type_enabled(v245, OS_LOG_TYPE_ERROR))
      {
        +[STRootViewModelCoordinator loadViewModelFromManagedObjectContext:isLocalUser:userDSID:error:];
      }
    }
  }

  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  v136 = v109;
  v137 = [v136 countByEnumeratingWithState:&v266 objects:v279 count:16];
  if (v137)
  {
    v138 = v137;
    v139 = *v267;
    v140 = 0x277D4B000uLL;
    v243 = *(v113 + 300);
    v237 = v136;
    v246 = *v267;
    do
    {
      v141 = 0;
      v244 = v138;
      do
      {
        if (*v267 != v139)
        {
          objc_enumerationMutation(v136);
        }

        v142 = *(*(&v266 + 1) + 8 * v141);
        v143 = [v142 device];
        v144 = v143;
        if (v143)
        {
          if ([v143 platform] != 1 && objc_msgSend(v144, "platform") != 2)
          {
            v149 = [*(v111 + 1680) usage];
            if (!os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_153;
            }

            v158 = [v144 name];
            *v284 = v243;
            v285 = v158;
            v159 = v149;
            v160 = "Skipping %{public}@ because it is not an iOS or macOS device";
            goto LABEL_137;
          }

          if (([*(v140 + 2456) hasLegacyUsageData:v144] & 1) == 0)
          {
            v149 = [*(v111 + 1680) usage];
            if (!os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_153;
            }

            v158 = [v144 name];
            *v284 = v243;
            v285 = v158;
            v159 = v149;
            v160 = "Skipping %{public}@ because it has no legacy usage data";
LABEL_137:
            _os_log_impl(&dword_264BA2000, v159, OS_LOG_TYPE_DEFAULT, v160, v284, 0xCu);

            goto LABEL_153;
          }

          v145 = [v142 coreDuetIdentifier];
          v146 = [*(v111 + 1680) usage];
          if (os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT))
          {
            v147 = [v144 identifier];
            v148 = [v144 name];
            *v284 = 138543874;
            v285 = v145;
            v286 = 2114;
            v287 = v147;
            v288 = 2114;
            v289 = v148;
            _os_log_impl(&dword_264BA2000, v146, OS_LOG_TYPE_DEFAULT, "Screen Time Device Found: coreDuetIdentifier: %{public}@ %{public}@ %{public}@", v284, 0x20u);

            v111 = 0x279B7B000;
          }

          v261 = MEMORY[0x277D85DD0];
          v262 = 3221225472;
          v263 = __createDevices_block_invoke;
          v264 = &unk_279B7DEB0;
          v149 = v145;
          v265 = v149;
          v150 = [v251 indexOfObjectPassingTest:&v261];
          if (v150 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v151 = [v142 user];
            v152 = v144;
            v153 = [MEMORY[0x277D4BAB8] fetchRequestMatchingUser:v151 device:v152];
            v275 = 0;
            v154 = [v153 execute:&v275];
            v155 = v275;
            if (v155)
            {
              v156 = +[STUILog usage];
              if (os_log_type_enabled(v156, OS_LOG_TYPE_FAULT))
              {
                v157 = [v151 altDSID];
                v233 = [v152 name];
                *v284 = 138543874;
                v285 = v157;
                v286 = 2114;
                v287 = v233;
                v288 = 2114;
                v289 = v155;
                _os_log_fault_impl(&dword_264BA2000, v156, OS_LOG_TYPE_FAULT, "fetchLastUpdatedDate Request failed for user %{public}@ and device %{public}@: %{public}@", v284, 0x20u);
              }

              goto LABEL_145;
            }

            if (!v154 || ![v154 count] || (objc_msgSend(v154, "objectAtIndexedSubscript:", 0), v164 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v164, "lastUpdatedDate"), v165 = objc_claimAutoreleasedReturnValue(), v165, v164, !v165))
            {
              v156 = +[STUILog usage];
              if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
              {
                v234 = [v151 altDSID];
                v175 = [v152 name];
                *v284 = 138543874;
                v285 = v234;
                v286 = 2114;
                v287 = v175;
                v176 = v175;
                v288 = 2114;
                v289 = v154;
                _os_log_error_impl(&dword_264BA2000, v156, OS_LOG_TYPE_ERROR, "fetchLastUpdatedDate no usage for user %{public}@ and device %{public}@: %{public}@", v284, 0x20u);
              }

LABEL_145:

              v165 = 0;
            }

            v162 = v165;

            v166 = [STUIDevice alloc];
            v167 = [v152 name];
            v168 = [v152 identifier];
            v169 = [v152 platform];
            v170 = [v152 localUserDeviceState];
            v171 = [(STUIDevice *)v166 initWithName:v167 identifier:v168 coreDuetIdentifier:v149 platform:v169 hasDeviceActivity:0 isLocalDevice:v170 != 0 lastFamilyCheckinDate:v162];

            if (_os_feature_enabled_impl())
            {
              v172 = [v152 lastPasscodeUseDate];
              [(STUIDevice *)v171 setLastPasscodeUseDate:v172];

              -[STUIDevice setSupportsPasscodeActivity:](v171, "setSupportsPasscodeActivity:", [v152 supportsPasscodeActivity]);
            }

            [v251 addObject:v171];
            v111 = 0x279B7B000uLL;
            v173 = +[STUILog usage];
            v140 = 0x277D4B000;
            if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
            {
              v174 = [(STUIDevice *)v171 identifier];
              *v284 = 138543618;
              v285 = v149;
              v286 = 2114;
              v287 = v174;
              _os_log_impl(&dword_264BA2000, v173, OS_LOG_TYPE_DEFAULT, "Screen Time Device added: %{public}@, %{public}@", v284, 0x16u);
            }

            v136 = v237;
LABEL_151:

            v138 = v244;
          }

          else
          {
            v161 = v150;
            v140 = 0x277D4B000;
            if (_os_feature_enabled_impl())
            {
              v162 = [v251 objectAtIndexedSubscript:v161];
              v163 = [v144 lastPasscodeUseDate];
              [v162 setLastPasscodeUseDate:v163];

              [v162 setSupportsPasscodeActivity:{objc_msgSend(v144, "supportsPasscodeActivity")}];
              goto LABEL_151;
            }
          }

          v139 = v246;
          goto LABEL_153;
        }

        v149 = [*(v111 + 1680) usage];
        if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
        {
          *v284 = 138543618;
          v285 = 0;
          v286 = 2114;
          v287 = v142;
          _os_log_error_impl(&dword_264BA2000, v149, OS_LOG_TYPE_ERROR, "Could not create an STUIDevice from source device %{public}@ for user and device: %{public}@", v284, 0x16u);
        }

LABEL_153:

        ++v141;
      }

      while (v138 != v141);
      v138 = [v136 countByEnumeratingWithState:&v266 objects:v279 count:16];
    }

    while (v138);
  }

  v177 = v251;
  v178 = [v216 userDeviceStates];
  v179 = [v216 altDSID];
  v180 = v178;
  v181 = v179;
  memset(v279, 0, sizeof(v279));
  v280 = 0u;
  v281 = 0u;
  v182 = v180;
  v183 = [v182 countByEnumeratingWithState:v279 objects:buf count:16];
  if (v183)
  {
    v184 = v183;
    v185 = 0;
    v186 = **&v279[16];
    v187 = v228;
    do
    {
      for (m = 0; m != v184; ++m)
      {
        if (**&v279[16] != v186)
        {
          objc_enumerationMutation(v182);
        }

        v189 = [*(*&v279[8] + 8 * m) device];
        v190 = v189;
        if (v189 && [v189 platform] == 4)
        {
          ++v185;
        }
      }

      v184 = [v182 countByEnumeratingWithState:v279 objects:buf count:16];
    }

    while (v184);

    v191 = v218;
    [v218 setHasWatchOSDevicesInternal:v185 != 0];
    if (v185)
    {
      v192 = [v177 count] == 0;
    }

    else
    {
      v192 = 0;
    }

    v111 = 0x279B7B000uLL;
  }

  else
  {

    v191 = v218;
    [v218 setHasWatchOSDevicesInternal:0];
    v192 = 0;
    v187 = v228;
  }

  [v191 setHasWatchOSDevicesOnlyInternal:v192];
  v193 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
  v276[0] = v193;
  v194 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"identifier" ascending:1];
  v276[1] = v194;
  v195 = [MEMORY[0x277CBEA60] arrayWithObjects:v276 count:2];

  v196 = [v177 sortedArrayUsingDescriptors:v195];
  [v191 setDevices:v196];

  v197 = MEMORY[0x277D4B9D8];
  if (v217)
  {
    v198 = &unk_28769D388;
  }

  else
  {
    v198 = [v216 dsid];
  }

  v253 = v187;
  v199 = [v197 bundleIdentifiersInstalledForDSID:v198 inContext:v214 error:&v253];
  v200 = v253;

  if (!v217)
  {
  }

  if (v199)
  {
    [v218 setInstalledBundleIDs:v199];
  }

  else
  {
    v201 = [*(v111 + 1680) persistence];
    if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
    {
      +[STRootViewModelCoordinator loadViewModelFromManagedObjectContext:isLocalUser:userDSID:error:];
    }
  }

  if (v217 && ([v218 isCloudSyncEnabled] & 1) == 0)
  {
    v202 = [MEMORY[0x277D4B928] fetchRequest];
    v203 = MEMORY[0x277CCAC30];
    v204 = [v216 managingOrganization];
    v205 = [v203 predicateWithFormat:@"(%K == NO) AND (%@ IN %K) AND (%K == %@) AND (%K != %@) AND (%K != %@)", @"isTombstoned", v216, @"users", @"organization", v204, @"type", *MEMORY[0x277D4BB88], @"type", *MEMORY[0x277D4BB98]];
    [v202 setPredicate:v205];

    v252 = v200;
    v206 = [v202 execute:&v252];
    v104 = v252;

    if (v206)
    {
      [v218 setCanStopScreenTimeWithoutPasscode:{objc_msgSend(v206, "count") == 0}];
    }

    else
    {
      v207 = +[STUILog persistence];
      if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
      {
        +[STRootViewModelCoordinator loadViewModelFromManagedObjectContext:isLocalUser:userDSID:error:];
      }
    }
  }

  else
  {
    v104 = v200;
  }

  v106 = v218;

  v135 = v218;
  v102 = v212;
  v9 = v214;
LABEL_190:

  return v106;
}

- (void)saveViewModel:(id)a3
{
  v4 = a3;
  v5 = [v4 me];
  v6 = [v5 dsid];
  [(STRootViewModelCoordinator *)self setUserDSID:v6];

  v7 = [v4 me];
  v8 = [v7 name];
  [(STRootViewModelCoordinator *)self setUserName:v8];

  [(STRootViewModelCoordinator *)self setViewModel:v4];
  v9 = [MEMORY[0x277CF9650] sharedCategories];
  v10 = [v4 installedBundleIDs];

  v11 = [v10 allObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__STRootViewModelCoordinator_saveViewModel___block_invoke;
  v12[3] = &unk_279B7CB08;
  v12[4] = self;
  [v9 categoriesForBundleIDs:v11 completionHandler:v12];
}

void __44__STRootViewModelCoordinator_saveViewModel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_opt_new();
    v8 = objc_opt_new();
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__STRootViewModelCoordinator_saveViewModel___block_invoke_497;
    v17[3] = &unk_279B7E040;
    v9 = v7;
    v18 = v9;
    v10 = v8;
    v19 = v10;
    [v5 enumerateKeysAndObjectsUsingBlock:v17];
    v11 = [MEMORY[0x277CCABD8] mainQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__STRootViewModelCoordinator_saveViewModel___block_invoke_2;
    v14[3] = &unk_279B7D708;
    v14[4] = *(a1 + 32);
    v15 = v10;
    v16 = v9;
    v12 = v9;
    v13 = v10;
    [v11 addOperationWithBlock:v14];
  }

  else
  {
    v13 = +[STUILog persistence];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __44__STRootViewModelCoordinator_saveViewModel___block_invoke_cold_1();
    }
  }
}

void __44__STRootViewModelCoordinator_saveViewModel___block_invoke_497(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = [v5 canonicalBundleIdentifier];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v12;
  }

  v8 = v7;

  [*(a1 + 32) addObject:v8];
  v9 = [v5 identifier];

  v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
  if (v10)
  {
    v11 = v10;
    [v10 addObject:v8];
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{v8, 0}];
    [*(a1 + 40) setObject:v11 forKeyedSubscript:v9];
  }
}

void __44__STRootViewModelCoordinator_saveViewModel___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) viewModel];
  [v2 setInstalledBundleIDsByCategoryIdentifier:*(a1 + 40)];
  [v2 setInstalledBundleIDs:*(a1 + 48)];
}

- (void)loadViewModelRightNow
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_fault_impl(&dword_264BA2000, a2, OS_LOG_TYPE_FAULT, "Unable to load view model: %{public}@", &v3, 0xCu);
}

void __51__STRootViewModelCoordinator_loadViewModelRightNow__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v8 = [v4 loadViewModelFromManagedObjectContext:v3 isLocalUser:v5 userDSID:v6 error:&obj];

  objc_storeStrong((v7 + 40), obj);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

- (void)loadViewModelWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STRootViewModelCoordinator *)self userDSID];
  v6 = [(STRootViewModelCoordinator *)self isLocalUser];
  v7 = [(STRootViewModelCoordinator *)self persistenceController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__STRootViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke;
  v10[3] = &unk_279B7DF50;
  v13 = v6;
  v10[4] = self;
  v11 = v5;
  v12 = v4;
  v8 = v4;
  v9 = v5;
  [v7 performBackgroundTask:v10];
}

void __65__STRootViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  v14 = 0;
  v7 = [v4 loadViewModelFromManagedObjectContext:v3 isLocalUser:v5 userDSID:v6 error:&v14];

  v8 = v14;
  if (v7)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __65__STRootViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_2;
    v11[3] = &unk_279B7E090;
    v11[4] = *(a1 + 32);
    v12 = v7;
    v13 = *(a1 + 48);
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }

  else
  {
    v9 = *(a1 + 48);
    v10 = v8;
    if (v9)
    {
      if ([MEMORY[0x277CCACC8] isMainThread])
      {
        v9[2](v9, v10);
      }

      else
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
        block[3] = &unk_279B7D130;
        v17 = v9;
        v16 = v10;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }
}

void __65__STRootViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) saveViewModel:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v2[2](v2, 0);
    }

    else
    {
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __STUICallCompletionHandlerOnMainThread_block_invoke_1;
      v3[3] = &unk_279B7D130;
      v4 = 0;
      v5 = v2;
      dispatch_async(MEMORY[0x277D85CD0], v3);
    }
  }
}

- (id)organizationIdentifierForUsage
{
  v2 = [(STRootViewModelCoordinator *)self isLocalUser];
  v3 = MEMORY[0x277D4BC50];
  if (!v2)
  {
    v3 = MEMORY[0x277D4BC48];
  }

  v4 = *v3;

  return v4;
}

- (id)organizationIdentifierForManagement
{
  v2 = [(STRootViewModelCoordinator *)self viewModel];
  v3 = [v2 me];
  v4 = [v3 source];
  v5 = MEMORY[0x277D4BC50];
  if (v4)
  {
    v5 = MEMORY[0x277D4BC48];
  }

  v6 = *v5;
  v7 = *v5;

  return v6;
}

- (void)_willRefreshUsage:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  v5 = [(STRootViewModelCoordinator *)self persistenceController];
  v6 = [v5 viewContext];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__STRootViewModelCoordinator__willRefreshUsage___block_invoke;
  v18[3] = &unk_279B7E0B8;
  v18[4] = self;
  v7 = v6;
  v19 = v7;
  v20 = &v21;
  [v7 performBlockAndWait:v18];
  if (v22[5])
  {
    v8 = +[STUILog persistence];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(STRootViewModelCoordinator *)self viewModel];
      v10 = [v9 devices];
      v11 = [v10 valueForKeyPath:@"name"];
      v12 = [v22[5] valueForKeyPath:@"name"];
      *buf = 138543618;
      v28 = v11;
      v29 = 2114;
      v30 = v12;
      _os_log_impl(&dword_264BA2000, v8, OS_LOG_TYPE_DEFAULT, "Updating devices from: %{public}@\n to: %{public}@", buf, 0x16u);
    }

    v13 = v22[5];
    v14 = [(STRootViewModelCoordinator *)self viewModel];
    [v14 setDevices:v13];

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K == %hd OR %K == %hd)", @"platform", 4, @"platform", 5];
    v16 = [v22[5] filteredArrayUsingPredicate:v15];
    v17 = [(STRootViewModelCoordinator *)self usageDetailsCoordinator];
    [v17 setDevices:v16];
  }

  _Block_object_dispose(&v21, 8);
}

void __48__STRootViewModelCoordinator__willRefreshUsage___block_invoke(uint64_t a1)
{
  v131 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) viewModel];
  v3 = [v2 me];

  v4 = [v3 isRemoteUser];
  v5 = MEMORY[0x277D4B988];
  if (v4)
  {
    v6 = [v3 dsid];
    v7 = *(a1 + 40);
    v103 = 0;
    v8 = [v5 fetchUserWithDSID:v6 inContext:v7 error:&v103];
    v9 = v103;
  }

  else
  {
    v10 = *(a1 + 40);
    v102 = 0;
    v8 = [MEMORY[0x277D4B988] fetchLocalUserInContext:v10 error:&v102];
    v9 = v102;
  }

  if (v8)
  {
    v85 = v9;
    v86 = a1;
    v88 = v3;
    v11 = [v8 userDeviceStates];
    v12 = v8;
    v13 = v11;
    v87 = v12;
    v14 = [v12 altDSID];
    v15 = v13;
    v89 = v14;
    v101 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v16 = +[STUILog usage];
    v17 = &off_264CD1000;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v124 = v89;
      _os_log_impl(&dword_264BA2000, v16, OS_LOG_TYPE_DEFAULT, "Finding devices for user: %{public}@", buf, 0xCu);
    }

    v18 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v19 = [v18 BOOLForKey:0x287677CC8];

    if (_os_feature_enabled_impl() && (v19 & 1) == 0)
    {
      v114 = 0;
      v20 = [_TtC20ScreenTimeSettingsUI13DeviceDetails detailsForUserWithAltDSID:v89 error:&v114];
      v21 = v114;
      if (v20)
      {
        v112 = 0u;
        v113 = 0u;
        v111 = 0u;
        v110 = 0u;
        obj = v20;
        v22 = [obj countByEnumeratingWithState:&v110 objects:buf count:16];
        if (v22)
        {
          v23 = v22;
          v92 = v21;
          v93 = v20;
          v95 = v15;
          v99 = *v111;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v111 != v99)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v110 + 1) + 8 * i);
              v26 = [v25 coreDuetIdentifier];
              v27 = +[STUILog usage];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = [v25 identifier];
                v29 = [v25 name];
                *v117 = 138543874;
                v118 = v26;
                v119 = 2114;
                v120 = v28;
                v121 = 2114;
                v122 = v29;
                _os_log_impl(&dword_264BA2000, v27, OS_LOG_TYPE_DEFAULT, "Device Activity Device Found:  %{public}@ %{public}@ %{public}@", v117, 0x20u);
              }

              v30 = [STUIDevice alloc];
              v31 = [v25 name];
              v32 = [v25 identifier];
              v33 = [v25 platform];
              v34 = [v25 isLocalDevice];
              v35 = [v25 lastUpdatedDate];
              v36 = [(STUIDevice *)v30 initWithName:v31 identifier:v32 coreDuetIdentifier:v26 platform:v33 hasDeviceActivity:1 isLocalDevice:v34 lastFamilyCheckinDate:v35];

              [v101 addObject:v36];
              v37 = +[STUILog usage];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                v38 = [v25 identifier];
                *v117 = 138543618;
                v118 = v26;
                v119 = 2114;
                v120 = v38;
                _os_log_impl(&dword_264BA2000, v37, OS_LOG_TYPE_DEFAULT, "Device Activity Device added: %{public}@, %{public}@", v117, 0x16u);
              }
            }

            v23 = [obj countByEnumeratingWithState:&v110 objects:buf count:16];
          }

          while (v23);
          v17 = &off_264CD1000;
          v20 = v93;
          v15 = v95;
          v21 = v92;
        }
      }

      else
      {
        obj = +[STUILog usage];
        if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
        {
          +[STRootViewModelCoordinator loadViewModelFromManagedObjectContext:isLocalUser:userDSID:error:];
        }
      }
    }

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v39 = v15;
    v40 = [v39 countByEnumeratingWithState:&v106 objects:v117 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v107;
      v43 = 0x277D4B000uLL;
      v96 = *(v17 + 300);
      v94 = v39;
      v97 = *v107;
      do
      {
        v44 = 0;
        v100 = v41;
        do
        {
          if (*v107 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v45 = *(*(&v106 + 1) + 8 * v44);
          v46 = [v45 device];
          v47 = v46;
          if (v46)
          {
            if ([v46 platform] != 1 && objc_msgSend(v47, "platform") != 2)
            {
              v52 = +[STUILog usage];
              if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_64;
              }

              v61 = [v47 name];
              *v125 = v96;
              v126 = v61;
              v62 = v52;
              v63 = "Skipping %{public}@ because it is not an iOS or macOS device";
              goto LABEL_48;
            }

            if (([*(v43 + 2456) hasLegacyUsageData:v47] & 1) == 0)
            {
              v52 = +[STUILog usage];
              if (!os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_64;
              }

              v61 = [v47 name];
              *v125 = v96;
              v126 = v61;
              v62 = v52;
              v63 = "Skipping %{public}@ because it has no legacy usage data";
LABEL_48:
              _os_log_impl(&dword_264BA2000, v62, OS_LOG_TYPE_DEFAULT, v63, v125, 0xCu);

              goto LABEL_64;
            }

            v48 = [v45 coreDuetIdentifier];
            v49 = +[STUILog usage];
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v50 = [v47 identifier];
              v51 = [v47 name];
              *v125 = 138543874;
              v126 = v48;
              v127 = 2114;
              v128 = v50;
              v129 = 2114;
              v130 = v51;
              _os_log_impl(&dword_264BA2000, v49, OS_LOG_TYPE_DEFAULT, "Screen Time Device Found: coreDuetIdentifier: %{public}@ %{public}@ %{public}@", v125, 0x20u);

              v43 = 0x277D4B000;
            }

            v104[0] = MEMORY[0x277D85DD0];
            v104[1] = 3221225472;
            v104[2] = __createDevices_block_invoke;
            v104[3] = &unk_279B7DEB0;
            v52 = v48;
            v105 = v52;
            v53 = [v101 indexOfObjectPassingTest:v104];
            if (v53 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v54 = [v45 user];
              v55 = v47;
              v56 = [MEMORY[0x277D4BAB8] fetchRequestMatchingUser:v54 device:v55];
              v115 = 0;
              v57 = [v56 execute:&v115];
              v58 = v115;
              if (v58)
              {
                v59 = +[STUILog usage];
                if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
                {
                  v60 = [v54 altDSID];
                  v90 = [v55 name];
                  *v125 = 138543874;
                  v126 = v60;
                  v127 = 2114;
                  v128 = v90;
                  v129 = 2114;
                  v130 = v58;
                  _os_log_fault_impl(&dword_264BA2000, v59, OS_LOG_TYPE_FAULT, "fetchLastUpdatedDate Request failed for user %{public}@ and device %{public}@: %{public}@", v125, 0x20u);
                }

                goto LABEL_56;
              }

              if (!v57 || ![v57 count] || (objc_msgSend(v57, "objectAtIndexedSubscript:", 0), v67 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v67, "lastUpdatedDate"), v65 = objc_claimAutoreleasedReturnValue(), v67, !v65))
              {
                v59 = +[STUILog usage];
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  v91 = [v54 altDSID];
                  v77 = [v55 name];
                  *v125 = 138543874;
                  v126 = v91;
                  v127 = 2114;
                  v128 = v77;
                  v78 = v77;
                  v129 = 2114;
                  v130 = v57;
                  _os_log_error_impl(&dword_264BA2000, v59, OS_LOG_TYPE_ERROR, "fetchLastUpdatedDate no usage for user %{public}@ and device %{public}@: %{public}@", v125, 0x20u);
                }

LABEL_56:

                v65 = 0;
              }

              v68 = [STUIDevice alloc];
              v69 = [v55 name];
              v70 = [v55 identifier];
              v71 = [v55 platform];
              v72 = [v55 localUserDeviceState];
              v73 = [(STUIDevice *)v68 initWithName:v69 identifier:v70 coreDuetIdentifier:v52 platform:v71 hasDeviceActivity:0 isLocalDevice:v72 != 0 lastFamilyCheckinDate:v65];

              if (_os_feature_enabled_impl())
              {
                v74 = [v55 lastPasscodeUseDate];
                [(STUIDevice *)v73 setLastPasscodeUseDate:v74];

                -[STUIDevice setSupportsPasscodeActivity:](v73, "setSupportsPasscodeActivity:", [v55 supportsPasscodeActivity]);
              }

              [v101 addObject:v73];
              v75 = +[STUILog usage];
              v39 = v94;
              v43 = 0x277D4B000;
              if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
              {
                v76 = [(STUIDevice *)v73 identifier];
                *v125 = 138543618;
                v126 = v52;
                v127 = 2114;
                v128 = v76;
                _os_log_impl(&dword_264BA2000, v75, OS_LOG_TYPE_DEFAULT, "Screen Time Device added: %{public}@, %{public}@", v125, 0x16u);
              }

              v42 = v97;
LABEL_62:
            }

            else
            {
              v64 = v53;
              v42 = v97;
              if (_os_feature_enabled_impl())
              {
                v65 = [v101 objectAtIndexedSubscript:v64];
                v66 = [v47 lastPasscodeUseDate];
                [v65 setLastPasscodeUseDate:v66];

                [v65 setSupportsPasscodeActivity:{objc_msgSend(v47, "supportsPasscodeActivity")}];
                goto LABEL_62;
              }
            }

            v41 = v100;
            goto LABEL_64;
          }

          v52 = +[STUILog usage];
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            *v125 = 138543618;
            v126 = 0;
            v127 = 2114;
            v128 = v45;
            _os_log_error_impl(&dword_264BA2000, v52, OS_LOG_TYPE_ERROR, "Could not create an STUIDevice from source device %{public}@ for user and device: %{public}@", v125, 0x16u);
          }

LABEL_64:

          ++v44;
        }

        while (v41 != v44);
        v41 = [v39 countByEnumeratingWithState:&v106 objects:v117 count:16];
      }

      while (v41);
    }

    v79 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"name" ascending:1];
    v116[0] = v79;
    v80 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"identifier" ascending:1];
    v116[1] = v80;
    v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:2];
    v82 = [v101 sortedArrayUsingDescriptors:v81];
    v83 = *(*(v86 + 48) + 8);
    v84 = *(v83 + 40);
    *(v83 + 40) = v82;

    v8 = v87;
    v3 = v88;
    v9 = v85;
  }

  else
  {
    v39 = +[STUILog persistence];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      __48__STRootViewModelCoordinator__willRefreshUsage___block_invoke_cold_2();
    }
  }
}

- (id)defaultValueForRestrictionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(STRootViewModelCoordinator *)self contentPrivacyCoordinator];
  v6 = [v5 viewModel];
  v7 = [v6 isLocalDevice];

  v8 = [objc_opt_class() defaultValueForRestrictionIdentifier:v4 forIsLocalDevice:v7];

  return v8;
}

+ (id)defaultValueForRestrictionIdentifier:(id)a3 forIsLocalDevice:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (STRestrictionTypeWithString_onceToken_0 != -1)
  {
    +[STRootViewModelCoordinator(STRestrictionsDataSource) defaultValueForRestrictionIdentifier:forIsLocalDevice:];
  }

  v6 = [STRestrictionTypeWithString_restrictionItemTypes_0 objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = [v5 componentsSeparatedByString:@"."];
    v8 = [v7 mutableCopy];

    v9 = [v8 lastObject];
    [v8 removeLastObject];
    v10 = [v8 componentsJoinedByString:@"."];
    v11 = -[STRestrictionItem initWithConfiguration:restrictionKey:labelName:type:restrictionValue:]([STRestrictionItem alloc], "initWithConfiguration:restrictionKey:labelName:type:restrictionValue:", v10, v9, &stru_28766E5A8, [v6 unsignedIntegerValue], 0);
  }

  else
  {
    v11 = 0;
  }

  if (v11 && ([(STRestrictionItem *)v11 rmConfiguration], v12 = objc_claimAutoreleasedReturnValue(), [(STRestrictionItem *)v11 payloadKey], v13 = objc_claimAutoreleasedReturnValue(), [STContentPrivacyViewModel visibleRestrictionWithConfiguration:v12 key:v13 isLocalDevice:v4], v14 = objc_claimAutoreleasedReturnValue(), v13, v12, v14))
  {
    v15 = [STContentPrivacyViewModel defaultValueForRestriction:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)loadValuesByRestrictionWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STRootViewModelCoordinator *)self contentPrivacyCoordinator];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __101__STRootViewModelCoordinator_STRestrictionsDataSource__loadValuesByRestrictionWithCompletionHandler___block_invoke;
  v7[3] = &unk_279B7E158;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 loadValuesByRestrictionWithCompletionHandler:v7];
}

void __101__STRootViewModelCoordinator_STRestrictionsDataSource__loadValuesByRestrictionWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = objc_opt_class();
    v6 = [*(a1 + 32) contentPrivacyCoordinator];
    v7 = [v6 viewModel];
    v8 = [v5 createValuesByRestrictionWithValuesByRestrictionItem:v9 isSiriImageGenerationAllowed:{objc_msgSend(v7, "isSiriImageGenerationAllowed")}];

    (*(*(a1 + 40) + 16))();
  }
}

+ (id)createValuesByRestrictionWithValuesByRestrictionItem:(id)a3 isSiriImageGenerationAllowed:(BOOL)a4
{
  v19 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = MEMORY[0x277CCACA8];
        v13 = [v11 rmConfiguration];
        v14 = [v11 payloadKey];
        v15 = [v12 stringWithFormat:@"%@.%@", v13, v14];

        v16 = [v6 objectForKeyedSubscript:v11];
        [v5 setObject:v16 forKeyedSubscript:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v19];
    [v5 setObject:v17 forKeyedSubscript:*MEMORY[0x277D4BB40]];
  }

  return v5;
}

void __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_432_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) appAndWebsiteActivityEnabled];
  [v1 BOOLValue];
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v7 = [a2 localizedDescription];
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_448_cold_1(uint64_t a1, void *a2)
{
  v7 = [a2 localizedDescription];
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

void __69__STRootViewModelCoordinator_loadRegionRatingsWithCompletionHandler___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end