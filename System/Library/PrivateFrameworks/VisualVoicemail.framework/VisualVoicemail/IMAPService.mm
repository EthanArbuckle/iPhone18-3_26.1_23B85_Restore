@interface IMAPService
+ (void)initialize;
- (BOOL)_sanitizeDuplicateRecordsFromArrayForServiceAccount:(id)a3 serviceAccount:(id)a4;
- (BOOL)dataForRecordPending:(void *)a3 progressiveLoadInProgress:(BOOL *)a4;
- (BOOL)doesClientManageTrashCompaction;
- (BOOL)greetingAvailable;
- (BOOL)greetingFetchExistsProgressiveLoadInProgress:(BOOL *)a3;
- (BOOL)isBeaconActive;
- (BOOL)isGreetingChangeSupported;
- (BOOL)isIMAPServerTrusted:(id)a3;
- (BOOL)isIMAPServerTrustedFQDN:(id)a3 key:(id)a4 whitelistExist:(BOOL *)a5;
- (BOOL)isIMAPServerTrustedIP:(id)a3 af:(int)a4 key:(id)a5 whitelistExist:(BOOL *)a6;
- (BOOL)isInSync;
- (BOOL)isSyncInProgress;
- (BOOL)isSyncRequired;
- (BOOL)isSyncScheduled;
- (BOOL)respectsMWINotifications;
- (IMAPService)initWithLabel:(id)a3 accountIdentifier:(id)a4 phoneNumber:(id)a5 isoCountryCode:(id)a6 countryCode:(id)a7 networkCode:(id)a8 contextInfo:(id)a9 telephonyClient:(id)a10 stateRequestController:(id)a11 newAccount:(BOOL)a12;
- (IMAPServiceAccount)serviceAccount;
- (NSString)beaconRetryActivityIdentifier;
- (NSString)description;
- (id)_bodyLoadMonitor;
- (id)_candidateGreetingMessageForServiceAccount:(id)a3;
- (id)_messageChangeQueue;
- (id)_parameters;
- (id)_parametersFilePath;
- (id)changePasswordReplyBlock;
- (id)copyAccountTokensForDeletedRecords;
- (id)copyAccountTokensForDeletedRecords:(id)a3;
- (id)copyAccountTokensForMainRecordsWithFlags:(unsigned int)a3 flagsToNotHave:(unsigned int)a4;
- (id)copyTokensForDeletedRecords;
- (id)copyTokensForRecords:(id)a3;
- (id)copyTokensForRecordsWithFlags:(unsigned int)a3 flagsToNotHave:(unsigned int)a4;
- (id)getAccountStore;
- (id)getParameters;
- (id)mailboxName;
- (int)maximumPasswordLength;
- (int)minimumPasswordLength;
- (int64_t)currentTaskType;
- (int64_t)mailboxGreetingType;
- (unint64_t)maximumGreetingDuration;
- (unsigned)_beaconCount;
- (void)_addPendingDeleteForRecord:(void *)a3;
- (void)_authenticationFailed;
- (void)_bodyRetrievalCompleted:(void *)a3;
- (void)_cancelBeacon;
- (void)_carrierBundleChanged;
- (void)_checkForQueuedNotifications;
- (void)_doneBeacon;
- (void)_executePostSyncUpdate:(shared_ptr<VMJetsamAssertion>)a3;
- (void)_handleFlagsDidChange:(id)a3;
- (void)_handleVoicemailPasswordChangeTaskNotification:(id)a3;
- (void)_imap_M2A_merge;
- (void)_incrementBeaconCount;
- (void)_inferActiveState;
- (void)_mailboxUsageUpdateCompletedWithError:(id)a3;
- (void)_onQueue_setPasscode:(id)a3 completion:(id)a4;
- (void)_removePendingDeleteForRecord:(void *)a3;
- (void)_removeRecordsNotPendingDelete:(__CFArray *)a3;
- (void)_resetLegacyMessageWaiting;
- (void)_retrieveBodies:(id)a3;
- (void)_retrieveSingleRecordBody:(void *)a3;
- (void)_retrieveSingleTransferredRecordBody:(void *)a3;
- (void)_sanitizeLocalVoicemailDatabaseForServiceAccount:(id)a3;
- (void)_saveParameters;
- (void)_scheduleBeaconRetry:(unint64_t)a3;
- (void)_setAccountState:(int64_t)a3;
- (void)_setAccountValue:(id)a3 forKey:(__CFString *)a4 inDictionary:(id *)a5 ifDifferentInDictionary:(id)a6;
- (void)_setActiveGreetingType:(int64_t)a3;
- (void)_setDataForRecordWithIdentifier:(unsigned int)a3;
- (void)_setMessageWaitingFromNotification:(id)a3;
- (void)_setServerInfoFromInterpretedNotification:(id)a3;
- (void)_startBeacon;
- (void)_syncCompletedWithError:(shared_ptr<VMJetsamAssertion>)a3 error:(id)a4;
- (void)_synchronizeMailboxWithRelativePath:(id)a3 serviceAccount:(id)a4;
- (void)_synchronizeMailboxesForServiceAccount:(id)a3;
- (void)_synchronouslyPushFlags:(id)a3;
- (void)_synchronouslyRetrieveBody:(id)a3;
- (void)_synchronouslyRetrieveBodyForRecord:(void *)a3;
- (void)_synchronouslySetCustomGreetingWithData:(id)a3 duration:(id)a4;
- (void)_synchronouslySetDefaultGreeting;
- (void)_updateBodies:(shared_ptr<VMJetsamAssertion>)a3;
- (void)_updateMailboxUsage;
- (void)addDataForRecord:(void *)a3;
- (void)addScheduledActivity:(id)a3;
- (void)addSyncTask;
- (void)addTranscriptForRecord:(void *)a3;
- (void)dealloc;
- (void)do_M2A_merge;
- (void)handleDataContextDeactivated;
- (void)handleIMAPAccountOfflineOperationQueuedNotification:(id)a3;
- (void)handleNotification:(id)a3 isMWI:(BOOL)a4;
- (void)imapTransactionEnded;
- (void)kill;
- (void)markRecordsAsRead:(id)a3;
- (void)markRecordsAsReadTask:(id)a3;
- (void)messageWriter:(id)a3 willEncodeHeaders:(id)a4 forMimePart:(id)a5;
- (void)movePendingMessagesToInboxTask:(id)a3;
- (void)movePendingMessagesToTrashTask:(id)a3;
- (void)moveRecords:(id)a3 toTrash:(BOOL)a4;
- (void)moveRecordsToDeleted:(id)a3;
- (void)moveRecordsToDeletedTask:(id)a3;
- (void)moveRecordsToInboxTask:(id)a3;
- (void)moveRecordsToTrashTask:(id)a3;
- (void)onVMStoreRecordFlagsChangedNotification:(__CFString *)a3 object:(const void *)a4 userInfo:(__CFDictionary *)a5;
- (void)onVMStoreRecordFlagsDidChangeNotification:(__CFString *)a3 object:(const void *)a4 userInfo:(__CFDictionary *)a5;
- (void)onVMStoreRecordFlagsWillChangeNotification:(__CFString *)a3 object:(const void *)a4 userInfo:(__CFDictionary *)a5;
- (void)populateLabelInformation;
- (void)populateReceiverInformationForServiceAccount:(id)a3;
- (void)refreshIfNeeded;
- (void)requestController:(id)a3 didReceiveResponse:(id)a4 forRequest:(id)a5;
- (void)requestController:(id)a3 didSendRequest:(id)a4;
- (void)resendBeacon;
- (void)retrieveDataForRecord:(void *)a3;
- (void)retrieveGreeting:(id)a3;
- (void)retrieveGreetingWorkerForServiceAccount:(id)a3;
- (void)scheduleDelayedMerge;
- (void)scheduleReleaseAllAccountConnections:(id)a3 reason:(id)a4 forService:(id)a5;
- (void)scheduleSyncTask:(BOOL)a3 reason:(id)a4;
- (void)setBeaconActive:(BOOL)a3;
- (void)setChangePasswordReplyBlock:(id)a3;
- (void)setGreetingType:(int64_t)a3 data:(id)a4 duration:(unint64_t)a5;
- (void)setMailboxUsage:(unint64_t)a3;
- (void)setOnline:(BOOL)a3;
- (void)setPasscode:(id)a3 completion:(id)a4;
- (void)setServiceAccount:(id)a3;
- (void)setSmscAddress:(id)a3;
- (void)setSyncInProgress:(BOOL)a3;
- (void)setSyncRequired:(BOOL)a3;
- (void)setSyncScheduled:(BOOL)a3;
- (void)synchronize:(BOOL)a3 reason:(id)a4;
@end

@implementation IMAPService

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    [MFData setDefaultMappingThresholdInBytes:0x100000];
    sub_10002FA58();
    if (CPIsInternalDevice())
    {
      v2 = dispatch_time(0, 100000000);

      dispatch_after(v2, &_dispatch_main_q, &stru_1000EF1C0);
    }
  }
}

- (IMAPService)initWithLabel:(id)a3 accountIdentifier:(id)a4 phoneNumber:(id)a5 isoCountryCode:(id)a6 countryCode:(id)a7 networkCode:(id)a8 contextInfo:(id)a9 telephonyClient:(id)a10 stateRequestController:(id)a11 newAccount:(BOOL)a12
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v29.receiver = self;
  v29.super_class = IMAPService;
  v26 = a10;
  v28 = a11;
  if ([(VVService *)&v29 initWithLabel:v17 accountIdentifier:v18 phoneNumber:v19 isoCountryCode:v20 countryCode:v21 networkCode:v22 contextInfo:v23 telephonyClient:v26 stateRequestController:v28 newAccount:a12])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  [(MFInvocationQueue *)self->_messageChangeQueue removeAllItems];
  messageChangeQueue = self->_messageChangeQueue;
  self->_messageChangeQueue = 0;

  [(IMAPServiceAccount *)self->_serviceAccount invalidateServiceAccount];
  [(IMAPService *)self scheduleReleaseAllAccountConnections:self->_serviceAccount reason:@"IMAPService dealloc" forService:0];
  serviceAccount = self->_serviceAccount;
  self->_serviceAccount = 0;

  [(IMAPServiceActivityController *)self->_activityController invalidate];
  v7 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = [(VVService *)self getServiceObjLogPrefix];
    v13 = 2080;
    v14 = " ";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sUnregistering beacon retry activity in dealloc", buf, 0x16u);
  }

  v8 = [(IMAPService *)self beaconRetryActivityIdentifier];
  v9 = v8;
  xpc_activity_unregister([v8 UTF8String]);

  v10.receiver = self;
  v10.super_class = IMAPService;
  [(VVService *)&v10 dealloc];
}

- (int64_t)currentTaskType
{
  result = self->_activityController;
  if (result)
  {
    return [result currentTaskType];
  }

  return result;
}

- (void)addScheduledActivity:(id)a3
{
  v5 = a3;
  activityController = self->_activityController;
  if (activityController)
  {
    [(IMAPServiceActivityController *)activityController addScheduledActivity:v5];
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = [(VVService *)self accountIdentifier];
  v5 = [(VVService *)self serviceLabelID];
  v6 = [NSString stringWithFormat:@"<%@ %p account=%@ label=%@>", v3, self, v4, v5];

  return v6;
}

- (BOOL)isBeaconActive
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006CB00;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setBeaconActive:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006CB90;
  v3[3] = &unk_1000ED8D8;
  v3[4] = self;
  v4 = a3;
  [(VVService *)self performAtomicAccessorBlock:v3];
}

- (NSString)beaconRetryActivityIdentifier
{
  v2 = [(VVService *)self serviceLabelID];
  v3 = [NSString stringWithFormat:@"%@.%@", @"com.apple.vmd.BeaconRetry", v2];

  return v3;
}

- (id)changePasswordReplyBlock
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10006CD40;
  v9 = sub_10006CD6C;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006CD74;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = objc_retainBlock(v6[5]);
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setChangePasswordReplyBlock:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006CE74;
  v4[3] = &unk_1000EF1E8;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(VVService *)v5 performAtomicAccessorBlock:v4];
}

- (IMAPServiceAccount)serviceAccount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10006CFE0;
  v9 = sub_10006CFF0;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006CFF8;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)setServiceAccount:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006D0C0;
  v4[3] = &unk_1000EE260;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(VVService *)v5 performAtomicAccessorBlock:v4];
}

- (id)getAccountStore
{
  v2 = [(IMAPService *)self serviceAccount];
  v3 = [v2 accountStore];

  return v3;
}

- (BOOL)isSyncRequired
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006D250;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setSyncRequired:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006D2E0;
  v3[3] = &unk_1000ED8D8;
  v3[4] = self;
  v4 = a3;
  [(VVService *)self performAtomicAccessorBlock:v3];
}

- (BOOL)isSyncInProgress
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006D3C0;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = &v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setSyncInProgress:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006D450;
  v3[3] = &unk_1000ED8D8;
  v3[4] = self;
  v4 = a3;
  [(VVService *)self performAtomicAccessorBlock:v3];
}

- (BOOL)isSyncScheduled
{
  v2 = self;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006D538;
  v4[3] = &unk_1000EEAE0;
  v4[4] = self;
  v4[5] = v5;
  [(VVService *)self performAtomicAccessorBlock:v4];
  LOBYTE(v2) = v2->syncRequired;
  _Block_object_dispose(v5, 8);
  return v2;
}

- (void)setSyncScheduled:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006D5C8;
  v3[3] = &unk_1000ED8D8;
  v3[4] = self;
  v4 = a3;
  [(VVService *)self performAtomicAccessorBlock:v3];
}

- (void)_setAccountValue:(id)a3 forKey:(__CFString *)a4 inDictionary:(id *)a5 ifDifferentInDictionary:(id)a6
{
  v12 = a3;
  v9 = a6;
  v10 = [v9 objectForKey:a4];
  if (!v10 || ([v12 isEqualToString:v10] & 1) == 0)
  {
    v11 = *a5;
    if (!*a5)
    {
      v11 = [v9 mutableCopy];
      *a5 = v11;
    }

    [v11 setObject:v12 forKey:a4];
  }
}

- (id)mailboxName
{
  v2 = [(IMAPService *)self serviceAccount];
  v3 = [v2 username];

  return v3;
}

- (BOOL)isIMAPServerTrustedIP:(id)a3 af:(int)a4 key:(id)a5 whitelistExist:(BOOL *)a6
{
  v48 = a3;
  v49 = a5;
  v50 = [(VVService *)self carrierParameterValueForKey:?];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v50)
    {
      v37 = 0;
      goto LABEL_59;
    }

    log = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v59 = [(VVService *)self getServiceObjLogPrefix];
      v60 = 2080;
      v61 = " ";
      v62 = 2112;
      *v63 = objc_opt_class();
      *&v63[8] = 2112;
      *&v63[10] = v50;
      *&v63[18] = 2112;
      *&v63[20] = v49;
      v36 = *v63;
      _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#E %s%sInvalid type <%@ %@> for bundle key %@", buf, 0x34u);
    }

LABEL_58:
    v37 = 0;

    goto LABEL_59;
  }

  log = v50;
  if (![log count])
  {
    goto LABEL_58;
  }

  if (a4 != 2 && a4 != 30)
  {
    v38 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_10009E060([(VVService *)self getServiceObjLogPrefix], buf);
    }

    goto LABEL_58;
  }

  if (!inet_pton(a4, [v48 UTF8String], v57))
  {
    v39 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v41 = [(VVService *)self getServiceObjLogPrefix];
      v42 = @"Unknown";
      if (a4 == 30)
      {
        v42 = @"IPv6";
      }

      *buf = 136315906;
      v59 = v41;
      v60 = 2080;
      v61 = " ";
      v62 = 2112;
      if (a4 == 2)
      {
        v42 = @"IPv4";
      }

      *v63 = v42;
      *&v63[8] = 2112;
      *&v63[10] = v48;
      v43 = v42;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "#E %s%sInvalid %@ server address '%@'", buf, 0x2Au);
    }

    goto LABEL_58;
  }

  v45 = a6;
  v46 = a4;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = log;
  v10 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
  if (!v10)
  {
LABEL_51:

    v37 = 0;
    goto LABEL_52;
  }

  v11 = 0;
  v12 = *v54;
  v13 = @"IPv6";
  if (a4 != 30)
  {
    v13 = @"Unknown";
  }

  if (a4 == 2)
  {
    v13 = @"IPv4";
  }

  v44 = v13;
  for (i = *v54; ; i = *v54)
  {
    if (i != v12)
    {
      objc_enumerationMutation(obj);
    }

    v15 = *(*(&v53 + 1) + 8 * v11);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    v16 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v24 = [(VVService *)self getServiceObjLogPrefix];
      v25 = objc_opt_class();
      *buf = 136316162;
      v59 = v24;
      v60 = 2080;
      v61 = " ";
      v62 = 2112;
      *v63 = v25;
      *&v63[8] = 2112;
      *&v63[10] = v15;
      *&v63[18] = 2112;
      *&v63[20] = v49;
      v26 = v25;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "#E %s%sInvalid item <%@ %@> for bundle key %@", buf, 0x34u);
    }

LABEL_37:

    if (++v11 >= v10)
    {
      v10 = [obj countByEnumeratingWithState:&v53 objects:v66 count:16];
      if (!v10)
      {
        goto LABEL_51;
      }

      v11 = 0;
    }
  }

  v16 = v15;
  if (![v16 length])
  {
    goto LABEL_37;
  }

  v17 = [v16 componentsSeparatedByString:@"/"];
  if ([v17 count] != 2)
  {
    v27 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v32 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136315906;
      v59 = v32;
      v60 = 2080;
      v61 = " ";
      v62 = 2112;
      *v63 = v16;
      *&v63[8] = 2112;
      *&v63[10] = v49;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "#E %s%sInvalid routing format '%@' for bundle key %@", buf, 0x2Au);
    }

    goto LABEL_37;
  }

  v18 = [v17 objectAtIndex:0];
  v19 = [v17 objectAtIndex:1];
  v20 = v18;
  if (!inet_pton(v46, [v18 UTF8String], v52))
  {
    v28 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136316418;
      v59 = v29;
      v60 = 2080;
      v61 = " ";
      v62 = 2112;
      *v63 = v44;
      *&v63[8] = 2112;
      *&v63[10] = v18;
      *&v63[18] = 2112;
      *&v63[20] = v16;
      v64 = 2112;
      v65 = v49;
      v30 = v44;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "#E %s%sInvalid %@ address '%@' <%@> for bundle key %@", buf, 0x3Eu);
    }

    goto LABEL_35;
  }

  v21 = [v19 longLongValue];
  v22 = v21;
  if (!v21)
  {
    v28 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v33 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136316162;
      v59 = v33;
      v60 = 2080;
      v61 = " ";
      v62 = 1024;
      *v63 = 0;
      *&v63[4] = 2112;
      *&v63[6] = v16;
      *&v63[14] = 2112;
      *&v63[16] = v49;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "#E %s%sInvalid routing prefix %u <%@> for bundle key %@", buf, 0x30u);
    }

LABEL_35:

    goto LABEL_36;
  }

  *v45 = 1;
  if (v46 == 2)
  {
    if (v21 >= 0x21)
    {
      v23 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v34 = [(VVService *)self getServiceObjLogPrefix];
        *buf = 136315906;
        v59 = v34;
        v60 = 2080;
        v61 = " ";
        v62 = 1024;
        *v63 = v22;
        *&v63[4] = 2112;
        *&v63[6] = v16;
        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#E %s%sInvalid IPv4 routing prefix %u <%@>", buf, 0x26u);
      }

      LOBYTE(v22) = 32;
    }

    if (!(bswap32(*v57 ^ *v52) >> -v22))
    {
      goto LABEL_60;
    }

    goto LABEL_36;
  }

  if (v21 >= 0x81)
  {
    v31 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v35 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136315906;
      v59 = v35;
      v60 = 2080;
      v61 = " ";
      v62 = 1024;
      *v63 = v22;
      *&v63[4] = 2112;
      *&v63[6] = v16;
      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "#E %s%sInvalid IPv6 routing prefix %u <%@>", buf, 0x26u);
    }

    LOBYTE(v22) = 0x80;
  }

  if (!sub_10006E170(v57, v52, v22))
  {
LABEL_36:

    goto LABEL_37;
  }

LABEL_60:

  v37 = 1;
LABEL_52:

LABEL_59:
  return v37;
}

- (BOOL)isIMAPServerTrustedFQDN:(id)a3 key:(id)a4 whitelistExist:(BOOL *)a5
{
  v26 = a3;
  v25 = a4;
  v8 = [(VVService *)self carrierParameterValueForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v8;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v27 objects:v41 count:16];
    if (v10)
    {
      v11 = *v28;
      while (2)
      {
        v12 = 0;
        do
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v27 + 1) + 8 * v12);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
            if ([v14 length])
            {
              *a5 = 1;
              if (![v14 caseInsensitiveCompare:v26])
              {
                goto LABEL_25;
              }

              if ([v14 characterAtIndex:0]== 42)
              {
                v15 = [v14 substringFromIndex:1];
                v16 = [v15 lowercaseString];

                v17 = [v26 lowercaseString];
                if ([v16 length] && (objc_msgSend(v17, "hasSuffix:", v16) & 1) != 0)
                {

LABEL_25:
                  v21 = 1;
                  goto LABEL_26;
                }
              }
            }
          }

          else
          {
            v14 = sub_100026660(self->logger.__ptr_);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              v18 = [(VVService *)self getServiceObjLogPrefix];
              v19 = objc_opt_class();
              *buf = 136316162;
              v32 = v18;
              v33 = 2080;
              v34 = " ";
              v35 = 2112;
              v36 = v19;
              v37 = 2112;
              v38 = v13;
              v39 = 2112;
              v40 = v25;
              v20 = v19;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "#E %s%sInvalid item <%@ %@> for bundle key %@", buf, 0x34u);
            }
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v27 objects:v41 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    if (!v8)
    {
      v21 = 0;
      goto LABEL_27;
    }

    v24 = v8;
    v9 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v32 = [(VVService *)self getServiceObjLogPrefix];
      v33 = 2080;
      v34 = " ";
      v35 = 2112;
      v36 = objc_opt_class();
      v37 = 2112;
      v38 = v8;
      v39 = 2112;
      v40 = v25;
      v23 = v36;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "#E %s%sInvalid type <%@ %@> for bundle key %@", buf, 0x34u);
    }
  }

  v21 = 0;
LABEL_26:

  v8 = v24;
LABEL_27:

  return v21;
}

