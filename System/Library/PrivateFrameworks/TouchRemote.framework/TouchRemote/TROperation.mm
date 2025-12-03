@interface TROperation
- (TROperation)initWithSession:(id)session;
- (void)finishWithError:(id)error;
- (void)finishWithResult:(id)result;
- (void)main;
@end

@implementation TROperation

- (TROperation)initWithSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = TROperation;
  v6 = [(TROperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

- (void)main
{
  v12 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = objc_opt_class();
      v10 = 2048;
      selfCopy = self;
      v4 = v9;
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%@<%p> started", &v8, 0x16u);
    }
  }

  v5 = dispatch_semaphore_create(0);
  semaphore = self->_semaphore;
  self->_semaphore = v5;

  [(TROperation *)self execute];
  dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(id)result
{
  v10 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 138412802;
      *&v8[4] = objc_opt_class();
      *&v8[12] = 2048;
      *&v8[14] = self;
      *&v8[22] = 2112;
      v9 = resultCopy;
      v6 = *&v8[4];
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "%@<%p> completed successfully with result %@", v8, 0x20u);
    }
  }

  [(TROperation *)self setResult:resultCopy, *v8, *&v8[16], v9];
  dispatch_semaphore_signal(self->_semaphore);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)finishWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 138412802;
      *&v8[4] = objc_opt_class();
      *&v8[12] = 2048;
      *&v8[14] = self;
      *&v8[22] = 2112;
      v9 = errorCopy;
      v6 = *&v8[4];
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "%@<%p> failed with error: %@", v8, 0x20u);
    }
  }

  [(TROperation *)self setError:errorCopy, *v8, *&v8[16], v9];
  dispatch_semaphore_signal(self->_semaphore);

  v7 = *MEMORY[0x277D85DE8];
}

@end