@interface VVService
+ (__CTServerConnection)CTServerConnection;
+ (id)accountDictionaryForURL:(id)a3;
+ (id)serviceWithLabel:(id)a3 accountIdentifier:(id)a4 phoneNumber:(id)a5 name:(id)a6 isoCountryCode:(id)a7 countryCode:(id)a8 networkCode:(id)a9 contextInfo:(id)a10 telephonyClient:(id)a11 stateRequestController:(id)a12 newAccount:(BOOL)a13;
+ (unsigned)_voicemailPowerAssertion;
+ (void)_acquireAssertionsForInsomniaState:(BOOL)a3;
+ (void)_setInsomniaStateSupressed:(BOOL)a3;
+ (void)obtainInsomniaAssertion;
+ (void)releaseInsomniaAssertion;
- (BOOL)_isOfflineDueToRoamingWithDataStatusDict:(__CFDictionary *)a3;
- (BOOL)doTrashCompaction:(id)a3;
- (BOOL)ignoresRoamingSwitch;
- (BOOL)isCellularNetworkAvailable;
- (BOOL)isDelayedRetryScheduledGuarded;
- (BOOL)isMailboxUsageUpdated;
- (BOOL)isOfflineDueToRoaming;
- (BOOL)isPasswordReady;
- (BOOL)isSMSReady;
- (BOOL)isWiFiNetworkAvailable;
- (BOOL)isWiFiNetworkReachable;
- (BOOL)isWiFiNetworkSupported;
- (BOOL)lastUsedConnectionTypeWasCellular;
- (BOOL)shouldImmediatelyRetrySyncOverCellular;
- (BOOL)shouldTrashCompactRecord:(id)a3 record:(void *)a4;
- (BOOL)supportsDetachedStorage;
- (Class)notificationInterpreterClass;
- (NSMutableDictionary)stateRequestAttemptCount;
- (NSString)smscAddress;
- (VVService)initWithLabel:(id)a3 accountIdentifier:(id)a4 phoneNumber:(id)a5 isoCountryCode:(id)a6 countryCode:(id)a7 networkCode:(id)a8 contextInfo:(id)a9 telephonyClient:(id)a10 stateRequestController:(id)a11 newAccount:(BOOL)a12;
- (__CFString)dataConnectionServiceTypeOverride;
- (double)getTrashCompactionAge;
- (double)trashCompactionAge;
- (id)automatedTrashActivityIdentifier;
- (id)carrierParameterValueForKey:(id)a3;
- (id)delayedRetryActivityIdentifier;
- (id)fallbackActivityIdentifier;
- (id)passwordIgnoringSubscription:(BOOL)a3;
- (id)provisionalPassword;
- (id)retryIntervals;
- (int64_t)attemptCountForStateRequest:(id)a3;
- (unint64_t)getMailboxUsageCache;
- (unint64_t)trashedCount;
- (unint64_t)unreadCount;
- (void)_attemptDelayedSynchronize;
- (void)_attemptScheduledTrashCompaction:(id)a3;
- (void)_callStatusChanged;
- (void)_cancelAutomatedTrashCompaction;
- (void)_cancelIndicatorAction;
- (void)_carrierBundleChanged;
- (void)_deliverFallbackNotification;
- (void)_enterFallbackMode;
- (void)_reactToIndicator;
- (void)_scheduleAutomatedTrashCompaction;
- (void)_scheduleFallbackActivityIfNecessary;
- (void)_setOnline:(BOOL)a3 fallbackMode:(BOOL)a4;
- (void)_updateOnlineStatus;
- (void)cancelDelayedSynchronize:(id)a3;
- (void)cancelNotificationFallback;
- (void)cancelPasswordRequest;
- (void)clearRemoteUIDsForDetachedMessages;
- (void)dealloc;
- (void)displayPasswordRequestIfNecessary;
- (void)handleAirplaneModeChanged:(BOOL)a3;
- (void)handleCallStatusDisconnected:(id)a3;
- (void)handleVVServiceDataAvailableNotification:(id)a3;
- (void)handleVoicemailInfoUpdate:(id)a3;
- (void)incrementAttemptCountForStateRequest:(id)a3;
- (void)kill;
- (void)performAtomicAccessorBlock:(id)a3;
- (void)performSynchronousBlock:(id)a3;
- (void)progressiveDataLengthsForRecord:(void *)a3 expected:(unsigned int *)a4 current:(unsigned int *)a5;
- (void)removeAttemptCountForStateRequest:(id)a3;
- (void)removeServiceInformation;
- (void)reportError:(id)a3;
- (void)reportFailedToSyncOverWifi;
- (void)reportSucessfulSync;
- (void)resetCounts;
- (void)resetDelayedSynchronizationAttemptCount;
- (void)scheduleDelayedSynchronize;
- (void)scheduleImmediateSynchronizeRetryOverCellular;
- (void)setCellularNetworkAvailable:(BOOL)a3;
- (void)setDelayedRetryImmediate:(BOOL)a3;
- (void)setDelayedRetryScheduled:(BOOL)a3;
- (void)setGreetingType:(int64_t)a3 data:(id)a4 duration:(unint64_t)a5;
- (void)setLastUsedConnectionType:(__CFString *)a3;
- (void)setMailboxRequiresSetup:(BOOL)a3;
- (void)setMailboxUsageCache:(unint64_t)a3;
- (void)setMailboxUsageUpdated:(BOOL)a3;
- (void)setMessageWaiting:(BOOL)a3;
- (void)setPassword:(id)a3;
- (void)setProvisionalPassword:(id)a3;
- (void)setSMSReady:(BOOL)a3;
- (void)setSmscAddress:(id)a3;
- (void)setSubscribed:(BOOL)a3;
- (void)setTrashCompactionAge:(double)a3;
- (void)setTrashedCount:(unint64_t)a3;
- (void)setUnreadCount:(unint64_t)a3;
- (void)setWiFiNetworkSupported:(BOOL)a3;
- (void)start;
- (void)stateChanged:(id)a3;
- (void)updateCountsForChangedFlags:(unsigned int)a3 currentRecordFlags:(unsigned int)a4;
@end

@implementation VVService

