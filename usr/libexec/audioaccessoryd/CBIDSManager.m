@interface CBIDSManager
+ (id)sharedInstance;
- (BOOL)allDevicesStarSky;
- (BOOL)isLegacyDevice:(id)a3;
- (BOOL)shouldUpgradeToManatee;
- (BOOL)validateKeys:(id)a3 requestedTypes:(id)a4 from:(id)a5;
- (BOOL)validateMessage:(id)a3 from:(id)a4;
- (CBIDSManager)init;
- (NSArray)idsDevices;
- (id)_fetchArrayOfCloudDevicesForPeripheral:(id)a3;
- (id)_fetchCloudPairingIdentifierForPeripheral:(id)a3;
- (id)_statedumpAndRecordDailyMetric;
- (id)deviceForIDSDevice:(id)a3 createNew:(BOOL)a4;
- (id)filteredDevicesForIDSDevices:(id)a3;
- (id)idsDeviceForBTAddress:(id)a3;
- (id)publicAddressForIDSDevice:(id)a3;
- (id)statedumpAndRecordDailyMetric;
- (unint64_t)roleWithDevice:(id)a3;
- (void)_sendRePairRequest:(id)a3 forBundleID:(id)a4;
- (void)checkFirstUnlockForIDS;
- (void)cloudPairingCompletedWithResponse:(id)a3 localKeys:(id)a4 from:(id)a5 forProtocolID:(id)a6;
- (void)connectionUpdatedForBluetoothIdentifier:(id)a3 connected:(BOOL)a4;
- (void)fetchCloudPairingIdentifierForPeripheral:(id)a3 withCompletion:(id)a4;
- (void)fetchIDSDevicesWithCompletion:(id)a3;
- (void)fetchPublicAddressWithCompletion:(id)a3;
- (void)generateKeyDictForTypes:(id)a3 keyLength:(unint64_t)a4 forAddress:(id)a5 withCompletion:(id)a6;
- (void)handleCloudPairingMessage:(id)a3 from:(id)a4;
- (void)handleInitiatorPairingKeys:(id)a3 from:(id)a4 forProtocolID:(id)a5;
- (void)handleKeyDistribution:(id)a3 from:(id)a4;
- (void)handlePairingFailure:(id)a3 from:(id)a4;
- (void)handlePairingRequest:(id)a3 from:(id)a4;
- (void)handlePairingResponse:(id)a3 from:(id)a4;
- (void)handleRepairRequest:(id)a3 from:(id)a4;
- (void)handleResponderPairingKeys:(id)a3 from:(id)a4 forProtocolID:(id)a5;
- (void)handleSecurityRequest:(id)a3 from:(id)a4;
- (void)handleUnpairCommand:(id)a3 from:(id)a4;
- (void)initializeIDS;
- (void)initiatePairing:(id)a3;
- (void)initiatePairingAgainIfNoAckReceived:(id)a3 attempt:(unint64_t)a4;
- (void)retryIDSSetup;
- (void)sendCloudPairingResponseMessage:(id)a3 toDevice:(id)a4 version:(id)a5;
- (void)sendErrorMessageToDevice:(id)a3 reason:(id)a4;
- (void)sendInitialPairingIDSMessage:(id)a3 forDevice:(id)a4 withRole:(unint64_t)a5;
- (void)sendRePairCloudPairingMessage:(id)a3 toDevice:(id)a4 bundleID:(id)a5;
- (void)sendRePairRequest:(id)a3 forBundleID:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 fromID:(id)a6 hasBeenDeliveredWithContext:(id)a7;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)service:(id)a3 devicesChanged:(id)a4;
- (void)storePublicAddressMapping:(id)a3 message:(id)a4;
- (void)updateActiveAccount:(id)a3;
- (void)updateCloudPairings:(id)a3 newDevices:(id)a4;
- (void)validateCloudPairing:(id)a3;
- (void)xpcUpdateCloudPairings:(id)a3;
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
    v4 = [(CBIDSManager *)self cloudPairingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007EE98;
    block[3] = &unk_1002B6880;
    block[4] = self;
    dispatch_async(v4, block);
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
  v3 = [(CBIDSManager *)self service];

  if (v3)
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
      v11 = [(CBIDSManager *)self cloudIdentifier];
      v12 = [(CBIDSManager *)self localDeviceName];
      *buf = 138412802;
      v24 = v11;
      v25 = 2112;
      v26 = &off_1002CB7F8;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "initializeIDS (%@) checkIn version: %@, local name: %@", buf, 0x20u);
    }

    v13 = [(CBIDSManager *)self cloudIdentifier];
    if (v13 && (v14 = v13, [(CBIDSManager *)self localDeviceName], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15))
    {
      v16 = +[CloudXPCService sharedInstance];
      v21[0] = @"kCheckInVersion";
      v21[1] = @"kIDSLocalDeviceUniqueID";
      v22[0] = &off_1002CB7F8;
      v17 = [(CBIDSManager *)self cloudIdentifier];
      v22[1] = v17;
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
  v4 = [(CBIDSManager *)self cloudPairingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007FB48;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_after(v3, v4, block);
}

- (void)validateCloudPairing:(id)a3
{
  v4 = a3;
  v50 = +[NSMutableArray array];
  v5 = [(CBIDSManager *)self associatedDevices];
  v51 = [NSMutableArray arrayWithArray:v5];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v55 = self;
  obj = [(CBIDSManager *)self associatedDevices];
  v6 = [obj countByEnumeratingWithState:&v60 objects:v71 count:16];
  if (v6)
  {
    v7 = v6;
    v48 = v57;
    v8 = *v61;
    v53 = *v61;
    v49 = v4;
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
        v11 = [v10 idsDevice];
        v12 = [v11 nsuuid];

        if (v12)
        {
          v13 = [v10 idsDevice];
          v14 = [v13 nsuuid];
          v15 = [v14 UUIDString];
          v16 = [v4 objectForKey:v15];

          if (-[NSObject length](v16, "length") && ([v10 idsDevice], v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "uniqueID"), v18 = objc_claimAutoreleasedReturnValue(), v19 = -[NSObject isEqualToString:](v16, "isEqualToString:", v18), v18, v17, v19))
          {
            v20 = sub_100005C14("CloudPairing");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v10 idsDevice];
              v22 = [v21 nsuuid];
              *buf = 138412546;
              v68 = v22;
              v69 = 2112;
              v70 = v16;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ is already cloud paired with IDS Device: %@", buf, 0x16u);
            }

            [v50 addObject:v16];
          }

          else
          {
            v23 = [v10 idsDevice];
            v24 = [v23 nsuuid];
            v25 = [(CBIDSManager *)v55 _fetchArrayOfCloudDevicesForPeripheral:v24];

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
              v28 = [v10 idsDevice];
              v29 = [v28 nsuuid];
              v30 = [(CBIDSManager *)v55 _fetchCloudPairingIdentifierForPeripheral:v29];

              if (v30)
              {
                v31 = sub_100005C14("CloudPairing");
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  v32 = [v10 idsDevice];
                  v33 = [v32 nsuuid];
                  v34 = [v10 idsDevice];
                  v35 = [v34 uniqueID];
                  *buf = 138412546;
                  v68 = v33;
                  v69 = 2112;
                  v70 = v35;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Removing stale LE Cloud Paired Device %@ is already cloud paired with IDS Device: %@", buf, 0x16u);
                }

                v36 = +[CloudXPCService sharedInstance];
                v65 = @"kCloudDeviceID";
                v37 = [v10 idsDevice];
                v38 = [v37 nsuuid];
                v39 = [v38 UUIDString];
                v66 = v39;
                v40 = [NSDictionary dictionaryWithObjects:&v66 forKeys:&v65 count:1];
                [v36 sendCloudKitMsg:@"RemoveStaleLEPairedDevice" args:v40];

                v41 = [v10 idsDevice];
                [v41 setNSUUID:0];

                [v51 removeObject:v10];
                v42 = [v10 idsDevice];
                v43 = [v42 uniqueID];
                v64 = v43;
                v44 = [NSArray arrayWithObjects:&v64 count:1];
                v45 = +[NSBundle mainBundle];
                v46 = [v45 bundleIdentifier];
                [(CBIDSManager *)v55 sendRePairRequest:v44 forBundleID:v46];

                v4 = v49;
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
            v26 = [v10 idsDevice];
            v27 = [v26 uniqueID];
            *buf = 138412290;
            v68 = v27;
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

  v47 = [(CBIDSManager *)v55 _statedumpAndRecordDailyMetric];
  [(CBIDSManager *)v55 updateCloudPairings:v50 newDevices:v51];
}

- (void)fetchPublicAddressWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CBIDSManager *)self publicAddress];

  v6 = sub_100005C14("CloudPairing");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [(CBIDSManager *)self publicAddress];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "have public address: %@", buf, 0xCu);
    }

    if (v4)
    {
      v4[2](v4, 0);
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
    v11 = v4;
    [v9 sendCloudKitMsg:@"FetchPublicAddress" args:&__NSDictionary0__struct withReply:v10];
  }
}

