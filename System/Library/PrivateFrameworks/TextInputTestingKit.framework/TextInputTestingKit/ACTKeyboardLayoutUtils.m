@interface ACTKeyboardLayoutUtils
- (ACTKeyboardLayoutUtils)initWithLocale:(id)a3;
- (id)alternativeKeyForString:(id)a3 keyplane:(id)a4 preferBaseKeyVariants:(BOOL)a5 preferManualShift:(BOOL)a6 substituteUpperCaseForLowerCase:(BOOL)a7;
- (id)anyKeyForString:(id)a3 keyplane:(id)a4 wantSecondaryString:(BOOL)a5 isRetyping:(BOOL)a6 preferBaseKeyVariants:(BOOL)a7 preferManualShift:(BOOL)a8 substituteUpperCaseForLowerCase:(BOOL)a9;
- (id)baseKeyForString:(id)a3;
- (id)createTTKPlane:(id)a3;
- (id)exactKeyForString:(id)a3 keyplane:(id)a4 includeSecondaryStrings:(BOOL)a5;
- (id)representedStringForKey:(id)a3 shifted:(BOOL)a4 includeSecondaryStrings:(BOOL)a5;
- (id)substitutesForKey:(id)a3 preferBaseKeyVariants:(BOOL)a4 preferManualShift:(BOOL)a5 substituteUpperCaseForLowerCase:(BOOL)a6;
- (void)setLayoutKeyOverride:(id)a3 forKey:(id)a4 uiKeyboardStringNothing:(id)a5;
@end

@implementation ACTKeyboardLayoutUtils

- (id)anyKeyForString:(id)a3 keyplane:(id)a4 wantSecondaryString:(BOOL)a5 isRetyping:(BOOL)a6 preferBaseKeyVariants:(BOOL)a7 preferManualShift:(BOOL)a8 substituteUpperCaseForLowerCase:(BOOL)a9
{
  v9 = a8;
  v10 = a7;
  v12 = a5;
  v15 = a3;
  v16 = a4;
  v17 = [(ACTKeyboardLayoutUtils *)self exactKeyForString:v15 keyplane:v16 includeSecondaryStrings:v12];
  if (!v17 && !a6)
  {
    v17 = [(ACTKeyboardLayoutUtils *)self alternativeKeyForString:v15 keyplane:v16 preferBaseKeyVariants:v10 preferManualShift:v9 substituteUpperCaseForLowerCase:a9];
  }

  return v17;
}

- (id)alternativeKeyForString:(id)a3 keyplane:(id)a4 preferBaseKeyVariants:(BOOL)a5 preferManualShift:(BOOL)a6 substituteUpperCaseForLowerCase:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v26 = *MEMORY[0x277D85DE8];
  v12 = a4;
  if (a3)
  {
    [(ACTKeyboardLayoutUtils *)self substitutesForKey:a3 preferBaseKeyVariants:v9 preferManualShift:v8 substituteUpperCaseForLowerCase:v7];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v24 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [(ACTKeyboardLayoutUtils *)self exactKeyForString:*(*(&v21 + 1) + 8 * i) keyplane:v12, v21];
          if (v18)
          {
            v19 = v18;
            goto LABEL_12;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    v19 = 0;
LABEL_12:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)exactKeyForString:(id)a3 keyplane:(id)a4 includeSecondaryStrings:(BOOL)a5
{
  v27 = a5;
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [v8 keys];
    v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v28 + 1) + 8 * i);
          v15 = -[ACTKeyboardLayoutUtils representedStringForKey:shifted:includeSecondaryStrings:](self, "representedStringForKey:shifted:includeSecondaryStrings:", v14, [v9 isShiftKeyplane], v27);
          if ([v7 isEqualToString:v15])
          {
LABEL_16:
            v24 = v14;

            goto LABEL_19;
          }

          v16 = [v14 name];
          v17 = [v16 hasPrefix:@"TenKey-Chinese-Pinyin"];

          if (v17)
          {
            v18 = [v14 displayString];
            v19 = [v18 rangeOfString:v7 options:1];

            if (v19 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v20 = [v14 name];
            v21 = [v20 hasPrefix:@"Thai-24-Key"];

            if (v21)
            {
              v22 = [v14 secondaryDisplayStrings];
              v23 = [v22 containsObject:v7];

              if (v23)
              {
                goto LABEL_16;
              }
            }
          }
        }

        v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        v24 = 0;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v24 = 0;
    }

