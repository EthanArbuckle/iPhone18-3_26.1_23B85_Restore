@interface AF2SyncClient
- (AF2SyncClient)init;
- (BOOL)_hasValidOfflineKeyWithAccountID:(unint64_t)d;
- (DeviceKeyTypeSupport)_getDeviceKeyTypeSupportInfo;
- (double)_getSubscriptionStatusRefreshInterval;
- (id)_endProvisioningWithPtm:(id)ptm tk:(id)tk;
- (id)_eraseProvisioning;
- (id)_generateClientInfoWithMachineID:(id)d hostInfoData:(id)data clientData:(id *)clientData;
- (id)_generateKeybagRequest:(id *)request;
- (id)_getApplicationAccountIds;
- (id)_getDeviceCertificate:(id *)certificate;
- (id)_getHWInfoString;
- (id)_getKeybagAccountIds;
- (id)_getMediaAccountIds;
- (id)_hostSyncPrepareKeybagResponseForRequest:(id)request withDeviceCertificate:(id)certificate hwInfoString:(id)string deviceType:(unsigned int)type supportVersion:(unsigned int)version requestedDSIDs:(id)ds keyBagResponseData:(id *)data;
- (id)_importKeybag:(id)keybag;
- (id)_importSubsBag:(id)bag;
- (id)_initiateBeginKeybagSyncOnMessageLink:(id)link;
- (id)_initiateKeybagRequestOnMessageLink:(id)link;
- (id)_provisionDeviceWithData:(id)data clientData:(id *)clientData;
- (id)_syncDeviceProvisioningWithSim:(id)sim srm:(id *)srm;
- (unsigned)_fairPlayContext;
- (void)_checkForNewAccountIds;
- (void)_destroyFairPlayContext;
- (void)_destroyProvisioningContext;
- (void)_getMid:(id *)mid otp:(id *)otp;
- (void)_handleAirTrafficStartedEvent:(id)event;
- (void)_handleBeginKeybagSyncRequest:(id)request onMessageLink:(id)link;
- (void)_handleKeybagRequest:(id)request onMessageLink:(id)link;
- (void)_handleProvisioningRequest:(id)request onMessageLink:(id)link;
- (void)_handleSubscriptionClientInfoRequest:(id)request onMessageLink:(id)link;
- (void)_handleSubscriptionImportSubsBagRequest:(id)request onMessageLink:(id)link;
- (void)_initiateKeybagSyncWithPriority:(int)priority;
- (void)_processKeybagResponse:(id)response onMessageLink:(id)link;
- (void)applicationsDidInstall:(id)install;
- (void)dealloc;
- (void)messageLink:(id)link didReceiveRequest:(id)request;
- (void)messageLinkWasClosed:(id)closed;
- (void)messageLinkWasInitialized:(id)initialized;
- (void)messageLinkWasOpened:(id)opened;
@end

@implementation AF2SyncClient

- (double)_getSubscriptionStatusRefreshInterval
{
  v2 = [SSURLBagContext contextWithBagType:0];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_B6CE8;
  v23 = sub_B6CF8;
  v3 = +[ISURLBagCache sharedCache];
  v24 = [v3 URLBagForContext:v2 withOptions:3];

  v4 = v20[5];
  if (v4)
  {
    goto LABEL_5;
  }

  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "no cached bag values - loading from server", buf, 2u);
  }

  v6 = dispatch_semaphore_create(0);
  v7 = [[ISLoadURLBagOperation alloc] initWithBagContext:v2];
  objc_initWeak(buf, v7);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_B6D00;
  v14[3] = &unk_E36E0;
  objc_copyWeak(&v17, buf);
  v16 = &v19;
  v8 = v6;
  v15 = v8;
  [v7 setCompletionBlock:v14];
  [v7 start];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);

  v4 = v20[5];
  if (v4)
  {
LABEL_5:
    v9 = [v4 valueForKey:@"subscription-status-refresh-interval-in-seconds"];
    v10 = v9;
    if (v9)
    {
      [v9 doubleValue];
      v12 = v11;
    }

    else
    {
      v12 = 86400.0;
    }
  }

  else
  {
    v12 = 86400.0;
  }

  _Block_object_dispose(&v19, 8);

  return v12;
}

- (id)_importSubsBag:(id)bag
{
  bagCopy = bag;
  if ([bagCopy length])
  {
    [(AF2SyncClient *)self _fairPlayContext];
    [bagCopy bytes];
    [bagCopy length];
    sub_4A050();
    v6 = v5;
    v7 = _ATLogCategorySyncBundle();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v12 = v6;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "failed to import subscription bag data. err=%ld", buf, 0xCu);
      }

      v9 = [NSError errorWithDomain:@"AirFair2" code:v6 userInfo:0];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "successfully imported subscription bag data. err=%ld", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)_hasValidOfflineKeyWithAccountID:(unint64_t)d
{
  [(AF2SyncClient *)self _fairPlayContext];
  sub_6F084();
  if (v3)
  {
    v4 = v3;
    v5 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v8 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "failed to get susbcription status. err=%ld", buf, 0xCu);
    }
  }

  return 0;
}

