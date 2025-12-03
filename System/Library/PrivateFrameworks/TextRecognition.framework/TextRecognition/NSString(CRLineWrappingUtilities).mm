@interface NSString(CRLineWrappingUtilities)
- (BOOL)_crIsListItemMarker;
- (BOOL)_crStartsWithBOS;
- (BOOL)_crStartsWithDigit;
- (uint64_t)_crEndsWithClosingPunctuation;
- (uint64_t)_crEndsWithDigit;
- (uint64_t)_crEndsWithEOS;
- (uint64_t)_crEndsWithMOS;
- (uint64_t)_crIsProgrammingStatement;
- (uint64_t)_crIsSentencePunctuatedIncludingWhitespace:()CRLineWrappingUtilities;
- (uint64_t)_crIsStartOfSentence;
@end

@implementation NSString(CRLineWrappingUtilities)

- (BOOL)_crStartsWithBOS
{
  objc_opt_self();
  if (qword_1ED960150 != -1)
  {
    dispatch_once(&qword_1ED960150, &__block_literal_global_19);
  }

  v2 = _MergedGlobals_24;
  v3 = [self rangeOfCharacterFromSet:v2];

  return v3 == 0;
}

- (BOOL)_crStartsWithDigit
{
  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v3 = [self rangeOfCharacterFromSet:decimalDigitCharacterSet];

  return v3 == 0;
}

- (uint64_t)_crEndsWithDigit
{
  if (![self length])
  {
    return 0;
  }

  decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
  v3 = [decimalDigitCharacterSet characterIsMember:{objc_msgSend(self, "characterAtIndex:", objc_msgSend(self, "length") - 1)}];

  return v3;
}

- (uint64_t)_crEndsWithEOS
{
  objc_opt_self();
  if (qword_1ED960160 != -1)
  {
    dispatch_once(&qword_1ED960160, &__block_literal_global_3);
  }

  v2 = qword_1ED960158;
  v3 = [self stringByTrimmingCharactersInSet:v2];
  v4 = [self hasSuffix:v3];

  return v4 ^ 1u;
}

- (uint64_t)_crEndsWithMOS
{
  objc_opt_self();
  if (qword_1ED960180 != -1)
  {
    dispatch_once(&qword_1ED960180, &__block_literal_global_13);
  }

  v2 = qword_1ED960178;
  v3 = [self stringByTrimmingCharactersInSet:v2];
  v4 = [self hasSuffix:v3];

  return v4 ^ 1u;
}

- (uint64_t)_crEndsWithClosingPunctuation
{
  objc_opt_self();
  if (qword_1ED960170 != -1)
  {
    dispatch_once(&qword_1ED960170, &__block_literal_global_8);
  }

  v2 = qword_1ED960168;
  v3 = [self stringByTrimmingCharactersInSet:v2];
  v4 = [self hasSuffix:v3];

  return v4 ^ 1u;
}

- (uint64_t)_crIsStartOfSentence
{
  if ([self _crStartsWithBOS])
  {
    return 1;
  }

  return [self _crStartsWithListItemIndicator];
}

- (BOOL)_crIsListItemMarker
{
  v2 = [CRListItemMarker listItemMarkerForText:self requiresAdjacentText:0];
  v3 = v2;
  v5 = 0;
  if (v2)
  {
    [v2 range];
    if (v4 == [self length])
    {
      v5 = 1;
    }
  }

  return v5;
}

