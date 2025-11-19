@interface FinishAssistantForLocalMode
@end

@implementation FinishAssistantForLocalMode

void ___FinishAssistantForLocalMode_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTitle:@"Created Local Shared Library"];
  [v3 setMessage:@"This Shared Library is “local only” and doesn’t sync with iCloud. The “local only” mode supports development and testing workflows."];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___FinishAssistantForLocalMode_block_invoke_2;
  v4[3] = &unk_1E774C250;
  v5 = *(a1 + 32);
  [v3 addActionWithTitle:@"OK" style:0 action:v4];
}

@end