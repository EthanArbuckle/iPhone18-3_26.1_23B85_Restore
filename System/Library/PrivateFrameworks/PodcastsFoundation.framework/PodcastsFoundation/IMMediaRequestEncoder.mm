@interface IMMediaRequestEncoder
- (IMMediaRequestEncoder)initWithBag:(id)a3 session:(id)a4;
- (void)prepareRequest:(id)a3 account:(id)a4 completion:(id)a5;
@end

@implementation IMMediaRequestEncoder

- (IMMediaRequestEncoder)initWithBag:(id)a3 session:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = +[IMURLBag sharedInstance];
  }

  v8 = objc_alloc(MEMORY[0x1E698C9E8]);
  v9 = +[PFClientUtil mediaApiClientIdentifier];
  v10 = [v8 initWithClientIdentifier:v9 bag:v6];

  [v10 setSession:v7];
  v11 = [objc_alloc(MEMORY[0x1E698C9B8]) initWithTokenService:v10];
  [v7 setProtocolHandler:v11];
  v16.receiver = self;
  v16.super_class = IMMediaRequestEncoder;
  v12 = [(AMSMediaRequestEncoder *)&v16 initWithTokenService:v10 bag:v6];
  v13 = v12;
  if (v12)
  {
    [(IMMediaRequestEncoder *)v12 setPersonalizeRequests:1];
    v14 = [MEMORY[0x1E698CAC8] currentProcess];
    [v14 setTreatmentNamespace:@"podcasts"];
    [(AMSMediaRequestEncoder *)v13 setClientInfo:v14];
  }

  return v13;
}

- (void)prepareRequest:(id)a3 account:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  objc_sync_enter(v11);
  if ([(IMMediaRequestEncoder *)v11 personalizeRequests])
  {
    v12 = v9;
    if (!v9)
    {
      self = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      v12 = [(IMMediaRequestEncoder *)self ams_activeiTunesAccount];
    }

    [(AMSMediaRequestEncoder *)v11 setAccount:v12];
    if (!v9)
    {
    }
  }

  v17.receiver = v11;
  v17.super_class = IMMediaRequestEncoder;
  v13 = [(AMSMediaRequestEncoder *)&v17 requestByEncodingRequest:v8 parameters:0];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __59__IMMediaRequestEncoder_prepareRequest_account_completion___block_invoke;
  v15[3] = &unk_1E856B1C0;
  v14 = v10;
  v16 = v14;
  [v13 addFinishBlock:v15];

  objc_sync_exit(v11);
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