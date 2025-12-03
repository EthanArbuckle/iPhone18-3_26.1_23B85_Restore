@interface FBSScene(PRScene)
- (void)pr_performUpdate:()PRScene;
@end

@implementation FBSScene(PRScene)

- (void)pr_performUpdate:()PRScene
{
  v4 = a3;
  clientSettings = [self clientSettings];
  v8 = [clientSettings mutableCopy];

  specification = [self specification];
  v7 = [objc_msgSend(specification "transitionContextClass")];

  v4[2](v4, v8, v7);
  [self updateClientSettings:v8 withTransitionContext:v7];
}

@end