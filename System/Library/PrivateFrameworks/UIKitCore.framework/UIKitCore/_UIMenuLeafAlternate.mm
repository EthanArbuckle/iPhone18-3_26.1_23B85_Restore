@interface _UIMenuLeafAlternate
+ (id)alternateWithModifierFlags:(int64_t)flags menuLeaf:(id)leaf;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_UIMenuLeafAlternate)initWithCoder:(id)coder;
- (_UIMenuLeafAlternate)initWithModifierFlags:(int64_t)flags menuLeaf:(id)leaf;
- (id)_alternateWithMenuLeaf:(id)leaf;
- (id)alternateLeafWithBaseLeaf:(id)leaf;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIMenuLeafAlternate

+ (id)alternateWithModifierFlags:(int64_t)flags menuLeaf:(id)leaf
{
  leafCopy = leaf;
  v7 = [[self alloc] initWithModifierFlags:flags menuLeaf:leafCopy];

  return v7;
}

- (_UIMenuLeafAlternate)initWithModifierFlags:(int64_t)flags menuLeaf:(id)leaf
{
  leafCopy = leaf;
  v11.receiver = self;
  v11.super_class = _UIMenuLeafAlternate;
  v8 = [(_UIMenuLeafAlternate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_modifierFlags = flags;
    objc_storeStrong(&v8->_menuLeaf, leaf);
  }

  return v9;
}

- (id)alternateLeafWithBaseLeaf:(id)leaf
{
  _keyboardShortcut = [leaf _keyboardShortcut];
  if (_keyboardShortcut)
  {
    v5 = _keyboardShortcut;
    v6 = [_keyboardShortcut shortcutAddingModifierFlags:self->_modifierFlags];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(UIMenuLeaf *)self->_menuLeaf _menuLeafWithKeyboardShortcut:v6];

  return v7;
}

- (id)_alternateWithMenuLeaf:(id)leaf
{
  leafCopy = leaf;
  v5 = [(_UIMenuLeafAlternate *)self copy];
  v6 = v5[2];
  v5[2] = leafCopy;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  modifierFlags = self->_modifierFlags;
  coderCopy = coder;
  [coderCopy encodeInteger:modifierFlags forKey:@"ModifierFlags"];
  [coderCopy encodeObject:self->_menuLeaf forKey:@"MenuLeaf"];
}

- (_UIMenuLeafAlternate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _UIMenuLeafAlternate;
  v5 = [(_UIMenuLeafAlternate *)&v10 init];
  if (v5)
  {
    v5->_modifierFlags = [coderCopy decodeIntegerForKey:@"ModifierFlags"];
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"MenuLeaf"];
    menuLeaf = v5->_menuLeaf;
    v5->_menuLeaf = v7;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
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
  build = [v3 build];

  return build;
}

@end