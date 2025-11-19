@interface WBSCreditCardData
@end

@implementation WBSCreditCardData

void __88__WBSCreditCardData_SafariSharedUIExtras__virtualCardArtworkWithSize_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __88__WBSCreditCardData_SafariSharedUIExtras__virtualCardArtworkWithSize_completionHandler___block_invoke_2;
  block[3] = &unk_1E8283CB8;
  objc_copyWeak(&v9, &location);
  v6 = *(a1 + 40);
  v7 = v3;
  v10 = *(a1 + 56);
  v8 = *(a1 + 48);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __88__WBSCreditCardData_SafariSharedUIExtras__virtualCardArtworkWithSize_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 40);
    v4 = [WeakRetained cardNumber];
    [v2 addArtworkToCache:v3 forCardNumber:v4 withSize:{*(a1 + 64), *(a1 + 72)}];
  }

  (*(*(a1 + 48) + 16))();
}

@end