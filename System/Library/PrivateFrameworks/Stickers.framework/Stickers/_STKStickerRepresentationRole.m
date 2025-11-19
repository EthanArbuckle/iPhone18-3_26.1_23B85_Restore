@interface _STKStickerRepresentationRole
- (_STKStickerRepresentationRole)init;
@end

@implementation _STKStickerRepresentationRole

- (_STKStickerRepresentationRole)init
{
  v2 = (self + OBJC_IVAR____STKStickerRepresentationRole_keyboardPreview);
  *v2 = 0xD000000000000020;
  v2[1] = 0x80000001B8A2A240;
  v3 = (self + OBJC_IVAR____STKStickerRepresentationRole_stillVariant);
  *v3 = 0xD00000000000001DLL;
  v3[1] = 0x80000001B8A2A270;
  v4 = (self + OBJC_IVAR____STKStickerRepresentationRole_animatedVariant);
  *v4 = 0xD000000000000020;
  v4[1] = 0x80000001B8A2A290;
  v6.receiver = self;
  v6.super_class = type metadata accessor for _STKStickerRepresentationRole();
  return [(_STKStickerRepresentationRole *)&v6 init];
}

@end