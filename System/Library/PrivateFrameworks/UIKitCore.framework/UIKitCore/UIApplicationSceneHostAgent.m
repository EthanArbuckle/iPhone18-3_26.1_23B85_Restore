@interface UIApplicationSceneHostAgent
- (UIApplicationSceneHostAgent)init;
- (void)dealloc;
@end

@implementation UIApplicationSceneHostAgent

- (UIApplicationSceneHostAgent)init
{
  v3.receiver = self;
  v3.super_class = UIApplicationSceneHostAgent;
  return [(UIApplicationSceneHostAgent *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = UIApplicationSceneHostAgent;
  [(UIApplicationSceneHostAgent *)&v2 dealloc];
}

@end