@interface _STKStickerRepresentation
+ (_STKStickerRepresentationRole)roles;
- (CGSize)size;
- (NSData)data;
- (_STKStickerRepresentation)init;
@end

@implementation _STKStickerRepresentation

- (NSData)data
{
  v2 = *(self + OBJC_IVAR____STKStickerRepresentation_data);
  v3 = *(self + OBJC_IVAR____STKStickerRepresentation_data + 8);
  sub_1B89B4A18(v2, v3);
  v4 = sub_1B8A237A4();
  sub_1B89AFC38(v2, v3);

  return v4;
}

- (CGSize)size
{
  v2 = *(self + OBJC_IVAR____STKStickerRepresentation_size);
  v3 = *(self + OBJC_IVAR____STKStickerRepresentation_size + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

+ (_STKStickerRepresentationRole)roles
{
  if (qword_1EBA91670 != -1)
  {
    swift_once();
  }

  v3 = qword_1EBA91A60;

  return v3;
}

- (_STKStickerRepresentation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end