- (void)xpcUpdateCloudPairings:(id)a3
{
  v4 = a3;
  v5 = [(CBIDSManager *)self cloudPairingQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100080924;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)connectionUpdatedForBluetoothIdentifier:(id)a3 connected:(BOOL)a4
{
  v18 = a4;
  v5 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [(CBIDSManager *)self associatedDevices];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 idsDevice];
        v13 = [v12 nsuuid];
        v14 = [v13 UUIDString];
        v15 = [v14 isEqualToString:v5];

        if (v15)
        {
          v16 = sub_100005C14("CloudPairing");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = "no";
            if (v18)
            {
              v17 = "yes";
            }

            *buf = 138412546;
            v24 = v11;
            v25 = 2080;
            v26 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Connection updated for device: %@, connected: %s", buf, 0x16u);
          }

          [v11 setIsConnected:v18];
          goto LABEL_15;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (void)updateCloudPairings:(id)a3 newDevices:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v139 = v6;
    *&v139[8] = 2112;
    *v140 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MUC - updateCloudPairings, ids: %@, devices: %@", buf, 0x16u);
  }

  v9 = [(CBIDSManager *)self publicAddress];

  if (v9)
  {
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v103 = v7;
    obj = v7;
    v106 = v6;
    v117 = self;
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
        v12 = [v11 idsDevice];
        v13 = [v12 uniqueID];
        v14 = [v6 indexOfObject:v13];

        v15 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
        v129[0] = _NSConcreteStackBlock;
        v129[1] = 3221225472;
        v129[2] = sub_100081C00;
        v129[3] = &unk_1002B96B8;
        v129[4] = v11;
        v129[5] = self;
        v16 = [v15 keysOfEntriesPassingTest:v129];

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
          v25 = [(CBIDSManager *)self service];
          v26 = [v25 canSend];

          if (v26)
          {
            v27 = [(CBIDSManager *)self unpairedIDSCloudIdentifiers];
            v28 = [v11 idsDevice];
            v29 = [v28 uniqueID];
            [v27 addObject:v29];

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

              v33 = [v11 idsDevice];
              v34 = [v33 nsuuid];
              v35 = [v11 description];
              v36 = [v35 UTF8String];
              *buf = 136315907;
              *v139 = v32;
              *&v139[8] = 1024;
              *v140 = v31;
              *&v140[4] = 2112;
              *&v140[6] = v34;
              *&v140[14] = 2081;
              *&v140[16] = v36;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Initiating pairing %swith unpaired IDS device [New: %i] (BT UUID: %@) %{private}s", buf, 0x26u);
            }

            self = v117;
            if (v114)
            {
              -[CBIDSManager initiatePairingAgainIfNoAckReceived:attempt:](v117, "initiatePairingAgainIfNoAckReceived:attempt:", v11, [v16 count]);
            }

            else
            {
              [(CBIDSManager *)v117 initiatePairing:v11];
            }
          }

          else
          {
            v37 = sub_100005C14("CloudPairing");
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v38 = [v11 idsDevice];
              v39 = [v38 nsuuid];
              v40 = [v11 description];
              v41 = [v40 UTF8String];
              *buf = 138412547;
              *v139 = v39;
              *&v139[8] = 2081;
              *v140 = v41;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "IDS not ready cannot initiate pairing with IDS device (BT UUID: %@) %{private}s", buf, 0x16u);

              self = v117;
            }
          }

          goto LABEL_36;
        }

        v18 = [v11 idsDevice];
        v19 = [v18 nsuuid];
        if (v19)
        {
          v110 = [v11 idsDevice];
          v109 = [v110 uniqueID];
          v20 = [(CBIDSManager *)self publicAddressForIDSDevice:?];
          if (v20)
          {
            v21 = 0;
            goto LABEL_19;
          }

          v108 = 0;
        }

        v22 = [(CBIDSManager *)self unpairedIDSCloudIdentifiers];
        v23 = [v11 idsDevice];
        v24 = [v23 uniqueID];
        v21 = [v22 containsObject:v24] ^ 1 | v17;

        if (v19)
        {
          v6 = v106;
          self = v117;
          v20 = v108;
LABEL_19:
          v108 = v20;

          if (v21)
          {
            goto LABEL_20;
          }

          goto LABEL_33;
        }

        v6 = v106;
        self = v117;
        if (v21)
        {
          goto LABEL_20;
        }

LABEL_33:
        v42 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v115 = [v11 idsDevice];
          v105 = [v115 uniqueID];
          v43 = [v6 indexOfObject:v105] != 0x7FFFFFFFFFFFFFFFLL;
          v104 = [(CBIDSManager *)self unpairedIDSCloudIdentifiers];
          v44 = [v11 idsDevice];
          v45 = [v44 uniqueID];
          v46 = [v104 containsObject:v45];
          v47 = [v11 idsDevice];
          v48 = [v47 nsuuid];
          v49 = [v11 description];
          v50 = [v49 UTF8String];
          *buf = 67109891;
          *v139 = v43;
          *&v139[4] = 1024;
          *&v139[6] = v46;
          *v140 = 2112;
          *&v140[2] = v48;
          *&v140[10] = 2081;
          *&v140[12] = v50;
          _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Device paired or deffered pairing for IDS device [Old: %i - Cached: %i] (BT UUID: %@) %{private}s", buf, 0x22u);

          v6 = v106;
          self = v117;
        }

LABEL_36:
      }

      v112 = [obj countByEnumeratingWithState:&v130 objects:v141 count:16];
      if (!v112)
      {
LABEL_38:

        if ([v6 count])
        {
          v51 = 0;
          do
          {
            v126[0] = _NSConcreteStackBlock;
            v126[1] = 3221225472;
            v126[2] = sub_100081D1C;
            v126[3] = &unk_1002B96E0;
            v52 = v6;
            v127 = v52;
            v128 = v51;
            if ([obj indexOfObjectPassingTest:v126] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v124 = 0u;
              v125 = 0u;
              v122 = 0u;
              v123 = 0u;
              v53 = [(CBIDSManager *)v117 associatedDevices];
              v54 = [v53 countByEnumeratingWithState:&v122 objects:v137 count:16];
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
                      objc_enumerationMutation(v53);
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
                        v63 = [v59 idsDevice];
                        v64 = [v63 deviceType];

                        if (v64 == 5)
                        {
                          v93 = sub_100005C14("CloudPairing");
                          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                          {
                            v95 = [v55 objectAtIndexedSubscript:v51];
                            *buf = 138412290;
                            *v139 = v95;
                            _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "Skip telling btd to remove ATV that maybe in setup: %@", buf, 0xCu);
                          }

                          v6 = v106;
                          goto LABEL_77;
                        }
                      }

                      else
                      {
                      }
                    }
                  }

                  v56 = [v53 countByEnumeratingWithState:&v122 objects:v137 count:16];
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
              v116 = [(CBIDSManager *)v117 associatedDevices];
              v67 = [v116 countByEnumeratingWithState:&v118 objects:v136 count:16];
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
                      objc_enumerationMutation(v116);
                    }

                    v71 = *(*(&v118 + 1) + 8 * k);
                    v72 = [v71 idsDevice];
                    v73 = [v72 uniqueID];
                    v74 = [v55 objectAtIndexedSubscript:v51];
                    v75 = [v73 isEqualToIgnoringCase:v74];

                    if (v75)
                    {
                      [v71 setState:0];
                      v76 = [v71 idsDevice];
                      v77 = [v76 uniqueID];
                      v78 = [(CBIDSManager *)v117 publicAddressForIDSDevice:v77];

                      if (v78)
                      {
                        v79 = sub_100005C14("CloudPairing");
                        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                        {
                          v80 = [v71 idsDevice];
                          v81 = [v80 uniqueID];
                          *buf = 138412546;
                          *v139 = v78;
                          *&v139[8] = 2112;
                          *v140 = v81;
                          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "Removing address %@ for IDS device %@ as it is no longer signed into our iCloud account", buf, 0x16u);
                        }

                        v82 = [(CBIDSManager *)v117 CPAddressMapping];
                        v83 = [v71 idsDevice];
                        v84 = [v83 uniqueID];
                        [v82 removeObjectForKey:v84];

                        v85 = [(CBIDSManager *)v117 CPAddressMapping];
                        [CBPreferencesManager setuserPreference:@"AddressMapping" value:v85 sync:1];

                        v55 = v113;
                      }
                    }
                  }

                  v68 = [v116 countByEnumeratingWithState:&v118 objects:v136 count:16];
                }

                while (v68);
              }

              v86 = [v55 objectAtIndexedSubscript:v51];
              v6 = v106;
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

                  v53 = +[CloudXPCService sharedInstance];
                  v134 = @"kCloudDeviceUniqueID";
                  v93 = [v113 objectAtIndexedSubscript:v51];
                  v135 = v93;
                  v92 = [NSDictionary dictionaryWithObjects:&v135 forKeys:&v134 count:1];
                  [v53 sendCloudKitMsg:@"RemoveCloudPairedDevice" args:v92];

LABEL_77:
                  v52 = v113;
                }
              }
            }

            ++v51;
          }

          while (v51 < [v52 count]);
        }

        v96 = [v6 count];
        v7 = v103;
        if (v96 != [obj count])
        {
          v97 = [(CBIDSManager *)v117 account];
          if (v97)
          {
            v98 = v97;
            v99 = [(CBIDSManager *)v117 account];
            v100 = [v99 isActive];

            if (v100)
            {
              v101 = [(CBIDSManager *)v117 _statedumpAndRecordDailyMetric];
              if (IsAppleInternalBuild())
              {
                v102 = sub_100005C14("CloudPairing");
                if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v139 = v101;
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

  v101 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
  {
    sub_1001EFA38();
  }

LABEL_88:

LABEL_89:
}

- (void)updateActiveAccount:(id)a3
{
  v4 = a3;
  v5 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 description];
    *buf = 136315394;
    v43 = [v6 UTF8String];
    v44 = 2048;
    v45 = [v4 count];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MUC - updateActiveAccount - %s, count %lu", buf, 0x16u);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v4;
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
            v14 = [v13 loginID];

            if (v14)
            {
              v15 = [(CBIDSManager *)self account];

              if (v13 == v15)
              {
                v17 = sub_100005C14("CloudPairing");
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  v18 = [(CBIDSManager *)self account];
                  v19 = [v18 loginID];
                  v20 = [v19 UTF8String];
                  *buf = 136380675;
                  v43 = v20;
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
  v22 = [(CBIDSManager *)self account];

  v21 = sub_100005C14("CloudPairing");
  v23 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v22)
  {
    if (v23)
    {
      v24 = [(CBIDSManager *)self account];
      v25 = [v24 loginID];
      v26 = [v25 UTF8String];
      v27 = [(CBIDSManager *)self cloudIdentifier];
      v28 = [v27 UTF8String];
      *buf = 136380931;
      v43 = v26;
      v44 = 2080;
      v45 = v28;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "MUC - Local device is now associated with iCloud account %{private}s and identifier %s", buf, 0x16u);
    }
  }

  else
  {
    if (v23)
    {
      v29 = [(CBIDSManager *)self cloudIdentifier];
      v30 = [v29 UTF8String];
      v31 = [(CBIDSManager *)self localDeviceRandomAddress];
      *buf = 136315394;
      v43 = v30;
      v44 = 2112;
      v45 = v31;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "MUC - Local device %s is not associated with any iCloud accounts with RSA %@", buf, 0x16u);
    }

    [(CBIDSManager *)self setTotalCloudDeviceCount:0];
    v32 = [(CBIDSManager *)self unpairedIDSCloudIdentifiers];
    [v32 removeAllObjects];

    v33 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    [v33 removeAllObjects];

    v21 = +[NSNotificationCenter defaultCenter];
    [v21 postNotificationName:@"BTTotalIDSDeviceCountChanged" object:0 userInfo:&off_1002CBE78];
  }

LABEL_32:
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v6 = a4;
  v7 = [a3 iCloudAccount];
  v8 = [v7 registrationStatus];

  v9 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 description];
    v11 = [v10 UTF8String];
    v12 = [v6 count];
    v13 = _IDSStringFromIDSRegistrationStatus();
    v14 = 136315906;
    v15 = v11;
    v16 = 2048;
    v17 = v12;
    v18 = 1024;
    v19 = v8;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "MUC - Active service accounts changed - %s, accounts %lu, R: %d, %@", &v14, 0x26u);
  }

  [(CBIDSManager *)self updateActiveAccount:v6];
}

