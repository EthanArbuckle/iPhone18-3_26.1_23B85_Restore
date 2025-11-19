uint64_t sub_27708AE64(unsigned int a1)
{
  if (a1 < 7)
  {
    return aSidcptf[a1];
  }

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"unichar TSUCustomFormatTokenIdentifierCharacterForTokenType(TSUCustomNumberFormatTokenType)"];
  +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormatTokenizer.m"], 352, 0, "Invalid custom number format token type!");
  +[TSUAssertionHandler logBacktraceThrottled];
  return 83;
}

uint64_t sub_27708AF00(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = sub_27708AE64(a3);
  if (a4)
  {
    return [MEMORY[0x277CCAB68] stringWithFormat:@"%C%C%@", 63743, v5, a4];
  }

  else
  {
    return [MEMORY[0x277CCAB68] stringWithFormat:@"%C%C", 63743, v5, v7];
  }
}

BOOL sub_27708AFB8(void *a1, uint64_t a2, unsigned int a3)
{
  if ([a1 length] < 2 || objc_msgSend(a1, "characterAtIndex:", 0) != 63743)
  {
    return 0;
  }

  v5 = [a1 characterAtIndex:1];
  return sub_27708AE64(a3) == v5;
}

uint64_t sub_27708B028(void *a1)
{
  if (([a1 tsu_isSpecialCustomNumberFormatTokenOfType:1] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUCustomFormatTokenizerAdditions) tsu_numberOfDigitsInCustomNumberFormatIntegerToken]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormatTokenizer.m"], 403, 0, "Wrong token type!");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if ([a1 length] < 3)
  {
    return 0;
  }

  v3 = 0;
  v4 = 2;
  do
  {
    if ([a1 characterAtIndex:v4] != 44)
    {
      ++v3;
    }

    ++v4;
  }

  while (v4 < [a1 length]);
  return v3;
}

BOOL sub_27708B108(void *a1)
{
  if (([a1 tsu_isSpecialCustomNumberFormatTokenOfType:1] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUCustomFormatTokenizerAdditions) tsu_customFormatIntegerTokenUsesSeparator]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormatTokenizer.m"], 413, 0, "Wrong token type!");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return [a1 characterAtIndex:{objc_msgSend(a1, "length") - 1}] == 44;
}

void *sub_27708B1B8(void *a1, uint64_t a2, void *a3)
{
  if (!a3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUCustomFormatTokenizerAdditions) tsu_stringByInsertingFormatGroupingSeparators:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormatTokenizer.m"], 418, 0, "Need locale here.");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v6 = [MEMORY[0x277CCAB68] string];
  v7 = [a3 groupingSize];
  v8 = [a1 length];
  if (v8)
  {
    v9 = -v8;
    v10 = v8 - 1;
    v11 = 1;
    do
    {
      [v6 insertString:objc_msgSend(MEMORY[0x277CCACA8] atIndex:{"stringWithFormat:", @"%C", objc_msgSend(a1, "characterAtIndex:", v10)), 0}];
      if (v9 + v11 && v7 && !(v11 % v7))
      {
        [v6 insertString:@" atIndex:{", 0}];
      }

      ++v11;
      --v10;
    }

    while (v9 + v11 != 1);
  }

  return v6;
}

void *sub_27708B310(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, void *a6)
{
  if (!a6)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSString(TSUCustomFormatTokenizerAdditions) tsu_customNumberFormatIntegerTokenDisplayStringWithDigits:separator:digitString:locale:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormatTokenizer.m"], 438, 0, "Need locale here.");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v11 = [MEMORY[0x277CCAB68] string];
  v12 = [a6 groupingSize];
  if (a3)
  {
    v13 = v12;
    v14 = 0;
    v15 = *MEMORY[0x277CBE6B8];
    do
    {
      if (v14 && v13)
      {
        if (a3 % v13)
        {
          v16 = 1;
        }

        else
        {
          v16 = a4 == 0;
        }

        if (!v16)
        {
          [v11 appendString:{objc_msgSend(objc_msgSend(MEMORY[0x277CBEAF8], "currentLocale"), "objectForKey:", v15)}];
        }
      }

      [v11 appendString:a5];
      ++v14;
      --a3;
    }

    while (a3);
  }

  return v11;
}

uint64_t sub_27708B438(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  for (i = [MEMORY[0x277CCAB68] stringWithCapacity:?]; a3; --a3)
  {
    [i appendString:a5];
  }

  if (a4)
  {
    [i appendString:{@", "}];
  }

  v9 = MEMORY[0x277CCAB68];

  return [v9 tsu_customNumberFormatTokenStringOfType:1 content:i];
}

void *sub_27708B4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = [MEMORY[0x277CCAB68] string]; a3; --a3)
  {
    [i appendString:a4];
  }

  return i;
}

uint64_t sub_27708B520(void *a1)
{
  if (([a1 tsu_isSpecialCustomNumberFormatTokenOfType:2] & 1) == 0)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSString(TSUCustomFormatTokenizerAdditions) tsu_numberOfDigitsInCustomNumberFormatDecimalToken]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v2, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCustomFormatTokenizer.m"], 472, 0, "Wrong token type!");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return [a1 length] - 3;
}

void *sub_27708B5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [MEMORY[0x277CCAB68] string];
  v7 = [MEMORY[0x277CBEAF8] currentLocale];
  [v6 appendString:{objc_msgSend(v7, "objectForKey:", *MEMORY[0x277CBE6A8])}];
  for (; a3; --a3)
  {
    [v6 appendString:a4];
  }

  return v6;
}

uint64_t sub_27708B640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [MEMORY[0x277CCAB68] stringWithCapacity:?];
  if (a3 != -1)
  {
    v7 = a3 + 1;
    do
    {
      [v6 appendString:a4];
      --v7;
    }

    while (v7);
  }

  v8 = MEMORY[0x277CCAB68];

  return [v8 tsu_customNumberFormatTokenStringOfType:2 content:v6];
}

void *sub_27708B6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v8 = [MEMORY[0x277CCAB68] string];
  v9 = v8;
  if (a5)
  {
    [v8 appendString:@"."];
  }

  for (; a3; --a3)
  {
    [v9 appendString:a4];
  }

  return v9;
}

__CFString *sub_27708B728(void *a1)
{
  v2 = @"0";
  if ([a1 rangeOfString:@"0"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = @"#";
    if ([a1 rangeOfString:@"#"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      return @"?";
    }
  }

  return v2;
}

id sub_27708B794(void *a1)
{
  if ([a1 length] < 3)
  {

    return +[TSULocale currentLocaleCurrencyCode];
  }

  else
  {

    return [a1 substringFromIndex:2];
  }
}

void sub_27708BF50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 checkoutDateParser];
  [v1 returnDateParser:v2];
}

intptr_t sub_27708C19C(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 8), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_group_wait(*(*(a1 + 32) + 24), 0xFFFFFFFFFFFFFFFFLL);
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 8);

  return dispatch_semaphore_signal(v2);
}

void TSUDecimal::TSUDecimal(TSUDecimal *this, unint64_t a2, unint64_t a3)
{
  this->var0.var0[0] = a2;
  this->var0.var0[1] = a3;
}

{
  this->var0.var0[0] = a2;
  this->var0.var0[1] = a3;
}

unint64_t *TSUDecimal::operator=(unint64_t *a1, double a2)
{
  v5 = 0;
  *a1 = sub_2770499D8(0, &v5, a2);
  a1[1] = v3;
  return a1;
}

uint64_t *TSUDecimal::operator=(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_2770C95C0(a2);
  a1[1] = v3;
  return a1;
}

{
  *a1 = sub_2770C95D8(a2);
  a1[1] = v3;
  return a1;
}

void *TSUDecimal::operator=(void *a1)
{
  sub_2770C95F4();
  *a1 = v2;
  a1[1] = v3;
  return a1;
}

{
  sub_2770C95F4();
  *a1 = v2;
  a1[1] = v3;
  return a1;
}

double TSUDecimal::setAsPi(TSUDecimal *this)
{
  result = 1.47371982e96;
  *this = xmmword_277134000;
  return result;
}

TSUDecimal *TSUDecimal::operator=(TSUDecimal *a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *a2;
  if ((*a2 & 0x11000) != 0)
  {
    goto LABEL_2;
  }

  if ((v3 & 0x800) == 0 && *(a2 + 12) == 10)
  {
    if ((v3 & 0x40) != 0)
    {
      v70 = 0;
      v25 = a2[2];
      v2->var0.var0[0] = sub_27702BE0C([v25 UTF8String], 4, &v70);
      v2->var0.var0[1] = v26;

      v27 = a2[4];
      v28 = sub_27702BE0C([v27 UTF8String], 4, &v70);
      v30 = v29;

      v31 = a2[5];
      v32 = sub_27702BE0C([v31 UTF8String], 4, &v70);
      v34 = v33;

      v70 = 0;
      v35 = sub_2770CF7C4(v28, v30, v32, v34, 4, &v70);
      if ((v70 & 4) != 0)
      {
LABEL_2:
        *v2 = xmmword_277123880;
        return v2;
      }

      v37 = v35;
      v38 = v36;
      if ((*a2 & 0x1C) != 0 && !sub_2770C7278(v35, v36))
      {
        sub_2770C7300();
        v37 = v39;
        v38 = v40;
      }

      v7 = sub_277055134(v2->var0.var0[0], v2->var0.var0[1], v37, v38, 4, &v70);
      v2->var0.var0[0] = v7;
      v2->var0.var0[1] = v8;
      if ((*(a2 + 1) & 6) == 0)
      {
        return v2;
      }

      v71 = 0;
    }

    else
    {
      v70 = 0;
      v5 = a2[2];
      v2->var0.var0[0] = sub_27702BE0C([v5 UTF8String], 4, &v70);
      v2->var0.var0[1] = v6;

      if ((*(a2 + 1) & 6) == 0)
      {
        return v2;
      }

      v71 = 0;
      v7 = v2->var0.var0[0];
      v8 = v2->var0.var0[1];
    }

    v2->var0.var0[0] = sub_27705C7FC(v7, v8, -2, 0, &v71);
    v2->var0.var0[1] = v41;
    return v2;
  }

  a1->var0.var0[0] = sub_2770C95C0(0);
  v2->var0.var0[1] = v9;
  v68 = a2[2];
  v69 = [v68 length];
  v10 = sub_2770C95C0(*(a2 + 12));
  if (!v69)
  {
    v42 = 0;
    goto LABEL_28;
  }

  v12 = v10;
  v13 = v11;
  v14 = 0;
  while (1)
  {
    v15 = [v68 characterAtIndex:v14];
    v16 = TSUNumberOrDateLexer::digitValueInBase(v15, *(a2 + 12));
    if (v16 >= *(a2 + 12))
    {
      break;
    }

    v71 = 0;
    v2->var0.var0[0] = sub_2770D3210(v2->var0.var0[0], v2->var0.var0[1], v12, v13, 0, &v71);
    v2->var0.var0[1] = v17;
    v18 = sub_2770C95C0(v16);
    v71 = 0;
    v2->var0.var0[0] = sub_277055134(v2->var0.var0[0], v2->var0.var0[1], v18, v19, 0, &v71);
    v2->var0.var0[1] = v20;
LABEL_17:
    if (v69 == ++v14)
    {
      goto LABEL_35;
    }
  }

  if (v15 == 45)
  {
    if (!sub_2770C7278(v2->var0.var0[0], v2->var0.var0[1]))
    {
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUDecimal &TSUDecimal::operator=(const TSUParsedNumber &)"];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDecimal.mm"];
      [TSUAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:142 isFatal:0 description:"Only allowing leading minus"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    goto LABEL_17;
  }

  if (v15 != 46)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUDecimal &TSUDecimal::operator=(const TSUParsedNumber &)"];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDecimal.mm"];
    [TSUAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:148 isFatal:0 description:"Unexpected char while parsing in base %d: %c (%lu)", *(a2 + 12), v15, v15];

    +[TSUAssertionHandler logBacktraceThrottled];
    *v2 = xmmword_277123880;
    goto LABEL_17;
  }

  v42 = v14 + 1;
LABEL_28:
  if (v42 < v69)
  {
    v43 = sub_2770C95C0(0);
    v45 = v44;
    v46 = sub_2770C95C0(1);
    v48 = v47;
    do
    {
      v49 = [v68 characterAtIndex:v42];
      v50 = TSUNumberOrDateLexer::digitValueInBase(v49, *(a2 + 12));
      v51 = sub_2770C95C0(*(a2 + 12));
      v71 = 0;
      v46 = sub_2770CF7C4(v46, v48, v51, v52, 0, &v71);
      v48 = v53;
      if (v50 >= *(a2 + 12))
      {
        v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSUDecimal &TSUDecimal::operator=(const TSUParsedNumber &)"];
        v67 = v48;
        v60 = v46;
        v61 = v2;
        v62 = v45;
        v63 = v43;
        v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDecimal.mm"];
        [TSUAssertionHandler handleFailureInFunction:v59 file:v64 lineNumber:167 isFatal:0 description:"Unexpected char while parsing in base %d: %c (%lu)", *(a2 + 12), v49, v49];

        +[TSUAssertionHandler logBacktraceThrottled];
        v43 = v63;
        v45 = v62;
        v2 = v61;
        v46 = v60;
        v48 = v67;
        *v2 = xmmword_277123880;
      }

      else
      {
        v54 = sub_2770C95C0(v50);
        v71 = 0;
        v56 = sub_2770D3210(v46, v48, v54, v55, 0, &v71);
        v71 = 0;
        v43 = sub_277055134(v43, v45, v56, v57, 0, &v71);
        v45 = v58;
      }

      ++v42;
    }

    while (v69 != v42);
    v71 = 0;
    v2->var0.var0[0] = sub_277055134(v2->var0.var0[0], v2->var0.var0[1], v43, v45, 0, &v71);
    v2->var0.var0[1] = v65;
  }

LABEL_35:
  if ((*a2 & 0x1C) != 0)
  {
    TSUDecimal::negate(v2);
  }

  return v2;
}

uint64_t TSUDecimal::operator*=(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  *a1 = sub_2770D3210(*a1, *(a1 + 8), *a2, *(a2 + 8), 0, &v5);
  *(a1 + 8) = v3;
  return a1;
}

uint64_t TSUDecimal::operator+=(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  *a1 = sub_277055134(*a1, *(a1 + 8), *a2, *(a2 + 8), 0, &v5);
  *(a1 + 8) = v3;
  return a1;
}

unint64_t *TSUDecimal::operator/=(unint64_t *a1, unint64_t *a2)
{
  v5 = 0;
  *a1 = sub_2770CF7C4(*a1, a1[1], *a2, a2[1], 0, &v5);
  a1[1] = v3;
  return a1;
}

void TSUDecimal::negate(TSUDecimal *this)
{
  if (!sub_2770C7278(this->var0.var0[0], this->var0.var0[1]))
  {
    sub_2770C7300();
    this->var0.var0[0] = v2;
    this->var0.var0[1] = v3;
  }
}

unint64_t TSUDecimal::shift10Places(TSUDecimal *this, int a2)
{
  v5 = 0;
  result = sub_27705C7FC(this->var0.var0[0], this->var0.var0[1], a2, 0, &v5);
  this->var0.var0[0] = result;
  this->var0.var0[1] = v4;
  return result;
}

double TSUDecimal::truncateToDoubleWithRounding(TSUDecimal *this)
{
  result = TSUDecimal::doubleValue(this);
  if (result <= 0.0)
  {
    if (result >= 0.0)
    {
      return result;
    }

    v2 = -0.0000001;
  }

  else
  {
    v2 = 0.0000001;
  }

  return trunc(result + v2);
}

double TSUDecimal::doubleValue(TSUDecimal *this)
{
  v2 = sub_2770C7278(this->var0.var0[0], this->var0.var0[1]);
  result = 0.0;
  if (!v2)
  {
    v4 = 0;
    return sub_2770493A0(this->var0.var0[0], this->var0.var0[1], 4, &v4);
  }

  return result;
}

uint64_t TSUDecimal::truncateWithRounding(TSUDecimal *this)
{
  v1 = TSUDecimal::doubleValue(this);
  if (v1 <= 0.0)
  {
    if (v1 >= 0.0)
    {
      goto LABEL_6;
    }

    v2 = -0.0000001;
  }

  else
  {
    v2 = 0.0000001;
  }

  v1 = trunc(v1 + v2);
LABEL_6:
  if (v1 > 2147483650.0)
  {
    return 0x7FFFFFFFLL;
  }

  if (v1 < -2147483650.0)
  {
    return 0x80000000;
  }

  return v1;
}

unint64_t TSUDecimal::truncatedIntegerValue(TSUDecimal *this, int a2)
{
  if (a2)
  {
    v7 = *this;
    TSUDecimal::trunc(&v7);
    v8 = 0;
    v3 = v7.var0.var0[1];
    v2 = v7.var0.var0[0];
    v4 = &v8;
  }

  else
  {
    LODWORD(v7.var0.var0[0]) = 0;
    v2 = this->var0.var0[0];
    v3 = this->var0.var0[1];
    v4 = &v7;
  }

  return sub_27709C8F8(v2, v3, v4);
}

double TSUDecimal::trunc(TSUDecimal *this)
{
  v4.var0.var0[0] = sub_2770C95C0(0);
  v4.var0.var0[1] = v2;
  sub_2770C95C0(0);
  v5 = 0;
  sub_27705822C(this->var0.var0[0], this->var0.var0[1], v4.var0.var0, &v5);
  result = *v4.var0.var0;
  *this = v4;
  return result;
}

uint64_t TSUDecimal::truncatedUIntegerValue(TSUDecimal *this, int a2)
{
  if (a2)
  {
    v7 = *this;
    TSUDecimal::trunc(&v7);
    v8 = 0;
    v3 = v7.var0.var0[1];
    v2 = v7.var0.var0[0];
    v4 = &v8;
  }

  else
  {
    LODWORD(v7.var0.var0[0]) = 0;
    v2 = this->var0.var0[0];
    v3 = this->var0.var0[1];
    v4 = &v7;
  }

  return sub_2770B1D10(v2, v3, v4);
}

id TSUDecimal::fullDescription(TSUDecimal *this)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[999] = 0;
  sub_27702B264(v3, this->var0.var0[0], this->var0.var0[1]);
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];

  return v1;
}

TSUDecimal *TSUDecimal::getAsNumericString(TSUDecimal *this, char *a2, int a3)
{
  if (a2)
  {
    if (a3)
    {
      return sub_27702B264(a2, this->var0.var0[0], this->var0.var0[1]);
    }
  }

  return this;
}

__CFString *TSUDecimal::fractionDigits(TSUDecimal *this)
{
  v21 = *MEMORY[0x277D85DE8];
  v20[998] = 0;
  v17[0] = sub_2770C95C0(0);
  v17[1] = v2;
  sub_2770C95C0(0);
  __b[0] = 0;
  v3 = sub_27705822C(this->var0.var0[0], this->var0.var0[1], v17, __b);
  v5 = v4;
  if (sub_2770C7278(v3, v4))
  {
    goto LABEL_2;
  }

  sub_27702B264(&__s, v3, v5);
  v8 = strchr(&__s, 69);
  v9 = strchr(&__s, 46);
  if (v8)
  {
    if (v9)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUDecimal::fractionDigits() const"];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDecimal.mm"];
      [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:386 isFatal:0 description:"It doesn't seem like bid_ methods every return mixed, but string was: %s", &__s];

      +[TSUAssertionHandler logBacktraceThrottled];
LABEL_2:
      v6 = &stru_28862C2A0;
      goto LABEL_3;
    }

    v12 = strtol(v8 + 1, 0, 10);
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_2;
    }

    v13 = -v12;
    *v8 = 0;
    if (__s == 45 || __s == 43)
    {
      v14 = strlen(&__s);
      memmove(&__s, v20, v14);
    }

    memset(__b, 48, v13);
    v15 = __b + v13;
    *v15 = 0;
    v16 = strlen(&__s);
    memcpy(&v15[-v16], &__s, v16);
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:__b];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_2;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v9 + 1];
  }

LABEL_3:

  return v6;
}

unint64_t TSUDecimal::split(TSUDecimal *this, TSUDecimal *a2, TSUDecimal *a3)
{
  v6 = 0;
  result = sub_27705822C(this->var0.var0[0], this->var0.var0[1], a2->var0.var0, &v6);
  a3->var0.var0[0] = result;
  a3->var0.var0[1] = v5;
  return result;
}

BOOL TSUDecimal::extractFraction(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, int a5)
{
  sub_2770C95C0(0);
  v54 = 0;
  v50 = a2;
  v8 = sub_27705822C(*a1, *(a1 + 8), a2, &v54);
  v10 = v9;
  if (sub_2770C7270(v8, v9) && !sub_2770C7278(v8, v10))
  {
    sub_2770C7300();
    v8 = v11;
    v10 = v12;
  }

  v13 = 2;
  v14 = 9;
  v15 = a5;
  v16 = 99;
  if (a5 == -2)
  {
    v15 = 2;
  }

  else
  {
    v16 = a5;
  }

  if (a5 == -1)
  {
    v17 = 1;
  }

  else
  {
    v14 = v16;
    v17 = a5 == -2;
  }

  *a3 = 0;
  if (a5 != -1)
  {
    v13 = v15;
  }

  *a4 = 0;
  if (a5 == -3)
  {
    v18 = 999;
  }

  else
  {
    v18 = v14;
  }

  if (a5 == -3)
  {
    v17 = 1;
  }

  v51 = v17;
  v54 = 0;
  if (a5 == -3)
  {
    v19 = 2;
  }

  else
  {
    v19 = v13;
  }

  v20 = sub_2770499D8(0, &v54, 1.79769313e308);
  v22 = v21;
  do
  {
    sub_2770C95F4();
    v54 = 0;
    v25 = sub_2770D3210(v8, v10, v23, v24, 0, &v54);
    v54 = 0;
    v27 = sub_277090AD0(v25, v26, &v54);
    v29 = v28;
    sub_2770C95F4();
    v54 = 0;
    if (!sub_2770978E0(v27, v29, v30, v31, &v54))
    {
      sub_2770C95F4();
      v54 = 0;
      v34 = sub_2770CF7C4(v27, v29, v32, v33, 0, &v54);
      v54 = 0;
      sub_27705820C(v8, v10, v34, v35, 0, &v54);
      sub_2770C7308();
      v37 = v36;
      v39 = v38;
      v54 = 0;
      if (sub_277097C14(v36, v38, v20, v22, &v54))
      {
        *a4 = v19;
        v54 = 0;
        *a3 = sub_27709C8F8(v27, v29, &v54);
        v20 = v37;
        v22 = v39;
      }
    }

    ++v19;
  }

  while (v19 <= v18);
  v40 = *a3;
  v41 = *a4;
  if (v51)
  {
    v42 = *a4;
    if (v40)
    {
      v43 = *a3;
      v44 = *a4;
      do
      {
        v42 = v43;
        v43 = v44 % v43;
        v44 = v42;
      }

      while (v43);
    }

    if (v42 >= 2)
    {
      *a3 = v40 / v42;
      v41 = *a4 / v42;
      *a4 = v41;
      v40 = *a3;
    }
  }

  if (v40 == v41)
  {
    v45 = sub_2770C95C0(1);
    v54 = 0;
    v47 = sub_277055134(*v50, v50[1], v45, v46, 0, &v54);
    v40 = 0;
    *v50 = v47;
    v50[1] = v48;
    *a3 = 0;
    v41 = *a4;
  }

  return v40 < v41;
}

unint64_t TSUDecimal::round(TSUDecimal *this)
{
  v4 = 0;
  result = sub_277090AD0(this->var0.var0[0], this->var0.var0[1], &v4);
  this->var0.var0[0] = result;
  this->var0.var0[1] = v3;
  return result;
}

void TSUDecimal::abs(TSUDecimal *this)
{
  sub_2770C7308();
  this->var0.var0[0] = v2;
  this->var0.var0[1] = v3;
}

unint64_t TSUDecimal::add(TSUDecimal *this, const TSUDecimal *a2, TSUDecimal *a3)
{
  v6 = 0;
  result = sub_277055134(this->var0.var0[0], this->var0.var0[1], a2->var0.var0[0], a2->var0.var0[1], 0, &v6);
  a3->var0.var0[0] = result;
  a3->var0.var0[1] = v5;
  return result;
}

uint64_t TSUDecimal::operator-=(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  *a1 = sub_27705820C(*a1, *(a1 + 8), *a2, *(a2 + 8), 0, &v5);
  *(a1 + 8) = v3;
  return a1;
}

unint64_t TSUDecimal::subtract(TSUDecimal *this, const TSUDecimal *a2, TSUDecimal *a3)
{
  v6 = 0;
  result = sub_27705820C(this->var0.var0[0], this->var0.var0[1], a2->var0.var0[0], a2->var0.var0[1], 0, &v6);
  a3->var0.var0[0] = result;
  a3->var0.var0[1] = v5;
  return result;
}

uint64_t TSUDecimal::multiply(TSUDecimal *this, const TSUDecimal *a2, TSUDecimal *a3)
{
  v6 = 0;
  result = sub_2770D3210(this->var0.var0[0], this->var0.var0[1], a2->var0.var0[0], a2->var0.var0[1], 0, &v6);
  a3->var0.var0[0] = result;
  a3->var0.var0[1] = v5;
  return result;
}

uint64_t TSUDecimal::divide(TSUDecimal *this, const TSUDecimal *a2, TSUDecimal *a3)
{
  v6 = 0;
  a3->var0.var0[0] = sub_2770CF7C4(this->var0.var0[0], this->var0.var0[1], a2->var0.var0[0], a2->var0.var0[1], 0, &v6);
  a3->var0.var0[1] = v4;
  return (v6 << 29 >> 31) & 5;
}

void TSUDecimal::operator-(uint64_t a1)
{
  if (!sub_2770C7278(*a1, *(a1 + 8)))
  {

    sub_2770C7300();
  }
}

uint64_t TSUDecimal::floatingPointEqual(TSUDecimal *this, TSUDecimal *a2, TSUDecimal *a3, TSULocale *a4)
{
  v6 = a3;
  v10 = 0;
  if (sub_2770978E0(this->var0.var0[0], this->var0.var0[1], a2->var0.var0[0], a2->var0.var0[1], &v10))
  {
    v7 = 1;
  }

  else
  {
    v8 = TSUDecimal::doubleValue(this);
    v7 = [(TSUDecimal *)v6 isEqualViaFormattingAsDouble:v8];
  }

  return v7;
}

uint64_t TSUDecimal::mod(TSUDecimal *this, const TSUDecimal *a2, TSUDecimal *a3)
{
  v6 = 0;
  a3->var0.var0[0] = sub_2770708B8(this->var0.var0[0], this->var0.var0[1], a2->var0.var0[0], a2->var0.var0[1], &v6);
  a3->var0.var0[1] = v4;
  return (v6 << 29 >> 31) & 5;
}

uint64_t TSUDecimal::remainder(TSUDecimal *this, const TSUDecimal *a2, TSUDecimal *a3)
{
  sub_2770C95C0(0);
  v13 = 0;
  v12.var0.var0[0] = sub_2770CF7C4(this->var0.var0[0], this->var0.var0[1], a2->var0.var0[0], a2->var0.var0[1], 0, &v13);
  v12.var0.var0[1] = v6;
  if ((v13 & 4) != 0)
  {
    *a3 = xmmword_277123880;
    return 5;
  }

  else
  {
    *a3 = *this;
    TSUDecimal::trunc(&v12);
    v13 = 0;
    v7 = sub_2770D3210(v12.var0.var0[0], v12.var0.var0[1], a2->var0.var0[0], a2->var0.var0[1], 0, &v13);
    v13 = 0;
    v9 = sub_27705820C(a3->var0.var0[0], a3->var0.var0[1], v7, v8, 0, &v13);
    result = 0;
    a3->var0.var0[0] = v9;
    a3->var0.var0[1] = v11;
  }

  return result;
}

