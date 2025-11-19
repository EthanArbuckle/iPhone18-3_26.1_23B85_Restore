@interface CNVCardLexer
+ (id)returnDelimiterData;
+ (id)singleByteTokens;
+ (id)utf16Tokens;
- (BOOL)advancePastEOL;
- (BOOL)advancePastEOLSingle;
- (BOOL)advancePastEOLUnicode;
- (BOOL)advanceToEOL;
- (BOOL)advanceToEOLSingle;
- (BOOL)advanceToEOLUnicode;
- (BOOL)advanceToToken:(int)a3 throughTypes:(int64_t)a4;
- (BOOL)advancedPastToken:(int)a3;
- (CNVCardLexer)initWithData:(id)a3;
- (_NSRange)emptyRangeStartingAtCursor;
- (_NSRange)expandRange:(_NSRange)a3 untilNextByteIs:(id)a4;
- (_NSRange)rangeWithLength:(unint64_t)a3 lTrim:(unint64_t)a4 rTrim:(unint64_t)a5;
- (id)clipAtGraphemeClusters:(id)a3 maximumValueLength:(unint64_t)a4 addEllipsisIfClipped:(BOOL)a5;
- (id)dataWithRange:(_NSRange)a3;
- (id)nextArraySeperatedByToken:(int)a3 stoppingAt:(int)a4 inEncoding:(unint64_t)a5 maximumValueLength:(unint64_t)a6;
- (id)nextBase64Data;
- (id)nextBase64Line:(BOOL *)a3;
- (id)nextEscapedCharacter;
- (id)nextQuotedPrintableData;
- (id)nextQuotedStringValueInEncoding:(unint64_t)a3;
- (id)nextSingleByteBase64Line:(BOOL *)a3;
- (id)nextSingleByteStringInEncoding:(unint64_t)a3 quotedPrintable:(BOOL)a4 stopTokens:(int)a5 trim:(BOOL)a6 maximumValueLength:(unint64_t)a7;
- (id)nextUnicodeBase64Line:(BOOL *)a3;
- (id)nextUnicodeStringStopTokens:(int)a3 quotedPrintable:(BOOL)a4 trim:(BOOL)a5 maximumValueLength:(unint64_t)a6;
- (id)os_log;
- (id)stringByRoundingData:(id)a3 toNextWholeCharacterUsingEncoding:(unint64_t)a4 prefixLength:(unint64_t)a5 suffixLength:(unint64_t)a6 maximumValueLength:(unint64_t)a7;
- (id)stringFromData:(id)a3 encoding:(unint64_t)a4 prefixLength:(unint64_t)a5 suffixLength:(unint64_t)a6;
- (id)stringFromSubData:(id)a3 encoding:(unint64_t)a4;
- (id)stringWithRange:(_NSRange)a3 encoding:(unint64_t)a4;
- (id)tokenSetForLength:(int64_t)a3;
- (id)trimData:(id)a3 withPrefixLength:(unint64_t)a4 suffixLength:(unint64_t)a5;
- (id)unicodeStringByRoundingData:(id)a3 toNextWholeCharacterUsingEncoding:(unint64_t)a4 prefixLength:(unint64_t)a5 suffixLength:(unint64_t)a6 maximumValueLength:(unint64_t)a7;
- (int)nextTokenPeekSingle:(BOOL)a3 length:(int64_t)a4;
- (int)nextTokenPeekUnicode:(BOOL)a3 length:(int64_t)a4;
- (int)tokenAtCursor;
- (int)tokenAtCursorIgnoringLineFolding;
- (int64_t)advanceToSingleByteString;
- (int64_t)advanceToString;
- (int64_t)advanceToUnicodeString;
- (unsigned)charAtPosition:(unint64_t)a3 withOffset:(int64_t)a4;
- (void)appendNextEscapedCharacterToData:(id)a3;
- (void)appendNextQuotedPrintableDataToData:(id)a3;
- (void)skipToStopTokens:(int)a3;
- (void)unicodeSkipToStopTokens:(int)a3;
@end

@implementation CNVCardLexer

+ (id)singleByteTokens
{
  if (singleByteTokens_cn_once_token_1 != -1)
  {
    +[CNVCardLexer singleByteTokens];
  }

  v3 = singleByteTokens_cn_once_object_1;

  return v3;
}

uint64_t __32__CNVCardLexer_singleByteTokens__block_invoke()
{
  singleByteTokens_cn_once_object_1 = buildTokenTable(0);

  return MEMORY[0x2821F96F8]();
}

+ (id)utf16Tokens
{
  if (utf16Tokens_cn_once_token_2 != -1)
  {
    +[CNVCardLexer utf16Tokens];
  }

  v3 = utf16Tokens_cn_once_object_2;

  return v3;
}

uint64_t __27__CNVCardLexer_utf16Tokens__block_invoke()
{
  utf16Tokens_cn_once_object_2 = buildTokenTable(1);

  return MEMORY[0x2821F96F8]();
}

+ (id)returnDelimiterData
{
  if (returnDelimiterData_cn_once_token_3 != -1)
  {
    +[CNVCardLexer returnDelimiterData];
  }

  v3 = returnDelimiterData_cn_once_object_3;

  return v3;
}

uint64_t __35__CNVCardLexer_returnDelimiterData__block_invoke()
{
  returnDelimiterData_cn_once_object_3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:"\n" length:1];

  return MEMORY[0x2821F96F8]();
}

- (id)os_log
{
  if (os_log_cn_once_token_4 != -1)
  {
    [CNVCardLexer os_log];
  }

  v3 = os_log_cn_once_object_4;

  return v3;
}

uint64_t __22__CNVCardLexer_os_log__block_invoke()
{
  os_log_cn_once_object_4 = os_log_create("com.apple.contacts.vcard", "lexer");

  return MEMORY[0x2821F96F8]();
}

