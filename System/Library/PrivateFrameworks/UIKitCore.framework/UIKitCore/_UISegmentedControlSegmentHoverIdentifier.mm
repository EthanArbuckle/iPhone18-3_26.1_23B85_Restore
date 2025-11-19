@interface _UISegmentedControlSegmentHoverIdentifier
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIdentifier:(id)a3;
- (_UISegmentedControlSegmentHoverIdentifier)initWithIndex:(int64_t)a3 selected:(BOOL)a4;
@end

@implementation _UISegmentedControlSegmentHoverIdentifier

- (_UISegmentedControlSegmentHoverIdentifier)initWithIndex:(int64_t)a3 selected:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = _UISegmentedControlSegmentHoverIdentifier;
  result = [(_UISegmentedControlSegmentHoverIdentifier *)&v7 init];
  if (result)
  {
    result->_index = a3;
    result->_isSelected = a4;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UISegmentedControlSegmentHoverIdentifier *)self isEqualToIdentifier:v4];
  }

  return v5;
}

- (BOOL)isEqualToIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4 && self->_index == v4[1] && self->_isSelected == *(v4 + 16);

  return v5;
}

@end