unint64_t TSUDecimal::frexp(TSUDecimal *this, int *a2)
{
  result = sub_2770C95C0(0);
  if (a2)
  {
    v5 = this->var0.var0[0];
    v6 = this->var0.var0[1];

    return sub_2770BBEE8(v5, v6, a2);
  }

  return result;
}

uint64_t TSUDecimal::numberOfWholeDigits(TSUDecimal *this)
{
  if (TSUDecimal::isInf(this))
  {
    return 0;
  }

  v2 = sub_2770C72F0(this->var0.var0[0], this->var0.var0[1]);
  if (v2)
  {
    return 0;
  }

  v4 = 0;
  sub_2770C95C0(v2);
  sub_2770BBEE8(this->var0.var0[0], this->var0.var0[1], &v4);
  return v4 & ~(v4 >> 31);
}

uint64_t TSUDecimal::numberOfFractionalDigits(TSUDecimal *this)
{
  if (TSUDecimal::isInf(this))
  {
    return 0;
  }

  v2 = sub_2770C72F0(this->var0.var0[0], this->var0.var0[1]);
  if (v2)
  {
    return 0;
  }

  v16[0] = sub_2770C95C0(v2);
  v16[1] = v5;
  sub_2770C95C0(0);
  v17 = 0;
  v6 = sub_27705822C(this->var0.var0[0], this->var0.var0[1], v16, &v17);
  v8 = v7;
  v15 = 0;
  sub_2770C95C0(0);
  v9 = sub_2770BBEE8(v6, v8, &v15);
  v11 = v9;
  v12 = v10;
  v3 = -v15 & (v15 >> 31);
  while (!sub_2770C7278(v9, v10))
  {
    ++v3;
    v17 = 0;
    v13 = sub_27705C7FC(v11, v12, 1, 0, &v17);
    v17 = 0;
    v9 = sub_27705822C(v13, v14, v16, &v17);
    v11 = v9;
    v12 = v10;
  }

  return v3;
}

uint64_t TSUDecimal::numberOfSignificantDigits(TSUDecimal *this)
{
  if (TSUDecimal::isInf(this))
  {
    return 0;
  }

  if (sub_2770C72F0(this->var0.var0[0], this->var0.var0[1]))
  {
    return 0;
  }

  v2 = sub_2770C7278(this->var0.var0[0], this->var0.var0[1]);
  if (v2)
  {
    return 0;
  }

  v20 = sub_2770C95C0(v2);
  v21 = v5;
  sub_2770C95C0(0);
  v22 = 0;
  v6 = sub_27705822C(this->var0.var0[0], this->var0.var0[1], &v20, &v22);
  v8 = v7;
  if (sub_2770C7278(v6, v7))
  {
    v9 = TSUDecimal::numberOfWholeDigits(this);
    do
    {
      v3 = v9;
      v22 = 0;
      v20 = sub_27705C7FC(v20, v21, -1, 0, &v22);
      v21 = v10;
      v22 = 0;
      v11 = sub_27705822C(v20, v10, &v20, &v22);
      if (!sub_2770C7278(v11, v12))
      {
        break;
      }

      v13 = sub_2770C7278(v20, v21);
      v9 = v3 - 1;
    }

    while (!v13);
  }

  else if (sub_2770C7278(v20, v21))
  {
    v14 = TSUDecimal::numberOfFractionalDigits(this);
    do
    {
      v3 = v14;
      v22 = 0;
      v15 = sub_27705C7FC(v6, v8, 1, 0, &v22);
      v22 = 0;
      v6 = sub_27705822C(v15, v16, &v20, &v22);
      v8 = v17;
      if (!sub_2770C7278(v20, v21))
      {
        break;
      }

      v18 = sub_2770C7278(v6, v8);
      v14 = v3 - 1;
    }

    while (!v18);
  }

  else
  {
    v19 = TSUDecimal::numberOfWholeDigits(this);
    return TSUDecimal::numberOfFractionalDigits(this) + v19;
  }

  return v3;
}

uint64_t TSUDecimal::fma(TSUDecimal *this, const TSUDecimal *a2, const TSUDecimal *a3, TSUDecimal *a4)
{
  v7 = 0;
  result = sub_2770E0690(this->var0.var0[0], this->var0.var0[1], a2->var0.var0[0], a2->var0.var0[1], a3->var0.var0[0], a3->var0.var0[1], 0, &v7);
  a4->var0.var0[0] = result;
  a4->var0.var0[1] = v6;
  return result;
}

unint64_t TSUDecimal::roundUp(TSUDecimal *this)
{
  v4 = 0;
  result = sub_2770903FC(this->var0.var0[0], this->var0.var0[1], &v4);
  this->var0.var0[0] = result;
  this->var0.var0[1] = v3;
  return result;
}

unint64_t TSUDecimal::roundDown(TSUDecimal *this)
{
  v4 = 0;
  result = sub_277090030(this->var0.var0[0], this->var0.var0[1], &v4);
  this->var0.var0[0] = result;
  this->var0.var0[1] = v3;
  return result;
}

unint64_t TSUDecimal::roundTowardsZero(TSUDecimal *this)
{
  v4 = 0;
  result = sub_2770907C8(this->var0.var0[0], this->var0.var0[1], &v4);
  this->var0.var0[0] = result;
  this->var0.var0[1] = v3;
  return result;
}

unint64_t TSUDecimal::roundWithMode(TSUDecimal *this, NSRoundingMode a2)
{
  if (a2 == NSRoundUp)
  {
    v6 = 0;
    result = sub_2770903FC(this->var0.var0[0], this->var0.var0[1], &v6);
  }

  else if (a2 == NSRoundDown)
  {
    v5 = 0;
    result = sub_277090030(this->var0.var0[0], this->var0.var0[1], &v5);
  }

  else
  {
    v7 = 0;
    result = sub_277090AD0(this->var0.var0[0], this->var0.var0[1], &v7);
  }

  this->var0.var0[0] = result;
  this->var0.var0[1] = v4;
  return result;
}

unint64_t TSUDecimal::floor(TSUDecimal *this)
{
  v4 = 0;
  result = sub_277090030(this->var0.var0[0], this->var0.var0[1], &v4);
  this->var0.var0[0] = result;
  this->var0.var0[1] = v3;
  return result;
}

unint64_t TSUDecimal::ceiling(TSUDecimal *this)
{
  v4 = 0;
  result = sub_2770903FC(this->var0.var0[0], this->var0.var0[1], &v4);
  this->var0.var0[0] = result;
  this->var0.var0[1] = v3;
  return result;
}

uint64_t TSUDecimal::bitAnd(TSUDecimal *this, const TSUDecimal *a2, TSUDecimal *a3)
{
  v6 = sub_2770C95C0(0);
  v8 = v7;
  if (sub_2770C7270(this->var0.var0[0], this->var0.var0[1]) || sub_2770C7270(a2->var0.var0[0], a2->var0.var0[1]))
  {
    a3->var0.var0[0] = v6;
    a3->var0.var0[1] = v8;
    return 3;
  }

  else if (sub_2770C7278(this->var0.var0[0], this->var0.var0[1]) || (v11 = sub_2770C7278(a2->var0.var0[0], a2->var0.var0[1]), v11))
  {
    v9 = 0;
    a3->var0.var0[0] = v6;
    a3->var0.var0[1] = v8;
  }

  else
  {
    sub_2770C95C0(v11);
    sub_2770C95C0(0);
    sub_2770C95F4();
    LODWORD(v35.var0.var0[0]) = 0;
    v14 = sub_2770708B8(this->var0.var0[0], this->var0.var0[1], v12, v13, &v35);
    v16 = v15;
    sub_2770C95F4();
    LODWORD(v35.var0.var0[0]) = 0;
    v19 = sub_2770708B8(a2->var0.var0[0], a2->var0.var0[1], v17, v18, &v35);
    v21 = v20;
    v35.var0.var0[0] = v14;
    v35.var0.var0[1] = v16;
    TSUDecimal::trunc(&v35);
    LODWORD(v34.var0.var0[0]) = 0;
    sub_2770B1D10(v35.var0.var0[0], v35.var0.var0[1], &v34);
    v35.var0.var0[0] = v19;
    v35.var0.var0[1] = v21;
    TSUDecimal::trunc(&v35);
    LODWORD(v34.var0.var0[0]) = 0;
    sub_2770B1D10(v35.var0.var0[0], v35.var0.var0[1], &v34);
    sub_2770C95C0(0);
    sub_2770C95C0(0);
    sub_2770C95F4();
    LODWORD(v34.var0.var0[0]) = 0;
    v35.var0.var0[0] = sub_2770CF7C4(this->var0.var0[0], this->var0.var0[1], v22, v23, 0, &v34);
    v35.var0.var0[1] = v24;
    sub_2770C95F4();
    v36 = 0;
    v34.var0.var0[0] = sub_2770CF7C4(a2->var0.var0[0], a2->var0.var0[1], v25, v26, 0, &v36);
    v34.var0.var0[1] = v27;
    TSUDecimal::trunc(&v35);
    TSUDecimal::trunc(&v34);
    v9 = TSUDecimal::bitAnd(&v35, &v34, a3);
    sub_2770C95F4();
    v36 = 0;
    a3->var0.var0[0] = sub_2770D3210(a3->var0.var0[0], a3->var0.var0[1], v28, v29, 0, &v36);
    a3->var0.var0[1] = v30;
    sub_2770C95F4();
    v36 = 0;
    a3->var0.var0[0] = sub_277055134(a3->var0.var0[0], a3->var0.var0[1], v31, v32, 0, &v36);
    a3->var0.var0[1] = v33;
  }

  return v9;
}

uint64_t TSUDecimal::bitOr(TSUDecimal *this, const TSUDecimal *a2, TSUDecimal *a3)
{
  v6 = sub_2770C95C0(0);
  v8 = v7;
  if (sub_2770C7270(this->var0.var0[0], this->var0.var0[1]) || sub_2770C7270(a2->var0.var0[0], a2->var0.var0[1]))
  {
    a3->var0.var0[0] = v6;
    a3->var0.var0[1] = v8;
    return 3;
  }

  else
  {
    if (sub_2770C7278(this->var0.var0[0], this->var0.var0[1]))
    {
      v9 = 0;
      v11 = *a2;
    }

    else
    {
      v12 = sub_2770C7278(a2->var0.var0[0], a2->var0.var0[1]);
      if (!v12)
      {
        sub_2770C95C0(v12);
        sub_2770C95C0(0);
        sub_2770C95F4();
        LODWORD(v36.var0.var0[0]) = 0;
        v15 = sub_2770708B8(this->var0.var0[0], this->var0.var0[1], v13, v14, &v36);
        v17 = v16;
        sub_2770C95F4();
        LODWORD(v36.var0.var0[0]) = 0;
        v20 = sub_2770708B8(a2->var0.var0[0], a2->var0.var0[1], v18, v19, &v36);
        v22 = v21;
        v36.var0.var0[0] = v15;
        v36.var0.var0[1] = v17;
        TSUDecimal::trunc(&v36);
        LODWORD(v35.var0.var0[0]) = 0;
        sub_2770B1D10(v36.var0.var0[0], v36.var0.var0[1], &v35);
        v36.var0.var0[0] = v20;
        v36.var0.var0[1] = v22;
        TSUDecimal::trunc(&v36);
        LODWORD(v35.var0.var0[0]) = 0;
        sub_2770B1D10(v36.var0.var0[0], v36.var0.var0[1], &v35);
        sub_2770C95C0(0);
        sub_2770C95C0(0);
        sub_2770C95F4();
        LODWORD(v35.var0.var0[0]) = 0;
        v36.var0.var0[0] = sub_2770CF7C4(this->var0.var0[0], this->var0.var0[1], v23, v24, 0, &v35);
        v36.var0.var0[1] = v25;
        sub_2770C95F4();
        v37 = 0;
        v35.var0.var0[0] = sub_2770CF7C4(a2->var0.var0[0], a2->var0.var0[1], v26, v27, 0, &v37);
        v35.var0.var0[1] = v28;
        TSUDecimal::trunc(&v36);
        TSUDecimal::trunc(&v35);
        v9 = TSUDecimal::bitOr(&v36, &v35, a3);
        sub_2770C95F4();
        v37 = 0;
        a3->var0.var0[0] = sub_2770D3210(a3->var0.var0[0], a3->var0.var0[1], v29, v30, 0, &v37);
        a3->var0.var0[1] = v31;
        sub_2770C95F4();
        v37 = 0;
        a3->var0.var0[0] = sub_277055134(a3->var0.var0[0], a3->var0.var0[1], v32, v33, 0, &v37);
        a3->var0.var0[1] = v34;
        return v9;
      }

      v9 = 0;
      v11 = *this;
    }

    *a3 = v11;
  }

  return v9;
}

uint64_t TSUDecimal::bitXor(TSUDecimal *this, const TSUDecimal *a2, TSUDecimal *a3)
{
  v6 = sub_2770C95C0(0);
  v8 = v7;
  if (sub_2770C7270(this->var0.var0[0], this->var0.var0[1]) || sub_2770C7270(a2->var0.var0[0], a2->var0.var0[1]))
  {
    a3->var0.var0[0] = v6;
    a3->var0.var0[1] = v8;
    return 3;
  }

  else
  {
    if (sub_2770C7278(this->var0.var0[0], this->var0.var0[1]))
    {
      v9 = 0;
      v11 = *a2;
    }

    else
    {
      v12 = sub_2770C7278(a2->var0.var0[0], a2->var0.var0[1]);
      if (!v12)
      {
        sub_2770C95C0(v12);
        sub_2770C95C0(0);
        sub_2770C95F4();
        LODWORD(v36.var0.var0[0]) = 0;
        v15 = sub_2770708B8(this->var0.var0[0], this->var0.var0[1], v13, v14, &v36);
        v17 = v16;
        sub_2770C95F4();
        LODWORD(v36.var0.var0[0]) = 0;
        v20 = sub_2770708B8(a2->var0.var0[0], a2->var0.var0[1], v18, v19, &v36);
        v22 = v21;
        v36.var0.var0[0] = v15;
        v36.var0.var0[1] = v17;
        TSUDecimal::trunc(&v36);
        LODWORD(v35.var0.var0[0]) = 0;
        sub_2770B1D10(v36.var0.var0[0], v36.var0.var0[1], &v35);
        v36.var0.var0[0] = v20;
        v36.var0.var0[1] = v22;
        TSUDecimal::trunc(&v36);
        LODWORD(v35.var0.var0[0]) = 0;
        sub_2770B1D10(v36.var0.var0[0], v36.var0.var0[1], &v35);
        sub_2770C95C0(0);
        sub_2770C95C0(0);
        sub_2770C95F4();
        LODWORD(v35.var0.var0[0]) = 0;
        v36.var0.var0[0] = sub_2770CF7C4(this->var0.var0[0], this->var0.var0[1], v23, v24, 0, &v35);
        v36.var0.var0[1] = v25;
        sub_2770C95F4();
        v37 = 0;
        v35.var0.var0[0] = sub_2770CF7C4(a2->var0.var0[0], a2->var0.var0[1], v26, v27, 0, &v37);
        v35.var0.var0[1] = v28;
        TSUDecimal::trunc(&v36);
        TSUDecimal::trunc(&v35);
        v9 = TSUDecimal::bitXor(&v36, &v35, a3);
        sub_2770C95F4();
        v37 = 0;
        a3->var0.var0[0] = sub_2770D3210(a3->var0.var0[0], a3->var0.var0[1], v29, v30, 0, &v37);
        a3->var0.var0[1] = v31;
        sub_2770C95F4();
        v37 = 0;
        a3->var0.var0[0] = sub_277055134(a3->var0.var0[0], a3->var0.var0[1], v32, v33, 0, &v37);
        a3->var0.var0[1] = v34;
        return v9;
      }

      v9 = 0;
      v11 = *this;
    }

    *a3 = v11;
  }

  return v9;
}

TSUDecimal *TSUDecimal::bitLeftShiftInternal(TSUDecimal *this, unsigned int a2, TSUDecimal *a3)
{
  v5 = this;
  if ((a2 & 0x80000000) != 0)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSUDecimal::bitLeftShiftInternal(int, TSUDecimal &)"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDecimal.mm"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:973 isFatal:0 description:"Only for positive left shifts"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  else if (!a2)
  {
    goto LABEL_6;
  }

  this = sub_2770C7278(v5->var0.var0[0], v5->var0.var0[1]);
  if (this)
  {
LABEL_6:
    *a3 = *v5;
    return this;
  }

  v12.var0.var0[0] = sub_2770C95C0(this);
  v12.var0.var0[1] = v8;
  TSUDecimal::pow2(&v12, a2);
  v9 = v5->var0.var0[0];
  v10 = v5->var0.var0[1];
  v13 = 0;
  this = sub_2770D3210(v9, v10, v12.var0.var0[0], v12.var0.var0[1], 0, &v13);
  a3->var0.var0[0] = this;
  a3->var0.var0[1] = v11;
  return this;
}

double TSUDecimal::pow2(TSUDecimal *this, unsigned int a2)
{
  v4 = sub_2770C95C0(1);
  this->var0.var0[0] = v4;
  this->var0.var0[1] = v5;
  if (a2)
  {
    if (a2 > 0x1F4)
    {
      result = 0.0;
      *this = xmmword_277123880;
    }

    else if (a2 < 0xA || (v4 = sub_2770C95C0(1024), this->var0.var0[0] = v4, this->var0.var0[1] = v5, (a2 -= 10) != 0))
    {
      do
      {
        v7 = 0;
        v4 = sub_277055134(v4, v5, v4, v5, 0, &v7);
        this->var0.var0[0] = v4;
        this->var0.var0[1] = v5;
        --a2;
      }

      while (a2);
    }
  }

  return result;
}

double TSUDecimal::bitRightShiftInternal(TSUDecimal *this, unsigned int a2, TSUDecimal *a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSUDecimal::bitRightShiftInternal(int, TSUDecimal &)"}];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDecimal.mm"];
    [TSUAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:986 isFatal:0 description:"Only for positive right shifts"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  else if (!a2)
  {
    goto LABEL_6;
  }

  v8 = sub_2770C7278(this->var0.var0[0], this->var0.var0[1]);
  if (!v8)
  {
    v13.var0.var0[0] = sub_2770C95C0(v8);
    v13.var0.var0[1] = v10;
    TSUDecimal::pow2(&v13, a2);
    v14 = 0;
    a3->var0.var0[0] = sub_2770CF7C4(this->var0.var0[0], this->var0.var0[1], v13.var0.var0[0], v13.var0.var0[1], 0, &v14);
    a3->var0.var0[1] = v11;
    *v9.var0.var0 = TSUDecimal::trunc(a3);
    return *v9.var0.var0;
  }

LABEL_6:
  v9 = *this;
  *a3 = *this;
  return *v9.var0.var0;
}

uint64_t TSUDecimal::bitRightShift(TSUDecimal *this, const TSUDecimal *a2, TSUDecimal *a3)
{
  v6 = sub_2770C95C0(0);
  v8 = v7;
  v11 = *a2;
  TSUDecimal::trunc(&v11);
  v12 = 0;
  v9 = sub_27709C8F8(v11.var0.var0[0], v11.var0.var0[1], &v12);
  if (sub_2770C7270(this->var0.var0[0], this->var0.var0[1]) || v9 - 101 <= 0xFFFFFF36)
  {
    a3->var0.var0[0] = v6;
    a3->var0.var0[1] = v8;
    return 3;
  }

  else
  {
    if ((v9 & 0x80000000) != 0)
    {
      TSUDecimal::bitLeftShiftInternal(this, -v9, a3);
    }

    else
    {
      TSUDecimal::bitRightShiftInternal(this, v9, a3);
    }

    return 0;
  }
}

uint64_t TSUDecimal::bitLeftShift(TSUDecimal *this, const TSUDecimal *a2, TSUDecimal *a3)
{
  v6 = sub_2770C95C0(0);
  v8 = v7;
  v11 = *a2;
  TSUDecimal::trunc(&v11);
  v12 = 0;
  v9 = sub_27709C8F8(v11.var0.var0[0], v11.var0.var0[1], &v12);
  if (sub_2770C7270(this->var0.var0[0], this->var0.var0[1]) || v9 - 101 <= 0xFFFFFF36)
  {
    a3->var0.var0[0] = v6;
    a3->var0.var0[1] = v8;
    return 3;
  }

  else
  {
    if ((v9 & 0x80000000) != 0)
    {
      TSUDecimal::bitRightShiftInternal(this, -v9, a3);
    }

    else
    {
      TSUDecimal::bitLeftShiftInternal(this, v9, a3);
    }

    return 0;
  }
}

double TSUDecimal::pow10(TSUDecimal *this, int a2)
{
  v4 = sub_2770C95C0(1);
  this->var0.var0[0] = v4;
  this->var0.var0[1] = v5;
  if (a2)
  {
    if ((a2 + 6100) > 0x2FA8)
    {
      result = 0.0;
      *this = xmmword_277123880;
    }

    else
    {
      v8 = 0;
      this->var0.var0[0] = sub_27705C7FC(v4, v5, a2, 0, &v8);
      this->var0.var0[1] = v7;
    }
  }

  return result;
}

BOOL TSUDecimal::reinterpretDoubleAsDecimal(TSUDecimal *this)
{
  v3 = this->var0.var0[0];
  v2 = this->var0.var0[1];
  TSUDecimal::roundToDoublePrecision(this);
  v5 = 0;
  return !sub_2770978E0(v3, v2, this->var0.var0[0], this->var0.var0[1], &v5);
}

unint64_t TSUDecimal::roundToDoublePrecision(TSUDecimal *this)
{
  v9 = 0;
  sub_2770C95C0(0);
  result = sub_2770BBEE8(this->var0.var0[0], this->var0.var0[1], &v9);
  v3 = v9 - 15;
  if (v9 != 15)
  {
    v10 = 0;
    v4 = sub_27705C7FC(this->var0.var0[0], this->var0.var0[1], 15 - v9, 0, &v10);
    this->var0.var0[0] = v4;
    this->var0.var0[1] = v5;
    v10 = 0;
    v6 = sub_277090AD0(v4, v5, &v10);
    this->var0.var0[0] = v6;
    this->var0.var0[1] = v7;
    v10 = 0;
    result = sub_27705C7FC(v6, v7, v3, 0, &v10);
    this->var0.var0[0] = result;
    this->var0.var0[1] = v8;
  }

  return result;
}

unint64_t TSUDecimal::reinterpretAsTwosComplement(TSUDecimal *this)
{
  sub_2770C95F4();
  v10 = 0;
  if (sub_2770981B8(this->var0.var0[0], this->var0.var0[1], v2, v3, &v10))
  {
    return 0;
  }

  sub_2770C95F4();
  v11 = 0;
  result = sub_277097C14(this->var0.var0[0], this->var0.var0[1], v5, v6, &v11);
  if (result)
  {
    sub_2770C95F4();
    v12 = 0;
    this->var0.var0[0] = sub_27705820C(v7, v8, this->var0.var0[0], this->var0.var0[1], 0, &v12);
    this->var0.var0[1] = v9;
    TSUDecimal::negate(this);
    return 1;
  }

  return result;
}

BOOL TSUDecimal::equalWithTolerence(TSUDecimal *this, const TSUDecimal *a2, double a3)
{
  LODWORD(v11.var0.var0[0]) = 0;
  if (sub_2770978E0(this->var0.var0[0], this->var0.var0[1], a2->var0.var0[0], a2->var0.var0[1], &v11))
  {
    return 1;
  }

  v7 = this->var0.var0[0];
  v8 = this->var0.var0[1];
  LODWORD(v11.var0.var0[0]) = 0;
  sub_27705820C(v7, v8, a2->var0.var0[0], a2->var0.var0[1], 0, &v11);
  sub_2770C7308();
  v11.var0.var0[0] = v9;
  v11.var0.var0[1] = v10;
  return TSUDecimal::doubleValue(&v11) < a3;
}

BOOL TSUDecimal::mostlyEqual(TSUDecimal *this, const TSUDecimal *a2)
{
  LODWORD(v13.var0.var0[0]) = 0;
  if (sub_2770978E0(this->var0.var0[0], this->var0.var0[1], a2->var0.var0[0], a2->var0.var0[1], &v13))
  {
    return 1;
  }

  LODWORD(v13.var0.var0[0]) = 0;
  v5 = sub_2770499D8(0, &v13, 1.0e-10);
  v7 = v6;
  v8 = a2->var0.var0[0];
  v9 = a2->var0.var0[1];
  LODWORD(v13.var0.var0[0]) = 0;
  sub_2770D3210(v8, v9, v5, v7, 0, &v13);
  sub_2770C7308();
  v13.var0.var0[0] = v10;
  v13.var0.var0[1] = v11;
  v12 = TSUDecimal::doubleValue(&v13);
  return TSUDecimal::equalWithTolerence(this, a2, v12);
}

