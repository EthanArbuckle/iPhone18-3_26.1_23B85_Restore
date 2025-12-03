@interface TUIDictationAccessory
- (BOOL)isEqual:(id)equal;
- (TUIDictationAccessory)initWithCoder:(id)coder;
- (TUIDictationAccessory)initWithLanguages:(id)languages actionHandler:(id)handler;
- (id)additionalComponents;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUIDictationAccessory

- (id)additionalComponents
{
  v6.receiver = self;
  v6.super_class = TUIDictationAccessory;
  additionalComponents = [(TUICursorAccessory *)&v6 additionalComponents];
  if (self->_languages)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"languages = %@", self->_languages];
    [additionalComponents addObject:v4];
  }

  return additionalComponents;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    v6 = self == equalCopy || [(NSArray *)self->_languages isEqualToArray:equalCopy->_languages];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TUIDictationAccessory;
  coderCopy = coder;
  [(TUICursorAccessory *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_languages forKey:{@"TUILanguagesCodingKey", v5.receiver, v5.super_class}];
}

- (TUIDictationAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TUIDictationAccessory;
  v5 = [(TUICursorAccessory *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"TUILanguagesCodingKey"];
    languages = v5->_languages;
    v5->_languages = v6;
  }

  return v5;
}

- (TUIDictationAccessory)initWithLanguages:(id)languages actionHandler:(id)handler
{
  languagesCopy = languages;
  v11.receiver = self;
  v11.super_class = TUIDictationAccessory;
  v8 = [(TUICursorAccessory *)&v11 initWithIdentifier:0 actionHandler:handler];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_languages, languages);
  }

  return v9;
}

@end