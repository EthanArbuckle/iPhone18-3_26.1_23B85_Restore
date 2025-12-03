@interface SWTransparencyXPCInterface
+ (id)interface;
@end

@implementation SWTransparencyXPCInterface

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5C0E530];
  safeErrorClasses = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:safeErrorClasses forSelector:sel_triggerMilestoneRefreshWithCompletion_ argumentIndex:0 ofReply:1];

  safeErrorClasses2 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:safeErrorClasses2 forSelector:sel_triggerPublicKeybagRefreshWithCompletion_ argumentIndex:0 ofReply:1];

  safeErrorClasses3 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:safeErrorClasses3 forSelector:sel_triggerConsistencyVerificationWithCompletion_ argumentIndex:0 ofReply:1];

  v6 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v6 forSelector:sel_verifyProofs_forDigest_configuration_completion_ argumentIndex:2 ofReply:0];

  v7 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v7 forSelector:sel_verifyProofs_forDigest_configuration_completion_ argumentIndex:0 ofReply:1];

  safeErrorClasses4 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:safeErrorClasses4 forSelector:sel_verifyProofs_forDigest_configuration_completion_ argumentIndex:1 ofReply:1];

  safeErrorClasses5 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:safeErrorClasses5 forSelector:sel_sysdiagnoseInfoWithCompletion_ argumentIndex:1 ofReply:1];

  safeErrorClasses6 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:safeErrorClasses6 forSelector:sel_postCFU_completion_ argumentIndex:0 ofReply:1];

  safeErrorClasses7 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:safeErrorClasses7 forSelector:sel_clearAllCFUWithCompletion_ argumentIndex:0 ofReply:1];

  safeErrorClasses8 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:safeErrorClasses8 forSelector:sel_waitStateMachineReadyWithCompletion_ argumentIndex:0 ofReply:1];

  safeErrorClasses9 = [MEMORY[0x1E697AAC0] safeErrorClasses];
  [v2 setClasses:safeErrorClasses9 forSelector:sel_dailyWithCompletion_ argumentIndex:0 ofReply:1];

  return v2;
}

@end