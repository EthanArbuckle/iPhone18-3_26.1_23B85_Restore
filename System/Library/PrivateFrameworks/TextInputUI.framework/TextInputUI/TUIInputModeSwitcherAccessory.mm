@interface TUIInputModeSwitcherAccessory
- (BOOL)isEqual:(id)equal;
- (TUIInputModeSwitcherAccessory)initWithCoder:(id)coder;
- (TUIInputModeSwitcherAccessory)initWithInputSourceIDs:(id)ds selectedIndex:(int64_t)index;
- (TUIInputModeSwitcherAccessory)initWithLanguages:(id)languages selectedIndex:(int64_t)index actionHandler:(id)handler;
- (id)additionalComponents;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUIInputModeSwitcherAccessory

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = TUIInputModeSwitcherAccessory;
  v3 = 257 * [(TUICursorAccessory *)&v8 hash];
  inputSourceIDs = [(TUIInputModeSwitcherAccessory *)self inputSourceIDs];
  v5 = [inputSourceIDs hash] + v3;

  v6 = 257 * (257 * v5 + [(TUIInputModeSwitcherAccessory *)self selectedIndex]);
  return v6 + [(TUIInputModeSwitcherAccessory *)self isInputSource];
}

- (id)additionalComponents
{
  v9.receiver = self;
  v9.super_class = TUIInputModeSwitcherAccessory;
  additionalComponents = [(TUICursorAccessory *)&v9 additionalComponents];
  if (self->_inputSourceIDs)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputSourceIDs = %@", self->_inputSourceIDs];
    [additionalComponents addObject:v4];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"selectedIndex = %ld", self->_selectedIndex];
  [additionalComponents addObject:v5];

  if (self->_isInputSource)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"isInputSource = %@", v6];
  [additionalComponents addObject:v7];

  return additionalComponents;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
    {
      v7 = 1;
    }

    else
    {
      v6 = equalCopy;
      v9.receiver = self;
      v9.super_class = TUIInputModeSwitcherAccessory;
      v7 = [(TUICursorAccessory *)&v9 isEqual:v6]&& [(NSArray *)self->_inputSourceIDs isEqualToArray:v6->_inputSourceIDs]&& self->_selectedIndex == v6->_selectedIndex && self->_isInputSource == v6->_isInputSource;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = TUIInputModeSwitcherAccessory;
  coderCopy = coder;
  [(TUICursorAccessory *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_inputSourceIDs forKey:{@"TUInputSourceIDsCodingKey", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_selectedIndex forKey:@"TUSelectedIndexCodingKey"];
  [coderCopy encodeBool:self->_isInputSource forKey:@"TUSIsInputSourceCodingKey"];
}

- (TUIInputModeSwitcherAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TUIInputModeSwitcherAccessory;
  v5 = [(TUICursorAccessory *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"TUInputSourceIDsCodingKey"];
    inputSourceIDs = v5->_inputSourceIDs;
    v5->_inputSourceIDs = v6;

    v5->_selectedIndex = [coderCopy decodeIntegerForKey:@"TUSelectedIndexCodingKey"];
    v5->_isInputSource = [coderCopy decodeBoolForKey:@"TUSIsInputSourceCodingKey"];
  }

  return v5;
}

- (TUIInputModeSwitcherAccessory)initWithLanguages:(id)languages selectedIndex:(int64_t)index actionHandler:(id)handler
{
  languagesCopy = languages;
  v12.receiver = self;
  v12.super_class = TUIInputModeSwitcherAccessory;
  v9 = [(TUICursorAccessory *)&v12 initWithIdentifier:0 actionHandler:handler];
  v10 = v9;
  if (v9)
  {
    [(TUIInputModeSwitcherAccessory *)v9 setInputSourceIDs:languagesCopy];
    [(TUIInputModeSwitcherAccessory *)v10 setSelectedIndex:index];
    [(TUIInputModeSwitcherAccessory *)v10 setIsInputSource:0];
  }

  return v10;
}

- (TUIInputModeSwitcherAccessory)initWithInputSourceIDs:(id)ds selectedIndex:(int64_t)index
{
  dsCopy = ds;
  v10.receiver = self;
  v10.super_class = TUIInputModeSwitcherAccessory;
  v7 = [(TUICursorAccessory *)&v10 initWithIdentifier:0 actionHandler:0];
  v8 = v7;
  if (v7)
  {
    [(TUIInputModeSwitcherAccessory *)v7 setInputSourceIDs:dsCopy];
    [(TUIInputModeSwitcherAccessory *)v8 setSelectedIndex:index];
    [(TUIInputModeSwitcherAccessory *)v8 setIsInputSource:1];
  }

  return v8;
}

@end