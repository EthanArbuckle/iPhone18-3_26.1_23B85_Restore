@interface CBIDSManager
+ (id)sharedInstance;
- (BOOL)allDevicesStarSky;
- (BOOL)isLegacyDevice:(id)device;
- (BOOL)shouldUpgradeToManatee;
- (BOOL)validateKeys:(id)keys requestedTypes:(id)types from:(id)from;
- (BOOL)validateMessage:(id)message from:(id)from;
- (CBIDSManager)init;
- (NSArray)idsDevices;
- (id)_fetchArrayOfCloudDevicesForPeripheral:(id)peripheral;
- (id)_fetchCloudPairingIdentifierForPeripheral:(id)peripheral;
- (id)_statedumpAndRecordDailyMetric;
- (id)deviceForIDSDevice:(id)device createNew:(BOOL)new;
- (id)filteredDevicesForIDSDevices:(id)devices;
- (id)idsDeviceForBTAddress:(id)address;
- (id)publicAddressForIDSDevice:(id)device;
- (id)statedumpAndRecordDailyMetric;
- (unint64_t)roleWithDevice:(id)device;
- (void)_sendRePairRequest:(id)request forBundleID:(id)d;
- (void)checkFirstUnlockForIDS;
- (void)cloudPairingCompletedWithResponse:(id)response localKeys:(id)keys from:(id)from forProtocolID:(id)d;
- (void)connectionUpdatedForBluetoothIdentifier:(id)identifier connected:(BOOL)connected;
- (void)fetchCloudPairingIdentifierForPeripheral:(id)peripheral withCompletion:(id)completion;
- (void)fetchIDSDevicesWithCompletion:(id)completion;
- (void)fetchPublicAddressWithCompletion:(id)completion;
- (void)generateKeyDictForTypes:(id)types keyLength:(unint64_t)length forAddress:(id)address withCompletion:(id)completion;
- (void)handleCloudPairingMessage:(id)message from:(id)from;
- (void)handleInitiatorPairingKeys:(id)keys from:(id)from forProtocolID:(id)d;
- (void)handleKeyDistribution:(id)distribution from:(id)from;
- (void)handlePairingFailure:(id)failure from:(id)from;
- (void)handlePairingRequest:(id)request from:(id)from;
- (void)handlePairingResponse:(id)response from:(id)from;
- (void)handleRepairRequest:(id)request from:(id)from;
- (void)handleResponderPairingKeys:(id)keys from:(id)from forProtocolID:(id)d;
- (void)handleSecurityRequest:(id)request from:(id)from;
- (void)handleUnpairCommand:(id)command from:(id)from;
- (void)initializeIDS;
- (void)initiatePairing:(id)pairing;
- (void)initiatePairingAgainIfNoAckReceived:(id)received attempt:(unint64_t)attempt;
- (void)retryIDSSetup;
- (void)sendCloudPairingResponseMessage:(id)message toDevice:(id)device version:(id)version;
- (void)sendErrorMessageToDevice:(id)device reason:(id)reason;
- (void)sendInitialPairingIDSMessage:(id)message forDevice:(id)device withRole:(unint64_t)role;
- (void)sendRePairCloudPairingMessage:(id)message toDevice:(id)device bundleID:(id)d;
- (void)sendRePairRequest:(id)request forBundleID:(id)d;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)service:(id)service devicesChanged:(id)changed;
- (void)storePublicAddressMapping:(id)mapping message:(id)message;
- (void)updateActiveAccount:(id)account;
- (void)updateCloudPairings:(id)pairings newDevices:(id)devices;
- (void)validateCloudPairing:(id)pairing;
- (void)xpcUpdateCloudPairings:(id)pairings;
@end

@implementation CBIDSManager

+ (id)sharedInstance
{
  if (qword_1002FA118 != -1)
  {
    sub_1001EF7CC();
  }

  v3 = qword_1002FA110;

  return v3;
}

- (CBIDSManager)init
{
  v12.receiver = self;
  v12.super_class = CBIDSManager;
  v2 = [(CBIDSManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.bluetooth.cloudpairing", v3);
    [(CBIDSManager *)v2 setCloudPairingQueue:v4];

    LODWORD(v4) = +[BTSystemConfiguration isBuddyComplete];
    v5 = sub_100005C14("CloudPairing");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS BYSetupAssistantNeedsToRun : false ", buf, 2u);
      }

      [(CBIDSManager *)v2 checkFirstUnlockForIDS];
    }

    else
    {
      if (v6)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS BYSetupAssistantNeedsToRun : true ", buf, 2u);
      }

      objc_initWeak(buf, v2);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10007EBC4;
      v9[3] = &unk_1002B9618;
      objc_copyWeak(&v10, buf);
      v7 = [BTStateWatcher monitorBuddyStateWithAction:v9];
      [(CBIDSManager *)v2 setBuddyStateWatcher:v7];

      objc_destroyWeak(&v10);
      objc_destroyWeak(buf);
    }
  }

  return v2;
}

- (void)checkFirstUnlockForIDS
{
  v3 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = +[BTSystemConfiguration isFirstUnlocked];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "First Unlock Check: %i", &buf, 8u);
  }

  if (+[BTSystemConfiguration isFirstUnlocked])
  {
    cloudPairingQueue = [(CBIDSManager *)self cloudPairingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007EE98;
    block[3] = &unk_1002B6880;
    block[4] = self;
    dispatch_async(cloudPairingQueue, block);
  }

  else
  {
    objc_initWeak(&buf, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10007EEA0;
    v6[3] = &unk_1002B8218;
    v6[4] = self;
    objc_copyWeak(&v7, &buf);
    v5 = [BTStateWatcher monitorFirstUnlockWithAction:v6];
    [(CBIDSManager *)self setFirstUnlockStateWatcher:v5];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&buf);
  }
}

- (void)initializeIDS
{
  service = [(CBIDSManager *)self service];

  if (service)
  {
    v4 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Already initialized IDS", buf, 2u);
    }
  }

  else
  {
    [(CBIDSManager *)self setLocalDeviceRandomAddress:0];
    v5 = +[NSMutableSet set];
    [(CBIDSManager *)self setUnpairedIDSCloudIdentifiers:v5];

    v6 = +[CBPreferencesManager deviceName];
    [(CBIDSManager *)self setLocalDeviceName:v6];

    v7 = [[NSArray alloc] initWithObjects:{@"EncryptionKeys", @"IdentityKeys", 0}];
    [(CBIDSManager *)self setRequestedKeyTypes:v7];

    v8 = IDSCopyLocalDeviceUniqueID();
    [(CBIDSManager *)self setCloudIdentifier:v8];

    v9 = +[NSMutableDictionary dictionary];
    [(CBIDSManager *)self setMessageIdentifiersWaitingForAck:v9];

    v10 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      cloudIdentifier = [(CBIDSManager *)self cloudIdentifier];
      localDeviceName = [(CBIDSManager *)self localDeviceName];
      *buf = 138412802;
      v24 = cloudIdentifier;
      v25 = 2112;
      v26 = &off_1002CB7F8;
      v27 = 2112;
      v28 = localDeviceName;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "initializeIDS (%@) checkIn version: %@, local name: %@", buf, 0x20u);
    }

    cloudIdentifier2 = [(CBIDSManager *)self cloudIdentifier];
    if (cloudIdentifier2 && (v14 = cloudIdentifier2, [(CBIDSManager *)self localDeviceName], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
    {
      v16 = +[CloudXPCService sharedInstance];
      v21[0] = @"kCheckInVersion";
      v21[1] = @"kIDSLocalDeviceUniqueID";
      v22[0] = &off_1002CB7F8;
      cloudIdentifier3 = [(CBIDSManager *)self cloudIdentifier];
      v22[1] = cloudIdentifier3;
      v18 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_10007F37C;
      v20[3] = &unk_1002B9640;
      v20[4] = self;
      [v16 sendCloudKitMsg:@"checkIn" args:v18 withReply:v20];
    }

    else
    {
      v19 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1001EF7E0();
      }

      [(CBIDSManager *)self retryIDSSetup];
    }
  }
}

- (void)retryIDSSetup
{
  v3 = dispatch_time(0, 30000000000);
  cloudPairingQueue = [(CBIDSManager *)self cloudPairingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FB48;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_after(v3, cloudPairingQueue, block);
}

- (void)validateCloudPairing:(id)pairing
{
  pairingCopy = pairing;
  v50 = +[NSMutableArray array];
  associatedDevices = [(CBIDSManager *)self associatedDevices];
  v51 = [NSMutableArray arrayWithArray:associatedDevices];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  selfCopy = self;
  obj = [(CBIDSManager *)self associatedDevices];
  v6 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v6)
  {
    v7 = v6;
    v48 = v57;
    v8 = *v61;
    v53 = *v61;
    v49 = pairingCopy;
    do
    {
      v9 = 0;
      v52 = v7;
      do
      {
        if (*v61 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v60 + 1) + 8 * v9);
        idsDevice = [v10 idsDevice];
        nsuuid = [idsDevice nsuuid];

        if (nsuuid)
        {
          idsDevice2 = [v10 idsDevice];
          nsuuid2 = [idsDevice2 nsuuid];
          uUIDString = [nsuuid2 UUIDString];
          v16 = [pairingCopy objectForKey:uUIDString];

          if (-[NSObject length](v16, "length") && ([v10 idsDevice], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "uniqueID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = -[NSObject isEqualToString:](v16, "isEqualToString:", v18), v18, v17, v19))
          {
            v20 = sub_100005C14("CloudPairing");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              idsDevice3 = [v10 idsDevice];
              nsuuid3 = [idsDevice3 nsuuid];
              *buf = 138412546;
              v68 = nsuuid3;
              v69 = 2112;
              v70 = v16;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ is already cloud paired with IDS Device: %@", buf, 0x16u);
            }

            [v50 addObject:v16];
          }

          else
          {
            idsDevice4 = [v10 idsDevice];
            nsuuid4 = [idsDevice4 nsuuid];
            v25 = [(CBIDSManager *)selfCopy _fetchArrayOfCloudDevicesForPeripheral:nsuuid4];

            if (-[NSObject length](v16, "length") && [v25 count] >= 2)
            {
              v56[0] = _NSConcreteStackBlock;
              v56[1] = 3221225472;
              v57[0] = sub_10008026C;
              v57[1] = &unk_1002B9668;
              v57[2] = v10;
              v16 = v16;
              v58 = v16;
              v59 = v51;
              [v25 enumerateObjectsUsingBlock:v56];
            }

            else
            {
              idsDevice5 = [v10 idsDevice];
              nsuuid5 = [idsDevice5 nsuuid];
              v30 = [(CBIDSManager *)selfCopy _fetchCloudPairingIdentifierForPeripheral:nsuuid5];

              if (v30)
              {
                v31 = sub_100005C14("CloudPairing");
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  idsDevice6 = [v10 idsDevice];
                  nsuuid6 = [idsDevice6 nsuuid];
                  idsDevice7 = [v10 idsDevice];
                  uniqueID = [idsDevice7 uniqueID];
                  *buf = 138412546;
                  v68 = nsuuid6;
                  v69 = 2112;
                  v70 = uniqueID;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Removing stale LE Cloud Paired Device %@ is already cloud paired with IDS Device: %@", buf, 0x16u);
                }

                v36 = +[CloudXPCService sharedInstance];
                v65 = @"kCloudDeviceID";
                idsDevice8 = [v10 idsDevice];
                nsuuid7 = [idsDevice8 nsuuid];
                uUIDString2 = [nsuuid7 UUIDString];
                v66 = uUIDString2;
                v40 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
                [v36 sendCloudKitMsg:@"RemoveStaleLEPairedDevice" args:v40];

                idsDevice9 = [v10 idsDevice];
                [idsDevice9 setNSUUID:0];

                [v51 removeObject:v10];
                idsDevice10 = [v10 idsDevice];
                uniqueID2 = [idsDevice10 uniqueID];
                v64 = uniqueID2;
                v44 = [NSArray arrayWithObjects:&v64 count:1];
                v45 = +[NSBundle mainBundle];
                bundleIdentifier = [v45 bundleIdentifier];
                [(CBIDSManager *)selfCopy sendRePairRequest:v44 forBundleID:bundleIdentifier];

                pairingCopy = v49;
                v8 = v53;
              }

              v7 = v52;
            }
          }
        }

        else
        {
          v16 = sub_100005C14("CloudPairing");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            idsDevice11 = [v10 idsDevice];
            uniqueID3 = [idsDevice11 uniqueID];
            *buf = 138412290;
            v68 = uniqueID3;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%@ is not cloud paired with IDS Device", buf, 0xCu);

            v8 = v53;
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
    }

    while (v7);
  }

  _statedumpAndRecordDailyMetric = [(CBIDSManager *)selfCopy _statedumpAndRecordDailyMetric];
  [(CBIDSManager *)selfCopy updateCloudPairings:v50 newDevices:v51];
}

- (void)fetchPublicAddressWithCompletion:(id)completion
{
  completionCopy = completion;
  publicAddress = [(CBIDSManager *)self publicAddress];

  v6 = sub_100005C14("CloudPairing");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (publicAddress)
  {
    if (v7)
    {
      publicAddress2 = [(CBIDSManager *)self publicAddress];
      *buf = 138412290;
      v13 = publicAddress2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "have public address: %@", buf, 0xCu);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "fetch public address", buf, 2u);
    }

    v9 = +[CloudXPCService sharedInstance];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000805D8;
    v10[3] = &unk_1002B9690;
    v10[4] = self;
    v11 = completionCopy;
    [v9 sendCloudKitMsg:@"FetchPublicAddress" args:&__NSDictionary0__struct withReply:v10];
  }
}