- (void)service:(id)a3 devicesChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 iCloudAccount];
  v9 = [v8 registrationStatus];

  v10 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = _IDSStringFromIDSRegistrationStatus();
    *buf = 134218498;
    v44 = v9;
    v45 = 2112;
    v46 = v11;
    v47 = 2112;
    v48 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MUC - devicesChanged, R: %ld, %@ - %@", buf, 0x20u);
  }

  if (-[CBIDSManager totalCloudDeviceCount](self, "totalCloudDeviceCount") >= 1 && ![v7 count] && v9 <= 4)
  {
    v12 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001EFBDC(self);
    }

    goto LABEL_27;
  }

  v13 = [(CBIDSManager *)self cloudIdentifier];

  if (v13 || (v14 = IDSCopyLocalDeviceUniqueID(), [(CBIDSManager *)self setCloudIdentifier:v14], v14, [(CBIDSManager *)self cloudIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    v16 = [(CBIDSManager *)self account];
    if (!v16)
    {
      v17 = [v6 accounts];
      v18 = [v17 count];

      if (!v18)
      {
LABEL_16:
        v35 = v6;
        v21 = +[CloudXPCService sharedInstance];
        [v21 beginTransaction:@"IDSdevicesChanged"];

        v12 = [(CBIDSManager *)self filteredDevicesForIDSDevices:v7];
        v22 = +[NSMutableArray array];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v23 = [(CBIDSManager *)self associatedDevices];
        v24 = [v23 countByEnumeratingWithState:&v36 objects:v42 count:16];
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
                objc_enumerationMutation(v23);
              }

              v28 = [*(*(&v36 + 1) + 8 * v27) idsDevice];
              v29 = [v28 uniqueID];
              [v22 addObject:v29];

              v27 = v27 + 1;
            }

            while (v25 != v27);
            v25 = [v23 countByEnumeratingWithState:&v36 objects:v42 count:16];
          }

          while (v25);
        }

        [(CBIDSManager *)self updateCloudPairings:v22 newDevices:v12];
        [(CBIDSManager *)self setAssociatedDevices:v12];
        v30 = +[CloudXPCService sharedInstance];
        [v30 endTransaction:@"IDSdevicesChanged"];

        -[CBIDSManager setTotalCloudDeviceCount:](self, "setTotalCloudDeviceCount:", [v7 count] + 1);
        v31 = +[NSNotificationCenter defaultCenter];
        if (v7)
        {
          v32 = v7;
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

        v6 = v35;
        goto LABEL_27;
      }

      v19 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v6 accounts];
        *buf = 138412290;
        v44 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No account but got devicesChanged, update account status - %@", buf, 0xCu);
      }

      v16 = [v6 accounts];
      [(CBIDSManager *)self service:v6 activeAccountsChanged:v16];
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

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7
{
  v8 = a6;
  v10 = a5;
  v11 = a7;
  v12 = sub_100005C14("CloudPairing");
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = [v10 UTF8String];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Message %s sent successfully", &v18, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001EFCA0(v10, v11);
    }

    v14 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    v13 = [v14 objectForKey:v10];

    v15 = [v13 idsDevice];
    v16 = [(CBIDSManager *)self deviceForIDSDevice:v15 createNew:0];

    [v16 setState:0];
    v17 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    [v17 removeObjectForKey:v10];
  }
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = +[CloudXPCService sharedInstance];
  [v10 beginTransaction:@"IDSincomingMessage"];

  v11 = [(CBIDSManager *)self service];
  v12 = [v11 deviceForFromID:v9];

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
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received message from IDS device %{private}@: %{private}@", &v20, 0x16u);
      }

      v16 = [v8 objectForKeyedSubscript:@"MessageType"];
      v17 = [@"CloudPairing" isEqualToString:v16];

      if (v17)
      {
        [(CBIDSManager *)self handleCloudPairingMessage:v8 from:v13];
      }

      else
      {
        v19 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_1001EFD60(v8);
        }
      }

      v15 = +[CloudXPCService sharedInstance];
      [v15 endTransaction:@"IDSincomingMessage"];
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1001EFDF4(v8);
    }

    goto LABEL_15;
  }

  v13 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v9 UTF8String];
    v15 = [v8 description];
    v20 = 136315394;
    v21 = v18;
    v22 = 2080;
    v23 = [v15 UTF8String];
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to retrieve IDS device from destination %s - ignoring message %s", &v20, 0x16u);
LABEL_15:
  }
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 fromID:(id)a6 hasBeenDeliveredWithContext:(id)a7
{
  v9 = a5;
  v10 = a6;
  v11 = [(CBIDSManager *)self service];
  v12 = [v11 deviceForFromID:v10];

  v13 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
  v14 = [v13 objectForKey:v9];

  v15 = [v14 idsDevice];
  v16 = [(CBIDSManager *)self deviceForIDSDevice:v15 createNew:0];

  v17 = [v16 idsDevice];
  v18 = [v17 uniqueID];
  v19 = [NSString stringWithFormat:@"%@-RePairingRequest-%@", v9, v18];

  if ([v16 state] == 2)
  {
    [v16 setState:3];
    v20 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v9 UTF8String];
      v22 = [v12 uniqueID];
      *buf = 136315394;
      v31 = v21;
      v32 = 2080;
      v33 = [v22 UTF8String];
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
      v24 = [v9 UTF8String];
      v22 = [v12 uniqueID];
      *buf = 136315394;
      v31 = v24;
      v32 = 2080;
      v33 = [v22 UTF8String];
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
        v26 = [v9 UTF8String];
        v22 = [v12 uniqueID];
        *buf = 136315394;
        v31 = v26;
        v32 = 2080;
        v33 = [v22 UTF8String];
        v23 = "RePairing Message %s has been delivered to: %s";
        goto LABEL_12;
      }
    }

    else if (v25)
    {
      v27 = [v9 UTF8String];
      v22 = [v12 uniqueID];
      *buf = 136315394;
      v31 = v27;
      v32 = 2080;
      v33 = [v22 UTF8String];
      v23 = "Message %s has been delivered to: %s";
      goto LABEL_12;
    }
  }

  v28 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
  [v28 removeObjectForKey:v9];

  v29 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
  [v29 removeObjectForKey:v19];
}

- (id)filteredDevicesForIDSDevices:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v6 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(CBIDSManager *)self account];
    v8 = [v7 loginID];
    v9 = [v8 UTF8String];
    v10 = [(CBIDSManager *)self cloudIdentifier];
    *buf = 136380931;
    v27 = v9;
    v28 = 2080;
    *v29 = [v10 UTF8String];
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
    v17 = [(CBIDSManager *)self CPAddressMapping];
    *buf = 138412290;
    v27 = v17;
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
  [v4 enumerateObjectsUsingBlock:v22];
  v19 = v23;
  v20 = v18;

  return v18;
}

- (id)deviceForIDSDevice:(id)a3 createNew:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CBIDSManager *)self associatedDevices];

  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = [(CBIDSManager *)self associatedDevices];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100083E40;
  v18[3] = &unk_1002B9730;
  v19 = v6;
  v9 = [v8 indexOfObjectPassingTest:v18];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CloudPaired Device found, returning it", v17, 2u);
    }

    v15 = [(CBIDSManager *)self associatedDevices];
    v13 = [v15 objectAtIndexedSubscript:v9];
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
    if (v4)
    {
      if (v12)
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New CloudPaired Device created and returned", v17, 2u);
      }

      v13 = [CloudDevice deviceWithIDSDevice:v6];
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

- (void)handleCloudPairingMessage:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"Version 3"];

  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"Version 3"];
    v10 = [v9 objectForKeyedSubscript:@"MessageType"];
    if ([@"InitiatorPairingKeys" isEqualToString:v10])
    {
      v11 = @"Version 3";
LABEL_7:
      [(CBIDSManager *)self handleInitiatorPairingKeys:v9 from:v7 forProtocolID:v11];
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

  v12 = [v6 objectForKey:@"Version 2"];

  if (v12)
  {
    v9 = [v6 objectForKeyedSubscript:@"Version 2"];
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
    [(CBIDSManager *)self handleResponderPairingKeys:v9 from:v7 forProtocolID:v13];
    goto LABEL_16;
  }

  v14 = [v6 objectForKey:@"Version 1"];

  if (v14)
  {
    v9 = [v6 objectForKeyedSubscript:@"Version 1"];
    v10 = [v9 objectForKeyedSubscript:@"MessageType"];
    if ([@"SecurityRequest" isEqualToString:v10])
    {
      [(CBIDSManager *)self handleSecurityRequest:v9 from:v7];
    }

    else if ([@"RepairRequest" isEqualToString:v10])
    {
      [(CBIDSManager *)self handleRepairRequest:v9 from:v7];
    }

    else if ([@"PairingRequest" isEqualToString:v10])
    {
      [(CBIDSManager *)self handlePairingRequest:v9 from:v7];
    }

    else if ([@"PairingResponse" isEqualToString:v10])
    {
      [(CBIDSManager *)self handlePairingResponse:v9 from:v7];
    }

    else if ([@"KeyDistribution" isEqualToString:v10])
    {
      [(CBIDSManager *)self handleKeyDistribution:v9 from:v7];
    }

    else if ([@"PairingFailure" isEqualToString:v10])
    {
      [(CBIDSManager *)self handlePairingFailure:v9 from:v7];
    }

    else if ([@"UnpairCommand" isEqualToString:v10])
    {
      [(CBIDSManager *)self handleUnpairCommand:v9 from:v7];
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
        sub_1001EFE88(v7, v10);
      }
    }

    goto LABEL_16;
  }

  v15 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1001EFF38(v7);
  }

