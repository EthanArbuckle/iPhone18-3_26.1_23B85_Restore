@interface UIContentUnavailableButtonProperties
- (BOOL)isEqual:(id)equal;
- (CGSize)minimumSize;
- (UIContentUnavailableButtonProperties)init;
- (UIContentUnavailableButtonProperties)initWithCoder:(id)coder;
- (__CFString)_shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (uint64_t)_hasButton;
- (uint64_t)_isEqualToProperties:(uint64_t)properties;
- (uint64_t)_isEqualToPropertiesQuick:(uint64_t)quick;
- (void)_applyPropertiesFromDefaultProperties:(uint64_t)properties;
- (void)_applyToButton:(uint64_t)button;
- (void)encodeWithCoder:(id)coder;
- (void)setMenu:(UIMenu *)menu;
- (void)setPrimaryAction:(UIAction *)primaryAction;
@end

@implementation UIContentUnavailableButtonProperties

- (UIContentUnavailableButtonProperties)init
{
  v3 = +[UITraitCollection _fallbackTraitCollection];
  v4 = _UIContentUnavailableConstantsForTraitCollection(v3);
  v5 = [v4 defaultButtonConfigurationForTraitCollection:v3];
  v6 = v5;
  if (self)
  {
    v11.receiver = self;
    v11.super_class = UIContentUnavailableButtonProperties;
    v7 = [(UIContentUnavailableButtonProperties *)&v11 init];
    self = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_configuration, v5);
      v8 = [v6 copy];
      defaultConfiguration = self->_defaultConfiguration;
      self->_defaultConfiguration = v8;

      self->_enabled = 1;
      self->_role = 0;
      self->_minimumSize = *MEMORY[0x1E695F060];
    }
  }

  return self;
}

- (uint64_t)_hasButton
{
  if (!self)
  {
    return 0;
  }

  v1 = *(self + 16);
  if ([v1 _hasTitle] & 1) != 0 || (objc_msgSend(v1, "_hasSubtitle") & 1) != 0 || (objc_msgSend(v1, "_hasImage"))
  {
    showsActivityIndicator = 1;
  }

  else
  {
    showsActivityIndicator = [v1 showsActivityIndicator];
  }

  return showsActivityIndicator;
}

- (UIContentUnavailableButtonProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = UIContentUnavailableButtonProperties;
  v5 = [(UIContentUnavailableButtonProperties *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAction"];
    primaryAction = v5->_primaryAction;
    v5->_primaryAction = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"menu"];
    menu = v5->_menu;
    v5->_menu = v10;

    v5->_enabled = [coderCopy decodeBoolForKey:@"enabled"];
    v5->_role = [coderCopy decodeIntegerForKey:@"role"];
    [coderCopy decodeCGSizeForKey:@"minimumSize"];
    v5->_minimumSize.width = v12;
    v5->_minimumSize.height = v13;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_defaultConfiguration"];
    defaultConfiguration = v5->_defaultConfiguration;
    v5->_defaultConfiguration = v14;

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"enabled"];
    *&v5->_buttonFlags = *&v5->_buttonFlags & 0xFE | [coderCopy decodeBoolForKey:v16];

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"role"];
    if ([coderCopy decodeBoolForKey:v17])
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    *&v5->_buttonFlags = *&v5->_buttonFlags & 0xFD | v18;

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"minimumSize"];
    if ([coderCopy decodeBoolForKey:v19])
    {
      v20 = 4;
    }

    else
    {
      v20 = 0;
    }

    *&v5->_buttonFlags = *&v5->_buttonFlags & 0xFB | v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  configuration = self->_configuration;
  coderCopy = coder;
  [coderCopy encodeObject:configuration forKey:@"configuration"];
  [coderCopy encodeObject:self->_primaryAction forKey:@"primaryAction"];
  [coderCopy encodeObject:self->_menu forKey:@"menu"];
  [coderCopy encodeBool:self->_enabled forKey:@"enabled"];
  [coderCopy encodeInteger:self->_role forKey:@"role"];
  [coderCopy encodeCGSize:@"minimumSize" forKey:{self->_minimumSize.width, self->_minimumSize.height}];
  [coderCopy encodeObject:self->_defaultConfiguration forKey:@"_defaultConfiguration"];
  buttonFlags = self->_buttonFlags;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"enabled"];
  [coderCopy encodeBool:buttonFlags & 1 forKey:v7];

  v8 = (*&self->_buttonFlags >> 1) & 1;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"role"];
  [coderCopy encodeBool:v8 forKey:v9];

  v10 = (*&self->_buttonFlags >> 2) & 1;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"minimumSize"];
  [coderCopy encodeBool:v10 forKey:v11];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v4)
  {
    v5 = [(UIButtonConfiguration *)self->_configuration copy];
    v6 = *(v4 + 16);
    *(v4 + 16) = v5;

    v7 = [(UIAction *)self->_primaryAction copy];
    v8 = *(v4 + 24);
    *(v4 + 24) = v7;

    v9 = [(UIMenu *)self->_menu copy];
    v10 = *(v4 + 32);
    *(v4 + 32) = v9;

    *(v4 + 12) = self->_enabled;
    *(v4 + 40) = self->_role;
    *(v4 + 56) = self->_minimumSize;
    v11 = [(UIButtonConfiguration *)self->_defaultConfiguration copy];
    v12 = *(v4 + 48);
    *(v4 + 48) = v11;

    *(v4 + 8) = self->_buttonFlags;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(UIContentUnavailableButtonProperties *)self _isEqualToProperties:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_isEqualToProperties:(uint64_t)properties
{
  v3 = a2;
  if (!properties)
  {
    goto LABEL_23;
  }

  if (([(UIContentUnavailableButtonProperties *)properties _isEqualToPropertiesQuick:v3]& 1) != 0)
  {
    properties = 1;
    goto LABEL_23;
  }

  v4 = *(v3 + 2);
  v5 = *(properties + 16);
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    if (!v5 || !v6)
    {
      goto LABEL_21;
    }

    v8 = [v5 isEqual:v6];

    if (!v8)
    {
      goto LABEL_22;
    }
  }

  v9 = *(v3 + 3);
  v5 = *(properties + 24);
  v10 = v9;
  v7 = v10;
  if (v5 == v10)
  {

    goto LABEL_16;
  }

  if (!v5 || !v10)
  {
LABEL_21:

    goto LABEL_22;
  }

  v11 = [v5 isEqual:v10];

  if (!v11)
  {
    goto LABEL_22;
  }

LABEL_16:
  v12 = *(v3 + 4);
  v5 = *(properties + 32);
  v13 = v12;
  v7 = v13;
  if (v5 == v13)
  {

    goto LABEL_25;
  }

  if (!v5 || !v13)
  {
    goto LABEL_21;
  }

  v14 = [v5 isEqual:v13];

  if (!v14)
  {
LABEL_22:
    properties = 0;
    goto LABEL_23;
  }

LABEL_25:
  if (*(properties + 12) != v3[12] || *(properties + 40) != *(v3 + 5))
  {
    goto LABEL_22;
  }

  properties = *(properties + 64) == *(v3 + 8) && *(properties + 56) == *(v3 + 7);
LABEL_23:

  return properties;
}

- (uint64_t)_isEqualToPropertiesQuick:(uint64_t)quick
{
  v3 = a2;
  v4 = v3;
  if (!quick)
  {
    goto LABEL_23;
  }

  if (v3 == quick)
  {
    quick = 1;
    goto LABEL_23;
  }

  v5 = v3[2];
  v6 = *(quick + 16);
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (!v6 || !v7)
    {
      goto LABEL_21;
    }

    v9 = [v6 isEqual:v7];

    if (!v9)
    {
      goto LABEL_22;
    }
  }

  v10 = *(v4 + 3);
  v6 = *(quick + 24);
  v11 = v10;
  v8 = v11;
  if (v6 == v11)
  {

    goto LABEL_16;
  }

  if (!v6 || !v11)
  {
LABEL_21:

    goto LABEL_22;
  }

  v12 = [v6 isEqual:v11];

  if (!v12)
  {
    goto LABEL_22;
  }

LABEL_16:
  v13 = *(v4 + 4);
  v6 = *(quick + 32);
  v14 = v13;
  v8 = v14;
  if (v6 == v14)
  {

    goto LABEL_25;
  }

  if (!v6 || !v14)
  {
    goto LABEL_21;
  }

  v15 = [v6 isEqual:v14];

  if (!v15)
  {
LABEL_22:
    quick = 0;
    goto LABEL_23;
  }