id TSUDecimal::formatAsBaseString(TSUDecimal *this, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  if (!a2 || a2 > 0x24)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDecimal::formatAsBaseString(uint8_t, uint16_t, BOOL, BOOL, BOOL) const"}];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDecimal.mm"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:1195 isFatal:0 description:"Trying to format a baseFormat cell with an illegal base number"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v9 = 0;
    goto LABEL_4;
  }

  if (a6)
  {
    v13 = 97;
  }

  else
  {
    v13 = 65;
  }

  v59 = *this;
  sub_2770C95C0(0);
  LODWORD(v60.var0.var0[0]) = 0;
  v59.var0.var0[0] = sub_277090AD0(v59.var0.var0[0], v59.var0.var0[1], &v60);
  v59.var0.var0[1] = v14;
  LODWORD(v60.var0.var0[0]) = 0;
  sub_27705822C(v59.var0.var0[0], v14, v59.var0.var0, &v60);
  v15 = sub_2770C7270(v59.var0.var0[0], v59.var0.var0[1]);
  sub_2770C7308();
  v59.var0.var0[0] = v16;
  v59.var0.var0[1] = v17;
  if (v15)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  v57 = v18;
  if ((a4 & 1) == 0 && v15)
  {
    if (a2 > 0x10 || ((1 << a2) & 0x10104) == 0)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSString *TSUDecimal::formatAsBaseString(uint8_t, uint16_t, BOOL, BOOL, BOOL) const"}];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUDecimal.mm"];
      [TSUAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:1219 isFatal:0 description:"Trying to display two's-complement for unsupported base %d", a2];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    v21 = sub_2770C95D8(0x80000000);
    v23 = v22;
    LODWORD(v60.var0.var0[0]) = 0;
    v24 = 32;
    if (!sub_2770981B8(v59.var0.var0[0], v59.var0.var0[1], v21, v22, &v60))
    {
      do
      {
        v25 = sub_2770C95C0(2);
        LODWORD(v60.var0.var0[0]) = 0;
        v21 = sub_2770D3210(v21, v23, v25, v26, 0, &v60);
        v23 = v27;
        ++v24;
        LODWORD(v60.var0.var0[0]) = 0;
      }

      while (!sub_2770981B8(v59.var0.var0[0], v59.var0.var0[1], v21, v27, &v60));
    }

    v28 = sub_2770C95C0(2);
    LODWORD(v60.var0.var0[0]) = 0;
    v30 = sub_2770D3210(v21, v23, v28, v29, 0, &v60);
    LODWORD(v60.var0.var0[0]) = 0;
    v59.var0.var0[0] = sub_27705820C(v30, v31, v59.var0.var0[0], v59.var0.var0[1], 0, &v60);
    v59.var0.var0[1] = v32;
    LODWORD(v33) = (log2(a2) * a3);
    if (v33 <= 32)
    {
      v33 = 32;
    }

    else
    {
      v33 = v33;
    }

    v34 = v33 - v24;
    if (v33 > v24)
    {
      do
      {
        v35 = sub_2770C95C0(2);
        LODWORD(v60.var0.var0[0]) = 0;
        v21 = sub_2770D3210(v21, v23, v35, v36, 0, &v60);
        v23 = v37;
        LODWORD(v60.var0.var0[0]) = 0;
        v59.var0.var0[0] = sub_277055134(v59.var0.var0[0], v59.var0.var0[1], v21, v37, 0, &v60);
        v59.var0.var0[1] = v38;
        --v34;
      }

      while (v34);
    }
  }

  v9 = [MEMORY[0x277CCAB68] string];
  v39 = sub_2770C95C0(a2);
  v41 = v40;
  sub_2770C95C0(0);
  do
  {
    if (a2 == 26)
    {
      LODWORD(v60.var0.var0[0]) = 0;
      v60.var0.var0[0] = sub_2770708B8(v59.var0.var0[0], v59.var0.var0[1], v39, v41, &v60);
      v60.var0.var0[1] = v42;
      TSUDecimal::trunc(&v60);
      v61 = 0;
      v43 = v13 + sub_27709C8F8(v60.var0.var0[0], v60.var0.var0[1], &v61);
    }

    else
    {
      if (a2 == 1)
      {
        [v9 tsu_insertCharacter:49 atIndex:0];
        v44 = sub_2770C95C0(1);
        LODWORD(v60.var0.var0[0]) = 0;
        v46 = sub_27705820C(v59.var0.var0[0], v59.var0.var0[1], v44, v45, 0, &v60);
        v59.var0.var0[0] = v46;
        v59.var0.var0[1] = v47;
        continue;
      }

      LODWORD(v60.var0.var0[0]) = 0;
      v60.var0.var0[0] = sub_2770708B8(v59.var0.var0[0], v59.var0.var0[1], v39, v41, &v60);
      v60.var0.var0[1] = v48;
      TSUDecimal::trunc(&v60);
      v61 = 0;
      v49 = sub_27709C8F8(v60.var0.var0[0], v60.var0.var0[1], &v61);
      if (v49 <= 9)
      {
        v50 = 48;
      }

      else
      {
        v50 = v13 - 10;
      }

      LOWORD(v43) = v50 + v49;
    }

    [v9 tsu_insertCharacter:v43 atIndex:0];
    LODWORD(v60.var0.var0[0]) = 0;
    v59.var0.var0[0] = sub_2770CF7C4(v59.var0.var0[0], v59.var0.var0[1], v39, v41, 0, &v60);
    v59.var0.var0[1] = v51;
    LODWORD(v60.var0.var0[0]) = 0;
    sub_27705822C(v59.var0.var0[0], v51, v59.var0.var0, &v60);
    v47 = v59.var0.var0[1];
    v46 = v59.var0.var0[0];
  }

  while (!sub_2770C7278(v46, v47));
  if (a3)
  {
    v52 = (a3 - [v9 length]);
    if (v52 >= 1)
    {
      if (a2 == 26)
      {
        v53 = v13;
      }

      else
      {
        v53 = 48;
      }

      do
      {
        [v9 tsu_insertCharacter:v53 atIndex:0];
        --v52;
      }

      while (v52);
    }
  }

  if ((a4 & 1) == 0 && !v15)
  {
    v54 = sub_2770C95C0(0x7FFFFFFFLL);
    LODWORD(v60.var0.var0[0]) = 0;
    if (!sub_2770981B8(v59.var0.var0[0], v59.var0.var0[1], v54, v55, &v60) && [v9 characterAtIndex:0] != 48)
    {
      [v9 tsu_insertCharacter:48 atIndex:0];
    }
  }

  if (!a5)
  {
    goto LABEL_55;
  }

  switch(a2)
  {
    case 2:
      v56 = @"0b";
      goto LABEL_54;
    case 8:
      v56 = @"0o";
LABEL_54:
      [v9 insertString:v56 atIndex:0];
      break;
    case 0x10:
      v56 = @"0x";
      goto LABEL_54;
  }

LABEL_55:
  if (v57)
  {
    [v9 tsu_insertCharacter:45 atIndex:0];
  }

LABEL_4:

  return v9;
}

uint64_t sub_27708F408(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_27708F660(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_27708F708;
  v3[3] = &unk_27A702478;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v3];
}

void sub_27708F708(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_27708F83C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_27708F8D4;
  v5[3] = &unk_27A7024C8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

uint64_t sub_27708F8D4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

uint64_t sub_27708FA10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_27708FA28(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t sub_27708FB64(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;

  return MEMORY[0x2821F96F8](v5, v7);
}

void sub_27708FD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27708FD24(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_27708FE40;
  v6[3] = &unk_27A7024C8;
  v7 = *(a1 + 40);
  v8 = &v9;
  [v2 enumerateObjectsUsingBlock:v6];
  if (*(v10 + 24) == 1)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(*(a1 + 32) + 16));
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;
  }

  _Block_object_dispose(&v9, 8);
}

void sub_27708FE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_27708FE40(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

unint64_t sub_277090030(unint64_t result, uint64_t a2, _DWORD *a3)
{
  if ((~a2 & 0x7800000000000000) == 0)
  {
    if ((~a2 & 0x7C00000000000000) != 0)
    {
      return 0;
    }

    if ((a2 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || result >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      result = 0;
      a2 &= 0xFFFFC00000000000;
    }

    if ((~a2 & 0x7E00000000000000) == 0)
    {
      *a3 |= 1u;
    }

    return result;
  }

  if ((~a2 & 0x6000000000000000) == 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 4 * a2;
    goto LABEL_18;
  }

  v3 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
LABEL_16:
    v3 = 0;
    v4 = 0;
    goto LABEL_17;
  }

  v4 = result;
  if (result >= 0x378D8E6400000000)
  {
    v5 = a2;
    if (v3 != 0x1ED09BEAD87C0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_17:
  v5 = a2;
LABEL_18:
  v6 = a2 & 0x8000000000000000;
  v7 = v5 & 0x7FFE000000000000;
  if (!(v4 | v3))
  {
    return 0;
  }

  if (v7 <= 0x2FFC000000000000)
  {
    return a2 < 0;
  }

  v8 = HIDWORD(v4);
  if (v4 >> 53)
  {
    v9 = HIDWORD(v4);
  }

  else
  {
    v9 = v4;
  }

  if (v4 >> 53)
  {
    v10 = -990;
  }

  else
  {
    v10 = -1022;
  }

  if (v3)
  {
    v9 = v3;
  }

  v11 = COERCE_UNSIGNED_INT64(v9) >> 52;
  if (v3)
  {
    v10 = -958;
  }

  v12 = &unk_280A5C3F0 + 32 * (v11 + v10 - 1);
  v13 = *v12;
  if (!*v12)
  {
    v13 = *(v12 + 6);
    v14 = *(v12 + 1);
    if (v3 > v14 || v3 == v14 && v4 >= *(v12 + 2))
    {
      ++v13;
    }
  }

  if (v7 <= 0x303E000000000000)
  {
    v15 = v7 >> 49;
    if (((v7 >> 49) - 6176 + v13) < 1)
    {
      return a2 < 0;
    }

    v16 = v4;
    v17 = 6175 - v15;
    v18 = qword_280A5DF70[2 * (6175 - v15)];
    v19 = qword_280A5DF70[2 * (6175 - v15) + 1];
    v20 = v19 * HIDWORD(v4);
    v21 = HIDWORD(v20) + HIDWORD(v19) * HIDWORD(v4);
    v22 = HIDWORD(v19) * v4 + v20 + ((v19 * v4) >> 32);
    v23 = (v19 * v4) | (v22 << 32);
    v24 = qword_280A5DF70[2 * v17];
    v25 = v24 * HIDWORD(v4);
    v26 = v18 * v4;
    v27 = HIDWORD(v18) * v16 + v25 + HIDWORD(v26);
    v28 = v26 | (v27 << 32);
    v30 = v23 + HIDWORD(v25) + HIDWORD(v18) * v8 + HIDWORD(v27);
    v29 = (__PAIR128__(v21, v23) + __PAIR128__(HIDWORD(v22), HIDWORD(v25) + HIDWORD(v18) * v8 + HIDWORD(v27))) >> 64;
    v31 = HIDWORD(v3);
    v32 = v3;
    v33 = v19 * HIDWORD(v3);
    v34 = HIDWORD(v33) + HIDWORD(v19) * HIDWORD(v3);
    v35 = HIDWORD(v19) * v3 + v33 + ((v19 * v3) >> 32);
    v36 = HIDWORD(v35);
    v37 = (v19 * v3) | (v35 << 32);
    v38 = v24 * HIDWORD(v3);
    v39 = v18 * v3;
    v40 = HIDWORD(v38) + HIDWORD(v18) * v31;
    v41 = HIDWORD(v18) * v32 + v38 + HIDWORD(v39);
    v42 = v39 | (v41 << 32);
    v44 = v37 + v40 + HIDWORD(v41);
    v43 = (__PAIR128__(v34, v37) + __PAIR128__(v36, v40 + HIDWORD(v41))) >> 64;
    v45 = __PAIR128__(v44, v30) + v42;
    v46 = __CFADD__(__CFADD__(v30, v42), v44);
    result = v29 + *(&v45 + 1);
    v47 = __CFADD__(v29, *(&v45 + 1)) || v46;
    v48 = v43 + v47;
    if (v7 >= 0x3038000000000001)
    {
      if (v6 && (v45 > v19 || v45 == v19 && v28 >= v18))
      {
        ++result;
      }

      return result;
    }

    v49 = dword_280A5E190[v17];
    if (v7 >= 0x3012000000000001)
    {
      v50 = (v48 << -v49) | (result >> v49);
      if (!v6)
      {
        return v50;
      }

      if ((qword_280A5E218[v17] & result) == 0 && v45 <= v19)
      {
        if (v45 != v19)
        {
          return v50;
        }

        result = v50;
        if (v28 < v18)
        {
          return result;
        }
      }

      return v50 + 1;
    }

    if (!v6)
    {
      return v48 >> v49;
    }

    if ((qword_280A5E218[v17] & v48) == 0 && !result && v45 <= v19)
    {
      if (v45 != v19)
      {
        return v48 >> v49;
      }

      result = v48 >> v49;
      if (v28 < v18)
      {
        return result;
      }
    }

    return (v48 >> v49) + 1;
  }

  return result;
}

unint64_t sub_2770903FC(unint64_t result, uint64_t a2, _DWORD *a3)
{
  if ((~a2 & 0x7800000000000000) == 0)
  {
    if ((~a2 & 0x7C00000000000000) != 0)
    {
      return 0;
    }

    if ((a2 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || result >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      result = 0;
      a2 &= 0xFFFFC00000000000;
    }

    if ((~a2 & 0x7E00000000000000) == 0)
    {
      *a3 |= 1u;
    }

    return result;
  }

  if ((~a2 & 0x6000000000000000) == 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 4 * a2;
    goto LABEL_18;
  }

  v3 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
LABEL_16:
    v3 = 0;
    v4 = 0;
    goto LABEL_17;
  }

  v4 = result;
  if (result >= 0x378D8E6400000000)
  {
    v5 = a2;
    if (v3 != 0x1ED09BEAD87C0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_17:
  v5 = a2;
LABEL_18:
  v6 = a2 & 0x8000000000000000;
  v7 = v5 & 0x7FFE000000000000;
  if (!(v4 | v3))
  {
    return 0;
  }

  if (v7 <= 0x2FFC000000000000)
  {
    return a2 >= 0;
  }

  v8 = HIDWORD(v4);
  if (v4 >> 53)
  {
    v9 = HIDWORD(v4);
  }

  else
  {
    v9 = v4;
  }

  if (v4 >> 53)
  {
    v10 = -990;
  }

  else
  {
    v10 = -1022;
  }

  if (v3)
  {
    v9 = v3;
  }

  v11 = COERCE_UNSIGNED_INT64(v9) >> 52;
  if (v3)
  {
    v10 = -958;
  }

  v12 = &unk_280A5C3F0 + 32 * (v11 + v10 - 1);
  v13 = *v12;
  if (!*v12)
  {
    v13 = *(v12 + 6);
    v14 = *(v12 + 1);
    if (v3 > v14 || v3 == v14 && v4 >= *(v12 + 2))
    {
      ++v13;
    }
  }

  if (v7 <= 0x303E000000000000)
  {
    v15 = v7 >> 49;
    if (((v7 >> 49) - 6176 + v13) < 1)
    {
      return a2 >= 0;
    }

    v16 = v4;
    v17 = 6175 - v15;
    v18 = qword_280A5DF70[2 * (6175 - v15)];
    v19 = qword_280A5DF70[2 * (6175 - v15) + 1];
    v20 = v19 * HIDWORD(v4);
    v21 = HIDWORD(v20) + HIDWORD(v19) * HIDWORD(v4);
    v22 = HIDWORD(v19) * v4 + v20 + ((v19 * v4) >> 32);
    v23 = (v19 * v4) | (v22 << 32);
    v24 = qword_280A5DF70[2 * v17];
    v25 = v24 * HIDWORD(v4);
    v26 = v18 * v4;
    v27 = HIDWORD(v18) * v16 + v25 + HIDWORD(v26);
    v28 = v26 | (v27 << 32);
    v30 = v23 + HIDWORD(v25) + HIDWORD(v18) * v8 + HIDWORD(v27);
    v29 = (__PAIR128__(v21, v23) + __PAIR128__(HIDWORD(v22), HIDWORD(v25) + HIDWORD(v18) * v8 + HIDWORD(v27))) >> 64;
    v31 = HIDWORD(v3);
    v32 = v3;
    v33 = v19 * HIDWORD(v3);
    v34 = HIDWORD(v33) + HIDWORD(v19) * HIDWORD(v3);
    v35 = HIDWORD(v19) * v3 + v33 + ((v19 * v3) >> 32);
    v36 = HIDWORD(v35);
    v37 = (v19 * v3) | (v35 << 32);
    v38 = v24 * HIDWORD(v3);
    v39 = v18 * v3;
    v40 = HIDWORD(v38) + HIDWORD(v18) * v31;
    v41 = HIDWORD(v18) * v32 + v38 + HIDWORD(v39);
    v42 = v39 | (v41 << 32);
    v44 = v37 + v40 + HIDWORD(v41);
    v43 = (__PAIR128__(v34, v37) + __PAIR128__(v36, v40 + HIDWORD(v41))) >> 64;
    v45 = __PAIR128__(v44, v30) + v42;
    v46 = __CFADD__(__CFADD__(v30, v42), v44);
    result = v29 + *(&v45 + 1);
    v47 = __CFADD__(v29, *(&v45 + 1)) || v46;
    v48 = v43 + v47;
    if (v7 >= 0x3038000000000001)
    {
      if (!v6 && (v45 > v19 || v45 == v19 && v28 >= v18))
      {
        ++result;
      }

      return result;
    }

    v49 = dword_280A5E190[v17];
    if (v7 >= 0x3012000000000001)
    {
      v50 = (v48 << -v49) | (result >> v49);
      if (!v6)
      {
        if ((qword_280A5E218[v17] & result) != 0 || v45 > v19)
        {
          return v50 + 1;
        }

        if (v45 == v19)
        {
          result = v50;
          if (v28 < v18)
          {
            return result;
          }

          return v50 + 1;
        }
      }

      return v50;
    }

    if (!v6)
    {
      if ((qword_280A5E218[v17] & v48) != 0 || result || v45 > v19)
      {
        return (v48 >> v49) + 1;
      }

      if (v45 == v19)
      {
        result = v48 >> v49;
        if (v28 < v18)
        {
          return result;
        }

        return (v48 >> v49) + 1;
      }
    }

    return v48 >> v49;
  }

  return result;
}

unint64_t sub_2770907C8(unint64_t result, uint64_t a2, _DWORD *a3)
{
  if ((~a2 & 0x7800000000000000) == 0)
  {
    if ((~a2 & 0x7C00000000000000) != 0)
    {
      return 0;
    }

    if ((a2 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || result >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      result = 0;
      a2 &= 0xFFFFC00000000000;
    }

    if ((~a2 & 0x7E00000000000000) == 0)
    {
      *a3 |= 1u;
    }

    return result;
  }

  if ((~a2 & 0x6000000000000000) == 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 4 * a2;
    goto LABEL_18;
  }

  v3 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
LABEL_16:
    v3 = 0;
    v4 = 0;
    goto LABEL_17;
  }

  v4 = result;
  if (result >= 0x378D8E6400000000)
  {
    v5 = a2;
    if (v3 != 0x1ED09BEAD87C0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_17:
  v5 = a2;
LABEL_18:
  v6 = v5 & 0x7FFE000000000000;
  if (!(v4 | v3))
  {
    return 0;
  }

  if (v6 <= 0x2FFC000000000000)
  {
    return 0;
  }

  if (v4 >> 53)
  {
    v7 = HIDWORD(v4);
  }

  else
  {
    v7 = v4;
  }

  if (v4 >> 53)
  {
    v8 = -990;
  }

  else
  {
    v8 = -1022;
  }

  if (v3)
  {
    v7 = v3;
  }

  v9 = COERCE_UNSIGNED_INT64(v7) >> 52;
  if (v3)
  {
    v8 = -958;
  }

  v10 = &unk_280A5C3F0 + 32 * (v9 + v8 - 1);
  v11 = *v10;
  if (!*v10)
  {
    v11 = *(v10 + 6);
    v12 = *(v10 + 1);
    if (v3 > v12 || v3 == v12 && v4 >= *(v10 + 2))
    {
      ++v11;
    }
  }

  if (v6 <= 0x303E000000000000)
  {
    v13 = v6 >> 49;
    if (((v6 >> 49) - 6176 + v11) < 1)
    {
      return 0;
    }

    v14 = 6175 - v13;
    v15 = qword_280A5DF70[2 * (6175 - v13)];
    v16 = qword_280A5DF70[2 * v14 + 1];
    v17 = HIDWORD(v16);
    v18 = v16 * HIDWORD(v4);
    v19 = HIDWORD(v18) + HIDWORD(v16) * HIDWORD(v4);
    v20 = HIDWORD(v16) * v4 + v18 + ((v16 * v4) >> 32);
    v21 = HIDWORD(v20);
    v22 = (v16 * v4) | (v20 << 32);
    v23 = HIDWORD(v15);
    v24 = __PAIR128__(v19, v22) + __PAIR128__(v21, ((v15 * HIDWORD(v4)) >> 32) + HIDWORD(v15) * HIDWORD(v4) + ((HIDWORD(v15) * v4 + (v15 * HIDWORD(v4)) + ((v15 * v4) >> 32)) >> 32));
    v25 = HIDWORD(v3);
    LODWORD(v22) = v3;
    v26 = v16 * HIDWORD(v3);
    v27 = v16 * v3;
    v28 = v17 * v3;
    v29 = HIDWORD(v26) + v17 * HIDWORD(v3);
    v30 = v28 + v26 + HIDWORD(v27);
    v31 = HIDWORD(v30);
    v32 = v27 | (v30 << 32);
    v33 = v15 * HIDWORD(v3);
    v34 = v15 * v3;
    v35 = HIDWORD(v15) * v22 + v33 + HIDWORD(v34);
    v36 = v34 | (v35 << 32);
    v37 = __PAIR128__(v29, v32) + __PAIR128__(v31, HIDWORD(v33) + v23 * v25 + HIDWORD(v35));
    v38 = __CFADD__(__CFADD__(v36, v24), v32 + HIDWORD(v33) + v23 * v25 + HIDWORD(v35));
    v39 = __CFADD__(v36, v24) + v32 + HIDWORD(v33) + v23 * v25 + HIDWORD(v35);
    v40 = v38;
    result = *(&v24 + 1) + v39;
    if (__CFADD__(*(&v24 + 1), v39))
    {
      v41 = 1;
    }

    else
    {
      v41 = v40;
    }

    v42 = *(&v37 + 1) + v41;
    if (v6 <= 0x3038000000000000)
    {
      v43 = dword_280A5E190[v14];
      v44 = -v43;
      v45 = result >> v43;
      v46 = v42 >> v43;
      v47 = (v42 << v44) | v45;
      if (v6 >= 0x3012000000000001)
      {
        return v47;
      }

      else
      {
        return v46;
      }
    }
  }

  return result;
}

unint64_t sub_277090AD0(unint64_t result, uint64_t a2, _DWORD *a3)
{
  if ((~a2 & 0x7800000000000000) == 0)
  {
    if ((~a2 & 0x7C00000000000000) != 0)
    {
      return 0;
    }

    if ((a2 & 0x3FFFFFFFFFFFuLL) > 0x314DC6448D93 || result >= 0x38C15B0A00000000 && (a2 & 0x3FFFFFFFFFFFLL) == 0x314DC6448D93)
    {
      result = 0;
      a2 &= 0xFFFFC00000000000;
    }

    if ((~a2 & 0x7E00000000000000) == 0)
    {
      *a3 |= 1u;
    }

    return result;
  }

  if ((~a2 & 0x6000000000000000) == 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 4 * a2;
    goto LABEL_18;
  }

  v3 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
LABEL_16:
    v3 = 0;
    v4 = 0;
    goto LABEL_17;
  }

  v4 = result;
  if (result >= 0x378D8E6400000000)
  {
    v5 = a2;
    if (v3 != 0x1ED09BEAD87C0)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_17:
  v5 = a2;
LABEL_18:
  v6 = v5 & 0x7FFE000000000000;
  if (!(v4 | v3))
  {
    return 0;
  }

  if (v6 <= 0x2FFA000000000000)
  {
    return 0;
  }

  v7 = HIDWORD(v4);
  if (v4 >> 53)
  {
    v8 = -990;
  }

  else
  {
    v7 = v4;
    v8 = -1022;
  }

  if (v3)
  {
    v7 = v3;
  }

  v9 = COERCE_UNSIGNED_INT64(v7) >> 52;
  if (v3)
  {
    v8 = -958;
  }

  v10 = &unk_280A5C3F0 + 32 * (v9 + v8 - 1);
  v11 = *v10;
  if (!*v10)
  {
    v11 = *(v10 + 6);
    v12 = *(v10 + 1);
    if (v3 > v12 || v3 == v12 && v4 >= *(v10 + 2))
    {
      ++v11;
    }
  }

  if (v6 <= 0x303E000000000000)
  {
    v13 = v6 >> 49;
    if (((v6 >> 49) - 6176 + v11) < 0)
    {
      return 0;
    }

    if (v6 < 0x3018000000000001)
    {
      v15 = &qword_280A5D2B0[2 * (6156 - v13)];
      v3 += v15[1];
      v14 = (6175 - v13);
    }

    else
    {
      v14 = (6175 - v13);
      v15 = &qword_280A5D210[v14];
    }

    v16 = __CFADD__(*v15, v4);
    v17 = *v15 + v4;
    if (v16)
    {
      ++v3;
    }

    v18 = qword_280A5DF70[2 * v14];
    v19 = qword_280A5DF70[2 * v14 + 1];
    v20 = HIDWORD(v19);
    v21 = HIDWORD(v17) * v19;
    v22 = HIDWORD(v21) + HIDWORD(v17) * HIDWORD(v19);
    v23 = v17 * HIDWORD(v19) + v21 + ((v17 * v19) >> 32);
    v24 = HIDWORD(v23);
    v25 = (v17 * v19) | (v23 << 32);
    v26 = HIDWORD(v18);
    v27 = __PAIR128__(v22, v25) + __PAIR128__(v24, ((v18 * HIDWORD(v17)) >> 32) + HIDWORD(v18) * HIDWORD(v17) + ((HIDWORD(v18) * v17 + (v18 * HIDWORD(v17)) + ((v18 * v17) >> 32)) >> 32));
    v28 = HIDWORD(v3);
    LODWORD(v25) = v3;
    v29 = HIDWORD(v3) * v19;
    v30 = v3 * v19;
    v31 = v3 * v20;
    v32 = HIDWORD(v29) + HIDWORD(v3) * v20;
    v33 = v31 + v29 + HIDWORD(v30);
    v34 = HIDWORD(v33);
    v35 = v30 | (v33 << 32);
    v36 = HIDWORD(v3) * v18;
    v37 = v3 * v18;
    v38 = v25 * HIDWORD(v18) + v36 + HIDWORD(v37);
    v39 = v37 | (v38 << 32);
    v40 = __PAIR128__(v32, v35) + __PAIR128__(v34, HIDWORD(v36) + v28 * v26 + HIDWORD(v38));
    v16 = __CFADD__(__CFADD__(v39, v27), v35 + HIDWORD(v36) + v28 * v26 + HIDWORD(v38));
    v41 = __CFADD__(v39, v27) + v35 + HIDWORD(v36) + v28 * v26 + HIDWORD(v38);
    v42 = v16;
    result = *(&v27 + 1) + v41;
    if (__CFADD__(*(&v27 + 1), v41))
    {
      v43 = 1;
    }

    else
    {
      v43 = v42;
    }

    v44 = *(&v40 + 1) + v43;
    if (v6 <= 0x3038000000000000)
    {
      v45 = dword_280A5E190[v14];
      v16 = v6 >= 0x3012000000000001;
      v46 = -v45;
      v47 = result >> v45;
      v48 = v44 >> v45;
      v49 = (v44 << v46) | v47;
      if (v16)
      {
        return v49;
      }

      else
      {
        return v48;
      }
    }
  }

  return result;
}

float64x2_t TSUTransformedCornersOfRect(float64x2_t *a1, double *a2, double *a3, double *a4, double *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  MinX = CGRectGetMinX(*&a6);
  v23.origin.x = a6;
  v23.origin.y = a7;
  v23.size.width = a8;
  v23.size.height = a9;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a6;
  v24.origin.y = a7;
  v24.size.width = a8;
  v24.size.height = a9;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a6;
  v25.origin.y = a7;
  v25.size.width = a8;
  v25.size.height = a9;
  MaxY = CGRectGetMaxY(v25);
  *a2 = MinX;
  a2[1] = MinY;
  *a3 = MinX;
  a3[1] = MaxY;
  *a4 = MaxX;
  a4[1] = MaxY;
  *a5 = MaxX;
  a5[1] = MinY;
  *a2 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a2[1]), *a1, *a2));
  *a3 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a3[1]), *a1, *a3));
  *a4 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a4[1]), *a1, *a4));
  result = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a5[1]), *a1, *a5));
  *a5 = result;
  return result;
}

double TSUTransformAngleInDegrees(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  return TSUTransformAngleInRadians(v3) * 57.2957795;
}

double TSUTransformAngleInRadians(double *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 * a1[2] - *a1 * a1[3] > 0.0)
  {
    v2 = -v2;
    v1 = -v1;
  }

  return atan2(v1, v2);
}

BOOL TSUIsTransformAxisAlignedWithObjectSize(double *a1, double a2, double a3)
{
  v3 = 1.0 / (a2 * 0.5);
  v4 = 1.0 / (a3 * 0.5);
  if (v3 >= v4)
  {
    v3 = v4;
  }

  v5 = fabs(a1[3]);
  if (fabs(*a1) < v3 && v5 < v3)
  {
    return 1;
  }

  if (fabs(a1[1]) >= v3)
  {
    return 0;
  }

  return fabs(a1[2]) < v3;
}

BOOL TSUIsTransformAxisAlignedWithThreshold(double *a1, double a2)
{
  if (fabs(*a1) < a2 && fabs(a1[3]) < a2)
  {
    return 1;
  }

  if (fabs(a1[1]) >= a2)
  {
    return 0;
  }

  return fabs(a1[2]) < a2;
}

BOOL TSUIsTransformAxisAligned(double *a1)
{
  if (fabs(*a1) < 1.0e-12 && fabs(a1[3]) < 1.0e-12)
  {
    return 1;
  }

  if (fabs(a1[1]) >= 1.0e-12)
  {
    return 0;
  }

  return fabs(a1[2]) < 1.0e-12;
}

