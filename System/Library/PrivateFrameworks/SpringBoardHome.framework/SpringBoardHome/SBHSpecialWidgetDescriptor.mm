@interface SBHSpecialWidgetDescriptor
- (BOOL)isEqual:(id)equal;
- (SBHSpecialWidgetDescriptor)initWithCoder:(id)coder;
- (id)_initWithType:(unint64_t)type supportedSizeClasses:(unint64_t)classes;
- (id)accentColor;
- (id)backgroundColor;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBHSpecialWidgetDescriptor

- (id)_initWithType:(unint64_t)type supportedSizeClasses:(unint64_t)classes
{
  v7 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:&stru_1F3D472A8 containerBundleIdentifier:0 deviceIdentifier:0];
  v21.receiver = self;
  v21.super_class = SBHSpecialWidgetDescriptor;
  v8 = [(SBHSpecialWidgetDescriptor *)&v21 initWithExtensionIdentity:v7 kind:&stru_1F3D472A8 supportedFamilies:classes intentType:0];
  if (v8)
  {
    v9 = type - 1;
    if (type - 1 > 5)
    {
      v12 = @"None";
    }

    else
    {
      v10 = off_1E808C710[v9];
      v11 = SBHBundle();
      v12 = [v11 localizedStringForKey:v10 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    }

    v13 = [(__CFString *)v12 copy];
    displayName = v8->_displayName;
    v8->_displayName = v13;

    if (v9 > 5)
    {
      v17 = @"None";
    }

    else
    {
      v15 = off_1E808C740[v9];
      v16 = SBHBundle();
      v17 = [v16 localizedStringForKey:v15 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    }

    v18 = [(__CFString *)v17 copy];
    description = v8->_description;
    v8->_description = v18;

    v8->_type = type;
  }

  return v8;
}

- (id)backgroundColor
{
  if (self->_type == 5)
  {
    systemTealColor = [MEMORY[0x1E69DC888] systemTealColor];
  }

  else
  {
    systemTealColor = 0;
  }

  return systemTealColor;
}

- (id)accentColor
{
  if (self->_type == 5)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    whiteColor = 0;
  }

  return whiteColor;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9 = [v8 type], v9 == -[SBHSpecialWidgetDescriptor type](self, "type")))
  {
    v12.receiver = self;
    v12.super_class = SBHSpecialWidgetDescriptor;
    v10 = [(SBHSpecialWidgetDescriptor *)&v12 isEqual:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SBHSpecialWidgetDescriptor;
  v3 = [(SBHSpecialWidgetDescriptor *)&v7 hash];
  displayName = [(SBHSpecialWidgetDescriptor *)self displayName];
  v5 = [displayName hash];

  return v5 ^ v3;
}

- (id)succinctDescriptionBuilder
{
  v5.receiver = self;
  v5.super_class = SBHSpecialWidgetDescriptor;
  succinctDescriptionBuilder = [(SBHSpecialWidgetDescriptor *)&v5 succinctDescriptionBuilder];
  [succinctDescriptionBuilder appendString:self->_displayName withName:@"displayName"];
  [succinctDescriptionBuilder appendString:self->_description withName:@"description"];

  return succinctDescriptionBuilder;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v6.receiver = self;
  v6.super_class = SBHSpecialWidgetDescriptor;
  v4 = [(SBHSpecialWidgetDescriptor *)&v6 descriptionBuilderWithMultilinePrefix:prefix];
  [v4 appendString:self->_displayName withName:@"displayName"];
  [v4 appendString:self->_description withName:@"description"];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SBHSpecialWidgetDescriptor;
  coderCopy = coder;
  [(SBHSpecialWidgetDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
}

- (SBHSpecialWidgetDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SBHSpecialWidgetDescriptor;
  v5 = [(SBHSpecialWidgetDescriptor *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

@end