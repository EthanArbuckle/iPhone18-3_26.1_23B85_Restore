@interface TFFeedbackHandle
- (TFFeedbackHandle)initWithConfiguration:(id)a3;
- (void)invalidateFeedbackViewController;
- (void)presentFeedbackViewController;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation TFFeedbackHandle

- (TFFeedbackHandle)initWithConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TFFeedbackHandle;
  v5 = [(TFFeedbackHandle *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = AMSGenerateLogCorrelationKey();
    logKey = v5->_logKey;
    v5->_logKey = v8;
  }

  return v5;
}

- (void)presentFeedbackViewController
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = +[TFLogConfiguration defaultConfiguration];
  v4 = [v3 generatedLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(TFFeedbackHandle *)self logKey];
    v8 = [(TFFeedbackHandle *)self configuration];
    v9 = [v8 bundleIdentifier];
    v18 = 138543874;
    v19 = v5;
    v20 = 2112;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_26D2C7000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: presentFeedbackViewController bundleIdentifier=%@", &v18, 0x20u);
  }

  v10 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.ios.StoreKitUIService" viewControllerClassName:@"ServiceTFFeedbackFormHostViewController"];
  v11 = objc_alloc_init(MEMORY[0x277D66BD0]);
  v12 = [(TFFeedbackHandle *)self configuration];
  v13 = [v12 encodedAsUserInfo];
  [v11 setUserInfo:v13];

  v14 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v10 configurationContext:v11];
  [(TFFeedbackHandle *)self setInternalHandle:v14];

  v15 = [(TFFeedbackHandle *)self internalHandle];
  [v15 addObserver:self];

  v16 = objc_alloc_init(MEMORY[0x277D66BC0]);
  v17 = [(TFFeedbackHandle *)self internalHandle];
  [v17 activateWithContext:v16];
}

- (void)invalidateFeedbackViewController
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[TFLogConfiguration defaultConfiguration];
  v4 = [v3 generatedLogger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = [(TFFeedbackHandle *)self logKey];
    v8 = [(TFFeedbackHandle *)self configuration];
    v9 = [v8 bundleIdentifier];
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_26D2C7000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: invalidateFeedbackViewController bundleIdentifier=%@", &v11, 0x20u);
  }

  v10 = [(TFFeedbackHandle *)self internalHandle];
  [v10 invalidate];
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[TFLogConfiguration defaultConfiguration];
  v6 = [v5 generatedLogger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [(TFFeedbackHandle *)self logKey];
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_26D2C7000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: remoteAlertHandleDidDeactivate", &v10, 0x16u);
  }

  [v4 removeObserver:self];
  [(TFFeedbackHandle *)self setInternalHandle:0];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[TFLogConfiguration defaultConfiguration];
  v7 = [v6 generatedLogger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [(TFFeedbackHandle *)self logKey];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_26D2C7000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: remoteAlertHandle:didInvalidateWithError:", &v11, 0x16u);
  }

  [v5 removeObserver:self];
  [(TFFeedbackHandle *)self setInternalHandle:0];
}

@end