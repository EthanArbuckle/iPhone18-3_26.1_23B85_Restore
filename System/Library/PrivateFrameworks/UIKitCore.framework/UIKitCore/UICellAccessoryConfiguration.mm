@interface UICellAccessoryConfiguration
- (BOOL)isEqual:(id)equal;
- (UICellAccessoryConfiguration)init;
- (void)setLeadingAccessories:(id)accessories;
- (void)setTrailingAccessories:(id)accessories;
@end

@implementation UICellAccessoryConfiguration

- (UICellAccessoryConfiguration)init
{
  v7.receiver = self;
  v7.super_class = UICellAccessoryConfiguration;
  v2 = [(UICellAccessoryConfiguration *)&v7 init];
  leadingAccessories = v2->_leadingAccessories;
  v4 = MEMORY[0x1E695E0F0];
  v2->_leadingAccessories = MEMORY[0x1E695E0F0];

  trailingAccessories = v2->_trailingAccessories;
  v2->_trailingAccessories = v4;

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    leadingAccessories = [(UICellAccessoryConfiguration *)self leadingAccessories];
    leadingAccessories2 = [v5 leadingAccessories];
    v8 = leadingAccessories;
    v9 = leadingAccessories2;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      LOBYTE(v11) = 0;
      v12 = v9;
      v13 = v8;
      if (!v8 || !v9)
      {
LABEL_15:

LABEL_16:
        goto LABEL_17;
      }

      v11 = [v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_16;
      }
    }

    trailingAccessories = [(UICellAccessoryConfiguration *)self trailingAccessories];
    trailingAccessories2 = [v5 trailingAccessories];
    v13 = trailingAccessories;
    v16 = trailingAccessories2;
    v12 = v16;
    if (v13 == v16)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = 0;
      if (v13 && v16)
      {
        LOBYTE(v11) = [v13 isEqual:v16];
      }
    }

    goto LABEL_15;
  }

  LOBYTE(v11) = 0;
LABEL_17:

  return v11;
}

- (void)setLeadingAccessories:(id)accessories
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [accessories copy];
  leadingAccessories = self->_leadingAccessories;
  self->_leadingAccessories = v4;

  v6 = self->_leadingAccessories;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v11 + 1) + 8 * i) alwaysNeedsLayout])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  self->_leadingAlwaysNeedsLayout = v8;
}

- (void)setTrailingAccessories:(id)accessories
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = [accessories copy];
  trailingAccessories = self->_trailingAccessories;
  self->_trailingAccessories = v4;

  v6 = self->_trailingAccessories;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v11 + 1) + 8 * i) alwaysNeedsLayout])
        {
          LOBYTE(v8) = 1;
          goto LABEL_11;
        }
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  self->_trailingAlwaysNeedsLayout = v8;
}

@end