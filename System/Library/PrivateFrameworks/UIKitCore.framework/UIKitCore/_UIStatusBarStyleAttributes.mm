@interface _UIStatusBarStyleAttributes
+ (id)overriddenStyleAttributes;
+ (id)styleAttributesForStatusBar:(id)bar style:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRounded;
- (_UIStatusBarStyleAttributes)initWithCoder:(id)coder;
- (_UIStatusBarStyleAttributes)styleAttributesWithOverrides:(id)overrides;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)fontForStyle:(int64_t)style;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIStatusBarStyleAttributes

- (id)copyWithZone:(_NSZone *)zone
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

- (_UIStatusBarStyleAttributes)initWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = _UIStatusBarStyleAttributes;
  coderCopy = coder;
  v4 = [(_UIStatusBarStyleAttributes *)&v16 init];
  v4->_style = [coderCopy decodeIntegerForKey:{@"style", v16.receiver, v16.super_class}];
  v4->_mode = [coderCopy decodeIntegerForKey:@"mode"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"traitCollection"];
  traitCollection = v4->_traitCollection;
  v4->_traitCollection = v5;

  v4->_effectiveLayoutDirection = [coderCopy decodeIntegerForKey:@"effectiveLayoutDirection"];
  [coderCopy decodeDoubleForKey:@"iconScale"];
  v4->_iconScale = v7;
  v4->_iconSize = [coderCopy decodeIntegerForKey:@"iconSize"];
  v4->_symbolScale = [coderCopy decodeIntegerForKey:@"symbolScale"];
  v4->_scaledFixedWidthBar = [coderCopy decodeBoolForKey:@"scaledFixedWidthBar"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"font"];
  [(_UIStatusBarStyleAttributes *)v4 setFont:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emphasizedFont"];
  [(_UIStatusBarStyleAttributes *)v4 setEmphasizedFont:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smallFont"];
  [(_UIStatusBarStyleAttributes *)v4 setSmallFont:v10];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"textColor"];
  [(_UIStatusBarStyleAttributes *)v4 setTextColor:v11];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageTintColor"];
  [(_UIStatusBarStyleAttributes *)v4 setImageTintColor:v12];

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageDimmedTintColor"];
  [(_UIStatusBarStyleAttributes *)v4 setImageDimmedTintColor:v13];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageNamePrefixes"];

  [(_UIStatusBarStyleAttributes *)v4 setImageNamePrefixes:v14];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  style = self->_style;
  coderCopy = coder;
  [coderCopy encodeInteger:style forKey:@"style"];
  [coderCopy encodeInteger:self->_mode forKey:@"mode"];
  [coderCopy encodeObject:self->_traitCollection forKey:@"traitCollection"];
  [coderCopy encodeInteger:self->_effectiveLayoutDirection forKey:@"effectiveLayoutDirection"];
  [coderCopy encodeDouble:@"iconScale" forKey:self->_iconScale];
  [coderCopy encodeInteger:self->_iconSize forKey:@"iconSize"];
  [coderCopy encodeInteger:self->_symbolScale forKey:@"symbolScale"];
  [coderCopy encodeBool:self->_scaledFixedWidthBar forKey:@"scaledFixedWidthBar"];
  [coderCopy encodeObject:self->_font forKey:@"font"];
  [coderCopy encodeObject:self->_emphasizedFont forKey:@"emphasizedFont"];
  [coderCopy encodeObject:self->_smallFont forKey:@"smallFont"];
  [coderCopy encodeObject:self->_textColor forKey:@"textColor"];
  [coderCopy encodeObject:self->_imageTintColor forKey:@"imageTintColor"];
  [coderCopy encodeObject:self->_imageDimmedTintColor forKey:@"imageDimmedTintColor"];
  [coderCopy encodeObject:self->_imageNamePrefixes forKey:@"imageNamePrefixes"];
}

