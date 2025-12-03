@interface WBSPasswordRuleParser
+ (id)_passwordRuleSetFromPasswordRules:(id)rules;
+ (id)mergePasswordRuleSet:(id)set withPasswordRuleSet:(id)ruleSet;
+ (id)parsePasswordRules:(id)rules error:(id *)error;
@end

@implementation WBSPasswordRuleParser

+ (id)parsePasswordRules:(id)rules error:(id *)error
{
  rulesCopy = rules;
  v7 = rulesCopy;
  if (!rulesCopy)
  {
    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = 2;
LABEL_10:
      [v13 errorWithDomain:@"WBSPasswordRuleParserErrorDomain" code:v14 userInfo:0];
      *error = v12 = 0;
      goto LABEL_17;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_17;
  }

  v8 = [(__CFString *)rulesCopy length];
  v9 = malloc_type_calloc(v8 + 1, 2uLL, 0x1000040BDFB0063uLL);
  if (!v9)
  {
    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = 0;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v10 = v9;
  v18.location = 0;
  v18.length = v8;
  CFStringGetCharacters(v7, v18, v9);
  v10[v8] = 0;
  v16 = 0;
  v11 = parsePasswordRules(v10, &v16);
  free(v10);
  if (v16 == -1)
  {
    if (error)
    {
      *error = 0;
    }

    v12 = [self _passwordRuleSetFromPasswordRules:v11];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSPasswordRuleParserErrorDomain" code:? userInfo:?];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

LABEL_17:

  return v12;
}

+ (id)_passwordRuleSetFromPasswordRules:(id)rules
{
  v55 = *MEMORY[0x1E69E9840];
  rulesCopy = rules;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = rulesCopy;
  v6 = [v5 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (!v6)
  {
    v46 = 0;
    v45 = 0;
    v9 = -2147483647;
    v10 = 0x7FFFFFFFLL;
    v11 = 0x7FFFFFFFLL;
    goto LABEL_33;
  }

  v7 = v6;
  v46 = 0;
  v45 = 0;
  v8 = *v50;
  v9 = -2147483647;
  v10 = 0x7FFFFFFFLL;
  v11 = 0x7FFFFFFFLL;
  do
  {
    v12 = 0;
    v48 = v7;
    do
    {
      if (*v50 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v49 + 1) + 8 * v12);
      type = [v13 type];
      if (type <= 1)
      {
        if (type)
        {
          if (type != 1)
          {
            goto LABEL_29;
          }

          value = [v13 value];
          value2 = value;
          if (value)
          {
            v19 = canonicalizedCharacterClasses(value);
            [WBSRequiredPasswordRule requiredRuleWithCharacterClasses:v19];
            v20 = v8;
            v21 = v5;
            v22 = v11;
            v23 = v10;
            v24 = v9;
            v26 = v25 = array2;
            [array addObject:v26];

            array2 = v25;
            v9 = v24;
            v10 = v23;
            v11 = v22;
            v5 = v21;
            v8 = v20;
            v7 = v48;
            [array2 addObjectsFromArray:v19];
          }
        }

        else
        {
          value2 = [v13 value];
          if (value2)
          {
            [array2 addObjectsFromArray:value2];
          }
        }
      }

      else
      {
        switch(type)
        {
          case 4:
            value3 = [v13 value];
            value2 = value3;
            if (value3)
            {
              integerValue = [value3 integerValue];
              if (v10 >= integerValue)
              {
                v10 = integerValue;
              }

              LOBYTE(v46) = 1;
            }

            break;
          case 3:
            value4 = [v13 value];
            value2 = value4;
            if (value4)
            {
              integerValue2 = [value4 integerValue];
              if (v9 <= integerValue2)
              {
                v9 = integerValue2;
              }

              BYTE4(v46) = 1;
            }

            break;
          case 2:
            value5 = [v13 value];
            value2 = value5;
            if (value5)
            {
              integerValue3 = [value5 integerValue];
              if (v11 >= integerValue3)
              {
                v11 = integerValue3;
              }

              v45 = 1;
            }

            break;
          default:
            goto LABEL_29;
        }
      }

LABEL_29:
      ++v12;
    }

    while (v7 != v12);
    v7 = [v5 countByEnumeratingWithState:&v49 objects:v54 count:16];
  }

  while (v7);
LABEL_33:

  v31 = canonicalizedCharacterClasses(array2);
  if (![v31 count])
  {
    v32 = +[WBSPasswordCharacterClass asciiPrintableCharacterClass];
    v53 = v32;
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];

    v31 = v33;
  }

  v34 = [WBSAllowedPasswordRule allowedRuleWithCharacterClasses:v31];
  v35 = array2;
  if (v45)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v37 = [WBSMaxConsecutivePasswordRule maxConsecutiveRuleWithValue:v36];
  }

  else
  {
    v37 = 0;
  }

  if (v46)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
    v39 = [WBSMaxLengthPasswordRule maxLengthRuleWithValue:v38];
  }

  else
  {
    v39 = 0;
  }

  if ((v46 & 0x100000000) != 0)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    v41 = [WBSMinLengthPasswordRule minLengthRuleWithValue:v40];
  }

  else
  {
    v41 = 0;
  }

  v42 = [WBSPasswordRuleSet ruleSetWithAllowedRule:v34 requiredRules:array maxConsecutiveRule:v37 minLengthRule:v41 maxLengthRule:v39];

  v43 = *MEMORY[0x1E69E9840];

  return v42;
}

