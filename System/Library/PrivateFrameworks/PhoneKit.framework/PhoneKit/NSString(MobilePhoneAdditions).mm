@interface NSString(MobilePhoneAdditions)
- (__CFString)_encodedDialerStringSkippingUnmappedCharacters:()MobilePhoneAdditions;
- (__CFString)processNumberInLatin:()MobilePhoneAdditions;
- (id)_indexSetToHighlightDigitsInText:()MobilePhoneAdditions;
- (id)_stringForLastFourDigitMatch;
- (id)attributedStringToHighlightText:()MobilePhoneAdditions;
- (id)attributedStringToHighlightText:()MobilePhoneAdditions primaryColour:secondaryColour:style:;
- (id)attributedStringToHighlightText:()MobilePhoneAdditions style:;
- (id)featureFlags;
- (id)indexSetToHighlightDigitsInText:()MobilePhoneAdditions allowMatchingLastFour:;
- (uint64_t)rangeToHighlightText:()MobilePhoneAdditions;
@end

@implementation NSString(MobilePhoneAdditions)

- (id)featureFlags
{
  v2 = objc_getAssociatedObject(self, @"_featureFlags");
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x277D6EED8]);
    objc_setAssociatedObject(self, @"_featureFlags", v2, 0x301);
  }

  return v2;
}

- (__CFString)_encodedDialerStringSkippingUnmappedCharacters:()MobilePhoneAdditions
{
  v5 = objc_alloc_init(MEMORY[0x277D6EED8]);
  smartDialerLocalizationEnabled = [v5 smartDialerLocalizationEnabled];

  if (smartDialerLocalizationEnabled)
  {
    v7 = [(__CFString *)self copy];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v9 = TINumberPadGetEncodedStringAllowingUnmappedCharacters();

    goto LABEL_69;
  }

  Length = CFStringGetLength(self);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  *buffer = 0u;
  v39 = 0u;
  selfCopy = self;
  v49 = 0;
  v50 = Length;
  CharactersPtr = CFStringGetCharactersPtr(self);
  CStringPtr = 0;
  v47 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(self, 0x600u);
  }

  v48 = CStringPtr;
  v51 = 0;
  v52 = 0;
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (Length >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 64;
    do
    {
      if (v15 >= 4)
      {
        v17 = 4;
      }

      else
      {
        v17 = v15;
      }

      v18 = v50;
      if (v50 <= v15)
      {
        v20 = 0;
      }

      else
      {
        if (v47)
        {
          v19 = &v47[v49];
        }

        else
        {
          if (v48)
          {
            v20 = v48[v49 + v15];
            goto LABEL_15;
          }

          v29 = v51;
          v30 = v52 > v15 && v51 <= v15;
          if (!v30)
          {
            v31 = -v17;
            v32 = v17 + v14;
            v33 = v16 - v17;
            v34 = v15 + v31;
            v35 = v34 + 64;
            if (v34 + 64 >= v50)
            {
              v35 = v50;
            }

            v51 = v34;
            v52 = v35;
            if (v50 >= v33)
            {
              v18 = v33;
            }

            v54.location = v34 + v49;
            v54.length = v18 + v32;
            CFStringGetCharacters(selfCopy, v54, buffer);
            v29 = v51;
          }

          v19 = &buffer[-v29];
        }

        v20 = v19[v15];
      }

LABEL_15:
      chars = v20;
      NumericValue = u_getNumericValue(v20);
      if (NumericValue <= 9.0 && ((v22 = ceil(NumericValue), NumericValue >= 0.0) ? (v23 = NumericValue == v22) : (v23 = 0), v23))
      {
        v24 = NumericValue + 48;
        chars = NumericValue + 48;
      }

      else
      {
        LOWORD(v24) = chars;
      }

      v25 = v24;
      if ((v24 - 65) <= 0x19u)
      {
        v24 = v24 - 65;
LABEL_34:
        LOWORD(v24) = _LetterNumberMap[v24] + 48;
        goto LABEL_35;
      }

      if ((v24 - 97) <= 0x19u)
      {
        v24 = v24 - 97;
        goto LABEL_34;
      }

      if ((v24 + 223) <= 0x19u)
      {
        v26 = -65313;
LABEL_33:
        v24 = v25 + v26;
        goto LABEL_34;
      }

      if ((v24 + 191) <= 0x19u)
      {
        v26 = -65345;
        goto LABEL_33;
      }

      if ((v24 + 240) > 9u)
      {
        if (v24 <= 0xFF0Au)
        {
          if (v24 == 65283)
          {
            LOWORD(v24) = 35;
          }

          else
          {
            if (v24 != 65290)
            {
              goto LABEL_36;
            }

            LOWORD(v24) = 42;
          }
        }

        else
        {
          switch(v24)
          {
            case 0xFF0Bu:
              LOWORD(v24) = 43;
              break;
            case 0xFF1Bu:
              LOWORD(v24) = 59;
              break;
            case 0xFF0Cu:
              LOWORD(v24) = 44;
              break;
            default:
              goto LABEL_36;
          }
        }
      }

      else
      {
        LOWORD(v24) = v24 + 288;
      }

LABEL_35:
      chars = v24;
LABEL_36:
      if (!a3 || (v24 - 48) < 0xAu || ((v30 = v24 > 0x3Bu, v27 = (1 << v24) & 0x8001C0800000000, !v30) ? (v28 = v27 == 0) : (v28 = 1), !v28))
      {
        CFStringAppendCharacters(Mutable, &chars, 1);
      }

      ++v15;
      --v14;
      ++v16;
    }

    while (Length != v15);
  }

  v9 = Mutable;
  CFRelease(v9);