- (CNVCardLexer)initWithData:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CNVCardLexer;
  v5 = [(CNVCardLexer *)&v18 init];
  if (v5 && (v6 = [v4 length], v5->_length = v6, v6 >= 0xB))
  {
    v8 = [v4 mutableCopy];
    data = v5->_data;
    v5->_data = v8;

    v5->_bytes = [(NSMutableData *)v5->_data mutableBytes];
    v5->_unicode = 0;
    v10 = [CNVCardDataAnalyzer analyzeData:v4];
    if ((v10 | 0x4000000) == 0x94000100)
    {
      v5->_unicode = 1;
      if (v10 == 2483028224)
      {
        length = v5->_length;
        if (length >= 2)
        {
          v13 = length >> 1;
          bytes = v5->_bytes;
          do
          {
            *bytes = bswap32(*bytes) >> 16;
            bytes += 2;
            --v13;
          }

          while (v13);
        }
      }
    }

    if (v11)
    {
      v5->_cursor = 2;
    }

    if (v5->_unicode)
    {
      +[CNVCardLexer utf16Tokens];
    }

    else
    {
      +[CNVCardLexer singleByteTokens];
    }
    v15 = ;
    activeTokenSets = v5->_activeTokenSets;
    v5->_activeTokenSets = v15;

    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tokenSetForLength:(int64_t)a3
{
  v5 = a3 - 1;
  if (a3 - 1) <= 6 && ((0x55u >> v5))
  {
    v6 = [(NSArray *)self->_activeTokenSets objectAtIndex:qword_27721EF70[v5], v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int)nextTokenPeekSingle:(BOOL)a3 length:(int64_t)a4
{
  v40 = *MEMORY[0x277D85DE8];
  p_cursor = &self->_cursor;
  cursor = self->_cursor;
  self->_peekedPoint = cursor;
  length = self->_length;
  if (a4 <= 0)
  {
    v8 = 7;
  }

  else
  {
    v8 = a4;
  }

  v9 = cursor >= length;
  v10 = cursor < length;
  if (cursor >= length)
  {
    v11 = 65537;
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    v10 = 1;
    v13 = 90;
    if (a3)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v37 = a4;
  v38 = &self->_cursor;
  v12 = 1;
  do
  {
    v13 = self->_bytes[cursor];
    *&v39[v12 - 1] = v13;
    v14 = [(CNVCardLexer *)self tokenSetForLength:v12];
    if (v14)
    {
      v15 = v14;
      Count = CFArrayGetCount(v14);
      if (Count >= 1)
      {
        v17 = Count;
        v18 = 0;
        while (2)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v15, v18);
          v20 = ValueAtIndex[1];
          v21 = v39;
          do
          {
            while (1)
            {
              v23 = *v20++;
              v22 = v23;
              v25 = *v21++;
              v24 = v25;
              if (v25 != v22)
              {
                break;
              }

              if (!v22)
              {
                goto LABEL_26;
              }
            }
          }

          while ((v24 - 97) <= 0x19 && v24 != 0 && ((v24 + 96) & 0x5F) == v22);
          if (!v24)
          {
LABEL_26:
            v11 = *ValueAtIndex;
            goto LABEL_27;
          }

          if (++v18 != v17)
          {
            continue;
          }

          break;
        }
      }
    }

    v11 = 0;
LABEL_27:
    v28 = self->_length;
    cursor = self->_peekedPoint + 1;
    self->_peekedPoint = cursor;
    if (cursor >= v28)
    {
      break;
    }

    v9 = v12++ >= v8;
    v29 = !v9 && v11 == 0;
    v10 = v29;
  }

  while (v29);
  a4 = v37;
  p_cursor = v38;
  if (!a3)
  {
LABEL_38:
    *p_cursor = cursor;
  }

LABEL_39:
  if (a4)
  {
    v30 = 0;
  }

  else
  {
    v30 = v11 == 0;
  }

  v31 = !v30;
  v32 = v31 | v10;
  if (v30)
  {
    result = 65537;
  }

  else
  {
    result = v11;
  }

  if ((v32 & 1) == 0)
  {
    v34 = [(CNVCardLexer *)self os_log];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [(CNVCardLexer *)p_cursor nextTokenPeekSingle:v13 length:v34];
    }

    ++self->_errorCount;
    result = 65538;
  }

  v35 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)nextTokenPeekUnicode:(BOOL)a3 length:(int64_t)a4
{
  v46 = *MEMORY[0x277D85DE8];
  cursor = self->_cursor;
  self->_peekedPoint = cursor;
  if (a4 <= 0)
  {
    v6 = 7;
  }

  else
  {
    v6 = a4;
  }

  length = self->_length;
  v8 = cursor >= length;
  v9 = cursor < length;
  if (cursor >= length)
  {
    v10 = 65537;
  }

  else
  {
    v10 = 0;
  }

  if (v8)
  {
    v15 = 0;
    v31 = 0;
    v9 = 1;
    if (a3)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v40 = a4;
  v11 = 1;
  do
  {
    bytes = self->_bytes;
    v13 = bytes[cursor];
    v14 = cursor + 1;
    self->_peekedPoint = v14;
    v15 = bytes[v14];
    v16 = &v45[v11];
    *(v16 - 1) = v15 | (v13 << 8);
    *v16 = 0;
    v17 = [(CNVCardLexer *)self tokenSetForLength:v11];
    if (!v17 || (v18 = v17, (Count = CFArrayGetCount(v17)) == 0))
    {
      v10 = 0;
      goto LABEL_23;
    }

    v20 = Count;
    v21 = 0;
    while (2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v18, v21);
      v23 = ValueAtIndex[1];
      v24 = v45;
      while (1)
      {
        v26 = *v23++;
        v25 = v26;
        v28 = *v24++;
        v27 = v28;
        if (v28 != v25)
        {
          break;
        }

LABEL_16:
        if (!v27)
        {
          goto LABEL_22;
        }
      }

      if ((v27 - 97) <= 0x19)
      {
        if (((v27 + 96) & 0x5F) != v25)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      if (!v27)
      {
LABEL_22:
        v10 = *ValueAtIndex;
        break;
      }

LABEL_19:
      v10 = 0;
      if (++v21 != v20)
      {
        continue;
      }

      break;
    }

LABEL_23:
    v29 = self->_length;
    cursor = self->_peekedPoint + 1;
    self->_peekedPoint = cursor;
    if (cursor >= v29)
    {
      break;
    }

    v8 = v11++ >= v6;
    v30 = !v8 && v10 == 0;
    v9 = v30;
  }

  while (v30);
  v31 = v13 << 8;
  a4 = v40;
  if (!a3)
  {
LABEL_34:
    self->_cursor = cursor;
  }

LABEL_35:
  if (a4)
  {
    v32 = 0;
  }

  else
  {
    v32 = v10 == 0;
  }

  v33 = !v32;
  v34 = v33 | v9;
  if (v32)
  {
    result = 65537;
  }

  else
  {
    result = v10;
  }

  if ((v34 & 1) == 0)
  {
    v36 = [(CNVCardLexer *)self os_log];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = self->_cursor;
      *buf = 134218240;
      v42 = v38;
      v43 = 1024;
      v44 = v31 | v15;
      _os_log_error_impl(&dword_2771F5000, v36, OS_LOG_TYPE_ERROR, "vCard Syntax Error, character %ld : %C", buf, 0x12u);
    }

    ++self->_errorCount;
    result = 65538;
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)nextQuotedPrintableData
{
  bytes = self->_bytes;
  cursor = self->_cursor;
  v4 = &bytes[cursor];
  v5 = bytes[cursor];
  v6 = cursor + 1;
  self->_cursor = cursor + 1;
  if (v5 == 61)
  {
    v6 = cursor + 4;
    if (cursor + 4 >= self->_length || v4[2] != 13 || v4[3] != 10)
    {
      goto LABEL_12;
    }

    self->_cursor = v6;
    v5 = bytes[v6];
  }

  if (v5 == 13 || v5 == 10)
  {
    [(CNVCardLexer *)self advancePastEOL];
    goto LABEL_12;
  }

  v10 = &bytes[v6];
  v11 = bytes[v6];
  if (v11 != 61)
  {
    goto LABEL_21;
  }

  v6 += 3;
  if (v6 >= self->_length || v10[1] != 13 || v10[2] != 10)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  self->_cursor = v6;
  v11 = bytes[v6];
LABEL_21:
  if (v5 <= 0x40)
  {
    v12 = 64;
  }

  else
  {
    v12 = 9;
  }

  v13 = v12 + v5;
  if (v11 <= 0x40)
  {
    v14 = -48;
  }

  else
  {
    v14 = -55;
  }

  if (v11 > 0x60)
  {
    v14 = -87;
  }

  v15 = v11 + 16 * v13 + v14;
  v23 = v15;
  v16 = v6 + 1;
  self->_cursor = v6 + 1;
  if (v15 == 92)
  {
    if (v16 < self->_length)
    {
      v23 = bytes[v16];
      self->_cursor = v6 + 2;
    }

    goto LABEL_46;
  }

  if (v15 != 13 || v6 + 3 >= self->_length)
  {
LABEL_46:
    v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v23 length:1];
    goto LABEL_13;
  }

  v17 = &bytes[v16];
  if (*v17 == 61)
  {
    v18 = bytes[v6 + 2];
    v19 = v17[2];
    if (v18 <= 0x40)
    {
      v20 = 64;
    }

    else
    {
      v20 = 9;
    }

    v21 = v20 + v18;
    if (v19 <= 0x40)
    {
      v22 = -48;
    }

    else
    {
      v22 = -55;
    }

    if (v19 > 0x60)
    {
      v22 = -87;
    }

    if ((v22 + v19 + 16 * v21) == 10)
    {
      self->_cursor = v6 + 4;
    }
  }

  v8 = +[CNVCardLexer returnDelimiterData];
LABEL_13:

  return v8;
}

- (id)nextEscapedCharacter
{
  if ([(CNVCardLexer *)self advancedPastToken:0x8000])
  {
    [(CNVCardLexer *)self advancedPastToken:0x4000];
  }

  bytes = self->_bytes;
  cursor = self->_cursor;
  v5 = bytes[cursor];
  v14 = bytes[cursor];
  v6 = cursor + 1;
  self->_cursor = cursor + 1;
  unicode = self->_unicode;
  if (unicode)
  {
    v5 = bytes[v6];
    v14 = bytes[v6];
    self->_cursor = cursor + 2;
  }

  if (v5 == 110)
  {
    LOBYTE(v5) = 10;
    v14 = 10;
  }

  if (unicode)
  {
    v13[0] = 0;
    v13[1] = v5;
    v8 = MEMORY[0x277CBEA90];
    v9 = v13;
    v10 = 2;
  }

  else
  {
    v8 = MEMORY[0x277CBEA90];
    v9 = &v14;
    v10 = 1;
  }

  v11 = [v8 dataWithBytes:v9 length:v10];

  return v11;
}

- (id)nextSingleByteStringInEncoding:(unint64_t)a3 quotedPrintable:(BOOL)a4 stopTokens:(int)a5 trim:(BOOL)a6 maximumValueLength:(unint64_t)a7
{
  v43 = a4;
  v44 = a6;
  if ((a5 & 0x80) != 0 && self->_bytes[self->_cursor] == 34)
  {
    v8 = [(CNVCardLexer *)self nextQuotedStringValueInEncoding:a3];
    goto LABEL_44;
  }

  v9 = [(CNVCardLexer *)self emptyRangeStartingAtCursor];
  v11 = v10;
  v12 = [(CNVCardLexer *)self tokenSetForLength:1];
  v13 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v45[1] = 0;
  cursor = self->_cursor;
  if (cursor >= self->_length)
  {
LABEL_42:
    v8 = 0;
    self->_cursor = self->_peekedPoint;
    goto LABEL_43;
  }

  v15 = 0;
  v40 = 0;
  v16 = 1;
  while (1)
  {
    v45[0] = self->_bytes[cursor];
    Count = CFArrayGetCount(v12);
    if (Count >= 1)
    {
      v18 = Count;
      v19 = 0;
      while (2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v19);
        v21 = ValueAtIndex[1];
        v22 = v45;
        do
        {
          while (1)
          {
            v24 = *v21++;
            v23 = v24;
            v26 = *v22++;
            v25 = v26;
            if (v26 != v23)
            {
              break;
            }

            if (!v23)
            {
              goto LABEL_22;
            }
          }
        }

        while ((v25 - 97) <= 0x19 && v25 != 0 && ((v25 + 96) & 0x5F) == v23);
        if (!v25)
        {
LABEL_22:
          v29 = *ValueAtIndex;
          goto LABEL_23;
        }

        if (++v19 != v18)
        {
          continue;
        }

        break;
      }
    }

    v29 = 0;
LABEL_23:
    if (v44)
    {
      break;
    }

LABEL_27:
    if (v43 && v29 == 1025)
    {
      [(CNVCardLexer *)self appendDataInRange:v9 toData:v11, v13];
      [(CNVCardLexer *)self appendNextQuotedPrintableDataToData:v13];
    }

    else
    {
      if (v29 != 513)
      {
        goto LABEL_37;
      }

      [(CNVCardLexer *)self appendDataInRange:v9 toData:v11, v13];
      [(CNVCardLexer *)self appendNextEscapedCharacterToData:v13];
    }

    v9 = [(CNVCardLexer *)self emptyRangeStartingAtCursor];
    v11 = v30;
LABEL_41:
    cursor = self->_cursor;
    if (cursor >= self->_length)
    {
      goto LABEL_42;
    }
  }

  if ((v29 & 0x4000) == 0)
  {
    v16 &= (v29 & a5) != 0;
    if ((v29 & a5) == 0)
    {
      v15 = 0;
    }

    goto LABEL_27;
  }

  v31 = (v16 & 1) == 0;
  v16 = (v16 & 1) != 0;
  v32 = v40;
  if (!v31)
  {
    v32 = v40 + 1;
  }

  v40 = v32;
  if (v31)
  {
    ++v15;
  }

LABEL_37:
  if ((v29 & a5) != 0)
  {
    [(CNVCardLexer *)self appendDataInRange:v9 toData:v11, v13];
    v34 = [(CNVCardLexer *)self stringFromData:v13 encoding:v39 prefixLength:v40 suffixLength:v15];
    v8 = [(CNVCardLexer *)self clipAtGraphemeClusters:v34 maximumValueLength:a7 addEllipsisIfClipped:1];

    goto LABEL_43;
  }

  if (a7 == -1 || v11 < a7 + 20)
  {
    ++v11;
    ++self->_cursor;
    goto LABEL_41;
  }

  [(CNVCardLexer *)self appendDataInRange:v9 toData:v11, v13];
  v35 = [(CNVCardLexer *)self stringByRoundingData:v13 toNextWholeCharacterUsingEncoding:v39 prefixLength:v40 suffixLength:v15 maximumValueLength:a7];
  v36 = [v35 stringByAppendingString:@"…"];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = @"…";
  }

  v8 = v38;

  ++self->_cursor;
  [(CNVCardLexer *)self skipToStopTokens:a5];