CGAffineTransform *TSUAffineTransformForFlips@<X0>(CGAffineTransform *result@<X0>, int a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v13 = MEMORY[0x277CBF2C0];
  v14 = *MEMORY[0x277CBF2C0];
  v15 = *(MEMORY[0x277CBF2C0] + 16);
  *a3 = *MEMORY[0x277CBF2C0];
  *(a3 + 16) = v15;
  v16 = *(v13 + 32);
  *(a3 + 32) = v16;
  if (result)
  {
    v31 = v15;
    v32 = v14;
    v17 = a4;
    v18 = a5;
    v30 = v16;
    v19 = a6;
    MinX = CGRectGetMinX(*(&a7 - 3));
    v35.origin.x = a4;
    v35.origin.y = a5;
    v35.size.width = a6;
    v35.size.height = a7;
    MaxX = CGRectGetMaxX(v35);
    *&v34.a = v32;
    *&v34.c = v31;
    *&v34.tx = v30;
    CGAffineTransformTranslate(a3, &v34, MinX + MaxX, 0.0);
    v22 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v22;
    *&v33.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v34, &v33, -1.0, 1.0);
    v23 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v23;
    *(a3 + 32) = *&v34.tx;
  }

  if (a2)
  {
    v36.origin.x = a4;
    v36.origin.y = a5;
    v36.size.width = a6;
    v36.size.height = a7;
    MinY = CGRectGetMinY(v36);
    v37.origin.x = a4;
    v37.origin.y = a5;
    v37.size.width = a6;
    v37.size.height = a7;
    MaxY = CGRectGetMaxY(v37);
    v26 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v26;
    *&v33.tx = *(a3 + 32);
    CGAffineTransformTranslate(&v34, &v33, 0.0, MinY + MaxY);
    v27 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v27;
    *(a3 + 32) = *&v34.tx;
    v28 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v28;
    *&v33.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v34, &v33, 1.0, -1.0);
    v29 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v29;
    *(a3 + 32) = *&v34.tx;
  }

  return result;
}

CGAffineTransform *TSUTransformFromTransformSpace@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v6 = a2[1];
  *&v12.a = *a2;
  *&v12.c = v6;
  *&v12.tx = a2[2];
  CGAffineTransformInvert(&t1, &v12);
  v7 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v7;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  v8 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v8;
  *&t1.tx = a2[2];
  return CGAffineTransformConcat(a3, &v12, &t1);
}

CGAffineTransform *TSUTransformConvertForNewOrigin@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, -a3, -a4);
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeTranslation(&v13, a3, a4);
  t1 = v13;
  v8 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v8;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  t1 = v14;
  return CGAffineTransformConcat(a2, &v12, &t1);
}

CGAffineTransform *TSUTransformMakeFree@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, CGFloat a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v18 = TSUDistance(a3, a4, a5, a6);
  v38 = a7;
  v19 = TSUDistance(a7, a8, a9, a10);
  if (v18 < 0.0001 || v19 < 0.0001)
  {

    return CGAffineTransformMakeTranslation(a2, a7 - a3, a8 - a4);
  }

  else
  {
    sx = v19 / v18;
    v20 = TSUSubtractPoints(a3, a4, a5);
    v22 = TSUAngleFromDelta(v20, v21);
    v23 = TSUSubtractPoints(a7, a8, a9);
    v25 = TSUAngleFromDelta(v23, v24);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    CGAffineTransformMakeTranslation(a2, -a3, -a4);
    CGAffineTransformMakeRotation(&t2, -v22);
    v26 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v26;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v27 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v27;
    *(a2 + 32) = *&v41.tx;
    v28 = 1.0;
    if (!a1)
    {
      v28 = sx;
    }

    CGAffineTransformMakeScale(&t2, sx, v28);
    v29 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v29;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v30 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v30;
    *(a2 + 32) = *&v41.tx;
    CGAffineTransformMakeRotation(&t2, v25);
    v31 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v31;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v32 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v32;
    *(a2 + 32) = *&v41.tx;
    CGAffineTransformMakeTranslation(&t2, v38, a8);
    v33 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v33;
    *&t1.tx = *(a2 + 32);
    result = CGAffineTransformConcat(&v41, &t1, &t2);
    v35 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v35;
    *(a2 + 32) = *&v41.tx;
  }

  return result;
}

CGFloat TSUTransformConvertingRectToRectAtPercent@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>, double a4@<D3>, double a5@<D4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, double a9)
{
  v14 = TSUSubtractPoints(a5, a6, a2);
  v15 = a7 / a3;
  v16 = a8 / a4;
  v18 = TSUMultiplyPointScalar(v14, v17, a9);
  v20 = v19;
  v21 = TSUMixSizes(1.0, 1.0, v15, v16, a9);
  v23 = v22;
  v24 = MEMORY[0x277CBF2C0];
  v25 = *MEMORY[0x277CBF2C0];
  v26 = *(MEMORY[0x277CBF2C0] + 16);
  *a1 = *MEMORY[0x277CBF2C0];
  *(a1 + 16) = v26;
  v27 = *(v24 + 32);
  *(a1 + 32) = v27;
  *&v32.a = v25;
  *&v32.c = v26;
  *&v32.tx = v27;
  CGAffineTransformTranslate(a1, &v32, v18, v20);
  v28 = *(a1 + 16);
  *&v31.a = *a1;
  *&v31.c = v28;
  *&v31.tx = *(a1 + 32);
  CGAffineTransformScale(&v32, &v31, v21, v23);
  v29 = *&v32.c;
  *a1 = *&v32.a;
  *(a1 + 16) = v29;
  result = v32.tx;
  *(a1 + 32) = *&v32.tx;
  return result;
}

BOOL TSUAffineTransformIsRectilinear(double *a1)
{
  if (a1[1] == 0.0 && a1[2] == 0.0)
  {
    return 1;
  }

  if (*a1 == 0.0)
  {
    return a1[3] == 0.0;
  }

  return 0;
}

double sub_277091880(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sqrt(v4 * v4 + *a1 * *a1);
  v8 = sqrt(v6 * v6 + v5 * v5);
  v9 = *a1 * v6 - v5 * v4;
  v10 = -v8;
  v11 = -v7;
  if (*a1 < v6)
  {
    v10 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v9 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v9 < 0.0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  v14 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v14;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformScale(&v21, &v20, 1.0 / v12, 1.0 / v13);
  v15 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v15;
  *(a1 + 32) = *&v21.tx;
  v16 = atan2(*(a1 + 8), *a1);
  v17 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v17;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformRotate(&v21, &v20, -v16);
  v18 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v18;
  *(a1 + 32) = *&v21.tx;
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = *a1;
  *(a2 + 32) = *(a1 + 8);
  *(a2 + 40) = *(a1 + 16);
  *(a2 + 48) = *(a1 + 24);
  *(a2 + 56) = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 64) = result;
  return result;
}

CGFloat sub_2770919B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 56);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  *&v13.a = *a2;
  *&v13.c = v6;
  *&v13.tx = *(a2 + 32);
  CGAffineTransformRotate(a2, &v13, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a2 + 16);
  *&v12.a = *a2;
  *&v12.c = v9;
  *&v12.tx = *(a2 + 32);
  CGAffineTransformScale(&v13, &v12, v7, v8);
  v10 = *&v13.c;
  *a2 = *&v13.a;
  *(a2 + 16) = v10;
  result = v13.tx;
  *(a2 + 32) = *&v13.tx;
  return result;
}

void TSUTransformMixAffineTransforms(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a1[1];
  v16 = *a1;
  v17[0] = v7;
  v17[1] = a1[2];
  sub_277091880(&v16, &v18);
  v8 = a2[1];
  v15[0] = *a2;
  v15[1] = v8;
  v15[2] = a2[2];
  sub_277091880(v15, &v16);
  if ((v18.f64[0] >= 0.0 || *(&v16 + 1) >= 0.0) && (v18.f64[1] >= 0.0 || *&v16 >= 0.0))
  {
    v9 = __x;
  }

  else
  {
    v18 = vnegq_f64(v18);
    v9 = __x + dbl_277134020[__x < 0.0];
  }

  v10 = fmod(v9, 6.28318531);
  __x = v10;
  v11 = fmod(*v17, 6.28318531);
  *v17 = v11;
  if (vabdd_f64(v10, v11) > 3.14159265)
  {
    v12 = v10 <= v11;
    if (v10 > v11)
    {
      v11 = v10;
    }

    v13 = &v16;
    if (!v12)
    {
      v13 = &v18;
    }

    v13[1].f64[0] = v11 + -6.28318531;
  }

  for (i = 0; i != 9; ++i)
  {
    v18.f64[i] = v18.f64[i] + (*(&v17[-1] + i * 8) - v18.f64[i]) * a4;
  }

  sub_2770919B0(&v18, a3);
}

double sub_277091BDC(void *a1, uint64_t a2, double *a3)
{
  v5 = 0.0;
  [a1 scanDouble:&v5];
  result = v5;
  *a3 = v5;
  return result;
}

void sub_277091F40(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) value];
  v4 = v3;
  [*(a1 + 32) maxValue];
  v6 = v5;
  v7 = [*(a1 + 32) isIndeterminate];
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_277092004;
  v10[3] = &unk_27A702538;
  v10[4] = v8;
  v10[5] = v4;
  v10[6] = v6;
  v11 = v7;
  dispatch_async(v9, v10);
  objc_autoreleasePoolPop(v2);
}

void sub_277092004(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) handleValue:*(a1 + 56) maxValue:*(a1 + 40) isIndeterminate:{*(a1 + 48), v8}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_2770921C4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result != 0;
  return result;
}

void sub_2770922B4(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 8);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6) valueInterval];
        *(*(*(a1 + 40) + 8) + 24) = fmin(v7, *(*(*(a1 + 40) + 8) + 24));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

uint64_t sub_277092D30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_277092D48(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 48));

  objc_autoreleasePoolPop(v2);
}

void sub_277092E40(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3[6] != *(a1 + 40))
  {
    [v3 p_removeProgressObserverFromProgressInQueue];
    objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
    [*(a1 + 32) p_addProgressObserverToProgressInQueue];
    [*(a1 + 32) protected_progressDidChange];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_277093080(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) p_removeProgressObserverFromProgressInQueue];
  [*(a1 + 32) p_addProgressObserverToProgressInQueue];

  objc_autoreleasePoolPop(v2);
}

void sub_27709316C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) p_removeProgressObserverFromProgressInQueue];
  [*(a1 + 32) p_addProgressObserverToProgressInQueue];

  objc_autoreleasePoolPop(v2);
}

void sub_277093338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_277093354(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained protected_progressDidChange];
}

void sub_277093ABC(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  context = objc_autoreleasePoolPush();
  v2 = *(*(a1 + 32) + 48);
  v3 = [v2 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = *v34;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v33 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 40) objectAtIndexedSubscript:{v4, context}];
        [v8 removeProgressObserver:v7];

        ++v4;
      }

      v3 = [v2 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v3);
  }

  v9 = *(a1 + 32);
  v10 = *(v9 + 48);
  *(v9 + 48) = 0;

  v11 = *(a1 + 40);
  if (v11 >= 0 && ((v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v11 - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 40), "count")}];
    objc_initWeak(&location, *(a1 + 32));
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = *(*(a1 + 32) + 40);
    v15 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v15)
    {
      v16 = *v29;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v28 + 1) + 8 * j);
          v19 = *(a1 + 40);
          v20 = *(*(a1 + 32) + 56);
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = sub_277093E24;
          v26[3] = &unk_27A7025A8;
          objc_copyWeak(&v27, &location);
          v21 = [v18 addProgressObserverWithValueInterval:v20 queue:v26 handler:v19];
          [v14 addObject:v21];

          objc_destroyWeak(&v27);
        }

        v15 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v15);
    }

    v22 = *(a1 + 32);
    v23 = *(v22 + 48);
    *(v22 + 48) = v14;

    objc_destroyWeak(&location);
  }

  objc_autoreleasePoolPop(context);
}

void sub_277093E24(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained protected_progressDidChange];

  objc_autoreleasePoolPop(v2);
}

void sub_2770941C8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) protected_hasProgressObservers];
  v4 = *(a1 + 32);
  if ((*(v4 + 56) & 1) != 0 || !v3)
  {
    if (!(v3 & 1 | ((*(v4 + 56) & 1) == 0)))
    {
      [*(v4 + 40) removeProgressObserver:?];
    }
  }

  else
  {
    [*(v4 + 40) addProgressObserver:v4 selector:sel_p_progressDidChange_];
    *(*(a1 + 32) + 56) = 1;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_2770944D8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(*(a1 + 32) + 16) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_27709486C(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 72) == 1)
  {
    *(v1 + 72) = 0;
    return MEMORY[0x2821F9670](*(result + 32), sel_p_slowlyAdvanceToNextStage);
  }

  return result;
}

uint64_t sub_2770949A4(uint64_t result)
{
  v3 = *(result + 32);
  v2 = *(result + 40);
  if (v2 > *(v3 + 56) && v2 <= *(v3 + 64))
  {
    v4 = result;
    *(v3 + 56) = v2;
    v5 = *(result + 32);
    v6 = v5[7] / v5[8];
    [v5 maxValue];
    v8 = v7 * v6;
    v9 = *(v4 + 32);

    return [v9 setValue:v8];
  }

  return result;
}

uint64_t sub_277094AFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 1.0;
  v4 = 1.0 / v2[8];
  [v2 value];
  v5 = *(a1 + 32);
  v6 = v5[7];
  v8 = 1.0 - (1.0 - (v7 - v6 * v4) / v4) * 0.95;
  if (v8 > 0.95)
  {
    v8 = 0.95;
  }

  v9 = v4 * (v8 + v6);
  if (v9 <= 1.0)
  {
    v3 = v9;
  }

  [v5 maxValue];
  [*(a1 + 32) setValue:v10 * v3];
  v11 = *(a1 + 32);

  return MEMORY[0x2821F9670](v11, sel_p_slowlyAdvanceToNextStage);
}

uint64_t sub_2770952E8(uint64_t a1, int a2)
{
  cblas_dgemm_NEWLAPACK();
  v3 = malloc_type_malloc(8 * a2 * a2, 0x100004000313F17uLL);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
  if (v5)
  {
    v6 = v5;
    dgetrf_NEWLAPACK();
    dgetri_NEWLAPACK();
    v7 = 0;
    free(v6);
  }

  else
  {
    v7 = 1;
  }

  free(v4);
  return v7;
}

id sub_277095430()
{
  if (qword_280A63CB8 != -1)
  {
    sub_277113F08();
  }

  v1 = qword_280A63CB0;

  return v1;
}

uint64_t sub_277095474()
{
  v0 = [MEMORY[0x277CE1CB8] typeWithIdentifier:@"public.heics"];
  v1 = qword_280A63CB0;
  qword_280A63CB0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_277095500()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v0 = CGImageSourceCopyTypeIdentifiers();
  v1 = [*MEMORY[0x277CE1E08] identifier];
  v2 = [*MEMORY[0x277CE1E68] identifier];
  v6[1] = v2;
  v6[2] = @"com.adobe.illustrator.ai-image";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = [(__CFArray *)v0 arrayByAddingObjectsFromArray:v3];
  v5 = qword_280A63CC0;
  qword_280A63CC0 = v4;
}

BOOL SFUEqualCryptoKeys(unint64_t a1, unint64_t a2)
{
  if (!(a1 | a2))
  {
    return 1;
  }

  result = 0;
  v5 = a1 != 0;
  if (a2)
  {
    v6 = a1 != 0;
  }

  else
  {
    v6 = 1;
  }

  if (a2)
  {
    v5 = 0;
  }

  if (!v5 && v6)
  {
    v7 = [a1 keyLength];
    return v7 == [a2 keyLength] && memcmp(objc_msgSend(a1, "keyData"), objc_msgSend(a2, "keyData"), v7) == 0;
  }

  return result;
}

void sub_277096824(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_277096C40(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(TSUAdditions) tsu_canCloneItemAtURL:toURL:]"];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSFileManager_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:15 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "srcURL"];

    +[TSUAssertionHandler logBacktraceThrottled];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(TSUAdditions) tsu_canCloneItemAtURL:toURL:]"];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSFileManager_TSUAdditions.m"];
  [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:16 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "dstURL"];

  +[TSUAssertionHandler logBacktraceThrottled];
LABEL_3:
  if ([v5 tsu_volumeSupportsCloning])
  {
    v8 = [v5 tsu_isOnSameVolumeAs:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_277096DB8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(TSUAdditions) tsu_linkOrCopyItemAtURL:toURL:error:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSFileManager_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:22 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "srcURL"];

    +[TSUAssertionHandler logBacktraceThrottled];
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(TSUAdditions) tsu_linkOrCopyItemAtURL:toURL:error:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSFileManager_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v16 file:v17 lineNumber:23 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "dstURL"];

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (([a1 tsu_canCloneItemAtURL:v8 toURL:v10] & 1) != 0 || (objc_msgSend(a1, "linkItemAtURL:toURL:error:", v8, v10, 0) & 1) == 0)
  {
    v18 = 0;
    v12 = [a1 copyItemAtURL:v8 toURL:v10 error:&v18];
    v11 = v18;
    if (a5 && (v12 & 1) == 0)
    {
      v11 = v11;
      v12 = 0;
      *a5 = v11;
    }
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  return v12;
}

uint64_t sub_277096F90(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = *MEMORY[0x277CBE900];
  v25[0] = *MEMORY[0x277CBE900];
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v18 = [v14 resourceValuesForKeys:v17 error:0];

  if (!v18)
  {
    v24 = v16;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
    v18 = [v13 resourceValuesForKeys:v19 error:0];
  }

  v20 = [a1 replaceItemAtURL:v13 withItemAtURL:v14 backupItemName:v15 options:a6 resultingItemURL:a7 error:a8];
  if (v20)
  {
    if (v18)
    {
      v23 = 0;
      if (([v13 setResourceValues:v18 error:&v23] & 1) == 0 && TSUDefaultCat_init_token != -1)
      {
        sub_277113F30();
      }
    }
  }

  return v20;
}

uint64_t sub_277097128()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_27709716C(void *a1, uint64_t a2, void *a3, void *a4, int a5, void *a6)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v10 path];
  if (v12)
  {
    v13 = [a1 attributesOfItemAtPath:v12 error:a6];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 filePosixPermissions];
      v16 = v15;
      if (v11)
      {
        v15 = [v11 unsignedIntegerValue];
      }

      v18 = v15 | 0x80;
      v19 = [v14 fileIsImmutable];
      if (v16 != v18 || (v19 & 1) != 0 || a5)
      {
        if (a5)
        {
          v20 = [MEMORY[0x277CBEAA8] date];
          v27[0] = *MEMORY[0x277CCA180];
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
          v28[0] = v21;
          v28[1] = MEMORY[0x277CBEC28];
          v22 = *MEMORY[0x277CCA108];
          v27[1] = *MEMORY[0x277CCA140];
          v27[2] = v22;
          v27[3] = *MEMORY[0x277CCA150];
          v28[2] = v20;
          v28[3] = v20;
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
        }

        else
        {
          v25[0] = *MEMORY[0x277CCA180];
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
          v25[1] = *MEMORY[0x277CCA140];
          v26[0] = v20;
          v26[1] = MEMORY[0x277CBEC28];
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
        }

        v17 = [a1 sfu_setAttributes:v23 ofItemAtURL:v10 recursively:1 error:a6];
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else if (a6)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:262 userInfo:0];
    *a6 = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_277097400(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (v10)
  {
    v15 = [v10 path];
    v16 = [a1 fileExistsAtPath:v15];

    if (v16)
    {
      v39 = 0;
      v17 = [a1 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:0 options:0 error:&v39];
      v18 = v39;
      v19 = v18;
      if (v17)
      {
        v27 = v18;
        v28 = v17;
        v29 = v12;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v20 = v17;
        v21 = [v20 countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v36;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v36 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = [*(*(&v35 + 1) + 8 * i) URLByStandardizingPath];
              [v14 addObject:v25];
            }

            v22 = [v20 countByEnumeratingWithState:&v35 objects:v40 count:16];
          }

          while (v22);
        }

        v12 = v29;
        [v14 minusSet:v29];
        v19 = v27;
        v17 = v28;
      }

      else if (TSUDefaultCat_init_token != -1)
      {
        sub_277113F58();
      }
    }
  }

  if ([v14 count])
  {
    v26 = dispatch_get_global_queue(-2, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770976F0;
    block[3] = &unk_27A702668;
    v31 = v14;
    v32 = a1;
    v33 = v13;
    v34 = v11;
    dispatch_async(v26, block);
  }
}

uint64_t sub_2770976AC()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770976F0(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v13 = 0;
        v9 = [v8 removeItemAtURL:v7 error:&v13];
        v10 = v13;
        v11 = v10;
        if (v9)
        {
          if (TSUDefaultCat_init_token != -1)
          {
            sub_277113FA8();
          }
        }

        else if (([v10 tsu_isNoSuchFileError] & 1) == 0 && TSUDefaultCat_init_token != -1)
        {
          sub_277113F80();
        }

        ++v6;
      }

      while (v4 != v6);
      v12 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v4 = v12;
    }

    while (v12);
  }
}

uint64_t sub_277097858()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_27709789C()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