- (id)_generateClientInfoWithMachineID:(id)d hostInfoData:(id)data clientData:(id *)clientData
{
  v25 = 0;
  v24 = 0;
  dataCopy = data;
  dCopy = d;
  _fairPlayContext = [(AF2SyncClient *)self _fairPlayContext];
  bytes = [dCopy bytes];
  v12 = [dCopy length];

  bytes2 = [dataCopy bytes];
  v14 = [dataCopy length];

  sub_6C824(_fairPlayContext, bytes, v12, bytes2, v14, &v25, &v24);
  v16 = v15;
  if (v15 == -42586)
  {
    v18 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v19 = "Client is not opted-in";
      v20 = v18;
      v21 = OS_LOG_TYPE_DEFAULT;
      v22 = 2;
LABEL_8:
      _os_log_impl(&dword_0, v20, v21, v19, buf, v22);
    }
  }

  else
  {
    if (!v15)
    {
      [NSData dataWithBytes:v25 length:v24];
      *clientData = v17 = 0;
      goto LABEL_10;
    }

    v18 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v27 = v16;
      v19 = "failed to generate subscription client info. err=%ld";
      v20 = v18;
      v21 = OS_LOG_TYPE_ERROR;
      v22 = 12;
      goto LABEL_8;
    }
  }

  v17 = [NSError errorWithDomain:@"AirFair2" code:v16 userInfo:0];
LABEL_10:
  if (v25)
  {
    sub_66F5C(v25);
  }

  return v17;
}

- (id)_getApplicationAccountIds
{
  v2 = +[NSMutableSet set];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_B73C8;
  v7[3] = &unk_E36B8;
  v8 = v2;
  v4 = v2;
  [v3 enumerateBundlesOfType:1 block:v7];
  allObjects = [v4 allObjects];

  return allObjects;
}

- (id)_getMediaAccountIds
{
  v2 = +[NSMutableSet set];
  v3 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_B7548;
  v7[3] = &unk_E3690;
  v8 = v2;
  v4 = v2;
  [v3 databaseConnectionAllowingWrites:0 withBlock:v7];

  allObjects = [v4 allObjects];

  return allObjects;
}

- (id)_getKeybagAccountIds
{
  _getApplicationAccountIds = [(AF2SyncClient *)self _getApplicationAccountIds];
  v4 = [_getApplicationAccountIds mutableCopy];

  _getMediaAccountIds = [(AF2SyncClient *)self _getMediaAccountIds];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [_getMediaAccountIds countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(_getMediaAccountIds);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v4 containsObject:v10] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [_getMediaAccountIds countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_initiateKeybagSyncWithPriority:(int)priority
{
  v3 = *&priority;
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109120;
    v12[1] = v3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "initiating keybag re-sync with priority %d", v12, 8u);
  }

  currentMessageLink = self->_currentMessageLink;
  if (currentMessageLink)
  {
    endpointType = [(ATConcreteMessageLink *)currentMessageLink endpointType];
    v8 = self->_currentMessageLink;
    if (endpointType)
    {
      v9 = [(AF2SyncClient *)self _initiateBeginKeybagSyncOnMessageLink:v8];
    }

    else
    {
      v11 = [(AF2SyncClient *)self _initiateKeybagRequestOnMessageLink:v8];
    }
  }

  else
  {
    v10 = +[ATDeviceService sharedInstance];
    [v10 openDeviceMessageLinkWithPriority:v3 withCompletion:&stru_E3640];
  }
}

- (void)_checkForNewAccountIds
{
  v3 = +[ICBGTaskScheduler sharedTaskScheduler];
  if (([v3 hasScheduledTask:@"kAF2DeferredAccountChangeCheckTimerEvent"] & 1) == 0)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v5 = v4 - self->_lastAccountChangeCheckTime;
    if (v5 >= 30.0)
    {
      +[NSDate timeIntervalSinceReferenceDate];
      self->_lastAccountChangeCheckTime = v6;
      _getKeybagAccountIds = [(AF2SyncClient *)self _getKeybagAccountIds];
      currentSyncedAccountIds = self->_currentSyncedAccountIds;
      if (!currentSyncedAccountIds || ![(NSArray *)currentSyncedAccountIds isEqualToArray:_getKeybagAccountIds])
      {
        v9 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543362;
          v11 = _getKeybagAccountIds;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "accounts have changed. accountIds=%{public}@", &v10, 0xCu);
        }

        [(AF2SyncClient *)self _initiateKeybagSyncWithPriority:1];
      }
    }

    else
    {
      [v3 scheduleTask:@"kAF2DeferredAccountChangeCheckTimerEvent" afterDelay:0 withUserData:30.0 - v5];
    }
  }
}

