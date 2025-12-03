@interface SMCloudKitZone
+ (BOOL)shouldRetryCkError:(id)error;
+ (id)getContainer;
+ (void)acceptShareWithInvitationToken:(id)token sessionID:(id)d container:(id)container queue:(id)queue qos:(id)qos withCompletion:(id)completion;
+ (void)acceptShareWithShareMetadata:(id)metadata sessionID:(id)d container:(id)container queue:(id)queue qos:(id)qos withCompletion:(id)completion;
+ (void)configureCloudKitQos:(id)qos configuration:(id *)configuration;
+ (void)fetchAllZonesFromContainer:(id)container database:(id)database qos:(id)qos withCompletion:(id)completion;
+ (void)fetchShareMetadataWithInvitationToken:(id)token sessionID:(id)d container:(id)container queue:(id)queue qos:(id)qos withCompletion:(id)completion;
+ (void)supportsDeviceToDeviceEncryptionWithCompletion:(id)completion;
- (CKDatabase)privateDatabase;
- (CKDatabase)sharedDatabase;
- (CKRecordZoneID)zoneID;
- (NSString)ownerName;
- (NSString)zoneName;
- (NSString)zoneSubscriptionID;
- (SMCloudKitZone)initWithZone:(id)zone queue:(id)queue;
- (id)apsEnvironmentString;
- (id)createPushConnection;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)createNewInvitationTokensWithConversation:(id)conversation qos:(id)qos completion:(id)completion;
- (void)dealloc;
- (void)deleteRecords:(id)records fromDatabase:(id)database qos:(id)qos withCompletion:(id)completion;
- (void)deleteZoneFromDatabase:(id)database qos:(id)qos withCompletion:(id)completion;
- (void)deregisterForZoneUpdates;
- (void)fetchRecord:(id)record fromDatabase:(id)database qos:(id)qos withCompletion:(id)completion;
- (void)fetchShareParticipantsWithConversation:(id)conversation qos:(id)qos completion:(id)completion;
- (void)fetchShareWithQos:(id)qos withCompletion:(id)completion;
- (void)fetchZoneFromDatabase:(id)database qos:(id)qos withCompletion:(id)completion;
- (void)registerForZoneUpdatesWithHandler:(id)handler;
- (void)removeShareParticipantsInConversation:(id)conversation qos:(id)qos withCompletion:(id)completion;
- (void)saveRecord:(id)record toDatabase:(id)database qos:(id)qos withCompletion:(id)completion;
- (void)saveRecords:(id)records toDatabase:(id)database qos:(id)qos withCompletion:(id)completion;
- (void)saveRecordsWithRetry:(int64_t)retry records:(id)records toDatabase:(id)database qos:(id)qos withCompletion:(id)completion;
- (void)saveZoneToDatabase:(id)database qos:(id)qos withCompletion:(id)completion;
- (void)subscribeToZoneChangesInPrivateDatabaseWithQoS:(id)s completion:(id)completion;
- (void)updateRecord:(id)record inDatabase:(id)database qos:(id)qos usingBlock:(id)block withCompletion:(id)completion;
@end

@implementation SMCloudKitZone

+ (id)getContainer
{
  v2 = objc_opt_new();
  [v2 setUseZoneWidePCS:1];
  v3 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:@"com.apple.SafetyMonitor.SafetyCache" environment:1];
  v4 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v3 options:v2];

  return v4;
}

- (SMCloudKitZone)initWithZone:(id)zone queue:(id)queue
{
  zoneCopy = zone;
  queueCopy = queue;
  v9 = queueCopy;
  if (!zoneCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: zone";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  if (!queueCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "Invalid parameter not satisfying: queue";
    goto LABEL_12;
  }

  v18.receiver = self;
  v18.super_class = SMCloudKitZone;
  v10 = [(SMCloudKitZone *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_zone, zone);
    objc_storeStrong(&v11->_queue, queue);
    v12 = +[SMCloudKitZone getContainer];
    container = v11->_container;
    v11->_container = v12;
  }

  self = v11;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)dealloc
{
  [(SMCloudKitZone *)self deregisterForZoneUpdates];
  v3.receiver = self;
  v3.super_class = SMCloudKitZone;
  [(SMCloudKitZone *)&v3 dealloc];
}

+ (void)supportsDeviceToDeviceEncryptionWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = +[SMCloudKitZone getContainer];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      *buf = 138412802;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v6;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "#SafetyCache,%@,%@,calling accountInfoWithCompletionHandler on container %@", buf, 0x20u);
    }
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__SMCloudKitZone_supportsDeviceToDeviceEncryptionWithCompletion___block_invoke;
  v12[3] = &unk_2788C7770;
  selfCopy = self;
  v15 = a2;
  v13 = completionCopy;
  v8 = completionCopy;
  [v6 accountInfoWithCompletionHandler:v12];
}

void __65__SMCloudKitZone_supportsDeviceToDeviceEncryptionWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(*(a1 + 48));
      v24 = [v5 description];
      v25 = [v6 description];
      *buf = 138413058;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      v35 = 2112;
      v36 = v24;
      v37 = 2112;
      v38 = v25;
      _os_log_debug_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEBUG, "#SafetyCache,%@,%@,accountInfoWithCompletionHandler accountInfo %@ error %@", buf, 0x2Au);
    }
  }

  if (v6)
  {
    v8 = *(*(a1 + 32) + 16);
LABEL_13:
    v8();
    goto LABEL_14;
  }

  if (v5)
  {
    v9 = [v5 supportsDeviceToDeviceEncryption];
    v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(*(a1 + 48));
      v14 = v13;
      v15 = @"NO";
      *buf = 138412802;
      v32 = v12;
      v33 = 2112;
      if (v9)
      {
        v15 = @"YES";
      }

      v34 = v13;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,supportsDeviceToDeviceEncryption %@", buf, 0x20u);
    }

    v8 = *(*(a1 + 32) + 16);
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x277CCA9B8]);
  v17 = *MEMORY[0x277D4ACD0];
  v29 = *MEMORY[0x277CCA450];
  v30 = @"Got nil CKAccountInfo";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v19 = [v16 initWithDomain:v17 code:0 userInfo:v18];

  v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
  {
    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    v28 = NSStringFromSelector(*(a1 + 48));
    *buf = 138412546;
    v32 = v27;
    v33 = 2112;
    v34 = v28;
    _os_log_fault_impl(&dword_2304B3000, v20, OS_LOG_TYPE_FAULT, "#SafetyCache,%@,%@,got nil account info and nil error", buf, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
LABEL_14:
}

+ (void)configureCloudKitQos:(id)qos configuration:(id *)configuration
{
  qosCopy = qos;
  masqueradeBundleID = [qosCopy masqueradeBundleID];

  if (masqueradeBundleID)
  {
    masqueradeBundleID2 = [qosCopy masqueradeBundleID];
    [*configuration setApplicationBundleIdentifierOverrideForNetworkAttribution:masqueradeBundleID2];
  }

  xpcActivity = [qosCopy xpcActivity];

  if (xpcActivity)
  {
    xpcActivity2 = [qosCopy xpcActivity];
    [*configuration setXPCActivity:xpcActivity2];
  }

  if ([qosCopy defaultQos])
  {
    [*configuration setQualityOfService:25];
  }
}

+ (void)fetchAllZonesFromContainer:(id)container database:(id)database qos:(id)qos withCompletion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  databaseCopy = database;
  qosCopy = qos;
  completionCopy = completion;
  v15 = completionCopy;
  if (!databaseCopy)
  {
    fetchAllRecordZonesOperation = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(fetchAllRecordZonesOperation, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: database";
LABEL_11:
    _os_log_error_impl(&dword_2304B3000, fetchAllRecordZonesOperation, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    goto LABEL_9;
  }

  if (!completionCopy)
  {
    fetchAllRecordZonesOperation = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(fetchAllRecordZonesOperation, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v25 = "Invalid parameter not satisfying: completion";
    goto LABEL_11;
  }

  fetchAllRecordZonesOperation = [MEMORY[0x277CBC3D0] fetchAllRecordZonesOperation];
  configuration = [fetchAllRecordZonesOperation configuration];
  [configuration setContainer:containerCopy];

  [fetchAllRecordZonesOperation setDatabase:databaseCopy];
  configuration2 = [fetchAllRecordZonesOperation configuration];
  v26 = configuration2;
  [self configureCloudKitQos:qosCopy configuration:&v26];
  v19 = v26;

  v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = NSStringFromSelector(a2);
    operationID = [fetchAllRecordZonesOperation operationID];
    *buf = 138412802;
    v28 = v22;
    v29 = 2112;
    v30 = v23;
    v31 = 2112;
    v32 = operationID;
    _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,created CKOperation ID, %@", buf, 0x20u);
  }

  [fetchAllRecordZonesOperation setFetchRecordZonesCompletionBlock:v15];
  [databaseCopy addOperation:fetchAllRecordZonesOperation];

LABEL_9:
}

+ (void)acceptShareWithInvitationToken:(id)token sessionID:(id)d container:(id)container queue:(id)queue qos:(id)qos withCompletion:(id)completion
{
  v56[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dCopy = d;
  containerCopy = container;
  queueCopy = queue;
  qosCopy = qos;
  completionCopy = completion;
  v21 = completionCopy;
  if (!tokenCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: invitationToken";
LABEL_17:
    _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, v28, buf, 2u);
    goto LABEL_21;
  }

  if (!containerCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: container";
    goto LABEL_17;
  }

  if (!queueCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: queue";
    goto LABEL_17;
  }

  if (!completionCopy)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v28 = "Invalid parameter not satisfying: completion";
    goto LABEL_17;
  }

  shareURL = [tokenCopy shareURL];

  v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v24 = v23;
  if (shareURL)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v35 = NSStringFromClass(v25);
      v26 = NSStringFromSelector(a2);
      *buf = 138413314;
      v46 = dCopy;
      v47 = 2112;
      v48 = v35;
      v49 = 2112;
      v50 = v26;
      v51 = 2112;
      v52 = tokenCopy;
      v53 = 2112;
      v54 = containerCopy;
      _os_log_impl(&dword_2304B3000, v24, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,accepting share token,invitationToken,%@,container,%@", buf, 0x34u);
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __94__SMCloudKitZone_acceptShareWithInvitationToken_sessionID_container_queue_qos_withCompletion___block_invoke;
    v36[3] = &unk_2788C77C0;
    v37 = dCopy;
    selfCopy = self;
    v44 = a2;
    v38 = tokenCopy;
    v42 = v21;
    v39 = containerCopy;
    v40 = queueCopy;
    v41 = qosCopy;
    [self fetchShareMetadataWithInvitationToken:v38 sessionID:v37 container:v39 queue:v40 qos:v41 withCompletion:v36];

    v27 = v37;
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      v34 = NSStringFromSelector(a2);
      *buf = 138412802;
      v46 = dCopy;
      v47 = 2112;
      v48 = v33;
      v49 = 2112;
      v50 = v34;
      _os_log_fault_impl(&dword_2304B3000, v24, OS_LOG_TYPE_FAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,missing invitation token", buf, 0x20u);
    }

    v29 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277D01448];
    v55 = *MEMORY[0x277CCA450];
    v56[0] = @"nil invitation token or share URL";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    v31 = [v29 errorWithDomain:v30 code:7 userInfo:v27];
    (v21)[2](v21, 0, v31);
  }

LABEL_21:
}

