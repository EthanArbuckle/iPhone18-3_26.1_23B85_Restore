@interface WLKMescal
+ (void)signNetworkRequest:(id)request completionHandler:(id)handler;
@end

@implementation WLKMescal

+ (void)signNetworkRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  hTTPBody = [requestCopy HTTPBody];
  v8 = MEMORY[0x277CEE588];
  wlk_defaultBag = [MEMORY[0x277CEE3F8] wlk_defaultBag];
  v10 = [v8 signaturePromiseFromData:hTTPBody type:1 bag:wlk_defaultBag];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__WLKMescal_signNetworkRequest_completionHandler___block_invoke;
  v13[3] = &unk_279E5FD80;
  v14 = requestCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = requestCopy;
  [v10 resultWithCompletion:v13];
}

void __50__WLKMescal_signNetworkRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v7 || v5)
  {
    if (v5)
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v6 = [v7 base64EncodedStringWithOptions:0];
    [*(a1 + 32) setValue:v6 forHTTPHeaderField:*MEMORY[0x277CEE1C0]];
    (*(*(a1 + 40) + 16))();
  }
}

@end