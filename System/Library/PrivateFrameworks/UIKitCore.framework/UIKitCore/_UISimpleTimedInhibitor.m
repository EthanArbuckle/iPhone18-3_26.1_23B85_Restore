@interface _UISimpleTimedInhibitor
- (BOOL)attempt;
- (_UISimpleTimedInhibitor)init;
@end

@implementation _UISimpleTimedInhibitor

- (BOOL)attempt
{
  v3 = self + OBJC_IVAR____UISimpleTimedInhibitor__inhibitor;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v3, v4);
  v6 = *(v5 + 8);
  v7 = self;
  LOBYTE(v3) = v6(v4, v5);
  swift_endAccess();

  return v3 & 1;
}

- (_UISimpleTimedInhibitor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end