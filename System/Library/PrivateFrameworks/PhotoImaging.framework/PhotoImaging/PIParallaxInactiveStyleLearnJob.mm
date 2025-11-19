@interface PIParallaxInactiveStyleLearnJob
@end

@implementation PIParallaxInactiveStyleLearnJob

void __43___PIParallaxInactiveStyleLearnJob_render___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v11 = 0;
    v7 = [a2 serializedDataWithError:&v11];
    v8 = v11;
    [*(a1 + 32) setStyleData:v7];

    v9 = *(a1 + 32);
    v10 = *(v9 + 248);
    *(v9 + 248) = v8;
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 248), a3);
  }

  dispatch_group_leave(*(*(a1 + 32) + 240));
}

@end