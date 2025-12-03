@interface SASProximitySessionSharingTransport
- (SASProximitySessionSharingTransport)initWithMessageSession:(id)session;
- (void)activate;
- (void)invalidate;
- (void)sendData:(id)data response:(id)response;
@end

@implementation SASProximitySessionSharingTransport

- (SASProximitySessionSharingTransport)initWithMessageSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = SASProximitySessionSharingTransport;
  v5 = [(SASProximitySessionSharingTransport *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SASProximitySessionSharingTransport *)v5 setMessageSession:sessionCopy];
  }

  return v6;
}

- (void)activate
{
  v3 = objc_alloc(MEMORY[0x277D02880]);
  messageSession = [(SASProximitySessionSharingTransport *)self messageSession];
  v5 = [v3 initWithTemplate:messageSession];
  [(SASProximitySessionSharingTransport *)self setActionMessageSession:v5];

  actionMessageSession = [(SASProximitySessionSharingTransport *)self actionMessageSession];
  [actionMessageSession setLabel:@"Proximity Setup Sesssion"];

  actionMessageSession2 = [(SASProximitySessionSharingTransport *)self actionMessageSession];
  [actionMessageSession2 setInvalidationHandler:&__block_literal_global_0];

  actionMessageSession3 = [(SASProximitySessionSharingTransport *)self actionMessageSession];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__SASProximitySessionSharingTransport_activate__block_invoke_6;
  v10[3] = &unk_278846240;
  v10[4] = self;
  [actionMessageSession3 registerRequestID:@"Action" options:0 handler:v10];

  actionMessageSession4 = [(SASProximitySessionSharingTransport *)self actionMessageSession];
  [actionMessageSession4 activate];
}

void __47__SASProximitySessionSharingTransport_activate__block_invoke()
{
  v0 = +[SASLogging facility];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_22E4D7000, v0, OS_LOG_TYPE_DEFAULT, "Proximity message session invalidated!", v1, 2u);
  }
}

void __47__SASProximitySessionSharingTransport_activate__block_invoke_6(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [*(a1 + 32) receivedDataBlock];

  if (v8)
  {
    v9 = [*(a1 + 32) receivedDataBlock];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__SASProximitySessionSharingTransport_activate__block_invoke_2;
    v10[3] = &unk_278846218;
    v11 = v7;
    (v9)[2](v9, v6, v10);
  }
}

- (void)invalidate
{
  actionMessageSession = [(SASProximitySessionSharingTransport *)self actionMessageSession];
  [actionMessageSession invalidate];
}

- (void)sendData:(id)data response:(id)response
{
  responseCopy = response;
  dataCopy = data;
  actionMessageSession = [(SASProximitySessionSharingTransport *)self actionMessageSession];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__SASProximitySessionSharingTransport_sendData_response___block_invoke;
  v10[3] = &unk_278846268;
  v11 = responseCopy;
  v9 = responseCopy;
  [actionMessageSession sendRequestID:@"Action" options:0 request:dataCopy responseHandler:v10];
}

void __57__SASProximitySessionSharingTransport_sendData_response___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  if (v9)
  {
    if (a2)
    {
      v10 = MEMORY[0x277CCA9B8];
      v15 = @"status";
      v11 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      v16[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v13 = [v10 errorWithDomain:@"SASProximityErrorDomain" code:-2 userInfo:v12];

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(v9 + 16))(v9, 0, v8);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end