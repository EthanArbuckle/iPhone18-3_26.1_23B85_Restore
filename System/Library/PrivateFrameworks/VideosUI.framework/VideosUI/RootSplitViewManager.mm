@interface RootSplitViewManager
- (void)numberOfChildControllersDidChangeFor:(id)for from:(int64_t)from to:(int64_t)to animated:(BOOL)animated;
@end

@implementation RootSplitViewManager

- (void)numberOfChildControllersDidChangeFor:(id)for from:(int64_t)from to:(int64_t)to animated:(BOOL)animated
{
  forCopy = for;
  selfCopy = self;
  sub_1E3979D78(forCopy, from);
}

@end