LABEL_43:

LABEL_44:

  return v8;
}

- (void)skipToStopTokens:(int)a3
{
  theArray = [(CNVCardLexer *)self tokenSetForLength:1];
  v20[1] = 0;
  for (i = self->_cursor; i < self->_length; self->_cursor = i)
  {
    v20[0] = self->_bytes[i];
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        v10 = ValueAtIndex[1];
        v11 = v20;
        do
        {
          while (1)
          {
            v13 = *v10++;
            v12 = v13;
            v15 = *v11++;
            v14 = v15;
            if (v15 != v12)
            {
              break;
            }

            if (!v12)
            {
              goto LABEL_18;
            }
          }
        }

        while ((v14 - 97) <= 0x19 && v14 != 0 && ((v14 + 96) & 0x5F) == v12);
        if (!v14)
        {
LABEL_18:
          v18 = *ValueAtIndex;
          goto LABEL_19;
        }

        if (++v8 != v7)
        {
          continue;
        }

        break;
      }
    }

    v18 = 0;
LABEL_19:
    if ((v18 & a3) != 0)
    {
      break;
    }

    i = self->_cursor + 1;
  }
}

- (void)appendNextQuotedPrintableDataToData:(id)a3
{
  ++self->_cursor;
  v4 = a3;
  v5 = [(CNVCardLexer *)self nextQuotedPrintableData];
  [v4 appendData:v5];
}

