@interface AF2SyncClient
- (AF2SyncClient)init;
- (BOOL)_hasValidOfflineKeyWithAccountID:(unint64_t)a3;
- (DeviceKeyTypeSupport)_getDeviceKeyTypeSupportInfo;
- (double)_getSubscriptionStatusRefreshInterval;
- (id)_endProvisioningWithPtm:(id)a3 tk:(id)a4;
- (id)_eraseProvisioning;
- (id)_generateClientInfoWithMachineID:(id)a3 hostInfoData:(id)a4 clientData:(id *)a5;
- (id)_generateKeybagRequest:(id *)a3;
- (id)_getApplicationAccountIds;
- (id)_getDeviceCertificate:(id *)a3;
- (id)_getHWInfoString;
- (id)_getKeybagAccountIds;
- (id)_getMediaAccountIds;
- (id)_hostSyncPrepareKeybagResponseForRequest:(id)a3 withDeviceCertificate:(id)a4 hwInfoString:(id)a5 deviceType:(unsigned int)a6 supportVersion:(unsigned int)a7 requestedDSIDs:(id)a8 keyBagResponseData:(id *)a9;
- (id)_importKeybag:(id)a3;
- (id)_importSubsBag:(id)a3;
- (id)_initiateBeginKeybagSyncOnMessageLink:(id)a3;
- (id)_initiateKeybagRequestOnMessageLink:(id)a3;
- (id)_provisionDeviceWithData:(id)a3 clientData:(id *)a4;
- (id)_syncDeviceProvisioningWithSim:(id)a3 srm:(id *)a4;
- (unsigned)_fairPlayContext;
- (void)_checkForNewAccountIds;
- (void)_destroyFairPlayContext;
- (void)_destroyProvisioningContext;
- (void)_getMid:(id *)a3 otp:(id *)a4;
- (void)_handleAirTrafficStartedEvent:(id)a3;
- (void)_handleBeginKeybagSyncRequest:(id)a3 onMessageLink:(id)a4;
- (void)_handleKeybagRequest:(id)a3 onMessageLink:(id)a4;
- (void)_handleProvisioningRequest:(id)a3 onMessageLink:(id)a4;
- (void)_handleSubscriptionClientInfoRequest:(id)a3 onMessageLink:(id)a4;
- (void)_handleSubscriptionImportSubsBagRequest:(id)a3 onMessageLink:(id)a4;
- (void)_initiateKeybagSyncWithPriority:(int)a3;
- (void)_processKeybagResponse:(id)a3 onMessageLink:(id)a4;
- (void)applicationsDidInstall:(id)a3;
- (void)dealloc;
- (void)messageLink:(id)a3 didReceiveRequest:(id)a4;
- (void)messageLinkWasClosed:(id)a3;
- (void)messageLinkWasInitialized:(id)a3;
- (void)messageLinkWasOpened:(id)a3;
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

- (id)_importSubsBag:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(AF2SyncClient *)self _fairPlayContext];
    [v4 bytes];
    [v4 length];
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

- (BOOL)_hasValidOfflineKeyWithAccountID:(unint64_t)a3
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

- (id)_generateClientInfoWithMachineID:(id)a3 hostInfoData:(id)a4 clientData:(id *)a5
{
  v25 = 0;
  v24 = 0;
  v8 = a4;
  v9 = a3;
  v10 = [(AF2SyncClient *)self _fairPlayContext];
  v11 = [v9 bytes];
  v12 = [v9 length];

  v13 = [v8 bytes];
  v14 = [v8 length];

  sub_6C824(v10, v11, v12, v13, v14, &v25, &v24);
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
      *a5 = v17 = 0;
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
  v5 = [v4 allObjects];

  return v5;
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

  v5 = [v4 allObjects];

  return v5;
}