- (void)xpcUpdateCloudPairings:(id)pairings
{
  pairingsCopy = pairings;
  cloudPairingQueue = [(CBIDSManager *)self cloudPairingQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100080924;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = pairingsCopy;
  v6 = pairingsCopy;
  dispatch_async(cloudPairingQueue, v7);
}

- (void)connectionUpdatedForBluetoothIdentifier:(id)identifier connected:(BOOL)connected
{
  connectedCopy = connected;
  identifierCopy = identifier;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  associatedDevices = [(CBIDSManager *)self associatedDevices];
  v7 = [associatedDevices countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(associatedDevices);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        idsDevice = [v11 idsDevice];
        nsuuid = [idsDevice nsuuid];
        uUIDString = [nsuuid UUIDString];
        v15 = [uUIDString isEqualToString:identifierCopy];

        if (v15)
        {
          v16 = sub_100005C14("CloudPairing");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = "no";
            if (connectedCopy)
            {
              v17 = "yes";
            }

            *buf = 138412546;
            v24 = v11;
            v25 = 2080;
            v26 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Connection updated for device: %@, connected: %s", buf, 0x16u);
          }

          [v11 setIsConnected:connectedCopy];
          goto LABEL_15;
        }
      }

      v8 = [associatedDevices countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (void)updateCloudPairings:(id)pairings newDevices:(id)devices
{
  pairingsCopy = pairings;
  devicesCopy = devices;
  v8 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v139 = pairingsCopy;
    *&v139[8] = 2112;
    *v140 = devicesCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MUC - updateCloudPairings, ids: %@, devices: %@", buf, 0x16u);
  }

  publicAddress = [(CBIDSManager *)self publicAddress];

  if (publicAddress)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v103 = devicesCopy;
    obj = devicesCopy;
    v106 = pairingsCopy;
    selfCopy = self;
    v112 = [obj countByEnumeratingWithState:&v130 objects:v141 count:16];
    if (!v112)
    {
      goto LABEL_38;
    }

    v111 = *v131;
    while (1)
    {
      for (i = 0; i != v112; i = i + 1)
      {
        if (*v131 != v111)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v130 + 1) + 8 * i);
        idsDevice = [v11 idsDevice];
        uniqueID = [idsDevice uniqueID];
        v14 = [pairingsCopy indexOfObject:uniqueID];

        messageIdentifiersWaitingForAck = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
        v129[0] = _NSConcreteStackBlock;
        v129[1] = 3221225472;
        v129[2] = sub_100081C00;
        v129[3] = &unk_1002B96B8;
        v129[4] = v11;
        v129[5] = self;
        v16 = [messageIdentifiersWaitingForAck keysOfEntriesPassingTest:v129];

        if ([v16 count])
        {
          v17 = [v16 count] < 3;
        }

        else
        {
          v17 = 0;
        }

        v114 = v17;
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_20:
          service = [(CBIDSManager *)self service];
          canSend = [service canSend];

          if (canSend)
          {
            unpairedIDSCloudIdentifiers = [(CBIDSManager *)self unpairedIDSCloudIdentifiers];
            idsDevice2 = [v11 idsDevice];
            uniqueID2 = [idsDevice2 uniqueID];
            [unpairedIDSCloudIdentifiers addObject:uniqueID2];

            v30 = sub_100005C14("CloudPairing");
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = v14 == 0x7FFFFFFFFFFFFFFFLL;
              if ([v16 count])
              {
                v32 = "again ";
              }

              else
              {
                v32 = "";
              }

              idsDevice3 = [v11 idsDevice];
              nsuuid = [idsDevice3 nsuuid];
              v35 = [v11 description];
              uTF8String = [v35 UTF8String];
              *buf = 136315907;
              *v139 = v32;
              *&v139[8] = 1024;
              *v140 = v31;
              *&v140[4] = 2112;
              *&v140[6] = nsuuid;
              *&v140[14] = 2081;
              *&v140[16] = uTF8String;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Initiating pairing %swith unpaired IDS device [New: %i] (BT UUID: %@) %{private}s", buf, 0x26u);
            }

            self = selfCopy;
            if (v114)
            {
              -[CBIDSManager initiatePairingAgainIfNoAckReceived:attempt:](selfCopy, "initiatePairingAgainIfNoAckReceived:attempt:", v11, [v16 count]);
            }

            else
            {
              [(CBIDSManager *)selfCopy initiatePairing:v11];
            }
          }

          else
          {
            v37 = sub_100005C14("CloudPairing");
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              idsDevice4 = [v11 idsDevice];
              nsuuid2 = [idsDevice4 nsuuid];
              v40 = [v11 description];
              uTF8String2 = [v40 UTF8String];
              *buf = 138412547;
              *v139 = nsuuid2;
              *&v139[8] = 2081;
              *v140 = uTF8String2;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "IDS not ready cannot initiate pairing with IDS device (BT UUID: %@) %{private}s", buf, 0x16u);

              self = selfCopy;
            }
          }

          goto LABEL_36;
        }

        idsDevice5 = [v11 idsDevice];
        nsuuid3 = [idsDevice5 nsuuid];
        if (nsuuid3)
        {
          idsDevice6 = [v11 idsDevice];
          uniqueID3 = [idsDevice6 uniqueID];
          v20 = [(CBIDSManager *)self publicAddressForIDSDevice:?];
          if (v20)
          {
            v21 = 0;
            goto LABEL_19;
          }

          v108 = 0;
        }

        unpairedIDSCloudIdentifiers2 = [(CBIDSManager *)self unpairedIDSCloudIdentifiers];
        idsDevice7 = [v11 idsDevice];
        uniqueID4 = [idsDevice7 uniqueID];
        v21 = [unpairedIDSCloudIdentifiers2 containsObject:uniqueID4] ^ 1 | v17;

        if (nsuuid3)
        {
          pairingsCopy = v106;
          self = selfCopy;
          v20 = v108;
LABEL_19:
          v108 = v20;

          if (v21)
          {
            goto LABEL_20;
          }

          goto LABEL_33;
        }

        pairingsCopy = v106;
        self = selfCopy;
        if (v21)
        {
          goto LABEL_20;
        }

LABEL_33:
        v42 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          idsDevice8 = [v11 idsDevice];
          uniqueID5 = [idsDevice8 uniqueID];
          v43 = [pairingsCopy indexOfObject:uniqueID5] != 0x7FFFFFFFFFFFFFFFLL;
          unpairedIDSCloudIdentifiers3 = [(CBIDSManager *)self unpairedIDSCloudIdentifiers];
          idsDevice9 = [v11 idsDevice];
          uniqueID6 = [idsDevice9 uniqueID];
          v46 = [unpairedIDSCloudIdentifiers3 containsObject:uniqueID6];
          idsDevice10 = [v11 idsDevice];
          nsuuid4 = [idsDevice10 nsuuid];
          v49 = [v11 description];
          uTF8String3 = [v49 UTF8String];
          *buf = 67109891;
          *v139 = v43;
          *&v139[4] = 1024;
          *&v139[6] = v46;
          *v140 = 2112;
          *&v140[2] = nsuuid4;
          *&v140[10] = 2081;
          *&v140[12] = uTF8String3;
          _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Device paired or deffered pairing for IDS device [Old: %i - Cached: %i] (BT UUID: %@) %{private}s", buf, 0x22u);

          pairingsCopy = v106;
          self = selfCopy;
        }

LABEL_36:
      }

      v112 = [obj countByEnumeratingWithState:&v130 objects:v141 count:16];
      if (!v112)
      {
LABEL_38:

        if ([pairingsCopy count])
        {
          v51 = 0;
          do
          {
            v126[0] = _NSConcreteStackBlock;
            v126[1] = 3221225472;
            v126[2] = sub_100081D1C;
            v126[3] = &unk_1002B96E0;
            v52 = pairingsCopy;
            v127 = v52;
            v128 = v51;
            if ([obj indexOfObjectPassingTest:v126] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              associatedDevices = [(CBIDSManager *)selfCopy associatedDevices];
              v54 = [associatedDevices countByEnumeratingWithState:&v122 objects:v137 count:16];
              v55 = v52;
              v113 = v52;
              if (v54)
              {
                v56 = v54;
                v57 = *v123;
                while (2)
                {
                  for (j = 0; j != v56; j = j + 1)
                  {
                    if (*v123 != v57)
                    {
                      objc_enumerationMutation(associatedDevices);
                    }

                    v59 = *(*(&v122 + 1) + 8 * j);
                    v60 = [v55 objectAtIndexedSubscript:v51];
                    if (v60)
                    {
                      v61 = v60;
                      v62 = [v55 objectAtIndexedSubscript:v51];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass() & 1) != 0 && ([v59 isConnected])
                      {
                        idsDevice11 = [v59 idsDevice];
                        deviceType = [idsDevice11 deviceType];

                        if (deviceType == 5)
                        {
                          v93 = sub_100005C14("CloudPairing");
                          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                          {
                            v95 = [v55 objectAtIndexedSubscript:v51];
                            *buf = 138412290;
                            *v139 = v95;
                            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Skip telling btd to remove ATV that maybe in setup: %@", buf, 0xCu);
                          }

                          pairingsCopy = v106;
                          goto LABEL_77;
                        }
                      }

                      else
                      {
                      }
                    }
                  }

                  v56 = [associatedDevices countByEnumeratingWithState:&v122 objects:v137 count:16];
                  if (v56)
                  {
                    continue;
                  }

                  break;
                }
              }

              v65 = sub_100005C14("CloudPairing");
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                v66 = [v55 objectAtIndexedSubscript:v51];
                *buf = 138412290;
                *v139 = v66;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Unpairing IDS device %@ as it is no longer signed into our iCloud account", buf, 0xCu);
              }

              v120 = 0u;
              v121 = 0u;
              v118 = 0u;
              v119 = 0u;
              associatedDevices2 = [(CBIDSManager *)selfCopy associatedDevices];
              v67 = [associatedDevices2 countByEnumeratingWithState:&v118 objects:v136 count:16];
              if (v67)
              {
                v68 = v67;
                v69 = *v119;
                do
                {
                  for (k = 0; k != v68; k = k + 1)
                  {
                    if (*v119 != v69)
                    {
                      objc_enumerationMutation(associatedDevices2);
                    }

                    v71 = *(*(&v118 + 1) + 8 * k);
                    idsDevice12 = [v71 idsDevice];
                    uniqueID7 = [idsDevice12 uniqueID];
                    v74 = [v55 objectAtIndexedSubscript:v51];
                    v75 = [uniqueID7 isEqualToIgnoringCase:v74];

                    if (v75)
                    {
                      [v71 setState:0];
                      idsDevice13 = [v71 idsDevice];
                      uniqueID8 = [idsDevice13 uniqueID];
                      v78 = [(CBIDSManager *)selfCopy publicAddressForIDSDevice:uniqueID8];

                      if (v78)
                      {
                        v79 = sub_100005C14("CloudPairing");
                        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                        {
                          idsDevice14 = [v71 idsDevice];
                          uniqueID9 = [idsDevice14 uniqueID];
                          *buf = 138412546;
                          *v139 = v78;
                          *&v139[8] = 2112;
                          *v140 = uniqueID9;
                          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Removing address %@ for IDS device %@ as it is no longer signed into our iCloud account", buf, 0x16u);
                        }

                        cPAddressMapping = [(CBIDSManager *)selfCopy CPAddressMapping];
                        idsDevice15 = [v71 idsDevice];
                        uniqueID10 = [idsDevice15 uniqueID];
                        [cPAddressMapping removeObjectForKey:uniqueID10];

                        cPAddressMapping2 = [(CBIDSManager *)selfCopy CPAddressMapping];
                        [CBPreferencesManager setuserPreference:@"AddressMapping" value:cPAddressMapping2 sync:1];

                        v55 = v113;
                      }
                    }
                  }

                  v68 = [associatedDevices2 countByEnumeratingWithState:&v118 objects:v136 count:16];
                }

                while (v68);
              }

              v86 = [v55 objectAtIndexedSubscript:v51];
              pairingsCopy = v106;
              v52 = v55;
              if (v86)
              {
                v87 = v86;
                v88 = [v55 objectAtIndexedSubscript:v51];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  v90 = sub_100005C14("CloudPairing");
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                  {
                    v91 = [v113 objectAtIndexedSubscript:v51];
                    *buf = 138412290;
                    *v139 = v91;
                    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "Tell btd to remove this device: %@", buf, 0xCu);
                  }

                  associatedDevices = +[CloudXPCService sharedInstance];
                  v134 = @"kCloudDeviceUniqueID";
                  v93 = [v113 objectAtIndexedSubscript:v51];
                  v135 = v93;
                  v92 = [NSDictionary dictionaryWithObjects:&v135 forKeys:&v134 count:1];
                  [associatedDevices sendCloudKitMsg:@"RemoveCloudPairedDevice" args:v92];

LABEL_77:
                  v52 = v113;
                }
              }
            }

            ++v51;
          }

          while (v51 < [v52 count]);
        }

        v96 = [pairingsCopy count];
        devicesCopy = v103;
        if (v96 != [obj count])
        {
          account = [(CBIDSManager *)selfCopy account];
          if (account)
          {
            v98 = account;
            account2 = [(CBIDSManager *)selfCopy account];
            isActive = [account2 isActive];

            if (isActive)
            {
              _statedumpAndRecordDailyMetric = [(CBIDSManager *)selfCopy _statedumpAndRecordDailyMetric];
              if (IsAppleInternalBuild())
              {
                v102 = sub_100005C14("CloudPairing");
                if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v139 = _statedumpAndRecordDailyMetric;
                  _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
                }
              }

              goto LABEL_88;
            }
          }
        }

        goto LABEL_89;
      }
    }
  }

  _statedumpAndRecordDailyMetric = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(_statedumpAndRecordDailyMetric, OS_LOG_TYPE_ERROR))
  {
    sub_1001EFA38();
  }

LABEL_88:

LABEL_89:
}

- (void)updateActiveAccount:(id)account
{
  accountCopy = account;
  v5 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [accountCopy description];
    *buf = 136315394;
    uTF8String = [v6 UTF8String];
    v44 = 2048;
    v45 = [accountCopy count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MUC - updateActiveAccount - %s, count %lu", buf, 0x16u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = accountCopy;
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v35;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        if ([v13 isActive])
        {
          if ([v13 canSend])
          {
            loginID = [v13 loginID];

            if (loginID)
            {
              account = [(CBIDSManager *)self account];

              if (v13 == account)
              {
                v17 = sub_100005C14("CloudPairing");
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  account2 = [(CBIDSManager *)self account];
                  loginID2 = [account2 loginID];
                  uTF8String2 = [loginID2 UTF8String];
                  *buf = 136380675;
                  uTF8String = uTF8String2;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Local device is still associated with iCloud account %{private}s", buf, 0xCu);
                }

                v21 = v7;
                goto LABEL_32;
              }

              v16 = v10;
              v10 = v13;
            }

            else
            {
              v16 = sub_100005C14("CloudPairing");
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                sub_1001EFB3C(v38, v13);
              }
            }
          }

          else
          {
            v16 = sub_100005C14("CloudPairing");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_1001EFAD8(v39, v13);
            }
          }
        }

        else
        {
          v16 = sub_100005C14("CloudPairing");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1001EFA74(v40, v13);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v34 objects:v41 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

  [(CBIDSManager *)self setAccount:v10];
  account3 = [(CBIDSManager *)self account];

  v21 = sub_100005C14("CloudPairing");
  v23 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (account3)
  {
    if (v23)
    {
      account4 = [(CBIDSManager *)self account];
      loginID3 = [account4 loginID];
      uTF8String3 = [loginID3 UTF8String];
      cloudIdentifier = [(CBIDSManager *)self cloudIdentifier];
      uTF8String4 = [cloudIdentifier UTF8String];
      *buf = 136380931;
      uTF8String = uTF8String3;
      v44 = 2080;
      v45 = uTF8String4;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "MUC - Local device is now associated with iCloud account %{private}s and identifier %s", buf, 0x16u);
    }
  }

  else
  {
    if (v23)
    {
      cloudIdentifier2 = [(CBIDSManager *)self cloudIdentifier];
      uTF8String5 = [cloudIdentifier2 UTF8String];
      localDeviceRandomAddress = [(CBIDSManager *)self localDeviceRandomAddress];
      *buf = 136315394;
      uTF8String = uTF8String5;
      v44 = 2112;
      v45 = localDeviceRandomAddress;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "MUC - Local device %s is not associated with any iCloud accounts with RSA %@", buf, 0x16u);
    }

    [(CBIDSManager *)self setTotalCloudDeviceCount:0];
    unpairedIDSCloudIdentifiers = [(CBIDSManager *)self unpairedIDSCloudIdentifiers];
    [unpairedIDSCloudIdentifiers removeAllObjects];

    messageIdentifiersWaitingForAck = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    [messageIdentifiersWaitingForAck removeAllObjects];

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 postNotificationName:@"BTTotalIDSDeviceCountChanged" object:0 userInfo:&off_1002CBE78];
  }

LABEL_32:
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  changedCopy = changed;
  iCloudAccount = [service iCloudAccount];
  registrationStatus = [iCloudAccount registrationStatus];

  v9 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [changedCopy description];
    uTF8String = [v10 UTF8String];
    v12 = [changedCopy count];
    v13 = _IDSStringFromIDSRegistrationStatus();
    v14 = 136315906;
    v15 = uTF8String;
    v16 = 2048;
    v17 = v12;
    v18 = 1024;
    v19 = registrationStatus;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MUC - Active service accounts changed - %s, accounts %lu, R: %d, %@", &v14, 0x26u);
  }

  [(CBIDSManager *)self updateActiveAccount:changedCopy];
}