- (BOOL)isIMAPServerTrusted:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v26 = 0;
    if ([(IMAPService *)self isIMAPServerTrustedFQDN:v5 key:@"FQDN" whitelistExist:&v26])
    {
      v6 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(VVService *)self getServiceObjLogPrefix];
        v8 = v5;
        v9 = [v5 UTF8String];
        *buf = 136315650;
        v28 = v7;
        v29 = 2080;
        v30 = " ";
        v31 = 2080;
        v32 = v9;
        v10 = "#I %s%sHostname '%s' is whitelisted by FQDN rules";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v10, buf, 0x20u);
      }
    }

    else if ([(IMAPService *)self isIMAPServerTrustedIP:v5 af:2 key:@"IPv4" whitelistExist:&v26])
    {
      v6 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(VVService *)self getServiceObjLogPrefix];
        v13 = v5;
        v14 = [v5 UTF8String];
        *buf = 136315650;
        v28 = v12;
        v29 = 2080;
        v30 = " ";
        v31 = 2080;
        v32 = v14;
        v10 = "#I %s%sIPv4 server '%s' is whitelisted";
        goto LABEL_19;
      }
    }

    else if ([(IMAPService *)self isIMAPServerTrustedIP:v5 af:30 key:@"IPv6" whitelistExist:&v26])
    {
      v6 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(VVService *)self getServiceObjLogPrefix];
        v16 = v5;
        v17 = [v5 UTF8String];
        *buf = 136315650;
        v28 = v15;
        v29 = 2080;
        v30 = " ";
        v31 = 2080;
        v32 = v17;
        v10 = "#I %s%sIPv6 server '%s' is whitelisted";
        goto LABEL_19;
      }
    }

    else
    {
      ptr = self->logger.__ptr_;
      if (v26 == 1)
      {
        v6 = sub_100026660(ptr);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(VVService *)self getServiceObjLogPrefix];
          v20 = v5;
          v21 = [v5 UTF8String];
          *buf = 136315650;
          v28 = v19;
          v29 = 2080;
          v30 = " ";
          v31 = 2080;
          v32 = v21;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%sHostname '%s' is not whitelisted", buf, 0x20u);
        }

        v11 = 0;
        goto LABEL_21;
      }

      v6 = sub_100026660(ptr);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(VVService *)self getServiceObjLogPrefix];
        v23 = v5;
        v24 = [v5 UTF8String];
        *buf = 136315650;
        v28 = v22;
        v29 = 2080;
        v30 = " ";
        v31 = 2080;
        v32 = v24;
        v10 = "#I %s%sNo whitelist rules, allow any server address. Hostname '%s'";
        goto LABEL_19;
      }
    }

    v11 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v11 = 0;
LABEL_22:

  return v11;
}

- (void)_setServerInfoFromInterpretedNotification:(id)a3
{
  v4 = a3;
  [(IMAPService *)self mf_lock];
  v5 = kVMNotificationHostKey;
  v6 = [v4 objectForKey:kVMNotificationHostKey];
  v7 = kVMNotificationLoginKey;
  v8 = [v4 objectForKey:kVMNotificationLoginKey];
  v9 = kVMNotificationPortKey;
  v69 = [v4 objectForKey:kVMNotificationPortKey];
  v68 = [v4 objectForKey:kVMNotificationPasswordKey];
  v67 = v5;
  v10 = [(IMAPService *)self isIMAPServerTrusted:v6];
  v11 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(VVService *)self getServiceObjLogPrefix];
    imapServiceFlags = self->_imapServiceFlags;
    v14 = "";
    *buf = 136317186;
    if (!v68)
    {
      v14 = "not ";
    }

    v74 = v12;
    v75 = 2080;
    v76 = " ";
    v77 = 2112;
    v78 = v4;
    v79 = 1024;
    v80 = v10;
    v81 = 2112;
    v82 = v6;
    v83 = 2112;
    v84 = v8;
    v85 = 2112;
    v86 = v69;
    v87 = 2080;
    v88 = v14;
    v89 = 1024;
    v90 = (*&imapServiceFlags >> 6) & 1;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s_setServerInfoFromInterpretedNotification: %@, trusted:%d, host:%@, userName:%@, port:%@, passwd:%spresent, _imapServiceFlags.initializing:%d", buf, 0x54u);
  }

  v65 = v9;
  v66 = v7;

  if (v6 && v8 && v69)
  {
    if (v68)
    {
      if (v10)
      {
LABEL_10:
        v15 = [(IMAPService *)self serviceAccount];
        if (v15)
        {
          v63 = [NSDictionary dictionaryWithObjectsAndKeys:v6, MailAccountHostname, v8, MFMailAccountUsername, v69, MailAccountPortNumber, 0];
          v16 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [(VVService *)self getServiceObjLogPrefix];
            *buf = 136315650;
            v74 = v17;
            v75 = 2080;
            v76 = " ";
            v77 = 2112;
            v78 = v63;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sUpdating IMAP Account with properties: %@", buf, 0x20u);
          }

          [v15 setHostname:v6];
          [v15 setPortNumber:{objc_msgSend(v69, "intValue")}];
          [v15 setUsername:v8];
          [v15 setPassword:v68];
        }

        else
        {
          v63 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v6, MailAccountHostname, v8, MFMailAccountUsername, v69, MailAccountPortNumber, 0];
          v58 = [v4 objectForKey:@"IMAPNotificationPathPrefix"];
          if (v58)
          {
            [v63 setObject:v58 forKeyedSubscript:IMAPServerPathPrefix];
          }

          v22 = [IMAPServiceAccount alloc];
          v23 = [(VVService *)self getServiceObjLogPrefix];
          v57 = [(VVService *)self serviceLabelID];
          v61 = [(VVService *)self accountDir];
          v60 = [(VVService *)self serviceMDN];
          v59 = [(VVService *)self serviceICC];
          v24 = [(VVService *)self contextInfo];
          v25 = [v24 uuid];
          v26 = [v25 UUIDString];
          v27 = [(IMAPServiceAccount *)v22 initWithProperties:v63 mambaID:v23 label:v57 accountDir:v61 phoneNumber:v60 isoCountryCode:v59 networkIdentifier:v26];
          [(IMAPService *)self setServiceAccount:v27];

          v28 = [(VVService *)self carrierParameterValueForKey:@"kIMAPLongLifeMessagesCache"];
          LODWORD(v27) = [v28 BOOLValue];

          if (v27)
          {
            v29 = [(IMAPService *)self serviceAccount];
            [v29 setLongLifeMessagesCache];
          }

          v30 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [(VVService *)self getServiceObjLogPrefix];
            v32 = [(IMAPService *)self serviceAccount];
            *buf = 136315650;
            v74 = v31;
            v75 = 2080;
            v76 = " ";
            v77 = 2112;
            v78 = v32;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%s_setServerInfoFromInterpretedNotification: serviceAccount created: %@", buf, 0x20u);
          }

          if ((*&self->_imapServiceFlags & 0x40) != 0)
          {
            if (v68)
            {
              [(VVService *)self setPassword:?];
            }

            else
            {
              v68 = [(VVService *)self passwordIgnoringSubscription:1];
              if (!v68)
              {
                [(IMAPService *)self setServiceAccount:0];
                v33 = sub_100026660(self->logger.__ptr_);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  v34 = [(VVService *)self getServiceObjLogPrefix];
                  *buf = 136315394;
                  v74 = v34;
                  v75 = 2080;
                  v76 = " ";
                  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%s_setServerInfoFromInterpretedNotification: serviceAccount destroyed because of no passwd", buf, 0x16u);
                }

                v68 = 0;
              }
            }
          }

          v35 = [(IMAPService *)self serviceAccount];
          v36 = v35 == 0;

          if (v36)
          {
            v40 = sub_100026660(self->logger.__ptr_);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              sub_10009E0A4([(VVService *)self getServiceObjLogPrefix], buf);
            }

            v15 = 0;
          }

          else
          {
            v15 = [(IMAPService *)self serviceAccount];
            [v15 setService:self];
            v37 = [(IMAPService *)self _messageChangeQueue];
            [v15 setInvocationQueue:v37];

            v38 = [(VVService *)self carrierParameterValueForKey:@"IdleConnectionTimeout"];
            [v15 setConnectionIdleTimeout:{objc_msgSend(v38, "intValue") * 60.0}];

            [v15 setPassword:v68];
            v39 = [(VVService *)self carrierParameterValueForKey:@"UsesSSL"];
            [v15 setUsesSSL:{objc_msgSend(v39, "BOOLValue")}];

            v40 = [(VVService *)self carrierParameterValueForKey:@"AuthenticationScheme"];
            if (v40)
            {
              v41 = [MFAuthScheme schemeWithName:v40];
              if (v41)
              {
                [v15 setPreferredAuthScheme:v41];
              }
            }

            v42 = [v15 accountStore];
            v43 = [v42 getMailboxUsage];

            v44 = sub_100026660(self->logger.__ptr_);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
            {
              v45 = [(VVService *)self getServiceObjLogPrefix];
              *buf = 136315650;
              v74 = v45;
              v75 = 2080;
              v76 = " ";
              v77 = 1024;
              LODWORD(v78) = v43;
              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s%s_setServerInfoFromInterpretedNotification: mailbox usage %u", buf, 0x1Cu);
            }

            [(IMAPService *)self setMailboxUsage:v43];
            if ([(VVService *)self isSubscribed])
            {
              v46 = +[NSNotificationCenter defaultCenter];
              [v46 addObserver:self selector:"handleIMAPAccountOfflineOperationQueuedNotification:" name:IMAPAccountOfflineOperationQueuedNotification object:v15];

              [(IMAPService *)self _cancelBeacon];
              [(IMAPService *)self _setBeaconCount:0];
              [(IMAPService *)self _resetBeaconTemporaryRetryCount];
            }
          }
        }

        v47 = [v15 library];
        v48 = v47;
        if (!self->_attachmentManager && v47)
        {
          v49 = [[MFAttachmentLibraryManager alloc] initWithPrimaryLibrary:v47];
          attachmentManager = self->_attachmentManager;
          self->_attachmentManager = v49;
        }

        if ((*&self->_imapServiceFlags & 0x40) == 0)
        {
          v62 = [v15 username];
          if (-[VVService isSubscribed](self, "isSubscribed") && [v8 length] && (!v62 || (objc_msgSend(v62, "isEqualToString:", v8) & 1) == 0))
          {
            [(IMAPService *)self synchronize:1 reason:@"Updating IMAP Account"];
          }

          v64 = [(IMAPService *)self _parameters];
          v51 = [v64 objectForKey:@"AccountSettings"];
          if (v51)
          {
            v52 = 0;
          }

          else
          {
            v52 = objc_alloc_init(NSMutableDictionary);
          }

          v72 = v52;
          [(IMAPService *)self _setAccountValue:v6 forKey:v67 inDictionary:&v72 ifDifferentInDictionary:v51];
          v53 = v72;

          v71 = v53;
          [(IMAPService *)self _setAccountValue:v8 forKey:v66 inDictionary:&v71 ifDifferentInDictionary:v51];
          v54 = v71;

          v70 = v54;
          [(IMAPService *)self _setAccountValue:v69 forKey:v65 inDictionary:&v70 ifDifferentInDictionary:v51];
          v55 = v70;

          v56 = [(VVService *)self password];
          LOBYTE(v54) = [v68 isEqualToString:v56];

          if ((v54 & 1) == 0)
          {
            [(VVService *)self setPassword:v68];
          }

          if (v55)
          {
            [v64 setValue:v55 forKey:@"AccountSettings"];
            [(IMAPService *)self _saveParameters];
          }
        }

        goto LABEL_63;
      }
    }

    else if (v10 & ((*&self->_imapServiceFlags & 0x40) >> 6))
    {
      goto LABEL_10;
    }
  }

  v18 = [(IMAPService *)self serviceAccount];
  v19 = v18 == 0;

  if (v19)
  {
    v20 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136315394;
      v74 = v21;
      v75 = 2080;
      v76 = " ";
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sWe dont have an account and we didnt get password in the server info - requesting new server info", buf, 0x16u);
    }

    [(IMAPService *)self _startBeacon];
  }

LABEL_63:
  [(IMAPService *)self mf_unlock];
}

- (void)setOnline:(BOOL)a3
{
  if ((*&self->super._serviceFlags & 1) == a3)
  {
    v3 = a3;
    v6.receiver = self;
    v6.super_class = IMAPService;
    [(VVService *)&v6 setOnline:?];
    v5 = [(IMAPService *)self serviceAccount];
    [v5 setIsOffline:!v3];

    if (v3)
    {
      [(IMAPService *)self synchronize:0 reason:@"SetOnline"];
    }
  }
}

- (void)scheduleReleaseAllAccountConnections:(id)a3 reason:(id)a4 forService:(id)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    objc_initWeak(&location, a5);
    v10 = self->_activityController;
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007045C;
    block[3] = &unk_1000EF210;
    objc_copyWeak(&v17, &location);
    v14 = v8;
    v15 = v9;
    v16 = v10;
    v12 = v10;
    dispatch_async(v11, block);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

- (void)handleDataContextDeactivated
{
  v3 = [(IMAPService *)self serviceAccount];
  [IMAPService scheduleReleaseAllAccountConnections:"scheduleReleaseAllAccountConnections:reason:forService:" reason:? forService:?];
}

- (void)handleIMAPAccountOfflineOperationQueuedNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = [(VVService *)self getServiceObjLogPrefix];
    v9 = 2080;
    v10 = " ";
    v11 = 2112;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = v4;
    v6 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling <%@>", &v7, 0x2Au);
  }

  [(IMAPService *)self setSyncRequired:1];
}

- (void)setSmscAddress:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IMAPService;
  [(VVService *)&v16 setSmscAddress:v4];
  if (v4)
  {
    v5 = [v4 length] != 0;
  }

  else
  {
    v5 = 0;
  }

  [(IMAPService *)self mf_lock];
  imapServiceFlags = self->_imapServiceFlags;
  if (v5)
  {
    v7 = 512;
  }

  else
  {
    v7 = 0;
  }

  *&self->_imapServiceFlags = imapServiceFlags & 0xFDFF | v7;
  [(IMAPService *)self mf_unlock];
  v8 = [(VVService *)self verifier];
  [v8 storeValue:v5 forCheckpointKey:@"SMSCAvailable"];

  v9 = sub_100026660(self->logger.__ptr_);
  v10 = v5 ^ ((imapServiceFlags & 0x200) >> 9);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(VVService *)self getServiceObjLogPrefix];
    v12 = [(VVService *)self contextInfo];
    v13 = v12;
    v14 = @"not changed";
    *buf = 136316162;
    v18 = v11;
    if (v10)
    {
      v14 = @"changed";
    }

    v15 = @"not available";
    v19 = 2080;
    v20 = " ";
    v21 = 2112;
    if (v5)
    {
      v15 = @"available";
    }

    v22 = v15;
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sSMSC address is %@, %@, subscription %@", buf, 0x34u);
  }

  if (v5 && v10)
  {
    [(IMAPService *)self _startBeacon];
  }
}

- (id)getParameters
{
  [(IMAPService *)self mf_lock];
  v3 = [(IMAPService *)self _parameters];
  [(IMAPService *)self mf_unlock];

  return v3;
}

- (void)_carrierBundleChanged
{
  [(IMAPService *)self mf_lock];
  v4.receiver = self;
  v4.super_class = IMAPService;
  [(VVService *)&v4 _carrierBundleChanged];
  [(IMAPService *)self _setBeaconCount:0];
  [(IMAPService *)self _resetBeaconTemporaryRetryCount];
  v3 = [(IMAPService *)self _parameters];
  [v3 setObject:&__kCFBooleanTrue forKey:@"BeaconRefresh"];

  [(IMAPService *)self _saveParameters];
  [(IMAPService *)self _startBeacon];
  [(IMAPService *)self mf_unlock];
}

- (void)refreshIfNeeded
{
  [(IMAPService *)self mf_lock];
  [(IMAPService *)self _setBeaconCount:0];
  [(IMAPService *)self _resetBeaconTemporaryRetryCount];
  v3 = [(VVService *)self carrierParameterValueForKey:@"SendBeaconOnBootup"];
  v4 = v3;
  if (v3 && [v3 BOOLValue])
  {
    v5 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = [(VVService *)self getServiceObjLogPrefix];
      v9 = 2080;
      v10 = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sRefresh requested", &v7, 0x16u);
    }

    v6 = [(IMAPService *)self _parameters];
    [v6 setObject:&__kCFBooleanTrue forKey:@"BeaconRefresh"];

    [(IMAPService *)self _saveParameters];
  }

  [(IMAPService *)self mf_unlock];
}

- (void)resendBeacon
{
  [(IMAPService *)self mf_lock];
  [(IMAPService *)self _setBeaconCount:0];
  [(IMAPService *)self _resetBeaconTemporaryRetryCount];
  v3 = [(IMAPService *)self _parameters];
  [v3 setObject:&__kCFBooleanTrue forKey:@"BeaconRefresh"];

  [(IMAPService *)self _saveParameters];
  [(IMAPService *)self _cancelBeacon];
  [(IMAPService *)self _startBeacon];

  [(IMAPService *)self mf_unlock];
}

- (unsigned)_beaconCount
{
  [(IMAPService *)self mf_lock];
  v3 = [(IMAPService *)self _parameters];
  v4 = [v3 objectForKey:@"BeaconCount"];
  v5 = [v4 intValue];

  [(IMAPService *)self mf_unlock];
  return v5;
}

- (void)_cancelBeacon
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = [(VVService *)self getServiceObjLogPrefix];
    v8 = 2080;
    v9 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sUnregistering beacon retry activity in cancelBeacon", &v6, 0x16u);
  }

  [(IMAPService *)self mf_lock];
  v4 = [(IMAPService *)self beaconRetryActivityIdentifier];
  v5 = v4;
  xpc_activity_unregister([v4 UTF8String]);

  self->_beaconRetryRegistered = 0;
  self->_nextBeaconTime = 0.0;
  [(IMAPService *)self mf_unlock];
}

- (void)_doneBeacon
{
  v3 = [(IMAPService *)self _parameters];
  [v3 removeObjectForKey:@"BeaconRefresh"];

  [(IMAPService *)self _saveParameters];
}

- (void)kill
{
  v3.receiver = self;
  v3.super_class = IMAPService;
  [(VVService *)&v3 kill];
  [(IMAPService *)self _cancelBeacon];
}

- (void)_startBeacon
{
  if ([(VVService *)self isSMSReady])
  {
    v3 = [(VVService *)self carrierParameterValueForKey:@"BeaconAddress"];
    if ([v3 length])
    {
      [(IMAPService *)self mf_lock];
      Current = CFAbsoluteTimeGetCurrent();
      nextBeaconTime = self->_nextBeaconTime;
      v6 = [(IMAPService *)self serviceAccount];
      v7 = [(IMAPService *)self isBeaconActive];
      v8 = [(IMAPService *)self _parameters];
      v9 = [v8 objectForKey:@"BeaconRefresh"];
      v10 = Current - nextBeaconTime;

      v11 = v10 <= (2 * XPC_ACTIVITY_INTERVAL_1_MIN) || self->_nextBeaconTime == 0.0;
      v14 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(VVService *)self getServiceObjLogPrefix];
        v16 = self->_nextBeaconTime;
        v17 = (*&self->_imapServiceFlags >> 3) & 7;
        v18 = "false";
        *v48 = 136317186;
        if (v11)
        {
          v19 = "true";
        }

        else
        {
          v19 = "false";
        }

        *&v48[4] = v15;
        *&v48[12] = 2080;
        *&v48[14] = " ";
        if (v9)
        {
          v18 = "true";
        }

        *&v48[22] = 1024;
        *v49 = v7;
        *&v49[4] = 2048;
        *&v49[6] = v10;
        v50 = 2048;
        v51 = v16;
        v52 = 1024;
        v53 = v17;
        v54 = 2112;
        v55 = v6;
        v56 = 2080;
        v57 = v19;
        v58 = 2080;
        v59 = v18;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sCurrent beacon state - activeBeacon: %d, delta: %f, nextBeaconTime: %f, accountState: %d for account %@, time to: %s, refresh requested: %s", v48, 0x54u);
      }

      if (v11 && ((v20 = (*&self->_imapServiceFlags >> 3) & 7) == 0 || v9 || (v20 != 2 ? (v20 == 3 ? (v21 = v6 == 0) : (v21 = 0)) : (v21 = v6 == 0), v21 ? (v22 = 0) : (v22 = 1), ((v22 | v7) & 1) == 0)))
      {
        v26 = [(IMAPService *)self _beaconCount:*v48];
        v27 = [(VVService *)self carrierParameterValueForKey:@"MaxBeaconCount"];
        LOBYTE(v26) = v26 < [v27 intValue];

        if (v26)
        {
          if (*&self->_imapServiceFlags & 0x200) != 0 || (-[VVService carrierParameterValueForKey:](self, "carrierParameterValueForKey:", @"BypassSMSCAvailabilityCheck"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 BOOLValue], v28, (v29))
          {
            v30 = [(VVService *)self carrierParameterValueForKey:@"BeaconServiceCenter"];
            if (![v30 length])
            {

              v30 = 0;
            }

            v23 = @"BeaconTimeout";
            v31 = [VMCarrierStateRequest alloc];
            v32 = [(VVService *)self contextInfo];
            v33 = [v32 context];
            v34 = [(VMCarrierStateRequest *)v31 initWithSubscription:v33 destination:v3 serviceCenter:v30];

            [(VVService *)self incrementAttemptCountForStateRequest:v34];
            v35 = [(VVService *)self stateRequestController];
            [v35 addRequest:v34];

            v36 = sub_100026660(self->logger.__ptr_);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = [(VVService *)self getServiceObjLogPrefix];
              v38 = [(VMCarrierStateRequest *)v34 debugDescription];
              *v48 = 136315650;
              *&v48[4] = v37;
              *&v48[12] = 2080;
              *&v48[14] = " ";
              *&v48[22] = 2112;
              *v49 = v38;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s%sWe're registered and activated and SMS is available stateRequest: %@", v48, 0x20u);
            }
          }

          else
          {
            v30 = sub_100026660(self->logger.__ptr_);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v45 = [(VVService *)self getServiceObjLogPrefix];
              *v48 = 136315394;
              *&v48[4] = v45;
              *&v48[12] = 2080;
              *&v48[14] = " ";
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%sSMSC address is not yet available.. holding off", v48, 0x16u);
            }

            v23 = 0;
          }

          if ([(__CFString *)v23 length])
          {
            v46 = [(VVService *)self carrierParameterValueForKey:v23];
            v47 = [v46 intValue];

            if (!self->_beaconRetryRegistered)
            {
              [(IMAPService *)self _scheduleBeaconRetry:(60 * v47)];
            }

            self->_nextBeaconTime = CFAbsoluteTimeGetCurrent() + (60 * v47);
          }
        }

        else
        {
          v39 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [(VVService *)self getServiceObjLogPrefix];
            *v48 = 136315394;
            *&v48[4] = v40;
            *&v48[12] = 2080;
            *&v48[14] = " ";
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sBeacons are maxed out; stopping.", v48, 0x16u);
          }

          v41 = [(VVService *)self contextInfo];
          v42 = [v41 slotID];

          v23 = [(VVService *)self serviceMCC];
          v43 = [(VVService *)self serviceMNC];
          v44 = +[VMAWDReporter sharedInstance];
          [v44 reportServiceBeaconMaxedOut:v42 mcc:v23 mnc:v43];

          [(IMAPService *)self _cancelBeacon];
        }
      }

      else
      {
        v23 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(VVService *)self getServiceObjLogPrefix];
          v25 = [(VVService *)self contextInfo];
          *v48 = 136315650;
          *&v48[4] = v24;
          *&v48[12] = 2080;
          *&v48[14] = " ";
          *&v48[22] = 2112;
          *v49 = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sDeferring STATE request for subscription %@.", v48, 0x20u);
        }
      }

      [(IMAPService *)self mf_unlock];
    }

    else
    {
      v6 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v48 = 136315394;
        *&v48[4] = [(VVService *)self getServiceObjLogPrefix];
        *&v48[12] = 2080;
        *&v48[14] = " ";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sI'd send out a beacon, but I don't have a place to send it.  Oh well.", v48, 0x16u);
      }
    }
  }

  else
  {
    v3 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(VVService *)self getServiceObjLogPrefix];
      v13 = [(VVService *)self contextInfo];
      *v48 = 136315650;
      *&v48[4] = v12;
      *&v48[12] = 2080;
      *&v48[14] = " ";
      *&v48[22] = 2112;
      *v49 = v13;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sDeferring STATE request until SMS is ready for subscription %@.", v48, 0x20u);
    }
  }
}

