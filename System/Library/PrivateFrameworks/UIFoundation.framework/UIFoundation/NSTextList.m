@interface NSTextList
+ (BOOL)includesTextListMarkers;
+ (id)_standardMarkerAttributesForAttributes:(id)a3;
+ (void)initialize;
- (BOOL)isOrdered;
- (NSTextList)initWithCoder:(NSCoder *)coder;
- (NSTextList)initWithMarkerFormat:(NSTextListMarkerFormat)markerFormat options:(NSTextListOptions)options startingItemNumber:(NSInteger)startingItemNumber;
- (NSTextListMarkerFormat)markerFormat;
- (id)_markerAtIndex:(unint64_t)a3 inText:(id)a4;
- (id)_markerForMarkerFormat:(id)a3 itemNumber:(int64_t)a4 isNumbered:(BOOL *)a5 substitutionStart:(unint64_t *)a6 end:(unint64_t *)a7 specifierStart:(unint64_t *)a8 end:(unint64_t *)a9;
- (id)_markerPrefix;
- (id)_markerSpecifier;
- (id)_markerSpecifierAsCSSValue;
- (id)_markerSuffix;
- (id)_markerTitle;
- (id)_unaffixedMarkerForItemNumber:(int64_t)a3;
- (id)_unaffixedMarkerFormat;
- (id)_unaffixedMarkerTitle;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSTextList

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    [NSTextList setVersion:1];
    __NSTextListClass = a1;
  }
}

+ (BOOL)includesTextListMarkers
{
  if (includesTextListMarkers_onceToken != -1)
  {
    +[NSTextList includesTextListMarkers];
  }

  return includesTextListMarkers_includesTextListMarkers;
}

uint64_t __37__NSTextList_includesTextListMarkers__block_invoke()
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v0)
  {
    result = [v0 BOOLValue];
LABEL_7:
    includesTextListMarkers_includesTextListMarkers = result;
    return result;
  }

  if (!dyld_program_sdk_at_least() || (result = _NSTextScalingTypeForCurrentEnvironment(), result == 2) && (result = dyld_program_sdk_at_least(), (result & 1) == 0))
  {
    result = 1;
    goto LABEL_7;
  }

  return result;
}

- (NSTextListMarkerFormat)markerFormat
{
  if (self->_markerTextAttachment)
  {
    return @"\uFFFC";
  }

  else
  {
    return self->_markerFormat;
  }
}

- (NSTextList)initWithMarkerFormat:(NSTextListMarkerFormat)markerFormat options:(NSTextListOptions)options startingItemNumber:(NSInteger)startingItemNumber
{
  if (markerFormat)
  {
    v11.receiver = self;
    v11.super_class = NSTextList;
    v8 = [(NSTextList *)&v11 init];
    if (v8)
    {
      v8->_markerFormat = [(NSString *)markerFormat copy];
      v8->_listFlags = options & 0xFFFFFFFF0FFFFFFFLL;
      v9 = startingItemNumber - 1;
      if (startingItemNumber <= 0)
      {
        v9 = 0;
      }

      v8->_startIndex = v9;
    }
  }

  else
  {

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSTextList;
  [(NSTextList *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithMarkerFormat:options:startingItemNumber:", self->_markerFormat, self->_listFlags, self->_startIndex + 1}];
  [v4 setMarkerTextAttachment:{-[NSTextList markerTextAttachment](self, "markerTextAttachment")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  markerFormat = self->_markerFormat;
  v11 = markerFormat;
  v6 = [(NSTextList *)self listOptions];
  v7 = [(NSTextList *)self startingItemNumber];
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeObject:self->_markerTextAttachment forKey:@"NSMarkerTextAttachment"];
    [a3 encodeObject:markerFormat forKey:@"NSMarkerFormat"];
    if (v6)
    {
      [a3 encodeInteger:v6 forKey:@"NSOptions"];
    }

    if (v7 != 1)
    {

      [a3 encodeInteger:v7 forKey:@"NSStart"];
    }
  }

  else
  {
    v10 = v6 & 0xFFFFFFF;
    if (v7 == 1 || (v9 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v7), @"NSStart"}]) == 0)
    {
      [a3 encodeValuesOfObjCTypes:{"@I", &v11, &v10}];
    }

    else
    {
      v10 = v6 & 0xFFFFFFF | 0x40000000;
      [a3 encodeValuesOfObjCTypes:{"@I", &v11, &v10}];
      [a3 encodeValuesOfObjCTypes:{"@", &v9, v8}];
    }
  }
}