LABEL_25:
  if (*(quick + 12) != *(v4 + 12) || *(quick + 40) != *(v4 + 5))
  {
    goto LABEL_22;
  }

  quick = *(quick + 64) == v4[8] && *(quick + 56) == v4[7];
LABEL_23:

  return quick;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(UIButtonConfiguration *)self->_configuration description];
  v6 = [v4 stringWithFormat:@"configuration = %@", v5];
  [v3 addObject:v6];

  primaryAction = self->_primaryAction;
  if (primaryAction)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(UIAction *)primaryAction description];
    v10 = [v8 stringWithFormat:@"primaryAction = %@", v9];
    [v3 addObject:v10];
  }

  menu = self->_menu;
  if (menu)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(UIMenu *)menu description];
    v14 = [v12 stringWithFormat:@"menu = %@", v13];
    [v3 addObject:v14];
  }

  if (!self->_enabled)
  {
    [v3 addObject:@"enabled = NO"];
  }

  role = self->_role;
  if (role <= 3)
  {
    [v3 addObject:off_1E71074F8[role]];
  }

  width = self->_minimumSize.width;
  height = self->_minimumSize.height;
  if (*MEMORY[0x1E695F060] != width || *(MEMORY[0x1E695F060] + 8) != height)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = NSStringFromCGSize(*&width);
    v21 = [v19 stringWithFormat:@"minimumSize = %@", v20];
    [v3 addObject:v21];
  }

  if ([v3 count])
  {
    v22 = [v3 componentsJoinedByString:@" "];;
  }

  else
  {
    v22 = @"none";
  }

  v23 = MEMORY[0x1E696AEC0];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v26 = [v23 stringWithFormat:@"<%@: %p %@>", v25, self, v22];;

  return v26;
}

- (__CFString)_shortDescription
{
  if (self)
  {
    selfCopy = self;
    if ([(UIContentUnavailableButtonProperties *)self _hasButton])
    {
      self = [selfCopy->data description];
    }

    else
    {
      self = @"none";
    }

    v1 = vars8;
  }

  return self;
}

- (void)_applyToButton:(uint64_t)button
{
  v3 = a2;
  if (button)
  {
    v6 = v3;
    [v3 setConfiguration:*(button + 16)];
    [v6 removeTarget:0 action:0 forControlEvents:0x2000];
    v4 = *(button + 24);
    if (v4)
    {
      [v6 addAction:v4 forControlEvents:0x2000];
    }

    [v6 setMenu:*(button + 32)];
    if (*(button + 32))
    {
      v5 = *(button + 24) == 0;
    }

    else
    {
      v5 = 0;
    }

    [v6 setShowsMenuAsPrimaryAction:v5];
    [v6 setEnabled:*(button + 12)];
    [v6 setRole:*(button + 40)];
    v3 = v6;
  }
}

- (void)_applyPropertiesFromDefaultProperties:(uint64_t)properties
{
  v3 = a2;
  if (properties)
  {
    v9 = v3;
    if ([*(properties + 16) isEqual:*(properties + 48)])
    {
      if (v9)
      {
        v4 = *(v9 + 2);
      }

      else
      {
        v4 = 0;
      }

      objc_storeStrong((properties + 16), v4);
    }

    v5 = *(properties + 8);
    v3 = v9;
    if (v5)
    {
      if ((*(properties + 8) & 2) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v9)
      {
        v6 = v9[12];
      }

      else
      {
        v6 = 0;
      }

      *(properties + 12) = v6 & 1;
      if ((v5 & 2) != 0)
      {
LABEL_8:
        if ((v5 & 4) != 0)
        {
          goto LABEL_19;
        }

LABEL_16:
        if (v9)
        {
          v8 = *(v9 + 56);
        }

        else
        {
          v8 = 0uLL;
        }

        *(properties + 56) = v8;
        goto LABEL_19;
      }
    }

    if (v9)
    {
      v7 = *(v9 + 5);
    }

    else
    {
      v7 = 0;
    }

    *(properties + 40) = v7;
    if ((v5 & 4) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_19:
}

- (void)setPrimaryAction:(UIAction *)primaryAction
{
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, a2, primaryAction, 24);
  }
}

- (void)setMenu:(UIMenu *)menu
{
  if (self)
  {
    objc_setProperty_nonatomic_copy(self, a2, menu, 32);
  }
}

- (CGSize)minimumSize
{
  width = self->_minimumSize.width;
  height = self->_minimumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end