- (double)trashCompactionAge
{
  [(NSRecursiveLock *)self->_lock lock];
  [(VVService *)self getTrashCompactionAge];
  if (v3 < 0.0)
  {
    v4 = [(VVService *)self mailboxUsage];
    v5 = v4;
    v6 = 3;
    while (1)
    {
      v7 = (&unk_1000C91D8 + 16 * v6);
      if (*v7 <= v4)
      {
        break;
      }

      if (--v6 == -1)
      {
        v8 = 1.79769313e308;
        goto LABEL_7;
      }
    }

    v8 = v7[1];
LABEL_7:
    [(VVService *)self setTrashCompactionAge:v8];
    v9 = sub_100002674();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = [(VVService *)self getServiceObjLogPrefix];
      v13 = 2080;
      v14 = " ";
      v15 = 1024;
      v16 = (v8 / 86400.0);
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sTRASH: Trash compactor configured for %d days, given mailbox usage of %d", &v11, 0x22u);
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
  [(VVService *)self getTrashCompactionAge];
  return result;
}

- (BOOL)shouldTrashCompactRecord:(id)a3 record:(void *)a4
{
  v6 = a3;
  v7 = sub_100092B0C(v6, a4);
  if ((v7 & 0x4C) != 8)
  {
    v17 = v7;
    v13 = sub_100002674();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v22 = 136315650;
    v23 = [(VVService *)self getServiceObjLogPrefix];
    v24 = 2080;
    v25 = " ";
    v26 = 2048;
    *&v27 = v17;
    v18 = "#I %s%sCOMPACTION: shouldCompactTrashRecord = no, since flags = %lu";
    v19 = v13;
    v20 = 32;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, &v22, v20);
    goto LABEL_15;
  }

  [(VVService *)self trashCompactionAge];
  v9 = v8;
  if (v8 >= 1.79769313e308)
  {
    v13 = sub_100002674();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v22 = 136315394;
    v23 = [(VVService *)self getServiceObjLogPrefix];
    v24 = 2080;
    v25 = " ";
    v18 = "#I %s%sCOMPACTION: shouldCompactTrashRecord = no, since compactionAge >= DBL_MAX";
    v19 = v13;
    v20 = 22;
    goto LABEL_14;
  }

  v10 = sub_1000928B0(v6, a4);
  v11 = v10;
  Current = CFAbsoluteTimeGetCurrent();
  v13 = sub_100002674();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v10 || (v15 = Current - v11, Current - v11 < v9))
  {
    if (v14)
    {
      v22 = 136316162;
      v23 = [(VVService *)self getServiceObjLogPrefix];
      v24 = 2080;
      v25 = " ";
      v26 = 2048;
      v27 = Current;
      v28 = 2048;
      v29 = v10;
      v30 = 2048;
      v31 = v9;
      v18 = "#I %s%sCOMPACTION: shouldCompactTrashRecord = no, since current time (%f) minus trashed date (%f) < compactionAge (%f)";
      v19 = v13;
      v20 = 52;
      goto LABEL_14;
    }

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  if (v14)
  {
    v22 = 136316162;
    v23 = [(VVService *)self getServiceObjLogPrefix];
    v24 = 2080;
    v25 = " ";
    v26 = 2048;
    v27 = Current;
    v28 = 2048;
    v29 = v10;
    v30 = 2048;
    v31 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sCOMPACTION: shouldCompactTrashRecord = yes, since current time (%f) minus trashed date (%f) >= compactionAge (%f)", &v22, 0x34u);
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (BOOL)doTrashCompaction:(id)a3
{
  v4 = a3;
  v5 = sub_1000931D0(v4, 8, 68);
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    CFRelease(v6);
LABEL_17:
    v20 = 0;
    goto LABEL_18;
  }

  v8 = Count;
  v9 = 0;
  for (i = 0; i != v8; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
    if ([(VVService *)self shouldTrashCompactRecord:v4 record:ValueAtIndex])
    {
      v12 = sub_100092B0C(v4, ValueAtIndex);
      if (([(VVService *)self supportsDetachedStorage]& ((v12 & 2) >> 1)) != 0)
      {
        v13 = 64;
      }

      else
      {
        v13 = 4;
      }

      sub_100092B54(v4, ValueAtIndex, v13);
      v14 = VMStoreRecordCopyDescription(ValueAtIndex);
      v15 = sub_100002674();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(VVService *)self getServiceObjLogPrefix];
        v17 = sub_10009278C(v4, ValueAtIndex);
        Current = CFAbsoluteTimeGetCurrent();
        v19 = sub_1000928B0(v4, ValueAtIndex);
        *buf = 136316162;
        v23 = v16;
        v24 = 2080;
        v25 = " ";
        v26 = 1024;
        v27 = v17;
        v28 = 2112;
        v29 = v14;
        v30 = 1024;
        v31 = ((Current - v19) / 86400.0);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sTRASH: UID %u record %@ being deleted by trash compactor (it is %d days old)", buf, 0x2Cu);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      v9 = 1;
    }
  }

  CFRelease(v6);
  if ((v9 & 1) == 0)
  {
    goto LABEL_17;
  }

  [v4 save];
  v20 = 1;
LABEL_18:

  return v20;
}

- (void)_carrierBundleChanged
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = [(VVService *)self getServiceObjLogPrefix];
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sResetting cached carrier parameters", &v5, 0x16u);
  }

  carrierParameters = self->_carrierParameters;
  self->_carrierParameters = 0;

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_callStatusChanged
{
  v3 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004A60C;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

+ (id)serviceWithLabel:(id)a3 accountIdentifier:(id)a4 phoneNumber:(id)a5 name:(id)a6 isoCountryCode:(id)a7 countryCode:(id)a8 networkCode:(id)a9 contextInfo:(id)a10 telephonyClient:(id)a11 stateRequestController:(id)a12 newAccount:(BOOL)a13
{
  HIDWORD(v29) = a13;
  v30 = a3;
  v31 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = vm_vmd_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v33 = v19;
    v34 = 2112;
    v35 = v23;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Creating a new service with name: %@, subscription %@", buf, 0x16u);
  }

  if (v19 && [v19 isEqualToString:@"IMAP"])
  {
    LOBYTE(v29) = BYTE4(v29);
    v27 = [[IMAPService alloc] initWithLabel:v30 accountIdentifier:v31 phoneNumber:v18 isoCountryCode:v20 countryCode:v21 networkCode:v22 contextInfo:v23 telephonyClient:v24 stateRequestController:v25 newAccount:v29];
    [(VVService *)v27 start];
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (VVService)initWithLabel:(id)a3 accountIdentifier:(id)a4 phoneNumber:(id)a5 isoCountryCode:(id)a6 countryCode:(id)a7 networkCode:(id)a8 contextInfo:(id)a9 telephonyClient:(id)a10 stateRequestController:(id)a11 newAccount:(BOOL)a12
{
  v27 = a3;
  v18 = a4;
  v22 = a5;
  v24 = a6;
  v23 = a7;
  v25 = a8;
  v19 = a9;
  v26 = a10;
  v21 = a11;
  v28.receiver = self;
  v28.super_class = VVService;
  if ([(VVService *)&v28 init])
  {
    operator new();
  }

  return 0;
}

- (void)start
{
  v3 = [(VVService *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004B430;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)dealloc
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = [(VVService *)self getServiceObjLogPrefix];
    v11 = 2080;
    v12 = " ";
    v13 = 2112;
    v14 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sDeallocating service %@", buf, 0x20u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5 = +[VVMSharedNetworkObserver sharedInstance];
  [v5 removeDelegate:self];

  fPreferencesObserver = self->fPreferencesObserver;
  if (fPreferencesObserver)
  {
    [(VVMSharedPreferencesObserver *)fPreferencesObserver removeDelegate:self];
  }

  fStatusCallObserver = self->fStatusCallObserver;
  if (fStatusCallObserver)
  {
    [(VVMSharedCallStatusObserver *)fStatusCallObserver removeDelegate:self];
  }

  [(VVService *)self cancelDelayedSynchronize:@"Dealloc"];
  [(VVService *)self cancelPasswordRequest];
  [(VVService *)self cancelNotificationFallback];
  [(VVService *)self cancelAutomatedTrashCompaction];
  VMStoreDestroy();
  v8.receiver = self;
  v8.super_class = VVService;
  [(VVService *)&v8 dealloc];
}

+ (__CTServerConnection)CTServerConnection
{
  if (qword_10010D930 != -1)
  {
    sub_10009D0FC();
  }

  return qword_10010D928;
}

- (void)setSubscribed:(BOOL)a3
{
  v3 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  serviceFlags = self->_serviceFlags;
  if (((((serviceFlags & 2) == 0) ^ v3) & 1) == 0)
  {
    if (v3)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    *&self->_serviceFlags = serviceFlags & 0xFD | v7;
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VVService *)self getServiceObjLogPrefix];
      v10 = [(VVService *)self contextInfo];
      v11 = v10;
      v12 = @"NOT SUBSCRIBED";
      *buf = 136315906;
      v24 = v9;
      v25 = 2080;
      v26 = " ";
      if (v3)
      {
        v12 = @"SUBSCRIBED";
      }

      v27 = 2112;
      v28 = v12;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sVisual Voicemail Subscription State is now %@, subscription %@", buf, 0x2Au);
    }

    if (v3)
    {
      passwordError = self->_passwordError;
      self->_passwordError = 0;

      [objc_opt_class() _setInsomniaStateSupressed:0];
      [(VVService *)self resetCounts];
      [(VVService *)self _updateOnlineStatus];
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"VoicemailSetupRequired", kVVDefaultsDomain, 0);
      *&self->_serviceFlags = *&self->_serviceFlags & 0xE3 | (16 * (AppBooleanValue & 1)) | (8 * (AppBooleanValue & 1)) | (4 * (AppBooleanValue & 1));
      [v5 addObserver:self selector:"handleVVServiceDataAvailableNotification:" name:@"VVServiceDataAvailableNotification" object:0];
    }

    else
    {
      [objc_opt_class() _setInsomniaStateSupressed:1];
      v15 = [(VVService *)self serialDispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004BB14;
      block[3] = &unk_1000EDEC8;
      block[4] = self;
      dispatch_async(v15, block);

      [(VVService *)self cancelAutomatedTrashCompaction];
    }
  }

  v16 = dispatch_get_current_queue();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10004BB58;
  v18[3] = &unk_1000EDFC8;
  v19 = v5;
  v20 = self;
  v21 = v3;
  v17 = v5;
  dispatch_async(v16, v18);
}