void __94__SMCloudKitZone_acceptShareWithInvitationToken_sessionID_container_queue_qos_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(*(a1 + 88));
    v13 = *(a1 + 40);
    *buf = 138413314;
    v25 = v9;
    v26 = 2112;
    v27 = v11;
    v28 = 2112;
    v29 = v12;
    v30 = 2112;
    v31 = v7;
    v32 = 2112;
    v33 = v13;
    _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,Fetch share metadata with error %@ for invitationToken %@", buf, 0x34u);
  }

  if (v7)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v14 = *(a1 + 80);
    v15 = *(a1 + 32);
    v16 = *(a1 + 48);
    v17 = *(a1 + 56);
    v18 = *(a1 + 64);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __94__SMCloudKitZone_acceptShareWithInvitationToken_sessionID_container_queue_qos_withCompletion___block_invoke_47;
    v19[3] = &unk_2788C7798;
    v20 = v15;
    v23 = *(a1 + 80);
    v21 = v6;
    v22 = *(a1 + 72);
    [v14 acceptShareWithShareMetadata:v21 sessionID:v20 container:v16 queue:v17 qos:v18 withCompletion:v19];
  }
}

void __94__SMCloudKitZone_acceptShareWithInvitationToken_sessionID_container_queue_qos_withCompletion___block_invoke_47(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(*(a1 + 64));
      v16 = *(a1 + 40);
      v17 = 138413314;
      v18 = v12;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v4;
      v25 = 2112;
      v26 = v16;
      _os_log_error_impl(&dword_2304B3000, v6, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,failed to accept share with error %@ for shareMetadata %@", &v17, 0x34u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(*(a1 + 64));
    v11 = *(a1 + 40);
    v17 = 138413058;
    v18 = v7;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,Receiver,sessionID:%@,%@,%@,accepted share for shareMetadata %@", &v17, 0x2Au);
  }

  (*(*(a1 + 48) + 16))();
}

+ (void)fetchShareMetadataWithInvitationToken:(id)token sessionID:(id)d container:(id)container queue:(id)queue qos:(id)qos withCompletion:(id)completion
{
  v72[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  dCopy = d;
  containerCopy = container;
  queueCopy = queue;
  qosCopy = qos;
  completionCopy = completion;
  shareURL = [tokenCopy shareURL];
  v72[0] = shareURL;
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:1];

  shareURL2 = [tokenCopy shareURL];
  v70 = shareURL2;
  v71 = tokenCopy;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];

  v20 = [objc_alloc(MEMORY[0x277CBC3F8]) initWithShareURLs:v45 invitationTokensByShareURL:v44];
  configuration = [v20 configuration];
  [configuration setContainer:containerCopy];

  configuration2 = [v20 configuration];
  v61 = configuration2;
  [self configureCloudKitQos:qosCopy configuration:&v61];
  v39 = v61;

  v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    operationID = [v20 operationID];
    *buf = 138412802;
    *&buf[4] = v25;
    *&buf[12] = 2112;
    *&buf[14] = v26;
    *&buf[22] = 2112;
    v69 = operationID;
    _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,created CKOperation ID, %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v69) = 0;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __101__SMCloudKitZone_fetchShareMetadataWithInvitationToken_sessionID_container_queue_qos_withCompletion___block_invoke;
  v53[3] = &unk_2788C7810;
  v28 = queueCopy;
  v54 = v28;
  v29 = dCopy;
  v55 = v29;
  selfCopy = self;
  v60 = a2;
  v30 = tokenCopy;
  v56 = v30;
  v58 = buf;
  v31 = completionCopy;
  v57 = v31;
  [v20 setPerShareMetadataBlock:v53];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __101__SMCloudKitZone_fetchShareMetadataWithInvitationToken_sessionID_container_queue_qos_withCompletion___block_invoke_54;
  v46[3] = &unk_2788C7860;
  v32 = v28;
  v47 = v32;
  v50 = buf;
  v33 = v29;
  v48 = v33;
  selfCopy2 = self;
  v52 = a2;
  v34 = v31;
  v49 = v34;
  [v20 setFetchShareMetadataCompletionBlock:v46];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = NSStringFromSelector(a2);
      *v62 = 138412802;
      v63 = v33;
      v64 = 2112;
      v65 = v37;
      v66 = 2112;
      v67 = v38;
      _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,fetching share data", v62, 0x20u);
    }
  }

  [containerCopy addOperation:{v20, v39}];

  _Block_object_dispose(buf, 8);
}

void __101__SMCloudKitZone_fetchShareMetadataWithInvitationToken_sessionID_container_queue_qos_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__SMCloudKitZone_fetchShareMetadataWithInvitationToken_sessionID_container_queue_qos_withCompletion___block_invoke_2;
  block[3] = &unk_2788C77E8;
  v14 = v7;
  v15 = v6;
  v8 = *(a1 + 32);
  v16 = *(a1 + 40);
  v19 = *(a1 + 72);
  v17 = *(a1 + 48);
  v12 = *(a1 + 56);
  v9 = v12;
  v18 = v12;
  v10 = v6;
  v11 = v7;
  dispatch_async(v8, block);
}

void __101__SMCloudKitZone_fetchShareMetadataWithInvitationToken_sessionID_container_queue_qos_withCompletion___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32) || !*(a1 + 40))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(*(a1 + 88));
      v17 = *(a1 + 32);
      v18 = *(a1 + 56);
      v19 = 138413314;
      v20 = v13;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,failed to fetch share metadata with error %@ for invitationToken %@", &v19, 0x34u);
    }

    v3 = *(*(a1 + 72) + 8);
    if ((*(v3 + 24) & 1) == 0)
    {
      *(v3 + 24) = 1;
      v4 = *(*(a1 + 64) + 16);
LABEL_13:
      v4();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 48);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(*(a1 + 88));
        v10 = *(a1 + 40);
        v11 = *(a1 + 56);
        v19 = 138413314;
        v20 = v6;
        v21 = 2112;
        v22 = v8;
        v23 = 2112;
        v24 = v9;
        v25 = 2112;
        v26 = v10;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,fetched share metadata %@ for invitationToken %@", &v19, 0x34u);
      }
    }

    v12 = *(*(a1 + 72) + 8);
    if ((*(v12 + 24) & 1) == 0)
    {
      *(v12 + 24) = 1;
      v4 = *(*(a1 + 64) + 16);
      goto LABEL_13;
    }
  }
}

void __101__SMCloudKitZone_fetchShareMetadataWithInvitationToken_sessionID_container_queue_qos_withCompletion___block_invoke_54(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __101__SMCloudKitZone_fetchShareMetadataWithInvitationToken_sessionID_container_queue_qos_withCompletion___block_invoke_2_55;
  v6[3] = &unk_2788C7838;
  v10 = *(a1 + 56);
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = *(a1 + 64);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __101__SMCloudKitZone_fetchShareMetadataWithInvitationToken_sessionID_container_queue_qos_withCompletion___block_invoke_2_55(uint64_t result)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    if (*(result + 32))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = *(v1 + 40);
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        v6 = NSStringFromSelector(*(v1 + 72));
        v7 = *(v1 + 32);
        v8 = 138413058;
        v9 = v3;
        v10 = 2112;
        v11 = v5;
        v12 = 2112;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,%@,failed to complete perShareMetadataBlock with error %@", &v8, 0x2Au);
      }

      *(*(*(v1 + 56) + 8) + 24) = 1;
      return (*(*(v1 + 48) + 16))();
    }
  }

  return result;
}

+ (void)acceptShareWithShareMetadata:(id)metadata sessionID:(id)d container:(id)container queue:(id)queue qos:(id)qos withCompletion:(id)completion
{
  v68[1] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  dCopy = d;
  containerCopy = container;
  queueCopy = queue;
  qosCopy = qos;
  completionCopy = completion;
  v18 = objc_alloc(MEMORY[0x277CBC158]);
  v68[0] = metadataCopy;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:1];
  v20 = [v18 initWithShareMetadatas:v19];

  configuration = [v20 configuration];
  [configuration setContainer:containerCopy];

  configuration2 = [v20 configuration];
  v59 = configuration2;
  [self configureCloudKitQos:qosCopy configuration:&v59];
  v39 = v59;

  v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    operationID = [v20 operationID];
    *buf = 138412802;
    *&buf[4] = v25;
    *&buf[12] = 2112;
    *&buf[14] = v26;
    *&buf[22] = 2112;
    v67 = operationID;
    _os_log_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,created CKOperation ID, %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v67) = 0;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __92__SMCloudKitZone_acceptShareWithShareMetadata_sessionID_container_queue_qos_withCompletion___block_invoke;
  v51[3] = &unk_2788C7888;
  v28 = queueCopy;
  v52 = v28;
  v29 = dCopy;
  v53 = v29;
  selfCopy = self;
  v58 = a2;
  v30 = metadataCopy;
  v54 = v30;
  v56 = buf;
  v31 = completionCopy;
  v55 = v31;
  [v20 setPerShareCompletionBlock:v51];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __92__SMCloudKitZone_acceptShareWithShareMetadata_sessionID_container_queue_qos_withCompletion___block_invoke_59;
  v44[3] = &unk_2788C7860;
  v32 = v28;
  v45 = v32;
  v48 = buf;
  v33 = v29;
  v46 = v33;
  selfCopy2 = self;
  v50 = a2;
  v34 = v31;
  v47 = v34;
  [v20 setAcceptSharesCompletionBlock:v44];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v35 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      v38 = NSStringFromSelector(a2);
      *v60 = 138412802;
      v61 = v33;
      v62 = 2112;
      v63 = v37;
      v64 = 2112;
      v65 = v38;
      _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,accepting share", v60, 0x20u);
    }
  }

  [containerCopy addOperation:{v20, v39}];

  _Block_object_dispose(buf, 8);
}

void __92__SMCloudKitZone_acceptShareWithShareMetadata_sessionID_container_queue_qos_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__SMCloudKitZone_acceptShareWithShareMetadata_sessionID_container_queue_qos_withCompletion___block_invoke_2;
  block[3] = &unk_2788C5CA0;
  v11 = v5;
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v15 = *(a1 + 72);
  v13 = *(a1 + 48);
  v9 = *(a1 + 56);
  v7 = v9;
  v14 = v9;
  v8 = v5;
  dispatch_async(v6, block);
}

void __92__SMCloudKitZone_acceptShareWithShareMetadata_sessionID_container_queue_qos_withCompletion___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(*(a1 + 80));
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      v18 = 138413314;
      v19 = v12;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,Receiver,sessionID:%@,%@,%@,failed to accept share with error %@ for shareMetadata %@", &v18, 0x34u);
    }

    v3 = *(*(a1 + 64) + 8);
    if ((*(v3 + 24) & 1) == 0)
    {
      *(v3 + 24) = 1;
      v4 = *(*(a1 + 56) + 16);
LABEL_12:
      v4();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 40);
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(*(a1 + 80));
        v10 = *(a1 + 48);
        v18 = 138413058;
        v19 = v6;
        v20 = 2112;
        v21 = v8;
        v22 = 2112;
        v23 = v9;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "#SafetyCache,Receiver,sessionID:%@,%@,%@,accepted share for shareMetadata %@", &v18, 0x2Au);
      }
    }

    v11 = *(*(a1 + 64) + 8);
    if ((*(v11 + 24) & 1) == 0)
    {
      *(v11 + 24) = 1;
      v4 = *(*(a1 + 56) + 16);
      goto LABEL_12;
    }
  }
}

