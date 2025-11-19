@interface UIListContentImageProperties
- (BOOL)isEqual:(id)a3;
- (CGSize)maximumSize;
- (CGSize)reservedLayoutSize;
- (UIColor)resolvedTintColorForTintColor:(UIColor *)tintColor;
- (UIConfigurationColorTransformer)tintColorTransformer;
- (UIListContentImageProperties)init;
- (UIListContentImageProperties)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resolvedStrokeColorForTintColor:(id)a3;
- (id)strokeColorTransformer;
- (uint64_t)_isEqualToProperties:(int)a3 compareImage:;
- (uint64_t)_isEqualToPropertiesQuick:(int)a3 compareImage:;
- (void)__setStrokeColorTransformer:(uint64_t)a1;
- (void)_applyPropertiesFromDefaultProperties:(uint64_t)a1;
- (void)_applyToImageView:(uint64_t)a1;
- (void)_setTintColorTransformer:(uint64_t)a1;
- (void)_setTintColorTransformerIdentifier:(uint64_t)a1;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UIListContentImageProperties

- (UIListContentImageProperties)init
{
  v6.receiver = self;
  v6.super_class = UIListContentImageProperties;
  v2 = [(UIListContentImageProperties *)&v6 init];
  if (v2)
  {
    v3 = +[UIColor clearColor];
    strokeColor = v2->_strokeColor;
    v2->_strokeColor = v3;
  }

  return v2;
}

