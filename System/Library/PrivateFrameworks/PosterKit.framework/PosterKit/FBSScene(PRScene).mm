@interface FBSScene(PRScene)
- (void)pr_performUpdate:()PRScene;
@end

@implementation FBSScene(PRScene)

- (void)pr_performUpdate:()PRScene
{
  v4 = a3;
  v5 = [a1 clientSettings];
  v8 = [v5 mutableCopy];

  v6 = [a1 specification];
  v7 = [objc_msgSend(v6 "transitionContextClass")];

  v4[2](v4, v8, v7);
  [a1 updateClientSettings:v8 withTransitionContext:v7];
}

@end