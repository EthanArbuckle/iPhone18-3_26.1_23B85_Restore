@interface UIViewAuditIssuesAccessibility
+ (id)_axAuditContrastDetectionForView:(id)a3;
+ (id)_axAuditCreateContrastIssueForCATextLayer:(id)a3 withView:(id)a4;
+ (id)_axAuditCreateContrastIssueForView:(id)a3 text:(id)a4;
+ (id)_axAuditHexValueForColor:(id)a3;
+ (id)_axAuditTextCandidateForView:(id)a3;
@end

@implementation UIViewAuditIssuesAccessibility

+ (id)_axAuditContrastDetectionForView:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _axAuditTextCandidateForView:v4];
  v6 = [MEMORY[0x1E695DF70] array];
  if ([v5 count])
  {
    v15 = @"AX Audit: Element: %@ has an unknown contrast issue type.";
    v16 = v4;
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
        [v6 addObject:v13];
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (id)_axAuditTextCandidateForView:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [UIApplicationAuditIssuesAccessibility _axAuditGetTextFromObject:v3];
  if ([v5 length])
  {
    [v3 alpha];
    if (v6 > 0.0 && ([v3 isHidden] & 1) == 0 && (objc_msgSend(v3, "isHiddenOrHasHiddenAncestor") & 1) == 0)
    {
      v7 = [a1 _axAuditCreateContrastIssueForView:v3 text:v5];
      [v4 addObject:v7];
    }
  }

  v8 = MEMORY[0x1E695DF70];
  v9 = [v3 layer];
  v10 = [v8 arrayWithObject:v9];

  if ([v10 count])
  {
    v11 = 0;
    do
    {
      v12 = [v10 firstObject];
      [v10 removeObjectAtIndex:0];
      [v12 opacity];
      if (v13 > 0.0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v12 string];
          v15 = [v14 length];

          if (v15)
          {
            v16 = [a1 _axAuditCreateContrastIssueForCATextLayer:v12 withView:v3];
            [v4 addObject:v16];
          }
        }
      }

      v17 = [v12 sublayers];
      if (v17)
      {
        v18 = v17;
        v19 = [v12 sublayers];
        v20 = [v19 count];

        if (v20)
        {
          v21 = [v12 sublayers];
          [v10 addObjectsFromArray:v21];
        }
      }

      if (![v10 count])
      {
        break;
      }
    }

    while (v11++ < 0x270F);
  }

  return v4;
}

+ (id)_axAuditCreateContrastIssueForView:(id)a3 text:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    LOBYTE(v26) = 0;
    objc_opt_class();
    v8 = [v6 safeValueForKey:@"textColor"];
    v9 = __UIAccessibilityCastAsClass();

    if (v9)
    {
      v10 = [a1 _axAuditHexValueForColor:v9];
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

  v11 = [v6 backgroundColor];
  v12 = v11;
  if (v11)
  {
    v25 = 0;
    v26 = 0;
    v23 = 0.0;
    v24 = 0;
    v22 = 0;
    if ([v11 getRed:&v26 green:&v25 blue:&v24 alpha:&v23])
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
      v14 = [a1 _axAuditHexValueForColor:{v12, v23}];
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
    v15 = [v6 safeValueForKey:@"font"];
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

  v19 = [UIAccessibilityAuditUtilities dictionaryWithAXAuditIssue:0 element:v6 additionalInfo:0 identifier:v7 foregroundColor:v10 backgroundColor:v14 fontSize:v18 elementRect:0 text:v7];
  v20 = [v19 mutableCopy];

  return v20;
}

+ (id)_axAuditCreateContrastIssueForCATextLayer:(id)a3 withView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 string];
  [v6 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v6 superlayer];
  if (v17)
  {
    v18 = v17;
    do
    {
      [v18 frame];
      v10 = v10 + v19;
      [v18 frame];
      v12 = v12 + v20;
      v21 = [v18 superlayer];

      v18 = v21;
    }

    while (v21);
  }

  [v7 accessibilityFrame];
  v23 = v10 + v22;
  [v7 accessibilityFrame];
  v25 = [MEMORY[0x1E696B098] valueWithCGRect:{v23, v12 + v24, v14, v16}];
  v26 = [MEMORY[0x1E69DC888] colorWithCGColor:{objc_msgSend(v6, "foregroundColor")}];
  v27 = [a1 _axAuditHexValueForColor:v26];

  v28 = MEMORY[0x1E696AD98];
  [v6 fontSize];
  *&v29 = v29;
  v30 = [v28 numberWithFloat:v29];
  v31 = [UIAccessibilityAuditUtilities dictionaryWithAXAuditIssue:0 element:v7 additionalInfo:0 identifier:v8 foregroundColor:v27 backgroundColor:0 fontSize:v30 elementRect:v25 text:v8];
  v32 = [v31 mutableCopy];

  return v32;
}

+ (id)_axAuditHexValueForColor:(id)a3
{
  v3 = a3;
  Components = CGColorGetComponents([v3 CGColor]);
  v5 = [v3 CGColor];

  NumberOfComponents = CGColorGetNumberOfComponents(v5);
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