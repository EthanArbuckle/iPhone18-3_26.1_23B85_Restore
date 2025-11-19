@interface ReportableActionOnDismissPressedForMessageWithAction
@end

@implementation ReportableActionOnDismissPressedForMessageWithAction

void ___ReportableActionOnDismissPressedForMessageWithAction_block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x1E69E9840];
  (*(*(a1 + 40) + 16))();
  v2 = *MEMORY[0x1E69BAC10];
  v3 = *MEMORY[0x1E69BA680];
  v6[0] = *MEMORY[0x1E69BABE8];
  v6[1] = v3;
  v4 = *MEMORY[0x1E69BA6F0];
  v7[0] = v2;
  v7[1] = v4;
  v6[2] = *MEMORY[0x1E69BA440];
  v7[2] = *MEMORY[0x1E69BA580];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];
  _ReportAnalyticsEventForMessage(v5, *(a1 + 32));
}

@end