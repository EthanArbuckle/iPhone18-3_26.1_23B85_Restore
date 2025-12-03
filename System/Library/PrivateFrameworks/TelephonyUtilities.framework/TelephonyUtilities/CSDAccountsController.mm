@interface CSDAccountsController
- (BOOL)faceTimeIDMatchesAppleID;
- (BOOL)isValidOutgoingCallerID:(id)d;
- (CSDAccountsController)init;
- (CSDAccountsControllerDelegate)delegate;
- (NSString)debugDescription;
- (NSString)outgoingCallerID;
- (int64_t)_faceTimeAudioAvailability;
- (int64_t)_faceTimeVideoAvailability;
- (void)_updateOutgoingCallerID;
- (void)callerIDChanged:(id)changed;
- (void)dealloc;
- (void)devicesChanged:(id)changed;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)serviceAvailabilityChanged:(id)changed;
- (void)updateOutgoingCallerIDAndSendDelegateCallbacksIfNecessary;
@end

@implementation CSDAccountsController

- (CSDAccountsController)init
{
  v12.receiver = self;
  v12.super_class = CSDAccountsController;
  v2 = [(CSDAccountsController *)&v12 init];
  if (v2)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      *buf = 138412290;
      v14 = v4;
      v5 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Initializing %@", buf, 0xCu);
    }

    v6 = dispatch_queue_create([@"com.apple.telephonyutilities.callservicesd.accountscontroller" UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v6;

    v8 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CEE50;
    block[3] = &unk_100619D38;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[FTCServiceAvailabilityCenter sharedInstance];
  [v3 removeListenerID:@"com.apple.telephonyutilities.callservicesd.accountscontroller" forService:0];

  v4 = +[FTCServiceAvailabilityCenter sharedInstance];
  [v4 removeListenerID:@"com.apple.telephonyutilities.callservicesd.accountscontroller" forService:2];

  TURemoveIDSAvailabilityListener();
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = CSDAccountsController;
  [(CSDAccountsController *)&v6 dealloc];
}

- (NSString)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"%@\n", self];
  faceTimeIDMatchesAppleID = [(CSDAccountsController *)self faceTimeIDMatchesAppleID];
  v5 = @"NO";
  if (faceTimeIDMatchesAppleID)
  {
    v5 = @"YES";
  }

  [v3 appendFormat:@"    faceTimeIDMatchesAppleID: %@\n", v5];
  [v3 appendFormat:@"    faceTimeAudioAvailability: %ld\n", -[CSDAccountsController _faceTimeAudioAvailability](self, "_faceTimeAudioAvailability")];
  [v3 appendFormat:@"    faceTimeVideoAvailability: %ld\n", -[CSDAccountsController _faceTimeVideoAvailability](self, "_faceTimeVideoAvailability")];
  outgoingCallerID = [(CSDAccountsController *)self outgoingCallerID];
  [v3 appendFormat:@"    outgoingCallerID: %@\n", outgoingCallerID];

  return v3;
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  serviceCopy = service;
  changedCopy = changed;
  queue = [(CSDAccountsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = serviceCopy;
    v13 = 2112;
    v14 = changedCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Active accounts changed for service %@: %@", &v11, 0x16u);
  }

  delegate = [(CSDAccountsController *)self delegate];
  [delegate accountsChanged];

  [(CSDAccountsController *)self updateOutgoingCallerIDAndSendDelegateCallbacksIfNecessary];
}

