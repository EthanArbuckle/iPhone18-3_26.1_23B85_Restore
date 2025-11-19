@interface WTView
@end

@implementation WTView

void __32___WTView__commonLayoutSubviews__block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) layer];
  [v10 setFrame:{v3, v5, v7, v9}];
}

@end