- (void)appendNextEscapedCharacterToData:(id)a3
{
  ++self->_cursor;
  v4 = a3;
  v5 = [(CNVCardLexer *)self nextEscapedCharacter];
  [v4 appendData:v5];
}

- (_NSRange)emptyRangeStartingAtCursor
{
  cursor = self->_cursor;
  v3 = 0;
  result.length = v3;
  result.location = cursor;
  return result;
}

- (id)stringByRoundingData:(id)a3 toNextWholeCharacterUsingEncoding:(unint64_t)a4 prefixLength:(unint64_t)a5 suffixLength:(unint64_t)a6 maximumValueLength:(unint64_t)a7
{
  v12 = a3;
  v13 = [(CNVCardLexer *)self stringFromData:v12 encoding:a4 prefixLength:a5 suffixLength:a6];
  if (!v13)
  {
    v16 = [v12 length];
    if (v16)
    {
      v17 = v16 - 1;
      do
      {
        v18 = [v12 subdataWithRange:{0, v17}];
        v13 = [(CNVCardLexer *)self stringFromData:v18 encoding:a4 prefixLength:a5 suffixLength:a6];

        v20 = v17-- != 0;
      }

      while (!v13 && v20);
    }

    else
    {
      v13 = 0;
    }
  }

  v14 = [(CNVCardLexer *)self clipAtGraphemeClusters:v13 maximumValueLength:a7 addEllipsisIfClipped:0];

  return v14;
}

- (id)clipAtGraphemeClusters:(id)a3 maximumValueLength:(unint64_t)a4 addEllipsisIfClipped:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = v7;
  if (a4 == -1 || [v7 length] <= a4)
  {
    v12 = v8;
  }

  else
  {
    v9 = [v8 rangeOfComposedCharacterSequencesForRange:{0, a4}];
    v11 = [v8 substringWithRange:{v9, v10}];
    v12 = v11;
    if (v5)
    {
      v13 = [v11 stringByAppendingString:@"…"];

      v12 = v13;
    }
  }

  return v12;
}

- (id)unicodeStringByRoundingData:(id)a3 toNextWholeCharacterUsingEncoding:(unint64_t)a4 prefixLength:(unint64_t)a5 suffixLength:(unint64_t)a6 maximumValueLength:(unint64_t)a7
{
  v9 = [(CNVCardLexer *)self stringFromData:a3 encoding:a4 prefixLength:a5 suffixLength:a6];
  v10 = [(CNVCardLexer *)self clipAtGraphemeClusters:v9 maximumValueLength:a7 addEllipsisIfClipped:0];

  return v10;
}

- (id)stringFromData:(id)a3 encoding:(unint64_t)a4 prefixLength:(unint64_t)a5 suffixLength:(unint64_t)a6
{
  v8 = [(CNVCardLexer *)self trimData:a3 withPrefixLength:a5 suffixLength:a6];
  v9 = [(CNVCardLexer *)self stringFromSubData:v8 encoding:a4];

  return v9;
}

- (id)trimData:(id)a3 withPrefixLength:(unint64_t)a4 suffixLength:(unint64_t)a5
{
  v8 = a3;
  v9 = v8;
  if (a5 | a4)
  {
    v10 = -[CNVCardLexer rangeWithLength:lTrim:rTrim:](self, "rangeWithLength:lTrim:rTrim:", [v8 length], a4, a5);
    v12 = [v9 subdataWithRange:{v10, v11}];
  }

  else
  {
    v12 = v8;
  }

  v13 = v12;

  return v13;
}

- (_NSRange)rangeWithLength:(unint64_t)a3 lTrim:(unint64_t)a4 rTrim:(unint64_t)a5
{
  v6 = a3 - (a4 + a5);
  result.length = v6;
  result.location = a4;
  return result;
}

- (id)stringFromSubData:(id)a3 encoding:(unint64_t)a4
{
  if (a4 == 4000100)
  {
    v4 = a3;
    v5 = [CNVCardData stringFromUTF7Data:v4];
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v4 = a3;
    v5 = [[v7 alloc] initWithData:v4 encoding:a4];
  }

  v8 = v5;

  return v8;
}

