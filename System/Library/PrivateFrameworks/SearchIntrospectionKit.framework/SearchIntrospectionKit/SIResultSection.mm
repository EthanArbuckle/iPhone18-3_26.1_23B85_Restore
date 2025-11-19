@interface SIResultSection
- (_TtC22SearchIntrospectionKit15SIResultSection)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SIResultSection

- (void)encodeWithCoder:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC22SearchIntrospectionKit15SIResultSection_results);
  type metadata accessor for SIResult();
  v6 = a3;
  v9 = self;
  v7 = sub_264E89AD4();
  v8 = sub_264E899B4();
  [v6 encodeObject:v7 forKey:v8];
}

- (_TtC22SearchIntrospectionKit15SIResultSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end