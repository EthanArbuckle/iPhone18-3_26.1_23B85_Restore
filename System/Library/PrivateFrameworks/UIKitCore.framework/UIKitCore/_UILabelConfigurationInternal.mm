@interface _UILabelConfigurationInternal
- (BOOL)isEqual:(id)equal;
- (_UILabelConfigurationInternal)init;
- (_UILabelConfigurationInternal)initWithCoder:(id)coder;
- (id)_cuiCatalog;
- (id)_cuiStyleEffectConfiguration;
- (id)_disabledTextColor;
- (id)_resolvedCuiCatalog;
- (id)_resolvedCuiStyleEffectConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setDisabledTextColor:(uint64_t)color;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UILabelConfigurationInternal

- (id)_disabledTextColor
{
  if (self)
  {
    self = self[2];
    v1 = vars8;
  }

  return self;
}

- (id)_resolvedCuiCatalog
{
  if (self)
  {
    self = [(_UILabelConfigurationInternal *)self _cuiCatalog];
    v1 = vars8;
  }

  return self;
}

- (id)_resolvedCuiStyleEffectConfiguration
{
  if (self)
  {
    self = [(_UILabelConfigurationInternal *)self _cuiStyleEffectConfiguration];
    v1 = vars8;
  }

  return self;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v7) = 1;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    configurationFlags = self->_configurationFlags;
    if (configurationFlags == equalCopy->_configurationFlags && ((*&configurationFlags ^ *&equalCopy->_configurationFlags) & 0x300) == 0 && equalCopy->_lineSpacing == self->_lineSpacing)
    {
      v9 = equalCopy->_disabledTextColor;
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

      _cuiCatalog = [(_UILabelConfigurationInternal *)equalCopy _cuiCatalog];
      _cuiCatalog2 = [(_UILabelConfigurationInternal *)self _cuiCatalog];
      v15 = _cuiCatalog;
      v19 = _cuiCatalog2;
      v14 = v19;
      if (v15 == v19)
      {
      }

      else
      {
        LOBYTE(v7) = 0;
        _cuiStyleEffectConfiguration2 = v19;
        _cuiStyleEffectConfiguration = v15;
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

      _cuiStyleEffectConfiguration = [(_UILabelConfigurationInternal *)equalCopy _cuiStyleEffectConfiguration];
      _cuiStyleEffectConfiguration2 = [(_UILabelConfigurationInternal *)self _cuiStyleEffectConfiguration];
      LOBYTE(v7) = CUIStyleEffectConfigurationEqualToStyleEffectConfiguration(_cuiStyleEffectConfiguration, _cuiStyleEffectConfiguration2);
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
  if (self)
  {
    self = objc_getAssociatedObject(self, &cuiCatalogKey);
    v1 = vars8;
  }

  return self;
}

- (id)_cuiStyleEffectConfiguration
{
  if (self)
  {
    self = objc_getAssociatedObject(self, &cuiStyleEffectConfigurationKey);
    v1 = vars8;
  }

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  _disabledTextColor = [(_UILabelConfigurationInternal *)&self->super.isa _disabledTextColor];
  [(_UILabelConfigurationInternal *)v4 _setDisabledTextColor:_disabledTextColor];

  _cuiCatalog = [(_UILabelConfigurationInternal *)self _cuiCatalog];
  if (v4)
  {
    objc_setAssociatedObject(v4, &cuiCatalogKey, _cuiCatalog, 1);
  }

  _cuiStyleEffectConfiguration = [(_UILabelConfigurationInternal *)self _cuiStyleEffectConfiguration];
  if (v4)
  {
    objc_setAssociatedObject(v4, &cuiStyleEffectConfigurationKey, _cuiStyleEffectConfiguration, 1);
  }

  v4[6] = self->_configurationFlags;
  return v4;
}

- (void)_setDisabledTextColor:(uint64_t)color
{
  v4 = a2;
  if (color)
  {
    objc_storeStrong((color + 16), a2);
    *(color + 24) |= 0x400000u;
  }
}

- (_UILabelConfigurationInternal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _UILabelConfigurationInternal;
  v5 = [(_UILabelConfigurationInternal *)&v16 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_autotracksTextToFit"])
    {
      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFFE | [coderCopy decodeBoolForKey:@"UILabelConfiguration_autotracksTextToFit"] | 0x400);
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_textAlignmentMirrored"])
    {
      if ([coderCopy decodeBoolForKey:@"UILabelConfiguration_textAlignmentMirrored"])
      {
        v6 = 8200;
      }

      else
      {
        v6 = 0x2000;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFF7 | v6);
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_textAlignmentFollowsWritingDirection"])
    {
      if ([coderCopy decodeBoolForKey:@"UILabelConfiguration_textAlignmentFollowsWritingDirection"])
      {
        v7 = 4100;
      }

      else
      {
        v7 = 4096;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFFB | v7);
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_usesSimpleTextEffects"])
    {
      if ([coderCopy decodeBoolForKey:@"UILabelConfiguration_usesSimpleTextEffects"])
      {
        v8 = 16400;
      }

      else
      {
        v8 = 0x4000;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFEF | v8);
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_cuiCatalog"])
    {
      *&v5->_configurationFlags |= 0x8000u;
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UILabelConfiguration_cuiCatalog"];
      objc_setAssociatedObject(v5, &cuiCatalogKey, v9, 1);
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_cuiStyleEffectConfiguration"])
    {
      *&v5->_configurationFlags |= 0x10000u;
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UILabelConfiguration_cuiStyleEffectConfiguration"];
      objc_setAssociatedObject(v5, &cuiStyleEffectConfigurationKey, v10, 1);
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_lineSpacing"])
    {
      [coderCopy decodeFloatForKey:@"UILabelConfiguration_lineSpacing"];
      v5->_lineSpacing = v11;
      *&v5->_configurationFlags |= 0x20000u;
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_disabledTextColor"])
    {
      *&v5->_configurationFlags |= 0x400000u;
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UILabelConfiguration_disabledTextColor"];
      [(_UILabelConfigurationInternal *)v5 _setDisabledTextColor:v12];
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_hyphenationFactorIgnoredIfURLsDetected"])
    {
      if ([coderCopy decodeBoolForKey:@"UILabelConfiguration_hyphenationFactorIgnoredIfURLsDetected"])
      {
        v13 = 262208;
      }

      else
      {
        v13 = 0x40000;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFBF | v13);
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_overallWritingDirectionFollowsLayoutDirection"])
    {
      if ([coderCopy decodeBoolForKey:@"UILabelConfiguration_overallWritingDirectionFollowsLayoutDirection"])
      {
        v14 = 1048608;
      }

      else
      {
        v14 = 0x100000;
      }

      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFFFFFDF | v14);
    }

    if ([coderCopy containsValueForKey:@"UILabelConfiguration_hasCustomized_baselineAdjustment"])
    {
      v5->_configurationFlags = (*&v5->_configurationFlags & 0xFFF7FFFF | (([coderCopy decodeIntegerForKey:@"UILabelConfiguration_baselineAdjustment"] & 1) << 19));
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x400) != 0)
  {
    [coderCopy encodeBool:*&configurationFlags & 1 forKey:@"UILabelConfiguration_autotracksTextToFit"];
    [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_autotracksTextToFit"];
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

  [coderCopy encodeBool:(*&configurationFlags >> 3) & 1 forKey:@"UILabelConfiguration_textAlignmentMirrored"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_textAlignmentMirrored"];
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
  [coderCopy encodeBool:(*&configurationFlags >> 2) & 1 forKey:@"UILabelConfiguration_textAlignmentFollowsWritingDirection"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_textAlignmentFollowsWritingDirection"];
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
  [coderCopy encodeBool:(*&configurationFlags >> 4) & 1 forKey:@"UILabelConfiguration_usesSimpleTextEffects"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_usesSimpleTextEffects"];
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
  _cuiCatalog = [(_UILabelConfigurationInternal *)self _cuiCatalog];
  [coderCopy encodeObject:_cuiCatalog forKey:@"UILabelConfiguration_cuiCatalog"];

  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_cuiCatalog"];
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
  _cuiStyleEffectConfiguration = [(_UILabelConfigurationInternal *)self _cuiStyleEffectConfiguration];
  [coderCopy encodeObject:_cuiStyleEffectConfiguration forKey:@"UILabelConfiguration_cuiStyleEffectConfiguration"];

  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_cuiStyleEffectConfiguration"];
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
  [coderCopy encodeFloat:@"UILabelConfiguration_lineSpacing" forKey:lineSpacing];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_lineSpacing"];
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
  [coderCopy encodeObject:v8 forKey:@"UILabelConfiguration_disabledTextColor"];

  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_disabledTextColor"];
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
  [coderCopy encodeBool:(*&configurationFlags >> 6) & 1 forKey:@"UILabelConfiguration_hyphenationFactorIgnoredIfURLsDetected"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_hyphenationFactorIgnoredIfURLsDetected"];
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
  [coderCopy encodeBool:(*&configurationFlags >> 5) & 1 forKey:@"UILabelConfiguration_overallWritingDirectionFollowsLayoutDirection"];
  [coderCopy encodeBool:1 forKey:@"UILabelConfiguration_hasCustomized_overallWritingDirectionFollowsLayoutDirection"];
  configurationFlags = self->_configurationFlags;
  if ((*&configurationFlags & 0x80000) != 0)
  {
LABEL_12:
    [coderCopy encodeInt:(*&configurationFlags >> 8) & 3 forKey:@"UILabelConfiguration_baselineAdjustment"];
    [coderCopy encodeBool:(*&self->_configurationFlags >> 19) & 1 forKey:@"UILabelConfiguration_hasCustomized_baselineAdjustment"];
  }

LABEL_13:
}

@end