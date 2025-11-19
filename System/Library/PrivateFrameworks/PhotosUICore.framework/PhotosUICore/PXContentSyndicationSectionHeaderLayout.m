@interface PXContentSyndicationSectionHeaderLayout
@end

@implementation PXContentSyndicationSectionHeaderLayout

void __121___PXContentSyndicationSectionHeaderLayout_additionalContextMenuActionsForAttributionViewInContentSyndicationHeaderView___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) canPerformActionType:*(a1 + 40)])
  {
    v2 = [*(a1 + 32) actionPerformerForActionType:*(a1 + 40)];
    [v2 performActionWithCompletionHandler:0];
  }
}

@end