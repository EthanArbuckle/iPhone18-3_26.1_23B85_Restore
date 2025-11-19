@interface UISSlotStyle
+ (id)slotStyleWithAccessibilityButtonShapes:(unint64_t)a3 accessibilityContrast:(unint64_t)a4 displayRange:(unint64_t)a5 displayScale:(unsigned __int8)a6 layoutDirection:(unint64_t)a7 legibilityWeight:(unint64_t)a8 localization:(id)a9 preferredContentSizeCategory:(unint64_t)a10 tintColor:(CGColor *)a11 userInterfaceIdiom:(unint64_t)a12 userInterfaceStyle:(unint64_t)a13;
- (BOOL)isEqual:(id)a3;
- (NSArray)assetAppearanceNames;
- (UISSlotStyle)initWithAccessibilityButtonShapes:(unint64_t)a3 accessibilityContrast:(unint64_t)a4 displayRange:(unint64_t)a5 displayScale:(unsigned __int8)a6 layoutDirection:(unint64_t)a7 legibilityWeight:(unint64_t)a8 localization:(id)a9 preferredContentSizeCategory:(unint64_t)a10 tintColor:(CGColor *)a11 userInterfaceIdiom:(unint64_t)a12 userInterfaceStyle:(unint64_t)a13 textStylePlatform:(unint64_t)a14;
- (UISSlotStyle)initWithCoder:(id)a3;
- (UISSlotStyle)initWithStyle:(id)a3;
- (__CFString)fontContentSizeCategory;
- (__CTFont)newFontForTextStyle:(__CFString *)a3 attributes:(__CFDictionary *)a4;
- (id)assetGlyphWithName:(id)a3 glyphSize:(int64_t)a4 glyphWeight:(int64_t)a5 glyphPointSize:(double)a6;
- (id)assetGlyphWithName:(id)a3 glyphSize:(int64_t)a4 textStyle:(__CFString *)a5;
- (id)copyWithChangeBlock:(id)a3;
- (int64_t)assetDeviceIdiom;
- (int64_t)assetLayoutDirection;
- (unint64_t)gradeWithOnlyFails:(unint64_t)a3 allowedLocalizations:(id)a4;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UISSlotStyle

+ (id)slotStyleWithAccessibilityButtonShapes:(unint64_t)a3 accessibilityContrast:(unint64_t)a4 displayRange:(unint64_t)a5 displayScale:(unsigned __int8)a6 layoutDirection:(unint64_t)a7 legibilityWeight:(unint64_t)a8 localization:(id)a9 preferredContentSizeCategory:(unint64_t)a10 tintColor:(CGColor *)a11 userInterfaceIdiom:(unint64_t)a12 userInterfaceStyle:(unint64_t)a13
{
  v15 = a6;
  v19 = a9;
  v20 = [[UISSlotStyle alloc] initWithAccessibilityButtonShapes:a3 accessibilityContrast:a4 displayRange:a5 displayScale:v15 layoutDirection:a7 legibilityWeight:a8 localization:v19 preferredContentSizeCategory:a10 tintColor:a11 userInterfaceIdiom:a12 userInterfaceStyle:a13 textStylePlatform:0xFFFFFFFFLL];

  return v20;
}

- (UISSlotStyle)initWithAccessibilityButtonShapes:(unint64_t)a3 accessibilityContrast:(unint64_t)a4 displayRange:(unint64_t)a5 displayScale:(unsigned __int8)a6 layoutDirection:(unint64_t)a7 legibilityWeight:(unint64_t)a8 localization:(id)a9 preferredContentSizeCategory:(unint64_t)a10 tintColor:(CGColor *)a11 userInterfaceIdiom:(unint64_t)a12 userInterfaceStyle:(unint64_t)a13 textStylePlatform:(unint64_t)a14
{
  v14 = a8;
  v15 = a7;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v21 = a9;
  v26.receiver = self;
  v26.super_class = UISSlotStyle;
  v22 = [(UISSlotStyle *)&v26 init];
  if (v22)
  {
    v23 = [v21 copy];
    localization = v22->_localization;
    v22->_localization = v23;

    v22->_tintColor = CGColorRetain(a11);
    v22->_fields.all = v19 & 1 | (2 * (v18 & 1)) & 3 | (4 * (v17 & 3)) & 0xF | (16 * (a6 & 7)) & 0x7F | ((v15 & 1) << 7) | ((v14 & 1) << 8) & 0xE1FF | ((a10 & 0xF) << 9) | ((a12 & 7) << 13) | ((a13 & 1) << 16) | ((a14 & 7) << 17) | v22->_fields.all & 0xFFF00000;
  }

  return v22;
}

- (UISSlotStyle)initWithStyle:(id)a3
{
  v3 = a3;
  v17 = [v3 accessibilityButtonShapes];
  v16 = [v3 accessibilityContrast];
  v15 = [v3 displayRange];
  v4 = [v3 displayScale];
  v5 = [v3 layoutDirection];
  v6 = [v3 legibilityWeight];
  v7 = [v3 localization];
  v8 = [v3 preferredContentSizeCategory];
  v9 = [v3 tintColor];
  v10 = [v3 userInterfaceIdiom];
  v11 = [v3 userInterfaceStyle];
  v12 = [v3 textStylePlatform];

  v13 = [(UISSlotStyle *)self initWithAccessibilityButtonShapes:v17 accessibilityContrast:v16 displayRange:v15 displayScale:v4 layoutDirection:v5 legibilityWeight:v6 localization:v7 preferredContentSizeCategory:v8 tintColor:v9 userInterfaceIdiom:v10 userInterfaceStyle:v11 textStylePlatform:v12];
  return v13;
}

