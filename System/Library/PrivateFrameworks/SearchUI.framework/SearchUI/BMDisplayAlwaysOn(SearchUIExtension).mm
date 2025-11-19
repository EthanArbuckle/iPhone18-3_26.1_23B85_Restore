@interface BMDisplayAlwaysOn(SearchUIExtension)
- (void)getEnabledStatusWithCompletion:()SearchUIExtension;
@end

@implementation BMDisplayAlwaysOn(SearchUIExtension)

- (void)getEnabledStatusWithCompletion:()SearchUIExtension
{
  v5 = a3;
  (a3)[2](v5, [a1 userSetState] == 1);
}

@end