LABEL_69:

  return v9;
}

- (__CFString)processNumberInLatin:()MobilePhoneAdditions
{
  Length = CFStringGetLength(self);
  selfCopy = self;
  v40 = 0;
  v41 = Length;
  CharactersPtr = CFStringGetCharactersPtr(self);
  CStringPtr = 0;
  v38 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(self, 0x600u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  *buffer = 0u;
  v30 = 0u;
  v39 = CStringPtr;
  v42 = 0;
  v43 = 0;
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  if (Length >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 64;
    do
    {
      if (v10 >= 4)
      {
        v12 = 4;
      }

      else
      {
        v12 = v10;
      }

      v13 = v41;
      if (v41 <= v10)
      {
        v15 = 0;
      }

      else
      {
        if (v38)
        {
          v14 = &v38[v40];
LABEL_11:
          v15 = v14[v10];
          goto LABEL_13;
        }

        if (!v39)
        {
          v19 = v42;
          if (v43 <= v10 || v42 > v10)
          {
            v21 = -v12;
            v22 = v12 + v9;
            v23 = v11 - v12;
            v24 = v10 + v21;
            v25 = v24 + 64;
            if (v24 + 64 >= v41)
            {
              v25 = v41;
            }

            v42 = v24;
            v43 = v25;
            if (v41 >= v23)
            {
              v13 = v23;
            }

            v45.location = v24 + v40;
            v45.length = v13 + v22;
            CFStringGetCharacters(selfCopy, v45, buffer);
            v19 = v42;
          }

          v14 = &buffer[-v19];
          goto LABEL_11;
        }

        v15 = v39[v40 + v10];
      }

LABEL_13:
      chars = v15;
      NumericValue = u_getNumericValue(v15);
      if (NumericValue <= 9.0)
      {
        v17 = ceil(NumericValue);
        if (NumericValue >= 0.0 && NumericValue == v17)
        {
          if (a3)
          {
            chars = NumericValue + 48;
          }

          CFStringAppendCharacters(Mutable, &chars, 1);
        }
      }

      ++v10;
      --v9;
      ++v11;
    }

    while (Length != v10);
  }

  v26 = Mutable;
  CFRelease(v26);

  return v26;
}

- (id)attributedStringToHighlightText:()MobilePhoneAdditions
{
  v4 = MEMORY[0x277D75348];
  v5 = a3;
  secondaryLabelColor = [v4 secondaryLabelColor];
  labelColor = [MEMORY[0x277D75348] labelColor];
  v8 = [self attributedStringToHighlightText:v5 primaryColour:secondaryLabelColor secondaryColour:labelColor];

  return v8;
}

- (id)attributedStringToHighlightText:()MobilePhoneAdditions style:
{
  v6 = MEMORY[0x277D75348];
  v7 = a3;
  secondaryLabelColor = [v6 secondaryLabelColor];
  labelColor = [MEMORY[0x277D75348] labelColor];
  v10 = [self attributedStringToHighlightText:v7 primaryColour:secondaryLabelColor secondaryColour:labelColor style:a4];

  return v10;
}

- (id)attributedStringToHighlightText:()MobilePhoneAdditions primaryColour:secondaryColour:style:
{
  v45 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:self];
  if ([self length])
  {
    v14 = [self length];
    v15 = *MEMORY[0x277D740C0];
    [v13 addAttribute:*MEMORY[0x277D740C0] value:v11 range:{0, v14}];
    selfCopy = self;
    v17 = v10;
    v18 = a6 - 1;
    if (a6 == 1)
    {
      v34 = v12;
      v35 = v11;
      v36 = v10;
      v19 = [selfCopy componentsSeparatedByString:@" "];
      v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v21 = v19;
      v22 = [v21 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v41;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v41 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v40 + 1) + 8 * i) _encodedDialerStringSkippingUnmappedCharacters:0];
            [v20 addObject:v26];
          }

          v23 = [v21 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v23);
      }

      v27 = [v20 componentsJoinedByString:@" "];

      unformattedNumberInLatin = [v17 unformattedNumberInLatin];

      v17 = unformattedNumberInLatin;
      selfCopy = v27;
      v11 = v35;
      v10 = v36;
      a6 = 1;
      v12 = v34;
      v18 = 0;
    }

    v29 = [selfCopy rangeToHighlightText:v17];
    if (v30)
    {
      [v13 addAttribute:v15 value:v12 range:{v29, v30}];
    }

    else if (v18 < 2 || [v17 isNumeric] && objc_msgSend(selfCopy, "isNumeric"))
    {
      v31 = [selfCopy indexSetToHighlightDigitsInText:v17 allowMatchingLastFour:a6 == 2];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __102__NSString_MobilePhoneAdditions__attributedStringToHighlightText_primaryColour_secondaryColour_style___block_invoke;
      v37[3] = &unk_279A228A0;
      v38 = v13;
      v39 = v12;
      [v31 enumerateRangesUsingBlock:v37];
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  return v13;
}

