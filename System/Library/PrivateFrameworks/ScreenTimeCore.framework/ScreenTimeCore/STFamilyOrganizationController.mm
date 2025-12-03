@interface STFamilyOrganizationController
+ (id)passcodePayloadWithContext:(id)context error:(id *)error;
+ (void)handlePasscodePayload:(id)payload context:(id)context nowReference:(id)reference;
+ (void)postDiagnosticsServiceMessageForPayload:(id)payload;
- (BOOL)validateBlueprintDictionary:(id)dictionary;
- (STFamilyOrganizationController)initWithPersistenceController:(id)controller askForTimeManager:(id)manager;
- (STRequestManagerBlueprintSourceDelegate)blueprintSourceDelegate;
- (void)_enqueueOperationToFetchUsageForRequestPayload:(id)payload;
- (void)_enqueueOperationToPersistUsageForResponsePayload:(id)payload;
- (void)_fetchUsageOperationDidFinish:(id)finish requestingAltURI:(id)i;
- (void)_handleCheckinRequestPayload:(id)payload;
- (void)_handleCheckinResponsePayload:(id)payload;
- (void)_handleIDSAccountBecameActiveNotification:(id)notification;
- (void)_handlePasscodeActivityPayload:(id)payload;
- (void)_sendCheckinRequestOnAccountOfReachabilityChange;
- (void)_sendCheckinRequestPayloadToDestination:(id)destination;
- (void)_sendCheckinRequestPayloadToDestination:(id)destination context:(id)context;
- (void)_sendCheckinResponseToDestination:(id)destination afterVersions:(id)versions;
- (void)_sendCheckinResponseToDestination:(id)destination afterVersions:(id)versions context:(id)context;
- (void)_sendOutUsageRequestsIfNeeded;
- (void)_startListeningForIDSAccountBecameActiveNotifications;
- (void)_stopListeningForIDSAccountBecameActiveNotifications;
- (void)conduit:(id)conduit didDeliverTransportPayload:(id)payload;
- (void)conduit:(id)conduit didReceiveTransportPayload:(id)payload;
- (void)conduitDidInvalidate:(id)invalidate;
- (void)controllerDidChangeContent:(id)content;
- (void)dealloc;
- (void)groupResultsControllerDidChangeContents:(id)contents;
- (void)loudlySendLegacyAskRequest:(id)request toSpecificDeviceIDSDestinations:(id)destinations;
- (void)reachabilityDidChange:(id)change;
- (void)sendAskRequestToParents:(id)parents toParentsWithDSIDs:(id)ds;
- (void)sendAskResponse:(id)response toChildWithDSID:(id)d toParentsWithDSIDs:(id)ds;
- (void)sendFamilySettingsPayload;
- (void)sendPasscodeActivityToParentsWithCompletionHandler:(id)handler;
- (void)sendPayloads:(id)payloads;
- (void)updateWithFamily:(id)family inContext:(id)context;
@end

@implementation STFamilyOrganizationController

- (STFamilyOrganizationController)initWithPersistenceController:(id)controller askForTimeManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  v26.receiver = self;
  v26.super_class = STFamilyOrganizationController;
  v9 = [(STFamilyOrganizationController *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_persistenceController, controller);
    v11 = [STFamilySettingsManager alloc];
    persistenceController = [(STFamilyOrganizationController *)v10 persistenceController];
    v13 = [(STFamilySettingsManager *)v11 initWithCapabilities:0 persistenceController:persistenceController];
    familySettingsManager = v10->_familySettingsManager;
    v10->_familySettingsManager = v13;

    objc_storeStrong(&v10->_askForTimeManager, manager);
    v15 = dispatch_queue_create("com.apple.ScreenTimeAgent.family-screen-time-manager.usage", 0);
    usageQueue = v10->_usageQueue;
    v10->_usageQueue = v15;

    v17 = objc_opt_new();
    fetchUsageOperationQueue = v10->_fetchUsageOperationQueue;
    v10->_fetchUsageOperationQueue = v17;

    [(NSOperationQueue *)v10->_fetchUsageOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v10->_fetchUsageOperationQueue setName:@"com.apple.ScreenTimeAgent.family-screen-time-manager.fetch-usage"];
    v19 = objc_opt_new();
    persistUsageOperationQueue = v10->_persistUsageOperationQueue;
    v10->_persistUsageOperationQueue = v19;

    [(NSOperationQueue *)v10->_persistUsageOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v10->_persistUsageOperationQueue setName:@"com.apple.ScreenTimeAgent.family-screen-time-manager.persist-usage"];
    v21 = objc_opt_new();
    fetchUsageOperationByAltURI = v10->_fetchUsageOperationByAltURI;
    v10->_fetchUsageOperationByAltURI = v21;

    v23 = +[NSNotificationCenter defaultCenter];
    v24 = +[STNetworkDetector sharedInstance];
    [v23 addObserver:v10 selector:"reachabilityDidChange:" name:@"STNetworkDetectorChangedNotificationName" object:v24];
  }

  return v10;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->_fetchUsageOperationQueue cancelAllOperations];
  [(NSOperationQueue *)self->_persistUsageOperationQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = STFamilyOrganizationController;
  [(STFamilyOrganizationController *)&v3 dealloc];
}

- (void)reachabilityDidChange:(id)change
{
  object = [change object];
  if ([object isOnline])
  {
    [(STFamilyOrganizationController *)self _sendCheckinRequestOnAccountOfReachabilityChange];
    [(STFamilyOrganizationController *)self sendCheckinResponseToDestination:0];
  }
}

