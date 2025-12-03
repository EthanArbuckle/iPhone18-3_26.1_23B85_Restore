@interface SXFontMatching
+ (id)fontFaceWithAttributes:(id)attributes fromFamily:(id)family;
+ (id)matchFontFaceForAttributes:(id)attributes fromFamily:(id)family;
+ (int64_t)bestStyleForIntendedStyle:(int64_t)style forFonts:(id)fonts;
+ (int64_t)bestWeightForIntendedWeight:(int64_t)weight forFonts:(id)fonts;
+ (int64_t)bestWidthForIntendedWidth:(int64_t)width forFonts:(id)fonts;
+ (int64_t)bolderWeightForWeight:(int64_t)weight;
+ (int64_t)lighterWeightForWeight:(int64_t)weight;
@end

@implementation SXFontMatching

+ (id)matchFontFaceForAttributes:(id)attributes fromFamily:(id)family
{
  attributesCopy = attributes;
  familyCopy = family;
  v7 = objc_opt_class();
  width = [attributesCopy width];
  fontFaces = [familyCopy fontFaces];
  v10 = [v7 bestWidthForIntendedWidth:width forFonts:fontFaces];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    fontFaces2 = [familyCopy fontFaces];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __56__SXFontMatching_matchFontFaceForAttributes_fromFamily___block_invoke;
    v26[3] = &__block_descriptor_40_e39_B24__0___SXFontFace__8__NSDictionary_16l;
    v26[4] = v10;
    v13 = [MEMORY[0x1E696AE18] predicateWithBlock:v26];
    v14 = [fontFaces2 filteredSetUsingPredicate:v13];

    v15 = [objc_opt_class() bestStyleForIntendedStyle:objc_msgSend(attributesCopy forFonts:{"style"), v14}];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
    }

    else
    {
      v16 = v15;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __56__SXFontMatching_matchFontFaceForAttributes_fromFamily___block_invoke_2;
      v25[3] = &__block_descriptor_40_e39_B24__0___SXFontFace__8__NSDictionary_16l;
      v25[4] = v15;
      v17 = [MEMORY[0x1E696AE18] predicateWithBlock:v25];
      v18 = [v14 filteredSetUsingPredicate:v17];

      v19 = [objc_opt_class() bestWeightForIntendedWeight:objc_msgSend(attributesCopy forFonts:{"weight"), v18}];
      v20 = [SXFontAttributes alloc];
      familyName = [familyCopy familyName];
      grade = [attributesCopy grade];
      v23 = [(SXFontAttributes *)v20 initWithFamilyName:familyName weight:v19 width:v10 style:v16 grade:grade];

      v11 = [objc_opt_class() fontFaceWithAttributes:v23 fromFamily:familyCopy];

      v14 = v18;
    }
  }

  return v11;
}

BOOL __56__SXFontMatching_matchFontFaceForAttributes_fromFamily___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 fontAttributes];
  v4 = [v3 width] == *(a1 + 32);

  return v4;
}

BOOL __56__SXFontMatching_matchFontFaceForAttributes_fromFamily___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 fontAttributes];
  v4 = [v3 style] == *(a1 + 32);

  return v4;
}

+ (int64_t)bestWidthForIntendedWidth:(int64_t)width forFonts:(id)fonts
{
  v24 = *MEMORY[0x1E69E9840];
  fontsCopy = fonts;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = fontsCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        fontAttributes = [v12 fontAttributes];
        width = [fontAttributes width];

        if (width == width)
        {

          widthCopy = width;
          goto LABEL_17;
        }

        fontAttributes2 = [v12 fontAttributes];
        [indexSet addIndex:{objc_msgSend(fontAttributes2, "width")}];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  widthCopy = 0x7FFFFFFFFFFFFFFFLL;
  if (width != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (width > 7)
    {
      v17 = [indexSet indexGreaterThanIndex:width];
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [indexSet indexLessThanIndex:width];
      }
    }

    else
    {
      v17 = [indexSet indexLessThanIndex:width];
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [indexSet indexGreaterThanIndex:width];
      }
    }

    widthCopy = v17;
  }

LABEL_17:

  return widthCopy;
}

