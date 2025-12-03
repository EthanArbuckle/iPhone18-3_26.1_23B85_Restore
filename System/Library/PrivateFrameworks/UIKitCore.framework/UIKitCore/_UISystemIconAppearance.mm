@interface _UISystemIconAppearance
+ (id)appearanceWithSBSHomeScreenIconStyleConfiguration:(uint64_t)configuration;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (void)applyAppearanceToDescriptor:(uint64_t)descriptor userInterfaceStyle:;
@end

@implementation _UISystemIconAppearance

+ (id)appearanceWithSBSHomeScreenIconStyleConfiguration:(uint64_t)configuration
{
  v2 = a2;
  objc_opt_self();
  v3 = objc_opt_new();
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  *(v3 + 16) |= 1u;

  return v3;
}

- (void)applyAppearanceToDescriptor:(uint64_t)descriptor userInterfaceStyle:
{
  v5 = a2;
  if (self && (*(self + 16) & 1) != 0)
  {
    v6 = descriptor == 2;
    v18 = v5;
    v7 = *(self + 8);
    [v18 setAppearance:{objc_msgSend(v7, "iconServicesAppearanceUsingDarkInterfaceStyle:", v6)}];
    [v18 setAppearanceVariant:{objc_msgSend(v7, "iconServicesAppearanceVariantUsingDarkInterfaceStyle:", v6)}];
    tintColor = [v7 tintColor];

    v9 = objc_alloc(MEMORY[0x1E69A8968]);
    [tintColor red];
    v11 = v10;
    [tintColor green];
    v13 = v12;
    [tintColor blue];
    v15 = v14;
    [tintColor alpha];
    v17 = [v9 initWithRed:v11 green:v13 blue:v15 alpha:v16];
    [v18 setTintColor:v17];

    v5 = v18;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      v8 = v7;
      if (((*&v7->_flags ^ *&self->_flags) & 3) != 0)
      {
        v9 = 0;
      }

      else
      {
        configuration = self->_configuration;
        v11 = v7->_configuration;
        v12 = configuration;
        v13 = v11;
        v14 = v13;
        if (v12 == v13)
        {
          v9 = 1;
        }

        else
        {
          v9 = 0;
          if (v12 && v13)
          {
            v9 = [v12 isEqual:v13];
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = v3;
  if (*&self->_flags)
  {
    v5 = @"sbsHomeScreenIconStyleConfiguration";
  }

  else
  {
    if ((*&self->_flags & 2) == 0)
    {
      goto LABEL_6;
    }

    v5 = @"slsIconAppearanceConfiguration";
  }

  v6 = [v3 appendObject:self->_configuration withName:v5];
LABEL_6:
  build = [v4 build];

  return build;
}

@end