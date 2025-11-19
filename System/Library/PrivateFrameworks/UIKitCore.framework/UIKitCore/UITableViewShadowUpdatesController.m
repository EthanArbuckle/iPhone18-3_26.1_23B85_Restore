@interface UITableViewShadowUpdatesController
@end

@implementation UITableViewShadowUpdatesController

uint64_t __67___UITableViewShadowUpdatesController_sectionsBeforeShadowUpdates___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) initialSectionIndexForFinalSectionIndex:a2];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = result;
    v5 = *(a1 + 40);

    return [v5 addIndex:v4];
  }

  return result;
}

void __87___UITableViewShadowUpdatesController_sectionsAfterShadowUpdates_allowAppendingInsert___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) finalSectionIndexForInitialSectionIndex:a2];
  v5 = v4;
  if (*(a1 + 48) == 1 && v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [*(a1 + 32) initialSnapshot];
    v8 = [v7 numberOfSections];

    if (v8 != a2)
    {
      return;
    }

    v9 = [*(a1 + 32) finalSnapshot];
    v5 = [v9 numberOfSections];
  }

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *(a1 + 40);

    [v10 addIndex:v5];
  }
}

@end