void __92__SMCloudKitZone_acceptShareWithShareMetadata_sessionID_container_queue_qos_withCompletion___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__SMCloudKitZone_acceptShareWithShareMetadata_sessionID_container_queue_qos_withCompletion___block_invoke_2_60;
  v6[3] = &unk_2788C7838;
  v10 = *(a1 + 56);
  v7 = v3;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = *(a1 + 64);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __92__SMCloudKitZone_acceptShareWithShareMetadata_sessionID_container_queue_qos_withCompletion___block_invoke_2_60(uint64_t result)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    if (*(result + 32))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = *(v1 + 40);
        v4 = objc_opt_class();
        v5 = NSStringFromClass(v4);
        v6 = NSStringFromSelector(*(v1 + 72));
        v7 = *(v1 + 32);
        v8 = 138413058;
        v9 = v3;
        v10 = 2112;
        v11 = v5;
        v12 = 2112;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,%@,failed to complete perShareCompletionBlock with error %@", &v8, 0x2Au);
      }

      *(*(*(v1 + 56) + 8) + 24) = 1;
      return (*(*(v1 + 48) + 16))();
    }
  }

  return result;
}

- (void)fetchZoneFromDatabase:(id)database qos:(id)qos withCompletion:(id)completion
{
  v39[1] = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  qosCopy = qos;
  completionCopy = completion;
  v12 = completionCopy;
  if (!databaseCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: database";
LABEL_11:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    goto LABEL_9;
  }

  if (!completionCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: completion";
    goto LABEL_11;
  }

  v13 = objc_alloc(MEMORY[0x277CBC3D0]);
  zoneID = [(SMCloudKitZone *)self zoneID];
  v39[0] = zoneID;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
  v16 = [v13 initWithRecordZoneIDs:v15];

  container = [(SMCloudKitZone *)self container];
  configuration = [v16 configuration];
  [configuration setContainer:container];

  [v16 setDatabase:databaseCopy];
  configuration2 = [v16 configuration];
  v36 = configuration2;
  [objc_opt_class() configureCloudKitQos:qosCopy configuration:&v36];
  v27 = v36;

  v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = NSStringFromSelector(a2);
    operationID = [v16 operationID];
    *buf = 138412802;
    *&buf[4] = v22;
    *&buf[12] = 2112;
    *&buf[14] = v23;
    *&buf[22] = 2112;
    v38 = operationID;
    _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,created CKOperation ID, %@", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v38) = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __59__SMCloudKitZone_fetchZoneFromDatabase_qos_withCompletion___block_invoke;
  v32[3] = &unk_2788C78D8;
  v34 = buf;
  v35 = a2;
  v32[4] = self;
  v25 = v12;
  v33 = v25;
  [v16 setPerRecordZoneCompletionBlock:v32];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __59__SMCloudKitZone_fetchZoneFromDatabase_qos_withCompletion___block_invoke_62;
  v28[3] = &unk_2788C7900;
  v28[4] = self;
  v30 = buf;
  v31 = a2;
  v29 = v25;
  [v16 setFetchRecordZonesCompletionBlock:v28];
  [databaseCopy addOperation:v16];

  _Block_object_dispose(buf, 8);
LABEL_9:
}

void __59__SMCloudKitZone_fetchZoneFromDatabase_qos_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SMCloudKitZone_fetchZoneFromDatabase_qos_withCompletion___block_invoke_2;
  block[3] = &unk_2788C78B0;
  v9 = *(a1 + 32);
  v15 = v7;
  v16 = v9;
  v19 = *(a1 + 56);
  v17 = v6;
  v13 = *(a1 + 40);
  v10 = v13;
  v18 = v13;
  v11 = v6;
  v12 = v7;
  dispatch_async(v8, block);
}

void __59__SMCloudKitZone_fetchZoneFromDatabase_qos_withCompletion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 72));
      v13 = [*(a1 + 40) zoneID];
      v14 = *(a1 + 32);
      v15 = 138413058;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to fetch zone with zoneID %@ with error %@", &v15, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 72));
      v8 = [*(a1 + 40) zoneID];
      v15 = 138412802;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,zone fetched successfully for zoneID %@", &v15, 0x20u);
    }

    [*(a1 + 40) setZone:*(a1 + 48)];
  }

  v9 = *(*(a1 + 64) + 8);
  if ((*(v9 + 24) & 1) == 0)
  {
    *(v9 + 24) = 1;
    (*(*(a1 + 56) + 16))();
  }
}

void __59__SMCloudKitZone_fetchZoneFromDatabase_qos_withCompletion___block_invoke_62(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SMCloudKitZone_fetchZoneFromDatabase_qos_withCompletion___block_invoke_2_63;
  block[3] = &unk_2788C5A48;
  v6 = *(a1 + 32);
  v11 = v4;
  v12 = v6;
  v14 = *(a1 + 56);
  v9 = *(a1 + 40);
  v7 = v9;
  v13 = v9;
  v8 = v4;
  dispatch_async(v5, block);
}

uint64_t __59__SMCloudKitZone_fetchZoneFromDatabase_qos_withCompletion___block_invoke_2_63(uint64_t result)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    if (*(result + 32))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = objc_opt_class();
        v4 = NSStringFromClass(v3);
        v5 = NSStringFromSelector(*(v1 + 64));
        v6 = *(v1 + 32);
        v7 = 138412802;
        v8 = v4;
        v9 = 2112;
        v10 = v5;
        v11 = 2112;
        v12 = v6;
        _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to complete perRecordZoneCompletionBlock with error %@", &v7, 0x20u);
      }

      *(*(*(v1 + 56) + 8) + 24) = 1;
      return (*(*(v1 + 48) + 16))();
    }
  }

  return result;
}

- (void)saveZoneToDatabase:(id)database qos:(id)qos withCompletion:(id)completion
{
  v42[1] = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  qosCopy = qos;
  completionCopy = completion;
  v12 = completionCopy;
  if (!databaseCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: database";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    goto LABEL_14;
  }

  if (!completionCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: completion";
    goto LABEL_13;
  }

  if (!qosCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: qos";
    goto LABEL_13;
  }

  v13 = objc_alloc(MEMORY[0x277CBC490]);
  v14 = [(SMCloudKitZone *)self zone];
  v42[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  v16 = [v13 initWithRecordZonesToSave:v15 recordZoneIDsToDelete:0];

  container = [(SMCloudKitZone *)self container];
  configuration = [v16 configuration];
  [configuration setContainer:container];

  [v16 setDatabase:databaseCopy];
  configuration2 = [v16 configuration];
  v37 = configuration2;
  [objc_opt_class() configureCloudKitQos:qosCopy configuration:&v37];
  v28 = v37;

  v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v27 = NSStringFromClass(v21);
    v22 = NSStringFromSelector(a2);
    zoneID = [(SMCloudKitZone *)self zoneID];
    operationID = [v16 operationID];
    *buf = 138413058;
    *&buf[4] = v27;
    *&buf[12] = 2112;
    *&buf[14] = v22;
    *&buf[22] = 2112;
    v39 = zoneID;
    v40 = 2112;
    v41 = operationID;
    _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,zoneID,%@,created CKOperation ID, %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v39) = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __56__SMCloudKitZone_saveZoneToDatabase_qos_withCompletion___block_invoke;
  v33[3] = &unk_2788C78D8;
  v35 = buf;
  v36 = a2;
  v33[4] = self;
  v25 = v12;
  v34 = v25;
  [v16 setPerRecordZoneSaveBlock:v33];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __56__SMCloudKitZone_saveZoneToDatabase_qos_withCompletion___block_invoke_66;
  v29[3] = &unk_2788C7928;
  v29[4] = self;
  v31 = buf;
  v32 = a2;
  v30 = v25;
  [v16 setModifyRecordZonesCompletionBlock:v29];
  [databaseCopy addOperation:v16];

  _Block_object_dispose(buf, 8);
LABEL_14:
}

void __56__SMCloudKitZone_saveZoneToDatabase_qos_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SMCloudKitZone_saveZoneToDatabase_qos_withCompletion___block_invoke_2;
  block[3] = &unk_2788C78B0;
  v9 = *(a1 + 32);
  v15 = v7;
  v16 = v9;
  v19 = *(a1 + 56);
  v17 = v6;
  v13 = *(a1 + 40);
  v10 = v13;
  v18 = v13;
  v11 = v6;
  v12 = v7;
  dispatch_async(v8, block);
}

void __56__SMCloudKitZone_saveZoneToDatabase_qos_withCompletion___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 72));
      v13 = [*(a1 + 40) zoneID];
      v14 = *(a1 + 32);
      v15 = 138413058;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to save zone with zoneID %@ with error %@", &v15, 0x2Au);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 72));
      v8 = [*(a1 + 40) zoneID];
      v15 = 138412802;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,zone saved successfully for zoneID %@", &v15, 0x20u);
    }

    [*(a1 + 40) setZone:*(a1 + 48)];
  }

  v9 = *(*(a1 + 64) + 8);
  if ((*(v9 + 24) & 1) == 0)
  {
    *(v9 + 24) = 1;
    (*(*(a1 + 56) + 16))();
  }
}

void __56__SMCloudKitZone_saveZoneToDatabase_qos_withCompletion___block_invoke_66(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SMCloudKitZone_saveZoneToDatabase_qos_withCompletion___block_invoke_2_67;
  block[3] = &unk_2788C5A48;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v15 = *(a1 + 56);
  v10 = *(a1 + 40);
  v8 = v10;
  v14 = v10;
  v9 = v5;
  dispatch_async(v6, block);
}

uint64_t __56__SMCloudKitZone_saveZoneToDatabase_qos_withCompletion___block_invoke_2_67(uint64_t result)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    if (*(result + 32))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = objc_opt_class();
        v4 = NSStringFromClass(v3);
        v5 = NSStringFromSelector(*(v1 + 64));
        v6 = *(v1 + 32);
        v7 = 138412802;
        v8 = v4;
        v9 = 2112;
        v10 = v5;
        v11 = 2112;
        v12 = v6;
        _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to complete perRecordZoneSaveBlock with error %@", &v7, 0x20u);
      }

      *(*(*(v1 + 56) + 8) + 24) = 1;
      return (*(*(v1 + 48) + 16))();
    }
  }

  return result;
}

- (void)deleteZoneFromDatabase:(id)database qos:(id)qos withCompletion:(id)completion
{
  v42[1] = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  qosCopy = qos;
  completionCopy = completion;
  v11 = completionCopy;
  if (!databaseCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: database";
LABEL_11:
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    goto LABEL_9;
  }

  if (!completionCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v26 = "Invalid parameter not satisfying: completion";
    goto LABEL_11;
  }

  v12 = objc_alloc(MEMORY[0x277CBC490]);
  zoneID = [(SMCloudKitZone *)self zoneID];
  v42[0] = zoneID;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  v15 = [v12 initWithRecordZonesToSave:0 recordZoneIDsToDelete:v14];

  container = [(SMCloudKitZone *)self container];
  configuration = [v15 configuration];
  [configuration setContainer:container];

  [v15 setDatabase:databaseCopy];
  configuration2 = [v15 configuration];
  v37 = configuration2;
  [objc_opt_class() configureCloudKitQos:qosCopy configuration:&v37];
  v27 = v37;

  v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = NSStringFromSelector(a2);
    zoneID2 = [(SMCloudKitZone *)self zoneID];
    operationID = [v15 operationID];
    *buf = 138413058;
    *&buf[4] = v21;
    *&buf[12] = 2112;
    *&buf[14] = v22;
    *&buf[22] = 2112;
    v39 = zoneID2;
    v40 = 2112;
    v41 = operationID;
    _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,zoneID,%@,created CKOperation ID, %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v39) = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __60__SMCloudKitZone_deleteZoneFromDatabase_qos_withCompletion___block_invoke;
  v33[3] = &unk_2788C7978;
  v35 = buf;
  v36 = a2;
  v33[4] = self;
  v25 = v11;
  v34 = v25;
  [v15 setPerRecordZoneDeleteBlock:v33];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60__SMCloudKitZone_deleteZoneFromDatabase_qos_withCompletion___block_invoke_70;
  v29[3] = &unk_2788C7928;
  v29[4] = self;
  v31 = buf;
  v32 = a2;
  v30 = v25;
  [v15 setModifyRecordZonesCompletionBlock:v29];
  [databaseCopy addOperation:v15];

  _Block_object_dispose(buf, 8);