- (CGSize)maximumSize
{
  width = self->_maximumSize.width;
  height = self->_maximumSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)reservedLayoutSize
{
  width = self->_reservedLayoutSize.width;
  height = self->_reservedLayoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIListContentImageProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v48.receiver = self;
  v48.super_class = UIListContentImageProperties;
  v5 = [(UIListContentImageProperties *)&v48 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredSymbolConfiguration"];
    preferredSymbolConfiguration = v5->_preferredSymbolConfiguration;
    v5->_preferredSymbolConfiguration = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tintColor"];
    tintColor = v5->_tintColor;
    v5->_tintColor = v10;

    -[UIListContentImageProperties _setTintColorTransformerIdentifier:](v5, [v4 decodeIntegerForKey:@"tintColorTransformerIdentifier"]);
    [v4 decodeDoubleForKey:@"cornerRadius"];
    v5->_cornerRadius = v12;
    [v4 decodeCGSizeForKey:@"reservedLayoutSize"];
    v5->_reservedLayoutSize.width = v13;
    v5->_reservedLayoutSize.height = v14;
    [v4 decodeCGSizeForKey:@"maximumSize"];
    v5->_maximumSize.width = v15;
    v5->_maximumSize.height = v16;
    v5->_accessibilityIgnoresInvertColors = [v4 decodeBoolForKey:@"accessibilityIgnoresInvertColors"];
    if ([v4 containsValueForKey:@"strokeColor"])
    {
      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"strokeColor"];
      strokeColor = v5->_strokeColor;
      v5->_strokeColor = v17;

      v19 = [v4 decodeIntegerForKey:@"strokeColorTransformerIdentifier"];
      v20 = _UIConfigurationColorTransformerForIdentifier(v19);
      strokeColorTransformer = v5->_strokeColorTransformer;
      v5->_strokeColorTransformer = v20;

      if (v5->_strokeColorTransformer)
      {
        v22 = v19;
      }

      else
      {
        v22 = 0;
      }

      v5->_strokeColorTransformerIdentifier = v22;
      [v4 decodeDoubleForKey:@"strokeWidth"];
      v5->_strokeWidth = v23;
    }

    else
    {
      v24 = +[UIColor clearColor];
      v25 = v5->_strokeColor;
      v5->_strokeColor = v24;
    }

    if ([v4 containsValueForKey:@"monochromaticTreatment"])
    {
      v5->__monochromaticTreatment = [v4 decodeIntegerForKey:@"monochromaticTreatment"];
    }

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"preferredSymbolConfiguration"];
    *&v5->_imageFlags = *&v5->_imageFlags & 0xFFFE | [v4 decodeBoolForKey:v26];

    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"tintColor"];
    if ([v4 decodeBoolForKey:v27])
    {
      v28 = 2;
    }

    else
    {
      v28 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xFFFD | v28;

    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"tintColorTransformerIdentifier"];
    if ([v4 decodeBoolForKey:v29])
    {
      v30 = 4;
    }

    else
    {
      v30 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xFFFB | v30;

    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"cornerRadius"];
    if ([v4 decodeBoolForKey:v31])
    {
      v32 = 8;
    }

    else
    {
      v32 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xFFF7 | v32;

    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"reservedLayoutSize"];
    if ([v4 decodeBoolForKey:v33])
    {
      v34 = 16;
    }

    else
    {
      v34 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xFFEF | v34;

    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"maximumSize"];
    if ([v4 decodeBoolForKey:v35])
    {
      v36 = 32;
    }

    else
    {
      v36 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xFFDF | v36;

    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"accessibilityIgnoresInvertColors"];
    if ([v4 decodeBoolForKey:v37])
    {
      v38 = 64;
    }

    else
    {
      v38 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xFFBF | v38;

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeColor"];
    if ([v4 decodeBoolForKey:v39])
    {
      v40 = 128;
    }

    else
    {
      v40 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xFF7F | v40;

    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeColorTransformerIdentifier"];
    if ([v4 decodeBoolForKey:v41])
    {
      v42 = 256;
    }

    else
    {
      v42 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xFEFF | v42;

    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeWidth"];
    if ([v4 decodeBoolForKey:v43])
    {
      v44 = 512;
    }

    else
    {
      v44 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xFDFF | v44;

    v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"monochromaticTreatment"];
    if ([v4 decodeBoolForKey:v45])
    {
      v46 = 1024;
    }

    else
    {
      v46 = 0;
    }

    *&v5->_imageFlags = *&v5->_imageFlags & 0xFBFF | v46;
  }

  return v5;
}

- (void)_setTintColorTransformerIdentifier:(uint64_t)a1
{
  if (a1)
  {
    v4 = _UIConfigurationColorTransformerForIdentifier(a2);
    v5 = *(a1 + 40);
    *(a1 + 40) = v4;

    if (*(a1 + 40))
    {
      v6 = a2;
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 80) = v6;
  }
}

- (void)encodeWithCoder:(id)a3
{
  image = self->_image;
  v5 = a3;
  [v5 encodeObject:image forKey:@"image"];
  [v5 encodeObject:self->_preferredSymbolConfiguration forKey:@"preferredSymbolConfiguration"];
  [v5 encodeObject:self->_tintColor forKey:@"tintColor"];
  [v5 encodeInteger:self->_tintColorTransformerIdentifier forKey:@"tintColorTransformerIdentifier"];
  [v5 encodeDouble:@"cornerRadius" forKey:self->_cornerRadius];
  [v5 encodeCGSize:@"reservedLayoutSize" forKey:{self->_reservedLayoutSize.width, self->_reservedLayoutSize.height}];
  [v5 encodeCGSize:@"maximumSize" forKey:{self->_maximumSize.width, self->_maximumSize.height}];
  [v5 encodeBool:self->_accessibilityIgnoresInvertColors forKey:@"accessibilityIgnoresInvertColors"];
  [v5 encodeObject:self->_strokeColor forKey:@"strokeColor"];
  [v5 encodeInteger:self->_strokeColorTransformerIdentifier forKey:@"strokeColorTransformerIdentifier"];
  [v5 encodeDouble:@"strokeWidth" forKey:self->_strokeWidth];
  [v5 encodeInteger:self->__monochromaticTreatment forKey:@"monochromaticTreatment"];
  imageFlags = self->_imageFlags;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"preferredSymbolConfiguration"];
  [v5 encodeBool:imageFlags & 1 forKey:v7];

  v8 = (*&self->_imageFlags >> 1) & 1;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"tintColor"];
  [v5 encodeBool:v8 forKey:v9];

  v10 = (*&self->_imageFlags >> 2) & 1;
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"tintColorTransformerIdentifier"];
  [v5 encodeBool:v10 forKey:v11];

  v12 = (*&self->_imageFlags >> 3) & 1;
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"cornerRadius"];
  [v5 encodeBool:v12 forKey:v13];

  v14 = (*&self->_imageFlags >> 4) & 1;
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"reservedLayoutSize"];
  [v5 encodeBool:v14 forKey:v15];

  v16 = (*&self->_imageFlags >> 5) & 1;
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"maximumSize"];
  [v5 encodeBool:v16 forKey:v17];

  v18 = (*&self->_imageFlags >> 6) & 1;
  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"accessibilityIgnoresInvertColors"];
  [v5 encodeBool:v18 forKey:v19];

  v20 = (*&self->_imageFlags >> 7) & 1;
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeColor"];
  [v5 encodeBool:v20 forKey:v21];

  v22 = HIBYTE(*&self->_imageFlags) & 1;
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeColorTransformerIdentifier"];
  [v5 encodeBool:v22 forKey:v23];

  v24 = (*&self->_imageFlags >> 9) & 1;
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"strokeWidth"];
  [v5 encodeBool:v24 forKey:v25];

  v26 = (*&self->_imageFlags >> 10) & 1;
  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hasCustomized-%@", @"monochromaticTreatment"];
  [v5 encodeBool:v26 forKey:v27];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 16), self->_image);
    v6 = [(UIImageSymbolConfiguration *)self->_preferredSymbolConfiguration copy];
    v7 = *(v5 + 24);
    *(v5 + 24) = v6;

    objc_storeStrong((v5 + 32), self->_tintColor);
    v8 = [self->_tintColorTransformer copy];
    v9 = *(v5 + 40);
    *(v5 + 40) = v8;

    *(v5 + 80) = self->_tintColorTransformerIdentifier;
    *(v5 + 48) = self->_cornerRadius;
    *(v5 + 104) = self->_reservedLayoutSize;
    *(v5 + 120) = self->_maximumSize;
    *(v5 + 12) = self->_accessibilityIgnoresInvertColors;
    objc_storeStrong((v5 + 56), self->_strokeColor);
    v10 = _Block_copy(self->_strokeColorTransformer);
    v11 = *(v5 + 64);
    *(v5 + 64) = v10;

    *(v5 + 88) = self->_strokeColorTransformerIdentifier;
    *(v5 + 72) = self->_strokeWidth;
    *(v5 + 96) = self->__monochromaticTreatment;
    *(v5 + 8) = self->_imageFlags;
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

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(UIListContentImageProperties *)self _isEqualToProperties:v5 compareImage:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_isEqualToProperties:(int)a3 compareImage:
{
  v5 = a2;
  if (!a1)
  {
    goto LABEL_24;
  }

  if (([(UIListContentImageProperties *)a1 _isEqualToPropertiesQuick:v5 compareImage:a3]& 1) != 0)
  {
LABEL_3:
    v6 = 1;
    goto LABEL_25;
  }

  if (a3)
  {
    v7 = v5[2];
    v8 = *(a1 + 16);
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      if (!v8 || !v9)
      {
        goto LABEL_23;
      }

      v11 = [v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  if (*(a1 + 96) != v5[12])
  {
    goto LABEL_24;
  }

  v12 = v5[3];
  v8 = *(a1 + 24);
  v13 = v12;
  v10 = v13;
  if (v8 == v13)
  {
  }

  else
  {
    if (!v8 || !v13)
    {
      goto LABEL_23;
    }

    v14 = [v8 isEqual:v13];

    if (!v14)
    {
      goto LABEL_24;
    }
  }

  v15 = v5[4];
  v8 = *(a1 + 32);
  v16 = v15;
  v10 = v16;
  if (v8 == v16)
  {

    goto LABEL_27;
  }

  if (!v8 || !v16)
  {
LABEL_23:

    goto LABEL_24;
  }

  v17 = [v8 isEqual:v16];

  if (!v17)
  {
    goto LABEL_24;
  }

LABEL_27:
  v19 = *(a1 + 80);
  if (v19 != v5[10] || v19 == 1 && *(a1 + 40) != v5[5] || *(a1 + 48) != *(v5 + 6))
  {
    goto LABEL_24;
  }

  v6 = 0;
  if (*(a1 + 104) == *(v5 + 13) && *(a1 + 112) == *(v5 + 14))
  {
    v6 = 0;
    if (*(a1 + 120) == *(v5 + 15) && *(a1 + 128) == *(v5 + 16))
    {
      if (*(a1 + 12) == *(v5 + 12))
      {
        if (_deferringTokenEqualToToken(*(a1 + 56), v5[7]))
        {
          v20 = *(a1 + 88);
          if (v20 == v5[11] && (v20 != 1 || *(a1 + 64) == v5[8]) && *(a1 + 72) == *(v5 + 9))
          {
            goto LABEL_3;
          }
        }
      }

LABEL_24:
      v6 = 0;
    }
  }

LABEL_25:

  return v6;
}

- (uint64_t)_isEqualToPropertiesQuick:(int)a3 compareImage:
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    goto LABEL_29;
  }

  if (v5 == a1)
  {
    goto LABEL_27;
  }

  if (a3 && *(a1 + 16) != v5[2] || *(a1 + 96) != v5[12])
  {
    goto LABEL_29;
  }

  v7 = v5[3];
  v8 = *(a1 + 24);
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    if (!v8 || !v9)
    {

LABEL_29:
      v13 = 0;
      goto LABEL_30;
    }

    v11 = [v8 isEqual:v9];

    if (!v11)
    {
      goto LABEL_29;
    }
  }

  if (*(a1 + 32) != *(v6 + 4))
  {
    goto LABEL_29;
  }

  v12 = *(a1 + 80);
  if (v12 != *(v6 + 10) || v12 == 1 && *(a1 + 40) != *(v6 + 5))
  {
    goto LABEL_29;
  }

  if (*(a1 + 48) != v6[6])
  {
    goto LABEL_29;
  }

  v13 = 0;
  if (*(a1 + 104) == v6[13] && *(a1 + 112) == v6[14])
  {
    v13 = 0;
    if (*(a1 + 120) == v6[15] && *(a1 + 128) == v6[16])
    {
      if (*(a1 + 12) != *(v6 + 12))
      {
        goto LABEL_29;
      }

      if (*(a1 + 56) != *(v6 + 7))
      {
        goto LABEL_29;
      }

      v14 = *(a1 + 88);
      if (v14 != *(v6 + 11) || v14 == 1 && *(a1 + 64) != *(v6 + 8))
      {
        goto LABEL_29;
      }

      if (*(a1 + 72) != v6[9])
      {
        goto LABEL_29;
      }

LABEL_27:
      v13 = 1;
    }
  }