- (void)_incrementBeaconCount
{
  [(IMAPService *)self _setBeaconCount:[(IMAPService *)self _beaconCount]+ 1];
  v3 = [(VVService *)self verifier];
  [v3 storeValue:1 forCheckpointKey:@"BeaconSent"];

  if ([(IMAPService *)self _beaconCount]>= 2)
  {
    v4 = [(VVService *)self verifier];
    [v4 storeValue:0 forCheckpointKey:@"BeaconResponseReceived"];
  }
}

- (void)_scheduleBeaconRetry:(unint64_t)a3
{
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VVService *)self getServiceObjLogPrefix];
    v7 = [NSDate dateWithTimeIntervalSinceNow:a3];
    *buf = 136315650;
    v15 = v6;
    v16 = 2080;
    v17 = " ";
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sScheduling next beacon for %@", buf, 0x20u);
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v8, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_int64(v8, XPC_ACTIVITY_DELAY, a3);
  xpc_dictionary_set_int64(v8, XPC_ACTIVITY_INTERVAL, a3);
  xpc_dictionary_set_int64(v8, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_MIN);
  xpc_dictionary_set_string(v8, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  objc_initWeak(buf, self);
  v9 = [(IMAPService *)self beaconRetryActivityIdentifier];
  v10 = v9;
  v11 = [v9 UTF8String];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100071EC4;
  handler[3] = &unk_1000EEB30;
  objc_copyWeak(&v13, buf);
  xpc_activity_register(v11, v8, handler);

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  self->_beaconRetryRegistered = 1;
}

- (void)_authenticationFailed
{
  v3 = [(VVService *)self carrierParameterValueForKey:@"SendBeaconOnLoginFailure"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    [(IMAPService *)self mf_lock];
    v5 = [(IMAPService *)self serviceAccount];
    if (v5 && (*&self->_imapServiceFlags & 0x30) == 0x10)
    {
      v6 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = [(VVService *)self getServiceObjLogPrefix];
        v12 = 2080;
        v13 = " ";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%sAuthentication failed; deleting account", buf, 0x16u);
      }

      v7 = +[NSNotificationCenter defaultCenter];
      [v7 removeObserver:self name:IMAPAccountOfflineOperationQueuedNotification object:v5];

      [(IMAPService *)self setServiceAccount:0];
      v8 = [(VVService *)self serialDispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000722F4;
      block[3] = &unk_1000EDEC8;
      block[4] = self;
      dispatch_async(v8, block);

      [(VVService *)self cancelAutomatedTrashCompaction];
      [(IMAPService *)self _startBeacon];
    }

    [(IMAPService *)self mf_unlock];
  }
}

- (void)imapTransactionEnded
{
  v3 = [(VVService *)self carrierParameterValueForKey:@"kIMAPLongLifeMessagesCache"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
  {
    [(IMAPService *)self mf_lock];
    v5 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = [(VVService *)self getServiceObjLogPrefix];
      v9 = 2080;
      v10 = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%simapTransactionEnded...", &v7, 0x16u);
    }

    v6 = [(IMAPService *)self serviceAccount];
    [v6 flushIMAPServiceLibraryCache];
    [(IMAPService *)self mf_unlock];
  }
}

- (void)_setAccountState:(int64_t)a3
{
  [(IMAPService *)self mf_lock];
  imapServiceFlags = self->_imapServiceFlags;
  if (((imapServiceFlags >> 3) & 7) == a3)
  {
    if (!a3 && (imapServiceFlags & 0x40) != 0)
    {
      [(IMAPService *)self _startBeacon];
    }

    goto LABEL_31;
  }

  v6 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VVService *)self getServiceObjLogPrefix];
    if ((a3 - 1) > 2)
    {
      v8 = @"Unknown";
    }

    else
    {
      v8 = off_1000EF368[a3 - 1];
    }

    v9 = [(VVService *)self contextInfo];
    v18 = 136315906;
    v19 = v7;
    v20 = 2080;
    v21 = " ";
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sIMAP Service STATE = %@, subscription %@", &v18, 0x2Au);
  }

  v10 = self->_imapServiceFlags;
  *&self->_imapServiceFlags = v10 & 0xFFC7 | (8 * (a3 & 7));
  v11 = +[VMAWDReporter sharedInstance];
  [v11 reportServiceAccountStateChanged:a3];

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      [(IMAPService *)self _setActiveGreetingType:3];
      [(IMAPService *)self _setGreetingCached:0];
      [(IMAPService *)self setSubscribed:1];
      [(IMAPService *)self setMailboxRequiresSetup:1];
    }

    else if (a3 == 3)
    {
      [(IMAPService *)self setSubscribed:1];
      [(IMAPService *)self setMailboxRequiresSetup:0];
    }

    goto LABEL_20;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    if ((v10 & 0x30) == 0x10)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      imapParameters = self->_imapParameters;
      self->_imapParameters = v12;
    }

LABEL_15:
    [(IMAPService *)self _setBeaconCount:0];
    [(IMAPService *)self _resetBeaconTemporaryRetryCount];
    [(IMAPService *)self setSubscribed:0];
  }

LABEL_20:
  if ((*&self->_imapServiceFlags & 0x40) == 0)
  {
    v14 = [(IMAPService *)self _parameters];
    v15 = qword_1000EF348[a3];
    if (a3)
    {
      [v14 setObject:v15 forKey:@"AccountState"];
    }

    else
    {
      [v14 removeObjectForKey:@"AccountState"];
    }

    [(IMAPService *)self _saveParameters];
  }

  if (!a3)
  {
    goto LABEL_29;
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    [(IMAPService *)self _cancelBeacon];
    goto LABEL_31;
  }

  v16 = [(IMAPService *)self serviceAccount];
  v17 = v16 == 0;

  if (v17)
  {
LABEL_29:
    [(IMAPService *)self _startBeacon];
  }

  else
  {
    [(IMAPService *)self _cancelBeacon];
    [(IMAPService *)self _setBeaconCount:0];
  }

LABEL_31:
  [(IMAPService *)self mf_unlock];
}

- (void)_inferActiveState
{
  [(IMAPService *)self mf_lock];
  if ((*&self->_imapServiceFlags & 0x30) != 0x10)
  {
    [(IMAPService *)self _setAccountState:0];
  }

  [(IMAPService *)self mf_unlock];
}

- (void)_setMessageWaitingFromNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:kVMNotificationMWIKey];
  if ([v5 length])
  {
    v6 = [v5 intValue];
    [(VVService *)self setMessageWaiting:v6 != 0];
    v7 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = [(VVService *)self getServiceObjLogPrefix];
      v10 = 2080;
      v11 = " ";
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sOut-of-band MWI received: %u", &v8, 0x1Cu);
    }
  }
}

- (BOOL)respectsMWINotifications
{
  v2 = [(VVService *)self carrierParameterValueForKey:@"UsesMWI"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)handleNotification:(id)a3 isMWI:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:kVMNotificationNameKey];
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315650;
      v29 = [(VVService *)self getServiceObjLogPrefix];
      v30 = 2080;
      v31 = " ";
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived %@ notification", &v28, 0x20u);
    }

    if ([(__CFString *)v7 isEqualToString:kVMStateNotificationName])
    {
      v9 = [v6 objectForKey:kVMNotificationStateKey];
      if (v9)
      {
        v10 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [(VVService *)self getServiceObjLogPrefix];
          v28 = 136315394;
          v29 = v11;
          v30 = 2080;
          v31 = " ";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sUnregistering beacon retry activity in handleNotification:isMWI", &v28, 0x16u);
        }

        [(IMAPService *)self setBeaconActive:0];
        v12 = [(IMAPService *)self beaconRetryActivityIdentifier];
        v13 = v12;
        xpc_activity_unregister([v12 UTF8String]);

        [(IMAPService *)self _doneBeacon];
        [(IMAPService *)self _resetBeaconTemporaryRetryCount];
        v14 = sub_10006C594(v9);
        if (v14)
        {
          v15 = [(VVService *)self verifier];
          [v15 storeValue:1 forCheckpointKey:@"BeaconResponseReceived"];

          if ((v14 & 0xFFFFFFFFFFFFFFFELL) == 2)
          {
            [(IMAPService *)self _setServerInfoFromInterpretedNotification:v6];
          }

          [(IMAPService *)self _setAccountState:v14];
          if (v14 == 3)
          {
            [(IMAPService *)self synchronize:0 reason:@"StateActive"];
          }
        }
      }

LABEL_21:

      goto LABEL_22;
    }

    if ([(__CFString *)v7 isEqualToString:kVMServerChangedNotificationName])
    {
      [(IMAPService *)self _setServerInfoFromInterpretedNotification:v6];
    }

    else
    {
      if (![(__CFString *)v7 isEqualToString:kVMGreetingChangedNotificationName])
      {
        if (![(__CFString *)v7 isEqualToString:kVMMailboxChangedNotificationName])
        {
LABEL_28:

          goto LABEL_29;
        }

        imapServiceFlags = self->_imapServiceFlags;
        v9 = [(VVService *)self serviceMCC];
        v17 = [(VVService *)self serviceMNC];
        v18 = [(VVService *)self contextInfo];
        v19 = [v18 slotID];

        v20 = +[VMAWDReporter sharedInstance];
        [v20 reportVoicemailReceivedNotification:(*&imapServiceFlags >> 3) & 7 mcc:v9 mnc:v17 notificationType:1 slotID:v19];

        [(IMAPService *)self _setServerInfoFromInterpretedNotification:v6];
        [(IMAPService *)self _inferActiveState];
        [(IMAPService *)self synchronize:1 reason:@"MBOXUPDATE"];
        v21 = [(VVService *)self carrierParameterValueForKey:@"UsesMWI"];
        LOBYTE(v20) = [v21 BOOLValue];

        if ((v20 & 1) == 0)
        {
          [(IMAPService *)self _setMessageWaitingFromNotification:v6];
        }

        goto LABEL_21;
      }

      [(IMAPService *)self _setServerInfoFromInterpretedNotification:v6];
      [(IMAPService *)self _inferActiveState];
      [(IMAPService *)self _setActiveGreetingType:3];
      [(IMAPService *)self _setGreetingCached:0];
      [(IMAPService *)self synchronize:1 reason:@"GREETINGCHANGED"];
    }

LABEL_22:
    v22 = [v6 objectForKey:kVMNotificationTimestampKey];
    if ([v22 length])
    {
      VMStoreSetTimestampForTokenWithKey([v22 intValue], v7);
    }

    else
    {
      v23 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(VVService *)self getServiceObjLogPrefix];
        v28 = 136315394;
        v29 = v24;
        v30 = 2080;
        v31 = " ";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sNotification lacked _timestamp parameter. Setting timestamp to distant past.", &v28, 0x16u);
      }

      v25 = +[NSDate date];
      v26 = +[NSDate distantPast];
      [v25 timeIntervalSinceDate:v26];
      VMStoreSetTimestampForTokenWithKey(v27, v7);
    }

    goto LABEL_28;
  }

LABEL_29:
}

- (void)_checkForQueuedNotifications
{
  v3 = [NSArray alloc];
  v27 = kVMMailboxChangedNotificationName;
  v29 = [v3 initWithObjects:{kVMStateNotificationName, kVMMailboxChangedNotificationName, kVMGreetingChangedNotificationName, kVMServerChangedNotificationName, 0}];
  v4 = 0;
  v5 = [v29 count];
  if (v5)
  {
    v6 = 0;
    key = kVMNotificationTimestampKey;
    do
    {
      v7 = [v29 objectAtIndex:v6];
      v8 = sub_10008D280(v7);
      if ([v8 length])
      {
        TimestampForTokenWithKey = VMStoreGetTimestampForTokenWithKey(v7);
        v10 = VMCopyDictionaryForNotificationString();
        v11 = v10;
        if (v10)
        {
          v12 = CFDictionaryGetValue(v10, key);
          v13 = [v12 intValue];
          if (TimestampForTokenWithKey && v13 <= TimestampForTokenWithKey)
          {
            if ([(__CFString *)v7 isEqualToString:v27])
            {
              v14 = [(VVService *)self carrierParameterValueForKey:@"UsesMWI"];
              v15 = [v14 BOOLValue];

              if ((v15 & 1) == 0)
              {
                [(IMAPService *)self _setMessageWaitingFromNotification:v11];
              }
            }
          }

          else
          {
            v36[0] = v11;
            v16 = [NSNumber numberWithUnsignedInt:v13];
            v36[1] = v16;
            v17 = [NSArray arrayWithObjects:v36 count:2];

            if (!v4)
            {
              v4 = objc_alloc_init(NSMutableArray);
            }

            [v4 addObject:v17];
          }

          CFRelease(v11);
        }
      }

      ++v6;
    }

    while (v5 != v6);
  }

  v18 = [v4 count];
  if (v18)
  {
    v37.location = 0;
    v37.length = v18;
    CFArraySortValues(v4, v37, sub_100073494, 0);
    v19 = 0;
    v20 = kVMNotificationNameKey;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex([v4 objectAtIndex:v19], 0);
      v22 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v23 = CFGetTypeID(ValueAtIndex);
        if (v23 == CFDictionaryGetTypeID())
        {
          v24 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [(VVService *)self getServiceObjLogPrefix];
            Value = CFDictionaryGetValue(v22, v20);
            *buf = 136315650;
            v31 = v25;
            v32 = 2080;
            v33 = " ";
            v34 = 2112;
            v35 = Value;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sPlaying back queued %@ notification.", buf, 0x20u);
          }

          [(IMAPService *)self handleNotification:v22 isMWI:0];
        }
      }

      ++v19;
    }

    while (v18 != v19);
  }
}

- (id)_messageChangeQueue
{
  [(IMAPService *)self mf_lock];
  messageChangeQueue = self->_messageChangeQueue;
  if (!messageChangeQueue)
  {
    v4 = [[MFInvocationQueue alloc] initWithMambaID:"invc.svc" mambaID:{-[VVService getServiceObjLogPrefix](self, "getServiceObjLogPrefix")}];
    v5 = self->_messageChangeQueue;
    self->_messageChangeQueue = v4;

    messageChangeQueue = self->_messageChangeQueue;
  }

  v6 = messageChangeQueue;
  [(IMAPService *)self mf_unlock];

  return v6;
}

- (int)minimumPasswordLength
{
  v2 = [(VVService *)self carrierParameterValueForKey:@"MinPINLength"];
  v3 = [v2 intValue];

  return v3;
}

- (int)maximumPasswordLength
{
  v2 = [(VVService *)self carrierParameterValueForKey:@"MaxPINLength"];
  v3 = [v2 intValue];

  return v3;
}

- (BOOL)doesClientManageTrashCompaction
{
  v2 = [(VVService *)self carrierParameterValueForKey:@"ClientManagesTrash"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isGreetingChangeSupported
{
  v2 = [(VVService *)self carrierParameterValueForKey:@"GreetingChangeSupported"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (unint64_t)maximumGreetingDuration
{
  v2 = [(VVService *)self carrierParameterValueForKey:@"MaxGreetingDuration"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (BOOL)dataForRecordPending:(void *)a3 progressiveLoadInProgress:(BOOL *)a4
{
  v7 = [(IMAPServiceActivityController *)self->_activityController bodyFetchActivityForRecord:?];

  if (a4)
  {
    if (v7)
    {
      v8 = [(IMAPServiceBodyLoadMonitor *)self->_bodyLoadMonitor progressiveBodyLoadHasStartedForRecord:a3];
    }

    else
    {
      v8 = 0;
    }

    *a4 = v8;
  }

  return v7 != 0;
}

- (BOOL)greetingFetchExistsProgressiveLoadInProgress:(BOOL *)a3
{
  v5 = [(IMAPServiceActivityController *)self->_activityController taskOfTypeExists:3];
  v6 = v5;
  if (a3)
  {
    if (v5)
    {
      v7 = [(IMAPServiceBodyLoadMonitor *)self->_bodyLoadMonitor progressiveBodyLoadHasStartedForRecord:0];
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
  }

  return v6;
}

- (BOOL)isInSync
{
  if ([(IMAPService *)self isSyncRequired])
  {
    return 0;
  }

  else
  {
    return ![(IMAPService *)self isSyncInProgress];
  }
}

- (void)setMailboxUsage:(unint64_t)a3
{
  if ([(IMAPService *)self mailboxUsage]!= a3)
  {
    [(VVService *)self setMailboxUsageCache:a3];
    v5 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v15 = [(VVService *)self getServiceObjLogPrefix];
      v16 = 2080;
      v17 = " ";
      v18 = 2048;
      v19 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sSet new mailbox usage value: %lu", buf, 0x20u);
    }

    [(VVService *)self setTrashCompactionAge:-1.0];
    if ([(VVService *)self shouldScheduleAutoTrashOnMailboxUsageChange])
    {
      [(VVService *)self scheduleAutomatedTrashCompaction];
    }

    v12[0] = @"accountUUID";
    v6 = [(VVService *)self serviceLabelID];
    v13[0] = v6;
    v12[1] = @"MailboxUsage";
    v7 = [NSNumber numberWithUnsignedLong:a3];
    v13[1] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100073B30;
    v10[3] = &unk_1000EE260;
    v10[4] = self;
    v11 = v8;
    v9 = v8;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

- (void)_updateMailboxUsage
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v27 = [(VVService *)self getServiceObjLogPrefix];
    v28 = 2080;
    v29 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] Updating quota information...", buf, 0x16u);
  }

  v4 = [(IMAPService *)self serviceAccount];
  v5 = [v4 mailboxQuotaUsage];

  if (v5 >= 0x64)
  {
    v6 = 100;
  }

  else
  {
    v6 = v5;
  }

  v7 = [(IMAPService *)self serviceAccount];
  v8 = v7 == 0;

  if (v8)
  {
    v10 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10009E0E8([(VVService *)self getServiceObjLogPrefix], buf, v6, v10);
    }
  }

  else
  {
    v9 = [(IMAPService *)self serviceAccount];
    v10 = [v9 accountStore];

    sub_10009324C(v10, v6);
    [v10 save];
    v11 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(VVService *)self getServiceObjLogPrefix];
      v13 = [(IMAPService *)self serviceAccount];
      *buf = 136315906;
      v27 = v12;
      v28 = 2080;
      v29 = " ";
      v30 = 2048;
      v31 = v6;
      v32 = 2112;
      v33 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sSave mailbox usage %lu for service account %@", buf, 0x2Au);
    }
  }

  [(IMAPService *)self setMailboxUsage:v6];
  [(VVService *)self setMailboxUsageUpdated:1];
  v14 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 136315650;
    v21 = [(VVService *)self getServiceObjLogPrefix];
    v22 = 2080;
    v23 = " ";
    v24 = 2048;
    v25 = [(IMAPService *)self mailboxUsage];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sMailbox usage is at %lu%%", v20, 0x20u);
  }

  v15 = +[MFActivityMonitor currentTracebleMonitor];
  v16 = [v15 error];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100074054;
  v18[3] = &unk_1000EE260;
  v18[4] = self;
  v19 = v16;
  v17 = v16;
  dispatch_async(&_dispatch_main_q, v18);
}

- (void)_mailboxUsageUpdateCompletedWithError:(id)a3
{
  v4 = a3;
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = [(VVService *)self getServiceObjLogPrefix];
    v8 = 2080;
    v9 = " ";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s_mailboxUsageUpdateCompletedWithError %@", &v6, 0x20u);
  }
}

- (void)_synchronizeMailboxWithRelativePath:(id)a3 serviceAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315906;
    v15 = [(VVService *)self getServiceObjLogPrefix];
    v16 = 2080;
    v17 = " ";
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sSynchronize %@ for service account %@, process started", &v14, 0x2Au);
  }

  v9 = [v7 mailboxUidForRelativePath:v6 create:1];
  if (v9)
  {
    v10 = [v7 storeForMailboxUid:v9];
    v11 = v10;
    if (v10)
    {
      [v10 fetchMobileSynchronously:0x7FFFFFFFFFFFFFFFLL];
    }
  }

  v12 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(VVService *)self getServiceObjLogPrefix];
    v14 = 136315906;
    v15 = v13;
    v16 = 2080;
    v17 = " ";
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sSynchronize %@ for service account %@, process completed", &v14, 0x2Au);
  }
}

- (void)_sanitizeLocalVoicemailDatabaseForServiceAccount:(id)a3
{
  v4 = a3;
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315650;
    v13 = [(VVService *)self getServiceObjLogPrefix];
    v14 = 2080;
    v15 = " ";
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sCalling _sanitizeLocalVoicemailDatabase before sync for service account %@", &v12, 0x20u);
  }

  v6 = [v4 accountStore];
  v7 = sub_1000931D0(v6, 0, 72);

  v8 = [(IMAPService *)self _sanitizeDuplicateRecordsFromArrayForServiceAccount:v7 serviceAccount:v4];
  v9 = [v4 accountStore];
  v10 = sub_1000931D0(v9, 8, 64);

  if ((v8 | [(IMAPService *)self _sanitizeDuplicateRecordsFromArrayForServiceAccount:v10 serviceAccount:v4]))
  {
    v11 = [v4 accountStore];
    [v11 save];
  }
}

- (BOOL)_sanitizeDuplicateRecordsFromArrayForServiceAccount:(id)a3 serviceAccount:(id)a4
{
  v22 = a3;
  v23 = a4;
  v6 = [v23 accountStore];
  v25 = +[NSMutableSet set];
  v7 = [v22 reverseObjectEnumerator];
  v8 = [v7 allObjects];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v8;
  v9 = 0;
  v10 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [NSNumber numberWithUnsignedInt:sub_10009278C(v6, v13)];
        if ((sub_100092B0C(v6, v13) & 2) == 0)
        {
          v15 = VMStoreRecordCopyDescription(v13);
          v16 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [(VVService *)self getServiceObjLogPrefix];
            *buf = 136316162;
            v31 = v17;
            v32 = 2080;
            v33 = " ";
            v34 = 2112;
            v35 = v15;
            v36 = 2112;
            v37 = v14;
            v38 = 2112;
            v39 = v6;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoving record %@ with remote UID %@ from the account store %@. Could not find any audio data.", buf, 0x34u);
          }

          if (v15)
          {
            CFRelease(v15);
          }

LABEL_17:
          sub_100093034(v6, v13);
          v9 = 1;
          goto LABEL_19;
        }

        if ([v25 containsObject:v14])
        {
          v18 = VMStoreRecordCopyDescription(v13);
          v19 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [(VVService *)self getServiceObjLogPrefix];
            *buf = 136316162;
            v31 = v20;
            v32 = 2080;
            v33 = " ";
            v34 = 2112;
            v35 = v18;
            v36 = 2112;
            v37 = v14;
            v38 = 2112;
            v39 = v6;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoving record %@ with remote UID %@ from the account store %@. A record with that remote UID already exists.", buf, 0x34u);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          goto LABEL_17;
        }

        [v25 addObject:v14];
LABEL_19:
      }

      v10 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
    }

    while (v10);
  }

  return v9 & 1;
}

- (void)_synchronizeMailboxesForServiceAccount:(id)a3
{
  v4 = a3;
  [(VVService *)self getServiceObjLogPrefix];
  sub_100086AD4();
}

- (void)_resetLegacyMessageWaiting
{
  [(IMAPService *)self mf_lock];
  if (![(IMAPService *)self isSyncRequired]&& ![(IMAPService *)self isSyncInProgress])
  {
    v3 = [(VVService *)self carrierParameterValueForKey:@"UsesMWI"];
    v4 = [v3 BOOLValue];

    if ((v4 & 1) == 0)
    {
      [(VVService *)self setMessageWaiting:0];
    }
  }

  [(IMAPService *)self mf_unlock];
}

