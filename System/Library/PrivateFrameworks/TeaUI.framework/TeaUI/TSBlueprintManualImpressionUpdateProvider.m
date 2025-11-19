@interface TSBlueprintManualImpressionUpdateProvider
- (void)endImpressions;
- (void)setVisibileViewAccessor:(id)a3 visibleRectAccessor:(id)a4;
- (void)updateImpressionsForView:(id)a3 withVisibleRect:(CGRect)a4;
@end

@implementation TSBlueprintManualImpressionUpdateProvider

- (void)setVisibileViewAccessor:(id)a3 visibleRectAccessor:(id)a4
{
  v6 = _Block_copy(a3);
  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = self;
  BlueprintManualImpressionUpdateProvider.set(visibleViewAccessor:visibleRectAccessor:)(sub_1D7F09864, v8, sub_1D7F0986C, v9);
}

- (void)updateImpressionsForView:(id)a3 withVisibleRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = self;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  BlueprintManualImpressionUpdateProvider.updateImpressions(for:with:)(v9, v12);
}

- (void)endImpressions
{
  v2 = self;
  BlueprintManualImpressionUpdateProvider.endImpressions()();
}

@end