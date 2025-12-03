@interface UISSlotStyle
+ (id)slotStyleWithAccessibilityButtonShapes:(unint64_t)shapes accessibilityContrast:(unint64_t)contrast displayRange:(unint64_t)range displayScale:(unsigned __int8)scale layoutDirection:(unint64_t)direction legibilityWeight:(unint64_t)weight localization:(id)localization preferredContentSizeCategory:(unint64_t)self0 tintColor:(CGColor *)self1 userInterfaceIdiom:(unint64_t)self2 userInterfaceStyle:(unint64_t)self3;
- (BOOL)isEqual:(id)equal;
- (NSArray)assetAppearanceNames;
- (UISSlotStyle)initWithAccessibilityButtonShapes:(unint64_t)shapes accessibilityContrast:(unint64_t)contrast displayRange:(unint64_t)range displayScale:(unsigned __int8)scale layoutDirection:(unint64_t)direction legibilityWeight:(unint64_t)weight localization:(id)localization preferredContentSizeCategory:(unint64_t)self0 tintColor:(CGColor *)self1 userInterfaceIdiom:(unint64_t)self2 userInterfaceStyle:(unint64_t)self3 textStylePlatform:(unint64_t)self4;
- (UISSlotStyle)initWithCoder:(id)coder;
- (UISSlotStyle)initWithStyle:(id)style;
- (__CFString)fontContentSizeCategory;
- (__CTFont)newFontForTextStyle:(__CFString *)style attributes:(__CFDictionary *)attributes;
- (id)assetGlyphWithName:(id)name glyphSize:(int64_t)size glyphWeight:(int64_t)weight glyphPointSize:(double)pointSize;
- (id)assetGlyphWithName:(id)name glyphSize:(int64_t)size textStyle:(__CFString *)style;
- (id)copyWithChangeBlock:(id)block;
- (int64_t)assetDeviceIdiom;
- (int64_t)assetLayoutDirection;
- (unint64_t)gradeWithOnlyFails:(unint64_t)fails allowedLocalizations:(id)localizations;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UISSlotStyle

+ (id)slotStyleWithAccessibilityButtonShapes:(unint64_t)shapes accessibilityContrast:(unint64_t)contrast displayRange:(unint64_t)range displayScale:(unsigned __int8)scale layoutDirection:(unint64_t)direction legibilityWeight:(unint64_t)weight localization:(id)localization preferredContentSizeCategory:(unint64_t)self0 tintColor:(CGColor *)self1 userInterfaceIdiom:(unint64_t)self2 userInterfaceStyle:(unint64_t)self3
{
  scaleCopy = scale;
  localizationCopy = localization;
  v20 = [[UISSlotStyle alloc] initWithAccessibilityButtonShapes:shapes accessibilityContrast:contrast displayRange:range displayScale:scaleCopy layoutDirection:direction legibilityWeight:weight localization:localizationCopy preferredContentSizeCategory:category tintColor:color userInterfaceIdiom:idiom userInterfaceStyle:style textStylePlatform:0xFFFFFFFFLL];

  return v20;
}

- (UISSlotStyle)initWithAccessibilityButtonShapes:(unint64_t)shapes accessibilityContrast:(unint64_t)contrast displayRange:(unint64_t)range displayScale:(unsigned __int8)scale layoutDirection:(unint64_t)direction legibilityWeight:(unint64_t)weight localization:(id)localization preferredContentSizeCategory:(unint64_t)self0 tintColor:(CGColor *)self1 userInterfaceIdiom:(unint64_t)self2 userInterfaceStyle:(unint64_t)self3 textStylePlatform:(unint64_t)self4
{
  weightCopy = weight;
  directionCopy = direction;
  rangeCopy = range;
  contrastCopy = contrast;
  shapesCopy = shapes;
  localizationCopy = localization;
  v26.receiver = self;
  v26.super_class = UISSlotStyle;
  v22 = [(UISSlotStyle *)&v26 init];
  if (v22)
  {
    v23 = [localizationCopy copy];
    localization = v22->_localization;
    v22->_localization = v23;

    v22->_tintColor = CGColorRetain(color);
    v22->_fields.all = shapesCopy & 1 | (2 * (contrastCopy & 1)) & 3 | (4 * (rangeCopy & 3)) & 0xF | (16 * (scale & 7)) & 0x7F | ((directionCopy & 1) << 7) | ((weightCopy & 1) << 8) & 0xE1FF | ((category & 0xF) << 9) | ((idiom & 7) << 13) | ((style & 1) << 16) | ((platform & 7) << 17) | v22->_fields.all & 0xFFF00000;
  }

  return v22;
}