- (void)_syncCompletedWithError:(shared_ptr<VMJetsamAssertion>)a3 error:(id)a4
{
  ptr = a3.__ptr_;
  v6 = a3.__cntrl_;
  v7 = sub_10006B834();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v25 = [(VVService *)self getServiceObjLogPrefix];
    v26 = 2080;
    v27 = " ";
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s_syncCompletedWithError %@", buf, 0x20u);
  }

  if (v6)
  {
    if (![(VVService *)self lastUsedConnectionTypeWasCellular])
    {
      [(VVService *)self reportFailedToSyncOverWifi];
    }

    v8 = [(VVService *)self verifier];
    [v8 storeValue:0 forCheckpointKey:@"ServerLogin"];
  }

  else
  {
    v8 = [(VVService *)self verifier];
    [v8 storeValue:1 forCheckpointKey:@"ServerLogin"];
  }

  v9 = [(IMAPService *)self serviceAccount];
  [v9 saveState];

  +[VVService releaseInsomniaAssertion];
  [(IMAPService *)self mf_lock];
  [(IMAPService *)self setSyncInProgress:0];
  if (v6)
  {
    [(IMAPService *)self setSyncRequired:1];
    v10 = [(VVService *)self serialDispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000754A0;
    block[3] = &unk_1000EDEC8;
    block[4] = self;
    dispatch_async(v10, block);
  }

  else
  {
    if (![(IMAPService *)self isSyncRequired])
    {
      v11 = [(VVService *)self serialDispatchQueue];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000754A8;
      v22[3] = &unk_1000EDEC8;
      v22[4] = self;
      dispatch_async(v11, v22);

      [(VVService *)self cancelNotificationFallback];
      v12 = [(IMAPService *)self _parameters];
      v13 = [NSNumber numberWithBool:0];
      [v12 setObject:v13 forKey:@"SyncRequired"];

      v14 = +[NSDate date];
      [v14 timeIntervalSince1970];
      v16 = v15;
      v17 = [(IMAPService *)self _parameters];
      v18 = [NSNumber numberWithUnsignedInt:v16];
      [v17 setObject:v18 forKey:@"SyncTimestamp"];

      [(IMAPService *)self _setBeaconCount:0];
      [(IMAPService *)self _saveParameters];
    }

    [(IMAPService *)self _resetLegacyMessageWaiting];
  }

  [(IMAPService *)self mf_unlock];
  if (!v6)
  {
    [(VVService *)self reportSucessfulSync];
    v19 = *(ptr + 1);
    v20 = *ptr;
    v21 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(IMAPService *)self _executePostSyncUpdate:&v20];
    if (v21)
    {
      sub_100083FCC(v21);
    }
  }
}

- (void)_executePostSyncUpdate:(shared_ptr<VMJetsamAssertion>)a3
{
  ptr = a3.__ptr_;
  v5 = sub_10006B834();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v22 = [(VVService *)self getServiceObjLogPrefix];
    v23 = 2080;
    v24 = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s_executePostSyncUpdate", buf, 0x16u);
  }

  v6 = *(ptr + 1);
  v19 = *ptr;
  v20 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [(IMAPService *)self _updateBodies:&v19];
  if (v20)
  {
    sub_100083FCC(v20);
  }

  [(IMAPService *)self _imap_M2A_merge];
  if ([(VVService *)self isMailboxUsageUpdated])
  {
    [(VVService *)self scheduleAutomatedTrashCompaction];
  }

  else
  {
    v7 = [MFMonitoredInvocation invocationWithSelector:"_updateMailboxUsage" target:self taskName:@"updateMailboxUsage" priority:2 canBeCancelled:1];
    [v7 retainArguments];
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VVService *)self getServiceObjLogPrefix];
      v10 = [(IMAPService *)self _messageChangeQueue];
      v11 = [v7 monitor];
      v12 = [v7 monitor];
      v13 = [(IMAPService *)self serviceAccount];
      v14 = [v13 accountStore];
      *buf = 136316674;
      v22 = v9;
      v23 = 2080;
      v24 = " ";
      v25 = 2112;
      v26 = v10;
      v27 = 2048;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2112;
      v32 = v14;
      v33 = 2112;
      v34 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: _updateMailboxUsage for store %@ => %@", buf, 0x48u);
    }

    activityController = self->_activityController;
    v16 = [v7 monitor];
    [(IMAPServiceActivityController *)activityController addScheduledActivity:v16];

    v17 = [(IMAPService *)self _messageChangeQueue];
    [v17 addInvocation:v7];
  }

  [(VVService *)self clearRemoteUIDsForDetachedMessages];
  v18 = +[NSNotificationCenter defaultCenter];
  [v18 postNotificationName:@"VVServiceSyncStatusChangedNotification" object:0];

  [(IMAPService *)self synchronize:0 reason:@"syncCompleted"];
}

- (void)synchronize:(BOOL)a3 reason:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007599C;
  v9[3] = &unk_1000EF270;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)addSyncTask
{
  v3 = [(IMAPService *)self serviceAccount];
  +[VVService obtainInsomniaAssertion];
  v4 = [MFMonitoredInvocation invocationWithSelector:"_synchronizeMailboxesForServiceAccount:" target:self object:v3 taskName:@"Synchronizing" priority:0 canBeCancelled:0];
  [v4 retainArguments];
  v5 = sub_10006B834();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VVService *)self getServiceObjLogPrefix];
    v7 = [(IMAPService *)self _messageChangeQueue];
    v8 = [v4 monitor];
    v9 = [v4 monitor];
    v13 = 136316674;
    v14 = v6;
    v15 = 2080;
    v16 = " ";
    v17 = 2112;
    v18 = v7;
    v19 = 2048;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v3;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: Dispatching synchronize operation for service account %@ => %@", &v13, 0x48u);
  }

  activityController = self->_activityController;
  v11 = [v4 monitor];
  [(IMAPServiceActivityController *)activityController addScheduledActivity:v11];

  v12 = [(IMAPService *)self _messageChangeQueue];
  [v12 addInvocation:v4];
}

- (void)scheduleSyncTask:(BOOL)a3 reason:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(IMAPService *)self mf_lock];
  v7 = [(IMAPService *)self isSyncRequired];
  v8 = sub_10006B834();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v36 = [(VVService *)self getServiceObjLogPrefix];
    v37 = 2080;
    v38 = " ";
    v39 = 2080;
    v40 = asStringBOOL();
    v41 = 2080;
    v42 = asStringBool();
    v43 = 2112;
    v44 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s[IMAPService synchronize:force=%s,]", buf, 0x34u);
  }

  if ((v4 | v7))
  {
    if ((v7 & 1) == 0)
    {
      v9 = [(IMAPService *)self _parameters];
      v10 = [NSNumber numberWithBool:1];
      [v9 setObject:v10 forKey:@"SyncRequired"];

      [(IMAPService *)self _saveParameters];
    }

    v11 = [(IMAPService *)self serviceAccount];
    v12 = [(IMAPService *)self isSyncInProgress];
    if ((*&self->_imapServiceFlags & 0x38) == 0x18)
    {
      v13 = v12;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 1) != 0 || (*&self->super._serviceFlags & 1) != 0 || !v11)
    {
      imapServiceFlags = self->_imapServiceFlags;
      v15 = sub_10006B834();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if ((imapServiceFlags & 0x100) != 0)
      {
        if (v16)
        {
          v25 = [(VVService *)self getServiceObjLogPrefix];
          [(IMAPService *)self isSyncInProgress];
          v26 = asStringBool();
          v27 = ((*&self->_imapServiceFlags >> 3) & 7) - 1;
          if (v27 > 2)
          {
            v28 = @"Unknown";
          }

          else
          {
            v28 = off_1000EF368[v27];
          }

          serviceFlags = self->super._serviceFlags;
          v33 = asStringBool();
          *buf = 136316418;
          v36 = v25;
          v37 = 2080;
          v38 = " ";
          v39 = 2080;
          v40 = v26;
          v41 = 2112;
          v42 = v28;
          v43 = 2080;
          v44 = v33;
          v45 = 2112;
          v46 = v11;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sSuppressing synchronize because (syncInProgress:%s OR accountState:%@ is not kStateActive OR we're offline:%s OR we have no account:%@)", buf, 0x3Eu);
        }

        goto LABEL_32;
      }

      if (v16)
      {
        v17 = [(VVService *)self getServiceObjLogPrefix];
        [(IMAPService *)self isSyncInProgress];
        v18 = asStringBool();
        v19 = ((*&self->_imapServiceFlags >> 3) & 7) - 1;
        if (v19 > 2)
        {
          v20 = @"Unknown";
        }

        else
        {
          v20 = off_1000EF368[v19];
        }

        v30 = self->super._serviceFlags;
        v31 = asStringBool();
        *buf = 136316418;
        v36 = v17;
        v37 = 2080;
        v38 = " ";
        v39 = 2080;
        v40 = v18;
        v41 = 2112;
        v42 = v20;
        v43 = 2080;
        v44 = v31;
        v45 = 2112;
        v46 = v11;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sDeferring synchronize because (syncInProgress:%s OR accountState:%@ is not kStateActive OR we're offline:%s OR we have no account:%@), syncRequired", buf, 0x3Eu);
      }

      [(IMAPService *)self setSyncRequired:1];
    }

    else
    {
      if (![(VVService *)self isDelayedRetryImmediate]&& [(VVService *)self isDelayedRetryScheduledGuarded])
      {
        v15 = sub_10006B834();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [(VVService *)self getServiceObjLogPrefix];
          *buf = 136315394;
          v36 = v24;
          v37 = 2080;
          v38 = " ";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sDeferring synchronize because delayed sync is scheduled", buf, 0x16u);
        }

LABEL_32:

        goto LABEL_33;
      }

      [(IMAPService *)self setSyncInProgress:1];
      [(IMAPService *)self setSyncRequired:0];
      v29 = [(VVService *)self serialDispatchQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10007624C;
      block[3] = &unk_1000EDEC8;
      block[4] = self;
      dispatch_async(v29, block);

      [(IMAPService *)self addSyncTask];
    }
  }

  else
  {
    v11 = sub_10006B834();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(VVService *)self getServiceObjLogPrefix];
      v22 = asStringBOOL();
      v23 = asStringBool();
      *buf = 136315906;
      v36 = v21;
      v37 = 2080;
      v38 = " ";
      v39 = 2080;
      v40 = v22;
      v41 = 2080;
      v42 = v23;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sSuppressing synchronize because (force=%s, syncRequired=%s)", buf, 0x2Au);
    }
  }

LABEL_33:

  [(IMAPService *)self mf_unlock];
}

- (void)_updateBodies:(shared_ptr<VMJetsamAssertion>)a3
{
  ptr = a3.__ptr_;
  context = objc_autoreleasePoolPush();
  v4 = [(IMAPService *)self serviceAccount];
  v5 = [v4 accountStore];
  v6 = sub_1000931D0(v5, 0, 6);

  v42 = v6;
  v7 = [v6 count];
  if (v7)
  {
    [(VVService *)self setMailboxUsageUpdated:0];
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v46 = [(VVService *)self getServiceObjLogPrefix];
      v47 = 2080;
      v48 = " ";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%supdateBodies: mailbox usage update is required", buf, 0x16u);
    }

    v9 = VMStoreRecordCopyArrayDescription(v6);
    v10 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136315906;
      v46 = v11;
      v47 = 2080;
      v48 = " ";
      v49 = 2048;
      v50 = v7;
      v51 = 2112;
      v52 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%supdateBodies: found %lu records to retrieve audio data %@", buf, 0x2Au);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    v41 = +[NSMutableArray array];
    v12 = 0;
    while (1)
    {
      v13 = [v6 objectAtIndexedSubscript:v12];

      Identifier = VMStoreRecordGetIdentifier(v13);
      if ([(IMAPServiceActivityController *)self->_activityController bodyFetchPendingForRecord:v13])
      {
        v15 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(VVService *)self getServiceObjLogPrefix];
          *buf = 136315650;
          v46 = v16;
          v47 = 2080;
          v48 = " ";
          v49 = 2048;
          v50 = Identifier;
          v17 = v15;
          v18 = "#I %s%sRecord <identifier=%lu> is pending to retrieve audio data";
LABEL_14:
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0x20u);
        }
      }

      else
      {
        [v41 addObject:v13];
        v15 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [(VVService *)self getServiceObjLogPrefix];
          *buf = 136315650;
          v46 = v19;
          v47 = 2080;
          v48 = " ";
          v49 = 2048;
          v50 = Identifier;
          v17 = v15;
          v18 = "#I %s%sRecord <identifier=%lu> added to retrieve audio data";
          goto LABEL_14;
        }
      }

      if (v7 == ++v12)
      {
        if ([v41 count])
        {
          v20 = [VMSharedJetsamAssertion alloc];
          v21 = *(ptr + 1);
          v43 = *ptr;
          v44 = v21;
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v22 = [(VMSharedJetsamAssertion *)v20 initWithJetsamAssertion:&v43];
          if (v44)
          {
            sub_100083FCC(v44);
          }

          v40 = [[NSDictionary alloc] initWithObjectsAndKeys:{v41, @"FetchRecord", v22, @"FetchJetsam", 0}];
          v23 = [MFMonitoredInvocation invocationWithSelector:"invocationWithSelector:target:object:taskName:priority:canBeCancelled:" target:"_retrieveBodies:" object:self taskName:? priority:? canBeCancelled:?];
          [v23 retainArguments];
          v24 = [v23 monitor];
          [v24 addActivityTargets:v41];

          v25 = VMStoreRecordCopyArrayDescription(v41);
          v26 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [(VVService *)self getServiceObjLogPrefix];
            v36 = [(IMAPService *)self _messageChangeQueue];
            v38 = [v23 monitor];
            v28 = [v23 monitor];
            v29 = [(IMAPService *)self serviceAccount];
            v30 = [v29 accountStore];
            *buf = 136316930;
            v46 = v27;
            v47 = 2080;
            v48 = " ";
            v49 = 2112;
            v50 = v36;
            v51 = 2048;
            v52 = v38;
            v53 = 2112;
            v54 = v28;
            v55 = 2112;
            v56 = v30;
            v57 = 2112;
            v58 = v25;
            v59 = 2112;
            v60 = v23;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: Creating kIMAPServiceBodyCachingTaskName store %@ for records %@ => %@", buf, 0x52u);
          }

          if (v25)
          {
            CFRelease(v25);
          }

          activityController = self->_activityController;
          v32 = [v23 monitor];
          [(IMAPServiceActivityController *)activityController addScheduledActivity:v32];

          v33 = [(IMAPService *)self _messageChangeQueue];
          [v33 addInvocation:v23];
        }

        else
        {
          v22 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [(VVService *)self getServiceObjLogPrefix];
            *buf = 136315394;
            v46 = v35;
            v47 = 2080;
            v48 = " ";
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sNo records found that require retrieving audio data", buf, 0x16u);
          }
        }

        v34 = v41;
        goto LABEL_31;
      }
    }
  }

  v34 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v46 = [(VVService *)self getServiceObjLogPrefix];
    v47 = 2080;
    v48 = " ";
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%supdateBodies: no records found to retrieve audio data", buf, 0x16u);
  }

LABEL_31:

  objc_autoreleasePoolPop(context);
}

- (id)_bodyLoadMonitor
{
  [(NSLock *)self->_bodyLoadMonitorLock lock];
  if (!self->_bodyLoadMonitor)
  {
    v3 = [[IMAPServiceBodyLoadMonitor alloc] initForService:self];
    bodyLoadMonitor = self->_bodyLoadMonitor;
    self->_bodyLoadMonitor = v3;

    v5 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = [(VVService *)self getServiceObjLogPrefix];
      v10 = 2080;
      v11 = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%screated IMAPServiceBodyLoadMonitor", &v8, 0x16u);
    }
  }

  [(NSLock *)self->_bodyLoadMonitorLock unlock];
  v6 = self->_bodyLoadMonitor;

  return v6;
}

- (void)_synchronouslyRetrieveBody:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_25;
  }

  v24 = v3;
  v23 = [v3 topLevelPart];
  v4 = [v23 type];
  v5 = [v4 isEqualToString:@"multipart"];

  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = [v23 subparts];
  v7 = [v6 count];
  if (!v7)
  {

    goto LABEL_23;
  }

  v8 = 1;
  do
  {
    v9 = [v6 objectAtIndex:v8 - 1];
    if ([v9 isAttachment])
    {
      v10 = [v9 attachmentURLs];
      if (![v10 count])
      {
        v15 = 0;
LABEL_17:

        goto LABEL_18;
      }

      attachmentManager = self->_attachmentManager;
      v12 = [v10 objectAtIndex:0];
      v13 = [(MFAttachmentLibraryManager *)attachmentManager attachmentForURL:v12 error:0];

      v14 = [v13 mimeType];
      if ([v14 isEqualToString:@"audio/amr"])
      {
        goto LABEL_8;
      }

      v16 = [v9 type];
      if ([v16 isEqualToString:@"audio"])
      {
        v17 = [v9 subtype];
        v18 = [v17 isEqualToString:@"amr"];

        if (v18)
        {
LABEL_8:
          v15 = v13;
LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
      }

      v15 = 0;
      goto LABEL_16;
    }

    v15 = 0;
LABEL_18:

    if (v8 >= v7)
    {
      break;
    }

    ++v8;
  }

  while (!v15);

  if (!v15)
  {
LABEL_23:
    v19 = [v24 message];
    v20 = [NSString stringWithFormat:@"Couldn't find audio/amr part for message %@", v19];
    v21 = [NSError errorWithDomain:kVVErrorDomain code:1007 localizedDescription:v20];

    v22 = +[MFActivityMonitor currentTracebleMonitor];
    [v22 setError:v21];

    v15 = 0;
  }

  v3 = v24;
LABEL_25:
}

- (void)_synchronouslyRetrieveBodyForRecord:(void *)a3
{
  v6 = [(IMAPService *)self serviceAccount];
  v5 = [v6 mimeBodyForAccountRecord:a3];
  [(IMAPService *)self _synchronouslyRetrieveBody:v5];
}

- (void)_bodyRetrievalCompleted:(void *)a3
{
  v5 = [[NSDictionary alloc] initWithObjectsAndKeys:{a3, @"VVRecord", 0}];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"VVServiceDataAvailableNotification" object:self userInfo:v5];
}

- (void)_retrieveBodies:(id)a3
{
  v24 = a3;
  v27 = +[MFActivityMonitor currentTracebleMonitor];
  v22 = [v24 objectForKeyedSubscript:@"FetchRecord"];
  v4 = [v22 count];
  v23 = [v24 objectForKeyedSubscript:@"FetchJetsam"];
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VVService *)self getServiceObjLogPrefix];
    v7 = [(IMAPService *)self serviceAccount];
    *buf = 136316674;
    v34 = v6;
    v35 = 2080;
    v36 = " ";
    v37 = 2112;
    v38 = v7;
    v39 = 2048;
    v40 = v4;
    v41 = 2048;
    v42 = v27;
    v43 = 2112;
    v44 = v27;
    v45 = 2112;
    v46 = v23;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] Retrieving audio data for account %@, fetch %lu records, monitor %p.'%@', jetsam %@", buf, 0x48u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v22;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v26 = *v29;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        [v27 setError:0];
        v11 = [(IMAPService *)self serviceAccount];
        v12 = [v11 accountStore];
        v13 = sub_100092B0C(v12, v10);

        v14 = VMStoreRecordCopyDescription(v10);
        v15 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [(VVService *)self getServiceObjLogPrefix];
          v17 = [(IMAPService *)self serviceAccount];
          v18 = [v17 accountStore];
          *buf = 136315906;
          v34 = v16;
          v35 = 2080;
          v36 = " ";
          v37 = 2112;
          v38 = v18;
          v39 = 2112;
          v40 = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] Retrieving audio data for account store %@, record %@", buf, 0x2Au);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        if ((v13 & 0x14) == 0)
        {
          [v27 setPrimaryTarget:v10];
          [(IMAPService *)self _synchronouslyRetrieveBodyForRecord:v10];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v19 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(VVService *)self getServiceObjLogPrefix];
    v21 = [(IMAPService *)self serviceAccount];
    *buf = 136315650;
    v34 = v20;
    v35 = 2080;
    v36 = " ";
    v37 = 2112;
    v38 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] Retrieve audio data for account %@ completed", buf, 0x20u);
  }
}

- (void)_retrieveSingleRecordBody:(void *)a3
{
  v5 = VMStoreRecordCopyDescription(a3);
  v6 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VVService *)self getServiceObjLogPrefix];
    v8 = [(IMAPService *)self serviceAccount];
    v9 = [v8 accountStore];
    v11 = 136315906;
    v12 = v7;
    v13 = 2080;
    v14 = " ";
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] RetrieveSingleRecordBody for account store %@, record %@", &v11, 0x2Au);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v10 = +[MFActivityMonitor currentTracebleMonitor];
  [v10 setPrimaryTarget:a3];

  [(IMAPService *)self _synchronouslyRetrieveBodyForRecord:a3];
}

- (void)_retrieveSingleTransferredRecordBody:(void *)a3
{
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VVService *)self getServiceObjLogPrefix];
    v7 = [(IMAPService *)self serviceAccount];
    v8 = [v7 accountStore];
    v9 = sub_100087658(a3);
    v10 = 136315906;
    v11 = v6;
    v12 = 2080;
    v13 = " ";
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] _retrieveSingleTransferredRecordBody for account store %@, record %@", &v10, 0x2Au);
  }

  [IMAPServiceActivityController setRemainingBodyRetries:1];
  [(IMAPService *)self _retrieveSingleRecordBody:a3];
  [IMAPServiceActivityController setRemainingBodyRetries:0];
}

- (void)retrieveDataForRecord:(void *)a3
{
  if (![(IMAPServiceActivityController *)self->_activityController bodyFetchPendingForRecord:?])
  {
    Flags = VMStoreRecordGetFlags(a3);
    v6 = &selRef__retrieveSingleTransferredRecordBody_;
    if ((Flags & 0x10) != 0)
    {
      v7 = 5;
    }

    else
    {
      v6 = &selRef__retrieveSingleRecordBody_;
      v7 = 15;
    }

    v8 = [MFMonitoredInvocation invocationWithSelector:*v6 target:self object:a3 taskName:@"Retrieving Body" priority:v7 canBeCancelled:1];
    [v8 retainArguments];
    v9 = [v8 monitor];
    [v9 addActivityTarget:a3];

    v10 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(VVService *)self getServiceObjLogPrefix];
      v12 = [(IMAPService *)self _messageChangeQueue];
      v13 = [v8 monitor];
      v14 = [v8 monitor];
      v15 = [(IMAPService *)self serviceAccount];
      v16 = [v15 accountStore];
      v20 = 136316674;
      v21 = v11;
      v22 = 2080;
      v23 = " ";
      v24 = 2112;
      v25 = v12;
      v26 = 2048;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v16;
      v32 = 2112;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: retrieveDataForRecord, store %@ => %@", &v20, 0x48u);
    }

    activityController = self->_activityController;
    v18 = [v8 monitor];
    [(IMAPServiceActivityController *)activityController addScheduledActivity:v18];

    v19 = [(IMAPService *)self _messageChangeQueue];
    [v19 addInvocation:v8];
  }
}

