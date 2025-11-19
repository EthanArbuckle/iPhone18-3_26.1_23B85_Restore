@interface UIDruidSourceWarmUpConnection
@end

@implementation UIDruidSourceWarmUpConnection

void __40___UIDruidSourceWarmUpConnection_warmUp__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

@end