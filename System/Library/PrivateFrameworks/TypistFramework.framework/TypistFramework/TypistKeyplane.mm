@interface TypistKeyplane
- (TypistKeyplane)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TypistKeyplane

- (TypistKeyplane)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TypistKeyplane;
  v5 = [(TypistKeyplane *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_isLetters = [coderCopy decodeBoolForKey:@"isLetters"];
    v5->_isAlphabeticPlane = [coderCopy decodeBoolForKey:@"isAlphabeticPlane"];
    v5->_isShiftKeyplane = [coderCopy decodeBoolForKey:@"isShiftKeyplane"];
    v5->_usesAutoShift = [coderCopy decodeBoolForKey:@"usesAutoShift"];
    v5->_ignoresShiftState = [coderCopy decodeBoolForKey:@"ignoresShiftState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = self->_name;
  v6 = coderCopy;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"name"];
    coderCopy = v6;
  }

  [coderCopy encodeBool:self->_isLetters forKey:@"isLetters"];
  [v6 encodeBool:self->_isAlphabeticPlane forKey:@"isAlphabeticPlane"];
  [v6 encodeBool:self->_isShiftKeyplane forKey:@"isShiftKeyplane"];
  [v6 encodeBool:self->_usesAutoShift forKey:@"usesAutoShift"];
  [v6 encodeBool:self->_ignoresShiftState forKey:@"ignoresShiftState"];
}

@end