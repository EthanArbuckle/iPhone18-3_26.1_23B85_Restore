@interface _UIStatusBarStyleAttributes
+ (id)overriddenStyleAttributes;
+ (id)styleAttributesForStatusBar:(id)a3 style:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRounded;
- (_UIStatusBarStyleAttributes)initWithCoder:(id)a3;
- (_UIStatusBarStyleAttributes)styleAttributesWithOverrides:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)fontForStyle:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIStatusBarStyleAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 2) = self->_style;
  *(v4 + 3) = self->_mode;
  objc_storeStrong(v4 + 4, self->_traitCollection);
  *(v4 + 5) = self->_effectiveLayoutDirection;
  *(v4 + 6) = *&self->_iconScale;
  *(v4 + 8) = self->_iconSize;
  *(v4 + 7) = self->_symbolScale;
  *(v4 + 8) = self->_scaledFixedWidthBar;
  [v4 setFont:self->_font];
  [v4 setEmphasizedFont:self->_emphasizedFont];
  [v4 setSmallFont:self->_smallFont];
  [v4 setTextColor:self->_textColor];
  [v4 setImageTintColor:self->_imageTintColor];
  [v4 setImageDimmedTintColor:self->_imageDimmedTintColor];
  v5 = [(NSArray *)self->_imageNamePrefixes copy];
  [v4 setImageNamePrefixes:v5];

  return v4;
}

- (_UIStatusBarStyleAttributes)initWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = _UIStatusBarStyleAttributes;
  v3 = a3;
  v4 = [(_UIStatusBarStyleAttributes *)&v16 init];
  v4->_style = [v3 decodeIntegerForKey:{@"style", v16.receiver, v16.super_class}];
  v4->_mode = [v3 decodeIntegerForKey:@"mode"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"traitCollection"];
  traitCollection = v4->_traitCollection;
  v4->_traitCollection = v5;

  v4->_effectiveLayoutDirection = [v3 decodeIntegerForKey:@"effectiveLayoutDirection"];
  [v3 decodeDoubleForKey:@"iconScale"];
  v4->_iconScale = v7;
  v4->_iconSize = [v3 decodeIntegerForKey:@"iconSize"];
  v4->_symbolScale = [v3 decodeIntegerForKey:@"symbolScale"];
  v4->_scaledFixedWidthBar = [v3 decodeBoolForKey:@"scaledFixedWidthBar"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"font"];
  [(_UIStatusBarStyleAttributes *)v4 setFont:v8];

  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"emphasizedFont"];
  [(_UIStatusBarStyleAttributes *)v4 setEmphasizedFont:v9];

  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"smallFont"];
  [(_UIStatusBarStyleAttributes *)v4 setSmallFont:v10];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
  [(_UIStatusBarStyleAttributes *)v4 setTextColor:v11];

  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"imageTintColor"];
  [(_UIStatusBarStyleAttributes *)v4 setImageTintColor:v12];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"imageDimmedTintColor"];
  [(_UIStatusBarStyleAttributes *)v4 setImageDimmedTintColor:v13];

  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"imageNamePrefixes"];

  [(_UIStatusBarStyleAttributes *)v4 setImageNamePrefixes:v14];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  style = self->_style;
  v5 = a3;
  [v5 encodeInteger:style forKey:@"style"];
  [v5 encodeInteger:self->_mode forKey:@"mode"];
  [v5 encodeObject:self->_traitCollection forKey:@"traitCollection"];
  [v5 encodeInteger:self->_effectiveLayoutDirection forKey:@"effectiveLayoutDirection"];
  [v5 encodeDouble:@"iconScale" forKey:self->_iconScale];
  [v5 encodeInteger:self->_iconSize forKey:@"iconSize"];
  [v5 encodeInteger:self->_symbolScale forKey:@"symbolScale"];
  [v5 encodeBool:self->_scaledFixedWidthBar forKey:@"scaledFixedWidthBar"];
  [v5 encodeObject:self->_font forKey:@"font"];
  [v5 encodeObject:self->_emphasizedFont forKey:@"emphasizedFont"];
  [v5 encodeObject:self->_smallFont forKey:@"smallFont"];
  [v5 encodeObject:self->_textColor forKey:@"textColor"];
  [v5 encodeObject:self->_imageTintColor forKey:@"imageTintColor"];
  [v5 encodeObject:self->_imageDimmedTintColor forKey:@"imageDimmedTintColor"];
  [v5 encodeObject:self->_imageNamePrefixes forKey:@"imageNamePrefixes"];
}

+ (id)styleAttributesForStatusBar:(id)a3 style:(int64_t)a4
{
  v7 = a3;
  if (a4)
  {
    if (a4 != 4)
    {
      goto LABEL_3;
    }

    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = v27;
    v29 = @"The status bar style should never be set to .inherited, it should only be used to notify about using the main style in setStyle:forPartWithIdentifier:";
    v30 = a2;
    v31 = a1;
    v32 = 96;
  }

  else
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = v27;
    v29 = @"The default style should have been resolved to .lightContent or .darkContent already";
    v30 = a2;
    v31 = a1;
    v32 = 95;
  }

  [v27 handleFailureInMethod:v30 object:v31 file:@"_UIStatusBarStyleAttributes.m" lineNumber:v32 description:v29];