- (uint64_t)rangeToHighlightText:()MobilePhoneAdditions
{
  v4 = a3;
  if ([self length])
  {
    sanitizedString = [self sanitizedString];
    stringByRemovingDiatrics = [sanitizedString stringByRemovingDiatrics];

    sanitizedString2 = [v4 sanitizedString];
    stringByRemovingDiatrics2 = [sanitizedString2 stringByRemovingDiatrics];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCAC68] escapedPatternForString:stringByRemovingDiatrics2];
    v11 = [v9 stringWithFormat:@"(?:(?<![^\\W_])|(?=[\\W_]))%@", v10];

    if ([v4 length])
    {
      v12 = [stringByRemovingDiatrics rangeOfString:v11 options:1025];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)indexSetToHighlightDigitsInText:()MobilePhoneAdditions allowMatchingLastFour:
{
  v6 = a3;
  v7 = [self _indexSetToHighlightDigitsInText:v6];
  if (!v7 && a4)
  {
    featureFlags = [self featureFlags];
    smartDialerLastFourDigitsSearchEnabled = [featureFlags smartDialerLastFourDigitsSearchEnabled];

    if (smartDialerLastFourDigitsSearchEnabled)
    {
      _stringForLastFourDigitMatch = [self _stringForLastFourDigitMatch];
      v11 = [_stringForLastFourDigitMatch _indexSetToHighlightDigitsInText:v6];
      v12 = [v11 mutableCopy];

      [v12 shiftIndexesStartingAtIndex:0 by:-1];
      v7 = [v12 copy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_indexSetToHighlightDigitsInText:()MobilePhoneAdditions
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  theString = self;
  v55 = 0;
  Length = CFStringGetLength(self);
  CharactersPtr = CFStringGetCharactersPtr(self);
  CStringPtr = 0;
  v53 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(self, 0x600u);
  }

  v57 = 0;
  v58 = 0;
  v54 = CStringPtr;
  unformattedNumber = [v4 unformattedNumber];
  v9 = CFStringGetLength(unformattedNumber);
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v37 = unformattedNumber;
  v40 = 0;
  v41 = v9;
  v10 = CFStringGetCharactersPtr(unformattedNumber);
  v11 = 0;
  v38 = v10;
  if (!v10)
  {
    v11 = CFStringGetCStringPtr(unformattedNumber, 0x600u);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  *buffer = 0u;
  v45 = 0u;
  v42 = 0;
  v43 = 0;
  v39 = v11;
  if ([(__CFString *)self length:v29])
  {
    v12 = 0;
    for (i = 0; i < [(__CFString *)self length]; ++i)
    {
      if (i < 0 || (v14 = Length, Length <= i))
      {
        v15 = 0;
      }

      else if (v53)
      {
        v15 = v53[v55 + i];
      }

      else if (v54)
      {
        v15 = v54[v55 + i];
      }

      else
      {
        if (v58 <= i || (v23 = v57, v57 > i))
        {
          v24 = i - 4;
          if (i < 4)
          {
            v24 = 0;
          }

          if (v24 + 64 < Length)
          {
            v14 = v24 + 64;
          }

          v57 = v24;
          v58 = v14;
          v60.length = v14 - v24;
          v60.location = v55 + v24;
          CFStringGetCharacters(theString, v60, buffer);
          v23 = v57;
        }

        v15 = buffer[i - v23];
      }

      NumericValue = u_getNumericValue(v15);
      if (NumericValue <= 9.0 && ((v17 = ceil(NumericValue), NumericValue >= 0.0) ? (v18 = NumericValue == v17) : (v18 = 0), v18))
      {
        v19 = [v5 count];
        v20 = v19;
        if (v19 < 0 || (v21 = v41, v41 <= v19))
        {
          v22 = 0;
        }

        else if (v38)
        {
          v22 = v38[v40 + v19];
        }

        else if (v39)
        {
          v22 = v39[v40 + v19];
        }

        else
        {
          if (v43 <= v19 || (v25 = v42, v42 > v19))
          {
            v26 = v19 - 4;
            if (v19 < 4)
            {
              v26 = 0;
            }

            if (v26 + 64 < v41)
            {
              v21 = v26 + 64;
            }

            v42 = v26;
            v43 = v21;
            v61.length = v21 - v26;
            v61.location = v40 + v26;
            CFStringGetCharacters(v37, v61, &v29);
            v25 = v42;
          }

          v22 = *(&v29 + v20 - v25);
        }

        if (v15 == v22)
        {
          if (((v20 == 0) & v12) == 0)
          {
            [v5 addIndex:i];
            if ([v5 count] == v9)
            {
              v28 = [v5 copy];
              goto LABEL_54;
            }
          }

LABEL_30:
          v12 = 1;
          continue;
        }

        if (!v20)
        {
          goto LABEL_30;
        }

        i = [v5 firstIndex];
        [v5 removeAllIndexes];
      }

      else
      {
        v12 = 0;
      }
    }
  }

  v28 = 0;
LABEL_54:

  return v28;
}

- (id)_stringForLastFourDigitMatch
{
  theString = self;
  v20 = 0;
  Length = CFStringGetLength(self);
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v18 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(self, 0x600u);
  }

  v22 = 0;
  v23 = 0;
  v19 = CStringPtr;
  v4 = [(__CFString *)self length:0];
  v5 = 0;
  while (1)
  {
    v6 = v4--;
    if (v4 < 0)
    {
      break;
    }

    v7 = Length;
    if (Length <= v4)
    {
      v8 = 0;
    }

    else if (v18)
    {
      v8 = v18[v20 - 1 + v6];
    }

    else if (v19)
    {
      v8 = v19[v20 - 1 + v6];
    }

    else
    {
      if (v23 <= v4 || (v11 = v22, v22 > v4))
      {
        v12 = v6 - 5;
        if (v4 < 4)
        {
          v12 = 0;
        }

        if (v12 + 64 < Length)
        {
          v7 = v12 + 64;
        }

        v22 = v12;
        v23 = v7;
        v25.length = v7 - v12;
        v25.location = v20 + v12;
        CFStringGetCharacters(theString, v25, &v16);
        v11 = v22;
      }

      v8 = *(&v16 + v6 - v11 - 1);
    }

    NumericValue = u_getNumericValue(v8);
    LODWORD(v10) = NumericValue >= 0.0;
    if (NumericValue != ceil(NumericValue))
    {
      LODWORD(v10) = 0;
    }

    if (NumericValue <= 9.0)
    {
      v10 = v10;
    }

    else
    {
      v10 = 0;
    }

    v5 += v10;
    if (v5 == 4)
    {
      v13 = [(__CFString *)self mutableCopy];
      [v13 insertString:@" " atIndex:v4];
      goto LABEL_27;
    }
  }

  v13 = [(__CFString *)self mutableCopy];
LABEL_27:
  v14 = [v13 copy];

  return v14;
}

@end