- (NSTextList)initWithCoder:(NSCoder *)coder
{
  v17.receiver = self;
  v17.super_class = NSTextList;
  v18 = 0;
  v4 = [(NSTextList *)&v17 init];
  if (v4)
  {
    if ([(NSCoder *)coder allowsKeyedCoding])
    {
      v5 = [(NSCoder *)coder decodeObjectOfClass:objc_opt_class() forKey:@"NSMarkerFormat"];
      v18 = v5;
      if ([(NSCoder *)coder containsValueForKey:@"NSOptions"])
      {
        v6 = [(NSCoder *)coder decodeIntegerForKey:@"NSOptions"];
      }

      else
      {
        v6 = 0;
      }

      if ([(NSCoder *)coder containsValueForKey:@"NSStart"])
      {
        v8 = [(NSCoder *)coder decodeIntegerForKey:@"NSStart"];
      }

      else
      {
        v8 = 1;
      }

      v11 = [(NSCoder *)coder decodeObjectForKey:@"NSMarkerTextAttachment"];
LABEL_22:
      v4->_markerFormat = v5;
      v4->_listFlags = v6 & 0xFFFFFFF;
      v4->_startIndex = v8 - 1;
      v4->_markerTextAttachment = v11;
      return v4;
    }

    v7 = [(NSCoder *)coder versionForClassName:@"NSTextList"];
    if (v7 == 1)
    {
      v16 = 0;
      v15 = 0;
      [(NSCoder *)coder decodeValuesOfObjCTypes:"@I", &v18, &v16];
      v6 = v16;
      if ((v16 & 0x40000000) != 0)
      {
        [(NSCoder *)coder decodeValuesOfObjCTypes:"@", &v15];
        if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v12 = [v15 objectForKey:@"NSStart"]) != 0 && (v13 = v12, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v8 = [v13 integerValue];
        }

        else
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 1;
      }

      v11 = 0;
      v5 = v18;
      goto LABEL_22;
    }

    v9 = v7;
    v10 = _NSFullMethodName();
    NSLog(@"%@: class version %ld cannot read instances archived with version %ld", v10, 1, v9);

    return 0;
  }

  return v4;
}

- (id)description
{
  v3 = [(NSTextList *)self startingItemNumber];
  v4 = [(NSTextList *)self listOptions];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [(NSTextList *)self markerFormat];
  if (v4)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" options 0x%lx", v4];
  }

  else
  {
    v7 = &stru_1F01AD578;
  }

  if (v3 == 1)
  {
    v8 = &stru_1F01AD578;
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" start at %ld", v3];
  }

  return [v5 stringWithFormat:@"NSTextList %p format <%@>%@%@", self, v6, v7, v8];
}

