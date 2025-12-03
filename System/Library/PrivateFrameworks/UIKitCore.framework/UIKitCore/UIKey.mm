@interface UIKey
- (BOOL)equalsKeyCode:(int64_t)code modifiers:(int64_t)modifiers;
- (BOOL)isEqual:(id)equal;
- (UIKey)initWithCoder:(id)coder;
- (UIKey)initWithKeyboardEvent:(id)event;
- (id)_initWithKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UIKey

- (UIKey)initWithKeyboardEvent:(id)event
{
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = UIKey;
  v5 = [(UIKey *)&v13 init];
  if (v5)
  {
    _unmodifiedInput = [eventCopy _unmodifiedInput];
    v7 = _unmodifiedInput;
    if (_unmodifiedInput)
    {
      v8 = _unmodifiedInput;
    }

    else
    {
      v8 = &stru_1EFB14550;
    }

    objc_storeStrong(&v5->_unmodifiedInput, v8);

    _modifiedInput = [eventCopy _modifiedInput];
    v10 = _modifiedInput;
    if (_modifiedInput)
    {
      v11 = _modifiedInput;
    }

    else
    {
      v11 = &stru_1EFB14550;
    }

    objc_storeStrong(&v5->_modifiedInput, v11);

    v5->_modifierFlags = [eventCopy _modifierFlags];
    v5->_keyCode = [eventCopy _keyCode];
  }

  return v5;
}

- (id)_initWithKey:(id)key
{
  keyCopy = key;
  v11.receiver = self;
  v11.super_class = UIKey;
  v5 = [(UIKey *)&v11 init];
  if (v5)
  {
    unmodifiedInput = [keyCopy unmodifiedInput];
    unmodifiedInput = v5->_unmodifiedInput;
    v5->_unmodifiedInput = unmodifiedInput;

    modifiedInput = [keyCopy modifiedInput];
    modifiedInput = v5->_modifiedInput;
    v5->_modifiedInput = modifiedInput;

    v5->_modifierFlags = [keyCopy modifierFlags];
    v5->_keyCode = [keyCopy keyCode];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 _initWithKey:self];
}

- (void)encodeWithCoder:(id)coder
{
  modifiedInput = self->_modifiedInput;
  coderCopy = coder;
  [coderCopy encodeObject:modifiedInput forKey:@"_modifiedInput"];
  [coderCopy encodeObject:self->_unmodifiedInput forKey:@"_unmodifiedInput"];
  [coderCopy encodeInteger:self->_modifierFlags forKey:@"_modifierFlags"];
  [coderCopy encodeInteger:self->_keyCode forKey:@"_keyCode"];
}

- (UIKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = UIKey;
  v5 = [(UIKey *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"_modifiedInput"];
    modifiedInput = v5->_modifiedInput;
    v5->_modifiedInput = v6;

    v8 = [coderCopy decodeObjectForKey:@"_unmodifiedInput"];
    unmodifiedInput = v5->_unmodifiedInput;
    v5->_unmodifiedInput = v8;

    v5->_modifierFlags = [coderCopy decodeIntegerForKey:@"_modifierFlags"];
    v5->_keyCode = [coderCopy decodeIntegerForKey:@"_keyCode"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(UIKey *)equalCopy hash];
      v6 = v5 == [(UIKey *)self hash];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)description
{
  v11[4] = *MEMORY[0x1E69E9840];
  v10[0] = @"characters";
  characters = [(UIKey *)self characters];
  v11[0] = characters;
  v10[1] = @"unmodified";
  charactersIgnoringModifiers = [(UIKey *)self charactersIgnoringModifiers];
  v11[1] = charactersIgnoringModifiers;
  v10[2] = @"modifierFlags";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_modifierFlags];
  v11[2] = v5;
  v10[3] = @"keyCode";
  v6 = [MEMORY[0x1E696AD98] numberWithLong:self->_keyCode];
  v11[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v8 = [UIDescriptionBuilder descriptionForObject:self namesAndObjects:v7];

  return v8;
}

- (BOOL)equalsKeyCode:(int64_t)code modifiers:(int64_t)modifiers
{
  if ([(UIKey *)self keyCode]!= code)
  {
    return 0;
  }

  return [(UIKey *)self modifiersEqual:modifiers];
}

@end