- (void)kill
{
  v3 = [(VVService *)self serialDispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004BD64;
  block[3] = &unk_1000EDEC8;
  block[4] = self;
  dispatch_async(v3, block);

  [(VVService *)self cancelAutomatedTrashCompaction];
  [(VVService *)self cancelNotificationFallback];
}

- (void)setMailboxRequiresSetup:(BOOL)a3
{
  v3 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  serviceFlags = self->_serviceFlags;
  if ((((serviceFlags & 4) == 0) ^ v3))
  {
    lock = self->_lock;

    [(NSRecursiveLock *)lock unlock];
  }

  else
  {
    if (v3)
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_serviceFlags = serviceFlags & 0xFB | v7;
    [(NSRecursiveLock *)self->_lock unlock];
    v8 = objc_opt_class();
    if (v3)
    {
      [v8 _setInsomniaStateSupressed:1];
      [(VVService *)self cancelNotificationFallback];
    }

    else
    {
      [v8 _setInsomniaStateSupressed:0];
      [(VVService *)self setProvisionalPassword:0];
      [(VVService *)self _scheduleFallbackActivityIfNecessary];
    }

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"VVServiceSetupRequirementChangedNotification" object:self];
  }
}

- (void)updateCountsForChangedFlags:(unsigned int)a3 currentRecordFlags:(unsigned int)a4
{
  if ([(VVService *)self isOnline])
  {
    v7 = 0;
  }

  else
  {
    v7 = 2;
  }

  v8 = VMStoreRecordCopyFlagsDescription(a3);
  v9 = VMStoreRecordCopyFlagsDescription(a4);
  v10 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 136316162;
    *&v21[4] = [(VVService *)self getServiceObjLogPrefix];
    *&v21[12] = 2080;
    *&v21[14] = " ";
    *&v21[22] = 2112;
    v22 = objc_opt_class();
    *v23 = 2112;
    *&v23[2] = v8;
    *&v23[10] = 2112;
    *&v23[12] = v9;
    v11 = v22;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling <updateCountsForChangedFlags>, changedFlags=%@, currentFlags=%@", v21, 0x34u);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (((v7 | 0xD) & a3) != 0)
  {
    v12 = a4 ^ a3;
    v13 = (v7 | 5) & a4;
    if ((v13 == v7) == (((v7 | 5) & v12) != v7))
    {
      v14 = v13 == v7;
      v15 = [(VVService *)self unreadCount:*v21];
      if (v14)
      {
        v16 = v15 + 1;
      }

      else
      {
        v16 = v15 - 1;
      }

      [(VVService *)self setUnreadCount:v16];
    }

    v17 = (v7 | 0xC) & a4;
    if ((v17 == (v7 | 8)) == (((v7 | 0xC) & v12) != (v7 | 8)))
    {
      v18 = v17 == (v7 | 8);
      v19 = [(VVService *)self trashedCount];
      if (v18)
      {
        v20 = v19 + 1;
      }

      else
      {
        v20 = v19 - 1;
      }

      [(VVService *)self setTrashedCount:v20, *v21, *&v21[8], v22, *v23, *&v23[8]];
    }
  }
}

- (void)resetCounts
{
  if ([(VVService *)self isOnline])
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = [(VVService *)self serviceLabelID];
  [(VVService *)self setTrashedCount:VMStoreCountOfRecordsWithFlags(v3 | 8u, 4, v4)];

  v5 = [(VVService *)self serviceLabelID];
  [(VVService *)self setUnreadCount:VMStoreCountOfRecordsWithFlags(v3, 13, v5)];
}

- (BOOL)isCellularNetworkAvailable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004C238;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setCellularNetworkAvailable:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004C2C0;
  v3[3] = &unk_1000ED8D8;
  v3[4] = self;
  v4 = a3;
  [(VVService *)self performAtomicAccessorBlock:v3];
}

- (BOOL)isWiFiNetworkAvailable
{
  v3 = [(VVService *)self isWiFiNetworkSupported];
  if (v3)
  {

    LOBYTE(v3) = [(VVService *)self isWiFiNetworkReachable];
  }

  return v3;
}

- (BOOL)isWiFiNetworkReachable
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004C478;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (BOOL)isWiFiNetworkSupported
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004C548;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setWiFiNetworkSupported:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004C5D0;
  v3[3] = &unk_1000ED8D8;
  v3[4] = self;
  v4 = a3;
  [(VVService *)self performAtomicAccessorBlock:v3];
}

- (BOOL)isMailboxUsageUpdated
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004C7F8;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setMailboxUsageUpdated:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004C880;
  v3[3] = &unk_1000ED8D8;
  v3[4] = self;
  v4 = a3;
  [(VVService *)self performAtomicAccessorBlock:v3];
}

- (unint64_t)getMailboxUsageCache
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004C958;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setMailboxUsageCache:(unint64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004C9DC;
  v3[3] = &unk_1000EE4D8;
  v3[4] = self;
  v3[5] = a3;
  [(VVService *)self performAtomicAccessorBlock:v3];
}

- (double)getTrashCompactionAge
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004CAC0;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setTrashCompactionAge:(double)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004CB48;
  v3[3] = &unk_1000EE4D8;
  v3[4] = self;
  *&v3[5] = a3;
  [(VVService *)self performAtomicAccessorBlock:v3];
}

- (NSString)smscAddress
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10004CC6C;
  v9 = sub_10004CC7C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004CC84;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setSmscAddress:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004CD44;
  v4[3] = &unk_1000EE260;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(VVService *)v5 performAtomicAccessorBlock:v4];
}

- (BOOL)isSMSReady
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004CE0C;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setSMSReady:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004CE94;
  v3[3] = &unk_1000ED8D8;
  v3[4] = self;
  v4 = a3;
  [(VVService *)self performAtomicAccessorBlock:v3];
}

- (unint64_t)trashedCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004CF6C;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setTrashedCount:(unint64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004CFF0;
  v3[3] = &unk_1000EE4D8;
  v3[4] = self;
  v3[5] = a3;
  [(VVService *)self performAtomicAccessorBlock:v3];
}

- (unint64_t)unreadCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004D2E8;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setUnreadCount:(unint64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004D36C;
  v3[3] = &unk_1000EE4D8;
  v3[4] = self;
  v3[5] = a3;
  [(VVService *)self performAtomicAccessorBlock:v3];
}

- (void)_setOnline:(BOOL)a3 fallbackMode:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(VVService *)self isOnline];
  if (v4)
  {
    v8 = 64;
  }

  else
  {
    v8 = 0;
  }

  *&self->_serviceFlags = v8 | !v5 | *&self->_serviceFlags & 0xBE;
  if ((v5 & ~v4) != v7)
  {
    if ([(VVService *)self isSubscribed])
    {
      [(VVService *)self resetCounts];
    }

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 postNotificationName:@"VVServiceOnlineStateChangedNotification" object:self userInfo:0];
  }
}

- (BOOL)_isOfflineDueToRoamingWithDataStatusDict:(__CFDictionary *)a3
{
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, kCTRegistrationDataAttached);
    v6 = Value;
    if (Value)
    {
      v7 = CFGetTypeID(Value);
      LODWORD(v6) = v7 == CFBooleanGetTypeID() && CFEqual(v6, kCFBooleanTrue) != 0;
    }

    v9 = [(VVService *)self carrierParameterValueForKey:@"VVMIgnoresIntlDataRoaming"];

    LOBYTE(v8) = 0;
    if (v6)
    {
      if (!v9)
      {
        v8 = CFDictionaryGetValue(a3, kCTRegistrationDataIndicator);
        if (v8)
        {
          v10 = v8;
          v11 = CFGetTypeID(v8);
          if (v11 == CFStringGetTypeID() && CFStringCompare(v10, kCTRegistrationDataIndicatorNone, 0) == kCFCompareEqualTo)
          {
            v12 = CFDictionaryGetValue(a3, kCTRegistrationDataStatusInternationalRoaming);
            if (!v12 || (v13 = v12, v14 = CFGetTypeID(v12), v14 != CFBooleanGetTypeID()) || (LODWORD(v8) = CFEqual(v13, kCFBooleanFalse), v8))
            {
              LOBYTE(v8) = 1;
            }
          }

          else
          {
            LOBYTE(v8) = 0;
          }
        }
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)isOfflineDueToRoaming
{
  v3 = CTRegistrationCopyDataStatus();
  v4 = [(VVService *)self _isOfflineDueToRoamingWithDataStatusDict:v3];
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

- (void)_updateOnlineStatus
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315394;
    v23 = [(VVService *)self getServiceObjLogPrefix];
    v24 = 2080;
    v25 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdating online status", &v22, 0x16u);
  }

  v4 = [(VVService *)self isCellularNetworkAvailable];
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VVService *)self getServiceObjLogPrefix];
    v7 = @"unavailable";
    if (v4)
    {
      v7 = @"available";
    }

    v22 = 136315650;
    v23 = v6;
    v24 = 2080;
    v25 = " ";
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sService over cellular network is %@", &v22, 0x20u);
  }

  v8 = [(VVService *)self isWiFiNetworkSupported];
  v9 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(VVService *)self getServiceObjLogPrefix];
    v11 = @"unsupported";
    if (v8)
    {
      v11 = @"supported";
    }

    v22 = 136315650;
    v23 = v10;
    v24 = 2080;
    v25 = " ";
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sService over WiFi network is %@", &v22, 0x20u);
  }

  if (v8)
  {
    v8 = [(VVService *)self isWiFiNetworkReachable];
    v12 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(VVService *)self getServiceObjLogPrefix];
      v14 = @"unreachable";
      if (v8)
      {
        v14 = @"reachable";
      }

      v22 = 136315650;
      v23 = v13;
      v24 = 2080;
      v25 = " ";
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sWiFi network is %@", &v22, 0x20u);
    }
  }

  v15 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(VVService *)self getServiceObjLogPrefix];
    v17 = @"unavailable";
    if (v8)
    {
      v17 = @"available";
    }

    v22 = 136315650;
    v23 = v16;
    v24 = 2080;
    v25 = " ";
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sService over WiFi network is %@", &v22, 0x20u);
  }

  v18 = sub_100026660(self->logger.__ptr_);
  v19 = v4 | v8;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(VVService *)self getServiceObjLogPrefix];
    v21 = @"offline";
    if (v19)
    {
      v21 = @"online";
    }

    v22 = 136315650;
    v23 = v20;
    v24 = 2080;
    v25 = " ";
    v26 = 2112;
    v27 = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sService is %@", &v22, 0x20u);
  }

  [(VVService *)self setOnline:v19 & 1];
}