- (id)_hostSyncPrepareKeybagResponseForRequest:(id)request withDeviceCertificate:(id)certificate hwInfoString:(id)string deviceType:(unsigned int)type supportVersion:(unsigned int)version requestedDSIDs:(id)ds keyBagResponseData:(id *)data
{
  requestCopy = request;
  certificateCopy = certificate;
  stringCopy = string;
  dsCopy = ds;
  memset(v71, 0, sizeof(v71));
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  HardwareInfoFromDeviceUDID = ICFairPlayGetHardwareInfoFromDeviceUDID();
  if (*(v59 + 6))
  {
    v19 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(v59 + 6);
      *buf = 67109120;
      *&buf[4] = v20;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "ICFairPlayGetHardwareInfoFromDeviceUDID failed. error=%d", buf, 8u);
    }

    v21 = [NSError errorWithDomain:@"AirFair2" code:*(v59 + 6) userInfo:0];
    v22 = 0;
    if (v21)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v57[0] = type;
  v57[1] = version;
  v56 = 0;
  _fairPlayContext = [(AF2SyncClient *)self _fairPlayContext];
  v24 = certificateCopy;
  sub_7C068(_fairPlayContext, [certificateCopy bytes], objc_msgSend(certificateCopy, "length"), v71, v57);
  *(v59 + 6) = v25;
  if (v25)
  {
    v26 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = *(v59 + 6);
      *buf = 67109120;
      *&buf[4] = v27;
      v28 = "FairPlayDeviceSyncBeginCertificate failed. err=%d";
LABEL_12:
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, v28, buf, 8u);
    }
  }

  else
  {
    v29 = requestCopy;
    [requestCopy bytes];
    [requestCopy length];
    sub_37DD0(v56);
    *(v59 + 6) = v30;
    if (!v30)
    {
      if (dsCopy)
      {
        v35 = [dsCopy mutableCopy];
      }

      else
      {
        v35 = objc_opt_new();
      }

      v26 = v35;
      v36 = +[ICUserIdentityStore defaultIdentityStore];
      v37 = +[ICUserIdentity activeAccount];
      v50 = [v36 DSIDForUserIdentity:v37 outError:0];

      if (v50)
      {
        [v26 addObject:v50];
      }

      _getKeybagAccountIds = [(AF2SyncClient *)self _getKeybagAccountIds];
      [v26 addObjectsFromArray:_getKeybagAccountIds];
      v49 = _getKeybagAccountIds;
      v39 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [dsCopy count];
        v40 = [_getKeybagAccountIds count];
        *buf = 134218754;
        *&buf[4] = v48;
        v65 = 2112;
        v66 = dsCopy;
        v67 = 2048;
        v68 = v40;
        v69 = 2112;
        v70 = _getKeybagAccountIds;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "building keybag with %lu watch DSIDs %@ and %lu companion DSIDs %@", buf, 0x2Au);
      }

      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_B81B0;
      v52[3] = &unk_E3620;
      v41 = objc_opt_new();
      v53 = v41;
      v54 = &v58;
      v55 = v56;
      [v26 enumerateObjectsUsingBlock:v52];
      v42 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [v41 count];
        *buf = 134218242;
        *&buf[4] = v43;
        v65 = 2112;
        v66 = v41;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "finished building keybag with %lu DSIDs %@", buf, 0x16u);
      }

      *buf = 0;
      v51 = 0;
      sub_441F0(v56, buf, &v51);
      *(v59 + 6) = v44;
      if (v44)
      {
        p_super = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          v46 = *(v59 + 6);
          *v62 = 67109120;
          v63 = v46;
          _os_log_impl(&dword_0, p_super, OS_LOG_TYPE_ERROR, "FairPlayDeviceSyncEnd failed. err=%d", v62, 8u);
        }

        v22 = 0;
      }

      else
      {
        v22 = [NSData dataWithBytes:*buf length:v51];
        sub_CAF0(*buf);
        v47 = v49;
        p_super = &self->_currentSyncedAccountIds->super;
        self->_currentSyncedAccountIds = v47;
      }

      goto LABEL_14;
    }

    v26 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v31 = *(v59 + 6);
      *buf = 67109120;
      *&buf[4] = v31;
      v28 = "FairPlayDeviceSyncSet failed. err=%d";
      goto LABEL_12;
    }
  }

  v22 = 0;
LABEL_14:

LABEL_15:
  v32 = *(v59 + 6);
  if (v32)
  {
    v21 = [NSError errorWithDomain:@"AirFair2" code:v32 userInfo:0];
    if (!data)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = 0;
    if (!data)
    {
      goto LABEL_21;
    }
  }

  if (!v21)
  {
    v33 = v22;
    v21 = 0;
    *data = v22;
  }

LABEL_21:
  _Block_object_dispose(&v58, 8);

  return v21;
}

