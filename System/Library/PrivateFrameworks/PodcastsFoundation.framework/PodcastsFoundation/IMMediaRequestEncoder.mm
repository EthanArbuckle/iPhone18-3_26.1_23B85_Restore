@interface IMMediaRequestEncoder
- (IMMediaRequestEncoder)initWithBag:(id)bag session:(id)session;
- (void)prepareRequest:(id)request account:(id)account completion:(id)completion;
@end

@implementation IMMediaRequestEncoder

- (IMMediaRequestEncoder)initWithBag:(id)bag session:(id)session
{
  bagCopy = bag;
  sessionCopy = session;
  if (!bagCopy)
  {
    bagCopy = +[IMURLBag sharedInstance];
  }

  v8 = objc_alloc(MEMORY[0x1E698C9E8]);
  v9 = +[PFClientUtil mediaApiClientIdentifier];
  v10 = [v8 initWithClientIdentifier:v9 bag:bagCopy];

  [v10 setSession:sessionCopy];
  v11 = [objc_alloc(MEMORY[0x1E698C9B8]) initWithTokenService:v10];
  [sessionCopy setProtocolHandler:v11];
  v16.receiver = self;
  v16.super_class = IMMediaRequestEncoder;
  v12 = [(AMSMediaRequestEncoder *)&v16 initWithTokenService:v10 bag:bagCopy];
  v13 = v12;
  if (v12)
  {
    [(IMMediaRequestEncoder *)v12 setPersonalizeRequests:1];
    currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
    [currentProcess setTreatmentNamespace:@"podcasts"];
    [(AMSMediaRequestEncoder *)v13 setClientInfo:currentProcess];
  }

  return v13;
}

- (void)prepareRequest:(id)request account:(id)account completion:(id)completion
{
  requestCopy = request;
  accountCopy = account;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(IMMediaRequestEncoder *)selfCopy personalizeRequests])
  {
    ams_activeiTunesAccount = accountCopy;
    if (!accountCopy)
    {
      self = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      ams_activeiTunesAccount = [(IMMediaRequestEncoder *)self ams_activeiTunesAccount];
    }

    [(AMSMediaRequestEncoder *)selfCopy setAccount:ams_activeiTunesAccount];
    if (!accountCopy)
    {
    }
  }

  v17.receiver = selfCopy;
  v17.super_class = IMMediaRequestEncoder;
  v13 = [(AMSMediaRequestEncoder *)&v17 requestByEncodingRequest:requestCopy parameters:0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__IMMediaRequestEncoder_prepareRequest_account_completion___block_invoke;
  v15[3] = &unk_1E856B1C0;
  v14 = completionCopy;
  v16 = v14;
  [v13 addFinishBlock:v15];

  objc_sync_exit(selfCopy);
}

uint64_t __59__IMMediaRequestEncoder_prepareRequest_account_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end