- (void)updateWithFamily:(id)family inContext:(id)context
{
  familyCopy = family;
  contextCopy = context;
  objc_storeStrong(&self->_cachedFamily, family);
  v8 = +[STLog familyScreenTimeManager];
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!familyCopy)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing iCloud family", buf, 2u);
    }

    v119 = 0;
    v35 = contextCopy;
    v36 = [STCoreUser fetchLocalUserInContext:contextCopy error:&v119];
    v37 = v119;
    if (v36)
    {
      [v36 setContactsEditable:1];
    }

    else
    {
      v57 = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_100114F74();
      }
    }

    v118 = v37;
    v38 = [STFamilyOrganization fetchOrCreateFamilyOrganizationWithContext:contextCopy error:&v118];
    v39 = v118;

    if (v38)
    {
      settings = [v38 settings];
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_100032CB8;
      v116[3] = &unk_1001A3D40;
      v59 = contextCopy;
      v117 = v59;
      [settings enumerateObjectsUsingBlock:v116];

      v60 = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Deleting Family Organization", buf, 2u);
      }

      [v59 deleteObject:v38];
      conduit = [(STFamilyOrganizationController *)self conduit];
      [conduit invalidate];

      [(STFamilyOrganizationController *)self setConduit:0];
      settingsResultsController = [(STFamilyOrganizationController *)self settingsResultsController];
      [settingsResultsController setDelegate:0];

      [(STFamilyOrganizationController *)self setSettingsResultsController:0];
      usageRequestsFetchedResultsController = [(STFamilyOrganizationController *)self usageRequestsFetchedResultsController];
      [usageRequestsFetchedResultsController setDelegate:0];

      [(STFamilyOrganizationController *)self setUsageRequestsFetchedResultsController:0];
      fetchUsageOperationQueue = [(STFamilyOrganizationController *)self fetchUsageOperationQueue];
      [fetchUsageOperationQueue cancelAllOperations];

      persistUsageOperationQueue = [(STFamilyOrganizationController *)self persistUsageOperationQueue];
      [persistUsageOperationQueue cancelAllOperations];

      familySettingsManager = [(STFamilyOrganizationController *)self familySettingsManager];
      [familySettingsManager registerFamilyMembers:&__NSArray0__struct];

      [(STFamilyOrganizationController *)self _stopListeningForIDSAccountBecameActiveNotifications];
      v42 = v117;
    }

    else
    {
      v42 = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        sub_100114F0C();
      }
    }

    goto LABEL_77;
  }

  if (v9)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Updating iCloud family", buf, 2u);
  }

  selfCopy = self;

  v114 = objc_opt_new();
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v110 = familyCopy;
  members = [familyCopy members];
  v11 = [members countByEnumeratingWithState:&v128 objects:v141 count:16];
  if (!v11)
  {
    v13 = 0;
    goto LABEL_32;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v129;
  v15 = STFamilyMemberTypeUnknown;
  v112 = STErrorDomain;
  do
  {
    v16 = 0;
    v17 = v13;
    do
    {
      if (*v129 != v14)
      {
        objc_enumerationMutation(members);
      }

      v18 = *(*(&v128 + 1) + 8 * v16);
      memberType = [v18 memberType];

      if (memberType == v15)
      {
        v13 = v17;
        goto LABEL_24;
      }

      dSID = [v18 DSID];
      v127 = v17;
      v21 = [STCoreUser fetchUserWithDSID:dSID inContext:contextCopy error:&v127];
      v13 = v127;

      if (!v21)
      {
        domain = [v13 domain];
        if (![domain isEqualToString:v112])
        {

LABEL_21:
          v21 = +[STLog familyScreenTimeManager];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v138 = v18;
            v139 = 2112;
            v140 = v13;
            _os_log_fault_impl(&_mh_execute_header, v21, OS_LOG_TYPE_FAULT, "failed to create user %@: %@", buf, 0x16u);
          }

          goto LABEL_23;
        }

        code = [v13 code];

        if (code != 11)
        {
          goto LABEL_21;
        }

        v21 = [[STCoreUser alloc] initWithContext:contextCopy];
        dSID2 = [v18 DSID];
        [v21 setDsid:dSID2];
        v34 = +[_TtC15ScreenTimeAgent41STExpressIntroductionUserContextStoreObjC sharedInstance];
        [v34 markUserAsRecentlyCreatedWithDSID:dSID2];
      }

      localUserDeviceState = [v21 localUserDeviceState];

      if (!localUserDeviceState)
      {
        appleID = [v18 appleID];
        [v21 setAppleID:appleID];

        firstName = [v18 firstName];
        [v21 setGivenName:firstName];

        lastName = [v18 lastName];
        [v21 setFamilyName:lastName];
      }

      altDSID = [v18 altDSID];
      [v21 setAltDSID:altDSID];

      -[NSObject setIsFamilyOrganizer:](v21, "setIsFamilyOrganizer:", [v18 isOrganizer]);
      -[NSObject setIsParent:](v21, "setIsParent:", [v18 isParent]);
      memberType2 = [v18 memberType];
      [v21 setFamilyMemberType:memberType2];

      familySettings = [v21 familySettings];

      if (!familySettings)
      {
        v29 = [[STFamilyOrganizationSettings alloc] initWithContext:contextCopy];
        [v21 setFamilySettings:v29];
      }

      familySettings2 = [v21 familySettings];
      [v114 addObject:familySettings2];

LABEL_23:
      v17 = v13;
LABEL_24:
      v16 = v16 + 1;
    }

    while (v12 != v16);
    v12 = [members countByEnumeratingWithState:&v128 objects:v141 count:16];
  }

  while (v12);
