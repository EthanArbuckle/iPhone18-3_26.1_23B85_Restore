@interface _UIColorPalette
+ (id)_coolColors;
+ (id)_warmColors;
+ (id)intelligenceAmbientPalette;
+ (id)intelligenceComputedPalette;
+ (id)intelligenceProcessingPalette;
+ (id)intelligenceSymbolLivingColorPalette;
+ (id)textAssistantPonderingFillPalette;
+ (id)textAssistantPonderingLightSheenPalette;
+ (id)textAssistantReplacementBuildInPalette;
+ (id)textAssistantReplacementBuildOutPalette;
+ (id)textAssistantReplacementSheenPalette;
- (BOOL)isEqual:(id)a3;
- (CGGradient)gradientRepresentation;
- (_UIColorPalette)initWithColors:(id)a3 locations:(id)a4 colorSpaceName:(id)a5;
- (id)paletteByMergingPalette:(id)a3;
- (unint64_t)hash;
@end

@implementation _UIColorPalette

- (_UIColorPalette)initWithColors:(id)a3 locations:(id)a4 colorSpaceName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = _UIColorPalette;
  v12 = [(_UIColorPalette *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_colors, a3);
    objc_storeStrong(&v13->_locations, a4);
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = @"kCGColorSpaceDeviceRGB";
    }

    objc_storeStrong(&v13->_colorSpaceName, v14);
  }

  return v13;
}

- (id)paletteByMergingPalette:(id)a3
{
  v5 = a3;
  v6 = [v5 locations];
  if ([v6 count])
  {
  }

  else
  {
    v7 = [(_UIColorPalette *)self locations];
    v8 = [v7 count];

    if (!v8)
    {
      v37 = [(_UIColorPalette *)self colors];
      v38 = [v5 colors];
      v13 = [v37 arrayByAddingObjectsFromArray:v38];

      v36 = [(_UIColorPalette *)self initWithColors:v13];
      goto LABEL_26;
    }
  }

  v9 = [v5 locations];
  if (![v9 count])
  {

    goto LABEL_24;
  }

  v10 = [(_UIColorPalette *)self locations];
  v11 = [v10 count];

  if (!v11)
  {
LABEL_24:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIColorPalette.m" lineNumber:63 description:{@"Can't merge a _UIColorPalette with locations, and one without locations."}];
    v36 = 0;
    goto LABEL_26;
  }

  v12 = [(_UIColorPalette *)self colors];
  v13 = [v12 mutableCopy];

  v14 = [(_UIColorPalette *)self locations];
  v15 = [v14 mutableCopy];

  v16 = [v5 colors];
  v17 = [v16 count];

  if (v17)
  {
    v18 = 0;
    do
    {
      v19 = [v5 locations];
      v20 = [v19 objectAtIndex:v18];
      v21 = v20;
      if (v20)
      {
        [v20 doubleValue];
        v23 = v22;
      }

      else
      {
        v23 = 0.0;
      }

      if ([v15 count])
      {
        v24 = 0;
        while (1)
        {
          v25 = [v15 objectAtIndex:v24];
          v26 = v25;
          if (v25)
          {
            [v25 doubleValue];
            v28 = v27;
          }

          else
          {
            v28 = 0.0;
          }

          if (v23 >= v28)
          {
            break;
          }

          if (++v24 >= [v15 count])
          {
            goto LABEL_19;
          }
        }

        v29 = [v5 colors];
        v30 = [v29 objectAtIndex:v18];
        [v13 insertObject:v30 atIndex:v24];

        v31 = [v5 locations];
        v32 = [v31 objectAtIndex:v18];
        [v15 insertObject:v32 atIndex:v24];
      }

LABEL_19:
      ++v18;
      v33 = [v5 colors];
      v34 = [v33 count];
    }

    while (v18 < v34);
  }

  v35 = [v5 colorSpaceName];
  v36 = [(_UIColorPalette *)self initWithColors:v13 locations:v15 colorSpaceName:v35];

LABEL_26:

  return v36;
}

