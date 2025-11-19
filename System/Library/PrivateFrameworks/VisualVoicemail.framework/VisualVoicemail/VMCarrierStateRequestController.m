@interface VMCarrierStateRequestController
- (CTMessageCenter)messageCenter;
- (VMCarrierStateRequestController)initWithMessageCenter:(id)a3 telephonyClient:(id)a4 queue:(id)a5;
- (VMCarrierStateRequestController)initWithTelephonyClient:(id)a3;
- (void)dealloc;
- (void)executeRequest:(id)a3;
- (void)postSMSMessageSent:(id)a3 success:(BOOL)a4 messageID:(int64_t)a5 err1:(int64_t)a6 err2:(int64_t)a7;
@end

@implementation VMCarrierStateRequestController

- (VMCarrierStateRequestController)initWithTelephonyClient:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() vm_classIdentifier];
  v6 = NSStringFromSelector("queue");
  v7 = [NSString stringWithFormat:@"%@.%@", v5, v6];

  v8 = dispatch_queue_create([v7 UTF8String], 0);
  dispatch_queue_set_specific(v8, off_10010CE20, self, 0);
  v9 = +[CTMessageCenter sharedMessageCenter];
  v10 = [(VMCarrierStateRequestController *)self initWithMessageCenter:v9 telephonyClient:v4 queue:v8];

  return v10;
}

- (VMCarrierStateRequestController)initWithMessageCenter:(id)a3 telephonyClient:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = VMCarrierStateRequestController;
  v12 = [(VMTelephonyRequestController *)&v16 initWithQueue:v11];
  v13 = v12;
  if (v12)
  {
    dword_10010DA90 = -1;
    objc_storeStrong(&v12->_messageCenter, a3);
    [(VMCarrierStateRequestController *)v13 setTelephonyClient:v10];
    v14 = [(VMCarrierStateRequestController *)v13 telephonyClient];
    [v14 addDelegate:v13 queue:v11];
  }

  return v13;
}

- (void)dealloc
{
  v3 = [(VMCarrierStateRequestController *)self telephonyClient];
  [v3 removeDelegate:self];

  v4.receiver = self;
  v4.super_class = VMCarrierStateRequestController;
  [(VMCarrierStateRequestController *)&v4 dealloc];
}

- (void)executeRequest:(id)a3
{
  v4 = a3;
  v5 = [(VMTelephonyRequestController *)self pendingRequest];
  v6 = [v5 isEqualToRequest:v4];

  if (v6)
  {
    v7 = vm_vmd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending message for STATE request %@", &v19, 0xCu);
    }

    v19 = -1;
    v8 = [(VMCarrierStateRequestController *)self messageCenter];
    v9 = [v4 subscription];
    v10 = [v4 message];
    v11 = [v4 serviceCenter];
    v12 = [v4 destination];
    v13 = [v8 sendSMSWithText:v9 text:v10 serviceCenter:v11 toAddress:v12 trackingID:&v19];

    if (v13)
    {
      dword_10010DA90 = v19;
    }

    else
    {
      v14 = vm_vmd_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10009C180(v4, v14);
      }

      v15 = [VMCarrierStateResponseError errorWithCode:qword_10010D668 userInfo:0];
      v16 = [VMCarrierStateResponse alloc];
      v17 = [v4 subscription];
      v18 = [(VMTelephonyResponse *)v16 initWithSubscription:v17 error:v15];

      [(VMTelephonyRequestController *)self postResponse:v18 forRequest:v4];
    }
  }
}

- (CTMessageCenter)messageCenter
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_10001C574;
  v9 = sub_10001C584;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001C58C;
  v4[3] = &unk_1000ED4C8;
  v4[4] = self;
  v4[5] = &v5;
  [(VMTelephonyRequestController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)postSMSMessageSent:(id)a3 success:(BOOL)a4 messageID:(int64_t)a5 err1:(int64_t)a6 err2:(int64_t)a7
{
  v10 = a4;
  v12 = a3;
  v13 = [(VMTelephonyRequestController *)self queue];
  dispatch_assert_queue_V2(v13);

  if (dword_10010DA90 == a5)
  {
    v14 = vm_vmd_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138413570;
      v31 = objc_opt_class();
      v32 = 2112;
      v33 = v12;
      v34 = 1024;
      v35 = v10;
      v36 = 2048;
      v37 = a5;
      v38 = 2048;
      v39 = a6;
      v40 = 2048;
      v41 = a7;
      v15 = v31;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ is handling postSMSMessageSent delegate callback with context:%@, success: %d, messageID: %ld, err1: %ld, err2: %ld", &v30, 0x3Au);
    }

    dword_10010DA90 = -1;
    v16 = [(VMTelephonyRequestController *)self pendingRequest];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 subscription];
      v19 = [v18 uuid];
      v20 = [v12 uuid];
      v21 = [v19 isEqual:v20];

      if (v21)
      {
        if (v10)
        {
          v22 = 0;
        }

        else
        {
          v22 = [VMCarrierStateResponseError errorWithCode:a6 userInfo:0];
        }

        v23 = vm_vmd_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 138412290;
          v31 = v17;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Acknowledging outgoing message for STATE request %@", &v30, 0xCu);
        }

        v24 = [(VMCarrierStateRequestController *)self messageCenter];
        [v24 acknowledgeOutgoingMessageWithId:a5];

        v25 = vm_vmd_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = @"failure";
          if (!v22)
          {
            v26 = @"success";
          }

          v30 = 138412546;
          v31 = v26;
          v32 = 2112;
          v33 = v17;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Posting %@ response for STATE request %@", &v30, 0x16u);
        }

        v27 = [VMCarrierStateResponse alloc];
        v28 = [v17 subscription];
        v29 = [(VMTelephonyResponse *)v27 initWithSubscription:v28 error:v22];
        [(VMTelephonyRequestController *)self postResponse:v29 forRequest:v17];
      }

      else
      {
        v22 = vm_vmd_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 138412546;
          v31 = v17;
          v32 = 2112;
          v33 = v12;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Ignoring handling pendingStateRequest: %@, context: %@", &v30, 0x16u);
        }
      }
    }

    else
    {
      v22 = vm_vmd_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_10009C1F8(self, v22);
      }
    }
  }
}

@end