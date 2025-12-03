@interface StartExecutionTurn
- (NSString)debugDescription;
- (_TtC14SiriKitRuntime18StartExecutionTurn)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation StartExecutionTurn

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  StartExecutionTurn.encode(with:)(coderCopy);
}

- (NSString)debugDescription
{
  selfCopy = self;
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