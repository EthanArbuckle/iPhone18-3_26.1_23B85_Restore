@interface PKAdjustedImageView
- (void)updateViewForAssetType:(int)type adjustmentsURL:(id)l;
@end

@implementation PKAdjustedImageView

- (void)updateViewForAssetType:(int)type adjustmentsURL:(id)l
{
  v6 = PKAdjustmentFiltersForAssetTypeAndURL(type, l);
  layer = [(PKAdjustedImageView *)self layer];
  [layer setFilters:v6];
}

@end