LABEL_17:
}

- (void)handleInitiatorPairingKeys:(id)a3 from:(id)a4 forProtocolID:(id)a5
{
  v70 = a3;
  v8 = a4;
  v69 = a5;
  v71 = v8;
  LOBYTE(a5) = [(CBIDSManager *)self roleWithDevice:v8]== 2;
  v9 = sub_100005C14("CloudPairing");
  v10 = v9;
  if (a5)
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

    v13 = [v71 idsDevice];
    v68 = [v13 uniqueID];

    v14 = [NSMutableString stringWithCapacity:[v68 length]];
    v15 = [v68 length];
    v88[0] = _NSConcreteStackBlock;
    v88[1] = 3221225472;
    v88[2] = sub_100084FE4;
    v88[3] = &unk_1002B9758;
    v16 = v14;
    v89 = v16;
    [v68 enumerateSubstringsInRange:0 options:v15 usingBlock:258, v88];
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v17 = [(CBIDSManager *)self cloudDevices];
    v18 = [v17 countByEnumeratingWithState:&v84 objects:v98 count:16];
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
            objc_enumerationMutation(v17);
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

        v18 = [v17 countByEnumeratingWithState:&v84 objects:v98 count:16];
      }

      while (v18);

      if (v20 == 0.0)
      {
LABEL_22:
        v17 = +[NSMutableDictionary dictionary];
        v66 = [NSString stringWithFormat:@"%llu", mach_absolute_time()];
        v34 = [v71 idsDevice];
        v67 = [v34 uniqueID];

        v35 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", [v67 length]);
        v36 = [v67 length];
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_100084FF0;
        v82[3] = &unk_1002B9758;
        v37 = v35;
        v83 = v37;
        [v67 enumerateSubstringsInRange:0 options:v36 usingBlock:{258, v82}];
        [v17 setObject:v66 forKey:v37];
        v38 = [(CBIDSManager *)self cloudDevices];
        v39 = [NSArray arrayWithArray:v38];

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
                v46 = [(CBIDSManager *)self cloudDevices];
                [v46 removeObject:v44];
              }
            }

            v41 = [v40 countByEnumeratingWithState:&v78 objects:v97 count:16];
          }

          while (v41);
        }

        v47 = [(CBIDSManager *)self cloudDevices];
        [v47 addObject:v17];

        v48 = [(CBIDSManager *)self cloudDevices];
        [CBPreferencesManager setuserPreference:@"CloudDevice" value:v48 sync:1];

        v65 = [[NSArray alloc] initWithObjects:{@"PublicKeys", @"IdentityKeys", 0}];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v93 = 0x3032000000;
        v94 = sub_100003948;
        v95 = sub_100003850;
        v91[0] = @"ResponderPairingKeys";
        v90[0] = @"MessageType";
        v90[1] = @"DeviceName";
        v49 = [(CBIDSManager *)self localDeviceName];
        v91[1] = v49;
        v90[2] = @"PublicAddress";
        v50 = [(CBIDSManager *)self publicAddress];
        v91[2] = v50;
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

        v53 = [v70 mutableCopy];
        v54 = [(CBIDSManager *)self localDeviceRandomAddress];

        if (v54)
        {
          v55 = [(CBIDSManager *)self localDeviceRandomAddress];
          [v53 setObject:v55 forKey:@"IDSLocalRandomAddress"];
        }

        if ([v69 isEqualToString:@"Version 3"])
        {
          v56 = [(CBIDSManager *)self localDeviceRandomAddress];

          if (!v56)
          {
            v64 = [(CBIDSManager *)self keyLength];
            v73[0] = _NSConcreteStackBlock;
            v73[1] = 3221225472;
            v73[2] = sub_100085184;
            v73[3] = &unk_1002B97A8;
            v76[1] = &buf;
            v73[4] = self;
            v74 = v71;
            v75 = v70;
            v76[0] = v69;
            [(CBIDSManager *)self generateKeyDictForTypes:v65 keyLength:v64 forAddress:0 withCompletion:v73];
            v61 = &v74;
            v62 = &v75;
            v63 = v76;
            goto LABEL_38;
          }

          v57 = [(CBIDSManager *)self keyLength];
          v58 = [(CBIDSManager *)self localDeviceRandomAddress];
          v59 = v77;
          v77[0] = _NSConcreteStackBlock;
          v77[1] = 3221225472;
          v77[2] = sub_100084FFC;
          v77[3] = &unk_1002B9780;
          v77[9] = &buf;
          v77[4] = self;
          v77[5] = v71;
          v77[6] = v70;
          v77[7] = v53;
          v77[8] = v69;
          [(CBIDSManager *)self generateKeyDictForTypes:v65 keyLength:v57 forAddress:v58 withCompletion:v77];
        }

        else
        {
          v60 = [(CBIDSManager *)self keyLength];
          v59 = v72;
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = sub_1000852DC;
          v72[3] = &unk_1002B9780;
          v72[9] = &buf;
          v72[4] = self;
          v72[5] = v71;
          v72[6] = v70;
          v72[7] = v53;
          v72[8] = v69;
          [(CBIDSManager *)self generateKeyDictForTypes:v65 keyLength:v60 forAddress:0 withCompletion:v72];
        }

        v61 = v59 + 5;
        v62 = v59 + 6;
        v63 = v59 + 7;

LABEL_38:
        _Block_object_dispose(&buf, 8);

LABEL_39:
        v32 = v68;
        goto LABEL_40;
      }

      v27 = v20 > [(CBIDSManager *)self timeStamp];
      v17 = sub_100005C14("CloudPairing");
      v28 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        if (v28)
        {
          v29 = [v71 description];
          v30 = v29;
          v31 = [v29 UTF8String];
          LODWORD(buf) = 136380675;
          *(&buf + 4) = v31;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received 'InitiatorPairingKeys' local Timestamp saved is newer than received message: %{private}s", &buf, 0xCu);
        }

        goto LABEL_39;
      }

      if (v28)
      {
        v33 = [(CBIDSManager *)self timeStamp];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v33 - v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received 'InitiatorPairingKeys' Time to receive message: %f", &buf, 0xCu);
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

- (void)generateKeyDictForTypes:(id)a3 keyLength:(unint64_t)a4 forAddress:(id)a5 withCompletion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "MUC - generateKeyDictForTypes: %@ for local address: %@", buf, 0x16u);
  }

  v14 = [NSNumber numberWithUnsignedInteger:a4];
  v15 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v10, @"kCloudPairingKeyTypes", v14, @"kCloudPairingKeyLength", 0];

  if (v11)
  {
    [v15 setObject:v11 forKeyedSubscript:@"kLocalRandomAddress"];
  }

  v16 = +[CloudXPCService sharedInstance];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100085628;
  v18[3] = &unk_1002B97D0;
  v18[4] = self;
  v19 = v12;
  v17 = v12;
  [v16 sendCloudKitMsg:@"GenerateCloudPairingKeys" args:v15 withReply:v18];
}

- (void)cloudPairingCompletedWithResponse:(id)a3 localKeys:(id)a4 from:(id)a5 forProtocolID:(id)a6
{
  v9 = a5;
  if (a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = &__NSDictionary0__struct;
  }

  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = [v9 idsDevice];
  v15 = [v14 uniqueID];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &__NSDictionary0__struct;
  }

  v18 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v13, @"kCloudPairingCompleteResponse", v10, @"kCloudPairingLocalKeys", v17, @"kCloudDeviceUniqueID", v11, @"kCloudPairingProtocolID", 0];

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
  v24 = v9;
  v21 = v9;
  [v20 sendCloudKitMsg:@"CloudPairingComplete" args:v18 withReply:v23];
}

- (unint64_t)roleWithDevice:(id)a3
{
  v4 = a3;
  v5 = [(CBIDSManager *)self cloudIdentifier];

  if (!v5)
  {
    v12 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001F02A4(v4);
    }

    goto LABEL_11;
  }

  v6 = [v4 idsDevice];
  v7 = [v6 uniqueID];

  if (!v7)
  {
    v12 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001F0210(v4);
    }

LABEL_11:

    v11 = 0;
    goto LABEL_12;
  }

  v8 = [(CBIDSManager *)self cloudIdentifier];
  v9 = [v4 idsDevice];
  v10 = [v9 uniqueID];
  if ([v8 compare:v10] == 1)
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

- (void)handleResponderPairingKeys:(id)a3 from:(id)a4 forProtocolID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CBIDSManager *)self roleWithDevice:v9];
  v12 = sub_100005C14("CloudPairing");
  v13 = v12;
  if (v11 == 1)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v9 description];
      v18 = 136380675;
      v19 = [v14 UTF8String];
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Received 'ResponderPairingKeys' message from IDS device %{private}s", &v18, 0xCu);
    }

    v15 = [v9 idsDevice];
    [(CBIDSManager *)self storePublicAddressMapping:v15 message:v8];

    v16 = [(CBIDSManager *)self localDeviceRandomAddress];

    if (!v16)
    {
      [(CBIDSManager *)self cloudPairingCompletedWithResponse:v8 localKeys:0 from:v9 forProtocolID:v10];
      goto LABEL_9;
    }

    v13 = [v8 mutableCopy];
    v17 = [(CBIDSManager *)self localDeviceRandomAddress];
    [v13 setObject:v17 forKey:@"IDSLocalRandomAddress"];

    [(CBIDSManager *)self cloudPairingCompletedWithResponse:v13 localKeys:0 from:v9 forProtocolID:v10];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1001F0338();
  }

LABEL_9:
}

