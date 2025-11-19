@interface _UILabelConfigurationInternal
- (BOOL)isEqual:(id)a3;
- (_UILabelConfigurationInternal)init;
- (_UILabelConfigurationInternal)initWithCoder:(id)a3;
- (id)_cuiCatalog;
- (id)_cuiStyleEffectConfiguration;
- (id)_disabledTextColor;
- (id)_resolvedCuiCatalog;
- (id)_resolvedCuiStyleEffectConfiguration;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setDisabledTextColor:(uint64_t)a1;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UILabelConfigurationInternal

- (id)_disabledTextColor
{
  if (a1)
  {
    a1 = a1[2];
    v1 = vars8;
  }

  return a1;
}

- (id)_resolvedCuiCatalog
{
  if (a1)
  {
    a1 = [(_UILabelConfigurationInternal *)a1 _cuiCatalog];
    v1 = vars8;
  }

  return a1;
}

- (id)_resolvedCuiStyleEffectConfiguration
{
  if (a1)
  {
    a1 = [(_UILabelConfigurationInternal *)a1 _cuiStyleEffectConfiguration];
    v1 = vars8;
  }

  return a1;
}

- (_UILabelConfigurationInternal)init
{
  v5.receiver = self;
  v5.super_class = _UILabelConfigurationInternal;
  v2 = [(_UILabelConfigurationInternal *)&v5 init];
  if (v2)
  {
    if (dyld_program_sdk_at_least())
    {
      v3 = 128;
    }

    else
    {
      v3 = 0;
    }

    v2->_configurationFlags = (*&v2->_configurationFlags & 0xFFFFFF7F | v3);
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v7) = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    configurationFlags = self->_configurationFlags;
    if (configurationFlags == v4->_configurationFlags && ((*&configurationFlags ^ *&v4->_configurationFlags) & 0x300) == 0 && v4->_lineSpacing == self->_lineSpacing)
    {
      v9 = v4->_disabledTextColor;
      v10 = self->_disabledTextColor;
      v11 = v9;
      v12 = v10;
      v13 = v12;
      if (v11 == v12)
      {
      }

      else
      {
        LOBYTE(v7) = 0;
        v14 = v12;
        v15 = v11;
        if (!v11 || !v12)
        {
          goto LABEL_25;
        }

        v16 = [(UIColor *)v11 isEqual:v12];

        if (!v16)
        {
          LOBYTE(v7) = 0;
LABEL_26:

          goto LABEL_10;
        }
      }

      v17 = [(_UILabelConfigurationInternal *)v4 _cuiCatalog];
      v18 = [(_UILabelConfigurationInternal *)self _cuiCatalog];
      v15 = v17;
      v19 = v18;
      v14 = v19;
      if (v15 == v19)
      {
      }

      else
      {
        LOBYTE(v7) = 0;
        v20 = v19;
        v21 = v15;
        if (!v15 || !v19)
        {
          goto LABEL_24;
        }

        v7 = [(UIColor *)v15 isEqual:v19];

        if (!v7)
        {
          goto LABEL_25;
        }
      }

      v21 = [(_UILabelConfigurationInternal *)v4 _cuiStyleEffectConfiguration];
      v20 = [(_UILabelConfigurationInternal *)self _cuiStyleEffectConfiguration];
      LOBYTE(v7) = CUIStyleEffectConfigurationEqualToStyleEffectConfiguration(v21, v20);
LABEL_24:

LABEL_25:
      goto LABEL_26;
    }
  }

  LOBYTE(v7) = 0;
LABEL_10:

  return v7;
}

- (id)_cuiCatalog
{
  if (a1)
  {
    a1 = objc_getAssociatedObject(a1, &cuiCatalogKey);
    v1 = vars8;
  }

  return a1;
}

- (id)_cuiStyleEffectConfiguration
{
  if (a1)
  {
    a1 = objc_getAssociatedObject(a1, &cuiStyleEffectConfigurationKey);
    v1 = vars8;
  }

  return a1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(_UILabelConfigurationInternal *)&self->super.isa _disabledTextColor];
  [(_UILabelConfigurationInternal *)v4 _setDisabledTextColor:v5];

  v6 = [(_UILabelConfigurationInternal *)self _cuiCatalog];
  if (v4)
  {
    objc_setAssociatedObject(v4, &cuiCatalogKey, v6, 1);
  }

  v7 = [(_UILabelConfigurationInternal *)self _cuiStyleEffectConfiguration];
  if (v4)
  {
    objc_setAssociatedObject(v4, &cuiStyleEffectConfigurationKey, v7, 1);
  }

  v4[6] = self->_configurationFlags;
  return v4;
}

- (void)_setDisabledTextColor:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
    *(a1 + 24) |= 0x400000u;
  }
}