- (UISSlotStyle)initWithStyle:(id)style
{
  styleCopy = style;
  accessibilityButtonShapes = [styleCopy accessibilityButtonShapes];
  accessibilityContrast = [styleCopy accessibilityContrast];
  displayRange = [styleCopy displayRange];
  displayScale = [styleCopy displayScale];
  layoutDirection = [styleCopy layoutDirection];
  legibilityWeight = [styleCopy legibilityWeight];
  localization = [styleCopy localization];
  preferredContentSizeCategory = [styleCopy preferredContentSizeCategory];
  tintColor = [styleCopy tintColor];
  userInterfaceIdiom = [styleCopy userInterfaceIdiom];
  userInterfaceStyle = [styleCopy userInterfaceStyle];
  textStylePlatform = [styleCopy textStylePlatform];

  v13 = [(UISSlotStyle *)self initWithAccessibilityButtonShapes:accessibilityButtonShapes accessibilityContrast:accessibilityContrast displayRange:displayRange displayScale:displayScale layoutDirection:layoutDirection legibilityWeight:legibilityWeight localization:localization preferredContentSizeCategory:preferredContentSizeCategory tintColor:tintColor userInterfaceIdiom:userInterfaceIdiom userInterfaceStyle:userInterfaceStyle textStylePlatform:textStylePlatform];
  return v13;
}