- (CGGradient)gradientRepresentation
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = CGColorSpaceCreateWithName(self->_colorSpaceName);
  if (!v4)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_UIColorPalette.m" lineNumber:72 description:{@"Unable to create colorspace for name %@", self->_colorSpaceName}];
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = [(NSArray *)self->_colors count];
  Mutable = CFArrayCreateMutable(v5, v6, MEMORY[0x1E695E9C0]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = self->_colors;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        CFArrayAppendValue(Mutable, [*(*(&v22 + 1) + 8 * i) CGColor]);
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  locations = self->_locations;
  if (locations)
  {
    v14 = [(NSArray *)locations count];
    v15 = malloc_type_malloc(8 * v14, 0x100004000313F17uLL);
    if (v14)
    {
      for (j = 0; j != v14; ++j)
      {
        v17 = [(NSArray *)self->_locations objectAtIndex:j];
        [v17 doubleValue];
        v15[j] = v18;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = CGGradientCreateWithColors(v4, Mutable, v15);
  CGColorSpaceRelease(v4);
  CFRelease(Mutable);
  if (v15)
  {
    free(v15);
  }

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_UIColorPalette *)self colorSpaceName];
    v7 = [v5 colorSpaceName];
    v8 = v6;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      v11 = 0;
      if (!v8 || !v9)
      {
        goto LABEL_20;
      }

      v12 = [v8 isEqual:v9];

      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    v13 = [(_UIColorPalette *)self colors];
    v14 = [v5 colors];
    v8 = v13;
    v15 = v14;
    v10 = v15;
    if (v8 == v15)
    {

LABEL_15:
      v17 = [(_UIColorPalette *)self locations];
      v18 = [v5 locations];
      v8 = v17;
      v19 = v18;
      v10 = v19;
      if (v8 == v19)
      {
        v11 = 1;
      }

      else
      {
        v11 = 0;
        if (v8 && v19)
        {
          v11 = [v8 isEqual:v19];
        }
      }

      goto LABEL_20;
    }

    v11 = 0;
    if (v8 && v15)
    {
      v16 = [v8 isEqual:v15];

      if ((v16 & 1) == 0)
      {
LABEL_13:
        v11 = 0;
LABEL_21:

        goto LABEL_22;
      }

      goto LABEL_15;
    }

LABEL_20:

    goto LABEL_21;
  }

  v11 = 0;
LABEL_22:

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(_UIColorPalette *)self colorSpaceName];
  v5 = [v3 appendString:v4];

  v6 = [(_UIColorPalette *)self colors];
  v7 = [v3 appendObject:v6];

  v8 = [(_UIColorPalette *)self locations];
  v9 = [v3 appendObject:v8];

  v10 = [v3 hash];
  return v10;
}

+ (id)_warmColors
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [UIColor colorWithRed:1.0 green:0.56 blue:0.011 alpha:1.0];
  v6[0] = v2;
  v3 = [UIColor colorWithRed:0.933 green:0.227 blue:0.498 alpha:1.0];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)_coolColors
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [UIColor colorWithRed:0.768 green:0.364 blue:0.909 alpha:1.0];
  v6[0] = v2;
  v3 = [UIColor colorWithRed:0.337 green:0.756 blue:1.0 alpha:1.0];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)intelligenceAmbientPalette
{
  v3 = [a1 alloc];
  v4 = [a1 _warmColors];
  v5 = [a1 _coolColors];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  v7 = [v3 initWithColors:v6];

  return v7;
}

+ (id)intelligenceProcessingPalette
{
  v3 = [a1 alloc];
  v4 = [a1 _warmColors];
  v5 = [v3 initWithColors:v4];

  return v5;
}

+ (id)intelligenceComputedPalette
{
  v3 = [a1 alloc];
  v4 = [a1 _coolColors];
  v5 = [v3 initWithColors:v4];

  return v5;
}