- (id)_importKeybag:(id)keybag
{
  keybagCopy = keybag;
  if ([keybagCopy length] && (-[AF2SyncClient _fairPlayContext](self, "_fairPlayContext"), objc_msgSend(keybagCopy, "bytes"), objc_msgSend(keybagCopy, "length"), sub_2C9A0(), v5))
  {
    v6 = v5;
    v7 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "failed to import keybag data. err=%ld", &v10, 0xCu);
    }

    v8 = [NSError errorWithDomain:@"AirFair2" code:v6 userInfo:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_generateKeybagRequest:(id *)request
{
  v5 = +[SSAccountStore defaultStore];
  activeLockerAccount = [v5 activeLockerAccount];
  uniqueIdentifier = [activeLockerAccount uniqueIdentifier];
  unsignedLongLongValue = [uniqueIdentifier unsignedLongLongValue];

  v15 = 0;
  v14 = 0;
  sub_42668([(AF2SyncClient *)self _fairPlayContext], unsignedLongLongValue, 110103, 7, &v15, &v14);
  if (v9)
  {
    v10 = v9;
    v11 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "failed to generate keybag request. err=%ld", buf, 0xCu);
    }

    v12 = [NSError errorWithDomain:@"AirFair2" code:v10 userInfo:0];
  }

  else
  {
    *request = [NSData dataWithBytes:v15 length:v14];
    sub_23160(v15);
    v12 = 0;
  }

  return v12;
}

- (id)_getDeviceCertificate:(id *)certificate
{
  v11 = 4096;
  sub_7962C([(AF2SyncClient *)self _fairPlayContext], 16777221, v14, &v11);
  if (v4)
  {
    v5 = v4;
    v6 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v13 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "failed to obtain device certificate. err=%ld", buf, 0xCu);
    }

    v9 = [NSError errorWithDomain:@"AirFair2" code:v5 userInfo:0];
  }

  else
  {
    v7 = [NSData dataWithBytes:v14 length:v11];
    v8 = v7;
    v9 = 0;
    *certificate = v7;
  }

  return v9;
}

- (DeviceKeyTypeSupport)_getDeviceKeyTypeSupportInfo
{
  v6 = 0;
  sub_7B77C(&v6 + 4, &v6);
  if (v2)
  {
    v3 = v2;
    v4 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v8 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "FairPlayGetDeviceSupportInfo failed. err=%ld", buf, 0xCu);
    }

    return 0;
  }

  else
  {
    return (HIDWORD(v6) | (v6 << 32));
  }
}

- (id)_getHWInfoString
{
  v2 = MGCopyAnswer();

  return v2;
}

- (void)_destroyFairPlayContext
{
  fpContextId = self->_fpContextId;
  if (fpContextId)
  {
    sub_18D4(fpContextId);
    self->_fpContextId = 0;
  }
}

- (unsigned)_fairPlayContext
{
  p_fpContextId = &self->_fpContextId;
  if (!self->_fpContextId)
  {
    goto LABEL_5;
  }

  sub_7F380();
  if (v4)
  {
    [(AF2SyncClient *)self _destroyFairPlayContext];
  }

  result = *p_fpContextId;
  if (!*p_fpContextId)
  {
LABEL_5:
    sub_1AF8(0, 0, "/var/mobile/Media/iTunes_Control/iTunes", p_fpContextId);
    return *p_fpContextId;
  }

  return result;
}

- (id)_syncDeviceProvisioningWithSim:(id)sim srm:(id *)srm
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  simCopy = sim;
  bytes = [simCopy bytes];
  v7 = [simCopy length];

  sub_87CF8(-1, bytes, v7, &v16, &v15, &v14, &v13);
  if (v8)
  {
    v9 = v8;
    v10 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v18 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Provisioning sync failed. err=%ld", buf, 0xCu);
    }

    v11 = [NSError errorWithDomain:@"AirFair2" code:v9 userInfo:0];
  }

  else
  {
    [NSData dataWithBytes:v14 length:v13];
    *srm = v11 = 0;
  }

  if (v14)
  {
    sub_9EA70(v14);
  }

  if (v16)
  {
    sub_9EA70(v16);
  }

  return v11;
}

