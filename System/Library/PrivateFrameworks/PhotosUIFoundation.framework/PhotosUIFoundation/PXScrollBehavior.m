@interface PXScrollBehavior
+ (id)detentsBehaviorWithAxis:(int64_t)a3 detents:(id)a4 intrinsicContentOffset:(double)a5;
+ (id)normalBehaviorWithAxis:(int64_t)a3;
+ (id)normalBehaviorWithAxis:(int64_t)a3 intrinsicContentOffset:(double)a4;
+ (id)pagingBehaviorWithAxis:(int64_t)a3 pagingOrigin:(double)a4 pageOffset:(double)a5 decelerationRate:(int64_t)a6;
- (CGPoint)adjustedScrollTargetContentOffsetForProposedTargetContentOffset:(CGPoint)a3 velocity:(CGPoint)a4 currentContentOffset:(CGPoint)a5 decelerationRate:(int64_t *)a6;
- (id)detentAtContentOffset:(double)a3;
@end

@implementation PXScrollBehavior

+ (id)normalBehaviorWithAxis:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v3 = static PXScrollBehavior.normal(axis:)();

  return v3;
}

+ (id)normalBehaviorWithAxis:(int64_t)a3 intrinsicContentOffset:(double)a4
{
  swift_getObjCClassMetadata();
  v4 = static PXScrollBehavior.normal(axis:intrinsicContentOffset:)();

  return v4;
}

+ (id)pagingBehaviorWithAxis:(int64_t)a3 pagingOrigin:(double)a4 pageOffset:(double)a5 decelerationRate:(int64_t)a6
{
  swift_getObjCClassMetadata();
  v6 = static PXScrollBehavior.paging(axis:pagingOrigin:pageOffset:decelerationRate:)();

  return v6;
}

+ (id)detentsBehaviorWithAxis:(int64_t)a3 detents:(id)a4 intrinsicContentOffset:(double)a5
{
  type metadata accessor for PXScrollDetent(a1);
  v7 = sub_1B405D5E4();
  swift_getObjCClassMetadata();
  static PXScrollBehavior.detents(axis:detents:intrinsicContentOffset:)(a3, v7, a5);
  v9 = v8;

  return v9;
}

- (id)detentAtContentOffset:(double)a3
{
  v3 = self;
  PXScrollBehavior.detent(atContentOffset:)();
  v5 = v4;

  return v5;
}

- (CGPoint)adjustedScrollTargetContentOffsetForProposedTargetContentOffset:(CGPoint)a3 velocity:(CGPoint)a4 currentContentOffset:(CGPoint)a5 decelerationRate:(int64_t *)a6
{
  v6 = self;
  PXScrollBehavior.adjustedScrollTargetContentOffset(forProposedTargetContentOffset:velocity:currentContentOffset:decelerationRate:)();
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

@end