@interface UIScrollView(StocksUI)
- (void)su_performScrollTestWithLength:()StocksUI completion:;
@end

@implementation UIScrollView(StocksUI)

- (void)su_performScrollTestWithLength:()StocksUI completion:
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D759C8]);
  [v7 setIterations:1];
  [v7 setLength:a2];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__UIScrollView_StocksUI__su_performScrollTestWithLength_completion___block_invoke;
  v9[3] = &unk_27844A258;
  v10 = v6;
  v8 = v6;
  [self _performScrollTestWithParameters:v7 completionBlock:v9];
}

@end