- (id)_eraseProvisioning
{
  sub_9AB60();
  if (v2)
  {
    v3 = v2;
    v4 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      v8 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "Provisioning erase failed. err=%ld", &v7, 0xCu);
    }

    v5 = [NSError errorWithDomain:@"AirFair2" code:v3 userInfo:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_endProvisioningWithPtm:(id)ptm tk:(id)tk
{
  ptmCopy = ptm;
  tkCopy = tk;
  ptmCopy2 = ptm;
  [ptmCopy2 bytes];
  [ptmCopy2 length];

  [tkCopy bytes];
  [tkCopy length];

  sub_96198();
  if (v9)
  {
    v10 = v9;
    v11 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 134217984;
      v15 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Provisioning end failed. err=%ld", &v14, 0xCu);
    }

    v12 = [NSError errorWithDomain:@"AirFair2" code:v10 userInfo:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_provisionDeviceWithData:(id)data clientData:(id *)clientData
{
  v15 = 0;
  v14 = 0;
  dataCopy = data;
  [(AF2SyncClient *)self _destroyProvisioningContext];
  bytes = [dataCopy bytes];
  v8 = [dataCopy length];

  sub_A25B8(-1, bytes, v8, &v15, &v14, &self->_provisioningContextId);
  if (v9)
  {
    v10 = v9;
    v11 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = v10;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Provisioning start failed. err=%ld", buf, 0xCu);
    }

    v12 = [NSError errorWithDomain:@"AirFair2" code:v10 userInfo:0];
  }

  else
  {
    [NSData dataWithBytes:v15 length:v14];
    *clientData = v12 = 0;
  }

  if (v15)
  {
    sub_9EA70(v15);
  }

  return v12;
}

- (void)_getMid:(id *)mid otp:(id *)otp
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  sub_8CEDC(-1, &v12, &v10 + 4, &v11, &v10);
  if (v6)
  {
    v7 = v6;
    v8 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v14 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "Failed to get MID/OTP. err=%ld", buf, 0xCu);
    }

    v9 = 0;
    *mid = 0;
  }

  else
  {
    *mid = [NSData dataWithBytes:v12 length:HIDWORD(v10)];
    v9 = [NSData dataWithBytes:v11 length:v10];
  }

  *otp = v9;
  if (v12)
  {
    sub_9EA70(v12);
  }

  if (v11)
  {
    sub_9EA70(v11);
  }
}

- (void)_destroyProvisioningContext
{
  if (self->_provisioningContextId)
  {
    sub_9EAC8();
    self->_provisioningContextId = 0;
  }
}

- (void)_handleProvisioningRequest:(id)request onMessageLink:(id)link
{
  requestCopy = request;
  linkCopy = link;
  parameters = [requestCopy parameters];
  v9 = [parameters objectForKey:@"provisioningAction"];
  if ([v9 isEqualToString:@"syncProvisioning"])
  {
    v10 = +[NSMutableDictionary dictionary];
    v11 = [parameters objectForKey:@"sim"];
    v25 = 0;
    _eraseProvisioning = [(AF2SyncClient *)self _syncDeviceProvisioningWithSim:v11 srm:&v25];
    v13 = v25;

    v23 = 0;
    v24 = 0;
    [(AF2SyncClient *)self _getMid:&v24 otp:&v23];
    v14 = v24;
    v15 = v23;
    if (v13)
    {
      [v10 setObject:v13 forKey:@"srm"];
    }

    if (v14)
    {
      [v10 setObject:v14 forKey:@"clientMachineIDData"];
    }
  }

  else if ([v9 isEqualToString:@"startProvisioning"])
  {
    _getHWInfoString = [(AF2SyncClient *)self _getHWInfoString];
    v10 = +[NSMutableDictionary dictionary];
    v17 = [parameters objectForKey:@"spim"];
    v22 = 0;
    _eraseProvisioning = [(AF2SyncClient *)self _provisionDeviceWithData:v17 clientData:&v22];
    v18 = v22;

    if (v18)
    {
      [v10 setObject:v18 forKey:@"cpim"];
    }

    if (_getHWInfoString)
    {
      [v10 setObject:_getHWInfoString forKey:@"clientHWInfoString"];
    }
  }

  else
  {
    if ([v9 isEqualToString:@"endProvisioning"])
    {
      v19 = [parameters objectForKey:@"ptm"];
      v20 = [parameters objectForKey:@"tk"];
      _eraseProvisioning = [(AF2SyncClient *)self _endProvisioningWithPtm:v19 tk:v20];
    }

    else
    {
      if (![v9 isEqualToString:@"eraseProvisioning"])
      {
        v10 = 0;
        _eraseProvisioning = 0;
        goto LABEL_19;
      }

      _eraseProvisioning = [(AF2SyncClient *)self _eraseProvisioning];
    }

    v10 = 0;
  }

LABEL_19:
  v21 = [requestCopy responseWithError:_eraseProvisioning parameters:v10];
  [linkCopy sendResponse:v21 withCompletion:0];
}

- (void)_handleSubscriptionImportSubsBagRequest:(id)request onMessageLink:(id)link
{
  linkCopy = link;
  requestCopy = request;
  parameters = [requestCopy parameters];
  v9 = [parameters objectForKey:@"SubsBagData"];
  v11 = [(AF2SyncClient *)self _importSubsBag:v9];
  v10 = [requestCopy responseWithError:v11 parameters:0];

  [linkCopy sendResponse:v10 withCompletion:0];
}

