@interface NSLayoutConstraint(UIInterfaceBuilderSupport)
- (_NSLayoutConstraintConstant)_encodedConstant;
- (uint64_t)_setEncodedConstant:()UIInterfaceBuilderSupport;
@end

@implementation NSLayoutConstraint(UIInterfaceBuilderSupport)

- (_NSLayoutConstraintConstant)_encodedConstant
{
  v2 = 0.0;
  if (![a1 symbolicConstant])
  {
    [a1 constant];
    v2 = v3;
  }

  v4 = [a1 symbolicConstant];

  return [_NSLayoutConstraintConstant constantWithSymbolicValue:v4 numericValue:v2];
}

- (uint64_t)_setEncodedConstant:()UIInterfaceBuilderSupport
{
  if ([a3 symbolicValue])
  {
    v5 = [a3 symbolicValue];

    return [a1 setSymbolicConstant:v5];
  }

  else
  {
    [a3 numericValue];

    return [a1 setConstant:?];
  }
}

@end