- (id)fallbackActivityIdentifier
{
  v2 = [(VVService *)self serviceLabelID];
  v3 = [NSString stringWithFormat:@"%@.%@", @"com.apple.voicemail.fallback", v2];

  return v3;
}

- (void)cancelNotificationFallback
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(VVService *)self fallbackActivityIdentifier];
  xpc_activity_unregister([v3 UTF8String]);

  [(VVService *)self _setOnline:(*&self->_serviceFlags & 1) == 0 fallbackMode:0];
  v4 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = [(VVService *)self getServiceObjLogPrefix];
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sCanceling fallback mode.", &v5, 0x16u);
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_deliverFallbackNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"VVMessageWaitingFallbackNotification", 0, 0, 1u);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"VVServiceMessageWaitingFallbackNotification" object:self];

  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = [(VVService *)self getServiceObjLogPrefix];
    v8 = 2080;
    v9 = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sDelivered fallback notification.", &v6, 0x16u);
  }
}

- (void)_enterFallbackMode
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = [(VVService *)self getServiceObjLogPrefix];
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sEntered fallback mode.", &v4, 0x16u);
  }

  [(VVService *)self cancelNotificationFallback];
  [(VVService *)self _setOnline:(*&self->_serviceFlags & 1) == 0 fallbackMode:1];
  [(NSRecursiveLock *)self->_lock unlock];
  if ([(VVService *)self isMessageWaiting])
  {
    [(VVService *)self _deliverFallbackNotification];
  }
}

- (void)_scheduleFallbackActivityIfNecessary
{
  v3 = [(VVService *)self messageNotificationFallbackTimeout];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
    if (v5)
    {
      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v6, XPC_ACTIVITY_REPEATING, 0);
      xpc_dictionary_set_int64(v6, XPC_ACTIVITY_DELAY, v5);
      xpc_dictionary_set_int64(v6, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_5_MIN);
      xpc_dictionary_set_string(v6, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      v7 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v14 = [(VVService *)self getServiceObjLogPrefix];
        v15 = 2080;
        v16 = " ";
        v17 = 2048;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sScheduling fallback mode in %lu s", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      v8 = [(VVService *)self fallbackActivityIdentifier];
      v9 = v8;
      v10 = [v8 UTF8String];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10004E440;
      handler[3] = &unk_1000EEB30;
      objc_copyWeak(&v12, buf);
      xpc_activity_register(v10, v6, handler);

      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }
  }
}

- (void)setMessageWaiting:(BOOL)a3
{
  v3 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  serviceFlags = self->_serviceFlags;
  if (((((serviceFlags & 0x20) == 0) ^ v3) & 1) == 0)
  {
    if (v3)
    {
      v6 = 32;
    }

    else
    {
      v6 = 0;
    }

    *&self->_serviceFlags = serviceFlags & 0xDF | v6;
    v7 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(VVService *)self getServiceObjLogPrefix];
      v9 = @"OFF";
      if (v3)
      {
        v9 = @"ON";
      }

      v11 = 136315650;
      v12 = v8;
      v13 = 2080;
      v14 = " ";
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sMessage waiting is %@", &v11, 0x20u);
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"VVServiceMessageWaitingStateChangedNotification" object:self userInfo:0];
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_reactToIndicator
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = [(VVService *)self getServiceObjLogPrefix];
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sOOS: Acting on MWI.", &v4, 0x16u);
  }

  [(VVService *)self synchronize:1 reason:@"MWI action"];
}

- (void)_cancelIndicatorAction
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = [(VVService *)self getServiceObjLogPrefix];
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sOOS: Cancelling MWI action.", &v4, 0x16u);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_reactToIndicator" object:0];
}

- (Class)notificationInterpreterClass
{
  [(NSRecursiveLock *)self->_lock lock];
  notificationInterpreter = self->_notificationInterpreter;
  if (!notificationInterpreter)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 objectForInfoDictionaryKey:@"VVNotificationInterpreter"];
    v6 = v5;
    if (v5)
    {
      v7 = NSClassFromString(v5);
      self->_notificationInterpreter = v7;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else if (!self->_notificationInterpreter)
    {
LABEL_6:
      self->_notificationInterpreter = objc_opt_class();
    }

    notificationInterpreter = self->_notificationInterpreter;
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return notificationInterpreter;
}

- (BOOL)isPasswordReady
{
  v2 = [(VVService *)self mailboxName];

  return sub_100096C10(v2);
}

- (id)passwordIgnoringSubscription:(BOOL)a3
{
  v5 = [(VVService *)self mailboxName];
  if (![(__CFString *)v5 length]|| !a3 && ![(VVService *)self isSubscribed])
  {
    password = self->_password;
    self->_password = 0;

    passwordMailboxName = self->_passwordMailboxName;
    self->_passwordMailboxName = 0;
    goto LABEL_8;
  }

  if (!self->_password || ([(__CFString *)v5 isEqualToString:self->_passwordMailboxName]& 1) == 0)
  {
    v6 = sub_100096C00(v5);
    v7 = self->_password;
    self->_password = v6;

    v8 = v5;
    passwordMailboxName = self->_passwordMailboxName;
    self->_passwordMailboxName = v8;
LABEL_8:
  }

  v11 = self->_password;
  v12 = v11;

  return v11;
}

- (void)setPassword:(id)a3
{
  v5 = a3;
  v6 = vm_vmd_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = sub_100096C00([(VVService *)self mailboxName]);
    if (v7)
    {
      v8 = [(__CFString *)v5 isEqual:v7];
      v9 = v6;
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        if (v10)
        {
          v11 = [(VVService *)self mailboxName];
          sub_10009D168(v11, &v17, v9);
        }
      }

      else if (v10)
      {
        v13 = [(VVService *)self mailboxName];
        sub_10009D110(v13, &v17, v9);
      }
    }

    else
    {
      v9 = vm_vmd_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(VVService *)self mailboxName];
        v17 = 138412290;
        v18 = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[VVService setPassword:] called for mailbox named %@; old password for this mailbox was NULL", &v17, 0xCu);
      }
    }
  }

  v14 = [(VVService *)self mailboxName];
  passwordMailboxName = self->_passwordMailboxName;
  self->_passwordMailboxName = v14;

  objc_storeStrong(&self->_password, a3);
  sub_100096EB4(v5, self->_passwordMailboxName);
  passwordError = self->_passwordError;
  self->_passwordError = 0;

  if (![(VVService *)self mailboxRequiresSetup])
  {
    [objc_opt_class() _setInsomniaStateSupressed:0];
  }
}

- (void)setProvisionalPassword:(id)a3
{
  v5 = a3;
  v4 = [(VVService *)self mailboxName];
  if ([(__CFString *)v4 length])
  {
    sub_100097184(v5, v4);
  }
}

