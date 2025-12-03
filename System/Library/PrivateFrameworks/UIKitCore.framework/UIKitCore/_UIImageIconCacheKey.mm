@interface _UIImageIconCacheKey
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation _UIImageIconCacheKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      appearance = v7->_appearance;
      v9 = self->_appearance;
      v10 = appearance;
      v11 = v10;
      if (v9 == v10)
      {
      }

      else
      {
        if (!v9 || !v10)
        {

LABEL_13:
          v13 = 0;
          goto LABEL_14;
        }

        v12 = [(_UISystemIconAppearance *)v9 isEqual:v10];

        if (!v12)
        {
          goto LABEL_13;
        }
      }

      v13 = self->_userInterfaceStyle == v7->_userInterfaceStyle;
LABEL_14:

      goto LABEL_15;
    }

    v13 = 0;
  }

LABEL_15:

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_appearance withName:@"appearance" skipIfNil:0];
  v5 = [v3 appendInt:LODWORD(self->_userInterfaceStyle) withName:@"userInterfaceStyle"];
  build = [v3 build];

  return build;
}

@end