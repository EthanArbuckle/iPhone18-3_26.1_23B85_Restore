@interface UIView(UIContentUnavailableView)
+ (_SMUContentUnavailableView)smu_contentUnavailableView;
@end

@implementation UIView(UIContentUnavailableView)

+ (_SMUContentUnavailableView)smu_contentUnavailableView
{
  emptyConfiguration = [MEMORY[0x277D75390] emptyConfiguration];
  v1 = [(UIContentUnavailableView *)[_SMUContentUnavailableView alloc] initWithConfiguration:emptyConfiguration];

  return v1;
}

@end