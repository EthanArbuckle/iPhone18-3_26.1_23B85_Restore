@interface PXDemoTilingControllerWidgetTile
- (PXDemoTilingControllerWidgetTile)init;
@end

@implementation PXDemoTilingControllerWidgetTile

- (PXDemoTilingControllerWidgetTile)init
{
  v8.receiver = self;
  v8.super_class = PXDemoTilingControllerWidgetTile;
  v2 = [(PXDemoTilingControllerWidgetTile *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    mapView = v2->__mapView;
    v2->__mapView = v3;

    v5 = v2->__mapView;
    v6 = [MEMORY[0x1E69DC888] greenColor];
    [(UIView *)v5 setBackgroundColor:v6];
  }

  return v2;
}

@end