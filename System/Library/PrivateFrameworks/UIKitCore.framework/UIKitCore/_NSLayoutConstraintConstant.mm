@interface _NSLayoutConstraintConstant
+ (_NSLayoutConstraintConstant)constantWithSymbolicValue:(id)value numericValue:(double)numericValue;
- (_NSLayoutConstraintConstant)initWithCoder:(id)coder;
- (_NSLayoutConstraintConstant)initWithSymbolicValue:(id)value numericValue:(double)numericValue;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _NSLayoutConstraintConstant

+ (_NSLayoutConstraintConstant)constantWithSymbolicValue:(id)value numericValue:(double)numericValue
{
  v4 = [[self alloc] initWithSymbolicValue:value numericValue:numericValue];

  return v4;
}

- (_NSLayoutConstraintConstant)initWithSymbolicValue:(id)value numericValue:(double)numericValue
{
  v8.receiver = self;
  v8.super_class = _NSLayoutConstraintConstant;
  v6 = [(_NSLayoutConstraintConstant *)&v8 init];
  if (v6)
  {
    v6->_symbolicValue = [value copy];
    v6->_numericValue = numericValue;
  }

  return v6;
}

- (_NSLayoutConstraintConstant)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = _NSLayoutConstraintConstant;
  v4 = [(_NSLayoutConstraintConstant *)&v7 init];
  if (v4)
  {
    v4->_symbolicValue = [objc_msgSend(coder decodeObjectForKey:{@"UISymbolicConstant", "copy"}];
    [coder decodeDoubleForKey:@"UINumericConstant"];
    v4->_numericValue = v5;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_symbolicValue forKey:@"UISymbolicConstant"];
  numericValue = self->_numericValue;

  [coder encodeDouble:@"UINumericConstant" forKey:numericValue];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _NSLayoutConstraintConstant;
  [(_NSLayoutConstraintConstant *)&v3 dealloc];
}

@end