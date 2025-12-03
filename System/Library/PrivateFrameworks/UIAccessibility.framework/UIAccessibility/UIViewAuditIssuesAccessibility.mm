@interface UIViewAuditIssuesAccessibility
+ (id)_axAuditContrastDetectionForView:(id)view;
+ (id)_axAuditCreateContrastIssueForCATextLayer:(id)layer withView:(id)view;
+ (id)_axAuditCreateContrastIssueForView:(id)view text:(id)text;
+ (id)_axAuditHexValueForColor:(id)color;
+ (id)_axAuditTextCandidateForView:(id)view;
@end

@implementation UIViewAuditIssuesAccessibility

+ (id)_axAuditContrastDetectionForView:(id)view
{
  v23 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = [self _axAuditTextCandidateForView:viewCopy];
  array = [MEMORY[0x1E695DF70] array];
  if ([v5 count])
  {
    v15 = @"AX Audit: Element: %@ has an unknown contrast issue type.";
    v16 = viewCopy;
    _AXLogWithFacility();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%li", 4001, v15, v16];
        [v11 setObject:v12 forKey:@"AXAuditIssueTypeKey"];

        v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v11];
        [array addObject:v13];
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return array;
}

+ (id)_axAuditTextCandidateForView:(id)view
{
  viewCopy = view;
  array = [MEMORY[0x1E695DF70] array];
  v5 = [UIApplicationAuditIssuesAccessibility _axAuditGetTextFromObject:viewCopy];
  if ([v5 length])
  {
    [viewCopy alpha];
    if (v6 > 0.0 && ([viewCopy isHidden] & 1) == 0 && (objc_msgSend(viewCopy, "isHiddenOrHasHiddenAncestor") & 1) == 0)
    {
      v7 = [self _axAuditCreateContrastIssueForView:viewCopy text:v5];
      [array addObject:v7];
    }
  }

  v8 = MEMORY[0x1E695DF70];
  layer = [viewCopy layer];
  v10 = [v8 arrayWithObject:layer];

  if ([v10 count])
  {
    v11 = 0;
    do
    {
      firstObject = [v10 firstObject];
      [v10 removeObjectAtIndex:0];
      [firstObject opacity];
      if (v13 > 0.0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          string = [firstObject string];
          v15 = [string length];

          if (v15)
          {
            v16 = [self _axAuditCreateContrastIssueForCATextLayer:firstObject withView:viewCopy];
            [array addObject:v16];
          }
        }
      }

      sublayers = [firstObject sublayers];
      if (sublayers)
      {
        v18 = sublayers;
        sublayers2 = [firstObject sublayers];
        v20 = [sublayers2 count];

        if (v20)
        {
          sublayers3 = [firstObject sublayers];
          [v10 addObjectsFromArray:sublayers3];
        }
      }

      if (![v10 count])
      {
        break;
      }
    }

    while (v11++ < 0x270F);
  }

  return array;
}

+ (id)_axAuditCreateContrastIssueForView:(id)view text:(id)text
{
  viewCopy = view;
  textCopy = text;
  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v26) = 0;
    objc_opt_class();
    v8 = [viewCopy safeValueForKey:@"textColor"];
    v9 = __UIAccessibilityCastAsClass();

    if (v9)
    {
      v10 = [self _axAuditHexValueForColor:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  backgroundColor = [viewCopy backgroundColor];
  v12 = backgroundColor;
  if (backgroundColor)
  {
    v25 = 0;
    v26 = 0;
    v23 = 0.0;
    v24 = 0;
    v22 = 0;
    if ([backgroundColor getRed:&v26 green:&v25 blue:&v24 alpha:&v23])
    {
      v13 = 1;
    }

    else
    {
      v13 = [v12 getWhite:&v22 alpha:&v23];
    }

    v14 = 0;
    if (v13 && v23 > 0.0)
    {
      v14 = [self _axAuditHexValueForColor:{v12, v23}];
    }
  }

  else
  {
    v14 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v26) = 0;
    objc_opt_class();
    v15 = [viewCopy safeValueForKey:@"font"];
    v16 = __UIAccessibilityCastAsClass();

    if (v26 == 1)
    {
      abort();
    }

    if (v16)
    {
      v17 = MEMORY[0x1E696AD98];
      [v16 pointSize];
      v18 = [v17 numberWithDouble:?];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = [UIAccessibilityAuditUtilities dictionaryWithAXAuditIssue:0 element:viewCopy additionalInfo:0 identifier:textCopy foregroundColor:v10 backgroundColor:v14 fontSize:v18 elementRect:0 text:textCopy];
  v20 = [v19 mutableCopy];

  return v20;
}

+ (id)_axAuditCreateContrastIssueForCATextLayer:(id)layer withView:(id)view
{
  layerCopy = layer;
  viewCopy = view;
  string = [layerCopy string];
  [layerCopy frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  superlayer = [layerCopy superlayer];
  if (superlayer)
  {
    v18 = superlayer;
    do
    {
      [v18 frame];
      v10 = v10 + v19;
      [v18 frame];
      v12 = v12 + v20;
      superlayer2 = [v18 superlayer];

      v18 = superlayer2;
    }

    while (superlayer2);
  }

  [viewCopy accessibilityFrame];
  v23 = v10 + v22;
  [viewCopy accessibilityFrame];
  v25 = [MEMORY[0x1E696B098] valueWithCGRect:{v23, v12 + v24, v14, v16}];
  v26 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(layerCopy, "foregroundColor")}];
  v27 = [self _axAuditHexValueForColor:v26];

  v28 = MEMORY[0x1E696AD98];
  [layerCopy fontSize];
  *&v29 = v29;
  v30 = [v28 numberWithFloat:v29];
  v31 = [UIAccessibilityAuditUtilities dictionaryWithAXAuditIssue:0 element:viewCopy additionalInfo:0 identifier:string foregroundColor:v27 backgroundColor:0 fontSize:v30 elementRect:v25 text:string];
  v32 = [v31 mutableCopy];

  return v32;
}

+ (id)_axAuditHexValueForColor:(id)color
{
  colorCopy = color;
  Components = CGColorGetComponents([colorCopy CGColor]);
  cGColor = [colorCopy CGColor];

  NumberOfComponents = CGColorGetNumberOfComponents(cGColor);
  if (NumberOfComponents == 2)
  {
    v7 = *Components * 255.0;
    v8 = llroundf(v7);
    v9 = v8;
    v10 = v8;
  }

  else if (NumberOfComponents < 3)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = *Components * 255.0;
    v10 = llroundf(v11);
    v12 = Components[1] * 255.0;
    v9 = llroundf(v12);
    v13 = Components[2] * 255.0;
    v8 = llroundf(v13);
  }

  v14 = v10 & ~(v10 >> 63);
  if (v14 >= 255)
  {
    v14 = 255;
  }

  v15 = v9 & ~(v9 >> 63);
  if (v15 >= 255)
  {
    v15 = 255;
  }

  v16 = v8 & ~(v8 >> 63);
  if (v16 >= 255)
  {
    v16 = 255;
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02lX%02lX%02lX", v14, v15, v16];
}

@end