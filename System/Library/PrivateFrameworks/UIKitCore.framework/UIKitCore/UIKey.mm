@interface UIKey
- (BOOL)equalsKeyCode:(int64_t)a3 modifiers:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (UIKey)initWithCoder:(id)a3;
- (UIKey)initWithKeyboardEvent:(id)a3;
- (id)_initWithKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIKey

- (UIKey)initWithKeyboardEvent:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = UIKey;
  v5 = [(UIKey *)&v13 init];
  if (v5)
  {
    v6 = [v4 _unmodifiedInput];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1EFB14550;
    }

    objc_storeStrong(&v5->_unmodifiedInput, v8);

    v9 = [v4 _modifiedInput];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_1EFB14550;
    }

    objc_storeStrong(&v5->_modifiedInput, v11);

    v5->_modifierFlags = [v4 _modifierFlags];
    v5->_keyCode = [v4 _keyCode];
  }

  return v5;
}

- (id)_initWithKey:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UIKey;
  v5 = [(UIKey *)&v11 init];
  if (v5)
  {
    v6 = [v4 unmodifiedInput];
    unmodifiedInput = v5->_unmodifiedInput;
    v5->_unmodifiedInput = v6;

    v8 = [v4 modifiedInput];
    modifiedInput = v5->_modifiedInput;
    v5->_modifiedInput = v8;

    v5->_modifierFlags = [v4 modifierFlags];
    v5->_keyCode = [v4 keyCode];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 _initWithKey:self];
}

- (void)encodeWithCoder:(id)a3
{
  modifiedInput = self->_modifiedInput;
  v5 = a3;
  [v5 encodeObject:modifiedInput forKey:@"_modifiedInput"];
  [v5 encodeObject:self->_unmodifiedInput forKey:@"_unmodifiedInput"];
  [v5 encodeInteger:self->_modifierFlags forKey:@"_modifierFlags"];
  [v5 encodeInteger:self->_keyCode forKey:@"_keyCode"];
}

- (UIKey)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UIKey;
  v5 = [(UIKey *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"_modifiedInput"];
    modifiedInput = v5->_modifiedInput;
    v5->_modifiedInput = v6;

    v8 = [v4 decodeObjectForKey:@"_unmodifiedInput"];
    unmodifiedInput = v5->_unmodifiedInput;
    v5->_unmodifiedInput = v8;

    v5->_modifierFlags = [v4 decodeIntegerForKey:@"_modifierFlags"];
    v5->_keyCode = [v4 decodeIntegerForKey:@"_keyCode"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(UIKey *)v4 hash];
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
  v3 = [(UIKey *)self characters];
  v11[0] = v3;
  v10[1] = @"unmodified";
  v4 = [(UIKey *)self charactersIgnoringModifiers];
  v11[1] = v4;
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

- (BOOL)equalsKeyCode:(int64_t)a3 modifiers:(int64_t)a4
{
  if ([(UIKey *)self keyCode]!= a3)
  {
    return 0;
  }

  return [(UIKey *)self modifiersEqual:a4];
}

@end