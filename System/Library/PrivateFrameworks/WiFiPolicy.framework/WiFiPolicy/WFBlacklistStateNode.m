@interface WFBlacklistStateNode
- (WFBlacklistStateNode)init;
@end

@implementation WFBlacklistStateNode

- (WFBlacklistStateNode)init
{
  v3.receiver = self;
  v3.super_class = WFBlacklistStateNode;
  return [(WFBlacklistStateNode *)&v3 init];
}

@end