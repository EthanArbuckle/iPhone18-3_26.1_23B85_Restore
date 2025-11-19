@interface TUIInputModeSwitcherAccessory
- (BOOL)isEqual:(id)a3;
- (TUIInputModeSwitcherAccessory)initWithCoder:(id)a3;
- (TUIInputModeSwitcherAccessory)initWithInputSourceIDs:(id)a3 selectedIndex:(int64_t)a4;
- (TUIInputModeSwitcherAccessory)initWithLanguages:(id)a3 selectedIndex:(int64_t)a4 actionHandler:(id)a5;
- (id)additionalComponents;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUIInputModeSwitcherAccessory

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = TUIInputModeSwitcherAccessory;
  v3 = 257 * [(TUICursorAccessory *)&v8 hash];
  v4 = [(TUIInputModeSwitcherAccessory *)self inputSourceIDs];
  v5 = [v4 hash] + v3;

  v6 = 257 * (257 * v5 + [(TUIInputModeSwitcherAccessory *)self selectedIndex]);
  return v6 + [(TUIInputModeSwitcherAccessory *)self isInputSource];
}

- (id)additionalComponents
{
  v9.receiver = self;
  v9.super_class = TUIInputModeSwitcherAccessory;
  v3 = [(TUICursorAccessory *)&v9 additionalComponents];
  if (self->_inputSourceIDs)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"inputSourceIDs = %@", self->_inputSourceIDs];
    [v3 addObject:v4];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"selectedIndex = %ld", self->_selectedIndex];
  [v3 addObject:v5];

  if (self->_isInputSource)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"isInputSource = %@", v6];
  [v3 addObject:v7];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      v6 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = TUIInputModeSwitcherAccessory;
  v4 = a3;
  [(TUICursorAccessory *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_inputSourceIDs forKey:{@"TUInputSourceIDsCodingKey", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_selectedIndex forKey:@"TUSelectedIndexCodingKey"];
  [v4 encodeBool:self->_isInputSource forKey:@"TUSIsInputSourceCodingKey"];
}

- (TUIInputModeSwitcherAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUIInputModeSwitcherAccessory;
  v5 = [(TUICursorAccessory *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"TUInputSourceIDsCodingKey"];
    inputSourceIDs = v5->_inputSourceIDs;
    v5->_inputSourceIDs = v6;

    v5->_selectedIndex = [v4 decodeIntegerForKey:@"TUSelectedIndexCodingKey"];
    v5->_isInputSource = [v4 decodeBoolForKey:@"TUSIsInputSourceCodingKey"];
  }

  return v5;
}

- (TUIInputModeSwitcherAccessory)initWithLanguages:(id)a3 selectedIndex:(int64_t)a4 actionHandler:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = TUIInputModeSwitcherAccessory;
  v9 = [(TUICursorAccessory *)&v12 initWithIdentifier:0 actionHandler:a5];
  v10 = v9;
  if (v9)
  {
    [(TUIInputModeSwitcherAccessory *)v9 setInputSourceIDs:v8];
    [(TUIInputModeSwitcherAccessory *)v10 setSelectedIndex:a4];
    [(TUIInputModeSwitcherAccessory *)v10 setIsInputSource:0];
  }

  return v10;
}

- (TUIInputModeSwitcherAccessory)initWithInputSourceIDs:(id)a3 selectedIndex:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = TUIInputModeSwitcherAccessory;
  v7 = [(TUICursorAccessory *)&v10 initWithIdentifier:0 actionHandler:0];
  v8 = v7;
  if (v7)
  {
    [(TUIInputModeSwitcherAccessory *)v7 setInputSourceIDs:v6];
    [(TUIInputModeSwitcherAccessory *)v8 setSelectedIndex:a4];
    [(TUIInputModeSwitcherAccessory *)v8 setIsInputSource:1];
  }

  return v8;
}

@end