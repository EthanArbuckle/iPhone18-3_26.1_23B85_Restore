@interface TSBlueprintManualImpressionUpdateProvider
- (void)endImpressions;
- (void)setVisibileViewAccessor:(id)accessor visibleRectAccessor:(id)rectAccessor;
- (void)updateImpressionsForView:(id)view withVisibleRect:(CGRect)rect;
@end

@implementation TSBlueprintManualImpressionUpdateProvider

- (void)setVisibileViewAccessor:(id)accessor visibleRectAccessor:(id)rectAccessor
{
  v6 = _Block_copy(accessor);
  v7 = _Block_copy(rectAccessor);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  BlueprintManualImpressionUpdateProvider.set(visibleViewAccessor:visibleRectAccessor:)(sub_1D7F09864, v8, sub_1D7F0986C, v9);
}

- (void)updateImpressionsForView:(id)view withVisibleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewCopy = view;
  selfCopy = self;
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  BlueprintManualImpressionUpdateProvider.updateImpressions(for:with:)(viewCopy, v12);
}

- (void)endImpressions
{
  selfCopy = self;
  BlueprintManualImpressionUpdateProvider.endImpressions()();
}

@end