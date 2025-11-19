@interface _UICellAccessory
+ (id)accessoryWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UICellAccessory)init;
- (id)description;
@end

@implementation _UICellAccessory

- (_UICellAccessory)init
{
  v3.receiver = self;
  v3.super_class = _UICellAccessory;
  result = [(_UICellAccessory *)&v3 init];
  if (result)
  {
    result->_reservedLayoutWidth = 0.0;
  }

  return result;
}

+ (id)accessoryWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 setIdentifier:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = [v4 identifier];
    v7 = identifier;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v8)
      {
        v10 = [(NSString *)v7 isEqual:v8];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(sel_identifier);
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [UIDescriptionBuilder descriptionForObject:self keys:v4];

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

@end