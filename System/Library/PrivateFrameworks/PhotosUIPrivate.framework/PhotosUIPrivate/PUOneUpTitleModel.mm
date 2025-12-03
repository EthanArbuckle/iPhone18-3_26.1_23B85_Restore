@interface PUOneUpTitleModel
- (void)setInputAsset:(id)asset;
@end

@implementation PUOneUpTitleModel

- (void)setInputAsset:(id)asset
{
  swift_unknownObjectRetain();
  selfCopy = self;
  OneUpTitleModel.setInputAsset(_:)(asset);
  swift_unknownObjectRelease();
}

@end