BOOL sub_2770978E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, _DWORD *a5)
{
  if ((~a2 & 0x7C00000000000000) == 0 || (a4 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((~a2 & 0x7E00000000000000) == 0 || (a4 & 0x7E00000000000000) == 0x7E00000000000000)
    {
      v5 = 0;
      *a5 |= 1u;
      return v5;
    }

    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  v6 = a4 & 0x7800000000000000;
  if ((~a2 & 0x7800000000000000) == 0)
  {
    return v6 == 0x7800000000000000 && ((a4 ^ a2) & 0x8000000000000000) == 0;
  }

  if (v6 == 0x7800000000000000)
  {
    return 0;
  }

  v8 = a2 & 0x1FFFFFFFFFFFFLL;
  v9 = (~a2 & 0x6000000000000000) == 0;
  if (a1 > 0x378D8E63FFFFFFFFLL && v8 == 0x1ED09BEAD87C0)
  {
    v9 = 1;
  }

  if (v8 > 0x1ED09BEAD87C0)
  {
    v9 = 1;
  }

  v11 = a4 & 0x1FFFFFFFFFFFFLL;
  if ((a4 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
  {
    if (v8 | a1)
    {
      LOBYTE(v12) = v9;
    }

    else
    {
      LOBYTE(v12) = 1;
    }

    v13 = 1;
    v14 = 1;
LABEL_43:
    v5 = 1;
    if (v12)
    {
      return v5;
    }

    goto LABEL_44;
  }

  if (v8 | a1)
  {
    v12 = v9;
  }

  else
  {
    v12 = 1;
  }

  v15 = a3 >= 0x378D8E6400000000 && v11 == 0x1ED09BEAD87C0;
  v14 = v12 ^ 1;
  if (v15 || (a4 & 0x6000000000000000) == 0x6000000000000000)
  {
    v13 = 1;
    goto LABEL_43;
  }

  v13 = (v11 | a3) == 0;
  if (v11 | a3)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    return 1;
  }

LABEL_44:
  v5 = 0;
  if (v13 == v14 || ((a4 ^ a2) & 0x8000000000000000) != 0)
  {
    return v5;
  }

  v17 = (a4 >> 49) & 0x3FFF;
  if (((a2 >> 49) & 0x3FFF) <= v17)
  {
    v18 = a4 & 0x1FFFFFFFFFFFFLL;
    v19 = a3;
    v11 = a2 & 0x1FFFFFFFFFFFFLL;
    a3 = a1;
    v20 = (a4 >> 49) & 0x3FFF;
    v17 = (a2 >> 49) & 0x3FFF;
  }

  else
  {
    v18 = a2 & 0x1FFFFFFFFFFFFLL;
    v19 = a1;
    v20 = (a2 >> 49) & 0x3FFF;
  }

  v21 = v20 - v17;
  if (v21 > 33)
  {
    return 0;
  }

  v22 = v21 - 20;
  if (v21 < 20)
  {
    v59 = qword_280A5D8C0[v21];
    v60 = HIDWORD(v59);
    v61 = HIDWORD(v18);
    v62 = HIDWORD(v59) * v18;
    v63 = v59 * v18;
    v64 = v59 * v61;
    v65 = HIDWORD(v62) + HIDWORD(v59) * v61;
    v66 = v64 + v62 + HIDWORD(v63);
    v67 = HIDWORD(v19);
    v68 = HIDWORD(v59) * v19;
    v69 = v59 * v19;
    v70 = v59 * v67 + v68 + HIDWORD(v69);
    v71 = HIDWORD(v68) + v60 * v67 + HIDWORD(v70);
    v72 = v69 | (v70 << 32);
    v73 = (v63 | (v66 << 32)) + v71;
    if (v65 | HIDWORD(v66))
    {
      v74 = 0;
    }

    else
    {
      v74 = v73 == v11;
    }

    return v74 && v73 >= v71 && v72 == a3;
  }

  else
  {
    v23 = HIDWORD(v19);
    v24 = v19;
    v26 = &qword_280A5D960[2 * v22];
    v25 = v26[1];
    v27 = HIDWORD(v25);
    v28 = v25 * HIDWORD(v19);
    v29 = HIDWORD(v28) + HIDWORD(v25) * HIDWORD(v19);
    v30 = HIDWORD(v25) * v19 + v28 + ((v25 * v19) >> 32);
    v31 = (v25 * v19) | (v30 << 32);
    v32 = *v26 * HIDWORD(v19);
    v33 = *v26 * v19;
    v34 = HIDWORD(*v26) * v24 + v32 + HIDWORD(v33);
    v35 = v33 | (v34 << 32);
    v37 = v31 + HIDWORD(v32) + HIDWORD(*v26) * v23 + HIDWORD(v34);
    v36 = (__PAIR128__(v29, v31) + __PAIR128__(HIDWORD(v30), HIDWORD(v32) + HIDWORD(*v26) * v23 + HIDWORD(v34))) >> 64;
    v38 = HIDWORD(v18);
    v39 = v18;
    v40 = v25 * HIDWORD(v18);
    v41 = v25 * v18;
    v42 = v27 * v18;
    v43 = HIDWORD(v40) + v27 * HIDWORD(v18);
    v44 = v42 + v40 + HIDWORD(v41);
    v45 = HIDWORD(v44);
    v46 = v41 | (v44 << 32);
    v47 = *v26 * HIDWORD(v18);
    v48 = *v26 * v18;
    v49 = HIDWORD(*v26) * v39 + v47 + HIDWORD(v48);
    v50 = v48 | (v49 << 32);
    v52 = v46 + HIDWORD(v47) + HIDWORD(*v26) * v38 + HIDWORD(v49);
    v51 = (__PAIR128__(v43, v46) + __PAIR128__(v45, HIDWORD(v47) + HIDWORD(*v26) * v38 + HIDWORD(v49))) >> 64;
    v53 = __PAIR128__(v52, v37) + v50;
    LODWORD(v54) = __CFADD__(__CFADD__(v37, v50), v52);
    if (__CFADD__(v36, *(&v53 + 1)))
    {
      v54 = 1;
    }

    else
    {
      v54 = v54;
    }

    v55 = v54 << 63 >> 63;
    if (v36 + *(&v53 + 1))
    {
      v56 = 0;
    }

    else
    {
      v56 = v51 == v55;
    }

    return v56 && v53 == v11 && v35 == a3;
  }
}

unint64_t sub_277097C14(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  if ((~a2 & 0x7C00000000000000) == 0 || (a4 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((~a2 & 0x7E00000000000000) == 0 || (a4 & 0x7E00000000000000) == 0x7E00000000000000)
    {
      result = 0;
      *a5 |= 1u;
      return result;
    }

    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  if ((~a2 & 0x7800000000000000) == 0)
  {
    v6 = (~a4 & 0x7800000000000000) != 0 || a4 >= 0;
    return (a2 & 0x8000000000000000) != 0 && v6;
  }

  if ((~a4 & 0x7800000000000000) == 0)
  {
    goto LABEL_20;
  }

  v9 = a2 & 0x1FFFFFFFFFFFFLL;
  v10 = (~a2 & 0x6000000000000000) == 0;
  if (a1 > 0x378D8E63FFFFFFFFLL && v9 == 0x1ED09BEAD87C0)
  {
    v10 = 1;
  }

  if (v9 > 0x1ED09BEAD87C0)
  {
    v10 = 1;
  }

  v12 = a4 & 0x1FFFFFFFFFFFFLL;
  if ((a4 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
    if (v9 | a1)
    {
      v13 = v10;
    }

    else
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      return a2 >> 63;
    }

    return 0;
  }

  if (v9 | a1)
  {
    v14 = v10;
  }

  else
  {
    v14 = 1;
  }

  v15 = a3 >= 0x378D8E6400000000 && v12 == 0x1ED09BEAD87C0;
  if (v15 || (a4 & 0x6000000000000000) == 0x6000000000000000 || !(v12 | a3))
  {
    if ((v14 & 1) == 0)
    {
      return a2 >> 63;
    }

    return 0;
  }

  if ((v14 & 1) != 0 || ((a4 ^ a2) & 0x8000000000000000) != 0)
  {
LABEL_20:
    v8 = a4 >> 63;
    return v8 ^ 1;
  }

  v16 = (a2 >> 49) & 0x3FFF;
  v17 = (a4 >> 49) & 0x3FFF;
  v18 = v17 - v16;
  if (v17 == v16)
  {
    v19 = v9 == v12;
    if (a1 < a3)
    {
      v19 = 0;
    }

    v20 = v9 > v12 || v19;
    v21 = (a2 & 0x8000000000000000) != 0;
    goto LABEL_56;
  }

  if ((v9 > v12 || v9 == v12 && a1 > a3) && v16 >= v17)
  {
    return a2 >> 63;
  }

  if ((v9 < v12 || v9 == v12 && a1 < a3) && v16 <= v17)
  {
LABEL_69:
    v8 = a2 >> 63;
    return v8 ^ 1;
  }

  v23 = v16 - v17;
  if (v23 < 1)
  {
    if (v18 < 34)
    {
      if (v18 < 20)
      {
        v119 = qword_280A5D8C0[v18];
        v120 = HIDWORD(v119);
        v121 = HIDWORD(v12);
        v122 = HIDWORD(v119) * a4;
        v123 = v119 * v121;
        v124 = HIDWORD(v122) + HIDWORD(v119) * v121;
        v125 = v123 + v122 + ((v119 * a4) >> 32);
        v126 = v124 + HIDWORD(v125);
        v127 = (v119 * a4) | (v125 << 32);
        v128 = HIDWORD(v119) * a3;
        v129 = v119 * a3;
        v130 = v119 * HIDWORD(a3) + v128 + HIDWORD(v129);
        v131 = HIDWORD(v128) + v120 * HIDWORD(a3) + HIDWORD(v130);
        v132 = v129 | (v130 << 32);
        v55 = __CFADD__(v127, v131);
        v133 = v127 + v131;
        if (v55)
        {
          v134 = 1;
        }

        else
        {
          v134 = v126;
        }

        if (v133 == v9 && !v134 && v132 == a1)
        {
          return 0;
        }

        v59 = v133 > v9;
        v135 = v133 == v9;
        v136 = v59;
        if (v134)
        {
          v137 = 1;
        }

        else
        {
          v137 = v136;
        }

        if (v132 <= a1)
        {
          v135 = 0;
        }

        v97 = v137 | v135;
        v98 = a4 >> 63;
      }

      else
      {
        v62 = &qword_280A5D960[2 * (v18 - 20)];
        v64 = *v62;
        v63 = v62[1];
        v65 = HIDWORD(v63);
        v66 = v63 * HIDWORD(a3);
        v67 = HIDWORD(v66) + HIDWORD(v63) * HIDWORD(a3);
        v68 = HIDWORD(v63) * a3 + v66 + ((v63 * a3) >> 32);
        v69 = HIDWORD(v68);
        v70 = (v63 * a3) | (v68 << 32);
        v71 = HIDWORD(v64);
        v72 = v64 * HIDWORD(a3);
        v73 = HIDWORD(v64) * a3 + v72 + ((v64 * a3) >> 32);
        v74 = (v64 * a3) | (v73 << 32);
        v75 = __PAIR128__(v67, v70) + __PAIR128__(v69, HIDWORD(v72) + HIDWORD(v64) * HIDWORD(a3) + HIDWORD(v73));
        v76 = HIDWORD(v12);
        v77 = v63 * v76;
        v78 = v63 * a4;
        v79 = v65 * a4;
        v80 = HIDWORD(v77) + v65 * v76;
        v81 = v79 + v77 + HIDWORD(v78);
        v82 = HIDWORD(v81);
        v83 = v78 | (v81 << 32);
        v84 = v64 * v76;
        v85 = v64 * a4;
        v86 = HIDWORD(v84) + v71 * v76;
        v87 = v71 * a4 + v84 + HIDWORD(v85);
        v88 = v85 | (v87 << 32);
        v89 = __PAIR128__(v80, v83) + __PAIR128__(v82, v86 + HIDWORD(v87));
        v90 = v75 + v88;
        v91 = __CFADD__(v75, v88) + v89;
        LODWORD(v92) = __CFADD__(__CFADD__(v75, v88), v89);
        v55 = __CFADD__(*(&v75 + 1), v91);
        v93 = *(&v75 + 1) + v91;
        if (v55)
        {
          v92 = 1;
        }

        else
        {
          v92 = v92;
        }

        v94 = (*(&v89 + 1) + v92) | v93;
        if (v90 == v9 && !v94 && v74 == a1)
        {
          return 0;
        }

        v59 = v90 > v9;
        v95 = v90 == v9;
        v96 = v59;
        if (v94)
        {
          v96 = 1;
        }

        if (v74 <= a1)
        {
          v95 = 0;
        }

        v97 = v96 | v95;
        v98 = a2 >> 63;
      }

      return v97 ^ v98;
    }

    goto LABEL_69;
  }

  if (v23 >= 0x22)
  {
    return a2 >> 63;
  }

  if (v23 < 0x14)
  {
    v99 = qword_280A5D8C0[v23];
    v100 = HIDWORD(v99);
    v101 = HIDWORD(v9);
    v102 = HIDWORD(v99) * a2;
    v103 = v99 * v101;
    v104 = HIDWORD(v102) + HIDWORD(v99) * v101;
    v105 = v103 + v102 + ((v99 * a2) >> 32);
    v106 = v104 + HIDWORD(v105);
    v107 = (v99 * a2) | (v105 << 32);
    v108 = HIDWORD(v99) * a1;
    v109 = v99 * a1;
    v110 = v99 * HIDWORD(a1) + v108 + HIDWORD(v109);
    v111 = HIDWORD(v108) + v100 * HIDWORD(a1) + HIDWORD(v110);
    v112 = v109 | (v110 << 32);
    v55 = __CFADD__(v107, v111);
    v113 = v107 + v111;
    if (v55)
    {
      v114 = 1;
    }

    else
    {
      v114 = v106;
    }

    if (v113 == v12 && !v114 && v112 == a3)
    {
      return 0;
    }

    v59 = v113 > v12;
    v115 = v113 == v12;
    v116 = v59;
    if (v114)
    {
      v117 = 1;
    }

    else
    {
      v117 = v116;
    }

    v118 = v112 > a3 && v115;
    v20 = v117 | v118;
  }

  else
  {
    v24 = &qword_280A5D960[2 * (v23 - 20)];
    v26 = *v24;
    v25 = v24[1];
    v27 = HIDWORD(v25);
    v28 = v25 * HIDWORD(a1);
    v29 = HIDWORD(v28) + HIDWORD(v25) * HIDWORD(a1);
    v30 = HIDWORD(v25) * a1 + v28 + ((v25 * a1) >> 32);
    v31 = HIDWORD(v30);
    v32 = (v25 * a1) | (v30 << 32);
    v33 = HIDWORD(v26);
    v34 = v26 * HIDWORD(a1);
    v35 = HIDWORD(v26) * a1 + v34 + ((v26 * a1) >> 32);
    v36 = (v26 * a1) | (v35 << 32);
    v37 = __PAIR128__(v29, v32) + __PAIR128__(v31, HIDWORD(v34) + HIDWORD(v26) * HIDWORD(a1) + HIDWORD(v35));
    v38 = HIDWORD(v9);
    v39 = v25 * v38;
    v40 = v25 * a2;
    v41 = v27 * a2;
    v42 = HIDWORD(v39) + v27 * v38;
    v43 = v41 + v39 + HIDWORD(v40);
    v44 = HIDWORD(v43);
    v45 = v40 | (v43 << 32);
    v46 = v26 * v38;
    v47 = v26 * a2;
    v48 = HIDWORD(v46) + v33 * v38;
    v49 = v33 * a2 + v46 + HIDWORD(v47);
    v50 = v47 | (v49 << 32);
    v51 = __PAIR128__(v42, v45) + __PAIR128__(v44, v48 + HIDWORD(v49));
    v52 = v37 + v50;
    v53 = __CFADD__(v37, v50) + v51;
    v54 = __CFADD__(__CFADD__(v37, v50), v51);
    v55 = __CFADD__(*(&v37 + 1), v53);
    v56 = *(&v37 + 1) + v53;
    v57 = v55 || v54;
    v58 = (*(&v51 + 1) + v57) | v56;
    if (v52 == v12 && !v58 && v36 == a3)
    {
      return 0;
    }

    v59 = v52 > v12;
    v60 = v52 == v12;
    v61 = v59;
    if (v58)
    {
      v61 = 1;
    }

    if (v36 <= a3)
    {
      v60 = 0;
    }

    v20 = v61 | v60;
  }

  v21 = a4 < 0;
LABEL_56:
  v22 = !v21;
  return v22 ^ v20;
}

uint64_t sub_2770981B8(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, _DWORD *a5)
{
  if ((~a2 & 0x7C00000000000000) == 0 || (a4 & 0x7C00000000000000) == 0x7C00000000000000)
  {
    if ((~a2 & 0x7E00000000000000) == 0 || (a4 & 0x7E00000000000000) == 0x7E00000000000000)
    {
      result = 0;
      *a5 |= 1u;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (a1 == a3 && a2 == a4)
    {
      return 1;
    }

    if ((~a2 & 0x7800000000000000) == 0)
    {
      v7 = (~a4 & 0x7800000000000000) == 0 && a4 >= 0;
      return (a2 & 0x8000000000000000) != 0 || v7;
    }

    if ((~a4 & 0x7800000000000000) == 0)
    {
      goto LABEL_21;
    }

    v9 = a2 & 0x1FFFFFFFFFFFFLL;
    v10 = (~a2 & 0x6000000000000000) == 0;
    if (a1 > 0x378D8E63FFFFFFFFLL && v9 == 0x1ED09BEAD87C0)
    {
      v10 = 1;
    }

    if (v9 > 0x1ED09BEAD87C0)
    {
      v10 = 1;
    }

    v12 = a4 & 0x1FFFFFFFFFFFFLL;
    if ((a4 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
    {
      if (v9 | a1)
      {
        v13 = v10;
      }

      else
      {
        v13 = 1;
      }

      if (v13)
      {
        return 1;
      }

      return a2 >> 63;
    }

    if (v9 | a1)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    v15 = a3 >= 0x378D8E6400000000 && v12 == 0x1ED09BEAD87C0;
    if (v15 || (a4 & 0x6000000000000000) == 0x6000000000000000 || !(v12 | a3))
    {
      if (v14)
      {
        return 1;
      }

      return a2 >> 63;
    }

    if ((v14 & 1) != 0 || ((a4 ^ a2) & 0x8000000000000000) != 0)
    {
LABEL_21:
      v8 = a4 >> 63;
      return v8 ^ 1;
    }

    v16 = (a2 >> 49) & 0x3FFF;
    v17 = (a4 >> 49) & 0x3FFF;
    v18 = v17 - v16;
    if (v17 == v16)
    {
      v19 = v9 == v12;
      if (a1 < a3)
      {
        v19 = 0;
      }

      v20 = v9 > v12 || v19;
      v21 = (a2 & 0x8000000000000000) != 0;
LABEL_57:
      v22 = !v21;
      return v22 ^ v20;
    }

    if ((v9 > v12 || v9 == v12 && a1 > a3) && v16 >= v17)
    {
      return a2 >> 63;
    }

    if ((v9 < v12 || v9 == v12 && a1 < a3) && v16 <= v17)
    {
      goto LABEL_70;
    }

    v23 = v16 - v17;
    if (v23 >= 1)
    {
      if (v23 < 0x22)
      {
        if (v23 < 0x14)
        {
          v99 = qword_280A5D8C0[v23];
          v100 = HIDWORD(v99);
          v101 = HIDWORD(v9);
          v102 = HIDWORD(v99) * a2;
          v103 = v99 * v101;
          v104 = HIDWORD(v102) + HIDWORD(v99) * v101;
          v105 = v103 + v102 + ((v99 * a2) >> 32);
          v106 = v104 + HIDWORD(v105);
          v107 = (v99 * a2) | (v105 << 32);
          v108 = HIDWORD(v99) * a1;
          v109 = v99 * a1;
          v110 = v99 * HIDWORD(a1) + v108 + HIDWORD(v109);
          v111 = HIDWORD(v108) + v100 * HIDWORD(a1) + HIDWORD(v110);
          v112 = v109 | (v110 << 32);
          v55 = __CFADD__(v107, v111);
          v113 = v107 + v111;
          if (v55)
          {
            v114 = 1;
          }

          else
          {
            v114 = v106;
          }

          if (v113 == v12 && !v114 && v112 == a3)
          {
            return 1;
          }

          v59 = v113 > v12;
          v115 = v113 == v12;
          v116 = v59;
          if (v114)
          {
            v117 = 1;
          }

          else
          {
            v117 = v116;
          }

          v118 = v112 > a3 && v115;
          v20 = v117 | v118;
        }

        else
        {
          v24 = &qword_280A5D960[2 * (v23 - 20)];
          v26 = *v24;
          v25 = v24[1];
          v27 = HIDWORD(v25);
          v28 = v25 * HIDWORD(a1);
          v29 = HIDWORD(v28) + HIDWORD(v25) * HIDWORD(a1);
          v30 = HIDWORD(v25) * a1 + v28 + ((v25 * a1) >> 32);
          v31 = HIDWORD(v30);
          v32 = (v25 * a1) | (v30 << 32);
          v33 = HIDWORD(v26);
          v34 = v26 * HIDWORD(a1);
          v35 = HIDWORD(v26) * a1 + v34 + ((v26 * a1) >> 32);
          v36 = (v26 * a1) | (v35 << 32);
          v37 = __PAIR128__(v29, v32) + __PAIR128__(v31, HIDWORD(v34) + HIDWORD(v26) * HIDWORD(a1) + HIDWORD(v35));
          v38 = HIDWORD(v9);
          v39 = v25 * v38;
          v40 = v25 * a2;
          v41 = v27 * a2;
          v42 = HIDWORD(v39) + v27 * v38;
          v43 = v41 + v39 + HIDWORD(v40);
          v44 = HIDWORD(v43);
          v45 = v40 | (v43 << 32);
          v46 = v26 * v38;
          v47 = v26 * a2;
          v48 = HIDWORD(v46) + v33 * v38;
          v49 = v33 * a2 + v46 + HIDWORD(v47);
          v50 = v47 | (v49 << 32);
          v51 = __PAIR128__(v42, v45) + __PAIR128__(v44, v48 + HIDWORD(v49));
          v52 = v37 + v50;
          v53 = __CFADD__(v37, v50) + v51;
          v54 = __CFADD__(__CFADD__(v37, v50), v51);
          v55 = __CFADD__(*(&v37 + 1), v53);
          v56 = *(&v37 + 1) + v53;
          v57 = v55 || v54;
          v58 = (*(&v51 + 1) + v57) | v56;
          if (v52 == v12 && !v58 && v36 == a3)
          {
            return 1;
          }

          v59 = v52 > v12;
          v60 = v52 == v12;
          v61 = v59;
          if (v58)
          {
            v61 = 1;
          }

          if (v36 <= a3)
          {
            v60 = 0;
          }

          v20 = v61 | v60;
        }

        v21 = a4 < 0;
        goto LABEL_57;
      }

      return a2 >> 63;
    }

    if (v18 >= 34)
    {
LABEL_70:
      v8 = a2 >> 63;
      return v8 ^ 1;
    }

    if (v18 < 20)
    {
      v119 = qword_280A5D8C0[v18];
      v120 = HIDWORD(v119);
      v121 = HIDWORD(v12);
      v122 = HIDWORD(v119) * a4;
      v123 = v119 * v121;
      v124 = HIDWORD(v122) + HIDWORD(v119) * v121;
      v125 = v123 + v122 + ((v119 * a4) >> 32);
      v126 = v124 + HIDWORD(v125);
      v127 = (v119 * a4) | (v125 << 32);
      v128 = HIDWORD(v119) * a3;
      v129 = v119 * a3;
      v130 = v119 * HIDWORD(a3) + v128 + HIDWORD(v129);
      v131 = HIDWORD(v128) + v120 * HIDWORD(a3) + HIDWORD(v130);
      v132 = v129 | (v130 << 32);
      v55 = __CFADD__(v127, v131);
      v133 = v127 + v131;
      if (v55)
      {
        v134 = 1;
      }

      else
      {
        v134 = v126;
      }

      if (v133 == v9 && !v134 && v132 == a1)
      {
        return 1;
      }

      v59 = v133 > v9;
      v135 = v133 == v9;
      v136 = v59;
      if (v134)
      {
        v137 = 1;
      }

      else
      {
        v137 = v136;
      }

      if (v132 <= a1)
      {
        v135 = 0;
      }

      v97 = v137 | v135;
      v98 = a4 >> 63;
    }

    else
    {
      v62 = &qword_280A5D960[2 * (v18 - 20)];
      v64 = *v62;
      v63 = v62[1];
      v65 = HIDWORD(v63);
      v66 = v63 * HIDWORD(a3);
      v67 = HIDWORD(v66) + HIDWORD(v63) * HIDWORD(a3);
      v68 = HIDWORD(v63) * a3 + v66 + ((v63 * a3) >> 32);
      v69 = HIDWORD(v68);
      v70 = (v63 * a3) | (v68 << 32);
      v71 = HIDWORD(v64);
      v72 = v64 * HIDWORD(a3);
      v73 = HIDWORD(v64) * a3 + v72 + ((v64 * a3) >> 32);
      v74 = (v64 * a3) | (v73 << 32);
      v75 = __PAIR128__(v67, v70) + __PAIR128__(v69, HIDWORD(v72) + HIDWORD(v64) * HIDWORD(a3) + HIDWORD(v73));
      v76 = HIDWORD(v12);
      v77 = v63 * v76;
      v78 = v63 * a4;
      v79 = v65 * a4;
      v80 = HIDWORD(v77) + v65 * v76;
      v81 = v79 + v77 + HIDWORD(v78);
      v82 = HIDWORD(v81);
      v83 = v78 | (v81 << 32);
      v84 = v64 * v76;
      v85 = v64 * a4;
      v86 = HIDWORD(v84) + v71 * v76;
      v87 = v71 * a4 + v84 + HIDWORD(v85);
      v88 = v85 | (v87 << 32);
      v89 = __PAIR128__(v80, v83) + __PAIR128__(v82, v86 + HIDWORD(v87));
      v90 = v75 + v88;
      v91 = __CFADD__(v75, v88) + v89;
      LODWORD(v92) = __CFADD__(__CFADD__(v75, v88), v89);
      v55 = __CFADD__(*(&v75 + 1), v91);
      v93 = *(&v75 + 1) + v91;
      if (v55)
      {
        v92 = 1;
      }

      else
      {
        v92 = v92;
      }

      v94 = (*(&v89 + 1) + v92) | v93;
      if (v90 == v9 && !v94 && v74 == a1)
      {
        return 1;
      }

      v59 = v90 > v9;
      v95 = v90 == v9;
      v96 = v59;
      if (v94)
      {
        v96 = 1;
      }

      if (v74 <= a1)
      {
        v95 = 0;
      }

      v97 = v96 | v95;
      v98 = a2 >> 63;
    }

    return v97 ^ v98;
  }

  return result;
}

id sub_2770990B4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v12 = 0;
  v4 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v12];
  v5 = v12;
  if (!v4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSKeyedArchiver(TSUAdditions) tsu_securelyArchiveRoot:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSKeyedArchiver_TSUAdditions.m"];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v5 domain];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, v7, 21, 0, "Unable to encode object %@: errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v3, v9, v10, [v5 code], v5);

    +[TSUAssertionHandler logFullBacktrace];
  }

  return v4;
}

id sub_2770991FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x277CBEB98] setWithObject:a4];
  v8 = [v6 tsu_securelyUnarchiveRoot:v5 forClasses:v7];

  return v8;
}

id sub_277099288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:a4 fromData:a3 error:&v6];
  if (!v4 && TSUDefaultCat_init_token != -1)
  {
    sub_277113FD0();
  }

  return v4;
}

uint64_t sub_277099308()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

id sub_27709934C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v9 = 0;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:a3 options:0 error:&v9];
  if (v6)
  {
    v7 = [objc_opt_class() tsu_securelyUnarchiveRoot:v6 forClasses:v5];
  }

  else
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277113FF8();
    }

    v7 = 0;
  }

  return v7;
}

uint64_t sub_277099410()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_27709A804(uint64_t a1, unint64_t a2, unsigned int a3, char *a4, uint64_t a5, void *a6, size_t a7)
{
  if (a4)
  {
    v7 = a1 == 0;
  }

  else
  {
    v7 = 1;
  }

  v10 = !v7 && a5 == 16 && a3 > 0x3E7 && HIDWORD(a2) == 0;
  v11 = v10;
  if (v10)
  {
    v18 = a7 + 4;
    if (a7 + 4 <= 0x14)
    {
      v18 = 20;
    }

    v19 = malloc_type_calloc(1uLL, v18 + 40, 0x100004077774924uLL);
    sub_2770E8BA8(sub_27709A8F4, 20, a1, a2, a6, a7, a3, a4, 0x10u, v19);
    free(v19);
  }

  return v11;
}

void sub_27709ADF0(double a1, double a2, double a3)
{
  if (a2 != 0.0 && a3 != 0.0)
  {
    v5 = a1;
    for (i = 0.0; v5 >= 360.0; v5 = v5 + -360.0)
    {
      i = i + 1.0;
    }

    for (; v5 < 0.0; v5 = v5 + 360.0)
    {
      i = i + -1.0;
    }

    if (v5 < 0.0 || v5 >= 360.0)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSUEllipseParametricAngleWithPolarAngle(CGFloat, CGFloat, CGFloat)"}];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v7, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPathAdditions.m"], 37, 0, "Angle out of range");
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    if (v5 / 90.0 - floor(v5 / 90.0) >= 0.01 && ceil(v5 / 90.0) - v5 / 90.0 >= 0.01)
    {
      v8 = __sincos_stret(v5 * 3.14159265 / 180.0);
        ;
      }

        ;
      }

      if (j < 0.0 || j >= 360.0)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSUEllipseParametricAngleWithPolarAngle(CGFloat, CGFloat, CGFloat)"}];
        +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v10, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBezierPathAdditions.m"], 55, 0, "Angle out of range");
        +[TSUAssertionHandler logBacktraceThrottled];
      }
    }
  }
}

void sub_27709B6B8(uint64_t a1)
{
  if (qword_280A63CD0)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUResourceRequestAnalyticsSender setSharedAnalyticsSender:]_block_invoke"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUResourceRequestAnalyticsSender.m"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:25 isFatal:0 description:"expected nil value for '%{public}s'", "sSharedAnalyticsSender"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v4 = *(a1 + 32);

  objc_storeStrong(&qword_280A63CD0, v4);
}

uint64_t sub_27709B908()
{
  v0 = dispatch_queue_create("TSUResourceRequestAnalyticsSender.sharedInstace", 0);
  v1 = qword_280A63CD8;
  qword_280A63CD8 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_27709BE38(void *a1, uint64_t a2, int a3)
{
  v3 = [a1 readToBuffer:a2 size:a3];
  if (v3 >= 0x80000000)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"int SFUXmlReaderIORead(void *, char *, int)"}];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v4, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUDataRepresentation.m"], 475, 0, "Overflow in SFUXmlReaderIORead");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return v3;
}

uint64_t sub_27709BF84(void *a1)
{
  [a1 close];

  return 0;
}

void sub_27709C2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SFUDataRepresentation readIntoData:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUDataRepresentation.m"], 248, 0, "Caught exception trying to read storage into NSMutableData: %@");
    +[TSUAssertionHandler logBacktraceThrottled];
    [v9 setLength:v10];
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27709C86C(void *a1, uint64_t a2)
{
  v4 = [a1 offset];
  [a1 seekToOffset:v4 + a2];
  return [a1 offset] - v4;
}

void sub_27709C8C0(void *a1)
{
  [a1 closeLocalStream];
}

