@interface _SBWindowReference
+ (id)referenceForObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (_SBWindowReference)initWithObject:(id)a3;
@end

@implementation _SBWindowReference

+ (id)referenceForObject:(id)a3
{
  v3 = a3;
  v4 = [[_SBWindowReference alloc] initWithObject:v3];

  return v4;
}

- (_SBWindowReference)initWithObject:(id)a3
{
  v5.receiver = self;
  v5.super_class = _SBWindowReference;
  result = [(_SBWindowReference *)&v5 init];
  if (result)
  {
    result->_object = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_object == v4->_object;
  }

  return v5;
}

@end