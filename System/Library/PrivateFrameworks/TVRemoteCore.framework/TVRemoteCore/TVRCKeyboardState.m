@interface TVRCKeyboardState
+ (id)keyboardStateFromDevice:(id)a3;
- (TVRCKeyboardState)initWithCoder:(id)a3;
- (TVRCKeyboardState)initWithDevice:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TVRCKeyboardState

+ (id)keyboardStateFromDevice:(id)a3
{
  v3 = a3;
  v4 = [[TVRCKeyboardState alloc] initWithDevice:v3];

  return v4;
}

- (TVRCKeyboardState)initWithDevice:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TVRCKeyboardState;
  v5 = [(TVRCKeyboardState *)&v12 init];
  if (v5)
  {
    v6 = [v4 keyboardController];
    v5->_isEditing = [v6 isEditing];
    v7 = [v6 text];
    text = v5->_text;
    v5->_text = v7;

    v9 = [v6 attributes];
    attributes = v5->_attributes;
    v5->_attributes = v9;
  }

  return v5;
}

- (TVRCKeyboardState)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TVRCKeyboardState;
  v5 = [(TVRCKeyboardState *)&v11 init];
  if (v5)
  {
    v5->_isEditing = [v4 decodeBoolForKey:@"isEditing"];
    v6 = [v4 decodeObjectForKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  isEditing = self->_isEditing;
  v5 = a3;
  [v5 encodeBool:isEditing forKey:@"isEditing"];
  [v5 encodeObject:self->_text forKey:@"text"];
  [v5 encodeObject:self->_attributes forKey:@"attributes"];
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@"; isEditing = %d", self->_isEditing];
  [v3 appendFormat:@"; text = %@", self->_text];
  [v3 appendString:@">"];
  v4 = [v3 copy];

  return v4;
}

@end