@interface UIActivityGetPrintingBasedActivities
@end

@implementation UIActivityGetPrintingBasedActivities

void ___UIActivityGetPrintingBasedActivities_block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(UIOpenInIBooksActivity);
  v4[0] = v0;
  v1 = objc_alloc_init(UICreatePDFActivity);
  v4[1] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v3 = _UIActivityGetPrintingBasedActivities___printingBasedActivities;
  _UIActivityGetPrintingBasedActivities___printingBasedActivities = v2;
}

@end