- (id)provisionalPassword
{
  v2 = [(VVService *)self mailboxName];
  if ([(__CFString *)v2 length])
  {
    v3 = sub_1000970D0(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)displayPasswordRequestIfNecessary
{
  if (self->_passwordError)
  {
    if ((*&self->_serviceFlags & 5) == 0)
    {
      v5 = [(VVService *)self mailboxName];
      v3 = [v5 length];

      if (v3)
      {
        v6 = [[NSDictionary alloc] initWithObjectsAndKeys:{self->_passwordError, @"VVError", 0}];
        v4 = +[NSNotificationCenter defaultCenter];
        [v4 postNotificationName:@"VVServicePasswordNeededNotification" object:self userInfo:v6];
      }
    }
  }
}

- (void)cancelPasswordRequest
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"VVServicePasswordRequestCancelledNotification" object:self];
}

- (id)carrierParameterValueForKey:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  carrierParameters = self->_carrierParameters;
  if (carrierParameters || (v6 = [[VVCarrierParameters alloc] initWithService:self], v7 = self->_carrierParameters, self->_carrierParameters = v6, v7, (carrierParameters = self->_carrierParameters) != 0))
  {
    v8 = [carrierParameters parameterValueForKey:v4];
  }

  else
  {
    v8 = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];

  return v8;
}

- (BOOL)ignoresRoamingSwitch
{
  v2 = [(VVService *)self carrierParameterValueForKey:@"VVMIgnoresIntlDataRoaming"];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsDetachedStorage
{
  v2 = [(VVService *)self carrierParameterValueForKey:@"VVMDetachedStorageDisabled"];
  v3 = v2 == 0;

  return v3;
}

- (void)progressiveDataLengthsForRecord:(void *)a3 expected:(unsigned int *)a4 current:(unsigned int *)a5
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }
}

- (void)clearRemoteUIDsForDetachedMessages
{
  v3 = [(VVService *)self serviceLabelID];
  v4 = VMStoreCopyOfAllRecordsWithFlags(64, 0, v3);

  if (v4)
  {
    v5 = VMStoreRecordCopyArrayDescription(v4);
    v6 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(VVService *)self getServiceObjLogPrefix];
      v8 = [(VVService *)self serviceLabelID];
      v14 = 136315906;
      v15 = v7;
      v16 = 2080;
      v17 = " ";
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sClear remote UIDs for detached records, label %@ %@", &v14, 0x2Au);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    Count = CFArrayGetCount(v4);
    if (Count < 1)
    {
      CFRelease(v4);
    }

    else
    {
      v10 = 0;
      v11 = 0;
      do
      {
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, v10);
          if (!VMStoreRecordGetRemoteUID(ValueAtIndex))
          {
            break;
          }

          VMStoreRecordSetRemoteUID(ValueAtIndex);
          v11 = 1;
          if (Count - 1 == v10++)
          {
            CFRelease(v4);
LABEL_15:
            VMStoreSave();
            return;
          }
        }

        ++v10;
      }

      while (Count != v10);
      CFRelease(v4);
      if (v11)
      {
        goto LABEL_15;
      }
    }
  }
}

- (void)setGreetingType:(int64_t)a3 data:(id)a4 duration:(unint64_t)a5
{
  v7 = a4;
  v8 = v7;
  if (a3 == 2 && [v7 length])
  {
    v9 = [(VVService *)self accountDir];
    v11 = sub_1000856A8(v9, v10);

    v21 = 0;
    v12 = [v8 writeToURL:v11 options:0 error:&v21];
    v13 = v21;
    ptr = self->logger.__ptr_;
    if (v12)
    {
      v15 = sub_100026660(ptr);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(VVService *)self getServiceObjLogPrefix];
        v17 = [v11 path];
        *buf = 136315650;
        v23 = v16;
        v24 = 2080;
        v25 = " ";
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sSaved custom greeting to file at %@", buf, 0x20u);
      }
    }

    else
    {
      v18 = sub_100026660(ptr);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(VVService *)self getServiceObjLogPrefix];
        v20 = [v11 path];
        *buf = 136315906;
        v23 = v19;
        v24 = 2080;
        v25 = " ";
        v26 = 2112;
        v27 = v20;
        v28 = 2112;
        v29 = v13;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not save custom greeting to file at %@ with error %@", buf, 0x2Au);
      }

      [(VVService *)self reportError:v13];
    }
  }
}

- (void)reportError:(id)a3
{
  v5 = a3;
  if ([(NSError *)v5 isPasswordMismatchError])
  {
    if (self->_passwordError != v5)
    {
      objc_storeStrong(&self->_passwordError, a3);
    }

    [objc_opt_class() _setInsomniaStateSupressed:1];
    [(VVService *)self displayPasswordRequestIfNecessary];
  }

  else if ([(NSError *)v5 isInvalidSubscriberError])
  {
    [(VVService *)self setSubscribed:0];
    [(VVService *)self removeServiceInformation];
  }

  v6 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [(VVService *)self getServiceObjLogPrefix];
    v8 = [(NSError *)v5 localizedDescription];
    sub_10009D1C0(v7, v8, v9, v6);
  }
}

+ (unsigned)_voicemailPowerAssertion
{
  if ((byte_10010D938 & 1) == 0)
  {
    values[0] = @"PreventUserIdleSystemSleep";
    valuePtr = 0;
    keys[0] = @"AssertType";
    keys[1] = @"AssertLevel";
    values[1] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    values[2] = @"Visual Voicemail Activity";
    keys[2] = @"AssertName";
    keys[3] = @"FrameworkBundleID";
    values[3] = @"com.apple.voicemail";
    valuePtr = 600;
    keys[4] = @"TimeoutSeconds";
    v2 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    keys[5] = @"TimeoutAction";
    values[4] = v2;
    values[5] = @"TimeoutActionTurnOff";
    v3 = CFDictionaryCreate(0, keys, values, 6, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (IOPMAssertionCreateWithProperties(v3, &dword_10010D93C))
    {
      v4 = vm_vmd_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        v5 = "Error: Failed to create IOPMAssertion for Voicemail. Voicemail power assertions will not be active.";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v7, 2u);
      }
    }

    else
    {
      byte_10010D938 = 1;
      v4 = vm_vmd_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        v5 = "Created IOPMAssertion for Voicemail successfully.";
        goto LABEL_7;
      }
    }

    CFRelease(v3);
  }

  return dword_10010D93C;
}

+ (void)_acquireAssertionsForInsomniaState:(BOOL)a3
{
  v3 = a3;
  if (pthread_mutex_trylock(&stru_10010D200) != 16)
  {
    sub_10009D23C();
  }

  v5 = vm_vmd_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Insomnia] Enabling voicemail power assertion and resetting time out", buf, 2u);
    }

    IOPMAssertionSetProperty([a1 _voicemailPowerAssertion], @"AssertLevel", +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", 255));
    v7 = @"TimeoutSeconds";
    v8 = 600;
  }

  else
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Insomnia] Disabling voicemail power assertion", v9, 2u);
    }

    v8 = 0;
    v7 = @"AssertLevel";
  }

  IOPMAssertionSetProperty([a1 _voicemailPowerAssertion], v7, +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", v8));
}

+ (void)_setInsomniaStateSupressed:(BOOL)a3
{
  v3 = a3;
  pthread_mutex_lock(&stru_10010D200);
  if (byte_10010D940 != v3)
  {
    v5 = vm_vmd_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = asStringBOOL();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Insomnia] setInsomniaStateSupressed [%s]", &v6, 0xCu);
    }

    byte_10010D940 = v3;
    [a1 _acquireAssertionsForInsomniaState:(dword_10010D944 > 0) & ~v3];
  }

  pthread_mutex_unlock(&stru_10010D200);
}

+ (void)obtainInsomniaAssertion
{
  pthread_mutex_lock(&stru_10010D200);
  ++dword_10010D944;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = dword_10010D944;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Insomnia] Obtaining insomnia assertion [InsomniaCount: %d]", v4, 8u);
  }

  if ((byte_10010D940 & 1) == 0 && dword_10010D944 == 1)
  {
    [a1 _acquireAssertionsForInsomniaState:1];
  }

  pthread_mutex_unlock(&stru_10010D200);
}

+ (void)releaseInsomniaAssertion
{
  pthread_mutex_lock(&stru_10010D200);
  --dword_10010D944;
  v3 = vm_vmd_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = dword_10010D944;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Insomnia] Releasing insomnia assertion [InsomniaCount: %d]", v4, 8u);
  }

  if (!dword_10010D944 && (byte_10010D940 & 1) == 0)
  {
    [a1 _acquireAssertionsForInsomniaState:0];
  }

  pthread_mutex_unlock(&stru_10010D200);
}

- (id)delayedRetryActivityIdentifier
{
  v2 = [(VVService *)self serviceLabelID];
  v3 = [NSString stringWithFormat:@"%@.%@", @"com.apple.voicemail.SyncRetry", v2];

  return v3;
}