+ (id)textAssistantPonderingFillPalette
{
  v11[5] = *MEMORY[0x1E69E9840];
  v2 = [a1 alloc];
  v3 = [UIColor colorWithHue:0.12 saturation:1.0 brightness:1.0 alpha:0.0];
  v4 = [UIColor colorWithHue:0.81 saturation:1.0 brightness:1.0 alpha:1.0, v3];
  v11[1] = v4;
  v5 = [UIColor colorWithHue:0.76 saturation:0.96 brightness:0.98 alpha:0.8];
  v11[2] = v5;
  v6 = [UIColor colorWithHue:0.66 saturation:1.0 brightness:0.81 alpha:0.72];
  v11[3] = v6;
  v7 = [UIColor colorWithHue:0.66 saturation:1.0 brightness:0.81 alpha:0.0];
  v11[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  v9 = [v2 initWithColors:v8 locations:&unk_1EFE2D690 colorSpaceName:0];

  return v9;
}

+ (id)textAssistantPonderingLightSheenPalette
{
  v11[5] = *MEMORY[0x1E69E9840];
  v2 = [a1 alloc];
  v3 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v4 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0, v3];
  v11[1] = v4;
  v5 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v11[2] = v5;
  v6 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v11[3] = v6;
  v7 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v11[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  v9 = [v2 initWithColors:v8 locations:&unk_1EFE2D6A8 colorSpaceName:0];

  return v9;
}

+ (id)textAssistantReplacementBuildInPalette
{
  v13[7] = *MEMORY[0x1E69E9840];
  v2 = [a1 alloc];
  v3 = [UIColor colorWithRed:0.489 green:0.631 blue:0.845 alpha:0.0];
  v4 = [UIColor colorWithRed:0.49 green:0.631 blue:0.847 alpha:0.5, v3];
  v13[1] = v4;
  v5 = [UIColor colorWithRed:0.801 green:0.615 blue:0.875 alpha:0.72];
  v13[2] = v5;
  v6 = [UIColor colorWithHue:0.986 saturation:0.349 brightness:0.948 alpha:1.0];
  v13[3] = v6;
  v7 = [UIColor colorWithHue:0.121 saturation:0.319 brightness:0.864 alpha:1.0];
  v13[4] = v7;
  v8 = [UIColor colorWithHue:0.057 saturation:0.092 brightness:0.95 alpha:1.0];
  v13[5] = v8;
  v9 = [UIColor colorWithHue:0.129 saturation:1.0 brightness:1.0 alpha:0.0];
  v13[6] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:7];
  v11 = [v2 initWithColors:v10 locations:&unk_1EFE2D6C0 colorSpaceName:0];

  return v11;
}

+ (id)textAssistantReplacementBuildOutPalette
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = [a1 alloc];
  v3 = [UIColor colorWithWhite:1.0 alpha:1.0];
  v10[0] = v3;
  v4 = [UIColor colorWithRed:0.945 green:0.678 blue:0.388 alpha:1.0];
  v10[1] = v4;
  v5 = [UIColor colorWithRed:0.812 green:0.518 blue:0.4 alpha:1.0];
  v10[2] = v5;
  v6 = [UIColor colorWithRed:0.475 green:0.345 blue:0.773 alpha:1.0];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8 = [v2 initWithColors:v7];

  return v8;
}

+ (id)textAssistantReplacementSheenPalette
{
  v13[7] = *MEMORY[0x1E69E9840];
  v2 = [a1 alloc];
  v3 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  v4 = [UIColor colorWithRed:1.2 green:1.2 blue:1.2 alpha:0.31, v3];
  v13[1] = v4;
  v5 = [UIColor colorWithRed:1.2 green:1.2 blue:1.2 alpha:0.4];
  v13[2] = v5;
  v6 = [UIColor colorWithRed:1.2 green:1.2 blue:1.2 alpha:0.6];
  v13[3] = v6;
  v7 = [UIColor colorWithRed:1.2 green:1.2 blue:1.2 alpha:0.6];
  v13[4] = v7;
  v8 = [UIColor colorWithRed:1.2 green:1.2 blue:1.2 alpha:1.0];
  v13[5] = v8;
  v9 = [UIColor colorWithRed:1.2 green:1.2 blue:1.2 alpha:0.0];
  v13[6] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:7];
  v11 = [v2 initWithColors:v10 locations:&unk_1EFE2D6D8 colorSpaceName:0];

  return v11;
}

+ (id)intelligenceSymbolLivingColorPalette
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = [a1 alloc];
  v3 = [UIColor colorWithRed:1.0 green:0.471 blue:0.2 alpha:1.0];
  v10[0] = v3;
  v4 = [UIColor colorWithRed:0.98 green:0.263 blue:0.408 alpha:1.0];
  v10[1] = v4;
  v5 = [UIColor colorWithRed:0.294 green:0.678 blue:0.976 alpha:1.0];
  v10[2] = v5;
  v6 = [UIColor colorWithRed:0.851 green:0.588 blue:0.992 alpha:1.0];
  v10[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:4];
  v8 = [v2 initWithColors:v7];

  return v8;
}

@end