@interface ReportableActionOnButtonPressedForMessageWithAction
@end

@implementation ReportableActionOnButtonPressedForMessageWithAction

void ___ReportableActionOnButtonPressedForMessageWithAction_block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x1E69E9840];
  (*(*(a1 + 40) + 16))();
  v2 = *MEMORY[0x1E69BA6F0];
  v3 = *MEMORY[0x1E69BA440];
  v10[0] = *MEMORY[0x1E69BA680];
  v10[1] = v3;
  v4 = *MEMORY[0x1E69BA570];
  v11[0] = v2;
  v11[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v6 = [*(a1 + 32) additionalEventAnalyticsOnButtonPress];

  if (v6)
  {
    v7 = [v5 mutableCopy];
    v8 = [*(a1 + 32) additionalEventAnalyticsOnButtonPress];
    [v7 addEntriesFromDictionary:v8];

    v9 = [v7 copy];
    v5 = v9;
  }

  _ReportAnalyticsEventForMessage(v5, *(a1 + 32));
}

@end