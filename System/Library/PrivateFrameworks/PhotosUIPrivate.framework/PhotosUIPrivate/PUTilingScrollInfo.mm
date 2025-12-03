@interface PUTilingScrollInfo
+ (PUTilingScrollInfo)scrollInfoWithScrollDirections:(int64_t)directions;
+ (PUTilingScrollInfo)scrollInfoWithScrollDirections:(int64_t)directions enabledPagingWithInterpageSpacing:(CGSize)spacing pagingSpringPullAdjustment:(double)adjustment pagingFrictionAdjustment:(double)frictionAdjustment;
- (CGSize)interpageSpacing;
@end

@implementation PUTilingScrollInfo

- (CGSize)interpageSpacing
{
  width = self->_interpageSpacing.width;
  height = self->_interpageSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (PUTilingScrollInfo)scrollInfoWithScrollDirections:(int64_t)directions enabledPagingWithInterpageSpacing:(CGSize)spacing pagingSpringPullAdjustment:(double)adjustment pagingFrictionAdjustment:(double)frictionAdjustment
{
  height = spacing.height;
  width = spacing.width;
  v11 = objc_alloc_init(PUTilingScrollInfo);
  [(PUTilingScrollInfo *)v11 _setScrollDirections:directions];
  [(PUTilingScrollInfo *)v11 _setShouldEnablePaging:1];
  [(PUTilingScrollInfo *)v11 _setInterpageSpacing:width, height];
  [(PUTilingScrollInfo *)v11 _setPagingSpringPullAdjustment:adjustment];
  [(PUTilingScrollInfo *)v11 _setPagingFrictionAdjustment:frictionAdjustment];

  return v11;
}

+ (PUTilingScrollInfo)scrollInfoWithScrollDirections:(int64_t)directions
{
  v4 = objc_alloc_init(PUTilingScrollInfo);
  [(PUTilingScrollInfo *)v4 _setScrollDirections:directions];

  return v4;
}

@end