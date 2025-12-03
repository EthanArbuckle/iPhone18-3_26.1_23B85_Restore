@interface StickerSpotlightDelegate
- (id)attributeSetForObject:(id)object;
- (id)domainIdentifier;
- (id)initForStoreWithDescription:(id)description coordinator:(id)coordinator;
@end

@implementation StickerSpotlightDelegate

- (id)domainIdentifier
{
  v0 = sub_1B8A23EF4();

  return v0;
}

- (id)attributeSetForObject:(id)object
{
  objectCopy = object;
  selfCopy = self;
  v6 = sub_1B8A22184(objectCopy);

  return v6;
}

- (id)initForStoreWithDescription:(id)description coordinator:(id)coordinator
{
  descriptionCopy = description;
  coordinatorCopy = coordinator;
  sub_1B8A23BB4();
  *(&self->super.super.isa + OBJC_IVAR____TtC8Stickers24StickerSpotlightDelegate____lazy_storage___failedIndexingManager) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for StickerSpotlightDelegate();
  v8 = [(NSCoreDataCoreSpotlightDelegate *)&v10 initForStoreWithDescription:descriptionCopy coordinator:coordinatorCopy];

  return v8;
}

@end