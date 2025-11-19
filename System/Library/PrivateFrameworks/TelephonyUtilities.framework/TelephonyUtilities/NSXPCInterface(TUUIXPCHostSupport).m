@interface NSXPCInterface(TUUIXPCHostSupport)
+ (id)hostConnectionInterface;
+ (id)remoteObjectInterface;
- (void)setAllowedClassesForHostProtocol;
@end

@implementation NSXPCInterface(TUUIXPCHostSupport)

+ (id)hostConnectionInterface
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09CB4B8];
  [v0 setAllowedClassesForHostProtocol];

  return v0;
}

+ (id)remoteObjectInterface
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F09D3E58];
  [v0 setAllowedClassesForClientInterface];

  return v0;
}

- (void)setAllowedClassesForHostProtocol
{
  v2 = [MEMORY[0x1E695DFD8] set];
  [a1 setClasses:v2 forSelector:sel_shouldHostHandleMRCommand_completion_ argumentIndex:1 ofReply:1];
}

@end