- (void)service:(id)service devicesChanged:(id)changed
{
  serviceCopy = service;
  changedCopy = changed;
  iCloudAccount = [serviceCopy iCloudAccount];
  registrationStatus = [iCloudAccount registrationStatus];

  v10 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = _IDSStringFromIDSRegistrationStatus();
    *buf = 134218498;
    v44 = registrationStatus;
    v45 = 2112;
    v46 = v11;
    v47 = 2112;
    v48 = changedCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MUC - devicesChanged, R: %ld, %@ - %@", buf, 0x20u);
  }

  if (-[CBIDSManager totalCloudDeviceCount](self, "totalCloudDeviceCount") >= 1 && ![changedCopy count] && registrationStatus <= 4)
  {
    v12 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001EFBDC(self);
    }

    goto LABEL_27;
  }

  cloudIdentifier = [(CBIDSManager *)self cloudIdentifier];

  if (cloudIdentifier || (v14 = IDSCopyLocalDeviceUniqueID(), [(CBIDSManager *)self setCloudIdentifier:v14], v14, [(CBIDSManager *)self cloudIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    account = [(CBIDSManager *)self account];
    if (!account)
    {
      accounts = [serviceCopy accounts];
      v18 = [accounts count];

      if (!v18)
      {
LABEL_16:
        v35 = serviceCopy;
        v21 = +[CloudXPCService sharedInstance];
        [v21 beginTransaction:@"IDSdevicesChanged"];

        v12 = [(CBIDSManager *)self filteredDevicesForIDSDevices:changedCopy];
        v22 = +[NSMutableArray array];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        associatedDevices = [(CBIDSManager *)self associatedDevices];
        v24 = [associatedDevices countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v37;
          do
          {
            v27 = 0;
            do
            {
              if (*v37 != v26)
              {
                objc_enumerationMutation(associatedDevices);
              }

              idsDevice = [*(*(&v36 + 1) + 8 * v27) idsDevice];
              uniqueID = [idsDevice uniqueID];
              [v22 addObject:uniqueID];

              v27 = v27 + 1;
            }

            while (v25 != v27);
            v25 = [associatedDevices countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v25);
        }

        [(CBIDSManager *)self updateCloudPairings:v22 newDevices:v12];
        [(CBIDSManager *)self setAssociatedDevices:v12];
        v30 = +[CloudXPCService sharedInstance];
        [v30 endTransaction:@"IDSdevicesChanged"];

        -[CBIDSManager setTotalCloudDeviceCount:](self, "setTotalCloudDeviceCount:", [changedCopy count] + 1);
        v31 = +[NSNotificationCenter defaultCenter];
        if (changedCopy)
        {
          v32 = changedCopy;
        }

        else
        {
          v32 = &__NSArray0__struct;
        }

        v40[0] = @"IDSDevices";
        v40[1] = @"TotalIDSDevices";
        v41[0] = v32;
        v33 = [NSNumber numberWithInteger:[(CBIDSManager *)self totalCloudDeviceCount]];
        v41[1] = v33;
        v34 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:2];
        [v31 postNotificationName:@"BTTotalIDSDeviceCountChanged" object:0 userInfo:v34];

        serviceCopy = v35;
        goto LABEL_27;
      }

      v19 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        accounts2 = [serviceCopy accounts];
        *buf = 138412290;
        v44 = accounts2;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No account but got devicesChanged, update account status - %@", buf, 0xCu);
      }

      account = [serviceCopy accounts];
      [(CBIDSManager *)self service:serviceCopy activeAccountsChanged:account];
    }

    goto LABEL_16;
  }

  v12 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1001EFBA0();
  }

LABEL_27:
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  identifierCopy = identifier;
  errorCopy = error;
  v12 = sub_100005C14("CloudPairing");
  v13 = v12;
  if (successCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      uTF8String = [identifierCopy UTF8String];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Message %s sent successfully", &v18, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001EFCA0(identifierCopy, errorCopy);
    }

    messageIdentifiersWaitingForAck = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    v13 = [messageIdentifiersWaitingForAck objectForKey:identifierCopy];

    idsDevice = [v13 idsDevice];
    v16 = [(CBIDSManager *)self deviceForIDSDevice:idsDevice createNew:0];

    [v16 setState:0];
    messageIdentifiersWaitingForAck2 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    [messageIdentifiersWaitingForAck2 removeObjectForKey:identifierCopy];
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d
{
  messageCopy = message;
  dCopy = d;
  v10 = +[CloudXPCService sharedInstance];
  [v10 beginTransaction:@"IDSincomingMessage"];

  service = [(CBIDSManager *)self service];
  v12 = [service deviceForFromID:dCopy];

  if (v12)
  {
    v13 = [(CBIDSManager *)self deviceForIDSDevice:v12 createNew:0];
    v14 = sub_100005C14("CloudPairing");
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138478083;
        v21 = v13;
        v22 = 2113;
        uTF8String2 = messageCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received message from IDS device %{private}@: %{private}@", &v20, 0x16u);
      }

      v16 = [messageCopy objectForKeyedSubscript:@"MessageType"];
      v17 = [@"CloudPairing" isEqualToString:v16];

      if (v17)
      {
        [(CBIDSManager *)self handleCloudPairingMessage:messageCopy from:v13];
      }

      else
      {
        v19 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1001EFD60(messageCopy);
        }
      }

      v15 = +[CloudXPCService sharedInstance];
      [v15 endTransaction:@"IDSincomingMessage"];
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001EFDF4(messageCopy);
    }

    goto LABEL_15;
  }

  v13 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    uTF8String = [dCopy UTF8String];
    v15 = [messageCopy description];
    v20 = 136315394;
    v21 = uTF8String;
    v22 = 2080;
    uTF8String2 = [v15 UTF8String];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to retrieve IDS device from destination %s - ignoring message %s", &v20, 0x16u);
LABEL_15:
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier fromID:(id)d hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  dCopy = d;
  service = [(CBIDSManager *)self service];
  v12 = [service deviceForFromID:dCopy];

  messageIdentifiersWaitingForAck = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
  v14 = [messageIdentifiersWaitingForAck objectForKey:identifierCopy];

  idsDevice = [v14 idsDevice];
  v16 = [(CBIDSManager *)self deviceForIDSDevice:idsDevice createNew:0];

  idsDevice2 = [v16 idsDevice];
  uniqueID = [idsDevice2 uniqueID];
  v19 = [NSString stringWithFormat:@"%@-RePairingRequest-%@", identifierCopy, uniqueID];

  if ([v16 state] == 2)
  {
    [v16 setState:3];
    v20 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [identifierCopy UTF8String];
      uniqueID2 = [v12 uniqueID];
      *buf = 136315394;
      v31 = uTF8String;
      v32 = 2080;
      uTF8String2 = [uniqueID2 UTF8String];
      v23 = "Pairing Request Message %s has been delivered to: %s";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);
    }
  }

  else if ([v16 state] == 4)
  {
    [v16 setState:5];
    v20 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String3 = [identifierCopy UTF8String];
      uniqueID2 = [v12 uniqueID];
      *buf = 136315394;
      v31 = uTF8String3;
      v32 = 2080;
      uTF8String2 = [uniqueID2 UTF8String];
      v23 = "Pairing Response Message %s has been delivered to: %s";
      goto LABEL_12;
    }
  }

  else
  {
    v20 = sub_100005C14("CloudPairing");
    v25 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (v25)
      {
        uTF8String4 = [identifierCopy UTF8String];
        uniqueID2 = [v12 uniqueID];
        *buf = 136315394;
        v31 = uTF8String4;
        v32 = 2080;
        uTF8String2 = [uniqueID2 UTF8String];
        v23 = "RePairing Message %s has been delivered to: %s";
        goto LABEL_12;
      }
    }

    else if (v25)
    {
      uTF8String5 = [identifierCopy UTF8String];
      uniqueID2 = [v12 uniqueID];
      *buf = 136315394;
      v31 = uTF8String5;
      v32 = 2080;
      uTF8String2 = [uniqueID2 UTF8String];
      v23 = "Message %s has been delivered to: %s";
      goto LABEL_12;
    }
  }

  messageIdentifiersWaitingForAck2 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
  [messageIdentifiersWaitingForAck2 removeObjectForKey:identifierCopy];

  messageIdentifiersWaitingForAck3 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
  [messageIdentifiersWaitingForAck3 removeObjectForKey:v19];
}

- (id)filteredDevicesForIDSDevices:(id)devices
{
  devicesCopy = devices;
  v5 = +[NSMutableArray array];
  v6 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    account = [(CBIDSManager *)self account];
    loginID = [account loginID];
    uTF8String = [loginID UTF8String];
    cloudIdentifier = [(CBIDSManager *)self cloudIdentifier];
    *buf = 136380931;
    v27 = uTF8String;
    v28 = 2080;
    *v29 = [cloudIdentifier UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Local device is associated with iCloud account %{private}s and identifier %s", buf, 0x16u);
  }

  v11 = objc_autoreleasePoolPush();
  v12 = MGCopyAnswer();
  v13 = [v12 isEqualToString:@"iPhone"];
  v14 = [v12 isEqualToString:@"Watch"];
  v15 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v27 = v12;
    v28 = 1024;
    *v29 = v13;
    *&v29[4] = 1024;
    *&v29[6] = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Local device is %@ isLocalDevicePhone=%d isLocalDeviceWatch=%d", buf, 0x18u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    cPAddressMapping = [(CBIDSManager *)self CPAddressMapping];
    *buf = 138412290;
    v27 = cPAddressMapping;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PublicAddressForIDSDevice: current mapping :%@", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100083390;
  v22[3] = &unk_1002B9708;
  v22[4] = self;
  v24 = v14;
  v25 = v13;
  v18 = v5;
  v23 = v18;
  [devicesCopy enumerateObjectsUsingBlock:v22];
  v19 = v23;
  v20 = v18;

  return v18;
}

- (id)deviceForIDSDevice:(id)device createNew:(BOOL)new
{
  newCopy = new;
  deviceCopy = device;
  associatedDevices = [(CBIDSManager *)self associatedDevices];

  if (!associatedDevices)
  {
    goto LABEL_3;
  }

  associatedDevices2 = [(CBIDSManager *)self associatedDevices];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100083E40;
  v18[3] = &unk_1002B9730;
  v19 = deviceCopy;
  v9 = [associatedDevices2 indexOfObjectPassingTest:v18];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CloudPaired Device found, returning it", v17, 2u);
    }

    associatedDevices3 = [(CBIDSManager *)self associatedDevices];
    v13 = [associatedDevices3 objectAtIndexedSubscript:v9];
  }

  else
  {
LABEL_3:
    v10 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "CloudPaired Device not found", v17, 2u);
    }

    v11 = sub_100005C14("CloudPairing");
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (newCopy)
    {
      if (v12)
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New CloudPaired Device created and returned", v17, 2u);
      }

      v13 = [CloudDevice deviceWithIDSDevice:deviceCopy];
    }

    else
    {
      if (v12)
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New CloudPaired Device will not be created", v17, 2u);
      }

      v13 = 0;
    }
  }

  return v13;
}

- (void)handleCloudPairingMessage:(id)message from:(id)from
{
  messageCopy = message;
  fromCopy = from;
  v8 = [messageCopy objectForKey:@"Version 3"];

  if (v8)
  {
    v9 = [messageCopy objectForKeyedSubscript:@"Version 3"];
    v10 = [v9 objectForKeyedSubscript:@"MessageType"];
    if ([@"InitiatorPairingKeys" isEqualToString:v10])
    {
      v11 = @"Version 3";
LABEL_7:
      [(CBIDSManager *)self handleInitiatorPairingKeys:v9 from:fromCopy forProtocolID:v11];
LABEL_16:

      goto LABEL_17;
    }

    if (![@"ResponderPairingKeys" isEqualToString:v10])
    {
      goto LABEL_16;
    }

    v13 = @"Version 3";
    goto LABEL_15;
  }

  v12 = [messageCopy objectForKey:@"Version 2"];

  if (v12)
  {
    v9 = [messageCopy objectForKeyedSubscript:@"Version 2"];
    v10 = [v9 objectForKeyedSubscript:@"MessageType"];
    if ([@"InitiatorPairingKeys" isEqualToString:v10])
    {
      v11 = @"Version 2";
      goto LABEL_7;
    }

    if (![@"ResponderPairingKeys" isEqualToString:v10])
    {
      goto LABEL_16;
    }

    v13 = @"Version 2";
LABEL_15:
    [(CBIDSManager *)self handleResponderPairingKeys:v9 from:fromCopy forProtocolID:v13];
    goto LABEL_16;
  }

  v14 = [messageCopy objectForKey:@"Version 1"];

  if (v14)
  {
    v9 = [messageCopy objectForKeyedSubscript:@"Version 1"];
    v10 = [v9 objectForKeyedSubscript:@"MessageType"];
    if ([@"SecurityRequest" isEqualToString:v10])
    {
      [(CBIDSManager *)self handleSecurityRequest:v9 from:fromCopy];
    }

    else if ([@"RepairRequest" isEqualToString:v10])
    {
      [(CBIDSManager *)self handleRepairRequest:v9 from:fromCopy];
    }

    else if ([@"PairingRequest" isEqualToString:v10])
    {
      [(CBIDSManager *)self handlePairingRequest:v9 from:fromCopy];
    }

    else if ([@"PairingResponse" isEqualToString:v10])
    {
      [(CBIDSManager *)self handlePairingResponse:v9 from:fromCopy];
    }

    else if ([@"KeyDistribution" isEqualToString:v10])
    {
      [(CBIDSManager *)self handleKeyDistribution:v9 from:fromCopy];
    }

    else if ([@"PairingFailure" isEqualToString:v10])
    {
      [(CBIDSManager *)self handlePairingFailure:v9 from:fromCopy];
    }

    else if ([@"UnpairCommand" isEqualToString:v10])
    {
      [(CBIDSManager *)self handleUnpairCommand:v9 from:fromCopy];
    }

    else if ([@"CloudKitFetch" isEqualToString:v10])
    {
      v16 = dispatch_time(0, 2000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000842EC;
      block[3] = &unk_1002B6880;
      block[4] = self;
      dispatch_after(v16, &_dispatch_main_q, block);
    }

    else
    {
      v17 = [@"ManateeKeysUpdated" isEqualToString:v10];
      v18 = sub_100005C14("CloudPairing");
      v19 = v18;
      if (v17)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "IDS: Manatee keys updated", v20, 2u);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1001EFE88(fromCopy, v10);
      }
    }

    goto LABEL_16;
  }

  v15 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1001EFF38(fromCopy);
  }

LABEL_17:
}