- (void)_handleSubscriptionClientInfoRequest:(id)request onMessageLink:(id)link
{
  linkCopy = link;
  requestCopy = request;
  parameters = [requestCopy parameters];
  v8 = [parameters objectForKey:@"hostInfoData"];
  _getHWInfoString = [(AF2SyncClient *)self _getHWInfoString];
  v10 = [parameters objectForKey:@"accountId"];
  unsignedLongLongValue = [v10 unsignedLongLongValue];

  v24 = 0;
  v25 = 0;
  [(AF2SyncClient *)self _getMid:&v25 otp:&v24];
  v11 = v25;
  v12 = v24;
  v22 = v8;
  if (v11)
  {
    v23 = 0;
    v20 = [(AF2SyncClient *)self _generateClientInfoWithMachineID:v11 hostInfoData:v8 clientData:&v23];
    v13 = v23;
  }

  else
  {
    v13 = 0;
    v20 = 0;
  }

  v14 = +[NSMutableDictionary dictionary];
  v15 = [NSNumber numberWithUnsignedInt:[(AF2SyncClient *)self _getDeviceKeyTypeSupportInfo]];
  if (_getHWInfoString)
  {
    [v14 setObject:_getHWInfoString forKey:@"clientHWInfoString"];
  }

  if (v13)
  {
    [v14 setObject:v13 forKey:@"clientInfoData"];
  }

  if (v11)
  {
    [v14 setObject:v11 forKey:@"clientMachineIDData"];
  }

  if (v12)
  {
    [v14 setObject:v12 forKey:@"clientOTPData"];
  }

  [v14 setObject:v15 forKey:@"clientDeviceType"];
  v16 = MGCopyAnswer();
  [v14 setObject:v16 forKey:@"clientVersion"];

  v17 = [NSNumber numberWithBool:[(AF2SyncClient *)self _hasValidOfflineKeyWithAccountID:unsignedLongLongValue]];
  [v14 setObject:v17 forKey:@"clientState"];

  v18 = [requestCopy responseWithError:v20 parameters:v14];

  [linkCopy sendResponse:v18 withCompletion:&stru_E35F8];
}

- (void)_processKeybagResponse:(id)response onMessageLink:(id)link
{
  responseCopy = response;
  error = [responseCopy error];

  if (!error)
  {
    parameters = [responseCopy parameters];
    v7 = [parameters objectForKey:@"KeybagData"];

    error2 = [(AF2SyncClient *)self _importKeybag:v7];
    v10 = _ATLogCategorySyncBundle();
    v11 = v10;
    if (error2)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = 138543362;
        v17 = error2;
        v12 = "failed to import keybag response data. err=%{public}@";
        v13 = v11;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 12;
LABEL_9:
        _os_log_impl(&dword_0, v13, v14, v12, &v16, v15);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      v12 = "keybag transfer successful!";
      v13 = v11;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 2;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v7 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    error2 = [responseCopy error];
    v16 = 138543362;
    v17 = error2;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "host failed to process keybag request. err=%{public}@", &v16, 0xCu);
LABEL_11:
  }
}

- (void)_handleKeybagRequest:(id)request onMessageLink:(id)link
{
  requestCopy = request;
  linkCopy = link;
  v8 = requestCopy;
  parameters = [requestCopy parameters];
  v10 = [parameters objectForKey:@"DeviceCert"];
  v11 = [parameters objectForKey:@"KeybagData"];
  v12 = [parameters objectForKey:@"KeybagSig"];
  v32 = [parameters objectForKey:@"HWInfoString"];
  v13 = [parameters objectForKey:@"KeyTypeDeviceType"];
  intValue = [v13 intValue];

  v15 = [parameters objectForKey:@"KeyTypeVersion"];
  intValue2 = [v15 intValue];

  [parameters objectForKey:@"AccountDSIDs"];
  v31 = v30 = linkCopy;
  signatureProvider = [linkCopy signatureProvider];
  v18 = signatureProvider;
  v29 = v12;
  if (signatureProvider)
  {
    v19 = [signatureProvider verifySignature:v12 forData:v11];
    if (v19)
    {
      v20 = v19;
      v21 = _ATLogCategorySyncBundle();
      selfCopy3 = self;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v36 = v20;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "failed to verify signature of keybag data. err=%{public}@", buf, 0xCu);
      }

      v23 = 0;
LABEL_9:
      v24 = v11;

      goto LABEL_11;
    }
  }

  v34 = 0;
  v20 = [(AF2SyncClient *)self _hostSyncPrepareKeybagResponseForRequest:v11 withDeviceCertificate:v10 hwInfoString:v32 deviceType:intValue supportVersion:intValue2 requestedDSIDs:v31 keyBagResponseData:&v34];
  v23 = v34;
  if (v20)
  {
    v21 = _ATLogCategorySyncBundle();
    selfCopy3 = self;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v20;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "failed to prepare keybag response data. err=%{public}@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  selfCopy3 = self;
  v24 = v11;
LABEL_11:
  v25 = v10;
  v26 = +[NSMutableDictionary dictionary];
  v27 = v26;
  if (v23)
  {
    [v26 setObject:v23 forKey:@"KeybagData"];
  }

  v28 = [v8 responseWithError:v20 parameters:v27];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_B9BA4;
  v33[3] = &unk_E35B8;
  v33[4] = selfCopy3;
  [v30 sendResponse:v28 withCompletion:v33];
}

