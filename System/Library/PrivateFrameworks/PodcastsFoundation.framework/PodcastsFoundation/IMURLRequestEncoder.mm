@interface IMURLRequestEncoder
- (IMURLRequestEncoder)initWithBag:(id)bag;
- (id)requestByEncodingRequest:(id)request parameters:(id)parameters;
- (void)prepareRequest:(id)request account:(id)account completion:(id)completion;
@end

@implementation IMURLRequestEncoder

- (IMURLRequestEncoder)initWithBag:(id)bag
{
  bagCopy = bag;
  if (!bagCopy)
  {
    bagCopy = +[IMURLBag sharedInstance];
  }

  v8.receiver = self;
  v8.super_class = IMURLRequestEncoder;
  v5 = [(AMSURLRequestEncoder *)&v8 initWithBag:bagCopy];
  if (v5)
  {
    currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
    [(AMSURLRequestEncoder *)v5 setClientInfo:currentProcess];
  }

  return v5;
}

- (void)prepareRequest:(id)request account:(id)account completion:(id)completion
{
  requestCopy = request;
  accountCopy = account;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(IMURLRequestEncoder *)selfCopy personalizeRequests])
  {
    ams_activeiTunesAccount = accountCopy;
    if (!accountCopy)
    {
      self = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      ams_activeiTunesAccount = [(IMURLRequestEncoder *)self ams_activeiTunesAccount];
    }

    [(AMSURLRequestEncoder *)selfCopy setAccount:ams_activeiTunesAccount];
    if (!accountCopy)
    {
    }
  }

  v17.receiver = selfCopy;
  v17.super_class = IMURLRequestEncoder;
  v13 = [(AMSURLRequestEncoder *)&v17 requestByEncodingRequest:requestCopy parameters:0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__IMURLRequestEncoder_prepareRequest_account_completion___block_invoke;
  v15[3] = &unk_1E856B1C0;
  v14 = completionCopy;
  v16 = v14;
  [v13 addFinishBlock:v15];

  objc_sync_exit(selfCopy);
}

uint64_t __57__IMURLRequestEncoder_prepareRequest_account_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)requestByEncodingRequest:(id)request parameters:(id)parameters
{
  v5 = MEMORY[0x1E698CAD0];
  requestCopy = request;
  v7 = objc_alloc_init(v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__IMURLRequestEncoder_requestByEncodingRequest_parameters___block_invoke;
  v10[3] = &unk_1E856B278;
  v8 = v7;
  v11 = v8;
  [(IMURLRequestEncoder *)self prepareRequest:requestCopy completion:v10];

  return v8;
}

@end