LABEL_30:

  return v13;
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

  else
  {
    [v3 addObject:@"tintColor = Inherited"];
  }

  tintColorTransformerIdentifier = self->_tintColorTransformerIdentifier;
  if (tintColorTransformerIdentifier)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = _UIConfigurationColorTransformerIdentifierToString(tintColorTransformerIdentifier);
    v10 = [v8 stringWithFormat:@"tintColorTransformer = %@", v9];
    [v3 addObject:v10];
  }

  if (self->_cornerRadius > 0.0)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cornerRadius = %g", *&self->_cornerRadius];
    [v3 addObject:v11];
  }

  width = self->_reservedLayoutSize.width;
  height = self->_reservedLayoutSize.height;
  v14 = *MEMORY[0x1E695F060];
  v15 = *(MEMORY[0x1E695F060] + 8);
  if (width != *MEMORY[0x1E695F060] || height != v15)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = NSStringFromCGSize(*&width);
    v19 = [v17 stringWithFormat:@"reservedLayoutSize = %@", v18];
    [v3 addObject:v19];
  }

  v20 = self->_maximumSize.width;
  v21 = self->_maximumSize.height;
  if (v20 != v14 || v21 != v15)
  {
    v23 = MEMORY[0x1E696AEC0];
    v24 = NSStringFromCGSize(*&v20);
    v25 = [v23 stringWithFormat:@"maximumSize = %@", v24];
    [v3 addObject:v25];
  }

  if (self->_accessibilityIgnoresInvertColors)
  {
    [v3 addObject:@"accessibilityIgnoresInvertColors = YES"];
  }

  if (self->_strokeWidth > 0.0)
  {
    strokeColor = self->_strokeColor;
    v27 = +[UIColor clearColor];

    if (strokeColor != v27)
    {
      if (self->_strokeColor)
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"strokeColor = %@", self->_strokeColor];
        [v3 addObject:v28];
      }

      else
      {
        [v3 addObject:@"strokeColor = Inherited Tint Color"];
      }

      strokeColorTransformerIdentifier = self->_strokeColorTransformerIdentifier;
      if (strokeColorTransformerIdentifier)
      {
        v30 = MEMORY[0x1E696AEC0];
        v31 = _UIConfigurationColorTransformerIdentifierToString(strokeColorTransformerIdentifier);
        v32 = [v30 stringWithFormat:@"strokeColorTransformer = %@", v31];
        [v3 addObject:v32];
      }

      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"strokeWidth = %g", *&self->_strokeWidth];
      [v3 addObject:v33];
    }
  }

  if ([v3 count])
  {
    v34 = [v3 componentsJoinedByString:@" "];;
  }

  else
  {
    v34 = @"none";
  }

  v35 = MEMORY[0x1E696AEC0];
  v36 = objc_opt_class();
  v37 = NSStringFromClass(v36);
  v38 = [v35 stringWithFormat:@"<%@: %p %@>", v37, self, v34];;

  return v38;
}

