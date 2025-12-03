@interface _HDSPIDSService
- (HDSPIDSServiceDelegate)delegate;
- (_HDSPIDSService)initWithIsCloudService:(BOOL)service scheduler:(id)scheduler;
- (id)_cloudDestinations;
- (id)_loggingDescription;
- (void)_sendSerializedMessage:(id)message identifier:(id)identifier completion:(id)completion;
- (void)sendMessage:(id)message completion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)setDelegate:(id)delegate;
@end

@implementation _HDSPIDSService

- (_HDSPIDSService)initWithIsCloudService:(BOOL)service scheduler:(id)scheduler
{
  serviceCopy = service;
  schedulerCopy = scheduler;
  v15.receiver = self;
  v15.super_class = _HDSPIDSService;
  v8 = [(_HDSPIDSService *)&v15 init];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D18778]);
    if (serviceCopy)
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

    v8->_isCloudService = serviceCopy;
    objc_storeStrong(&v8->_scheduler, scheduler);
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

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  service = self->_service;
  queue = [(HKSPQueueBackedScheduler *)self->_scheduler queue];
  [(IDSService *)service addDelegate:self queue:queue];
}

- (void)sendMessage:(id)message completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    _loggingDescription = [(_HDSPIDSService *)self _loggingDescription];
    *buf = 138543618;
    v20 = _loggingDescription;
    v21 = 2114;
    v22 = messageCopy;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] sending message %{public}@", buf, 0x16u);
  }

  v10 = objc_alloc_init(MEMORY[0x277D62458]);
  v18 = 0;
  v11 = [v10 serialize:messageCopy error:&v18];
  v12 = v18;
  if (v11)
  {
    serializedDictionary = [v10 serializedDictionary];
    identifier = [messageCopy identifier];
    [(_HDSPIDSService *)self _sendSerializedMessage:serializedDictionary identifier:identifier completion:completionCopy];
  }

  else
  {
    v15 = HKSPLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _loggingDescription2 = [(_HDSPIDSService *)self _loggingDescription];
      *buf = 138543874;
      v20 = _loggingDescription2;
      v21 = 2114;
      v22 = messageCopy;
      v23 = 2114;
      v24 = v12;
      _os_log_error_impl(&dword_269B11000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] failed to serialize message %{public}@ with error %{public}@", buf, 0x20u);
    }

    completionCopy[2](completionCopy, 0, v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_sendSerializedMessage:(id)message identifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  identifierCopy = identifier;
  completionCopy = completion;
  scheduler = self->_scheduler;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64___HDSPIDSService__sendSerializedMessage_identifier_completion___block_invoke;
  v15[3] = &unk_279C7CF10;
  v15[4] = self;
  v16 = identifierCopy;
  v17 = messageCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = messageCopy;
  v14 = identifierCopy;
  [(HKSPQueueBackedScheduler *)scheduler performBlock:v15];
}

- (id)_cloudDestinations
{
  devices = [(IDSService *)self->_service devices];
  v3 = [devices na_filter:&__block_literal_global_29];
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

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v9 = HKSPLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    _loggingDescription = [(_HDSPIDSService *)self _loggingDescription];
    *buf = 138543618;
    v23 = _loggingDescription;
    v24 = 2114;
    v25 = messageCopy;
    _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] received incoming message %{public}@", buf, 0x16u);
  }

  v11 = objc_alloc(MEMORY[0x277D62450]);
  v12 = +[HDSPIDSServiceManager _allowedMessageClasses];
  v13 = [v11 initWithAllowedClasses:v12 serializedDictionary:messageCopy];

  hksp_serializedClassName = [messageCopy hksp_serializedClassName];
  v15 = NSClassFromString(hksp_serializedClassName);

  v21 = 0;
  v16 = [v13 deserializeObjectOfClass:v15 error:&v21];
  v17 = v21;
  if (v16)
  {
    delegate = [(_HDSPIDSService *)self delegate];
    [delegate service:self didReceiveMessage:v16];
  }

  else
  {
    delegate = HKSPLogForCategory();
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      _loggingDescription2 = [(_HDSPIDSService *)self _loggingDescription];
      *buf = 138543618;
      v23 = _loggingDescription2;
      v24 = 2114;
      v25 = v17;
      _os_log_error_impl(&dword_269B11000, delegate, OS_LOG_TYPE_ERROR, "[%{public}@] failed to deserialize incoming message with error %{public}@", buf, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  errorCopy = error;
  v13 = HKSPLogForCategory();
  v14 = v13;
  if (!successCopy)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    _loggingDescription = [(_HDSPIDSService *)self _loggingDescription];
    v17 = 138543874;
    v18 = _loggingDescription;
    v19 = 2114;
    v20 = identifierCopy;
    v21 = 2114;
    v22 = errorCopy;
    _os_log_error_impl(&dword_269B11000, v14, OS_LOG_TYPE_ERROR, "[%{public}@] failed to send message %{public}@ with error %{public}@", &v17, 0x20u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    _loggingDescription = [(_HDSPIDSService *)self _loggingDescription];
    v17 = 138543618;
    v18 = _loggingDescription;
    v19 = 2114;
    v20 = identifierCopy;
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