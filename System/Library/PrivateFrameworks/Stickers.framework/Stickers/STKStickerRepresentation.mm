@interface STKStickerRepresentation
- (BOOL)isAnimated;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPreferred;
- (CGSize)size;
- (NSData)data;
- (NSString)description;
- (NSString)role;
- (STKStickerRepresentation)init;
- (int64_t)byteCount;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setByteCount:(int64_t)count;
- (void)setData:(id)data;
- (void)setIsPreferred:(BOOL)preferred;
- (void)setRole:(id)role;
@end

@implementation STKStickerRepresentation

- (NSData)data
{
  v2 = (self + OBJC_IVAR___STKStickerRepresentation_data);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  sub_1B89B4A18(v4, v3);
  v5 = sub_1B8A237A4();
  sub_1B89AFC38(v4, v3);

  return v5;
}

- (void)setData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v5 = sub_1B8A237C4();
  v7 = v6;

  sub_1B8A13FF4(v5, v7);
}

- (int64_t)byteCount
{
  v3 = OBJC_IVAR___STKStickerRepresentation_byteCount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setByteCount:(int64_t)count
{
  v5 = OBJC_IVAR___STKStickerRepresentation_byteCount;
  swift_beginAccess();
  *(self + v5) = count;
}

- (CGSize)size
{
  v2 = *(self + OBJC_IVAR___STKStickerRepresentation_size);
  v3 = *(self + OBJC_IVAR___STKStickerRepresentation_size + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (NSString)role
{
  v2 = (self + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_1B8A23EF4();

  return v5;
}

- (void)setRole:(id)role
{
  v4 = sub_1B8A23F24();
  v6 = v5;
  v7 = (self + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (BOOL)isPreferred
{
  v3 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsPreferred:(BOOL)preferred
{
  v5 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
  swift_beginAccess();
  *(self + v5) = preferred;
}

- (BOOL)isAnimated
{
  v2 = (self + OBJC_IVAR___STKStickerRepresentation_role);
  swift_beginAccess();
  if (*v2 == 0xD000000000000020 && 0x80000001B8A2A290 == v2[1])
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1B8A24954();
  }

  return v4 & 1;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B8A244A4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1B8A152AC(v8);

  sub_1B89A8A78(v8, &unk_1EBA91F50, &unk_1B8A26500);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1B8A238E4();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B8A16060(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  sub_1B8A1644C();

  v3 = sub_1B8A23EF4();

  return v3;
}

- (STKStickerRepresentation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end