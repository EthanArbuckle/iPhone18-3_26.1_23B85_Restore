@interface NSString(UIStringDrawingLegacy)
- (double)_legacy_drawInRect:()UIStringDrawingLegacy withFont:lineBreakMode:alignment:lineSpacing:includeEmoji:truncationRect:;
- (double)_legacy_sizeWithFont:()UIStringDrawingLegacy;
- (double)_legacy_sizeWithFont:()UIStringDrawingLegacy forWidth:lineBreakMode:letterSpacing:;
- (uint64_t)_legacy_drawAtPoint:()UIStringDrawingLegacy forWidth:withFont:fontSize:lineBreakMode:baselineAdjustment:includeEmoji:;
- (uint64_t)_legacy_drawAtPoint:()UIStringDrawingLegacy forWidth:withFont:lineBreakMode:letterSpacing:includeEmoji:;
- (uint64_t)_legacy_drawAtPoint:()UIStringDrawingLegacy forWidth:withFont:minFontSize:actualFontSize:lineBreakMode:baselineAdjustment:includeEmoji:;
- (uint64_t)_legacy_sizeWithFont:()UIStringDrawingLegacy constrainedToSize:lineBreakMode:lineSpacing:;
- (uint64_t)_legacy_sizeWithFont:()UIStringDrawingLegacy minFontSize:actualFontSize:forWidth:lineBreakMode:;
@end

@implementation NSString(UIStringDrawingLegacy)

- (double)_legacy_sizeWithFont:()UIStringDrawingLegacy
{
  v6[1] = *MEMORY[0x1E69E9840];
  result = *MEMORY[0x1E695F060];
  if (*MEMORY[0x1E695F060] >= 0.0)
  {
    if (a3)
    {
      v5 = *off_1E70EC918;
      v6[0] = a3;
      [a1 sizeWithAttributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v6, &v5, 1, result)}];
      return ceil(v4);
    }
  }

  return result;
}

- (double)_legacy_sizeWithFont:()UIStringDrawingLegacy forWidth:lineBreakMode:letterSpacing:
{
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (a6)
  {
    v13 = objc_alloc_init(off_1E70ECB80);
    [v13 setLineBreakMode:UILineBreakToNSLineBreakStyleSingleLineVariant[a6]];
    [v11 setObject:v13 forKey:*off_1E70EC988];
  }

  if (a5)
  {
    [v11 setObject:a5 forKey:*off_1E70EC918];
  }

  if (a3 != 0.0)
  {
    *&v12 = a3;
    [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v12), *off_1E70EC950}];
  }

  [a1 boundingRectWithSize:0 options:v11 attributes:0 context:{a2, 3.40282347e38}];
  v15 = v14;

  if (v15 - a2 >= 0.0001)
  {
    v16 = a2;
  }

  else
  {
    v16 = v15;
  }

  return ceil(v16);
}

- (uint64_t)_legacy_drawAtPoint:()UIStringDrawingLegacy forWidth:withFont:lineBreakMode:letterSpacing:includeEmoji:
{
  if (a4 >= 0.0)
  {
    v37 = v19;
    v38 = v18;
    v39 = v17;
    v40 = v16;
    v41 = v13;
    v42 = v12;
    v43 = v11;
    v44 = v10;
    v45 = v9;
    v46 = v8;
    if (a7)
    {
      v26 = result;
      v27 = [MEMORY[0x1E695DF90] dictionary];
      v28 = objc_alloc_init(off_1E70ECB98);
      [v28 setMaximumNumberOfLines:1];
      v29 = objc_alloc_init(off_1E70ECB80);
      [v29 setLineBreakMode:UILineBreakToNSLineBreakStyleSingleLineVariant[a8]];
      [v29 setAlignment:0];
      [v27 setObject:v29 forKey:*off_1E70EC988];

      [v27 setObject:a7 forKey:*off_1E70EC918];
      ContextStack = GetContextStack(0);
      if (*ContextStack >= 1)
      {
        if (ContextStack[3 * (*ContextStack - 1) + 1])
        {
          v32 = [UIColor colorWithCGColor:CGContextGetFillColorAsColor()];
          if (v32)
          {
            [v27 setObject:v32 forKey:*off_1E70EC920];
          }
        }
      }

      if (a5 != 0.0)
      {
        *&v31 = a5;
        [v27 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v31), *off_1E70EC950}];
      }

      v33 = objc_alloc(MEMORY[0x1E696AAB0]);
      if (v26)
      {
        v34 = v26;
      }

      else
      {
        v34 = &stru_1EFB14550;
      }

      v35 = [v33 initWithString:v34 attributes:{v27, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v14, v15}];
      [a7 ascender];
      [v35 drawWithRect:64 options:v28 context:{a2, a3 + v36, a4, 0.0}];
      return [v28 totalBounds];
    }
  }

  return result;
}