- (id)_getKeybagAccountIds
{
  v3 = [(AF2SyncClient *)self _getApplicationAccountIds];
  v4 = [v3 mutableCopy];

  v5 = [(AF2SyncClient *)self _getMediaAccountIds];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (([v4 containsObject:v10] & 1) == 0)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_initiateKeybagSyncWithPriority:(int)a3
{
  v3 = *&a3;
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
    v7 = [(ATConcreteMessageLink *)currentMessageLink endpointType];
    v8 = self->_currentMessageLink;
    if (v7)
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
      v7 = [(AF2SyncClient *)self _getKeybagAccountIds];
      currentSyncedAccountIds = self->_currentSyncedAccountIds;
      if (!currentSyncedAccountIds || ![(NSArray *)currentSyncedAccountIds isEqualToArray:v7])
      {
        v9 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543362;
          v11 = v7;
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

- (id)_hostSyncPrepareKeybagResponseForRequest:(id)a3 withDeviceCertificate:(id)a4 hwInfoString:(id)a5 deviceType:(unsigned int)a6 supportVersion:(unsigned int)a7 requestedDSIDs:(id)a8 keyBagResponseData:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
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

  v57[0] = a6;
  v57[1] = a7;
  v56 = 0;
  v23 = [(AF2SyncClient *)self _fairPlayContext];
  v24 = v16;
  sub_7C068(v23, [v16 bytes], objc_msgSend(v16, "length"), v71, v57);
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
    v29 = v15;
    [v15 bytes];
    [v15 length];
    sub_37DD0(v56);
    *(v59 + 6) = v30;
    if (!v30)
    {
      if (v18)
      {
        v35 = [v18 mutableCopy];
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

      v38 = [(AF2SyncClient *)self _getKeybagAccountIds];
      [v26 addObjectsFromArray:v38];
      v49 = v38;
      v39 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v48 = [v18 count];
        v40 = [v38 count];
        *buf = 134218754;
        *&buf[4] = v48;
        v65 = 2112;
        v66 = v18;
        v67 = 2048;
        v68 = v40;
        v69 = 2112;
        v70 = v38;
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
    if (!a9)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v21 = 0;
    if (!a9)
    {
      goto LABEL_21;
    }
  }

  if (!v21)
  {
    v33 = v22;
    v21 = 0;
    *a9 = v22;
  }

LABEL_21:
  _Block_object_dispose(&v58, 8);

  return v21;
}

- (id)_importKeybag:(id)a3
{
  v4 = a3;
  if ([v4 length] && (-[AF2SyncClient _fairPlayContext](self, "_fairPlayContext"), objc_msgSend(v4, "bytes"), objc_msgSend(v4, "length"), sub_2C9A0(), v5))
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

- (id)_generateKeybagRequest:(id *)a3
{
  v5 = +[SSAccountStore defaultStore];
  v6 = [v5 activeLockerAccount];
  v7 = [v6 uniqueIdentifier];
  v8 = [v7 unsignedLongLongValue];

  v15 = 0;
  v14 = 0;
  sub_42668([(AF2SyncClient *)self _fairPlayContext], v8, 110103, 7, &v15, &v14);
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
    *a3 = [NSData dataWithBytes:v15 length:v14];
    sub_23160(v15);
    v12 = 0;
  }

  return v12;
}

- (id)_getDeviceCertificate:(id *)a3
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
    *a3 = v7;
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

- (id)_syncDeviceProvisioningWithSim:(id)a3 srm:(id *)a4
{
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v5 = a3;
  v6 = [v5 bytes];
  v7 = [v5 length];

  sub_87CF8(-1, v6, v7, &v16, &v15, &v14, &v13);
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
    *a4 = v11 = 0;
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

- (id)_endProvisioningWithPtm:(id)a3 tk:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = a3;
  [v8 bytes];
  [v8 length];

  [v7 bytes];
  [v7 length];

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

- (id)_provisionDeviceWithData:(id)a3 clientData:(id *)a4
{
  v15 = 0;
  v14 = 0;
  v6 = a3;
  [(AF2SyncClient *)self _destroyProvisioningContext];
  v7 = [v6 bytes];
  v8 = [v6 length];

  sub_A25B8(-1, v7, v8, &v15, &v14, &self->_provisioningContextId);
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
    *a4 = v12 = 0;
  }

  if (v15)
  {
    sub_9EA70(v15);
  }

  return v12;
}

- (void)_getMid:(id *)a3 otp:(id *)a4
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
    *a3 = 0;
  }

  else
  {
    *a3 = [NSData dataWithBytes:v12 length:HIDWORD(v10)];
    v9 = [NSData dataWithBytes:v11 length:v10];
  }

  *a4 = v9;
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

- (void)_handleProvisioningRequest:(id)a3 onMessageLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 parameters];
  v9 = [v8 objectForKey:@"provisioningAction"];
  if ([v9 isEqualToString:@"syncProvisioning"])
  {
    v10 = +[NSMutableDictionary dictionary];
    v11 = [v8 objectForKey:@"sim"];
    v25 = 0;
    v12 = [(AF2SyncClient *)self _syncDeviceProvisioningWithSim:v11 srm:&v25];
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
    v16 = [(AF2SyncClient *)self _getHWInfoString];
    v10 = +[NSMutableDictionary dictionary];
    v17 = [v8 objectForKey:@"spim"];
    v22 = 0;
    v12 = [(AF2SyncClient *)self _provisionDeviceWithData:v17 clientData:&v22];
    v18 = v22;

    if (v18)
    {
      [v10 setObject:v18 forKey:@"cpim"];
    }

    if (v16)
    {
      [v10 setObject:v16 forKey:@"clientHWInfoString"];
    }
  }

  else
  {
    if ([v9 isEqualToString:@"endProvisioning"])
    {
      v19 = [v8 objectForKey:@"ptm"];
      v20 = [v8 objectForKey:@"tk"];
      v12 = [(AF2SyncClient *)self _endProvisioningWithPtm:v19 tk:v20];
    }

    else
    {
      if (![v9 isEqualToString:@"eraseProvisioning"])
      {
        v10 = 0;
        v12 = 0;
        goto LABEL_19;
      }

      v12 = [(AF2SyncClient *)self _eraseProvisioning];
    }

    v10 = 0;
  }

LABEL_19:
  v21 = [v6 responseWithError:v12 parameters:v10];
  [v7 sendResponse:v21 withCompletion:0];
}

