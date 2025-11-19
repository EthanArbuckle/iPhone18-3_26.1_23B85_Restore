@interface PXStoryInactiveImageAdjustment
- (BOOL)isEqualToDisplayAssetAdjustment:(id)a3;
- (id)applyToImage:(id)a3 targetSize:(CGSize)a4;
@end

@implementation PXStoryInactiveImageAdjustment

- (id)applyToImage:(id)a3 targetSize:(CGSize)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1A42D5AB8(v5);

  return v7;
}

- (BOOL)isEqualToDisplayAssetAdjustment:(id)a3
{
  type metadata accessor for StoryInactiveImageAdjustment();
  if (swift_dynamicCastClass())
  {
    sub_1A3C52C70(0, &qword_1EB12B160);
    swift_unknownObjectRetain();
    v4 = self;
    v5 = sub_1A524DBF4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

@end