LABEL_9:
}

void __60__SMCloudKitZone_deleteZoneFromDatabase_qos_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SMCloudKitZone_deleteZoneFromDatabase_qos_withCompletion___block_invoke_2;
  block[3] = &unk_2788C7950;
  v6 = *(a1 + 32);
  v11 = v4;
  v12 = v6;
  v14 = *(a1 + 56);
  v9 = *(a1 + 40);
  v7 = v9;
  v13 = v9;
  v8 = v4;
  dispatch_async(v5, block);
}

void __60__SMCloudKitZone_deleteZoneFromDatabase_qos_withCompletion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v4 = v3;
  if (v2)
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 64));
    v8 = [*(a1 + 40) zoneID];
    v9 = *(a1 + 32);
    v12 = 138413058;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to delete zone with zoneID %@ with error %@", &v12, 0x2Au);
  }

  else
  {
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v10 = objc_opt_class();
    v6 = NSStringFromClass(v10);
    v7 = NSStringFromSelector(*(a1 + 64));
    v8 = [*(a1 + 40) zoneID];
    v12 = 138412802;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,zone deleted successfully for zoneID %@", &v12, 0x20u);
  }

LABEL_7:
  v11 = *(*(a1 + 56) + 8);
  if ((*(v11 + 24) & 1) == 0)
  {
    *(v11 + 24) = 1;
    (*(*(a1 + 48) + 16))();
  }
}

void __60__SMCloudKitZone_deleteZoneFromDatabase_qos_withCompletion___block_invoke_70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SMCloudKitZone_deleteZoneFromDatabase_qos_withCompletion___block_invoke_2_71;
  block[3] = &unk_2788C5A48;
  v7 = *(a1 + 32);
  v12 = v5;
  v13 = v7;
  v15 = *(a1 + 56);
  v10 = *(a1 + 40);
  v8 = v10;
  v14 = v10;
  v9 = v5;
  dispatch_async(v6, block);
}

uint64_t __60__SMCloudKitZone_deleteZoneFromDatabase_qos_withCompletion___block_invoke_2_71(uint64_t result)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    if (*(result + 32))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = objc_opt_class();
        v4 = NSStringFromClass(v3);
        v5 = NSStringFromSelector(*(v1 + 64));
        v6 = *(v1 + 32);
        v7 = 138412802;
        v8 = v4;
        v9 = 2112;
        v10 = v5;
        v11 = 2112;
        v12 = v6;
        _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to complete perRecordZoneDeleteBlock with error %@", &v7, 0x20u);
      }

      *(*(*(v1 + 56) + 8) + 24) = 1;
      return (*(*(v1 + 48) + 16))();
    }
  }

  return result;
}

- (void)fetchShareWithQos:(id)qos withCompletion:(id)completion
{
  qosCopy = qos;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = objc_alloc(MEMORY[0x277CBC5D0]);
    v9 = *MEMORY[0x277CBC020];
    zoneID = [(SMCloudKitZone *)self zoneID];
    v11 = [v8 initWithRecordName:v9 zoneID:zoneID];

    privateDatabase = [(SMCloudKitZone *)self privateDatabase];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__SMCloudKitZone_fetchShareWithQos_withCompletion___block_invoke;
    v13[3] = &unk_2788C79A0;
    v14 = completionCopy;
    [(SMCloudKitZone *)self fetchRecord:v11 fromDatabase:privateDatabase qos:qosCopy withCompletion:v13];
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
    }
  }
}

- (void)fetchShareParticipantsWithConversation:(id)conversation qos:(id)qos completion:(id)completion
{
  v86 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  qosCopy = qos;
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x277CBEB38]);
  v57 = conversationCopy;
  receiverHandles = [conversationCopy receiverHandles];
  v61 = [v8 initWithCapacity:{objc_msgSend(receiverHandles, "count")}];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [conversationCopy receiverHandles];
  v10 = [obj countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v10)
  {
    v11 = *v71;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v71 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v70 + 1) + 8 * i);
        v14 = MEMORY[0x277D4AAE8];
        primaryHandle = [v13 primaryHandle];
        v16 = [v14 getSMHandleTypeWithHandle:primaryHandle];

        if (v16 == 2)
        {
          v20 = objc_alloc(MEMORY[0x277CBC7C8]);
          primaryHandle2 = [v13 primaryHandle];
          v19 = [v20 initWithEmailAddress:primaryHandle2];
        }

        else
        {
          if (v16 != 1)
          {
            goto LABEL_22;
          }

          v17 = objc_alloc(MEMORY[0x277CBC7C8]);
          primaryHandle2 = [v13 primaryHandle];
          v19 = [v17 initWithPhoneNumber:primaryHandle2];
        }

        v21 = v19;

        if (!v21)
        {
LABEL_22:
          v44 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v47 = objc_opt_class();
            v48 = NSStringFromClass(v47);
            v49 = NSStringFromSelector(a2);
            primaryHandle3 = [v13 primaryHandle];
            *buf = 138412802;
            *&buf[4] = v48;
            *&buf[12] = 2112;
            *&buf[14] = v49;
            *&buf[22] = 2112;
            v81 = primaryHandle3;
            _os_log_error_impl(&dword_2304B3000, v44, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,Invalid Handle %@", buf, 0x20u);
          }

          v45 = objc_alloc(MEMORY[0x277CCA9B8]);
          v83 = *MEMORY[0x277CCA450];
          v84 = @"Invalid Receiver Handle received";
          v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
          v46 = [v45 initWithDomain:*MEMORY[0x277D4ACD0] code:0 userInfo:v32];
          (*(completionCopy + 2))(completionCopy, 0, 0, v46);

          goto LABEL_25;
        }

        v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          v25 = NSStringFromSelector(a2);
          primaryHandle4 = [v13 primaryHandle];
          *buf = 138413058;
          *&buf[4] = v24;
          *&buf[12] = 2112;
          *&buf[14] = v25;
          *&buf[22] = 2112;
          v81 = primaryHandle4;
          LOWORD(v82) = 2112;
          *(&v82 + 2) = v21;
          _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,Valid Handle %@,%@", buf, 0x2Au);
        }

        [v61 setObject:v21 forKeyedSubscript:v13];
      }

      v10 = [obj countByEnumeratingWithState:&v70 objects:v85 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v27 = objc_alloc(MEMORY[0x277CBC410]);
  allValues = [v61 allValues];
  obj = [v27 initWithUserIdentityLookupInfos:allValues];

  container = [(SMCloudKitZone *)self container];
  configuration = [obj configuration];
  [configuration setContainer:container];

  configuration2 = [obj configuration];
  v69 = configuration2;
  [objc_opt_class() configureCloudKitQos:qosCopy configuration:&v69];
  v32 = v69;

  v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = NSStringFromSelector(a2);
    zoneID = [(SMCloudKitZone *)self zoneID];
    operationID = [obj operationID];
    *buf = 138413058;
    *&buf[4] = v35;
    *&buf[12] = 2112;
    *&buf[14] = v36;
    *&buf[22] = 2112;
    v81 = zoneID;
    LOWORD(v82) = 2112;
    *(&v82 + 2) = operationID;
    _os_log_impl(&dword_2304B3000, v33, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,zoneID,%@,created CKOperation ID, %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v81 = __Block_byref_object_copy__31;
  *&v82 = __Block_byref_object_dispose__31;
  v39 = objc_alloc(MEMORY[0x277CBEB38]);
  receiverHandles2 = [v57 receiverHandles];
  *(&v82 + 1) = [v39 initWithCapacity:{objc_msgSend(receiverHandles2, "count")}];

  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __72__SMCloudKitZone_fetchShareParticipantsWithConversation_qos_completion___block_invoke;
  v68[3] = &unk_2788C79F0;
  selfCopy2 = self;
  v68[4] = self;
  v68[5] = buf;
  v68[6] = a2;
  [obj setPerShareParticipantCompletionBlock:v68];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __72__SMCloudKitZone_fetchShareParticipantsWithConversation_qos_completion___block_invoke_82;
  v62[3] = &unk_2788C7A40;
  v62[4] = self;
  v67 = a2;
  v65 = completionCopy;
  v63 = v57;
  v64 = v61;
  v66 = buf;
  [obj setFetchShareParticipantsCompletionBlock:v62];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v42 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      v53 = NSStringFromSelector(a2);
      userIdentityLookupInfos = [obj userIdentityLookupInfos];
      *v74 = 138412802;
      v75 = v52;
      v76 = 2112;
      v77 = v53;
      v78 = 2112;
      v79 = userIdentityLookupInfos;
      _os_log_debug_impl(&dword_2304B3000, v42, OS_LOG_TYPE_DEBUG, "#SafetyCache,%@,%@,adding fetch share participants operation with ID lookups %@", v74, 0x20u);
    }

    selfCopy2 = self;
  }

  container2 = [(SMCloudKitZone *)selfCopy2 container];
  [container2 addOperation:obj];

  _Block_object_dispose(buf, 8);
LABEL_25:
}

void __72__SMCloudKitZone_fetchShareParticipantsWithConversation_qos_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__SMCloudKitZone_fetchShareParticipantsWithConversation_qos_completion___block_invoke_2;
  v15[3] = &unk_2788C79C8;
  v11 = *(a1 + 32);
  v16 = v9;
  v17 = v11;
  v18 = v7;
  v19 = v8;
  v20 = *(a1 + 40);
  v12 = v8;
  v13 = v7;
  v14 = v9;
  dispatch_async(v10, v15);
}

void __72__SMCloudKitZone_fetchShareParticipantsWithConversation_qos_completion___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(*(a1 + 72));
      v13 = *(a1 + 48);
      v14 = [*(a1 + 40) zoneID];
      v15 = *(a1 + 32);
      v16 = 138413314;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to identify participant %@ for zoneID %@ with error %@", &v16, 0x34u);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 72));
      v8 = *(a1 + 56);
      v9 = [*(a1 + 40) zoneID];
      v16 = 138413058;
      v17 = v6;
      v18 = 2112;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,identified participant %@ for zoneID %@", &v16, 0x2Au);
    }

    [*(*(*(a1 + 64) + 8) + 40) setObject:*(a1 + 56) forKeyedSubscript:*(a1 + 48)];
  }
}

void __72__SMCloudKitZone_fetchShareParticipantsWithConversation_qos_completion___block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SMCloudKitZone_fetchShareParticipantsWithConversation_qos_completion___block_invoke_2_83;
  block[3] = &unk_2788C7A18;
  v5 = *(a1 + 72);
  v13 = v3;
  v17 = v5;
  v11 = *(a1 + 32);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v6;
  *&v9 = v11;
  *(&v9 + 1) = v7;
  v14 = v9;
  v15 = v8;
  v16 = *(a1 + 64);
  v10 = v3;
  dispatch_async(v4, block);
}

