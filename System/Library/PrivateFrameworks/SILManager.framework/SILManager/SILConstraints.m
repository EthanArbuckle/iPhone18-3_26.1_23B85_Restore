@interface SILConstraints
- (NSString)constraintsFile;
- (_TtC10SILManager14SILConstraints)init;
- (void)setConstraintsFile:(id)a3;
@end

@implementation SILConstraints

- (NSString)constraintsFile
{
  v2 = (self + OBJC_IVAR____TtC10SILManager14SILConstraints_constraintsFile);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = MEMORY[0x26672FC40](v4, v3);

  return v5;
}

- (void)setConstraintsFile:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC10SILManager14SILConstraints_constraintsFile);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (_TtC10SILManager14SILConstraints)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end