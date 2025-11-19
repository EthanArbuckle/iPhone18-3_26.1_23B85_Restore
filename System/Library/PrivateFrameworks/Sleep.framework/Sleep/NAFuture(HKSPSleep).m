@interface NAFuture(HKSPSleep)
+ (id)_hksp_chainFutureHelperWithFutures:()HKSPSleep index:block:ignoreErrors:;
+ (id)hksp_chainFutures:()HKSPSleep returningFirstPassingTest:ignoreErrors:;
+ (id)hksp_expiringFutureWithTimeout:()HKSPSleep;
- (id)hksp_BOOLErrorCompletionHandlerAdapter;
@end

@implementation NAFuture(HKSPSleep)

- (id)hksp_BOOLErrorCompletionHandlerAdapter
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__NAFuture_HKSPSleep__hksp_BOOLErrorCompletionHandlerAdapter__block_invoke;
  v3[3] = &unk_279C75A18;
  v3[4] = a1;
  v1 = MEMORY[0x26D64AA30](v3);

  return v1;
}

+ (id)hksp_expiringFutureWithTimeout:()HKSPSleep
{
  v2 = objc_alloc_init(MEMORY[0x277D2C900]);
  if (a1 > 0.0)
  {
    v3 = dispatch_time(0, (a1 * 1000000000.0));
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__NAFuture_HKSPSleep__hksp_expiringFutureWithTimeout___block_invoke;
    block[3] = &unk_279C74258;
    v7 = v2;
    dispatch_after(v3, v4, block);
  }

  return v2;
}

+ (id)hksp_chainFutures:()HKSPSleep returningFirstPassingTest:ignoreErrors:
{
  v8 = a3;
  v9 = a4;
  if ([v8 count])
  {
    [a1 _hksp_chainFutureHelperWithFutures:v8 index:0 block:v9 ignoreErrors:a5];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }
  v10 = ;

  return v10;
}

+ (id)_hksp_chainFutureHelperWithFutures:()HKSPSleep index:block:ignoreErrors:
{
  v10 = a3;
  v11 = a5;
  v12 = [v10 objectAtIndexedSubscript:a4];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __83__NAFuture_HKSPSleep___hksp_chainFutureHelperWithFutures_index_block_ignoreErrors___block_invoke;
  v28[3] = &unk_279C75A40;
  v31 = a4;
  v32 = a1;
  v29 = v10;
  v13 = v11;
  v30 = v13;
  v33 = a6;
  v14 = v10;
  v15 = MEMORY[0x26D64AA30](v28);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __83__NAFuture_HKSPSleep___hksp_chainFutureHelperWithFutures_index_block_ignoreErrors___block_invoke_2;
  v25[3] = &unk_279C75A68;
  v26 = v13;
  v16 = v15;
  v27 = v16;
  v17 = v13;
  v18 = [v12 flatMap:v25];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__NAFuture_HKSPSleep___hksp_chainFutureHelperWithFutures_index_block_ignoreErrors___block_invoke_3;
  v22[3] = &unk_279C75A90;
  v24 = a6;
  v23 = v16;
  v19 = v16;
  v20 = [v18 recover:v22];

  return v20;
}

@end