@interface _DUIAccessibilityDragStatus
- (_DUIAccessibilityDragStatus)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DUIAccessibilityDragStatus

- (_DUIAccessibilityDragStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _DUIAccessibilityDragStatus;
  v5 = [(_DUIAccessibilityDragStatus *)&v7 init];
  if (v5)
  {
    v5->_itemCount = [v4 decodeIntegerForKey:@"itemCount"];
    v5->_potentialOperation = [v4 decodeIntegerForKey:@"potentialOperation"];
    v5->_forbidden = [v4 decodeBoolForKey:@"forbidden"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  itemCount = self->_itemCount;
  v5 = a3;
  [v5 encodeInteger:itemCount forKey:@"itemCount"];
  [v5 encodeInteger:self->_potentialOperation forKey:@"potentialOperation"];
  [v5 encodeBool:self->_forbidden forKey:@"forbidden"];
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