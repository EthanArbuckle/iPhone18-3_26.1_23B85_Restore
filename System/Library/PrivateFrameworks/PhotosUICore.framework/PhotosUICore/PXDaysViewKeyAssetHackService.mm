@interface PXDaysViewKeyAssetHackService
- (BOOL)canPerformAction;
- (BOOL)shouldSetKeyAssetForHighlight:(id)highlight;
@end

@implementation PXDaysViewKeyAssetHackService

- (BOOL)shouldSetKeyAssetForHighlight:(id)highlight
{
  highlightCopy = highlight;
  if ([highlightCopy kind] && objc_msgSend(highlightCopy, "type") != 3)
  {
    v7.receiver = self;
    v7.super_class = PXDaysViewKeyAssetHackService;
    v5 = [(PXKeyAssetHackService *)&v7 shouldSetKeyAssetForHighlight:highlightCopy];
  }

  else
  {
    v5 = 1;
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