LABEL_32:

  v126 = v13;
  v35 = contextCopy;
  v38 = [STFamilyOrganization fetchOrCreateFamilyOrganizationWithContext:contextCopy error:&v126];
  v39 = v126;

  if (v38)
  {
    v111 = v39;
    settings2 = [v38 settings];
    v41 = [NSMutableSet setWithSet:settings2];

    [v41 minusSet:v114];
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v42 = v41;
    v43 = [v42 countByEnumeratingWithState:&v122 objects:v136 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v123;
      do
      {
        for (i = 0; i != v44; i = i + 1)
        {
          if (*v123 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v122 + 1) + 8 * i);
          v48 = +[STLog familyScreenTimeManager];
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            user = [v47 user];
            *buf = 138412290;
            v138 = user;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Deleting removed family member: %@", buf, 0xCu);
          }

          user2 = [v47 user];
          [contextCopy deleteObject:user2];

          [contextCopy deleteObject:v47];
        }

        v44 = [v42 countByEnumeratingWithState:&v122 objects:v136 count:16];
      }

      while (v44);
    }

    v36 = v114;
    [v38 setSettings:v114];
    conduit2 = [(STFamilyOrganizationController *)selfCopy conduit];

    if (conduit2)
    {
      familyCopy = v110;
      v35 = contextCopy;
      goto LABEL_77;
    }

    v52 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Starting conduit and database observers for family", buf, 2u);
    }

    v53 = objc_opt_new();
    v54 = [v110 me];
    memberType3 = [v54 memberType];
    v56 = STFamilyMemberTypeChild;
    if ([memberType3 isEqualToString:STFamilyMemberTypeChild])
    {

      goto LABEL_61;
    }

    v67 = [memberType3 isEqualToString:STFamilyMemberTypeTeen];

    if (v67)
    {
LABEL_61:
      v68 = objc_opt_new();
    }

    else
    {
      v68 = 0;
    }

    v69 = [STConduit alloc];
    persistenceController = [(STFamilyOrganizationController *)selfCopy persistenceController];
    v113 = v53;
    v108 = v68;
    v71 = [(STConduit *)v69 initWithOrganizationIdentifier:@"screentime" transport:v53 localTransport:v68 persistenceController:persistenceController];

    [(STConduit *)v71 setDelegate:selfCopy];
    [(STConduit *)v71 resume];
    v107 = v71;
    [(STFamilyOrganizationController *)selfCopy setConduit:v71];
    v72 = +[STFamilyOrganizationSettings fetchRequest];
    v73 = [NSPredicate predicateWithFormat:@"%K == NO", @"user.isParent"];
    [v72 setPredicate:v73];

    v74 = [STGroupFetchedResultsController alloc];
    v106 = v72;
    v75 = [STFetchResultsRequest requestWithFetchRequest:v72];
    v135 = v75;
    v76 = [NSArray arrayWithObjects:&v135 count:1];
    v77 = [v74 initWithContext:contextCopy resultsRequests:v76];
    [(STFamilyOrganizationController *)selfCopy setSettingsResultsController:v77];

    settingsResultsController2 = [(STFamilyOrganizationController *)selfCopy settingsResultsController];
    [settingsResultsController2 setDelegate:selfCopy];

    v79 = [v110 me];
    memberType4 = [v79 memberType];
    if ([memberType4 isEqualToString:v56])
    {

      goto LABEL_66;
    }

    v81 = [memberType4 isEqualToString:STFamilyMemberTypeTeen];

    if (v81)
    {
LABEL_66:
      v82 = +[STInstalledApp fetchRequest];
      v83 = [NSPredicate predicateWithFormat:@"%K != NULL", @"userDeviceState.localUser"];
      [v82 setPredicate:v83];

      v84 = [NSSortDescriptor sortDescriptorWithKey:@"bundleIdentifier" ascending:1];
      v134 = v84;
      v85 = [NSArray arrayWithObjects:&v134 count:1];
      [v82 setSortDescriptors:v85];

      v86 = [[NSFetchedResultsController alloc] initWithFetchRequest:v82 managedObjectContext:contextCopy sectionNameKeyPath:0 cacheName:0];
      [v86 setDelegate:selfCopy];
      [(STFamilyOrganizationController *)selfCopy setInstalledAppsFetchedResultsController:v86];
      installedAppsFetchedResultsController = [(STFamilyOrganizationController *)selfCopy installedAppsFetchedResultsController];
      v121 = 0;
      v88 = [installedAppsFetchedResultsController performFetch:&v121];
      v89 = v121;

      if ((v88 & 1) == 0)
      {
        v90 = +[STLog familyScreenTimeManager];
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          sub_100114E3C();
        }
      }
    }

    v91 = +[STUsageRequest fetchRequestForUsageRequestsThatAreForRemoteUsers];
    v92 = [NSPredicate predicateWithFormat:@"%K != %K", @"requestedDate", @"acknowledgedDate"];
    predicate = [v91 predicate];
    v133[0] = predicate;
    v133[1] = v92;
    v105 = v92;
    [NSArray arrayWithObjects:v133 count:2];
    v95 = v94 = selfCopy;
    v96 = [NSCompoundPredicate andPredicateWithSubpredicates:v95];
    [v91 setPredicate:v96];

    v97 = [NSSortDescriptor sortDescriptorWithKey:@"requestedDate" ascending:1];
    v132 = v97;
    v98 = [NSArray arrayWithObjects:&v132 count:1];
    [v91 setSortDescriptors:v98];

    v35 = contextCopy;
    v99 = [[NSFetchedResultsController alloc] initWithFetchRequest:v91 managedObjectContext:contextCopy sectionNameKeyPath:0 cacheName:0];
    [(STFamilyOrganizationController *)selfCopy setUsageRequestsFetchedResultsController:v99];
    [v99 setDelegate:selfCopy];
    usageRequestsFetchedResultsController2 = [(STFamilyOrganizationController *)selfCopy usageRequestsFetchedResultsController];
    v120 = 0;
    LODWORD(v95) = [usageRequestsFetchedResultsController2 performFetch:&v120];
    v101 = v120;

    if (v95)
    {
      [(STFamilyOrganizationController *)selfCopy _sendOutUsageRequestsIfNeeded];
      familyCopy = v110;
    }

    else
    {
      v102 = +[STLog familyScreenTimeManager];
      familyCopy = v110;
      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        sub_100114EA4();
      }

      v94 = selfCopy;
    }

    familySettingsManager2 = [(STFamilyOrganizationController *)v94 familySettingsManager];
    members2 = [familyCopy members];
    [familySettingsManager2 registerFamilyMembers:members2];

    [(STFamilyOrganizationController *)v94 _startListeningForIDSAccountBecameActiveNotifications];
    v36 = v114;
    v39 = v111;
  }

  else
  {
    v42 = +[STLog familyScreenTimeManager];
    v36 = v114;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
    {
      sub_100114F0C();
    }

    familyCopy = v110;
  }

LABEL_77:
}

- (void)sendFamilySettingsPayload
{
  familySettingsManager = [(STFamilyOrganizationController *)self familySettingsManager];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100032E04;
  v4[3] = &unk_1001A3D68;
  v4[4] = self;
  [familySettingsManager prepareSettingsPayloadsWithCompletion:v4];
}

- (void)sendPayloads:(id)payloads
{
  payloadsCopy = payloads;
  conduit = [(STFamilyOrganizationController *)self conduit];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = payloadsCopy;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [conduit enqueueTransportPayload:{*(*(&v11 + 1) + 8 * v10), v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)conduit:(id)conduit didReceiveTransportPayload:(id)payload
{
  payloadCopy = payload;
  payloadType = [payloadCopy payloadType];
  if (os_variant_has_internal_content())
  {
    [STFamilyOrganizationController postDiagnosticsServiceMessageForPayload:payloadCopy];
  }

  if ([payloadType isEqualToString:@"RMUnifiedTransportPayloadTypeCheckinRequest"])
  {
    v7 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received checkin request payload", buf, 2u);
    }

    [(STFamilyOrganizationController *)self _handleCheckinRequestPayload:payloadCopy];
    goto LABEL_28;
  }

  if ([payloadType isEqualToString:@"RMUnifiedTransportPayloadTypeCheckinResponse"])
  {
    v8 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received checkin response payload", buf, 2u);
    }

    [(STFamilyOrganizationController *)self _handleCheckinResponsePayload:payloadCopy];
    goto LABEL_28;
  }

  if ([payloadType isEqualToString:@"RMUnifiedTransportPayloadTypeFamilySettings"])
  {
    v9 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received family settings payload", buf, 2u);
    }

    familySettingsManager = [(STFamilyOrganizationController *)self familySettingsManager];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000335A0;
    v19[3] = &unk_1001A3D90;
    v19[4] = self;
    [familySettingsManager handleFamilySettingsPayload:payloadCopy withCompletion:v19];

    goto LABEL_28;
  }

  if ([payloadType isEqualToString:@"RMUnifiedTransportPayloadTypeBlueprints"])
  {
    v11 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received blueprints", buf, 2u);
    }

    blueprintSourceDelegate = [(STFamilyOrganizationController *)self blueprintSourceDelegate];
    [blueprintSourceDelegate didReceiveBlueprintPayload:payloadCopy];