- (void)addTranscriptForRecord:(void *)a3
{
  Identifier = VMStoreRecordGetIdentifier(a3);
  v6 = (VMStoreRecordGetFlags(a3) & 0x8300) == 0;
  v7 = sub_100026660(self->logger.__ptr_);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 136315650;
      v18 = [(VVService *)self getServiceObjLogPrefix];
      v19 = 2080;
      v20 = " ";
      v21 = 1024;
      v22 = Identifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sVoicemail record %d is being queued for transcription", buf, 0x1Cu);
    }

    objc_initWeak(buf, self);
    if (_os_feature_enabled_impl())
    {
      v9 = [(VVService *)self transcriptionService];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100077F6C;
      v14[3] = &unk_1000EF298;
      v10 = &v15;
      objc_copyWeak(&v15, buf);
      v16 = Identifier;
      [v9 processSpeechAnalyzerTranscriptForRecordWithIdentifier:Identifier priority:4 completion:v14];
    }

    else
    {
      v9 = [(VVService *)self transcriptionService];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000780A8;
      v11[3] = &unk_1000EF298;
      v10 = &v12;
      objc_copyWeak(&v12, buf);
      v13 = Identifier;
      [v9 processTranscriptForRecordWithIdentifier:Identifier priority:4 completion:v11];
    }

    objc_destroyWeak(v10);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v8)
    {
      *buf = 136315650;
      v18 = [(VVService *)self getServiceObjLogPrefix];
      v19 = 2080;
      v20 = " ";
      v21 = 1024;
      v22 = Identifier;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sVoicemail record %d is not eligible for transcription.", buf, 0x1Cu);
    }
  }
}

- (void)addDataForRecord:(void *)a3
{
  v4 = [(IMAPService *)self serviceAccount];
  v5 = [v4 accountStore];

  v64 = v5;
  v6 = sub_100092A8C(v5, a3);
  RecordWithToken = VMStoreCopyFirstRecordWithToken(v6, 0);
  if (v6)
  {
    CFRelease(v6);
  }

  if (RecordWithToken)
  {
    goto LABEL_14;
  }

  v8 = [(VVService *)self serviceLabelID];
  RecordWithToken = sub_100093040(v64, a3, v8);

  VMStoreSave();
  v9 = VMStoreRecordCopyDescription(RecordWithToken);
  v10 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v73 = [(VVService *)self getServiceObjLogPrefix];
    v74 = 2080;
    v75 = " ";
    v76 = 2112;
    v77 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sCreated new global record for audio data %@", buf, 0x20u);
  }

  if (RecordWithToken)
  {
    v11 = VMStoreRecordCopyDataPath();
    v12 = +[NSFileManager defaultManager];
    v13 = [v12 fileExistsAtPath:v11];

    if (v13)
    {
      v14 = +[NSFileManager defaultManager];
      v71 = 0;
      [v14 removeItemAtPath:v11 error:&v71];
      v15 = v71;
    }

    else
    {
      v15 = 0;
    }

    CFRelease(v11);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (RecordWithToken)
  {
LABEL_14:
    cf = VMStoreRecordCopyDescription(RecordWithToken);
    v16 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136315650;
      v73 = v17;
      v74 = 2080;
      v75 = " ";
      v76 = 2112;
      v77 = cf;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sCopying audio data to record %@", buf, 0x20u);
    }

    v62 = sub_100092DDC(v64, a3);
    v66 = VMStoreRecordCopyDataPath();
    v18 = +[NSFileManager defaultManager];
    v19 = [v18 fileExistsAtPath:v66];

    if (!v19)
    {
      if ((VMStoreRecordGetFlags(RecordWithToken) & 2) == 0)
      {
        goto LABEL_34;
      }

      v33 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [(VVService *)self getServiceObjLogPrefix];
        *buf = 136315650;
        v73 = v40;
        v74 = 2080;
        v75 = " ";
        v76 = 2112;
        v77 = cf;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%sData available flag is set, but audio file does not exist, for record %@", buf, 0x20u);
      }

LABEL_33:

LABEL_34:
      v44 = +[NSFileManager defaultManager];
      v67 = 0;
      v45 = [v44 copyItemAtPath:v62 toPath:v66 error:&v67];
      v46 = v67;

      if (v45)
      {
        sub_100092850(v64, a3);
        VMStoreRecordSetDuration(RecordWithToken);
        Flags = VMStoreRecordGetFlags(RecordWithToken);
        v48 = [(VVService *)self serviceLabelID];
        VMStoreRecordSetFlags(v48, RecordWithToken, Flags | 2u);

        VMStoreSave();
        v49 = VMStoreRecordCopyDescription(RecordWithToken);
        v50 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = [(VVService *)self getServiceObjLogPrefix];
          *buf = 136315650;
          v73 = v51;
          v74 = 2080;
          v75 = " ";
          v76 = 2112;
          v77 = v49;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s%sCopying audio data completed for global record %@", buf, 0x20u);
        }

        if (!v49)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v52 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = [(VVService *)self getServiceObjLogPrefix];
          *buf = 136315906;
          v73 = v53;
          v74 = 2080;
          v75 = " ";
          v76 = 2112;
          v77 = cf;
          v78 = 2112;
          v79 = v46;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I %s%sUnable to copy audio data from account store to global record %@ with error %@", buf, 0x2Au);
        }

        v54 = VMStoreRecordGetFlags(RecordWithToken);
        if ((v54 & 2) == 0)
        {
          goto LABEL_48;
        }

        v55 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = [(VVService *)self getServiceObjLogPrefix];
          *buf = 136315650;
          v73 = v56;
          v74 = 2080;
          v75 = " ";
          v76 = 2112;
          v77 = cf;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%sData available flag is set, but audio file does not exist, record %@", buf, 0x20u);
        }

        v57 = [(VVService *)self serviceLabelID];
        VMStoreRecordSetFlags(v57, RecordWithToken, v54 & 0xFFFFFFFD);

        VMStoreSave();
        v49 = VMStoreRecordCopyDescription(RecordWithToken);
        v58 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          v59 = [(VVService *)self getServiceObjLogPrefix];
          *buf = 136315650;
          v73 = v59;
          v74 = 2080;
          v75 = " ";
          v76 = 2112;
          v77 = v49;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I %s%sData available flag is removed for global record %@", buf, 0x20u);
        }

        if (!v49)
        {
          goto LABEL_48;
        }
      }

      CFRelease(v49);
LABEL_48:
      [(IMAPService *)self addTranscriptForRecord:RecordWithToken];
      if (cf)
      {
        CFRelease(cf);
      }

      CFRelease(RecordWithToken);
      CFRelease(v66);
      CFRelease(v62);

      goto LABEL_51;
    }

    v20 = +[NSFileManager defaultManager];
    v70 = 0;
    v21 = [v20 attributesOfItemAtPath:v62 error:&v70];
    v22 = v70;

    v23 = +[NSFileManager defaultManager];
    v69 = v22;
    v61 = [v23 attributesOfItemAtPath:v66 error:&v69];
    v24 = v69;

    v25 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v60 = v21;
      v26 = [(VVService *)self getServiceObjLogPrefix];
      v27 = [v21 fileSize];
      v28 = [v21 fileModificationDate];
      v29 = [v61 fileSize];
      v30 = [v61 fileModificationDate];
      *buf = 136316674;
      v73 = v26;
      v74 = 2080;
      v75 = " ";
      v76 = 2048;
      v77 = v27;
      v78 = 2112;
      v79 = v28;
      v80 = 2048;
      v81 = v29;
      v82 = 2112;
      v83 = v30;
      v84 = 2112;
      v85 = cf;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%sAudio file already exists, <src size=%llu, date=%@> <dst size=%llu, date=%@>, record %@", buf, 0x48u);

      v21 = v60;
    }

    v31 = +[NSFileManager defaultManager];
    v68 = v24;
    v32 = [v31 removeItemAtPath:v66 error:&v68];
    v33 = v68;

    ptr = self->logger.__ptr_;
    if (v32)
    {
      v35 = sub_100026660(ptr);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [(VVService *)self getServiceObjLogPrefix];
        *buf = 136315650;
        v73 = v36;
        v74 = 2080;
        v75 = " ";
        v76 = 2112;
        v77 = cf;
        v37 = "#I %s%sRemoving audio data for global record %@";
        v38 = v35;
        v39 = 32;
LABEL_27:
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
      }
    }

    else
    {
      v35 = sub_100026660(ptr);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v41 = [(VVService *)self getServiceObjLogPrefix];
        *buf = 136315906;
        v73 = v41;
        v74 = 2080;
        v75 = " ";
        v76 = 2112;
        v77 = cf;
        v78 = 2112;
        v79 = v33;
        v37 = "#I %s%sUnable to remove audio data for global record %@ with error %@";
        v38 = v35;
        v39 = 42;
        goto LABEL_27;
      }
    }

    if ((VMStoreRecordGetFlags(RecordWithToken) & 2) == 0)
    {
      v42 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = [(VVService *)self getServiceObjLogPrefix];
        *buf = 136315650;
        v73 = v43;
        v74 = 2080;
        v75 = " ";
        v76 = 2112;
        v77 = cf;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s%sData available flag is not set, but audio file exists, for record %@", buf, 0x20u);
      }
    }

    goto LABEL_33;
  }

LABEL_51:
}

- (void)_setDataForRecordWithIdentifier:(unsigned int)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100078E84;
  v3[3] = &unk_1000EE348;
  v3[4] = self;
  v4 = a3;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)_removeRecordsNotPendingDelete:(__CFArray *)a3
{
  [(NSRecursiveLock *)self->_pendingDeletesLock lock];
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        if (([(NSMutableSet *)self->_pendingDeletes containsObject:ValueAtIndex]& 1) == 0 && (VMStoreRecordGetFlags(ValueAtIndex) & 0x40) == 0)
        {
          VMStoreRemoveRecord(ValueAtIndex);
        }
      }
    }
  }

  pendingDeletesLock = self->_pendingDeletesLock;

  [(NSRecursiveLock *)pendingDeletesLock unlock];
}

- (void)_addPendingDeleteForRecord:(void *)a3
{
  if (a3)
  {
    v5 = VMStoreRecordCopyDescription(a3);
    v6 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315650;
      v12 = [(VVService *)self getServiceObjLogPrefix];
      v13 = 2080;
      v14 = " ";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%saddPendingDelete for record %@", &v11, 0x20u);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    [(NSRecursiveLock *)self->_pendingDeletesLock lock];
    pendingDeletes = self->_pendingDeletes;
    if (!pendingDeletes)
    {
      v8 = objc_alloc_init(NSMutableSet);
      v9 = self->_pendingDeletes;
      self->_pendingDeletes = v8;

      pendingDeletes = self->_pendingDeletes;
    }

    [(NSMutableSet *)pendingDeletes addObject:a3];
    [(NSRecursiveLock *)self->_pendingDeletesLock unlock];
  }

  else
  {
    v10 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315394;
      v12 = [(VVService *)self getServiceObjLogPrefix];
      v13 = 2080;
      v14 = " ";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sIMAPService _addPendingDeleteForRecord: was called with a nil record.", &v11, 0x16u);
    }
  }
}

- (void)_removePendingDeleteForRecord:(void *)a3
{
  v5 = VMStoreRecordCopyDescription(a3);
  v6 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = [(VVService *)self getServiceObjLogPrefix];
    v9 = 2080;
    v10 = " ";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sremovePendingDelete for record %@", &v7, 0x20u);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  [(NSRecursiveLock *)self->_pendingDeletesLock lock];
  [(NSMutableSet *)self->_pendingDeletes removeObject:a3];
  [(NSRecursiveLock *)self->_pendingDeletesLock unlock];
}

- (void)movePendingMessagesToTrashTask:(id)a3
{
  v4 = a3;
  v5 = [(IMAPService *)self serviceAccount];

  if (v5)
  {
    v6 = [(IMAPService *)self serviceAccount];
    v7 = [MFMonitoredInvocation invocationWithSelector:"movePendingMessagesToTrash:" target:v6 object:v4 taskName:@"Pushing Flags" priority:5 canBeCancelled:1];

    [v7 retainArguments];
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VVService *)self getServiceObjLogPrefix];
      v10 = [(IMAPService *)self _messageChangeQueue];
      v11 = [v7 monitor];
      v12 = [v7 monitor];
      v13 = [(IMAPService *)self serviceAccount];
      v14 = [v13 accountStore];
      v18 = 136316674;
      v19 = v9;
      v20 = 2080;
      v21 = " ";
      v22 = 2112;
      v23 = v10;
      v24 = 2048;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: movePendingMessagesToTrashTask, store %@ => %@", &v18, 0x48u);
    }

    activityController = self->_activityController;
    v16 = [v7 monitor];
    [(IMAPServiceActivityController *)activityController addScheduledActivity:v16];

    v17 = [(IMAPService *)self _messageChangeQueue];
    [v17 addInvocation:v7];
  }

  else
  {
    v7 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = [(VVService *)self getServiceObjLogPrefix];
      v20 = 2080;
      v21 = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] ERROR: no serviceAccount when scheduling movePendingMessagesToTrash", &v18, 0x16u);
    }
  }
}

- (void)movePendingMessagesToInboxTask:(id)a3
{
  v4 = a3;
  v5 = [(IMAPService *)self serviceAccount];

  if (v5)
  {
    v6 = [(IMAPService *)self serviceAccount];
    v7 = [MFMonitoredInvocation invocationWithSelector:"movePendingMessagesToInbox:" target:v6 object:v4 taskName:@"Pushing Flags" priority:5 canBeCancelled:1];

    [v7 retainArguments];
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VVService *)self getServiceObjLogPrefix];
      v10 = [(IMAPService *)self _messageChangeQueue];
      v11 = [v7 monitor];
      v12 = [v7 monitor];
      v13 = [(IMAPService *)self serviceAccount];
      v14 = [v13 accountStore];
      v18 = 136316674;
      v19 = v9;
      v20 = 2080;
      v21 = " ";
      v22 = 2112;
      v23 = v10;
      v24 = 2048;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v14;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: movePendingMessagesToInboxTask, store %@ => %@", &v18, 0x48u);
    }

    activityController = self->_activityController;
    v16 = [v7 monitor];
    [(IMAPServiceActivityController *)activityController addScheduledActivity:v16];

    v17 = [(IMAPService *)self _messageChangeQueue];
    [v17 addInvocation:v7];
  }

  else
  {
    v7 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = [(VVService *)self getServiceObjLogPrefix];
      v20 = 2080;
      v21 = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] ERROR: no serviceAccount when scheduling movePendingMessagesToInbox", &v18, 0x16u);
    }
  }
}

- (void)moveRecordsToTrashTask:(id)a3
{
  v4 = a3;
  v5 = [(IMAPService *)self serviceAccount];

  if (v5)
  {
    v6 = [(IMAPService *)self serviceAccount];
    v7 = [MFMonitoredInvocation invocationWithSelector:"moveMessagesWithTokensToTrash:" target:v6 object:v4 taskName:@"Pushing Flags" priority:5 canBeCancelled:1];

    [v7 retainArguments];
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VVService *)self getServiceObjLogPrefix];
      v10 = [(IMAPService *)self _messageChangeQueue];
      v11 = [v7 monitor];
      v12 = [v7 monitor];
      v16 = 136316674;
      v17 = v9;
      v18 = 2080;
      v19 = " ";
      v20 = 2112;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v4;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: moving records to Trash: %@ => %@", &v16, 0x48u);
    }

    activityController = self->_activityController;
    v14 = [v7 monitor];
    [(IMAPServiceActivityController *)activityController addScheduledActivity:v14];

    v15 = [(IMAPService *)self _messageChangeQueue];
    [v15 addInvocation:v7];
  }

  else
  {
    v7 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = [(VVService *)self getServiceObjLogPrefix];
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] ERROR: no serviceAccount when scheduling moveMessagesWithTokensToTrash", &v16, 0x16u);
    }
  }
}

- (void)moveRecordsToInboxTask:(id)a3
{
  v4 = a3;
  v5 = [(IMAPService *)self serviceAccount];

  if (v5)
  {
    v6 = [(IMAPService *)self serviceAccount];
    v7 = [MFMonitoredInvocation invocationWithSelector:"moveMessagesWithTokensToInbox:" target:v6 object:v4 taskName:@"Pushing Flags" priority:5 canBeCancelled:1];

    [v7 retainArguments];
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VVService *)self getServiceObjLogPrefix];
      v10 = [(IMAPService *)self _messageChangeQueue];
      v11 = [v7 monitor];
      v12 = [v7 monitor];
      v16 = 136316674;
      v17 = v9;
      v18 = 2080;
      v19 = " ";
      v20 = 2112;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v4;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: moving records to Inbox: %@ => %@", &v16, 0x48u);
    }

    activityController = self->_activityController;
    v14 = [v7 monitor];
    [(IMAPServiceActivityController *)activityController addScheduledActivity:v14];

    v15 = [(IMAPService *)self _messageChangeQueue];
    [v15 addInvocation:v7];
  }

  else
  {
    v7 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = [(VVService *)self getServiceObjLogPrefix];
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] ERROR: no serviceAccount when scheduling moveMessagesWithTokensToInbox", &v16, 0x16u);
    }
  }
}

- (void)moveRecordsToDeletedTask:(id)a3
{
  v4 = a3;
  v5 = [(IMAPService *)self serviceAccount];

  if (v5)
  {
    v6 = [(IMAPService *)self serviceAccount];
    v7 = [MFMonitoredInvocation invocationWithSelector:"moveMessagesWithTokensToDeleted:" target:v6 object:v4 taskName:@"Pushing Flags" priority:5 canBeCancelled:1];

    [v7 retainArguments];
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VVService *)self getServiceObjLogPrefix];
      v10 = [(IMAPService *)self _messageChangeQueue];
      v11 = [v7 monitor];
      v12 = [v7 monitor];
      v16 = 136316674;
      v17 = v9;
      v18 = 2080;
      v19 = " ";
      v20 = 2112;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v4;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: deleting records with tokens: %@ => %@", &v16, 0x48u);
    }

    activityController = self->_activityController;
    v14 = [v7 monitor];
    [(IMAPServiceActivityController *)activityController addScheduledActivity:v14];

    v15 = [(IMAPService *)self _messageChangeQueue];
    [v15 addInvocation:v7];
  }

  else
  {
    v7 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = [(VVService *)self getServiceObjLogPrefix];
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] ERROR: no serviceAccount when scheduling moveMessagesWithTokensToDeleted", &v16, 0x16u);
    }
  }
}

- (void)markRecordsAsReadTask:(id)a3
{
  v4 = a3;
  v5 = [(IMAPService *)self serviceAccount];

  if (v5)
  {
    v6 = [(IMAPService *)self serviceAccount];
    v7 = [MFMonitoredInvocation invocationWithSelector:"moveMessagesWithTokensToRead:" target:v6 object:v4 taskName:@"Pushing Flags" priority:5 canBeCancelled:1];

    [v7 retainArguments];
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VVService *)self getServiceObjLogPrefix];
      v10 = [(IMAPService *)self _messageChangeQueue];
      v11 = [v7 monitor];
      v12 = [v7 monitor];
      v16 = 136316674;
      v17 = v9;
      v18 = 2080;
      v19 = " ";
      v20 = 2112;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v4;
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: mark records as read: %@ => %@", &v16, 0x48u);
    }

    activityController = self->_activityController;
    v14 = [v7 monitor];
    [(IMAPServiceActivityController *)activityController addScheduledActivity:v14];

    v15 = [(IMAPService *)self _messageChangeQueue];
    [v15 addInvocation:v7];
  }

  else
  {
    v7 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315394;
      v17 = [(VVService *)self getServiceObjLogPrefix];
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] ERROR: no serviceAccount when scheduling moveMessagesWithTokensToRead", &v16, 0x16u);
    }
  }
}

- (void)moveRecords:(id)a3 toTrash:(BOOL)a4
{
  v4 = a4;
  v40 = a3;
  v6 = @"toInbox";
  if (v4)
  {
    v6 = @"toTrash";
  }

  v45 = [NSString stringWithFormat:@"moveRecords%@", v6];
  v7 = [(IMAPService *)self serviceAccount];
  ptr = self->logger.__ptr_;
  v39 = v7;
  if (v7)
  {
    v9 = sub_100026660(ptr);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v53 = [(VVService *)self getServiceObjLogPrefix];
      v54 = 2080;
      v55 = " ";
      v56 = 2112;
      v57 = v45;
      v58 = 2048;
      v59 = [v40 count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%@: moving %lu tokens started", buf, 0x2Au);
    }

    v47 = self;

    v10 = [v7 accountStore];
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v11 = v40;
    v12 = [v11 countByEnumeratingWithState:&v48 objects:v66 count:16];
    if (v12)
    {
      v43 = 0;
      v44 = 0;
      v46 = 0;
      v13 = 0;
      v14 = *v49;
      v15 = @"set";
      if (!v4)
      {
        v15 = @"reset";
      }

      v41 = v15;
      v42 = 0;
      do
      {
        v16 = 0;
        do
        {
          if (*v49 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = sub_100093224(v10, *(*(&v48 + 1) + 8 * v16));
          v18 = v17;
          if (v17)
          {
            v19 = VMStoreRecordCopyDescription(v17);
            v20 = sub_100092B0C(v10, v18);
            if ((!v4 || (v20 & 8) == 0) && (v4 || (v20 & 8) != 0))
            {
              if ((v20 & 4) != 0)
              {
                v24 = sub_100026660(v47[53]);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = [v47 getServiceObjLogPrefix];
                  *buf = 136315906;
                  v53 = v25;
                  v54 = 2080;
                  v55 = " ";
                  v56 = 2112;
                  v57 = v45;
                  v58 = 2112;
                  v59 = v19;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%s%@: no changes are required for deleted record %@", buf, 0x2Au);
                }

                v46 = (v46 + 1);
              }

              else
              {
                v21 = v47[53];
                if ((v20 & 0x40) != 0)
                {
                  v26 = sub_100026660(v47[53]);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    v27 = [v47 getServiceObjLogPrefix];
                    *buf = 136316162;
                    v53 = v27;
                    v54 = 2080;
                    v55 = " ";
                    v56 = 2112;
                    v57 = v45;
                    v58 = 2112;
                    v59 = v41;
                    v60 = 2112;
                    v61 = v19;
                    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%s%@: %@ Trashed flag for detached record %@", buf, 0x34u);
                  }

                  ++v44;
                  if (v4)
                  {
                    sub_100092B3C(v10, v18, 8);
                  }

                  else
                  {
                    sub_100092B48(v10, v18, 8);
                  }

                  LOBYTE(v42) = 1;
                }

                else
                {
                  v22 = sub_100026660(v47[53]);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    v23 = [v47 getServiceObjLogPrefix];
                    *buf = 136315906;
                    v53 = v23;
                    v54 = 2080;
                    v55 = " ";
                    v56 = 2112;
                    v57 = v45;
                    v58 = 2112;
                    v59 = v19;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%s%@: delayed merge required for record %@", buf, 0x2Au);
                  }

                  ++v43;
                  BYTE4(v42) = 1;
                }
              }
            }

            else
            {
              v13 = (v13 + 1);
            }

            if (v19)
            {
              CFRelease(v19);
            }

            CFRelease(v18);
          }

          v16 = v16 + 1;
        }

        while (v12 != v16);
        v28 = [v11 countByEnumeratingWithState:&v48 objects:v66 count:16];
        v12 = v28;
      }

      while (v28);

      if (v42)
      {
        v29 = sub_100026660(v47[53]);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v47 getServiceObjLogPrefix];
          *buf = 136315650;
          v53 = v30;
          v54 = 2080;
          v55 = " ";
          v56 = 2112;
          v57 = v45;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%s%@: saving account store", buf, 0x20u);
        }

        [v10 save];