void __72__SMCloudKitZone_fetchShareParticipantsWithConversation_qos_completion___block_invoke_2_83(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([v2 code] == 2)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v3 = [*(a1 + 32) userInfo];
      v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

      v5 = [v4 countByEnumeratingWithState:&v38 objects:v51 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v39;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v39 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v38 + 1) + 8 * i);
            v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              v11 = objc_opt_class();
              v12 = NSStringFromClass(v11);
              v13 = NSStringFromSelector(*(a1 + 80));
              v14 = *(a1 + 32);
              *buf = 138413058;
              v44 = v12;
              v45 = 2112;
              v46 = v13;
              v47 = 2112;
              v48 = v9;
              v49 = 2112;
              v50 = v14;
              _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to complete perShareParticipantCompletionBlock for user ID lookup info %@ with error %@", buf, 0x2Au);
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v38 objects:v51 count:16];
        }

        while (v6);
      }
    }

    else
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromSelector(*(a1 + 80));
        v33 = *(a1 + 32);
        *buf = 138412802;
        v44 = v31;
        v45 = 2112;
        v46 = v32;
        v47 = 2112;
        v48 = v33;
        _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to complete fetching of share participants with error %@", buf, 0x20u);
      }
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(*(a1 + 80));
        *buf = 138412546;
        v44 = v17;
        v45 = 2112;
        v46 = v18;
        _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,completed fetch of share participants", buf, 0x16u);
      }
    }

    v19 = objc_alloc(MEMORY[0x277CBEB38]);
    v20 = [*(a1 + 48) receiverHandles];
    v21 = [v19 initWithCapacity:{objc_msgSend(v20, "count")}];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = [*(a1 + 48) receiverHandles];
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v34 + 1) + 8 * j);
          v28 = [*(a1 + 56) objectForKeyedSubscript:v27];
          v29 = [*(*(*(a1 + 72) + 8) + 40) objectForKeyedSubscript:v28];
          [v21 setObject:v27 forKeyedSubscript:v29];
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v24);
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (void)saveRecord:(id)record toDatabase:(id)database qos:(id)qos withCompletion:(id)completion
{
  v21[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  databaseCopy = database;
  qosCopy = qos;
  completionCopy = completion;
  v14 = completionCopy;
  if (!databaseCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: database";
LABEL_11:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_12;
  }

  if (!recordCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: record";
    goto LABEL_11;
  }

  if (!completionCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: completion";
    goto LABEL_11;
  }

  v21[0] = recordCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__SMCloudKitZone_saveRecord_toDatabase_qos_withCompletion___block_invoke;
  v18[3] = &unk_2788C6D60;
  v19 = v14;
  [(SMCloudKitZone *)self saveRecords:v15 toDatabase:databaseCopy qos:qosCopy withCompletion:v18];

  v16 = v19;
LABEL_12:
}

void __59__SMCloudKitZone_saveRecord_toDatabase_qos_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)saveRecords:(id)records toDatabase:(id)database qos:(id)qos withCompletion:(id)completion
{
  v47 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  databaseCopy = database;
  qosCopy = qos;
  completionCopy = completion;
  v15 = completionCopy;
  if (!databaseCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: database";
LABEL_20:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v27, buf, 2u);
    goto LABEL_21;
  }

  if (!recordsCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: records";
    goto LABEL_20;
  }

  if (!qosCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: qos";
    goto LABEL_20;
  }

  if (!completionCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: completion";
    goto LABEL_20;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      *buf = 138412802;
      v40 = v29;
      v41 = 2112;
      v42 = v30;
      v43 = 2112;
      v44 = recordsCopy;
      _os_log_debug_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEBUG, "#SafetyCache,Initiator,%@,%@,saving records,%@", buf, 0x20u);
    }
  }

  v17 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:recordsCopy recordIDsToDelete:0];
  container = [(SMCloudKitZone *)self container];
  configuration = [v17 configuration];
  [configuration setContainer:container];

  [v17 setDatabase:databaseCopy];
  [v17 setSavePolicy:1];
  configuration2 = [v17 configuration];
  v38 = configuration2;
  [objc_opt_class() configureCloudKitQos:qosCopy configuration:&v38];
  v33 = v38;

  v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v31 = NSStringFromClass(v22);
    NSStringFromSelector(a2);
    v23 = v32 = a2;
    zoneID = [(SMCloudKitZone *)self zoneID];
    operationID = [v17 operationID];
    *buf = 138413058;
    v40 = v31;
    v41 = 2112;
    v42 = v23;
    v43 = 2112;
    v44 = zoneID;
    v45 = 2112;
    v46 = operationID;
    v26 = operationID;
    _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,zoneID,%@,created CKOperation ID, %@", buf, 0x2Au);

    a2 = v32;
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __60__SMCloudKitZone_saveRecords_toDatabase_qos_withCompletion___block_invoke;
  v37[3] = &unk_2788C7A68;
  v37[4] = self;
  v37[5] = a2;
  [v17 setPerRecordSaveBlock:v37];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __60__SMCloudKitZone_saveRecords_toDatabase_qos_withCompletion___block_invoke_87;
  v34[3] = &unk_2788C7A90;
  v34[4] = self;
  v36 = a2;
  v35 = v15;
  [v17 setModifyRecordsCompletionBlock:v34];
  [databaseCopy addOperation:v17];

LABEL_21:
}

void __60__SMCloudKitZone_saveRecords_toDatabase_qos_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__SMCloudKitZone_saveRecords_toDatabase_qos_withCompletion___block_invoke_2;
  v13[3] = &unk_2788C4C70;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v16 = v6;
  v17 = v10;
  v11 = v6;
  v12 = v7;
  dispatch_async(v8, v13);
}

void __60__SMCloudKitZone_saveRecords_toDatabase_qos_withCompletion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      return;
    }

    v7 = objc_opt_class();
    v4 = NSStringFromClass(v7);
    v5 = NSStringFromSelector(*(a1 + 56));
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = 138413058;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,failed to save record with recordID %@ with error %@", &v10, 0x2Au);
LABEL_9:

    goto LABEL_3;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      goto LABEL_3;
    }

    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = NSStringFromSelector(*(a1 + 56));
    v6 = *(a1 + 48);
    v10 = 138412802;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,successfully saved records with recordID %@", &v10, 0x20u);
    goto LABEL_9;
  }
}

void __60__SMCloudKitZone_saveRecords_toDatabase_qos_withCompletion___block_invoke_87(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(*(a1 + 48));
    *buf = 138413314;
    v26 = v12;
    v27 = 2112;
    v28 = v13;
    v29 = 2112;
    v30 = v7;
    v31 = 2112;
    v32 = v8;
    v33 = 2112;
    v34 = v9;
    _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,modifyRecordsCompletionBlock called, savedRecords, %@, deletedRecordIDs, %@, operationError, %@", buf, 0x34u);
  }

  v14 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SMCloudKitZone_saveRecords_toDatabase_qos_withCompletion___block_invoke_88;
  block[3] = &unk_2788C47F8;
  v15 = *(a1 + 32);
  v21 = v9;
  v22 = v15;
  v19 = *(a1 + 40);
  v16 = v19;
  v24 = v19;
  v23 = v7;
  v17 = v7;
  v18 = v9;
  dispatch_async(v14, block);
}

uint64_t __60__SMCloudKitZone_saveRecords_toDatabase_qos_withCompletion___block_invoke_88(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v7 = objc_opt_class();
    v5 = NSStringFromClass(v7);
    v6 = NSStringFromSelector(*(a1 + 64));
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v8;
    _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,failed to save records with error %@", &v9, 0x20u);
LABEL_10:

    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    return (*(*(a1 + 56) + 16))();
  }

  v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromSelector(*(a1 + 64));
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,successfully saved all records", &v9, 0x16u);
    goto LABEL_10;
  }

LABEL_3:

  return (*(*(a1 + 56) + 16))();
}

- (void)saveRecordsWithRetry:(int64_t)retry records:(id)records toDatabase:(id)database qos:(id)qos withCompletion:(id)completion
{
  recordsCopy = records;
  databaseCopy = database;
  qosCopy = qos;
  completionCopy = completion;
  v17 = completionCopy;
  if (!databaseCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: database";
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_15;
  }

  if (!recordsCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: records";
    goto LABEL_14;
  }

  if (!completionCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: completion";
    goto LABEL_14;
  }

  if (!qosCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Invalid parameter not satisfying: qos";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  privateDatabase = [(SMCloudKitZone *)self privateDatabase];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__SMCloudKitZone_saveRecordsWithRetry_records_toDatabase_qos_withCompletion___block_invoke;
  v21[3] = &unk_2788C7AB8;
  v21[4] = self;
  v25 = a2;
  v24 = v17;
  retryCopy = retry;
  v22 = recordsCopy;
  v23 = qosCopy;
  [(SMCloudKitZone *)self saveRecords:v22 toDatabase:privateDatabase qos:v23 withCompletion:v21];

LABEL_16:
}

void __77__SMCloudKitZone_saveRecordsWithRetry_records_toDatabase_qos_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(*(a1 + 64));
      v17 = [*(a1 + 32) zoneID];
      v29 = 138412802;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v17;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,records saved successfully for zoneID %@", &v29, 0x20u);
    }

    goto LABEL_13;
  }

  if (![SMCloudKitZone shouldRetryCkError:v6])
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      (*(*(a1 + 56) + 16))();
      goto LABEL_14;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromSelector(*(a1 + 64));
    v21 = [*(a1 + 32) zoneID];
    v29 = 138413058;
    v30 = v19;
    v31 = 2112;
    v32 = v20;
    v33 = 2112;
    v34 = v21;
    v35 = 2112;
    v36 = v6;
    v22 = "#SafetyCache,%@,%@,failed to save records in zone with zoneID %@ with non recoverable error %@";
LABEL_16:
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, v22, &v29, 0x2Au);

    goto LABEL_13;
  }

  v7 = *(a1 + 72);
  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7 <= 0)
  {
    if (!v9)
    {
      goto LABEL_13;
    }

    v28 = objc_opt_class();
    v19 = NSStringFromClass(v28);
    v20 = NSStringFromSelector(*(a1 + 64));
    v21 = [*(a1 + 32) zoneID];
    v29 = 138413058;
    v30 = v19;
    v31 = 2112;
    v32 = v20;
    v33 = 2112;
    v34 = v21;
    v35 = 2112;
    v36 = v6;
    v22 = "#SafetyCache,%@,%@,failed to save records in zone with zoneID %@  after retries with recoverable error %@";
    goto LABEL_16;
  }

  if (v9)
  {
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = NSStringFromSelector(*(a1 + 64));
    v26 = [*(a1 + 32) zoneID];
    v27 = *(a1 + 72);
    v29 = 138413314;
    v30 = v24;
    v31 = 2112;
    v32 = v25;
    v33 = 2112;
    v34 = v26;
    v35 = 2112;
    v36 = v6;
    v37 = 1024;
    v38 = v27;
    _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to save records in zone with zoneID %@ with recoverable error %@, pendingRetryCount %d, retrying...", &v29, 0x30u);
  }

  v10 = *(a1 + 72) - 1;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = [v11 privateDatabase];
  [v11 saveRecordsWithRetry:v10 records:v12 toDatabase:v13 qos:*(a1 + 48) withCompletion:*(a1 + 56)];

LABEL_14:
}