- (void)handleInitiatorPairingKeys:(id)keys from:(id)from forProtocolID:(id)d
{
  keysCopy = keys;
  fromCopy = from;
  dCopy = d;
  v71 = fromCopy;
  LOBYTE(d) = [(CBIDSManager *)self roleWithDevice:fromCopy]== 2;
  v9 = sub_100005C14("CloudPairing");
  v10 = v9;
  if (d)
  {
    v11 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v71 description];
      LODWORD(buf) = 136380675;
      *(&buf + 4) = [v12 UTF8String];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MUC - Received 'InitiatorPairingKeys' message from IDS device %{private}s", &buf, 0xCu);

      v11 = v10;
    }

    idsDevice = [v71 idsDevice];
    uniqueID = [idsDevice uniqueID];

    v14 = [NSMutableString stringWithCapacity:[uniqueID length]];
    v15 = [uniqueID length];
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_100084FE4;
    v88[3] = &unk_1002B9758;
    v16 = v14;
    v89 = v16;
    [uniqueID enumerateSubstringsInRange:0 options:v15 usingBlock:258, v88];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    cloudDevices = [(CBIDSManager *)self cloudDevices];
    v18 = [cloudDevices countByEnumeratingWithState:&v84 objects:v98 count:16];
    if (v18)
    {
      v19 = *v85;
      v20 = 0.0;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v85 != v19)
          {
            objc_enumerationMutation(cloudDevices);
          }

          v22 = *(*(&v84 + 1) + 8 * i);
          v23 = [v22 objectForKey:v16];

          if (v23)
          {
            v24 = [v22 objectForKey:v16];
            [v24 floatValue];
            v26 = v25;

            v20 = v26;
          }
        }

        v18 = [cloudDevices countByEnumeratingWithState:&v84 objects:v98 count:16];
      }

      while (v18);

      if (v20 == 0.0)
      {
LABEL_22:
        cloudDevices = +[NSMutableDictionary dictionary];
        v66 = [NSString stringWithFormat:@"%llu", mach_absolute_time()];
        idsDevice2 = [v71 idsDevice];
        uniqueID2 = [idsDevice2 uniqueID];

        v35 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", [uniqueID2 length]);
        v36 = [uniqueID2 length];
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_100084FF0;
        v82[3] = &unk_1002B9758;
        v37 = v35;
        v83 = v37;
        [uniqueID2 enumerateSubstringsInRange:0 options:v36 usingBlock:{258, v82}];
        [cloudDevices setObject:v66 forKey:v37];
        cloudDevices2 = [(CBIDSManager *)self cloudDevices];
        v39 = [NSArray arrayWithArray:cloudDevices2];

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v40 = v39;
        v41 = [v40 countByEnumeratingWithState:&v78 objects:v97 count:16];
        if (v41)
        {
          v42 = *v79;
          do
          {
            for (j = 0; j != v41; j = j + 1)
            {
              if (*v79 != v42)
              {
                objc_enumerationMutation(v40);
              }

              v44 = *(*(&v78 + 1) + 8 * j);
              v45 = [v44 objectForKey:v37];

              if (v45)
              {
                cloudDevices3 = [(CBIDSManager *)self cloudDevices];
                [cloudDevices3 removeObject:v44];
              }
            }

            v41 = [v40 countByEnumeratingWithState:&v78 objects:v97 count:16];
          }

          while (v41);
        }

        cloudDevices4 = [(CBIDSManager *)self cloudDevices];
        [cloudDevices4 addObject:cloudDevices];

        cloudDevices5 = [(CBIDSManager *)self cloudDevices];
        [CBPreferencesManager setuserPreference:@"CloudDevice" value:cloudDevices5 sync:1];

        v65 = [[NSArray alloc] initWithObjects:{@"PublicKeys", @"IdentityKeys", 0}];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v93 = 0x3032000000;
        v94 = sub_100003948;
        v95 = sub_100003850;
        v91[0] = @"ResponderPairingKeys";
        v90[0] = @"MessageType";
        v90[1] = @"DeviceName";
        localDeviceName = [(CBIDSManager *)self localDeviceName];
        v91[1] = localDeviceName;
        v90[2] = @"PublicAddress";
        publicAddress = [(CBIDSManager *)self publicAddress];
        v91[2] = publicAddress;
        v90[3] = @"TimeStamp";
        v90[4] = @"EncryptionType";
        v91[3] = v66;
        v91[4] = @"ECDH";
        v90[5] = @"RequestedKeyLength";
        v51 = [NSNumber numberWithUnsignedInteger:[(CBIDSManager *)self keyLength]];
        v91[5] = v51;
        v90[6] = @"RequestedKeyType";
        v91[6] = v65;
        v52 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:7];
        v96 = [NSMutableDictionary dictionaryWithDictionary:v52];

        v53 = [keysCopy mutableCopy];
        localDeviceRandomAddress = [(CBIDSManager *)self localDeviceRandomAddress];

        if (localDeviceRandomAddress)
        {
          localDeviceRandomAddress2 = [(CBIDSManager *)self localDeviceRandomAddress];
          [v53 setObject:localDeviceRandomAddress2 forKey:@"IDSLocalRandomAddress"];
        }

        if ([dCopy isEqualToString:@"Version 3"])
        {
          localDeviceRandomAddress3 = [(CBIDSManager *)self localDeviceRandomAddress];

          if (!localDeviceRandomAddress3)
          {
            keyLength = [(CBIDSManager *)self keyLength];
            v73[0] = _NSConcreteStackBlock;
            v73[1] = 3221225472;
            v73[2] = sub_100085184;
            v73[3] = &unk_1002B97A8;
            v76[1] = &buf;
            v73[4] = self;
            v74 = v71;
            v75 = keysCopy;
            v76[0] = dCopy;
            [(CBIDSManager *)self generateKeyDictForTypes:v65 keyLength:keyLength forAddress:0 withCompletion:v73];
            v61 = &v74;
            v62 = &v75;
            v63 = v76;
            goto LABEL_38;
          }

          keyLength2 = [(CBIDSManager *)self keyLength];
          localDeviceRandomAddress4 = [(CBIDSManager *)self localDeviceRandomAddress];
          v59 = v77;
          v77[0] = _NSConcreteStackBlock;
          v77[1] = 3221225472;
          v77[2] = sub_100084FFC;
          v77[3] = &unk_1002B9780;
          v77[9] = &buf;
          v77[4] = self;
          v77[5] = v71;
          v77[6] = keysCopy;
          v77[7] = v53;
          v77[8] = dCopy;
          [(CBIDSManager *)self generateKeyDictForTypes:v65 keyLength:keyLength2 forAddress:localDeviceRandomAddress4 withCompletion:v77];
        }

        else
        {
          keyLength3 = [(CBIDSManager *)self keyLength];
          v59 = v72;
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = sub_1000852DC;
          v72[3] = &unk_1002B9780;
          v72[9] = &buf;
          v72[4] = self;
          v72[5] = v71;
          v72[6] = keysCopy;
          v72[7] = v53;
          v72[8] = dCopy;
          [(CBIDSManager *)self generateKeyDictForTypes:v65 keyLength:keyLength3 forAddress:0 withCompletion:v72];
        }

        v61 = v59 + 5;
        v62 = v59 + 6;
        v63 = v59 + 7;

LABEL_38:
        _Block_object_dispose(&buf, 8);

LABEL_39:
        v32 = uniqueID;
        goto LABEL_40;
      }

      v27 = v20 > [(CBIDSManager *)self timeStamp];
      cloudDevices = sub_100005C14("CloudPairing");
      v28 = os_log_type_enabled(cloudDevices, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        if (v28)
        {
          v29 = [v71 description];
          v30 = v29;
          uTF8String = [v29 UTF8String];
          LODWORD(buf) = 136380675;
          *(&buf + 4) = uTF8String;
          _os_log_impl(&_mh_execute_header, cloudDevices, OS_LOG_TYPE_DEFAULT, "Received 'InitiatorPairingKeys' local Timestamp saved is newer than received message: %{private}s", &buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v28)
      {
        timeStamp = [(CBIDSManager *)self timeStamp];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = timeStamp - v20;
        _os_log_impl(&_mh_execute_header, cloudDevices, OS_LOG_TYPE_DEFAULT, "Received 'InitiatorPairingKeys' Time to receive message: %f", &buf, 0xCu);
      }
    }

    goto LABEL_22;
  }

  v32 = v9;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1001EFFCC();
    v32 = v10;
  }

LABEL_40:
}

- (void)generateKeyDictForTypes:(id)types keyLength:(unint64_t)length forAddress:(id)address withCompletion:(id)completion
{
  typesCopy = types;
  addressCopy = address;
  completionCopy = completion;
  v13 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = typesCopy;
    v22 = 2112;
    v23 = addressCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MUC - generateKeyDictForTypes: %@ for local address: %@", buf, 0x16u);
  }

  v14 = [NSNumber numberWithUnsignedInteger:length];
  v15 = [NSMutableDictionary dictionaryWithObjectsAndKeys:typesCopy, @"kCloudPairingKeyTypes", v14, @"kCloudPairingKeyLength", 0];

  if (addressCopy)
  {
    [v15 setObject:addressCopy forKeyedSubscript:@"kLocalRandomAddress"];
  }

  v16 = +[CloudXPCService sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100085628;
  v18[3] = &unk_1002B97D0;
  v18[4] = self;
  v19 = completionCopy;
  v17 = completionCopy;
  [v16 sendCloudKitMsg:@"GenerateCloudPairingKeys" args:v15 withReply:v18];
}

- (void)cloudPairingCompletedWithResponse:(id)response localKeys:(id)keys from:(id)from forProtocolID:(id)d
{
  fromCopy = from;
  if (keys)
  {
    keysCopy = keys;
  }

  else
  {
    keysCopy = &__NSDictionary0__struct;
  }

  dCopy = d;
  keysCopy2 = keys;
  responseCopy = response;
  idsDevice = [fromCopy idsDevice];
  uniqueID = [idsDevice uniqueID];
  v16 = uniqueID;
  if (uniqueID)
  {
    v17 = uniqueID;
  }

  else
  {
    v17 = &__NSDictionary0__struct;
  }

  v18 = [NSMutableDictionary dictionaryWithObjectsAndKeys:responseCopy, @"kCloudPairingCompleteResponse", keysCopy, @"kCloudPairingLocalKeys", v17, @"kCloudDeviceUniqueID", dCopy, @"kCloudPairingProtocolID", 0];

  v19 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v26 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending args for cloudPairingCompletedWithResponse: %{private}@", buf, 0xCu);
  }

  v20 = +[CloudXPCService sharedInstance];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100085A5C;
  v23[3] = &unk_1002B97F8;
  v23[4] = self;
  v24 = fromCopy;
  v21 = fromCopy;
  [v20 sendCloudKitMsg:@"CloudPairingComplete" args:v18 withReply:v23];
}

- (unint64_t)roleWithDevice:(id)device
{
  deviceCopy = device;
  cloudIdentifier = [(CBIDSManager *)self cloudIdentifier];

  if (!cloudIdentifier)
  {
    v12 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001F02A4(deviceCopy);
    }

    goto LABEL_11;
  }

  idsDevice = [deviceCopy idsDevice];
  uniqueID = [idsDevice uniqueID];

  if (!uniqueID)
  {
    v12 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001F0210(deviceCopy);
    }

LABEL_11:

    v11 = 0;
    goto LABEL_12;
  }

  cloudIdentifier2 = [(CBIDSManager *)self cloudIdentifier];
  idsDevice2 = [deviceCopy idsDevice];
  uniqueID2 = [idsDevice2 uniqueID];
  if ([cloudIdentifier2 compare:uniqueID2] == 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

LABEL_12:
  return v11;
}

- (void)handleResponderPairingKeys:(id)keys from:(id)from forProtocolID:(id)d
{
  keysCopy = keys;
  fromCopy = from;
  dCopy = d;
  v11 = [(CBIDSManager *)self roleWithDevice:fromCopy];
  v12 = sub_100005C14("CloudPairing");
  v13 = v12;
  if (v11 == 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [fromCopy description];
      v18 = 136380675;
      uTF8String = [v14 UTF8String];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received 'ResponderPairingKeys' message from IDS device %{private}s", &v18, 0xCu);
    }

    idsDevice = [fromCopy idsDevice];
    [(CBIDSManager *)self storePublicAddressMapping:idsDevice message:keysCopy];

    localDeviceRandomAddress = [(CBIDSManager *)self localDeviceRandomAddress];

    if (!localDeviceRandomAddress)
    {
      [(CBIDSManager *)self cloudPairingCompletedWithResponse:keysCopy localKeys:0 from:fromCopy forProtocolID:dCopy];
      goto LABEL_9;
    }

    v13 = [keysCopy mutableCopy];
    localDeviceRandomAddress2 = [(CBIDSManager *)self localDeviceRandomAddress];
    [v13 setObject:localDeviceRandomAddress2 forKey:@"IDSLocalRandomAddress"];

    [(CBIDSManager *)self cloudPairingCompletedWithResponse:v13 localKeys:0 from:fromCopy forProtocolID:dCopy];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1001F0338();
  }

LABEL_9:
}

- (void)handleSecurityRequest:(id)request from:(id)from
{
  fromCopy = from;
  if ([(CBIDSManager *)self roleWithDevice:fromCopy]== 1)
  {
    if ([fromCopy state] && objc_msgSend(fromCopy, "state") != 6)
    {
      v11 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [fromCopy description];
        uTF8String = [v12 UTF8String];
        stateString = [fromCopy stateString];
        v15 = 136380931;
        v16 = uTF8String;
        v17 = 2080;
        uTF8String2 = [stateString UTF8String];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dropping 'security request' message from IDS device %{private}s as our state is '%s'", &v15, 0x16u);
      }
    }

    else
    {
      v6 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [fromCopy description];
        uTF8String3 = [v7 UTF8String];
        stateString2 = [fromCopy stateString];
        v15 = 136380931;
        v16 = uTF8String3;
        v17 = 2080;
        uTF8String2 = [stateString2 UTF8String];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received 'security request' message from IDS device %{private}s with current state is '%s'", &v15, 0x16u);
      }

      [(CBIDSManager *)self initiatePairing:fromCopy];
    }
  }

  else
  {
    v10 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1001F03F0();
    }
  }
}

- (void)handleRepairRequest:(id)request from:(id)from
{
  fromCopy = from;
  v6 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [fromCopy description];
    v8 = 136380675;
    uTF8String = [v7 UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received 'Repair request' message from IDS device %{private}s", &v8, 0xCu);
  }

  [(CBIDSManager *)self initiatePairing:fromCopy];
}

- (void)handlePairingRequest:(id)request from:(id)from
{
  requestCopy = request;
  fromCopy = from;
  if ([(CBIDSManager *)self validateMessage:requestCopy from:fromCopy])
  {
    if ([(CBIDSManager *)self roleWithDevice:fromCopy]== 2)
    {
      if ([fromCopy state] && objc_msgSend(fromCopy, "state") != 1)
      {
        v14 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [fromCopy description];
          uTF8String = [v15 UTF8String];
          stateString = [fromCopy stateString];
          *buf = 136380931;
          uTF8String3 = uTF8String;
          v23 = 2080;
          uTF8String2 = [stateString UTF8String];
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Dropping 'pairing request' message from IDS device %{private}s as our state is '%s'", buf, 0x16u);
        }
      }

      else
      {
        v8 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [fromCopy description];
          *buf = 136380675;
          uTF8String3 = [v9 UTF8String];
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'pairing request' message from IDS device %{private}s", buf, 0xCu);
        }

        v10 = [requestCopy objectForKeyedSubscript:@"RequestedKeyType"];
        v11 = [requestCopy objectForKeyedSubscript:@"RequestedKeyLength"];
        unsignedIntegerValue = [v11 unsignedIntegerValue];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100086940;
        v18[3] = &unk_1002B9820;
        v18[4] = self;
        v19 = requestCopy;
        v20 = fromCopy;
        [(CBIDSManager *)self generateKeyDictForTypes:v10 keyLength:unsignedIntegerValue forAddress:0 withCompletion:v18];
      }
    }

    else
    {
      v13 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1001F04A8();
      }
    }
  }
}

- (void)handlePairingResponse:(id)response from:(id)from
{
  responseCopy = response;
  fromCopy = from;
  if ([(CBIDSManager *)self validateMessage:responseCopy from:fromCopy])
  {
    if ([(CBIDSManager *)self roleWithDevice:fromCopy]== 1)
    {
      if ([fromCopy state] == 2 && objc_msgSend(fromCopy, "state") == 3)
      {
        v8 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [fromCopy description];
          *buf = 136380675;
          uTF8String = [v9 UTF8String];
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'pairing response' message from IDS device %{private}s", buf, 0xCu);
        }

        v10 = [responseCopy objectForKeyedSubscript:@"RequestedKeys"];
        v11 = [responseCopy objectForKeyedSubscript:@"RequestedKeyType"];
        v12 = [responseCopy objectForKeyedSubscript:@"RequestedKeyLength"];
        unsignedIntegerValue = [v12 unsignedIntegerValue];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100086DEC;
        v18[3] = &unk_1002B9848;
        v18[4] = self;
        v19 = responseCopy;
        v20 = v10;
        v21 = fromCopy;
        v14 = v10;
        [(CBIDSManager *)self generateKeyDictForTypes:v11 keyLength:unsignedIntegerValue forAddress:0 withCompletion:v18];
      }

      else
      {
        v14 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [fromCopy description];
          uTF8String2 = [v15 UTF8String];
          stateString = [fromCopy stateString];
          *buf = 136380931;
          uTF8String = uTF8String2;
          v24 = 2080;
          uTF8String3 = [stateString UTF8String];
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Dropping 'pairing response' message from IDS device %{private}s as our state is '%s'", buf, 0x16u);
        }
      }
    }

    else
    {
      v14 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1001F0560();
      }
    }
  }
}