- (id)_initiateKeybagRequestOnMessageLink:(id)link
{
  linkCopy = link;
  v5 = +[NSMutableDictionary dictionary];
  v24 = 0;
  v6 = [(AF2SyncClient *)self _getDeviceCertificate:&v24];
  v7 = v24;
  if (v6)
  {
    goto LABEL_14;
  }

  [v5 setObject:v7 forKey:@"DeviceCert"];
  _getHWInfoString = [(AF2SyncClient *)self _getHWInfoString];
  _getDeviceKeyTypeSupportInfo = [(AF2SyncClient *)self _getDeviceKeyTypeSupportInfo];
  v10 = HIDWORD(*&_getDeviceKeyTypeSupportInfo);
  [v5 setObject:_getHWInfoString forKey:@"HWInfoString"];
  v11 = [NSNumber numberWithUnsignedInt:_getDeviceKeyTypeSupportInfo];
  [v5 setObject:v11 forKey:@"KeyTypeDeviceType"];

  v12 = [NSNumber numberWithUnsignedInt:v10];
  [v5 setObject:v12 forKey:@"KeyTypeVersion"];

  _getKeybagAccountIds = [(AF2SyncClient *)self _getKeybagAccountIds];
  [v5 setObject:_getKeybagAccountIds forKey:@"AccountDSIDs"];
  v23 = 0;
  v6 = [(AF2SyncClient *)self _generateKeybagRequest:&v23];
  v14 = v23;
  if (!v6)
  {
    signatureProvider = [linkCopy signatureProvider];
    v16 = signatureProvider;
    if (signatureProvider)
    {
      v22 = 0;
      v6 = [signatureProvider createSignature:&v22 forData:v14];
      v17 = v22;
      if (v6)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v17 = 0;
    }

    if (v14)
    {
      [v5 setObject:v14 forKey:@"KeybagData"];
    }

    if (v17)
    {
      [v5 setObject:v17 forKey:@"KeybagSig"];
    }

    v6 = 0;
    goto LABEL_12;
  }

LABEL_13:

  if (!v6)
  {
    v18 = [[ATRequest alloc] initWithCommand:@"SyncKeybag" dataClass:@"AirFair2" parameters:v5];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_B9FAC;
    v20[3] = &unk_E3590;
    v20[4] = self;
    v21 = linkCopy;
    [v21 sendRequest:v18 withCompletion:v20];

    goto LABEL_17;
  }

LABEL_14:
  v18 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "failed to create keybag request. err=%{public}@", buf, 0xCu);
  }

LABEL_17:

  return v6;
}

- (void)_handleBeginKeybagSyncRequest:(id)request onMessageLink:(id)link
{
  linkCopy = link;
  v6 = [request responseWithError:0 parameters:0];
  [linkCopy sendResponse:v6 withCompletion:0];

  v7 = [(AF2SyncClient *)self _initiateKeybagRequestOnMessageLink:linkCopy];
}

- (id)_initiateBeginKeybagSyncOnMessageLink:(id)link
{
  linkCopy = link;
  v4 = [[ATRequest alloc] initWithCommand:@"BeginKeybagSync" dataClass:@"AirFair2" parameters:0];
  [linkCopy sendRequest:v4 withCompletion:&stru_E3568];

  return 0;
}

- (void)_handleAirTrafficStartedEvent:(id)event
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  applicationWorkspace = self->_applicationWorkspace;
  self->_applicationWorkspace = v4;

  [(LSApplicationWorkspace *)self->_applicationWorkspace addObserver:self];
  [(NSNotificationCenter *)self->_notificationCenter addObserver:self selector:"_handleKeybagSyncRequestNotification:" name:@"ATSyncKeybagToPairedDeviceRequestNotification" object:0];
  [(NSNotificationCenter *)self->_notificationCenter addObserver:self selector:"_handleContentsChangedNotification:" name:ML3MusicLibraryContentsDidChangeNotification object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_BA2F8, @"com.apple.fairplayd.resync-fpkeybag", 0, CFNotificationSuspensionBehaviorDrop);
}

