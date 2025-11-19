@interface RootSplitViewManager
- (void)numberOfChildControllersDidChangeFor:(id)a3 from:(int64_t)a4 to:(int64_t)a5 animated:(BOOL)a6;
@end

@implementation RootSplitViewManager

- (void)numberOfChildControllersDidChangeFor:(id)a3 from:(int64_t)a4 to:(int64_t)a5 animated:(BOOL)a6
{
  v8 = a3;
  v9 = self;
  sub_1E3979D78(v8, a4);
}

@end