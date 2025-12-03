@interface UIContentUnavailableImageProperties
- (BOOL)_isEqualToProperties:(int)properties compareImage:;
- (BOOL)_isEqualToPropertiesQuick:(int)quick compareImage:;
- (BOOL)isEqual:(id)equal;
- (CGSize)maximumSize;
- (UIContentUnavailableImageProperties)init;
- (UIContentUnavailableImageProperties)initWithCoder:(id)coder;
- (__CFString)_shortDescription;
- (double)_effectiveActivityIndicatorViewWidth;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_applyPropertiesFromDefaultProperties:(uint64_t)properties;
- (void)_applyToActivityIndicatorView:(uint64_t)view;
- (void)_applyToImageView:(uint64_t)view;
- (void)_setTintColor:(uint64_t)color;
- (void)encodeWithCoder:(id)coder;
- (void)setImage:(uint64_t)image;
@end

@implementation UIContentUnavailableImageProperties

- (UIContentUnavailableImageProperties)init
{
  v3.receiver = self;
  v3.super_class = UIContentUnavailableImageProperties;
  return [(UIContentUnavailableImageProperties *)&v3 init];
}

- (double)_effectiveActivityIndicatorViewWidth
{
  if (!self)
  {
    return 0.0;
  }

  v1 = *(self + 48);
  v2 = *(self + 56);
  if (v1 >= v2)
  {
    v3 = *(self + 56);
  }

  else
  {
    v3 = *(self + 48);
  }

  v4 = v2 == *(MEMORY[0x1E695F060] + 8) && v1 == *MEMORY[0x1E695F060];
  v5 = fmax(v3, 32.0);
  if (v4)
  {
    v5 = 2777777.0;
  }

  v6 = *(self + 24);
  v7 = 0.0;
  if (v6)
  {
    if (*(v6 + 40))
    {
      v7 = *(v6 + 32);
    }
  }

  return fmax(fmin(v7, v5), 32.0);
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIContentUnavailableImageProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = UIContentUnavailableImageProperties;
  v5 = [(UIContentUnavailableImageProperties *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredSymbolConfiguration"];
    preferredSymbolConfiguration = v5->_preferredSymbolConfiguration;
    v5->_preferredSymbolConfiguration = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v10;

    [coderCopy decodeDoubleForKey:@"cornerRadius"];
    v5->_cornerRadius = v12;
    [coderCopy decodeCGSizeForKey:@"maximumSize"];
    v5->_maximumSize.width = v13;
    v5->_maximumSize.height = v14;
    v5->_accessibilityIgnoresInvertColors = [coderCopy decodeBoolForKey:@"accessibilityIgnoresInvertColors"];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"preferredSymbolConfiguration"];
    *&v5->_imageFlags = *&v5->_imageFlags & 0xFE | [coderCopy decodeBoolForKey:v15];

    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"tintColor"];
    if ([coderCopy decodeBoolForKey:v16])
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xFD | v17;

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"cornerRadius"];
    if ([coderCopy decodeBoolForKey:v18])
    {
      v19 = 4;
    }

    else
    {
      v19 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xFB | v19;

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"maximumSize"];
    if ([coderCopy decodeBoolForKey:v20])
    {
      v21 = 8;
    }

    else
    {
      v21 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xF7 | v21;

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"accessibilityIgnoresInvertColors"];
    if ([coderCopy decodeBoolForKey:v22])
    {
      v23 = 16;
    }

    else
    {
      v23 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xEF | v23;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  image = self->_image;
  coderCopy = coder;
  [coderCopy encodeObject:image forKey:@"image"];
  [coderCopy encodeObject:self->_preferredSymbolConfiguration forKey:@"preferredSymbolConfiguration"];
  [coderCopy encodeObject:self->_tintColor forKey:@"tintColor"];
  [coderCopy encodeDouble:@"cornerRadius" forKey:self->_cornerRadius];
  [coderCopy encodeCGSize:@"maximumSize" forKey:{self->_maximumSize.width, self->_maximumSize.height}];
  [coderCopy encodeBool:self->_accessibilityIgnoresInvertColors forKey:@"accessibilityIgnoresInvertColors"];
  imageFlags = self->_imageFlags;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"preferredSymbolConfiguration"];
  [coderCopy encodeBool:imageFlags & 1 forKey:v7];

  v8 = (*&self->_imageFlags >> 1) & 1;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"tintColor"];
  [coderCopy encodeBool:v8 forKey:v9];

  v10 = (*&self->_imageFlags >> 2) & 1;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"cornerRadius"];
  [coderCopy encodeBool:v10 forKey:v11];

  v12 = (*&self->_imageFlags >> 3) & 1;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"maximumSize"];
  [coderCopy encodeBool:v12 forKey:v13];

  v14 = (*&self->_imageFlags >> 4) & 1;
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"accessibilityIgnoresInvertColors"];
  [coderCopy encodeBool:v14 forKey:v15];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 16), self->_image);
    v6 = [(UIImageSymbolConfiguration *)self->_preferredSymbolConfiguration copy];
    v7 = *(v5 + 24);
    *(v5 + 24) = v6;

    objc_storeStrong((v5 + 32), self->_tintColor);
    *(v5 + 40) = self->_cornerRadius;
    *(v5 + 48) = self->_maximumSize;
    *(v5 + 12) = self->_accessibilityIgnoresInvertColors;
    *(v5 + 8) = self->_imageFlags;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(UIContentUnavailableImageProperties *)self _isEqualToProperties:v5 compareImage:0];
  }

  return v6;
}

