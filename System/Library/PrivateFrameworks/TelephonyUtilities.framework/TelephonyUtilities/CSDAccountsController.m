@interface CSDAccountsController
- (BOOL)faceTimeIDMatchesAppleID;
- (BOOL)isValidOutgoingCallerID:(id)a3;
- (CSDAccountsController)init;
- (CSDAccountsControllerDelegate)delegate;
- (NSString)debugDescription;
- (NSString)outgoingCallerID;
- (int64_t)_faceTimeAudioAvailability;
- (int64_t)_faceTimeVideoAvailability;
- (void)_updateOutgoingCallerID;
- (void)callerIDChanged:(id)a3;
- (void)dealloc;
- (void)devicesChanged:(id)a3;
- (void)service:(id)a3 activeAccountsChanged:(id)a4;
- (void)serviceAvailabilityChanged:(id)a3;
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
  v4 = [(CSDAccountsController *)self faceTimeIDMatchesAppleID];
  v5 = @"NO";
  if (v4)
  {
    v5 = @"YES";
  }

  [v3 appendFormat:@"    faceTimeIDMatchesAppleID: %@\n", v5];
  [v3 appendFormat:@"    faceTimeAudioAvailability: %ld\n", -[CSDAccountsController _faceTimeAudioAvailability](self, "_faceTimeAudioAvailability")];
  [v3 appendFormat:@"    faceTimeVideoAvailability: %ld\n", -[CSDAccountsController _faceTimeVideoAvailability](self, "_faceTimeVideoAvailability")];
  v6 = [(CSDAccountsController *)self outgoingCallerID];
  [v3 appendFormat:@"    outgoingCallerID: %@\n", v6];

  return v3;
}

- (void)service:(id)a3 activeAccountsChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDAccountsController *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Active accounts changed for service %@: %@", &v11, 0x16u);
  }

  v10 = [(CSDAccountsController *)self delegate];
  [v10 accountsChanged];

  [(CSDAccountsController *)self updateOutgoingCallerIDAndSendDelegateCallbacksIfNecessary];
}

- (void)callerIDChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDAccountsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CF464;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)serviceAvailabilityChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDAccountsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CF5C8;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)devicesChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDAccountsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CF73C;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)faceTimeIDMatchesAppleID
{
  v2 = +[CSDFaceTimeVideoIDSService sharedInstance];
  v3 = [v2 service];
  v4 = [v3 iCloudAccount];

  v5 = +[CSDRelayIDSService sharedInstance];
  v6 = [v5 service];
  v7 = [v6 iCloudAccount];

  if ([v4 isActive] && objc_msgSend(v7, "isActive"))
  {
    v8 = [v4 profileID];
    if (v8)
    {
      v9 = [v7 profileID];
      if (v9)
      {
        v10 = [v4 profileID];
        v11 = [v7 profileID];
        v12 = [v10 isEqualToIgnoringCase:v11];
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
    v14 = [v4 isActive];
    v15 = [v4 profileID];
    v16 = [v7 isActive];
    v17 = [v7 profileID];
    v19 = 138413570;
    v20 = v4;
    v21 = 1024;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v7;
    v27 = 1024;
    v28 = v16;
    v29 = 2112;
    v30 = v17;
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
  v3 = [(CSDAccountsController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CFB7C;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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
  v3 = [(CSDAccountsController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CFCB0;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_updateOutgoingCallerID
{
  v3 = [(CSDAccountsController *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = +[CSDFaceTimeVideoIDSService sharedInstance];
  v5 = [v4 callerID];

  if ([(CSDAccountsController *)self isValidOutgoingCallerID:v5])
  {
    v6 = [v5 copy];
    outgoingCallerID = self->_outgoingCallerID;
    self->_outgoingCallerID = v6;

    goto LABEL_26;
  }

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FaceTime caller ID %@ is not a valid outgoing relay caller ID", buf, 0xCu);
  }

  v9 = +[CSDRelayIDSService sharedInstance];
  v10 = [v9 availableOutgoingRelayCallerIDs];

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to find a valid outgoing caller ID in set of available outgoing caller IDs %@", buf, 0xCu);
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000D0224;
  v29[3] = &unk_10061AE48;
  v29[4] = self;
  v12 = [(NSString *)v10 objectsPassingTest:v29];
  if ([v12 count] == 1)
  {
    v13 = [v12 anyObject];
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v31 = v13;
      v32 = 2112;
      v33 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Selected outgoing caller ID %@ from list of available outgoing caller IDs %@", buf, 0x16u);
    }

    if (v13)
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
      v31 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could not automatically select an outgoing caller ID; multiple telephone numbers are listed in the set of available outgoing caller IDs %@", buf, 0xCu);
    }
  }

  v16 = +[CSDFaceTimeVideoIDSService sharedInstance];
  v17 = [v16 account];
  v18 = [v17 vettedAliases];

  v19 = sub_100004778();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Attempting to find a valid outgoing caller ID in list of vetted account aliases %@", buf, 0xCu);
  }

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000D0230;
  v28[3] = &unk_10061AE70;
  v28[4] = self;
  v20 = [(NSString *)v18 indexesOfObjectsPassingTest:v28];
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
      v33 = v10;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Selected outgoing caller ID %@ from list of vetted account aliases %@", buf, 0x16u);
    }

    v13 = -[NSString objectAtIndexedSubscript:](v18, "objectAtIndexedSubscript:", [v20 firstIndex]);
  }

  else
  {
    if (v23)
    {
      *buf = 138412290;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Could not automatically select an outgoing caller ID; multiple telephone numbers are listed in the set of vetted account aliases IDs %@", buf, 0xCu);
    }

    v13 = 0;
  }

LABEL_25:
  v24 = [(NSString *)v13 copy];
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

- (BOOL)isValidOutgoingCallerID:(id)a3
{
  v3 = a3;
  if (qword_1006ACC28 != -1)
  {
    sub_100473EF8();
  }

  if ([v3 length])
  {
    v4 = off_1006ACC20(v3);
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