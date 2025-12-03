@interface _UIContentViewImageViewConfiguration
- (BOOL)_isEqualToConfiguration:(uint64_t)configuration;
- (BOOL)_isEqualToConfigurationQuick:(uint64_t)quick;
- (BOOL)isEqual:(id)equal;
- (CGSize)maximumSize;
- (CGSize)reservedLayoutSize;
- (_UIContentViewImageViewConfiguration)init;
- (_UIContentViewImageViewConfiguration)initWithCoder:(id)coder;
- (__CFString)_shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_applyPropertiesFromDefaultConfiguration:(uint64_t)configuration;
- (void)applyToImageView:(id)view;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIContentViewImageViewConfiguration

- (_UIContentViewImageViewConfiguration)init
{
  v3.receiver = self;
  v3.super_class = _UIContentViewImageViewConfiguration;
  return [(_UIContentViewImageViewConfiguration *)&v3 init];
}

- (_UIContentViewImageViewConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = _UIContentViewImageViewConfiguration;
  v5 = [(_UIContentViewImageViewConfiguration *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"highlightedImage"];
    highlightedImage = v5->_highlightedImage;
    v5->_highlightedImage = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredSymbolConfiguration"];
    preferredSymbolConfiguration = v5->_preferredSymbolConfiguration;
    v5->_preferredSymbolConfiguration = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v12;

    [coderCopy decodeDoubleForKey:@"cornerRadius"];
    v5->_cornerRadius = v14;
    [coderCopy decodeCGSizeForKey:@"reservedLayoutSize"];
    v5->_reservedLayoutSize.width = v15;
    v5->_reservedLayoutSize.height = v16;
    [coderCopy decodeCGSizeForKey:@"maximumSize"];
    v5->_maximumSize.width = v17;
    v5->_maximumSize.height = v18;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"image"];
    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFE | [coderCopy decodeBoolForKey:v19];

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"preferredSymbolConfiguration"];
    if ([coderCopy decodeBoolForKey:v20])
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFD | v21;

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"tintColor"];
    if ([coderCopy decodeBoolForKey:v22])
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFB | v23;

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"cornerRadius"];
    if ([coderCopy decodeBoolForKey:v24])
    {
      v25 = 8;
    }

    else
    {
      v25 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xF7 | v25;

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"reservedLayoutSize"];
    if ([coderCopy decodeBoolForKey:v26])
    {
      v27 = 16;
    }

    else
    {
      v27 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xEF | v27;

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"maximumSize"];
    if ([coderCopy decodeBoolForKey:v28])
    {
      v29 = 32;
    }

    else
    {
      v29 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xDF | v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  image = self->_image;
  coderCopy = coder;
  [coderCopy encodeObject:image forKey:@"image"];
  [coderCopy encodeObject:self->_highlightedImage forKey:@"highlightedImage"];
  [coderCopy encodeObject:self->_preferredSymbolConfiguration forKey:@"preferredSymbolConfiguration"];
  [coderCopy encodeObject:self->_tintColor forKey:@"tintColor"];
  [coderCopy encodeDouble:@"cornerRadius" forKey:self->_cornerRadius];
  [coderCopy encodeCGSize:@"reservedLayoutSize" forKey:{self->_reservedLayoutSize.width, self->_reservedLayoutSize.height}];
  [coderCopy encodeCGSize:@"maximumSize" forKey:{self->_maximumSize.width, self->_maximumSize.height}];
  LOBYTE(image) = self->_configurationFlags;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"image"];
  [coderCopy encodeBool:image & 1 forKey:v6];

  v7 = (*&self->_configurationFlags >> 1) & 1;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"preferredSymbolConfiguration"];
  [coderCopy encodeBool:v7 forKey:v8];

  v9 = (*&self->_configurationFlags >> 2) & 1;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"tintColor"];
  [coderCopy encodeBool:v9 forKey:v10];

  v11 = (*&self->_configurationFlags >> 3) & 1;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"cornerRadius"];
  [coderCopy encodeBool:v11 forKey:v12];

  v13 = (*&self->_configurationFlags >> 4) & 1;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"reservedLayoutSize"];
  [coderCopy encodeBool:v13 forKey:v14];

  v15 = (*&self->_configurationFlags >> 5) & 1;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"maximumSize"];
  [coderCopy encodeBool:v15 forKey:v16];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 16), self->_image);
    objc_storeStrong((v5 + 48), self->_highlightedImage);
    v6 = [(UIImageSymbolConfiguration *)self->_preferredSymbolConfiguration copy];
    v7 = *(v5 + 24);
    *(v5 + 24) = v6;

    objc_storeStrong((v5 + 32), self->_tintColor);
    *(v5 + 40) = self->_cornerRadius;
    *(v5 + 56) = self->_reservedLayoutSize;
    *(v5 + 72) = self->_maximumSize;
    *(v5 + 8) = self->_configurationFlags;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_UIContentViewImageViewConfiguration *)self _isEqualToConfiguration:v5];
  }

  return v6;
}