- (UISSlotStyle)initWithCoder:(id)a3
{
  components[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = UISSlotStyle;
  v5 = [(UISSlotStyle *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localization"];
    localization = v5->_localization;
    v5->_localization = v6;

    v5->_fields.all = [v4 decodeIntegerForKey:@"fieldsAll"];
    v8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    [v4 decodeDoubleForKey:@"tintColorRed"];
    components[0] = v9;
    [v4 decodeDoubleForKey:@"tintColorGreen"];
    components[1] = v10;
    [v4 decodeDoubleForKey:@"tintColorBlue"];
    components[2] = v11;
    [v4 decodeDoubleForKey:@"tintColorAlpha"];
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

- (void)encodeWithCoder:(id)a3
{
  v6[4] = *MEMORY[0x1E69E9840];
  localization = self->_localization;
  v5 = a3;
  [v5 encodeObject:localization forKey:@"localization"];
  [v5 encodeInteger:self->_fields.all forKey:@"fieldsAll"];
  UISGetColorSRGBComponents(self->_tintColor, v6);
  [v5 encodeDouble:@"tintColorRed" forKey:v6[0]];
  [v5 encodeDouble:@"tintColorGreen" forKey:v6[1]];
  [v5 encodeDouble:@"tintColorBlue" forKey:v6[2]];
  [v5 encodeDouble:@"tintColorAlpha" forKey:v6[3]];
}

- (unint64_t)hash
{
  all = self->_fields.all;
  v4 = [(NSString *)self->_localization hash]^ all;
  return v4 ^ CFHash(self->_tintColor);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 && self->_fields.all == *(v4 + 6) && ((localization = self->_localization, localization == *(v4 + 1)) || [(NSString *)localization isEqual:?]) && CGColorEqualToColor(self->_tintColor, *(v4 + 2));

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

    v4 = [(UISSlotStyle *)self userInterfaceStyle];
    if (!v4)
    {
      return &unk_1F0A84550;
    }

    if (v4 == 1)
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
  v2 = [(UISSlotStyle *)self userInterfaceIdiom];
  if (v2 > 7)
  {
    return 7;
  }

  else
  {
    return qword_196019040[v2];
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

- (id)assetGlyphWithName:(id)a3 glyphSize:(int64_t)a4 glyphWeight:(int64_t)a5 glyphPointSize:(double)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (_MergedGlobals_10 != -1)
  {
    dispatch_once(&_MergedGlobals_10, &__block_literal_global_6);
  }

  v11 = [MEMORY[0x1E69C8710] infoForName:v10 allowsPrivate:1 locale:0];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 name];

    v14 = [v12 bundleType];
    v15 = &qword_1ED51BF50;
    if (v14 == 1)
    {
      v15 = &qword_1ED51BF58;
    }

    v16 = *v15;
    v17 = [(UISSlotStyle *)self legibilityWeight];
    v18 = 7;
    if (a5 < 7)
    {
      v18 = a5;
    }

    v19 = v18 + 2;
    v32 = 0u;
    v33 = 0u;
    if (v17 == 1)
    {
      v20 = v19;
    }

    else
    {
      v20 = a5;
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
          v27 = [v16 namedVectorGlyphWithName:v13 scaleFactor:-[UISSlotStyle assetDeviceIdiom](self deviceIdiom:"assetDeviceIdiom") layoutDirection:-[UISSlotStyle assetLayoutDirection](self glyphSize:"assetLayoutDirection") glyphWeight:a4 glyphPointSize:v20 appearanceName:{v25, v26, a6}];
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
    v13 = v10;
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

- (id)assetGlyphWithName:(id)a3 glyphSize:(int64_t)a4 textStyle:(__CFString *)a5
{
  v7 = a3;
  [(UISSlotStyle *)self fontContentSizeCategory];
  CTFontDescriptorGetTextStyleSize();
  for (i = 0; i != 9; ++i)
  {
    if (*(MEMORY[0x1E69656E8] + 8 * i) > NAN)
    {
      break;
    }
  }

  v9 = [UISSlotStyle assetGlyphWithName:"assetGlyphWithName:glyphSize:glyphWeight:glyphPointSize:" glyphSize:v7 glyphWeight:a4 glyphPointSize:?];

  return v9;
}

- (id)copyWithChangeBlock:(id)a3
{
  v4 = a3;
  v5 = [(UISSlotStyle *)[UISMutableSlotStyle alloc] initWithStyle:self];
  v4[2](v4, v5);

  if (v5)
  {
    v6 = objc_opt_class();
    object_setClass(v5, v6);
  }

  return v5;
}

- (unint64_t)gradeWithOnlyFails:(unint64_t)a3 allowedLocalizations:(id)a4
{
  v6 = a4;
  v7 = 0;
  v8 = 1;
  do
  {
    if ((v8 & a3) == 0)
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
          v9 = [(UISSlotStyle *)self userInterfaceStyle];
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

        v11 = [(UISSlotStyle *)self localization];
        v12 = [v6 containsObject:v11];

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
        v9 = [(UISSlotStyle *)self accessibilityContrast];
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
          v9 = [(UISSlotStyle *)self layoutDirection];
        }

        else
        {
          if (v8 != 16)
          {
            goto LABEL_33;
          }

          v9 = [(UISSlotStyle *)self legibilityWeight];
        }

LABEL_31:
        if (v9 <= 1)
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

- (__CTFont)newFontForTextStyle:(__CFString *)a3 attributes:(__CFDictionary *)a4
{
  v5 = *MEMORY[0x1E695E480];
  if (a4)
  {
    Count = CFDictionaryGetCount(a4);
    MutableCopy = CFDictionaryCreateMutableCopy(v5, Count + 2, a4);
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