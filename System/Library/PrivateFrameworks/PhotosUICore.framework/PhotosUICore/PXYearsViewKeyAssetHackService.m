@interface PXYearsViewKeyAssetHackService
- (BOOL)canPerformAction;
- (BOOL)shouldSetKeyAssetForHighlight:(id)a3;
@end

@implementation PXYearsViewKeyAssetHackService

- (BOOL)shouldSetKeyAssetForHighlight:(id)a3
{
  v4 = a3;
  if ([v4 kind] == 1 || objc_msgSend(v4, "kind") == 2)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PXYearsViewKeyAssetHackService;
    v5 = [(PXMonthsViewKeyAssetHackService *)&v7 shouldSetKeyAssetForHighlight:v4];
  }

  return v5;
}

- (BOOL)canPerformAction
{
  if (![objc_opt_class() keyAssetHackServiceIsEnabled])
  {
    return 0;
  }

  v3 = [(PXKeyAssetHackService *)self asset];
  v4 = v3 != 0;

  return v4;
}

@end