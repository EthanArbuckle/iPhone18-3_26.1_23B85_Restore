@interface SKRExecutionOutput
- (NSString)debugDescription;
- (SKRExecutionOutput)init;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SKRExecutionOutput

- (NSString)debugDescription
{
  v2 = self;
  v3 = ExecutionOutput.debugDescription.getter();
  v5 = v4;

  v6 = MEMORY[0x1E12A1410](v3, v5);

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  ExecutionOutput.encode(with:)(v4);
}

- (SKRExecutionOutput)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end