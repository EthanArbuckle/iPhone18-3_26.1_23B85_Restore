@interface _UISegmentedControlSegmentHoverIdentifier
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIdentifier:(id)identifier;
- (_UISegmentedControlSegmentHoverIdentifier)initWithIndex:(int64_t)index selected:(BOOL)selected;
@end

@implementation _UISegmentedControlSegmentHoverIdentifier

- (_UISegmentedControlSegmentHoverIdentifier)initWithIndex:(int64_t)index selected:(BOOL)selected
{
  v7.receiver = self;
  v7.super_class = _UISegmentedControlSegmentHoverIdentifier;
  result = [(_UISegmentedControlSegmentHoverIdentifier *)&v7 init];
  if (result)
  {
    result->_index = index;
    result->_isSelected = selected;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_UISegmentedControlSegmentHoverIdentifier *)self isEqualToIdentifier:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy && self->_index == identifierCopy[1] && self->_isSelected == *(identifierCopy + 16);

  return v5;
}

@end