- (id)_markerForMarkerFormat:(id)a3 itemNumber:(int64_t)a4 isNumbered:(BOOL *)a5 substitutionStart:(unint64_t *)a6 end:(unint64_t *)a7 specifierStart:(unint64_t *)a8 end:(unint64_t *)a9
{
  v14 = a3;
  v15 = [a3 length];
  if (a6)
  {
    *a6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a7)
  {
    *a7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a8)
  {
    *a8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a9)
  {
    *a9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v14 rangeOfString:@"{"];
  if (!v16)
  {
    v51 = 0;
    if (!a5)
    {
      return v14;
    }

    goto LABEL_133;
  }

  v17 = [MEMORY[0x1E696AD60] string];
  v18 = v17;
  if (!v15)
  {
    v51 = 0;
    v14 = v17;
    if (!a5)
    {
      return v14;
    }

LABEL_133:
    *a5 = v51 & 1;
    return v14;
  }

  v65 = a5;
  v66 = 0;
  v19 = a4;
  v20 = 0;
  v21 = 0;
  if ((v19 + 9) >= 0x13)
  {
    v22 = @"%ld";
  }

  else
  {
    v22 = @"0%ld";
  }

  v53 = v22;
  v64 = v19;
  v23 = v19 - 1;
  v54 = (v19 - 1) % 10;
  v24 = ((v19 - 1) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v55 = (v19 - 1) % 12;
  v56 = (v19 - 1) % 47;
  v57 = (v19 - 1) % 48;
  v25 = (1 - v19) & 0x1F;
  if (v23 <= 0)
  {
    v26 = -v25;
  }

  else
  {
    LODWORD(v26) = v23 & 0x1F;
  }

  v58 = (v26 + 1040);
  v59 = (v26 + 1072);
  v27 = v23 - 24 * ((v24 >> 2) + (v24 >> 63));
  if (v27 > 16)
  {
    LODWORD(v27) = v27 + 1;
  }

  v60 = (v27 + 913);
  v61 = (v27 + 945);
  v28 = v23 % 26;
  v62 = (v28 + 65);
  v63 = (v28 + 97);
  do
  {
    v29 = [v14 characterAtIndex:v20];
    switch(v29)
    {
      case 123:
        v31 = v20 - v21;
        if (v20 > v21)
        {
          [v18 appendString:{objc_msgSend(v14, "substringWithRange:", v21, v31)}];
        }

        if (a6)
        {
          *a6 = v20;
        }

        if (a7)
        {
          *a7 = v15;
        }

        v32 = v20 + 1;
        v33 = v15;
        if (v20 + 1 < v15)
        {
          v34 = v20 + 1;
          while (1)
          {
            v35 = [v14 characterAtIndex:{v34, v31}];
            if (v35 == 125)
            {
              if (a7)
              {
                *a7 = v34 + 1;
              }

              v36 = v34;
              if (v34)
              {
LABEL_48:
                if (v36)
                {
                  v33 = v36;
                }

                else
                {
                  v33 = v15;
                }

                break;
              }
            }

            else
            {
              v36 = 0;
              if (v35 == 92)
              {
                ++v34;
              }
            }

            if (++v34 >= v15)
            {
              goto LABEL_48;
            }
          }
        }

        v37 = &stru_1F01AD578;
        v38 = v33 - v32;
        if (v33 > v32)
        {
          v37 = [v14 substringWithRange:{v32, v38}];
        }

        if (a8)
        {
          *a8 = v32;
        }

        if (a9)
        {
          *a9 = v33;
        }

        if ([@"none" isEqualToString:{v37, v38}])
        {
          goto LABEL_76;
        }

        if ([@"box" isEqualToString:v37])
        {
          v39 = v18;
          v40 = @"▫";
LABEL_75:
          [v39 appendString:v40];
LABEL_76:
          v20 = v33 + 1;
LABEL_77:
          v21 = v20;
          continue;
        }

        if ([@"check" isEqualToString:v37])
        {
          v39 = v18;
          v40 = @"✓";
          goto LABEL_75;
        }

        if ([@"circle" isEqualToString:v37])
        {
          v39 = v18;
          v40 = @"◦";
          goto LABEL_75;
        }

        if ([@"diamond" isEqualToString:v37])
        {
          v39 = v18;
          v40 = @"◆";
          goto LABEL_75;
        }

        if ([@"disc" isEqualToString:v37])
        {
          v39 = v18;
          v40 = @"•";
          goto LABEL_75;
        }

        if ([@"hyphen" isEqualToString:v37])
        {
          v39 = v18;
          v40 = @"⁃";
          goto LABEL_75;
        }

        if ([@"square" isEqualToString:v37])
        {
          v39 = v18;
          v40 = @"▪";
          goto LABEL_75;
        }

        if ([@"lower-hexadecimal" isEqualToString:v37])
        {
          [v18 appendFormat:@"%lx", v64];
          goto LABEL_90;
        }

        if ([@"upper-hexadecimal" isEqualToString:v37])
        {
          [v18 appendFormat:@"%lX", v64];
          goto LABEL_90;
        }

        if ([@"octal" isEqualToString:v37])
        {
          [v18 appendFormat:@"%lo", v64];
          goto LABEL_90;
        }

        if (([@"lower-alpha" isEqualToString:v37] & 1) != 0 || objc_msgSend(@"lower-latin", "isEqualToString:", v37))
        {
          v41 = v63;
          goto LABEL_89;
        }

        if (([@"upper-alpha" isEqualToString:v37] & 1) != 0 || objc_msgSend(@"upper-latin", "isEqualToString:", v37))
        {
          v41 = v62;
          goto LABEL_89;
        }

        if ([@"lower-greek" isEqualToString:v37])
        {
          v41 = v61;
          goto LABEL_89;
        }

        if ([@"upper-greek" isEqualToString:v37])
        {
          v41 = v60;
          goto LABEL_89;
        }

        if ([@"lower-russian" isEqualToString:v37])
        {
          v41 = v59;
          goto LABEL_89;
        }

        if ([@"upper-russian" isEqualToString:v37])
        {
          v41 = v58;
          goto LABEL_89;
        }

        if ([@"hiragana" isEqualToString:v37])
        {
          v42 = v57;
          v43 = &gojuon;
        }

        else
        {
          if (![@"hiragana-iroha" isEqualToString:v37])
          {
            if ([@"katakana" isEqualToString:v37])
            {
              v46 = v57;
              v47 = &gojuon;
            }

            else
            {
              if (![@"katakana-iroha" isEqualToString:v37])
              {
                if ([@"cjk-earthly-branch" isEqualToString:v37])
                {
                  v48 = v55;
                  v49 = &earthly_branch;
                }

                else
                {
                  if (![@"cjk-heavenly-stem" isEqualToString:v37])
                  {
                    if ([@"lower-roman" isEqualToString:v37])
                    {
                      v50 = romanString(v64);
                    }

                    else if ([@"upper-roman" isEqualToString:v37])
                    {
                      v50 = [romanString(v64) uppercaseString];
                    }

                    else if ([@"cjk-ideographic" isEqualToString:v37])
                    {
                      v50 = cjkString(v64);
                    }

                    else
                    {
                      if ([@"decimal-leading-zero" isEqualToString:v37])
                      {
                        [v18 appendFormat:v53, v64];
                        goto LABEL_90;
                      }

                      if ([@"arabic-indic" isEqualToString:v37])
                      {
                        v50 = arabicIndicString(v64);
                      }

                      else
                      {
                        if (![@"hebrew" isEqualToString:v37])
                        {
                          [v18 appendFormat:@"%ld", v64];
                          goto LABEL_90;
                        }

                        v50 = hebrewString(v64);
                      }
                    }

                    [v18 appendFormat:@"%@", v50];
LABEL_90:
                    v66 = 1;
                    goto LABEL_76;
                  }

                  v48 = v54;
                  v49 = &heavenly_stem;
                }

                v41 = v49[v48];
LABEL_89:
                [v18 appendFormat:@"%C", v41];
                goto LABEL_90;
              }

              v46 = v56;
              v47 = &iroha;
            }

            v44 = v47[v46];
            v45 = 12448;
LABEL_107:
            v41 = (v44 + v45);
            goto LABEL_89;
          }

          v42 = v56;
          v43 = &iroha;
        }

        v44 = v43[v42];
        v45 = 12352;
        goto LABEL_107;
      case 92:
        v30 = v20 - v21;
        if (v20 > v21)
        {
          [v18 appendString:{objc_msgSend(v14, "substringWithRange:", v21, v30)}];
        }

        if (v20 + 1 < v15 && [v14 characterAtIndex:{v20 + 1, v30}] != 9)
        {
          [v18 appendString:{objc_msgSend(v14, "substringWithRange:", v20 + 1, 1)}];
        }

        v20 += 2;
        goto LABEL_77;
      case 9:
        if (v20 > v21)
        {
          [v18 appendString:{objc_msgSend(v14, "substringWithRange:", v21, v20 - v21)}];
        }

        ++v20;
        goto LABEL_77;
    }

    if (++v20 >= v15 && v15 > v21)
    {
      [v18 appendString:{objc_msgSend(v14, "substringWithRange:", v21, v15 - v21)}];
    }
  }

  while (v20 < v15);
  v14 = v18;
  a5 = v65;
  v51 = v66;
  if (v65)
  {
    goto LABEL_133;
  }

  return v14;
}

- (BOOL)isOrdered
{
  v3 = 0;
  [(NSTextList *)self _markerForMarkerFormat:[(NSTextList *)self markerFormat] itemNumber:1 isNumbered:&v3 substitutionStart:0 end:0 specifierStart:0 end:0];
  return v3;
}

- (id)_markerTitle
{
  v5 = 0;
  v3 = [(NSTextList *)self _markerForMarkerFormat:[(NSTextList *)self markerFormat] itemNumber:1 isNumbered:&v5 substitutionStart:0 end:0 specifierStart:0 end:0];
  if (v5 == 1)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  %@  %@…", v3, -[NSTextList markerForItemNumber:](self, "markerForItemNumber:", 2), -[NSTextList markerForItemNumber:](self, "markerForItemNumber:", 3)];
  }

  return v3;
}

