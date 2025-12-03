@interface _UIHyperspace
- (BOOL)isEqual:(id)equal;
- (_UIHyperspace)initWithCoder:(id)coder;
- (_UIHyperspace)initWithDimensions:(unint64_t)dimensions;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UIHyperspace

- (_UIHyperspace)initWithDimensions:(unint64_t)dimensions
{
  v5.receiver = self;
  v5.super_class = _UIHyperspace;
  result = [(_UIHyperspace *)&v5 init];
  if (result)
  {
    result->__dimensions = dimensions;
  }

  return result;
}

- (_UIHyperspace)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"_dimensions"];

  return [(_UIHyperspace *)self initWithDimensions:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_UIHyperspace alloc];
  _dimensions = [(_UIHyperspace *)self _dimensions];

  return [(_UIHyperspace *)v4 initWithDimensions:_dimensions];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    _dimensions = [(_UIHyperspace *)self _dimensions];
    _dimensions2 = [v5 _dimensions];

    v8 = _dimensions == _dimensions2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end