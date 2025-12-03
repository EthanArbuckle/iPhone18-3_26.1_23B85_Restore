@interface STRootViewModelCoordinator
+ (id)createValuesByRestrictionWithValuesByRestrictionItem:(id)item isSiriImageGenerationAllowed:(BOOL)allowed;
+ (id)defaultValueForRestrictionIdentifier:(id)identifier forIsLocalDevice:(BOOL)device;
+ (id)keyPathsForValuesAffectingUsageDetailsCoordinator;
+ (id)loadViewModelFromManagedObjectContext:(id)context isLocalUser:(BOOL)user userDSID:(id)d error:(id *)error;
- (BOOL)_currentAccountIsProto;
- (BOOL)hasShownAppRatingChangeTip;
- (BOOL)hasShownMiniBuddy;
- (BOOL)isPasscodeEnabled;
- (BOOL)shouldShowConnectToFamilyForSignIn;
- (BOOL)validatePIN:(id)n;
- (STCommunicationSafetyViewModelCoordinator)communicationSafetyCoordinator;
- (STContentPrivacyViewModelCoordinator)contentPrivacyCoordinator;
- (STEyeReliefViewModelCoordinator)eyeReliefCoordinator;
- (STRootViewModelCoordinator)initWithUserDSID:(id)d deviceIdentifier:(id)identifier usageReportType:(id)type usageContext:(int64_t)context;
- (STTimeAllowancesViewModelCoordinator)timeAllowancesCoordinator;
- (STUsageDetailsViewModelCoordinator)usageDetailsCoordinator;
- (id)coordinatorForChild:(id)child deviceIdentifier:(id)identifier usageReportType:(id)type;
- (id)defaultValueForRestrictionIdentifier:(id)identifier;
- (id)organizationIdentifierForManagement;
- (id)organizationIdentifierForUsage;
- (void)_registerForPersistentStoreNotifications;
- (void)_registerForWillResignActiveNotifications;
- (void)_reportCoreAnalyticsEventScreenTimeEnabled:(BOOL)enabled user:(id)user userType:(unint64_t)type userIsRemote:(BOOL)remote;
- (void)_setPIN:(id)n recoveryAltDSID:(id)d shouldSetRecoveryAppleID:(BOOL)iD completionHandler:(id)handler;
- (void)_validateDeviceIdentifier;
- (void)_willRefreshUsage:(id)usage;
- (void)applyIntroductionViewModel:(id)model withCompletionHandler:(id)handler;
- (void)enableManagementWithPIN:(id)n recoveryAltDSID:(id)d completionHandler:(id)handler;
- (void)loadRegionRatingsWithCompletionHandler:(id)handler;
- (void)loadValuesByRestrictionWithCompletionHandler:(id)handler;
- (void)loadViewModelRightNow;
- (void)loadViewModelWithCompletionHandler:(id)handler;
- (void)saveViewModel:(id)model;
- (void)setHasShownAppRatingChangeTip:(BOOL)tip;
- (void)setHasShownMiniBuddy:(BOOL)buddy;
- (void)setManagementEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setScreenTimeEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setScreenTimeSyncingEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)setShareWebUsageEnabled:(BOOL)enabled completionHandler:(id)handler;
@end

@implementation STRootViewModelCoordinator

- (STRootViewModelCoordinator)initWithUserDSID:(id)d deviceIdentifier:(id)identifier usageReportType:(id)type usageContext:(int64_t)context
{
  v31.receiver = self;
  v31.super_class = STRootViewModelCoordinator;
  typeCopy = type;
  identifierCopy = identifier;
  dCopy = d;
  v12 = [(STRootViewModelCoordinator *)&v31 init];
  v13 = [dCopy copy];
  userDSID = v12->_userDSID;
  v12->_userDSID = v13;

  v15 = [identifierCopy copy];
  deviceIdentifier = v12->_deviceIdentifier;
  v12->_deviceIdentifier = v15;

  v17 = [typeCopy copy];
  usageReportType = v12->_usageReportType;
  v12->_usageReportType = v17;

  v12->_usageContext = context;
  mEMORY[0x277D4B898] = [MEMORY[0x277D4B898] sharedController];
  persistenceController = v12->_persistenceController;
  v12->_persistenceController = mEMORY[0x277D4B898];

  unsignedIntegerValue = [dCopy unsignedIntegerValue];
  if (!unsignedIntegerValue)
  {
    v12->_isLocalUser = 1;
  }

  persistentContainer = [(STAdminPersistenceController *)v12->_persistenceController persistentContainer];
  mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
  [mEMORY[0x277D4B8C0] setPersistentContainer:persistentContainer];

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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v12 selector:sel__willRefreshUsage_ name:0x287677CE8 object:0];

  return v12;
}

- (void)_registerForPersistentStoreNotifications
{
  v24[5] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D4B9C8];
  fetchRequest = [MEMORY[0x277D4B988] fetchRequest];
  v5 = [v3 requestWithFetchRequest:fetchRequest];

  v6 = MEMORY[0x277D4B9C8];
  fetchRequest2 = [MEMORY[0x277D4B980] fetchRequest];
  v8 = [v6 requestWithFetchRequest:fetchRequest2];

  v9 = MEMORY[0x277D4B9C8];
  fetchRequest3 = [MEMORY[0x277D4BA90] fetchRequest];
  v11 = [v9 requestWithFetchRequest:fetchRequest3];

  v12 = MEMORY[0x277D4B9C8];
  fetchRequest4 = [MEMORY[0x277D4B9D8] fetchRequest];
  v14 = [v12 requestWithFetchRequest:fetchRequest4];

  v15 = MEMORY[0x277D4B9C8];
  fetchRequest5 = [MEMORY[0x277D4BAD8] fetchRequest];
  v17 = [v15 requestWithFetchRequest:fetchRequest5];

  v18 = objc_alloc(MEMORY[0x277D4B9D0]);
  persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
  viewContext = [persistenceController viewContext];
  v24[0] = v5;
  v24[1] = v8;
  v24[2] = v11;
  v24[3] = v14;
  v24[4] = v17;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:5];
  v22 = [v18 initWithContext:viewContext resultsRequests:v21];

  [v22 setDelegate:self];
  fetchedResultsController = self->_fetchedResultsController;
  self->_fetchedResultsController = v22;
}

