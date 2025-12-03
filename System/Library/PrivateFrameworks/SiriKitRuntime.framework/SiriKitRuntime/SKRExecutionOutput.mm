@interface SKRExecutionOutput
- (NSString)debugDescription;
- (SKRExecutionOutput)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKRExecutionOutput

- (NSString)debugDescription
{
  selfCopy = self;
  v3 = ExecutionOutput.debugDescription.getter();
  v5 = v4;

  v6 = MEMORY[0x1E12A1410](v3, v5);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  ExecutionOutput.encode(with:)(coderCopy);
}

- (SKRExecutionOutput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end