@interface SXFontMatching
+ (id)fontFaceWithAttributes:(id)a3 fromFamily:(id)a4;
+ (id)matchFontFaceForAttributes:(id)a3 fromFamily:(id)a4;
+ (int64_t)bestStyleForIntendedStyle:(int64_t)a3 forFonts:(id)a4;
+ (int64_t)bestWeightForIntendedWeight:(int64_t)a3 forFonts:(id)a4;
+ (int64_t)bestWidthForIntendedWidth:(int64_t)a3 forFonts:(id)a4;
+ (int64_t)bolderWeightForWeight:(int64_t)a3;
+ (int64_t)lighterWeightForWeight:(int64_t)a3;
@end

@implementation SXFontMatching

+ (id)matchFontFaceForAttributes:(id)a3 fromFamily:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = [v5 width];
  v9 = [v6 fontFaces];
  v10 = [v7 bestWidthForIntendedWidth:v8 forFonts:v9];

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v12 = [v6 fontFaces];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __56__SXFontMatching_matchFontFaceForAttributes_fromFamily___block_invoke;
    v26[3] = &__block_descriptor_40_e39_B24__0___SXFontFace__8__NSDictionary_16l;
    v26[4] = v10;
    v13 = [MEMORY[0x1E696AE18] predicateWithBlock:v26];
    v14 = [v12 filteredSetUsingPredicate:v13];

    v15 = [objc_opt_class() bestStyleForIntendedStyle:objc_msgSend(v5 forFonts:{"style"), v14}];
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

      v19 = [objc_opt_class() bestWeightForIntendedWeight:objc_msgSend(v5 forFonts:{"weight"), v18}];
      v20 = [SXFontAttributes alloc];
      v21 = [v6 familyName];
      v22 = [v5 grade];
      v23 = [(SXFontAttributes *)v20 initWithFamilyName:v21 weight:v19 width:v10 style:v16 grade:v22];

      v11 = [objc_opt_class() fontFaceWithAttributes:v23 fromFamily:v6];

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

+ (int64_t)bestWidthForIntendedWidth:(int64_t)a3 forFonts:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E696AD50] indexSet];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
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
        v13 = [v12 fontAttributes];
        v14 = [v13 width];

        if (v14 == a3)
        {

          v16 = a3;
          goto LABEL_17;
        }

        v15 = [v12 fontAttributes];
        [v6 addIndex:{objc_msgSend(v15, "width")}];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3 > 7)
    {
      v17 = [v6 indexGreaterThanIndex:a3];
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [v6 indexLessThanIndex:a3];
      }
    }

    else
    {
      v17 = [v6 indexLessThanIndex:a3];
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [v6 indexGreaterThanIndex:a3];
      }
    }

    v16 = v17;
  }

LABEL_17:

  return v16;
}

+ (int64_t)bestStyleForIntendedStyle:(int64_t)a3 forFonts:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = a4;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    obj = v5;
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
      v14 = [v13 fontAttributes];
      v15 = [v14 style];

      if (v15 == a3)
      {
        v5 = obj;

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
        v18 = [v13 fontAttributes];
        v8 = [v18 style] == 1;

        if (!v9)
        {
LABEL_9:
          v16 = [v13 fontAttributes];
          v9 = [v16 style] == 2;

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
      v17 = [v13 fontAttributes];
      v10 = [v17 style] == 0;

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

        v5 = obj;
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

  if (!a3)
  {
    v20 = v23;
  }

  if (a3 == 1)
  {
    v20 = v22;
  }

  if (a3 == 2)
  {
    a3 = v21;
  }

  else
  {
    a3 = v20;
  }

LABEL_38:

  return a3;
}

+ (int64_t)bestWeightForIntendedWeight:(int64_t)a3 forFonts:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E696AD50] indexSet];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
LABEL_9:

    if (a3 == 400)
    {
      v16 = 500;
      if ([v6 containsIndex:500])
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (a3 == 500)
      {
        v16 = 400;
        if ([v6 containsIndex:400])
        {
          goto LABEL_23;
        }

        goto LABEL_14;
      }

      if (a3 > 400)
      {
LABEL_14:
        v17 = [v6 indexGreaterThanIndex:{a3, v19}];
        if (v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v17 = [v6 indexLessThanIndex:a3];
        }

LABEL_22:
        v16 = v17;
        goto LABEL_23;
      }
    }

    v17 = [v6 indexLessThanIndex:{a3, v19}];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [v6 indexGreaterThanIndex:a3];
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
    v13 = [v12 fontAttributes];
    v14 = [v13 weight];

    if (v14 == a3)
    {
      break;
    }

    v15 = [v12 fontAttributes];
    [v6 addIndex:{objc_msgSend(v15, "weight")}];

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

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v16 = a3;
LABEL_23:

  return v16;
}

+ (int64_t)bolderWeightForWeight:(int64_t)a3
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 > 499)
  {
    if (a3 > 699)
    {
      if (a3 != 700 && a3 != 800 && a3 != 900)
      {
        return result;
      }

      return 900;
    }

    if (a3 != 500)
    {
      if (a3 != 600)
      {
        return result;
      }

      return 900;
    }

    return 700;
  }

  if (a3 > 299)
  {
    if (a3 != 300)
    {
      if (a3 != 400)
      {
        return result;
      }

      return 700;
    }

    return 400;
  }

  if (a3 == 100 || a3 == 200)
  {
    return 400;
  }

  return result;
}

+ (int64_t)lighterWeightForWeight:(int64_t)a3
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a3 <= 499)
  {
    if (a3 > 299)
    {
      if (a3 != 300 && a3 != 400)
      {
        return result;
      }
    }

    else if (a3 != 100 && a3 != 200)
    {
      return result;
    }

    return 100;
  }

  if (a3 <= 699)
  {
    if (a3 != 500)
    {
      if (a3 != 600)
      {
        return result;
      }

      return 400;
    }

    return 100;
  }

  if (a3 == 700)
  {
    return 400;
  }

  if (a3 == 800 || a3 == 900)
  {
    return 700;
  }

  return result;
}

+ (id)fontFaceWithAttributes:(id)a3 fromFamily:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [a4 fontFaces];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = *v24;
    v22 = v6;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 fontAttributes];
        v12 = [v11 weight];
        if (v12 != [v5 weight])
        {
          goto LABEL_12;
        }

        v13 = [v10 fontAttributes];
        v14 = [v13 style];
        if (v14 != [v5 style])
        {

LABEL_12:
          continue;
        }

        v15 = [v10 fontAttributes];
        v16 = [v15 width];
        v17 = v7;
        v18 = v8;
        v19 = [v5 width];

        v20 = v16 == v19;
        v8 = v18;
        v7 = v17;
        v6 = v22;
        if (v20)
        {
          v7 = v10;
          goto LABEL_15;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v7);
  }

LABEL_15:

  return v7;
}

@end