- (void)fetchRecord:(id)record fromDatabase:(id)database qos:(id)qos withCompletion:(id)completion
{
  v44[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  databaseCopy = database;
  qosCopy = qos;
  completionCopy = completion;
  v15 = completionCopy;
  if (!databaseCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: database";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, v27, buf, 2u);
    goto LABEL_14;
  }

  if (!recordCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: recordID";
    goto LABEL_13;
  }

  if (!completionCopy)
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: completion";
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x277CBC3E0]);
  v44[0] = recordCopy;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
  v18 = [v16 initWithRecordIDs:v17];

  container = [(SMCloudKitZone *)self container];
  configuration = [v18 configuration];
  [configuration setContainer:container];

  [v18 setDatabase:databaseCopy];
  configuration2 = [v18 configuration];
  v39 = configuration2;
  [objc_opt_class() configureCloudKitQos:qosCopy configuration:&v39];
  v30 = v39;

  v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    v29 = NSStringFromClass(v23);
    v28 = NSStringFromSelector(a2);
    zoneID = [(SMCloudKitZone *)self zoneID];
    operationID = [v18 operationID];
    *buf = 138413058;
    *&buf[4] = v29;
    *&buf[12] = 2112;
    *&buf[14] = v28;
    *&buf[22] = 2112;
    v41 = zoneID;
    v42 = 2112;
    v43 = operationID;
    _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,zoneID,%@,created CKOperation ID, %@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v41) = 0;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __62__SMCloudKitZone_fetchRecord_fromDatabase_qos_withCompletion___block_invoke;
  v35[3] = &unk_2788C7AE0;
  v37 = buf;
  v38 = a2;
  v35[4] = self;
  v26 = v15;
  v36 = v26;
  [v18 setPerRecordCompletionBlock:v35];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __62__SMCloudKitZone_fetchRecord_fromDatabase_qos_withCompletion___block_invoke_91;
  v31[3] = &unk_2788C7900;
  v31[4] = self;
  v33 = buf;
  v34 = a2;
  v32 = v26;
  [v18 setFetchRecordsCompletionBlock:v31];
  [databaseCopy addOperation:v18];

  _Block_object_dispose(buf, 8);
LABEL_14:
}

void __62__SMCloudKitZone_fetchRecord_fromDatabase_qos_withCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SMCloudKitZone_fetchRecord_fromDatabase_qos_withCompletion___block_invoke_2;
  block[3] = &unk_2788C78B0;
  v9 = *(a1 + 32);
  v15 = v7;
  v16 = v9;
  v19 = *(a1 + 56);
  v17 = v6;
  v13 = *(a1 + 40);
  v10 = v13;
  v18 = v13;
  v11 = v6;
  v12 = v7;
  dispatch_async(v8, block);
}

void __62__SMCloudKitZone_fetchRecord_fromDatabase_qos_withCompletion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      goto LABEL_4;
    }

    v8 = objc_opt_class();
    v5 = NSStringFromClass(v8);
    v6 = NSStringFromSelector(*(a1 + 72));
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = 138413058;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,failed to fetch record error %@ for record %@", &v11, 0x2Au);
LABEL_11:

    goto LABEL_3;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      goto LABEL_3;
    }

    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = NSStringFromSelector(*(a1 + 72));
    v7 = *(a1 + 48);
    v11 = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,successfully fetch record %@", &v11, 0x20u);
    goto LABEL_11;
  }

LABEL_4:
  v3 = *(*(a1 + 64) + 8);
  if ((*(v3 + 24) & 1) == 0)
  {
    *(v3 + 24) = 1;
    (*(*(a1 + 56) + 16))();
  }
}

void __62__SMCloudKitZone_fetchRecord_fromDatabase_qos_withCompletion___block_invoke_91(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SMCloudKitZone_fetchRecord_fromDatabase_qos_withCompletion___block_invoke_2_92;
  block[3] = &unk_2788C5A48;
  v6 = *(a1 + 32);
  v11 = v4;
  v12 = v6;
  v14 = *(a1 + 56);
  v9 = *(a1 + 40);
  v7 = v9;
  v13 = v9;
  v8 = v4;
  dispatch_async(v5, block);
}

uint64_t __62__SMCloudKitZone_fetchRecord_fromDatabase_qos_withCompletion___block_invoke_2_92(uint64_t result)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v1 = result;
    if (*(result + 32))
    {
      v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v3 = objc_opt_class();
        v4 = NSStringFromClass(v3);
        v5 = NSStringFromSelector(*(v1 + 64));
        v6 = *(v1 + 32);
        v7 = 138412802;
        v8 = v4;
        v9 = 2112;
        v10 = v5;
        v11 = 2112;
        v12 = v6;
        _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to complete perRecordCompletionBlock with error %@", &v7, 0x20u);
      }

      *(*(*(v1 + 56) + 8) + 24) = 1;
      return (*(*(v1 + 48) + 16))();
    }
  }

  return result;
}

- (void)updateRecord:(id)record inDatabase:(id)database qos:(id)qos usingBlock:(id)block withCompletion:(id)completion
{
  recordCopy = record;
  databaseCopy = database;
  qosCopy = qos;
  blockCopy = block;
  completionCopy = completion;
  v18 = completionCopy;
  if (!databaseCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: database";
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    goto LABEL_15;
  }

  if (!recordCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: recordID";
    goto LABEL_14;
  }

  if (!blockCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v20 = "Invalid parameter not satisfying: block";
    goto LABEL_14;
  }

  if (!completionCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v20 = "Invalid parameter not satisfying: completion";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__SMCloudKitZone_updateRecord_inDatabase_qos_usingBlock_withCompletion___block_invoke;
  v21[3] = &unk_2788C7B30;
  v21[4] = self;
  v27 = a2;
  v22 = recordCopy;
  v25 = v18;
  v26 = blockCopy;
  v23 = databaseCopy;
  v24 = qosCopy;
  [(SMCloudKitZone *)self fetchRecord:v22 fromDatabase:v23 qos:v24 withCompletion:v21];

LABEL_16:
}

void __72__SMCloudKitZone_updateRecord_inDatabase_qos_usingBlock_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(*(a1 + 80));
      v17 = *(a1 + 40);
      v18 = [*(a1 + 32) zoneID];
      *buf = 138413314;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = v6;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to fetch record for recordID %@ for zoneID %@ with error %@", buf, 0x34u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v8 = *(a1 + 72);
    v24 = v5;
    (*(v8 + 16))();
    v9 = v24;

    v10 = *(a1 + 32);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__SMCloudKitZone_updateRecord_inDatabase_qos_usingBlock_withCompletion___block_invoke_93;
    v19[3] = &unk_2788C7B08;
    v13 = *(a1 + 80);
    v19[4] = v10;
    v23 = v13;
    v20 = *(a1 + 40);
    v5 = v9;
    v21 = v5;
    v22 = *(a1 + 64);
    [v10 saveRecord:v5 toDatabase:v11 qos:v12 withCompletion:v19];
  }
}

void __72__SMCloudKitZone_updateRecord_inDatabase_qos_usingBlock_withCompletion___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_3;
    }

    v13 = objc_opt_class();
    v9 = NSStringFromClass(v13);
    v10 = NSStringFromSelector(*(a1 + 64));
    v14 = *(a1 + 40);
    v12 = [*(a1 + 32) zoneID];
    v15 = 138413314;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v14;
    v21 = 2112;
    v22 = v12;
    v23 = 2112;
    v24 = v6;
    _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to save record for recordID %@ for zoneID %@ with error %@", &v15, 0x34u);
LABEL_9:

    goto LABEL_3;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    goto LABEL_4;
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(*(a1 + 64));
    v11 = *(a1 + 48);
    v12 = [*(a1 + 32) zoneID];
    v15 = 138413058;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,record %@ saved successfully for zoneID %@", &v15, 0x2Au);
    goto LABEL_9;
  }

LABEL_3:

LABEL_4:
  (*(*(a1 + 56) + 16))();
}

- (void)deleteRecords:(id)records fromDatabase:(id)database qos:(id)qos withCompletion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  databaseCopy = database;
  qosCopy = qos;
  completionCopy = completion;
  v15 = completionCopy;
  if (!databaseCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: database";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v27, buf, 2u);
    goto LABEL_14;
  }

  if (!recordsCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: recordIDs";
    goto LABEL_13;
  }

  if (!completionCopy)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: completion";
    goto LABEL_13;
  }

  v16 = [objc_alloc(MEMORY[0x277CBC4A0]) initWithRecordsToSave:0 recordIDsToDelete:recordsCopy];
  container = [(SMCloudKitZone *)self container];
  configuration = [v16 configuration];
  [configuration setContainer:container];

  [v16 setDatabase:databaseCopy];
  configuration2 = [v16 configuration];
  v35 = configuration2;
  [objc_opt_class() configureCloudKitQos:qosCopy configuration:&v35];
  v20 = v35;

  v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    NSStringFromSelector(a2);
    v24 = v29 = qosCopy;
    [(SMCloudKitZone *)self zoneID];
    v25 = v28 = a2;
    [v16 operationID];
    v26 = v30 = v20;
    *buf = 138413058;
    v37 = v23;
    v38 = 2112;
    v39 = v24;
    v40 = 2112;
    v41 = v25;
    v42 = 2112;
    v43 = v26;
    _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,zoneID,%@,created CKOperation ID, %@", buf, 0x2Au);

    v20 = v30;
    a2 = v28;

    qosCopy = v29;
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __64__SMCloudKitZone_deleteRecords_fromDatabase_qos_withCompletion___block_invoke;
  v34[3] = &unk_2788C7B58;
  v34[4] = self;
  v34[5] = a2;
  [v16 setPerRecordDeleteBlock:v34];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __64__SMCloudKitZone_deleteRecords_fromDatabase_qos_withCompletion___block_invoke_95;
  v31[3] = &unk_2788C7A90;
  v31[4] = self;
  v33 = a2;
  v32 = v15;
  [v16 setModifyRecordsCompletionBlock:v31];
  [databaseCopy addOperation:v16];

LABEL_14:
}

void __64__SMCloudKitZone_deleteRecords_fromDatabase_qos_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__SMCloudKitZone_deleteRecords_fromDatabase_qos_withCompletion___block_invoke_2;
  v12[3] = &unk_2788C4C70;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v7, v12);
}

void __64__SMCloudKitZone_deleteRecords_fromDatabase_qos_withCompletion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
LABEL_3:

      return;
    }

    v7 = objc_opt_class();
    v4 = NSStringFromClass(v7);
    v5 = NSStringFromSelector(*(a1 + 56));
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = 138413058;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_error_impl(&dword_2304B3000, v2, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,failed to delete record with recordID %@ with error %@", &v10, 0x2Au);
LABEL_9:

    goto LABEL_3;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      goto LABEL_3;
    }

    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = NSStringFromSelector(*(a1 + 56));
    v6 = *(a1 + 48);
    v10 = 138412802;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_2304B3000, v2, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,successfully deleted record with recordID %@", &v10, 0x20u);
    goto LABEL_9;
  }
}

void __64__SMCloudKitZone_deleteRecords_fromDatabase_qos_withCompletion___block_invoke_95(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SMCloudKitZone_deleteRecords_fromDatabase_qos_withCompletion___block_invoke_2_96;
  block[3] = &unk_2788C5110;
  v14 = v7;
  v15 = v6;
  v16 = *(a1 + 32);
  v12 = *(a1 + 40);
  v9 = v12;
  v17 = v12;
  v10 = v6;
  v11 = v7;
  dispatch_async(v8, block);
}

void __64__SMCloudKitZone_deleteRecords_fromDatabase_qos_withCompletion___block_invoke_2_96(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = NSStringFromSelector(*(a1 + 64));
        *buf = 138412546;
        v34 = v14;
        v35 = 2112;
        v36 = v15;
        _os_log_impl(&dword_2304B3000, v12, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,successfully deleted all records", buf, 0x16u);
      }
    }

    v16 = *(*(a1 + 56) + 16);
    goto LABEL_20;
  }

  if ([v2 code] != 2)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(*(a1 + 64));
      v24 = *(a1 + 32);
      *buf = 138412802;
      v34 = v22;
      v35 = 2112;
      v36 = v23;
      v37 = 2112;
      v38 = v24;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,Initiator,%@,%@,failed to delete one or more records with error %@", buf, 0x20u);
    }

    v16 = *(*(a1 + 56) + 16);
