@interface NSPlaceholderStringAccessibility
- (NSPlaceholderStringAccessibility)initWithFormat:(id)a3 locale:(id)a4 arguments:(char *)a5;
@end

@implementation NSPlaceholderStringAccessibility

- (NSPlaceholderStringAccessibility)initWithFormat:(id)a3 locale:(id)a4 arguments:(char *)a5
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v63 = a5;
  v64 = a5;
  v62.receiver = self;
  v62.super_class = NSPlaceholderStringAccessibility;
  v10 = [(NSPlaceholderStringAccessibility *)&v62 initWithFormat:v8 locale:v9 arguments:a5];
  if (v10)
  {
    context = objc_autoreleasePoolPush();
    v11 = [v8 _accessibilityAttributedLocalizedString];
    v12 = [objc_alloc(MEMORY[0x1E6988D60]) initWithString:v10];
    if (v11)
    {
      v13 = [v11 coalescedAttributes];
      [v12 setAttributes:v13];
    }

    NSClassFromString(&cfstr_Nslocalizedstr.isa);
    v48 = v9;
    v53 = v10;
    v46 = v11;
    if (objc_opt_isKindOfClass())
    {
      v14 = [v8 safeDictionaryForKey:@"config"];
    }

    else
    {
      v14 = 0;
    }

    v45 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(?<!%)%((#(?=([0-9]?)))?[0-9]*([+-])?(\\.)?[0-9]*)?([hl]{0 options:2}|[qLztj]{0 error:{1}|[*])((#@[a-zA-Z0-9]+@)|([@dDxXoOuifeEgGcCsSpaAF]{1}))", 0, 0}];
    v57 = [v45 matchesInString:v8 options:0 range:{0, objc_msgSend(v8, "length")}];
    v15 = [v57 count];
    v52 = v12;
    v51 = [v12 length];
    v55 = v14;
    v56 = v15;
    if (v15)
    {
      v50 = 0;
      v16 = 0;
      v54 = *MEMORY[0x1E695E978];
      v49 = v8;
      do
      {
        v17 = [v57 objectAtIndexedSubscript:v16];
        v18 = [v17 range];
        v20 = [v8 substringWithRange:{v18, v19}];

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v21 = [v14 allKeys];
        v22 = [v21 countByEnumeratingWithState:&v58 objects:v65 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v59;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v59 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%%#@%@@", *(*(&v58 + 1) + 8 * i)];
              if ([v20 isEqualToString:v26])
              {
                v27 = MEMORY[0x1E696AEC0];
                v14 = v55;
                v28 = [v55 objectForKey:v54];
                v29 = [v27 stringWithFormat:@"%%%@", v28];

                v20 = v29;
                goto LABEL_19;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v58 objects:v65 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }

          v14 = v55;
        }

LABEL_19:

        if ([v20 hasPrefix:@"%@"])
        {
          v30 = v63;
          v63 += 8;
          v31 = *v30;
          if (objc_opt_respondsToSelector())
          {
            v32 = [v31 _accessibilityAttributedLocalizedString];
            if (v32)
            {
              v33 = v32;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v34 = v31;
LABEL_37:
                v37 = v34;
                if (v34)
                {
                  v38 = [(NSPlaceholderStringAccessibility *)v53 rangeOfString:v34 options:0 range:v50, v51];
                  if (v38 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v40 = v38;
                    v41 = v39;
                    v42 = [v33 coalescedAttributes];
                    [v52 setAttributes:v42 withRange:{v40, v41}];

                    v14 = v55;
                    v50 = v40 + v41;
                    v51 = [v52 length] - (v40 + v41);
                  }

                  v8 = v49;
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v34 = [v31 string];
                  goto LABEL_37;
                }

                v37 = 0;
              }
            }
          }

          goto LABEL_44;
        }

        if ([v20 hasPrefix:@"%*"])
        {
          v63 += 8;
        }

        if (([v20 _containsSubstring:@"g"] & 1) != 0 || (objc_msgSend(v20, "_containsSubstring:", @"f") & 1) != 0 || (objc_msgSend(v20, "_containsSubstring:", @"G") & 1) != 0 || (objc_msgSend(v20, "_containsSubstring:", @"F") & 1) != 0 || (objc_msgSend(v20, "_containsSubstring:", @"a") & 1) != 0 || objc_msgSend(v20, "_containsSubstring:", @"A"))
        {
          v35 = v20;
          v36 = @"L";
        }

        else
        {
          if ([v20 _containsSubstring:@"s"] || objc_msgSend(v20, "_containsSubstring:", @"c") || objc_msgSend(v20, "_containsSubstring:", @"p") || objc_msgSend(v20, "_containsSubstring:", @"z") || (objc_msgSend(v20, "_containsSubstring:", @"d") & 1) == 0 && (objc_msgSend(v20, "_containsSubstring:", @"D") & 1) == 0 && !objc_msgSend(v20, "_containsSubstring:", @"i") && (objc_msgSend(v20, "_containsSubstring:", @"u") & 1) == 0 && (objc_msgSend(v20, "_containsSubstring:", @"U") & 1) == 0 && (objc_msgSend(v20, "_containsSubstring:", @"x") & 1) == 0 && (objc_msgSend(v20, "_containsSubstring:", @"X") & 1) == 0 && !objc_msgSend(v20, "_containsSubstring:", @"o") || objc_msgSend(v20, "_containsSubstring:", @"ll"))
          {
            goto LABEL_34;
          }

          v35 = v20;
          v36 = @"l";
        }

        [v35 _containsSubstring:v36];
LABEL_34:
        v63 += 8;
LABEL_44:

        ++v16;
      }

      while (v16 != v56);
    }

    v10 = v53;
    if ([v52 hasAttributes])
    {
      v43 = [v52 copy];
      [(NSPlaceholderStringAccessibility *)v53 _setAccessibilityAttributedLocalizedString:v43];

      v14 = v55;
    }

    objc_autoreleasePoolPop(context);
    v9 = v48;
  }

  return v10;
}

@end