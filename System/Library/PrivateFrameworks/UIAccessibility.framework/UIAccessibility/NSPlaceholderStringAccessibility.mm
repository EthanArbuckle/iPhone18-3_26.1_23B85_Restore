@interface NSPlaceholderStringAccessibility
- (NSPlaceholderStringAccessibility)initWithFormat:(id)format locale:(id)locale arguments:(char *)arguments;
@end

@implementation NSPlaceholderStringAccessibility

- (NSPlaceholderStringAccessibility)initWithFormat:(id)format locale:(id)locale arguments:(char *)arguments
{
  v66 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  localeCopy = locale;
  argumentsCopy = arguments;
  argumentsCopy2 = arguments;
  v62.receiver = self;
  v62.super_class = NSPlaceholderStringAccessibility;
  v10 = [(NSPlaceholderStringAccessibility *)&v62 initWithFormat:formatCopy locale:localeCopy arguments:arguments];
  if (v10)
  {
    context = objc_autoreleasePoolPush();
    _accessibilityAttributedLocalizedString = [formatCopy _accessibilityAttributedLocalizedString];
    v12 = [objc_alloc(MEMORY[0x1E6988D60]) initWithString:v10];
    if (_accessibilityAttributedLocalizedString)
    {
      coalescedAttributes = [_accessibilityAttributedLocalizedString coalescedAttributes];
      [v12 setAttributes:coalescedAttributes];
    }

    NSClassFromString(&cfstr_Nslocalizedstr.isa);
    v48 = localeCopy;
    v53 = v10;
    v46 = _accessibilityAttributedLocalizedString;
    if (objc_opt_isKindOfClass())
    {
      v14 = [formatCopy safeDictionaryForKey:@"config"];
    }

    else
    {
      v14 = 0;
    }

    v45 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(?<!%)%((#(?=([0-9]?)))?[0-9]*([+-])?(\\.)?[0-9]*)?([hl]{0 options:2}|[qLztj]{0 error:{1}|[*])((#@[a-zA-Z0-9]+@)|([@dDxXoOuifeEgGcCsSpaAF]{1}))", 0, 0}];
    v57 = [v45 matchesInString:formatCopy options:0 range:{0, objc_msgSend(formatCopy, "length")}];
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
      v49 = formatCopy;
      do
      {
        v17 = [v57 objectAtIndexedSubscript:v16];
        range = [v17 range];
        v20 = [formatCopy substringWithRange:{range, v19}];

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        allKeys = [v14 allKeys];
        v22 = [allKeys countByEnumeratingWithState:&v58 objects:v65 count:16];
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
                objc_enumerationMutation(allKeys);
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

            v23 = [allKeys countByEnumeratingWithState:&v58 objects:v65 count:16];
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
          v30 = argumentsCopy;
          argumentsCopy += 8;
          v31 = *v30;
          if (objc_opt_respondsToSelector())
          {
            _accessibilityAttributedLocalizedString2 = [v31 _accessibilityAttributedLocalizedString];
            if (_accessibilityAttributedLocalizedString2)
            {
              v33 = _accessibilityAttributedLocalizedString2;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                string = v31;
LABEL_37:
                v37 = string;
                if (string)
                {
                  v38 = [(NSPlaceholderStringAccessibility *)v53 rangeOfString:string options:0 range:v50, v51];
                  if (v38 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    v40 = v38;
                    v41 = v39;
                    coalescedAttributes2 = [v33 coalescedAttributes];
                    [v52 setAttributes:coalescedAttributes2 withRange:{v40, v41}];

                    v14 = v55;
                    v50 = v40 + v41;
                    v51 = [v52 length] - (v40 + v41);
                  }

                  formatCopy = v49;
                }
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  string = [v31 string];
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
          argumentsCopy += 8;
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
        argumentsCopy += 8;
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
    localeCopy = v48;
  }

  return v10;
}

@end