- (BOOL)_isEqualToConfiguration:(uint64_t)configuration
{
  v3 = a2;
  if (!configuration)
  {
    goto LABEL_22;
  }

  if ([(_UIContentViewImageViewConfiguration *)configuration _isEqualToConfigurationQuick:v3])
  {
    v4 = 1;
    goto LABEL_23;
  }

  v5 = *(v3 + 2);
  v6 = *(configuration + 16);
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

  v10 = *(v3 + 6);
  v6 = *(configuration + 48);
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
  v13 = *(v3 + 4);
  v6 = *(configuration + 32);
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
    v4 = 0;
    goto LABEL_23;
  }

LABEL_25:
  if (*(configuration + 40) != *(v3 + 5))
  {
    goto LABEL_22;
  }

  v4 = 0;
  if (*(configuration + 56) == *(v3 + 7) && *(configuration + 64) == *(v3 + 8))
  {
    v4 = *(configuration + 80) == *(v3 + 10) && *(configuration + 72) == *(v3 + 9);
  }

LABEL_23:

  return v4;
}

- (BOOL)_isEqualToConfigurationQuick:(uint64_t)quick
{
  v3 = a2;
  v4 = v3;
  if (!quick)
  {
    goto LABEL_5;
  }

  if (v3 == quick)
  {
    v5 = 1;
    goto LABEL_7;
  }

  if (*(quick + 16) != v3[2] || *(quick + 48) != v3[6])
  {
    goto LABEL_5;
  }

  v7 = v3[3];
  v8 = *(quick + 24);
  v9 = v7;
  v10 = v9;
  if (v8 != v9)
  {
    if (v8 && v9)
    {
      v11 = [v8 isEqual:v9];

      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

LABEL_5:
    v5 = 0;
    goto LABEL_7;
  }

LABEL_14:
  if (*(quick + 32) != *(v4 + 4) || *(quick + 40) != v4[5])
  {
    goto LABEL_5;
  }

  v5 = 0;
  if (*(quick + 56) == v4[7] && *(quick + 64) == v4[8])
  {
    v5 = *(quick + 80) == v4[10] && *(quick + 72) == v4[9];
  }

LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  v3 = [(UIImage *)self->_image hash];
  v4 = [(UIImage *)self->_highlightedImage hash]^ v3;
  v5 = [(UIImageSymbolConfiguration *)self->_preferredSymbolConfiguration hash];
  return v4 ^ v5 ^ [(UIColor *)self->_tintColor hash];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_image)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"image = %@", self->_image];
    [v3 addObject:v4];
  }

  if (self->_preferredSymbolConfiguration)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"preferredSymbolConfiguration = %@", self->_preferredSymbolConfiguration];
    [v3 addObject:v5];
  }

  if (self->_tintColor)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tintColor = %@", self->_tintColor];
    [v3 addObject:v6];
  }

  if (self->_cornerRadius > 0.0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cornerRadius = %g", *&self->_cornerRadius];
    [v3 addObject:v7];
  }

  width = self->_reservedLayoutSize.width;
  height = self->_reservedLayoutSize.height;
  v10 = *MEMORY[0x1E695F060];
  v11 = *(MEMORY[0x1E695F060] + 8);
  if (width != *MEMORY[0x1E695F060] || height != v11)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = NSStringFromCGSize(*&width);
    v15 = [v13 stringWithFormat:@"reservedLayoutSize = %@", v14];
    [v3 addObject:v15];
  }

  v16 = self->_maximumSize.width;
  v17 = self->_maximumSize.height;
  if (v16 != v10 || v17 != v11)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = NSStringFromCGSize(*&v16);
    v21 = [v19 stringWithFormat:@"maximumSize = %@", v20];
    [v3 addObject:v21];
  }

  if ([v3 count])
  {
    v22 = [v3 componentsJoinedByString:@" "];;
  }

  else
  {
    v22 = @"empty configuration";
  }

  v23 = MEMORY[0x1E696AEC0];
  v24 = objc_opt_class();
  v25 = NSStringFromClass(v24);
  v26 = [v23 stringWithFormat:@"<%@: %p %@>", v25, self, v22];;

  return v26;
}

