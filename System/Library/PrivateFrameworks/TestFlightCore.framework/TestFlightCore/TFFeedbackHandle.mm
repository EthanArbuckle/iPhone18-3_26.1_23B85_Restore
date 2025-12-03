@interface TFFeedbackHandle
- (TFFeedbackHandle)initWithConfiguration:(id)configuration;
- (void)invalidateFeedbackViewController;
- (void)presentFeedbackViewController;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation TFFeedbackHandle

- (TFFeedbackHandle)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = TFFeedbackHandle;
  v5 = [(TFFeedbackHandle *)&v11 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
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
  generatedLogger = [v3 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    logKey = [(TFFeedbackHandle *)self logKey];
    configuration = [(TFFeedbackHandle *)self configuration];
    bundleIdentifier = [configuration bundleIdentifier];
    v18 = 138543874;
    v19 = v5;
    v20 = 2112;
    v21 = logKey;
    v22 = 2112;
    v23 = bundleIdentifier;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: presentFeedbackViewController bundleIdentifier=%@", &v18, 0x20u);
  }

  v10 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.ios.StoreKitUIService" viewControllerClassName:@"ServiceTFFeedbackFormHostViewController"];
  v11 = objc_alloc_init(MEMORY[0x277D66BD0]);
  configuration2 = [(TFFeedbackHandle *)self configuration];
  encodedAsUserInfo = [configuration2 encodedAsUserInfo];
  [v11 setUserInfo:encodedAsUserInfo];

  v14 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v10 configurationContext:v11];
  [(TFFeedbackHandle *)self setInternalHandle:v14];

  internalHandle = [(TFFeedbackHandle *)self internalHandle];
  [internalHandle addObserver:self];

  v16 = objc_alloc_init(MEMORY[0x277D66BC0]);
  internalHandle2 = [(TFFeedbackHandle *)self internalHandle];
  [internalHandle2 activateWithContext:v16];
}

- (void)invalidateFeedbackViewController
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v3 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    logKey = [(TFFeedbackHandle *)self logKey];
    configuration = [(TFFeedbackHandle *)self configuration];
    bundleIdentifier = [configuration bundleIdentifier];
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = logKey;
    v15 = 2112;
    v16 = bundleIdentifier;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: invalidateFeedbackViewController bundleIdentifier=%@", &v11, 0x20u);
  }

  internalHandle = [(TFFeedbackHandle *)self internalHandle];
  [internalHandle invalidate];
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v14 = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  v5 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v5 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    logKey = [(TFFeedbackHandle *)self logKey];
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = logKey;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: remoteAlertHandleDidDeactivate", &v10, 0x16u);
  }

  [deactivateCopy removeObserver:self];
  [(TFFeedbackHandle *)self setInternalHandle:0];
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v6 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v6 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    logKey = [(TFFeedbackHandle *)self logKey];
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = logKey;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: remoteAlertHandle:didInvalidateWithError:", &v11, 0x16u);
  }

  [handleCopy removeObserver:self];
  [(TFFeedbackHandle *)self setInternalHandle:0];
}

@end