LABEL_49:
        if ((v42 & 0x100000000) != 0)
        {
          v33 = sub_100026660(v47[53]);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [v47 getServiceObjLogPrefix];
            *buf = 136315650;
            v53 = v34;
            v54 = 2080;
            v55 = " ";
            v56 = 2112;
            v57 = v45;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%s%@: scheduling delayed merge", buf, 0x20u);
          }

          [v47 scheduleDelayedMerge];
        }

        else
        {
          v35 = sub_100026660(v47[53]);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = [v47 getServiceObjLogPrefix];
            *buf = 136315650;
            v53 = v36;
            v54 = 2080;
            v55 = " ";
            v56 = 2112;
            v57 = v45;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%s%@: no changes are required for delayed merge", buf, 0x20u);
          }
        }

        v37 = sub_100026660(v47[53]);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [v47 getServiceObjLogPrefix];
          *buf = 136316674;
          v53 = v38;
          v54 = 2080;
          v55 = " ";
          v56 = 2112;
          v57 = v45;
          v58 = 2048;
          v59 = v13;
          v60 = 2048;
          v61 = v46;
          v62 = 2048;
          v63 = v43;
          v64 = 2048;
          v65 = v44;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%s%@: moving (matched: %lu, deleted: %lu, delayed: %lu, detached: %lu) completed", buf, 0x48u);
        }

        goto LABEL_59;
      }
    }

    else
    {

      BYTE4(v42) = 0;
      v13 = 0;
      v46 = 0;
      v43 = 0;
      v44 = 0;
    }

    v31 = sub_100026660(v47[53]);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v47 getServiceObjLogPrefix];
      *buf = 136315650;
      v53 = v32;
      v54 = 2080;
      v55 = " ";
      v56 = 2112;
      v57 = v45;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s%@: no changes are required for account store database", buf, 0x20u);
    }

    goto LABEL_49;
  }

  v10 = sub_100026660(ptr);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v53 = [(VVService *)self getServiceObjLogPrefix];
    v54 = 2080;
    v55 = " ";
    v56 = 2112;
    v57 = v45;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%@: no serviceAccount found", buf, 0x20u);
  }

LABEL_59:
}

- (void)moveRecordsToDeleted:(id)a3
{
  v29 = a3;
  v4 = [(IMAPService *)self serviceAccount];
  ptr = self->logger.__ptr_;
  v28 = v4;
  if (v4)
  {
    v6 = sub_100026660(ptr);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v36 = [(VVService *)self getServiceObjLogPrefix];
      v37 = 2080;
      v38 = " ";
      v39 = 2048;
      v40 = [v29 count];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%smoveRecordsToDeleted: moving %lu tokens started", buf, 0x20u);
    }

    v7 = [v28 accountStore];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = v29;
    v9 = 0;
    v10 = 0;
    v11 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = *v31;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = sub_100093224(v7, *(*(&v30 + 1) + 8 * i));
          v15 = v14;
          if (v14)
          {
            v16 = VMStoreRecordCopyDescription(v14);
            sub_100092B0C(v7, v15);
            v17 = sub_100026660(self->logger.__ptr_);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [(VVService *)self getServiceObjLogPrefix];
              *buf = 136315650;
              v36 = v18;
              v37 = 2080;
              v38 = " ";
              v39 = 2112;
              v40 = v16;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%smoveRecordsToDeleted: delayed merge required for record %@", buf, 0x20u);
            }

            if (v16)
            {
              CFRelease(v16);
            }

            CFRelease(v15);
            v9 = (v9 + 1);
            v10 = 1;
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v11);
    }

    v19 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136315394;
      v36 = v20;
      v37 = 2080;
      v38 = " ";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%smoveRecordsToDeleted: no changes are required for account store database", buf, 0x16u);
    }

    v21 = self->logger.__ptr_;
    if (v10)
    {
      v22 = sub_100026660(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(VVService *)self getServiceObjLogPrefix];
        *buf = 136315394;
        v36 = v23;
        v37 = 2080;
        v38 = " ";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%smoveRecordsToDeleted: scheduling delayed merge", buf, 0x16u);
      }

      [(IMAPService *)self scheduleDelayedMerge];
    }

    else
    {
      v24 = sub_100026660(v21);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(VVService *)self getServiceObjLogPrefix];
        *buf = 136315394;
        v36 = v25;
        v37 = 2080;
        v38 = " ";
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%smoveRecordsToDeleted: no changes are required for delayed merge", buf, 0x16u);
      }
    }

    v26 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136315650;
      v36 = v27;
      v37 = 2080;
      v38 = " ";
      v39 = 2048;
      v40 = v9;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%smoveRecordsToDeleted: moving (delayed: %lu) completed", buf, 0x20u);
    }
  }

  else
  {
    v7 = sub_100026660(ptr);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v36 = [(VVService *)self getServiceObjLogPrefix];
      v37 = 2080;
      v38 = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%smoveRecordsToDeleted: no serviceAccount found", buf, 0x16u);
    }
  }
}

- (void)markRecordsAsRead:(id)a3
{
  v35 = a3;
  v4 = [(IMAPService *)self serviceAccount];
  ptr = self->logger.__ptr_;
  v34 = v4;
  if (!v4)
  {
    v7 = sub_100026660(ptr);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v45 = [(VVService *)self getServiceObjLogPrefix];
      v46 = 2080;
      v47 = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%smarkRecordsAsRead: no serviceAccount found", buf, 0x16u);
    }

    goto LABEL_50;
  }

  v6 = sub_100026660(ptr);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v45 = [(VVService *)self getServiceObjLogPrefix];
    v46 = 2080;
    v47 = " ";
    v48 = 2048;
    v49 = [v35 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%smarkRecordsAsRead: changing flag for %lu tokens started", buf, 0x20u);
  }

  v7 = [v4 accountStore];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = v35;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v56 count:16];
  if (!v9)
  {

    BYTE4(v36) = 0;
    v10 = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    goto LABEL_37;
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v10 = 0;
  v36 = 0;
  v11 = *v41;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v41 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = sub_100093224(v7, *(*(&v40 + 1) + 8 * i));
      v14 = v13;
      if (v13)
      {
        v15 = VMStoreRecordCopyDescription(v13);
        v16 = sub_100092B0C(v7, v14);
        if (v16)
        {
          v10 = (v10 + 1);
          if (v15)
          {
            goto LABEL_26;
          }
        }

        else
        {
          if ((v16 & 4) != 0)
          {
            v20 = sub_100026660(self->logger.__ptr_);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [(VVService *)self getServiceObjLogPrefix];
              *buf = 136315650;
              v45 = v21;
              v46 = 2080;
              v47 = " ";
              v48 = 2112;
              v49 = v15;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%smarkRecordsAsRead: no changes are required for deleted record %@", buf, 0x20u);
            }

            ++v39;
            if (!v15)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v17 = self->logger.__ptr_;
            if ((v16 & 0x40) != 0)
            {
              v22 = sub_100026660(self->logger.__ptr_);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = [(VVService *)self getServiceObjLogPrefix];
                *buf = 136315650;
                v45 = v23;
                v46 = 2080;
                v47 = " ";
                v48 = 2112;
                v49 = v15;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%smarkRecordsAsRead: changing Read flag for detached record %@", buf, 0x20u);
              }

              sub_100092B3C(v7, v14, 1);
              ++v37;
              LOBYTE(v36) = 1;
              if (!v15)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v18 = sub_100026660(self->logger.__ptr_);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [(VVService *)self getServiceObjLogPrefix];
                *buf = 136315650;
                v45 = v19;
                v46 = 2080;
                v47 = " ";
                v48 = 2112;
                v49 = v15;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%smarkRecordsAsRead: merge required for record %@", buf, 0x20u);
              }

              ++v38;
              BYTE4(v36) = 1;
              if (!v15)
              {
                goto LABEL_27;
              }
            }
          }

LABEL_26:
          CFRelease(v15);
        }

LABEL_27:
        CFRelease(v14);
        continue;
      }
    }

    v9 = [v8 countByEnumeratingWithState:&v40 objects:v56 count:16];
  }

  while (v9);

  if (v36)
  {
    v24 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136315394;
      v45 = v25;
      v46 = 2080;
      v47 = " ";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%smarkRecordsAsRead: saving account store", buf, 0x16u);
    }

    [v7 save];
    goto LABEL_40;
  }

LABEL_37:
  v26 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(VVService *)self getServiceObjLogPrefix];
    *buf = 136315394;
    v45 = v27;
    v46 = 2080;
    v47 = " ";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%smarkRecordsAsRead: no changes are required for account store database", buf, 0x16u);
  }

LABEL_40:
  if ((v36 & 0x100000000) != 0)
  {
    v28 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136315394;
      v45 = v29;
      v46 = 2080;
      v47 = " ";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%smarkRecordsAsRead: scheduling delayed merge", buf, 0x16u);
    }

    [(IMAPService *)self scheduleDelayedMerge];
  }

  else
  {
    v30 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136315394;
      v45 = v31;
      v46 = 2080;
      v47 = " ";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%smarkRecordsAsRead: no changes are required for delayed merge", buf, 0x16u);
    }
  }

  v32 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [(VVService *)self getServiceObjLogPrefix];
    *buf = 136316418;
    v45 = v33;
    v46 = 2080;
    v47 = " ";
    v48 = 2048;
    v49 = v10;
    v50 = 2048;
    v51 = v39;
    v52 = 2048;
    v53 = v38;
    v54 = 2048;
    v55 = v37;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%smarkRecordsAsRead: (matched: %lu, deleted: %lu, delayed: %lu, detached: %lu) completed", buf, 0x3Eu);
  }

LABEL_50:
}

- (id)copyTokensForRecords:(id)a3
{
  v15 = a3;
  if ([v15 count])
  {
    v4 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v15;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v6)
    {
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = VMStoreRecordGetToken(v9);
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = sub_100026660(self->logger.__ptr_);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = [(VVService *)self getServiceObjLogPrefix];
              v13 = sub_100087658(v9);
              *buf = 136315650;
              v21 = v12;
              v22 = 2080;
              v23 = " ";
              v24 = 2112;
              v25 = v13;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%scopyTokensForRecords: no token for record %@", buf, 0x20u);
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)copyTokensForRecordsWithFlags:(unsigned int)a3 flagsToNotHave:(unsigned int)a4
{
  v5 = VMStoreCopyOfAllRecordsWithFlags(a3, a4, 0);
  v6 = [(IMAPService *)self copyTokensForRecords:v5];

  return v6;
}

- (id)copyTokensForDeletedRecords
{
  v3 = VMStoreCopyOfAllDeletedRecords();
  v4 = [(IMAPService *)self copyTokensForRecords:v3];

  return v4;
}

- (id)copyAccountTokensForMainRecordsWithFlags:(unsigned int)a3 flagsToNotHave:(unsigned int)a4
{
  v22 = VMStoreCopyOfAllRecordsWithFlags(a3, a4, 0);
  if ([v22 count])
  {
    v6 = [(IMAPService *)self serviceAccount];
    if (v6)
    {
      v7 = [(IMAPService *)self serviceAccount];
      v8 = [v7 accountStore];

      v23 = objc_opt_new();
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      obj = v22;
      v9 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v9)
      {
        v10 = *v29;
        v25 = a4 | a3;
        v24 = v6;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v28 + 1) + 8 * i);
            v13 = VMStoreRecordGetToken(v12);
            if (v13)
            {
              v14 = sub_100093224(v8, v13);
              if (v14)
              {
                if ((sub_100092B0C(v8, v14) & v25) != a3)
                {
                  [v23 addObject:v13];
                  v15 = sub_100026660(self->logger.__ptr_);
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    v16 = [(VVService *)self getServiceObjLogPrefix];
                    v17 = sub_100087658(v14);
                    *buf = 136315650;
                    v33 = v16;
                    v34 = 2080;
                    v35 = " ";
                    v36 = 2112;
                    v37 = v17;
                    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%scopyAccountTokens: added record %@", buf, 0x20u);

                    v6 = v24;
                  }
                }

                CFRelease(v14);
              }
            }

            else
            {
              v18 = sub_100026660(self->logger.__ptr_);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [(VVService *)self getServiceObjLogPrefix];
                v20 = sub_100087658(v12);
                *buf = 136315650;
                v33 = v19;
                v34 = 2080;
                v35 = " ";
                v36 = 2112;
                v37 = v20;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%scopyAccountTokens: no token for record %@", buf, 0x20u);

                v6 = v24;
              }
            }
          }

          v9 = [obj countByEnumeratingWithState:&v28 objects:v38 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v8 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v33 = [(VVService *)self getServiceObjLogPrefix];
        v34 = 2080;
        v35 = " ";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%scopyAccountTokens: no serviceAccount found", buf, 0x16u);
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)copyAccountTokensForDeletedRecords:(id)a3
{
  v20 = a3;
  if ([v20 count])
  {
    v19 = [(IMAPService *)self serviceAccount];
    if (v19)
    {
      v4 = [(IMAPService *)self serviceAccount];
      log = [v4 accountStore];

      v22 = objc_opt_new();
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = v20;
      v5 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
      if (v5)
      {
        v6 = *v26;
        v21 = self;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v26 != v6)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v25 + 1) + 8 * i);
            v9 = VMStoreRecordGetToken(v8);
            if (v9)
            {
              v10 = sub_100093224(log, v9);
              if (v10)
              {
                [v22 addObject:v9];
                v11 = sub_100026660(self->logger.__ptr_);
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                {
                  v12 = [(VVService *)self getServiceObjLogPrefix];
                  v13 = sub_100087658(v10);
                  v14 = sub_100087658(v8);
                  *buf = 136315906;
                  v30 = v12;
                  v31 = 2080;
                  v32 = " ";
                  v33 = 2112;
                  v34 = v13;
                  v35 = 2112;
                  v36 = v14;
                  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%scopyAccountTokensForDeletedRecords: added record %@, main record %@", buf, 0x2Au);

                  self = v21;
                }

                CFRelease(v10);
              }
            }

            else
            {
              v15 = sub_100026660(self->logger.__ptr_);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = [(VVService *)self getServiceObjLogPrefix];
                v17 = sub_100087658(v8);
                *buf = 136315650;
                v30 = v16;
                v31 = 2080;
                v32 = " ";
                v33 = 2112;
                v34 = v17;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%scopyAccountTokensForDeletedRecords: no token for record %@", buf, 0x20u);

                self = v21;
              }
            }
          }

          v5 = [obj countByEnumeratingWithState:&v25 objects:v37 count:16];
        }

        while (v5);
      }
    }

    else
    {
      log = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v30 = [(VVService *)self getServiceObjLogPrefix];
        v31 = 2080;
        v32 = " ";
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s%scopyAccountTokensForDeletedRecords: no serviceAccount found", buf, 0x16u);
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)copyAccountTokensForDeletedRecords
{
  v3 = VMStoreCopyOfAllDeletedRecords();
  v4 = [(IMAPService *)self copyAccountTokensForDeletedRecords:v3];

  return v4;
}

- (void)_imap_M2A_merge
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315394;
    v28 = [(VVService *)self getServiceObjLogPrefix];
    v29 = 2080;
    v30 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%simap_M2A_merge: started", &v27, 0x16u);
  }

  v4 = [(IMAPService *)self serviceAccount];
  v5 = v4 == 0;

  if (v5)
  {
    v23 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(VVService *)self getServiceObjLogPrefix];
      v27 = 136315394;
      v28 = v26;
      v29 = 2080;
      v30 = " ";
      v25 = "#I %s%simap_M2A_merge: no serviceAccount found";
      goto LABEL_24;
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [(IMAPService *)self copyAccountTokensForMainRecordsWithFlags:8 flagsToNotHave:0];
    v8 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(VVService *)self getServiceObjLogPrefix];
      v10 = [v7 count];
      v27 = 136315650;
      v28 = v9;
      v29 = 2080;
      v30 = " ";
      v31 = 2048;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%simap_M2A_merge: found %lu trash records", &v27, 0x20u);
    }

    if ([v7 count])
    {
      [(IMAPService *)self moveRecordsToTrashTask:v7];
    }

    v11 = [(IMAPService *)self copyAccountTokensForMainRecordsWithFlags:0 flagsToNotHave:8];
    v12 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(VVService *)self getServiceObjLogPrefix];
      v14 = [v11 count];
      v27 = 136315650;
      v28 = v13;
      v29 = 2080;
      v30 = " ";
      v31 = 2048;
      v32 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%simap_M2A_merge: found %lu inbox records", &v27, 0x20u);
    }

    if ([v11 count])
    {
      [(IMAPService *)self moveRecordsToInboxTask:v11];
    }

    v15 = [(IMAPService *)self copyAccountTokensForMainRecordsWithFlags:1 flagsToNotHave:0];
    v16 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [(VVService *)self getServiceObjLogPrefix];
      v18 = [v15 count];
      v27 = 136315650;
      v28 = v17;
      v29 = 2080;
      v30 = " ";
      v31 = 2048;
      v32 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%simap_M2A_merge: found %lu read records", &v27, 0x20u);
    }

    if ([v15 count])
    {
      [(IMAPService *)self markRecordsAsReadTask:v15];
    }

    v19 = [(IMAPService *)self copyAccountTokensForDeletedRecords];
    v20 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(VVService *)self getServiceObjLogPrefix];
      v22 = [v19 count];
      v27 = 136315650;
      v28 = v21;
      v29 = 2080;
      v30 = " ";
      v31 = 2048;
      v32 = v22;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%simap_M2A_merge: found %lu deleted records", &v27, 0x20u);
    }

    if ([v19 count])
    {
      [(IMAPService *)self moveRecordsToDeletedTask:v19];
    }

    objc_autoreleasePoolPop(v6);
    v23 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [(VVService *)self getServiceObjLogPrefix];
      v27 = 136315394;
      v28 = v24;
      v29 = 2080;
      v30 = " ";
      v25 = "#I %s%simap_M2A_merge: completed";
LABEL_24:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, &v27, 0x16u);
    }
  }
}

- (void)do_M2A_merge
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = [(VVService *)self getServiceObjLogPrefix];
    v17 = 2080;
    v18 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sdo_M2A_merge: started", &v15, 0x16u);
  }

  v4 = [(IMAPService *)self serviceAccount];
  v5 = v4 == 0;

  if (v5)
  {
    v11 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [(VVService *)self getServiceObjLogPrefix];
      v15 = 136315394;
      v16 = v14;
      v17 = 2080;
      v18 = " ";
      v13 = "#I %s%sdo_M2A_merge: no serviceAccount found";
      goto LABEL_16;
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [(IMAPService *)self copyTokensForRecordsWithFlags:8 flagsToNotHave:0];
    if ([v7 count])
    {
      [(IMAPService *)self moveRecordsToTrash:v7];
    }

    v8 = [(IMAPService *)self copyTokensForRecordsWithFlags:0 flagsToNotHave:8];
    if ([v8 count])
    {
      [(IMAPService *)self moveRecordsToInbox:v8];
    }

    v9 = [(IMAPService *)self copyTokensForRecordsWithFlags:1 flagsToNotHave:0];
    if ([v9 count])
    {
      [(IMAPService *)self markRecordsAsRead:v9];
    }

    v10 = [(IMAPService *)self copyTokensForDeletedRecords];
    if ([v10 count])
    {
      [(IMAPService *)self moveRecordsToDeleted:v10];
    }

    objc_autoreleasePoolPop(v6);
    v11 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [(VVService *)self getServiceObjLogPrefix];
      v15 = 136315394;
      v16 = v12;
      v17 = 2080;
      v18 = " ";
      v13 = "#I %s%sdo_M2A_merge: completed";
LABEL_16:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, &v15, 0x16u);
    }
  }
}

- (void)scheduleDelayedMerge
{
  if ([(IMAPService *)self isSyncScheduled])
  {
    v3 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = [(VVService *)self getServiceObjLogPrefix];
      v11 = 2080;
      v12 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sscheduleDelayedMerge: delayed merge is scheduled already", buf, 0x16u);
    }
  }

  else
  {
    [(IMAPService *)self setSyncRequired:1];
    [(IMAPService *)self setSyncScheduled:1];
    v4 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = [(VVService *)self getServiceObjLogPrefix];
      v11 = 2080;
      v12 = " ";
      v13 = 1024;
      v14 = 60;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sscheduleDelayedMerge: sheduling delayed merge in %d seconds", buf, 0x1Cu);
    }

    objc_initWeak(buf, self);
    v5 = dispatch_time(0, 60000000000);
    v6 = [(VVService *)self serialDispatchQueue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10007D908;
    v7[3] = &unk_1000EEB58;
    objc_copyWeak(&v8, buf);
    v7[4] = self;
    dispatch_after(v5, v6, v7);

    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (void)populateLabelInformation
{
  v3 = [(VVService *)self serviceMDN];
  v4 = VMStoreCopyRecordsWithReceiver(v3);

  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(VVService *)self getServiceObjLogPrefix];
    v7 = [(VVService *)self serviceLabelID];
    v8 = [(VVService *)self serviceMDN];
    v14 = 136315906;
    v15 = v6;
    v16 = 2080;
    v17 = " ";
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] populateLabelInformation for label %@, service phone number %@", &v14, 0x2Au);
  }

  if (v4)
  {
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        v12 = VMStoreRecordGetLabel(ValueAtIndex);
        if (!v12)
        {
          v13 = [(VVService *)self serviceLabelID];
          VMStoreRecordSetLabel(ValueAtIndex, v13);
        }
      }
    }

    CFRelease(v4);
  }

  VMStoreSave();
}

- (void)populateReceiverInformationForServiceAccount:(id)a3
{
  v43 = a3;
  v4 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(VVService *)self getServiceObjLogPrefix];
    v6 = [(VVService *)self serviceLabelID];
    *buf = 136315906;
    v69 = v5;
    v70 = 2080;
    v71 = " ";
    v72 = 2112;
    v73 = v6;
    v74 = 2112;
    v75 = v43;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] populateReceiverInformationForServiceAccount %@, serviceAccount:%@", buf, 0x2Au);
  }

  v42 = [v43 mailboxUidForRelativePath:@"INBOX" create:1];
  [v43 mailboxUidForRelativePath:@"Trash" create:1];
  v67 = v66 = v42;
  v38 = v67;
  [NSArray arrayWithObjects:&v66 count:2];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  obj = v61 = 0u;
  v41 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v41)
  {
    v40 = *v61;
    do
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v61 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v60 + 1) + 8 * i);
        v47 = +[NSMutableSet set];
        v46 = [v43 storeForMailboxUid:v7];
        if ([v7 isEqual:v42])
        {
          v8 = VMStoreCopyOfAllRecordsWithFlags(0, 8, 0);
          v9 = 1;
        }

        else
        {
          if (![v7 isEqual:v38])
          {
            v51 = 0;
            goto LABEL_28;
          }

          v8 = VMStoreCopyOfAllRecordsWithFlags(8, 0, 0);
          v9 = 3;
        }

        v51 = v9;
        if (v8)
        {
          v52 = [(VVService *)self serviceICC];
          Count = CFArrayGetCount(v8);
          theString = [(VVService *)self serviceMDN];
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_10007E6A4;
          v58[3] = &unk_1000EF300;
          v59 = &stru_1000EF2D8;
          v11 = objc_retainBlock(v58);
          if (Count >= 1)
          {
            for (j = 0; j != Count; ++j)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v8, j);
              if ((VMStoreRecordGetFlags(ValueAtIndex) & 0x40) != 0)
              {
                v15 = VMStoreRecordCopyReceiver(ValueAtIndex);
                if (v15)
                {
                  if (CFStringHasSuffix(theString, v15))
                  {
                    (v11[2])(v11, ValueAtIndex, v52);
                  }

                  CFRelease(v15);
                }
              }

              else
              {
                v14 = VMStoreRecordCopyReceiver(ValueAtIndex);
                if (v14)
                {
                  (v11[2])(v11, ValueAtIndex, v52);
                  CFRelease(v14);
                }

                else
                {
                  VMStoreRecordSetReceiver(ValueAtIndex);
                }

                v16 = VMStoreRecordCopyToken(ValueAtIndex);
                if (v16)
                {
                  [v47 addObject:v16];
                }
              }
            }
          }

          VMStoreSave();
          CFRelease(v8);
        }

