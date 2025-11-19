@interface VUWTag
- (NSUUID)uuid;
- (VUWTag)init;
- (VUWTag)initWithType:(int64_t)a3 uuid:(id)a4;
- (void)setUuid:(id)a3;
@end

@implementation VUWTag

- (NSUUID)uuid
{
  v3 = sub_1D225055C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___VUWTag__UUID;
  swift_beginAccess();
  result = sub_1D2174DA8(self + v7, &v11, &unk_1EC6D2180);
  if (v12)
  {
    sub_1D21A6450(&v11, &v13);
    swift_dynamicCast();
    v9 = sub_1D225052C();
    (*(v4 + 8))(v6, v3);

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)setUuid:(id)a3
{
  v4 = sub_1D225055C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_1D225054C();
  v12[3] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(v5 + 32))(boxed_opaque_existential_1, v7, v4);
  v9 = OBJC_IVAR___VUWTag__UUID;
  swift_beginAccess();
  v10 = self;
  sub_1D21C7088(v12, self + v9);
  swift_endAccess();
}

- (VUWTag)initWithType:(int64_t)a3 uuid:(id)a4
{
  v6 = sub_1D225055C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D225054C();
  v10 = (self + OBJC_IVAR___VUWTag__UUID);
  *v10 = 0u;
  v10[1] = 0u;
  *(&self->super.isa + OBJC_IVAR___VUWTag_tagType) = a3;
  v16[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(v7 + 16))(boxed_opaque_existential_1, v9, v6);
  swift_beginAccess();
  sub_1D21C7088(v16, v10);
  swift_endAccess();
  v15.receiver = self;
  v15.super_class = VUWTag;
  v12 = [(VUWTag *)&v15 init];
  (*(v7 + 8))(v9, v6);
  return v12;
}

- (VUWTag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end