unint64_t sub_27709C8F8(unint64_t a1, uint64_t a2, _DWORD *a3)
{
  if ((~a2 & 0x7800000000000000) == 0)
  {
LABEL_2:
    *a3 |= 1u;
    return 0x8000000000000000;
  }

  v4 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0)
  {
    return 0;
  }

  v3 = 0;
  v7 = a1 > 0x378D8E63FFFFFFFFLL && v4 == 0x1ED09BEAD87C0;
  if ((~a2 & 0x6000000000000000) != 0 && !v7)
  {
    v3 = v4 | a1;
    if (v4 | a1)
    {
      if (a1 >> 53)
      {
        v8 = HIDWORD(a1);
      }

      else
      {
        v8 = a1;
      }

      if (a1 >> 53)
      {
        v9 = -990;
      }

      else
      {
        v9 = -1022;
      }

      if (v4)
      {
        v8 = a2 & 0x1FFFFFFFFFFFFLL;
      }

      v10 = COERCE_UNSIGNED_INT64(v8) >> 52;
      if (v4)
      {
        v9 = -958;
      }

      v11 = &unk_280A5C3F0 + 32 * (v10 + v9 - 1);
      v12 = *v11;
      if (!*v11)
      {
        v12 = *(v11 + 6);
        v13 = *(v11 + 1);
        if (v4 > v13 || v4 == v13 && *(v11 + 2) <= a1)
        {
          ++v12;
        }
      }

      v14 = (a2 >> 49) & 0x3FFF;
      v15 = v12 + v14 - 6176;
      if (v15 >= 20)
      {
        goto LABEL_2;
      }

      if (v15 == 19)
      {
        if (a2 < 0)
        {
          if (v12 > 19)
          {
            if (v12 == 20)
            {
              v34 = 5;
              v35 = 5;
            }

            else
            {
              v83 = qword_280A5D8C0[v12 - 20];
              v84 = 5 * v83;
              v85 = 5 * HIDWORD(v83);
              v86 = 5 * v83;
              v87 = HIDWORD(v86) + v85;
              v35 = v86 | (v87 << 32);
              v34 = v84 + HIDWORD(v85) + HIDWORD(v87);
            }

            v32 = a2 & 0x1FFFFFFFFFFFFLL;
            v33 = a1;
          }

          else
          {
            v27 = qword_280A5D8C0[20 - v12];
            v28 = HIDWORD(v27);
            v29 = v27 * HIDWORD(a1);
            v30 = v27 * a1;
            v31 = v28 * a1 + v29 + HIDWORD(v30);
            v32 = HIDWORD(v29) + v28 * HIDWORD(a1) + HIDWORD(v31);
            v33 = v30 | (v31 << 32);
            v34 = 5;
            v35 = 5;
          }

          if (v32 > v34 || v32 == v34 && v33 > v35)
          {
            goto LABEL_2;
          }
        }

        else
        {
          if (v12 > 19)
          {
            if (v12 == 20)
            {
              v23 = -5;
              v24 = 4;
            }

            else
            {
              v81 = qword_280A5D8C0[v12 - 20];
              v82 = 4294967291 * HIDWORD(v81);
              v23 = (-5 * v81) | ((v82 - v81 + ((4294967291u * v81) >> 32)) << 32);
              v24 = 0xFFFFFFFF * HIDWORD(v81) + 4 * v81 + HIDWORD(v82) + (((v81 << 32) - v81 + v82 + ((4294967291u * v81) >> 32)) >> 32);
            }

            v21 = a2 & 0x1FFFFFFFFFFFFLL;
            v22 = a1;
          }

          else
          {
            v16 = qword_280A5D8C0[20 - v12];
            v17 = HIDWORD(v16);
            v18 = v16 * HIDWORD(a1);
            v19 = v16 * a1;
            v20 = v17 * a1 + v18 + HIDWORD(v19);
            v21 = HIDWORD(v18) + v17 * HIDWORD(a1) + HIDWORD(v20);
            v22 = v19 | (v20 << 32);
            v23 = -5;
            v24 = 4;
          }

          if (v21 > v24 || v21 == v24 && v22 >= v23)
          {
            goto LABEL_2;
          }
        }

LABEL_37:
        if (v14 >> 5 > 0xC0)
        {
          if (v14 == 6176)
          {
            if (a2 >= 0)
            {
              return a1;
            }

            else
            {
              return -a1;
            }
          }

          v3 = qword_280A5D8C0[(v14 - 6176)] * a1;
        }

        else
        {
          if (v14 < 0x180D)
          {
            v26 = &qword_280A5D2B0[2 * (6156 - v14)];
            v4 += v26[1];
            v25 = (6175 - v14);
          }

          else
          {
            v25 = (6175 - v14);
            v26 = &qword_280A5D210[v25];
          }

          v37 = *v26;
          v38 = __CFADD__(v37, a1);
          v39 = v37 + a1;
          if (v38)
          {
            v40 = v4 + 1;
          }

          else
          {
            v40 = v4;
          }

          v41 = HIDWORD(v39);
          v42 = &qword_280A5DF70[2 * v25];
          v44 = *v42;
          v43 = v42[1];
          v45 = HIDWORD(v43);
          v46 = HIDWORD(v39) * v43;
          v47 = HIDWORD(v46) + HIDWORD(v39) * HIDWORD(v43);
          v48 = v39 * HIDWORD(v43) + v46 + ((v39 * v43) >> 32);
          v49 = HIDWORD(v48);
          v50 = (v39 * v43) | (v48 << 32);
          v51 = HIDWORD(v44);
          v52 = v44 * HIDWORD(v39);
          v53 = v44 * v39;
          v54 = HIDWORD(v44) * v39 + v52 + HIDWORD(v53);
          v55 = __PAIR128__(v47, v50) + __PAIR128__(v49, HIDWORD(v52) + HIDWORD(v44) * v41 + HIDWORD(v54));
          v56 = HIDWORD(v40);
          LODWORD(v49) = v40;
          v57 = HIDWORD(v40) * v43;
          v58 = v40 * v43;
          v59 = v40 * v45;
          v60 = HIDWORD(v57) + HIDWORD(v40) * v45;
          v61 = v59 + v57 + HIDWORD(v58);
          v62 = HIDWORD(v61);
          v63 = v58 | (v61 << 32);
          v64 = HIDWORD(v40) * v44;
          v65 = v40 * v44;
          v66 = v49 * HIDWORD(v44) + v64 + HIDWORD(v65);
          v67 = v65 | (v66 << 32);
          v69 = v63 + HIDWORD(v64) + v56 * v51 + HIDWORD(v66);
          v68 = (__PAIR128__(v60, v63) + __PAIR128__(v62, HIDWORD(v64) + v56 * v51 + HIDWORD(v66))) >> 64;
          v38 = __CFADD__(v67, v55);
          v71 = (__PAIR128__(v69, v67) + v55) >> 64;
          v70 = v67 + v55;
          v72 = __CFADD__(v38, v69);
          v73 = *(&v55 + 1) + v71;
          v74 = __CFADD__(*(&v55 + 1), v71) || v72;
          v75 = v68 + v74;
          v76 = qword_280A5E218[v25];
          if (v14 >> 1 < 0xC05)
          {
            v78 = (v76 & v75) == 0;
            v3 = v75 >> dword_280A5E190[v25];
            v77 = v73;
          }

          else
          {
            v77 = v76 & v73;
            v3 = ((2 * v75) << ~dword_280A5E190[v25]) | (v73 >> dword_280A5E190[v25]);
            v78 = 1;
          }

          if (v78 && !v77)
          {
            v79 = v53 | (v54 << 32);
            if (v70 | v79)
            {
              if (__PAIR128__(v70, v79) <= xmmword_280A5E440[v25] && (v3 & 1) != 0)
              {
                --v3;
              }
            }
          }
        }

        v80 = a2 >= 0;
        goto LABEL_91;
      }

      if (v15 < 0)
      {
        return 0;
      }

      if (v15)
      {
        goto LABEL_37;
      }

      if (v12 > 19)
      {
        v88 = &qword_280A5D2B0[2 * (v12 - 20)];
        v89 = v88[1];
        if (v4 < v89)
        {
          return 0;
        }

        if (v4 != v89)
        {
          goto LABEL_90;
        }

        v36 = *v88;
      }

      else
      {
        if (v4)
        {
LABEL_90:
          v80 = a2 >= 0;
          v3 = 1;
LABEL_91:
          if (!v80)
          {
            return -v3;
          }

          return v3;
        }

        v36 = qword_280A5D210[v12 - 1];
      }

      if (v36 >= a1)
      {
        return 0;
      }

      goto LABEL_90;
    }
  }

  return v3;
}

void sub_27709D0E4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_27709E278(void *a1, uint64_t a2, CGColorSpace *a3, void *a4)
{
  v6 = a4;
  v8 = CGColorSpaceCopyPropertyList(a3);
  v7 = [MEMORY[0x277CCAC58] dataWithPropertyList:v8 format:200 options:0 error:0];
  [a1 encodeObject:v7 forKey:v6];
}

CGColorSpaceRef sub_27709E310(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 decodeObjectOfClass:objc_opt_class() forKey:v4];

  if (v5)
  {
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:0];
    v7 = CGColorSpaceCreateWithPropertyList(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

FILE *sub_27709E3C0(void *a1, const char *a2)
{
  v3 = fopen([a1 fileSystemRepresentation], a2);
  if (!v3)
  {
    [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUFileOpenError" format:{@"Could not open %@", a1}];
  }

  return v3;
}

uint64_t sub_27709E424(void *a1, int a2, uint64_t a3)
{
  v4 = open([a1 fileSystemRepresentation], a2, a3);
  if (v4 == -1)
  {
    [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUOpenError" format:{@"Could not open %@", a1}];
  }

  return v4;
}

uint64_t sub_27709E49C(uint64_t a1)
{
  v2 = dup(a1);
  if (v2 == -1)
  {
    [MEMORY[0x277CBEAD8] sfu_errnoRaise:@"SFUDupError" format:{@"Could not dup %d", a1}];
  }

  return v2;
}

void sub_27709E954(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_27709EE58(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    free(v3);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_27709F4A8(void *a1)
{
  objc_begin_catch(a1);
  free(v1);
  objc_exception_rethrow();
}

void sub_2770A065C(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    if (TSUErrorCat_init_token != -1)
    {
      sub_277114034();
    }

    objc_end_catch();
  }

  JUMPOUT(0x2770A062CLL);
}

os_log_t sub_2770A06D4()
{
  result = TSULogCreateCategory("TSUErrorCat");
  TSUErrorCat_log_t = result;
  return result;
}

void sub_2770A0C98(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2770A0C38);
  }

  _Unwind_Resume(a1);
}

void sub_2770A1080(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_2770A1934()
{
  result = TSULogCreateCategory("TSUErrorCat");
  TSUErrorCat_log_t = result;
  return result;
}

void sub_2770A1EE8(void *a1)
{
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x2770A1E74);
}

uint64_t sub_2770A2244(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if (*(*(&v6 + 1) + 8 * i))
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

void sub_2770A2338(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = 0;
  v5 = [a1 count];
  if (v5)
  {
    v6 = v5;
    v7 = 1;
    do
    {
      v8 = [a1 pointerAtIndex:v7 - 1];
      if (v8)
      {
        v4[2](v4, v8, v7 - 1, &v9);
      }

      if (v7 >= v6)
      {
        break;
      }

      ++v7;
    }

    while ((v9 & 1) == 0);
  }
}

void sub_2770A23D8(void *a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v13 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v12 + 1) + 8 * v10);
      if (v11)
      {
        v4[2](v4, v11, v8, &v16);
        if (v16)
        {
          break;
        }
      }

      ++v8;
      if (v7 == ++v10)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

uint64_t sub_2770A2504(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a3;
  if (a3 >= [a1 count])
  {

    return [a1 setCount:v5 + a4];
  }

  else
  {
    v7 = [a1 count];
    result = [a1 setCount:{objc_msgSend(a1, "count") + a4}];
    for (i = v7 - 1; i >= v5; --i)
    {
      result = [a1 replacePointerAtIndex:a4 + i withPointer:{objc_msgSend(a1, "pointerAtIndex:", i)}];
    }

    if (v5 + a4 >= v7)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5 + a4;
    }

    if (v5 < v10)
    {
      do
      {
        result = [a1 replacePointerAtIndex:v5++ withPointer:0];
      }

      while (v10 != v5);
    }
  }

  return result;
}

unint64_t sub_2770A25F4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = [a1 count];
  if (a3 < result)
  {
    v8 = a3 + a4;
    if (a3 + a4 < [a1 count])
    {
      v9 = [a1 count];
      if (v8 < v9)
      {
        v10 = v9;
        do
        {
          [a1 replacePointerAtIndex:a3++ withPointer:{objc_msgSend(a1, "pointerAtIndex:", v8++)}];
        }

        while (v8 < v10);
      }

      a3 = [a1 count] - a4;
    }

    return [a1 setCount:a3];
  }

  return result;
}

uint64_t sub_2770A26C4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770A2784;
  v5[3] = &unk_27A702690;
  v5[4] = &v6;
  v5[5] = a3;
  [a1 tsu_enumerateNonNullPointersUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_2770A276C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770A2784(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 40) == a2)
  {
    *(*(*(result + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void sub_2770A27AC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 count];
  [a1 setCount:{objc_msgSend(a1, "count") + objc_msgSend(v4, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2770A2868;
  v6[3] = &unk_27A7026B8;
  v6[4] = a1;
  v6[5] = v5;
  [v4 tsu_enumerateNonNullPointersUsingBlock:v6];
}

id sub_2770A2878(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [a1 count];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"NSPointerArray %p Count:%lu", a1, v2];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a1;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v3;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"\n    %@", *(*(&v12 + 1) + 8 * v8)];
        v3 = [v9 stringByAppendingString:v10];

        ++v8;
        v9 = v3;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

void sub_2770A338C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x2770A3398);
  }

  _Unwind_Resume(v2);
}

void sub_2770A33C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2770A33C8);
  }

  objc_terminate();
}

uint64_t sub_2770A5448()
{
  v3 = time(0);
  v0 = localtime(&v3);
  tm_year = v0->tm_year;
  if (tm_year <= 81)
  {
    tm_year = 81;
  }

  return ((tm_year << 25) + 1610612736) | ((v0->tm_mon << 21) + 0x200000) | (v0->tm_mday << 16) | (v0->tm_hour << 11) | (32 * v0->tm_min) | (v0->tm_sec >> 1);
}

void sub_2770A55A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

os_log_t sub_2770A5654()
{
  result = TSULogCreateCategory("TSUErrorCat");
  TSUErrorCat_log_t = result;
  return result;
}

void sub_2770A5A64(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_2770A6040(void *a1)
{
  objc_begin_catch(a1);
  fclose(v1);
  objc_exception_rethrow();
}

os_log_t sub_2770A6670()
{
  result = TSULogCreateCategory("TSUErrorCat");
  TSUErrorCat_log_t = result;
  return result;
}

void sub_2770A6A28()
{
  v0 = qword_280A63CE8;
  qword_280A63CE8 = &unk_28864C6E8;
}

uint64_t sub_2770AC43C()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"GyYuUQqMLlwWdDFgEecahHKkjmsSAzZOvVXx"];
  v1 = qword_280A63D08;
  qword_280A63D08 = v0;

  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"'"];
  v3 = qword_280A63CF8;
  qword_280A63CF8 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

void sub_2770AE080(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a2;
  v5 = [v3 defaultCenter];
  [v5 addObserver:*(a1 + 32) selector:sel_p_didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:v4];
  [v5 addObserver:*(a1 + 32) selector:sel_p_didEnterBackground_ name:*MEMORY[0x277D76660] object:v4];
}

uint64_t sub_2770AE458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:a4 arguments:&a9];
  v12 = MEMORY[0x277CCACA8];
  v13 = __error();
  v14 = [v12 stringWithFormat:@"%@: %s", v11, strerror(*v13)];
  return [objc_msgSend(a1 exceptionWithName:a3 reason:v14 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", *__error()), @"SFUFileUtilsErrnoKey", "raise"}];
}

uint64_t sub_2770AE534(void *a1)
{
  v1 = [objc_msgSend(a1 "userInfo")];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 intValue];
}

