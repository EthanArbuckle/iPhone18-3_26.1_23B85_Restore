@interface _STKStickerUIStickerRepresentation
- (CGSize)size;
- (NSData)data;
- (NSString)type;
- (_STKStickerUIStickerRepresentation)init;
- (_STKStickerUIStickerRepresentation)initWithData:(id)a3 type:(id)a4 size:(CGSize)a5 role:(id)a6;
@end

@implementation _STKStickerUIStickerRepresentation

- (NSData)data
{
  v2 = *(self + OBJC_IVAR____STKStickerUIStickerRepresentation_data);
  v3 = *(self + OBJC_IVAR____STKStickerUIStickerRepresentation_data + 8);
  sub_1B89B4A18(v2, v3);
  v4 = sub_1B8A237A4();
  sub_1B89AFC38(v2, v3);

  return v4;
}

- (NSString)type
{
  v2 = *(self + OBJC_IVAR____STKStickerUIStickerRepresentation_type);
  v3 = *(self + OBJC_IVAR____STKStickerUIStickerRepresentation_type + 8);

  v4 = sub_1B8A23EF4();

  return v4;
}

- (CGSize)size
{
  v2 = *(self + OBJC_IVAR____STKStickerUIStickerRepresentation_size);
  v3 = *(self + OBJC_IVAR____STKStickerUIStickerRepresentation_size + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (_STKStickerUIStickerRepresentation)initWithData:(id)a3 type:(id)a4 size:(CGSize)a5 role:(id)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = sub_1B8A237C4();
  v16 = v15;

  v17 = sub_1B8A23F24();
  v19 = v18;

  if (v13)
  {
    v20 = sub_1B8A23F24();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = (self + OBJC_IVAR____STKStickerUIStickerRepresentation_data);
  *v23 = v14;
  v23[1] = v16;
  v24 = (self + OBJC_IVAR____STKStickerUIStickerRepresentation_type);
  *v24 = v17;
  v24[1] = v19;
  v25 = (self + OBJC_IVAR____STKStickerUIStickerRepresentation_role);
  *v25 = v20;
  v25[1] = v22;
  v26 = (self + OBJC_IVAR____STKStickerUIStickerRepresentation_size);
  *v26 = width;
  v26[1] = height;
  v28.receiver = self;
  v28.super_class = type metadata accessor for _STKStickerUIStickerRepresentation();
  return [(_STKStickerUIStickerRepresentation *)&v28 init];
}

- (_STKStickerUIStickerRepresentation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end