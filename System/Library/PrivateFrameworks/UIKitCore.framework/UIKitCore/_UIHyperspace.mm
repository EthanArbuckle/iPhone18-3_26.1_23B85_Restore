@interface _UIHyperspace
- (BOOL)isEqual:(id)a3;
- (_UIHyperspace)initWithCoder:(id)a3;
- (_UIHyperspace)initWithDimensions:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _UIHyperspace

- (_UIHyperspace)initWithDimensions:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _UIHyperspace;
  result = [(_UIHyperspace *)&v5 init];
  if (result)
  {
    result->__dimensions = a3;
  }

  return result;
}

- (_UIHyperspace)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"_dimensions"];

  return [(_UIHyperspace *)self initWithDimensions:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UIHyperspace alloc];
  v5 = [(_UIHyperspace *)self _dimensions];

  return [(_UIHyperspace *)v4 initWithDimensions:v5];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_UIHyperspace *)self _dimensions];
    v7 = [v5 _dimensions];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end