- (id)nextQuotedStringValueInEncoding:(unint64_t)a3
{
  v5 = [@"" dataUsingEncoding:?];
  v6 = -[CNVCardLexer expandRange:untilNextByteIs:](self, "expandRange:untilNextByteIs:", [v5 length] + self->_cursor, 0, v5);
  v8 = v7;
  v9 = [MEMORY[0x277CBEB28] data];
  [(CNVCardLexer *)self appendDataInRange:v6 toData:v8, v9];
  self->_cursor = v6 + v8 + [v5 length];
  v10 = [(CNVCardLexer *)self stringFromSubData:v9 encoding:a3];

  return v10;
}

- (_NSRange)expandRange:(_NSRange)a3 untilNextByteIs:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [v7 length];
  v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&self->_bytes[location + length] length:v8 freeWhenDone:0];
  if (location + length < self->_length)
  {
    while (([v9 isEqualToData:v7] & 1) == 0)
    {
      v11 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&self->_bytes[location + v8 + length] length:v8 freeWhenDone:0];

      v9 = v11;
      length += v8;
      v10 = length;
      if (location + length >= self->_length)
      {
        goto LABEL_6;
      }
    }
  }

  v10 = length;
  v11 = v9;
LABEL_6:

  v12 = location;
  v13 = v10;
  result.length = v13;
  result.location = v12;
  return result;
}

- (id)nextUnicodeStringStopTokens:(int)a3 quotedPrintable:(BOOL)a4 trim:(BOOL)a5 maximumValueLength:(unint64_t)a6
{
  v41 = a4;
  v42 = a5;
  if ((a3 & 0x80) != 0)
  {
    cursor = self->_cursor;
    v8 = &self->_bytes[cursor];
    if (!*v8 && v8[1] == 34)
    {
      v9 = [(CNVCardLexer *)self nextQuotedStringValueInEncoding:2415919360];
      goto LABEL_41;
    }
  }

  else
  {
    cursor = self->_cursor;
  }

  v10 = [(CNVCardLexer *)self tokenSetForLength:1];
  v11 = [MEMORY[0x277CBEB28] data];
  v44 = 0;
  v12 = self->_cursor;
  if (v12 >= self->_length)
  {
LABEL_39:
    v9 = 0;
    self->_cursor = self->_peekedPoint;
    goto LABEL_40;
  }

  v13 = 0;
  v14 = 0;
  v37 = 2 * a6 + 20;
  v38 = 0;
  v15 = 1;
  while (2)
  {
    v16 = &self->_bytes[v12];
    v43[1] = *v16;
    v43[0] = v16[1];
    Count = CFArrayGetCount(v10);
    if (!Count)
    {
      goto LABEL_18;
    }

    v18 = Count;
    v19 = 0;
    while (2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v19);
      v21 = ValueAtIndex[1];
      v22 = v43;
      while (1)
      {
        v24 = *v21++;
        v23 = v24;
        v26 = *v22++;
        v25 = v26;
        if (v26 != v23)
        {
          break;
        }

LABEL_14:
        if (!v25)
        {
          goto LABEL_19;
        }
      }

      if ((v25 - 97) <= 0x19)
      {
        if (((v25 + 96) & 0x5F) != v23)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      if (!v25)
      {
LABEL_19:
        v27 = *ValueAtIndex;
        goto LABEL_20;
      }

LABEL_17:
      if (++v19 != v18)
      {
        continue;
      }

      break;
    }

LABEL_18:
    v27 = 0;
LABEL_20:
    if (!v42)
    {
LABEL_24:
      if (v41 && v27 == 1025)
      {
        ++self->_cursor;
        [(CNVCardLexer *)self appendDataInRange:cursor toData:v13, v11];
        [(CNVCardLexer *)self appendNextQuotedPrintableDataToData:v11];
      }

      else
      {
        if (v27 != 513)
        {
          goto LABEL_34;
        }

        ++self->_cursor;
        [(CNVCardLexer *)self appendDataInRange:cursor toData:v13, v11];
        [(CNVCardLexer *)self appendNextEscapedCharacterToData:v11];
      }

      cursor = [(CNVCardLexer *)self emptyRangeStartingAtCursor];
      v13 = v28;
LABEL_38:
      v12 = self->_cursor;
      if (v12 >= self->_length)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  if ((v27 & 0x4000) == 0)
  {
    v15 &= (v27 & a3) != 0;
    if ((v27 & a3) == 0)
    {
      v14 = 0;
    }

    goto LABEL_24;
  }

  v29 = v38;
  v30 = (v15 & 1) == 0;
  v15 = (v15 & 1) != 0;
  if (!v30)
  {
    v29 = v38 + 2;
  }

  v38 = v29;
  if (v30)
  {
    v14 += 2;
  }

LABEL_34:
  if ((v27 & a3) != 0)
  {
    [(CNVCardLexer *)self appendDataInRange:cursor toData:v13, v11];
    v32 = [(CNVCardLexer *)self stringFromData:v11 encoding:2415919360 prefixLength:v38 suffixLength:v14];
    v9 = [(CNVCardLexer *)self clipAtGraphemeClusters:v32 maximumValueLength:a6 addEllipsisIfClipped:1];
  }

  else
  {
    if (a6 == -1 || v13 != v37)
    {
      v13 += 2;
      self->_cursor += 2;
      goto LABEL_38;
    }

    [(CNVCardLexer *)self appendDataInRange:cursor toData:v37, v11];
    v33 = [(CNVCardLexer *)self unicodeStringByRoundingData:v11 toNextWholeCharacterUsingEncoding:2415919360 prefixLength:v38 suffixLength:v14 maximumValueLength:a6];
    v34 = [v33 stringByAppendingString:@"…"];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = @"…";
    }

    v9 = v36;

    self->_cursor += 2;
    [(CNVCardLexer *)self unicodeSkipToStopTokens:a3];
  }

LABEL_40:

LABEL_41:

  return v9;
}

- (void)unicodeSkipToStopTokens:(int)a3
{
  theArray = [(CNVCardLexer *)self tokenSetForLength:1];
  v20 = 0;
  cursor = self->_cursor;
  if (cursor >= self->_length)
  {
    goto LABEL_16;
  }

  do
  {
    v6 = &self->_bytes[cursor];
    v19[1] = *v6;
    v19[0] = v6[1];
    Count = CFArrayGetCount(theArray);
    if (!Count)
    {
      goto LABEL_12;
    }

    v8 = Count;
    v9 = 0;
    while (2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
      v11 = ValueAtIndex[1];
      v12 = v19;
      while (1)
      {
        v14 = *v11++;
        v13 = v14;
        v16 = *v12++;
        v15 = v16;
        if (v16 != v13)
        {
          break;
        }

LABEL_8:
        if (!v15)
        {
          goto LABEL_13;
        }
      }

      if ((v15 - 97) <= 0x19)
      {
        if (((v15 + 96) & 0x5F) != v13)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }

      if (!v15)
      {
LABEL_13:
        v17 = *ValueAtIndex;
        goto LABEL_14;
      }

LABEL_11:
      if (++v9 != v8)
      {
        continue;
      }

      break;
    }

LABEL_12:
    v17 = 0;
LABEL_14:
    if ((v17 & a3) != 0)
    {
      break;
    }

    cursor = self->_cursor + 2;
    self->_cursor = cursor;
  }

  while (cursor < self->_length);
LABEL_16:
}

- (int)tokenAtCursor
{
  cursor = self->_cursor;
  v4 = [(CNVCardLexer *)self tokenSetForLength:1];
  v5 = v4;
  if (!self->_unicode)
  {
    v28[1] = 0;
    v28[0] = self->_bytes[cursor];
    Count = CFArrayGetCount(v4);
    if (Count < 1)
    {
      goto LABEL_28;
    }

    v17 = Count;
    v18 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v18);
      v19 = ValueAtIndex[1];
      v20 = v28;
      do
      {
        while (1)
        {
          v22 = *v19++;
          v21 = v22;
          v24 = *v20++;
          v23 = v24;
          if (v24 != v21)
          {
            break;
          }

          if (!v21)
          {
            goto LABEL_29;
          }
        }
      }

      while ((v23 - 97) <= 0x19 && v23 != 0 && ((v23 + 96) & 0x5F) == v21);
      if (!v23)
      {
LABEL_29:
        LODWORD(v7) = *ValueAtIndex;
        goto LABEL_30;
      }

      if (++v18 == v17)
      {
        goto LABEL_28;
      }
    }
  }

  v30 = 0;
  v6 = &self->_bytes[cursor];
  v29[1] = *v6;
  v29[0] = v6[1];
  v7 = CFArrayGetCount(v4);
  if (v7)
  {
    v8 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      v10 = ValueAtIndex[1];
      v11 = v29;
      while (1)
      {
        v13 = *v10++;
        v12 = v13;
        v15 = *v11++;
        v14 = v15;
        if (v15 == v12)
        {
          goto LABEL_8;
        }

        if ((v14 - 97) > 0x19)
        {
          break;
        }

        if (((v14 + 96) & 0x5F) != v12)
        {
          goto LABEL_11;
        }

LABEL_8:
        if (!v14)
        {
          goto LABEL_29;
        }
      }

      if (!v14)
      {
        goto LABEL_29;
      }

LABEL_11:
      if (++v8 == v7)
      {
LABEL_28:
        LODWORD(v7) = 0;
        break;
      }
    }
  }

