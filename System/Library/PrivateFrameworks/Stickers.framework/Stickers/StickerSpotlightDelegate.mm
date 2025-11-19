@interface StickerSpotlightDelegate
- (id)attributeSetForObject:(id)a3;
- (id)domainIdentifier;
- (id)initForStoreWithDescription:(id)a3 coordinator:(id)a4;
@end

@implementation StickerSpotlightDelegate

- (id)domainIdentifier
{
  v0 = sub_1B8A23EF4();

  return v0;
}

- (id)attributeSetForObject:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B8A22184(v4);

  return v6;
}

- (id)initForStoreWithDescription:(id)a3 coordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  sub_1B8A23BB4();
  *(&self->super.super.isa + OBJC_IVAR____TtC8Stickers24StickerSpotlightDelegate____lazy_storage___failedIndexingManager) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for StickerSpotlightDelegate();
  v8 = [(NSCoreDataCoreSpotlightDelegate *)&v10 initForStoreWithDescription:v6 coordinator:v7];

  return v8;
}

@end