LABEL_28:
        if ([v47 count])
        {
          v17 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [(VVService *)self getServiceObjLogPrefix];
            *buf = 136315906;
            v69 = v18;
            v70 = 2080;
            v71 = " ";
            v72 = 2112;
            v73 = v46;
            v74 = 2112;
            v75 = v47;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sChecking message store %@ for message IDs %@", buf, 0x2Au);
          }

          v44 = [v46 messageIdRollCall:v47];
          v19 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [(VVService *)self getServiceObjLogPrefix];
            *buf = 136315906;
            v69 = v20;
            v70 = 2080;
            v71 = " ";
            v72 = 2112;
            v73 = v46;
            v74 = 2112;
            v75 = v44;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sMessage store %@ contains message IDs %@", buf, 0x2Au);
          }

          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v48 = v44;
          v21 = [v48 countByEnumeratingWithState:&v54 objects:v64 count:16];
          if (v21)
          {
            theStringa = *v55;
            do
            {
              v53 = v21;
              for (k = 0; k != v53; k = k + 1)
              {
                if (*v55 != theStringa)
                {
                  objc_enumerationMutation(v48);
                }

                v23 = *(*(&v54 + 1) + 8 * k);
                v24 = VMStoreCopyRecordsWithTokenInMailbox(v23, v51);
                v25 = v24;
                if (v24)
                {
                  v26 = CFArrayGetCount(v24);
                  if (v26 >= 2)
                  {
                    v27 = sub_100026660(self->logger.__ptr_);
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                    {
                      v28 = [(VVService *)self getServiceObjLogPrefix];
                      *buf = 136315906;
                      v69 = v28;
                      v70 = 2080;
                      v71 = " ";
                      v72 = 2048;
                      v73 = v26;
                      v74 = 2112;
                      v75 = v23;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%sFound %ld records for message ID '%@'", buf, 0x2Au);
                    }

                    v29 = 0;
                    v30 = 0;
                    do
                    {
                      v31 = CFArrayGetValueAtIndex(v25, v29);
                      v32 = v31;
                      if (v30)
                      {
                        v33 = sub_100026660(self->logger.__ptr_);
                        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                        {
                          v34 = [(VVService *)self getServiceObjLogPrefix];
                          *buf = 136315906;
                          v69 = v34;
                          v70 = 2080;
                          v71 = " ";
                          v72 = 2112;
                          v73 = v32;
                          v74 = 2112;
                          v75 = v23;
                          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoving duplicate record %@ with message ID '%@'", buf, 0x2Au);
                        }

                        VMStoreRemoveRecord(v32);
                      }

                      else
                      {
                        if ((VMStoreRecordGetFlags(v31) & 0x10) != 0)
                        {
                          v30 = 0;
                          goto LABEL_53;
                        }

                        v35 = sub_100026660(self->logger.__ptr_);
                        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                        {
                          v36 = [(VVService *)self getServiceObjLogPrefix];
                          *buf = 136315906;
                          v69 = v36;
                          v70 = 2080;
                          v71 = " ";
                          v72 = 2112;
                          v73 = v32;
                          v74 = 2112;
                          v75 = v23;
                          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%sFound first instance of record %@ with message ID '%@'", buf, 0x2Au);
                        }
                      }

                      v30 = 1;
LABEL_53:
                      ++v29;
                    }

                    while (v26 != v29);
                  }

                  CFRelease(v25);
                }
              }

              v21 = [v48 countByEnumeratingWithState:&v54 objects:v64 count:16];
            }

            while (v21);
          }
        }
      }

      v41 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v41);
  }

  v37 = [(VVService *)self serviceLabelID];
  VMStoreSetReceiverMigration([v37 UUIDString]);

  VMStoreSave();
}

- (void)_synchronouslyPushFlags:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"userInfo"];

  v6 = [CFDictionaryGetValue(v5 @"VMStoreRecordChangedFlags")];
  v7 = [v4 objectForKeyedSubscript:@"object"];

  v8 = VMStoreRecordCopyFlagsDescription(v6);
  v9 = VMStoreRecordCopyDescription(v7);
  v10 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 136315906;
    v24 = [(VVService *)self getServiceObjLogPrefix];
    v25 = 2080;
    v26 = " ";
    v27 = 2112;
    v28 = v8;
    v29 = 2112;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] Synchronously push flags %@ for record %@", &v23, 0x2Au);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if ((v6 & 4) != 0)
  {
    v11 = (VMStoreRecordGetFlags(v7) >> 2) & 1;
  }

  else
  {
    v11 = 0;
  }

  if ((VMStoreRecordGetFlags(v7) & 0x10) == 0 && (v6 & 0x45) != 0)
  {
    if (v11 && (VMStoreRecordGetFlags(v7) & 0x40) != 0)
    {
      v20 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(VVService *)self getServiceObjLogPrefix];
        Identifier = VMStoreRecordGetIdentifier(v7);
        v23 = 136315650;
        v24 = v21;
        v25 = 2080;
        v26 = " ";
        v27 = 1024;
        LODWORD(v28) = Identifier;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sFound detached record with identifier: %d, just removing it", &v23, 0x1Cu);
      }

      VMStoreRemoveRecord(v7);
      VMStoreSave();
      [(VVService *)self resetCounts];
    }

    else
    {
      if ([(VVService *)self supportsDetachedStorage])
      {
        v12 = (v6 >> 4) & 4;
      }

      else
      {
        LOBYTE(v12) = 0;
      }

      v13 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(VVService *)self getServiceObjLogPrefix];
        v15 = VMStoreRecordGetIdentifier(v7);
        v23 = 136315650;
        v24 = v14;
        v25 = 2080;
        v26 = " ";
        v27 = 1024;
        LODWORD(v28) = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sStoring flags for record with identifier: %d", &v23, 0x1Cu);
      }

      v16 = [(IMAPService *)self serviceAccount];
      [v16 storeFlags:(v12 | v6) & 5 forRecord:v7];

      if ((VMStoreRecordGetFlags(v7) & 4) != 0 && ((v12 | v6) & 4) != 0 || (VMStoreRecordGetFlags(v7) & 0x40) != 0 && (v6 & 0x40) != 0)
      {
        v17 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = [(VVService *)self getServiceObjLogPrefix];
          v23 = 136315394;
          v24 = v18;
          v25 = 2080;
          v26 = " ";
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sRecords removed - invalidating mailbox usage information", &v23, 0x16u);
        }

        [(IMAPService *)self setMailboxUsage:0];
        v19 = +[NSUserDefaults standardUserDefaults];
        [v19 removeObjectForKey:kVVLastWarnedUsageDefault];
      }
    }
  }
}

- (void)_synchronouslySetDefaultGreeting
{
  v3 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VVService *)self getServiceObjLogPrefix];
    v5 = [(IMAPService *)self serviceAccount];
    *buf = 136315650;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v36 = 2112;
    v37 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sJetsam assertion for default greeting sync created, service account %@", buf, 0x20u);
  }

  v6 = pthread_mutex_lock(&stru_10010D568);
  if (!xmmword_10010D5A8)
  {
    ctu::XpcJetsamAssertion::create_default_global(buf, v6);
    v7 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v8 = *(&xmmword_10010D5A8 + 1);
    xmmword_10010D5A8 = v7;
    if (v8)
    {
      sub_100083FCC(v8);
      if (*&buf[8])
      {
        sub_100083FCC(*&buf[8]);
      }
    }
  }

  v9 = *(&xmmword_10010D5A8 + 1);
  if (*(&xmmword_10010D5A8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_10010D5A8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_10010D568);
  sub_10007F334(&__p, "_synchronouslySetDefaultGreeting");
  ctu::XpcJetsamAssertion::createActivity();
  if (v27 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    sub_100083FCC(v9);
  }

  [(NSRecursiveLock *)self->_greetingLock lock];
  v10 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(VVService *)self getServiceObjLogPrefix];
    v12 = [(IMAPService *)self serviceAccount];
    *buf = 136315650;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v36 = 2112;
    v37 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] Set default greeting synchronously for service account %@ started", buf, 0x20u);
  }

  v13 = [(IMAPService *)self serviceAccount];
  v14 = [v13 mailboxUidForRelativePath:@"Greetings" create:0];
  if (v14)
  {
    v15 = [v13 storeForMailboxUid:v14];
    [v15 removeActiveGreetingFlagFromAllUids];
  }

  v16 = +[MFActivityMonitor currentTracebleMonitor];
  v17 = [v16 error];
  v18 = v17 == 0;

  if (v18)
  {
    [(IMAPService *)self _setActiveGreetingType:0];
    v19 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136315394;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%smark custom greeting inactive", buf, 0x16u);
    }

    [(IMAPService *)self mf_lock];
    v21 = [(IMAPService *)self _parameters];
    v22 = [NSNumber numberWithBool:0];
    [v21 setObject:v22 forKey:@"GreetingCustomActive"];

    [(IMAPService *)self _saveParameters];
    [(IMAPService *)self mf_unlock];
  }

  [(NSRecursiveLock *)self->_greetingLock unlock];
  v23 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(VVService *)self getServiceObjLogPrefix];
    v25 = [(IMAPService *)self serviceAccount];
    *v29 = 136315650;
    v30 = v24;
    v31 = 2080;
    v32 = " ";
    v33 = 2112;
    v34 = v25;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] Set default greeting synchronously for service account %@ completed", v29, 0x20u);
  }

  if (v28)
  {
    sub_100083FCC(v28);
  }
}

- (void)_synchronouslySetCustomGreetingWithData:(id)a3 duration:(id)a4
{
  v53 = a3;
  v51 = a4;
  v6 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(VVService *)self getServiceObjLogPrefix];
    v8 = [(IMAPService *)self serviceAccount];
    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v64 = 2112;
    v65 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sJetsam assertion for custom greeting sync created, service account %@", buf, 0x20u);
  }

  v9 = pthread_mutex_lock(&stru_10010D568);
  if (!xmmword_10010D5A8)
  {
    ctu::XpcJetsamAssertion::create_default_global(buf, v9);
    v10 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v11 = *(&xmmword_10010D5A8 + 1);
    xmmword_10010D5A8 = v10;
    if (v11)
    {
      sub_100083FCC(v11);
      if (*&buf[8])
      {
        sub_100083FCC(*&buf[8]);
      }
    }
  }

  v12 = *(&xmmword_10010D5A8 + 1);
  if (*(&xmmword_10010D5A8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_10010D5A8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_10010D568);
  sub_10007F334(&__p, "_synchronouslySetCustomGreetingWithData");
  ctu::XpcJetsamAssertion::createActivity();
  if (v55 < 0)
  {
    operator delete(__p);
  }

  if (v12)
  {
    sub_100083FCC(v12);
  }

  [(NSRecursiveLock *)self->_greetingLock lock];
  v52 = +[MFActivityMonitor currentTracebleMonitor];
  v13 = [v53 length];
  v14 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(VVService *)self getServiceObjLogPrefix];
    v16 = [(IMAPService *)self serviceAccount];
    v17 = v16;
    v18 = @"is available";
    *buf = 136316162;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    if (!v13)
    {
      v18 = @"is not available";
    }

    v64 = 2112;
    v65 = v18;
    v66 = 2112;
    v67 = v51;
    v68 = 2112;
    v69 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] Set custom greeting synchronously with data '%@', duration %@ for service account %@", buf, 0x34u);
  }

  if (v13)
  {
    v19 = objc_alloc_init(MFMutableMessageHeaders);
    [v19 setHeader:@"1.0" forKey:@"x-applevm-message-version"];
    [v19 setHeader:@"1.0" forKey:H_MIME_VERSION];
    v20 = +[NSDate date];
    v21 = [v20 mf_descriptionForMimeHeaders];
    [v19 setHeader:v21 forKey:H_DATE];

    v22 = [[MFMessageFileWrapper alloc] initRegularFileWithContents:v53];
    [v22 setMimeType:@"audio/amr"];
    [v22 setPreferredFilename:@"Greeting.amr"];
    v23 = [[NSArray alloc] initWithObjects:{v22, 0}];
    v24 = objc_alloc_init(MFMessageWriter);
    [v24 setDelegate:self];
    [v24 setWriteSizeDispositionParameter:1];
    self->_greetingDuration = [v51 unsignedIntValue];
    v25 = [v24 createMessageWithHtmlString:0 attachments:v23 headers:v19];
    v26 = [(IMAPService *)self serviceAccount];
    v27 = [v26 mailboxUidForRelativePath:@"Greetings" create:0];
    if (v27)
    {
      if ([v52 shouldCancel])
      {
LABEL_40:
        [v25 setMessageBody:0];

        goto LABEL_41;
      }

      v49 = [v26 storeForMailboxUid:v27];
      v50 = [v49 appendActiveGreeting:v25];
      v28 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(VVService *)self getServiceObjLogPrefix];
        *buf = 136315650;
        *&buf[4] = v29;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v64 = 1024;
        LODWORD(v65) = v50;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%snew greeting UID: %u", buf, 0x1Cu);
      }

      if (!v50)
      {
        v40 = [v52 error];
        v41 = v40 == 0;

        if (v41)
        {
          v37 = [NSError errorWithDomain:kVVErrorDomain code:1008 localizedDescription:@"Error appending greeting."];
          [v52 setError:v37];
LABEL_37:
        }

LABEL_38:
        v30 = v49;
        goto LABEL_39;
      }

      v30 = v49;
      if (([v52 shouldCancel] & 1) == 0)
      {
        [v49 removeActiveGreetingFlagFromAllUidsExceptLast:v50];
        v31 = [v52 error];
        v32 = v31 == 0;

        if (v32)
        {
          v33 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [(VVService *)self getServiceObjLogPrefix];
            *buf = 136315650;
            *&buf[4] = v34;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v64 = 1024;
            LODWORD(v65) = v50;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%smark custom greeting UID %u active", buf, 0x1Cu);
          }

          [(IMAPService *)self mf_lock];
          v48 = [(IMAPService *)self _parameters];
          v35 = [NSNumber numberWithBool:1];
          [v48 setObject:v35 forKey:@"GreetingCustomActive"];

          v36 = [NSNumber numberWithUnsignedLong:v50];
          [v48 setObject:v36 forKey:@"GreetingCustomUID"];

          [(IMAPService *)self _saveParameters];
          [(IMAPService *)self mf_unlock];
          v37 = v48;
          goto LABEL_37;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v30 = [NSError errorWithDomain:kVVErrorDomain code:1016 localizedDescription:@"Greetings mailbox doesn't exist."];
      [v52 setError:v30];
    }

LABEL_39:

    goto LABEL_40;
  }

  v19 = [(IMAPService *)self serviceAccount];
  v22 = [v19 mailboxUidForRelativePath:@"Greetings" create:0];
  if (v22)
  {
    v23 = [v19 storeForMailboxUid:v22];
    v24 = [v23 candidateGreetingMessage];
    if ([v52 shouldCancel])
    {
      goto LABEL_42;
    }

    v38 = [v52 error];
    v39 = v38 == 0;

    if (!v39)
    {
      goto LABEL_42;
    }

    if (v24)
    {
      [v23 makeGreetingActive:v24];
LABEL_42:

      goto LABEL_43;
    }

    v25 = [NSError errorWithDomain:kVVErrorDomain code:1033 localizedDescription:@"No greeting found to make active."];
    [v52 setError:v25];
LABEL_41:

    goto LABEL_42;
  }

  v23 = [NSError errorWithDomain:kVVErrorDomain code:1016 localizedDescription:@"Greetings mailbox doesn't exist."];
  [v52 setError:v23];
LABEL_43:

  v42 = +[MFActivityMonitor currentTracebleMonitor];
  v43 = [v42 error];
  v44 = v43 == 0;

  if (v44)
  {
    [(IMAPService *)self _setActiveGreetingType:2];
    if (v13)
    {
      [(IMAPService *)self _setGreetingCached:1];
    }
  }

  [(NSRecursiveLock *)self->_greetingLock unlock];
  v45 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [(VVService *)self getServiceObjLogPrefix];
    v47 = [(IMAPService *)self serviceAccount];
    *v57 = 136315650;
    v58 = v46;
    v59 = 2080;
    v60 = " ";
    v61 = 2112;
    v62 = v47;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] Set custom greeting synchronously for service account %@ completed", v57, 0x20u);
  }

  if (v56)
  {
    sub_100083FCC(v56);
  }
}

- (void)messageWriter:(id)a3 willEncodeHeaders:(id)a4 forMimePart:(id)a5
{
  v11 = a4;
  v7 = a5;
  if ([v7 isAttachment])
  {
    v8 = [v7 type];
    if ([v8 isEqualToString:@"audio"])
    {
      v9 = [v7 subtype];
      if ([v9 isEqualToString:@"amr"])
      {
        greetingDuration = self->_greetingDuration;

        if (!greetingDuration)
        {
          goto LABEL_8;
        }

        v8 = [[NSString alloc] initWithFormat:@"%u", self->_greetingDuration];
        [v11 setHeader:v8 forKey:@"x-applevm-duration"];
      }

      else
      {
      }
    }
  }

LABEL_8:
}

- (void)setGreetingType:(int64_t)a3 data:(id)a4 duration:(unint64_t)a5
{
  v8 = a4;
  if (!self->_greetingLock)
  {
    v9 = objc_alloc_init(NSRecursiveLock);
    greetingLock = self->_greetingLock;
    self->_greetingLock = v9;
  }

  v34.receiver = self;
  v34.super_class = IMAPService;
  [(VVService *)&v34 setGreetingType:a3 data:v8 duration:a5];
  if (a3 < 2)
  {
    goto LABEL_6;
  }

  if (a3 == 2)
  {
    v11 = [[NSNumber alloc] initWithUnsignedInteger:a5];
    LOBYTE(v33) = 0;
    v21 = [MFMonitoredInvocation invocationWithSelector:"_synchronouslySetCustomGreetingWithData:duration:" target:self object1:v8 object2:v11 taskName:@"Setting Custom Greeting" priority:14 canBeCancelled:v33];
    [v21 retainArguments];
    v22 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [(VVService *)self getServiceObjLogPrefix];
      v24 = [(IMAPService *)self _messageChangeQueue];
      v25 = [v21 monitor];
      v26 = [v21 monitor];
      v27 = [(IMAPService *)self serviceAccount];
      *buf = 136316674;
      v36 = v23;
      v37 = 2080;
      v38 = " ";
      v39 = 2112;
      v40 = v24;
      v41 = 2048;
      v42 = v25;
      v43 = 2112;
      v44 = v26;
      v45 = 2112;
      v46 = v27;
      v47 = 2112;
      v48 = v21;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: Starting set custom greeting task for service account %@ => %@", buf, 0x48u);
    }

    activityController = self->_activityController;
    v29 = [v21 monitor];
    [(IMAPServiceActivityController *)activityController addScheduledActivity:v29];

    v30 = [(IMAPService *)self _messageChangeQueue];
    [v30 addInvocation:v21];
  }

  else
  {
    if (a3 == 3)
    {
LABEL_6:
      v11 = [MFMonitoredInvocation invocationWithSelector:"_synchronouslySetDefaultGreeting" target:self taskName:@"Setting Default Greeting" priority:14 canBeCancelled:0];
      [v11 retainArguments];
      v12 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(VVService *)self getServiceObjLogPrefix];
        v14 = [(IMAPService *)self _messageChangeQueue];
        v15 = [v11 monitor];
        v16 = [v11 monitor];
        v17 = [(IMAPService *)self serviceAccount];
        *buf = 136316674;
        v36 = v13;
        v37 = 2080;
        v38 = " ";
        v39 = 2112;
        v40 = v14;
        v41 = 2048;
        v42 = v15;
        v43 = 2112;
        v44 = v16;
        v45 = 2112;
        v46 = v17;
        v47 = 2112;
        v48 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: Starting set default greeting task for service account %@ => %@", buf, 0x48u);
      }

      v18 = self->_activityController;
      v19 = [v11 monitor];
      [(IMAPServiceActivityController *)v18 addScheduledActivity:v19];

      v20 = [(IMAPService *)self _messageChangeQueue];
      [v20 addInvocation:v11];

      goto LABEL_14;
    }

    v11 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v31 = [(VVService *)self getServiceObjLogPrefix];
      v32 = [(IMAPService *)self serviceAccount];
      *buf = 136315906;
      v36 = v31;
      v37 = 2080;
      v38 = " ";
      v39 = 2048;
      v40 = a3;
      v41 = 2112;
      v42 = v32;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "#E %s%sUnknown greeting type %ld for service account %@", buf, 0x2Au);
    }
  }

LABEL_14:
}

- (id)_candidateGreetingMessageForServiceAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 mailboxUidForRelativePath:@"Greetings" create:1];
  if (v5)
  {
    v35 = [v4 storeForMailboxUid:v5];
    v6 = [v35 candidateGreetingMessage];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [v6 customFlags];
      v7 = [v33 containsObject:@"$AppleVM-ActiveGreeting"];
      v34 = [v6 uid];
      v8 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(VVService *)self getServiceObjLogPrefix];
        v10 = [v6 uid];
        v11 = "NO";
        *buf = 136315906;
        v39 = v9;
        v41 = " ";
        v40 = 2080;
        if (v7)
        {
          v11 = "YES";
        }

        v42 = 1024;
        *v43 = v10;
        *&v43[4] = 2080;
        *&v43[6] = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sCustom greeting on server: UID:%u Active:%s", buf, 0x26u);
      }

      [(IMAPService *)self mf_lock];
      v12 = [(IMAPService *)self _parameters];
      v13 = [v12 objectForKey:@"GreetingCustomActive"];
      v14 = [v12 objectForKey:@"GreetingCustomUID"];
      if (((-[IMAPService mailboxGreetingType](self, "mailboxGreetingType") != 2) & v7) == 0 && v7 == [v13 BOOLValue] && objc_msgSend(v14, "unsignedLongValue") == v34)
      {
        v32 = 0;
      }

      else
      {
        v32 = v14 != 0;
        v17 = [NSNumber numberWithBool:v7];
        [v12 setObject:v17 forKey:@"GreetingCustomActive"];

        v18 = [NSNumber numberWithUnsignedLong:v34];
        [v12 setObject:v18 forKey:@"GreetingCustomUID"];

        if (v7)
        {
          v19 = @"Custom";
        }

        else
        {
          v19 = @"Standard";
        }

        [v12 setObject:v19 forKey:@"GreetingType"];
        *&self->_imapServiceFlags &= ~1u;
        [(IMAPService *)self _saveParameters];
        [(IMAPService *)self mailboxGreetingType];
      }

      [(IMAPService *)self mf_unlock];

      if (((v6 != 0) & v7) == 1)
      {
        v20 = [(VVService *)self accountDir];
        v22 = sub_1000856A8(v20, v21);
        v23 = [v22 path];

        if (v23)
        {
          v24 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = [(VVService *)self getServiceObjLogPrefix];
            *buf = 136315906;
            v39 = v25;
            v40 = 2080;
            v41 = " ";
            v42 = 2112;
            *v43 = v4;
            *&v43[8] = 2112;
            *&v43[10] = v23;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating greeting file for service account %@, path:%@", buf, 0x2Au);
          }

          v26 = v23;
          v27 = open([v23 fileSystemRepresentation], 512, 448);
          if ((v27 & 0x80000000) == 0)
          {
            close(v27);
          }

          CFRelease(v23);
        }
      }

      if (v32)
      {
        v36 = @"accountUUID";
        v28 = [(VVService *)self serviceLabelID];
        v37 = v28;
        v29 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];

        v30 = +[NSNotificationCenter defaultCenter];
        [v30 postNotificationName:@"VVServiceGreetingChangedByCarrierNotification" object:self userInfo:v29];
      }
    }
  }

  else
  {
    v15 = [NSError errorWithDomain:kVVErrorDomain code:1016 localizedDescription:@"Greetings mailbox doesn't exist."];
    v16 = +[MFActivityMonitor currentTracebleMonitor];
    [v16 setError:v15];

    v6 = 0;
  }

  return v6;
}

