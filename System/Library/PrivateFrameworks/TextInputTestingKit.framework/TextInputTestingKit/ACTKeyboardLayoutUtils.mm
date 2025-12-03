@interface ACTKeyboardLayoutUtils
- (ACTKeyboardLayoutUtils)initWithLocale:(id)locale;
- (id)alternativeKeyForString:(id)string keyplane:(id)keyplane preferBaseKeyVariants:(BOOL)variants preferManualShift:(BOOL)shift substituteUpperCaseForLowerCase:(BOOL)case;
- (id)anyKeyForString:(id)string keyplane:(id)keyplane wantSecondaryString:(BOOL)secondaryString isRetyping:(BOOL)retyping preferBaseKeyVariants:(BOOL)variants preferManualShift:(BOOL)shift substituteUpperCaseForLowerCase:(BOOL)case;
- (id)baseKeyForString:(id)string;
- (id)createTTKPlane:(id)plane;
- (id)exactKeyForString:(id)string keyplane:(id)keyplane includeSecondaryStrings:(BOOL)strings;
- (id)representedStringForKey:(id)key shifted:(BOOL)shifted includeSecondaryStrings:(BOOL)strings;
- (id)substitutesForKey:(id)key preferBaseKeyVariants:(BOOL)variants preferManualShift:(BOOL)shift substituteUpperCaseForLowerCase:(BOOL)case;
- (void)setLayoutKeyOverride:(id)override forKey:(id)key uiKeyboardStringNothing:(id)nothing;
@end

@implementation ACTKeyboardLayoutUtils

- (id)anyKeyForString:(id)string keyplane:(id)keyplane wantSecondaryString:(BOOL)secondaryString isRetyping:(BOOL)retyping preferBaseKeyVariants:(BOOL)variants preferManualShift:(BOOL)shift substituteUpperCaseForLowerCase:(BOOL)case
{
  shiftCopy = shift;
  variantsCopy = variants;
  secondaryStringCopy = secondaryString;
  stringCopy = string;
  keyplaneCopy = keyplane;
  v17 = [(ACTKeyboardLayoutUtils *)self exactKeyForString:stringCopy keyplane:keyplaneCopy includeSecondaryStrings:secondaryStringCopy];
  if (!v17 && !retyping)
  {
    v17 = [(ACTKeyboardLayoutUtils *)self alternativeKeyForString:stringCopy keyplane:keyplaneCopy preferBaseKeyVariants:variantsCopy preferManualShift:shiftCopy substituteUpperCaseForLowerCase:case];
  }

  return v17;
}

