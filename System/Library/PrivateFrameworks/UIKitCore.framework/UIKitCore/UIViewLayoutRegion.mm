@interface UIViewLayoutRegion
+ (id)marginsLayoutRegionWithCornerAdaptation:(unint64_t)adaptation;
+ (id)readableContentLayoutRegionWithCornerAdaptation:(unint64_t)adaptation;
+ (id)safeAreaLayoutRegionWithCornerAdaptation:(unint64_t)adaptation;
- (UIViewLayoutRegion)init;
@end

@implementation UIViewLayoutRegion

+ (id)safeAreaLayoutRegionWithCornerAdaptation:(unint64_t)adaptation
{
  initWithSafeAreaLayoutRegionWithCornerAdaptation_ = [objc_allocWithZone(UIViewLayoutRegion) initWithSafeAreaLayoutRegionWithCornerAdaptation_];

  return initWithSafeAreaLayoutRegionWithCornerAdaptation_;
}

+ (id)marginsLayoutRegionWithCornerAdaptation:(unint64_t)adaptation
{
  initWithMarginsLayoutRegionWithCornerAdaptation_ = [objc_allocWithZone(UIViewLayoutRegion) initWithMarginsLayoutRegionWithCornerAdaptation_];

  return initWithMarginsLayoutRegionWithCornerAdaptation_;
}

+ (id)readableContentLayoutRegionWithCornerAdaptation:(unint64_t)adaptation
{
  initWithReadableContentLayoutRegionWithCornerAdaptation_ = [objc_allocWithZone(UIViewLayoutRegion) initWithReadableContentLayoutRegionWithCornerAdaptation_];

  return initWithReadableContentLayoutRegionWithCornerAdaptation_;
}

- (UIViewLayoutRegion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end