+ (id)styleAttributesForStatusBar:(id)bar style:(int64_t)style
{
  barCopy = bar;
  if (style)
  {
    if (style != 4)
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = currentHandler;
    v29 = @"The status bar style should never be set to .inherited, it should only be used to notify about using the main style in setStyle:forPartWithIdentifier:";
    v30 = a2;
    selfCopy2 = self;
    v32 = 96;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = currentHandler;
    v29 = @"The default style should have been resolved to .lightContent or .darkContent already";
    v30 = a2;
    selfCopy2 = self;
    v32 = 95;
  }

  [currentHandler handleFailureInMethod:v30 object:selfCopy2 file:@"_UIStatusBarStyleAttributes.m" lineNumber:v32 description:v29];

LABEL_3:
  v8 = objc_alloc_init(self);
  *(v8 + 2) = style;
  *(v8 + 3) = [barCopy mode];
  *(v8 + 5) = [barCopy effectiveUserInterfaceLayoutDirection];
  *(v8 + 6) = 0x3FF0000000000000;
  *(v8 + 7) = 0;
  traitCollection = [barCopy traitCollection];
  [traitCollection displayScale];
  if (v10 == 0.0)
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen scale];
    v13 = v12;
    v14 = objc_opt_self();
    v15 = [traitCollection traitCollectionByReplacingCGFloatValue:v14 forTrait:v13];

    traitCollection = v15;
  }

  objc_storeStrong(v8 + 4, traitCollection);
  [traitCollection displayScale];
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
  foregroundColor = [barCopy foregroundColor];

  if (foregroundColor)
  {
    foregroundColor2 = [barCopy foregroundColor];
    v23 = *(v8 + 12);
    *(v8 + 12) = foregroundColor2;

    foregroundColor3 = [barCopy foregroundColor];
    v25 = *(v8 + 13);
    *(v8 + 13) = foregroundColor3;
  }

  return v8;
}

