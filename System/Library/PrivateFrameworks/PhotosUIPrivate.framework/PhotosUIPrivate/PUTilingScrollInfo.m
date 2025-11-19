@interface PUTilingScrollInfo
+ (PUTilingScrollInfo)scrollInfoWithScrollDirections:(int64_t)a3;
+ (PUTilingScrollInfo)scrollInfoWithScrollDirections:(int64_t)a3 enabledPagingWithInterpageSpacing:(CGSize)a4 pagingSpringPullAdjustment:(double)a5 pagingFrictionAdjustment:(double)a6;
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

+ (PUTilingScrollInfo)scrollInfoWithScrollDirections:(int64_t)a3 enabledPagingWithInterpageSpacing:(CGSize)a4 pagingSpringPullAdjustment:(double)a5 pagingFrictionAdjustment:(double)a6
{
  height = a4.height;
  width = a4.width;
  v11 = objc_alloc_init(PUTilingScrollInfo);
  [(PUTilingScrollInfo *)v11 _setScrollDirections:a3];
  [(PUTilingScrollInfo *)v11 _setShouldEnablePaging:1];
  [(PUTilingScrollInfo *)v11 _setInterpageSpacing:width, height];
  [(PUTilingScrollInfo *)v11 _setPagingSpringPullAdjustment:a5];
  [(PUTilingScrollInfo *)v11 _setPagingFrictionAdjustment:a6];

  return v11;
}

+ (PUTilingScrollInfo)scrollInfoWithScrollDirections:(int64_t)a3
{
  v4 = objc_alloc_init(PUTilingScrollInfo);
  [(PUTilingScrollInfo *)v4 _setScrollDirections:a3];

  return v4;
}

@end