LABEL_19:

    goto LABEL_28;
  }

  if ([payloadType isEqualToString:@"RMUnifiedTransportPayloadTypeUsageRequest"])
  {
    v13 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received usage request", buf, 2u);
    }

    [(STFamilyOrganizationController *)self _enqueueOperationToFetchUsageForRequestPayload:payloadCopy];
  }

  else if ([payloadType isEqualToString:@"RMUnifiedTransportPayloadTypeUsageResponse"])
  {
    v14 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received usage response", buf, 2u);
    }

    [(STFamilyOrganizationController *)self _enqueueOperationToPersistUsageForResponsePayload:payloadCopy];
  }

  else
  {
    if ([payloadType isEqualToString:@"RMUnifiedTransportPayloadTypeAskForTimeRequest"])
    {
      v15 = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received ask for time request", buf, 2u);
      }

      blueprintSourceDelegate = [(STFamilyOrganizationController *)self askForTimeManager];
      [blueprintSourceDelegate handleAskForTimeRequestPayload:payloadCopy];
      goto LABEL_19;
    }

    if ([payloadType isEqualToString:@"RMUnifiedTransportPayloadTypeAskForTimeResponse"])
    {
      v16 = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received ask for time response", buf, 2u);
      }

      blueprintSourceDelegate = [(STFamilyOrganizationController *)self askForTimeManager];
      [blueprintSourceDelegate handleAskForTimeResponsePayload:payloadCopy];
      goto LABEL_19;
    }

    if ([payloadType isEqualToString:@"STUnifiedTransportPayloadTypeAskForTimeResponseV2"])
    {
      v17 = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received v2 ask for time response", buf, 2u);
      }

      blueprintSourceDelegate = [(STFamilyOrganizationController *)self askForTimeManager];
      [blueprintSourceDelegate handleV2AskForTimeResponsePayload:payloadCopy];
      goto LABEL_19;
    }

    if ([payloadType isEqualToString:@"RMUnifiedTransportPayloadTypePasscodeActivity"] && _os_feature_enabled_impl())
    {
      v18 = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received passcode activity payload", buf, 2u);
      }

      [(STFamilyOrganizationController *)self _handlePasscodeActivityPayload:payloadCopy];
    }
  }

LABEL_28:
}

+ (void)postDiagnosticsServiceMessageForPayload:(id)payload
{
  v8 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:payload requiringSecureCoding:1 error:&v8];
  v5 = v8;
  if (v4)
  {
    v6 = +[NSNotificationCenter defaultCenter];
    v11 = @"data";
    v12 = v4;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [v6 postNotificationName:@"DiagnosticsService-IDSInbound" object:self userInfo:v7];
  }

  else
  {
    v6 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to archive message payload for diagnostics service: %@", buf, 0xCu);
    }
  }
}

- (void)conduit:(id)conduit didDeliverTransportPayload:(id)payload
{
  payloadCopy = payload;
  v5 = +[STLog familyScreenTimeManager];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Delivery acknowledgement of transport payload type: %{public}@", &v6, 0xCu);
  }
}

- (void)conduitDidInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v4 = +[STLog familyScreenTimeManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = invalidateCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Conduit did invalidate: %{public}@", &v5, 0xCu);
  }
}

- (void)groupResultsControllerDidChangeContents:(id)contents
{
  contentsCopy = contents;
  settingsResultsController = [(STFamilyOrganizationController *)self settingsResultsController];

  if (settingsResultsController == contentsCopy)
  {

    [(STFamilyOrganizationController *)self sendFamilySettingsPayload];
  }
}

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  [(STFamilyOrganizationController *)self installedAppsFetchedResultsController];

  usageRequestsFetchedResultsController = [(STFamilyOrganizationController *)self usageRequestsFetchedResultsController];

  if (usageRequestsFetchedResultsController == contentCopy)
  {

    [(STFamilyOrganizationController *)self _sendOutUsageRequestsIfNeeded];
  }
}

- (void)_sendCheckinRequestOnAccountOfReachabilityChange
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 valueForKey:@"LastCheckinDate"];

  if (v4)
  {
    v5 = +[NSCalendar currentCalendar];
    v6 = [v5 dateByAddingUnit:16 value:1 toDate:v4 options:0];

    v7 = +[NSDate now];
    v8 = [v7 compare:v6];

    if (v8 != 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = +[STLog familyScreenTimeManager];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Sending checkin due to reachability change", v10, 2u);
  }

  [(STFamilyOrganizationController *)self _sendCheckinRequestPayloadToDestination:0];
LABEL_8:
}

- (void)_sendCheckinResponseToDestination:(id)destination afterVersions:(id)versions
{
  destinationCopy = destination;
  versionsCopy = versions;
  v8 = os_transaction_create();
  persistenceController = [(STFamilyOrganizationController *)self persistenceController];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100033BB8;
  v13[3] = &unk_1001A3DB8;
  v14 = v8;
  selfCopy = self;
  v16 = destinationCopy;
  v17 = versionsCopy;
  v10 = versionsCopy;
  v11 = destinationCopy;
  v12 = v8;
  [persistenceController performBackgroundTaskAndWait:v13];
}

