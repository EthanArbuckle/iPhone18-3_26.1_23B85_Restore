@interface UIDismissSceneAction
- (UIDismissSceneAction)init;
@end

@implementation UIDismissSceneAction

- (UIDismissSceneAction)init
{
  v3.receiver = self;
  v3.super_class = UIDismissSceneAction;
  return [(UIDismissSceneAction *)&v3 initWithInfo:0 timeout:0 forResponseOnQueue:0 withHandler:0.0];
}

@end