- (void)setDelayedRetryScheduled:(BOOL)a3
{
  if (self->_retryScheduled != a3)
  {
    v3 = a3;
    v5 = sub_10004A3F0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(VVService *)self getServiceObjLogPrefix];
      if (byte_10010D948)
      {
        v7 = 118;
      }

      else
      {
        v7 = 110;
      }

      v9 = 136315906;
      v10 = v6;
      v8 = @"Scheduled";
      v11 = 2080;
      v12 = " ";
      if (!v3)
      {
        v8 = @"Not Scheduled";
      }

      v13 = 1024;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[%c] Set delayed sync retry state: %@", &v9, 0x26u);
    }

    self->_retryScheduled = v3;
  }
}

- (BOOL)isDelayedRetryScheduledGuarded
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(VVService *)self serialDispatchQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100050064;
  v5[3] = &unk_1000EEAE0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setDelayedRetryImmediate:(BOOL)a3
{
  if (self->_retryImmediate != a3)
  {
    v3 = a3;
    v5 = sub_10004A3F0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(VVService *)self getServiceObjLogPrefix];
      if (byte_10010D948)
      {
        v7 = 118;
      }

      else
      {
        v7 = 110;
      }

      v9 = 136315906;
      v10 = v6;
      v8 = @"Immediate";
      v11 = 2080;
      v12 = " ";
      if (!v3)
      {
        v8 = @"Continuous";
      }

      v13 = 1024;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[%c] Set delayed sync retry mode: %@", &v9, 0x26u);
    }

    self->_retryImmediate = v3;
  }
}

- (void)cancelDelayedSynchronize:(id)a3
{
  v4 = a3;
  [(VVService *)self _cancelIndicatorAction];
  v5 = sub_10004A3F0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VVService *)self getServiceObjLogPrefix];
    retryIntervalIndex = self->_retryIntervalIndex;
    if (byte_10010D948)
    {
      v8 = 118;
    }

    else
    {
      v8 = 110;
    }

    v11 = 136316162;
    v12 = v6;
    v13 = 2080;
    v14 = " ";
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = retryIntervalIndex;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[%c] Delayed sync cancelled, next iteration %d, reason %@", &v11, 0x2Cu);
  }

  [(VVService *)self setDelayedRetryScheduled:0];
  v9 = [(VVService *)self delayedRetryActivityIdentifier];
  v10 = v9;
  xpc_activity_unregister([v9 UTF8String]);
}

- (void)resetDelayedSynchronizationAttemptCount
{
  v3 = sub_10004A3F0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VVService *)self getServiceObjLogPrefix];
    retryIntervalIndex = self->_retryIntervalIndex;
    if (byte_10010D948)
    {
      v6 = 118;
    }

    else
    {
      v6 = 110;
    }

    v7 = 136315906;
    v8 = v4;
    v9 = 2080;
    v10 = " ";
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = retryIntervalIndex;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s[%c] Resetting delayed sync, last iteration %d", &v7, 0x22u);
  }

  self->_retryIntervalIndex = 0;
}

- (void)_attemptDelayedSynchronize
{
  v3 = sub_10004A3F0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VVService *)self getServiceObjLogPrefix];
    retryIntervalIndex = self->_retryIntervalIndex;
    if (byte_10010D948)
    {
      v6 = 118;
    }

    else
    {
      v6 = 110;
    }

    v7 = 136315906;
    v8 = v4;
    v9 = 2080;
    v10 = " ";
    v11 = 1024;
    v12 = v6;
    v13 = 1024;
    v14 = retryIntervalIndex;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s[%c] Attempting delayed sync, next iteration %d", &v7, 0x22u);
  }

  [(VVService *)self cancelDelayedSynchronize:@"SyncAttempting"];
  [(VVService *)self synchronize:0 reason:@"SyncAttempting"];
}

- (id)retryIntervals
{
  retryIntervals = self->_retryIntervals;
  if (!retryIntervals)
  {
    v4 = [(VVService *)self getRetryIntervals];
    v5 = v4;
    if (v4 && [v4 count])
    {
      v6 = [v5 copy];
    }

    else
    {
      v6 = &off_1000F5A88;
    }

    v7 = self->_retryIntervals;
    self->_retryIntervals = v6;

    retryIntervals = self->_retryIntervals;
  }

  return retryIntervals;
}

- (void)scheduleDelayedSynchronize
{
  if ([(VVService *)self isDelayedRetryScheduled])
  {
    v3 = sub_10004A3F0();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(VVService *)self getServiceObjLogPrefix];
      retryIntervalIndex = self->_retryIntervalIndex;
      if (byte_10010D948)
      {
        v6 = 118;
      }

      else
      {
        v6 = 110;
      }

      *buf = 136315906;
      v25 = v4;
      v26 = 2080;
      v27 = " ";
      v28 = 1024;
      v29 = v6;
      v30 = 1024;
      v31 = retryIntervalIndex;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s[%c] Delayed sync is already scheduled, last iteration %d", buf, 0x22u);
    }
  }

  else
  {
    v7 = [(VVService *)self retryIntervals];
    v3 = v7;
    if (v7 && (v8 = self->_retryIntervalIndex, [v7 count]> v8))
    {
      v9 = [v3 objectAtIndex:self->_retryIntervalIndex];
      v10 = [v9 unsignedIntValue];

      v11 = sub_10004A3F0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(VVService *)self getServiceObjLogPrefix];
        v13 = self->_retryIntervalIndex;
        if (byte_10010D948)
        {
          v14 = 118;
        }

        else
        {
          v14 = 110;
        }

        *buf = 136316162;
        v25 = v12;
        v26 = 2080;
        v27 = " ";
        v28 = 1024;
        v29 = v14;
        v30 = 1024;
        v31 = v10;
        v32 = 1024;
        v33 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s[%c] Scheduling delayed sync in %u s, iteration %d", buf, 0x28u);
      }

      [(VVService *)self setDelayedRetryScheduled:1];
      v15 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v15, XPC_ACTIVITY_REPEATING, 0);
      xpc_dictionary_set_int64(v15, XPC_ACTIVITY_DELAY, v10);
      xpc_dictionary_set_int64(v15, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_MIN);
      xpc_dictionary_set_string(v15, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
      objc_initWeak(buf, self);
      v16 = [(VVService *)self delayedRetryActivityIdentifier];
      v17 = v16;
      v18 = [v16 UTF8String];
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_100050A50;
      handler[3] = &unk_1000EEB30;
      objc_copyWeak(&v23, buf);
      xpc_activity_register(v18, v15, handler);

      ++self->_retryIntervalIndex;
      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }

    else
    {
      v19 = sub_10004A3F0();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(VVService *)self getServiceObjLogPrefix];
        if (byte_10010D948)
        {
          v21 = 118;
        }

        else
        {
          v21 = 110;
        }

        *buf = 136315650;
        v25 = v20;
        v26 = 2080;
        v27 = " ";
        v28 = 1024;
        v29 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s[%c] Too many delayed sync retries, giving up;", buf, 0x1Cu);
      }

      if ([(VVService *)self isDelayedRetryImmediate])
      {
        [(VVService *)self resetDelayedSynchronizationAttemptCount];
      }
    }
  }
}

- (id)automatedTrashActivityIdentifier
{
  v2 = [(VVService *)self serviceLabelID];
  v3 = [NSString stringWithFormat:@"%@.%@", @"com.apple.voicemail.autotrash", v2];

  return v3;
}

- (void)_scheduleAutomatedTrashCompaction
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v39 = [(VVService *)self getServiceObjLogPrefix];
      v40 = 2080;
      v41 = " ";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#W %s%sWe were asked to schedule trash compaction, but this class does't support this procedure", buf, 0x16u);
    }

    v3 = 0;
    goto LABEL_35;
  }

  v3 = [(VVService *)self getAccountStore];
  if (![(VVService *)self doesClientManageTrashCompaction])
  {
    v33 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v39 = [(VVService *)self getServiceObjLogPrefix];
      v40 = 2080;
      v41 = " ";
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#W %s%sWe were asked to schedule trash compaction, but client doesn't manage trash", buf, 0x16u);
    }

