@interface Versioning
- (_TtC8Stickers10Versioning)init;
@end

@implementation Versioning

- (_TtC8Stickers10Versioning)init
{
  v2 = self + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerVersionOverride;
  *v2 = 0;
  v2[8] = 1;
  v3 = self + OBJC_IVAR____TtC8Stickers10Versioning_currentStickerRepresentationVersionOverride;
  *v3 = 0;
  v3[8] = 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for Versioning();
  return [(Versioning *)&v5 init];
}

@end