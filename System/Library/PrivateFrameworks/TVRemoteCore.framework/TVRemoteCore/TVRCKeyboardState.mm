@interface TVRCKeyboardState
+ (id)keyboardStateFromDevice:(id)device;
- (TVRCKeyboardState)initWithCoder:(id)coder;
- (TVRCKeyboardState)initWithDevice:(id)device;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TVRCKeyboardState

+ (id)keyboardStateFromDevice:(id)device
{
  deviceCopy = device;
  v4 = [[TVRCKeyboardState alloc] initWithDevice:deviceCopy];

  return v4;
}

- (TVRCKeyboardState)initWithDevice:(id)device
{
  deviceCopy = device;
  v12.receiver = self;
  v12.super_class = TVRCKeyboardState;
  v5 = [(TVRCKeyboardState *)&v12 init];
  if (v5)
  {
    keyboardController = [deviceCopy keyboardController];
    v5->_isEditing = [keyboardController isEditing];
    text = [keyboardController text];
    text = v5->_text;
    v5->_text = text;

    attributes = [keyboardController attributes];
    attributes = v5->_attributes;
    v5->_attributes = attributes;
  }

  return v5;
}

- (TVRCKeyboardState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TVRCKeyboardState;
  v5 = [(TVRCKeyboardState *)&v11 init];
  if (v5)
  {
    v5->_isEditing = [coderCopy decodeBoolForKey:@"isEditing"];
    v6 = [coderCopy decodeObjectForKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  isEditing = self->_isEditing;
  coderCopy = coder;
  [coderCopy encodeBool:isEditing forKey:@"isEditing"];
  [coderCopy encodeObject:self->_text forKey:@"text"];
  [coderCopy encodeObject:self->_attributes forKey:@"attributes"];
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