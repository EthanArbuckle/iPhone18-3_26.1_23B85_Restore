@interface UIPasteboardAnalyticsReportEvent
@end

@implementation UIPasteboardAnalyticsReportEvent

id ___UIPasteboardAnalyticsReportEvent_block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5[1] = @"timeToTap";
  v6[0] = v1;
  v5[0] = @"buttonType";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 40)];
  v6[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

@end