- (void)_sendCheckinResponseToDestination:(id)destination afterVersions:(id)versions context:(id)context
{
  destinationCopy = destination;
  versionsCopy = versions;
  v91 = 0;
  v9 = [STCoreUser fetchLocalUserInContext:context error:&v91];
  v10 = v91;
  if ([v9 unmodeledParticipatesInSharedLedger])
  {
    v11 = +[STCoreUser fetchRequestForFamilyMembers];
    v101 = @"familySettings";
    v12 = [NSArray arrayWithObjects:&v101 count:1];
    [v11 setRelationshipKeyPathsForPrefetching:v12];

    v90 = v10;
    v13 = [v11 execute:&v90];
    v14 = v90;

    if (v13)
    {
      selfCopy = self;
      v71 = v14;
      v72 = v11;
      v73 = v9;
      v15 = objc_opt_new();
      v16 = objc_opt_new();
      v17 = v16;
      if (destinationCopy)
      {
        [v16 addObject:destinationCopy];
      }

      v77 = v17;
      v78 = v15;
      v74 = versionsCopy;
      v79 = [versionsCopy objectForKeyedSubscript:?];
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v69 = v13;
      obj = v13;
      v18 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v87;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v87 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v86 + 1) + 8 * i);
            if (([v22 isParent] & 1) == 0)
            {
              familySettings = [v22 familySettings];
              uniqueIdentifier = [familySettings uniqueIdentifier];
              if (uniqueIdentifier)
              {
                v25 = [STVersionVector alloc];
                v26 = [v79 objectForKeyedSubscript:uniqueIdentifier];
                v27 = [v25 initWithDataRepresentation:v26];

                v28 = [STVersionVector alloc];
                versionVector = [familySettings versionVector];
                v30 = [v28 initWithDataRepresentation:versionVector];

                v31 = [v27 evaluateCausality:v30];
                if (v31 == 3 || v31 == 0)
                {
                  dictionaryRepresentation = [familySettings dictionaryRepresentation];
                  [v78 addObject:dictionaryRepresentation];
                }
              }

              else
              {
                v27 = +[STLog familyScreenTimeManager];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
                {
                  dsid = [v22 dsid];
                  *buf = 138543618;
                  v97 = dsid;
                  v98 = 2114;
                  v99 = familySettings;
                  _os_log_fault_impl(&_mh_execute_header, v27, OS_LOG_TYPE_FAULT, "Can't send checkin response for user, missing family settings unique identifier: %{public}@ %{public}@", buf, 0x16u);
                }
              }
            }

            if (!destinationCopy)
            {
              localUserDeviceState = [v22 localUserDeviceState];

              if (!localUserDeviceState)
              {
                v35 = [STUnifiedTransportPayloadDestination alloc];
                dsid2 = [v22 dsid];
                v37 = [v35 initWithDSID:dsid2];

                [v77 addObject:v37];
              }
            }
          }

          v19 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
        }

        while (v19);
      }

      familySettings2 = [v73 familySettings];
      organization = [familySettings2 organization];

      blueprints = [organization blueprints];
      obja = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [blueprints count]);

      v42 = [v74 objectForKeyedSubscript:?];
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      v85 = 0u;
      v76 = organization;
      blueprints2 = [organization blueprints];
      v44 = [blueprints2 countByEnumeratingWithState:&v82 objects:v95 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v83;
        do
        {
          for (j = 0; j != v45; j = j + 1)
          {
            if (*v83 != v46)
            {
              objc_enumerationMutation(blueprints2);
            }

            v48 = *(*(&v82 + 1) + 8 * j);
            v49 = [STVersionVector alloc];
            identifier = [v48 identifier];
            v51 = [v42 objectForKeyedSubscript:identifier];
            v52 = [v49 initWithDataRepresentation:v51];

            v53 = [STVersionVector alloc];
            versionVector2 = [v48 versionVector];
            v55 = [v53 initWithDataRepresentation:versionVector2];

            v56 = [v52 evaluateCausality:v55];
            if (v56 == 3 || v56 == 0)
            {
              dictionaryRepresentation2 = [v48 dictionaryRepresentation];
              [obja addObject:dictionaryRepresentation2];
            }
          }

          v45 = [blueprints2 countByEnumeratingWithState:&v82 objects:v95 count:16];
        }

        while (v45);
      }

      localUserDeviceState2 = [v73 localUserDeviceState];
      dictionaryRepresentation3 = [localUserDeviceState2 dictionaryRepresentation];
      v61 = dictionaryRepresentation3;
      v62 = &__NSDictionary0__struct;
      if (dictionaryRepresentation3)
      {
        v62 = dictionaryRepresentation3;
      }

      v63 = v62;

      v93[0] = @"Settings";
      v93[1] = @"Blueprints";
      v64 = v78;
      v94[0] = v78;
      v94[1] = obja;
      v93[2] = @"UserDeviceState";
      v94[2] = v63;
      v65 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:3];
      v66 = [[STUnifiedTransportPayload alloc] initWithPayload:v65 type:@"RMUnifiedTransportPayloadTypeCheckinResponse"];
      [(STUnifiedTransportPayload *)v66 setDestinations:v77];
      v92 = v66;
      v67 = [NSArray arrayWithObjects:&v92 count:1];

      [(STFamilyOrganizationController *)selfCopy sendPayloads:v67];
      v9 = v73;

      versionsCopy = v74;
      v68 = destinationCopy;
      v14 = v71;
      v11 = v72;
      v13 = v69;
    }

    else
    {
      v64 = +[STLog familyScreenTimeManager];
      v68 = destinationCopy;
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_100114FDC();
      }
    }
  }

  else
  {
    v11 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Local user cannot participate in sharing family settings", buf, 2u);
    }

    v14 = v10;
    v68 = destinationCopy;
  }
}

- (void)_sendCheckinRequestPayloadToDestination:(id)destination
{
  destinationCopy = destination;
  persistenceController = [(STFamilyOrganizationController *)self persistenceController];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000343F4;
  v7[3] = &unk_1001A3DE0;
  v7[4] = self;
  v8 = destinationCopy;
  v6 = destinationCopy;
  [persistenceController performBackgroundTask:v7];
}

- (void)_sendCheckinRequestPayloadToDestination:(id)destination context:(id)context
{
  destinationCopy = destination;
  contextCopy = context;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000344EC;
  v11[3] = &unk_1001A3E08;
  v12 = os_transaction_create();
  selfCopy = self;
  v14 = destinationCopy;
  v15 = contextCopy;
  v8 = contextCopy;
  v9 = destinationCopy;
  v10 = v12;
  [v8 performBlockAndWait:v11];
}

- (void)sendPasscodeActivityToParentsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    v5 = os_transaction_create();
    persistenceController = [(STFamilyOrganizationController *)self persistenceController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100034D34;
    v8[3] = &unk_1001A3E30;
    v8[4] = self;
    v9 = v5;
    v10 = handlerCopy;
    v7 = v5;
    [persistenceController performBackgroundTask:v8];
  }
}

+ (id)passcodePayloadWithContext:(id)context error:(id *)error
{
  v5 = [STCoreUser fetchLocalUserInContext:context error:?];
  v6 = v5;
  if (!v5)
  {
    v10 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100115114(error);
    }

    goto LABEL_25;
  }

  if (([v5 isManaged] & 1) == 0)
  {
    *error = [NSError errorWithDomain:STErrorDomain code:568 userInfo:0];
    v10 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v30 = "Local user is not managed and is not eligible to send passcode activity";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
    }

