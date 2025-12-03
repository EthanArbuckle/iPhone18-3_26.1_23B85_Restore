@interface NSString
- (id)_crStringByAppendingString:(void *)string locale:(int)locale mergeHyphenatedWord:(char)word allowWhitespaceDelimiter:(uint64_t *)delimiter appendedStringRange:;
- (uint64_t)_codePointIsLatinCyrillicGreek:(__int16)greek;
@end

@implementation NSString

void __52__NSString_CRDD___crDDFriendlyTextWithIndexMapping___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD48] characterSetWithCharactersInString:@"•⋅"];
  v3 = qword_1ED95FDD8;
  qword_1ED95FDD8 = v2;

  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"[\\(|\\[] ?([0-9]+) ?[\\)|\\]]" options:0 error:0];
  v5 = qword_1ED95FDE0;
  qword_1ED95FDE0 = v4;

  v6 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"([a-zA-Z])(\\([0-9]+\\))" options:0 error:0];
  v7 = qword_1ED95FDE8;
  qword_1ED95FDE8 = v6;

  v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"((\\s|^|\\.|/)([a-zA-Z]|\\p{script=Cyrillic})+)(\\s\\.|\\.\\s|\\s\\.\\s)((com|рф)(\\s|$|/))" options:0 error:0];
  v9 = qword_1ED95FDF0;
  qword_1ED95FDF0 = v8;

  v10 = *(a1 + 32);
  v22 = [&unk_1F2BFB268 allKeys];
  v11 = [v10 _compositeRegexForReplacing:? nonspaceLeft:? nonspaceRight:?];
  v12 = qword_1ED95FDF8;
  qword_1ED95FDF8 = v11;

  v13 = *(a1 + 32);
  v23 = [&unk_1F2BFB290 allKeys];
  v14 = [v13 _compositeRegexForReplacing:? nonspaceLeft:? nonspaceRight:?];
  v15 = qword_1ED95FE00;
  qword_1ED95FE00 = v14;

  v16 = *(a1 + 32);
  v24 = [&unk_1F2BFB2B8 allKeys];
  v17 = [v16 _compositeRegexForReplacing:? nonspaceLeft:? nonspaceRight:?];
  v18 = qword_1ED95FE08;
  qword_1ED95FE08 = v17;

  v19 = *(a1 + 32);
  v25 = [&unk_1F2BFB2E0 allKeys];
  v20 = [v19 _compositeRegexForReplacing:? nonspaceLeft:? nonspaceRight:?];
  v21 = qword_1ED95FE10;
  qword_1ED95FE10 = v20;
}

id __52__NSString_CRDD___crDDFriendlyTextWithIndexMapping___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 rangeAtIndex:2];
  v7 = [v4 safeSubstringWithRange:{v5, v6}];
  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [&unk_1F2BFB268 objectForKeyedSubscript:v7];
    v10 = [v8 stringWithFormat:@"$1%@$3", v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __52__NSString_CRDD___crDDFriendlyTextWithIndexMapping___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 rangeAtIndex:2];
  v7 = [v4 safeSubstringWithRange:{v5, v6}];
  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [&unk_1F2BFB290 objectForKeyedSubscript:v7];
    v10 = [v8 stringWithFormat:@"$1%@$3", v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __52__NSString_CRDD___crDDFriendlyTextWithIndexMapping___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 rangeAtIndex:2];
  v7 = [v4 safeSubstringWithRange:{v5, v6}];
  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [&unk_1F2BFB2B8 objectForKeyedSubscript:v7];
    v10 = [v8 stringWithFormat:@"$1%@$3", v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __52__NSString_CRDD___crDDFriendlyTextWithIndexMapping___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 rangeAtIndex:2];
  v7 = [v4 safeSubstringWithRange:{v5, v6}];
  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [&unk_1F2BFB2E0 objectForKeyedSubscript:v7];
    v10 = [v8 stringWithFormat:@"$1%@$3", v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __53__NSString_CRStringUtilities___crStartsWithUppercase__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = [a2 characterAtIndex:0];
  v10 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v11 = [v10 characterIsMember:v9];

  if (v11)
  {
    v12 = [MEMORY[0x1E696AB08] uppercaseLetterCharacterSet];
    *(*(*(a1 + 32) + 8) + 24) = [v12 characterIsMember:v9];

    *a7 = 1;
  }
}