LABEL_20:
    v16();
    return;
  }

  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v29 + 1) + 8 * i);
        v11 = [v4 objectForKey:{v10, v29}];

        if (v11)
        {
          v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            v27 = NSStringFromSelector(*(a1 + 64));
            v28 = [v4 objectForKeyedSubscript:v10];
            *buf = 138413058;
            v34 = v26;
            v35 = 2112;
            v36 = v27;
            v37 = 2112;
            v38 = v10;
            v39 = 2112;
            v40 = v28;
            _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,Partial failure - Failed to delete record with record ID %@ with error %@", buf, 0x2Au);
          }

          v19 = *(a1 + 56);
          v20 = [v4 objectForKeyedSubscript:v10];
          (*(v19 + 16))(v19, 0, v20);

          goto LABEL_24;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v41 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:
}

- (void)removeShareParticipantsInConversation:(id)conversation qos:(id)qos withCompletion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  qosCopy = qos;
  completionCopy = completion;
  share = [(SMCloudKitZone *)self share];

  if (share)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        receiverPrimaryHandles = [conversationCopy receiverPrimaryHandles];
        *buf = 138412802;
        *&buf[4] = v15;
        *&buf[12] = 2112;
        *&buf[14] = v16;
        *&buf[22] = 2112;
        v41 = receiverPrimaryHandles;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,removing handles from share,%@", buf, 0x20u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v41 = __Block_byref_object_copy__31;
    v42 = __Block_byref_object_dispose__31;
    v43 = MEMORY[0x277CBEBF8];
    v18 = dispatch_group_create();
    dispatch_group_enter(v18);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __75__SMCloudKitZone_removeShareParticipantsInConversation_qos_withCompletion___block_invoke;
    v34[3] = &unk_2788C7B80;
    v36 = buf;
    v37 = a2;
    v34[4] = self;
    v19 = v18;
    v35 = v19;
    [(SMCloudKitZone *)self fetchShareParticipantsWithConversation:conversationCopy qos:qosCopy completion:v34];
    queue = [(SMCloudKitZone *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__SMCloudKitZone_removeShareParticipantsInConversation_qos_withCompletion___block_invoke_98;
    block[3] = &unk_2788C7950;
    block[4] = self;
    v30 = qosCopy;
    v32 = buf;
    v33 = a2;
    v31 = completionCopy;
    dispatch_group_notify(v19, queue, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v28;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,CloudKit zone share not set up", buf, 0x16u);
    }

    v22 = objc_alloc(MEMORY[0x277CCA9B8]);
    v38 = *MEMORY[0x277CCA450];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"CloudKit zone share has not been set up"];
    v39 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v25 = [v22 initWithDomain:*MEMORY[0x277D4ACD0] code:49 userInfo:v24];

    (*(completionCopy + 2))(completionCopy, 0, v25);
  }
}

void __75__SMCloudKitZone_removeShareParticipantsInConversation_qos_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a2 allKeys];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(*(a1 + 56));
      v10 = *(*(*(a1 + 48) + 8) + 40);
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "#SafetyCache,%@,%@,found participants to remove from share,%@", &v11, 0x20u);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void __75__SMCloudKitZone_removeShareParticipantsInConversation_qos_withCompletion___block_invoke_98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 share];
  v4 = [v3 recordID];
  v5 = [*(a1 + 32) privateDatabase];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__SMCloudKitZone_removeShareParticipantsInConversation_qos_withCompletion___block_invoke_2;
  v12[3] = &unk_2788C7BA8;
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v13 = *(a1 + 32);
  v14 = v7;
  v15 = v8;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SMCloudKitZone_removeShareParticipantsInConversation_qos_withCompletion___block_invoke_100;
  v9[3] = &unk_2788C7BD0;
  v9[4] = v13;
  v11 = v8;
  v10 = *(a1 + 48);
  [v2 updateRecord:v4 inDatabase:v5 qos:v6 usingBlock:v12 withCompletion:v9];
}

void __75__SMCloudKitZone_removeShareParticipantsInConversation_qos_withCompletion___block_invoke_2(uint64_t a1, id *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a1;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v19;
      v9 = MEMORY[0x277D86220];
      *&v6 = 138412802;
      v16 = v6;
      v17 = v3;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v13 = objc_opt_class();
              v14 = NSStringFromClass(v13);
              v15 = NSStringFromSelector(*(v3 + 48));
              *buf = v16;
              v23 = v14;
              v24 = 2112;
              v25 = v15;
              v26 = 2112;
              v27 = v11;
              _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "#SafetyCache,%@,%@,removing participant from share,%@", buf, 0x20u);

              v3 = v17;
            }
          }

          [*a2 removeParticipant:{v11, v16}];
        }

        v7 = [v4 countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: recordPointer", buf, 2u);
    }
  }
}

void __75__SMCloudKitZone_removeShareParticipantsInConversation_qos_withCompletion___block_invoke_100(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = a2;
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 48));
      v11 = 138412802;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v5;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to remove participants with error,%@", &v11, 0x20u);
    }
  }

  else
  {
    [*(a1 + 32) setShare:a2];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)createNewInvitationTokensWithConversation:(id)conversation qos:(id)qos completion:(id)completion
{
  conversationCopy = conversation;
  qosCopy = qos;
  completionCopy = completion;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__SMCloudKitZone_createNewInvitationTokensWithConversation_qos_completion___block_invoke;
  v15[3] = &unk_2788C7C48;
  v18 = completionCopy;
  v19 = a2;
  v15[4] = self;
  v16 = conversationCopy;
  v17 = qosCopy;
  v12 = qosCopy;
  v13 = completionCopy;
  v14 = conversationCopy;
  [(SMCloudKitZone *)self fetchShareParticipantsWithConversation:v14 qos:v12 completion:v15];
}

void __75__SMCloudKitZone_createNewInvitationTokensWithConversation_qos_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  if (v7)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(*(a1 + 64));
      v29 = [*(a1 + 40) receiverHandles];
      v30 = [*(a1 + 32) zoneID];
      *buf = 138413314;
      v43 = v27;
      v44 = 2112;
      v45 = v28;
      v46 = 2112;
      v47 = v29;
      v48 = 2112;
      v49 = v30;
      v50 = 2112;
      v51 = v7;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to identify participants %@ for zoneID %@ with error %@", buf, 0x34u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277CBEB58]);
    v10 = [*(a1 + 40) receiverHandles];
    v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          v18 = [*(a1 + 32) share];
          [v18 removeParticipant:v17];

          v19 = [*(a1 + 32) share];
          [v19 addParticipant:v17];

          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v14);
    }

    v20 = *(a1 + 32);
    v21 = [v20 share];
    v22 = [*(a1 + 32) privateDatabase];
    v23 = *(a1 + 48);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __75__SMCloudKitZone_createNewInvitationTokensWithConversation_qos_completion___block_invoke_106;
    v32[3] = &unk_2788C7C20;
    v32[4] = *(a1 + 32);
    v31 = *(a1 + 56);
    v24 = v31;
    v36 = v31;
    v33 = *(a1 + 40);
    v34 = v11;
    v35 = v12;
    v25 = v11;
    [v20 saveRecord:v21 toDatabase:v22 qos:v23 withCompletion:v32];
  }
}

void __75__SMCloudKitZone_createNewInvitationTokensWithConversation_qos_completion___block_invoke_106(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v36 = a2;
  v35 = a3;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v5 = v4;
  if (v35)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = NSStringFromSelector(*(a1 + 72));
      v34 = [*(a1 + 32) zoneID];
      *buf = 138413058;
      *&buf[4] = v32;
      *&buf[12] = 2112;
      *&buf[14] = v33;
      *&buf[22] = 2112;
      v51 = v34;
      LOWORD(v52) = 2112;
      *(&v52 + 2) = v35;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed for zoneID %@ with error %@", buf, 0x2Au);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 72));
      v9 = [*(a1 + 32) zoneID];
      *buf = 138412802;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v51 = v9;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,record saved successfully for zoneID %@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v51 = __Block_byref_object_copy__31;
    *&v52 = __Block_byref_object_dispose__31;
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = [*(a1 + 40) receiverHandles];
    *(&v52 + 1) = [v10 initWithCapacity:{objc_msgSend(v11, "count")}];

    v12 = [v36 participants];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __75__SMCloudKitZone_createNewInvitationTokensWithConversation_qos_completion___block_invoke_108;
    v45[3] = &unk_2788C7BF8;
    v46 = *(a1 + 48);
    v48 = buf;
    v47 = *(a1 + 40);
    [v12 enumerateObjectsUsingBlock:v45];

    [*(a1 + 32) setShare:v36];
    v13 = objc_alloc(MEMORY[0x277CBEB38]);
    v14 = [*(a1 + 40) receiverHandles];
    v39 = [v13 initWithCapacity:{objc_msgSend(v14, "count")}];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = *(*&buf[8] + 40);
    v15 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v15)
    {
      v38 = *v42;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v42 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          v18 = objc_alloc(MEMORY[0x277CBC2C0]);
          v19 = [v17 invitationToken];
          v20 = [v19 sharingInvitationData];
          v21 = [*(a1 + 32) share];
          v22 = [v21 URL];
          v23 = [v17 invitationToken];
          v24 = [v23 participantID];
          v25 = [v18 initWithSharingInvitationData:v20 shareURL:v22 participantID:v24];

          v26 = [*(a1 + 56) objectForKeyedSubscript:v17];
          v27 = [v26 primaryHandle];
          [v39 setObject:v25 forKeyedSubscript:v27];
        }

        v15 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v15);
    }

    v28 = [v39 copy];
    [*(a1 + 32) setInvitationTokenMap:v28];

    v29 = *(a1 + 64);
    v30 = [*(a1 + 32) invitationTokenMap];
    (*(v29 + 16))(v29, v30, 1, 0);

    _Block_object_dispose(buf, 8);
  }
}

void __75__SMCloudKitZone_createNewInvitationTokensWithConversation_qos_completion___block_invoke_108(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
    v6 = [*(*(*(a1 + 48) + 8) + 40) count];
    v7 = [*(a1 + 40) receiverHandles];
    v8 = [v7 count];

    if (v6 == v8)
    {
      *a4 = 1;
    }
  }
}

- (void)subscribeToZoneChangesInPrivateDatabaseWithQoS:(id)s completion:(id)completion
{
  v45[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v8 = MEMORY[0x277CBC618];
  sCopy = s;
  v10 = [v8 alloc];
  zoneID = [(SMCloudKitZone *)self zoneID];
  zoneSubscriptionID = [(SMCloudKitZone *)self zoneSubscriptionID];
  v13 = [v10 initWithZoneID:zoneID subscriptionID:zoneSubscriptionID];

  v14 = objc_alloc_init(MEMORY[0x277CBC4D0]);
  [v14 setShouldSendContentAvailable:1];
  [v13 setNotificationInfo:v14];
  v15 = objc_alloc(MEMORY[0x277CBC4B0]);
  v45[0] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  v17 = [v15 initWithSubscriptionsToSave:v16 subscriptionIDsToDelete:0];

  configuration = [v17 configuration];
  v36 = configuration;
  [objc_opt_class() configureCloudKitQos:sCopy configuration:&v36];

  v19 = v36;
  v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = NSStringFromSelector(a2);
    [(SMCloudKitZone *)self zoneID];
    v24 = v32 = a2;
    [v17 operationID];
    v31 = v14;
    v25 = v19;
    v26 = v13;
    v28 = v27 = completionCopy;
    *buf = 138413058;
    v38 = v22;
    v39 = 2112;
    v40 = v23;
    v41 = 2112;
    v42 = v24;
    v43 = 2112;
    v44 = v28;
    _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,zoneID,%@,created CKOperation ID, %@", buf, 0x2Au);

    completionCopy = v27;
    v13 = v26;
    v19 = v25;
    v14 = v31;

    a2 = v32;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __76__SMCloudKitZone_subscribeToZoneChangesInPrivateDatabaseWithQoS_completion___block_invoke;
  v33[3] = &unk_2788C7A90;
  v34 = completionCopy;
  v35 = a2;
  v33[4] = self;
  v29 = completionCopy;
  [v17 setModifySubscriptionsCompletionBlock:v33];
  privateDatabase = [(SMCloudKitZone *)self privateDatabase];
  [privateDatabase addOperation:v17];
}

void __76__SMCloudKitZone_subscribeToZoneChangesInPrivateDatabaseWithQoS_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(*(a1 + 48));
      v15 = [*(a1 + 32) zoneID];
      v16 = 138413058;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v5;
      _os_log_error_impl(&dword_2304B3000, v7, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed for zoneID %@ with error %@", &v16, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(*(a1 + 48));
    v11 = [*(a1 + 32) zoneID];
    v16 = 138413058;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = 0;
    _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,succeeded for zoneID %@ with error %@", &v16, 0x2Au);
  }

  (*(*(a1 + 40) + 16))();
}