- (BOOL)_isEqualToProperties:(int)properties compareImage:
{
  v5 = a2;
  if (!self)
  {
    goto LABEL_25;
  }

  if ([(UIContentUnavailableImageProperties *)self _isEqualToPropertiesQuick:v5 compareImage:properties])
  {
    v6 = 1;
    goto LABEL_26;
  }

  if (properties)
  {
    v7 = *(v5 + 2);
    v8 = *(self + 16);
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (!v8 || !v9)
      {
        goto LABEL_22;
      }

      v11 = [v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_25;
      }
    }
  }

  v12 = *(v5 + 3);
  v8 = *(self + 24);
  v13 = v12;
  v10 = v13;
  if (v8 == v13)
  {
  }

  else
  {
    if (!v8 || !v13)
    {
      goto LABEL_22;
    }

    v14 = [v8 isEqual:v13];

    if (!v14)
    {
      goto LABEL_25;
    }
  }

  v15 = *(v5 + 4);
  v8 = *(self + 32);
  v16 = v15;
  v10 = v16;
  if (v8 == v16)
  {

    goto LABEL_24;
  }

  if (!v8 || !v16)
  {
LABEL_22:

LABEL_25:
    v6 = 0;
    goto LABEL_26;
  }

  v17 = [v8 isEqual:v16];

  if (!v17)
  {
    goto LABEL_25;
  }

LABEL_24:
  if (*(self + 40) != *(v5 + 5))
  {
    goto LABEL_25;
  }

  v6 = 0;
  if (*(self + 48) == *(v5 + 6) && *(self + 56) == *(v5 + 7))
  {
    v6 = *(self + 12) == v5[12];
  }

LABEL_26:

  return v6;
}