- (id)_markerPrefix
{
  v3 = [(NSTextList *)self markerFormat];
  v5 = 0;
  [(NSTextList *)self _markerForMarkerFormat:v3 itemNumber:1 isNumbered:0 substitutionStart:&v5 end:0 specifierStart:0 end:0];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v5)
    {
      return [(NSString *)v3 substringWithRange:0];
    }

    else
    {
      return &stru_1F01AD578;
    }
  }

  return v3;
}

- (id)_markerSpecifier
{
  v3 = [(NSTextList *)self markerFormat];
  v7 = 0;
  v8 = 0;
  [(NSTextList *)self _markerForMarkerFormat:v3 itemNumber:1 isNumbered:0 substitutionStart:0 end:0 specifierStart:&v8 end:&v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL && v7 > v8)
  {
    return [(NSString *)v3 substringWithRange:v8, v7 - v8];
  }

  else
  {
    return &stru_1F01AD578;
  }
}

- (id)_markerSpecifierAsCSSValue
{
  v2 = [(NSTextList *)self _markerSpecifier];
  if (!v2)
  {
    return &stru_1F01AD578;
  }

  v3 = v2;
  result = [&unk_1F01CC248 objectForKey:v2];
  if (!result)
  {
    return v3;
  }

  return result;
}