LABEL_30:

  return v7;
}

- (unsigned)charAtPosition:(unint64_t)a3 withOffset:(int64_t)a4
{
  bytes = self->_bytes;
  if (self->_unicode)
  {
    return bswap32(*&bytes[2 * a4 + a3]) >> 16;
  }

  else
  {
    LOWORD(v5) = bytes[a3 + a4];
  }

  return v5;
}

- (id)stringWithRange:(_NSRange)a3 encoding:(unint64_t)a4
{
  v5 = [(CNVCardLexer *)self dataWithRange:a3.location, a3.length];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:a4];

  return v6;
}

- (id)dataWithRange:(_NSRange)a3
{
  v3 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:&self->_bytes[a3.location] length:a3.length freeWhenDone:0];

  return v3;
}

- (id)nextArraySeperatedByToken:(int)a3 stoppingAt:(int)a4 inEncoding:(unint64_t)a5 maximumValueLength:(unint64_t)a6
{
  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  [v11 removeAllObjects];
  while (([(CNVCardLexer *)self tokenAtCursorIgnoringLineFolding]& a4) == 0)
  {
    if (self->_cursor >= self->_length)
    {
      break;
    }

    v12 = [(CNVCardLexer *)self nextStringInEncoding:a5 quotedPrintable:0 stopTokens:a4 | a3 trim:1 maximumValueLength:a6];
    v13 = v12;
    if (v12 && [v12 length])
    {
      [v11 addObject:v13];
    }

    if (([(CNVCardLexer *)self tokenAtCursor]& a3) != 0)
    {
      if (self->_unicode)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      self->_cursor += v14;
    }
  }

  return v11;
}

- (int)tokenAtCursorIgnoringLineFolding
{
  result = [(CNVCardLexer *)self tokenAtCursor];
  if ((result & 0x8000) != 0)
  {
    cursor = self->_cursor;
    [(CNVCardLexer *)self advancePastEOL];
    if (([(CNVCardLexer *)self nextTokenPeek:1 length:1]& 0x4000) != 0)
    {
      [(CNVCardLexer *)self advanceToPeekPoint];
    }

    else
    {
      self->_cursor = cursor;
    }

    return [(CNVCardLexer *)self tokenAtCursor];
  }

  return result;
}

- (id)nextUnicodeBase64Line:(BOOL *)a3
{
  v5 = [MEMORY[0x277CBEB28] data];
  v6 = [(CNVCardLexer *)self tokenSetForLength:1];
  v23 = 0;
  cursor = self->_cursor;
  if (cursor >= self->_length)
  {
    goto LABEL_19;
  }

  do
  {
    bytes = self->_bytes;
    v22[1] = bytes[cursor];
    v9 = cursor + 1;
    self->_cursor = v9;
    v22[0] = bytes[v9];
    Count = CFArrayGetCount(v6);
    if (!Count)
    {
LABEL_15:
      [v5 appendBytes:v22 length:1];
      goto LABEL_18;
    }

    v11 = Count;
    v12 = 0;
    while (2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, v12);
      v14 = ValueAtIndex[1];
      v15 = v22;
      while (1)
      {
        v17 = *v14++;
        v16 = v17;
        v19 = *v15++;
        v18 = v19;
        if (v19 != v16)
        {
          break;
        }

LABEL_8:
        if (!v18)
        {
          goto LABEL_13;
        }
      }

      if ((v18 - 97) <= 0x19)
      {
        if (((v18 + 96) & 0x5F) != v16)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }

      if (v18)
      {
LABEL_11:
        if (++v12 != v11)
        {
          continue;
        }

        goto LABEL_15;
      }

      break;
    }

LABEL_13:
    v20 = *ValueAtIndex;
    if (*ValueAtIndex == 1025)
    {
      *a3 = 1;
      goto LABEL_18;
    }

    if (!v20)
    {
      goto LABEL_15;
    }

    if ((v20 & 0x8000) != 0)
    {
      --self->_cursor;
      break;
    }

LABEL_18:
    cursor = self->_cursor + 1;
    self->_cursor = cursor;
  }

  while (cursor < self->_length);