- (UISSlotStyle)initWithCoder:(id)coder
{
  components[4] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = UISSlotStyle;
  v5 = [(UISSlotStyle *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localization"];
    localization = v5->_localization;
    v5->_localization = v6;

    v5->_fields.all = [coderCopy decodeIntegerForKey:@"fieldsAll"];
    v8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    [coderCopy decodeDoubleForKey:@"tintColorRed"];
    components[0] = v9;
    [coderCopy decodeDoubleForKey:@"tintColorGreen"];
    components[1] = v10;
    [coderCopy decodeDoubleForKey:@"tintColorBlue"];
    components[2] = v11;
    [coderCopy decodeDoubleForKey:@"tintColorAlpha"];
    components[3] = v12;
    v5->_tintColor = CGColorCreate(v8, components);
    CGColorSpaceRelease(v8);
  }

  return v5;
}

- (void)dealloc
{
  CGColorRelease(self->_tintColor);
  v3.receiver = self;
  v3.super_class = UISSlotStyle;
  [(UISSlotStyle *)&v3 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  v6[4] = *MEMORY[0x1E69E9840];
  localization = self->_localization;
  coderCopy = coder;
  [coderCopy encodeObject:localization forKey:@"localization"];
  [coderCopy encodeInteger:self->_fields.all forKey:@"fieldsAll"];
  UISGetColorSRGBComponents(self->_tintColor, v6);
  [coderCopy encodeDouble:@"tintColorRed" forKey:v6[0]];
  [coderCopy encodeDouble:@"tintColorGreen" forKey:v6[1]];
  [coderCopy encodeDouble:@"tintColorBlue" forKey:v6[2]];
  [coderCopy encodeDouble:@"tintColorAlpha" forKey:v6[3]];
}

- (unint64_t)hash
{
  all = self->_fields.all;
  v4 = [(NSString *)self->_localization hash]^ all;
  return v4 ^ CFHash(self->_tintColor);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && self->_fields.all == *(equalCopy + 6) && ((localization = self->_localization, localization == *(equalCopy + 1)) || [(NSString *)localization isEqual:?]) && CGColorEqualToColor(self->_tintColor, *(equalCopy + 2));

  return v6;
}

- (NSArray)assetAppearanceNames
{
  result = [(UISSlotStyle *)self accessibilityContrast];
  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    userInterfaceStyle = [(UISSlotStyle *)self userInterfaceStyle];
    if (!userInterfaceStyle)
    {
      return &unk_1F0A84550;
    }

    if (userInterfaceStyle == 1)
    {
      return &unk_1F0A84568;
    }
  }

  if ([(UISSlotStyle *)self userInterfaceStyle])
  {
    return &unk_1F0A84598;
  }

  else
  {
    return &unk_1F0A84580;
  }
}

- (int64_t)assetDeviceIdiom
{
  userInterfaceIdiom = [(UISSlotStyle *)self userInterfaceIdiom];
  if (userInterfaceIdiom > 7)
  {
    return 7;
  }

  else
  {
    return qword_196019040[userInterfaceIdiom];
  }
}

- (int64_t)assetLayoutDirection
{
  if ([(UISSlotStyle *)self layoutDirection])
  {
    return 4;
  }

  else
  {
    return 5;
  }
}

- (__CFString)fontContentSizeCategory
{
  result = [(UISSlotStyle *)self preferredContentSizeCategory];
  if (result > 5)
  {
    if (result > 8)
    {
      if (result == 9)
      {
        v3 = MEMORY[0x1E6965698];
      }

      else if (result == 10)
      {
        v3 = MEMORY[0x1E69656A0];
      }

      else
      {
        if (result != 11)
        {
          return result;
        }

        v3 = MEMORY[0x1E69656A8];
      }
    }

    else if (result == 6)
    {
      v3 = MEMORY[0x1E69656E0];
    }

    else if (result == 7)
    {
      v3 = MEMORY[0x1E6965690];
    }

    else
    {
      v3 = MEMORY[0x1E6965688];
    }
  }

  else if (result > 2)
  {
    if (result == 3)
    {
      v3 = MEMORY[0x1E69656B0];
    }

    else if (result == 4)
    {
      v3 = MEMORY[0x1E69656C8];
    }

    else
    {
      v3 = MEMORY[0x1E69656D8];
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      v3 = MEMORY[0x1E69656C0];
    }

    else
    {
      if (result != 2)
      {
        return result;
      }

      v3 = MEMORY[0x1E69656B8];
    }
  }

  else
  {
    v3 = MEMORY[0x1E69656D0];
  }

  return *v3;
}

- (id)assetGlyphWithName:(id)name glyphSize:(int64_t)size glyphWeight:(int64_t)weight glyphPointSize:(double)pointSize
{
  v37 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (_MergedGlobals_10 != -1)
  {
    dispatch_once(&_MergedGlobals_10, &__block_literal_global_6);
  }

  v11 = [MEMORY[0x1E69C8710] infoForName:nameCopy allowsPrivate:1 locale:0];
  v12 = v11;
  if (v11)
  {
    name = [v11 name];

    bundleType = [v12 bundleType];
    v15 = &qword_1ED51BF50;
    if (bundleType == 1)
    {
      v15 = &qword_1ED51BF58;
    }

    v16 = *v15;
    legibilityWeight = [(UISSlotStyle *)self legibilityWeight];
    weightCopy = 7;
    if (weight < 7)
    {
      weightCopy = weight;
    }

    v19 = weightCopy + 2;
    v32 = 0u;
    v33 = 0u;
    if (legibilityWeight == 1)
    {
      weightCopy2 = v19;
    }

    else
    {
      weightCopy2 = weight;
    }

    v34 = 0uLL;
    v35 = 0uLL;
    obj = [(UISSlotStyle *)self assetAppearanceNames];
    v21 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v30 = v12;
      v23 = *v33;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v32 + 1) + 8 * i);
          [(UISSlotStyle *)self assetScaleFactor];
          v27 = [v16 namedVectorGlyphWithName:name scaleFactor:-[UISSlotStyle assetDeviceIdiom](self deviceIdiom:"assetDeviceIdiom") layoutDirection:-[UISSlotStyle assetLayoutDirection](self glyphSize:"assetLayoutDirection") glyphWeight:size glyphPointSize:weightCopy2 appearanceName:{v25, v26, pointSize}];
          if (v27)
          {
            v28 = v27;
            goto LABEL_21;
          }
        }

        v22 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }

      v28 = 0;
LABEL_21:
      v12 = v30;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
    name = nameCopy;
  }

  return v28;
}

void __85__UISSlotStyle_Convenience__assetGlyphWithName_glyphSize_glyphWeight_glyphPointSize___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E6999368]);
  v1 = [MEMORY[0x1E69C8708] public];
  v2 = [v0 initWithName:@"Assets" fromBundle:v1 error:0];
  v3 = qword_1ED51BF50;
  qword_1ED51BF50 = v2;

  v4 = objc_alloc(MEMORY[0x1E6999368]);
  v7 = [MEMORY[0x1E69C8708] private];
  v5 = [v4 initWithName:@"Assets" fromBundle:v7 error:0];
  v6 = qword_1ED51BF58;
  qword_1ED51BF58 = v5;
}

