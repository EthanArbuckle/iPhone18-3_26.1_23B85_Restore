@interface SWTransparencyXPCInterface
+ (id)interface;
@end

@implementation SWTransparencyXPCInterface

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5C0E530];
  v3 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v3 forSelector:sel_triggerMilestoneRefreshWithCompletion_ argumentIndex:0 ofReply:1];

  v4 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v4 forSelector:sel_triggerPublicKeybagRefreshWithCompletion_ argumentIndex:0 ofReply:1];

  v5 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v5 forSelector:sel_triggerConsistencyVerificationWithCompletion_ argumentIndex:0 ofReply:1];

  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v6 forSelector:sel_verifyProofs_forDigest_configuration_completion_ argumentIndex:2 ofReply:0];

  v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v7 forSelector:sel_verifyProofs_forDigest_configuration_completion_ argumentIndex:0 ofReply:1];

  v8 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v8 forSelector:sel_verifyProofs_forDigest_configuration_completion_ argumentIndex:1 ofReply:1];

  v9 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v9 forSelector:sel_sysdiagnoseInfoWithCompletion_ argumentIndex:1 ofReply:1];

  v10 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v10 forSelector:sel_postCFU_completion_ argumentIndex:0 ofReply:1];

  v11 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v11 forSelector:sel_clearAllCFUWithCompletion_ argumentIndex:0 ofReply:1];

  v12 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v12 forSelector:sel_waitStateMachineReadyWithCompletion_ argumentIndex:0 ofReply:1];

  v13 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:v13 forSelector:sel_dailyWithCompletion_ argumentIndex:0 ofReply:1];

  return v2;
}

@end