- (id)_unaffixedMarkerFormat
{
  v3 = [(NSTextList *)self markerFormat];
  v7 = 0;
  v8 = 0;
  [(NSTextList *)self _markerForMarkerFormat:v3 itemNumber:1 isNumbered:0 substitutionStart:&v8 end:&v7 specifierStart:0 end:0];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && v7 != 0x7FFFFFFFFFFFFFFFLL && v7 > v8)
  {
    return [(NSString *)v3 substringWithRange:v8, v7 - v8];
  }

  else
  {
    return &stru_1F01AD578;
  }
}

- (id)_unaffixedMarkerForItemNumber:(int64_t)a3
{
  v5 = [(NSTextList *)self markerFormat];
  v9 = 0;
  v10 = 0;
  [(NSTextList *)self _markerForMarkerFormat:v5 itemNumber:a3 isNumbered:0 substitutionStart:&v10 end:&v9 specifierStart:0 end:0];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && v9 != 0x7FFFFFFFFFFFFFFFLL && v9 > v10)
  {
    return [(NSTextList *)self _markerForMarkerFormat:[(NSString *)v5 substringWithRange:v10 itemNumber:v9 - v10] isNumbered:a3 substitutionStart:0 end:0 specifierStart:0 end:0, 0];
  }

  else
  {
    return &stru_1F01AD578;
  }
}

