@interface PXWidgetCompositionViewElementLayout
+ (PXTileIdentifier)viewTileIdentifier;
- (PXWidgetCompositionViewElementLayout)init;
@end

@implementation PXWidgetCompositionViewElementLayout

- (PXWidgetCompositionViewElementLayout)init
{
  v3 = objc_opt_class();
  if (v3)
  {
    [v3 viewTileIdentifier];
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
  }

  v5.receiver = self;
  v5.super_class = PXWidgetCompositionViewElementLayout;
  return [(PXSingleTileLayout *)&v5 initWithTileIdentifier:v6];
}

+ (PXTileIdentifier)viewTileIdentifier
{
  retstr->index[9] = 0;
  *&retstr->index[5] = 0u;
  *&retstr->index[7] = 0u;
  *&retstr->index[1] = 0u;
  *&retstr->index[3] = 0u;
  *&retstr->length = xmmword_1A5381310;
  return result;
}

@end