- (void)handleSecurityRequest:(id)a3 from:(id)a4
{
  v5 = a4;
  if ([(CBIDSManager *)self roleWithDevice:v5]== 1)
  {
    if ([v5 state] && objc_msgSend(v5, "state") != 6)
    {
      v11 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v5 description];
        v13 = [v12 UTF8String];
        v14 = [v5 stateString];
        v15 = 136380931;
        v16 = v13;
        v17 = 2080;
        v18 = [v14 UTF8String];
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dropping 'security request' message from IDS device %{private}s as our state is '%s'", &v15, 0x16u);
      }
    }

    else
    {
      v6 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 description];
        v8 = [v7 UTF8String];
        v9 = [v5 stateString];
        v15 = 136380931;
        v16 = v8;
        v17 = 2080;
        v18 = [v9 UTF8String];
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received 'security request' message from IDS device %{private}s with current state is '%s'", &v15, 0x16u);
      }

      [(CBIDSManager *)self initiatePairing:v5];
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

- (void)handleRepairRequest:(id)a3 from:(id)a4
{
  v5 = a4;
  v6 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 description];
    v8 = 136380675;
    v9 = [v7 UTF8String];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received 'Repair request' message from IDS device %{private}s", &v8, 0xCu);
  }

  [(CBIDSManager *)self initiatePairing:v5];
}

- (void)handlePairingRequest:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CBIDSManager *)self validateMessage:v6 from:v7])
  {
    if ([(CBIDSManager *)self roleWithDevice:v7]== 2)
    {
      if ([v7 state] && objc_msgSend(v7, "state") != 1)
      {
        v14 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v7 description];
          v16 = [v15 UTF8String];
          v17 = [v7 stateString];
          *buf = 136380931;
          v22 = v16;
          v23 = 2080;
          v24 = [v17 UTF8String];
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Dropping 'pairing request' message from IDS device %{private}s as our state is '%s'", buf, 0x16u);
        }
      }

      else
      {
        v8 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 description];
          *buf = 136380675;
          v22 = [v9 UTF8String];
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'pairing request' message from IDS device %{private}s", buf, 0xCu);
        }

        v10 = [v6 objectForKeyedSubscript:@"RequestedKeyType"];
        v11 = [v6 objectForKeyedSubscript:@"RequestedKeyLength"];
        v12 = [v11 unsignedIntegerValue];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100086940;
        v18[3] = &unk_1002B9820;
        v18[4] = self;
        v19 = v6;
        v20 = v7;
        [(CBIDSManager *)self generateKeyDictForTypes:v10 keyLength:v12 forAddress:0 withCompletion:v18];
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

- (void)handlePairingResponse:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CBIDSManager *)self validateMessage:v6 from:v7])
  {
    if ([(CBIDSManager *)self roleWithDevice:v7]== 1)
    {
      if ([v7 state] == 2 && objc_msgSend(v7, "state") == 3)
      {
        v8 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 description];
          *buf = 136380675;
          v23 = [v9 UTF8String];
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'pairing response' message from IDS device %{private}s", buf, 0xCu);
        }

        v10 = [v6 objectForKeyedSubscript:@"RequestedKeys"];
        v11 = [v6 objectForKeyedSubscript:@"RequestedKeyType"];
        v12 = [v6 objectForKeyedSubscript:@"RequestedKeyLength"];
        v13 = [v12 unsignedIntegerValue];
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100086DEC;
        v18[3] = &unk_1002B9848;
        v18[4] = self;
        v19 = v6;
        v20 = v10;
        v21 = v7;
        v14 = v10;
        [(CBIDSManager *)self generateKeyDictForTypes:v11 keyLength:v13 forAddress:0 withCompletion:v18];
      }

      else
      {
        v14 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v7 description];
          v16 = [v15 UTF8String];
          v17 = [v7 stateString];
          *buf = 136380931;
          v23 = v16;
          v24 = 2080;
          v25 = [v17 UTF8String];
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

- (void)handleKeyDistribution:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CBIDSManager *)self validateMessage:v6 from:v7])
  {
    if ([v7 state] != 4 || objc_msgSend(v7, "state") != 5)
    {
      v19 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v7 description];
        v21 = [v20 UTF8String];
        v22 = [v7 stateString];
        *buf = 136380931;
        v27 = v21;
        v28 = 2080;
        v29 = [v22 UTF8String];
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Dropping 'key distribution' message from IDS device %{private}s as our state is '%s'", buf, 0x16u);
      }

      goto LABEL_14;
    }

    v8 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v7 description];
      *buf = 136380675;
      v27 = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received 'key distribution' message from IDS device %{private}s", buf, 0xCu);
    }

    v10 = [v6 objectForKeyedSubscript:@"LocalKeys"];
    v11 = [v10 objectForKeyedSubscript:@"LTKLength"];
    v12 = [v11 unsignedIntegerValue];
    v13 = [(CBIDSManager *)self keyLength];

    if (v12 == v13)
    {
      v14 = [v6 objectForKeyedSubscript:@"RequestedKeys"];
      v15 = [v14 objectForKeyedSubscript:@"LTKLength"];
      v16 = [v15 unsignedIntegerValue];
      v17 = [(CBIDSManager *)self keyLength];

      if (v16 == v17)
      {
        v18 = [v6 objectForKeyedSubscript:@"LocalKeys"];
        [(CBIDSManager *)self cloudPairingCompletedWithResponse:v6 localKeys:v18 from:v7 forProtocolID:@"Version 1"];

        v19 = [v7 idsDevice];
        [(CBIDSManager *)self storePublicAddressMapping:v19 message:v6];
LABEL_14:

        goto LABEL_15;
      }

      v19 = [v7 idsDevice];
      v23 = [v6 objectForKeyedSubscript:@"RequestedKeys"];
      v24 = [v23 objectForKeyedSubscript:@"LTKLength"];
      [NSString stringWithFormat:@"Invalid requested key length (%@)", v24];
    }

    else
    {
      v19 = [v7 idsDevice];
      v23 = [v6 objectForKeyedSubscript:@"LocalKeys"];
      v24 = [v23 objectForKeyedSubscript:@"LTKLength"];
      [NSString stringWithFormat:@"Invalid local key length (%@)", v24];
    }
    v25 = ;
    [(CBIDSManager *)self sendErrorMessageToDevice:v19 reason:v25];

    goto LABEL_14;
  }

LABEL_15:
}

- (void)handlePairingFailure:(id)a3 from:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1001F0618();
  }
}

- (void)initiatePairingAgainIfNoAckReceived:(id)a3 attempt:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CBIDSManager *)self roleWithDevice:v6];
  if (v7)
  {
    v8 = v7;
    v9 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    v10 = [v6 idsDevice];
    v11 = [v10 uniqueID];
    v12 = [v9 objectForKey:v11];

    v13 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    v14 = [v6 idsDevice];
    v15 = [v14 uniqueID];
    [v13 setObject:v6 forKey:v15];

    if (v12)
    {
      v22 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = a4 - 1;
        if (v8 == 1)
        {
          v24 = "pairing";
        }

        else
        {
          v24 = "security";
        }

        v25 = [v6 description];
        *buf = 134218499;
        v33 = v23;
        v34 = 2080;
        v35 = v24;
        v36 = 2081;
        v37 = [v25 UTF8String];
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

        v19 = [v6 description];
        *buf = 134218755;
        v33 = v16;
        v34 = 2048;
        v35 = a4;
        v36 = 2080;
        v37 = v18;
        v38 = 2081;
        v39 = [v19 UTF8String];
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MUC - Delaying (%lu) seconds to send (%lu) attempt '%s request' message to IDS device %{private}s", buf, 0x2Au);
      }

      v20 = dispatch_time(0, (v16 * a4 * 1000000000.0));
      v21 = [(CBIDSManager *)self cloudPairingQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100087784;
      block[3] = &unk_1002B9898;
      v29 = v16;
      v30 = a4;
      v31 = v8;
      v27 = v6;
      v28 = self;
      dispatch_after(v20, v21, block);

      v22 = v27;
    }
  }

  else
  {
    v12 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001F06DC(v6);
    }
  }
}

- (void)initiatePairing:(id)a3
{
  v4 = a3;
  v5 = [(CBIDSManager *)self roleWithDevice:v4];
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

      v9 = [v4 description];
      *buf = 136315395;
      v64 = v8;
      v65 = 2081;
      v66 = [v9 UTF8String];
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
    v11 = [(CBIDSManager *)self localDeviceName];
    v62[1] = v11;
    v61[2] = @"PublicAddress";
    v12 = [(CBIDSManager *)self publicAddress];
    v62[2] = v12;
    v62[3] = @"Basic";
    v61[3] = @"EncryptionType";
    v61[4] = @"RequestedKeyType";
    v13 = [(CBIDSManager *)self requestedKeyTypes];
    v62[4] = v13;
    v61[5] = @"RequestedKeyLength";
    v14 = [NSNumber numberWithUnsignedInteger:[(CBIDSManager *)self keyLength]];
    v62[5] = v14;
    v42 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:6];

    [v45 setObject:v42 forKey:@"Version 1"];
    v44 = +[NSMutableDictionary dictionary];
    v15 = [v4 idsDevice];
    v16 = [v15 uniqueID];

    [v44 setObject:v43 forKey:v16];
    v17 = [NSMutableArray alloc];
    v18 = [(CBIDSManager *)self cloudDevices];
    v19 = [v17 initWithArray:v18];

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
          v25 = [v24 objectForKey:v16];

          if (v25)
          {
            v26 = [(CBIDSManager *)self cloudDevices];
            [v26 removeObject:v24];
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v21);
    }

    v27 = [(CBIDSManager *)self cloudDevices];
    [v27 addObject:v44];

    v28 = [(CBIDSManager *)self cloudDevices];
    [CBPreferencesManager setuserPreference:@"CloudDevice" value:v28 sync:1];

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
      v31 = [(CBIDSManager *)self localDeviceName];
      v59[1] = v31;
      v58[2] = @"PublicAddress";
      v32 = [(CBIDSManager *)self publicAddress];
      v59[2] = v32;
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
      v35 = [(CBIDSManager *)self localDeviceRandomAddress];

      v36 = [(CBIDSManager *)self keyLength];
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_1000882E8;
      v46[3] = &unk_1002B98E8;
      objc_copyWeak(v52, buf);
      v37 = v34;
      v47 = v37;
      v38 = v45;
      v53 = v35 != 0;
      v48 = v38;
      v49 = self;
      v50 = v4;
      v52[1] = 1;
      v39 = v30;
      v51 = v39;
      [(CBIDSManager *)self generateKeyDictForTypes:v39 keyLength:v36 forAddress:0 withCompletion:v46];

      objc_destroyWeak(v52);
      objc_destroyWeak(buf);
    }

    else
    {
      [v45 setObject:@"CloudPairing" forKey:@"MessageType"];
      [(CBIDSManager *)self sendInitialPairingIDSMessage:v45 forDevice:v4 withRole:v6];
    }

    v41 = v43;
  }

  else
  {
    v40 = sub_100005C14("CloudPairing");
    v41 = v40;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1001F086C(v4);
      v41 = v40;
    }
  }
}