LABEL_35:

    goto LABEL_36;
  }

  v4 = sub_1000931D0(v3, 8, 68);
  v5 = v4;
  if (v4 && CFArrayGetCount(v4))
  {
    v6 = COERCE_DOUBLE(VMStoreRecordCopyArrayDescription(v5));
    v7 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v39 = [(VVService *)self getServiceObjLogPrefix];
      v40 = 2080;
      v41 = " ";
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sWe have records that are eligible for compaction; records %@", buf, 0x20u);
    }

    if (v6 != 0.0)
    {
      CFRelease(*&v6);
    }

    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v9 = 0;
      v10 = 1.79769313e308;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v9);
        v12 = sub_1000928B0(v3, ValueAtIndex);
        *&v13 = COERCE_DOUBLE(VMStoreRecordCopyDescription(ValueAtIndex));
        v14 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [(VVService *)self getServiceObjLogPrefix];
          *buf = 136315906;
          v39 = v15;
          v40 = 2080;
          v41 = " ";
          v42 = 2112;
          v43 = *&v13;
          v44 = 1024;
          LODWORD(v45) = v12;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sCOMPACTION: trashed date of record %@ is %d", buf, 0x26u);
        }

        if (*&v13 != 0.0)
        {
          CFRelease(v13);
        }

        if (v12 && v10 > v12)
        {
          v16 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [(VVService *)self getServiceObjLogPrefix];
            *buf = 136315650;
            v39 = v17;
            v40 = 2080;
            v41 = " ";
            v42 = 2048;
            v43 = v12;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sCOMPACTION: trashed date of oldest record is now %f", buf, 0x20u);
          }

          v10 = v12;
        }

        ++v9;
      }

      while (Count != v9);
      if (v10 != 1.79769313e308)
      {
        [(VVService *)self trashCompactionAge];
        v19 = v18;
        Current = CFAbsoluteTimeGetCurrent();
        v21 = sub_100026660(self->logger.__ptr_);
        v22 = Current - v10;
        v23 = v19 - (Current - v10) + 10.0;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(VVService *)self getServiceObjLogPrefix];
          *buf = 136316418;
          v39 = v24;
          v40 = 2080;
          v41 = " ";
          v42 = 2048;
          v43 = v19;
          v44 = 2048;
          v45 = Current;
          v46 = 2048;
          v47 = v22;
          v48 = 2048;
          v49 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sCOMPACTION: ageAtWhichToCompact=%f, currentTime=%f, currentTimeSpentInTrash=%f, timeUntilNextCompaction=%f", buf, 0x3Eu);
        }

        if (v23 < 0.0)
        {
          v25 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [(VVService *)self getServiceObjLogPrefix];
            *buf = 136315394;
            v39 = v26;
            v40 = 2080;
            v41 = " ";
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%sCOMPACTION: Time until next compaction was less than one minute.  Increasing to one minute.", buf, 0x16u);
          }

          v23 = 60.0;
        }

        v27 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_BOOL(v27, XPC_ACTIVITY_REPEATING, 0);
        xpc_dictionary_set_int64(v27, XPC_ACTIVITY_DELAY, v23);
        xpc_dictionary_set_int64(v27, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_MIN);
        xpc_dictionary_set_string(v27, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
        objc_initWeak(&location, self);
        v28 = [(VVService *)self automatedTrashActivityIdentifier];
        v29 = v28;
        v30 = [v28 UTF8String];
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100051610;
        handler[3] = &unk_1000EEB30;
        objc_copyWeak(&v36, &location);
        xpc_activity_register(v30, v27, handler);

        v31 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [(VVService *)self getServiceObjLogPrefix];
          *buf = 136315650;
          v39 = v32;
          v40 = 2080;
          v41 = " ";
          v42 = 2048;
          v43 = v23;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sScheduling automated trash compaction in %f s", buf, 0x20u);
        }

        objc_destroyWeak(&v36);
        objc_destroyWeak(&location);
      }
    }

    CFRelease(v5);
  }

  else
  {
    v34 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v39 = [(VVService *)self getServiceObjLogPrefix];
      v40 = 2080;
      v41 = " ";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#W %s%sWe were asked to schedule trash compaction, but no records were eligible", buf, 0x16u);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

LABEL_36:
}

- (void)_cancelAutomatedTrashCompaction
{
  v3 = [(VVService *)self automatedTrashActivityIdentifier];
  xpc_activity_unregister([v3 UTF8String]);

  v4 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = [(VVService *)self getServiceObjLogPrefix];
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sAutomated trash compaction was cancelled.", &v5, 0x16u);
  }
}

- (void)_attemptScheduledTrashCompaction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(VVService *)self getAccountStore];
    if (v5)
    {
      v6 = [(VVService *)self doTrashCompaction:v5];
      if (!xpc_activity_set_state(v4, 5))
      {
        v7 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 136315650;
          v14 = [(VVService *)self getServiceObjLogPrefix];
          v15 = 2080;
          v16 = " ";
          v17 = 2112;
          v18 = @"com.apple.voicemail.autotrash";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to transition %@ activity to state done", &v13, 0x20u);
        }
      }

      v8 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(VVService *)self getServiceObjLogPrefix];
        v10 = @"but no records were compacted";
        if (v6)
        {
          v10 = @"one or more records were compacted";
        }

        v13 = 136315650;
        v14 = v9;
        v15 = 2080;
        v16 = " ";
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sAutomated trash compaction completed, %@", &v13, 0x20u);
      }

      [(VVService *)self scheduleAutomatedTrashCompaction];
      goto LABEL_20;
    }
  }

  else
  {
    v11 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10009D268([(VVService *)self getServiceObjLogPrefix], buf, v11);
    }
  }

  if (!xpc_activity_set_state(v4, 5))
  {
    v12 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = [(VVService *)self getServiceObjLogPrefix];
      v15 = 2080;
      v16 = " ";
      v17 = 2112;
      v18 = @"com.apple.voicemail.autotrash";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to transition %@ activity to state done", &v13, 0x20u);
    }
  }

  v5 = 0;
LABEL_20:
}

- (void)reportFailedToSyncOverWifi
{
  [(VVService *)self setNumFailedAttemptsToSyncOverWifi:[(VVService *)self numFailedAttemptsToSyncOverWifi]+ 1];
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315650;
    v5 = [(VVService *)self getServiceObjLogPrefix];
    v6 = 2080;
    v7 = " ";
    v8 = 2048;
    v9 = [(VVService *)self numFailedAttemptsToSyncOverWifi];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sreportFailedToSyncOverWifi %ld", &v4, 0x20u);
  }
}

- (void)reportSucessfulSync
{
  [(VVService *)self setNumFailedAttemptsToSyncOverWifi:0];
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = [(VVService *)self getServiceObjLogPrefix];
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sreported successful sync", &v4, 0x16u);
  }
}

- (BOOL)shouldImmediatelyRetrySyncOverCellular
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = [(VVService *)self getServiceObjLogPrefix];
    v8 = 2080;
    v9 = " ";
    v10 = 2048;
    v11 = [(VVService *)self numFailedAttemptsToSyncOverWifi];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sshouldImmediatelyRetrySyncOverCellular %ld", &v6, 0x20u);
  }

  v4 = [(VVService *)self numFailedAttemptsToSyncOverWifi];
  if (v4)
  {
    LOBYTE(v4) = ![(VVService *)self lastUsedConnectionTypeWasCellular];
  }

  return v4;
}

- (void)setLastUsedConnectionType:(__CFString *)a3
{
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = [(VVService *)self getServiceObjLogPrefix];
    v8 = 2080;
    v9 = " ";
    v10 = 2112;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%ssetLastUsedConnectionType: %@", &v6, 0x20u);
  }

  self->_lastConnectionTypeUsed = a3;
}

- (BOOL)lastUsedConnectionTypeWasCellular
{
  v3 = self->_lastConnectionTypeUsed;
  v4 = [(__CFString *)v3 isEqualToString:kCTDataConnectionServiceTypeVVM];
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = [(VVService *)self getServiceObjLogPrefix];
    v9 = 2080;
    v10 = " ";
    v11 = 1024;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%slastUsedConnectionTypeWasCellular: %d", &v7, 0x1Cu);
  }

  return v4;
}

