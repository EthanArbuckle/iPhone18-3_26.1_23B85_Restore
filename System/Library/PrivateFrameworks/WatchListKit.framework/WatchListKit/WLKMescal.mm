@interface WLKMescal
+ (void)signNetworkRequest:(id)a3 completionHandler:(id)a4;
@end

@implementation WLKMescal

+ (void)signNetworkRequest:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 HTTPBody];
  v8 = MEMORY[0x277CEE588];
  v9 = [MEMORY[0x277CEE3F8] wlk_defaultBag];
  v10 = [v8 signaturePromiseFromData:v7 type:1 bag:v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__WLKMescal_signNetworkRequest_completionHandler___block_invoke;
  v13[3] = &unk_279E5FD80;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
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