LABEL_19:
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)representedStringForKey:(id)a3 shifted:(BOOL)a4 includeSecondaryStrings:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [v8 representedString];
  if ([v8 displayType] == 7 && objc_msgSend(v9, "length") >= 2)
  {
    if (a4)
    {
      [v9 substringFromIndex:1];
    }

    else
    {
      [v9 substringToIndex:1];
    }

    v9 = v13 = v9;
    goto LABEL_19;
  }

  v10 = [v8 name];
  v11 = [v10 isEqualToString:@"Latin-Accents"];

  if (!v11)
  {
    if (!v5)
    {
      goto LABEL_20;
    }

    if ([v8 displayType] != 7 || (objc_msgSend(v8, "secondaryRepresentedStrings"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, !v16))
    {
      if ([v8 displayType])
      {
        goto LABEL_20;
      }

      v17 = [v8 secondaryRepresentedStrings];
      v18 = [v17 count];

      if (!v18)
      {
        goto LABEL_20;
      }
    }

    v13 = [v8 secondaryRepresentedStrings];
    v14 = [v13 firstObject];
    goto LABEL_18;
  }

  v12 = [(NSMutableDictionary *)self->_keyOverrides objectForKeyedSubscript:*MEMORY[0x277D76BE0]];
  v13 = v12;
  if (v12)
  {
    if ([v12 length] == 2)
    {
      v14 = [v13 substringToIndex:1];
    }

    else
    {
      v14 = v13;
    }

LABEL_18:
    v19 = v14;

    v9 = v19;
  }

LABEL_19:

LABEL_20:

  return v9;
}

- (id)substitutesForKey:(id)a3 preferBaseKeyVariants:(BOOL)a4 preferManualShift:(BOOL)a5 substituteUpperCaseForLowerCase:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v10 = a3;
  v11 = [MEMORY[0x277CBEB18] array];
  if ([v10 length] == 1)
  {
    if (v8)
    {
      v12 = [(ACTKeyboardLayoutUtils *)self baseKeyForString:v10];
      if (v12)
      {
        [v11 addObject:v12];
      }
    }

    v13 = [v10 characterAtIndex:0];
    v14 = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    LODWORD(v13) = [v14 characterIsMember:v13];

    if (v13 && !a5)
    {
      v15 = [v10 lowercaseStringWithLocale:self->_locale];
      [v11 addObject:v15];
      if (v8)
      {
        v16 = [(ACTKeyboardLayoutUtils *)self baseKeyForString:v15];
        if (v16)
        {
          [v11 addObject:v16];
        }
      }
    }

    if (v6)
    {
      v17 = [v10 characterAtIndex:0];
      v18 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
      LODWORD(v17) = [v18 characterIsMember:v17];

      if (v17)
      {
        v19 = [v10 uppercaseStringWithLocale:self->_locale];
        [v11 addObject:v19];
        if (v8)
        {
          v20 = [(ACTKeyboardLayoutUtils *)self baseKeyForString:v19];
          if (v20)
          {
            [v11 addObject:v20];
          }
        }
      }
    }

    if (v8)
    {
      if ([v10 isEqualToString:@"ı"])
      {
        v21 = @"i";
      }

      else
      {
        if (![v10 isEqualToString:@"İ"])
        {
          goto LABEL_26;
        }

        v21 = @"I";
      }

      [v11 addObject:v21];
    }
  }

LABEL_26:

  return v11;
}

- (id)baseKeyForString:(id)a3
{
  v3 = [a3 decomposedStringWithCanonicalMapping];
  if ([v3 length] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 substringToIndex:1];
  }

  return v4;
}

- (id)createTTKPlane:(id)a3
{
  v4 = a3;
  v5 = [[TTKKeyboardPlane alloc] initWithUIKBTree:v4 layoutUtils:self];

  return v5;
}

- (void)setLayoutKeyOverride:(id)a3 forKey:(id)a4 uiKeyboardStringNothing:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (v12)
  {
    v10 = [v12 isEqualToString:v9];
    keyOverrides = self->_keyOverrides;
    if (v10)
    {
      [(NSMutableDictionary *)keyOverrides removeObjectForKey:v8];
    }

    else
    {
      [(NSMutableDictionary *)keyOverrides setObject:v12 forKey:v8];
    }
  }
}

- (ACTKeyboardLayoutUtils)initWithLocale:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ACTKeyboardLayoutUtils;
  v6 = [(ACTKeyboardLayoutUtils *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keyOverrides = v6->_keyOverrides;
    v6->_keyOverrides = v7;

    objc_storeStrong(&v6->_locale, a3);
  }

  return v6;
}

@end