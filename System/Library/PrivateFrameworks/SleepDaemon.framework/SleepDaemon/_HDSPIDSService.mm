@interface _HDSPIDSService
- (HDSPIDSServiceDelegate)delegate;
- (_HDSPIDSService)initWithIsCloudService:(BOOL)a3 scheduler:(id)a4;
- (id)_cloudDestinations;
- (id)_loggingDescription;
- (void)_sendSerializedMessage:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)sendMessage:(id)a3 completion:(id)a4;
- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
- (void)setDelegate:(id)a3;
@end

@implementation _HDSPIDSService

- (_HDSPIDSService)initWithIsCloudService:(BOOL)a3 scheduler:(id)a4
{
  v5 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _HDSPIDSService;
  v8 = [(_HDSPIDSService *)&v15 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D18778]);
    if (v5)
    {
      v10 = @"com.apple.private.alloy.avconference.avctester";
    }

    else
    {
      v10 = @"com.apple.private.alloy.sleep.classd";
    }

    v11 = [v9 initWithService:v10];
    service = v8->_service;
    v8->_service = v11;

    v8->_isCloudService = v5;
    objc_storeStrong(&v8->_scheduler, a4);
    v13 = v8;
  }

  return v8;
}

- (id)_loggingDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if (self->_isCloudService)
  {
    v5 = @"cloud";
  }

  else
  {
    v5 = @"local";
  }

  return [v3 stringWithFormat:@"%@ (%@)", v4, v5];
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
  service = self->_service;
  v5 = [(HKSPQueueBackedScheduler *)self->_scheduler queue];
  [(IDSService *)service addDelegate:self queue:v5];
}

- (void)sendMessage:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(_HDSPIDSService *)self _loggingDescription];
    *buf = 138543618;
    v20 = v9;
    v21 = 2114;
    v22 = v6;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] sending message %{public}@", buf, 0x16u);
  }

  v10 = objc_alloc_init(MEMORY[0x277D62458]);
  v18 = 0;
  v11 = [v10 serialize:v6 error:&v18];
  v12 = v18;
  if (v11)
  {
    v13 = [v10 serializedDictionary];
    v14 = [v6 identifier];
    [(_HDSPIDSService *)self _sendSerializedMessage:v13 identifier:v14 completion:v7];
  }

  else
  {
    v15 = HKSPLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = [(_HDSPIDSService *)self _loggingDescription];
      *buf = 138543874;
      v20 = v17;
      v21 = 2114;
      v22 = v6;
      v23 = 2114;
      v24 = v12;
      _os_log_error_impl(&dword_269B11000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] failed to serialize message %{public}@ with error %{public}@", buf, 0x20u);
    }

    v7[2](v7, 0, v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_sendSerializedMessage:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  scheduler = self->_scheduler;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64___HDSPIDSService__sendSerializedMessage_identifier_completion___block_invoke;
  v15[3] = &unk_279C7CF10;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  [(HKSPQueueBackedScheduler *)scheduler performBlock:v15];
}

- (id)_cloudDestinations
{
  v2 = [(IDSService *)self->_service devices];
  v3 = [v2 na_filter:&__block_literal_global_29];
  v4 = [v3 na_map:&__block_literal_global_323_0];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [MEMORY[0x277CBEB98] setWithArray:v5];

  return v6;
}

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(_HDSPIDSService *)self _loggingDescription];
    *buf = 138543618;
    v23 = v10;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] received incoming message %{public}@", buf, 0x16u);
  }

  v11 = objc_alloc(MEMORY[0x277D62450]);
  v12 = +[HDSPIDSServiceManager _allowedMessageClasses];
  v13 = [v11 initWithAllowedClasses:v12 serializedDictionary:v8];

  v14 = [v8 hksp_serializedClassName];
  v15 = NSClassFromString(v14);

  v21 = 0;
  v16 = [v13 deserializeObjectOfClass:v15 error:&v21];
  v17 = v21;
  if (v16)
  {
    v18 = [(_HDSPIDSService *)self delegate];
    [v18 service:self didReceiveMessage:v16];
  }

  else
  {
    v18 = HKSPLogForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = [(_HDSPIDSService *)self _loggingDescription];
      *buf = 138543618;
      v23 = v20;
      v24 = 2114;
      v25 = v17;
      _os_log_error_impl(&dword_269B11000, v18, OS_LOG_TYPE_ERROR, "[%{public}@] failed to deserialize incoming message with error %{public}@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 account:(id)a4 identifier:(id)a5 didSendWithSuccess:(BOOL)a6 error:(id)a7 context:(id)a8
{
  v9 = a6;
  v23 = *MEMORY[0x277D85DE8];
  v11 = a5;
  v12 = a7;
  v13 = HKSPLogForCategory();
  v14 = v13;
  if (!v9)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v15 = [(_HDSPIDSService *)self _loggingDescription];
    v17 = 138543874;
    v18 = v15;
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    _os_log_error_impl(&dword_269B11000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] failed to send message %{public}@ with error %{public}@", &v17, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(_HDSPIDSService *)self _loggingDescription];
    v17 = 138543618;
    v18 = v15;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully sent message %{public}@", &v17, 0x16u);
LABEL_4:
  }

LABEL_6:

  v16 = *MEMORY[0x277D85DE8];
}

- (HDSPIDSServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end