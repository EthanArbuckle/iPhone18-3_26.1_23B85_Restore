@interface PSGXPCServer
+ (void)registerXPCListeners;
@end

@implementation PSGXPCServer

+ (void)registerXPCListeners
{
  v2 = MEMORY[0x277D42658];
  v3 = objc_opt_new();
  [v2 registerForService:@"com.apple.proactive.input.suggester" delegate:v3];

  v4 = MEMORY[0x277D42658];
  v5 = objc_opt_new();
  [v4 registerForService:@"com.apple.private.psg.internal" delegate:v5];
}

@end