LABEL_3:
  v8 = objc_alloc_init(a1);
  *(v8 + 2) = a4;
  *(v8 + 3) = [v7 mode];
  *(v8 + 5) = [v7 effectiveUserInterfaceLayoutDirection];
  *(v8 + 6) = 0x3FF0000000000000;
  *(v8 + 7) = 0;
  v9 = [v7 traitCollection];
  [v9 displayScale];
  if (v10 == 0.0)
  {
    v11 = [objc_opt_self() mainScreen];
    [v11 scale];
    v13 = v12;
    v14 = objc_opt_self();
    v15 = [v9 traitCollectionByReplacingCGFloatValue:v14 forTrait:v13];

    v9 = v15;
  }

  objc_storeStrong(v8 + 4, v9);
  [v9 displayScale];
  v17 = v16;
  v18 = _UIDeviceNativeUserInterfaceIdiom();
  if (v18 == 1)
  {
    v20 = 14;
  }

  else
  {
    v19 = 2.5;
    if (v18 == 3)
    {
      v20 = 16;
      if (v17 > 2.5)
      {
        v20 = 17;
      }
    }

    else if (v17 <= 2.5)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }
  }

  *(v8 + 8) = v20;
  v21 = [v7 foregroundColor];

  if (v21)
  {
    v22 = [v7 foregroundColor];
    v23 = *(v8 + 12);
    *(v8 + 12) = v22;

    v24 = [v7 foregroundColor];
    v25 = *(v8 + 13);
    *(v8 + 13) = v24;
  }

  return v8;
}

