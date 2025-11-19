@interface StartExecutionTurn
- (NSString)debugDescription;
- (_TtC14SiriKitRuntime18StartExecutionTurn)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation StartExecutionTurn

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  StartExecutionTurn.encode(with:)(v4);
}

- (NSString)debugDescription
{
  v2 = self;
  started = StartExecutionTurn.debugDescription.getter();
  v5 = v4;

  v6 = MEMORY[0x1E12A1410](started, v5);

  return v6;
}

- (_TtC14SiriKitRuntime18StartExecutionTurn)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end