LABEL_19:

  return v5;
}

- (id)nextSingleByteBase64Line:(BOOL *)a3
{
  v5 = [MEMORY[0x277CBEB28] data];
  v6 = [(CNVCardLexer *)self tokenSetForLength:1];
  v22[1] = 0;
  for (i = self->_cursor; i < self->_length; self->_cursor = i)
  {
    v22[0] = self->_bytes[i];
    Count = CFArrayGetCount(v6);
    if (Count < 1)
    {
LABEL_20:
      [v5 appendBytes:v22 length:1];
    }

    else
    {
      v9 = Count;
      v10 = 0;
      while (2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v10);
        v12 = ValueAtIndex[1];
        v13 = v22;
        do
        {
          while (1)
          {
            v15 = *v12++;
            v14 = v15;
            v17 = *v13++;
            v16 = v17;
            if (v17 != v14)
            {
              break;
            }

            if (!v14)
            {
              goto LABEL_18;
            }
          }
        }

        while ((v16 - 97) <= 0x19 && v16 != 0 && ((v16 + 96) & 0x5F) == v14);
        if (v16)
        {
          if (++v10 != v9)
          {
            continue;
          }

          goto LABEL_20;
        }

        break;
      }

LABEL_18:
      v20 = *ValueAtIndex;
      if (*ValueAtIndex == 1025)
      {
        *a3 = 1;
        goto LABEL_23;
      }

      if (!v20)
      {
        goto LABEL_20;
      }

      if ((v20 & 0x8000) != 0)
      {
        break;
      }
    }

LABEL_23:
    i = self->_cursor + 1;
  }

  return v5;
}

- (id)nextBase64Line:(BOOL *)a3
{
  if (self->_unicode)
  {
    [(CNVCardLexer *)self nextUnicodeBase64Line:a3];
  }

  else
  {
    [(CNVCardLexer *)self nextSingleByteBase64Line:a3];
  }
  v3 = ;

  return v3;
}

- (id)nextBase64Data
{
  v9 = 0;
  v3 = [MEMORY[0x277CBEB28] data];
  v4 = 0;
  do
  {
    v5 = v4;
    v4 = [(CNVCardLexer *)self nextBase64Line:&v9];

    if (!v4)
    {
      break;
    }

    [v3 appendData:v4];
    v6 = +[CNVCardLexer returnDelimiterData];
    [v3 appendData:v6];

    cursor = self->_cursor;
    [(CNVCardLexer *)self advanceToEOL];
    [(CNVCardLexer *)self advancePastEOL];
    if (![(CNVCardLexer *)self advanceToString])
    {
      v9 = 1;
      self->_cursor = cursor;
      break;
    }
  }

  while ((v9 & 1) == 0);

  return v3;
}

- (int64_t)advanceToUnicodeString
{
  v3 = [(CNVCardLexer *)self tokenSetForLength:1];
  v21 = 0;
  cursor = self->_cursor;
  self->_peekedPoint = cursor;
  if (cursor >= self->_length)
  {
    goto LABEL_16;
  }

  v5 = 0;
  do
  {
    bytes = self->_bytes;
    v20[1] = bytes[cursor];
    v7 = cursor + 1;
    self->_peekedPoint = v7;
    v20[0] = bytes[v7];
    Count = CFArrayGetCount(v3);
    if (!Count)
    {
LABEL_17:
      cursor = self->_peekedPoint - 1;
      self->_peekedPoint = cursor;
      goto LABEL_18;
    }

    v9 = Count;
    v10 = 0;
    while (2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v10);
      v12 = ValueAtIndex[1];
      v13 = v20;
      while (1)
      {
        v15 = *v12++;
        v14 = v15;
        v17 = *v13++;
        v16 = v17;
        if (v17 != v14)
        {
          break;
        }

LABEL_9:
        if (!v16)
        {
          goto LABEL_14;
        }
      }

      if ((v16 - 97) <= 0x19)
      {
        if (((v16 + 96) & 0x5F) != v14)
        {
          goto LABEL_12;
        }

        goto LABEL_9;
      }

      if (v16)
      {
LABEL_12:
        if (++v10 != v9)
        {
          continue;
        }

        goto LABEL_17;
      }

      break;
    }

LABEL_14:
    if ((*(ValueAtIndex + 1) & 0x40) == 0)
    {
      goto LABEL_17;
    }

    ++v5;
    length = self->_length;
    cursor = self->_peekedPoint + 1;
    self->_peekedPoint = cursor;
  }

  while (cursor < length);
LABEL_16:
  v5 = 0;
LABEL_18:
  self->_cursor = cursor;

  return v5;
}

- (int64_t)advanceToSingleByteString
{
  v3 = [(CNVCardLexer *)self tokenSetForLength:1];
  v20[1] = 0;
  cursor = self->_cursor;
  self->_peekedPoint = cursor;
  if (cursor >= self->_length)
  {
LABEL_21:
    v5 = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v20[0] = self->_bytes[cursor];
      Count = CFArrayGetCount(v3);
      if (Count < 1)
      {
        break;
      }

      v7 = Count;
      v8 = 0;
      while (2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v8);
        v10 = ValueAtIndex[1];
        v11 = v20;
        do
        {
          while (1)
          {
            v13 = *v10++;
            v12 = v13;
            v15 = *v11++;
            v14 = v15;
            if (v15 != v12)
            {
              break;
            }

            if (!v12)
            {
              goto LABEL_19;
            }
          }
        }

        while ((v14 - 97) <= 0x19 && v14 != 0 && ((v14 + 96) & 0x5F) == v12);
        if (v14)
        {
          if (++v8 != v7)
          {
            continue;
          }

          goto LABEL_22;
        }

        break;
      }

LABEL_19:
      if ((*(ValueAtIndex + 1) & 0x40) == 0)
      {
        break;
      }

      ++v5;
      length = self->_length;
      cursor = self->_peekedPoint + 1;
      self->_peekedPoint = cursor;
      if (cursor >= length)
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    cursor = self->_peekedPoint;
  }

  self->_cursor = cursor;

  return v5;
}

- (int64_t)advanceToString
{
  if (self->_unicode)
  {
    return [(CNVCardLexer *)self advanceToUnicodeString];
  }

  else
  {
    return [(CNVCardLexer *)self advanceToSingleByteString];
  }
}

