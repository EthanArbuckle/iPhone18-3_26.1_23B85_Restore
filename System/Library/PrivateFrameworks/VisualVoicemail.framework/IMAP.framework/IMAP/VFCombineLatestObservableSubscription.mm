@interface VFCombineLatestObservableSubscription
@end

@implementation VFCombineLatestObservableSubscription

id __62___VFCombineLatestObservableSubscription_initWithObservables___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 distinctUntilChanged];

    v2 = v3;
  }

  return v2;
}

void __52___VFCombineLatestObservableSubscription_subscribe___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = objc_alloc_init(VFCancelationToken);
  [*(a1 + 32) addCancelable:v6];
  [*(*(a1 + 40) + 8) lock];
  [*(*(a1 + 40) + 32) replaceObjectAtIndex:a3 withObject:v6];
  [*(*(a1 + 40) + 8) unlock];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __52___VFCombineLatestObservableSubscription_subscribe___block_invoke_2;
  v18[3] = &unk_279E359F8;
  v7 = *(a1 + 48);
  v18[4] = *(a1 + 40);
  v20 = a3;
  v19 = v7;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52___VFCombineLatestObservableSubscription_subscribe___block_invoke_3;
  v15[3] = &unk_279E35078;
  v8 = *(a1 + 48);
  v15[4] = *(a1 + 40);
  v17 = a3;
  v16 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52___VFCombineLatestObservableSubscription_subscribe___block_invoke_4;
  v12[3] = &unk_279E35A20;
  v9 = *(a1 + 48);
  v12[4] = *(a1 + 40);
  v14 = a3;
  v13 = v9;
  v10 = [VFObserver observerWithResultBlock:v18 completionBlock:v15 failureBlock:v12];
  v11 = [v5 subscribe:v10];

  [(VFCancelationToken *)v6 addCancelable:v11];
}

@end