@interface _STKSticker
- (NSArray)representations;
- (NSData)metadata;
- (_STKSticker)init;
@end

@implementation _STKSticker

- (NSArray)representations
{
  v2 = *(self + OBJC_IVAR____STKSticker_representations);
  type metadata accessor for _STKStickerRepresentation(0);

  v3 = sub_1B8A240E4();

  return v3;
}

- (NSData)metadata
{
  v2 = (self + OBJC_IVAR____STKSticker_metadata);
  v3 = *(self + OBJC_IVAR____STKSticker_metadata + 8);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *v2;
    sub_1B89B4A18(*v2, v3);
    v6 = sub_1B8A237A4();
    sub_1B89B4A04(v5, v3);
    v4 = v6;
  }

  return v4;
}

- (_STKSticker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end