- (BOOL)_isEqualToPropertiesQuick:(int)quick compareImage:
{
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    goto LABEL_18;
  }

  if (v5 == self)
  {
    v12 = 1;
  }

  else
  {
    if (quick && *(self + 16) != v5[2])
    {
      goto LABEL_18;
    }

    v7 = v5[3];
    v8 = *(self + 24);
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (!v8 || !v9)
      {

LABEL_18:
        v12 = 0;
        goto LABEL_19;
      }

      v11 = [v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    if (*(self + 32) != *(v6 + 4) || *(self + 40) != v6[5])
    {
      goto LABEL_18;
    }

    v12 = 0;
    if (*(self + 48) == v6[6] && *(self + 56) == v6[7])
    {
      v12 = *(self + 12) == *(v6 + 12);
    }
  }

LABEL_19:

  return v12;
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

  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  if (width != *MEMORY[0x1E695F060] || height != *(MEMORY[0x1E695F060] + 8))
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = NSStringFromCGSize(*&width);
    v13 = [v11 stringWithFormat:@"maximumSize = %@", v12];
    [v3 addObject:v13];
  }

  if (self->_accessibilityIgnoresInvertColors)
  {
    [v3 addObject:@"accessibilityIgnoresInvertColors = YES"];
  }

  if ([v3 count])
  {
    v14 = [v3 componentsJoinedByString:@" "];;
  }

  else
  {
    v14 = @"none";
  }

  v15 = MEMORY[0x1E696AEC0];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v18 = [v15 stringWithFormat:@"<%@: %p %@>", v17, self, v14];;

  return v18;
}

- (__CFString)_shortDescription
{
  selfCopy = self;
  if (self)
  {
    if (self->data)
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

- (void)_applyToImageView:(uint64_t)view
{
  if (view)
  {
    v3 = *(view + 16);
    v4 = a2;
    [v4 setImage:v3];
    [v4 setPreferredSymbolConfiguration:*(view + 24)];
    [v4 setTintColor:*(view + 32)];
    [v4 setAccessibilityIgnoresInvertColors:*(view + 12)];
  }
}

- (void)_applyToActivityIndicatorView:(uint64_t)view
{
  if (view)
  {
    v3 = a2;
    [v3 setActivityIndicatorViewStyle:16];
    [v3 _setCustomWidth:-[UIContentUnavailableImageProperties _effectiveActivityIndicatorViewWidth](view)];
    [v3 setColor:*(view + 32)];
    [v3 setAccessibilityIgnoresInvertColors:*(view + 12)];
  }
}

- (void)_applyPropertiesFromDefaultProperties:(uint64_t)properties
{
  v3 = a2;
  if (properties)
  {
    v5 = *(properties + 8);
    v11 = v3;
    if (v5)
    {
      if ((*(properties + 8) & 2) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v3)
      {
        v6 = *(v3 + 3);
      }

      else
      {
        v6 = 0;
      }

      objc_setProperty_nonatomic_copy(properties, v4, v6, 24);
      v5 = *(properties + 8);
      v3 = v11;
      if ((v5 & 2) != 0)
      {
LABEL_4:
        if ((v5 & 4) != 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    if (v3)
    {
      v7 = *(v3 + 4);
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong((properties + 32), v7);
    v5 = *(properties + 8);
    v3 = v11;
    if ((v5 & 4) != 0)
    {
LABEL_5:
      if ((v5 & 8) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

LABEL_14:
    if (v3)
    {
      v8 = *(v3 + 5);
    }

    else
    {
      v8 = 0;
    }

    *(properties + 40) = v8;
    if ((v5 & 8) != 0)
    {
LABEL_6:
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_23;
      }

LABEL_20:
      if (v3)
      {
        v10 = *(v3 + 12);
      }

      else
      {
        v10 = 0;
      }

      *(properties + 12) = v10 & 1;
      goto LABEL_23;
    }

LABEL_17:
    if (v3)
    {
      v9 = *(v3 + 3);
    }

    else
    {
      v9 = 0uLL;
    }

    *(properties + 48) = v9;
    if ((v5 & 0x10) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_23:
}

- (void)_setTintColor:(uint64_t)color
{
  if (color)
  {
    objc_storeStrong((color + 32), a2);
  }
}

- (void)setImage:(uint64_t)image
{
  v4 = a2;
  if (image)
  {
    objc_storeStrong((image + 16), a2);
  }
}

@end