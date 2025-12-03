@interface ApplyControllerModel
- (void)viewControllerDidTerminateSetupFlow:(id)flow;
@end

@implementation ApplyControllerModel

- (void)viewControllerDidTerminateSetupFlow:(id)flow
{
  flowCopy = flow;
  selfCopy = self;
  sub_1BD334178(flow);
}

@end