- (void)applicationsDidInstall:(id)install
{
  installCopy = install;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [installCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    selfCopy = self;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(installCopy);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        buf[0] = 0;
        bundleURL = [v10 bundleURL];
        path = [bundleURL path];
        v13 = [path stringByAppendingPathComponent:@"Watch"];

        v14 = +[NSFileManager defaultManager];
        v15 = [v14 fileExistsAtPath:v13 isDirectory:buf];
        LOBYTE(path) = v15 & buf[0];

        v7 |= path;
      }

      v6 = [installCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
    if (v7)
    {
      v16 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "watchkit app installed - initiating key sync now", buf, 2u);
      }

      [(AF2SyncClient *)selfCopy _initiateKeybagSyncWithPriority:0];
    }
  }
}

- (void)messageLink:(id)link didReceiveRequest:(id)request
{
  linkCopy = link;
  requestCopy = request;
  command = [requestCopy command];
  v9 = [command isEqualToString:@"SyncKeybag"];

  if (v9)
  {
    [(AF2SyncClient *)self _handleKeybagRequest:requestCopy onMessageLink:linkCopy];
  }

  else
  {
    command2 = [requestCopy command];
    v11 = [command2 isEqualToString:@"GetClientInfo"];

    if (v11)
    {
      [(AF2SyncClient *)self _handleSubscriptionClientInfoRequest:requestCopy onMessageLink:linkCopy];
    }

    else
    {
      command3 = [requestCopy command];
      v13 = [command3 isEqualToString:@"ImportSubsBag"];

      if (v13)
      {
        [(AF2SyncClient *)self _handleSubscriptionImportSubsBagRequest:requestCopy onMessageLink:linkCopy];
      }

      else
      {
        command4 = [requestCopy command];
        v15 = [command4 isEqualToString:@"ProvisionAction"];

        if (v15)
        {
          [(AF2SyncClient *)self _handleProvisioningRequest:requestCopy onMessageLink:linkCopy];
        }

        else
        {
          command5 = [requestCopy command];
          v17 = [command5 isEqualToString:@"BeginKeybagSync"];

          if (v17)
          {
            [(AF2SyncClient *)self _handleBeginKeybagSyncRequest:requestCopy onMessageLink:linkCopy];
          }

          else
          {
            v18 = _ATLogCategorySyncBundle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              command6 = [requestCopy command];
              v22 = 138543362;
              v23 = command6;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "received unknown request %{public}@", &v22, 0xCu);
            }

            v20 = [NSError errorWithDomain:@"ATError" code:23 userInfo:0];
            v21 = [requestCopy responseWithError:v20 parameters:0];
            [linkCopy sendResponse:v21 withCompletion:0];
          }
        }
      }
    }
  }
}

- (void)messageLinkWasClosed:(id)closed
{
  closedCopy = closed;
  [(AF2SyncClient *)self _destroyFairPlayContext];
  currentMessageLink = self->_currentMessageLink;

  if (currentMessageLink == closedCopy)
  {
    self->_currentMessageLink = 0;
  }
}

- (void)messageLinkWasInitialized:(id)initialized
{
  initializedCopy = initialized;
  if (![initializedCopy endpointType])
  {
    v4 = [(AF2SyncClient *)self _initiateKeybagRequestOnMessageLink:initializedCopy];
  }
}

- (void)messageLinkWasOpened:(id)opened
{
  openedCopy = opened;
  [openedCopy addRequestHandler:self forDataClass:@"AirFair2"];
  currentMessageLink = self->_currentMessageLink;
  self->_currentMessageLink = openedCopy;
}

- (void)dealloc
{
  [(AF2SyncClient *)self _destroyFairPlayContext];
  [(AF2SyncClient *)self _destroyProvisioningContext];
  [(LSApplicationWorkspace *)self->_applicationWorkspace removeObserver:self];
  v3.receiver = self;
  v3.super_class = AF2SyncClient;
  [(AF2SyncClient *)&v3 dealloc];
}

- (AF2SyncClient)init
{
  v12.receiver = self;
  v12.super_class = AF2SyncClient;
  v2 = [(AF2SyncClient *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 2);
    *(v2 + 8) = 0u;

    v3->_lastAccountChangeCheckTime = 0.0;
    v5 = +[ICMusicSubscriptionFairPlayController sharedController];
    subscriptionFairPlayController = v3->_subscriptionFairPlayController;
    v3->_subscriptionFairPlayController = v5;

    v7 = +[ICMusicSubscriptionStatusController sharedStatusController];
    subscriptionStatusController = v3->_subscriptionStatusController;
    v3->_subscriptionStatusController = v7;

    v9 = +[NSNotificationCenter defaultCenter];
    notificationCenter = v3->_notificationCenter;
    v3->_notificationCenter = v9;

    [(NSNotificationCenter *)v3->_notificationCenter addObserver:v3 selector:"_handleAirTrafficStartedEvent:" name:ATStartupCompleteNotification object:0];
    [(NSNotificationCenter *)v3->_notificationCenter addObserver:v3 selector:"_handleDeferredAccountChangeCheckEvent:" name:@"kAF2DeferredAccountChangeCheckTimerEvent" object:0];
  }

  return v3;
}

@end