- (__CFString)_shortDescription
{
  selfCopy = self;
  if (self)
  {
    if (self->data || self[1].data)
    {
      v2 = MEMORY[0x1E696AEC0];
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      data = selfCopy->data;
      _identityDescription = [data _identityDescription];
      selfCopy = [v2 stringWithFormat:@"<%@: %p %@>", v4, data, _identityDescription];;
    }

    else
    {
      selfCopy = @"none";
    }
  }

  return selfCopy;
}

- (void)applyToImageView:(id)view
{
  image = self->_image;
  viewCopy = view;
  [viewCopy setImage:image];
  [viewCopy setHighlightedImage:self->_highlightedImage];
  [viewCopy setPreferredSymbolConfiguration:self->_preferredSymbolConfiguration];
  [viewCopy setTintColor:self->_tintColor];
}

- (void)_applyPropertiesFromDefaultConfiguration:(uint64_t)configuration
{
  v3 = a2;
  if (configuration)
  {
    v5 = *(configuration + 8);
    v12 = v3;
    if (v5)
    {
      if ((*(configuration + 8) & 2) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v3)
      {
        v6 = *(v3 + 2);
      }

      else
      {
        v6 = 0;
      }

      objc_storeStrong((configuration + 16), v6);
      v5 = *(configuration + 8);
      v3 = v12;
      if ((v5 & 2) != 0)
      {
LABEL_4:
        if ((v5 & 4) != 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    if (v3)
    {
      v7 = *(v3 + 3);
    }

    else
    {
      v7 = 0;
    }

    objc_setProperty_nonatomic_copy(configuration, v4, v7, 24);
    v5 = *(configuration + 8);
    v3 = v12;
    if ((v5 & 4) != 0)
    {
LABEL_5:
      if ((v5 & 8) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }

LABEL_15:
    if (v3)
    {
      v8 = *(v3 + 4);
    }

    else
    {
      v8 = 0;
    }

    objc_storeStrong((configuration + 32), v8);
    v5 = *(configuration + 8);
    v3 = v12;
    if ((v5 & 8) != 0)
    {
LABEL_6:
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }

LABEL_18:
    if (v3)
    {
      v9 = *(v3 + 5);
    }

    else
    {
      v9 = 0;
    }

    *(configuration + 40) = v9;
    if ((v5 & 0x10) != 0)
    {
LABEL_7:
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_27;
      }

LABEL_24:
      if (v3)
      {
        v11 = *(v3 + 72);
      }

      else
      {
        v11 = 0uLL;
      }

      *(configuration + 72) = v11;
      goto LABEL_27;
    }

LABEL_21:
    if (v3)
    {
      v10 = *(v3 + 56);
    }

    else
    {
      v10 = 0uLL;
    }

    *(configuration + 56) = v10;
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

LABEL_27:
}

- (CGSize)reservedLayoutSize
{
  width = self->_reservedLayoutSize.width;
  height = self->_reservedLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end