- (void)_registerForWillResignActiveNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__passcodeSessionHasEnded_ name:*MEMORY[0x277D76768] object:0];
}

- (id)coordinatorForChild:(id)child deviceIdentifier:(id)identifier usageReportType:(id)type
{
  childCopy = child;
  identifierCopy = identifier;
  typeCopy = type;
  coordinatorsByChildDSID = [(STRootViewModelCoordinator *)self coordinatorsByChildDSID];
  dsid = [childCopy dsid];
  v13 = [coordinatorsByChildDSID objectForKeyedSubscript:dsid];

  if (!v13)
  {
    v14 = [STRootViewModelCoordinator alloc];
    dsid2 = [childCopy dsid];
    v13 = [(STRootViewModelCoordinator *)v14 initWithUserDSID:dsid2 deviceIdentifier:identifierCopy usageReportType:typeCopy usageContext:[(STRootViewModelCoordinator *)self usageContext]];

    coordinatorsByChildDSID2 = [(STRootViewModelCoordinator *)self coordinatorsByChildDSID];
    dsid3 = [childCopy dsid];
    [coordinatorsByChildDSID2 setObject:v13 forKeyedSubscript:dsid3];
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
    viewModel = [(STRootViewModelCoordinator *)self viewModel];
    isScreenTimeEnabled = [viewModel isScreenTimeEnabled];

    if (isScreenTimeEnabled)
    {
      v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K == %hd OR %K == %hd)", @"platform", 4, @"platform", 5];
      viewModel2 = [(STRootViewModelCoordinator *)self viewModel];
      devices = [viewModel2 devices];
      v8 = [devices filteredArrayUsingPredicate:v5];

      [(STRootViewModelCoordinator *)self _validateDeviceIdentifier];
      v9 = [STUsageDetailsViewModelCoordinator alloc];
      persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
      organizationIdentifierForUsage = [(STRootViewModelCoordinator *)self organizationIdentifierForUsage];
      userDSID = [(STRootViewModelCoordinator *)self userDSID];
      deviceIdentifier = [(STRootViewModelCoordinator *)self deviceIdentifier];
      usageReportType = [(STRootViewModelCoordinator *)self usageReportType];
      v15 = [(STUsageDetailsViewModelCoordinator *)v9 initWithPersistenceController:persistenceController organizationIdentifier:organizationIdentifierForUsage userDSID:userDSID devices:v8 selectedDeviceIdentifier:deviceIdentifier selectedUsageReportType:usageReportType usageContext:[(STRootViewModelCoordinator *)self usageContext]];
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
  viewModel = [(STRootViewModelCoordinator *)self viewModel];
  devices = [viewModel devices];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__STRootViewModelCoordinator__validateDeviceIdentifier__block_invoke;
  v14[3] = &unk_279B7DEB0;
  v14[4] = self;
  v5 = [devices indexOfObjectPassingTest:v14];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([(STRootViewModelCoordinator *)self isLocalUser])
    {
      viewModel3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == YES", @"isLocalDevice"];
      viewModel2 = [(STRootViewModelCoordinator *)self viewModel];
      devices2 = [viewModel2 devices];
      devices3 = [devices2 filteredArrayUsingPredicate:viewModel3];
    }

    else
    {
      viewModel3 = [(STRootViewModelCoordinator *)self viewModel];
      devices3 = [viewModel3 devices];
    }

    firstObject = [devices3 firstObject];
    identifier = [firstObject identifier];

    v12 = +[STUILog usage];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      deviceIdentifier = [(STRootViewModelCoordinator *)self deviceIdentifier];
      *buf = 138543618;
      v16 = deviceIdentifier;
      v17 = 2114;
      v18 = identifier;
      _os_log_impl(&dword_264BA2000, v12, OS_LOG_TYPE_DEFAULT, "_validateDeviceIdentifier: deviceIdentifier %{public}@ not found. Switching to %{public}@", buf, 0x16u);
    }

    [(STRootViewModelCoordinator *)self setDeviceIdentifier:identifier];
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
    persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
    userDSID = [(STRootViewModelCoordinator *)self userDSID];
    v7 = [(STTimeAllowancesViewModelCoordinator *)v4 initWithPersistenceController:persistenceController userDSID:userDSID];
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
    persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
    userDSID = [(STRootViewModelCoordinator *)self userDSID];
    userName = [(STRootViewModelCoordinator *)self userName];
    v8 = [(STContentPrivacyViewModelCoordinator *)v4 initWithPersistenceController:persistenceController userDSID:userDSID userName:userName currentAccountIsProto:[(STRootViewModelCoordinator *)self _currentAccountIsProto]];
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
    persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
    userDSID = [(STRootViewModelCoordinator *)self userDSID];
    v7 = [(STCommunicationSafetyViewModelCoordinator *)v4 initWithPersistenceController:persistenceController userDSID:userDSID currentAccountIsProto:[(STRootViewModelCoordinator *)self _currentAccountIsProto]];
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
    persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
    userDSID = [(STRootViewModelCoordinator *)self userDSID];
    v7 = [(STEyeReliefViewModelCoordinator *)v4 initWithPersistenceController:persistenceController userDSID:userDSID currentAccountIsProto:[(STRootViewModelCoordinator *)self _currentAccountIsProto]];
    v8 = self->_eyeReliefCoordinator;
    self->_eyeReliefCoordinator = v7;

    eyeReliefCoordinator = self->_eyeReliefCoordinator;
  }

  return eyeReliefCoordinator;
}

- (BOOL)_currentAccountIsProto
{
  v3 = objc_opt_class();
  _akAccountManager = [(STRootViewModelCoordinator *)self _akAccountManager];
  LOBYTE(v3) = [v3 currentAccountIsProtoForAKAccountManager:_akAccountManager];

  return v3;
}

- (BOOL)hasShownMiniBuddy
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"RMSetupShown"];

  return v3;
}

