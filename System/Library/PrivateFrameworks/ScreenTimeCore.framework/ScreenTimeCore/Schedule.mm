@interface Schedule
- (BOOL)isEqual:(id)a3;
- (_TtC14ScreenTimeCore8Schedule)init;
- (_TtC14ScreenTimeCore8Schedule)initWithEnabled:(BOOL)a3 start:(id)a4 end:(id)a5;
- (id)setWithEnabled:(BOOL)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation Schedule

- (_TtC14ScreenTimeCore8Schedule)initWithEnabled:(BOOL)a3 start:(id)a4 end:(id)a5
{
  v7 = sub_1B83DD86C();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  sub_1B83DD84C();
  sub_1B83DD84C();
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled) = a3;
  v15 = v8[2];
  v15(self + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_start, v14, v7);
  v15(self + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_end, v12, v7);
  v16 = type metadata accessor for Schedule();
  v20.receiver = self;
  v20.super_class = v16;
  v17 = [(Schedule *)&v20 init];
  v18 = v8[1];
  v18(v12, v7);
  v18(v14, v7);
  return v17;
}

- (id)setWithEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  v5 = sub_1B83CEBA4(v3);

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B83CF404(v4);
}

- (int64_t)hash
{
  sub_1B83DE25C();
  v3 = *(self + OBJC_IVAR____TtC14ScreenTimeCore8Schedule_enabled);
  sub_1B83DE22C();
  sub_1B83DD86C();
  sub_1B83D0760(&qword_1EBA85210);
  v4 = self;
  sub_1B83DDC9C();
  sub_1B83DDC9C();
  v5 = sub_1B83DE23C();

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1B83DDF5C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1B83CFBD4(v8);

  sub_1B83AD84C(v8, &qword_1EBA84970, &qword_1B83E8430);
  return v6 & 1;
}

- (_TtC14ScreenTimeCore8Schedule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end