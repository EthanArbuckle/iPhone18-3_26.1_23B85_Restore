@interface PKAdjustedImageView
- (void)updateViewForAssetType:(int)a3 adjustmentsURL:(id)a4;
@end

@implementation PKAdjustedImageView

- (void)updateViewForAssetType:(int)a3 adjustmentsURL:(id)a4
{
  v6 = PKAdjustmentFiltersForAssetTypeAndURL(a3, a4);
  v5 = [(PKAdjustedImageView *)self layer];
  [v5 setFilters:v6];
}

@end