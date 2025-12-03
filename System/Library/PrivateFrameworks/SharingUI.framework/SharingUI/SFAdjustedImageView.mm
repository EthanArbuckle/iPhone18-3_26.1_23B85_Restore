@interface SFAdjustedImageView
- (void)updateViewForAssetType:(int)type adjustmentsURL:(id)l;
@end

@implementation SFAdjustedImageView

- (void)updateViewForAssetType:(int)type adjustmentsURL:(id)l
{
  v6 = SFAdjustmentFiltersForAssetTypeAndURL(type, l);
  layer = [(SFAdjustedImageView *)self layer];
  [layer setFilters:v6];
}

@end