+ (id)overriddenStyleAttributes
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    style = self->_style;
    if (style != [v7 style] || (mode = self->_mode, mode != objc_msgSend(v7, "mode")))
    {
      v6 = 0;
LABEL_29:

      goto LABEL_30;
    }

    traitCollection = self->_traitCollection;
    v11 = [v7 traitCollection];
    v12 = traitCollection;
    v13 = v11;
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      v6 = 0;
      if (!v12 || !v13)
      {
        v24 = v13;
        goto LABEL_26;
      }

      v15 = [(UITraitCollection *)v12 isEqual:v13];

      if (!v15)
      {
LABEL_24:
        v6 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    effectiveLayoutDirection = self->_effectiveLayoutDirection;
    if (effectiveLayoutDirection != [v7 effectiveLayoutDirection])
    {
      goto LABEL_24;
    }

    iconScale = self->_iconScale;
    [v7 iconScale];
    if (iconScale != v18)
    {
      goto LABEL_24;
    }

    iconSize = self->_iconSize;
    if (iconSize != [v7 iconSize])
    {
      goto LABEL_24;
    }

    symbolScale = self->_symbolScale;
    if (symbolScale != [v7 symbolScale])
    {
      goto LABEL_24;
    }

    scaledFixedWidthBar = self->_scaledFixedWidthBar;
    if (scaledFixedWidthBar != [v7 isScaledFixedWidthBar])
    {
      goto LABEL_24;
    }

    font = self->_font;
    v12 = [v7 font];
    if (!_deferringTokenEqualToToken(font, v12))
    {
      v6 = 0;
      goto LABEL_27;
    }

    emphasizedFont = self->_emphasizedFont;
    v24 = [v7 emphasizedFont];
    if (_deferringTokenEqualToToken(emphasizedFont, v24))
    {
      smallFont = self->_smallFont;
      v26 = [v7 smallFont];
      if (_deferringTokenEqualToToken(smallFont, v26))
      {
        textColor = self->_textColor;
        v28 = [v7 textColor];
        if (_deferringTokenEqualToToken(textColor, v28))
        {
          imageTintColor = self->_imageTintColor;
          v30 = [v7 imageTintColor];
          if (_deferringTokenEqualToToken(imageTintColor, v30))
          {
            imageDimmedTintColor = self->_imageDimmedTintColor;
            v35 = [v7 imageDimmedTintColor];
            if (_deferringTokenEqualToToken(imageDimmedTintColor, v35))
            {
              imageNamePrefixes = self->_imageNamePrefixes;
              v33 = [v7 imageNamePrefixes];
              v6 = _deferringTokenEqualToToken(imageNamePrefixes, v33);
            }

            else
            {
              v6 = 0;
            }
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_26:

LABEL_27:
    goto LABEL_28;
  }

  v6 = 0;
LABEL_30:

  return v6;
}

- (id)description
{
  v20[14] = *MEMORY[0x1E69E9840];
  v19 = NSStringFromSelector(sel_style);
  v20[0] = v19;
  v18 = NSStringFromSelector(sel_mode);
  v20[1] = v18;
  v17 = NSStringFromSelector(sel_traitCollection);
  v20[2] = v17;
  v16 = NSStringFromSelector(sel_effectiveLayoutDirection);
  v20[3] = v16;
  v15 = NSStringFromSelector(sel_iconScale);
  v20[4] = v15;
  v14 = NSStringFromSelector(sel_iconSize);
  v20[5] = v14;
  v3 = NSStringFromSelector(sel_symbolScale);
  v20[6] = v3;
  v4 = NSStringFromSelector(sel_font);
  v20[7] = v4;
  v5 = NSStringFromSelector(sel_emphasizedFont);
  v20[8] = v5;
  v6 = NSStringFromSelector(sel_smallFont);
  v20[9] = v6;
  v7 = NSStringFromSelector(sel_textColor);
  v20[10] = v7;
  v8 = NSStringFromSelector(sel_imageTintColor);
  v20[11] = v8;
  v9 = NSStringFromSelector(sel_imageDimmedTintColor);
  v20[12] = v9;
  v10 = NSStringFromSelector(sel_imageNamePrefixes);
  v20[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:14];
  v12 = [UIDescriptionBuilder descriptionForObject:self keys:v11];

  return v12;
}

- (_UIStatusBarStyleAttributes)styleAttributesWithOverrides:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || v4 == self)
  {
    v6 = self;
  }

  else
  {
    v6 = [(_UIStatusBarStyleAttributes *)self copy];
    [(_UIStatusBarStyleAttributes *)v5 iconScale];
    if (v7 > 0.0)
    {
      [(_UIStatusBarStyleAttributes *)v5 iconScale];
      [(_UIStatusBarStyleAttributes *)v6 setIconScale:?];
    }

    if ([(_UIStatusBarStyleAttributes *)v5 iconSize])
    {
      [(_UIStatusBarStyleAttributes *)v6 setIconSize:[(_UIStatusBarStyleAttributes *)v5 iconSize]];
    }

    if ([(_UIStatusBarStyleAttributes *)v5 symbolScale])
    {
      [(_UIStatusBarStyleAttributes *)v6 setSymbolScale:[(_UIStatusBarStyleAttributes *)v5 symbolScale]];
    }

    v8 = [(_UIStatusBarStyleAttributes *)v5 font];

    if (v8)
    {
      v9 = [(_UIStatusBarStyleAttributes *)v5 font];
      [(_UIStatusBarStyleAttributes *)v6 setFont:v9];
    }

    v10 = [(_UIStatusBarStyleAttributes *)v5 emphasizedFont];

    if (v10)
    {
      v11 = [(_UIStatusBarStyleAttributes *)v5 emphasizedFont];
      [(_UIStatusBarStyleAttributes *)v6 setEmphasizedFont:v11];
    }

    v12 = [(_UIStatusBarStyleAttributes *)v5 smallFont];

    if (v12)
    {
      v13 = [(_UIStatusBarStyleAttributes *)v5 smallFont];
      [(_UIStatusBarStyleAttributes *)v6 setSmallFont:v13];
    }

    v14 = [(_UIStatusBarStyleAttributes *)v5 textColor];

    if (v14)
    {
      v15 = [(_UIStatusBarStyleAttributes *)v5 textColor];
      [(_UIStatusBarStyleAttributes *)v6 setTextColor:v15];
    }

    v16 = [(_UIStatusBarStyleAttributes *)v5 imageTintColor];

    if (v16)
    {
      v17 = [(_UIStatusBarStyleAttributes *)v5 imageTintColor];
      [(_UIStatusBarStyleAttributes *)v6 setImageTintColor:v17];
    }

    v18 = [(_UIStatusBarStyleAttributes *)v5 imageDimmedTintColor];

    if (v18)
    {
      v19 = [(_UIStatusBarStyleAttributes *)v5 imageDimmedTintColor];
      [(_UIStatusBarStyleAttributes *)v6 setImageDimmedTintColor:v19];
    }

    v20 = [(_UIStatusBarStyleAttributes *)v5 imageNamePrefixes];

    if (v20)
    {
      v21 = [(_UIStatusBarStyleAttributes *)v5 imageNamePrefixes];
      [(_UIStatusBarStyleAttributes *)v6 setImageNamePrefixes:v21];
    }
  }

  return v6;
}

- (id)fontForStyle:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(_UIStatusBarStyleAttributes *)self smallFont];
  }

  else if (a3 == 1)
  {
    v3 = [(_UIStatusBarStyleAttributes *)self emphasizedFont];
  }

  else
  {
    if (a3)
    {
      goto LABEL_8;
    }

    v3 = [(_UIStatusBarStyleAttributes *)self font];
  }

  a2 = v3;
LABEL_8:

  return a2;
}

- (BOOL)isRounded
{
  v2 = [(_UIStatusBarStyleAttributes *)self font];
  UIFontDesign = CTFontGetUIFontDesign();

  LOBYTE(v2) = [UIFontDesign isEqualToString:*MEMORY[0x1E69658C8]];
  return v2;
}

@end