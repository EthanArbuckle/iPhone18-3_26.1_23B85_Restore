@interface UIViewLayoutRegion
+ (id)marginsLayoutRegionWithCornerAdaptation:(unint64_t)a3;
+ (id)readableContentLayoutRegionWithCornerAdaptation:(unint64_t)a3;
+ (id)safeAreaLayoutRegionWithCornerAdaptation:(unint64_t)a3;
- (UIViewLayoutRegion)init;
@end

@implementation UIViewLayoutRegion

+ (id)safeAreaLayoutRegionWithCornerAdaptation:(unint64_t)a3
{
  v3 = [objc_allocWithZone(UIViewLayoutRegion) initWithSafeAreaLayoutRegionWithCornerAdaptation_];

  return v3;
}

+ (id)marginsLayoutRegionWithCornerAdaptation:(unint64_t)a3
{
  v3 = [objc_allocWithZone(UIViewLayoutRegion) initWithMarginsLayoutRegionWithCornerAdaptation_];

  return v3;
}

+ (id)readableContentLayoutRegionWithCornerAdaptation:(unint64_t)a3
{
  v3 = [objc_allocWithZone(UIViewLayoutRegion) initWithReadableContentLayoutRegionWithCornerAdaptation_];

  return v3;
}

- (UIViewLayoutRegion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end