- (void)callerIDChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDAccountsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CF464;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)serviceAvailabilityChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDAccountsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CF5C8;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)devicesChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDAccountsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CF73C;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (BOOL)faceTimeIDMatchesAppleID
{
  v2 = +[CSDFaceTimeVideoIDSService sharedInstance];
  service = [v2 service];
  iCloudAccount = [service iCloudAccount];

  v5 = +[CSDRelayIDSService sharedInstance];
  service2 = [v5 service];
  iCloudAccount2 = [service2 iCloudAccount];

  if ([iCloudAccount isActive] && objc_msgSend(iCloudAccount2, "isActive"))
  {
    profileID = [iCloudAccount profileID];
    if (profileID)
    {
      profileID2 = [iCloudAccount2 profileID];
      if (profileID2)
      {
        profileID3 = [iCloudAccount profileID];
        profileID4 = [iCloudAccount2 profileID];
        v12 = [profileID3 isEqualToIgnoringCase:profileID4];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    isActive = [iCloudAccount isActive];
    profileID5 = [iCloudAccount profileID];
    isActive2 = [iCloudAccount2 isActive];
    profileID6 = [iCloudAccount2 profileID];
    v19 = 138413570;
    v20 = iCloudAccount;
    v21 = 1024;
    v22 = isActive;
    v23 = 2112;
    v24 = profileID5;
    v25 = 2112;
    v26 = iCloudAccount2;
    v27 = 1024;
    v28 = isActive2;
    v29 = 2112;
    v30 = profileID6;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FaceTime iCloud account is %@ (isActive=%d, profileID=%@) and relay iCloud account is %@ (isActive=%d, profileID=%@)", &v19, 0x36u);
  }

  return v12;
}

- (NSString)outgoingCallerID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028644;
  v11 = sub_1000328AC;
  v12 = 0;
  queue = [(CSDAccountsController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CFB7C;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (int64_t)_faceTimeAudioAvailability
{
  v2 = +[FTCServiceAvailabilityCenter sharedInstance];
  v3 = [v2 availabilityForListenerID:@"com.apple.telephonyutilities.callservicesd.accountscontroller" forService:2];

  return v3;
}

- (int64_t)_faceTimeVideoAvailability
{
  v2 = +[FTCServiceAvailabilityCenter sharedInstance];
  v3 = [v2 availabilityForListenerID:@"com.apple.telephonyutilities.callservicesd.accountscontroller" forService:0];

  return v3;
}

- (void)updateOutgoingCallerIDAndSendDelegateCallbacksIfNecessary
{
  queue = [(CSDAccountsController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CFCB0;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_updateOutgoingCallerID
{
  queue = [(CSDAccountsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[CSDFaceTimeVideoIDSService sharedInstance];
  callerID = [v4 callerID];

  if ([(CSDAccountsController *)self isValidOutgoingCallerID:callerID])
  {
    v6 = [callerID copy];
    outgoingCallerID = self->_outgoingCallerID;
    self->_outgoingCallerID = v6;

    goto LABEL_26;
  }

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = callerID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FaceTime caller ID %@ is not a valid outgoing relay caller ID", buf, 0xCu);
  }

  v9 = +[CSDRelayIDSService sharedInstance];
  availableOutgoingRelayCallerIDs = [v9 availableOutgoingRelayCallerIDs];

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = availableOutgoingRelayCallerIDs;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to find a valid outgoing caller ID in set of available outgoing caller IDs %@", buf, 0xCu);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000D0224;
  v29[3] = &unk_10061AE48;
  v29[4] = self;
  v12 = [(NSString *)availableOutgoingRelayCallerIDs objectsPassingTest:v29];
  if ([v12 count] == 1)
  {
    anyObject = [v12 anyObject];
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = anyObject;
      v32 = 2112;
      v33 = availableOutgoingRelayCallerIDs;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Selected outgoing caller ID %@ from list of available outgoing caller IDs %@", buf, 0x16u);
    }

    if (anyObject)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = availableOutgoingRelayCallerIDs;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not automatically select an outgoing caller ID; multiple telephone numbers are listed in the set of available outgoing caller IDs %@", buf, 0xCu);
    }
  }

  v16 = +[CSDFaceTimeVideoIDSService sharedInstance];
  account = [v16 account];
  vettedAliases = [account vettedAliases];

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = vettedAliases;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Attempting to find a valid outgoing caller ID in list of vetted account aliases %@", buf, 0xCu);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000D0230;
  v28[3] = &unk_10061AE70;
  v28[4] = self;
  v20 = [(NSString *)vettedAliases indexesOfObjectsPassingTest:v28];
  v21 = [v20 count];
  v22 = sub_100004778();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v21 == 1)
  {
    if (v23)
    {
      *buf = 138412546;
      v31 = 0;
      v32 = 2112;
      v33 = availableOutgoingRelayCallerIDs;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Selected outgoing caller ID %@ from list of vetted account aliases %@", buf, 0x16u);
    }

    anyObject = -[NSString objectAtIndexedSubscript:](vettedAliases, "objectAtIndexedSubscript:", [v20 firstIndex]);
  }

  else
  {
    if (v23)
    {
      *buf = 138412290;
      v31 = vettedAliases;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Could not automatically select an outgoing caller ID; multiple telephone numbers are listed in the set of vetted account aliases IDs %@", buf, 0xCu);
    }

    anyObject = 0;
  }

LABEL_25:
  v24 = [(NSString *)anyObject copy];
  v25 = self->_outgoingCallerID;
  self->_outgoingCallerID = v24;

LABEL_26:
  v26 = sub_100004778();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = self->_outgoingCallerID;
    *buf = 138412290;
    v31 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Outgoing Caller ID is %@", buf, 0xCu);
  }
}

- (BOOL)isValidOutgoingCallerID:(id)d
{
  dCopy = d;
  if (qword_1006ACC28 != -1)
  {
    sub_100473EF8();
  }

  if ([dCopy length])
  {
    v4 = off_1006ACC20(dCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CSDAccountsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end