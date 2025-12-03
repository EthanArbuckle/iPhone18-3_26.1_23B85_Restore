@interface SVDDeviceUnitSwiftDeprecated
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SVDDeviceUnitSwiftDeprecated

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_2698DF5BC(coderCopy);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_2698DFA54();

  return v3;
}

@end