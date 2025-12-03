@interface SchemaXPCEnvelope
- (void)encodeWithCoder:(id)coder;
- (void)set_schema:(id)set_schema;
@end

@implementation SchemaXPCEnvelope

- (void)set_schema:(id)set_schema
{
  set_schemaCopy = set_schema;
  if (set_schema)
  {
    selfCopy = self;
    v5 = set_schemaCopy;
    set_schemaCopy = sub_1B5EA42E0();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B5E369D4(set_schemaCopy, v7);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SchemaXPCEnvelope.encode(with:)(coderCopy);
}

@end