- (void)handleKeyDistribution:(id)distribution from:(id)from
{
  distributionCopy = distribution;
  fromCopy = from;
  if ([(CBIDSManager *)self validateMessage:distributionCopy from:fromCopy])
  {
    if ([fromCopy state] != 4 || objc_msgSend(fromCopy, "state") != 5)
    {
      idsDevice = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(idsDevice, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [fromCopy description];
        uTF8String = [v20 UTF8String];
        stateString = [fromCopy stateString];
        *buf = 136380931;
        uTF8String3 = uTF8String;
        v28 = 2080;
        uTF8String2 = [stateString UTF8String];
        _os_log_impl(&_mh_execute_header, idsDevice, OS_LOG_TYPE_DEFAULT, "Dropping 'key distribution' message from IDS device %{private}s as our state is '%s'", buf, 0x16u);
      }

      goto LABEL_14;
    }

    v8 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [fromCopy description];
      *buf = 136380675;
      uTF8String3 = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'key distribution' message from IDS device %{private}s", buf, 0xCu);
    }

    v10 = [distributionCopy objectForKeyedSubscript:@"LocalKeys"];
    v11 = [v10 objectForKeyedSubscript:@"LTKLength"];
    unsignedIntegerValue = [v11 unsignedIntegerValue];
    keyLength = [(CBIDSManager *)self keyLength];

    if (unsignedIntegerValue == keyLength)
    {
      v14 = [distributionCopy objectForKeyedSubscript:@"RequestedKeys"];
      v15 = [v14 objectForKeyedSubscript:@"LTKLength"];
      unsignedIntegerValue2 = [v15 unsignedIntegerValue];
      keyLength2 = [(CBIDSManager *)self keyLength];

      if (unsignedIntegerValue2 == keyLength2)
      {
        v18 = [distributionCopy objectForKeyedSubscript:@"LocalKeys"];
        [(CBIDSManager *)self cloudPairingCompletedWithResponse:distributionCopy localKeys:v18 from:fromCopy forProtocolID:@"Version 1"];

        idsDevice = [fromCopy idsDevice];
        [(CBIDSManager *)self storePublicAddressMapping:idsDevice message:distributionCopy];
LABEL_14:

        goto LABEL_15;
      }

      idsDevice = [fromCopy idsDevice];
      v23 = [distributionCopy objectForKeyedSubscript:@"RequestedKeys"];
      v24 = [v23 objectForKeyedSubscript:@"LTKLength"];
      [NSString stringWithFormat:@"Invalid requested key length (%@)", v24];
    }

    else
    {
      idsDevice = [fromCopy idsDevice];
      v23 = [distributionCopy objectForKeyedSubscript:@"LocalKeys"];
      v24 = [v23 objectForKeyedSubscript:@"LTKLength"];
      [NSString stringWithFormat:@"Invalid local key length (%@)", v24];
    }
    v25 = ;
    [(CBIDSManager *)self sendErrorMessageToDevice:idsDevice reason:v25];

    goto LABEL_14;
  }

LABEL_15:
}

- (void)handlePairingFailure:(id)failure from:(id)from
{
  failureCopy = failure;
  fromCopy = from;
  v7 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001F0618();
  }
}

- (void)initiatePairingAgainIfNoAckReceived:(id)received attempt:(unint64_t)attempt
{
  receivedCopy = received;
  v7 = [(CBIDSManager *)self roleWithDevice:receivedCopy];
  if (v7)
  {
    v8 = v7;
    messageIdentifiersWaitingForAck = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    idsDevice = [receivedCopy idsDevice];
    uniqueID = [idsDevice uniqueID];
    v12 = [messageIdentifiersWaitingForAck objectForKey:uniqueID];

    messageIdentifiersWaitingForAck2 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    idsDevice2 = [receivedCopy idsDevice];
    uniqueID2 = [idsDevice2 uniqueID];
    [messageIdentifiersWaitingForAck2 setObject:receivedCopy forKey:uniqueID2];

    if (v12)
    {
      v22 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = attempt - 1;
        if (v8 == 1)
        {
          v24 = "pairing";
        }

        else
        {
          v24 = "security";
        }

        v25 = [receivedCopy description];
        *buf = 134218499;
        v33 = v23;
        v34 = 2080;
        attemptCopy = v24;
        v36 = 2081;
        uTF8String = [v25 UTF8String];
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "MUC - Dropping delay sending again attempt (%lu) '%s request' message to IDS device %{private}s", buf, 0x20u);
      }
    }

    else
    {
      v16 = arc4random_uniform(0xB4u) + 60.0;
      v17 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if (v8 == 1)
        {
          v18 = "pairing";
        }

        else
        {
          v18 = "security";
        }

        v19 = [receivedCopy description];
        *buf = 134218755;
        v33 = v16;
        v34 = 2048;
        attemptCopy = attempt;
        v36 = 2080;
        uTF8String = v18;
        v38 = 2081;
        uTF8String2 = [v19 UTF8String];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MUC - Delaying (%lu) seconds to send (%lu) attempt '%s request' message to IDS device %{private}s", buf, 0x2Au);
      }

      v20 = dispatch_time(0, (v16 * attempt * 1000000000.0));
      cloudPairingQueue = [(CBIDSManager *)self cloudPairingQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100087784;
      block[3] = &unk_1002B9898;
      v29 = v16;
      attemptCopy2 = attempt;
      v31 = v8;
      v27 = receivedCopy;
      selfCopy = self;
      dispatch_after(v20, cloudPairingQueue, block);

      v22 = v27;
    }
  }

  else
  {
    v12 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001F06DC(receivedCopy);
    }
  }
}

- (void)initiatePairing:(id)pairing
{
  pairingCopy = pairing;
  v5 = [(CBIDSManager *)self roleWithDevice:pairingCopy];
  if (v5)
  {
    v6 = v5;
    v43 = [NSString stringWithFormat:@"%llu", mach_absolute_time()];
    v7 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v6 == 1)
      {
        v8 = "pairing";
      }

      else
      {
        v8 = "security";
      }

      v9 = [pairingCopy description];
      *buf = 136315395;
      v64 = v8;
      v65 = 2081;
      uTF8String = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MUC - Sending '%s request' message to IDS device %{private}s", buf, 0x16u);
    }

    v45 = +[NSMutableDictionary dictionary];
    v10 = @"SecurityRequest";
    if (v6 == 1)
    {
      v10 = @"PairingRequest";
    }

    v62[0] = v10;
    v61[0] = @"MessageType";
    v61[1] = @"DeviceName";
    localDeviceName = [(CBIDSManager *)self localDeviceName];
    v62[1] = localDeviceName;
    v61[2] = @"PublicAddress";
    publicAddress = [(CBIDSManager *)self publicAddress];
    v62[2] = publicAddress;
    v62[3] = @"Basic";
    v61[3] = @"EncryptionType";
    v61[4] = @"RequestedKeyType";
    requestedKeyTypes = [(CBIDSManager *)self requestedKeyTypes];
    v62[4] = requestedKeyTypes;
    v61[5] = @"RequestedKeyLength";
    v14 = [NSNumber numberWithUnsignedInteger:[(CBIDSManager *)self keyLength]];
    v62[5] = v14;
    v42 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:6];

    [v45 setObject:v42 forKey:@"Version 1"];
    v44 = +[NSMutableDictionary dictionary];
    idsDevice = [pairingCopy idsDevice];
    uniqueID = [idsDevice uniqueID];

    [v44 setObject:v43 forKey:uniqueID];
    v17 = [NSMutableArray alloc];
    cloudDevices = [(CBIDSManager *)self cloudDevices];
    v19 = [v17 initWithArray:cloudDevices];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v20 = v19;
    v21 = [v20 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v21)
    {
      v22 = *v55;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v55 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v54 + 1) + 8 * i);
          v25 = [v24 objectForKey:uniqueID];

          if (v25)
          {
            cloudDevices2 = [(CBIDSManager *)self cloudDevices];
            [cloudDevices2 removeObject:v24];
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v21);
    }

    cloudDevices3 = [(CBIDSManager *)self cloudDevices];
    [cloudDevices3 addObject:v44];

    cloudDevices4 = [(CBIDSManager *)self cloudDevices];
    [CBPreferencesManager setuserPreference:@"CloudDevice" value:cloudDevices4 sync:1];

    if (v6 == 1)
    {
      v29 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "CloudPairingRoleInitator starting", buf, 2u);
      }

      v30 = [[NSArray alloc] initWithObjects:{@"PublicKeys", @"IdentityKeys", 0}];
      v59[0] = @"InitiatorPairingKeys";
      v58[0] = @"MessageType";
      v58[1] = @"DeviceName";
      localDeviceName2 = [(CBIDSManager *)self localDeviceName];
      v59[1] = localDeviceName2;
      v58[2] = @"PublicAddress";
      publicAddress2 = [(CBIDSManager *)self publicAddress];
      v59[2] = publicAddress2;
      v58[3] = @"TimeStamp";
      v58[4] = @"EncryptionType";
      v59[3] = v43;
      v59[4] = @"ECDH";
      v59[5] = v30;
      v58[5] = @"RequestedKeyType";
      v58[6] = @"RequestedKeyLength";
      v33 = [NSNumber numberWithUnsignedInteger:[(CBIDSManager *)self keyLength]];
      v59[6] = v33;
      v34 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:7];

      objc_initWeak(buf, self);
      localDeviceRandomAddress = [(CBIDSManager *)self localDeviceRandomAddress];

      keyLength = [(CBIDSManager *)self keyLength];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000882E8;
      v46[3] = &unk_1002B98E8;
      objc_copyWeak(v52, buf);
      v37 = v34;
      v47 = v37;
      v38 = v45;
      v53 = localDeviceRandomAddress != 0;
      v48 = v38;
      selfCopy = self;
      v50 = pairingCopy;
      v52[1] = 1;
      v39 = v30;
      v51 = v39;
      [(CBIDSManager *)self generateKeyDictForTypes:v39 keyLength:keyLength forAddress:0 withCompletion:v46];

      objc_destroyWeak(v52);
      objc_destroyWeak(buf);
    }

    else
    {
      [v45 setObject:@"CloudPairing" forKey:@"MessageType"];
      [(CBIDSManager *)self sendInitialPairingIDSMessage:v45 forDevice:pairingCopy withRole:v6];
    }

    v41 = v43;
  }

  else
  {
    v40 = sub_100005C14("CloudPairing");
    v41 = v40;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1001F086C(pairingCopy);
      v41 = v40;
    }
  }
}

- (void)sendInitialPairingIDSMessage:(id)message forDevice:(id)device withRole:(unint64_t)role
{
  messageCopy = message;
  deviceCopy = device;
  v10 = objc_autoreleasePoolPush();
  idsDevice = [deviceCopy idsDevice];
  v12 = IDSCopyForDevice();

  v13 = sub_100005C14("CloudPairing");
  v14 = v13;
  if (v12)
  {
    roleCopy = role;
    v33 = v10;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558787;
      v39 = 1752392040;
      v40 = 2113;
      v41 = deviceCopy;
      v42 = 2160;
      v43 = 1752392040;
      v44 = 2113;
      v45 = messageCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempting to send message to %{private, mask.hash}@ : %{private, mask.hash}@", buf, 0x2Au);
    }

    v15 = [messageCopy objectForKeyedSubscript:@"MessageType"];
    idsDevice2 = [deviceCopy idsDevice];
    uniqueID = [idsDevice2 uniqueID];
    v18 = [NSString stringWithFormat:@"Initial-%@-%@", v15, uniqueID];

    service = [(CBIDSManager *)self service];
    v20 = [NSMutableSet setWithObject:v12];
    v36[0] = IDSSendMessageOptionTimeoutKey;
    v36[1] = IDSSendMessageOptionWantsClientAcknowledgementKey;
    v37[0] = &off_1002CB828;
    v37[1] = &__kCFBooleanTrue;
    v36[2] = IDSSendMessageOptionQueueOneIdentifierKey;
    v32 = v18;
    v37[2] = v18;
    v21 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
    v34 = 0;
    v35 = 0;
    v22 = [service sendMessage:messageCopy fromAccount:0 toDestinations:v20 priority:300 options:v21 identifier:&v35 error:&v34];
    v14 = v35;
    v23 = v34;

    v24 = sub_100005C14("CloudPairing");
    messageIdentifiersWaitingForAck = v24;
    if (v22)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        uTF8String = [v14 UTF8String];
        *buf = 136315138;
        v39 = uTF8String;
        _os_log_impl(&_mh_execute_header, messageIdentifiersWaitingForAck, OS_LOG_TYPE_DEFAULT, "Successfully sent message %s", buf, 0xCu);
      }

      if (roleCopy == 1)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      [deviceCopy setState:v27];
      messageIdentifiersWaitingForAck = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
      [messageIdentifiersWaitingForAck setObject:deviceCopy forKey:v14];
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1001F0904(v23);
    }

    messageIdentifiersWaitingForAck2 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    idsDevice3 = [deviceCopy idsDevice];
    uniqueID2 = [idsDevice3 uniqueID];
    [messageIdentifiersWaitingForAck2 removeObjectForKey:uniqueID2];

    v10 = v33;
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1001F0998(deviceCopy, messageCopy, v14);
  }

  objc_autoreleasePoolPop(v10);
}

