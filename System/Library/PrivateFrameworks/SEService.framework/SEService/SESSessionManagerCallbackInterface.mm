@interface SESSessionManagerCallbackInterface
+ (id)interface;
@end

@implementation SESSessionManagerCallbackInterface

+ (id)interface
{
  if (interface_onceToken_107 != -1)
  {
    +[SESSessionManagerCallbackInterface interface];
  }

  v3 = interface_interface_106;

  return v3;
}

uint64_t __47__SESSessionManagerCallbackInterface_interface__block_invoke()
{
  interface_interface_106 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F47677F0];

  return MEMORY[0x1EEE66BB8]();
}

@end