- (id)alternativeKeyForString:(id)string keyplane:(id)keyplane preferBaseKeyVariants:(BOOL)variants preferManualShift:(BOOL)shift substituteUpperCaseForLowerCase:(BOOL)case
{
  caseCopy = case;
  shiftCopy = shift;
  variantsCopy = variants;
  v26 = *MEMORY[0x277D85DE8];
  keyplaneCopy = keyplane;
  if (string)
  {
    [(ACTKeyboardLayoutUtils *)self substitutesForKey:string preferBaseKeyVariants:variantsCopy preferManualShift:shiftCopy substituteUpperCaseForLowerCase:caseCopy];
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

          v18 = [(ACTKeyboardLayoutUtils *)self exactKeyForString:*(*(&v21 + 1) + 8 * i) keyplane:keyplaneCopy, v21];
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

- (id)exactKeyForString:(id)string keyplane:(id)keyplane includeSecondaryStrings:(BOOL)strings
{
  stringsCopy = strings;
  v33 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  keyplaneCopy = keyplane;
  v9 = keyplaneCopy;
  if (stringCopy)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [keyplaneCopy keys];
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
          v15 = -[ACTKeyboardLayoutUtils representedStringForKey:shifted:includeSecondaryStrings:](self, "representedStringForKey:shifted:includeSecondaryStrings:", v14, [v9 isShiftKeyplane], stringsCopy);
          if ([stringCopy isEqualToString:v15])
          {
LABEL_16:
            v24 = v14;

            goto LABEL_19;
          }

          name = [v14 name];
          v17 = [name hasPrefix:@"TenKey-Chinese-Pinyin"];

          if (v17)
          {
            displayString = [v14 displayString];
            v19 = [displayString rangeOfString:stringCopy options:1];

            if (v19 != 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_16;
            }
          }

          else
          {
            name2 = [v14 name];
            v21 = [name2 hasPrefix:@"Thai-24-Key"];

            if (v21)
            {
              secondaryDisplayStrings = [v14 secondaryDisplayStrings];
              v23 = [secondaryDisplayStrings containsObject:stringCopy];

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

- (id)representedStringForKey:(id)key shifted:(BOOL)shifted includeSecondaryStrings:(BOOL)strings
{
  stringsCopy = strings;
  keyCopy = key;
  representedString = [keyCopy representedString];
  if ([keyCopy displayType] == 7 && objc_msgSend(representedString, "length") >= 2)
  {
    if (shifted)
    {
      [representedString substringFromIndex:1];
    }

    else
    {
      [representedString substringToIndex:1];
    }

    representedString = secondaryRepresentedStrings2 = representedString;
    goto LABEL_19;
  }

  name = [keyCopy name];
  v11 = [name isEqualToString:@"Latin-Accents"];

  if (!v11)
  {
    if (!stringsCopy)
    {
      goto LABEL_20;
    }

    if ([keyCopy displayType] != 7 || (objc_msgSend(keyCopy, "secondaryRepresentedStrings"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, !v16))
    {
      if ([keyCopy displayType])
      {
        goto LABEL_20;
      }

      secondaryRepresentedStrings = [keyCopy secondaryRepresentedStrings];
      v18 = [secondaryRepresentedStrings count];

      if (!v18)
      {
        goto LABEL_20;
      }
    }

    secondaryRepresentedStrings2 = [keyCopy secondaryRepresentedStrings];
    firstObject = [secondaryRepresentedStrings2 firstObject];
    goto LABEL_18;
  }

  v12 = [(NSMutableDictionary *)self->_keyOverrides objectForKeyedSubscript:*MEMORY[0x277D76BE0]];
  secondaryRepresentedStrings2 = v12;
  if (v12)
  {
    if ([v12 length] == 2)
    {
      firstObject = [secondaryRepresentedStrings2 substringToIndex:1];
    }

    else
    {
      firstObject = secondaryRepresentedStrings2;
    }

LABEL_18:
    v19 = firstObject;

    representedString = v19;
  }

LABEL_19:

LABEL_20:

  return representedString;
}

- (id)substitutesForKey:(id)key preferBaseKeyVariants:(BOOL)variants preferManualShift:(BOOL)shift substituteUpperCaseForLowerCase:(BOOL)case
{
  caseCopy = case;
  variantsCopy = variants;
  keyCopy = key;
  array = [MEMORY[0x277CBEB18] array];
  if ([keyCopy length] == 1)
  {
    if (variantsCopy)
    {
      v12 = [(ACTKeyboardLayoutUtils *)self baseKeyForString:keyCopy];
      if (v12)
      {
        [array addObject:v12];
      }
    }

    v13 = [keyCopy characterAtIndex:0];
    uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    LODWORD(v13) = [uppercaseLetterCharacterSet characterIsMember:v13];

    if (v13 && !shift)
    {
      v15 = [keyCopy lowercaseStringWithLocale:self->_locale];
      [array addObject:v15];
      if (variantsCopy)
      {
        v16 = [(ACTKeyboardLayoutUtils *)self baseKeyForString:v15];
        if (v16)
        {
          [array addObject:v16];
        }
      }
    }

    if (caseCopy)
    {
      v17 = [keyCopy characterAtIndex:0];
      lowercaseLetterCharacterSet = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
      LODWORD(v17) = [lowercaseLetterCharacterSet characterIsMember:v17];

      if (v17)
      {
        v19 = [keyCopy uppercaseStringWithLocale:self->_locale];
        [array addObject:v19];
        if (variantsCopy)
        {
          v20 = [(ACTKeyboardLayoutUtils *)self baseKeyForString:v19];
          if (v20)
          {
            [array addObject:v20];
          }
        }
      }
    }

    if (variantsCopy)
    {
      if ([keyCopy isEqualToString:@"ı"])
      {
        v21 = @"i";
      }

      else
      {
        if (![keyCopy isEqualToString:@"İ"])
        {
          goto LABEL_26;
        }

        v21 = @"I";
      }

      [array addObject:v21];
    }
  }

LABEL_26:

  return array;
}

- (id)baseKeyForString:(id)string
{
  decomposedStringWithCanonicalMapping = [string decomposedStringWithCanonicalMapping];
  if ([decomposedStringWithCanonicalMapping length] < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [decomposedStringWithCanonicalMapping substringToIndex:1];
  }

  return v4;
}

- (id)createTTKPlane:(id)plane
{
  planeCopy = plane;
  v5 = [[TTKKeyboardPlane alloc] initWithUIKBTree:planeCopy layoutUtils:self];

  return v5;
}

- (void)setLayoutKeyOverride:(id)override forKey:(id)key uiKeyboardStringNothing:(id)nothing
{
  overrideCopy = override;
  keyCopy = key;
  nothingCopy = nothing;
  if (overrideCopy)
  {
    v10 = [overrideCopy isEqualToString:nothingCopy];
    keyOverrides = self->_keyOverrides;
    if (v10)
    {
      [(NSMutableDictionary *)keyOverrides removeObjectForKey:keyCopy];
    }

    else
    {
      [(NSMutableDictionary *)keyOverrides setObject:overrideCopy forKey:keyCopy];
    }
  }
}

- (ACTKeyboardLayoutUtils)initWithLocale:(id)locale
{
  localeCopy = locale;
  v10.receiver = self;
  v10.super_class = ACTKeyboardLayoutUtils;
  v6 = [(ACTKeyboardLayoutUtils *)&v10 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keyOverrides = v6->_keyOverrides;
    v6->_keyOverrides = v7;

    objc_storeStrong(&v6->_locale, locale);
  }

  return v6;
}

@end