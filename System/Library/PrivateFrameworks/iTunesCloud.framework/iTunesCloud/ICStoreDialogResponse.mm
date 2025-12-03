@interface ICStoreDialogResponse
- (BOOL)isBiometricAuthenticationAllowed;
- (BOOL)isInitialCheckboxValue;
- (ICStoreDialogResponse)initWithResponseDictionary:(id)dictionary;
- (NSArray)buttons;
- (NSString)explanation;
- (NSString)message;
- (id)_buttonActionKeyForType:(int64_t)type;
- (id)_buttonTitleKeyForType:(int64_t)type;
- (id)_buttonWithType:(int64_t)type;
- (id)debugDescription;
- (int64_t)defaultButtonType;
- (int64_t)type;
@end

@implementation ICStoreDialogResponse

- (id)_buttonActionKeyForType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7BF7F48[type - 1];
  }
}

- (id)_buttonTitleKeyForType:(int64_t)type
{
  if ((type - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7BF7F30[type - 1];
  }
}

- (id)_buttonWithType:(int64_t)type
{
  v5 = [(ICStoreDialogResponse *)self _buttonTitleKeyForType:?];
  if (v5)
  {
    v6 = [(NSDictionary *)self->_responseDictionary objectForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  if (_NSIsNSString())
  {
    v7 = [(ICStoreDialogResponse *)self _buttonActionKeyForType:type];
    if (v7)
    {
      v8 = [(NSDictionary *)self->_responseDictionary objectForKey:v7];
    }

    else
    {
      v8 = 0;
    }

    if (_NSIsNSDictionary())
    {
      v10 = [[ICStoreDialogResponseButtonAction alloc] initWithResponseButtonActionDictionary:v8];
    }

    else
    {
      v10 = 0;
    }

    v9 = [[ICStoreDialogResponseButton alloc] initWithType:type isDefaultButton:[(ICStoreDialogResponse *)self defaultButtonType]== type title:v6 action:v10];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)defaultButtonType
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"defaultButton"];
  if (_NSIsNSString())
  {
    if ([v2 isEqualToString:@"ok"])
    {
      v3 = 1;
    }

    else if ([v2 isEqualToString:@"cancel"])
    {
      v3 = 2;
    }

    else if ([v2 isEqualToString:@"other"])
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)buttons
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = [(ICStoreDialogResponse *)self _buttonWithType:1];
  if (v4)
  {
    [array addObject:v4];
  }

  v5 = [(ICStoreDialogResponse *)self _buttonWithType:2];
  if (v5)
  {
    [array addObject:v5];
  }

  v6 = [(ICStoreDialogResponse *)self _buttonWithType:3];
  if (v6)
  {
    [array addObject:v6];
  }

  return array;
}

- (NSString)message
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"message"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)isBiometricAuthenticationAllowed
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"m-allowed"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isInitialCheckboxValue
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"initialCheckboxValue"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSString)explanation
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"explanation"];
  if (_NSIsNSString())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (int64_t)type
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"kind"];
  if (_NSIsNSString())
  {
    v3 = [v2 isEqualToString:@"authorization"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p responseDictionary: %@>", v5, self, self->_responseDictionary];

  return v6;
}

- (ICStoreDialogResponse)initWithResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ICStoreDialogResponse;
  v5 = [(ICStoreDialogResponse *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v6;
  }

  return v5;
}

@end