- (void)_handleSubscriptionImportSubsBagRequest:(id)a3 onMessageLink:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 parameters];
  v9 = [v8 objectForKey:@"SubsBagData"];
  v11 = [(AF2SyncClient *)self _importSubsBag:v9];
  v10 = [v7 responseWithError:v11 parameters:0];

  [v6 sendResponse:v10 withCompletion:0];
}

- (void)_handleSubscriptionClientInfoRequest:(id)a3 onMessageLink:(id)a4
{
  v21 = a4;
  v6 = a3;
  v7 = [v6 parameters];
  v8 = [v7 objectForKey:@"hostInfoData"];
  v9 = [(AF2SyncClient *)self _getHWInfoString];
  v10 = [v7 objectForKey:@"accountId"];
  v19 = [v10 unsignedLongLongValue];

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
  if (v9)
  {
    [v14 setObject:v9 forKey:@"clientHWInfoString"];
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

  v17 = [NSNumber numberWithBool:[(AF2SyncClient *)self _hasValidOfflineKeyWithAccountID:v19]];
  [v14 setObject:v17 forKey:@"clientState"];

  v18 = [v6 responseWithError:v20 parameters:v14];

  [v21 sendResponse:v18 withCompletion:&stru_E35F8];
}

- (void)_processKeybagResponse:(id)a3 onMessageLink:(id)a4
{
  v5 = a3;
  v6 = [v5 error];

  if (!v6)
  {
    v9 = [v5 parameters];
    v7 = [v9 objectForKey:@"KeybagData"];

    v8 = [(AF2SyncClient *)self _importKeybag:v7];
    v10 = _ATLogCategorySyncBundle();
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v16 = 138543362;
        v17 = v8;
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
    v8 = [v5 error];
    v16 = 138543362;
    v17 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "host failed to process keybag request. err=%{public}@", &v16, 0xCu);
LABEL_11:
  }
}

