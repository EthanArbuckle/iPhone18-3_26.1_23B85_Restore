@interface SFAdjustedImageView
- (void)updateViewForAssetType:(int)a3 adjustmentsURL:(id)a4;
@end

@implementation SFAdjustedImageView

- (void)updateViewForAssetType:(int)a3 adjustmentsURL:(id)a4
{
  v6 = SFAdjustmentFiltersForAssetTypeAndURL(a3, a4);
  v5 = [(SFAdjustedImageView *)self layer];
  [v5 setFilters:v6];
}

@end