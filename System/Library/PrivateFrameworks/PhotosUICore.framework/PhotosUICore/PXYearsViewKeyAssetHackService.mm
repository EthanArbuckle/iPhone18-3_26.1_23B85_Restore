@interface PXYearsViewKeyAssetHackService
- (BOOL)canPerformAction;
- (BOOL)shouldSetKeyAssetForHighlight:(id)highlight;
@end

@implementation PXYearsViewKeyAssetHackService

- (BOOL)shouldSetKeyAssetForHighlight:(id)highlight
{
  highlightCopy = highlight;
  if ([highlightCopy kind] == 1 || objc_msgSend(highlightCopy, "kind") == 2)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXYearsViewKeyAssetHackService;
    v5 = [(PXMonthsViewKeyAssetHackService *)&v7 shouldSetKeyAssetForHighlight:highlightCopy];
  }

  return v5;
}

- (BOOL)canPerformAction
{
  if (![objc_opt_class() keyAssetHackServiceIsEnabled])
  {
    return 0;
  }

  asset = [(PXKeyAssetHackService *)self asset];
  v4 = asset != 0;

  return v4;
}

@end