+ (int64_t)bestStyleForIntendedStyle:(int64_t)style forFonts:(id)fonts
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  fontsCopy = fonts;
  v6 = [fontsCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    obj = fontsCopy;
    LOBYTE(v8) = 0;
    LOBYTE(v9) = 0;
    LOBYTE(v10) = 0;
    v11 = *v27;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v26 + 1) + 8 * v12);
      fontAttributes = [v13 fontAttributes];
      style = [fontAttributes style];

      if (style == style)
      {
        fontsCopy = obj;

        goto LABEL_38;
      }

      if (v8)
      {
        v8 = 1;
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      else
      {
        fontAttributes2 = [v13 fontAttributes];
        v8 = [fontAttributes2 style] == 1;

        if (!v9)
        {
LABEL_9:
          fontAttributes3 = [v13 fontAttributes];
          v9 = [fontAttributes3 style] == 2;

          if (v10)
          {
            goto LABEL_13;
          }

          goto LABEL_10;
        }
      }

      v9 = 1;
      if (v10)
      {
LABEL_13:
        v10 = 1;
        goto LABEL_14;
      }

LABEL_10:
      fontAttributes4 = [v13 fontAttributes];
      v10 = [fontAttributes4 style] == 0;

LABEL_14:
      if (v7 == ++v12)
      {
        v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        if (v10)
        {
          v19 = 0;
        }

        else
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        fontsCopy = obj;
        goto LABEL_22;
      }
    }
  }

  v8 = 0;
  v9 = 0;
  v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_22:

  v20 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v21 = 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = 2;
  if (!v9)
  {
    v22 = v19;
  }

  v23 = 2;
  if (!v9)
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v23 = 1;
  }

  if (!style)
  {
    v20 = v23;
  }

  if (style == 1)
  {
    v20 = v22;
  }

  if (style == 2)
  {
    style = v21;
  }

  else
  {
    style = v20;
  }

LABEL_38:

  return style;
}

+ (int64_t)bestWeightForIntendedWeight:(int64_t)weight forFonts:(id)fonts
{
  v24 = *MEMORY[0x1E69E9840];
  fontsCopy = fonts;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = fontsCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
LABEL_9:

    if (weight == 400)
    {
      weightCopy = 500;
      if ([indexSet containsIndex:500])
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (weight == 500)
      {
        weightCopy = 400;
        if ([indexSet containsIndex:400])
        {
          goto LABEL_23;
        }

        goto LABEL_14;
      }

      if (weight > 400)
      {
LABEL_14:
        v17 = [indexSet indexGreaterThanIndex:{weight, v19}];
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = [indexSet indexLessThanIndex:weight];
        }

LABEL_22:
        weightCopy = v17;
        goto LABEL_23;
      }
    }

    v17 = [indexSet indexLessThanIndex:{weight, v19}];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [indexSet indexGreaterThanIndex:weight];
    }

    goto LABEL_22;
  }

  v9 = v8;
  v10 = *v20;
LABEL_3:
  v11 = 0;
  while (1)
  {
    if (*v20 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = *(*(&v19 + 1) + 8 * v11);
    fontAttributes = [v12 fontAttributes];
    weight = [fontAttributes weight];

    if (weight == weight)
    {
      break;
    }

    fontAttributes2 = [v12 fontAttributes];
    [indexSet addIndex:{objc_msgSend(fontAttributes2, "weight")}];

    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      goto LABEL_9;
    }
  }

  if (weight == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  weightCopy = weight;
LABEL_23:

  return weightCopy;
}

+ (int64_t)bolderWeightForWeight:(int64_t)weight
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (weight > 499)
  {
    if (weight > 699)
    {
      if (weight != 700 && weight != 800 && weight != 900)
      {
        return result;
      }

      return 900;
    }

    if (weight != 500)
    {
      if (weight != 600)
      {
        return result;
      }

      return 900;
    }

    return 700;
  }

  if (weight > 299)
  {
    if (weight != 300)
    {
      if (weight != 400)
      {
        return result;
      }

      return 700;
    }

    return 400;
  }

  if (weight == 100 || weight == 200)
  {
    return 400;
  }

  return result;
}

+ (int64_t)lighterWeightForWeight:(int64_t)weight
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (weight <= 499)
  {
    if (weight > 299)
    {
      if (weight != 300 && weight != 400)
      {
        return result;
      }
    }

    else if (weight != 100 && weight != 200)
    {
      return result;
    }

    return 100;
  }

  if (weight <= 699)
  {
    if (weight != 500)
    {
      if (weight != 600)
      {
        return result;
      }

      return 400;
    }

    return 100;
  }

  if (weight == 700)
  {
    return 400;
  }

  if (weight == 800 || weight == 900)
  {
    return 700;
  }

  return result;
}

+ (id)fontFaceWithAttributes:(id)attributes fromFamily:(id)family
{
  v28 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  fontFaces = [family fontFaces];
  v7 = [fontFaces countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = *v24;
    v22 = fontFaces;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(fontFaces);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        fontAttributes = [v10 fontAttributes];
        weight = [fontAttributes weight];
        if (weight != [attributesCopy weight])
        {
          goto LABEL_12;
        }

        fontAttributes2 = [v10 fontAttributes];
        style = [fontAttributes2 style];
        if (style != [attributesCopy style])
        {

LABEL_12:
          continue;
        }

        fontAttributes3 = [v10 fontAttributes];
        width = [fontAttributes3 width];
        v17 = v7;
        v18 = v8;
        width2 = [attributesCopy width];

        v20 = width == width2;
        v8 = v18;
        v7 = v17;
        fontFaces = v22;
        if (v20)
        {
          v7 = v10;
          goto LABEL_15;
        }
      }

      v7 = [fontFaces countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

LABEL_15:

  return v7;
}

@end