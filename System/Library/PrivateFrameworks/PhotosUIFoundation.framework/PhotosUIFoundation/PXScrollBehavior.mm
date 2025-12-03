@interface PXScrollBehavior
+ (id)detentsBehaviorWithAxis:(int64_t)axis detents:(id)detents intrinsicContentOffset:(double)offset;
+ (id)normalBehaviorWithAxis:(int64_t)axis;
+ (id)normalBehaviorWithAxis:(int64_t)axis intrinsicContentOffset:(double)offset;
+ (id)pagingBehaviorWithAxis:(int64_t)axis pagingOrigin:(double)origin pageOffset:(double)offset decelerationRate:(int64_t)rate;
- (CGPoint)adjustedScrollTargetContentOffsetForProposedTargetContentOffset:(CGPoint)offset velocity:(CGPoint)velocity currentContentOffset:(CGPoint)contentOffset decelerationRate:(int64_t *)rate;
- (id)detentAtContentOffset:(double)offset;
@end

@implementation PXScrollBehavior

+ (id)normalBehaviorWithAxis:(int64_t)axis
{
  swift_getObjCClassMetadata();
  v3 = static PXScrollBehavior.normal(axis:)();

  return v3;
}

+ (id)normalBehaviorWithAxis:(int64_t)axis intrinsicContentOffset:(double)offset
{
  swift_getObjCClassMetadata();
  v4 = static PXScrollBehavior.normal(axis:intrinsicContentOffset:)();

  return v4;
}

+ (id)pagingBehaviorWithAxis:(int64_t)axis pagingOrigin:(double)origin pageOffset:(double)offset decelerationRate:(int64_t)rate
{
  swift_getObjCClassMetadata();
  v6 = static PXScrollBehavior.paging(axis:pagingOrigin:pageOffset:decelerationRate:)();

  return v6;
}

+ (id)detentsBehaviorWithAxis:(int64_t)axis detents:(id)detents intrinsicContentOffset:(double)offset
{
  type metadata accessor for PXScrollDetent(self);
  v7 = sub_1B405D5E4();
  swift_getObjCClassMetadata();
  static PXScrollBehavior.detents(axis:detents:intrinsicContentOffset:)(axis, v7, offset);
  v9 = v8;

  return v9;
}

- (id)detentAtContentOffset:(double)offset
{
  selfCopy = self;
  PXScrollBehavior.detent(atContentOffset:)();
  v5 = v4;

  return v5;
}

- (CGPoint)adjustedScrollTargetContentOffsetForProposedTargetContentOffset:(CGPoint)offset velocity:(CGPoint)velocity currentContentOffset:(CGPoint)contentOffset decelerationRate:(int64_t *)rate
{
  selfCopy = self;
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