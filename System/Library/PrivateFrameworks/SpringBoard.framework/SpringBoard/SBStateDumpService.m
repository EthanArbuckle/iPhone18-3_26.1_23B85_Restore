@interface SBStateDumpService
- (BOOL)_authenticateClient:(id)a3;
- (SBStateDumpService)init;
- (void)systemServiceServer:(id)a3 client:(id)a4 disableRemoteStateDumpWithCompletion:(id)a5;
- (void)systemServiceServer:(id)a3 client:(id)a4 enableRemoteStateDumpWithTimeout:(int64_t)a5 completion:(id)a6;
- (void)systemServiceServer:(id)a3 client:(id)a4 requestStateDump:(unint64_t)a5 toTextFileAtPath:(id)a6;
- (void)systemServiceServer:(id)a3 client:(id)a4 requestStateDump:(unint64_t)a5 withCompletion:(id)a6;
@end

@implementation SBStateDumpService

- (SBStateDumpService)init
{
  v7.receiver = self;
  v7.super_class = SBStateDumpService;
  v2 = [(SBStateDumpService *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.statedump"];
    clientAuthenticator = v2->_clientAuthenticator;
    v2->_clientAuthenticator = v3;

    v5 = +[SBSystemServiceServer sharedInstance];
    [v5 setStateDumpDelegate:v2];
  }

  return v2;
}

- (void)systemServiceServer:(id)a3 client:(id)a4 requestStateDump:(unint64_t)a5 withCompletion:(id)a6
{
  v9 = a6;
  if ([(SBStateDumpService *)self _authenticateClient:a4])
  {
    if (a5 == 1)
    {
      [SBApp _dumpLoggingStateCaptureWithCompletion:v9];
    }

    else
    {
      (*(v9 + 2))(v9, 0, 0, @"Unrecognized state dump type.");
    }
  }
}

- (void)systemServiceServer:(id)a3 client:(id)a4 requestStateDump:(unint64_t)a5 toTextFileAtPath:(id)a6
{
  v10 = a6;
  v9 = [(SBStateDumpService *)self _authenticateClient:a4];
  if (a5 == 1 && v9)
  {
    [SBApp _dumpLoggingStateCaptureToTextFileAtPath:v10];
  }
}

- (void)systemServiceServer:(id)a3 client:(id)a4 enableRemoteStateDumpWithTimeout:(int64_t)a5 completion:(id)a6
{
  v9 = a6;
  if ([(SBStateDumpService *)self _authenticateClient:a4])
  {
    [SBApp _enableRemoteStateDumpWithTimeout:a5 withCompletion:v9];
  }
}

- (void)systemServiceServer:(id)a3 client:(id)a4 disableRemoteStateDumpWithCompletion:(id)a5
{
  v7 = a5;
  if ([(SBStateDumpService *)self _authenticateClient:a4])
  {
    [SBApp _disableRemoteStateDumpWithCompletion:v7];
  }
}

- (BOOL)_authenticateClient:(id)a3
{
  v4 = a3;
  v5 = [(FBServiceClientAuthenticator *)self->_clientAuthenticator authenticateClient:v4];
  if ((v5 & 1) == 0)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(SBStateDumpService *)v4 _authenticateClient:v6];
    }
  }

  return v5;
}

- (void)_authenticateClient:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "[SBStateDumpService] Rejecting request because client '%@' does not have the required entitlement.", &v4, 0xCu);
}

@end