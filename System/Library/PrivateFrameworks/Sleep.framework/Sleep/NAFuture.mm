@interface NAFuture
@end

@implementation NAFuture

void __61__NAFuture_HKSPSleep__hksp_BOOLErrorCompletionHandlerAdapter__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8 = v5;
  if (a2)
  {
    v7 = NAEmptyResult();
    [v6 finishWithResult:v7];
  }

  else
  {
    if (v5)
    {
      [v6 finishWithError:v5];
      goto LABEL_7;
    }

    v7 = [MEMORY[0x277CCA9B8] na_genericError];
    [v6 finishWithError:v7];
  }

LABEL_7:
}

void __54__NAFuture_HKSPSleep__hksp_expiringFutureWithTimeout___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) isFinished] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277CCA9B8] na_timeoutError];
    [v2 finishWithError:v3];
  }
}

id __83__NAFuture_HKSPSleep___hksp_chainFutureHelperWithFutures_index_block_ignoreErrors___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48) + 1;
  if (v2 == [*(a1 + 32) count])
  {
    [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    [*(a1 + 56) _hksp_chainFutureHelperWithFutures:*(a1 + 32) index:v2 block:*(a1 + 40) ignoreErrors:*(a1 + 64)];
  }
  v3 = ;

  return v3;
}

id __83__NAFuture_HKSPSleep___hksp_chainFutureHelperWithFutures_index_block_ignoreErrors___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16))())
  {
    [MEMORY[0x277D2C900] futureWithResult:v3];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
  v4 = ;

  return v4;
}

id __83__NAFuture_HKSPSleep___hksp_chainFutureHelperWithFutures_index_block_ignoreErrors___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithError:a2];
  }
  v2 = ;

  return v2;
}

@end