- (void)sendRePairRequest:(id)request forBundleID:(id)d
{
  requestCopy = request;
  dCopy = d;
  cloudPairingQueue = [(CBIDSManager *)self cloudPairingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088C38;
  block[3] = &unk_1002B6CF0;
  block[4] = self;
  v12 = requestCopy;
  v13 = dCopy;
  v9 = dCopy;
  v10 = requestCopy;
  dispatch_async(cloudPairingQueue, block);
}

- (void)_sendRePairRequest:(id)request forBundleID:(id)d
{
  requestCopy = request;
  dCopy = d;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v7 = requestCopy;
  v38 = [v7 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v38)
  {
    v8 = *v55;
    v40 = v7;
    v37 = *v55;
    do
    {
      v9 = 0;
      do
      {
        if (*v55 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v39 = v9;
        v10 = *(*(&v54 + 1) + 8 * v9);
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        service = [(CBIDSManager *)self service];
        devices = [service devices];

        obj = devices;
        v13 = [devices countByEnumeratingWithState:&v50 objects:v64 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v51;
          while (2)
          {
            v16 = 0;
            v41 = v14;
            do
            {
              if (*v51 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v50 + 1) + 8 * v16);
              v18 = sub_100005C14("CloudPairing");
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                nsuuid = [v17 nsuuid];
                *buf = 138412546;
                v61 = nsuuid;
                v62 = 2112;
                v63 = v10;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "cloudpaird: sendRePairRequest: BTUUID: %@ peerUUID %@", buf, 0x16u);
              }

              uniqueID = [v17 uniqueID];
              v21 = [uniqueID isEqualToString:v10];

              if (v21)
              {
                v22 = sub_100005C14("CloudPairing");
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  uniqueID2 = [v17 uniqueID];
                  *buf = 138412290;
                  v61 = uniqueID2;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "cloudpaird: sendRePairRequest: IDS to repair is a valid device %@", buf, 0xCu);
                }

                v24 = [(CBIDSManager *)self deviceForIDSDevice:v17 createNew:0];
                v25 = v24;
                if (v24)
                {
                  [v24 setState:0];
                }

                else
                {
                  v26 = sub_100005C14("CloudPairing");
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    sub_1001F0A88(&v48, v49, v26);
                  }
                }

                v27 = [NSString stringWithFormat:@"RePairingRequest-%@", v10];
                messageIdentifiersWaitingForAck = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
                v47[0] = _NSConcreteStackBlock;
                v47[1] = 3221225472;
                v47[2] = sub_100089240;
                v47[3] = &unk_1002B9910;
                v47[4] = v27;
                v29 = [messageIdentifiersWaitingForAck keysOfEntriesPassingTest:v47];

                v30 = [v29 count];
                if (v30)
                {
                  v31 = arc4random_uniform(0xB4u) + 60.0;
                  v32 = sub_100005C14("CloudPairing");
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 134218242;
                    v61 = v31;
                    v62 = 2112;
                    v63 = v10;
                    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Deferring (%lu) seconds sendRePairRequest: %@ as we already sent one", buf, 0x16u);
                  }

                  v33 = dispatch_time(0, (v31 * 1000000000.0));
                  cloudPairingQueue = [(CBIDSManager *)self cloudPairingQueue];
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_10008924C;
                  block[3] = &unk_1002B9938;
                  block[4] = self;
                  block[5] = v27;
                  block[6] = v10;
                  v45 = v25;
                  v46 = dCopy;
                  dispatch_after(v33, cloudPairingQueue, block);
                }

                else
                {
                  v58[0] = @"MessageType";
                  v58[1] = @"DeviceName";
                  v59[0] = @"RepairRequest";
                  localDeviceName = [(CBIDSManager *)self localDeviceName];
                  v59[1] = localDeviceName;
                  v36 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
                  [(CBIDSManager *)self sendRePairCloudPairingMessage:v36 toDevice:v25 bundleID:dCopy];
                }

                v14 = v41;
                if (v30)
                {

                  v7 = v40;
                  goto LABEL_33;
                }
              }

              v16 = v16 + 1;
            }

            while (v14 != v16);
            v14 = [obj countByEnumeratingWithState:&v50 objects:v64 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v9 = v39 + 1;
        v7 = v40;
        v8 = v37;
      }

      while ((v39 + 1) != v38);
      v38 = [v40 countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v38);
  }

LABEL_33:
}

- (void)sendRePairCloudPairingMessage:(id)message toDevice:(id)device bundleID:(id)d
{
  messageCopy = message;
  deviceCopy = device;
  dCopy = d;
  service = [(CBIDSManager *)self service];
  accounts = [service accounts];
  v13 = [accounts count];

  if (v13)
  {
    idsDevice = [deviceCopy idsDevice];
    v15 = IDSCopyIDForDevice();

    if (!v15)
    {
      sub_1001F0AC8(buf);
      v25 = *buf;
      goto LABEL_17;
    }

    v38 = dCopy;
    v16 = objc_alloc_init(NSMutableDictionary);
    [v16 setObject:@"CloudPairing" forKey:@"MessageType"];
    v37 = messageCopy;
    [v16 setObject:messageCopy forKey:@"Version 1"];
    v17 = [NSNumber numberWithDouble:2592000.0];
    v18 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v17, IDSSendMessageOptionTimeoutKey, 0];

    idsDevice2 = [deviceCopy idsDevice];
    uniqueID = [idsDevice2 uniqueID];
    v21 = [NSString stringWithFormat:@"RePairingRequest-%@", uniqueID];

    [v18 setObject:v21 forKey:IDSSendMessageOptionQueueOneIdentifierKey];
    [v18 setObject:&__kCFBooleanTrue forKey:IDSSendMessageOptionWantsClientAcknowledgementKey];
    service2 = [(CBIDSManager *)self service];
    v23 = [NSMutableSet setWithObject:v15];
    v39 = 0;
    v40 = 0;
    v24 = [service2 sendMessage:v16 fromAccount:0 toDestinations:v23 priority:300 options:v18 identifier:&v40 error:&v39];
    v25 = v40;
    v36 = v39;

    if (v24)
    {
      messageCopy = v37;
      if (!v25)
      {
LABEL_16:

        dCopy = v38;
LABEL_17:

        goto LABEL_18;
      }

      v26 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        idsDevice3 = [deviceCopy idsDevice];
        name = [idsDevice3 name];
        *buf = 138413058;
        *&buf[4] = v16;
        v44 = 2112;
        v45 = name;
        v46 = 2112;
        v47 = v15;
        v48 = 2112;
        v49 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "cloudpaird: sendRePairCloudPairingMessage: Sending message :%@ to device %@ of account :%@ with GUID :%@", buf, 0x2Au);

        messageCopy = v37;
      }

      v29 = [NSString stringWithFormat:@"%@-%@", v25, v21];
      messageIdentifiersWaitingForAck = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
      [messageIdentifiersWaitingForAck setObject:deviceCopy forKey:v29];

      v41[0] = @"MessageType";
      v31 = [messageCopy objectForKeyedSubscript:?];
      v41[1] = @"BundleID";
      v42[0] = v31;
      v32 = @"Unknown";
      if (v38)
      {
        v32 = v38;
      }

      v42[1] = v32;
      v33 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:2];
      CUMetricsLog();
    }

    else
    {
      v29 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        idsDevice4 = [deviceCopy idsDevice];
        name2 = [idsDevice4 name];
        *buf = 138413058;
        *&buf[4] = v16;
        v44 = 2112;
        v45 = name2;
        v46 = 2112;
        v47 = v15;
        v48 = 2112;
        v49 = v36;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "cloudpaird: sendRePairCloudPairingMessage: Sending message failed  :%@ to device %@ of account :%@ with error %@", buf, 0x2Au);
      }

      messageCopy = v37;
    }

    goto LABEL_16;
  }

  v15 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1001F0B38();
  }

LABEL_18:
}

- (void)sendCloudPairingResponseMessage:(id)message toDevice:(id)device version:(id)version
{
  messageCopy = message;
  deviceCopy = device;
  versionCopy = version;
  v11 = objc_autoreleasePoolPush();
  v12 = IDSCopyForDevice();
  v13 = sub_100005C14("CloudPairing");
  v14 = v13;
  if (v12)
  {
    v45 = v11;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      cpDescription = [deviceCopy cpDescription];
      uTF8String = [cpDescription UTF8String];
      v17 = [messageCopy description];
      *buf = 136380931;
      v58 = uTF8String;
      v59 = 2080;
      uTF8String2 = [v17 UTF8String];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending message to IDS device %{private}s: %s", buf, 0x16u);
    }

    v46 = versionCopy;
    if ([versionCopy isEqualToString:@"Version 1"])
    {
      v55[0] = @"MessageType";
      v55[1] = @"Version 1";
      v56[0] = @"CloudPairing";
      v56[1] = messageCopy;
      v18 = v56;
      v19 = v55;
    }

    else if ([versionCopy isEqualToString:@"Version 2"])
    {
      v53[0] = @"MessageType";
      v53[1] = @"Version 2";
      v54[0] = @"CloudPairing";
      v54[1] = messageCopy;
      v18 = v54;
      v19 = v53;
    }

    else
    {
      if (![versionCopy isEqualToString:@"Version 3"])
      {
        v20 = 0;
LABEL_13:
        v21 = [messageCopy objectForKeyedSubscript:@"MessageType"];
        uniqueID = [deviceCopy uniqueID];
        v23 = [NSString stringWithFormat:@"%@-%@", v21, uniqueID];

        selfCopy = self;
        service = [(CBIDSManager *)self service];
        v25 = [NSMutableSet setWithObject:v12];
        v49[0] = IDSSendMessageOptionTimeoutKey;
        v49[1] = IDSSendMessageOptionWantsClientAcknowledgementKey;
        v50[0] = &off_1002CB828;
        v50[1] = &__kCFBooleanTrue;
        v49[2] = IDSSendMessageOptionQueueOneIdentifierKey;
        v43 = v23;
        v50[2] = v23;
        v26 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:3];
        v47 = 0;
        v48 = 0;
        v44 = v20;
        v27 = [service sendMessage:v20 fromAccount:0 toDestinations:v25 priority:300 options:v26 identifier:&v48 error:&v47];
        v14 = v48;
        v28 = v47;

        v29 = sub_100005C14("CloudPairing");
        v30 = v29;
        if ((v27 & 1) == 0)
        {
          v34 = v28;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            sub_1001F0904(v28);
          }

          goto LABEL_24;
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          uTF8String3 = [v14 UTF8String];
          *buf = 136315138;
          v58 = uTF8String3;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Successfully sent message %s", buf, 0xCu);
        }

        v30 = [(CBIDSManager *)selfCopy deviceForIDSDevice:deviceCopy createNew:0];
        v32 = [messageCopy objectForKeyedSubscript:@"MessageType"];
        if (([@"ResponderPairingKeys" isEqualToString:v32] & 1) == 0)
        {
          v33 = [messageCopy objectForKeyedSubscript:@"MessageType"];
          if (![@"PairingResponse" isEqualToString:v33])
          {
            v34 = v28;
            v40 = [messageCopy objectForKeyedSubscript:@"MessageType"];
            v41 = [@"KeyDistribution" isEqualToString:v40];

            if ((v41 & 1) == 0)
            {
LABEL_24:

              v11 = v45;
              versionCopy = v46;
              goto LABEL_25;
            }

LABEL_20:
            idsDevice = [v30 idsDevice];
            uniqueID2 = [idsDevice uniqueID];
            uniqueID3 = [deviceCopy uniqueID];
            v38 = [uniqueID2 isEqualToString:uniqueID3];

            if (v38)
            {
              [v30 setState:4];
              messageIdentifiersWaitingForAck = [(CBIDSManager *)selfCopy messageIdentifiersWaitingForAck];
              [messageIdentifiersWaitingForAck setObject:v30 forKey:v14];
            }

            goto LABEL_24;
          }
        }

        v34 = v28;

        goto LABEL_20;
      }

      v51[0] = @"MessageType";
      v51[1] = @"Version 3";
      v52[0] = @"CloudPairing";
      v52[1] = messageCopy;
      v18 = v52;
      v19 = v51;
    }

    v20 = [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:2];
    goto LABEL_13;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1001F0B74();
  }

LABEL_25:

  objc_autoreleasePoolPop(v11);
}

- (void)sendErrorMessageToDevice:(id)device reason:(id)reason
{
  deviceCopy = device;
  reasonCopy = reason;
  v8 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    cpDescription = [deviceCopy cpDescription];
    *buf = 136380931;
    uTF8String = [cpDescription UTF8String];
    v15 = 2080;
    uTF8String2 = [reasonCopy UTF8String];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Rejecting pairing attempt from IDS device %{private}s - %s", buf, 0x16u);
  }

  v11[0] = @"MessageType";
  v11[1] = @"FailureReason";
  v12[0] = @"PairingFailure";
  v12[1] = reasonCopy;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  [(CBIDSManager *)self sendCloudPairingResponseMessage:v10 toDevice:deviceCopy version:@"Version 1"];
}

- (void)handleUnpairCommand:(id)command from:(id)from
{
  commandCopy = command;
  fromCopy = from;
  v8 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = fromCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unpair Cloud Device: %@", buf, 0xCu);
  }

  v9 = [commandCopy objectForKeyedSubscript:@"DeviceName"];
  if (![v9 length])
  {
    idsDevice = [fromCopy idsDevice];
    [(CBIDSManager *)self sendErrorMessageToDevice:idsDevice reason:@"No friendly name specified"];
LABEL_9:

    goto LABEL_13;
  }

  v10 = [commandCopy objectForKeyedSubscript:@"PublicAddress"];
  v11 = [NSString stringWithFormat:@"Public %@", v10];
  v12 = sub_10007E7C4(v11);

  v13 = [commandCopy objectForKeyedSubscript:@"RandomAddress"];
  v14 = [NSString stringWithFormat:@"Random %@", v13];
  v15 = sub_10007E7C4(v14);

  if (!(v12 | v15))
  {
    v16 = [commandCopy objectForKeyedSubscript:@"PublicAddress"];
    v17 = [commandCopy objectForKeyedSubscript:@"RandomAddress"];
    idsDevice = [NSString stringWithFormat:@"Invalid public address %@ and Invalid random address %@", v16, v17];

    v19 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1001F0C2C();
    }

    idsDevice2 = [fromCopy idsDevice];
    [(CBIDSManager *)self sendErrorMessageToDevice:idsDevice2 reason:idsDevice];

    goto LABEL_9;
  }

  v21 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [fromCopy description];
    uTF8String = [v22 UTF8String];
    *buf = 136380675;
    v29 = uTF8String;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received 'unpair command' message from IDS device %{private}s", buf, 0xCu);
  }

  v24 = +[CloudXPCService sharedInstance];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10008A370;
  v25[3] = &unk_1002B9820;
  v25[4] = self;
  v26 = fromCopy;
  v27 = v9;
  [v24 sendCloudKitMsg:@"UnpairCloudDevice" args:commandCopy withReply:v25];

LABEL_13:
}

- (BOOL)validateMessage:(id)message from:(id)from
{
  messageCopy = message;
  fromCopy = from;
  v8 = [messageCopy objectForKeyedSubscript:@"MessageType"];
  v9 = [messageCopy objectForKeyedSubscript:@"DeviceName"];
  if (![v9 length])
  {
    idsDevice = [fromCopy idsDevice];
    [(CBIDSManager *)self sendErrorMessageToDevice:idsDevice reason:@"No friendly name specified"];
LABEL_18:

    LOBYTE(v24) = 0;
    goto LABEL_19;
  }

  v10 = [messageCopy objectForKeyedSubscript:@"PublicAddress"];
  v11 = [NSString stringWithFormat:@"Public %@", v10];
  v12 = sub_10007E7C4(v11);

  if (!v12)
  {
    idsDevice = [fromCopy idsDevice];
    v17 = [messageCopy objectForKeyedSubscript:@"PublicAddress"];
    [NSString stringWithFormat:@"Invalid public address (%@)", v17];
    v25 = LABEL_17:;
    [(CBIDSManager *)self sendErrorMessageToDevice:idsDevice reason:v25];

    goto LABEL_18;
  }

  v13 = [messageCopy objectForKeyedSubscript:@"EncryptionType"];
  v14 = [v13 isEqualToString:@"Basic"];

  if ((v14 & 1) == 0)
  {
    idsDevice = [fromCopy idsDevice];
    v17 = [messageCopy objectForKeyedSubscript:@"EncryptionType"];
    [NSString stringWithFormat:@"Invalid encryption type (%@)", v17];
    goto LABEL_17;
  }

  v15 = [messageCopy objectForKeyedSubscript:@"RequestedKeyType"];
  if ([v15 containsObject:@"EncryptionKeys"])
  {
  }

  else
  {
    v18 = [messageCopy objectForKeyedSubscript:@"RequestedKeyType"];
    v19 = [v18 containsObject:@"IdentityKeys"];

    if ((v19 & 1) == 0)
    {
      idsDevice = [fromCopy idsDevice];
      v17 = [messageCopy objectForKeyedSubscript:@"RequestedKeyType"];
      [NSString stringWithFormat:@"Invalid requested keys (%@)", v17];
      goto LABEL_17;
    }
  }

  v20 = [messageCopy objectForKeyedSubscript:@"RequestedKeyLength"];
  integerValue = [v20 integerValue];
  keyLength = [(CBIDSManager *)self keyLength];

  if (integerValue != keyLength)
  {
    idsDevice = [fromCopy idsDevice];
    v17 = [messageCopy objectForKeyedSubscript:@"RequestedKeyLength"];
    [NSString stringWithFormat:@"Invalid requested key length (%@)", v17];
    goto LABEL_17;
  }

  if (([@"PairingResponse" isEqualToString:v8] & 1) == 0 && !objc_msgSend(@"KeyDistribution", "isEqualToString:", v8) || (-[CBIDSManager requestedKeyTypes](self, "requestedKeyTypes"), v23 = objc_claimAutoreleasedReturnValue(), v24 = -[CBIDSManager validateKeys:requestedTypes:from:](self, "validateKeys:requestedTypes:from:", messageCopy, v23, fromCopy), v23, v24))
  {
    LOBYTE(v24) = 1;
  }

LABEL_19:

  return v24;
}

