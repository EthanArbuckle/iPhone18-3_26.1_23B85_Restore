@interface VMCarrierStateRequestController
- (CTMessageCenter)messageCenter;
- (VMCarrierStateRequestController)initWithMessageCenter:(id)center telephonyClient:(id)client queue:(id)queue;
- (VMCarrierStateRequestController)initWithTelephonyClient:(id)client;
- (void)dealloc;
- (void)executeRequest:(id)request;
- (void)postSMSMessageSent:(id)sent success:(BOOL)success messageID:(int64_t)d err1:(int64_t)err1 err2:(int64_t)err2;
@end

@implementation VMCarrierStateRequestController

- (VMCarrierStateRequestController)initWithTelephonyClient:(id)client
{
  clientCopy = client;
  vm_classIdentifier = [objc_opt_class() vm_classIdentifier];
  v6 = NSStringFromSelector("queue");
  v7 = [NSString stringWithFormat:@"%@.%@", vm_classIdentifier, v6];

  v8 = dispatch_queue_create([v7 UTF8String], 0);
  dispatch_queue_set_specific(v8, off_10010CE20, self, 0);
  v9 = +[CTMessageCenter sharedMessageCenter];
  v10 = [(VMCarrierStateRequestController *)self initWithMessageCenter:v9 telephonyClient:clientCopy queue:v8];

  return v10;
}

- (VMCarrierStateRequestController)initWithMessageCenter:(id)center telephonyClient:(id)client queue:(id)queue
{
  centerCopy = center;
  clientCopy = client;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = VMCarrierStateRequestController;
  v12 = [(VMTelephonyRequestController *)&v16 initWithQueue:queueCopy];
  v13 = v12;
  if (v12)
  {
    dword_10010DA90 = -1;
    objc_storeStrong(&v12->_messageCenter, center);
    [(VMCarrierStateRequestController *)v13 setTelephonyClient:clientCopy];
    telephonyClient = [(VMCarrierStateRequestController *)v13 telephonyClient];
    [telephonyClient addDelegate:v13 queue:queueCopy];
  }

  return v13;
}

- (void)dealloc
{
  telephonyClient = [(VMCarrierStateRequestController *)self telephonyClient];
  [telephonyClient removeDelegate:self];

  v4.receiver = self;
  v4.super_class = VMCarrierStateRequestController;
  [(VMCarrierStateRequestController *)&v4 dealloc];
}

- (void)executeRequest:(id)request
{
  requestCopy = request;
  pendingRequest = [(VMTelephonyRequestController *)self pendingRequest];
  v6 = [pendingRequest isEqualToRequest:requestCopy];

  if (v6)
  {
    v7 = vm_vmd_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = requestCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending message for STATE request %@", &v19, 0xCu);
    }

    v19 = -1;
    messageCenter = [(VMCarrierStateRequestController *)self messageCenter];
    subscription = [requestCopy subscription];
    message = [requestCopy message];
    serviceCenter = [requestCopy serviceCenter];
    destination = [requestCopy destination];
    v13 = [messageCenter sendSMSWithText:subscription text:message serviceCenter:serviceCenter toAddress:destination trackingID:&v19];

    if (v13)
    {
      dword_10010DA90 = v19;
    }

    else
    {
      v14 = vm_vmd_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10009C180(requestCopy, v14);
      }

      v15 = [VMCarrierStateResponseError errorWithCode:qword_10010D668 userInfo:0];
      v16 = [VMCarrierStateResponse alloc];
      subscription2 = [requestCopy subscription];
      v18 = [(VMTelephonyResponse *)v16 initWithSubscription:subscription2 error:v15];

      [(VMTelephonyRequestController *)self postResponse:v18 forRequest:requestCopy];
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

- (void)postSMSMessageSent:(id)sent success:(BOOL)success messageID:(int64_t)d err1:(int64_t)err1 err2:(int64_t)err2
{
  successCopy = success;
  sentCopy = sent;
  queue = [(VMTelephonyRequestController *)self queue];
  dispatch_assert_queue_V2(queue);

  if (dword_10010DA90 == d)
  {
    v14 = vm_vmd_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138413570;
      v31 = objc_opt_class();
      v32 = 2112;
      v33 = sentCopy;
      v34 = 1024;
      v35 = successCopy;
      v36 = 2048;
      dCopy = d;
      v38 = 2048;
      err1Copy = err1;
      v40 = 2048;
      err2Copy = err2;
      v15 = v31;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%@ is handling postSMSMessageSent delegate callback with context:%@, success: %d, messageID: %ld, err1: %ld, err2: %ld", &v30, 0x3Au);
    }

    dword_10010DA90 = -1;
    pendingRequest = [(VMTelephonyRequestController *)self pendingRequest];
    v17 = pendingRequest;
    if (pendingRequest)
    {
      subscription = [pendingRequest subscription];
      uuid = [subscription uuid];
      uuid2 = [sentCopy uuid];
      v21 = [uuid isEqual:uuid2];

      if (v21)
      {
        if (successCopy)
        {
          v22 = 0;
        }

        else
        {
          v22 = [VMCarrierStateResponseError errorWithCode:err1 userInfo:0];
        }

        v23 = vm_vmd_log();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v30 = 138412290;
          v31 = v17;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Acknowledging outgoing message for STATE request %@", &v30, 0xCu);
        }

        messageCenter = [(VMCarrierStateRequestController *)self messageCenter];
        [messageCenter acknowledgeOutgoingMessageWithId:d];

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
        subscription2 = [v17 subscription];
        v29 = [(VMTelephonyResponse *)v27 initWithSubscription:subscription2 error:v22];
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
          v33 = sentCopy;
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