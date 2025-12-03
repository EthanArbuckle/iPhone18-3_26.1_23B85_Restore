@interface Romakana
+ ($9AC8AD2FEA0B9A5F24CD76D172BBF93B)splitRomaji:(id)romaji at:(unint64_t)at;
+ (id)hiraganaString:(id)string mappingArray:(id)array;
+ (id)kanaSymbol:(id)symbol;
+ (id)romajiString:(id)string;
- (id)adjustIncompleteRomaji:(id)romaji;
- (id)hiraganaFromRomaji:(id)romaji stripIncompleteRomajiAtEnd:(BOOL)end strippedLength:(unint64_t *)length;
@end

@implementation Romakana

+ (id)romajiString:(id)string
{
  v3 = MecabraReverseConvertedRomajiCreateFromKanaString();

  return v3;
}

+ (id)hiraganaString:(id)string mappingArray:(id)array
{
  arrayCopy = array;
  MecabraConvertedKanaCreateFromRomajiString();
  v5 = MecabraConvertedKanaGetKana();
  v6 = MecabraConvertedKanaGetAlignment();
  allKeys = [v6 allKeys];
  v21 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v22 = v5;
  if ([v5 length])
  {
    integerValue3 = 0;
    v20 = MEMORY[0x29EDCA5F8];
    do
    {
      v23[0] = v20;
      v23[1] = 3221225472;
      v23[2] = __40__Romakana_hiraganaString_mappingArray___block_invoke;
      v23[3] = &__block_descriptor_40_e35_B24__0__NSNumber_8__NSDictionary_16l;
      v23[4] = integerValue3;
      v9 = [MEMORY[0x29EDBA0A8] predicateWithBlock:v23];
      v10 = [v21 filteredArrayUsingPredicate:v9];
      firstObject = [v10 firstObject];

      v12 = [MEMORY[0x29EDBA070] numberWithInteger:integerValue3];
      v13 = [v6 objectForKeyedSubscript:v12];
      integerValue = [v13 integerValue];

      v15 = [v6 objectForKeyedSubscript:firstObject];
      integerValue2 = [v15 integerValue];

      v17 = [MEMORY[0x29EDBA070] numberWithInteger:integerValue2 - integerValue];
      [arrayCopy addObject:v17];

      for (i = integerValue3 + 1; i < [firstObject integerValue]; ++i)
      {
        [arrayCopy addObject:&unk_2A2529570];
      }

      integerValue3 = [firstObject integerValue];
    }

    while (integerValue3 < [v22 length]);
  }

  MecabraConvertedKanaRelease();

  return v22;
}

+ (id)kanaSymbol:(id)symbol
{
  symbolCopy = symbol;
  uTF8String = [symbolCopy UTF8String];
  v5 = [symbolCopy lengthOfBytesUsingEncoding:4];
  if (v5)
  {
    v6 = v5;
    v7 = "-";
    v8 = off_29F378C10;
    while (strncmp(uTF8String, v7, v6))
    {
      v9 = *v8;
      v8 += 2;
      v7 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v10 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:*(v8 - 1)];
  }

  else
  {
LABEL_5:
    v10 = symbolCopy;
  }

  v11 = v10;

  return v11;
}

+ ($9AC8AD2FEA0B9A5F24CD76D172BBF93B)splitRomaji:(id)romaji at:(unint64_t)at
{
  v62 = *MEMORY[0x29EDCA608];
  romajiCopy = romaji;
  v6 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
  v56 = romajiCopy;
  v7 = [Romakana hiraganaString:romajiCopy mappingArray:v6];
  v8 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v7, "length")}];
  v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:0];
  [v8 addObject:v9];

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v58;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v13 += [*(*(&v57 + 1) + 8 * i) intValue];
        v16 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v13];
        [v8 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v57 objects:v61 count:16];
    }

    while (v12);
  }

  if ([v8 count] > at)
  {
    v17 = [v8 objectAtIndexedSubscript:at];
    unsignedIntegerValue = [v17 unsignedIntegerValue];

    v19 = v56;
    if (!at)
    {
      goto LABEL_25;
    }

    if ([v8 count] > at + 1)
    {
      v20 = [v8 objectAtIndexedSubscript:at + 1];
      v21 = unsignedIntegerValue;
      unsignedIntValue = [v20 unsignedIntValue];
      v23 = [v8 objectAtIndexedSubscript:at];
      unsignedIntValue2 = [v23 unsignedIntValue];

      v25 = unsignedIntValue == unsignedIntValue2;
      unsignedIntegerValue = v21;
      v26 = at + 1;
      if (v25)
      {
        v27 = [v8 objectAtIndexedSubscript:at - 1];
        v54 = [v56 substringToIndex:{objc_msgSend(v27, "unsignedIntValue")}];

        v28 = [v7 substringWithRange:{at - 1, 1}];
        v29 = [Romakana romajiString:v28];

        v30 = [v7 substringWithRange:{at, 1}];
        v31 = [Romakana romajiString:v30];

        v32 = [v8 objectAtIndexedSubscript:v26];
        v33 = [v56 substringFromIndex:{objc_msgSend(v32, "unsignedIntValue")}];

        v34 = v54;
        v35 = [v54 stringByAppendingString:v29];
        v36 = [v31 stringByAppendingString:v33];

LABEL_17:
        goto LABEL_27;
      }
    }

    v37 = at - 1;
    v38 = [v7 substringWithRange:{at - 1, 1}];
    v39 = [v38 isEqualToString:@"ん"];

    if (v39)
    {
      v40 = [v8 objectAtIndexedSubscript:at - 1];
      v34 = [v56 substringToIndex:{objc_msgSend(v40, "unsignedIntValue")}];

      v41 = [v7 substringWithRange:{v37, 1}];
      v29 = [Romakana romajiString:v41];

      v36 = [v56 substringFromIndex:unsignedIntegerValue];
      v35 = [v34 stringByAppendingString:v29];
      goto LABEL_17;
    }

    v42 = [v7 substringWithRange:{at - 1, 1}];
    v43 = [v42 isEqualToString:@"っ"];

    if (v43)
    {
      v55 = unsignedIntegerValue;
      v35 = [MEMORY[0x29EDBA050] stringWithCapacity:unsignedIntegerValue];
      v44 = 0;
      do
      {
        v45 = [v7 substringWithRange:{v44, 1}];
        v46 = [Romakana romajiString:v45];
        v47 = v46;
        if (v46)
        {
          v48 = v46;
        }

        else
        {
          v48 = v45;
        }

        [v35 appendString:v48];

        ++v44;
      }

      while (at != v44);
      v49 = v56;
      v50 = v55;
    }

    else
    {
LABEL_25:
      v35 = [v56 substringToIndex:unsignedIntegerValue];
      v49 = v56;
      v50 = unsignedIntegerValue;
    }

    v36 = [v49 substringFromIndex:v50];
    goto LABEL_27;
  }

  v19 = v56;
  v35 = v56;
  v36 = 0;
