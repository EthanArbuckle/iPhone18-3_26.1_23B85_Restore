@interface NSMutableAttributedString(MutableAttributedStringSRCSTextEditing)
+ (uint64_t)_SRCSCharacterIsScriptWithoutSpacing:()MutableAttributedStringSRCSTextEditing;
+ (uint64_t)_SRCSCharacterType:()MutableAttributedStringSRCSTextEditing;
- (uint64_t)_SRCSLeadingCharInString:()MutableAttributedStringSRCSTextEditing;
- (uint64_t)_SRCSShouldAddSpaceForLeadingText:()MutableAttributedStringSRCSTextEditing localeIdentifier:;
- (uint64_t)_SRCSTrailingCharInString:()MutableAttributedStringSRCSTextEditing;
- (void)_SRCSPreserveCasingOfPrefixCustomVocabularies:()MutableAttributedStringSRCSTextEditing startsWithMustPreserveCaseCustomVocabulary:startsWithAutoCaseCustomVocabulary:;
- (void)adjustCapsAndSpacingUsingLeadingText:()MutableAttributedStringSRCSTextEditing localeIdentifier:vocabularyEntries:spellingGuessesBlock:;
- (void)adjustCapsAndSpacingUsingLeadingText:()MutableAttributedStringSRCSTextEditing preITNTokens:customVocabularies:localeIdentifier:;
@end

@implementation NSMutableAttributedString(MutableAttributedStringSRCSTextEditing)

- (void)adjustCapsAndSpacingUsingLeadingText:()MutableAttributedStringSRCSTextEditing localeIdentifier:vocabularyEntries:spellingGuessesBlock:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![a1 length])
  {
    goto LABEL_37;
  }

  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  if ([v10 length] && objc_msgSend(v10, "characterAtIndex:", objc_msgSend(v10, "length") - 1) == 46)
  {
    *(v65 + 24) = 1;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CCAAE8]);
    v15 = *MEMORY[0x277CCA3F8];
    v16 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CCA3F8]];
    v17 = [v14 initWithTagSchemes:v16 options:0];

    if (v10)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [a1 string];
      v20 = [v18 stringWithFormat:@"%@%@", v10, v19];
    }

    else
    {
      v20 = [a1 string];
    }

    v21 = [v10 length];
    v22 = [a1 length];
    [v17 setString:v20];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __162__NSMutableAttributedString_MutableAttributedStringSRCSTextEditing__adjustCapsAndSpacingUsingLeadingText_localeIdentifier_vocabularyEntries_spellingGuessesBlock___block_invoke;
    v59[3] = &unk_279CF54E0;
    v62 = v21;
    v63 = v22;
    v61 = &v64;
    v23 = v20;
    v60 = v23;
    [v17 enumerateTagsInRange:v21 scheme:v22 options:v15 usingBlock:{0, v59}];
  }

  v58 = 0;
  [a1 _SRCSPreserveCasingOfPrefixCustomVocabularies:v12 startsWithMustPreserveCaseCustomVocabulary:&v58 + 1 startsWithAutoCaseCustomVocabulary:&v58];
  if ((v58 & 0x100) == 0 && (v65[3] & 1) == 0)
  {
    v24 = [a1 string];
    v25 = [v24 substringToIndex:1];
    v26 = [v25 lowercaseString];
    v27 = [a1 string];
    v28 = [v27 substringFromIndex:1];
    v57 = [v26 stringByAppendingString:v28];

    v29 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v30 = [v57 rangeOfCharacterFromSet:v29];
    v32 = v31;

    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = [v57 length];
      v33 = 0;
      goto LABEL_22;
    }

    v33 = 0;
    if (v30 == 1 && v32 == 1)
    {
      v34 = [a1 string];
      v35 = [v34 substringToIndex:1];
      if ([v35 isEqualToString:{@", "}])
      {
      }

      else
      {
        v36 = [a1 string];
        v37 = [v36 substringToIndex:1];
        v54 = [v37 isEqualToString:@";"];

        if (!v54)
        {
          v33 = 0;
          v30 = 1;
          goto LABEL_22;
        }
      }

      v38 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v39 = [v57 rangeOfCharacterFromSet:v38 options:0 range:{2, objc_msgSend(v57, "length") - 2}];

      if (v39 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v39 = [v57 length];
      }

      v55 = [a1 string];
      v52 = [v55 substringToIndex:3];
      v40 = [v52 lowercaseString];
      v41 = [a1 string];
      v42 = [v41 substringFromIndex:3];
      v43 = [v40 stringByAppendingString:v42];
      v30 = v39 - 2;

      v33 = 2;
      v57 = v43;
    }