- (void)scheduleImmediateSynchronizeRetryOverCellular
{
  if ([(VVService *)self shouldImmediatelyRetrySyncOverCellular])
  {
    v3 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v7 = [(VVService *)self getServiceObjLogPrefix];
      v8 = 2080;
      v9 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sattempting sync retry over cellular", buf, 0x16u);
    }

    v4 = [(VVService *)self serialDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100052360;
    block[3] = &unk_1000EDEC8;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (__CFString)dataConnectionServiceTypeOverride
{
  if ([(VVService *)self shouldImmediatelyRetrySyncOverCellular])
  {
    return kCTDataConnectionServiceTypeVVM;
  }

  else
  {
    return 0;
  }
}

- (void)handleVoicemailInfoUpdate:(id)a3
{
  v4 = a3;
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 136315650;
    *&v21[4] = [(VVService *)self getServiceObjLogPrefix];
    *&v21[12] = 2080;
    *&v21[14] = " ";
    *&v21[22] = 2112;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived voicemail info update: %@", v21, 0x20u);
  }

  v6 = [(__CFString *)v4 isVoiceMailMWI];
  v7 = [(__CFString *)v4 available];
  v8 = [(__CFString *)v4 isNetworkOriginated];
  v9 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(VVService *)self getServiceObjLogPrefix];
    v11 = &stru_1000F0098;
    if (v8)
    {
      v11 = @" (from network)";
    }

    *v21 = 136315906;
    *&v21[4] = v10;
    *&v21[12] = 2080;
    *&v21[14] = " ";
    *&v21[22] = 2112;
    v22 = v11;
    if (v7)
    {
      v12 = @"ON";
    }

    else
    {
      v12 = @"OFF";
    }

    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sVoicemail MWI%@ %@", v21, 0x2Au);
  }

  v13 = v7 ^ ((*&self->_serviceFlags & 0x20) == 0);
  if ((v13 & v8) == 1)
  {
    v14 = [(__CFString *)v4 count];
    v15 = [v14 integerValue];

    if (v15 >= 0)
    {
      goto LABEL_22;
    }
  }

  else if (v13)
  {
    goto LABEL_22;
  }

  if (v7)
  {
    if ([(VVService *)self isSubscribed]&& [(VVService *)self isInSync])
    {
      v16 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(VVService *)self getServiceObjLogPrefix];
        *v21 = 136315394;
        *&v21[4] = v17;
        *&v21[12] = 2080;
        *&v21[14] = " ";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sOOS: MWI went ON but we were not out of sync; scheduling future check.", v21, 0x16u);
      }

      [(VVService *)self performSelector:"_reactToIndicator" withObject:0 afterDelay:120.0];
    }
  }

  else
  {
    [(VVService *)self _cancelIndicatorAction];
  }

  [(VVService *)self setMessageWaiting:v7, *v21, *&v21[16], v22];
LABEL_22:
  if ((v7 & v8 & v6) == 1)
  {
    if ((*&self->_serviceFlags & 0x40) != 0 && [(VVService *)self isSubscribed])
    {
      [(VVService *)self _deliverFallbackNotification];
    }

    else
    {
      [(VVService *)self _scheduleFallbackActivityIfNecessary:*v21];
    }
  }

  v18 = objc_opt_class();
  v19 = [(__CFString *)v4 url];
  v20 = [v18 accountDictionaryForURL:v19];
  [(VVService *)self handleNotification:v20 isMWI:v6];
}

+ (id)accountDictionaryForURL:(id)a3
{
  v3 = VMCopyDictionaryForNotificationString();

  return v3;
}

- (void)handleVVServiceDataAvailableNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VVService *)self getServiceObjLogPrefix];
    v7 = objc_opt_class();
    v8 = [v4 name];
    v9 = 136315906;
    v10 = v6;
    v11 = 2080;
    v12 = " ";
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s==== %@ received deprecated <%@> notification", &v9, 0x2Au);
  }
}

- (void)handleAirplaneModeChanged:(BOOL)a3
{
  v3 = a3;
  v5 = [(VVService *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VVService *)self getServiceObjLogPrefix];
    v8 = @"NO";
    if (v3)
    {
      v8 = @"YES";
    }

    v9 = 136315650;
    v10 = v7;
    v11 = 2080;
    v12 = " ";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sAirplaneMode changed to: %@", &v9, 0x20u);
  }

  if (v3)
  {
    [(VVService *)self cancelDelayedSynchronize:@"AirplaneMode"];
    [(VVService *)self resetDelayedSynchronizationAttemptCount];
  }
}

- (void)handleCallStatusDisconnected:(id)a3
{
  v4 = a3;
  v5 = [(VVService *)self serialDispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VVService *)self getServiceObjLogPrefix];
    [(VVService *)self isDelayedRetryScheduled];
    v8 = asNSStringBOOL();
    v15 = 136315906;
    v16 = v7;
    v17 = 2080;
    v18 = " ";
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sCallStatus Disconnected for uuid %@, delayed sync scheduled %@", &v15, 0x2Au);
  }

  if (![(VVService *)self isDelayedRetryImmediate]&& [(VVService *)self isDelayedRetryScheduled])
  {
    v9 = [(VVService *)self contextInfo];
    v10 = [v9 uuid];
    v11 = [v10 isEqual:v4];

    if ((v11 & 1) == 0)
    {
      retryIntervalIndex = self->_retryIntervalIndex;
      v13 = __OFSUB__(retryIntervalIndex, 1);
      v14 = retryIntervalIndex - 1;
      if (v14 < 0 == v13)
      {
        self->_retryIntervalIndex = v14;
      }

      [(VVService *)self cancelDelayedSynchronize:@"CallDisconnected"];
      [(VVService *)self scheduleDelayedSynchronize];
    }
  }
}

- (void)stateChanged:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 isActiveService:32])
  {
    v6 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = [(VVService *)self getServiceObjLogPrefix];
      v9 = 2080;
      v10 = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sSatSMS service activated - force IMAP to re-sync after getting on grid", &v7, 0x16u);
    }

    [(VVService *)self synchronize:1 reason:@"StewieStateChanged"];
  }
}

- (int64_t)attemptCountForStateRequest:(id)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100053010;
  v6[3] = &unk_1000EEB80;
  v7 = self;
  v8 = a3;
  v9 = &v10;
  v3 = v8;
  [(VVService *)v7 performSynchronousBlock:v6];
  v4 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (void)incrementAttemptCountForStateRequest:(id)a3
{
  v4 = a3;
  v5 = [(VVService *)self serialDispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100053168;
  v7[3] = &unk_1000EE260;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeAttemptCountForStateRequest:(id)a3
{
  v4 = a3;
  v5 = [(VVService *)self serialDispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005331C;
  v7[3] = &unk_1000EE260;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (NSMutableDictionary)stateRequestAttemptCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10004CC6C;
  v9 = sub_10004CC7C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100053490;
  v4[3] = &unk_1000EEBA8;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performSynchronousBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)performAtomicAccessorBlock:(id)a3
{
  v6 = a3;
  if (v6)
  {
    os_unfair_lock_lock_with_options();
    v6[2]();
    os_unfair_lock_unlock(&self->_accessorLock);
  }

  else
  {
    v5 = +[NSAssertionHandler currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"VVService.mm" lineNumber:1966 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }
}

- (void)performSynchronousBlock:(id)a3
{
  block = a3;
  if (dispatch_get_specific(off_10010D1F8) == self)
  {
    block[2]();
  }

  else
  {
    v4 = [(VVService *)self serialDispatchQueue];
    dispatch_sync(v4, block);
  }
}

- (void)removeServiceInformation
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = [(VVService *)self getServiceObjLogPrefix];
    v24 = 2080;
    v25 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoving database records", buf, 0x16u);
  }

  v4 = [(VVService *)self serviceLabelID];
  sub_1000898BC(0, v4);

  v5 = +[NSFileManager defaultManager];
  v6 = [(VVService *)self accountDir];
  v7 = [v6 path];
  v8 = [v5 fileExistsAtPath:v7];

  if (v8)
  {
    v9 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(VVService *)self getServiceObjLogPrefix];
      v11 = [(VVService *)self accountDir];
      *buf = 136315650;
      v23 = v10;
      v24 = 2080;
      v25 = " ";
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sAttempting to remove service directory at %@", buf, 0x20u);
    }

    v12 = [(VVService *)self accountDir];
    v21 = 0;
    v13 = [v5 removeItemAtURL:v12 error:&v21];
    v14 = v21;

    ptr = self->logger.__ptr_;
    if (v13)
    {
      v16 = sub_100026660(ptr);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(VVService *)self getServiceObjLogPrefix];
        v18 = [(VVService *)self accountDir];
        *buf = 136315650;
        v23 = v17;
        v24 = 2080;
        v25 = " ";
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoved service directory at %@", buf, 0x20u);
      }
    }

    else
    {
      v16 = sub_100026660(ptr);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = [(VVService *)self getServiceObjLogPrefix];
        v20 = [(VVService *)self accountDir];
        *buf = 136315906;
        v23 = v19;
        v24 = 2080;
        v25 = " ";
        v26 = 2112;
        v27 = v20;
        v28 = 2112;
        v29 = v14;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#E %s%sCould not remove service directory at %@ due to error %@", buf, 0x2Au);
      }
    }
  }
}

@end