@interface RCSFileAttachmentCrypto.SeekableDataInputStream
- (BOOL)hasBytesAvailable;
- (BOOL)setProperty:(id)a3 forKey:(id)a4;
- (_TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream)initWithData:(id)a3;
- (_TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream)initWithURL:(id)a3;
- (id)propertyForKey:(id)a3;
- (int64_t)read:(char *)a3 maxLength:(int64_t)a4;
@end

@implementation RCSFileAttachmentCrypto.SeekableDataInputStream

- (int64_t)read:(char *)a3 maxLength:(int64_t)a4
{
  v6 = self;
  sub_26BFA5434(a3, a4);
  v8 = v7;

  return v8;
}

- (BOOL)hasBytesAvailable
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data);
  v3 = *&self->super._reserved[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(v2 + 24);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v5 = BYTE6(v3);
    v6 = v2 >> 32;
    if (!v4)
    {
      v6 = v5;
    }
  }

  return *(&self->super.super.super.isa + OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos) < v6;
}

- (BOOL)setProperty:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    sub_26C00AB0C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v8 = a4;
    v9 = self;
  }

  v10 = sub_26BFA55E0(v12);

  sub_26BE2E258(v12, &qword_28045FB48, &qword_26C01FCF8);
  return v10 & 1;
}

- (id)propertyForKey:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_26BFA57B8(v14);

  v6 = v15;
  if (v15)
  {
    v7 = __swift_project_boxed_opaque_existential_1(v14, v15);
    v8 = *(v6 - 8);
    v9 = *(v8 + 64);
    MEMORY[0x28223BE20](v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11);
    v12 = sub_26C00AF1C();
    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (_TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream)initWithData:(id)a3
{
  v3 = a3;
  sub_26C00910C();

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream)initWithURL:(id)a3
{
  v3 = sub_26C008FDC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_26C008FAC();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end