LABEL_22:
    v44 = [a1 string];
    v45 = [v44 substringWithRange:{v33, v30}];
    v56 = v33;

    v46 = [v45 uppercaseString];
    v47 = [v45 lowercaseString];
    if (([v47 isEqualToString:v46] & 1) == 0)
    {
      if (![v45 isEqualToString:v46])
      {

LABEL_28:
        v47 = v13[2](v13, v56, v30, v57, v11);
        if (![v47 count] || !objc_msgSend(v47, "containsObject:", v45) || v58 == 1)
        {
          v53 = [a1 string];
          v49 = [v53 substringWithRange:{v56, 1}];
          v50 = [v49 lowercaseString];
          [a1 replaceCharactersInRange:v56 withString:{1, v50}];
        }

        goto LABEL_32;
      }

      if ([a1 length] >= 2)
      {
        v48 = [v45 isEqualToString:@"A"];

        if ((v48 & 1) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }
    }

LABEL_32:

LABEL_33:
  }

  if ([a1 _SRCSShouldAddSpaceForLeadingText:v10 localeIdentifier:v11])
  {
    v51 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
    [a1 insertAttributedString:v51 atIndex:0];
  }

  _Block_object_dispose(&v64, 8);
LABEL_37:
}

- (uint64_t)_SRCSShouldAddSpaceForLeadingText:()MutableAttributedStringSRCSTextEditing localeIdentifier:
{
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    goto LABEL_11;
  }

  v8 = [a1 string];
  v9 = [v8 length];

  if (!v9)
  {
    goto LABEL_11;
  }

  if ([v7 isEqualToString:@"fr_FR"])
  {
    v10 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@":!?«»"];;
    v11 = [a1 string];
    v12 = [v10 characterIsMember:{objc_msgSend(v11, "characterAtIndex:", 0)}];
  }

  else
  {
    v12 = 0;
  }

  v13 = [a1 _SRCSTrailingCharInString:v6];
  v14 = [a1 string];
  v15 = [a1 _SRCSLeadingCharInString:v14];

  if (v13 && v15 && ![SRCSSmartReplace isCharacterSmartReplaceExempt:v13 isPreviousCharacter:1]&& v12 & 1 | ![SRCSSmartReplace isCharacterSmartReplaceExempt:v15 isPreviousCharacter:0])
  {
    v16 = 1;
  }

  else
  {
LABEL_11:
    v16 = 0;
  }

  return v16;
}

- (uint64_t)_SRCSLeadingCharInString:()MutableAttributedStringSRCSTextEditing
{
  v3 = a3;
  if ([v3 length])
  {
    if ([v3 length] == 1 || (v4 = objc_msgSend(v3, "characterAtIndex:", 1), v4 >> 10 != 54) || (v5 = v4, objc_msgSend(v3, "length") < 2))
    {
      v6 = [v3 characterAtIndex:0];
    }

    else
    {
      v6 = [v3 characterAtIndex:0] + (v5 << 10) + 9216;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)_SRCSTrailingCharInString:()MutableAttributedStringSRCSTextEditing
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 characterAtIndex:{objc_msgSend(v3, "length") - 1}];
    if (v4 >> 10 == 54 && [v3 length] >= 2)
    {
      LOWORD(v4) = [v3 characterAtIndex:{objc_msgSend(v3, "length") - 2}] + (v4 << 10) + 9216;
    }
  }

  else
  {
    LOWORD(v4) = 0;
  }

  return v4;
}