LABEL_25:
    v29 = 0;
    goto LABEL_26;
  }

  localUserDeviceState = [v6 localUserDeviceState];
  device = [localUserDeviceState device];
  supportsPasscodeActivity = [device supportsPasscodeActivity];

  if ((supportsPasscodeActivity & 1) == 0)
  {
    *error = [NSError errorWithDomain:STErrorDomain code:107 userInfo:0];
    v10 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v30 = "Local device does not support passcode activity";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v10 = objc_opt_new();
  v11 = +[STCoreUser fetchRequestForFamilyMembers];
  v12 = [v11 execute:error];
  v13 = v12;
  if (v12)
  {
    v32 = v11;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = [v12 countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v33 + 1) + 8 * i);
          if ([v18 isParent])
          {
            v19 = [STUnifiedTransportPayloadDestination alloc];
            dsid = [v18 dsid];
            v21 = [v19 initWithDSID:dsid];

            [v10 addObject:v21];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v15);
    }

    if ([v10 count])
    {
      localUserDeviceState2 = [v6 localUserDeviceState];
      dictionaryRepresentation = [localUserDeviceState2 dictionaryRepresentation];
      v24 = dictionaryRepresentation;
      v25 = &__NSDictionary0__struct;
      if (dictionaryRepresentation)
      {
        v25 = dictionaryRepresentation;
      }

      v26 = v25;

      v38 = @"UserDeviceState";
      v39 = v26;
      v27 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v28 = [STUnifiedTransportPayload alloc];

      v29 = [(STUnifiedTransportPayload *)v28 initWithPayload:v27 type:@"RMUnifiedTransportPayloadTypePasscodeActivity"];
      [(STUnifiedTransportPayload *)v29 setDestinations:v10];
    }

    else
    {
      *error = [NSError errorWithDomain:STErrorDomain code:569 userInfo:0];
      v27 = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Local user has no parents in their iCloud family, not sending passcode activity payload", buf, 2u);
      }

      v29 = 0;
    }

    v11 = v32;
  }

  else
  {
    v27 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1001150AC(error);
    }

    v29 = 0;
  }

LABEL_26:

  return v29;
}

- (void)_handleCheckinRequestPayload:(id)payload
{
  payloadCopy = payload;
  destinations = [payloadCopy destinations];
  firstObject = [destinations firstObject];

  v7 = STUnifiedTransportPayloadDestinationTypeDevice;
  type = [firstObject type];
  v9 = STUnifiedTransportPayloadDestinationTypePairedDevice;
  v10 = [type isEqualToString:STUnifiedTransportPayloadDestinationTypePairedDevice];

  if (v10)
  {
    v11 = v9;

    v7 = v11;
  }

  userInfo = [payloadCopy userInfo];
  v13 = [userInfo objectForKeyedSubscript:@"altURI"];

  v14 = [[STUnifiedTransportPayloadDestination alloc] initWithAddress:v13 type:v7];
  [(STFamilyOrganizationController *)self _sendCheckinResponseToDestination:v14 afterVersions:0];
  persistenceController = [(STFamilyOrganizationController *)self persistenceController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000354F0;
  v17[3] = &unk_1001A3BF0;
  v18 = payloadCopy;
  v16 = payloadCopy;
  [persistenceController performBackgroundTask:v17];
}

- (void)_handleCheckinResponsePayload:(id)payload
{
  payloadCopy = payload;
  v5 = os_transaction_create();
  v6 = +[STLog familyScreenTimeManager];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [payloadCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"FromID"];
    *buf = 138543874;
    v17 = payloadCopy;
    v18 = 2160;
    v19 = 1752392040;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Handling checkin response payload: %{public}@ FromID: %{mask.hash}@", buf, 0x20u);
  }

  persistenceController = [(STFamilyOrganizationController *)self persistenceController];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000358C0;
  v12[3] = &unk_1001A3E58;
  v13 = v5;
  v14 = payloadCopy;
  selfCopy = self;
  v10 = payloadCopy;
  v11 = v5;
  [persistenceController performBackgroundTaskAndWait:v12];
}

- (void)_handlePasscodeActivityPayload:(id)payload
{
  payloadCopy = payload;
  if (_os_feature_enabled_impl())
  {
    v5 = os_transaction_create();
    persistenceController = [(STFamilyOrganizationController *)self persistenceController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000362D4;
    v8[3] = &unk_1001A3E58;
    v8[4] = self;
    v9 = payloadCopy;
    v10 = v5;
    v7 = v5;
    [persistenceController performBackgroundTaskAndWait:v8];
  }
}

+ (void)handlePasscodePayload:(id)payload context:(id)context nowReference:(id)reference
{
  payloadCopy = payload;
  contextCopy = context;
  referenceCopy = reference;
  userInfo = [payloadCopy userInfo];
  v10 = [userInfo objectForKeyedSubscript:@"AppleID"];

  v11 = +[STLog familyScreenTimeManager];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543619;
    v54 = payloadCopy;
    v55 = 2113;
    v56 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Handling passcode activity payload: %{public}@ from: %{private}@", buf, 0x16u);
  }

  payloadDictionary = [payloadCopy payloadDictionary];
  v13 = [payloadDictionary objectForKeyedSubscript:@"UserDeviceState"];

  v52 = 0;
  v14 = [STUserDeviceState fetchOrCreateWithDictionaryRepresentation:v13 inContext:contextCopy error:&v52];
  v15 = v52;
  if (v14)
  {
    v16 = [v14 updateWithDictionaryRepresentation:v13];
    v17 = +[STLog familyScreenTimeManager];
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v54 = v10;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updated user-device state for %{private}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100115420();
    }

    device = [v14 device];
    lastPasscodeUseDate = [device lastPasscodeUseDate];
    if (!lastPasscodeUseDate)
    {
      v47 = v15;
      v21 = v13;
      userInfo2 = [payloadCopy userInfo];
      v23 = [userInfo2 objectForKeyedSubscript:@"ServerReceivedTime"];

      if (v23)
      {
        v24 = [NSDate alloc];
        [v23 doubleValue];
        v25 = [v24 initWithTimeIntervalSinceReferenceDate:?];
      }

      else
      {
        v25 = referenceCopy;
      }

      lastPasscodeUseDate = v25;
      v26 = +[STLog familyScreenTimeManager];
      v13 = v21;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100115488();
      }

      [device setLastPasscodeUseDate:lastPasscodeUseDate];
      v15 = v47;
    }

    v48 = lastPasscodeUseDate;
    v49 = contextCopy;
    if ([contextCopy hasChanges])
    {
      v51 = v15;
      v27 = [contextCopy save:&v51];
      v28 = v51;

      v29 = +[STLog familyScreenTimeManager];
      v30 = v29;
      if (v27)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v54 = v10;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Successfully saved passcode activity from %{private}@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1001154F0();
      }

      v15 = v28;
    }

    else
    {
      v30 = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v54 = v10;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Nothing to save for passcode activity payload from %{private}@", buf, 0xCu);
      }
    }

    v31 = [NSUserDefaults alloc];
    v32 = [v31 initWithSuiteName:STScreenTimeAppGroupName];
    if ([v32 BOOLForKey:STUserDefaultsKeyIsPasscodeUseNotificationDisabled])
    {
      name = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(name, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138477827;
        v54 = v10;
        _os_log_impl(&_mh_execute_header, name, OS_LOG_TYPE_DEFAULT, "Passcode use notification is disabled. Not posting user notification for passcode activity from %{private}@", buf, 0xCu);
      }

      v34 = v48;
      contextCopy = v49;
    }

    else
    {
      name = [device name];
      v35 = [STPasscodeActivityUserNotificationContext alloc];
      [v14 user];
      v36 = v45 = v32;
      [v36 dsid];
      v46 = v14;
      v37 = device;
      v38 = v15;
      v39 = v13;
      v40 = payloadCopy;
      v42 = v41 = v10;
      v34 = v48;
      v43 = [v35 initWithDeviceName:name lastPasscodeUseDate:v48 childDSID:v42];

      v10 = v41;
      payloadCopy = v40;
      v13 = v39;
      v15 = v38;
      device = v37;
      v14 = v46;

      v44 = +[NSNotificationCenter defaultCenter];
      [v44 postNotificationName:@"STUserNotificationManagerShouldPostNotification" object:v43];

      v32 = v45;
      contextCopy = v49;
    }
  }

  else
  {
    device = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(device, OS_LOG_TYPE_ERROR))
    {
      sub_100115558();
    }
  }
}

