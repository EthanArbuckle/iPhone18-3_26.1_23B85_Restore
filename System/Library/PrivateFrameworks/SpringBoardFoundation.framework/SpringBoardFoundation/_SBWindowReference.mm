@interface _SBWindowReference
+ (id)referenceForObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (_SBWindowReference)initWithObject:(id)object;
@end

@implementation _SBWindowReference

+ (id)referenceForObject:(id)object
{
  objectCopy = object;
  v4 = [[_SBWindowReference alloc] initWithObject:objectCopy];

  return v4;
}

- (_SBWindowReference)initWithObject:(id)object
{
  v5.receiver = self;
  v5.super_class = _SBWindowReference;
  result = [(_SBWindowReference *)&v5 init];
  if (result)
  {
    result->_object = object;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_object == equalCopy->_object;
  }

  return v5;
}

@end