+ (id)mergePasswordRuleSet:(id)set withPasswordRuleSet:(id)ruleSet
{
  v67[2] = *MEMORY[0x1E69E9840];
  setCopy = set;
  ruleSetCopy = ruleSet;
  v8 = ruleSetCopy;
  v9 = 0;
  if (!setCopy || !ruleSetCopy)
  {
    goto LABEL_45;
  }

  selfCopy = self;
  array = [MEMORY[0x1E695DF70] array];
  allowedRule = [setCopy allowedRule];
  value = [allowedRule value];
  allowedRule2 = [v8 allowedRule];
  value2 = [allowedRule2 value];
  v15 = value;
  v16 = value2;
  v56 = v8;
  if ([v15 count] && objc_msgSend(v16, "count"))
  {
    v50 = allowedRule2;
    v51 = allowedRule;
    string = [MEMORY[0x1E696AD60] string];
    string2 = [MEMORY[0x1E696AD60] string];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __intersectCharacterClasses_block_invoke;
    aBlock[3] = &unk_1E7CF38C0;
    v62 = v15;
    v63 = v16;
    v52 = string;
    v64 = v52;
    v54 = string2;
    v65 = v54;
    v19 = _Block_copy(aBlock);
    LOBYTE(string) = v19[2](v19, 1);
    v49 = v19;
    v20 = v19[2](v19, 0) & string;
    array2 = [MEMORY[0x1E695DF70] array];
    if ((v20 & 0x10) != 0)
    {
      v44 = +[WBSPasswordCharacterClass unicodeCharacterClass];
      [array2 addObject:v44];

      if ((v20 & 0x20) == 0)
      {
LABEL_7:
        if ((v20 & 2) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_50;
      }
    }

    else if ((v20 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    v45 = +[WBSPasswordCharacterClass asciiPrintableCharacterClass];
    [array2 addObject:v45];

    if ((v20 & 2) == 0)
    {
LABEL_8:
      if ((v20 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_51;
    }

LABEL_50:
    v46 = +[WBSPasswordCharacterClass lowercaseCharacterClass];
    [array2 addObject:v46];

    if ((v20 & 1) == 0)
    {
LABEL_9:
      if ((v20 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_52;
    }

LABEL_51:
    v47 = +[WBSPasswordCharacterClass uppercaseCharacterClass];
    [array2 addObject:v47];

    if ((v20 & 4) == 0)
    {
LABEL_10:
      if ((v20 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_52:
    v48 = +[WBSPasswordCharacterClass digitCharacterClass];
    [array2 addObject:v48];

    if ((v20 & 8) == 0)
    {
LABEL_12:
      v23 = v52;
      if ([v52 length] && objc_msgSend(v54, "length"))
      {
        v24 = array2;
        v25 = *MEMORY[0x1E695E480];
        Mutable = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], 95);
        CFBitVectorSetCount(Mutable, 95);
        markBitsForCustomCharacterClassPropertyValue(Mutable, v52);
        v27 = CFBitVectorCreateMutable(v25, 95);
        CFBitVectorSetCount(v27, 95);
        markBitsForCustomCharacterClassPropertyValue(v27, v54);
        string3 = [MEMORY[0x1E696AD60] string];
        for (i = 0; i != 95; ++i)
        {
          if (CFBitVectorGetBitAtIndex(Mutable, i) && CFBitVectorGetBitAtIndex(v27, i))
          {
            [string3 appendFormat:@"%C", i + 32];
          }
        }

        CFRelease(Mutable);
        CFRelease(v27);
        array2 = v24;
        if ([string3 length])
        {
          v30 = [WBSPasswordCharacterClass customCharacterClassWithValue:string3];
          [v24 addObject:v30];
        }

        v8 = v56;
        v23 = v52;
      }

      allowedRule2 = v50;
      allowedRule = v51;
      goto LABEL_24;
    }

LABEL_11:
    v22 = +[WBSPasswordCharacterClass specialCharacterClass];
    [array2 addObject:v22];

    goto LABEL_12;
  }

  array2 = MEMORY[0x1E695E0F0];
LABEL_24:

  if ([array2 count])
  {
    v31 = [WBSAllowedPasswordRule allowedRuleWithCharacterClasses:array2];
    [array addObject:v31];
  }

  v55 = array2;
  v67[0] = setCopy;
  v67[1] = v8;
  [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v32 = v60 = 0u;
  v33 = [v32 countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v58;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v58 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v57 + 1) + 8 * j);
        requiredRules = [v37 requiredRules];
        if (requiredRules)
        {
          [array addObjectsFromArray:requiredRules];
        }

        maxConsecutiveRule = [v37 maxConsecutiveRule];
        if (maxConsecutiveRule)
        {
          [array addObject:maxConsecutiveRule];
        }

        minLengthRule = [v37 minLengthRule];
        if (minLengthRule)
        {
          [array addObject:minLengthRule];
        }

        maxLengthRule = [v37 maxLengthRule];
        if (maxLengthRule)
        {
          [array addObject:maxLengthRule];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v34);
  }

  if ([array count])
  {
    v9 = [selfCopy _passwordRuleSetFromPasswordRules:array];
  }

  else
  {
    v9 = 0;
  }

  v8 = v56;
LABEL_45:

  v42 = *MEMORY[0x1E69E9840];

  return v9;
}

@end