- (_UILabelConfigurationInternal)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = _UILabelConfigurationInternal;
  v5 = [(_UILabelConfigurationInternal *)&v16 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_autotracksTextToFit"])
    {
      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFFE | [v4 decodeBoolForKey:@"UILabelConfiguration_autotracksTextToFit"] | 0x400);
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_textAlignmentMirrored"])
    {
      if ([v4 decodeBoolForKey:@"UILabelConfiguration_textAlignmentMirrored"])
      {
        v6 = 8200;
      }

      else
      {
        v6 = 0x2000;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFF7 | v6);
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_textAlignmentFollowsWritingDirection"])
    {
      if ([v4 decodeBoolForKey:@"UILabelConfiguration_textAlignmentFollowsWritingDirection"])
      {
        v7 = 4100;
      }

      else
      {
        v7 = 4096;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFFB | v7);
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_usesSimpleTextEffects"])
    {
      if ([v4 decodeBoolForKey:@"UILabelConfiguration_usesSimpleTextEffects"])
      {
        v8 = 16400;
      }

      else
      {
        v8 = 0x4000;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFEF | v8);
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_cuiCatalog"])
    {
      *&v5->_configurationFlags |= 0x8000u;
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UILabelConfiguration_cuiCatalog"];
      objc_setAssociatedObject(v5, &cuiCatalogKey, v9, 1);
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_cuiStyleEffectConfiguration"])
    {
      *&v5->_configurationFlags |= 0x10000u;
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UILabelConfiguration_cuiStyleEffectConfiguration"];
      objc_setAssociatedObject(v5, &cuiStyleEffectConfigurationKey, v10, 1);
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_lineSpacing"])
    {
      [v4 decodeFloatForKey:@"UILabelConfiguration_lineSpacing"];
      v5->_lineSpacing = v11;
      *&v5->_configurationFlags |= 0x20000u;
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_disabledTextColor"])
    {
      *&v5->_configurationFlags |= 0x400000u;
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UILabelConfiguration_disabledTextColor"];
      [(_UILabelConfigurationInternal *)v5 _setDisabledTextColor:v12];
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_hyphenationFactorIgnoredIfURLsDetected"])
    {
      if ([v4 decodeBoolForKey:@"UILabelConfiguration_hyphenationFactorIgnoredIfURLsDetected"])
      {
        v13 = 262208;
      }

      else
      {
        v13 = 0x40000;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFBF | v13);
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_overallWritingDirectionFollowsLayoutDirection"])
    {
      if ([v4 decodeBoolForKey:@"UILabelConfiguration_overallWritingDirectionFollowsLayoutDirection"])
      {
        v14 = 1048608;
      }

      else
      {
        v14 = 0x100000;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFDF | v14);
    }

    if ([v4 containsValueForKey:@"UILabelConfiguration_hasCustomized_baselineAdjustment"])
    {
      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFF7FFFF | (([v4 decodeIntegerForKey:@"UILabelConfiguration_baselineAdjustment"] & 1) << 19));
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x400) != 0)
  {
    [v9 encodeBool:*&configurationFlags & 1 forKey:@"UILabelConfiguration_autotracksTextToFit"];
    [v9 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_autotracksTextToFit"];
    configurationFlags = self->_configurationFlags;
    if ((*&configurationFlags & 0x2000) == 0)
    {
LABEL_3:
      if ((*&configurationFlags & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*&configurationFlags & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  [v9 encodeBool:(*&configurationFlags >> 3) & 1 forKey:@"UILabelConfiguration_textAlignmentMirrored"];
  [v9 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_textAlignmentMirrored"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x1000) == 0)
  {
LABEL_4:
    if ((*&configurationFlags & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v9 encodeBool:(*&configurationFlags >> 2) & 1 forKey:@"UILabelConfiguration_textAlignmentFollowsWritingDirection"];
  [v9 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_textAlignmentFollowsWritingDirection"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x4000) == 0)
  {
LABEL_5:
    if ((*&configurationFlags & 0x8000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v9 encodeBool:(*&configurationFlags >> 4) & 1 forKey:@"UILabelConfiguration_usesSimpleTextEffects"];
  [v9 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_usesSimpleTextEffects"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x8000) == 0)
  {
LABEL_6:
    if ((*&configurationFlags & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = [(_UILabelConfigurationInternal *)self _cuiCatalog];
  [v9 encodeObject:v5 forKey:@"UILabelConfiguration_cuiCatalog"];

  [v9 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_cuiCatalog"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x10000) == 0)
  {
LABEL_7:
    if ((*&configurationFlags & 0x20000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = [(_UILabelConfigurationInternal *)self _cuiStyleEffectConfiguration];
  [v9 encodeObject:v6 forKey:@"UILabelConfiguration_cuiStyleEffectConfiguration"];

  [v9 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_cuiStyleEffectConfiguration"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x20000) == 0)
  {
LABEL_8:
    if ((*&configurationFlags & 0x400000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  lineSpacing = self->_lineSpacing;
  *&lineSpacing = lineSpacing;
  [v9 encodeFloat:@"UILabelConfiguration_lineSpacing" forKey:lineSpacing];
  [v9 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_lineSpacing"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x400000) == 0)
  {
LABEL_9:
    if ((*&configurationFlags & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = self->_disabledTextColor;
  [v9 encodeObject:v8 forKey:@"UILabelConfiguration_disabledTextColor"];

  [v9 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_disabledTextColor"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x40000) == 0)
  {
LABEL_10:
    if ((*&configurationFlags & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v9 encodeBool:(*&configurationFlags >> 6) & 1 forKey:@"UILabelConfiguration_hyphenationFactorIgnoredIfURLsDetected"];
  [v9 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_hyphenationFactorIgnoredIfURLsDetected"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x100000) == 0)
  {
LABEL_11:
    if ((*&configurationFlags & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  [v9 encodeBool:(*&configurationFlags >> 5) & 1 forKey:@"UILabelConfiguration_overallWritingDirectionFollowsLayoutDirection"];
  [v9 encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_overallWritingDirectionFollowsLayoutDirection"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x80000) != 0)
  {
LABEL_12:
    [v9 encodeInt:(*&configurationFlags >> 8) & 3 forKey:@"UILabelConfiguration_baselineAdjustment"];
    [v9 encodeBool:(*&self->_configurationFlags >> 19) & 1 forKey:@"UILabelConfiguration_hasCustomized_baselineAdjustment"];
  }

LABEL_13:
}

@end