- (void)sendInitialPairingIDSMessage:(id)a3 forDevice:(id)a4 withRole:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = [v9 idsDevice];
  v12 = IDSCopyForDevice();

  v13 = sub_100005C14("CloudPairing");
  v14 = v13;
  if (v12)
  {
    v31 = a5;
    v33 = v10;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558787;
      v39 = 1752392040;
      v40 = 2113;
      v41 = v9;
      v42 = 2160;
      v43 = 1752392040;
      v44 = 2113;
      v45 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempting to send message to %{private, mask.hash}@ : %{private, mask.hash}@", buf, 0x2Au);
    }

    v15 = [v8 objectForKeyedSubscript:@"MessageType"];
    v16 = [v9 idsDevice];
    v17 = [v16 uniqueID];
    v18 = [NSString stringWithFormat:@"Initial-%@-%@", v15, v17];

    v19 = [(CBIDSManager *)self service];
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
    v22 = [v19 sendMessage:v8 fromAccount:0 toDestinations:v20 priority:300 options:v21 identifier:&v35 error:&v34];
    v14 = v35;
    v23 = v34;

    v24 = sub_100005C14("CloudPairing");
    v25 = v24;
    if (v22)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [v14 UTF8String];
        *buf = 136315138;
        v39 = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Successfully sent message %s", buf, 0xCu);
      }

      if (v31 == 1)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      [v9 setState:v27];
      v25 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
      [v25 setObject:v9 forKey:v14];
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1001F0904(v23);
    }

    v28 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    v29 = [v9 idsDevice];
    v30 = [v29 uniqueID];
    [v28 removeObjectForKey:v30];

    v10 = v33;
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1001F0998(v9, v8, v14);
  }

  objc_autoreleasePoolPop(v10);
}

- (void)sendRePairRequest:(id)a3 forBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CBIDSManager *)self cloudPairingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088C38;
  block[3] = &unk_1002B6CF0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_sendRePairRequest:(id)a3 forBundleID:(id)a4
{
  v6 = a3;
  v42 = a4;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v7 = v6;
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
        v11 = [(CBIDSManager *)self service];
        v12 = [v11 devices];

        obj = v12;
        v13 = [v12 countByEnumeratingWithState:&v50 objects:v64 count:16];
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
                v19 = [v17 nsuuid];
                *buf = 138412546;
                v61 = v19;
                v62 = 2112;
                v63 = v10;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "cloudpaird: sendRePairRequest: BTUUID: %@ peerUUID %@", buf, 0x16u);
              }

              v20 = [v17 uniqueID];
              v21 = [v20 isEqualToString:v10];

              if (v21)
              {
                v22 = sub_100005C14("CloudPairing");
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = [v17 uniqueID];
                  *buf = 138412290;
                  v61 = v23;
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
                v28 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
                v47[0] = _NSConcreteStackBlock;
                v47[1] = 3221225472;
                v47[2] = sub_100089240;
                v47[3] = &unk_1002B9910;
                v47[4] = v27;
                v29 = [v28 keysOfEntriesPassingTest:v47];

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
                  v34 = [(CBIDSManager *)self cloudPairingQueue];
                  block[0] = _NSConcreteStackBlock;
                  block[1] = 3221225472;
                  block[2] = sub_10008924C;
                  block[3] = &unk_1002B9938;
                  block[4] = self;
                  block[5] = v27;
                  block[6] = v10;
                  v45 = v25;
                  v46 = v42;
                  dispatch_after(v33, v34, block);
                }

                else
                {
                  v58[0] = @"MessageType";
                  v58[1] = @"DeviceName";
                  v59[0] = @"RepairRequest";
                  v35 = [(CBIDSManager *)self localDeviceName];
                  v59[1] = v35;
                  v36 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
                  [(CBIDSManager *)self sendRePairCloudPairingMessage:v36 toDevice:v25 bundleID:v42];
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

- (void)sendRePairCloudPairingMessage:(id)a3 toDevice:(id)a4 bundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CBIDSManager *)self service];
  v12 = [v11 accounts];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [v9 idsDevice];
    v15 = IDSCopyIDForDevice();

    if (!v15)
    {
      sub_1001F0AC8(buf);
      v25 = *buf;
      goto LABEL_17;
    }

    v38 = v10;
    v16 = objc_alloc_init(NSMutableDictionary);
    [v16 setObject:@"CloudPairing" forKey:@"MessageType"];
    v37 = v8;
    [v16 setObject:v8 forKey:@"Version 1"];
    v17 = [NSNumber numberWithDouble:2592000.0];
    v18 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v17, IDSSendMessageOptionTimeoutKey, 0];

    v19 = [v9 idsDevice];
    v20 = [v19 uniqueID];
    v21 = [NSString stringWithFormat:@"RePairingRequest-%@", v20];

    [v18 setObject:v21 forKey:IDSSendMessageOptionQueueOneIdentifierKey];
    [v18 setObject:&__kCFBooleanTrue forKey:IDSSendMessageOptionWantsClientAcknowledgementKey];
    v22 = [(CBIDSManager *)self service];
    v23 = [NSMutableSet setWithObject:v15];
    v39 = 0;
    v40 = 0;
    v24 = [v22 sendMessage:v16 fromAccount:0 toDestinations:v23 priority:300 options:v18 identifier:&v40 error:&v39];
    v25 = v40;
    v36 = v39;

    if (v24)
    {
      v8 = v37;
      if (!v25)
      {
LABEL_16:

        v10 = v38;
LABEL_17:

        goto LABEL_18;
      }

      v26 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v9 idsDevice];
        v28 = [v27 name];
        *buf = 138413058;
        *&buf[4] = v16;
        v44 = 2112;
        v45 = v28;
        v46 = 2112;
        v47 = v15;
        v48 = 2112;
        v49 = v25;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "cloudpaird: sendRePairCloudPairingMessage: Sending message :%@ to device %@ of account :%@ with GUID :%@", buf, 0x2Au);

        v8 = v37;
      }

      v29 = [NSString stringWithFormat:@"%@-%@", v25, v21];
      v30 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
      [v30 setObject:v9 forKey:v29];

      v41[0] = @"MessageType";
      v31 = [v8 objectForKeyedSubscript:?];
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
        v34 = [v9 idsDevice];
        v35 = [v34 name];
        *buf = 138413058;
        *&buf[4] = v16;
        v44 = 2112;
        v45 = v35;
        v46 = 2112;
        v47 = v15;
        v48 = 2112;
        v49 = v36;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "cloudpaird: sendRePairCloudPairingMessage: Sending message failed  :%@ to device %@ of account :%@ with error %@", buf, 0x2Au);
      }

      v8 = v37;
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

- (void)sendCloudPairingResponseMessage:(id)a3 toDevice:(id)a4 version:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = IDSCopyForDevice();
  v13 = sub_100005C14("CloudPairing");
  v14 = v13;
  if (v12)
  {
    v45 = v11;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v9 cpDescription];
      v16 = [v15 UTF8String];
      v17 = [v8 description];
      *buf = 136380931;
      v58 = v16;
      v59 = 2080;
      v60 = [v17 UTF8String];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending message to IDS device %{private}s: %s", buf, 0x16u);
    }

    v46 = v10;
    if ([v10 isEqualToString:@"Version 1"])
    {
      v55[0] = @"MessageType";
      v55[1] = @"Version 1";
      v56[0] = @"CloudPairing";
      v56[1] = v8;
      v18 = v56;
      v19 = v55;
    }

    else if ([v10 isEqualToString:@"Version 2"])
    {
      v53[0] = @"MessageType";
      v53[1] = @"Version 2";
      v54[0] = @"CloudPairing";
      v54[1] = v8;
      v18 = v54;
      v19 = v53;
    }

    else
    {
      if (![v10 isEqualToString:@"Version 3"])
      {
        v20 = 0;
LABEL_13:
        v21 = [v8 objectForKeyedSubscript:@"MessageType"];
        v22 = [v9 uniqueID];
        v23 = [NSString stringWithFormat:@"%@-%@", v21, v22];

        v42 = self;
        v24 = [(CBIDSManager *)self service];
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
        v27 = [v24 sendMessage:v20 fromAccount:0 toDestinations:v25 priority:300 options:v26 identifier:&v48 error:&v47];
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
          v31 = [v14 UTF8String];
          *buf = 136315138;
          v58 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Successfully sent message %s", buf, 0xCu);
        }

        v30 = [(CBIDSManager *)v42 deviceForIDSDevice:v9 createNew:0];
        v32 = [v8 objectForKeyedSubscript:@"MessageType"];
        if (([@"ResponderPairingKeys" isEqualToString:v32] & 1) == 0)
        {
          v33 = [v8 objectForKeyedSubscript:@"MessageType"];
          if (![@"PairingResponse" isEqualToString:v33])
          {
            v34 = v28;
            v40 = [v8 objectForKeyedSubscript:@"MessageType"];
            v41 = [@"KeyDistribution" isEqualToString:v40];

            if ((v41 & 1) == 0)
            {
LABEL_24:

              v11 = v45;
              v10 = v46;
              goto LABEL_25;
            }

LABEL_20:
            v35 = [v30 idsDevice];
            v36 = [v35 uniqueID];
            v37 = [v9 uniqueID];
            v38 = [v36 isEqualToString:v37];

            if (v38)
            {
              [v30 setState:4];
              v39 = [(CBIDSManager *)v42 messageIdentifiersWaitingForAck];
              [v39 setObject:v30 forKey:v14];
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
      v52[1] = v8;
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

- (void)sendErrorMessageToDevice:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 cpDescription];
    *buf = 136380931;
    v14 = [v9 UTF8String];
    v15 = 2080;
    v16 = [v7 UTF8String];
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Rejecting pairing attempt from IDS device %{private}s - %s", buf, 0x16u);
  }

  v11[0] = @"MessageType";
  v11[1] = @"FailureReason";
  v12[0] = @"PairingFailure";
  v12[1] = v7;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  [(CBIDSManager *)self sendCloudPairingResponseMessage:v10 toDevice:v6 version:@"Version 1"];
}

- (void)handleUnpairCommand:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unpair Cloud Device: %@", buf, 0xCu);
  }

  v9 = [v6 objectForKeyedSubscript:@"DeviceName"];
  if (![v9 length])
  {
    v18 = [v7 idsDevice];
    [(CBIDSManager *)self sendErrorMessageToDevice:v18 reason:@"No friendly name specified"];
LABEL_9:

    goto LABEL_13;
  }

  v10 = [v6 objectForKeyedSubscript:@"PublicAddress"];
  v11 = [NSString stringWithFormat:@"Public %@", v10];
  v12 = sub_10007E7C4(v11);

  v13 = [v6 objectForKeyedSubscript:@"RandomAddress"];
  v14 = [NSString stringWithFormat:@"Random %@", v13];
  v15 = sub_10007E7C4(v14);

  if (!(v12 | v15))
  {
    v16 = [v6 objectForKeyedSubscript:@"PublicAddress"];
    v17 = [v6 objectForKeyedSubscript:@"RandomAddress"];
    v18 = [NSString stringWithFormat:@"Invalid public address %@ and Invalid random address %@", v16, v17];

    v19 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1001F0C2C();
    }

    v20 = [v7 idsDevice];
    [(CBIDSManager *)self sendErrorMessageToDevice:v20 reason:v18];

    goto LABEL_9;
  }

  v21 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v7 description];
    v23 = [v22 UTF8String];
    *buf = 136380675;
    v29 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Received 'unpair command' message from IDS device %{private}s", buf, 0xCu);
  }

  v24 = +[CloudXPCService sharedInstance];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10008A370;
  v25[3] = &unk_1002B9820;
  v25[4] = self;
  v26 = v7;
  v27 = v9;
  [v24 sendCloudKitMsg:@"UnpairCloudDevice" args:v6 withReply:v25];

