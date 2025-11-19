@interface SchemaXPCEnvelope
- (void)encodeWithCoder:(id)a3;
- (void)set_schema:(id)a3;
@end

@implementation SchemaXPCEnvelope

- (void)set_schema:(id)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = self;
    v5 = v3;
    v3 = sub_1B5EA42E0();
    v7 = v6;
  }

  else
  {
    v8 = self;
    v7 = 0xF000000000000000;
  }

  sub_1B5E369D4(v3, v7);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SchemaXPCEnvelope.encode(with:)(v4);
}

@end