+ (uint64_t)_SRCSCharacterIsScriptWithoutSpacing:()MutableAttributedStringSRCSTextEditing
{
  v31[13] = *MEMORY[0x277D85DE8];
  v25 = [MEMORY[0x277CCA900] characterSetWithRange:{19968, 20992}];
  v31[0] = v25;
  v24 = [MEMORY[0x277CCA900] characterSetWithRange:{13312, 6592}];
  v31[1] = v24;
  v23 = [MEMORY[0x277CCA900] characterSetWithRange:{0x20000, 42720}];
  v31[2] = v23;
  v22 = [MEMORY[0x277CCA900] characterSetWithRange:{173824, 4160}];
  v31[3] = v22;
  v21 = [MEMORY[0x277CCA900] characterSetWithRange:{177984, 224}];
  v31[4] = v21;
  v4 = [MEMORY[0x277CCA900] characterSetWithRange:{178208, 5776}];
  v31[5] = v4;
  v5 = [MEMORY[0x277CCA900] characterSetWithRange:{183984, 7488}];
  v31[6] = v5;
  v6 = [MEMORY[0x277CCA900] characterSetWithRange:{196608, 4944}];
  v31[7] = v6;
  v7 = [MEMORY[0x277CCA900] characterSetWithRange:{201552, 4192}];
  v31[8] = v7;
  v8 = [MEMORY[0x277CCA900] characterSetWithRange:{63744, 512}];
  v31[9] = v8;
  v9 = [MEMORY[0x277CCA900] characterSetWithRange:{194560, 544}];
  v31[10] = v9;
  v10 = [MEMORY[0x277CCA900] characterSetWithRange:{12352, 96}];
  v31[11] = v10;
  v11 = [MEMORY[0x277CCA900] characterSetWithRange:{12448, 96}];
  v31[12] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:13];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if ([*(*(&v26 + 1) + 8 * v17) characterIsMember:a3])
        {
          v18 = 1;
          goto LABEL_11;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (uint64_t)_SRCSCharacterType:()MutableAttributedStringSRCSTextEditing
{
  v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v5 = [v4 characterIsMember:a3];

  if (v5)
  {
    return 0;
  }

  if ([MEMORY[0x277CCAB48] _SRCSCharacterIsScriptWithoutSpacing:a3])
  {
    return 2;
  }

  v7 = [MEMORY[0x277CCA900] punctuationCharacterSet];
  if ([v7 characterIsMember:a3])
  {
  }

  else
  {
    v8 = [MEMORY[0x277CCA900] symbolCharacterSet];
    v9 = [v8 characterIsMember:a3];

    if (!v9)
    {
      return 1;
    }
  }

  v10 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"-/'"];
  if ([v10 characterIsMember:a3])
  {
    v6 = 3;
  }

  else
    v11 = {;
    if ([v11 characterIsMember:a3])
    {
      v6 = 4;
    }

    else
    {
      v12 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"]., :?!%}…"}]);;
      if ([v12 characterIsMember:a3])
      {
        v6 = 5;
      }

      else
      {
        v13 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:&stru_287C0A5E8];
        if ([v13 characterIsMember:a3])
        {
          v6 = 6;
        }

        else
        {
          v14 = [MEMORY[0x277CCA900] punctuationCharacterSet];
          v15 = [v14 characterIsMember:a3];

          if (v15)
          {
            v6 = 5;
          }

          else
          {
            v6 = 3;
          }
        }
      }
    }
  }

  return v6;
}