- (BOOL)validateKeys:(id)keys requestedTypes:(id)types from:(id)from
{
  typesCopy = types;
  fromCopy = from;
  v10 = [keys objectForKeyedSubscript:@"RequestedKeys"];
  if (![typesCopy containsObject:@"EncryptionKeys"])
  {
    goto LABEL_16;
  }

  v11 = @"LTK";
  v12 = [v10 objectForKeyedSubscript:@"LTK"];
  if (!v12)
  {
    goto LABEL_22;
  }

  v13 = v12;
  v14 = [v10 objectForKeyedSubscript:@"LTK"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_21:

    goto LABEL_22;
  }

  v15 = [v10 objectForKeyedSubscript:@"LTK"];
  v16 = [v15 length];

  if (v16 != 16)
  {
LABEL_22:
    idsDevice = [fromCopy idsDevice];
    v39 = [v10 objectForKeyedSubscript:v11];
    v45 = v11;
    v46 = v39;
    v40 = @"%@ not specified or invalid (%@)";
LABEL_23:
    v41 = [NSString stringWithFormat:v40, v45, v46];
    [(CBIDSManager *)self sendErrorMessageToDevice:idsDevice reason:v41];

    v37 = 0;
    goto LABEL_24;
  }

  v17 = [v10 objectForKeyedSubscript:@"LTKType"];
  if (!v17 || (v18 = v17, [v10 objectForKeyedSubscript:@"LTKType"], v19 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v19, v18, (isKindOfClass & 1) == 0))
  {
    idsDevice = [fromCopy idsDevice];
    v43 = [v10 objectForKeyedSubscript:@"LTKType"];
    v39 = v43;
    v44 = @"LTK type";
LABEL_27:
    v45 = v44;
    v46 = v43;
    v40 = @"%@ not specified or invalid (%@)";
    goto LABEL_23;
  }

  v21 = [v10 objectForKeyedSubscript:@"LTKLength"];
  if (!v21 || (v22 = v21, [v10 objectForKeyedSubscript:@"LTKLength"], v23 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v24 = objc_opt_isKindOfClass(), v23, v22, (v24 & 1) == 0))
  {
    idsDevice = [fromCopy idsDevice];
    v43 = [v10 objectForKeyedSubscript:@"LTKLength"];
    v39 = v43;
    v44 = @"LTK length";
    goto LABEL_27;
  }

  v25 = [v10 objectForKeyedSubscript:@"LTKLength"];
  unsignedIntegerValue = [v25 unsignedIntegerValue];
  keyLength = [(CBIDSManager *)self keyLength];

  if (unsignedIntegerValue != keyLength)
  {
    idsDevice = [fromCopy idsDevice];
    v39 = [v10 objectForKeyedSubscript:@"LTKLength"];
    v45 = v39;
    v40 = @"Invalid LTK key length (%@)";
    goto LABEL_23;
  }

  v11 = @"EDIV";
  v28 = [v10 objectForKeyedSubscript:@"EDIV"];
  if (!v28)
  {
    goto LABEL_22;
  }

  v13 = v28;
  v14 = [v10 objectForKeyedSubscript:@"EDIV"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  v29 = [v10 objectForKeyedSubscript:@"EDIV"];
  v30 = [v29 length];

  if (v30 != 2)
  {
    goto LABEL_22;
  }

  v11 = @"RAND";
  v31 = [v10 objectForKeyedSubscript:@"RAND"];
  if (!v31)
  {
    goto LABEL_22;
  }

  v13 = v31;
  v14 = [v10 objectForKeyedSubscript:@"RAND"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  v32 = [v10 objectForKeyedSubscript:@"RAND"];
  v33 = [v32 length];

  if (v33 != 8)
  {
    goto LABEL_22;
  }

LABEL_16:
  if ([typesCopy containsObject:@"IdentityKeys"])
  {
    v11 = @"IRK";
    v34 = [v10 objectForKeyedSubscript:@"IRK"];
    if (v34)
    {
      v13 = v34;
      v14 = [v10 objectForKeyedSubscript:@"IRK"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = [v10 objectForKeyedSubscript:@"IRK"];
        v36 = [v35 length];

        if (v36 == 16)
        {
          goto LABEL_20;
        }

        goto LABEL_22;
      }

      goto LABEL_21;
    }

    goto LABEL_22;
  }

LABEL_20:
  v37 = 1;
LABEL_24:

  return v37;
}

- (id)statedumpAndRecordDailyMetric
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100003948;
  v11 = sub_100003850;
  v12 = &stru_1002C1358;
  cloudPairingQueue = [(CBIDSManager *)self cloudPairingQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008AF60;
  v6[3] = &unk_1002B6ED8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(cloudPairingQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_statedumpAndRecordDailyMetric
{
  v134 = 0;
  v135 = &v134;
  v136 = 0x3032000000;
  v137 = sub_100003948;
  v138 = sub_100003850;
  v139 = 0;
  obj = 0;
  NSAppendPrintF_safe();
  objc_storeStrong(&v139, 0);
  v4 = (v135 + 5);
  v132 = v135[5];
  NSAppendPrintF_safe();
  objc_storeStrong(v4, v132);
  v96 = +[CBPreferencesManager deviceName];
  if (IsAppleInternalBuild())
  {
    v5 = (v135 + 5);
    v131 = v135[5];
    if (v96)
    {
      v6 = v96;
      uTF8String = [v96 UTF8String];
    }

    else
    {
      uTF8String = "none";
    }

    v82 = uTF8String;
    NSAppendPrintF_safe();
    objc_storeStrong(v5, v131);
  }

  v8 = (v135 + 5);
  v130 = v135[5];
  account = [(CBIDSManager *)self account];
  if (account)
  {
    if (IsAppleInternalBuild())
    {
      account2 = [(CBIDSManager *)self account];
      loginID = [account2 loginID];
      v10 = loginID;
      uTF8String2 = [loginID UTF8String];
      v12 = 1;
    }

    else
    {
      v12 = 0;
      uTF8String2 = "<redacted>";
    }
  }

  else
  {
    v12 = 0;
    uTF8String2 = "none";
  }

  v83 = uTF8String2;
  NSAppendPrintF_safe();
  objc_storeStrong(v8, v130);
  if (v12)
  {
  }

  v13 = (v135 + 5);
  v129 = v135[5];
  cloudIdentifier = [(CBIDSManager *)self cloudIdentifier];
  if (cloudIdentifier)
  {
    account2 = [(CBIDSManager *)self cloudIdentifier];
    v15 = account2;
    uTF8String3 = [account2 UTF8String];
  }

  else
  {
    uTF8String3 = "none";
  }

  v84 = uTF8String3;
  NSAppendPrintF_safe();
  objc_storeStrong(v13, v129);
  if (cloudIdentifier)
  {
  }

  v17 = (v135 + 5);
  v128 = v135[5];
  supportsVirtualAddress = [(CBIDSManager *)self supportsVirtualAddress];
  v19 = "NO";
  if (supportsVirtualAddress)
  {
    v19 = "YES";
  }

  v85 = v19;
  NSAppendPrintF_safe();
  objc_storeStrong(v17, v128);
  v20 = (v135 + 5);
  v127 = v135[5];
  localDeviceRandomAddress = [(CBIDSManager *)self localDeviceRandomAddress];
  if (localDeviceRandomAddress)
  {
    account2 = [(CBIDSManager *)self localDeviceRandomAddress];
    v22 = account2;
    uTF8String4 = [account2 UTF8String];
  }

  else
  {
    uTF8String4 = "none";
  }

  v86 = uTF8String4;
  NSAppendPrintF_safe();
  objc_storeStrong(v20, v127);
  if (localDeviceRandomAddress)
  {
  }

  v103 = +[NSMutableDictionary dictionary];
  v102 = +[NSMutableDictionary dictionary];
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  associatedDevices = [(CBIDSManager *)self associatedDevices];
  v97 = [associatedDevices sortedArrayUsingComparator:&stru_1002B9978];

  v100 = [v97 countByEnumeratingWithState:&v123 objects:v142 count:16];
  if (v100)
  {
    v98 = *v124;
    do
    {
      for (i = 0; i != v100; i = i + 1)
      {
        if (*v124 != v98)
        {
          objc_enumerationMutation(v97);
        }

        v25 = *(*(&v123 + 1) + 8 * i);
        v26 = [(CBIDSManager *)self roleWithDevice:v25];
        idsDevice = [v25 idsDevice];
        productName = [idsDevice productName];
        v105 = [v103 objectForKeyedSubscript:productName];

        if (!v105)
        {
          v105 = +[NSMutableDictionary dictionary];
        }

        deviceTypeToString = [idsDevice deviceTypeToString];
        v30 = [v105 objectForKeyedSubscript:deviceTypeToString];

        if (v30)
        {
          v31 = v30;
        }

        else
        {
          v31 = &off_1002CB810;
        }

        v101 = v31;
        v32 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v31 intValue] + 1);
        deviceTypeToString2 = [idsDevice deviceTypeToString];
        [v105 setObject:v32 forKeyedSubscript:deviceTypeToString2];

        productName2 = [idsDevice productName];
        [v103 setObject:v105 forKeyedSubscript:productName2];

        productName3 = [idsDevice productName];
        v36 = [v102 objectForKeyedSubscript:productName3];

        if (!v36)
        {
          v36 = +[NSMutableDictionary dictionary];
        }

        deviceTypeToString3 = [idsDevice deviceTypeToString];
        v38 = [v36 objectForKeyedSubscript:deviceTypeToString3];

        v122 = v38;
        NSAppendPrintF_safe();
        v39 = v38;

        v121 = v39;
        name = [idsDevice name];
        v41 = name;
        uTF8String5 = [name UTF8String];
        NSAppendPrintF_safe();
        v42 = v39;

        v120 = v42;
        uniqueID = [idsDevice uniqueID];
        v44 = uniqueID;
        uTF8String6 = [uniqueID UTF8String];
        NSAppendPrintF_safe();
        v45 = v42;

        v119 = v45;
        nsuuid = [idsDevice nsuuid];
        uUIDString = [nsuuid UUIDString];
        NSAppendPrintF_safe();
        v47 = v45;

        v118 = v47;
        [v25 isConnected];
        NSAppendPrintF_safe();
        v48 = v47;

        v117 = v48;
        v49 = "Unknown";
        if (v26 == 2)
        {
          v49 = "Responder";
        }

        if (v26 == 1)
        {
          v49 = "Initiator";
        }

        v90 = v49;
        NSAppendPrintF_safe();
        v50 = v117;

        v116 = v50;
        stateString = [v25 stateString];
        capitalizedString = [stateString capitalizedString];
        v53 = capitalizedString;
        uTF8String7 = [capitalizedString UTF8String];
        NSAppendPrintF_safe();
        v54 = v50;

        v115 = v54;
        deviceTypeToString4 = [idsDevice deviceTypeToString];
        v56 = deviceTypeToString4;
        uTF8String8 = [deviceTypeToString4 UTF8String];
        productName4 = [idsDevice productName];
        v59 = productName4;
        uTF8String9 = [productName4 UTF8String];
        productVersion = [idsDevice productVersion];
        v62 = productVersion;
        uTF8String10 = [productVersion UTF8String];
        productBuildVersion = [idsDevice productBuildVersion];
        v65 = productBuildVersion;
        uTF8String11 = [productBuildVersion UTF8String];
        v92 = uTF8String8;
        NSAppendPrintF_safe();
        v66 = v54;

        deviceTypeToString5 = [idsDevice deviceTypeToString];
        [v36 setObject:v66 forKeyedSubscript:deviceTypeToString5];

        productName5 = [idsDevice productName];
        [v102 setObject:v36 forKeyedSubscript:productName5];
      }

      v100 = [v97 countByEnumeratingWithState:&v123 objects:v142 count:16];
    }

    while (v100);
  }

  v69 = (v135 + 5);
  v114 = v135[5];
  associatedDevices2 = [(CBIDSManager *)self associatedDevices];
  v93 = [associatedDevices2 count];
  NSAppendPrintF_safe();
  objc_storeStrong(v69, v114);

  v71 = (v135 + 5);
  v113 = v135[5];
  associatedDevices3 = [(CBIDSManager *)self associatedDevices];
  v73 = [associatedDevices3 cuFilteredArrayUsingBlock:&stru_1002B99B8];
  v94 = [v73 count];
  NSAppendPrintF_safe();
  objc_storeStrong(v71, v113);

  v110[0] = _NSConcreteStackBlock;
  v110[1] = 3221225472;
  v110[2] = sub_10008BCE0;
  v110[3] = &unk_1002B9A08;
  v74 = v102;
  v111 = v74;
  v112 = &v134;
  [v103 enumerateKeysAndObjectsUsingBlock:{v110, v94}];
  v75 = (v135 + 5);
  v109 = v135[5];
  NSAppendPrintF_safe();
  objc_storeStrong(v75, v109);
  cPAddressMapping = [(CBIDSManager *)self CPAddressMapping];
  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_10008BFD4;
  v108[3] = &unk_1002B9A30;
  v108[4] = &v134;
  [cPAddressMapping enumerateKeysAndObjectsUsingBlock:v108];

  if (IsAppleInternalBuild())
  {
    v77 = (v135 + 5);
    v107 = v135[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v77, v107);
    messageIdentifiersWaitingForAck = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_10008C028;
    v106[3] = &unk_1002B9A58;
    v106[4] = &v134;
    [messageIdentifiersWaitingForAck enumerateKeysAndObjectsUsingBlock:v106];
  }

  v140 = @"Stats";
  v141 = v103;
  v79 = [NSDictionary dictionaryWithObjects:&v141 forKeys:&v140 count:1];
  CUMetricsLog();

  v80 = v135[5];
  _Block_object_dispose(&v134, 8);

  return v80;
}

- (BOOL)shouldUpgradeToManatee
{
  v3 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Manatee available, Check for allDevicesJazzKon", buf, 2u);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  service = [(CBIDSManager *)self service];
  devices = [service devices];

  v6 = [devices countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v45;
    *&v7 = 134218496;
    v34 = v7;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(devices);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        if ([v12 isHSATrusted])
        {
          productName = [v12 productName];
          v14 = [productName isEqualToString:@"Apple TVOS"];

          if (v14)
          {
            v31 = sub_100005C14("MagicPairing");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v32 = "allDevicesJazzKon: checkManateeZoneUpgrade: account has AppleTV";
              goto LABEL_50;
            }

            goto LABEL_51;
          }

          productName2 = [v12 productName];
          v16 = [productName2 isEqualToString:@"iPhone OS"];

          if (v16)
          {
            v17 = sub_100005C14("MagicPairing");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              if (v12)
              {
                [v12 operatingSystemVersion];
                v18 = v43;
                [v12 operatingSystemVersion];
                v19 = v42;
                [v12 operatingSystemVersion];
                v20 = v41;
              }

              else
              {
                v20 = 0;
                v19 = 0;
                v18 = 0;
                v43 = 0;
                v42 = 0;
                v41 = 0;
              }

              *buf = v34;
              v49 = v18;
              v50 = 2048;
              v51 = v19;
              v52 = 2048;
              v53 = v20;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "allDevicesJazzKon: checkManateeZoneUpgrade: account has iOS, majorVersion %ld, minorVersion %ld, patchVersion %ld", buf, 0x20u);
            }

            if (!v12 || ([v12 operatingSystemVersion], v40 <= 12))
            {
              v31 = sub_100005C14("MagicPairing");
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v32 = "allDevicesJazzKon: iOS checkManateeZoneUpgrade: account not eligible";
                goto LABEL_50;
              }

              goto LABEL_51;
            }
          }

          else
          {
            modelIdentifier = [v12 modelIdentifier];
            v22 = [modelIdentifier containsString:@"Mac"];

            if (v22)
            {
              v23 = sub_100005C14("MagicPairing");
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                if (v12)
                {
                  [v12 operatingSystemVersion];
                  v24 = v39;
                  [v12 operatingSystemVersion];
                  v25 = v38;
                  [v12 operatingSystemVersion];
                  v26 = v37;
                }

                else
                {
                  v26 = 0;
                  v25 = 0;
                  v24 = 0;
                  v39 = 0;
                  v38 = 0;
                  v37 = 0;
                }

                *buf = v34;
                v49 = v24;
                v50 = 2048;
                v51 = v25;
                v52 = 2048;
                v53 = v26;
                _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "allDevicesJazzKon: checkManateeZoneUpgrade: account has macOS, majorVersion %ld, minorVersion %ld, patchVersion %ld", buf, 0x20u);
              }

              if (!v12 || ([v12 operatingSystemVersion], v36 < 11) && (objc_msgSend(v12, "operatingSystemVersion"), v35 <= 14))
              {
                v31 = sub_100005C14("MagicPairing");
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v32 = "allDevicesJazzKon: macOS checkManateeZoneUpgrade: account not eligible";
LABEL_50:
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 2u);
                }