- (void)_applyToImageView:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v9 = v3;
    [v3 setImage:*(a1 + 16)];
    [v9 setPreferredSymbolConfiguration:*(a1 + 24)];
    if (*(a1 + 32) || *(a1 + 40))
    {
      v4 = [(UIView *)v9 _ancestorTintColor];
      v5 = [a1 resolvedTintColorForTintColor:v4];
    }

    else
    {
      v5 = 0;
    }

    [v9 setTintColor:v5];
    v6 = [v9 tintColor];
    v7 = [a1 _resolvedStrokeColorForTintColor:v6];
    [v9 _setStrokeColor:v7];

    [v9 _setStrokeWidth:*(a1 + 72)];
    [v9 setAccessibilityIgnoresInvertColors:*(a1 + 12)];
    v8 = *(a1 + 96);
    if (v8 == -1)
    {
      v8 = (*(a1 + 8) & 2) == 0;
    }

    if (v8 == 1)
    {
      [v9 _setMonochromaticTreatment:1];
    }

    [v9 _setEnableMonochromaticTreatment:v8 == 1];

    v3 = v9;
  }
}

- (void)_applyPropertiesFromDefaultProperties:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v5 = *(a1 + 8);
    v17 = v3;
    if (v5)
    {
      if ((v5 & 2) != 0)
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

      objc_setProperty_nonatomic_copy(a1, v4, v6, 24);
      v5 = *(a1 + 8);
      v3 = v17;
      if ((v5 & 2) != 0)
      {
LABEL_4:
        if ((v5 & 4) != 0)
        {
          goto LABEL_5;
        }

        goto LABEL_20;
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

    objc_storeStrong((a1 + 32), v7);
    v5 = *(a1 + 8);
    v3 = v17;
    if ((v5 & 4) != 0)
    {
LABEL_5:
      if ((v5 & 8) != 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }

LABEL_20:
    if (v3)
    {
      v8 = *(v3 + 5);
    }

    else
    {
      v8 = 0;
    }

    [(UIListContentImageProperties *)a1 _setTintColorTransformer:v8];
    v5 = *(a1 + 8);
    v3 = v17;
    if ((v5 & 8) != 0)
    {
LABEL_6:
      if ((v5 & 0x10) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_26;
    }

LABEL_23:
    if (v3)
    {
      v9 = *(v3 + 6);
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 48) = v9;
    if ((v5 & 0x10) != 0)
    {
LABEL_7:
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }

LABEL_26:
    if (v3)
    {
      v10 = *(v3 + 104);
    }

    else
    {
      v10 = 0uLL;
    }

    *(a1 + 104) = v10;
    if ((v5 & 0x20) != 0)
    {
LABEL_8:
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }

LABEL_29:
    if (v3)
    {
      v11 = *(v3 + 120);
    }

    else
    {
      v11 = 0uLL;
    }

    *(a1 + 120) = v11;
    if ((v5 & 0x40) != 0)
    {
LABEL_9:
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

LABEL_32:
    if (v3)
    {
      v12 = v3[12];
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 12) = v12 & 1;
    if ((v5 & 0x80) != 0)
    {
LABEL_10:
      if ((v5 & 0x100) != 0)
      {
        goto LABEL_11;
      }

      goto LABEL_38;
    }

LABEL_35:
    if (v3)
    {
      v13 = *(v3 + 7);
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong((a1 + 56), v13);
    v5 = *(a1 + 8);
    v3 = v17;
    if ((v5 & 0x100) != 0)
    {
LABEL_11:
      if ((v5 & 0x200) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_41;
    }

LABEL_38:
    if (v3)
    {
      v14 = *(v3 + 8);
    }

    else
    {
      v14 = 0;
    }

    [(UIListContentImageProperties *)a1 __setStrokeColorTransformer:v14];
    v5 = *(a1 + 8);
    v3 = v17;
    if ((v5 & 0x200) != 0)
    {
LABEL_12:
      if ((v5 & 0x400) != 0)
      {
        goto LABEL_47;
      }

LABEL_44:
      if (v3)
      {
        v16 = *(v3 + 12);
      }

      else
      {
        v16 = 0;
      }

      *(a1 + 96) = v16;
      goto LABEL_47;
    }

LABEL_41:
    if (v3)
    {
      v15 = *(v3 + 9);
    }

    else
    {
      v15 = 0;
    }

    *(a1 + 72) = v15;
    if ((v5 & 0x400) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

LABEL_47:
}

- (void)_setTintColorTransformer:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    *(a1 + 80) = _UIConfigurationIdentifierForColorTransformer(v3);
    v4 = [v3 copy];

    v5 = *(a1 + 40);
    *(a1 + 40) = v4;
  }
}

- (void)__setStrokeColorTransformer:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    *(a1 + 88) = _UIConfigurationIdentifierForColorTransformer(v3);
    v4 = [v3 copy];

    v5 = *(a1 + 64);
    *(a1 + 64) = v4;
  }
}

- (UIConfigurationColorTransformer)tintColorTransformer
{
  v2 = _Block_copy(self->_tintColorTransformer);

  return v2;
}

- (id)strokeColorTransformer
{
  v2 = _Block_copy(self->_strokeColorTransformer);

  return v2;
}

- (UIColor)resolvedTintColorForTintColor:(UIColor *)tintColor
{
  v4 = tintColor;
  v5 = v4;
  v6 = self->_tintColor;
  if (!v6)
  {
    v6 = v4;
  }

  v7 = v6;
  tintColorTransformer = self->_tintColorTransformer;
  if (tintColorTransformer)
  {
    v9 = tintColorTransformer[2](tintColorTransformer, v7);
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

- (id)resolvedStrokeColorForTintColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  strokeColor = self->_strokeColor;
  if (!strokeColor)
  {
    strokeColor = v4;
  }

  v7 = strokeColor;
  strokeColorTransformer = self->_strokeColorTransformer;
  if (strokeColorTransformer)
  {
    v9 = strokeColorTransformer[2](strokeColorTransformer, v7);
  }

  else
  {
    v9 = v7;
  }

  v10 = v9;

  return v10;
}

@end