- (uint64_t)_crIsProgrammingStatement
{
  v2 = [self length];
  result = 0;
  if (self)
  {
    if (v2)
    {
      result = [self length];
      if (result)
      {
        if ([self length])
        {
          v4 = 0;
          while ([self characterAtIndex:v4] - 32 < 0x60)
          {
            if (++v4 >= [self length])
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
LABEL_8:
          if ([self containsString:@" = "] & 1) != 0 || (objc_msgSend(self, "hasSuffix:", @"{") & 1) != 0 || (objc_msgSend(self, "hasPrefix:", @"}") & 1) != 0 || (objc_msgSend(self, "hasPrefix:", @"// ") & 1) != 0 || (objc_msgSend(self, "hasPrefix:", @"# ") & 1) != 0 || objc_msgSend(self, "hasPrefix:", @"[") && (objc_msgSend(self, "hasSuffix:", @"];"))
          {
            return 1;
          }

          if (([self hasSuffix:@""]) & 1) != 0 || objc_msgSend(self, "hasSuffix:", @";")))
          {
            alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
            v6 = [alphanumericCharacterSet characterIsMember:{objc_msgSend(self, "characterAtIndex:", 0)}];

            if (v6)
            {
              alphanumericCharacterSet2 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
              v8 = [self stringByTrimmingCharactersInSet:alphanumericCharacterSet2];

              LOBYTE(alphanumericCharacterSet2) = objc_msgSend(v8, "hasPrefix:", @"(");
              if (alphanumericCharacterSet2)
              {
                return 1;
              }
            }
          }
        }

        return 0;
      }
    }
  }

  return result;
}

- (uint64_t)_crIsSentencePunctuatedIncludingWhitespace:()CRLineWrappingUtilities
{
  v44 = *MEMORY[0x1E69E9840];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = [&unk_1F2BFB0B0 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v6)
  {
    v7 = *v39;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v39 != v7)
      {
        objc_enumerationMutation(&unk_1F2BFB0B0);
      }

      v9 = *(*(&v38 + 1) + 8 * v8);
      if (a3)
      {
        v10 = v9;
      }

      else
      {
        v10 = [v9 stringByTrimmingCharactersInSet:whitespaceCharacterSet];
      }

      v11 = v10;
      v12 = [self containsString:v10];

      if (v12)
      {
        goto LABEL_43;
      }

      if (v6 == ++v8)
      {
        v6 = [&unk_1F2BFB0B0 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (a3)
  {
    [self componentsSeparatedByCharactersInSet:whitespaceCharacterSet];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v13 = v35 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v14)
    {
      v15 = 0;
      v16 = *v35;
LABEL_15:
      v17 = 0;
      while (1)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v34 + 1) + 8 * v17);
        if (v15 == [v13 count] - 1)
        {
          break;
        }

        v19 = [v13 objectAtIndexedSubscript:++v15];
        if ([v18 hasSuffix:@"."])
        {
          if ([v18 _crContainsText] && (!objc_msgSend(v18, "_crStartsWithUppercase") || objc_msgSend(v18, "_crIsAllCaps") && objc_msgSend(v18, "length") != 2 || objc_msgSend(v18, "length") >= 4))
          {
            letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
            if ([v19 _crStartsWithCharacterInSet:letterCharacterSet])
            {
              _crStartsWithLowercase = [v19 _crStartsWithLowercase];

              if ((_crStartsWithLowercase & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            else
            {
            }
          }
        }

        else if (([v18 hasSuffix:{@", "}] & 1) != 0 || objc_msgSend(v18, "hasSuffix:", @"，"))
        {
          if (![v18 _crContainsText] || !objc_msgSend(v19, "_crContainsText") || (v22 = objc_msgSend(v18, "_crIsAllCaps"), v22 == objc_msgSend(v19, "_crIsAllCaps")) || objc_msgSend(v18, "length") < 3 || objc_msgSend(v19, "length") < 2)
          {
LABEL_42:

            goto LABEL_43;
          }
        }

        if (v14 == ++v17)
        {
          v14 = [v13 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v14)
          {
            goto LABEL_15;
          }

          break;
        }
      }
    }
  }

  else
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = __Block_byref_object_copy__10;
    v28[4] = __Block_byref_object_dispose__10;
    v29 = 0;
    v23 = [self length];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __80__NSString_CRLineWrappingUtilities___crIsSentencePunctuatedIncludingWhitespace___block_invoke;
    v27[3] = &unk_1E7BC2DB8;
    v27[4] = self;
    v27[5] = v28;
    v27[6] = &v30;
    [self enumerateSubstringsInRange:0 options:v23 usingBlock:{2, v27}];
    v24 = *(v31 + 24);
    _Block_object_dispose(v28, 8);

    _Block_object_dispose(&v30, 8);
    if (v24)
    {
LABEL_43:
      v25 = 1;
      goto LABEL_44;
    }
  }

  v25 = 0;
LABEL_44:

  return v25;
}

@end