- (void)_SRCSPreserveCasingOfPrefixCustomVocabularies:()MutableAttributedStringSRCSTextEditing startsWithMustPreserveCaseCustomVocabulary:startsWithAutoCaseCustomVocabulary:
{
  v37 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = a3;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  v10 = v8;
  if (v9)
  {
    v11 = v9;
    v30 = a4;
    v31 = a5;
    v12 = *v33;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [a1 string];
        v16 = [v15 lowercaseString];
        v17 = [v14 lowercaseString];
        v18 = [v16 hasPrefix:v17];

        if (v18)
        {
          v19 = [a1 string];
          v20 = [v19 length];
          v21 = [v14 length];

          if (v20 <= v21)
          {
            goto LABEL_12;
          }

          v22 = [a1 string];
          v23 = [v22 characterAtIndex:{objc_msgSend(v14, "length")}];

          v24 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
          v25 = [MEMORY[0x277CCA900] punctuationCharacterSet];
          [v24 formUnionWithCharacterSet:v25];

          LODWORD(v23) = [v24 characterIsMember:v23];
          if (v23)
          {
LABEL_12:
            v26 = [MEMORY[0x277CCAB50] lowercaseLetterCharacterSet];
            [v26 addCharactersInString:@"-' "];
            v27 = [v26 invertedSet];
            v28 = [v14 rangeOfCharacterFromSet:v27];

            if (v28 == 0x7FFFFFFFFFFFFFFFLL)
            {
              if (v31)
              {
                *v31 = 1;
              }

              v10 = v14;
            }

            else
            {
              if (v30)
              {
                *v30 = 1;
              }

              v10 = v14;

              [a1 replaceCharactersInRange:0 withString:{objc_msgSend(v10, "length"), v10}];
            }

            goto LABEL_19;
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v10 = v8;
  }

LABEL_19:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)adjustCapsAndSpacingUsingLeadingText:()MutableAttributedStringSRCSTextEditing preITNTokens:customVocabularies:localeIdentifier:
{
  v10 = a3;
  v11 = a4;
  v47 = a5;
  v12 = a6;
  if (![a1 length])
  {
    goto LABEL_38;
  }

  v13 = [a1 string];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  if ([v10 length] && objc_msgSend(v10, "characterAtIndex:", objc_msgSend(v10, "length") - 1) == 46)
  {
    *(v54 + 24) = 1;
  }

  else
  {
    v14 = objc_alloc(MEMORY[0x277CCAAE8]);
    v15 = *MEMORY[0x277CCA3F8];
    v16 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277CCA3F8]];
    v17 = [v14 initWithTagSchemes:v16 options:0];

    if (v10)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [a1 string];
      v20 = [v18 stringWithFormat:@"%@%@", v10, v19];
    }

    else
    {
      v20 = [a1 string];
    }

    v21 = [v10 length];
    v22 = [a1 length];
    [v17 setString:v20];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __155__NSMutableAttributedString_MutableAttributedStringSRCSTextEditing__adjustCapsAndSpacingUsingLeadingText_preITNTokens_customVocabularies_localeIdentifier___block_invoke;
    v48[3] = &unk_279CF54E0;
    v51 = v21;
    v52 = v22;
    v50 = &v53;
    v23 = v20;
    v49 = v23;
    [v17 enumerateTagsInRange:v21 scheme:v22 options:v15 usingBlock:{0, v48}];
  }

  v24 = [v11 firstObject];
  v25 = [v24 length];

  if (v25)
  {
    v26 = [MEMORY[0x277CCA900] lowercaseLetterCharacterSet];
    v27 = [v11 firstObject];
    v28 = [v26 characterIsMember:{objc_msgSend(v27, "characterAtIndex:", 0)}];

    v29 = v28 ^ 1;
  }

  else
  {
    v29 = 1;
  }

  if (![v10 length] || ((v30 = objc_msgSend(v10, "characterAtIndex:", objc_msgSend(v10, "length") - 1), v31 = objc_msgSend(v12, "hasPrefix:", @"en"), v30 == 39) ? (v32 = v31) : (v32 = 0), v32 != 1))
  {
LABEL_25:
    if ((*(v54 + 24) | v29))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v33 = [v13 lowercaseString];
  if (([v33 isEqualToString:@"t"] & 1) == 0 && (objc_msgSend(v33, "isEqualToString:", @"re") & 1) == 0 && (objc_msgSend(v33, "isEqualToString:", @"d") & 1) == 0 && (objc_msgSend(v33, "isEqualToString:", @"ll") & 1) == 0 && (objc_msgSend(v33, "isEqualToString:", @"s") & 1) == 0 && !objc_msgSend(v33, "isEqualToString:", @"m"))
  {

    goto LABEL_25;
  }

LABEL_26:
  v34 = [v13 substringWithRange:{0, 1}];
  v35 = [v34 lowercaseString];
  [a1 replaceCharactersInRange:0 withString:{1, v35}];

LABEL_27:
  if ([v13 length] >= 3)
  {
    v36 = [v13 characterAtIndex:0];
    v37 = [v13 characterAtIndex:1];
    v38 = v36 == 59 || v36 == 44;
    if (v38 && v37 == 32)
    {
      v39 = [a1 attributedSubstringFromRange:{2, objc_msgSend(v13, "length") - 2}];
      v40 = [v39 mutableCopy];

      v41 = [v13 substringToIndex:2];
      v42 = [v10 stringByAppendingString:v41];
      v43 = [v11 subarrayWithRange:{1, objc_msgSend(v11, "count") - 1}];
      [v40 adjustCapsAndSpacingUsingLeadingText:v42 preITNTokens:v43 customVocabularies:v47 localeIdentifier:v12];

      v44 = [v13 length];
      v45 = [v40 string];
      [a1 replaceCharactersInRange:2 withString:{v44 - 2, v45}];
    }
  }

  [a1 _SRCSPreserveCasingOfPrefixCustomVocabularies:v47];
  if ([a1 _SRCSShouldAddSpaceForLeadingText:v10 localeIdentifier:v12])
  {
    v46 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
    [a1 insertAttributedString:v46 atIndex:0];
  }

  _Block_object_dispose(&v53, 8);

LABEL_38:
}

@end