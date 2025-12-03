@interface PXStoryInactiveImageAdjustment
- (BOOL)isEqualToDisplayAssetAdjustment:(id)adjustment;
- (id)applyToImage:(id)image targetSize:(CGSize)size;
@end

@implementation PXStoryInactiveImageAdjustment

- (id)applyToImage:(id)image targetSize:(CGSize)size
{
  imageCopy = image;
  selfCopy = self;
  v7 = sub_1A42D5AB8(imageCopy);

  return v7;
}

- (BOOL)isEqualToDisplayAssetAdjustment:(id)adjustment
{
  type metadata accessor for StoryInactiveImageAdjustment();
  if (swift_dynamicCastClass())
  {
    sub_1A3C52C70(0, &qword_1EB12B160);
    swift_unknownObjectRetain();
    selfCopy = self;
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