void sub_2770AE740(uint64_t a1)
{
  v261[103] = *MEMORY[0x277D85DE8];
  v260[0] = &unk_28864BCE0;
  v242 = SFUMainBundle();
  v241 = [v242 localizedStringForKey:@"Western (Mac OS Roman)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[0] = v241;
  v260[1] = &unk_28864BCF8;
  v240 = SFUMainBundle();
  v239 = [v240 localizedStringForKey:@"Japanese (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[1] = v239;
  v260[2] = &unk_28864BD10;
  v238 = SFUMainBundle();
  v237 = [v238 localizedStringForKey:@"Traditional Chinese (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[2] = v237;
  v260[3] = &unk_28864BD28;
  v236 = SFUMainBundle();
  v235 = [v236 localizedStringForKey:@"Korean (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[3] = v235;
  v260[4] = &unk_28864BD40;
  v234 = SFUMainBundle();
  v233 = [v234 localizedStringForKey:@"Arabic (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[4] = v233;
  v260[5] = &unk_28864BD58;
  v232 = SFUMainBundle();
  v231 = [v232 localizedStringForKey:@"Hebrew (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[5] = v231;
  v260[6] = &unk_28864BD70;
  v230 = SFUMainBundle();
  v229 = [v230 localizedStringForKey:@"Greek (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[6] = v229;
  v260[7] = &unk_28864BD88;
  v228 = SFUMainBundle();
  v227 = [v228 localizedStringForKey:@"Cyrillic (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[7] = v227;
  v260[8] = &unk_28864BDA0;
  v226 = SFUMainBundle();
  v225 = [v226 localizedStringForKey:@"Devanagari (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[8] = v225;
  v260[9] = &unk_28864BDB8;
  v224 = SFUMainBundle();
  v223 = [v224 localizedStringForKey:@"Gurmukhi (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[9] = v223;
  v260[10] = &unk_28864BDD0;
  v222 = SFUMainBundle();
  v221 = [v222 localizedStringForKey:@"Gujarati (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[10] = v221;
  v260[11] = &unk_28864BDE8;
  v220 = SFUMainBundle();
  v219 = [v220 localizedStringForKey:@"Thai (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[11] = v219;
  v260[12] = &unk_28864BE00;
  v218 = SFUMainBundle();
  v217 = [v218 localizedStringForKey:@"Simplified Chinese (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[12] = v217;
  v260[13] = &unk_28864BE18;
  v216 = SFUMainBundle();
  v215 = [v216 localizedStringForKey:@"Tibetan (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[13] = v215;
  v260[14] = &unk_28864BE30;
  v214 = SFUMainBundle();
  v213 = [v214 localizedStringForKey:@"Central European (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[14] = v213;
  v260[15] = &unk_28864BE48;
  v212 = SFUMainBundle();
  v211 = [v212 localizedStringForKey:@"Symbol (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[15] = v211;
  v260[16] = &unk_28864BE60;
  v210 = SFUMainBundle();
  v209 = [v210 localizedStringForKey:@"Turkish (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[16] = v209;
  v260[17] = &unk_28864BE78;
  v208 = SFUMainBundle();
  v207 = [v208 localizedStringForKey:@"Croatian (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[17] = v207;
  v260[18] = &unk_28864BE90;
  v206 = SFUMainBundle();
  v205 = [v206 localizedStringForKey:@"Icelandic (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[18] = v205;
  v260[19] = &unk_28864BEA8;
  v204 = SFUMainBundle();
  v203 = [v204 localizedStringForKey:@"Romanian (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[19] = v203;
  v260[20] = &unk_28864BEC0;
  v202 = SFUMainBundle();
  v201 = [v202 localizedStringForKey:@"Celtic (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[20] = v201;
  v260[21] = &unk_28864BED8;
  v200 = SFUMainBundle();
  v199 = [v200 localizedStringForKey:@"Gaelic (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[21] = v199;
  v260[22] = &unk_28864BEF0;
  v198 = SFUMainBundle();
  v197 = [v198 localizedStringForKey:@"Farsi (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[22] = v197;
  v260[23] = &unk_28864BF08;
  v196 = SFUMainBundle();
  v195 = [v196 localizedStringForKey:@"Cyrillic (Mac OS Ukrainian)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[23] = v195;
  v260[24] = &unk_28864BF20;
  v194 = SFUMainBundle();
  v193 = [v194 localizedStringForKey:@"Inuit (Mac OS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[24] = v193;
  v260[25] = &unk_28864BF38;
  v192 = SFUMainBundle();
  v191 = [v192 localizedStringForKey:@"Unicode (UTF-16)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[25] = v191;
  v260[26] = &unk_28864BF50;
  v190 = SFUMainBundle();
  v189 = [v190 localizedStringForKey:@"Unicode (UTF-7)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[26] = v189;
  v260[27] = &unk_28864BF68;
  v188 = SFUMainBundle();
  v187 = [v188 localizedStringForKey:@"Unicode (UTF-8)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[27] = v187;
  v260[28] = &unk_28864BF80;
  v186 = SFUMainBundle();
  v185 = [v186 localizedStringForKey:@"Unicode (UTF-32)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[28] = v185;
  v260[29] = &unk_28864BF98;
  v184 = SFUMainBundle();
  v183 = [v184 localizedStringForKey:@"Unicode (UTF-16BE)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[29] = v183;
  v260[30] = &unk_28864BFB0;
  v182 = SFUMainBundle();
  v181 = [v182 localizedStringForKey:@"Unicode (UTF-16LE)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[30] = v181;
  v260[31] = &unk_28864BFC8;
  v180 = SFUMainBundle();
  v179 = [v180 localizedStringForKey:@"Unicode (UTF-32BE)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[31] = v179;
  v260[32] = &unk_28864BFE0;
  v178 = SFUMainBundle();
  v177 = [v178 localizedStringForKey:@"Unicode (UTF-32LE)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[32] = v177;
  v260[33] = &unk_28864BFF8;
  v176 = SFUMainBundle();
  v175 = [v176 localizedStringForKey:@"Western (ISO Latin 1)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[33] = v175;
  v260[34] = &unk_28864C010;
  v174 = SFUMainBundle();
  v173 = [v174 localizedStringForKey:@"Central European (ISO Latin 2)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[34] = v173;
  v260[35] = &unk_28864C028;
  v172 = SFUMainBundle();
  v171 = [v172 localizedStringForKey:@"Western (ISO Latin 3)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[35] = v171;
  v260[36] = &unk_28864C040;
  v170 = SFUMainBundle();
  v169 = [v170 localizedStringForKey:@"Central European (ISO Latin 4)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[36] = v169;
  v260[37] = &unk_28864C058;
  v168 = SFUMainBundle();
  v167 = [v168 localizedStringForKey:@"Cyrillic (ISO 8859-5)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[37] = v167;
  v260[38] = &unk_28864C070;
  v166 = SFUMainBundle();
  v165 = [v166 localizedStringForKey:@"Arabic (ISO 8859-6)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[38] = v165;
  v260[39] = &unk_28864C088;
  v164 = SFUMainBundle();
  v163 = [v164 localizedStringForKey:@"Greek (ISO 8859-7)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[39] = v163;
  v260[40] = &unk_28864C0A0;
  v162 = SFUMainBundle();
  v161 = [v162 localizedStringForKey:@"Hebrew (ISO 8859-8)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[40] = v161;
  v260[41] = &unk_28864C0B8;
  v160 = SFUMainBundle();
  v159 = [v160 localizedStringForKey:@"Turkish (ISO Latin 5)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[41] = v159;
  v260[42] = &unk_28864C0D0;
  v158 = SFUMainBundle();
  v157 = [v158 localizedStringForKey:@"Nordic (ISO Latin 6)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[42] = v157;
  v260[43] = &unk_28864C0E8;
  v156 = SFUMainBundle();
  v155 = [v156 localizedStringForKey:@"Thai (ISO 8859-11)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[43] = v155;
  v260[44] = &unk_28864C100;
  v154 = SFUMainBundle();
  v153 = [v154 localizedStringForKey:@"Baltic (ISO Latin 7)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[44] = v153;
  v260[45] = &unk_28864C118;
  v152 = SFUMainBundle();
  v151 = [v152 localizedStringForKey:@"Celtic (ISO Latin 8)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[45] = v151;
  v260[46] = &unk_28864C130;
  v150 = SFUMainBundle();
  v149 = [v150 localizedStringForKey:@"Western (ISO Latin 9)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[46] = v149;
  v260[47] = &unk_28864C148;
  v148 = SFUMainBundle();
  v147 = [v148 localizedStringForKey:@"Romanian (ISO Latin 10)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[47] = v147;
  v260[48] = &unk_28864C160;
  v146 = SFUMainBundle();
  v145 = [v146 localizedStringForKey:@"Latin-US (DOS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[48] = v145;
  v260[49] = &unk_28864C178;
  v144 = SFUMainBundle();
  v143 = [v144 localizedStringForKey:@"Greek (DOS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[49] = v143;
  v260[50] = &unk_28864C190;
  v142 = SFUMainBundle();
  v141 = [v142 localizedStringForKey:@"Baltic (DOS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[50] = v141;
  v260[51] = &unk_28864C1A8;
  v140 = SFUMainBundle();
  v139 = [v140 localizedStringForKey:@"Western (DOS Latin 1)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[51] = v139;
  v260[52] = &unk_28864C1C0;
  v138 = SFUMainBundle();
  v137 = [v138 localizedStringForKey:@"Greek (DOS Greek 1)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[52] = v137;
  v260[53] = &unk_28864C1D8;
  v136 = SFUMainBundle();
  v135 = [v136 localizedStringForKey:@"Central European (DOS Latin 2)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[53] = v135;
  v260[54] = &unk_28864C1F0;
  v134 = SFUMainBundle();
  v133 = [v134 localizedStringForKey:@"Cyrillic (DOS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[54] = v133;
  v260[55] = &unk_28864C208;
  v132 = SFUMainBundle();
  v131 = [v132 localizedStringForKey:@"Turkish (DOS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[55] = v131;
  v260[56] = &unk_28864C220;
  v130 = SFUMainBundle();
  v129 = [v130 localizedStringForKey:@"Portuguese (DOS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[56] = v129;
  v260[57] = &unk_28864C238;
  v128 = SFUMainBundle();
  v127 = [v128 localizedStringForKey:@"Icelandic (DOS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[57] = v127;
  v260[58] = &unk_28864C250;
  v126 = SFUMainBundle();
  v125 = [v126 localizedStringForKey:@"Hebrew (DOS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[58] = v125;
  v260[59] = &unk_28864C268;
  v124 = SFUMainBundle();
  v123 = [v124 localizedStringForKey:@"Canadian French (DOS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[59] = v123;
  v260[60] = &unk_28864C280;
  v122 = SFUMainBundle();
  v121 = [v122 localizedStringForKey:@"Arabic (DOS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[60] = v121;
  v260[61] = &unk_28864C298;
  v120 = SFUMainBundle();
  v119 = [v120 localizedStringForKey:@"Nordic (DOS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[61] = v119;
  v260[62] = &unk_28864C2B0;
  v118 = SFUMainBundle();
  v117 = [v118 localizedStringForKey:@"Russian (DOS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[62] = v117;
  v260[63] = &unk_28864C2C8;
  v116 = SFUMainBundle();
  v115 = [v116 localizedStringForKey:@"Greek (DOS Greek 2)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[63] = v115;
  v260[64] = &unk_28864C2E0;
  v114 = SFUMainBundle();
  v113 = [v114 localizedStringForKey:@"Thai (Windows value:DOS)" table:{&stru_28862C2A0, @"TSUtility"}];
  v261[64] = v113;
  v260[65] = &unk_28864C2F8;
  v112 = SFUMainBundle();
  v111 = [v112 localizedStringForKey:@"Japanese (Windows value:DOS)" table:{&stru_28862C2A0, @"TSUtility"}];
  v261[65] = v111;
  v260[66] = &unk_28864C310;
  v110 = SFUMainBundle();
  v109 = [v110 localizedStringForKey:@"Simplified Chinese (Windows value:DOS)" table:{&stru_28862C2A0, @"TSUtility"}];
  v261[66] = v109;
  v260[67] = &unk_28864C328;
  v108 = SFUMainBundle();
  v107 = [v108 localizedStringForKey:@"Korean (Windows value:DOS)" table:{&stru_28862C2A0, @"TSUtility"}];
  v261[67] = v107;
  v260[68] = &unk_28864C340;
  v106 = SFUMainBundle();
  v105 = [v106 localizedStringForKey:@"Traditional Chinese (Windows value:DOS)" table:{&stru_28862C2A0, @"TSUtility"}];
  v261[68] = v105;
  v260[69] = &unk_28864C358;
  v104 = SFUMainBundle();
  v103 = [v104 localizedStringForKey:@"Western (Windows Latin 1)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[69] = v103;
  v260[70] = &unk_28864C370;
  v102 = SFUMainBundle();
  v101 = [v102 localizedStringForKey:@"Central European (Windows Latin 2)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[70] = v101;
  v260[71] = &unk_28864C388;
  v100 = SFUMainBundle();
  v99 = [v100 localizedStringForKey:@"Cyrillic (Windows)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[71] = v99;
  v260[72] = &unk_28864C3A0;
  v98 = SFUMainBundle();
  v97 = [v98 localizedStringForKey:@"Greek (Windows)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[72] = v97;
  v260[73] = &unk_28864C3B8;
  v96 = SFUMainBundle();
  v95 = [v96 localizedStringForKey:@"Turkish (Windows Latin 5)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[73] = v95;
  v260[74] = &unk_28864C3D0;
  v94 = SFUMainBundle();
  v93 = [v94 localizedStringForKey:@"Hebrew (Windows)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[74] = v93;
  v260[75] = &unk_28864C3E8;
  v92 = SFUMainBundle();
  v91 = [v92 localizedStringForKey:@"Arabic (Windows)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[75] = v91;
  v260[76] = &unk_28864C400;
  v90 = SFUMainBundle();
  v89 = [v90 localizedStringForKey:@"Baltic (Windows)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[76] = v89;
  v260[77] = &unk_28864C418;
  v88 = SFUMainBundle();
  v87 = [v88 localizedStringForKey:@"Vietnamese (Windows)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[77] = v87;
  v260[78] = &unk_28864C430;
  v86 = SFUMainBundle();
  v85 = [v86 localizedStringForKey:@"Western (ASCII)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[78] = v85;
  v260[79] = &unk_28864C448;
  v84 = SFUMainBundle();
  v83 = [v84 localizedStringForKey:@"Japanese (Shift JIS X0213)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[79] = v83;
  v260[80] = &unk_28864C460;
  v82 = SFUMainBundle();
  v81 = [v82 localizedStringForKey:@"Chinese (GBK)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[80] = v81;
  v260[81] = &unk_28864C478;
  v80 = SFUMainBundle();
  v79 = [v80 localizedStringForKey:@"Chinese (GB 18030)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[81] = v79;
  v260[82] = &unk_28864C490;
  v78 = SFUMainBundle();
  v77 = [v78 localizedStringForKey:@"Japanese (ISO 2022-JP)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[82] = v77;
  v260[83] = &unk_28864C4A8;
  v76 = SFUMainBundle();
  v75 = [v76 localizedStringForKey:@"Japanese (ISO 2022-JP-2)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[83] = v75;
  v260[84] = &unk_28864C4C0;
  v74 = SFUMainBundle();
  v73 = [v74 localizedStringForKey:@"Japanese (ISO 2022-JP-1)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[84] = v73;
  v260[85] = &unk_28864C4D8;
  v72 = SFUMainBundle();
  v71 = [v72 localizedStringForKey:@"Chinese (ISO 2022-CN)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[85] = v71;
  v260[86] = &unk_28864C4F0;
  v70 = SFUMainBundle();
  v69 = [v70 localizedStringForKey:@"Korean (ISO 2022-KR)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[86] = v69;
  v260[87] = &unk_28864C508;
  v68 = SFUMainBundle();
  v67 = [v68 localizedStringForKey:@"Japanese (EUC)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[87] = v67;
  v260[88] = &unk_28864C520;
  v66 = SFUMainBundle();
  v65 = [v66 localizedStringForKey:@"Simplified Chinese (GB 2312)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[88] = v65;
  v260[89] = &unk_28864C538;
  v64 = SFUMainBundle();
  v63 = [v64 localizedStringForKey:@"Traditional Chinese (EUC)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[89] = v63;
  v260[90] = &unk_28864C550;
  v62 = SFUMainBundle();
  v61 = [v62 localizedStringForKey:@"Korean (EUC)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[90] = v61;
  v260[91] = &unk_28864C568;
  v60 = SFUMainBundle();
  v59 = [v60 localizedStringForKey:@"Japanese (Shift JIS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[91] = v59;
  v260[92] = &unk_28864C580;
  v58 = SFUMainBundle();
  v57 = [v58 localizedStringForKey:@"Cyrillic (KOI8-R)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[92] = v57;
  v260[93] = &unk_28864C598;
  v56 = SFUMainBundle();
  v55 = [v56 localizedStringForKey:@"Traditional Chinese (Big 5)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[93] = v55;
  v260[94] = &unk_28864C5B0;
  v54 = SFUMainBundle();
  v53 = [v54 localizedStringForKey:@"Western (Mac Mail)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[94] = v53;
  v260[95] = &unk_28864C5C8;
  v52 = SFUMainBundle();
  v51 = [v52 localizedStringForKey:@"Simplified Chinese (HZ GB 2312)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[95] = v51;
  v260[96] = &unk_28864C5E0;
  v50 = SFUMainBundle();
  v49 = [v50 localizedStringForKey:@"Traditional Chinese (Big 5 HKSCS)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[96] = v49;
  v260[97] = &unk_28864C5F8;
  v48 = SFUMainBundle();
  v47 = [v48 localizedStringForKey:@"Ukrainian (KOI8-U)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[97] = v47;
  v260[98] = &unk_28864C610;
  v1 = SFUMainBundle();
  v2 = [v1 localizedStringForKey:@"Traditional Chinese (Big 5-E)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[98] = v2;
  v260[99] = &unk_28864C628;
  v3 = SFUMainBundle();
  v4 = [v3 localizedStringForKey:@"Western (NextStep)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[99] = v4;
  v260[100] = &unk_28864C640;
  v5 = SFUMainBundle();
  v6 = [v5 localizedStringForKey:@"Non-lossy ASCII" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[100] = v6;
  v260[101] = &unk_28864C658;
  v7 = SFUMainBundle();
  v8 = [v7 localizedStringForKey:@"Western (EBCDIC Latin Core)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[101] = v8;
  v260[102] = &unk_28864C670;
  v9 = SFUMainBundle();
  v10 = [v9 localizedStringForKey:@"Western (EBCDIC Latin 1)" value:&stru_28862C2A0 table:@"TSUtility"];
  v261[102] = v10;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v261 forKeys:v260 count:103];

  v253 = 0;
  v254 = &v253;
  v255 = 0x3032000000;
  v256 = sub_2770B11EC;
  v257 = sub_2770B11FC;
  v258 = [MEMORY[0x277CBEB38] dictionary];
  v252[0] = MEMORY[0x277D85DD0];
  v252[1] = 3221225472;
  v252[2] = sub_2770B1204;
  v252[3] = &unk_27A702708;
  v252[4] = &v253;
  [v46 enumerateKeysAndObjectsUsingBlock:v252];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v254[5]];
  v12 = qword_280A63D10;
  qword_280A63D10 = v11;

  v13 = [MEMORY[0x277CBEB38] dictionary];
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = [MEMORY[0x277CCACA8] availableStringEncodings];
  v16 = *v15;
  if (*v15)
  {
    do
    {
      v17 = CFStringConvertNSStringEncodingToEncoding(v16);
      v18 = qword_280A63D10;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
      v20 = [v18 objectForKeyedSubscript:v19];

      if (!v20 || [v20 isEqualToString:&stru_28862C2A0])
      {
        v21 = [*(a1 + 32) p_fallbackNameForEncoding:{*v15, v46}];

        v20 = v21;
      }

      v22 = [v13 objectForKeyedSubscript:{v20, v46}];
      v23 = v22 == 0;

      if (!v23)
      {
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUStringEncodingHelper p_initializeEncodings]_block_invoke_2"];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTextEncodingTools.m"];
        [TSUAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:354 isFatal:0 description:"Duplicate encoding names!"];

        +[TSUAssertionHandler logBacktraceThrottled];
      }

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*v15];
      [v13 setObject:v26 forKeyedSubscript:v20];

      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*v15];
      [v14 setObject:v27 forKeyedSubscript:v28];

      v29 = v15[1];
      ++v15;
      v16 = v29;
    }

    while (v29);
  }

  v30 = qword_280A63D10;
  v249[0] = MEMORY[0x277D85DD0];
  v249[1] = 3221225472;
  v249[2] = sub_2770B1280;
  v249[3] = &unk_27A702730;
  v244 = v13;
  v250 = v244;
  v31 = v14;
  v251 = v31;
  [v30 enumerateKeysAndObjectsUsingBlock:v249];
  v32 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v244];
  v33 = qword_280A63D20;
  qword_280A63D20 = v32;

  v34 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:v31];
  v35 = qword_280A63D18;
  qword_280A63D18 = v34;

  v36 = [MEMORY[0x277CBEB18] array];
  v248 = 0u;
  v247 = 0u;
  v246 = 0u;
  v245 = 0u;
  v37 = [qword_280A63D10 allValues];
  v38 = [v37 countByEnumeratingWithState:&v245 objects:v259 count:16];
  if (v38)
  {
    v39 = *v246;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v246 != v39)
        {
          objc_enumerationMutation(v37);
        }

        v41 = *(*(&v245 + 1) + 8 * i);
        v42 = [qword_280A63D20 objectForKeyedSubscript:{v41, v46}];
        v43 = [v42 integerValue];

        if (v43)
        {
          [v36 addObject:v41];
        }
      }

      v38 = [v37 countByEnumeratingWithState:&v245 objects:v259 count:16];
    }

    while (v38);
  }

  v44 = [v36 sortedArrayWithOptions:0 usingComparator:&unk_28862A4C8];
  v45 = qword_280A63D28;
  qword_280A63D28 = v44;

  _Block_object_dispose(&v253, 8);
}

uint64_t sub_2770B11EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770B1204(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 tsu_stringWithoutNonbreakingSpaces];
  [*(*(*(a1 + 32) + 8) + 40) setObject:v6 forKeyedSubscript:v5];
}

void sub_2770B1280(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = [v16 unsignedIntValue];
    v8 = CFStringConvertEncodingToNSStringEncoding(v7);
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
      [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];

      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
      v12 = *(a1 + 40);
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
      [v12 setObject:v11 forKeyedSubscript:v13];
    }

    else
    {
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUStringEncodingHelper p_initializeEncodings]_block_invoke_3"];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUTextEncodingTools.m"];
      [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:367 isFatal:0 description:"Couldn't convert encodings!"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }
  }
}

uint64_t sub_2770B1688(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 subpathsAtPath:?];
  v5 = [v4 count];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *MEMORY[0x277CCA1C0];
  do
  {
    v10 = [objc_msgSend(a3 stringByAppendingPathComponent:{objc_msgSend(v4, "objectAtIndex:", v8)), "stringByResolvingSymlinksInPath"}];
    v11 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (v11)
    {
      v12 = [v11 objectForKey:v9];
      if (v12)
      {
        v7 += [v12 unsignedLongLongValue];
      }
    }

    ++v8;
  }

  while (v6 != v8);
  return v7;
}

uint64_t sub_2770B1750(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = 0;
  if (![a1 fileExistsAtPath:a3 isDirectory:&v14])
  {
    return 0;
  }

  if (v14 == 1)
  {
    return [a1 sfu_directoryUsage:a3];
  }

  v13 = 0;
  v6 = [a1 attributesOfItemAtPath:a3 error:&v13];
  if (!v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) sfu_pathUsage:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/NSFileManager_SFUAdditions.m"];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v13 domain];
    v12 = [v13 code];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:56 isFatal:0 description:"Failed to get size of file at path: %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", a3, v10, v11, v12, v13];
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return [v6 fileSize];
}

uint64_t sub_2770B187C(void *a1, uint64_t a2, uint64_t a3, void *a4, int a5, void *a6, uint64_t a7)
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = 0;
  v13 = objc_autoreleasePoolPush();
  v14 = [a1 attributesOfItemAtPath:objc_msgSend(a4 error:{"path"), &v40}];
  v15 = [v14 fileType];
  if (!v15)
  {
    goto LABEL_28;
  }

  v16 = v15;
  v17 = [v15 isEqualToString:*MEMORY[0x277CCA1F8]];
  v18 = *MEMORY[0x277CCA1F0];
  if ((v17 & 1) == 0 && ([v16 isEqualToString:*MEMORY[0x277CCA1F0]] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CCA1E8]) & 1) == 0)
  {
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) sfup_setAttributes:ofItemAtURL:recursively:error:shouldUpdateAttributesHandler:]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v29, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/NSFileManager_SFUAdditions.m"], 76, 0, "Unhandled type: %@", v16);
    +[TSUAssertionHandler logBacktraceThrottled];
LABEL_28:
    v20 = 0;
    goto LABEL_29;
  }

  if (([v16 isEqualToString:v18] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", *MEMORY[0x277CCA1E8]))
  {
    v19 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    if (v19 && ([objc_msgSend(objc_msgSend(a4 "path")] & 1) != 0 || a7 && !(*(a7 + 16))(a7, v14))
    {
      v20 = 1;
    }

    else
    {
      v20 = [a1 setAttributes:a3 ofItemAtPath:objc_msgSend(a4 error:{"path"), &v40}];
    }
  }

  else
  {
    v20 = 0;
  }

  if ([v16 isEqualToString:*MEMORY[0x277CCA1E8]])
  {
    v21 = a5 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    goto LABEL_29;
  }

  v22 = [a1 contentsOfDirectoryAtURL:a4 includingPropertiesForKeys:0 options:0 error:&v40];
  if (!v22)
  {
    goto LABEL_28;
  }

  v23 = v22;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v24 = [v22 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (!v24)
  {
    objc_autoreleasePoolPop(v13);
    return 1;
  }

  v25 = v24;
  v26 = *v37;
  do
  {
    for (i = 0; i != v25; ++i)
    {
      if (*v37 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = [a1 sfup_setAttributes:a3 ofItemAtURL:*(*(&v36 + 1) + 8 * i) recursively:1 error:&v40 shouldUpdateAttributesHandler:a7];
    }

    v20 = v28;
    v25 = [v23 countByEnumeratingWithState:&v36 objects:v41 count:16];
  }

  while (v25);
LABEL_29:
  if ((v20 & 1) == 0 && v40)
  {
    v30 = v40;
  }

  objc_autoreleasePoolPop(v13);
  if (v40)
  {
    v31 = v20;
  }

  else
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    v32 = v40;
  }

  if (a6)
  {
    v33 = v20;
  }

  else
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    v34 = v40;
    if (!v40)
    {
      v34 = [MEMORY[0x277CCA9B8] tsu_fileWriteUnknownErrorWithUserInfo:0];
    }

    v20 = 0;
    *a6 = v34;
  }

  return v20;
}

uint64_t sub_2770B1BF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id *a6)
{
  v7 = a5;
  v9 = [a1 sfup_setAttributes:a3 ofItemAtURL:a4 recursively:a5 error:a6 shouldUpdateAttributesHandler:0];
  v10 = v9;
  if (a6 && (v9 & 1) == 0 && ([*a6 tsu_isNoSuchFileError] & 1) == 0)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSFileManager(SFUtilityAdditions) sfu_setAttributes:ofItemAtURL:recursively:error:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/NSFileManager_SFUAdditions.m"];
    if (v7)
    {
      v13 = @" recursively";
    }

    else
    {
      v13 = &stru_28862C2A0;
    }

    v14 = objc_opt_class();
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v11, v12, 131, 0, "Failed to%{public}@ change file attributes at %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", v13, a4, NSStringFromClass(v14), [*a6 domain], objc_msgSend(*a6, "code"), *a6);
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return v10;
}

uint64_t sub_2770B1D10(unint64_t a1, unint64_t a2, _DWORD *a3)
{
  if ((~a2 & 0x7800000000000000) == 0)
  {
    goto LABEL_2;
  }

  v4 = a2 & 0x1FFFFFFFFFFFFLL;
  if ((a2 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0)
  {
    return 0;
  }

  v3 = 0;
  v7 = a1 > 0x378D8E63FFFFFFFFLL && v4 == 0x1ED09BEAD87C0;
  if ((~a2 & 0x6000000000000000) != 0 && !v7)
  {
    v3 = v4 | a1;
    if (v4 | a1)
    {
      if (a1 >> 53)
      {
        v8 = HIDWORD(a1);
      }

      else
      {
        v8 = a1;
      }

      if (a1 >> 53)
      {
        v9 = -990;
      }

      else
      {
        v9 = -1022;
      }

      if (v4)
      {
        v8 = a2 & 0x1FFFFFFFFFFFFLL;
      }

      v10 = COERCE_UNSIGNED_INT64(v8) >> 52;
      if (v4)
      {
        v9 = -958;
      }

      v11 = &unk_280A5C3F0 + 32 * (v10 + v9 - 1);
      v12 = *v11;
      if (!*v11)
      {
        v12 = *(v11 + 6);
        v13 = *(v11 + 1);
        if (v4 > v13 || v4 == v13 && *(v11 + 2) <= a1)
        {
          ++v12;
        }
      }

      v14 = (a2 >> 49) & 0x3FFF;
      v15 = v14 - 6176;
      v16 = v12 + v14 - 6176;
      if (v16 >= 21)
      {
        goto LABEL_2;
      }

      if (v16 == 20)
      {
        if ((a2 & 0x8000000000000000) != 0)
        {
          goto LABEL_2;
        }

        if (v12 == 1)
        {
          v17 = LODWORD(qword_280A5D960[0]) * HIDWORD(a1);
          v18 = HIDWORD(qword_280A5D960[0]) * a1 + v17 + ((LODWORD(qword_280A5D960[0]) * a1) >> 32);
          v19 = qword_280A5D968 * a1 + HIDWORD(qword_280A5D960[0]) * HIDWORD(a1) + HIDWORD(v17) + HIDWORD(v18);
          v20 = v19 == 9;
          if (v19 <= 9)
          {
            v21 = (LODWORD(qword_280A5D960[0]) * a1) | (v18 << 32);
            goto LABEL_44;
          }

          goto LABEL_2;
        }

        if (v12 <= 19)
        {
          v22 = qword_280A5D8C0[21 - v12];
          v23 = HIDWORD(v22);
          v24 = v22 * HIDWORD(a1);
          v25 = v22 * a1;
          v26 = v23 * a1 + v24 + HIDWORD(v25);
          v27 = HIDWORD(v24) + v23 * HIDWORD(a1) + HIDWORD(v26);
          v20 = v27 == 9;
          if (v27 <= 9)
          {
            v21 = v25 | (v26 << 32);
LABEL_44:
            v28 = v20 && v21 >= 0xFFFFFFFFFFFFFFFBLL;
            if (v28)
            {
              goto LABEL_2;
            }

            goto LABEL_48;
          }

LABEL_2:
          *a3 |= 1u;
          return 0x8000000000000000;
        }

        if (v12 == 21)
        {
          if (v4 > 9 || a1 >= 0xFFFFFFFFFFFFFFFBLL && v4 == 9)
          {
            goto LABEL_2;
          }
        }

        else if (v12 == 20)
        {
          if (v4)
          {
            goto LABEL_2;
          }
        }

        else
        {
          v76 = qword_280A5D8C0[v12 - 21];
          v77 = 4294967291 * HIDWORD(v76);
          v78 = 4294967291 * v76;
          v79 = (v76 << 32) - v76 + v77 + HIDWORD(v78);
          v80 = 9 * v76 - HIDWORD(v76) + (HIDWORD(v76) << 32) + HIDWORD(v77) + HIDWORD(v79);
          if (v4 > v80)
          {
            goto LABEL_2;
          }

          v81 = v78 | (v79 << 32);
          if (v4 == v80 && v81 <= a1)
          {
            goto LABEL_2;
          }
        }

LABEL_48:
        if (v14 >> 5 > 0xC0)
        {
          v3 = a1;
          if (v15)
          {
            return qword_280A5D8C0[v15] * a1;
          }
        }

        else
        {
          if (v14 < 0x180D)
          {
            v30 = &qword_280A5D2B0[2 * (6156 - v14)];
            v4 += v30[1];
            v29 = (6175 - v14);
          }

          else
          {
            v29 = (6175 - v14);
            v30 = &qword_280A5D210[v29];
          }

          v34 = *v30;
          v28 = __CFADD__(v34, a1);
          v35 = v34 + a1;
          if (v28)
          {
            v36 = v4 + 1;
          }

          else
          {
            v36 = v4;
          }

          v37 = HIDWORD(v35);
          v38 = &qword_280A5DF70[2 * v29];
          v40 = *v38;
          v39 = v38[1];
          v41 = HIDWORD(v39);
          v42 = HIDWORD(v35) * v39;
          v43 = HIDWORD(v42) + HIDWORD(v35) * HIDWORD(v39);
          v44 = v35 * HIDWORD(v39) + v42 + ((v35 * v39) >> 32);
          v45 = HIDWORD(v44);
          v46 = (v35 * v39) | (v44 << 32);
          v47 = HIDWORD(v40);
          v48 = v40 * HIDWORD(v35);
          v49 = v40 * v35;
          v50 = HIDWORD(v40) * v35 + v48 + HIDWORD(v49);
          v51 = __PAIR128__(v43, v46) + __PAIR128__(v45, HIDWORD(v48) + HIDWORD(v40) * v37 + HIDWORD(v50));
          v52 = HIDWORD(v36);
          LODWORD(v45) = v36;
          v53 = HIDWORD(v36) * v39;
          v54 = v36 * v39;
          v55 = v36 * v41;
          v56 = HIDWORD(v53) + HIDWORD(v36) * v41;
          v57 = v55 + v53 + HIDWORD(v54);
          v58 = HIDWORD(v57);
          v59 = v54 | (v57 << 32);
          v60 = HIDWORD(v36) * v40;
          v61 = v36 * v40;
          v62 = v45 * HIDWORD(v40) + v60 + HIDWORD(v61);
          v63 = v61 | (v62 << 32);
          v65 = v59 + HIDWORD(v60) + v52 * v47 + HIDWORD(v62);
          v64 = (__PAIR128__(v56, v59) + __PAIR128__(v58, HIDWORD(v60) + v52 * v47 + HIDWORD(v62))) >> 64;
          v28 = __CFADD__(v63, v51);
          v67 = (__PAIR128__(v65, v63) + v51) >> 64;
          v66 = v63 + v51;
          v68 = __CFADD__(v28, v65);
          v69 = *(&v51 + 1) + v67;
          v70 = __CFADD__(*(&v51 + 1), v67) || v68;
          v71 = v64 + v70;
          v72 = qword_280A5E218[v29];
          if (v14 >> 1 < 0xC05)
          {
            v74 = (v72 & v71) == 0;
            v3 = v71 >> dword_280A5E190[v29];
            v73 = v69;
          }

          else
          {
            v73 = v72 & v69;
            v3 = ((2 * v71) << ~dword_280A5E190[v29]) | (v69 >> dword_280A5E190[v29]);
            v74 = 1;
          }

          if (v74 && !v73)
          {
            v75 = v49 | (v50 << 32);
            if (v66 | v75)
            {
              if (__PAIR128__(v66, v75) <= xmmword_280A5E440[v29] && (v3 & 1) != 0)
              {
                --v3;
              }
            }
          }
        }

        return v3;
      }

      if (v16 < 0)
      {
        return 0;
      }

      if (v16)
      {
        if ((a2 & 0x8000000000000000) != 0)
        {
          goto LABEL_2;
        }

        goto LABEL_48;
      }

      if (v12 > 19)
      {
        v32 = &qword_280A5D2B0[2 * (v12 - 20)];
        v33 = v32[1];
        if (v4 < v33)
        {
          return 0;
        }

        if (v4 != v33)
        {
LABEL_64:
          if ((a2 & 0x8000000000000000) == 0)
          {
            return 1;
          }

          goto LABEL_2;
        }

        v31 = *v32;
      }

      else
      {
        if (v4)
        {
          goto LABEL_64;
        }

        v31 = qword_280A5D210[v12 - 1];
      }

      if (v31 >= a1)
      {
        return 0;
      }

      goto LABEL_64;
    }
  }

  return v3;
}

BOOL sub_2770B21EC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return a3 + a4 < a1 + a2;
  }

  else
  {
    return a1 < a3;
  }
}

void TSUNormalizeRangeVector(uint64_t **a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = (v3 - v2) >> 4;
  if (v5 < 2)
  {
    return;
  }

  v25 = sub_2770B21EC;
  v6 = 126 - 2 * __clz(v5);
  if (v3 == v2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_2770B262C(v2, v3, &v25, v7, 1);
  v9 = *a1;
  v8 = a1[1];
  v10 = (v8 - *a1) >> 4;
  if (v10 >= 2)
  {
    v11 = 0;
    v12 = *v9;
    v13 = 1;
    while (1)
    {
      if (v10 <= v13 + 1)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = v10;
      }

      v15 = &v9[2 * v13 + 1];
      v16 = ~v13;
      v17 = v14 - v13;
      while (1)
      {
        v18 = *(v15 - 1);
        if (v12 != v18)
        {
          break;
        }

        v15 += 2;
        --v16;
        if (!--v17)
        {
          goto LABEL_21;
        }
      }

      v19 = &v9[2 * v11];
      v20 = *v15;
      v21 = v19[1] + *v19;
      if (v21 >= v18)
      {
        v22 = v20 + v18;
        if (v21 >= v22)
        {
          goto LABEL_19;
        }

        v20 = v22 - *v19;
      }

      else
      {
        ++v11;
        v19 = &v9[2 * v11];
        *v19 = v18;
      }

      v19[1] = v20;
LABEL_19:
      v13 = -v16;
      if (-v16 < v10)
      {
        v12 = v18;
        if (v11 < v10)
        {
          continue;
        }
      }

LABEL_21:
      if (v11 < v10)
      {
        v23 = 2 * v11;
LABEL_25:
        v24 = &v9[v23 + 2];
        if (v24 != v8)
        {
          a1[1] = v24;
        }
      }

      return;
    }
  }

  if (v8 != v9)
  {
    v23 = 0;
    goto LABEL_25;
  }
}

void TSURangeVectorSubtract(char **a1, uint64_t a2, char **a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = (v7 - *a1) >> 4;
  v9 = *a2;
  v10 = *(a2 + 8) - *a2;
  if (v10)
  {
    a3[1] = *a3;
    if (v7 != v6)
    {
      v11 = 0;
      v12 = 0;
      v13 = v10 >> 4;
      v14 = *v9;
      v15 = v9[1];
      if (v8 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v8;
      }

      v22 = v16;
      while (1)
      {
        v24 = *&(*a1)[16 * v12];
        v17 = v24;
        v18 = *(&v24 + 1) + v24;
        if (v11 >= v13)
        {
          break;
        }

        v19 = (*a2 + 16 * v11 + 24);
        while (v14 + v15 < v24 || !v15 && *(&v24 + 1) && v14 < v18)
        {
          if (++v11 < v13)
          {
            v14 = *(v19 - 1);
            v15 = *v19;
          }

          v19 += 2;
          if (v13 == v11)
          {
            v11 = v13;
            goto LABEL_17;
          }
        }

        if (v15 || *(&v24 + 1) || v14 != v18)
        {
          if (!*(&v24 + 1) && (v14 >= v24 || v18 >= v14 + v15))
          {
LABEL_18:
            sub_277079700(a3, &v24);
          }

LABEL_19:
          while (v17 < v18 && v11 < v13 && v14 < v18)
          {
            if (v14 > v17)
            {
              *&v23 = v17;
              *(&v23 + 1) = v14 - v17;
              sub_277079700(a3, &v23);
            }

            v17 = v14 + v15;
            if (v14 + v15 <= v18)
            {
              v20 = v11 + 1;
              if (v11 + 1 < v13)
              {
                v21 = (*a2 + 16 * v11 + 24);
                while (1)
                {
                  v14 = *(v21 - 1);
                  v15 = *v21;
                  if (*v21)
                  {
                    break;
                  }

                  if (v14 >= v18)
                  {
                    v15 = 0;
                    break;
                  }

                  v21 += 2;
                  if (v13 == ++v20)
                  {
                    v15 = 0;
                    v11 = v13;
                    if (v17 >= v18)
                    {
                      goto LABEL_37;
                    }

                    goto LABEL_36;
                  }
                }
              }

              v11 = v20;
            }
          }

          if (v17 < v18)
          {
LABEL_36:
            *&v23 = v17;
            *(&v23 + 1) = v18 - v17;
            sub_277079700(a3, &v23);
          }

          goto LABEL_37;
        }

        v15 = 0;
        v14 = *(&v24 + 1) + v24;
LABEL_37:
        if (++v12 == v22)
        {
          return;
        }
      }

LABEL_17:
      if (!*(&v24 + 1))
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }
  }

  else if (a3 != a1)
  {

    sub_277079E3C(a3, v6, v7, v8);
  }
}

void TSUFilterEmptyRange(__int128 **a1, void *a2)
{
  a2[1] = *a2;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      if (*(&v5 + 1))
      {
        sub_277079700(a2, &v5);
      }

      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2770B262C(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, char a5)
{
LABEL_1:
  v53 = a2 - 4;
  v54 = a2 - 2;
  v52 = a2 - 6;
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v47 = *(a2 - 2);
        v48 = *(a2 - 1);
        v49 = a2 - 2;
        if ((*a3)(v47, v48, *v9, v9[1]))
        {
          v73 = *v9;
          *v9 = *v49;
          *v49 = v73;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      sub_2770B2E5C(v9, v9 + 2, v9 + 4, v54, a3);
      return;
    }

    if (v12 == 5)
    {

      sub_2770B2FBC(v9, v9 + 2, v9 + 4, v9 + 6, v54, a3);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        sub_2770B30A0(v9, a2, a3);
      }

      else
      {

        sub_2770B3178(v9, a2, a3);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        sub_2770B37A4(v9, a2, a2, a3);
      }

      return;
    }

    v13 = &v9[2 * (v12 >> 1)];
    v14 = *a3;
    if (v12 >= 0x81)
    {
      v15 = v14(*v13, v13[1], *v9, v9[1]);
      v16 = (*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]);
      if (v15)
      {
        if (v16)
        {
          v55 = *v9;
          v17 = a2 - 2;
          *v9 = *v54;
          goto LABEL_28;
        }

        v61 = *v9;
        *v9 = *v13;
        *v13 = v61;
        if ((*a3)(*(a2 - 2), *(a2 - 1), *v13, v13[1]))
        {
          v55 = *v13;
          v17 = a2 - 2;
          *v13 = *v54;
LABEL_28:
          *v17 = v55;
        }
      }

      else if (v16)
      {
        v57 = *v13;
        *v13 = *v54;
        *v54 = v57;
        if ((*a3)(*v13, v13[1], *v9, v9[1]))
        {
          v58 = *v9;
          *v9 = *v13;
          *v13 = v58;
        }
      }

      v21 = (v9 + 2);
      v22 = v13 - 2;
      v23 = (*a3)(*(v13 - 2), *(v13 - 1), a1[2], a1[3]);
      v24 = (*a3)(*(a2 - 4), *(a2 - 3), *(v13 - 2), *(v13 - 1));
      if (v23)
      {
        if (v24)
        {
          v25 = *v21;
          v26 = a2 - 4;
          *v21 = *v53;
          goto LABEL_42;
        }

        v28 = *v21;
        *v21 = *v22;
        *v22 = v28;
        if ((*a3)(*(a2 - 4), *(a2 - 3), *v22, *(v13 - 1)))
        {
          v64 = *v22;
          v26 = a2 - 4;
          *v22 = *v53;
          v25 = v64;
LABEL_42:
          *v26 = v25;
        }
      }

      else if (v24)
      {
        v62 = *v22;
        *v22 = *v53;
        *v53 = v62;
        if ((*a3)(*v22, *(v13 - 1), a1[2], a1[3]))
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
        }
      }

      v29 = (a1 + 4);
      v30 = v13 + 2;
      v31 = (*a3)(v13[2], v13[3], a1[4], a1[5]);
      v32 = (*a3)(*(a2 - 6), *(a2 - 5), v13[2], v13[3]);
      if (v31)
      {
        if (v32)
        {
          v33 = *v29;
          v34 = a2 - 6;
          *v29 = *v52;
          goto LABEL_51;
        }

        v36 = *v29;
        *v29 = *v30;
        *v30 = v36;
        if ((*a3)(*(a2 - 6), *(a2 - 5), *v30, v13[3]))
        {
          v66 = *v30;
          v34 = a2 - 6;
          *v30 = *v52;
          v33 = v66;
LABEL_51:
          *v34 = v33;
        }
      }

      else if (v32)
      {
        v65 = *v30;
        *v30 = *v52;
        *v52 = v65;
        if ((*a3)(*v30, v13[3], a1[4], a1[5]))
        {
          v35 = *v29;
          *v29 = *v30;
          *v30 = v35;
        }
      }

      v37 = (*a3)(*v13, v13[1], *v22, *(v13 - 1));
      v38 = (*a3)(*v30, v13[3], *v13, v13[1]);
      if (v37)
      {
        if (v38)
        {
          v67 = *v22;
          *v22 = *v30;
          goto LABEL_60;
        }

        v70 = *v22;
        *v22 = *v13;
        *v13 = v70;
        if ((*a3)(*v30, v13[3], *v13, v13[1]))
        {
          v67 = *v13;
          *v13 = *v30;
LABEL_60:
          *v30 = v67;
        }
      }

      else if (v38)
      {
        v68 = *v13;
        *v13 = *v30;
        *v30 = v68;
        if ((*a3)(*v13, v13[1], *v22, *(v13 - 1)))
        {
          v69 = *v22;
          *v22 = *v13;
          *v13 = v69;
        }
      }

      v71 = *a1;
      *a1 = *v13;
      *v13 = v71;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v18 = v14(*v9, v9[1], *v13, v13[1]);
    v19 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]);
    if (v18)
    {
      if (v19)
      {
        v56 = *v13;
        v20 = a2 - 2;
        *v13 = *v54;
        goto LABEL_37;
      }

      v63 = *v13;
      *v13 = *v9;
      *v9 = v63;
      if ((*a3)(*(a2 - 2), *(a2 - 1), *v9, v9[1]))
      {
        v56 = *v9;
        v20 = a2 - 2;
        *v9 = *v54;
LABEL_37:
        *v20 = v56;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v19)
    {
      goto LABEL_38;
    }

    v59 = *v9;
    *v9 = *v54;
    *v54 = v59;
    if (!(*a3)(*v9, v9[1], *v13, v13[1]))
    {
      goto LABEL_38;
    }

    v60 = *v13;
    *v13 = *v9;
    *v9 = v60;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (((*a3)(*(a1 - 2), *(a1 - 1), *a1, a1[1]) & 1) == 0)
    {
      v9 = sub_2770B3228(a1, a2, a3);
      goto LABEL_68;
    }

LABEL_63:
    v39 = sub_2770B3360(a1, a2, a3);
    if ((v40 & 1) == 0)
    {
      goto LABEL_66;
    }

    v41 = sub_2770B3494(a1, v39, a3);
    v9 = v39 + 2;
    if (sub_2770B3494(v39 + 2, a2, a3))
    {
      a4 = -v11;
      a2 = v39;
      if (v41)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v41)
    {
LABEL_66:
      sub_2770B262C(a1, v39, a3, -v11, a5 & 1);
      v9 = v39 + 2;
LABEL_68:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  v42 = v9 + 2;
  v43 = (*a3)(v9[2], v9[3], *v9, v9[1]);
  v44 = a2 - 2;
  v45 = (*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]);
  if (v43)
  {
    if (v45)
    {
      v72 = *v9;
      *v9 = *v44;
      v46 = v72;
    }

    else
    {
      v75 = *v9;
      *v9 = *v42;
      *v42 = v75;
      if (!(*a3)(*(a2 - 2), *(a2 - 1), v9[2], v9[3]))
      {
        return;
      }

      v46 = *v42;
      *v42 = *v44;
    }

    *v44 = v46;
  }

  else if (v45)
  {
    v51 = *v42;
    *v42 = *v44;
    *v44 = v51;
    if ((*a3)(v9[2], v9[3], *v9, v9[1]))
    {
      v74 = *v9;
      *v9 = *v42;
      *v42 = v74;
    }
  }
}

__n128 sub_2770B2E5C(void *a1, void *a2, void *a3, void *a4, uint64_t (**a5)(void, void, void, void))
{
  v10 = (*a5)(*a2, a2[1], *a1, a1[1]);
  v11 = (*a5)(*a3, a3[1], *a2, a2[1]);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    v15 = *a1;
    *a1 = *a2;
    *a2 = v15;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, a2[1], *a1, a1[1]))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  if ((*a5)(*a4, a4[1], *a3, a3[1]))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a5)(*a3, a3[1], *a2, a2[1]))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a5)(*a2, a2[1], *a1, a1[1]))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

__n128 sub_2770B2FBC(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t (**a6)(void, void, void, void))
{
  v12 = sub_2770B2E5C(a1, a2, a3, a4, a6);
  if ((*a6)(*a5, a5[1], *a4, a4[1], v12))
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    if ((*a6)(*a4, a4[1], *a3, a3[1]))
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      if ((*a6)(*a3, a3[1], *a2, a2[1]))
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        if ((*a6)(*a2, a2[1], *a1, a1[1]))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2770B30A0(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v5;
        result = (*a3)(v8[2], v8[3], *v8, v8[1]);
        if (result)
        {
          v10 = *v9;
          v11 = v8[3];
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 16) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v10, v11, *(v4 + v12 - 16), *(v4 + v12 - 8));
            v12 -= 16;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 16);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v10;
          v13[1] = v11;
        }

        v5 = v9 + 2;
        v7 += 16;
        v8 = v9;
      }

      while (v9 + 2 != a2);
    }
  }

  return result;
}

uint64_t sub_2770B3178(uint64_t result, void *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      do
      {
        v7 = v5;
        result = (*a3)(v4[2], v4[3], *v4, v4[1]);
        if (result)
        {
          v8 = *v7;
          v9 = v4[3];
          v10 = v7;
          do
          {
            v11 = v10 - 1;
            *v10 = *(v10 - 1);
            result = (*a3)(v8, v9, *(v10 - 4), *(v10 - 3));
            v10 = v11;
          }

          while ((result & 1) != 0);
          *v11 = v8;
          v11[1] = v9;
        }

        v5 = v7 + 2;
        v4 = v7;
      }

      while (v7 + 2 != a2);
    }
  }

  return result;
}

void *sub_2770B3228(void *a1, _OWORD *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = a2;
  v6 = *a1;
  v7 = a1[1];
  if ((*a3)(*a1, v7, *(a2 - 2), *(a2 - 1)))
  {
    v8 = a1;
    do
    {
      v9 = v8[2];
      v10 = v8[3];
      v8 += 2;
    }

    while (((*a3)(v6, v7, v9, v10) & 1) == 0);
  }

  else
  {
    v11 = a1 + 2;
    do
    {
      v8 = v11;
      if (v11 >= v4)
      {
        break;
      }

      v12 = (*a3)(v6, v7, *v11, v11[1]);
      v11 = v8 + 2;
    }

    while (!v12);
  }

  if (v8 < v4)
  {
    do
    {
      v13 = *(v4 - 2);
      v14 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v13, v14) & 1) != 0);
  }

  while (v8 < v4)
  {
    v20 = *v8;
    *v8 = *v4;
    *v4 = v20;
    do
    {
      v15 = v8[2];
      v16 = v8[3];
      v8 += 2;
    }

    while (!(*a3)(v6, v7, v15, v16));
    do
    {
      v17 = *(v4 - 2);
      v18 = *(v4-- - 1);
    }

    while (((*a3)(v6, v7, v17, v18) & 1) != 0);
  }

  if (v8 - 2 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 2) = v6;
  *(v8 - 1) = v7;
  return v8;
}

uint64_t *sub_2770B3360(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = 0;
  v7 = *a1;
  v8 = a1[1];
  do
  {
    v9 = (*a3)(a1[v6 + 2], a1[v6 + 3], v7, v8);
    v6 += 2;
  }

  while ((v9 & 1) != 0);
  v10 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v10 >= a2)
      {
        break;
      }

      v13 = *(a2 - 2);
      v14 = *(a2 - 1);
      a2 -= 2;
    }

    while (((*a3)(v13, v14, v7, v8) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *(a2 - 2);
      v12 = *(a2 - 1);
      a2 -= 2;
    }

    while (!(*a3)(v11, v12, v7, v8));
  }

  v15 = &a1[v6];
  if (v10 < a2)
  {
    v16 = a2;
    do
    {
      v17 = *v15;
      *v15 = *v16;
      *v16 = v17;
      do
      {
        v18 = v15[2];
        v19 = v15[3];
        v15 += 2;
      }

      while (((*a3)(v18, v19, v7, v8) & 1) != 0);
      do
      {
        v20 = *(v16 - 2);
        v21 = *(v16 - 1);
        v16 -= 2;
      }

      while (!(*a3)(v20, v21, v7, v8));
    }

    while (v15 < v16);
  }

  result = v15 - 2;
  if (v15 - 2 != a1)
  {
    *a1 = *result;
  }

  *(v15 - 2) = v7;
  *(v15 - 1) = v8;
  return result;
}

BOOL sub_2770B3494(void *a1, char *a2, uint64_t (**a3)(uint64_t, uint64_t, void, void))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a1 + 2;
        v10 = (*a3)(a1[2], a1[3], *a1, a1[1]);
        v11 = a2 - 16;
        v12 = (*a3)(*(a2 - 2), *(a2 - 1), *v9, a1[3]);
        if ((v10 & 1) == 0)
        {
          if (v12)
          {
            v19 = *v9;
            *v9 = *v11;
            *v11 = v19;
            if ((*a3)(a1[2], a1[3], *a1, a1[1]))
            {
              v20 = *a1;
              *a1 = *v9;
              *v9 = v20;
            }
          }

          return 1;
        }

        if (v12)
        {
          v13 = *a1;
          *a1 = *v11;
        }

        else
        {
          v23 = *a1;
          *a1 = *v9;
          *v9 = v23;
          if (!(*a3)(*(a2 - 2), *(a2 - 1), a1[2], a1[3]))
          {
            return 1;
          }

          v13 = *v9;
          *v9 = *v11;
        }

        *v11 = v13;
        return 1;
      case 4:
        sub_2770B2E5C(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        break;
      case 5:
        sub_2770B2FBC(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 16;
    if ((*a3)(*(a2 - 2), *(a2 - 1), *a1, a1[1]))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v15 = (*a3)(a1[2], a1[3], *a1, a1[1]);
  v16 = (a1 + 4);
  v17 = (*a3)(a1[4], a1[5], *v14, a1[3]);
  if (v15)
  {
    if (v17)
    {
      v18 = *a1;
      *a1 = *v16;
    }

    else
    {
      v24 = *a1;
      *a1 = *v14;
      *v14 = v24;
      if (!(*a3)(a1[4], a1[5], a1[2], a1[3]))
      {
        goto LABEL_29;
      }

      v18 = *v14;
      *v14 = *v16;
    }

    *v16 = v18;
  }

  else if (v17)
  {
    v21 = *v14;
    *v14 = *v16;
    *v16 = v21;
    if ((*a3)(a1[2], a1[3], *a1, a1[1]))
    {
      v22 = *a1;
      *a1 = *v14;
      *v14 = v22;
    }
  }

LABEL_29:
  v25 = (a1 + 6);
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    if ((*a3)(*v25, *(v25 + 1), *v16, *(v16 + 1)))
    {
      v28 = *v25;
      v29 = *(v25 + 1);
      v30 = v26;
      while (1)
      {
        v31 = a1 + v30;
        *(a1 + v30 + 48) = *(a1 + v30 + 32);
        if (v30 == -32)
        {
          break;
        }

        v30 -= 16;
        if (((*a3)(v28, v29, *(v31 + 2), *(v31 + 3)) & 1) == 0)
        {
          v32 = (a1 + v30 + 48);
          goto LABEL_37;
        }
      }

      v32 = a1;
LABEL_37:
      *v32 = v28;
      v32[1] = v29;
      if (++v27 == 8)
      {
        return v25 + 16 == a2;
      }
    }

    v16 = v25;
    v26 += 16;
    v25 += 16;
    if (v25 == a2)
    {
      return 1;
    }
  }
}

char *sub_2770B37A4(char *a1, char *a2, char *a3, uint64_t (**a4)(void, void, uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[16 * v9];
      do
      {
        sub_2770B3904(a1, a4, v8, v11);
        v11 -= 16;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(*v12, *(v12 + 1), *a1, *(a1 + 1)))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_2770B3904(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v14 = a2 - 16;
      do
      {
        v18 = *a1;
        v15 = sub_2770B3A48(a1, a4, v8);
        if (v14 == v15)
        {
          *v15 = v18;
        }

        else
        {
          *v15 = *v14;
          *v14 = v18;
          sub_2770B3AF8(a1, (v15 + 16), a4, (v15 + 16 - a1) >> 4);
        }

        v14 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_2770B3904(uint64_t result, unsigned int (**a2)(void, void, void, void), uint64_t a3, void *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v17 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 4)
    {
      v9 = (a4 - result) >> 3;
      v10 = v9 + 1;
      v11 = (result + 16 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 < a3 && (*a2)(*v11, v11[1], v11[2], v11[3]))
      {
        v11 += 2;
        v10 = v12;
      }

      result = (*a2)(*v11, v11[1], *v5, v5[1]);
      if ((result & 1) == 0)
      {
        v13 = *v5;
        v14 = v5[1];
        do
        {
          v15 = v11;
          *v5 = *v11;
          if (v17 < v10)
          {
            break;
          }

          v16 = (2 * v10) | 1;
          v11 = (v6 + 16 * v16);
          if (2 * v10 + 2 < a3)
          {
            if ((*a2)(*v11, v11[1], v11[2], v11[3]))
            {
              v11 += 2;
              v16 = 2 * v10 + 2;
            }
          }

          result = (*a2)(*v11, v11[1], v13, v14);
          v5 = v15;
          v10 = v16;
        }

        while (!result);
        *v15 = v13;
        v15[1] = v14;
      }
    }
  }

  return result;
}

_OWORD *sub_2770B3A48(_OWORD *a1, unsigned int (**a2)(void, void, uint64_t, void), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6];
    v9 = v8 + 1;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 >= a3)
    {
      v6 = (2 * v6) | 1;
    }

    else
    {
      v13 = *(v8 + 4);
      v12 = v8 + 2;
      if ((*a2)(*(v12 - 2), *(v12 - 1), v13, *(v12 + 1)))
      {
        v9 = v12;
        v6 = v11;
      }

      else
      {
        v6 = v10;
      }
    }

    *a1 = *v9;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

uint64_t sub_2770B3AF8(uint64_t result, uint64_t a2, uint64_t (**a3)(void, void, uint64_t, uint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = result;
    v8 = v4 >> 1;
    v9 = (result + 16 * (v4 >> 1));
    v10 = (a2 - 16);
    result = (*a3)(*v9, v9[1], *(a2 - 16), *(a2 - 8));
    if (result)
    {
      v11 = *(a2 - 16);
      v12 = *(a2 - 8);
      do
      {
        v13 = v9;
        *v10 = *v9;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (v7 + 16 * v8);
        result = (*a3)(*v9, v9[1], v11, v12);
        v10 = v13;
      }

      while ((result & 1) != 0);
      *v13 = v11;
      v13[1] = v12;
    }
  }

  return result;
}

void sub_2770B3D78(uint64_t a1)
{
  v2 = atomic_load((*(a1 + 32) + 8));
  if ([*(a1 + 32) _dispatchTimer])
  {
    v3 = [*(a1 + 32) automaticallyCancelPendingBlockUponSchedulingNewBlock];
    v4 = *(a1 + 32);
    if (!v3)
    {
      NSLog(@"[warning]: %@: Ignoring block scheduled for execution %.2f seconds from now.", v4, *(a1 + 48));
      return;
    }

    [v4 _reallyCancel];
  }

  if ((v2 & 1) == 0)
  {
    v5 = [*(a1 + 32) _dispatchQueue];
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);
    v7 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_2770B3EB8;
    handler[3] = &unk_27A702400;
    v9 = *(a1 + 32);
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(v6);
    [*(a1 + 32) _setDispatchTimer:v6];
    dispatch_release(v6);
  }
}

uint64_t sub_2770B3EB8(uint64_t result)
{
  v2 = atomic_load((*(result + 32) + 8));
  if ((v2 & 1) == 0)
  {
    v3 = result;
    (*(*(result + 40) + 16))();
    v4 = *(v3 + 32);

    return [v4 _reallyCancel];
  }

  return result;
}

uint64_t sub_2770B42F0(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    do
    {
      v4 = *a1++;
      a3 = (16777619 * a3) ^ v4;
      --a2;
    }

    while (a2);
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"unsigned int SFUHashWithSeed(const char *, size_t, unsigned int)"}];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/sf/SFUHash.m"], 25, 0, "SFUHash must have at least one byte of input.");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return a3;
}

unint64_t TSUColumnRowSizeFromNxMDescription(NSString *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [(NSString *)v1 componentsSeparatedByString:@"x"];
    if ([v3 count] == 2)
    {
      v4 = [v3 objectAtIndexedSubscript:0];
      v5 = [v4 integerValue];

      v6 = [v3 objectAtIndexedSubscript:1];
      v7 = [v6 integerValue];

      v8 = v5 | (v7 << 32);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t TSUCellCoord::addOffset(TSUCellCoord *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return TSUCellCoord::subtractOffset(this, -a2);
  }

  v2 = a2 / 0x3E8;
  v3 = a2 % 0x3E8 + *(this + 2);
  if (v3 > 0x3E7)
  {
    ++v2;
  }

  if (v2 >= 1000000 - *this)
  {
    return 0;
  }

  if (v3 > 0x3E7)
  {
    LOWORD(v3) = v3 - 1000;
  }

  *this += v2;
  *(this + 2) = v3;
  return 1;
}

uint64_t TSUCellCoord::subtractOffset(TSUCellCoord *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return TSUCellCoord::addOffset(this, -a2);
  }

  v2 = a2 / 0x3E8;
  v3 = *this;
  if (*this < a2 / 0x3E8)
  {
    return 0;
  }

  v4 = a2 % 0x3E8;
  v5 = *(this + 2);
  v6 = v3 - v2;
  if (v3 == v2 && v4 > v5)
  {
    return 0;
  }

  v8 = v3 + ~v2;
  v9 = v5 - v4 + 1000;
  if (v4 <= v5)
  {
    v8 = v6;
    v9 = v5 - v4;
  }

  *this = v8;
  *(this + 2) = v9;
  return 1;
}

uint64_t TSUCellCoord::convertSpanningToInvalid(TSUCellCoord *this)
{
  if ((*this == 0x7FFFFFFF) != ((*this & 0xFFFF00000000) == 0x7FFF00000000))
  {
    return 0x7FFF7FFFFFFFLL;
  }

  else
  {
    return *this;
  }
}

unint64_t TSUCellCoord::decodeFromUInt(unint64_t this)
{
  if (this >> 57)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"static TSUCellCoord TSUCellCoord::decodeFromUInt(TSUIntEncodedCoord)"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowTypes.mm"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:104 isFatal:0 description:"encoded coord %lu exceeds the max allowed (24-bits)", this];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  return (this >> 15) | ((this & 0x7FFF) << 32);
}

BOOL TSUCellCoord::adjustCoordsToBeTopLeftBottomRight(TSUCellCoord *this, TSUCellCoord *a2, TSUCellCoord *a3)
{
  v3 = *(this + 2);
  v4 = *(a2 + 2);
  v5 = *this;
  v6 = *a2;
  if (*this >= *a2)
  {
    v7 = *a2;
  }

  else
  {
    v7 = *this;
  }

  if (v5 <= v6)
  {
    v8 = *a2;
  }

  else
  {
    v8 = *this;
  }

  v9 = v3 > v4;
  if (v3 > v4)
  {
    *(this + 2) = v4;
    *(a2 + 2) = v3;
    v10 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v10;
  }

  if (v5 > v6)
  {
    *this = v7;
    *a2 = v8;
    v11 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v11;
    return 1;
  }

  return v9;
}

uint64_t TSUCellCoord::coordFromString(TSUCellCoord *this, NSString *a2, int a3, char a4)
{
  v6 = a2;
  v7 = this;
  v8 = [(TSUCellCoord *)v7 length];
  if (!v8)
  {
    goto LABEL_4;
  }

  if ([(TSUCellCoord *)v7 characterAtIndex:0]== 36)
  {
    if (v8 == 1)
    {
LABEL_4:
      v9 = 0;
      v10 = 0;
      v11 = 0x7FFF00000000;
      v12 = 0x7FFFFFFFLL;
      goto LABEL_22;
    }

    v13 = 1;
    v22 = 1;
  }

  else
  {
    v13 = 0;
    v22 = 0;
  }

  v14 = -1;
  v12 = 0x7FFFFFFFLL;
  while (v8 != v13)
  {
    v15 = [(TSUCellCoord *)v7 characterAtIndex:v13];
    if ((v15 - 97) >= 0x1A)
    {
      if ((v15 - 65) > 0x19)
      {
        goto LABEL_16;
      }

      v16 = -39;
    }

    else
    {
      v16 = -71;
    }

    v14 = v16 + 26 * v14 + v15;
    ++v13;
    if (v14 >= v6)
    {
LABEL_14:
      v9 = 0;
      v10 = 0;
      v11 = 0x7FFF00000000;
      goto LABEL_22;
    }
  }

  v13 = v8;
LABEL_16:
  if (v13 == v8)
  {
    v9 = 0;
    v12 = 0x7FFFFFFFLL;
  }

  else
  {
    if (v14 == -1)
    {
      v9 = v22 << 48;
      v22 = 0;
    }

    else if ([(TSUCellCoord *)v7 characterAtIndex:v13]== 36)
    {
      if (++v13 == v8)
      {
        goto LABEL_4;
      }

      v9 = 0x1000000000000;
    }

    else
    {
      v9 = 0;
    }

    if (v13 <= v8)
    {
      v19 = v8;
    }

    else
    {
      v19 = v13;
    }

    v20 = -1;
    v12 = 0x7FFFFFFFLL;
    while (v19 != v13)
    {
      v21 = [(TSUCellCoord *)v7 characterAtIndex:v13];
      if ((v21 - 48) <= 9)
      {
        v20 = v21 + 10 * v20 - 39;
        if (v20 < a3)
        {
          ++v13;
          if (v20 != -1 || (a4 & 1) != 0)
          {
            continue;
          }
        }
      }

      goto LABEL_14;
    }

    if (v20 == -1)
    {
      goto LABEL_4;
    }

    v12 = v20;
  }

  if (v14 == -1)
  {
    v17 = 0x7FFFLL;
  }

  else
  {
    v17 = v14;
  }

  v11 = v17 << 32;
  v10 = v22 << 56;
LABEL_22:

  return v11 | v12 | v9 | v10;
}

BOOL TSUCellCoord::verifyCoordIsSane(TSUCellCoord *this)
{
  if ((*this & 0x80000000) != 0)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSUCellCoord::verifyCoordIsSane() const"];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowTypes.mm"];
    [TSUAssertionHandler handleFailureInFunction:v2 file:v3 lineNumber:239 isFatal:0 description:"Invalid row, nothing should be after kTSUInvalidRow (%lx) limit: %lx", 0x7FFFFFFFLL, *this];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  if (*(this + 2) < 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSUCellCoord::verifyCoordIsSane() const"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowTypes.mm"];
    [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:240 isFatal:0 description:"Invalid column, nothing should be after kTSUInvalidColumn (%lx) limit: %lx", 0x7FFFLL, *(this + 2)];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v4 = *(this + 2);
  v7 = *this;
  v9 = *this == 0x7FFFFFFF || v7 < 0xF4241;
  if (v4 != 0x7FFF && v4 >= 0x3E9)
  {
    v9 = 0;
  }

  v11 = v7 >= 0 && v9;
  return (v4 & 0x8000u) == 0 && v11;
}

unint64_t TSUCellCoord::offsetBetween(TSUCellCoord *this, const TSUCellCoord *a2, const TSUCellCoord *a3)
{
  v3 = *this;
  v4 = *this & 0xFFFF00000000;
  v5 = *this;
  v6 = *a2;
  v7 = *a2 & 0xFFFF00000000;
  if (v4 != 0x7FFF00000000 || v5 == 0x7FFFFFFF)
  {
    v11 = v6;
    if (v6 != 0x7FFFFFFFLL && v7 == 0x7FFF00000000)
    {
      v10 = 0;
    }

    else
    {
      v10 = WORD2(v6) - WORD2(v3);
    }

    if (v5 == 0x7FFFFFFF && v4 != 0x7FFF00000000)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0;
    v11 = v6;
  }

  if (v11 != 0x7FFFFFFF || v7 == 0x7FFF00000000)
  {
    v12 = (v6 - v3) << 32;
    return v12 | v10;
  }

LABEL_16:
  v12 = 0;
  return v12 | v10;
}

unint64_t TSUCellCoord::transpose(TSUCellCoord *this)
{
  v1 = 0x7FFF7FFFFFFFLL;
  v2 = *this;
  v3 = HIWORD(*this);
  v4 = HIBYTE(*this);
  v5 = *this & 0xFFFFFFFFFFFFLL;
  v6 = *this;
  v7 = *this & 0xFFFF00000000;
  v8 = *this << 32;
  v9 = v6 != 0x7FFFFFFF && v7 == 0x7FFF00000000;
  v10 = v8 | WORD2(v2);
  v11 = v8 | 0x7FFFFFFF;
  if (!v9)
  {
    v11 = v10;
  }

  if (v6 != 0x7FFFFFFF || v7 == 0x7FFF00000000)
  {
    v13 = v11;
  }

  else
  {
    v13 = WORD2(v2) | 0x7FFF00000000;
  }

  v14 = BYTE6(v2);
  if (v5 == 0x7FFF7FFFFFFFLL)
  {
    v14 = v4;
  }

  else
  {
    v1 = v13;
  }

  if (v5 != 0x7FFF7FFFFFFFLL)
  {
    LOBYTE(v3) = v4;
  }

  return (v14 << 56) | (v3 << 48) | v1;
}