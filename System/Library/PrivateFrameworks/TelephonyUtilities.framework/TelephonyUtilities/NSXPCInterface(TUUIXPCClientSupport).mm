@interface NSXPCInterface(TUUIXPCClientSupport)
+ (id)clientInterface;
+ (id)hostInterface;
- (void)setAllowedClassesForHostProtocol;
@end

@implementation NSXPCInterface(TUUIXPCClientSupport)

+ (id)hostInterface
{
  if (hostInterface_onceToken != -1)
  {
    +[NSXPCInterface(TUUIXPCClientSupport) hostInterface];
  }

  v1 = hostInterface_interface;

  return v1;
}

- (void)setAllowedClassesForHostProtocol
{
  v2 = [MEMORY[0x1E695DFD8] set];
  [a1 setClasses:v2 forSelector:sel_shouldHostHandleMRCommand_completion_ argumentIndex:1 ofReply:1];
}

+ (id)clientInterface
{
  if (clientInterface_onceToken != -1)
  {
    +[NSXPCInterface(TUUIXPCClientSupport) clientInterface];
  }

  v1 = clientInterface_interface;

  return v1;
}

@end