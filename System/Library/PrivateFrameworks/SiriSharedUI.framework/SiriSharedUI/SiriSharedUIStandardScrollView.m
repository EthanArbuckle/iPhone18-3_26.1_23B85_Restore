@interface SiriSharedUIStandardScrollView
- (SiriSharedUIStandardScrollView)init;
- (UIEdgeInsets)safeAreaInsets;
@end

@implementation SiriSharedUIStandardScrollView

- (SiriSharedUIStandardScrollView)init
{
  v3.receiver = self;
  v3.super_class = SiriSharedUIStandardScrollView;
  return [(SiriSharedUIStandardScrollView *)&v3 init];
}

- (UIEdgeInsets)safeAreaInsets
{
  if ([(SiriSharedUIStandardScrollView *)self contentInsetAdjustmentBehavior]== 2)
  {
    v3 = *MEMORY[0x277D768C8];
    v4 = *(MEMORY[0x277D768C8] + 8);
    v5 = *(MEMORY[0x277D768C8] + 16);
    v6 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SiriSharedUIStandardScrollView;
    [(SiriSharedUIStandardScrollView *)&v7 safeAreaInsets];
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end