+ (BOOL)shouldRetryCkError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:*MEMORY[0x277CBBF50]];

  v7 = 1;
  if (v5)
  {
    if ((v6 = [errorCopy code], v6 <= 0x24) && ((1 << v6) & 0x1BFFAF5FA2) != 0 || v6 - 110 < 3)
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CKRecordZoneID)zoneID
{
  v2 = [(SMCloudKitZone *)self zone];
  zoneID = [v2 zoneID];

  return zoneID;
}

- (NSString)zoneName
{
  zoneID = [(SMCloudKitZone *)self zoneID];
  zoneName = [zoneID zoneName];

  return zoneName;
}

- (NSString)zoneSubscriptionID
{
  zoneName = [(SMCloudKitZone *)self zoneName];
  v3 = [@"SMCloudKitSubscription-" stringByAppendingString:zoneName];

  return v3;
}

- (NSString)ownerName
{
  zoneID = [(SMCloudKitZone *)self zoneID];
  ownerName = [zoneID ownerName];

  return ownerName;
}

- (CKDatabase)privateDatabase
{
  container = [(SMCloudKitZone *)self container];
  privateCloudDatabase = [container privateCloudDatabase];

  return privateCloudDatabase;
}

- (CKDatabase)sharedDatabase
{
  container = [(SMCloudKitZone *)self container];
  sharedCloudDatabase = [container sharedCloudDatabase];

  return sharedCloudDatabase;
}

- (id)apsEnvironmentString
{
  v54[1] = *MEMORY[0x277D85DE8];
  v4 = xpc_copy_entitlement_for_self();
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__31;
  v44 = __Block_byref_object_dispose__31;
  v45 = 0;
  if (v4)
  {
    v5 = _CFXPCCreateCFObjectFromXPCObject();
    v6 = v41[5];
    v41[5] = v5;

    v7 = v41[5];
    if (v7)
    {
      if (![v7 compare:*MEMORY[0x277CBBFB8] options:1])
      {
        *v51 = 0;
        *&v51[8] = v51;
        *&v51[16] = 0x3032000000;
        v52 = __Block_byref_object_copy__31;
        *&v53 = __Block_byref_object_dispose__31;
        *(&v53 + 1) = dispatch_semaphore_create(0);
        container = [(SMCloudKitZone *)self container];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __38__SMCloudKitZone_apsEnvironmentString__block_invoke;
        v39[3] = &unk_2788C7C70;
        v39[4] = self;
        v39[5] = &v40;
        v39[6] = v51;
        v39[7] = a2;
        [container serverPreferredPushEnvironmentWithCompletionHandler:v39];

        v9 = *(*&v51[8] + 40);
        v10 = [MEMORY[0x277CBEAA8] now];
        v11 = dispatch_time(0, 3600000000000);
        if (dispatch_semaphore_wait(v9, v11))
        {
          v38 = [MEMORY[0x277CBEAA8] now];
          [v38 timeIntervalSinceDate:v10];
          v13 = v12;
          v14 = objc_opt_new();
          v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_26];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v17 = [callStackSymbols filteredArrayUsingPredicate:v15];
          firstObject = [v17 firstObject];

          [v14 submitToCoreAnalytics:firstObject type:1 duration:v13];
          v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_2304B3000, v19, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
          }

          v20 = MEMORY[0x277CCA9B8];
          v54[0] = *MEMORY[0x277CCA450];
          *buf = @"semaphore wait timeout";
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v54 count:1];
          v22 = [v20 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v21];

          if (v22)
          {
            v23 = v22;
          }
        }

        else
        {
          v22 = 0;
        }

        v24 = v22;
        if (v24)
        {
          v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = objc_opt_class();
            v27 = NSStringFromClass(v26);
            v28 = NSStringFromSelector(a2);
            zoneName = [(SMCloudKitZone *)self zoneName];
            *buf = 138412802;
            *&buf[4] = v27;
            v47 = 2112;
            v48 = v28;
            v49 = 2112;
            v50 = zoneName;
            _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEFAULT, "#SafetyCache,APSConnectionDelegate,%@,%@,zone,%@,Timeout getting server preferred push environment", buf, 0x20u);
          }
        }

        _Block_object_dispose(v51, 8);
      }
    }
  }

  v30 = v41[5];
  if (!v30)
  {
    v30 = *MEMORY[0x277CEE9F0];
  }

  v31 = v30;
  v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    v35 = NSStringFromSelector(a2);
    zoneName2 = [(SMCloudKitZone *)self zoneName];
    *v51 = 138413058;
    *&v51[4] = v34;
    *&v51[12] = 2112;
    *&v51[14] = v35;
    *&v51[22] = 2112;
    v52 = zoneName2;
    LOWORD(v53) = 2112;
    *(&v53 + 2) = v31;
    _os_log_impl(&dword_2304B3000, v32, OS_LOG_TYPE_DEFAULT, "#SafetyCache,APSConnectionDelegate,%@,%@,zone,%@,Using push environment %@", v51, 0x2Au);
  }

  _Block_object_dispose(&v40, 8);

  return v31;
}

void __38__SMCloudKitZone_apsEnvironmentString__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 56));
      v11 = [*(a1 + 32) zoneName];
      v15 = 138413058;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_DEFAULT, "#SafetyCache,APSConnectionDelegate,%@,%@,zone,%@,Error getting server preferred push environment %@", &v15, 0x2Au);
    }
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
  v14 = v5;

  dispatch_semaphore_signal(*(*(*(a1 + 48) + 8) + 40));
}

- (id)createPushConnection
{
  v23 = *MEMORY[0x277D85DE8];
  pushConnection = self->_pushConnection;
  if (!pushConnection)
  {
    v5 = objc_alloc(MEMORY[0x277CEEA10]);
    apsEnvironmentString = [(SMCloudKitZone *)self apsEnvironmentString];
    v7 = *MEMORY[0x277D4AC48];
    queue = [(SMCloudKitZone *)self queue];
    v9 = [v5 initWithEnvironmentName:apsEnvironmentString namedDelegatePort:v7 queue:queue];
    v10 = self->_pushConnection;
    self->_pushConnection = v9;

    [(APSConnection *)self->_pushConnection setDelegate:self];
    pushConnection = self->_pushConnection;
    if (!pushConnection)
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = NSStringFromSelector(a2);
        zoneName = [(SMCloudKitZone *)self zoneName];
        v17 = 138412802;
        v18 = v13;
        v19 = 2112;
        v20 = v14;
        v21 = 2112;
        v22 = zoneName;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEFAULT, "#SafetyCache,APSConnectionDelegate,%@,%@,zone,%@,Couldn't create push connection", &v17, 0x20u);
      }

      pushConnection = self->_pushConnection;
    }
  }

  return pushConnection;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  v24 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  tokenCopy = token;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    zoneName = [(SMCloudKitZone *)self zoneName];
    v14 = 138413314;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = zoneName;
    v20 = 2112;
    v21 = tokenCopy;
    v22 = 2112;
    v23 = connectionCopy;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "#SafetyCache,APSConnectionDelegate,%@,%@,zone,%@,Received public token %@ on connection %@", &v14, 0x34u);
  }
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  v34 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    zoneName = [(SMCloudKitZone *)self zoneName];
    v20 = 138413826;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    v24 = 2112;
    v25 = zoneName;
    v26 = 2112;
    v27 = tokenCopy;
    v28 = 2112;
    v29 = topicCopy;
    v30 = 2112;
    v31 = identifierCopy;
    v32 = 2112;
    v33 = connectionCopy;
    _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "#SafetyCache,APSConnectionDelegate,%@,%@,zone,%@,Received per-topic push token %@ for topic %@ identifier %@ on connection %@", &v20, 0x48u);
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v8 = [MEMORY[0x277CBC4C0] notificationFromRemoteNotificationDictionary:userInfo];
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = NSStringFromSelector(a2);
    zoneName = [(SMCloudKitZone *)self zoneName];
    topic = [messageCopy topic];
    v21 = 138413314;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = zoneName;
    v27 = 2112;
    v28 = topic;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEFAULT, "#SafetyCache,APSConnectionDelegate,%@,%@,zone,%@,\nAPS Push received: %@ %@", &v21, 0x34u);
  }

  subscriptionID = [v8 subscriptionID];
  zoneSubscriptionID = [(SMCloudKitZone *)self zoneSubscriptionID];
  v17 = [subscriptionID isEqualToString:zoneSubscriptionID];

  if (v17)
  {
    zoneUpdateHandler = [(SMCloudKitZone *)self zoneUpdateHandler];

    if (zoneUpdateHandler)
    {
      zoneUpdateHandler2 = [(SMCloudKitZone *)self zoneUpdateHandler];
      zoneName2 = [(SMCloudKitZone *)self zoneName];
      (zoneUpdateHandler2)[2](zoneUpdateHandler2, zoneName2);
    }
  }
}

- (void)registerForZoneUpdatesWithHandler:(id)handler
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA8D8];
  handlerCopy = handler;
  mainBundle = [v5 mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (![bundleIdentifier length])
  {
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    executablePath = [mainBundle2 executablePath];
    lastPathComponent = [executablePath lastPathComponent];

    bundleIdentifier = lastPathComponent;
  }

  v12 = [@"com.apple.icloud-container." stringByAppendingString:bundleIdentifier];
  createPushConnection = [(SMCloudKitZone *)self createPushConnection];
  v26[0] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  [(APSConnection *)self->_pushConnection _setOpportunisticTopics:v14];

  [(SMCloudKitZone *)self setZoneUpdateHandler:handlerCopy];
  v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    zoneName = [(SMCloudKitZone *)self zoneName];
    v20 = 138412802;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    v24 = 2112;
    v25 = zoneName;
    _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "#SafetyCache,APSConnectionDelegate,%@,%@,zone,%@", &v20, 0x20u);
  }
}

- (void)deregisterForZoneUpdates
{
  v17 = *MEMORY[0x277D85DE8];
  pushConnection = self->_pushConnection;
  if (pushConnection)
  {
    [(APSConnection *)pushConnection _setOpportunisticTopics:0];
    [(APSConnection *)self->_pushConnection shutdown];
    v5 = self->_pushConnection;
    self->_pushConnection = 0;

    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      zoneName = [(SMCloudKitZone *)self zoneName];
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = zoneName;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEFAULT, "#SafetyCache,APSConnectionDelegate,%@,%@,zone,%@", &v11, 0x20u);
    }
  }

  [(SMCloudKitZone *)self setZoneUpdateHandler:0];
}

@end