+ (id)overriddenStyleAttributes
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    style = self->_style;
    if (style != [v7 style] || (mode = self->_mode, mode != objc_msgSend(v7, "mode")))
    {
      v6 = 0;
LABEL_29:

      goto LABEL_30;
    }

    traitCollection = self->_traitCollection;
    traitCollection = [v7 traitCollection];
    font = traitCollection;
    v13 = traitCollection;
    v14 = v13;
    if (font == v13)
    {
    }

    else
    {
      v6 = 0;
      if (!font || !v13)
      {
        emphasizedFont = v13;
        goto LABEL_26;
      }

      v15 = [(UITraitCollection *)font isEqual:v13];

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
    font = [v7 font];
    if (!_deferringTokenEqualToToken(font, font))
    {
      v6 = 0;
      goto LABEL_27;
    }

    emphasizedFont = self->_emphasizedFont;
    emphasizedFont = [v7 emphasizedFont];
    if (_deferringTokenEqualToToken(emphasizedFont, emphasizedFont))
    {
      smallFont = self->_smallFont;
      smallFont = [v7 smallFont];
      if (_deferringTokenEqualToToken(smallFont, smallFont))
      {
        textColor = self->_textColor;
        textColor = [v7 textColor];
        if (_deferringTokenEqualToToken(textColor, textColor))
        {
          imageTintColor = self->_imageTintColor;
          imageTintColor = [v7 imageTintColor];
          if (_deferringTokenEqualToToken(imageTintColor, imageTintColor))
          {
            imageDimmedTintColor = self->_imageDimmedTintColor;
            imageDimmedTintColor = [v7 imageDimmedTintColor];
            if (_deferringTokenEqualToToken(imageDimmedTintColor, imageDimmedTintColor))
            {
              imageNamePrefixes = self->_imageNamePrefixes;
              imageNamePrefixes = [v7 imageNamePrefixes];
              v6 = _deferringTokenEqualToToken(imageNamePrefixes, imageNamePrefixes);
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

- (_UIStatusBarStyleAttributes)styleAttributesWithOverrides:(id)overrides
{
  overridesCopy = overrides;
  v5 = overridesCopy;
  if (!overridesCopy || overridesCopy == self)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(_UIStatusBarStyleAttributes *)self copy];
    [(_UIStatusBarStyleAttributes *)v5 iconScale];
    if (v7 > 0.0)
    {
      [(_UIStatusBarStyleAttributes *)v5 iconScale];
      [(_UIStatusBarStyleAttributes *)selfCopy setIconScale:?];
    }

    if ([(_UIStatusBarStyleAttributes *)v5 iconSize])
    {
      [(_UIStatusBarStyleAttributes *)selfCopy setIconSize:[(_UIStatusBarStyleAttributes *)v5 iconSize]];
    }

    if ([(_UIStatusBarStyleAttributes *)v5 symbolScale])
    {
      [(_UIStatusBarStyleAttributes *)selfCopy setSymbolScale:[(_UIStatusBarStyleAttributes *)v5 symbolScale]];
    }

    font = [(_UIStatusBarStyleAttributes *)v5 font];

    if (font)
    {
      font2 = [(_UIStatusBarStyleAttributes *)v5 font];
      [(_UIStatusBarStyleAttributes *)selfCopy setFont:font2];
    }

    emphasizedFont = [(_UIStatusBarStyleAttributes *)v5 emphasizedFont];

    if (emphasizedFont)
    {
      emphasizedFont2 = [(_UIStatusBarStyleAttributes *)v5 emphasizedFont];
      [(_UIStatusBarStyleAttributes *)selfCopy setEmphasizedFont:emphasizedFont2];
    }

    smallFont = [(_UIStatusBarStyleAttributes *)v5 smallFont];

    if (smallFont)
    {
      smallFont2 = [(_UIStatusBarStyleAttributes *)v5 smallFont];
      [(_UIStatusBarStyleAttributes *)selfCopy setSmallFont:smallFont2];
    }

    textColor = [(_UIStatusBarStyleAttributes *)v5 textColor];

    if (textColor)
    {
      textColor2 = [(_UIStatusBarStyleAttributes *)v5 textColor];
      [(_UIStatusBarStyleAttributes *)selfCopy setTextColor:textColor2];
    }

    imageTintColor = [(_UIStatusBarStyleAttributes *)v5 imageTintColor];

    if (imageTintColor)
    {
      imageTintColor2 = [(_UIStatusBarStyleAttributes *)v5 imageTintColor];
      [(_UIStatusBarStyleAttributes *)selfCopy setImageTintColor:imageTintColor2];
    }

    imageDimmedTintColor = [(_UIStatusBarStyleAttributes *)v5 imageDimmedTintColor];

    if (imageDimmedTintColor)
    {
      imageDimmedTintColor2 = [(_UIStatusBarStyleAttributes *)v5 imageDimmedTintColor];
      [(_UIStatusBarStyleAttributes *)selfCopy setImageDimmedTintColor:imageDimmedTintColor2];
    }

    imageNamePrefixes = [(_UIStatusBarStyleAttributes *)v5 imageNamePrefixes];

    if (imageNamePrefixes)
    {
      imageNamePrefixes2 = [(_UIStatusBarStyleAttributes *)v5 imageNamePrefixes];
      [(_UIStatusBarStyleAttributes *)selfCopy setImageNamePrefixes:imageNamePrefixes2];
    }
  }

  return selfCopy;
}

- (id)fontForStyle:(int64_t)style
{
  if (style == 2)
  {
    smallFont = [(_UIStatusBarStyleAttributes *)self smallFont];
  }

  else if (style == 1)
  {
    smallFont = [(_UIStatusBarStyleAttributes *)self emphasizedFont];
  }

  else
  {
    if (style)
    {
      goto LABEL_8;
    }

    smallFont = [(_UIStatusBarStyleAttributes *)self font];
  }

  a2 = smallFont;
LABEL_8:

  return a2;
}

- (BOOL)isRounded
{
  font = [(_UIStatusBarStyleAttributes *)self font];
  UIFontDesign = CTFontGetUIFontDesign();

  LOBYTE(font) = [UIFontDesign isEqualToString:*MEMORY[0x1E69658C8]];
  return font;
}

@end