- (BOOL)validateBlueprintDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"organization.class"];
  v5 = [STCoreOrganization internalClassForSerializableClassName:v4];
  if (v5)
  {
    if (![v5 isEqual:objc_opt_class()])
    {
      v7 = 1;
      goto LABEL_9;
    }

    v6 = +[STLog blueprint];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1001155C0(dictionaryCopy);
    }
  }

  else
  {
    v6 = +[STLog blueprint];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_1001157F0(v4, dictionaryCopy);
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)_enqueueOperationToFetchUsageForRequestPayload:(id)payload
{
  payloadCopy = payload;
  userInfo = [payloadCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"AppleID"];

  if ([v6 length])
  {
    userInfo2 = [payloadCopy userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:@"altURI"];

    if ([v8 length])
    {
      payloadDictionary = [payloadCopy payloadDictionary];
      v10 = [payloadDictionary objectForKeyedSubscript:@"StartDate"];
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = +[STLog familyScreenTimeManager];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_100115A48();
          }

          v10 = 0;
        }
      }

      v12 = +[STUsageManager usageGenesisDate];
      if (v12)
      {
        if (_os_feature_enabled_impl())
        {
          v13 = [payloadDictionary objectForKeyedSubscript:@"AllDevicesAreNewUsage"];
          v14 = +[STLog familyScreenTimeManager];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v25 = v6;
            v26 = 2114;
            v27 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ has all new_usage devices: %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v13 = 0;
        }

        persistenceController = [(STFamilyOrganizationController *)self persistenceController];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100036D64;
        v17[3] = &unk_1001A3EA8;
        v18 = v6;
        v19 = v13;
        selfCopy = self;
        v21 = v8;
        v22 = v10;
        v23 = v12;
        v15 = v13;
        [persistenceController performBackgroundTask:v17];
      }

      else
      {
        v15 = +[STLog familyScreenTimeManager];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100115AB0();
        }
      }
    }

    else
    {
      payloadDictionary = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(payloadDictionary, OS_LOG_TYPE_FAULT))
      {
        sub_100115AF0();
      }
    }
  }

  else
  {
    v8 = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100115B2C();
    }
  }
}

- (void)_fetchUsageOperationDidFinish:(id)finish requestingAltURI:(id)i
{
  finishCopy = finish;
  iCopy = i;
  usageQueue = [(STFamilyOrganizationController *)self usageQueue];
  dispatch_assert_queue_V2(usageQueue);

  fetchUsageOperationByAltURI = [(STFamilyOrganizationController *)self fetchUsageOperationByAltURI];
  v10 = [fetchUsageOperationByAltURI objectForKeyedSubscript:iCopy];
  if (v10 == finishCopy)
  {
    [fetchUsageOperationByAltURI removeObjectForKey:iCopy];
    error = [finishCopy error];
    if (error)
    {
      resultObject = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(resultObject, OS_LOG_TYPE_ERROR))
      {
        sub_100115E14();
      }
    }

    else
    {
      resultObject = [finishCopy resultObject];
      v32 = 0;
      v24 = [NSKeyedArchiver archivedDataWithRootObject:resultObject requiringSecureCoding:1 error:&v32];
      error = v32;
      if (v24)
      {
        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v31 = 0;
        persistenceController = [(STFamilyOrganizationController *)self persistenceController];
        newBackgroundContext = [persistenceController newBackgroundContext];

        if (_os_feature_enabled_impl())
        {
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100037774;
          v25[3] = &unk_1001A3C98;
          v26 = newBackgroundContext;
          v27 = &v28;
          [v26 performBlockAndWait:v25];
        }

        v23 = STGetDeviceUUID();
        if (_os_feature_enabled_impl())
        {
          v37[0] = @"DeviceIdentifier";
          v37[1] = @"FetchedUsageResults";
          v38[0] = v23;
          v38[1] = v24;
          v37[2] = @"AllDevicesAreNewUsage";
          v14 = [NSNumber numberWithBool:*(v29 + 24)];
          v38[2] = v14;
          v22 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];
        }

        else
        {
          v35[0] = @"DeviceIdentifier";
          v35[1] = @"FetchedUsageResults";
          v36[0] = v23;
          v36[1] = v24;
          v22 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:2];
        }

        v16 = [[STUnifiedTransportPayload alloc] initWithPayload:v22 type:@"RMUnifiedTransportPayloadTypeUsageResponse"];
        v17 = [STUnifiedTransportPayloadDestination alloc];
        v18 = [v17 initWithAddress:iCopy type:STUnifiedTransportPayloadDestinationTypeDevice];
        v34 = v18;
        v19 = [NSArray arrayWithObjects:&v34 count:1];
        [(STUnifiedTransportPayload *)v16 setDestinations:v19];

        v33 = v16;
        v20 = [NSArray arrayWithObjects:&v33 count:1];
        [(STFamilyOrganizationController *)self sendPayloads:v20];

        _Block_object_dispose(&v28, 8);
      }

      else
      {
        v15 = +[STLog familyScreenTimeManager];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          sub_100115E7C();
        }
      }
    }
  }
}

