@interface TUIDictationAccessory
- (BOOL)isEqual:(id)a3;
- (TUIDictationAccessory)initWithCoder:(id)a3;
- (TUIDictationAccessory)initWithLanguages:(id)a3 actionHandler:(id)a4;
- (id)additionalComponents;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUIDictationAccessory

- (id)additionalComponents
{
  v6.receiver = self;
  v6.super_class = TUIDictationAccessory;
  v3 = [(TUICursorAccessory *)&v6 additionalComponents];
  if (self->_languages)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"languages = %@", self->_languages];
    [v3 addObject:v4];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = self == v4 || [(NSArray *)self->_languages isEqualToArray:v4->_languages];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TUIDictationAccessory;
  v4 = a3;
  [(TUICursorAccessory *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_languages forKey:{@"TUILanguagesCodingKey", v5.receiver, v5.super_class}];
}

- (TUIDictationAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIDictationAccessory;
  v5 = [(TUICursorAccessory *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"TUILanguagesCodingKey"];
    languages = v5->_languages;
    v5->_languages = v6;
  }

  return v5;
}

- (TUIDictationAccessory)initWithLanguages:(id)a3 actionHandler:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TUIDictationAccessory;
  v8 = [(TUICursorAccessory *)&v11 initWithIdentifier:0 actionHandler:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_languages, a3);
  }

  return v9;
}

@end