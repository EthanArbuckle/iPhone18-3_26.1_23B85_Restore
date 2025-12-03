@interface TUICursorAccessory
- (BOOL)isEqual:(id)equal;
- (TUICursorAccessory)initWithCoder:(id)coder;
- (TUICursorAccessory)initWithIdentifier:(id)identifier actionHandler:(id)handler;
- (id)additionalComponents;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUICursorAccessory

- (unint64_t)hash
{
  identifier = [(TUICursorAccessory *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = TUICursorAccessory;
  v3 = [(TUICursorAccessory *)&v8 description];
  additionalComponents = [(TUICursorAccessory *)self additionalComponents];
  if ([additionalComponents count])
  {
    v5 = [additionalComponents componentsJoinedByString:{@", "}];
    v6 = [v3 stringByAppendingFormat:@" %@", v5];

    v3 = v6;
  }

  return v3;
}

- (id)additionalComponents
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E696AEC0];
  identifier = [(TUICursorAccessory *)self identifier];
  v6 = [v4 stringWithFormat:@"identifier = %@", identifier];
  [array addObject:v6];

  actionHandler = [(TUICursorAccessory *)self actionHandler];

  if (actionHandler)
  {
    v8 = MEMORY[0x1E696AEC0];
    actionHandler2 = [(TUICursorAccessory *)self actionHandler];
    v10 = _Block_copy(actionHandler2);
    v11 = [v8 stringWithFormat:@"actionHandler = %@", v10];
    [array addObject:v11];
  }

  return array;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    v6 = self == equalCopy || [(NSString *)self->_identifier isEqualToString:equalCopy->_identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(TUICursorAccessory *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"TUIndentifierCodingKey"];
}

- (TUICursorAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TUICursorAccessory;
  v5 = [(TUICursorAccessory *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TUIndentifierCodingKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (TUICursorAccessory)initWithIdentifier:(id)identifier actionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v15.receiver = self;
  v15.super_class = TUICursorAccessory;
  v8 = [(TUICursorAccessory *)&v15 init];
  if (v8)
  {
    if (identifierCopy)
    {
      v9 = [identifierCopy copy];
      identifier = v8->_identifier;
      v8->_identifier = v9;
    }

    else
    {
      v11 = MEMORY[0x1E696AEC0];
      identifier = [MEMORY[0x1E696AFB0] UUID];
      identifier = [v11 stringWithFormat:@"com.apple.action.cursoraccessory.%@", identifier];
      v13 = v8->_identifier;
      v8->_identifier = identifier;
    }

    [(TUICursorAccessory *)v8 setActionHandler:handlerCopy];
  }

  return v8;
}

@end