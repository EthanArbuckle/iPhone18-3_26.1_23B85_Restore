@interface _UIMenuLeafAlternate
+ (id)alternateWithModifierFlags:(int64_t)a3 menuLeaf:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_UIMenuLeafAlternate)initWithCoder:(id)a3;
- (_UIMenuLeafAlternate)initWithModifierFlags:(int64_t)a3 menuLeaf:(id)a4;
- (id)_alternateWithMenuLeaf:(id)a3;
- (id)alternateLeafWithBaseLeaf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMenuLeafAlternate

+ (id)alternateWithModifierFlags:(int64_t)a3 menuLeaf:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithModifierFlags:a3 menuLeaf:v6];

  return v7;
}

- (_UIMenuLeafAlternate)initWithModifierFlags:(int64_t)a3 menuLeaf:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UIMenuLeafAlternate;
  v8 = [(_UIMenuLeafAlternate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_modifierFlags = a3;
    objc_storeStrong(&v8->_menuLeaf, a4);
  }

  return v9;
}

- (id)alternateLeafWithBaseLeaf:(id)a3
{
  v4 = [a3 _keyboardShortcut];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 shortcutAddingModifierFlags:self->_modifierFlags];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(UIMenuLeaf *)self->_menuLeaf _menuLeafWithKeyboardShortcut:v6];

  return v7;
}

- (id)_alternateWithMenuLeaf:(id)a3
{
  v4 = a3;
  v5 = [(_UIMenuLeafAlternate *)self copy];
  v6 = v5[2];
  v5[2] = v4;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  modifierFlags = self->_modifierFlags;
  v5 = a3;
  [v5 encodeInteger:modifierFlags forKey:@"ModifierFlags"];
  [v5 encodeObject:self->_menuLeaf forKey:@"MenuLeaf"];
}

- (_UIMenuLeafAlternate)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIMenuLeafAlternate;
  v5 = [(_UIMenuLeafAlternate *)&v10 init];
  if (v5)
  {
    v5->_modifierFlags = [v4 decodeIntegerForKey:@"ModifierFlags"];
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"MenuLeaf"];
    menuLeaf = v5->_menuLeaf;
    v5->_menuLeaf = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = v7;
      if (self->_modifierFlags == v7->_modifierFlags)
      {
        menuLeaf = self->_menuLeaf;
        v10 = v7->_menuLeaf;
        v11 = menuLeaf;
        v12 = v10;
        v13 = v12;
        if (v11 == v12)
        {
          v14 = 1;
        }

        else
        {
          v14 = 0;
          if (v11 && v12)
          {
            v14 = [(UIMenuLeaf *)v11 isEqual:v12];
          }
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_UIMenuLeafAlternate alloc];
  modifierFlags = self->_modifierFlags;
  menuLeaf = self->_menuLeaf;

  return [(_UIMenuLeafAlternate *)v4 initWithModifierFlags:modifierFlags menuLeaf:menuLeaf];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = _UIKeyModiferFlagsDescription(self->_modifierFlags);
  [v3 appendString:v4 withName:@"modifierFlags"];

  v5 = [v3 appendObject:self->_menuLeaf withName:@"menuLeaf"];
  v6 = [v3 build];

  return v6;
}

@end