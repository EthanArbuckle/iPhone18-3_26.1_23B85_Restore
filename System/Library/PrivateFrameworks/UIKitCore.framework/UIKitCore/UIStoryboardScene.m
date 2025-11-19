@interface UIStoryboardScene
- (void)dealloc;
@end

@implementation UIStoryboardScene

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIStoryboardScene;
  [(UIStoryboardScene *)&v3 dealloc];
}

@end