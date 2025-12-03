@interface XPCInterface
+ (id)interface;
@end

@implementation XPCInterface

+ (id)interface
{
  v2 = objc_opt_self();
  interfaceWithProtocol_ = [v2 interfaceWithProtocol_];
  interfaceWithProtocol_2 = [v2 interfaceWithProtocol_];
  [interfaceWithProtocol_ setInterface:interfaceWithProtocol_2 forSelector:sel_runWithClient_scheme_ argumentIndex:0 ofReply:0];

  interfaceWithProtocol_3 = [v2 interfaceWithProtocol_];
  [interfaceWithProtocol_ setInterface:interfaceWithProtocol_3 forSelector:sel_addWithClient_ argumentIndex:0 ofReply:0];

  return interfaceWithProtocol_;
}

@end