- (id)assetGlyphWithName:(id)name glyphSize:(int64_t)size textStyle:(__CFString *)style
{
  nameCopy = name;
  [(UISSlotStyle *)self fontContentSizeCategory];
  CTFontDescriptorGetTextStyleSize();
  for (i = 0; i != 9; ++i)
  {
    if (*(MEMORY[0x1E69656E8] + 8 * i) > NAN)
    {
      break;
    }
  }

  v9 = [UISSlotStyle assetGlyphWithName:"assetGlyphWithName:glyphSize:glyphWeight:glyphPointSize:" glyphSize:nameCopy glyphWeight:size glyphPointSize:?];

  return v9;
}

- (id)copyWithChangeBlock:(id)block
{
  blockCopy = block;
  v5 = [(UISSlotStyle *)[UISMutableSlotStyle alloc] initWithStyle:self];
  blockCopy[2](blockCopy, v5);

  if (v5)
  {
    v6 = objc_opt_class();
    object_setClass(v5, v6);
  }

  return v5;
}

- (unint64_t)gradeWithOnlyFails:(unint64_t)fails allowedLocalizations:(id)localizations
{
  localizationsCopy = localizations;
  v7 = 0;
  v8 = 1;
  do
  {
    if ((v8 & fails) == 0)
    {
      goto LABEL_33;
    }

    if (v8 > 31)
    {
      if (v8 <= 127)
      {
        if (v8 == 32)
        {
          if ([(UISSlotStyle *)self preferredContentSizeCategory]> 0xB)
          {
            goto LABEL_32;
          }
        }

        else if (v8 == 64 && [(UISSlotStyle *)self userInterfaceIdiom]> 7)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v8 == 128)
        {
          userInterfaceStyle = [(UISSlotStyle *)self userInterfaceStyle];
          goto LABEL_31;
        }

        if (v8 != 256)
        {
          if (v8 != 512)
          {
            goto LABEL_33;
          }

          if (UISIsColorInDisplayP3Gamut([(UISSlotStyle *)self tintColor]))
          {
            break;
          }

LABEL_32:
          v7 |= v8;
          goto LABEL_33;
        }

        localization = [(UISSlotStyle *)self localization];
        v12 = [localizationsCopy containsObject:localization];

        if ((v12 & 1) == 0)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v8 <= 3)
    {
      if (v8 == 1)
      {
        userInterfaceStyle = [(UISSlotStyle *)self accessibilityContrast];
        goto LABEL_31;
      }

      if (v8 == 2 && [(UISSlotStyle *)self displayRange]> 2)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v8 != 4)
      {
        if (v8 == 8)
        {
          userInterfaceStyle = [(UISSlotStyle *)self layoutDirection];
        }

        else
        {
          if (v8 != 16)
          {
            goto LABEL_33;
          }

          userInterfaceStyle = [(UISSlotStyle *)self legibilityWeight];
        }

LABEL_31:
        if (userInterfaceStyle <= 1)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (![(UISSlotStyle *)self displayScale]|| [(UISSlotStyle *)self displayScale]>= 5)
      {
        goto LABEL_32;
      }
    }

LABEL_33:
    v10 = v8 >= 0x101;
    v8 *= 2;
  }

  while (!v10);

  return v7;
}

- (__CTFont)newFontForTextStyle:(__CFString *)style attributes:(__CFDictionary *)attributes
{
  v5 = *MEMORY[0x1E695E480];
  if (attributes)
  {
    Count = CFDictionaryGetCount(attributes);
    MutableCopy = CFDictionaryCreateMutableCopy(v5, Count + 2, attributes);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v9 = MutableCopy;
  CFDictionaryAddValue(MutableCopy, *MEMORY[0x1E69657F0], [MEMORY[0x1E696AD98] numberWithLong:{-[UISSlotStyle fontLegibilityWeight](self, "fontLegibilityWeight")}]);
  [(UISSlotStyle *)self fontContentSizeCategory];
  v10 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  if (v9)
  {
    CFRelease(v9);
  }

  v11 = CTFontCreateWithFontDescriptor(v10, 0.0, 0);
  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
}

@end