LABEL_27:

  v51 = *MEMORY[0x29EDCA608];
  v52 = v35;
  v53 = v36;
  result.var1 = v53;
  result.var0 = v52;
  return result;
}

- (id)hiraganaFromRomaji:(id)romaji stripIncompleteRomajiAtEnd:(BOOL)end strippedLength:(unint64_t *)length
{
  endCopy = end;
  romajiCopy = romaji;
  MecabraConvertedKanaCreateFromRomajiString();
  v8 = [MecabraConvertedKanaGetKana() mutableCopy];
  v9 = MecabraConvertedKanaGetAlignment();
  v10 = [v8 length];
  v11 = v10 - 1;
  if (v10 - 1 < 0)
  {
    v12 = 0;
    if (length)
    {
LABEL_7:
      *length = v12;
    }
  }

  else
  {
    v21 = v10;
    v22 = endCopy;
    v12 = 0;
    while (1)
    {
      v13 = [v8 characterAtIndex:{v11, v21}];
      alphabetCharacterSet = [MEMORY[0x29EDB9F50] alphabetCharacterSet];
      LODWORD(v13) = [alphabetCharacterSet characterIsMember:v13];

      if (!v13)
      {
        break;
      }

      v15 = [MEMORY[0x29EDBA070] numberWithInteger:v11];
      v16 = [v9 objectForKey:v15];
      v17 = [romajiCopy substringWithRange:{objc_msgSend(v16, "integerValue"), 1}];

      [v8 replaceCharactersInRange:v11 withString:{1, v17}];
      ++v12;

      if (--v11 == -1)
      {
        v12 = v21;
        break;
      }
    }

    endCopy = v22;
    if (length)
    {
      goto LABEL_7;
    }
  }

  MecabraConvertedKanaRelease();
  if (endCopy)
  {
    v18 = [v8 substringToIndex:{objc_msgSend(v8, "length") - v12}];
  }

  else
  {
    v18 = v8;
  }

  v19 = v18;

  return v19;
}

- (id)adjustIncompleteRomaji:(id)romaji
{
  romajiCopy = romaji;
  v16 = 0;
  v5 = [(Romakana *)self hiraganaFromRomaji:romajiCopy stripIncompleteRomajiAtEnd:0 strippedLength:&v16];
  v6 = v5;
  if (v16 == 1)
  {
    v7 = [v5 length];
    v8 = [v6 substringFromIndex:v7 - v16];
    if ([v8 isEqualToString:@"n"])
    {
      v9 = [romajiCopy stringByAppendingString:@"n"];
    }

    else
    {
      consonantsCharacterSet = self->_consonantsCharacterSet;
      if (!consonantsCharacterSet)
      {
        v11 = [MEMORY[0x29EDB9F50] characterSetWithCharactersInString:@"bcdfghjklmpqrstvwxyz"];
        v12 = self->_consonantsCharacterSet;
        self->_consonantsCharacterSet = v11;

        consonantsCharacterSet = self->_consonantsCharacterSet;
      }

      [v8 rangeOfCharacterFromSet:consonantsCharacterSet];
      if (!v13)
      {
        goto LABEL_9;
      }

      v9 = [romajiCopy stringByReplacingCharactersInRange:objc_msgSend(romajiCopy withString:{"length") - 1, 1, @"xtu"}];
    }

    v14 = v9;

    romajiCopy = v14;
LABEL_9:
  }

  return romajiCopy;
}

@end