void __53__NSString_CRStringUtilities___crStartsWithLowercase__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = [a2 characterAtIndex:0];
  v10 = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
  v11 = [v10 characterIsMember:v9];

  if (v11)
  {
    v12 = [MEMORY[0x1E696AB08] lowercaseLetterCharacterSet];
    *(*(*(a1 + 32) + 8) + 24) = [v12 characterIsMember:v9];

    *a7 = 1;
  }
}

- (id)_crStringByAppendingString:(void *)string locale:(int)locale mergeHyphenatedWord:(char)word allowWhitespaceDelimiter:(uint64_t *)delimiter appendedStringRange:
{
  v11 = a2;
  stringCopy = string;
  if (!self)
  {
    v19 = 0;
    goto LABEL_55;
  }

  if (![self length])
  {
    selfCopy = v11;
LABEL_10:
    v19 = [selfCopy copy];
    goto LABEL_55;
  }

  if (![v11 length])
  {
    selfCopy = self;
    goto LABEL_10;
  }

  selfCopy2 = self;
  if ([CRImageReader languageIsChinese:stringCopy]|| [CRImageReader languageIsJapanese:stringCopy])
  {
    wordCopy = word;
    v14 = [selfCopy2 characterAtIndex:{objc_msgSend(selfCopy2, "length") - 1}];
    v15 = [v11 characterAtIndex:{objc_msgSend(v11, "length") - 1}];
    localeCopy = locale;
    if (([(NSString *)v14 _codePointIsLatinCyrillicGreek:v16]& 1) != 0)
    {
      v17 = 1;
    }

    else
    {
      v17 = 1;
      if (((v14 + 21504) >> 4) >= 0x2BBu && (v14 & 0xFFE0) != 0xA960 && (v14 & 0xFF00) != 0x1100 && (v14 - 12592) >= 0x60u)
      {
        v17 = (v14 + 10320) < 0x50u;
      }
    }

    decimalDigitCharacterSet = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    delimiterCopy = delimiter;
    if ([decimalDigitCharacterSet characterIsMember:v14])
    {
      v21 = 0;
    }

    else
    {
      punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
      if ([punctuationCharacterSet characterIsMember:v14])
      {
        v21 = 0;
      }

      else
      {
        [MEMORY[0x1E696AB08] symbolCharacterSet];
        v25 = v24 = v17;
        v26 = [v25 characterIsMember:v14];

        v17 = v24;
        v21 = v26 ^ 1;
      }
    }

    if (([(NSString *)v15 _codePointIsLatinCyrillicGreek:v27]& 1) != 0)
    {
      v28 = 1;
    }

    else
    {
      v28 = 1;
      if (((v15 + 21504) >> 4) >= 0x2BBu && (v15 & 0xFFE0) != 0xA960 && (v15 & 0xFF00) != 0x1100 && (v15 - 12592) >= 0x60u)
      {
        v28 = (v15 + 10320) < 0x50u;
      }
    }

    decimalDigitCharacterSet2 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    if ([decimalDigitCharacterSet2 characterIsMember:v15])
    {
      v30 = 1;
      locale = localeCopy;
    }

    else
    {
      punctuationCharacterSet2 = [MEMORY[0x1E696AB08] punctuationCharacterSet];
      if ([punctuationCharacterSet2 characterIsMember:v15])
      {
        v30 = 1;
      }

      else
      {
        [MEMORY[0x1E696AB08] symbolCharacterSet];
        v33 = v32 = v17;
        v30 = [v33 characterIsMember:v15];

        v17 = v32;
      }

      locale = localeCopy;
    }

    if (((v17 & (v28 | v30) ^ 1) & (!v28 | v21)) != 0)
    {
      v23 = &stru_1F2BB4348;
    }

    else
    {
      v23 = @" ";
    }

    word = wordCopy;
    delimiter = delimiterCopy;
  }

  else
  {
    v23 = @" ";
  }

  if ([selfCopy2 _crEndsWithHyphen])
  {
    v34 = [selfCopy2 length];
    if (locale)
    {
      v35 = [selfCopy2 substringToIndex:v34 - 1];

      v23 = &stru_1F2BB4348;
      selfCopy2 = v35;
    }

    else if (v34 >= 2)
    {
      v36 = [selfCopy2 characterAtIndex:{objc_msgSend(selfCopy2, "length") - 2}];
      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      LODWORD(v36) = [whitespaceCharacterSet characterIsMember:v36];

      if (!v36)
      {
        v23 = &stru_1F2BB4348;
      }
    }
  }

  if ((word & 1) == 0 && [(__CFString *)v23 isEqualToString:@" "])
  {
    v23 = &stru_1F2BB4348;
  }

  if (delimiter)
  {
    v38 = [selfCopy2 length];
    v39 = [(__CFString *)v23 length]+ v38;
    v40 = [v11 length];
    *delimiter = v39;
    delimiter[1] = v40;
  }

  if ([selfCopy2 length])
  {
    v41 = [selfCopy2 stringByAppendingFormat:@"%@%@", v23, v11];
  }

  else
  {
    v41 = [v11 copy];
  }

  v19 = v41;

LABEL_55:

  return v19;
}