- (void)_handleKeybagRequest:(id)a3 onMessageLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v6 parameters];
  v10 = [v9 objectForKey:@"DeviceCert"];
  v11 = [v9 objectForKey:@"KeybagData"];
  v12 = [v9 objectForKey:@"KeybagSig"];
  v32 = [v9 objectForKey:@"HWInfoString"];
  v13 = [v9 objectForKey:@"KeyTypeDeviceType"];
  v14 = [v13 intValue];

  v15 = [v9 objectForKey:@"KeyTypeVersion"];
  v16 = [v15 intValue];

  [v9 objectForKey:@"AccountDSIDs"];
  v31 = v30 = v7;
  v17 = [v7 signatureProvider];
  v18 = v17;
  v29 = v12;
  if (v17)
  {
    v19 = [v17 verifySignature:v12 forData:v11];
    if (v19)
    {
      v20 = v19;
      v21 = _ATLogCategorySyncBundle();
      v22 = self;
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
  v20 = [(AF2SyncClient *)self _hostSyncPrepareKeybagResponseForRequest:v11 withDeviceCertificate:v10 hwInfoString:v32 deviceType:v14 supportVersion:v16 requestedDSIDs:v31 keyBagResponseData:&v34];
  v23 = v34;
  if (v20)
  {
    v21 = _ATLogCategorySyncBundle();
    v22 = self;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v36 = v20;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "failed to prepare keybag response data. err=%{public}@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v22 = self;
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
  v33[4] = v22;
  [v30 sendResponse:v28 withCompletion:v33];
}

- (id)_initiateKeybagRequestOnMessageLink:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v24 = 0;
  v6 = [(AF2SyncClient *)self _getDeviceCertificate:&v24];
  v7 = v24;
  if (v6)
  {
    goto LABEL_14;
  }

  [v5 setObject:v7 forKey:@"DeviceCert"];
  v8 = [(AF2SyncClient *)self _getHWInfoString];
  v9 = [(AF2SyncClient *)self _getDeviceKeyTypeSupportInfo];
  v10 = HIDWORD(*&v9);
  [v5 setObject:v8 forKey:@"HWInfoString"];
  v11 = [NSNumber numberWithUnsignedInt:v9];
  [v5 setObject:v11 forKey:@"KeyTypeDeviceType"];

  v12 = [NSNumber numberWithUnsignedInt:v10];
  [v5 setObject:v12 forKey:@"KeyTypeVersion"];

  v13 = [(AF2SyncClient *)self _getKeybagAccountIds];
  [v5 setObject:v13 forKey:@"AccountDSIDs"];
  v23 = 0;
  v6 = [(AF2SyncClient *)self _generateKeybagRequest:&v23];
  v14 = v23;
  if (!v6)
  {
    v15 = [v4 signatureProvider];
    v16 = v15;
    if (v15)
    {
      v22 = 0;
      v6 = [v15 createSignature:&v22 forData:v14];
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
    v21 = v4;
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

- (void)_handleBeginKeybagSyncRequest:(id)a3 onMessageLink:(id)a4
{
  v8 = a4;
  v6 = [a3 responseWithError:0 parameters:0];
  [v8 sendResponse:v6 withCompletion:0];

  v7 = [(AF2SyncClient *)self _initiateKeybagRequestOnMessageLink:v8];
}

- (id)_initiateBeginKeybagSyncOnMessageLink:(id)a3
{
  v3 = a3;
  v4 = [[ATRequest alloc] initWithCommand:@"BeginKeybagSync" dataClass:@"AirFair2" parameters:0];
  [v3 sendRequest:v4 withCompletion:&stru_E3568];

  return 0;
}

- (void)_handleAirTrafficStartedEvent:(id)a3
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

- (void)applicationsDidInstall:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v17 = self;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        buf[0] = 0;
        v11 = [v10 bundleURL];
        v12 = [v11 path];
        v13 = [v12 stringByAppendingPathComponent:@"Watch"];

        v14 = +[NSFileManager defaultManager];
        v15 = [v14 fileExistsAtPath:v13 isDirectory:buf];
        LOBYTE(v12) = v15 & buf[0];

        v7 |= v12;
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

      [(AF2SyncClient *)v17 _initiateKeybagSyncWithPriority:0];
    }
  }
}

- (void)messageLink:(id)a3 didReceiveRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 command];
  v9 = [v8 isEqualToString:@"SyncKeybag"];

  if (v9)
  {
    [(AF2SyncClient *)self _handleKeybagRequest:v7 onMessageLink:v6];
  }

  else
  {
    v10 = [v7 command];
    v11 = [v10 isEqualToString:@"GetClientInfo"];

    if (v11)
    {
      [(AF2SyncClient *)self _handleSubscriptionClientInfoRequest:v7 onMessageLink:v6];
    }

    else
    {
      v12 = [v7 command];
      v13 = [v12 isEqualToString:@"ImportSubsBag"];

      if (v13)
      {
        [(AF2SyncClient *)self _handleSubscriptionImportSubsBagRequest:v7 onMessageLink:v6];
      }

      else
      {
        v14 = [v7 command];
        v15 = [v14 isEqualToString:@"ProvisionAction"];

        if (v15)
        {
          [(AF2SyncClient *)self _handleProvisioningRequest:v7 onMessageLink:v6];
        }

        else
        {
          v16 = [v7 command];
          v17 = [v16 isEqualToString:@"BeginKeybagSync"];

          if (v17)
          {
            [(AF2SyncClient *)self _handleBeginKeybagSyncRequest:v7 onMessageLink:v6];
          }

          else
          {
            v18 = _ATLogCategorySyncBundle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v7 command];
              v22 = 138543362;
              v23 = v19;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "received unknown request %{public}@", &v22, 0xCu);
            }

            v20 = [NSError errorWithDomain:@"ATError" code:23 userInfo:0];
            v21 = [v7 responseWithError:v20 parameters:0];
            [v6 sendResponse:v21 withCompletion:0];
          }
        }
      }
    }
  }
}

- (void)messageLinkWasClosed:(id)a3
{
  v4 = a3;
  [(AF2SyncClient *)self _destroyFairPlayContext];
  currentMessageLink = self->_currentMessageLink;

  if (currentMessageLink == v4)
  {
    self->_currentMessageLink = 0;
  }
}

- (void)messageLinkWasInitialized:(id)a3
{
  v5 = a3;
  if (![v5 endpointType])
  {
    v4 = [(AF2SyncClient *)self _initiateKeybagRequestOnMessageLink:v5];
  }
}

- (void)messageLinkWasOpened:(id)a3
{
  v4 = a3;
  [v4 addRequestHandler:self forDataClass:@"AirFair2"];
  currentMessageLink = self->_currentMessageLink;
  self->_currentMessageLink = v4;
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