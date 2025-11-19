@interface TypistKeyplane
- (TypistKeyplane)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TypistKeyplane

- (TypistKeyplane)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TypistKeyplane;
  v5 = [(TypistKeyplane *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v5->_isLetters = [v4 decodeBoolForKey:@"isLetters"];
    v5->_isAlphabeticPlane = [v4 decodeBoolForKey:@"isAlphabeticPlane"];
    v5->_isShiftKeyplane = [v4 decodeBoolForKey:@"isShiftKeyplane"];
    v5->_usesAutoShift = [v4 decodeBoolForKey:@"usesAutoShift"];
    v5->_ignoresShiftState = [v4 decodeBoolForKey:@"ignoresShiftState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  name = self->_name;
  v6 = v4;
  if (name)
  {
    [v4 encodeObject:name forKey:@"name"];
    v4 = v6;
  }

  [v4 encodeBool:self->_isLetters forKey:@"isLetters"];
  [v6 encodeBool:self->_isAlphabeticPlane forKey:@"isAlphabeticPlane"];
  [v6 encodeBool:self->_isShiftKeyplane forKey:@"isShiftKeyplane"];
  [v6 encodeBool:self->_usesAutoShift forKey:@"usesAutoShift"];
  [v6 encodeBool:self->_ignoresShiftState forKey:@"ignoresShiftState"];
}

@end