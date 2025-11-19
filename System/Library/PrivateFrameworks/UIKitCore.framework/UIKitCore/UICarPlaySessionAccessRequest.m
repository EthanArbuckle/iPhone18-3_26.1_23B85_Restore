@interface UICarPlaySessionAccessRequest
@end

@implementation UICarPlaySessionAccessRequest

void __61___UICarPlaySessionAccessRequest_initWithTimeout_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _cancelTimer];
    v2 = [v5 completion];
    v2[2](v2, 0);

    v3 = [v5 timeoutHandler];

    WeakRetained = v5;
    if (v3)
    {
      v4 = [v5 timeoutHandler];
      v4[2]();

      WeakRetained = v5;
    }
  }
}

@end