LABEL_13:
}

- (BOOL)validateMessage:(id)a3 from:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"MessageType"];
  v9 = [v6 objectForKeyedSubscript:@"DeviceName"];
  if (![v9 length])
  {
    v16 = [v7 idsDevice];
    [(CBIDSManager *)self sendErrorMessageToDevice:v16 reason:@"No friendly name specified"];
LABEL_18:

    LOBYTE(v24) = 0;
    goto LABEL_19;
  }

  v10 = [v6 objectForKeyedSubscript:@"PublicAddress"];
  v11 = [NSString stringWithFormat:@"Public %@", v10];
  v12 = sub_10007E7C4(v11);

  if (!v12)
  {
    v16 = [v7 idsDevice];
    v17 = [v6 objectForKeyedSubscript:@"PublicAddress"];
    [NSString stringWithFormat:@"Invalid public address (%@)", v17];
    v25 = LABEL_17:;
    [(CBIDSManager *)self sendErrorMessageToDevice:v16 reason:v25];

    goto LABEL_18;
  }

  v13 = [v6 objectForKeyedSubscript:@"EncryptionType"];
  v14 = [v13 isEqualToString:@"Basic"];

  if ((v14 & 1) == 0)
  {
    v16 = [v7 idsDevice];
    v17 = [v6 objectForKeyedSubscript:@"EncryptionType"];
    [NSString stringWithFormat:@"Invalid encryption type (%@)", v17];
    goto LABEL_17;
  }

  v15 = [v6 objectForKeyedSubscript:@"RequestedKeyType"];
  if ([v15 containsObject:@"EncryptionKeys"])
  {
  }

  else
  {
    v18 = [v6 objectForKeyedSubscript:@"RequestedKeyType"];
    v19 = [v18 containsObject:@"IdentityKeys"];

    if ((v19 & 1) == 0)
    {
      v16 = [v7 idsDevice];
      v17 = [v6 objectForKeyedSubscript:@"RequestedKeyType"];
      [NSString stringWithFormat:@"Invalid requested keys (%@)", v17];
      goto LABEL_17;
    }
  }

  v20 = [v6 objectForKeyedSubscript:@"RequestedKeyLength"];
  v21 = [v20 integerValue];
  v22 = [(CBIDSManager *)self keyLength];

  if (v21 != v22)
  {
    v16 = [v7 idsDevice];
    v17 = [v6 objectForKeyedSubscript:@"RequestedKeyLength"];
    [NSString stringWithFormat:@"Invalid requested key length (%@)", v17];
    goto LABEL_17;
  }

  if (([@"PairingResponse" isEqualToString:v8] & 1) == 0 && !objc_msgSend(@"KeyDistribution", "isEqualToString:", v8) || (-[CBIDSManager requestedKeyTypes](self, "requestedKeyTypes"), v23 = objc_claimAutoreleasedReturnValue(), v24 = -[CBIDSManager validateKeys:requestedTypes:from:](self, "validateKeys:requestedTypes:from:", v6, v23, v7), v23, v24))
  {
    LOBYTE(v24) = 1;
  }

LABEL_19:

  return v24;
}

- (BOOL)validateKeys:(id)a3 requestedTypes:(id)a4 from:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [a3 objectForKeyedSubscript:@"RequestedKeys"];
  if (![v8 containsObject:@"EncryptionKeys"])
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
    v38 = [v9 idsDevice];
    v39 = [v10 objectForKeyedSubscript:v11];
    v45 = v11;
    v46 = v39;
    v40 = @"%@ not specified or invalid (%@)";