- (uint64_t)_legacy_sizeWithFont:()UIStringDrawingLegacy constrainedToSize:lineBreakMode:lineSpacing:
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (a2 >= 0.0 && a5)
  {
    v12 = result;
    v13 = objc_alloc_init(off_1E70ECB98);
    [v13 setWrapsForTruncationMode:1];
    [v13 setMaximumNumberOfLines:0];
    v14 = objc_alloc_init(off_1E70ECB80);
    [v14 setLineBreakMode:a6];
    if (a7)
    {
      [v14 setMinimumLineHeight:a7];
      [v14 setMaximumLineHeight:a7];
    }

    [a5 lineHeight];
    *&v16 = v16;
    v15 = a3;
    v17 = fmaxf(v15, *&v16);
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    if (!v12)
    {
      v12 = &stru_1EFB14550;
    }

    v19 = *off_1E70EC918;
    v20[0] = *off_1E70EC988;
    v20[1] = v19;
    v21[0] = v14;
    v21[1] = a5;
    return [objc_msgSend(v18 initWithString:v12 attributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v21, v20, 2)), "boundingRectWithSize:options:context:", 65, v13, a2, v17}];
  }

  return result;
}

- (double)_legacy_drawInRect:()UIStringDrawingLegacy withFont:lineBreakMode:alignment:lineSpacing:includeEmoji:truncationRect:
{
  v19 = objc_alloc_init(off_1E70ECB98);
  [v19 setWrapsForTruncationMode:1];
  [v19 setMaximumNumberOfLines:0];
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = objc_alloc_init(off_1E70ECB80);
  [v21 setLineBreakMode:UILineBreakToNSLineBreakStyleSingleLineVariant[a8]];
  if (a10)
  {
    if (!v21)
    {
      v21 = objc_alloc_init(off_1E70ECB80);
    }

    [v21 setMinimumLineHeight:a10];
    [v21 setMaximumLineHeight:a10];
  }

  v22 = +[UIView _enableRTL];
  v23 = 4;
  if (!v22)
  {
    v23 = 0;
  }

  if (v23 != a9)
  {
    if (!v21)
    {
      v21 = objc_alloc_init(off_1E70ECB80);
    }

    [v21 setAlignment:UITextAlignmentToNSTextAlignment[a9]];
  }

  [v20 setObject:v21 forKey:*off_1E70EC988];
  if (a7)
  {
    [v20 setObject:a7 forKey:*off_1E70EC918];
  }

  ContextStack = GetContextStack(0);
  if (*ContextStack >= 1)
  {
    if (ContextStack[3 * (*ContextStack - 1) + 1])
    {
      v25 = [UIColor colorWithCGColor:CGContextGetFillColorAsColor()];
      if (v25)
      {
        [v20 setObject:v25 forKey:*off_1E70EC920];
      }
    }
  }

  [a7 lineHeight];
  *&v27 = v27;
  v26 = a5;
  v28 = fmaxf(v26, *&v27);
  v29 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (a1)
  {
    v30 = a1;
  }

  else
  {
    v30 = &stru_1EFB14550;
  }

  [objc_msgSend(v29 initWithString:v30 attributes:{v20), "drawWithRect:options:context:", 65, v19, a2, a3, a4, v28}];
  [v19 totalBounds];
  return v31;
}

