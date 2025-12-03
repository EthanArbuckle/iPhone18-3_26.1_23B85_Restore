@interface _DUIAccessibilityDragStatus
- (_DUIAccessibilityDragStatus)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DUIAccessibilityDragStatus

- (_DUIAccessibilityDragStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _DUIAccessibilityDragStatus;
  v5 = [(_DUIAccessibilityDragStatus *)&v7 init];
  if (v5)
  {
    v5->_itemCount = [coderCopy decodeIntegerForKey:@"itemCount"];
    v5->_potentialOperation = [coderCopy decodeIntegerForKey:@"potentialOperation"];
    v5->_forbidden = [coderCopy decodeBoolForKey:@"forbidden"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  itemCount = self->_itemCount;
  coderCopy = coder;
  [coderCopy encodeInteger:itemCount forKey:@"itemCount"];
  [coderCopy encodeInteger:self->_potentialOperation forKey:@"potentialOperation"];
  [coderCopy encodeBool:self->_forbidden forKey:@"forbidden"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  if (self->_forbidden)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  return [v3 stringWithFormat:@"<%@ %p: itemCount=%ld, potentialOperation=%ld, forbidden=%@>", v4, self, self->_itemCount, self->_potentialOperation, v5];
}

@end