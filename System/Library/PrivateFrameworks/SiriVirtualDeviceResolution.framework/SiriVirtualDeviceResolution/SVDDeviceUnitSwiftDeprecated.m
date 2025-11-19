@interface SVDDeviceUnitSwiftDeprecated
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SVDDeviceUnitSwiftDeprecated

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2698DF5BC(v4);
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_2698DFA54();

  return v3;
}

@end