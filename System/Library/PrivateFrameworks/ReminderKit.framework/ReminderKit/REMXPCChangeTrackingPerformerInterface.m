@interface REMXPCChangeTrackingPerformerInterface
+ (id)interface;
@end

@implementation REMXPCChangeTrackingPerformerInterface

void __51__REMXPCChangeTrackingPerformerInterface_interface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0DC8728];
  v1 = interface_result_1;
  interface_result_1 = v0;

  v14 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [interface_result_1 setClasses:v14 forSelector:sel_getTrackingStateWithClientID_completion_ argumentIndex:0 ofReply:0];
  [interface_result_1 setClasses:v14 forSelector:sel_saveTrackingState_withClientID_completionHandler_ argumentIndex:1 ofReply:0];
  v2 = interface_result_1;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_fetchAuxiliaryChangeInfos_completionHandler_ argumentIndex:0 ofReply:0];

  v7 = interface_result_1;
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
  [v7 setClasses:v13 forSelector:sel_fetchAuxiliaryChangeInfos_completionHandler_ argumentIndex:0 ofReply:1];
}

+ (id)interface
{
  if (interface_onceToken_1 != -1)
  {
    +[REMXPCChangeTrackingPerformerInterface interface];
  }

  v3 = interface_result_1;

  return v3;
}

@end