- (BOOL)greetingAvailable
{
  [(IMAPService *)self mf_lock];
  imapServiceFlags = self->_imapServiceFlags;
  if ((imapServiceFlags & 6) == 0)
  {
    v4 = [(VVService *)self carrierParameterValueForKey:@"GreetingNotification"];
    v5 = [v4 BOOLValue];

    if (v5)
    {
      v6 = [(IMAPService *)self _parameters];
      v7 = [v6 objectForKey:@"GreetingCached"];
      v8 = [v7 BOOLValue];

      if (v8)
      {
        v9 = 2;
      }

      else
      {
        v9 = 4;
      }

      *&self->_imapServiceFlags = *&self->_imapServiceFlags & 0xFFF9 | v9;

      imapServiceFlags = self->_imapServiceFlags;
    }

    else
    {
      imapServiceFlags = *&self->_imapServiceFlags & 0xFFF9 | 4;
      *&self->_imapServiceFlags = imapServiceFlags;
    }
  }

  v10 = (imapServiceFlags & 6) != 0;
  [(IMAPService *)self mf_unlock];
  return v10;
}

- (void)retrieveGreeting:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  v6 = [MFMonitoredInvocation invocationWithSelector:"retrieveGreetingWorkerForServiceAccount:" target:self object:v5 taskName:@"Retrieving Greeting" priority:15 canBeCancelled:1];

  [v6 retainArguments];
  v7 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(VVService *)self getServiceObjLogPrefix];
    v9 = [(IMAPService *)self _messageChangeQueue];
    v10 = [v6 monitor];
    v11 = [v6 monitor];
    v12 = [(IMAPService *)self serviceAccount];
    v16 = 136316674;
    v17 = v8;
    v18 = 2080;
    v19 = " ";
    v20 = 2112;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: retrieveGreeting, account %@ => %@", &v16, 0x48u);
  }

  activityController = self->_activityController;
  v14 = [v6 monitor];
  [(IMAPServiceActivityController *)activityController addScheduledActivity:v14];

  v15 = [(IMAPService *)self _messageChangeQueue];
  [v15 addInvocation:v6];
}

- (void)retrieveGreetingWorkerForServiceAccount:(id)a3
{
  v33 = a3;
  v4 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(VVService *)self getServiceObjLogPrefix];
    v6 = [(IMAPService *)self serviceAccount];
    *buf = 136315650;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sJetsam assertion for greeting worker created, service account %@", buf, 0x20u);
  }

  v7 = pthread_mutex_lock(&stru_10010D568);
  if (!xmmword_10010D5A8)
  {
    ctu::XpcJetsamAssertion::create_default_global(buf, v7);
    v8 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v9 = *(&xmmword_10010D5A8 + 1);
    xmmword_10010D5A8 = v8;
    if (v9)
    {
      sub_100083FCC(v9);
      if (*&buf[8])
      {
        sub_100083FCC(*&buf[8]);
      }
    }
  }

  v10 = *(&xmmword_10010D5A8 + 1);
  if (*(&xmmword_10010D5A8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_10010D5A8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_10010D568);
  sub_10007F334(&__p, "retrieveGreetingWorkerForServiceAccount");
  ctu::XpcJetsamAssertion::createActivity();
  if (v36 < 0)
  {
    operator delete(__p);
  }

  if (v10)
  {
    sub_100083FCC(v10);
  }

  v11 = [(IMAPService *)self serviceAccount];
  v12 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(VVService *)self getServiceObjLogPrefix];
    *buf = 136315650;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] IMAPService::retrieveGreetingWorkerForServiceAccount, account %@", buf, 0x20u);
  }

  v14 = +[NSNotificationCenter defaultCenter];
  v43[0] = @"accountUUID";
  v15 = [(VVService *)self serviceLabelID];
  v44[0] = v15;
  v43[1] = @"VVBlock";
  v16 = objc_retainBlock(v34);
  v44[1] = v16;
  v43[2] = @"VVTaskType";
  v44[2] = &off_1000F5908;
  v17 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:3];

  [v14 postNotificationName:@"VVServiceTaskStartedNotification" object:self userInfo:v17];
  if (v11)
  {
    v18 = [(IMAPService *)self _candidateGreetingMessageForServiceAccount:v11];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 messageBody];
      v21 = [v17 mutableCopy];
      [v21 setObject:&__kCFBooleanFalse forKeyedSubscript:@"VVTaskWillBeRetried"];
      [v14 postNotificationName:@"VVServiceTaskEndedNotification" object:self userInfo:v21];

      v22 = 0;
    }

    else
    {
      v22 = [NSError errorWithDomain:kVVErrorDomain code:1033 localizedDescription:@"No greeting found to retrive."];
    }
  }

  else
  {
    v22 = [NSError errorWithDomain:kVVErrorDomain code:1034 localizedDescription:@"Couldn't find service account."];
  }

  if (v22)
  {
    v23 = +[MFActivityMonitor currentTracebleMonitor];
    v24 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(VVService *)self getServiceObjLogPrefix];
      v26 = [v23 error];
      *buf = 136315906;
      *&buf[4] = v25;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v39 = 2112;
      v40 = v22;
      v41 = 2112;
      v42 = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] IMAPService::retrieveGreetingWorkerForServiceAccount failed with error %@, monitor error %@", buf, 0x2Au);
    }

    v27 = [v23 error];
    v28 = v27 == 0;

    if (v28)
    {
      [v23 setError:v22];
    }

    v29 = [v17 mutableCopy];
    [v29 setObject:&__kCFBooleanFalse forKeyedSubscript:@"VVTaskWillBeRetried"];
    v30 = [v23 error];
    [v29 setObject:v30 forKeyedSubscript:@"VVError"];

    [v14 postNotificationName:@"VVServiceTaskCancelledNotification" object:self userInfo:v29];
  }

  v31 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [(VVService *)self getServiceObjLogPrefix];
    *buf = 136315650;
    *&buf[4] = v32;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] IMAPService::retrieveGreetingWorkerForServiceAccount for service account %@ completed", buf, 0x20u);
  }

  if (v37)
  {
    sub_100083FCC(v37);
  }
}

- (id)_parametersFilePath
{
  v2 = [(VVService *)self accountDir];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.voicemail.imap.parameters.plist" isDirectory:0];
  v4 = [v3 path];

  return v4;
}

- (id)_parameters
{
  [(IMAPService *)self mf_lock];
  if (!self->_imapParameters)
  {
    v3 = [(IMAPService *)self _parametersFilePath];
    v4 = [[NSMutableDictionary alloc] initWithContentsOfFile:v3];
    imapParameters = self->_imapParameters;
    self->_imapParameters = v4;

    if (!self->_imapParameters)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = self->_imapParameters;
      self->_imapParameters = v6;
    }
  }

  [(IMAPService *)self mf_unlock];
  v8 = self->_imapParameters;

  return v8;
}

- (void)_saveParameters
{
  [(IMAPService *)self mf_lock];
  if (self->_imapParameters)
  {
    v3 = [(IMAPService *)self _parametersFilePath];
    imapParameters = self->_imapParameters;
    v12 = 0;
    [(NSMutableDictionary *)imapParameters writeToFile:v3 options:268435457 error:&v12];
    v5 = v12;
    if (v5)
    {
      v6 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(VVService *)self getServiceObjLogPrefix];
        *buf = 136315906;
        v14 = v7;
        v15 = 2080;
        v16 = " ";
        v17 = 2112;
        v18 = v3;
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not save file at path %@ due to error %@", buf, 0x2Au);
      }
    }

    v8 = [(NSMutableDictionary *)self->_imapParameters copy];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100081E08;
    block[3] = &unk_1000EE260;
    block[4] = self;
    v11 = v8;
    v9 = v8;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v3 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10009E220([(VVService *)self getServiceObjLogPrefix], buf);
    }
  }

  [(IMAPService *)self mf_unlock];
}

- (int64_t)mailboxGreetingType
{
  [(IMAPService *)self mf_lock];
  if ((*&self->_imapServiceFlags & 1) == 0)
  {
    self->_greetingType = 3;
    v3 = [(IMAPService *)self _parameters];
    v4 = v3;
    if (!v3)
    {
LABEL_10:
      *&self->_imapServiceFlags |= 1u;

      goto LABEL_11;
    }

    v5 = [v3 objectForKey:@"GreetingType"];
    v6 = v5;
    if (v5)
    {
      if ([v5 isEqualToString:@"Standard"])
      {
        v7 = 0;
LABEL_8:
        self->_greetingType = v7;
        goto LABEL_9;
      }

      if ([v6 isEqualToString:@"Custom"])
      {
        v7 = 2;
        goto LABEL_8;
      }
    }

LABEL_9:

    goto LABEL_10;
  }

LABEL_11:
  greetingType = self->_greetingType;
  [(IMAPService *)self mf_unlock];
  return greetingType;
}

- (void)_setActiveGreetingType:(int64_t)a3
{
  [(IMAPService *)self mf_lock];
  if (self->_greetingType != a3)
  {
    v5 = &stru_1000F0098;
    if (!a3)
    {
      v5 = @"Standard";
    }

    if (a3 == 2)
    {
      v6 = @"Custom";
    }

    else
    {
      v6 = v5;
    }

    v7 = [(IMAPService *)self _parameters];
    [v7 setObject:v6 forKey:@"GreetingType"];
    [(IMAPService *)self _saveParameters];
    *&self->_imapServiceFlags |= 1u;
    self->_greetingType = a3;
  }

  [(IMAPService *)self mf_unlock];
}

- (void)_onQueue_setPasscode:(id)a3 completion:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [(IMAPService *)self serviceAccount];
  if (v7)
  {
    [(IMAPService *)self setChangePasswordReplyBlock:v6];
    v8 = [MFMonitoredInvocation invocationWithSelector:"changePIN:" target:v7 object:v20 taskName:@"Changing PIN" priority:2 canBeCancelled:1];
    [v8 retainArguments];
    v9 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(VVService *)self getServiceObjLogPrefix];
      v11 = [(IMAPService *)self _messageChangeQueue];
      v12 = [v8 monitor];
      v13 = [v8 monitor];
      *buf = 136316674;
      v22 = v10;
      v23 = 2080;
      v24 = " ";
      v25 = 2112;
      v26 = v11;
      v27 = 2048;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      v31 = 2112;
      v32 = v7;
      v33 = 2112;
      v34 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, monitor:%p.'%@', schedule: _onQueue_setPasscode, account %@ => %@", buf, 0x48u);
    }

    activityController = self->_activityController;
    v15 = [v8 monitor];
    [(IMAPServiceActivityController *)activityController addScheduledActivity:v15];

    v16 = [(IMAPService *)self _messageChangeQueue];
    [v16 addInvocation:v8];

    v17 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [(VVService *)self getServiceObjLogPrefix];
      *buf = 136315650;
      v22 = v18;
      v23 = 2080;
      v24 = " ";
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sadded invocation %@", buf, 0x20u);
    }
  }

  else
  {
    v19 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = [(VVService *)self getServiceObjLogPrefix];
      v23 = 2080;
      v24 = " ";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sWe dont have a valid account - requesting new server info", buf, 0x16u);
    }

    [(IMAPService *)self _startBeacon];
    v8 = [NSError errorWithDomain:kVVErrorDomain code:1017 userInfo:0];
    v6[2](v6, 0, v8);
  }
}

- (void)setPasscode:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(VVService *)self getServiceObjLogPrefix];
    v10 = [(IMAPService *)self _messageChangeQueue];
    *buf = 136315906;
    v20 = v9;
    v21 = 2080;
    v22 = " ";
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s[IVQ] queue:%@, schedule: setPasscode, account %@", buf, 0x2Au);
  }

  messageChangeQueue = self->_messageChangeQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100082800;
  v14[3] = &unk_1000EF328;
  objc_copyWeak(&v17, &location);
  v12 = v6;
  v15 = v12;
  v13 = v7;
  v16 = v13;
  [(MFInvocationQueue *)messageChangeQueue addBlockInvocation:v14 taskName:@"setPasscode" withPriority:2 controlledBy:self->_activityController];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_handleFlagsDidChange:(id)a3
{
  v4 = a3;
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315906;
    v8 = [(VVService *)self getServiceObjLogPrefix];
    v9 = 2080;
    v10 = " ";
    v11 = 2112;
    v12 = objc_opt_class();
    v13 = 2112;
    v14 = v4;
    v6 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s==== _handleFlagsDidChange, %@ is handling <%@>", &v7, 0x2Au);
  }
}

- (void)_handleVoicemailPasswordChangeTaskNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v24 = [(VVService *)self getServiceObjLogPrefix];
    v25 = 2080;
    v26 = " ";
    v27 = 2112;
    v28 = objc_opt_class();
    v29 = 2112;
    v30 = v4;
    v6 = v28;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling <%@>", buf, 0x2Au);
  }

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"VVTaskType"];
  v9 = [v8 isEqual:&off_1000F5920];

  if (v9)
  {
    v10 = [v4 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"VVError"];

    if (!v11)
    {
LABEL_8:
      v17 = 0;
LABEL_13:
      v18 = [(IMAPService *)self changePasswordReplyBlock];
      v19 = v18;
      if (v18)
      {
        (*(v18 + 16))(v18, v11 == 0, v17);
        [(IMAPService *)self setChangePasswordReplyBlock:0];
      }

      else
      {
        v20 = sub_100026660(self->logger.__ptr_);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_10009E264([(VVService *)self getServiceObjLogPrefix], buf);
        }
      }

      goto LABEL_19;
    }

    v12 = [v4 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"VVSuppressError"];
    if (v13)
    {
      v22 = [v4 userInfo];
      v14 = [v22 objectForKeyedSubscript:@"VVSuppressError"];
      if (!v14)
      {

        v17 = 0;
        goto LABEL_12;
      }

      v15 = [v4 userInfo];
      v16 = [v15 objectForKeyedSubscript:@"VVSuppressError"];
      v21 = [v16 BOOLValue];

      if (v21)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

    v12 = [v4 userInfo];
    v17 = [v12 objectForKeyedSubscript:@"VVError"];
LABEL_12:

    goto LABEL_13;
  }

LABEL_19:
}

- (void)requestController:(id)a3 didSendRequest:(id)a4
{
  v5 = a4;
  v6 = [v5 subscription];
  v7 = [v6 uuid];
  v8 = [(VVService *)self contextInfo];
  v9 = [v8 uuid];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = sub_100026660(self->logger.__ptr_);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315650;
      v13 = [(VVService *)self getServiceObjLogPrefix];
      v14 = 2080;
      v15 = " ";
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sSent state request %@. Waiting for response.", &v12, 0x20u);
    }
  }
}

- (void)requestController:(id)a3 didReceiveResponse:(id)a4 forRequest:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 subscription];
  v10 = [v9 uuid];
  v11 = [(VVService *)self contextInfo];
  v12 = [v11 uuid];
  v13 = [v10 isEqual:v12];

  if (v13)
  {
    v14 = [(VVService *)self attemptCountForStateRequest:v8];
    v15 = [v7 error];

    ptr = self->logger.__ptr_;
    if (v15)
    {
      v17 = sub_100026660(ptr);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(VVService *)self getServiceObjLogPrefix];
        v19 = [v8 identifier];
        v20 = [v7 error];
        v36 = 136316162;
        v37 = v18;
        v38 = 2080;
        v39 = " ";
        v40 = 2048;
        v41 = v19;
        v42 = 2048;
        v43 = v14;
        v44 = 2112;
        v45 = v20;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#W %s%sCoreTelephony failed to send message with identifier %ld to carrier on attempt #%ld due to error %@", &v36, 0x34u);
      }

      [(IMAPService *)self setBeaconActive:0];
      v21 = [v7 error];
      v22 = [v21 code];
      v23 = v22 == qword_10010D670;

      if (v23)
      {
        if (self->_beaconTemporaryRetryCount > 9)
        {
          v29 = sub_100026660(self->logger.__ptr_);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [(VVService *)self getServiceObjLogPrefix];
            v36 = 136315394;
            v37 = v30;
            v38 = 2080;
            v39 = " ";
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#W %s%sTemporary retry attempts are maxed out.", &v36, 0x16u);
          }

          [(IMAPService *)self _cancelBeacon];
          [(IMAPService *)self _incrementBeaconCount];
          [(IMAPService *)self _resetBeaconTemporaryRetryCount];
          v31 = [(VVService *)self carrierParameterValueForKey:@"BeaconTimeout"];
          v32 = [v31 intValue];

          v33 = 60 * v32;
          v34 = (60 * v32);
          [(IMAPService *)self _scheduleBeaconRetry:v33];
          v24 = sub_100026660(self->logger.__ptr_);
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_17;
          }

          v35 = [(VVService *)self getServiceObjLogPrefix];
          v36 = 136315650;
          v37 = v35;
          v38 = 2080;
          v39 = " ";
          v40 = 2048;
          v41 = v34;
          v27 = "#I %s%sScheduled next attempt in %lu sec.";
        }

        else
        {
          [(IMAPService *)self _incrementBeaconTemporaryRetryCount];
          [(IMAPService *)self _cancelBeacon];
          [(IMAPService *)self _scheduleBeaconRetry:120];
          v24 = sub_100026660(self->logger.__ptr_);
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
LABEL_17:

            goto LABEL_18;
          }

          v25 = [(VVService *)self getServiceObjLogPrefix];
          beaconTemporaryRetryCount = self->_beaconTemporaryRetryCount;
          v36 = 136315650;
          v37 = v25;
          v38 = 2080;
          v39 = " ";
          v40 = 2048;
          v41 = beaconTemporaryRetryCount;
          v27 = "#I %s%sScheduled temporary retry attempt %lu.";
        }

        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v27, &v36, 0x20u);
        goto LABEL_17;
      }
    }

    else
    {
      v28 = sub_100026660(ptr);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 136315906;
        v37 = [(VVService *)self getServiceObjLogPrefix];
        v38 = 2080;
        v39 = " ";
        v40 = 2048;
        v41 = [v8 identifier];
        v42 = 2048;
        v43 = v14;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sCoreTelephony sent message with identifier %ld to carrier on attempt #%ld. Waiting for carrier response.", &v36, 0x2Au);
      }

      [(VVService *)self removeAttemptCountForStateRequest:v8];
      [(IMAPService *)self setBeaconActive:1];
      [(IMAPService *)self _incrementBeaconCount];
      [(IMAPService *)self _resetBeaconTemporaryRetryCount];
    }
  }

LABEL_18:
}

- (void)onVMStoreRecordFlagsChangedNotification:(__CFString *)a3 object:(const void *)a4 userInfo:(__CFDictionary *)a5
{
  v9 = [(IMAPService *)self serviceAccount];
  v10 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315394;
    v21 = [(VVService *)self getServiceObjLogPrefix];
    v22 = 2080;
    v23 = " ";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s================= __VMStoreRecordFlagsChangedNotificationCallback", &v20, 0x16u);
  }

  v11 = CFDictionaryGetValue(a5, @"VMStoreRecordChangedFlagsLabel");
  v12 = [v9 serviceLabelID];
  v13 = [v12 UUIDString];
  v14 = [v13 isEqualToString:v11];

  if (v14)
  {
    v15 = [CFDictionaryGetValue(a5 @"VMStoreRecordChangedFlags")];
    [(VVService *)self updateCountsForChangedFlags:v15 currentRecordFlags:VMStoreRecordGetFlags(a4)];
    if (!CFDictionaryGetValue(a5, @"VMStoreRecordChangedFlagsFromServer"))
    {
      v16 = VMStoreRecordCopyFlagsDescription(v15);
      v17 = VMStoreRecordCopyDescription(a4);
      v18 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [(VVService *)self getServiceObjLogPrefix];
        v20 = 136316418;
        v21 = v19;
        v22 = 2080;
        v23 = " ";
        v24 = 2112;
        v25 = a3;
        v26 = 2112;
        v27 = v16;
        v28 = 2112;
        v29 = v17;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%shandling <%@>, changedFlags=%@, record=%@, account=%@", &v20, 0x3Eu);
      }

      if (v17)
      {
        CFRelease(v17);
      }

      if (v16)
      {
        CFRelease(v16);
      }
    }
  }
}

- (void)onVMStoreRecordFlagsDidChangeNotification:(__CFString *)a3 object:(const void *)a4 userInfo:(__CFDictionary *)a5
{
  if (a5)
  {
    v9 = CFDictionaryGetValue(a5, @"VMStoreRecordChangedFlagsFromServer") == 0;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136315394;
    v25 = [(VVService *)self getServiceObjLogPrefix];
    v26 = 2080;
    v27 = " ";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s================= __VMStoreRecordFlagsDidChangeNotificationCallback", &v24, 0x16u);
  }

  if (v9)
  {
    v11 = CFDictionaryGetValue(a5, @"VMStoreRecordChangedFlagsLabel");
    v12 = [(IMAPService *)self serviceAccount];
    v13 = [v12 serviceLabelID];
    v14 = [v13 UUIDString];
    v15 = [v14 isEqualToString:v11];

    if (v15)
    {
      v16 = [CFDictionaryGetValue(a5 @"VMStoreRecordOldFlags")];
      v17 = [CFDictionaryGetValue(a5 @"VMStoreRecordNewFlags")];
      v18 = [CFDictionaryGetValue(a5 @"VMStoreRecordChangedFlags")];
      v19 = VMStoreRecordCopyFlagsDescription(v16);
      v20 = VMStoreRecordCopyFlagsDescription(v17);
      v21 = VMStoreRecordCopyFlagsDescription(v18);
      v22 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(VVService *)self getServiceObjLogPrefix];
        v24 = 136316674;
        v25 = v23;
        v26 = 2080;
        v27 = " ";
        v28 = 2112;
        v29 = a3;
        v30 = 2112;
        v31 = v19;
        v32 = 2112;
        v33 = v20;
        v34 = 2112;
        v35 = v21;
        v36 = 2112;
        v37 = v12;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%shandling <%@>, flags=%@, newFlags=%@, changedFlags=%@, account=%@", &v24, 0x48u);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      if (v20)
      {
        CFRelease(v20);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      if (a4)
      {
        if ((v18 & 5) != 0)
        {
          [v12 willSetFlags:v18 state:VMStoreRecordGetFlags(a4) forRecord:a4 needToBeStored:0];
        }
      }

      [v12 completeFlagChange];
    }
  }
}

- (void)onVMStoreRecordFlagsWillChangeNotification:(__CFString *)a3 object:(const void *)a4 userInfo:(__CFDictionary *)a5
{
  v8 = sub_100026660(self->logger.__ptr_);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315394;
    v17 = [(VVService *)self getServiceObjLogPrefix];
    v18 = 2080;
    v19 = " ";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s================= __VMStoreRecordFlagsWillChangeNotificationCallback", &v16, 0x16u);
  }

  if (a5 && !CFDictionaryGetValue(a5, @"VMStoreRecordChangedFlagsFromServer"))
  {
    v9 = CFDictionaryGetValue(a5, @"VMStoreRecordChangedFlagsLabel");
    v10 = [(IMAPService *)self serviceAccount];
    v11 = [v10 serviceLabelID];
    v12 = [v11 UUIDString];
    v13 = [v12 isEqualToString:v9];

    if (v13)
    {
      v14 = sub_100026660(self->logger.__ptr_);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(VVService *)self getServiceObjLogPrefix];
        v16 = 136315906;
        v17 = v15;
        v18 = 2080;
        v19 = " ";
        v20 = 2112;
        v21 = a3;
        v22 = 2112;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%shandling <%@>, account=%@", &v16, 0x2Au);
      }

      [v10 prepareForFlagChange];
    }
  }
}

@end