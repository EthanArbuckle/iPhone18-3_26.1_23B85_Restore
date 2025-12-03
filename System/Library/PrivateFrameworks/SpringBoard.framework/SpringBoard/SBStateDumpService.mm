@interface SBStateDumpService
- (BOOL)_authenticateClient:(id)client;
- (SBStateDumpService)init;
- (void)systemServiceServer:(id)server client:(id)client disableRemoteStateDumpWithCompletion:(id)completion;
- (void)systemServiceServer:(id)server client:(id)client enableRemoteStateDumpWithTimeout:(int64_t)timeout completion:(id)completion;
- (void)systemServiceServer:(id)server client:(id)client requestStateDump:(unint64_t)dump toTextFileAtPath:(id)path;
- (void)systemServiceServer:(id)server client:(id)client requestStateDump:(unint64_t)dump withCompletion:(id)completion;
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

- (void)systemServiceServer:(id)server client:(id)client requestStateDump:(unint64_t)dump withCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SBStateDumpService *)self _authenticateClient:client])
  {
    if (dump == 1)
    {
      [SBApp _dumpLoggingStateCaptureWithCompletion:completionCopy];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0, 0, @"Unrecognized state dump type.");
    }
  }
}

- (void)systemServiceServer:(id)server client:(id)client requestStateDump:(unint64_t)dump toTextFileAtPath:(id)path
{
  pathCopy = path;
  v9 = [(SBStateDumpService *)self _authenticateClient:client];
  if (dump == 1 && v9)
  {
    [SBApp _dumpLoggingStateCaptureToTextFileAtPath:pathCopy];
  }
}

- (void)systemServiceServer:(id)server client:(id)client enableRemoteStateDumpWithTimeout:(int64_t)timeout completion:(id)completion
{
  completionCopy = completion;
  if ([(SBStateDumpService *)self _authenticateClient:client])
  {
    [SBApp _enableRemoteStateDumpWithTimeout:timeout withCompletion:completionCopy];
  }
}

- (void)systemServiceServer:(id)server client:(id)client disableRemoteStateDumpWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(SBStateDumpService *)self _authenticateClient:client])
  {
    [SBApp _disableRemoteStateDumpWithCompletion:completionCopy];
  }
}

- (BOOL)_authenticateClient:(id)client
{
  clientCopy = client;
  v5 = [(FBServiceClientAuthenticator *)self->_clientAuthenticator authenticateClient:clientCopy];
  if ((v5 & 1) == 0)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(SBStateDumpService *)clientCopy _authenticateClient:v6];
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