- (uint64_t)_legacy_sizeWithFont:()UIStringDrawingLegacy minFontSize:actualFontSize:forWidth:lineBreakMode:
{
  if (a5)
  {
    v12 = result;
    [a5 pointSize];
    v14 = v13;
    v15 = *off_1E70EC918;
    result = [v12 sizeWithAttributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", a5, *off_1E70EC918)}];
    if (v16 <= 0.0)
    {
      if (a6)
      {
        *a6 = 0.0;
      }
    }

    else
    {
      v17 = round(v14 * (a3 / v16) + v14 * (a3 / v16)) * 0.5;
      v18 = a2;
      if (v17 >= a2)
      {
        v18 = v17;
        if (v17 > v14)
        {
          v18 = v14;
        }
      }

      v19 = a5;
      for (i = v18; ; i = v23)
      {
        v21 = [v19 fontWithSize:i];
        result = [v12 sizeWithAttributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", v21, v15)}];
        v23 = round(v18 + 0.5 + v18 + 0.5) * 0.5;
        if (v22 >= a3 || v23 > v14)
        {
          break;
        }

        v18 = v23;
        v19 = v21;
      }

      v25 = v22 <= a3;
      for (j = round(v18 + -0.5 + v18 + -0.5); ; j = round(v18 + -0.5 + v18 + -0.5))
      {
        v27 = j * 0.5;
        if (v25 || v27 < a2)
        {
          break;
        }

        v18 = v27;
        v21 = [v21 fontWithSize:v27];
        result = [v12 sizeWithAttributes:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", v21, v15)}];
        v25 = v22 <= a3;
      }

      if (a6)
      {
        *a6 = v18;
      }

      if (v22 > a3)
      {
        v29 = objc_alloc_init(off_1E70ECB80);
        [v29 setLineBreakMode:UILineBreakToNSLineBreakStyleSingleLineVariant[a7]];
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v29, *off_1E70EC988, v21, v15, 0}];

        return [v12 boundingRectWithSize:0 options:v30 attributes:0 context:{a3, 3.40282347e38}];
      }
    }
  }

  return result;
}

- (uint64_t)_legacy_drawAtPoint:()UIStringDrawingLegacy forWidth:withFont:fontSize:lineBreakMode:baselineAdjustment:includeEmoji:
{
  [a7 pointSize];
  v19 = a7;
  if (v20 != a5)
  {
    v19 = [a7 fontWithSize:a5];
  }

  if (a9 == 1)
  {
    [a7 ascender];
    v26 = v25;
    [v19 ascender];
    v28 = v27;
    [a7 capHeight];
    v30 = v29;
    [v19 capHeight];
    v24 = round(v26 - v30 * 0.5 - (v28 - v31 * 0.5));
  }

  else
  {
    if (a9)
    {
      goto LABEL_8;
    }

    [a7 ascender];
    v22 = v21;
    [v19 ascender];
    v24 = v22 - v23;
  }

  a3 = a3 + v24;
LABEL_8:

  return [a1 _legacy_drawAtPoint:v19 forWidth:a8 withFont:a10 lineBreakMode:a2 letterSpacing:a3 includeEmoji:{a4, 0.0}];
}

- (uint64_t)_legacy_drawAtPoint:()UIStringDrawingLegacy forWidth:withFont:minFontSize:actualFontSize:lineBreakMode:baselineAdjustment:includeEmoji:
{
  v21 = 0.0;
  [a1 _legacy_sizeWithFont:a7 minFontSize:&v21 actualFontSize:a5 forWidth:a4 lineBreakMode:?];
  result = [a1 _legacy_drawAtPoint:a7 forWidth:a9 withFont:a10 fontSize:a11 lineBreakMode:a2 baselineAdjustment:a3 includeEmoji:{a4, v21}];
  if (a8)
  {
    *a8 = v21;
  }

  return result;
}

@end