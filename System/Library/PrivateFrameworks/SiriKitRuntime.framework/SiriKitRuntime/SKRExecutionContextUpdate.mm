@interface SKRExecutionContextUpdate
- (NSString)debugDescription;
- (SKRExecutionContextUpdate)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKRExecutionContextUpdate

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ExecutionContextUpdate.encode(with:)(coderCopy);
}

- (NSString)debugDescription
{
  selfCopy = self;
  v3 = ExecutionContextUpdate.debugDescription.getter();
  v5 = v4;

  v6 = MEMORY[0x1E12A1410](v3, v5);

  return v6;
}

- (SKRExecutionContextUpdate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end