- (id)_unaffixedMarkerTitle
{
  v3 = [(NSTextList *)self markerFormat];
  v10 = 0;
  v8 = 0;
  v9 = 0;
  [(NSTextList *)self _markerForMarkerFormat:v3 itemNumber:1 isNumbered:&v10 substitutionStart:&v9 end:&v8 specifierStart:0 end:0];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL || v8 == 0x7FFFFFFFFFFFFFFFLL || v8 <= v9)
  {
    return &stru_1F01AD578;
  }

  v6 = [(NSTextList *)self _markerForMarkerFormat:[(NSString *)v3 substringWithRange:v9 itemNumber:v8 - v9] isNumbered:1 substitutionStart:0 end:0 specifierStart:0 end:0, 0];
  if (v10 == 1)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  %@  %@…", v6, -[NSTextList _unaffixedMarkerForItemNumber:](self, "_unaffixedMarkerForItemNumber:", 2), -[NSTextList _unaffixedMarkerForItemNumber:](self, "_unaffixedMarkerForItemNumber:", 3)];
  }

  return v6;
}

- (id)_markerSuffix
{
  v3 = [(NSTextList *)self markerFormat];
  v7 = 0;
  v4 = [(NSString *)v3 length];
  [(NSTextList *)self _markerForMarkerFormat:v3 itemNumber:1 isNumbered:0 substitutionStart:0 end:&v7 specifierStart:0 end:0];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL && v4 > v7)
  {
    return [(NSString *)v3 substringWithRange:v7, v4 - v7];
  }

  else
  {
    return &stru_1F01AD578;
  }
}

- (id)_markerAtIndex:(unint64_t)a3 inText:(id)a4
{
  v7 = [a4 itemNumberInTextList:self atIndex:a3];
  if (v7 < 1)
  {
    return &stru_1F01AD578;
  }

  v8 = [(NSTextList *)self markerForItemNumber:v7];
  if ((self->_listFlags & 1) == 0)
  {
    return v8;
  }

  v9 = [objc_msgSend(a4 attribute:@"NSParagraphStyle" atIndex:a3 effectiveRange:{0), "textLists"}];
  v10 = [v9 count];
  if (v10 < 2)
  {
    return v8;
  }

  v11 = v10;
  v12 = 1;
  while ([v9 objectAtIndex:v12] != self)
  {
    if (v11 == ++v12)
    {
      return v8;
    }
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", objc_msgSend(objc_msgSend(v9, "objectAtIndex:", v12 - 1), "_markerAtIndex:inText:", a3, a4), v8];
}

+ (id)_standardMarkerAttributesForAttributes:(id)a3
{
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = [a3 objectForKey:@"NSFont"];
  if (v5)
  {
    [v4 setObject:v5 forKey:@"NSFont"];
  }

  v6 = [a3 objectForKey:@"NSParagraphStyle"];
  if (v6)
  {
    [v4 setObject:v6 forKey:@"NSParagraphStyle"];
  }

  v7 = [a3 objectForKey:@"NSColor"];
  if (v7)
  {
    [v4 setObject:v7 forKey:@"NSColor"];
  }

  v8 = [a3 objectForKey:@"NSBackgroundColor"];
  if (v8)
  {
    [v4 setObject:v8 forKey:@"NSBackgroundColor"];
  }

  return v4;
}

@end