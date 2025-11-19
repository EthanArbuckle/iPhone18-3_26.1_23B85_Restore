@interface REMXPCSuggestedAttributesPerformerInterface
+ (id)interface;
@end

@implementation REMXPCSuggestedAttributesPerformerInterface

+ (id)interface
{
  if (interface_onceToken_5 != -1)
  {
    +[REMXPCSuggestedAttributesPerformerInterface interface];
  }

  v3 = interface_result_4;

  return v3;
}

void __56__REMXPCSuggestedAttributesPerformerInterface_interface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0DC8968];
  v1 = interface_result_4;
  interface_result_4 = v0;

  v2 = interface_result_4;
  v3 = +[REMXPCStorageClasses remStorageClasses];
  [v2 setClasses:v3 forSelector:sel_performSwiftInvocation_withParametersData_storages_completion_ argumentIndex:2 ofReply:0];
}

@end