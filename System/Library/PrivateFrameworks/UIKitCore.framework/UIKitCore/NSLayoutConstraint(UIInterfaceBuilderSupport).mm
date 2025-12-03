@interface NSLayoutConstraint(UIInterfaceBuilderSupport)
- (_NSLayoutConstraintConstant)_encodedConstant;
- (uint64_t)_setEncodedConstant:()UIInterfaceBuilderSupport;
@end

@implementation NSLayoutConstraint(UIInterfaceBuilderSupport)

- (_NSLayoutConstraintConstant)_encodedConstant
{
  v2 = 0.0;
  if (![self symbolicConstant])
  {
    [self constant];
    v2 = v3;
  }

  symbolicConstant = [self symbolicConstant];

  return [_NSLayoutConstraintConstant constantWithSymbolicValue:symbolicConstant numericValue:v2];
}

- (uint64_t)_setEncodedConstant:()UIInterfaceBuilderSupport
{
  if ([a3 symbolicValue])
  {
    symbolicValue = [a3 symbolicValue];

    return [self setSymbolicConstant:symbolicValue];
  }

  else
  {
    [a3 numericValue];

    return [self setConstant:?];
  }
}

@end