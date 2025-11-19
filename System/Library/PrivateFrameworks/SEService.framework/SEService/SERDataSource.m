@interface SERDataSource
- (NSString)description;
- (_TtC9SEService13SERDataSource)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SERDataSource

- (NSString)description
{
  v3 = sub_1C7C7CFB4();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  v6 = self;
  sub_1C7C7CFA4();
  type metadata accessor for SERDataSource();
  sub_1C7C5CA10(&qword_1EC264888, type metadata accessor for SERDataSource);
  v7 = sub_1C7C7CF94();
  v9 = v8;
  sub_1C7C7D034();

  sub_1C7BDF778(v7, v9);

  v10 = sub_1C7C7D2E4();

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C7C58B20(v4);
}

- (_TtC9SEService13SERDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end