- (void)_enqueueOperationToPersistUsageForResponsePayload:(id)payload
{
  payloadCopy = payload;
  userInfo = [payloadCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"AppleID"];

  if ([v6 length])
  {
    payloadDictionary = [payloadCopy payloadDictionary];
    v8 = [payloadDictionary objectForKeyedSubscript:@"DeviceIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [payloadDictionary objectForKeyedSubscript:@"FetchedUsageResults"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = 0;
        v10 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v9 error:&v26];
        v11 = v26;
        [v10 setClass:objc_opt_class() forClassName:@"RMFetchedUsageResults"];
        v12 = [v10 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
        [v10 finishDecoding];
        if (v12)
        {
          v18 = v12;
          v17 = v11;
          if (_os_feature_enabled_impl())
          {
            v13 = [payloadDictionary objectForKeyedSubscript:@"AllDevicesAreNewUsage"];
            v14 = +[STLog familyScreenTimeManager];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v28 = v6;
              v29 = 2114;
              v30 = v13;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ has all new_usage devices: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            v13 = 0;
          }

          persistenceController = [(STFamilyOrganizationController *)self persistenceController];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_100037C10;
          v19[3] = &unk_1001A3EA8;
          v20 = v6;
          v21 = v8;
          v22 = payloadCopy;
          selfCopy = self;
          v24 = v13;
          v12 = v18;
          v25 = v18;
          v15 = v13;
          [persistenceController performBackgroundTask:v19];

          v11 = v17;
        }

        else
        {
          v15 = +[STLog familyScreenTimeManager];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            sub_100116028();
          }
        }
      }

      else
      {
        v11 = +[STLog familyScreenTimeManager];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          sub_100115FC0();
        }
      }
    }

    else
    {
      v9 = +[STLog familyScreenTimeManager];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        sub_100115F58();
      }
    }
  }

  else
  {
    payloadDictionary = +[STLog familyScreenTimeManager];
    if (os_log_type_enabled(payloadDictionary, OS_LOG_TYPE_FAULT))
    {
      sub_100116090();
    }
  }
}

- (void)_sendOutUsageRequestsIfNeeded
{
  usageRequestsFetchedResultsController = [(STFamilyOrganizationController *)self usageRequestsFetchedResultsController];
  fetchedObjects = [usageRequestsFetchedResultsController fetchedObjects];

  v5 = [fetchedObjects valueForKey:@"objectID"];
  if ([v5 count])
  {
    v6 = [fetchedObjects valueForKey:@"forUserDSID"];
    persistenceController = [(STFamilyOrganizationController *)self persistenceController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000382F4;
    v9[3] = &unk_1001A3E58;
    v10 = v6;
    v11 = v5;
    selfCopy = self;
    v8 = v6;
    [persistenceController performBackgroundTask:v9];
  }
}

- (void)loudlySendLegacyAskRequest:(id)request toSpecificDeviceIDSDestinations:(id)destinations
{
  requestCopy = request;
  destinationsCopy = destinations;
  v7 = +[STLog familyScreenTimeManager];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Sending legacy ask request to specific IDS destinations %@", buf, 0xCu);
  }

  [requestCopy setDeliverQuietly:0];
  v8 = [STUnifiedTransportPayload alloc];
  payload = [requestCopy payload];
  v10 = [(STUnifiedTransportPayload *)v8 initWithPayload:payload type:@"RMUnifiedTransportPayloadTypeAskForTimeRequest"];

  v11 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(destinationsCopy, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = destinationsCopy;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    v16 = STUnifiedTransportPayloadDestinationTypeDevice;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [[STUnifiedTransportPayloadDestination alloc] initWithAddress:*(*(&v21 + 1) + 8 * v17) type:v16];
        [v11 addObject:v18];

        v17 = v17 + 1;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v14);
  }

  [(STUnifiedTransportPayload *)v10 setDestinations:v11];
  v25 = v10;
  v19 = [NSArray arrayWithObjects:&v25 count:1];
  [(STFamilyOrganizationController *)self sendPayloads:v19];
}

- (void)sendAskRequestToParents:(id)parents toParentsWithDSIDs:(id)ds
{
  parentsCopy = parents;
  dsCopy = ds;
  v8 = +[STLog familyScreenTimeManager];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Sending ask request", buf, 2u);
  }

  v9 = [STUnifiedTransportPayload alloc];
  payload = [parentsCopy payload];
  v11 = [(STUnifiedTransportPayload *)v9 initWithPayload:payload type:@"RMUnifiedTransportPayloadTypeAskForTimeRequest"];

  v12 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(dsCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = dsCopy;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * v17);
        v19 = [STUnifiedTransportPayloadDestination alloc];
        v20 = [v19 initWithDSID:{v18, v22}];
        [v12 addObject:v20];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v15);
  }

  [(STUnifiedTransportPayload *)v11 setDestinations:v12];
  v27 = v11;
  v21 = [NSArray arrayWithObjects:&v27 count:1];
  [(STFamilyOrganizationController *)self sendPayloads:v21];
}

- (void)sendAskResponse:(id)response toChildWithDSID:(id)d toParentsWithDSIDs:(id)ds
{
  responseCopy = response;
  dCopy = d;
  dsCopy = ds;
  v11 = +[STLog familyScreenTimeManager];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Sending ask response", buf, 2u);
  }

  payload = [responseCopy payload];
  v13 = [[STUnifiedTransportPayloadDestination alloc] initWithDSID:dCopy];
  v14 = [[STUnifiedTransportPayload alloc] initWithPayload:payload type:@"RMUnifiedTransportPayloadTypeAskForTimeResponse"];
  v29 = v13;
  v36 = v13;
  v15 = [NSArray arrayWithObjects:&v36 count:1];
  [(STUnifiedTransportPayload *)v14 setDestinations:v15];

  v16 = [NSMutableArray arrayWithCapacity:2];
  [v16 addObject:v14];
  if ([dsCopy count])
  {
    selfCopy = self;
    v27 = dCopy;
    v28 = responseCopy;
    v17 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dsCopy count]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = dsCopy;
    v18 = dsCopy;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        v22 = 0;
        do
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [[STUnifiedTransportPayloadDestination alloc] initWithDSID:*(*(&v30 + 1) + 8 * v22)];
          [v17 addObject:v23];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v20);
    }

    v24 = [[STUnifiedTransportPayload alloc] initWithPayload:payload type:@"STUnifiedTransportPayloadTypeAskForTimeResponseV2"];
    [(STUnifiedTransportPayload *)v24 setDestinations:v17];
    [v16 addObject:v24];

    dCopy = v27;
    responseCopy = v28;
    self = selfCopy;
    dsCopy = v26;
  }

  [(STFamilyOrganizationController *)self sendPayloads:v16];
}

- (void)_startListeningForIDSAccountBecameActiveNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleIDSAccountBecameActiveNotification:" name:@"com.apple.remotemanagementd.ids-account.didBecomeActive" object:0];
}

- (void)_stopListeningForIDSAccountBecameActiveNotifications
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.remotemanagementd.ids-account.didBecomeActive" object:0];
}

- (void)_handleIDSAccountBecameActiveNotification:(id)notification
{
  v4 = +[STLog familyScreenTimeManager];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "IDS Account became active, sending checkin request.", v5, 2u);
  }

  [(STFamilyOrganizationController *)self sendCheckinRequest];
}

- (STRequestManagerBlueprintSourceDelegate)blueprintSourceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->blueprintSourceDelegate);

  return WeakRetained;
}

@end