LABEL_51:

                LOBYTE(v31) = 0;
                goto LABEL_52;
              }
            }
          }

          v9 = 1;
        }
      }

      v8 = [devices countByEnumeratingWithState:&v44 objects:v54 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

  v27 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v28 = "yes";
    }

    else
    {
      v28 = "no";
    }

    v29 = +[CloudXPCService sharedInstance];
    if ([v29 manateeZoneUpgraded])
    {
      v30 = "yes";
    }

    else
    {
      v30 = "no";
    }

    *buf = 136315394;
    v49 = v28;
    v50 = 2080;
    v51 = v30;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "allDevicesJazzKon? - %s, current manatee state - %s", buf, 0x16u);
  }

  if (v9)
  {
    devices = +[CloudXPCService sharedInstance];
    LODWORD(v31) = [devices manateeZoneUpgraded] ^ 1;
LABEL_52:
  }

  else
  {
    LOBYTE(v31) = 0;
  }

  return v31;
}

- (BOOL)allDevicesStarSky
{
  service = [(CBIDSManager *)self service];
  devices = [service devices];

  v4 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v43 = [devices count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Check for allDevicesStarSky, count: %lu", buf, 0xCu);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = devices;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v39 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v38 + 1) + 8 * v9);
      if (![v10 isHSATrusted])
      {
        break;
      }

      modelIdentifier = [v10 modelIdentifier];
      if ([modelIdentifier hasPrefix:@"AppleTV"])
      {
        if (!v10)
        {

LABEL_32:
          v18 = sub_100005C14("CloudPairing");
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_49;
          }

          *buf = 0;
          v19 = "allDevicesJazzKon: checkManateeZoneUpgrade: account has AppleTV";
LABEL_34:
          v20 = v18;
          v21 = 2;
          goto LABEL_48;
        }

        [v10 operatingSystemVersion];

        if (v37 <= 14)
        {
          goto LABEL_32;
        }
      }

      else
      {
      }

      modelIdentifier2 = [v10 modelIdentifier];
      if ([modelIdentifier2 hasPrefix:@"iPhone"])
      {
        if (!v10)
        {

LABEL_36:
          v18 = sub_100005C14("CloudPairing");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            if (v10)
            {
              [v10 operatingSystemVersion];
              v22 = v35;
              [v10 operatingSystemVersion];
              v23 = v34;
              [v10 operatingSystemVersion];
              v24 = v33;
            }

            else
            {
              v24 = 0;
              v23 = 0;
              v22 = 0;
            }

            *buf = 134218496;
            v43 = v22;
            v44 = 2048;
            v45 = v23;
            v46 = 2048;
            v47 = v24;
            v19 = "allDevicesJazzKon: checkManateeZoneUpgrade: account has iOS, majorVersion %ld, minorVersion %ld, patchVersion %ld";
            goto LABEL_47;
          }

          goto LABEL_49;
        }

        [v10 operatingSystemVersion];

        if (v36 <= 14)
        {
          goto LABEL_36;
        }
      }

      else
      {
      }

      modelIdentifier3 = [v10 modelIdentifier];
      if ([modelIdentifier3 containsString:@"Mac"])
      {
        if (!v10)
        {

LABEL_40:
          v18 = sub_100005C14("CloudPairing");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            if (v10)
            {
              [v10 operatingSystemVersion];
              v25 = v31;
              [v10 operatingSystemVersion];
              v26 = v30;
              [v10 operatingSystemVersion];
              v27 = v29;
            }

            else
            {
              v27 = 0;
              v26 = 0;
              v25 = 0;
            }

            *buf = 134218496;
            v43 = v25;
            v44 = 2048;
            v45 = v26;
            v46 = 2048;
            v47 = v27;
            v19 = "allDevicesJazzKon: checkManateeZoneUpgrade: account has macOS, majorVersion %ld, minorVersion %ld, patchVersion %ld";
LABEL_47:
            v20 = v18;
            v21 = 32;
LABEL_48:
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
          }

LABEL_49:

          v17 = 0;
          v14 = v5;
          goto LABEL_50;
        }

        [v10 operatingSystemVersion];

        if (v32 <= 11)
        {
          goto LABEL_40;
        }
      }

      else
      {
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v38 objects:v48 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        goto LABEL_26;
      }
    }

    v18 = sub_100005C14("MagicPairing");
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_49;
    }

    *buf = 0;
    v19 = "allDevicesStarSky, but not HSA trusted";
    goto LABEL_34;
  }

LABEL_26:

  v14 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = +[MPCloudKit_Manatee sharedInstance];
    manateeZoneUpgraded = [v15 manateeZoneUpgraded];
    *buf = 67109120;
    LODWORD(v43) = manateeZoneUpgraded;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "allDevicesStarSky, current manatee state - %d", buf, 8u);
  }

  v17 = 1;
LABEL_50:

  return v17;
}

- (NSArray)idsDevices
{
  service = [(CBIDSManager *)self service];
  devices = [service devices];

  return devices;
}

- (void)storePublicAddressMapping:(id)mapping message:(id)message
{
  mappingCopy = mapping;
  v7 = [message objectForKey:@"PublicAddress"];
  if (!v7)
  {
    cPAddressMapping4 = sub_100005C14("CloudPairing");
    if (!os_log_type_enabled(cPAddressMapping4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    LOWORD(v18) = 0;
    v17 = "cloudpaird: storePublicAddressMapping: Ignoring unpair becasue the address passed in is nil";
LABEL_15:
    _os_log_impl(&_mh_execute_header, cPAddressMapping4, OS_LOG_TYPE_DEFAULT, v17, &v18, 2u);
    goto LABEL_16;
  }

  if (!mappingCopy)
  {
    cPAddressMapping4 = sub_100005C14("CloudPairing");
    if (!os_log_type_enabled(cPAddressMapping4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    LOWORD(v18) = 0;
    v17 = "cloudpaird: storePublicAddressMapping: Ignoring request becasue the device is nil";
    goto LABEL_15;
  }

  uniqueID = [mappingCopy uniqueID];

  if (!uniqueID)
  {
    cPAddressMapping4 = sub_100005C14("CloudPairing");
    if (!os_log_type_enabled(cPAddressMapping4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    LOWORD(v18) = 0;
    v17 = "cloudpaird: storePublicAddressMapping: Device uniqueID is nil so throw this request out";
    goto LABEL_15;
  }

  cPAddressMapping = [(CBIDSManager *)self CPAddressMapping];
  uniqueID2 = [mappingCopy uniqueID];
  v11 = [cPAddressMapping objectForKey:uniqueID2];

  cPAddressMapping2 = [(CBIDSManager *)self CPAddressMapping];
  uniqueID3 = [mappingCopy uniqueID];
  if (v11)
  {
    [cPAddressMapping2 removeObjectForKey:uniqueID3];

    cPAddressMapping2 = [(CBIDSManager *)self CPAddressMapping];
    uniqueID3 = [mappingCopy uniqueID];
  }

  [cPAddressMapping2 setObject:v7 forKey:uniqueID3];

  v14 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    cPAddressMapping3 = [(CBIDSManager *)self CPAddressMapping];
    v18 = 138412290;
    v19 = cPAddressMapping3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "cloudpaird: storePublicAddressMapping: current mapping :%@", &v18, 0xCu);
  }

  [CBPreferencesManager removeuserPreference:@"AddressMapping" sync:1];
  cPAddressMapping4 = [(CBIDSManager *)self CPAddressMapping];
  [CBPreferencesManager setuserPreference:@"AddressMapping" value:cPAddressMapping4 sync:1];
LABEL_16:
}

- (id)publicAddressForIDSDevice:(id)device
{
  deviceCopy = device;
  v5 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1001F0DC0();
  }

  cPAddressMapping = [(CBIDSManager *)self CPAddressMapping];
  v7 = [cPAddressMapping count];

  if (!v7)
  {
    v8 = [CBPreferencesManager readUserPreference:@"AddressMapping"];

    if (v8)
    {
      v9 = [CBPreferencesManager readUserPreference:@"AddressMapping"];
      v10 = [v9 mutableCopy];
      [(CBIDSManager *)self setCPAddressMapping:v10];
    }
  }

  cPAddressMapping2 = [(CBIDSManager *)self CPAddressMapping];
  v12 = [cPAddressMapping2 objectForKey:deviceCopy];

  if (v12)
  {
    cPAddressMapping3 = [(CBIDSManager *)self CPAddressMapping];
    v14 = [cPAddressMapping3 objectForKey:deviceCopy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)idsDeviceForBTAddress:(id)address
{
  addressCopy = address;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  service = [(CBIDSManager *)self service];
  devices = [service devices];

  v7 = [devices countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = +[CBIDSManager sharedInstance];
        uniqueID = [v10 uniqueID];
        v13 = [v11 publicAddressForIDSDevice:uniqueID];

        if (v13 && ([v13 isEqualToString:addressCopy] & 1) != 0)
        {
          v7 = v10;

          goto LABEL_12;
        }
      }

      v7 = [devices countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

- (id)_fetchArrayOfCloudDevicesForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  cloudPairingQueue = [(CBIDSManager *)self cloudPairingQueue];
  dispatch_assert_queue_V2(cloudPairingQueue);

  v6 = [NSMutableArray arrayWithCapacity:2];
  v7 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = peripheralCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Find cloud pairing identifier for peripheral: %@", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  associatedDevices = [(CBIDSManager *)self associatedDevices];
  v9 = [associatedDevices countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v26;
    *&v10 = 138412546;
    v24 = v10;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(associatedDevices);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        idsDevice = [v14 idsDevice];
        nsuuid = [idsDevice nsuuid];
        v17 = [nsuuid isEqual:peripheralCopy];

        if (v17)
        {
          v18 = sub_100005C14("CloudPairing");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            idsDevice2 = [v14 idsDevice];
            uniqueID = [idsDevice2 uniqueID];
            *buf = v24;
            v30 = peripheralCopy;
            v31 = 2112;
            v32 = uniqueID;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Found cloud pairing identifier for peripheral: %@ as %@", buf, 0x16u);
          }

          [v6 addObject:v14];
        }
      }

      v11 = [associatedDevices countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v11);
  }

  v21 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = peripheralCopy;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Cloud Devices for peripheral: %@ - %@", buf, 0x16u);
  }

  v22 = [v6 copy];

  return v22;
}

- (id)_fetchCloudPairingIdentifierForPeripheral:(id)peripheral
{
  peripheralCopy = peripheral;
  cloudPairingQueue = [(CBIDSManager *)self cloudPairingQueue];
  dispatch_assert_queue_V2(cloudPairingQueue);

  v6 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = peripheralCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Find cloud pairing identifier for peripheral: %@", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  associatedDevices = [(CBIDSManager *)self associatedDevices];
  v8 = [associatedDevices countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(associatedDevices);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        idsDevice = [v12 idsDevice];
        nsuuid = [idsDevice nsuuid];
        v15 = [nsuuid isEqual:peripheralCopy];

        if (v15)
        {
          v17 = sub_100005C14("CloudPairing");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            idsDevice2 = [v12 idsDevice];
            uniqueID = [idsDevice2 uniqueID];
            *buf = 138412546;
            v27 = peripheralCopy;
            v28 = 2112;
            v29 = uniqueID;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found cloud pairing identifier for peripheral: %@ as %@", buf, 0x16u);
          }

          idsDevice3 = [v12 idsDevice];
          uniqueID2 = [idsDevice3 uniqueID];

          goto LABEL_17;
        }
      }

      v9 = [associatedDevices countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  associatedDevices = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(associatedDevices, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = peripheralCopy;
    _os_log_impl(&_mh_execute_header, associatedDevices, OS_LOG_TYPE_DEFAULT, "No cloud pairing identifier FOUND for peripheral: %@", buf, 0xCu);
  }

  uniqueID2 = 0;
LABEL_17:

  return uniqueID2;
}

- (void)fetchCloudPairingIdentifierForPeripheral:(id)peripheral withCompletion:(id)completion
{
  peripheralCopy = peripheral;
  completionCopy = completion;
  v8 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = peripheralCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Find cloud pairing identifier for peripheral: %@", buf, 0xCu);
  }

  cloudPairingQueue = [(CBIDSManager *)self cloudPairingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008D8C8;
  block[3] = &unk_1002B6BB0;
  block[4] = self;
  v13 = peripheralCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = peripheralCopy;
  dispatch_async(cloudPairingQueue, block);
}

- (void)fetchIDSDevicesWithCompletion:(id)completion
{
  completionCopy = completion;
  cloudPairingQueue = [(CBIDSManager *)self cloudPairingQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008D9E0;
  v7[3] = &unk_1002B6998;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(cloudPairingQueue, v7);
}

- (BOOL)isLegacyDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy && ![(CBIDSManager *)self allDevicesStarSky])
  {
    service = [(CBIDSManager *)self service];
    devices = [service devices];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = devices;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          if ([v13 isHSATrusted])
          {
            name = [v13 name];
            v15 = [name isEqualToString:deviceCopy];

            if (v15)
            {
              modelIdentifier = [v13 modelIdentifier];
              if ([modelIdentifier containsString:@"Mac"])
              {
                v17 = &v22;
                if (!v13)
                {
                  goto LABEL_24;
                }

                [v13 operatingSystemVersion];
                v18 = v22;

                if (v18 < 12)
                {
                  goto LABEL_25;
                }
              }

              else
              {
              }

              modelIdentifier = [v13 productName];
              if ([modelIdentifier isEqualToString:@"iPhone OS"])
              {
                v17 = &v21;
                if (!v13)
                {
LABEL_24:
                  *v17 = 0;
                  v17[1] = 0;
                  v17[2] = 0;

LABEL_25:
                  v5 = 1;
                  goto LABEL_26;
                }

                [v13 operatingSystemVersion];
                v19 = v21;

                if (v19 < 14)
                {
                  goto LABEL_25;
                }
              }

              else
              {
              }
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_26:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end