@interface PXDaysViewKeyAssetHackService
- (BOOL)canPerformAction;
- (BOOL)shouldSetKeyAssetForHighlight:(id)a3;
@end

@implementation PXDaysViewKeyAssetHackService

- (BOOL)shouldSetKeyAssetForHighlight:(id)a3
{
  v4 = a3;
  if ([v4 kind] && objc_msgSend(v4, "type") != 3)
  {
    v7.receiver = self;
    v7.super_class = PXDaysViewKeyAssetHackService;
    v5 = [(PXKeyAssetHackService *)&v7 shouldSetKeyAssetForHighlight:v4];
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

  v3 = [(PXKeyAssetHackService *)self asset];
  v4 = v3 != 0;

  return v4;
}

@end