- (void)setHasShownMiniBuddy:(BOOL)buddy
{
  if (buddy)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:1 forKey:@"RMSetupShown"];
  }
}

- (BOOL)hasShownAppRatingChangeTip
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:0x2876701E8];

  return v3;
}

- (void)setHasShownAppRatingChangeTip:(BOOL)tip
{
  if (tip)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:1 forKey:0x2876701E8];
  }
}

- (BOOL)shouldShowConnectToFamilyForSignIn
{
  v3 = objc_opt_class();
  _akAccountManager = [(STRootViewModelCoordinator *)self _akAccountManager];
  LOBYTE(v3) = [v3 shouldShowConnectToFamilyForSignInForAKAccountManager:_akAccountManager];

  return v3;
}

- (BOOL)isPasscodeEnabled
{
  viewModel = [(STRootViewModelCoordinator *)self viewModel];
  v3 = [viewModel me];
  hasPasscode = [v3 hasPasscode];

  return hasPasscode;
}

- (BOOL)validatePIN:(id)n
{
  nCopy = n;
  viewModel = [(STRootViewModelCoordinator *)self viewModel];
  v6 = [viewModel me];

  passcode = [v6 passcode];
  v8 = [passcode isEqualToString:nCopy];

  if (_os_feature_enabled_impl() && v8)
  {
    persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__STRootViewModelCoordinator_validatePIN___block_invoke;
    v11[3] = &unk_279B7DED8;
    v12 = v6;
    selfCopy = self;
    [persistenceController performBackgroundTask:v11];
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

- (void)_setPIN:(id)n recoveryAltDSID:(id)d shouldSetRecoveryAppleID:(BOOL)iD completionHandler:(id)handler
{
  nCopy = n;
  dCopy = d;
  handlerCopy = handler;
  viewModel = [(STRootViewModelCoordinator *)self viewModel];
  v14 = [viewModel me];

  timeAllowancesCoordinator = [(STRootViewModelCoordinator *)self timeAllowancesCoordinator];
  viewModel2 = [timeAllowancesCoordinator viewModel];
  allowancesByIdentifier = [viewModel2 allowancesByIdentifier];

  persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __97__STRootViewModelCoordinator__setPIN_recoveryAltDSID_shouldSetRecoveryAppleID_completionHandler___block_invoke;
  v24[3] = &unk_279B7DF28;
  v25 = v14;
  v26 = nCopy;
  iDCopy = iD;
  v27 = dCopy;
  v28 = allowancesByIdentifier;
  selfCopy = self;
  v30 = handlerCopy;
  v19 = handlerCopy;
  v20 = allowancesByIdentifier;
  v21 = dCopy;
  v22 = nCopy;
  v23 = v14;
  [persistenceController performBackgroundTask:v24];
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

- (void)setScreenTimeEnabled:(BOOL)enabled completionHandler:(id)handler
{
  handlerCopy = handler;
  viewModel = [(STRootViewModelCoordinator *)self viewModel];
  v8 = [viewModel me];

  persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__STRootViewModelCoordinator_setScreenTimeEnabled_completionHandler___block_invoke;
  v12[3] = &unk_279B7DF50;
  enabledCopy = enabled;
  v13 = v8;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = v8;
  [persistenceController performBackgroundTask:v12];
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

- (void)setManagementEnabled:(BOOL)enabled completionHandler:(id)handler
{
  handlerCopy = handler;
  viewModel = [(STRootViewModelCoordinator *)self viewModel];
  v8 = [viewModel me];

  persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__STRootViewModelCoordinator_setManagementEnabled_completionHandler___block_invoke;
  v12[3] = &unk_279B7DF50;
  enabledCopy = enabled;
  v13 = v8;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = v8;
  [persistenceController performBackgroundTask:v12];
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

- (void)setScreenTimeSyncingEnabled:(BOOL)enabled completionHandler:(id)handler
{
  handlerCopy = handler;
  viewModel = [(STRootViewModelCoordinator *)self viewModel];
  v8 = [viewModel me];

  persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__STRootViewModelCoordinator_setScreenTimeSyncingEnabled_completionHandler___block_invoke;
  v12[3] = &unk_279B7DF50;
  enabledCopy = enabled;
  v13 = v8;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = v8;
  [persistenceController performBackgroundTask:v12];
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

- (void)setShareWebUsageEnabled:(BOOL)enabled completionHandler:(id)handler
{
  handlerCopy = handler;
  viewModel = [(STRootViewModelCoordinator *)self viewModel];
  v8 = [viewModel me];

  persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__STRootViewModelCoordinator_setShareWebUsageEnabled_completionHandler___block_invoke;
  v12[3] = &unk_279B7DF50;
  enabledCopy = enabled;
  v13 = v8;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = v8;
  [persistenceController performBackgroundTask:v12];
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

- (void)enableManagementWithPIN:(id)n recoveryAltDSID:(id)d completionHandler:(id)handler
{
  nCopy = n;
  dCopy = d;
  handlerCopy = handler;
  viewModel = [(STRootViewModelCoordinator *)self viewModel];
  v12 = [viewModel me];

  persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__STRootViewModelCoordinator_enableManagementWithPIN_recoveryAltDSID_completionHandler___block_invoke;
  v18[3] = &unk_279B7DF78;
  v19 = v12;
  v20 = nCopy;
  v21 = dCopy;
  selfCopy = self;
  v23 = handlerCopy;
  v14 = handlerCopy;
  v15 = dCopy;
  v16 = nCopy;
  v17 = v12;
  [persistenceController performBackgroundTask:v18];
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

- (void)applyIntroductionViewModel:(id)model withCompletionHandler:(id)handler
{
  modelCopy = model;
  handlerCopy = handler;
  timeAllowancesCoordinator = [(STRootViewModelCoordinator *)self timeAllowancesCoordinator];
  communicationSafetyCoordinator = [(STRootViewModelCoordinator *)self communicationSafetyCoordinator];
  contentPrivacyCoordinator = [(STRootViewModelCoordinator *)self contentPrivacyCoordinator];
  eyeReliefCoordinator = [(STRootViewModelCoordinator *)self eyeReliefCoordinator];
  if (handlerCopy)
  {
    v10 = dispatch_group_create();
  }

  else
  {
    v10 = 0;
  }

  communicationSafetyEnabled = [modelCopy communicationSafetyEnabled];
  bOOLValue = [communicationSafetyEnabled BOOLValue];

  if (bOOLValue)
  {
    if (handlerCopy)
    {
      dispatch_group_enter(v10);
    }

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke;
    v53[3] = &unk_279B7D090;
    v55 = handlerCopy != 0;
    v54 = v10;
    [communicationSafetyCoordinator saveCommunicationSafetyReceivingRestricted:1 communicationSafetySendingRestricted:1 completionHandler:v53];
  }

  appAndWebsiteActivityEnabled = [modelCopy appAndWebsiteActivityEnabled];

  if (appAndWebsiteActivityEnabled)
  {
    appAndWebsiteActivityEnabled2 = [modelCopy appAndWebsiteActivityEnabled];
    bOOLValue2 = [appAndWebsiteActivityEnabled2 BOOLValue];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_432;
    v51[3] = &unk_279B7CC18;
    v52 = modelCopy;
    [(STRootViewModelCoordinator *)self setScreenTimeEnabled:bOOLValue2 completionHandler:v51];
  }

  bedtime = [modelCopy bedtime];

  if (bedtime)
  {
    if (handlerCopy)
    {
      dispatch_group_enter(v10);
    }

    bedtime2 = [modelCopy bedtime];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_439;
    v48[3] = &unk_279B7D090;
    v50 = handlerCopy != 0;
    v49 = v10;
    [timeAllowancesCoordinator saveDeviceBedtime:bedtime2 completionHandler:v48];
  }

  allowance = [modelCopy allowance];

  if (allowance)
  {
    if (handlerCopy)
    {
      dispatch_group_enter(v10);
    }

    allowance2 = [modelCopy allowance];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_440;
    v45[3] = &unk_279B7D090;
    v47 = handlerCopy != 0;
    v46 = v10;
    [timeAllowancesCoordinator saveAllowance:allowance2 completionHandler:v45];
  }

  restrictions = [modelCopy restrictions];
  v21 = [restrictions count];

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    if (!v21 && ![modelCopy imageGenerationRestriction])
    {
      goto LABEL_22;
    }
  }

  else if (!v21)
  {
LABEL_22:
    [contentPrivacyCoordinator saveContentPrivacyEnabled:0 completionHandler:&__block_literal_global_451];
    goto LABEL_31;
  }

  [contentPrivacyCoordinator saveContentPrivacyEnabled:1 completionHandler:&__block_literal_global_445];
  restrictions2 = [modelCopy restrictions];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_446;
  v41[3] = &unk_279B7DFA0;
  v44 = handlerCopy != 0;
  v23 = v10;
  v42 = v23;
  v24 = contentPrivacyCoordinator;
  v43 = v24;
  [restrictions2 enumerateKeysAndObjectsUsingBlock:v41];

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && ([modelCopy imageGenerationRestriction] - 1) <= 1)
  {
    imageGenerationRestriction = [modelCopy imageGenerationRestriction];
    if (handlerCopy)
    {
      dispatch_group_enter(v23);
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_448;
    v37[3] = &unk_279B7DFC8;
    v39 = handlerCopy != 0;
    v38 = v23;
    v40 = imageGenerationRestriction == 1;
    [v24 saveSiriImageGenerationIsAllowed:imageGenerationRestriction == 1 completionHandler:v37];
  }

LABEL_31:
  screenDistanceEnabled = [modelCopy screenDistanceEnabled];

  if (screenDistanceEnabled)
  {
    screenDistanceEnabled2 = [modelCopy screenDistanceEnabled];
    bOOLValue3 = [screenDistanceEnabled2 BOOLValue];

    if (handlerCopy)
    {
      dispatch_group_enter(v10);
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_452;
    v33[3] = &unk_279B7CD08;
    v36 = handlerCopy != 0;
    v34 = v10;
    v35 = modelCopy;
    [eyeReliefCoordinator persistEyeReliefState:bOOLValue3 withCompletionHandler:v33];
  }

  if (handlerCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__STRootViewModelCoordinator_applyIntroductionViewModel_withCompletionHandler___block_invoke_453;
    block[3] = &unk_279B7D270;
    v32 = handlerCopy;
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

- (void)loadRegionRatingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  userDSID = [(STRootViewModelCoordinator *)self userDSID];
  v6 = MEMORY[0x277D4BA70];
  persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__STRootViewModelCoordinator_loadRegionRatingsWithCompletionHandler___block_invoke;
  v10[3] = &unk_279B7E018;
  v11 = userDSID;
  v12 = handlerCopy;
  v8 = userDSID;
  v9 = handlerCopy;
  [v6 fetchRestrictionsForUserDSID:v8 persistenceController:persistenceController completionHandler:v10];
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

- (void)_reportCoreAnalyticsEventScreenTimeEnabled:(BOOL)enabled user:(id)user userType:(unint64_t)type userIsRemote:(BOOL)remote
{
  remoteCopy = remote;
  enabledCopy = enabled;
  effectivePasscode = [user effectivePasscode];

  if (type > 7)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_264CD1AA8[type];
  }

  fetchRequest = [MEMORY[0x277D4B988] fetchRequest];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NULL AND %K == YES", @"familySettings", @"isParent"];
  [fetchRequest setPredicate:v11];

  v12 = [fetchRequest execute:0];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 count];
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_alloc(MEMORY[0x277D4BA88]) initWithScreenTimeEnabled:enabledCopy numberOfGuardians:v14 pinSet:effectivePasscode != 0 userAgeGroup:v10 userIsRemote:remoteCopy];
  [MEMORY[0x277D4B970] reportEvent:v15];
}

+ (id)loadViewModelFromManagedObjectContext:(id)context isLocalUser:(BOOL)user userDSID:(id)d error:(id *)error
{
  userCopy = user;
  v290 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dCopy = d;
  v218 = objc_opt_new();
  v217 = userCopy;
  if (userCopy)
  {
    v260 = 0;
    v11 = [MEMORY[0x277D4B988] fetchLocalUserInContext:contextCopy error:&v260];
    v228 = v260;
    if (v11)
    {
      v12 = [[STUIUser alloc] initWithUser:v11];
      [v218 setMe:v12];
      v212 = dCopy;
      if ([(STUIUser *)v12 isParent])
      {
        v211 = v12;
        v213 = contextCopy;
        v215 = v11;
        v259 = v228;
        v13 = [MEMORY[0x277D4B9C0] fetchWithContext:contextCopy error:&v259];
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
            user = [v16 user];
            v19 = [(STUIUser *)v17 initWithUser:user];

            if ([(STUIUser *)v19 isChild])
            {
              [v220 addObject:v19];
            }

            user2 = [v16 user];
            userDeviceStates = [user2 userDeviceStates];
            v225 = v19;
            altDSID = [(STUIUser *)v19 altDSID];
            v22 = userDeviceStates;
            v229 = altDSID;
            v250 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
            v23 = +[STUILog usage];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v283 = v229;
              _os_log_impl(&dword_264BA2000, v23, OS_LOG_TYPE_DEFAULT, "Finding devices for user: %{public}@", buf, 0xCu);
            }

            standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
            v25 = [standardUserDefaults BOOLForKey:0x287677CC8];

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
                      coreDuetIdentifier = [v31 coreDuetIdentifier];
                      v33 = +[STUILog usage];
                      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                      {
                        identifier = [v31 identifier];
                        name = [v31 name];
                        *v279 = 138543874;
                        *&v279[4] = coreDuetIdentifier;
                        *&v279[12] = 2114;
                        *&v279[14] = identifier;
                        *&v279[22] = 2114;
                        *&v279[24] = name;
                        _os_log_impl(&dword_264BA2000, v33, OS_LOG_TYPE_DEFAULT, "Device Activity Device Found:  %{public}@ %{public}@ %{public}@", v279, 0x20u);
                      }

                      v36 = [STUIDevice alloc];
                      name2 = [v31 name];
                      identifier2 = [v31 identifier];
                      platform = [v31 platform];
                      isLocalDevice = [v31 isLocalDevice];
                      lastUpdatedDate = [v31 lastUpdatedDate];
                      v42 = [(STUIDevice *)v36 initWithName:name2 identifier:identifier2 coreDuetIdentifier:coreDuetIdentifier platform:platform hasDeviceActivity:1 isLocalDevice:isLocalDevice lastFamilyCheckinDate:lastUpdatedDate];

                      [v250 addObject:v42];
                      v43 = +[STUILog usage];
                      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                      {
                        identifier3 = [v31 identifier];
                        *v279 = 138543618;
                        *&v279[4] = coreDuetIdentifier;
                        *&v279[12] = 2114;
                        *&v279[14] = identifier3;
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
                  device = [v50 device];
                  v52 = device;
                  if (device)
                  {
                    if ([device platform] != 1 && objc_msgSend(v52, "platform") != 2)
                    {
                      v57 = +[STUILog usage];
                      if (!os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_68;
                      }

                      name3 = [v52 name];
                      *v284 = 138543362;
                      v285 = name3;
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

                      name3 = [v52 name];
                      *v284 = 138543362;
                      v285 = name3;
                      v67 = v57;
                      v68 = "Skipping %{public}@ because it has no legacy usage data";
LABEL_52:
                      _os_log_impl(&dword_264BA2000, v67, OS_LOG_TYPE_DEFAULT, v68, v284, 0xCu);

                      goto LABEL_68;
                    }

                    coreDuetIdentifier2 = [v50 coreDuetIdentifier];
                    v54 = +[STUILog usage];
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      identifier4 = [v52 identifier];
                      name4 = [v52 name];
                      *v284 = 138543874;
                      v285 = coreDuetIdentifier2;
                      v286 = 2114;
                      v287 = identifier4;
                      v288 = 2114;
                      v289 = name4;
                      _os_log_impl(&dword_264BA2000, v54, OS_LOG_TYPE_DEFAULT, "Screen Time Device Found: coreDuetIdentifier: %{public}@ %{public}@ %{public}@", v284, 0x20u);

                      v47 = v248;
                      v48 = v239;
                    }

                    v261 = MEMORY[0x277D85DD0];
                    v262 = 3221225472;
                    v263 = __createDevices_block_invoke;
                    v264 = &unk_279B7DEB0;
                    v57 = coreDuetIdentifier2;
                    v265 = v57;
                    v58 = [v250 indexOfObjectPassingTest:&v261];
                    if (v58 == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      user3 = [v50 user];
                      v60 = v52;
                      v61 = [MEMORY[0x277D4BAB8] fetchRequestMatchingUser:user3 device:v60];
                      v275 = 0;
                      v62 = [v61 execute:&v275];
                      v63 = v275;
                      if (v63)
                      {
                        v64 = +[STUILog usage];
                        if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
                        {
                          altDSID2 = [user3 altDSID];
                          name5 = [v60 name];
                          *v284 = 138543874;
                          v285 = altDSID2;
                          v286 = 2114;
                          v287 = name5;
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
                          altDSID3 = [user3 altDSID];
                          name6 = [v60 name];
                          *v284 = 138543874;
                          v285 = altDSID3;
                          v286 = 2114;
                          v287 = name6;
                          v84 = name6;
                          v288 = 2114;
                          v289 = v62;
                          _os_log_error_impl(&dword_264BA2000, v64, OS_LOG_TYPE_ERROR, "fetchLastUpdatedDate no usage for user %{public}@ and device %{public}@: %{public}@", v284, 0x20u);
                        }

LABEL_60:

                        v73 = 0;
                      }

                      v70 = v73;

                      v74 = [STUIDevice alloc];
                      name7 = [v60 name];
                      identifier5 = [v60 identifier];
                      platform2 = [v60 platform];
                      localUserDeviceState = [v60 localUserDeviceState];
                      v79 = [(STUIDevice *)v74 initWithName:name7 identifier:identifier5 coreDuetIdentifier:v57 platform:platform2 hasDeviceActivity:0 isLocalDevice:localUserDeviceState != 0 lastFamilyCheckinDate:v70];

                      if (_os_feature_enabled_impl())
                      {
                        lastPasscodeUseDate = [v60 lastPasscodeUseDate];
                        [(STUIDevice *)v79 setLastPasscodeUseDate:lastPasscodeUseDate];

                        -[STUIDevice setSupportsPasscodeActivity:](v79, "setSupportsPasscodeActivity:", [v60 supportsPasscodeActivity]);
                      }

                      [v250 addObject:v79];
                      v81 = +[STUILog usage];
                      v47 = v248;
                      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
                      {
                        identifier6 = [(STUIDevice *)v79 identifier];
                        *v284 = 138543618;
                        v285 = v57;
                        v286 = 2114;
                        v287 = identifier6;
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
                        lastPasscodeUseDate2 = [v52 lastPasscodeUseDate];
                        [v70 setLastPasscodeUseDate:lastPasscodeUseDate2];

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
            currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
            v88 = [MEMORY[0x277CBEAA8] now];
            v89 = [currentCalendar startOfDayForDate:v88];
            v90 = [currentCalendar dateByAddingUnit:0x2000 value:-1 toDate:v89 options:0];

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

                  lastFamilyCheckinDate = [*(*&v279[8] + 8 * j) lastFamilyCheckinDate];
                  v96 = [v90 compare:lastFamilyCheckinDate];

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
            contextCopy = v213;
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

    v102 = dCopy;
    v103 = +[STUILog persistence];
    v104 = v228;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      +[STRootViewModelCoordinator loadViewModelFromManagedObjectContext:isLocalUser:userDSID:error:];
    }

LABEL_90:

    if (error)
    {
      v105 = v104;
      v106 = 0;
      *error = v104;
    }

    else
    {
      v106 = 0;
    }

    v135 = v218;
    goto LABEL_190;
  }

  v254 = 0;
  v11 = [MEMORY[0x277D4B988] fetchUserWithDSID:dCopy inContext:contextCopy error:&v254];
  v228 = v254;
  if (!v11)
  {
    v102 = dCopy;
    v103 = +[STUILog persistence];
    v104 = v228;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      +[STRootViewModelCoordinator loadViewModelFromManagedObjectContext:isLocalUser:userDSID:error:];
    }

    goto LABEL_90;
  }

  v212 = dCopy;
  v12 = [[STUIUser alloc] initWithUser:v11];
  [v218 setMe:v12];
LABEL_94:
  v214 = contextCopy;

  userDeviceStates2 = [v11 userDeviceStates];
  v216 = v11;
  altDSID4 = [v11 altDSID];
  v109 = userDeviceStates2;
  v110 = altDSID4;
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

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v115 = [standardUserDefaults2 BOOLForKey:0x287677CC8];

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
            coreDuetIdentifier3 = [v121 coreDuetIdentifier];
            v123 = +[STUILog usage];
            if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
            {
              identifier7 = [v121 identifier];
              name8 = [v121 name];
              *v279 = 138543874;
              *&v279[4] = coreDuetIdentifier3;
              *&v279[12] = 2114;
              *&v279[14] = identifier7;
              *&v279[22] = 2114;
              *&v279[24] = name8;
              _os_log_impl(&dword_264BA2000, v123, OS_LOG_TYPE_DEFAULT, "Device Activity Device Found:  %{public}@ %{public}@ %{public}@", v279, 0x20u);
            }

            v126 = [STUIDevice alloc];
            name9 = [v121 name];
            identifier8 = [v121 identifier];
            platform3 = [v121 platform];
            isLocalDevice2 = [v121 isLocalDevice];
            lastUpdatedDate2 = [v121 lastUpdatedDate];
            v132 = [(STUIDevice *)v126 initWithName:name9 identifier:identifier8 coreDuetIdentifier:coreDuetIdentifier3 platform:platform3 hasDeviceActivity:1 isLocalDevice:isLocalDevice2 lastFamilyCheckinDate:lastUpdatedDate2];

            [v251 addObject:v132];
            v111 = 0x279B7B000uLL;
            v133 = +[STUILog usage];
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
            {
              identifier9 = [v121 identifier];
              *v279 = 138543618;
              *&v279[4] = coreDuetIdentifier3;
              *&v279[12] = 2114;
              *&v279[14] = identifier9;
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
        device2 = [v142 device];
        v144 = device2;
        if (device2)
        {
          if ([device2 platform] != 1 && objc_msgSend(v144, "platform") != 2)
          {
            usage = [*(v111 + 1680) usage];
            if (!os_log_type_enabled(usage, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_153;
            }

            name10 = [v144 name];
            *v284 = v243;
            v285 = name10;
            v159 = usage;
            v160 = "Skipping %{public}@ because it is not an iOS or macOS device";
            goto LABEL_137;
          }

          if (([*(v140 + 2456) hasLegacyUsageData:v144] & 1) == 0)
          {
            usage = [*(v111 + 1680) usage];
            if (!os_log_type_enabled(usage, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_153;
            }

            name10 = [v144 name];
            *v284 = v243;
            v285 = name10;
            v159 = usage;
            v160 = "Skipping %{public}@ because it has no legacy usage data";
LABEL_137:
            _os_log_impl(&dword_264BA2000, v159, OS_LOG_TYPE_DEFAULT, v160, v284, 0xCu);

            goto LABEL_153;
          }

          coreDuetIdentifier4 = [v142 coreDuetIdentifier];
          usage2 = [*(v111 + 1680) usage];
          if (os_log_type_enabled(usage2, OS_LOG_TYPE_DEFAULT))
          {
            identifier10 = [v144 identifier];
            name11 = [v144 name];
            *v284 = 138543874;
            v285 = coreDuetIdentifier4;
            v286 = 2114;
            v287 = identifier10;
            v288 = 2114;
            v289 = name11;
            _os_log_impl(&dword_264BA2000, usage2, OS_LOG_TYPE_DEFAULT, "Screen Time Device Found: coreDuetIdentifier: %{public}@ %{public}@ %{public}@", v284, 0x20u);

            v111 = 0x279B7B000;
          }

          v261 = MEMORY[0x277D85DD0];
          v262 = 3221225472;
          v263 = __createDevices_block_invoke;
          v264 = &unk_279B7DEB0;
          usage = coreDuetIdentifier4;
          v265 = usage;
          v150 = [v251 indexOfObjectPassingTest:&v261];
          if (v150 == 0x7FFFFFFFFFFFFFFFLL)
          {
            user4 = [v142 user];
            v152 = v144;
            v153 = [MEMORY[0x277D4BAB8] fetchRequestMatchingUser:user4 device:v152];
            v275 = 0;
            v154 = [v153 execute:&v275];
            v155 = v275;
            if (v155)
            {
              v156 = +[STUILog usage];
              if (os_log_type_enabled(v156, OS_LOG_TYPE_FAULT))
              {
                altDSID5 = [user4 altDSID];
                name12 = [v152 name];
                *v284 = 138543874;
                v285 = altDSID5;
                v286 = 2114;
                v287 = name12;
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
                altDSID6 = [user4 altDSID];
                name13 = [v152 name];
                *v284 = 138543874;
                v285 = altDSID6;
                v286 = 2114;
                v287 = name13;
                v176 = name13;
                v288 = 2114;
                v289 = v154;
                _os_log_error_impl(&dword_264BA2000, v156, OS_LOG_TYPE_ERROR, "fetchLastUpdatedDate no usage for user %{public}@ and device %{public}@: %{public}@", v284, 0x20u);
              }

LABEL_145:

              v165 = 0;
            }

            v162 = v165;

            v166 = [STUIDevice alloc];
            name14 = [v152 name];
            identifier11 = [v152 identifier];
            platform4 = [v152 platform];
            localUserDeviceState2 = [v152 localUserDeviceState];
            v171 = [(STUIDevice *)v166 initWithName:name14 identifier:identifier11 coreDuetIdentifier:usage platform:platform4 hasDeviceActivity:0 isLocalDevice:localUserDeviceState2 != 0 lastFamilyCheckinDate:v162];

            if (_os_feature_enabled_impl())
            {
              lastPasscodeUseDate3 = [v152 lastPasscodeUseDate];
              [(STUIDevice *)v171 setLastPasscodeUseDate:lastPasscodeUseDate3];

              -[STUIDevice setSupportsPasscodeActivity:](v171, "setSupportsPasscodeActivity:", [v152 supportsPasscodeActivity]);
            }

            [v251 addObject:v171];
            v111 = 0x279B7B000uLL;
            v173 = +[STUILog usage];
            v140 = 0x277D4B000;
            if (os_log_type_enabled(v173, OS_LOG_TYPE_DEFAULT))
            {
              identifier12 = [(STUIDevice *)v171 identifier];
              *v284 = 138543618;
              v285 = usage;
              v286 = 2114;
              v287 = identifier12;
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
              lastPasscodeUseDate4 = [v144 lastPasscodeUseDate];
              [v162 setLastPasscodeUseDate:lastPasscodeUseDate4];

              [v162 setSupportsPasscodeActivity:{objc_msgSend(v144, "supportsPasscodeActivity")}];
              goto LABEL_151;
            }
          }

          v139 = v246;
          goto LABEL_153;
        }

        usage = [*(v111 + 1680) usage];
        if (os_log_type_enabled(usage, OS_LOG_TYPE_ERROR))
        {
          *v284 = 138543618;
          v285 = 0;
          v286 = 2114;
          v287 = v142;
          _os_log_error_impl(&dword_264BA2000, usage, OS_LOG_TYPE_ERROR, "Could not create an STUIDevice from source device %{public}@ for user and device: %{public}@", v284, 0x16u);
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
  userDeviceStates3 = [v216 userDeviceStates];
  altDSID7 = [v216 altDSID];
  v180 = userDeviceStates3;
  v181 = altDSID7;
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

        device3 = [*(*&v279[8] + 8 * m) device];
        v190 = device3;
        if (device3 && [device3 platform] == 4)
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
    dsid = &unk_28769D388;
  }

  else
  {
    dsid = [v216 dsid];
  }

  v253 = v187;
  v199 = [v197 bundleIdentifiersInstalledForDSID:dsid inContext:v214 error:&v253];
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
    persistence = [*(v111 + 1680) persistence];
    if (os_log_type_enabled(persistence, OS_LOG_TYPE_ERROR))
    {
      +[STRootViewModelCoordinator loadViewModelFromManagedObjectContext:isLocalUser:userDSID:error:];
    }
  }

  if (v217 && ([v218 isCloudSyncEnabled] & 1) == 0)
  {
    fetchRequest = [MEMORY[0x277D4B928] fetchRequest];
    v203 = MEMORY[0x277CCAC30];
    managingOrganization = [v216 managingOrganization];
    v205 = [v203 predicateWithFormat:@"(%K == NO) AND (%@ IN %K) AND (%K == %@) AND (%K != %@) AND (%K != %@)", @"isTombstoned", v216, @"users", @"organization", managingOrganization, @"type", *MEMORY[0x277D4BB88], @"type", *MEMORY[0x277D4BB98]];
    [fetchRequest setPredicate:v205];

    v252 = v200;
    v206 = [fetchRequest execute:&v252];
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
  contextCopy = v214;
LABEL_190:

  return v106;
}

- (void)saveViewModel:(id)model
{
  modelCopy = model;
  v5 = [modelCopy me];
  dsid = [v5 dsid];
  [(STRootViewModelCoordinator *)self setUserDSID:dsid];

  v7 = [modelCopy me];
  name = [v7 name];
  [(STRootViewModelCoordinator *)self setUserName:name];

  [(STRootViewModelCoordinator *)self setViewModel:modelCopy];
  mEMORY[0x277CF9650] = [MEMORY[0x277CF9650] sharedCategories];
  installedBundleIDs = [modelCopy installedBundleIDs];

  allObjects = [installedBundleIDs allObjects];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__STRootViewModelCoordinator_saveViewModel___block_invoke;
  v12[3] = &unk_279B7CB08;
  v12[4] = self;
  [mEMORY[0x277CF9650] categoriesForBundleIDs:allObjects completionHandler:v12];
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
  v2 = *(*self + 40);
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

- (void)loadViewModelWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  userDSID = [(STRootViewModelCoordinator *)self userDSID];
  isLocalUser = [(STRootViewModelCoordinator *)self isLocalUser];
  persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__STRootViewModelCoordinator_loadViewModelWithCompletionHandler___block_invoke;
  v10[3] = &unk_279B7DF50;
  v13 = isLocalUser;
  v10[4] = self;
  v11 = userDSID;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = userDSID;
  [persistenceController performBackgroundTask:v10];
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
  isLocalUser = [(STRootViewModelCoordinator *)self isLocalUser];
  v3 = MEMORY[0x277D4BC50];
  if (!isLocalUser)
  {
    v3 = MEMORY[0x277D4BC48];
  }

  v4 = *v3;

  return v4;
}

- (id)organizationIdentifierForManagement
{
  viewModel = [(STRootViewModelCoordinator *)self viewModel];
  v3 = [viewModel me];
  source = [v3 source];
  v5 = MEMORY[0x277D4BC50];
  if (source)
  {
    v5 = MEMORY[0x277D4BC48];
  }

  v6 = *v5;
  v7 = *v5;

  return v6;
}

- (void)_willRefreshUsage:(id)usage
{
  v31 = *MEMORY[0x277D85DE8];
  usageCopy = usage;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = 0;
  persistenceController = [(STRootViewModelCoordinator *)self persistenceController];
  viewContext = [persistenceController viewContext];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __48__STRootViewModelCoordinator__willRefreshUsage___block_invoke;
  v18[3] = &unk_279B7E0B8;
  v18[4] = self;
  v7 = viewContext;
  v19 = v7;
  v20 = &v21;
  [v7 performBlockAndWait:v18];
  if (v22[5])
  {
    v8 = +[STUILog persistence];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      viewModel = [(STRootViewModelCoordinator *)self viewModel];
      devices = [viewModel devices];
      v11 = [devices valueForKeyPath:@"name"];
      v12 = [v22[5] valueForKeyPath:@"name"];
      *buf = 138543618;
      v28 = v11;
      v29 = 2114;
      v30 = v12;
      _os_log_impl(&dword_264BA2000, v8, OS_LOG_TYPE_DEFAULT, "Updating devices from: %{public}@\n to: %{public}@", buf, 0x16u);
    }

    v13 = v22[5];
    viewModel2 = [(STRootViewModelCoordinator *)self viewModel];
    [viewModel2 setDevices:v13];

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K == %hd OR %K == %hd)", @"platform", 4, @"platform", 5];
    v16 = [v22[5] filteredArrayUsingPredicate:v15];
    usageDetailsCoordinator = [(STRootViewModelCoordinator *)self usageDetailsCoordinator];
    [usageDetailsCoordinator setDevices:v16];
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

- (id)defaultValueForRestrictionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  contentPrivacyCoordinator = [(STRootViewModelCoordinator *)self contentPrivacyCoordinator];
  viewModel = [contentPrivacyCoordinator viewModel];
  isLocalDevice = [viewModel isLocalDevice];

  v8 = [objc_opt_class() defaultValueForRestrictionIdentifier:identifierCopy forIsLocalDevice:isLocalDevice];

  return v8;
}

+ (id)defaultValueForRestrictionIdentifier:(id)identifier forIsLocalDevice:(BOOL)device
{
  deviceCopy = device;
  identifierCopy = identifier;
  if (STRestrictionTypeWithString_onceToken_0 != -1)
  {
    +[STRootViewModelCoordinator(STRestrictionsDataSource) defaultValueForRestrictionIdentifier:forIsLocalDevice:];
  }

  v6 = [STRestrictionTypeWithString_restrictionItemTypes_0 objectForKeyedSubscript:identifierCopy];
  if (v6)
  {
    v7 = [identifierCopy componentsSeparatedByString:@"."];
    v8 = [v7 mutableCopy];

    lastObject = [v8 lastObject];
    [v8 removeLastObject];
    v10 = [v8 componentsJoinedByString:@"."];
    v11 = -[STRestrictionItem initWithConfiguration:restrictionKey:labelName:type:restrictionValue:]([STRestrictionItem alloc], "initWithConfiguration:restrictionKey:labelName:type:restrictionValue:", v10, lastObject, &stru_28766E5A8, [v6 unsignedIntegerValue], 0);
  }

  else
  {
    v11 = 0;
  }

  if (v11 && ([(STRestrictionItem *)v11 rmConfiguration], v12 = objc_claimAutoreleasedReturnValue(), [(STRestrictionItem *)v11 payloadKey], v13 = objc_claimAutoreleasedReturnValue(), [STContentPrivacyViewModel visibleRestrictionWithConfiguration:v12 key:v13 isLocalDevice:deviceCopy], v14 = objc_claimAutoreleasedReturnValue(), v13, v12, v14))
  {
    v15 = [STContentPrivacyViewModel defaultValueForRestriction:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)loadValuesByRestrictionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  contentPrivacyCoordinator = [(STRootViewModelCoordinator *)self contentPrivacyCoordinator];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __101__STRootViewModelCoordinator_STRestrictionsDataSource__loadValuesByRestrictionWithCompletionHandler___block_invoke;
  v7[3] = &unk_279B7E158;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [contentPrivacyCoordinator loadValuesByRestrictionWithCompletionHandler:v7];
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

+ (id)createValuesByRestrictionWithValuesByRestrictionItem:(id)item isSiriImageGenerationAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(itemCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = itemCopy;
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
        rmConfiguration = [v11 rmConfiguration];
        payloadKey = [v11 payloadKey];
        v15 = [v12 stringWithFormat:@"%@.%@", rmConfiguration, payloadKey];

        v16 = [v6 objectForKeyedSubscript:v11];
        [v5 setObject:v16 forKeyedSubscript:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:allowedCopy];
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