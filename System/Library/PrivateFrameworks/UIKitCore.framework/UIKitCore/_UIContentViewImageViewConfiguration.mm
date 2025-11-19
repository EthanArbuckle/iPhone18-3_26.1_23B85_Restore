@interface _UIContentViewImageViewConfiguration
- (BOOL)_isEqualToConfiguration:(uint64_t)a1;
- (BOOL)_isEqualToConfigurationQuick:(uint64_t)a1;
- (BOOL)isEqual:(id)a3;
- (CGSize)maximumSize;
- (CGSize)reservedLayoutSize;
- (_UIContentViewImageViewConfiguration)init;
- (_UIContentViewImageViewConfiguration)initWithCoder:(id)a3;
- (__CFString)_shortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_applyPropertiesFromDefaultConfiguration:(uint64_t)a1;
- (void)applyToImageView:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIContentViewImageViewConfiguration

- (_UIContentViewImageViewConfiguration)init
{
  v3.receiver = self;
  v3.super_class = _UIContentViewImageViewConfiguration;
  return [(_UIContentViewImageViewConfiguration *)&v3 init];
}

- (_UIContentViewImageViewConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = _UIContentViewImageViewConfiguration;
  v5 = [(_UIContentViewImageViewConfiguration *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"highlightedImage"];
    highlightedImage = v5->_highlightedImage;
    v5->_highlightedImage = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredSymbolConfiguration"];
    preferredSymbolConfiguration = v5->_preferredSymbolConfiguration;
    v5->_preferredSymbolConfiguration = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v12;

    [v4 decodeDoubleForKey:@"cornerRadius"];
    v5->_cornerRadius = v14;
    [v4 decodeCGSizeForKey:@"reservedLayoutSize"];
    v5->_reservedLayoutSize.width = v15;
    v5->_reservedLayoutSize.height = v16;
    [v4 decodeCGSizeForKey:@"maximumSize"];
    v5->_maximumSize.width = v17;
    v5->_maximumSize.height = v18;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"image"];
    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFE | [v4 decodeBoolForKey:v19];

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"preferredSymbolConfiguration"];
    if ([v4 decodeBoolForKey:v20])
    {
      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFD | v21;

    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"tintColor"];
    if ([v4 decodeBoolForKey:v22])
    {
      v23 = 4;
    }

    else
    {
      v23 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xFB | v23;

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"cornerRadius"];
    if ([v4 decodeBoolForKey:v24])
    {
      v25 = 8;
    }

    else
    {
      v25 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xF7 | v25;

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"reservedLayoutSize"];
    if ([v4 decodeBoolForKey:v26])
    {
      v27 = 16;
    }

    else
    {
      v27 = 0;
    }

    *&v5->_configurationFlags = *&v5->_configurationFlags & 0xEF | v27;

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"maximumSize"];
    if ([v4 decodeBoolForKey:v28])
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

- (void)encodeWithCoder:(id)a3
{
  image = self->_image;
  v5 = a3;
  [v5 encodeObject:image forKey:@"image"];
  [v5 encodeObject:self->_highlightedImage forKey:@"highlightedImage"];
  [v5 encodeObject:self->_preferredSymbolConfiguration forKey:@"preferredSymbolConfiguration"];
  [v5 encodeObject:self->_tintColor forKey:@"tintColor"];
  [v5 encodeDouble:@"cornerRadius" forKey:self->_cornerRadius];
  [v5 encodeCGSize:@"reservedLayoutSize" forKey:{self->_reservedLayoutSize.width, self->_reservedLayoutSize.height}];
  [v5 encodeCGSize:@"maximumSize" forKey:{self->_maximumSize.width, self->_maximumSize.height}];
  LOBYTE(image) = self->_configurationFlags;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"image"];
  [v5 encodeBool:image & 1 forKey:v6];

  v7 = (*&self->_configurationFlags >> 1) & 1;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"preferredSymbolConfiguration"];
  [v5 encodeBool:v7 forKey:v8];

  v9 = (*&self->_configurationFlags >> 2) & 1;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"tintColor"];
  [v5 encodeBool:v9 forKey:v10];

  v11 = (*&self->_configurationFlags >> 3) & 1;
  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"cornerRadius"];
  [v5 encodeBool:v11 forKey:v12];

  v13 = (*&self->_configurationFlags >> 4) & 1;
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"reservedLayoutSize"];
  [v5 encodeBool:v13 forKey:v14];

  v15 = (*&self->_configurationFlags >> 5) & 1;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"maximumSize"];
  [v5 encodeBool:v15 forKey:v16];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_UIContentViewImageViewConfiguration *)self _isEqualToConfiguration:v5];
  }

  return v6;
}

- (BOOL)_isEqualToConfiguration:(uint64_t)a1
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_22;
  }

  if ([(_UIContentViewImageViewConfiguration *)a1 _isEqualToConfigurationQuick:v3])
  {
    v4 = 1;
    goto LABEL_23;
  }

  v5 = *(v3 + 2);
  v6 = *(a1 + 16);
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
  v6 = *(a1 + 48);
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
  v6 = *(a1 + 32);
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
  if (*(a1 + 40) != *(v3 + 5))
  {
    goto LABEL_22;
  }

  v4 = 0;
  if (*(a1 + 56) == *(v3 + 7) && *(a1 + 64) == *(v3 + 8))
  {
    v4 = *(a1 + 80) == *(v3 + 10) && *(a1 + 72) == *(v3 + 9);
  }

LABEL_23:

  return v4;
}

- (BOOL)_isEqualToConfigurationQuick:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_5;
  }

  if (v3 == a1)
  {
    v5 = 1;
    goto LABEL_7;
  }

  if (*(a1 + 16) != v3[2] || *(a1 + 48) != v3[6])
  {
    goto LABEL_5;
  }

  v7 = v3[3];
  v8 = *(a1 + 24);
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
  if (*(a1 + 32) != *(v4 + 4) || *(a1 + 40) != v4[5])
  {
    goto LABEL_5;
  }

  v5 = 0;
  if (*(a1 + 56) == v4[7] && *(a1 + 64) == v4[8])
  {
    v5 = *(a1 + 80) == v4[10] && *(a1 + 72) == v4[9];
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
  v1 = a1;
  if (a1)
  {
    if (a1->data || a1[1].data)
    {
      v2 = MEMORY[0x1E696AEC0];
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      data = v1->data;
      v6 = [data _identityDescription];
      v1 = [v2 stringWithFormat:@"<%@: %p %@>", v4, data, v6];;
    }

    else
    {
      v1 = @"none";
    }
  }

  return v1;
}

- (void)applyToImageView:(id)a3
{
  image = self->_image;
  v5 = a3;
  [v5 setImage:image];
  [v5 setHighlightedImage:self->_highlightedImage];
  [v5 setPreferredSymbolConfiguration:self->_preferredSymbolConfiguration];
  [v5 setTintColor:self->_tintColor];
}

- (void)_applyPropertiesFromDefaultConfiguration:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v5 = *(a1 + 8);
    v12 = v3;
    if (v5)
    {
      if ((*(a1 + 8) & 2) != 0)
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

      objc_storeStrong((a1 + 16), v6);
      v5 = *(a1 + 8);
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

    objc_setProperty_nonatomic_copy(a1, v4, v7, 24);
    v5 = *(a1 + 8);
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

    objc_storeStrong((a1 + 32), v8);
    v5 = *(a1 + 8);
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

    *(a1 + 40) = v9;
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

      *(a1 + 72) = v11;
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

    *(a1 + 56) = v10;
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