void __48__NSString_CRStringUtilities___crEndsWithHyphen__block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-－"];
  v1 = _MergedGlobals_15;
  _MergedGlobals_15 = v0;
}

- (uint64_t)_codePointIsLatinCyrillicGreek:(__int16)greek
{
  a2.i16[0] = greek;
  a2.i16[1] = greek & 0xFFDF;
  v2 = vdup_lane_s16(a2, 0);
  v2.i16[1] = greek & 0xFFDF;
  v3 = 1;
  if ((vmaxv_u16(vcgt_u16(0x158001F001A0017, vadd_s16(v2, 0xFF08FF28FFBFFF40))) & 1) == 0 && (greek - 880) >= 0x1C0u)
  {
    v4 = (greek - 12592) < 0x60u || (greek + 10320) < 0x50u;
    LODWORD(v3) = (greek & 0xFF00) == 0x1100 || v4;
    if ((greek & 0xFFE0) == 0xA960)
    {
      LODWORD(v3) = 1;
    }

    if (((greek + 21504) >> 4) >= 0x2BBu)
    {
      return v3;
    }

    else
    {
      return 1;
    }
  }

  return v3;
}

void __67__NSString_CRStringUtilities___crStringByRemovingParenthesizedText__block_invoke()
{
  v0 = objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"([{<（［｛＜");
  v1 = qword_1ED95FEC0;
  qword_1ED95FEC0 = v0;
}

void __80__NSString_CRLineWrappingUtilities___crIsSentencePunctuatedIncludingWhitespace___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v15 = a2;
  if (([v15 containsString:@"."] & 1) == 0 && (objc_msgSend(v15, "containsString:", @",") & 1) == 0 && !objc_msgSend(v15, "containsString:", @"，"))
  {
    goto LABEL_7;
  }

  v12 = *(*(*(a1 + 40) + 8) + 40);
  if (!v12 || ([v12 _crContainsText] & 1) != 0 || a5 + a6 < objc_msgSend(*(a1 + 32), "length") && (objc_msgSend(*(a1 + 32), "substringWithRange:"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "_crContainsText"), v13, v14))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a7 = 1;
LABEL_7:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

@end