LABEL_23:
    v41 = [NSString stringWithFormat:v40, v45, v46];
    [(CBIDSManager *)self sendErrorMessageToDevice:v38 reason:v41];

    v37 = 0;
    goto LABEL_24;
  }

  v17 = [v10 objectForKeyedSubscript:@"LTKType"];
  if (!v17 || (v18 = v17, [v10 objectForKeyedSubscript:@"LTKType"], v19 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v19, v18, (isKindOfClass & 1) == 0))
  {
    v38 = [v9 idsDevice];
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
    v38 = [v9 idsDevice];
    v43 = [v10 objectForKeyedSubscript:@"LTKLength"];
    v39 = v43;
    v44 = @"LTK length";
    goto LABEL_27;
  }

  v25 = [v10 objectForKeyedSubscript:@"LTKLength"];
  v26 = [v25 unsignedIntegerValue];
  v27 = [(CBIDSManager *)self keyLength];

  if (v26 != v27)
  {
    v38 = [v9 idsDevice];
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
  if ([v8 containsObject:@"IdentityKeys"])
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
  v3 = [(CBIDSManager *)self cloudPairingQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10008AF60;
  v6[3] = &unk_1002B6ED8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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
      v7 = [v96 UTF8String];
    }

    else
    {
      v7 = "none";
    }

    v82 = v7;
    NSAppendPrintF_safe();
    objc_storeStrong(v5, v131);
  }

  v8 = (v135 + 5);
  v130 = v135[5];
  v9 = [(CBIDSManager *)self account];
  if (v9)
  {
    if (IsAppleInternalBuild())
    {
      v2 = [(CBIDSManager *)self account];
      v3 = [v2 loginID];
      v10 = v3;
      v11 = [v3 UTF8String];
      v12 = 1;
    }

    else
    {
      v12 = 0;
      v11 = "<redacted>";
    }
  }

  else
  {
    v12 = 0;
    v11 = "none";
  }

  v83 = v11;
  NSAppendPrintF_safe();
  objc_storeStrong(v8, v130);
  if (v12)
  {
  }

  v13 = (v135 + 5);
  v129 = v135[5];
  v14 = [(CBIDSManager *)self cloudIdentifier];
  if (v14)
  {
    v2 = [(CBIDSManager *)self cloudIdentifier];
    v15 = v2;
    v16 = [v2 UTF8String];
  }

  else
  {
    v16 = "none";
  }

  v84 = v16;
  NSAppendPrintF_safe();
  objc_storeStrong(v13, v129);
  if (v14)
  {
  }

  v17 = (v135 + 5);
  v128 = v135[5];
  v18 = [(CBIDSManager *)self supportsVirtualAddress];
  v19 = "NO";
  if (v18)
  {
    v19 = "YES";
  }

  v85 = v19;
  NSAppendPrintF_safe();
  objc_storeStrong(v17, v128);
  v20 = (v135 + 5);
  v127 = v135[5];
  v21 = [(CBIDSManager *)self localDeviceRandomAddress];
  if (v21)
  {
    v2 = [(CBIDSManager *)self localDeviceRandomAddress];
    v22 = v2;
    v23 = [v2 UTF8String];
  }

  else
  {
    v23 = "none";
  }

  v86 = v23;
  NSAppendPrintF_safe();
  objc_storeStrong(v20, v127);
  if (v21)
  {
  }

  v103 = +[NSMutableDictionary dictionary];
  v102 = +[NSMutableDictionary dictionary];
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v24 = [(CBIDSManager *)self associatedDevices];
  v97 = [v24 sortedArrayUsingComparator:&stru_1002B9978];

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
        v27 = [v25 idsDevice];
        v28 = [v27 productName];
        v105 = [v103 objectForKeyedSubscript:v28];

        if (!v105)
        {
          v105 = +[NSMutableDictionary dictionary];
        }

        v29 = [v27 deviceTypeToString];
        v30 = [v105 objectForKeyedSubscript:v29];

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
        v33 = [v27 deviceTypeToString];
        [v105 setObject:v32 forKeyedSubscript:v33];

        v34 = [v27 productName];
        [v103 setObject:v105 forKeyedSubscript:v34];

        v35 = [v27 productName];
        v36 = [v102 objectForKeyedSubscript:v35];

        if (!v36)
        {
          v36 = +[NSMutableDictionary dictionary];
        }

        v37 = [v27 deviceTypeToString];
        v38 = [v36 objectForKeyedSubscript:v37];

        v122 = v38;
        NSAppendPrintF_safe();
        v39 = v38;

        v121 = v39;
        v40 = [v27 name];
        v41 = v40;
        v87 = [v40 UTF8String];
        NSAppendPrintF_safe();
        v42 = v39;

        v120 = v42;
        v43 = [v27 uniqueID];
        v44 = v43;
        v88 = [v43 UTF8String];
        NSAppendPrintF_safe();
        v45 = v42;

        v119 = v45;
        v46 = [v27 nsuuid];
        v89 = [v46 UUIDString];
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
        v51 = [v25 stateString];
        v52 = [v51 capitalizedString];
        v53 = v52;
        v91 = [v52 UTF8String];
        NSAppendPrintF_safe();
        v54 = v50;

        v115 = v54;
        v55 = [v27 deviceTypeToString];
        v56 = v55;
        v57 = [v55 UTF8String];
        v58 = [v27 productName];
        v59 = v58;
        v60 = [v58 UTF8String];
        v61 = [v27 productVersion];
        v62 = v61;
        v63 = [v61 UTF8String];
        v64 = [v27 productBuildVersion];
        v65 = v64;
        v95 = [v64 UTF8String];
        v92 = v57;
        NSAppendPrintF_safe();
        v66 = v54;

        v67 = [v27 deviceTypeToString];
        [v36 setObject:v66 forKeyedSubscript:v67];

        v68 = [v27 productName];
        [v102 setObject:v36 forKeyedSubscript:v68];
      }

      v100 = [v97 countByEnumeratingWithState:&v123 objects:v142 count:16];
    }

    while (v100);
  }

  v69 = (v135 + 5);
  v114 = v135[5];
  v70 = [(CBIDSManager *)self associatedDevices];
  v93 = [v70 count];
  NSAppendPrintF_safe();
  objc_storeStrong(v69, v114);

  v71 = (v135 + 5);
  v113 = v135[5];
  v72 = [(CBIDSManager *)self associatedDevices];
  v73 = [v72 cuFilteredArrayUsingBlock:&stru_1002B99B8];
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
  v76 = [(CBIDSManager *)self CPAddressMapping];
  v108[0] = _NSConcreteStackBlock;
  v108[1] = 3221225472;
  v108[2] = sub_10008BFD4;
  v108[3] = &unk_1002B9A30;
  v108[4] = &v134;
  [v76 enumerateKeysAndObjectsUsingBlock:v108];

  if (IsAppleInternalBuild())
  {
    v77 = (v135 + 5);
    v107 = v135[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v77, v107);
    v78 = [(CBIDSManager *)self messageIdentifiersWaitingForAck];
    v106[0] = _NSConcreteStackBlock;
    v106[1] = 3221225472;
    v106[2] = sub_10008C028;
    v106[3] = &unk_1002B9A58;
    v106[4] = &v134;
    [v78 enumerateKeysAndObjectsUsingBlock:v106];
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
  v4 = [(CBIDSManager *)self service];
  v5 = [v4 devices];

  v6 = [v5 countByEnumeratingWithState:&v44 objects:v54 count:16];
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
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        if ([v12 isHSATrusted])
        {
          v13 = [v12 productName];
          v14 = [v13 isEqualToString:@"Apple TVOS"];

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

          v15 = [v12 productName];
          v16 = [v15 isEqualToString:@"iPhone OS"];

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
            v21 = [v12 modelIdentifier];
            v22 = [v21 containsString:@"Mac"];

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

      v8 = [v5 countByEnumeratingWithState:&v44 objects:v54 count:16];
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
    v5 = +[CloudXPCService sharedInstance];
    LODWORD(v31) = [v5 manateeZoneUpgraded] ^ 1;
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
  v2 = [(CBIDSManager *)self service];
  v3 = [v2 devices];

  v4 = sub_100005C14("MagicPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v43 = [v3 count];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Check for allDevicesStarSky, count: %lu", buf, 0xCu);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = v3;
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

      v11 = [v10 modelIdentifier];
      if ([v11 hasPrefix:@"AppleTV"])
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

      v12 = [v10 modelIdentifier];
      if ([v12 hasPrefix:@"iPhone"])
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

      v13 = [v10 modelIdentifier];
      if ([v13 containsString:@"Mac"])
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
    v16 = [v15 manateeZoneUpgraded];
    *buf = 67109120;
    LODWORD(v43) = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "allDevicesStarSky, current manatee state - %d", buf, 8u);
  }

  v17 = 1;
LABEL_50:

  return v17;
}

- (NSArray)idsDevices
{
  v2 = [(CBIDSManager *)self service];
  v3 = [v2 devices];

  return v3;
}

- (void)storePublicAddressMapping:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = [a4 objectForKey:@"PublicAddress"];
  if (!v7)
  {
    v16 = sub_100005C14("CloudPairing");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    LOWORD(v18) = 0;
    v17 = "cloudpaird: storePublicAddressMapping: Ignoring unpair becasue the address passed in is nil";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, &v18, 2u);
    goto LABEL_16;
  }

  if (!v6)
  {
    v16 = sub_100005C14("CloudPairing");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    LOWORD(v18) = 0;
    v17 = "cloudpaird: storePublicAddressMapping: Ignoring request becasue the device is nil";
    goto LABEL_15;
  }

  v8 = [v6 uniqueID];

  if (!v8)
  {
    v16 = sub_100005C14("CloudPairing");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    LOWORD(v18) = 0;
    v17 = "cloudpaird: storePublicAddressMapping: Device uniqueID is nil so throw this request out";
    goto LABEL_15;
  }

  v9 = [(CBIDSManager *)self CPAddressMapping];
  v10 = [v6 uniqueID];
  v11 = [v9 objectForKey:v10];

  v12 = [(CBIDSManager *)self CPAddressMapping];
  v13 = [v6 uniqueID];
  if (v11)
  {
    [v12 removeObjectForKey:v13];

    v12 = [(CBIDSManager *)self CPAddressMapping];
    v13 = [v6 uniqueID];
  }

  [v12 setObject:v7 forKey:v13];

  v14 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(CBIDSManager *)self CPAddressMapping];
    v18 = 138412290;
    v19 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "cloudpaird: storePublicAddressMapping: current mapping :%@", &v18, 0xCu);
  }

  [CBPreferencesManager removeuserPreference:@"AddressMapping" sync:1];
  v16 = [(CBIDSManager *)self CPAddressMapping];
  [CBPreferencesManager setuserPreference:@"AddressMapping" value:v16 sync:1];
LABEL_16:
}

- (id)publicAddressForIDSDevice:(id)a3
{
  v4 = a3;
  v5 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1001F0DC0();
  }

  v6 = [(CBIDSManager *)self CPAddressMapping];
  v7 = [v6 count];

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

  v11 = [(CBIDSManager *)self CPAddressMapping];
  v12 = [v11 objectForKey:v4];

  if (v12)
  {
    v13 = [(CBIDSManager *)self CPAddressMapping];
    v14 = [v13 objectForKey:v4];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)idsDeviceForBTAddress:(id)a3
{
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CBIDSManager *)self service];
  v6 = [v5 devices];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = +[CBIDSManager sharedInstance];
        v12 = [v10 uniqueID];
        v13 = [v11 publicAddressForIDSDevice:v12];

        if (v13 && ([v13 isEqualToString:v4] & 1) != 0)
        {
          v7 = v10;

          goto LABEL_12;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)_fetchArrayOfCloudDevicesForPeripheral:(id)a3
{
  v4 = a3;
  v5 = [(CBIDSManager *)self cloudPairingQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [NSMutableArray arrayWithCapacity:2];
  v7 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Find cloud pairing identifier for peripheral: %@", buf, 0xCu);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [(CBIDSManager *)self associatedDevices];
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
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
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [v14 idsDevice];
        v16 = [v15 nsuuid];
        v17 = [v16 isEqual:v4];

        if (v17)
        {
          v18 = sub_100005C14("CloudPairing");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v14 idsDevice];
            v20 = [v19 uniqueID];
            *buf = v24;
            v30 = v4;
            v31 = 2112;
            v32 = v20;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Found cloud pairing identifier for peripheral: %@ as %@", buf, 0x16u);
          }

          [v6 addObject:v14];
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v11);
  }

  v21 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = v4;
    v31 = 2112;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Cloud Devices for peripheral: %@ - %@", buf, 0x16u);
  }

  v22 = [v6 copy];

  return v22;
}

- (id)_fetchCloudPairingIdentifierForPeripheral:(id)a3
{
  v4 = a3;
  v5 = [(CBIDSManager *)self cloudPairingQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Find cloud pairing identifier for peripheral: %@", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [(CBIDSManager *)self associatedDevices];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 idsDevice];
        v14 = [v13 nsuuid];
        v15 = [v14 isEqual:v4];

        if (v15)
        {
          v17 = sub_100005C14("CloudPairing");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v12 idsDevice];
            v19 = [v18 uniqueID];
            *buf = 138412546;
            v27 = v4;
            v28 = 2112;
            v29 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found cloud pairing identifier for peripheral: %@ as %@", buf, 0x16u);
          }

          v20 = [v12 idsDevice];
          v16 = [v20 uniqueID];

          goto LABEL_17;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v7 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "No cloud pairing identifier FOUND for peripheral: %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_17:

  return v16;
}

- (void)fetchCloudPairingIdentifierForPeripheral:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Find cloud pairing identifier for peripheral: %@", buf, 0xCu);
  }

  v9 = [(CBIDSManager *)self cloudPairingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008D8C8;
  block[3] = &unk_1002B6BB0;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)fetchIDSDevicesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CBIDSManager *)self cloudPairingQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008D9E0;
  v7[3] = &unk_1002B6998;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)isLegacyDevice:(id)a3
{
  v4 = a3;
  if (v4 && ![(CBIDSManager *)self allDevicesStarSky])
  {
    v6 = [(CBIDSManager *)self service];
    v7 = [v6 devices];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v7;
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
            v14 = [v13 name];
            v15 = [v14 isEqualToString:v4];

            if (v15)
            {
              v16 = [v13 modelIdentifier];
              if ([v16 containsString:@"Mac"])
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

              v16 = [v13 productName];
              if ([v16 isEqualToString:@"iPhone OS"])
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