- (BOOL)advanceToToken:(int)a3 throughTypes:(int64_t)a4
{
  v7 = 0;
  while (v7 != a3)
  {
    v8 = [(CNVCardLexer *)self readNextToken];
    if (v8 == a3)
    {
      break;
    }

    v7 = v8;
    result = 0;
    v11 = (v7 & a4) == 0 && a4 != 0;
    if ((v7 - 65537) < 2 || v11)
    {
      return result;
    }
  }

  return 1;
}

- (BOOL)advanceToEOLUnicode
{
  length = self->_length;
  cursor = self->_cursor;
  if (cursor >= length)
  {
    return 0;
  }

  v4 = &self->_bytes[cursor + 1];
  while (1)
  {
    v5 = __rev16(*(v4 - 1));
    if (v5 == 10 || v5 == 13)
    {
      break;
    }

    v4 += 2;
    cursor += 2;
    self->_cursor = cursor;
    if (cursor >= length)
    {
      return 0;
    }
  }

  return 1;
}

- (BOOL)advanceToEOLSingle
{
  length = self->_length;
  cursor = self->_cursor;
  v4 = length - cursor;
  if (length <= cursor)
  {
    return 0;
  }

  else
  {
    v5 = &self->_bytes[cursor];
    v6 = cursor + 1;
    v7 = 1;
    do
    {
      v9 = *v5++;
      v8 = v9;
      if (v9 == 10 || v8 == 13)
      {
        break;
      }

      self->_cursor = v6;
      v7 = v6++ < length;
      --v4;
    }

    while (v4);
  }

  return v7;
}

- (BOOL)advanceToEOL
{
  if (self->_unicode)
  {
    return [(CNVCardLexer *)self advanceToEOLUnicode];
  }

  else
  {
    return [(CNVCardLexer *)self advanceToEOLSingle];
  }
}

- (BOOL)advancePastEOLUnicode
{
  v3 = [(CNVCardLexer *)self tokenSetForLength:1];
  v21 = 0;
  cursor = self->_cursor;
  self->_peekedPoint = cursor;
  if (cursor >= self->_length)
  {
    goto LABEL_15;
  }

  do
  {
    bytes = self->_bytes;
    v20[1] = bytes[cursor];
    v6 = cursor + 1;
    self->_peekedPoint = v6;
    v20[0] = bytes[v6];
    Count = CFArrayGetCount(v3);
    if (!Count)
    {
LABEL_16:
      cursor = self->_peekedPoint - 1;
      self->_peekedPoint = cursor;
      v18 = 1;
      goto LABEL_17;
    }

    v8 = Count;
    v9 = 0;
    while (2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v9);
      v11 = ValueAtIndex[1];
      v12 = v20;
      while (1)
      {
        v14 = *v11++;
        v13 = v14;
        v16 = *v12++;
        v15 = v16;
        if (v16 != v13)
        {
          break;
        }

LABEL_8:
        if (!v15)
        {
          goto LABEL_13;
        }
      }

      if ((v15 - 97) <= 0x19)
      {
        if (((v15 + 96) & 0x5F) != v13)
        {
          goto LABEL_11;
        }

        goto LABEL_8;
      }

      if (v15)
      {
LABEL_11:
        if (++v9 != v8)
        {
          continue;
        }

        goto LABEL_16;
      }

      break;
    }

LABEL_13:
    if ((*(ValueAtIndex + 1) & 0x80) == 0)
    {
      goto LABEL_16;
    }

    length = self->_length;
    cursor = self->_peekedPoint + 1;
    self->_peekedPoint = cursor;
  }

  while (cursor < length);
LABEL_15:
  v18 = 0;
LABEL_17:
  self->_cursor = cursor;

  return v18;
}

- (BOOL)advancePastEOLSingle
{
  self->_peekedPoint = self->_cursor;
  v3 = [(CNVCardLexer *)self tokenSetForLength:1];
  v20[1] = 0;
  peekedPoint = self->_peekedPoint;
  if (peekedPoint >= self->_length)
  {
LABEL_20:
    v18 = 0;
  }

  else
  {
    while (1)
    {
      v20[0] = self->_bytes[peekedPoint];
      Count = CFArrayGetCount(v3);
      if (Count < 1)
      {
        break;
      }

      v6 = Count;
      v7 = 0;
      while (2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
        v9 = ValueAtIndex[1];
        v10 = v20;
        do
        {
          while (1)
          {
            v12 = *v9++;
            v11 = v12;
            v14 = *v10++;
            v13 = v14;
            if (v14 != v11)
            {
              break;
            }

            if (!v11)
            {
              goto LABEL_18;
            }
          }
        }

        while ((v13 - 97) <= 0x19 && v13 != 0 && ((v13 + 96) & 0x5F) == v11);
        if (v13)
        {
          if (++v7 != v6)
          {
            continue;
          }

          goto LABEL_21;
        }

        break;
      }

LABEL_18:
      if ((*(ValueAtIndex + 1) & 0x80) == 0)
      {
        break;
      }

      length = self->_length;
      peekedPoint = self->_peekedPoint + 1;
      self->_peekedPoint = peekedPoint;
      if (peekedPoint >= length)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    peekedPoint = self->_peekedPoint;
    v18 = 1;
  }

  self->_cursor = peekedPoint;

  return v18;
}

- (BOOL)advancePastEOL
{
  if (self->_unicode)
  {
    return [(CNVCardLexer *)self advancePastEOLUnicode];
  }

  else
  {
    return [(CNVCardLexer *)self advancePastEOLSingle];
  }
}

- (BOOL)advancedPastToken:(int)a3
{
  cursor = self->_cursor;
  v4 = cursor;
  if (cursor < self->_length)
  {
    while (([(CNVCardLexer *)self tokenAtCursor]& a3) != 0)
    {
      if (self->_unicode)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      v4 = self->_cursor + v7;
      self->_cursor = v4;
      if (v4 >= self->_length)
      {
        return v4 > cursor;
      }
    }

    v4 = self->_cursor;
  }

  return v4 > cursor;
}

- (void)nextTokenPeekSingle:(os_log_t)log length:.cold.1(uint64_t *a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 134218240;
  v6 = v3;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_2771F5000, log, OS_LOG_TYPE_ERROR, "vCard syntax error, character %ld : %c", &v5, 0x12u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)nextStringInEncoding:(os_log_t)log quotedPrintable:stopTokens:trim:maximumValueLength:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_fault_impl(&dword_2771F5000, log, OS_LOG_TYPE_FAULT, "Cursor did not move (%lu --> %lu), but lexar did not detect a value boundary", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end