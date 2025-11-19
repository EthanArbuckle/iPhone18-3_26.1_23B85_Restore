@interface XPCInterface
+ (id)interface;
@end

@implementation XPCInterface

+ (id)interface
{
  v2 = objc_opt_self();
  v3 = [v2 interfaceWithProtocol_];
  v4 = [v2 interfaceWithProtocol_];
  [v3 setInterface:v4 forSelector:sel_runWithClient_scheme_ argumentIndex:0 ofReply:0];

  v5 = [v2 interfaceWithProtocol_];
  [v3 setInterface:v5 forSelector:sel_addWithClient_ argumentIndex:0 ofReply:0];

  return v3;
}

@end