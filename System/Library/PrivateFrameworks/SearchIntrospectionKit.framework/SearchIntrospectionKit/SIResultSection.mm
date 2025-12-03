@interface SIResultSection
- (_TtC22SearchIntrospectionKit15SIResultSection)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIResultSection

- (void)encodeWithCoder:(id)coder
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC22SearchIntrospectionKit15SIResultSection_results);
  type metadata accessor for SIResult();
  coderCopy = coder;
  selfCopy = self;
  v7 = sub_264E89AD4();
  v8 = sub_264E899B4();
  [coderCopy encodeObject:v7 forKey:v8];
}

- (_TtC22SearchIntrospectionKit15SIResultSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end