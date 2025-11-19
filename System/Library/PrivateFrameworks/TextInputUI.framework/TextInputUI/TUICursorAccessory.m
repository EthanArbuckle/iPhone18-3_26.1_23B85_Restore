@interface TUICursorAccessory
- (BOOL)isEqual:(id)a3;
- (TUICursorAccessory)initWithCoder:(id)a3;
- (TUICursorAccessory)initWithIdentifier:(id)a3 actionHandler:(id)a4;
- (id)additionalComponents;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUICursorAccessory

- (unint64_t)hash
{
  v2 = [(TUICursorAccessory *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = TUICursorAccessory;
  v3 = [(TUICursorAccessory *)&v8 description];
  v4 = [(TUICursorAccessory *)self additionalComponents];
  if ([v4 count])
  {
    v5 = [v4 componentsJoinedByString:{@", "}];
    v6 = [v3 stringByAppendingFormat:@" %@", v5];

    v3 = v6;
  }

  return v3;
}

- (id)additionalComponents
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(TUICursorAccessory *)self identifier];
  v6 = [v4 stringWithFormat:@"identifier = %@", v5];
  [v3 addObject:v6];

  v7 = [(TUICursorAccessory *)self actionHandler];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(TUICursorAccessory *)self actionHandler];
    v10 = _Block_copy(v9);
    v11 = [v8 stringWithFormat:@"actionHandler = %@", v10];
    [v3 addObject:v11];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = self == v4 || [(NSString *)self->_identifier isEqualToString:v4->_identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUICursorAccessory *)self identifier];
  [v4 encodeObject:v5 forKey:@"TUIndentifierCodingKey"];
}

- (TUICursorAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TUICursorAccessory;
  v5 = [(TUICursorAccessory *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TUIndentifierCodingKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (TUICursorAccessory)initWithIdentifier:(id)a3 actionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = TUICursorAccessory;
  v8 = [(TUICursorAccessory *)&v15 init];
  if (v8)
  {
    if (v6)
    {
      v9 = [v6 copy];
      identifier = v8->_identifier;
      v8->_identifier = v9;
    }

    else
    {
      v11 = MEMORY[0x1E696AEC0];
      identifier = [MEMORY[0x1E696AFB0] UUID];
      v12 = [v11 stringWithFormat:@"com.apple.action.cursoraccessory.%@", identifier];
      v13 = v8->_identifier;
      v8->_identifier = v12;
    }

    [(TUICursorAccessory *)v8 setActionHandler:v7];
  }

  return v8;
}

@end