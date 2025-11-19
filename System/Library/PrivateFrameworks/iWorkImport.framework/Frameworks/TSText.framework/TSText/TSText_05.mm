uint64_t sub_276DE9054(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_length(a1, a2, a3);

  return MEMORY[0x2821F9670](a1, sel_tswp_contentsScriptInRange_, 0);
}

uint64_t sub_276DE9094(__CFString *a1, const char *a2, unint64_t a3, unint64_t a4)
{
  if (!a4 || a3 >= objc_msgSend_length(a1, a2, a3))
  {
    return 0;
  }

  v8 = objc_msgSend_characterAtIndex_(a1, v7, a3);
  v10 = v8;
  v11 = 1;
  if (a4 != 1 && (v8 & 0xFC00) == 0xD800)
  {
    v12 = objc_msgSend_characterAtIndex_(a1, v9, a3 + 1);
    v11 = (v12 & 0xFC00) == 0xDC00 ? 2 : 1;
    if ((v12 & 0xFC00) == 0xDC00)
    {
      v10 = v12 + (v10 << 10) - 56613888;
    }
  }

  v13 = sub_276D355C4(v10);
  if (v13 && a4 > v11)
  {
    theString = a1;
    v34 = v11 + a3;
    v35 = a4 - v11;
    CharactersPtr = CFStringGetCharactersPtr(a1);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
    }

    v16 = 0;
    v36 = 0;
    v37 = 0;
    v33 = CStringPtr;
    while (1)
    {
      v17 = v35;
      if (v35 <= v16)
      {
        break;
      }

      if (CharactersPtr)
      {
        v18 = CharactersPtr[v34 + v16];
      }

      else if (v33)
      {
        v18 = v33[v34 + v16];
      }

      else
      {
        v19 = v36;
        if (v37 <= v16 || v36 > v16)
        {
          v21 = v16 - 4;
          if (v16 < 4)
          {
            v21 = 0;
          }

          if (v21 + 64 < v35)
          {
            v17 = v21 + 64;
          }

          v36 = v21;
          v37 = v17;
          v38.length = v17 - v21;
          v38.location = v34 + v21;
          CFStringGetCharacters(theString, v38, buffer);
          v19 = v36;
        }

        v18 = buffer[v16 - v19];
      }

      v22 = v18;
      if (!v18)
      {
        break;
      }

      v23 = v16 + 1;
      if (v18 >> 10 == 54)
      {
        v24 = v35;
        if (v35 > v23)
        {
          if (CharactersPtr)
          {
            v25 = CharactersPtr[v34 + v23];
          }

          else if (v33)
          {
            v25 = v33[v34 + v23];
          }

          else
          {
            if (v37 <= v23 || (v26 = v36, v36 > v23))
            {
              v27 = v16 - 3;
              if (v16 < 3)
              {
                v27 = 0;
              }

              if (v27 + 64 < v35)
              {
                v24 = v27 + 64;
              }

              v36 = v27;
              v37 = v24;
              v39.length = v24 - v27;
              v39.location = v34 + v27;
              CFStringGetCharacters(theString, v39, buffer);
              v26 = v36;
            }

            v25 = buffer[v23 - v26];
          }

          v28 = v25 >> 10;
          v29 = (v22 << 10) - 56613888 + v25;
          if (v28 == 55)
          {
            v23 = v16 + 2;
          }

          else
          {
            v23 = v16 + 1;
          }

          if (v28 == 55)
          {
            v22 = v29;
          }
        }
      }

      v16 = v23;
      if (sub_276D355C4(v22) != v13)
      {
        return 1;
      }
    }
  }

  return v13;
}

id sub_276DE9320(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v4 = 0;
  if (a4 > 2)
  {
    switch(a4)
    {
      case 3:
        v4 = sub_276DE9EA0(a3, aAbcdefghijklmn_0, 0x1AuLL);
        break;
      case 4:
        v4 = sub_276DE8248(a3);
        break;
      case 5:
        v4 = sub_276DE878C(a3, *MEMORY[0x277D813B8]);
        break;
    }
  }

  else if (a4)
  {
    if (a4 == 1)
    {
      v4 = sub_276DE8094(a3, a2, a3);
    }

    else if (a4 == 2)
    {
      v4 = sub_276DE81EC(a3, a2, a3);
    }
  }

  else
  {
    v4 = sub_276DE7FB4(a3, a2);
  }

  return v4;
}

uint64_t sub_276DE93F0(void *a1, const char *a2, unint64_t a3)
{
  v5 = objc_msgSend_length(a1, a2, a3);
  if (v5 <= a3)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1614, 0, "index out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    return 0;
  }

  else
  {
    v7 = v5;
    v10 = objc_msgSend_characterAtIndex_(a1, v6, a3);
    if ((v10 & 0xFC00) == 0xDC00)
    {
      if (a3)
      {
        v11 = objc_msgSend_characterAtIndex_(a1, v8, a3 - 1);
      }

      else
      {
        v11 = 0;
      }

      if (a3 + 1 >= objc_msgSend_length(a1, v8, v9))
      {
        v22 = 0;
      }

      else
      {
        v22 = objc_msgSend_characterAtIndex_(a1, v21, a3 + 1);
      }

      v23 = objc_msgSend_rangeOfComposedCharacterSequenceAtIndex_(a1, v21, a3);
      v25 = v24;
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:]");
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
      v42.location = v23;
      v42.length = v25;
      v30 = NSStringFromRange(v42);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v29, 1623, 0, "index inside surrogate pair. characters:U+%04x U+%04x U+%04x, sequence range: %{public}@", v11, v10, v22, v30);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
    }

    else if (a3 + 1 < v7 && (v10 & 0xFC00) == 0xD800)
    {
      v19 = objc_msgSend_characterAtIndex_(a1, v8, a3 + 1);
      if ((v19 & 0xFC00) == 0xDC00)
      {
        return (v19 + (v10 << 10) - 56613888);
      }

      else
      {
        v34 = MEMORY[0x277D81150];
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:]");
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 1629, 0, "invalid surrogate pair");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
      }
    }
  }

  return v10;
}

uint64_t sub_276DE96BC(void *a1, const char *a2, uint64_t a3, void *a4)
{
  v7 = objc_msgSend_length(a1, a2, a3);
  v10 = objc_msgSend_characterAtIndex_(a1, v8, a3);
  if ((v10 & 0xFC00) == 0xD800)
  {
    if (a4)
    {
      *a4 = 1;
    }

    if (v7 - 1 == a3)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:planeClassification:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 1695, 0, "Invalid surrogate pair (single code point=0x%x, index=%lu)", v10, a3);
    }

    else
    {
      v19 = objc_msgSend_characterAtIndex_(a1, v9, a3 + 1);
      if ((v19 & 0xFC00) == 0xDC00)
      {
        v13 = v19 + (v10 << 10);
        return (v13 - 56613888);
      }

      v31 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:planeClassification:]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v33, v15, v17, 1703, 0, "Invalid surrogate pair (single code point=0x%x, index=%lu)", v10, a3);
    }

LABEL_20:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    return v10;
  }

  if ((v10 & 0xFC00) == 0xDC00)
  {
    if (a4)
    {
      *a4 = 2;
    }

    if (!a3)
    {
      v21 = MEMORY[0x277D81150];
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:planeClassification:]");
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 1676, 0, "Invalid surrogate pair (single code point=0x%x, index=%lu)", v10, 0);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
      return v10;
    }

    v11 = objc_msgSend_characterAtIndex_(a1, v9, a3 - 1);
    if ((v11 & 0xFC00) == 0xD800)
    {
      v13 = v10 + (v11 << 10);
      return (v13 - 56613888);
    }

    v28 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[NSString(TSWPAdditions) tswp_utf32CharacterAtIndex:planeClassification:]");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v30, v15, v17, 1684, 0, "Invalid surrogate pair (single code point=0x%x, index=%lu)", v10, a3);
    goto LABEL_20;
  }

  if (a4)
  {
    *a4 = 0;
  }

  return v10;
}

uint64_t sub_276DE99AC(__CFString *a1, const char *a2, uint64_t a3)
{
  theString = a1;
  v25 = 0;
  v26 = objc_msgSend_length(a1, a2, a3);
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v23 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v6 = 0;
  v27 = 0;
  v28 = 0;
  v24 = CStringPtr;
  while (1)
  {
    v7 = v26;
    if (v26 <= v6)
    {
      break;
    }

    if (v23)
    {
      v8 = v23[v25 + v6];
    }

    else if (v24)
    {
      v8 = v24[v25 + v6];
    }

    else
    {
      v9 = v27;
      if (v28 <= v6 || v27 > v6)
      {
        v11 = v6 - 4;
        if (v6 < 4)
        {
          v11 = 0;
        }

        if (v11 + 64 < v26)
        {
          v7 = v11 + 64;
        }

        v27 = v11;
        v28 = v7;
        v29.length = v7 - v11;
        v29.location = v25 + v11;
        CFStringGetCharacters(theString, v29, buffer);
        v9 = v27;
      }

      v8 = buffer[v6 - v9];
    }

    v12 = v8;
    if (!v8)
    {
      break;
    }

    v13 = v6 + 1;
    if (v8 >> 10 == 54)
    {
      v14 = v26;
      if (v26 > v13)
      {
        if (v23)
        {
          v15 = v23[v25 + v13];
        }

        else if (v24)
        {
          v15 = v24[v25 + v13];
        }

        else
        {
          if (v28 <= v13 || (v16 = v27, v27 > v13))
          {
            v17 = v6 - 3;
            if (v6 < 3)
            {
              v17 = 0;
            }

            if (v17 + 64 < v26)
            {
              v14 = v17 + 64;
            }

            v27 = v17;
            v28 = v14;
            v30.length = v14 - v17;
            v30.location = v25 + v17;
            CFStringGetCharacters(theString, v30, buffer);
            v16 = v27;
          }

          v15 = buffer[v13 - v16];
        }

        v18 = v15 >> 10;
        v19 = (v12 << 10) + v15 - 56613888;
        if (v18 == 55)
        {
          v13 = v6 + 2;
        }

        else
        {
          v13 = v6 + 1;
        }

        if (v18 == 55)
        {
          v12 = v19;
        }
      }
    }

    v6 = v13;
    if (sub_276D355C4(v12) == 6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_276DE9B9C(void *a1, const char *a2, unint64_t a3)
{
  v5 = objc_msgSend_length(a1, a2, a3);
  v8 = v5 - a3;
  if (v5 <= a3)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[NSString(TSWPAdditions) tswp_isLowerCaseFromIndex:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 1745, 0, "index is out of bounds");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    return 1;
  }

  else
  {
    v9 = objc_msgSend_uppercaseLetterCharacterSet(MEMORY[0x277CCA900], v6, v7);
    v11 = objc_msgSend_rangeOfCharacterFromSet_options_range_(a1, v10, v9, 2, a3, v8) == 0x7FFFFFFFFFFFFFFFLL;
  }

  return v11;
}

id sub_276DE9CA8(void *a1, const char *a2, uint64_t a3)
{
  v3 = a3;
  if (objc_msgSend_length(a1, a2, a3) >= 2 && (v3 == -1 || TSWPGetDefaultParagraphDirection(a1) != v3))
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"⁨%@⁩", a1);
  }

  else
  {
    v7 = objc_msgSend_copy(a1, v5, v6);
  }

  return v7;
}

id sub_276DE9D30(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_length(a1, a2, a3);
  v7 = v4 - 1;
  if (v4 <= 1 || (v8 = v4, v9 = TSWPGetDefaultParagraphDirection(a1), v9 == -1) || (v10 = v9, v11 = objc_msgSend_tswp_utf32CharacterAtIndex_planeClassification_(a1, v5, v7, 0), v11 >= 0x10000) && v8 == 2 || sub_276D37F20(v11) != 6)
  {
    v12 = objc_msgSend_copy(a1, v5, v6);
  }

  else
  {
    if (v10)
    {
      objc_msgSend_stringByAppendingString_(a1, v5, @"\u200F");
    }

    else
    {
      objc_msgSend_stringByAppendingString_(a1, v5, @"\u200E");
    }
    v12 = ;
  }

  return v12;
}

id sub_276DE9DE8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_mutableCopy(a1, a2, a3);
  v7 = objc_msgSend_controlCharacterSet(MEMORY[0x277CCA900], v4, v5);
  while (1)
  {
    v9 = objc_msgSend_rangeOfCharacterFromSet_(v3, v6, v7);
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    objc_msgSend_deleteCharactersInRange_(v3, v8, v9, v8);
  }

  v10 = objc_msgSend_copy(v3, v8, 0x7FFFFFFFFFFFFFFFLL);

  return v10;
}

id sub_276DE9EA0(int a1, const char *a2, unint64_t a3)
{
  v7 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
  if (a1)
  {
    v8 = (a1 - 1);
    v9 = *&a2[2 * (v8 % a3)];
    if ((v8 / a3 + 1) < 100)
    {
      v10 = v8 / a3 + 1;
    }

    else
    {
      v10 = 100;
    }

    while (1)
    {
      v11 = __OFSUB__(v10--, 1);
      if (v10 < 0 != v11)
      {
        break;
      }

      objc_msgSend_tsu_appendCharacter_(v7, v6, v9);
    }
  }

  return v7;
}

void sub_276DE9F44(void *a1, unsigned int a2, int a3)
{
  v13 = a1;
  if (a2 >= 0xA)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "void (anonymous namespace)::appendIdeographicDigit(NSMutableString *__strong, unsigned int, TSWPListIdeographicType)");
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v7, v9, 200, 0, "inDigit is larger than single digit");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  }

  objc_msgSend_tsu_appendCharacter_(v13, v5, word_276F99E84[10 * a3 + a2]);
}

uint64_t sub_276DEA058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v7 = a1;
    do
    {
      v8 = *(a4 + 8);
      v9 = *(a4 + 12);
      v10 = *(a4 + 16);
      v11 = *a4;
      v13 = v11;
      v14 = *v7;
      v15 = a3 / *v7;
      if (a3 && (v15 != 1 || (v9 & 1) != 0 || v8 && v8 != 3))
      {
        v10(v11, a3 / v14);
      }

      if (v14 <= a3)
      {
        objc_msgSend_tsu_appendCharacter_(v13, v12, *(v7 + 4));
      }

      v16 = *v7;
      v7 += 8;
      a3 = a3 - v16 * v15;
    }

    while (v7 != a2);
  }

  return a3;
}

id sub_276DEA140(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = a2;
  if (a1 >> 4 >= 0x271)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSMutableString *(anonymous namespace)::ideographicNumberStringForSmallValue(unsigned int, TSWPListIdeographicType, BOOL)");
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 313, 0, "inValue too large for ideographicNumberStringForSmallValue");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  }

  v12 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
  v13 = off_2885FF268[v3];
  v14 = v12;
  v17 = v14;
  v18 = v3;
  v19 = 0;
  v20 = v13;
  v15 = sub_276DEA058(&unk_276F99EFC + 24 * v3, &unk_276F99EFC + 24 * v3 + 24, a1, &v17);
  if (v15)
  {
    sub_276DE9F44(v14, v15, v3);
  }

  return v14;
}

void sub_276DEA290(void *a1, uint64_t a2)
{
  v6 = a1;
  v4 = sub_276DEA140(a2, 0, v3);
  objc_msgSend_appendString_(v6, v5, v4);
}

void sub_276DEA32C(void *a1, uint64_t a2)
{
  v6 = a1;
  v4 = sub_276DEA140(a2, 1, v3);
  objc_msgSend_appendString_(v6, v5, v4);
}

void sub_276DEA3C8(void *a1, uint64_t a2)
{
  v6 = a1;
  v4 = sub_276DEA140(a2, 2, v3);
  objc_msgSend_appendString_(v6, v5, v4);
}

void sub_276DEA464(void *a1, uint64_t a2)
{
  v6 = a1;
  v4 = sub_276DEA140(a2, 3, v3);
  objc_msgSend_appendString_(v6, v5, v4);
}

void sub_276DEA500(void *a1, uint64_t a2)
{
  v6 = a1;
  v4 = sub_276DEA140(a2, 4, v3);
  objc_msgSend_appendString_(v6, v5, v4);
}

void sub_276DEA59C(void *a1, uint64_t a2)
{
  v6 = a1;
  v4 = sub_276DEA140(a2, 5, v3);
  objc_msgSend_appendString_(v6, v5, v4);
}

id sub_276DEA668(int a1, const char *a2, unint64_t a3, int a4)
{
  LODWORD(v7) = a1;
  v9 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
  if (v7)
  {
    v10 = 0;
    do
    {
      v11 = (v7 - 1);
      if (a4)
      {
        objc_msgSend_tsu_insertCharacter_atIndex_(v9, v8, (*&a2[2 * (v11 % a3)] + 96), 0);
      }

      else
      {
        objc_msgSend_tsu_insertCharacter_atIndex_(v9, v8, *&a2[2 * (v11 % a3)], 0);
      }

      v12 = v11 - (v11 % a3);
      if (v12 < a3)
      {
        break;
      }

      v7 = v12 / a3;
    }

    while (v10++ < 0x64);
  }

  return v9;
}

unint64_t sub_276DEA738(unsigned int a1, char *__b)
{
  if (a1 >= 0x190)
  {
    v4 = a1 / 0x190uLL;
    memset_pattern16(__b, &unk_276F9A140, 2 * (v4 - 1) + 2);
  }

  else
  {
    v4 = 0;
  }

  if (a1 % 0x190 >= 0x64)
  {
    *&__b[2 * v4] = word_276F9A0C0[a1 % 0x190 / 0x64 - 1];
    v4 = (v4 + 1);
  }

  v5 = a1 % 0x190 % 0x64;
  if (v5 - 15 > 1)
  {
    if (v5 >= 0xA)
    {
      *&__b[2 * v4] = word_276F9A0D4[a1 % 0x190 % 0x64 / 0xA - 1];
      v4 = (v4 + 1);
    }

    if (a1 % 0x190 % 0x64 % 0xA)
    {
      *&__b[2 * v4] = word_276F9A0E6[a1 % 0x190 % 0x64 % 0xA - 1];
      v4 = (v4 + 1);
    }
  }

  else
  {
    v6 = &__b[2 * v4];
    *v6 = 1610;
    v4 = (v4 + 2);
    *(v6 + 1) = word_276F9A0E6[v5 - 11];
  }

  if (v4 >= 6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], __b, "uint (anonymous namespace)::toAbjadUnder1000(uint, unichar *)");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 750, 0, "string out of range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  return v4;
}

unint64_t sub_276DEA948(unsigned int a1, char *__b)
{
  if (a1 >= 0x190)
  {
    v4 = a1 / 0x190uLL;
    memset_pattern16(__b, &unk_276F9A150, 2 * (v4 - 1) + 2);
  }

  else
  {
    v4 = 0;
  }

  if (a1 % 0x190 >= 0x64)
  {
    *&__b[2 * v4] = a1 % 0x190 / 0x64 + 1510;
    v4 = (v4 + 1);
  }

  v5 = a1 % 0x190 % 0x64;
  if (v5 - 15 <= 1)
  {
    v6 = &__b[2 * v4];
    *v6 = 1496;
    LODWORD(v4) = v4 + 2;
    *(v6 + 1) = v5 + 1478;
LABEL_13:
    v7 = v4;
    v8 = &__b[2 * v4];
    *v8 = *(v8 - 1);
    *(v8 - 1) = 1524;
    v4 = (v4 + 1);
    if (v7 >= 6)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], __b, "uint (anonymous namespace)::toHebrewUnder1000(uint, unichar *)");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/NSStringAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 689, 0, "string out of range");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    }

    return v4;
  }

  if (a1 % 0x190 % 0x64 >= 0xA)
  {
    *&__b[2 * v4] = word_276F9A12A[v5 / 0xAu - 1];
    v4 = (v4 + 1);
  }

  if (a1 % 0x190 % 0x64 % 0xA)
  {
    *&__b[2 * v4] = a1 % 0x190 % 0x64 % 0xA + 1487;
    v4 = (v4 + 1);
  }

  if (v4 >= 2)
  {
    goto LABEL_13;
  }

  return v4;
}

void sub_276DEAB58()
{
  for (i = 0xC8u; i != -8; i -= 16)
  {
  }
}

uint64_t sub_276DEB41C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  *(v2 + 16) |= 2u;
  v3 = *(v2 + 32);
  if (!v3)
  {
    v4 = *(v2 + 8);
    if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
    }

    v3 = google::protobuf::Arena::CreateMaybeMessage<TSWP::CharacterStylePropertiesArchive>(v4);
    *(v2 + 32) = v3;
  }

  return MEMORY[0x2821F9670](v1, sel_saveCharacterStylePropertiesToArchive_archiver_archivingForCommand_, v3);
}

id TSWPShapeStyleIdentifierString(void *a1)
{
  v1 = TSWPShapePackageStringForPresetKind(a1);
  v2 = String();

  return v2;
}

void sub_276DEB9B8(uint64_t a1)
{
  v7.receiver = *(a1 + 32);
  v7.super_class = &OBJC_METACLASS___TSWPShapeStyle;
  v1 = objc_msgSendSuper2(&v7, sel_properties);
  v3 = objc_msgSend_propertySetWithProperties_(MEMORY[0x277D80AC0], v2, 148, 146, 152, 149, 188, 153, 189, 0);
  v5 = objc_msgSend_propertySetByAddingPropertiesFromSet_(v1, v4, v3);
  v6 = qword_280A58400;
  qword_280A58400 = v5;
}

void sub_276DEBAD4()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 148, 146, 152, 149, 0);
  v3 = qword_280A58410;
  qword_280A58410 = v2;
}

void sub_276DEBBD4(uint64_t a1)
{
  v22.receiver = *(a1 + 32);
  v22.super_class = &OBJC_METACLASS___TSWPShapeStyle;
  v2 = objc_msgSendSuper2(&v22, sel_propertiesAllowingNSNull);
  v5 = objc_msgSend_mutableCopy(v2, v3, v4);

  v8 = objc_msgSend_propertiesAllowingNSNull(TSWPColumnStyle, v6, v7);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = sub_276DEBD24;
  v19 = &unk_27A6F49E0;
  v21 = *(a1 + 32);
  v9 = v5;
  v20 = v9;
  objc_msgSend_enumeratePropertiesUsingBlock_(v8, v10, &v16);

  objc_msgSend_addProperty_(v9, v11, 189, v16, v17, v18, v19);
  v14 = objc_msgSend_copy(v9, v12, v13);
  v15 = qword_280A58420;
  qword_280A58420 = v14;
}

void sub_276DEBD24(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_properties(*(a1 + 40), a2, a3);
  v7 = objc_msgSend_containsProperty_(v5, v6, a2);

  if (v7)
  {
    v9 = *(a1 + 32);

    objc_msgSend_addProperty_(v9, v8, a2);
  }
}

void sub_276DEBDF0()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v2 = objc_msgSend_initWithProperties_(v0, v1, 188, 0);
  v3 = qword_280A58430;
  qword_280A58430 = v2;
}

void sub_276DEC630(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v9 = v3;
  v5 = objc_opt_class();
  LODWORD(v4) = objc_msgSend_validateObjectValue_withClass_forProperty_(v4, v6, &v9, v5, 189);
  v7 = v9;

  if (v4)
  {
    objc_msgSend_setObject_forProperty_(*(a1 + 32), v8, v7, 189);
  }
}

void sub_276DECF0C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v9 = v3;
  v5 = objc_opt_class();
  LODWORD(v4) = objc_msgSend_validateObjectValue_withClass_forProperty_(v4, v6, &v9, v5, 189);
  v7 = v9;

  if (v4)
  {
    objc_msgSend_setObject_forProperty_(*(a1 + 32), v8, v7, 189);
  }
}

id sub_276DED118(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  *(v3 + 16) |= 1u;
  v4 = *(v3 + 24);
  if (!v4)
  {
    v5 = *(v3 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = MEMORY[0x277CA3160](v5);
    *(v3 + 24) = v4;
  }

  v6 = a1[4];
  v8.receiver = v2;
  v8.super_class = TSWPShapeStyle;
  return objc_msgSendSuper2(&v8, sel_saveToArchive_archiver_, v4, v6);
}

void sub_276DED1A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_overrideCount(*(a1 + 32), a2, a3);
  if (v4)
  {
    v6 = *(a1 + 48);
    if (HIDWORD(v4))
    {
      v53 = MEMORY[0x277D81150];
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSWPShapeStyle saveToArchive:archiver:]_block_invoke_2");
      v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPShapeStyle.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v57, v54, v56, 279, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59);
      v7 = *(a1 + 48);
      LODWORD(v4) = -1;
    }

    else
    {
      v7 = *(a1 + 48);
    }

    *(v6 + 16) |= 4u;
    *(v6 + 40) = v4;
    *(v7 + 16) |= 2u;
    v8 = *(v7 + 32);
    if (!v8)
    {
      v9 = *(v7 + 8);
      if (v9)
      {
        v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
      }

      v8 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ShapeStylePropertiesArchive>(v9);
      *(v7 + 32) = v8;
    }

    v10 = objc_opt_class();
    v11 = *(*(a1 + 32) + *MEMORY[0x277D80AF0]);
    if (objc_msgSend_containsProperty_(v11, v12, 148))
    {
      v14 = objc_msgSend_objectForProperty_(v11, v13, 148);
      v63 = v14;
      v15 = objc_opt_class();
      v17 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v16, &v63, v15, 148);
      v18 = v63;

      if (v17)
      {
        *(v8 + 16) |= 1u;
        v20 = *(v8 + 24);
        if (!v20)
        {
          v21 = *(v8 + 8);
          if (v21)
          {
            v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
          }

          v20 = google::protobuf::Arena::CreateMaybeMessage<TSWP::ColumnsArchive>(v21);
          *(v8 + 24) = v20;
        }

        objc_msgSend_saveToArchive_archiver_(v18, v19, v20, *(a1 + 40));
      }
    }

    if (objc_msgSend_containsProperty_(v11, v13, 146))
    {
      v23 = objc_msgSend_objectForProperty_(v11, v22, 146);
      v62 = v23;
      v24 = objc_opt_class();
      v26 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v25, &v62, v24, 146);
      v27 = v62;

      if (v26)
      {
        *(v8 + 16) |= 2u;
        v29 = *(v8 + 32);
        if (!v29)
        {
          v30 = *(v8 + 8);
          if (v30)
          {
            v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
          }

          v29 = google::protobuf::Arena::CreateMaybeMessage<TSWP::PaddingArchive>(v30);
          *(v8 + 32) = v29;
        }

        objc_msgSend_saveToArchive_archiver_(v27, v28, v29, *(a1 + 40));
      }
    }

    if (objc_msgSend_containsProperty_(v11, v22, 152))
    {
      v61 = objc_msgSend_intValueForProperty_(v11, v31, 152);
      if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v32, &v61, 152))
      {
        v33 = v61 != 0;
        *(v8 + 16) |= 0x10u;
        *(v8 + 52) = v33;
      }
    }

    if (objc_msgSend_containsProperty_(v11, v31, 149))
    {
      v35 = objc_msgSend_intValueForProperty_(v11, v34, 149);
      v61 = v35;
      if (TSWP::ShapeStylePropertiesArchive_VerticalAlignmentType_IsValid(v35))
      {
        if (objc_msgSend_validateIntValue_forProperty_(v10, v34, &v61, 149))
        {
          v36 = v61;
          *(v8 + 16) |= 8u;
          *(v8 + 48) = v36;
        }
      }
    }

    if (objc_msgSend_containsProperty_(v11, v34, 188))
    {
      v61 = objc_msgSend_intValueForProperty_(v11, v37, 188);
      if (objc_msgSend_validateIntValue_forProperty_(v10, v38, &v61, 188))
      {
        v39 = v61;
        *(v8 + 16) |= 0x100u;
        *(v8 + 56) = v39;
      }
    }

    if (objc_msgSend_containsProperty_(v11, v37, 153))
    {
      v61 = objc_msgSend_intValueForProperty_(v11, v40, 153);
      if (objc_msgSend_validateIntValueAsBool_forProperty_(v10, v41, &v61, 153))
      {
        v42 = v61 != 0;
        *(v8 + 16) |= 0x400u;
        *(v8 + 61) = v42;
      }
    }

    if (objc_msgSend_containsProperty_(v11, v40, 189))
    {
      v44 = objc_msgSend_objectForProperty_(v11, v43, 189);
      v60 = v44;
      v45 = objc_opt_class();
      v47 = objc_msgSend_validateObjectValue_withClass_forProperty_(v10, v46, &v60, v45, 189);
      v48 = v60;

      if (v47)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(v8 + 16) |= 0x200u;
          *(v8 + 60) = 1;
        }

        else
        {
          v50 = *(a1 + 40);
          *(v8 + 16) |= 4u;
          v51 = *(v8 + 40);
          if (!v51)
          {
            v52 = *(v8 + 8);
            if (v52)
            {
              v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
            }

            v51 = MEMORY[0x277CA3250](v52);
            *(v8 + 40) = v51;
          }

          objc_msgSend_setStrongReference_message_(v50, v49, v48, v51, v60);
        }
      }
    }
  }
}

void sub_276DEE4FC(uint64_t a1, const char *a2)
{
  if (!qword_280A58440)
  {
    v2 = objc_msgSend_setWithArray_(MEMORY[0x277CBEB98], a2, &unk_288627ED8);
    v3 = qword_280A58440;
    qword_280A58440 = v2;
  }
}

void sub_276DEE980(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_276DEEA4C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_276DEF40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a33)
  {
    free(a33);
  }

  _Unwind_Resume(a1);
}

void sub_276DF0410()
{
  v0 = objc_alloc_init(TSWPFontVerifier);
  v1 = qword_280A58450;
  qword_280A58450 = v0;
}

void sub_276DF26A8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_276DF29FC()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_276DF2EB8()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81410];
  *MEMORY[0x277D81410] = v0;
}

uint64_t sub_276DF2EFC(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = v3[12];
  if (!v4)
  {
    if (*MEMORY[0x277D81500] != -1)
    {
      sub_276F4F760();
    }

    v3 = *(a1 + 32);
    v4 = v3[12];
  }

  v5 = v3[11];
  v6 = v3[13];
  v7 = v3[14];

  return objc_msgSend_p_setFormat_localeIdentifier_dateStyle_timeStyle_autoLocale_(v3, a2, v5, v4, v6, v7, 0);
}

void sub_276DF2F8C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_276DF3B64()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

void sub_276DF4398()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81438];
  *MEMORY[0x277D81438] = v0;
}

void sub_276DF4780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_276DF5268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a33)
  {
    free(a33);
  }

  _Unwind_Resume(a1);
}

void sub_276DF5748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSWPFootnoteReferenceAttachment;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_276DF67CC(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276D128DC();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_276DF68C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276DF6CA4(const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_276D34ED8();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_276D6D54C(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void sub_276DF7FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_276DFA3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_276DFB000(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (v6 == *MEMORY[0x277D81490] && v7 == *(MEMORY[0x277D81490] + 8))
  {
    v11 = 0;
  }

  else
  {
    v10 = a3 >= v6;
    v9 = a3 - v6;
    v10 = !v10 || v9 >= v7;
    v11 = !v10;
  }

  v12 = *(a1 + 32);
  v15 = v5;
  if (v12)
  {
    v13 = objc_msgSend_containsCharacterAtIndex_(v12, v5, a3);
    v5 = v15;
    v14 = v13 ^ 1;
  }

  else
  {
    v14 = 0;
  }

  if (((v11 | v14) & 1) == 0)
  {
    objc_msgSend_appendBezierPath_(*(a1 + 40), v5, v15);
    v5 = v15;
  }
}

void sub_276DFB0B8(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *MEMORY[0x277D81490];
  v9 = *(MEMORY[0x277D81490] + 8);
  if (v6 == *MEMORY[0x277D81490] && v7 == v9)
  {
    v13 = 0;
  }

  else
  {
    v12 = a3 >= v6;
    v11 = a3 - v6;
    v12 = !v12 || v11 >= v7;
    v13 = !v12;
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v18 = v5;
    v15 = objc_msgSend_containsCharacterAtIndex_(v14, v5, a3);
    v5 = v18;
    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  if (((v13 | v16) & 1) == 0 && (*(a1 + 64) != v8 || *(a1 + 72) != v9))
  {
    v19 = v5;
    objc_msgSend_appendBezierPath_(*(a1 + 40), v5, v5);
    v5 = v19;
  }
}

uint64_t sub_276DFB25C(uint64_t a1, void *a2, uint64_t a3, char a4, void *a5)
{
  v10 = a2;
  v11 = a5;
  *(a1 + 8) = 0;
  *(a1 + 88) = 0u;
  *a1 = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  objc_storeStrong(a1, a2);
  *(a1 + 16) = a3;
  v14 = objc_msgSend_length(v10, v12, v13);
  *(a1 + 24) = 0;
  *(a1 + 32) = v14;
  sub_276DFB394(a1);
  v15 = *(a1 + 64);
  *(a1 + 64) = 0;

  *(a1 + 72) = 0;
  *(a1 + 82) = a4;
  objc_storeWeak((a1 + 8), v11);

  return a1;
}

void sub_276DFB340(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276DFDFEC(va);
  sub_276DFDF68(va);

  v7 = *(v3 + 40);
  if (v7)
  {
    *(v3 + 48) = v7;
    operator delete(v7);
  }

  objc_destroyWeak(v5);

  _Unwind_Resume(a1);
}

void sub_276DFB394(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_276DFD600((a1 + 40), v2);
  if (v2)
  {
    objc_msgSend_getCharacters_range_(*a1, v3, *(a1 + 40), 0, v2);
    v4 = v2 - 1;
    v5 = *(a1 + 40);
    if (v4 >= (*(a1 + 48) - v5) >> 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = *(v5 + 2 * v4);
    }

    if (IsParagraphBreakingCharacter(v6))
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 80) = v8;
    if (objc_msgSend_hasColumnBreakAtCharIndex_(*a1, v7, v4))
    {
      *(*(a1 + 40) + 2 * v4) = 8233;
    }
  }

  else
  {
    *(a1 + 80) = 0;
  }
}

uint64_t sub_276DFB440(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 72) = 0;
  }

  v5 = (a1 + 112);
  sub_276DFDFEC(&v5);
  v5 = (a1 + 88);
  sub_276DFDF68(&v5);

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  objc_destroyWeak((a1 + 8));

  return a1;
}

void sub_276DFB4CC(void *a1, const char *a2)
{
  if (!a1[8] || (v3 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPParagraphTypesetter::createAttributedString()"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphTypesetter.mm"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 74, 0, "expected nil value for '%{public}s'", "_attributedString"), v6, v4, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9), !a1[8]))
  {
    v10 = a1[5];
    v11 = (a1[6] - v10) >> 1;
    if (v11 < 1)
    {
      v17 = objc_alloc_init(MEMORY[0x277CCAB48]);
      v18 = a1[8];
      a1[8] = v17;
    }

    else
    {
      v12 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x277CBECE8], v10, v11, *MEMORY[0x277CBED00]);
      v13 = objc_alloc(MEMORY[0x277CCAB48]);
      v15 = objc_msgSend_initWithString_(v13, v14, v12);
      v16 = a1[8];
      a1[8] = v15;

      CFRelease(v12);
    }
  }
}

void sub_276DFB664(uint64_t a1, const char *a2)
{
  v6[1] = *MEMORY[0x277D85DE8];
  sub_276DFB740(a1, a2);
  sub_276DFBD64(a1);
  if (*(a1 + 82) == 1)
  {
    sub_276DFBE04(a1, v3);
  }

  v5 = *MEMORY[0x277CC4A28];
  v6[0] = MEMORY[0x277CBEC38];
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v6, &v5, 1);
  *(a1 + 72) = CTTypesetterCreateWithAttributedStringAndOptions(*(a1 + 64), v4);
}

void sub_276DFB740(uint64_t a1, const char *a2)
{
  v96 = *MEMORY[0x277D85DE8];
  v81 = (a1 + 88);
  if (*(a1 + 96) != *(a1 + 88))
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPParagraphTypesetter::pSetUpRubyLinesForParagraph()");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 420, 0, "expected zero ruby runs when setting up typesetter");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v80 = objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_(*a1, a2, 7, *(a1 + 24), *(a1 + 32));
  if (v80 && objc_msgSend_count(v80, v10, v11))
  {
    aStr = CFAttributedStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    v13 = objc_msgSend_rangeOfDropCapAtCharIndex_(*a1, v12, 0);
    v82 = v14;
    v83 = v13;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = v80;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v91, v95, 16);
    if (v18)
    {
      v19 = *v92;
      do
      {
        v20 = 0;
        do
        {
          if (*v92 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v91 + 1) + 8 * v20);
          v22 = *a1;
          v23 = objc_msgSend_range(v21, length, v17);
          v25 = objc_msgSend_charRangeMappedFromStorage_(v22, v24, v23, v24);
          v26 = v25;
          v27 = *(a1 + 24);
          if (v27 <= v25 && (v28 = length, *(a1 + 32) + v27 >= &length[v25]))
          {
            if (length)
            {
              v97.length = v82;
              v97.location = v83;
              v101.location = v26;
              v101.length = v28;
              length = NSIntersectionRange(v97, v101).length;
              if (!length)
              {
                v36 = CFAttributedStringGetLength(aStr);
                v39 = objc_msgSend_rubyText(v21, v37, v38);
                v98.location = v36;
                v98.length = 0;
                CFAttributedStringReplaceString(aStr, v98, v39);

                memset(v90, 0, sizeof(v90));
                v89 = 0u;
                v86 = v21;
                v87 = v26;
                v88 = v28;
                v40 = *(a1 + 96);
                if (v40 >= *(a1 + 104))
                {
                  v41 = sub_276DFE198(v81, &v86);
                }

                else
                {
                  sub_276DFDE28(*(a1 + 96), &v86);
                  v41 = v40 + 72;
                  *(a1 + 96) = v40 + 72;
                }

                *(a1 + 96) = v41;
                WeakRetained = objc_loadWeakRetained((a1 + 8));
                v43 = WeakRetained == 0;

                v45 = *a1;
                v46 = *(a1 + 24);
                if (v43)
                {
                  v50 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v45, v44, v46, 0);
                  v55 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(*a1, v57, v87, 0);
                }

                else
                {
                  v47 = objc_msgSend_charIndexMappedToStorage_(v45, v44, v46);
                  v48 = objc_loadWeakRetained((a1 + 8));
                  v50 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v48, v49, v47, 0);

                  v52 = objc_msgSend_charIndexMappedToStorage_(*a1, v51, v87);
                  v53 = objc_loadWeakRetained((a1 + 8));
                  v55 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v53, v54, v52, 0);
                }

                isRightToLeft = objc_msgSend_getTypesetterAttributes_scalePercent_isRightToLeft_(v50, v56, v55, *(a1 + 16) >> 1, 0);
                v61 = objc_msgSend_rubyText(v21, v59, v60);
                v99.length = objc_msgSend_length(v61, v62, v63);
                v99.location = v36;
                CFAttributedStringSetAttributes(aStr, v99, isRightToLeft, 1u);

                sub_276DFDE98(&v86);
              }
            }
          }

          else
          {
            v29 = MEMORY[0x277D81150];
            v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], length, "void TSWPParagraphTypesetter::pSetUpRubyLinesForParagraph()");
            v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphTypesetter.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v30, v32, 458, 0, "ruby field crossed paragraph boundary");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
          }

          ++v20;
        }

        while (v18 != v20);
        v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, length, &v91, v95, 16);
        v18 = v64;
      }

      while (v64);
    }

    if (*(a1 + 82) == 1)
    {
      sub_276D3A17C(aStr, 0);
    }

    v67 = CTTypesetterCreateWithAttributedString(aStr);
    v68 = *(a1 + 96) - *(a1 + 88);
    if (v68)
    {
      v69 = 0;
      v70 = 0;
      v71 = 0x8E38E38E38E38E39 * (v68 >> 3);
      if (v71 <= 1)
      {
        v72 = 1;
      }

      else
      {
        v72 = v71;
      }

      do
      {
        v73 = *v81;
        v74 = objc_msgSend_rubyText(*(*v81 + v69), v65, v66);
        v77 = objc_msgSend_length(v74, v75, v76);

        if (v77)
        {
          v100.location = v70;
          v100.length = v77;
          Line = CTTypesetterCreateLine(v67, v100);
          *(v73 + v69 + 24) = Line;
          *(v73 + v69 + 32) = CTLineGetTypographicBounds(Line, (v73 + v69 + 40), (v73 + v69 + 48), 0);
        }

        else
        {
          v79 = v73 + v69;
          *(v79 + 40) = 0u;
          *(v79 + 24) = 0u;
        }

        v70 += v77;
        v69 += 72;
        --v72;
      }

      while (v72);
    }

    CFRelease(v67);
    CFRelease(aStr);
  }
}

uint64_t sub_276DFBD64(uint64_t result)
{
  if (*(result + 96) != *(result + 88))
  {
    sub_276DFD630();
  }

  return result;
}

void sub_276DFBE04(uint64_t a1, const char *a2)
{
  v6 = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = (a1 + 112);
  v7 = 0x277CCA000uLL;
  if (v6 != v4)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPParagraphTypesetter::pSetupTateChuYokoForParagraph()");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 567, 0, "Should be no tate chu yoko runs prior to setup");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    v6 = *(a1 + 112);
    v4 = *(a1 + 120);
  }

  while (v4 != v6)
  {
    v4 = sub_276DFDF34(v4 - 64);
  }

  *(a1 + 120) = v6;
  v16 = objc_msgSend_rangeOfDropCapAtCharIndex_(*a1, a2, 0);
  v17 = v15;
  v18 = 0;
  v19 = &v15[v16];
  do
  {
    v20 = objc_msgSend_smartFieldAtCharIndex_attributeKind_effectiveRange_(*a1, v15, v18, 21, &v114);
    v21 = v114;
    if (v20)
    {
      v22 = v114.length == 0;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v115.location = v16;
      v115.length = v17;
      if (!NSIntersectionRange(v115, v21).length || (v21 = v114, v16 <= v114.location) && v19 >= v114.length + v114.location)
      {
        memset(&range[2], 0, 40);
        v113 = 0x3FF0000000000000;
        *range = v114;
        v23 = *(a1 + 120);
        if (v23 >= *(a1 + 128))
        {
          v25 = sub_276DFE430(v5, range);
        }

        else
        {
          *v23 = v114;
          *(v23 + 16) = 0;
          *(v23 + 24) = *&range[3];
          *(v23 + 40) = *&range[5];
          *(v23 + 56) = v113;
          if (range[2])
          {
            CFRetain(range[2]);
            v24 = range[2];
          }

          else
          {
            v24 = 0;
          }

          *(v23 + 16) = v24;
          v25 = v23 + 64;
          *(a1 + 120) = v23 + 64;
        }

        v7 = 0x277CCA000uLL;
        *(a1 + 120) = v25;
        sub_276DFDF34(range);
        v21 = v114;
      }
    }

    if (v21.length)
    {
      v18 = v21.location + v21.length;
    }

    else
    {
      ++v18;
    }
  }

  while (v18 < (*(a1 + 48) - *(a1 + 40)) >> 1);
  if (*(a1 + 112) != *(a1 + 120))
  {
    Mutable = CFAttributedStringCreateMutable(*MEMORY[0x277CBECE8], 0);
    v27 = *(a1 + 120) - *(a1 + 112);
    if (v27)
    {
      v28 = 0;
      v29 = v27 >> 6;
      if (v29 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29;
      }

      do
      {
        v31 = (*v5 + (v28 << 6));
        v32 = *v31;
        for (i = v31[1] + *v31; v32 < i; i = v31[1] + *v31)
        {
          sub_276DFD72C(a1, v32++);
        }

        v34 = objc_alloc(MEMORY[0x277CCACA8]);
        v36 = objc_msgSend_initWithCharactersNoCopy_length_freeWhenDone_(v34, v35, *(a1 + 40) + 2 * *v31, v31[1], 0);
        v116.location = CFAttributedStringGetLength(Mutable);
        v116.length = 0;
        CFAttributedStringReplaceString(Mutable, v116, v36);

        ++v28;
      }

      while (v28 != v30);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 8));

    v39 = *a1;
    if (WeakRetained)
    {
      v40 = objc_msgSend_charIndexMappedToStorage_(v39, v38, 0);
      v41 = objc_loadWeakRetained((a1 + 8));
      v110 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v41, v42, v40, 0);
    }

    else
    {
      v110 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(v39, v38, 0, 0);
    }

    isRightToLeft = objc_msgSend_getTypesetterAttributes_scalePercent_isRightToLeft_(v110, v43, 0, *(a1 + 16), 0);
    v117.length = CFAttributedStringGetLength(Mutable);
    v117.location = 0;
    CFAttributedStringSetAttributes(Mutable, v117, isRightToLeft, 1u);
    v45 = *(a1 + 112);
    v46 = *(a1 + 120);
    if (v45 != v46)
    {
      v47 = 0;
      do
      {
        location = v45->location;
        length = v45->length;
        for (j = length + v45->location; location < j; j = length + v45->location)
        {
          v51 = objc_loadWeakRetained((a1 + 8));

          v53 = *a1;
          if (!v51)
          {
            v57 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v53, v52, location, range);
            v60 = *range;
            if (!v57)
            {
              goto LABEL_45;
            }

LABEL_44:
            *range = NSIntersectionRange(*v45, v60);
            v61 = v45->location;
            v62 = objc_msgSend_getTypesetterAttributes_scalePercent_isRightToLeft_(v110, range[1], v57, *(a1 + 16), 0);
            v118.location = location + v47 - v61;
            v118.length = range[1];
            CFAttributedStringSetAttributes(Mutable, v118, v62, 1u);
            v60 = *range;
            goto LABEL_45;
          }

          v54 = objc_msgSend_charIndexMappedToStorage_(v53, v52, location);
          v55 = objc_loadWeakRetained((a1 + 8));
          v57 = objc_msgSend_characterStyleAtCharIndex_effectiveRange_(v55, v56, v54, v111);

          v60.location = objc_msgSend_charRangeMappedFromStorage_(*a1, v58, v111[0], v111[1]);
          v60.length = v59;
          range[0] = v60.location;
          range[1] = v59;
          if (v57)
          {
            goto LABEL_44;
          }

LABEL_45:
          location = v60.length + v60.location;

          length = v45->length;
        }

        v47 += length;
        v45 += 4;
      }

      while (v45 != v46);
    }

    sub_276DFD8A0(a1, Mutable);
    FontForStyle = TSWPFastCreateFontForStyle(0, v110, 0x64uLL);
    TSWPFontGetLineHeight();
    v65 = v64;
    CFRelease(FontForStyle);
    typesetter = CTTypesetterCreateWithAttributedString(Mutable);
    v67 = *(a1 + 112);
    if (v67 != *(a1 + 120))
    {
      v68 = 0;
      v107 = *MEMORY[0x277CC49E0];
      v106 = *MEMORY[0x277CC4A00];
      v105 = *MEMORY[0x277CC4AC8];
      v69 = @"%C";
      do
      {
        v70 = *(v67 + 1);
        if (*(v67 + 2))
        {
          v71 = MEMORY[0x277D81150];
          v72 = objc_msgSend_stringWithUTF8String_(*(v7 + 3240), v66, "void TSWPParagraphTypesetter::pSetupTateChuYokoForParagraph()");
          v74 = objc_msgSend_stringWithUTF8String_(*(v7 + 3240), v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphTypesetter.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v75, v72, v74, 658, 0, "Tate chu yoko line ref should be null");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77);
        }

        v119.location = v68;
        v119.length = v70;
        Line = CTTypesetterCreateLine(typesetter, v119);
        *(v67 + 2) = Line;
        v67[3] = CTLineGetTypographicBounds(Line, v67 + 4, v67 + 5, v67 + 6);
        v80 = objc_msgSend_attributesAtIndex_effectiveRange_(Mutable, v79, v68 + v70 - 1, 0);
        v82 = objc_msgSend_objectForKeyedSubscript_(v80, v81, v107);
        objc_msgSend_floatValue(v82, v83, v84);
        v86 = v85;

        v88 = v67[3];
        if (v86 != 0.0)
        {
          v88 = v88 - v86;
          v67[3] = v88;
        }

        v109 = v68;
        if (v88 > v65)
        {
          v67[7] = v65 / v88;
          v67[3] = v65;
        }

        v89 = Mutable;
        v90 = objc_msgSend_stringWithFormat_(*(v7 + 3240), v87, v69, 65532);
        v91 = v69;
        v94 = objc_msgSend_stringWithFormat_(*(v7 + 3240), v92, v69, 8203);
        v95 = *v67;
        v96 = *(v67 + 1);
        if (*v67 < (v96 + *v67))
        {
          v97 = 0;
          do
          {
            v98 = *(a1 + 64);
            if (v97)
            {
              v99 = v95 + v97;
              objc_msgSend_replaceCharactersInRange_withString_(v98, v93, v95 + v97, 1, v94);
              v100 = 8203;
            }

            else
            {
              objc_msgSend_replaceCharactersInRange_withString_(v98, v93, v95, 1, v90);
              v100 = -4;
              v99 = v95;
            }

            *(*(a1 + 40) + 2 * v99) = v100;
            ++v97;
          }

          while (v96 != v97);
        }

        v101 = CTRunDelegateCreate(&stru_2885FF420, v67);
        objc_msgSend_addAttribute_value_range_(*(a1 + 64), v102, v106, v101, v95, 1);
        CFRelease(v101);
        objc_msgSend_addAttribute_value_range_(*(a1 + 64), v103, v105, MEMORY[0x277CBEC28], *v67, *(v67 + 1));
        v104 = *(v67 + 1) + v109;

        v67 += 8;
        v7 = 0x277CCA000;
        v69 = v91;
        Mutable = v89;
        v68 = v104;
      }

      while (v67 != *(a1 + 120));
    }

    CFRelease(typesetter);
    CFRelease(Mutable);
  }
}

uint64_t sub_276DFC63C(void **a1, uint64_t a2, double a3)
{
  v3 = a1[12] - a1[11];
  if (v3)
  {
    v7 = 0x8E38E38E38E38E39 * (v3 >> 3);
    v8 = *a1;
    if (*(a2 + 24) < 0)
    {
      v9 = MEMORY[0x277D81490];
    }

    else
    {
      v9 = a2;
    }

    v29 = objc_msgSend_charRangeMappedFromStorage_(v8, a2, *v9, v9[1]);
    v11 = v10;
    v12 = 0;
    v13 = 0;
    if (v7 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v7;
    }

    do
    {
      v15 = a1[11];
      v16 = &v15[v12];
      if ((v15[v12 + 64] & 1) == 0)
      {
        v18 = *(v16 + 1);
        v17 = *(v16 + 2);
        v19 = sub_276DFC7F8(a2, v18);
        v20 = sub_276DFC7F8(a2, v17 + v18) - v19;
        if (v20 <= 0.0)
        {
          goto LABEL_22;
        }

        v21 = *&v15[v12 + 32];
        if (v20 >= v21)
        {
          v21 = v20;
        }

        if (v21 <= a3)
        {
LABEL_22:
          if (!v16[64] && v18 >= v29 && v18 - v29 < v11)
          {
            v23 = *&v15[v12 + 32];
            v24 = v23 + 1.0;
            if (v20 + 1.0 < v23 && v24 >= v20)
            {
              v30 = 0.0;
              v31 = 0.0;
              sub_276DFC880(a1, a2, &v15[v12], &v31, &v30);
              v26 = v20 + v31 + v30;
              if (v24 >= v26 && v26 + 1.0 < v23)
              {
                *&v15[v12 + 56] = v23 - v26;
                v13 = 1;
              }
            }
          }
        }

        else
        {
          v13 = 1;
          v16[64] = 1;
        }
      }

      v12 += 72;
      --v14;
    }

    while (v14);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

double sub_276DFC7F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_276D648E0(a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = 0.0;
  while (v4 != v5)
  {
    v7 = sub_276DD1F38(v4);
    StringRange = CTLineGetStringRange(v7);
    if (StringRange.location <= a2 && StringRange.location + StringRange.length >= a2)
    {
      v10 = *(v4 + 8);
      v11 = sub_276DD1F38(v4);
      return v10 + CTLineGetOffsetForStringIndex(v11, a2, 0);
    }

    v4 += 104;
  }

  return v6;
}

void sub_276DFC880(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  *a5 = 0;
  *a4 = 0;
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *(a3 + 16);
  v28 = v10;
  if (objc_msgSend_baseTextScript(v10, v13, v14) == 6)
  {
    v16 = *(a3 + 24);
    if (v16)
    {
      length = CTLineGetStringRange(v16).length;
    }

    v17 = objc_msgSend_charRangeMappedToStorage_(*a1, length, v11, v12);
    if ((a2[3] & 0x8000000000000000) != 0)
    {
      v19 = MEMORY[0x277D81490];
    }

    else
    {
      v19 = a2;
    }

    v21 = *v19;
    v20 = v19[1];
    v23 = v17 > *v19 && v11 != 0;
    v24 = v17 + v18 < v21 + v20 && (v12 + v11) < *(a1 + 32) + *(a1 + 24);
    v25 = 0;
    v26 = 0;
    if (v23)
    {
      sub_276DFDC04(a1, v11 - 1);
    }

    *a4 = v26;
    if (v24)
    {
      sub_276DFDC04(a1, v12 + v11);
      v25 = v27;
    }

    *a5 = v25;
  }
}

double sub_276DFC9F4(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 88);
  v2 = *(a1 + 96);
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v5 = sub_276D6495C(a2);
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v44, v48, 16);
    if (v9)
    {
      v10 = *v45;
      v11 = 0.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v44 + 1) + 8 * i);
          if (objc_msgSend_adornmentLocation(v13, v7, v8) == 1)
          {
            objc_msgSend_underlineAdjustment(v13, v7, v8);
            if (v11 < v14)
            {
              v11 = v14;
            }
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v44, v48, 16);
      }

      while (v9);
    }

    if (*(a2 + 24) < 0)
    {
      v17 = MEMORY[0x277D81490];
    }

    else
    {
      v17 = a2;
    }

    v40 = objc_msgSend_charRangeMappedFromStorage_(*a1, v16, *v17, v17[1]);
    v20 = v18;
    v21 = 0;
    v22 = 0;
    v23 = 0x8E38E38E38E38E39 * (v4 >> 3);
    do
    {
      v24 = *(a1 + 88) + 72 * v21;
      v25 = *(v24 + 8);
      if (v25 >= v40 && v25 - v40 < v20)
      {
        v27 = *(v24 + 16);
        v28 = objc_msgSend_rubyText(*v24, v18, v19);
        if (objc_msgSend_length(v28, v29, v30))
        {
          v31 = *(v24 + 64) == 0;

          if (v31)
          {
            v32 = *(v24 + 24);
            if (v32)
            {
              v33 = *(v24 + 32);
              if (v33 > 0.0)
              {
                v34 = sub_276DFC7F8(a2, v25);
                v35 = sub_276DFC7F8(a2, v27 + v25) - v34;
                if (v33 + 1.0 < v35)
                {
                  GlyphCount = CTLineGetGlyphCount(v32);
                  if (GlyphCount < 2 || !CTLineCreateJustifiedLine(v32, 1.0, v35 + (v35 - v33) / GlyphCount * 0.5 * -2.0))
                  {
                    CFRetain(v32);
                  }

                  operator new();
                }

                if (v35 + 1.0 < v33)
                {
                  v42.a = 0.0;
                  v43 = 0.0;
                  sub_276DFC880(a1, a2, v24, &v42, &v43);
                  v37 = v35 + v42.a + v43;
                  v38 = v33 + 1.0 >= v37 && v37 + 1.0 < v33;
                  if (v38 && *MEMORY[0x277D81500] != -1)
                  {
                    sub_276F4F7B0();
                  }
                }

                operator new();
              }
            }

            *(a2 + 24) |= 0x400uLL;
          }
        }

        else
        {
        }
      }

      v21 = ++v22;
    }

    while (v23 > v22);
  }

  return 0.0;
}

void sub_276DFCFD0()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81508];
  *MEMORY[0x277D81508] = v0;
}

uint64_t sub_276DFD014(uint64_t result, uint64_t a2)
{
  if (*(result + 112) != *(result + 120))
  {
    v3 = result;
    v4 = *result;
    v5 = MEMORY[0x277D81490];
    v6 = (*(a2 + 24) < 0 ? MEMORY[0x277D81490] : a2);
    result = objc_msgSend_charRangeMappedFromStorage_(v4, a2, *v6, v6[1]);
    v9 = *(v3 + 112);
    v8 = *(v3 + 120);
    if (v8 != v9)
    {
      v10 = result + v7;
      v11 = (v8 - v9) >> 6;
      do
      {
        v12 = v11 >> 1;
        v13 = &v9[64 * (v11 >> 1)];
        v15 = *v13;
        v14 = (v13 + 8);
        v11 += ~(v11 >> 1);
        if (v15 < result)
        {
          v9 = v14;
        }

        else
        {
          v11 = v12;
        }
      }

      while (v11);
      for (; v9 != v8; v9 += 64)
      {
        if (*v9 >= v10)
        {
          break;
        }

        v16 = sub_276DFC7F8(a2, *v9);
        sub_276DD1DC0(v18, *(v9 + 2), *v5, v5[1], 0, v16 + *(v9 + 4), *(v9 + 3) * 0.5);
        CGAffineTransformMakeScale(&v17, *(v9 + 7), 1.0);
        v21 = v17;
        v19 = *v9;
        location = CTLineGetStringRange(*(v9 + 2)).location;
        sub_276D64924(a2, v18);
        result = sub_276DD1EBC(v18);
      }
    }
  }

  return result;
}

void sub_276DFD160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_276DD1EBC(va);
  _Unwind_Resume(a1);
}

char *sub_276DFD178(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 112);
  v2 = *(a1 + 120);
  if (v3 == v2)
  {
    return 0;
  }

  v4 = (v2 - v3) >> 6;
  do
  {
    v5 = v4 >> 1;
    v6 = &v3[64 * (v4 >> 1)];
    v8 = *v6;
    v7 = (v6 + 8);
    v4 += ~(v4 >> 1);
    if (v8 < a2)
    {
      v3 = v7;
    }

    else
    {
      v4 = v5;
    }
  }

  while (v4);
  if (v3 == v2 || *v3 != a2)
  {
    return 0;
  }

  v9 = v3 + 64;
  do
  {
    v10 = v9;
    if (v9 == v2)
    {
      break;
    }

    v9 += 64;
  }

  while (*v10 == a2);
  return v10 - 64;
}

int64_t sub_276DFD1FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96) - v2;
  if (v3)
  {
    v3 = 0x8E38E38E38E38E39 * (v3 >> 3);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    for (i = (v2 + 64); *(i - 8) != a2; i += 72)
    {
      if (!--v3)
      {
        return v3 & 1;
      }
    }

    LOBYTE(v3) = *i;
  }

  return v3 & 1;
}

uint64_t sub_276DFD254(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  v2 = *(a1 + 96);
  v4 = v2 - v3;
  if (v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0x8E38E38E38E38E39 * (v4 >> 3);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = (v3 + 64);
    do
    {
      if (*(v7 - 8) == a2)
      {
        v5 = 1;
        *v7 = 1;
      }

      v7 += 72;
      --v6;
    }

    while (v6);
  }

  return v5 & 1;
}

uint64_t sub_276DFD2B8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 88);
  v3 = *(result + 96) - v2;
  if (v3)
  {
    v4 = 0x8E38E38E38E38E39 * (v3 >> 3);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v5 = (v2 + 64);
    do
    {
      if (*(v5 - 8) == a2)
      {
        *v5 = 0;
      }

      v5 += 72;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_276DFD308(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96) - v2;
  if (v3)
  {
    v4 = 0x8E38E38E38E38E39 * (v3 >> 3);
    if (v4 <= 1)
    {
      v4 = 1;
    }

    v5 = (v2 + 56);
    do
    {
      v6 = *(v5 - 5) + *(v5 - 6);
      if (v6 <= a2)
      {
        break;
      }

      if (v6 - 1 == a2 && *v5 == 0.0)
      {
        return 1;
      }

      v5 += 9;
      --v4;
    }

    while (v4);
  }

  return 0;
}

id sub_276DFD38C(uint64_t a1, const char *a2)
{
  if (*(a1 + 72))
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSMutableAttributedString *TSWPParagraphTypesetter::mutableAttributedString() const");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 378, 0, "expected nil value for '%{public}s'", "_ctTypesetter");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10 = *(a1 + 64);

  return v10;
}

void sub_276DFD474(uint64_t a1, void *a2)
{
  v21 = a2;
  objc_storeStrong(a1, a2);
  sub_276DFB394(a1);
  v5 = *(a1 + 120);
  for (i = *(a1 + 112); i != v5; i += 8)
  {
    v7 = *i;
    v8 = *(a1 + 40);
    v9 = (*(a1 + 48) - v8) >> 1;
    v10 = i[1] + *i;
    if (*i >= v9 || v10 > v9)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "void TSWPParagraphTypesetter::updateSource(__strong id<TSWPTextSource>)");
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphTypesetter.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 390, 0, "Tate-chu-yoko run's range is not within the text buffer.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    }

    else
    {
      *(v8 + 2 * v7) = -4;
      v19 = 2 * v7 + 2;
      v20 = 2 * v10;
      if (v20 != v19)
      {
        memset_pattern16((v19 + v8), "\v \v \v \v \v \v \v \v ", v20 - v19);
      }
    }
  }
}

void sub_276DFD600(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    sub_276DFE070(a1, a2 - v2);
  }
}

uint64_t sub_276DFD6E8(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x277CA3D00);
  }

  return result;
}

double sub_276DFD704(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if ((*(v2 + 64) & 1) == 0)
      {
        return *(v2 + 56) * 0.5;
      }
    }
  }

  return result;
}

void sub_276DFD72C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2 >= (*(a1 + 48) - v2) >> 1)
  {
    v8 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSWPParagraphTypesetter::pConvertCharacterIndexToNormalWidthNumber(const NSUInteger)");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphTypesetter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v11, v17, v10, 554, 0, "Access outside array");

    v14 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v14, v12, v13);
  }

  else
  {
    v5 = *(v2 + 2 * a2);
    v6 = sub_276D35268(*(v2 + 2 * a2));
    if (v5 != v6)
    {
      v15 = v6;
      v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%C", v6);
      objc_msgSend_replaceCharactersInRange_withString_(*(a1 + 64), v16, a2, 1);
      *(*(a1 + 40) + 2 * a2) = v15;
    }
  }
}

void sub_276DFD8A0(uint64_t a1, const __CFAttributedString *a2)
{
  v2 = *(a1 + 120) - *(a1 + 112);
  if (v2)
  {
    v5 = v2 >> 6;
    v6 = *MEMORY[0x277D81510];
    if (v5 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v5;
    }

    v8 = 8;
    do
    {
      v9 = *(*(a1 + 112) + v8);
      sub_276DFD928(a2, v6, v9);
      v6 += v9;
      v8 += 64;
      --v7;
    }

    while (v7);
  }
}

void sub_276DFD928(const __CFAttributedString *a1, const char *a2, NSUInteger a3)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v25 = objc_msgSend_sharedCache(TSWPFontMetricsCache, a2, a3);
  if (a2 < &a2[a3])
  {
    v28 = *MEMORY[0x277CC4838];
    v23 = *MEMORY[0x277CC48D8];
    v24 = *MEMORY[0x277CC48D0];
    v22 = *MEMORY[0x277CC48C8];
    v3 = a2;
    do
    {
      Attribute = CFAttributedStringGetAttribute(a1, v3, v28, &effectiveRange);
      location = effectiveRange.location;
      length = effectiveRange.length;
      v36.length = a3;
      v36.location = a2;
      v7 = NSIntersectionRange(effectiveRange, v36);
      v8 = objc_msgSend_supportedFractionalWidthsForFont_(v25, v7.length, Attribute);
      v10 = 4;
      if (v7.length < 4)
      {
        v10 = v7.length;
      }

      if (v10 != 2)
      {
        if (v10 != 3)
        {
          if (v10 != 4)
          {
            goto LABEL_19;
          }

          if ((v8 & 0x10) != 0)
          {
            v11 = 4;
            goto LABEL_14;
          }
        }

        if ((v8 & 8) != 0)
        {
          v11 = 3;
          goto LABEL_14;
        }
      }

      if ((v8 & 4) != 0)
      {
        v11 = 2;
LABEL_14:
        v34 = v24;
        v31[0] = v23;
        v31[1] = v22;
        v32[0] = &unk_288627620;
        v12 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v9, v11, v22, v23, v24);
        v32[1] = v12;
        v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v32, v31, 2);
        v33 = v14;
        v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, &v33, 1);
        v35[0] = v16;
        v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v35, &v34, 1);

        v19 = CTFontDescriptorCreateWithAttributes(v18);
        if (v19)
        {
          Size = CTFontGetSize(Attribute);
          CopyWithAttributes = CTFontCreateCopyWithAttributes(Attribute, Size, 0, v19);
          if (CopyWithAttributes)
          {
            CFAttributedStringSetAttribute(a1, v7, v28, CopyWithAttributes);
            CFRelease(CopyWithAttributes);
          }

          CFRelease(v19);
        }
      }

LABEL_19:
      if (v3 + 1 > length + location)
      {
        ++v3;
      }

      else
      {
        v3 = length + location;
      }
    }

    while (v3 < &a2[a3]);
  }
}

uint64_t sub_276DFDC04(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 40) + 2 * a2);
  result = sub_276D355C4(v2);
  if ((result - 3) < 2)
  {
    return result;
  }

  if (v2 <= 12288)
  {
    if (v2 <= 0x3B && ((1 << v2) & 0xC00500000000000) != 0)
    {
      return result;
    }

    if ((v2 - 8212) <= 0x12 && ((1 << (v2 - 20)) & 0x60001) != 0)
    {
      return result;
    }

LABEL_22:
    result = sub_276DFDCE8(v2);
    if ((result & 1) == 0)
    {
      return sub_276DFDD7C(v2);
    }

    return result;
  }

  if (((v2 - 12289) > 0x34 || ((1 << (v2 - 1)) & 0x1C000000000003) == 0) && (v2 - 12539) >= 2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_276DFDCE8(int a1)
{
  result = 1;
  if (a1 <= 8219)
  {
    if (a1 <= 122)
    {
      if (a1 != 40 && a1 != 91)
      {
        return 0;
      }

      return result;
    }

    if (a1 == 123 || a1 == 171)
    {
      return result;
    }

    v3 = 8216;
  }

  else
  {
    if ((a1 - 12296) <= 0x15 && ((1 << (a1 - 8)) & 0x215155) != 0 || a1 == 8220)
    {
      return result;
    }

    v3 = 10629;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_276DFDD7C(int a1)
{
  result = 1;
  if (a1 <= 8220)
  {
    if (a1 <= 124)
    {
      if (a1 != 41 && a1 != 93)
      {
        return 0;
      }

      return result;
    }

    if (a1 == 125 || a1 == 187)
    {
      return result;
    }

    v3 = 8217;
  }

  else
  {
    if ((a1 - 12297) <= 0x16 && ((1 << (a1 - 9)) & 0x415155) != 0 || a1 == 8221)
    {
      return result;
    }

    v3 = 10630;
  }

  if (a1 != v3)
  {
    return 0;
  }

  return result;
}

double sub_276DFDE10(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32) + *(a1 + 40);
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_276DFDE28(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  v3 = *(a2 + 24);
  if (v3)
  {
    CFRetain(v3);
    v5 = *(a2 + 24);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 24) = v5;
  return a1;
}

uint64_t sub_276DFDE98(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_276DFDECC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 16);
  if (v3)
  {
    CFRetain(v3);
    v5 = *(a2 + 16);
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 16) = v5;
  return a1;
}

uint64_t sub_276DFDF34(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_276DFDF68(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_276DFDE98(v4 - 72);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_276DFDFEC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_276DFDF34(v4 - 64);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_276DFE070(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      sub_276D34ED8();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_276D6D54C(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t sub_276DFE198(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_276D34ED8();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_276DFE2E0(a1, v6);
  }

  v13 = 0;
  v14 = 72 * v2;
  sub_276DFDE28(72 * v2, a2);
  v15 = 72 * v2 + 72;
  v7 = a1[1];
  v8 = 72 * v2 + *a1 - v7;
  sub_276DFE33C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_276DFE3E0(&v13);
  return v12;
}

void sub_276DFE2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_276DFE3E0(va);
  _Unwind_Resume(a1);
}

void sub_276DFE2E0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_276D34F38();
}

uint64_t sub_276DFE33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_276DFDE28(a4, v8);
      v8 += 72;
      a4 += 72;
      v7 -= 72;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_276DFDE98(v6);
      v6 += 72;
    }
  }

  return result;
}

void sub_276DFE3BC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 72;
    do
    {
      v4 = sub_276DFDE98(v4) - 72;
      v2 += 72;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276DFE3E0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_276DFDE98(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_276DFE430(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_276D34ED8();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_276DFE540(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 6;
  sub_276DFDECC(v2 << 6, a2);
  v16 = ((v2 << 6) + 64);
  v8 = a1[1];
  v9 = (v2 << 6) + *a1 - v8;
  sub_276DFE588(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_276DFE62C(&v14);
  return v13;
}

void sub_276DFE52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_276DFE62C(va);
  _Unwind_Resume(a1);
}

void sub_276DFE540(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_276D34F38();
}

uint64_t sub_276DFE588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_276DFDECC(a4, v8);
      v8 += 64;
      a4 += 64;
      v7 -= 64;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_276DFDF34(v6);
      v6 += 64;
    }
  }

  return result;
}

void sub_276DFE608(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 64;
    do
    {
      v4 = sub_276DFDF34(v4) - 64;
      v2 += 64;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_276DFE62C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    sub_276DFDF34(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276DFE758(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_init(v4, v5, v6);
  v8 = qword_280A58468;
  qword_280A58468 = v7;

  if (!qword_280A58468)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[TSWPFontMetricsCache sharedCache]_block_invoke");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFontMetricsCache.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 21, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v17 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v17, v15, v16);
  }
}

void sub_276DFEA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = TSWPFontMetricsCache;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void *sub_276DFF9F8(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void *sub_276DFFA5C(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_276DFFB4C(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_276DE4EE0(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_276E000D8(uint64_t a1, void *a2, void *a3)
{
  v54 = a2;
  v5 = a3;
  if (objc_msgSend_isEqualToString_(v54, v6, @"dropCapType"))
  {
    v9 = objc_msgSend_integerValue(v5, v7, v8);
    objc_msgSend_setDropCapType_(*(a1 + 32), v10, v9);
  }

  else if (objc_msgSend_isEqualToString_(v54, v7, @"dropCapLines"))
  {
    v13 = objc_msgSend_unsignedIntegerValue(v5, v11, v12);
    objc_msgSend_setNumberOfLines_(*(a1 + 32), v14, v13);
  }

  else if (objc_msgSend_isEqualToString_(v54, v11, @"dropCapRaisedLines"))
  {
    v17 = objc_msgSend_unsignedIntegerValue(v5, v15, v16);
    objc_msgSend_setNumberOfRaisedLines_(*(a1 + 32), v18, v17);
  }

  else if (objc_msgSend_isEqualToString_(v54, v15, @"dropCapOutdent"))
  {
    objc_msgSend_tsu_CGFloatValue(v5, v19, v20);
    objc_msgSend_setOutdent_(*(a1 + 32), v21, v22);
  }

  else if (objc_msgSend_isEqualToString_(v54, v19, @"dropCapPadding"))
  {
    objc_msgSend_tsu_CGFloatValue(v5, v23, v24);
    objc_msgSend_setPadding_(*(a1 + 32), v25, v26);
  }

  else if (objc_msgSend_isEqualToString_(v54, v23, @"dropCapShapeEnabled"))
  {
    v29 = objc_msgSend_BOOLValue(v5, v27, v28);
    objc_msgSend_setShapeEnabled_(*(a1 + 32), v30, v29);
  }

  else if (objc_msgSend_isEqualToString_(v54, v27, @"dropCapCornerRadius"))
  {
    objc_msgSend_tsu_CGFloatValue(v5, v31, v32);
    objc_msgSend_setCornerRadius_(*(a1 + 32), v33, v34);
  }

  else if (objc_msgSend_isEqualToString_(v54, v31, @"dropCapScale"))
  {
    objc_msgSend_tsu_CGFloatValue(v5, v35, v36);
    objc_msgSend_setCharacterScale_(*(a1 + 32), v37, v38);
  }

  else if (objc_msgSend_isEqualToString_(v54, v35, @"dropCapWrapType"))
  {
    v41 = objc_msgSend_integerValue(v5, v39, v40);
    objc_msgSend_setWrapType_(*(a1 + 32), v42, v41);
  }

  else if (objc_msgSend_isEqualToString_(v54, v39, @"dropCapNumberOfCharacters"))
  {
    v45 = objc_msgSend_unsignedIntegerValue(v5, v43, v44);
    objc_msgSend_setNumberOfCharacters_(*(a1 + 32), v46, v45);
  }

  else if (v54)
  {
    v47 = MEMORY[0x277D81150];
    v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSWPDropCap setValuesWithLocalizationDictionary:]_block_invoke");
    v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPDropCap.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v51, v48, v50, 120, 0, "Unexpected key in dropCap localization dictionary: '%{public}@'", v54);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v52, v53);
  }
}

void sub_276E016DC(void *a1, const char *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(*(a1[4] + 80), a2, a1[5], &v14);
  v15.location = objc_msgSend_rangeOfDropCapAtCharIndex_(*(a1[4] + 80), v8, v14);
  v16.location = a3;
  v16.length = a4;
  if (!NSIntersectionRange(v15, v16).length)
  {
    v9 = a1[5];
    if (v9 <= a3)
    {
      v10 = a3 + a4;
      if (a1[6] + v9 >= v10)
      {
        v11 = a1[4];
        v13 = a3;
        sub_276D19CF0((v11 + 8), &v13);
        v12 = a1[4];
        v13 = v10;
        sub_276D19CF0((v12 + 8), &v13);
      }
    }
  }
}

uint64_t sub_276E01794(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      sub_276D34ED8();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = sub_276E0386C(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void sub_276E0183C()
{
  v0 = TSULogCreateCategory();
  v1 = *MEMORY[0x277D81438];
  *MEMORY[0x277D81438] = v0;
}

void sub_276E01FA0(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

uint64_t sub_276E0386C(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      sub_276E03928(&v2, a2);
    }

    sub_276D34ED8();
  }

  return result;
}

void sub_276E03910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276E03928(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    sub_276D34EF0(a1, v2);
  }

  sub_276D34ED8();
}

void sub_276E0396C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  sub_276E03A10(&v18, &v16, &v14, &v13);
}

void sub_276E03A10(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  sub_276E03AA0(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void sub_276E03AA0(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void sub_276E0405C(void *a1, CFIndex a2, CFIndex a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a4;
  v11 = a5;
  v15.location = a2;
  v15.length = a3;
  v12 = CFStringTokenizerCreate(0, v9, v15, 4uLL, v10);
  if (v12)
  {
    while (1)
    {
      Token = CFStringTokenizerAdvanceToNextToken(v12);
      if (!Token)
      {
        break;
      }

      if ((Token & 0x10) == 0)
      {
        v14 = 0;
        v11[2](v11, v12, Token, &v14);
        if (v14)
        {
          break;
        }
      }
    }

    CFRelease(v12);
  }
}

void sub_276E0451C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276E04570(uint64_t a1, CFStringTokenizerRef tokenizer)
{
  v6 = CFStringTokenizerCopyCurrentTokenAttribute(tokenizer, 0x10000uLL);
  if (v6)
  {
    if (*(a1 + 64) == 1)
    {
      CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(tokenizer);
      length = CurrentTokenRange.length;
      v8 = *(*(a1 + 56) + 8);
      v5 = *(v8 + 24);
      if (CurrentTokenRange.location > v5)
      {
        v9 = *(a1 + 32);
        v10 = objc_msgSend_substringWithRange_(*(a1 + 40), CurrentTokenRange.length, v5, CurrentTokenRange.location - v5);
        objc_msgSend_appendString_(v9, v11, v10);

        v8 = *(*(a1 + 56) + 8);
      }

      *(v8 + 24) = CurrentTokenRange.location + CurrentTokenRange.length;
    }

    v12 = objc_msgSend_length(*(a1 + 32), length, v5);
    v15 = objc_msgSend_length(v6, v13, v14);
    objc_msgSend_appendString_(*(a1 + 32), v16, v6, v12, v15);
    CFStringTransform(*(a1 + 32), &v17, *(*(a1 + 48) + 24), 0);
  }
}

void sub_276E047B0(uint64_t a1, CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(tokenizer);
  v10 = objc_msgSend_substringWithRange_(*(a1 + 32), CurrentTokenRange.length, CurrentTokenRange.location, CurrentTokenRange.length);
  v5 = objc_msgSend_transcribeText_withLocale_(*(a1 + 40), v4, v10, *(a1 + 48));
  if (objc_msgSend_length(v5, v6, v7) && objc_msgSend_tsp_protobufString(v5, v8, v9))
  {
    (*(*(a1 + 56) + 16))();
  }
}

void sub_276E04BA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__singletonAlloc(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_init(v4, v5, v6);
  v8 = qword_280A58478;
  qword_280A58478 = v7;

  if (!qword_280A58478)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "+[TSWPPhonetics sharedDictionary]_block_invoke");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPPhonetics.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 32, 0, "Couldn't create singleton instance of %@", *(a1 + 32));

    v17 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v17, v15, v16);
  }
}

void sub_276E05D5C()
{
  v0 = qword_280A58490;
  qword_280A58490 = &unk_288628110;
}

void sub_276E062DC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, a3);
  v5 = objc_msgSend_BOOLForKey_(v3, v4, @"TSWPUseLargeMaximumFontSize");

  v6 = 1000;
  if (v5)
  {
    v6 = 5000;
  }

  qword_280A584A0 = v6;
}

void sub_276E065C4(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_276E07074(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 40 * a2;
  }
}

void sub_276E066E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = TSWPLayoutMetricsCache;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

char *sub_276E06ACC(void *a1, char *__src, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3) >= a3)
  {
    v15 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - __src) >> 3);
    v16 = a1[1];
    v17 = a3;
    if (a3 <= v15)
    {
LABEL_16:
      v22 = &__src[40 * a3];
      v23 = &v16[-40 * a3];
      v24 = v16;
      if (v23 < v8)
      {
        v24 = v16;
        do
        {
          v25 = *v23;
          v26 = *(v23 + 16);
          *(v24 + 4) = *(v23 + 32);
          *v24 = v25;
          *(v24 + 1) = v26;
          v23 += 40;
          v24 += 40;
        }

        while (v23 < v8);
      }

      a1[1] = v24;
      if (v16 != v22)
      {
        memmove(&__src[40 * a3], __src, v16 - v22);
      }

      if (__src <= v5)
      {
        if (a1[1] <= v5)
        {
          v27 = 0;
        }

        else
        {
          v27 = a3;
        }

        v5 += 40 * v27;
      }

      v28 = __src;
      do
      {
        v29 = *v5;
        v30 = *(v5 + 16);
        *(v28 + 4) = *(v5 + 32);
        *v28 = v29;
        *(v28 + 1) = v30;
        v28 += 40;
        --v17;
      }

      while (v17);
      return __src;
    }

    v18 = 0;
    v16 = &v8[40 * (a3 - v15)];
    do
    {
      v19 = &v8[v18];
      v20 = *a4;
      v21 = *(a4 + 16);
      *(v19 + 4) = *(a4 + 32);
      *v19 = v20;
      *(v19 + 1) = v21;
      v18 += 40;
    }

    while (40 * a3 - 8 * ((v8 - __src) >> 3) != v18);
    a1[1] = v16;
    if (v8 != __src)
    {
      v17 = 0xCCCCCCCCCCCCCCCDLL * ((v8 - __src) >> 3);
      goto LABEL_16;
    }

    return __src;
  }

  v10 = *a1;
  v11 = a3 - 0x3333333333333333 * (&v8[-*a1] >> 3);
  if (v11 > 0x666666666666666)
  {
    sub_276D34ED8();
  }

  v12 = __src - v10;
  v13 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3);
  if (2 * v13 > v11)
  {
    v11 = 2 * v13;
  }

  if (v13 >= 0x333333333333333)
  {
    v14 = 0x666666666666666;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    sub_276E071E0(a1, v14);
  }

  v31 = 8 * (v12 >> 3);
  v32 = (v31 + 40 * a3);
  v33 = 40 * a3;
  v34 = v31;
  do
  {
    v35 = *a4;
    v36 = *(a4 + 16);
    *(v34 + 32) = *(a4 + 32);
    *v34 = v35;
    *(v34 + 16) = v36;
    v34 += 40;
    v33 -= 40;
  }

  while (v33);
  memcpy(v32, __src, a1[1] - __src);
  v37 = *a1;
  v38 = &v32[a1[1] - __src];
  a1[1] = __src;
  v39 = (__src - v37);
  v40 = (v31 - (__src - v37));
  memcpy(v40, v37, v39);
  v41 = *a1;
  *a1 = v40;
  a1[1] = v38;
  a1[2] = 0;
  if (v41)
  {
    operator delete(v41);
  }

  return v31;
}

void sub_276E07074(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 40 * a2;
      v11 = vdupq_n_s64(0x7FF8000000000000uLL);
      do
      {
        *v4 = 0;
        *(v4 + 8) = v11;
        *(v4 + 24) = 0x7FFFFFFFFFFFFFFFLL;
        *(v4 + 32) = 0x7FF8000000000000;
        v4 += 40;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      sub_276D34ED8();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_276E071E0(a1, v9);
    }

    v12 = 40 * v6;
    v13 = 40 * v6 + 40 * a2;
    v14 = vdupq_n_s64(0x7FF8000000000000uLL);
    v15 = v12;
    do
    {
      *v15 = 0;
      *(v15 + 8) = v14;
      *(v15 + 24) = 0x7FFFFFFFFFFFFFFFLL;
      *(v15 + 32) = 0x7FF8000000000000;
      v15 += 40;
    }

    while (v15 != v13);
    v16 = *(a1 + 8) - *a1;
    v17 = v12 - v16;
    memcpy((v12 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

void sub_276E071E0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_276D34F38();
}

id sub_276E07238(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v14 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v10, v11);
  if (v7)
  {
    v15 = objc_msgSend_baseStyleForVariation(v7, v12, v13);
    if (objc_msgSend_isVariation(v7, v16, v17))
    {
      v18 = objc_msgSend_overridePropertyMap(v7, v12, v13);
      objc_msgSend_addValuesFromPropertyMap_(v14, v19, v18);
    }

    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = 0;
    if (v9)
    {
LABEL_5:
      objc_msgSend_addValuesFromPropertyMap_(v14, v12, v9);
    }
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_276E074D4;
  v46 = sub_276E074E4;
  v47 = 0;
  v20 = objc_msgSend_allProperties(v14, v12, v13);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_276E074EC;
  v37[3] = &unk_27A6F4CA0;
  v21 = v14;
  v38 = v21;
  v22 = v15;
  v39 = v22;
  v23 = v8;
  v40 = v23;
  v41 = &v42;
  objc_msgSend_enumeratePropertiesUsingBlock_(v20, v24, v37);

  v26 = v43[5];
  if (v26)
  {
    objc_msgSend_removeValuesForProperties_(v21, v25, v26);
  }

  if (!v21)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "+[TSSStylesheet(TSWPStyleAdditions) variationMapForVaryingCharacterStyle:overParagraphStyle:withPropertyMap:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStylesheetAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 146, 0, "invalid nil value for '%{public}s'", "newPropertyMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  v34 = v40;
  v35 = v21;

  _Block_object_dispose(&v42, 8);

  return v35;
}

void sub_276E074BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276E074D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276E074EC(uint64_t a1, const char *a2)
{
  v17 = objc_msgSend_boxedObjectForProperty_(*(a1 + 32), a2, a2);
  v6 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5);

  if (v17 == v6)
  {

    v17 = 0;
  }

  v10 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v7, a2);
  if (!v10)
  {
    v10 = objc_msgSend_boxedValueForProperty_(*(a1 + 48), v8, a2);
  }

  v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v8, v9);

  if (v10 == v11)
  {

    v10 = 0;
  }

  if (v17 == v10 || objc_msgSend_isEqual_(v17, v12, v10))
  {
    v13 = *(*(*(a1 + 56) + 8) + 40);
    if (!v13)
    {
      v14 = objc_alloc_init(MEMORY[0x277D80AA8]);
      v15 = *(*(a1 + 56) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v13 = *(*(*(a1 + 56) + 8) + 40);
    }

    objc_msgSend_addProperty_(v13, v12, a2);
  }
}

id sub_276E07628(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v14 = objc_msgSend_propertyMap(MEMORY[0x277D80AB8], v10, v11);
  if (v7)
  {
    v15 = objc_msgSend_baseStyleForVariation(v7, v12, v13);
    if (objc_msgSend_isVariation(v7, v16, v17))
    {
      v18 = objc_msgSend_overridePropertyMap(v7, v12, v13);
      objc_msgSend_addValuesFromPropertyMap_(v14, v19, v18);
    }

    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v15 = 0;
    if (v9)
    {
LABEL_5:
      objc_msgSend_addValuesFromPropertyMap_(v14, v12, v9);
    }
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_276E074D4;
  v46 = sub_276E074E4;
  v47 = 0;
  v20 = objc_msgSend_allProperties(v14, v12, v13);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_276E078C4;
  v37[3] = &unk_27A6F4CA0;
  v21 = v14;
  v38 = v21;
  v22 = v15;
  v39 = v22;
  v23 = v8;
  v40 = v23;
  v41 = &v42;
  objc_msgSend_enumeratePropertiesUsingBlock_(v20, v24, v37);

  v26 = v43[5];
  if (v26)
  {
    objc_msgSend_removeValuesForProperties_(v21, v25, v26);
  }

  if (!v21)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "+[TSSStylesheet(TSWPStyleAdditions) variationMapForVaryingStyle:overStyles:withPropertyMap:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStylesheetAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v31, v28, v30, 220, 0, "invalid nil value for '%{public}s'", "newPropertyMap");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33);
  }

  v34 = v40;
  v35 = v21;

  _Block_object_dispose(&v42, 8);

  return v35;
}

void sub_276E078AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276E078C4(uint64_t a1, const char *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_boxedObjectForProperty_(*(a1 + 32), a2, a2);
  v7 = objc_msgSend_null(MEMORY[0x277CBEB68], v5, v6);

  if (v4 == v7)
  {

    v4 = 0;
  }

  v11 = objc_msgSend_boxedValueForProperty_(*(a1 + 40), v8, a2);
  if (!v11)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = *(a1 + 48);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v26, v30, 16);
    if (v14)
    {
      v16 = v14;
      v17 = *v27;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v12);
          }

          v19 = objc_msgSend_boxedValueForProperty_(*(*(&v26 + 1) + 8 * i), v15, a2, v26);
          if (v19)
          {
            v11 = v19;
            goto LABEL_14;
          }
        }

        v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v26, v30, 16);
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_14:
  }

  v20 = objc_msgSend_null(MEMORY[0x277CBEB68], v9, v10, v26);

  if (v11 == v20)
  {

    v11 = 0;
  }

  if (v4 == v11 || objc_msgSend_isEqual_(v4, v21, v11))
  {
    v22 = *(*(*(a1 + 56) + 8) + 40);
    if (!v22)
    {
      v23 = objc_alloc_init(MEMORY[0x277D80AA8]);
      v24 = *(*(a1 + 56) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      v22 = *(*(*(a1 + 56) + 8) + 40);
    }

    objc_msgSend_addProperty_(v22, v21, a2);
  }
}

void *sub_276E07ABC(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSSStylesheet(TSWPStyleAdditions) variationOfCharacterStyle:paragraphStyle:propertyMap:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStylesheetAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 251, 0, "invalid nil value for '%{public}s'", "inParagraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    if (v12)
    {
      goto LABEL_3;
    }
  }

  v25 = MEMORY[0x277D81150];
  v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSSStylesheet(TSWPStyleAdditions) variationOfCharacterStyle:paragraphStyle:propertyMap:]");
  v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStylesheetAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 252, 0, "invalid nil value for '%{public}s'", "inPropertyMap");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
LABEL_3:
  v13 = objc_opt_class();
  v17 = objc_msgSend_variationMapForVaryingCharacterStyle_overParagraphStyle_withPropertyMap_(v13, v14, v8, v9, v12);
  if (v8)
  {
    objc_msgSend_baseStyleForVariation(v8, v15, v16);
  }

  else
  {
    objc_msgSend_defaultCharacterStyle(a1, v15, v16);
  }
  v33 = ;
  if (!v33)
  {
    v34 = MEMORY[0x277D81150];
    v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSSStylesheet(TSWPStyleAdditions) variationOfCharacterStyle:paragraphStyle:propertyMap:]");
    v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStylesheetAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v38, v35, v37, 261, 0, "invalid nil value for '%{public}s'", "baseStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v39, v40);
  }

  v41 = objc_msgSend_variationOfStyle_propertyMap_(a1, v32, v33, v17);
  v44 = objc_msgSend_defaultCharacterStyle(a1, v42, v43);
  if (v41 == v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v41;
  }

  v46 = v45;

  return v45;
}

id sub_276E07D3C(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v15 = v13;
  if (v12)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSSStylesheet(TSWPStyleAdditions) variationOfDropCapStyle:characterStyle:paragraphStyle:propertyMap:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStylesheetAdditions.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 294, 0, "invalid nil value for '%{public}s'", "inParagraphStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v31 = MEMORY[0x277D81150];
  v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSSStylesheet(TSWPStyleAdditions) variationOfDropCapStyle:characterStyle:paragraphStyle:propertyMap:]");
  v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStylesheetAdditions.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v35, v32, v34, 295, 0, "invalid nil value for '%{public}s'", "inPropertyMap");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37);
LABEL_3:
  v16 = objc_opt_new();
  objc_msgSend_tsu_addNonNilObject_(v16, v17, v11);
  objc_msgSend_tsu_addNonNilObject_(v16, v18, v12);
  v19 = objc_opt_class();
  v23 = objc_msgSend_variationMapForVaryingStyle_overStyles_withPropertyMap_(v19, v20, v10, v16, v15);
  if (v10)
  {
    objc_msgSend_baseStyleForVariation(v10, v21, v22);
  }

  else
  {
    objc_msgSend_defaultDropCapStyle(a1, v21, v22);
  }
  v39 = ;
  if (!v39)
  {
    v51 = a1;
    v40 = v11;
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "[TSSStylesheet(TSWPStyleAdditions) variationOfDropCapStyle:characterStyle:paragraphStyle:propertyMap:]");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPStylesheetAdditions.m");
    v45 = v41;
    v11 = v40;
    a1 = v51;
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v46, v42, v44, 307, 0, "invalid nil value for '%{public}s'", "baseStyle");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
  }

  v49 = objc_msgSend_variationOfStyle_propertyMap_(a1, v38, v39, v23);

  return v49;
}

uint64_t sub_276E08028(void *a1)
{
  v3 = objc_opt_class();

  return objc_msgSend__defaultStyleOfClass_withIdentifier_wasCreated_usingBlock_(a1, v2, v3, @"equation-0-imageStyle", 0, &unk_2885FF4A8);
}

id sub_276E08080(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D80340];
  v3 = a2;
  v4 = [v2 alloc];
  v7 = objc_msgSend_defaultPropertyMap(MEMORY[0x277D80340], v5, v6);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v4, v8, v3, 0, v7, 0);

  v10 = objc_alloc(MEMORY[0x277CCAD78]);
  v12 = objc_msgSend_initWithUUIDString_(v10, v11, @"9D635D96-791C-4479-AF22-A5A3E409DE2A");
  objc_msgSend_setObjectUUID_(isVariation, v13, v12);

  return isVariation;
}

id sub_276E08134(void *a1, const char *a2, uint64_t a3)
{
  v4 = sub_276E32640(a1, a2, a3);
  v6 = objc_msgSend_localizedStringForKey_value_table_(v4, v5, @"Header & Footer", &stru_28860A0F0, @"TSText");

  objc_opt_class();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_276E0826C;
  v16[3] = &unk_27A6F4CE8;
  v17 = v6;
  v7 = v6;
  v9 = objc_msgSend_firstCascadedStylePassingTest_(a1, v8, v16);
  v10 = TSUDynamicCast();

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = objc_msgSend_defaultParagraphStyle(a1, v11, v12);
  }

  v14 = v13;

  return v14;
}

uint64_t sub_276E0826C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v8 = *(a1 + 32);
    v9 = objc_msgSend_name(v3, v5, v6);
    isEqualToString = objc_msgSend_isEqualToString_(v8, v10, v9);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

uint64_t sub_276E082F0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_class();

  return objc_msgSend__defaultStyleOfClass_withIdentifier_wasCreated_usingBlock_(a1, v5, v6, @"character-style-null", a3, &unk_2885FF4C8);
}

id sub_276E0834C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [TSWPCharacterStyle alloc];
  v6 = sub_276E32640(v3, v4, v5);
  v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"None", &stru_28860A0F0, @"TSText");
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v3, v9, v2, v8, 0, 0);

  return isVariation;
}

uint64_t sub_276E083F8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_class();

  return objc_msgSend__defaultStyleOfClass_withIdentifier_wasCreated_usingBlock_(a1, v5, v6, @"character-style-hyperlink", a3, &unk_2885FF4E8);
}

id sub_276E08454(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [TSWPCharacterStyle alloc];
  v6 = sub_276E32640(v3, v4, v5);
  v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"Link", &stru_28860A0F0, @"TSText");
  v10 = objc_msgSend_propertyMapWithPropertiesAndValues_(MEMORY[0x277D80AB8], v9, 23, 1, 0);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v3, v11, v2, v8, v10, 0);

  return isVariation;
}

id sub_276E08534(void *a1, uint64_t a2, char *a3)
{
  v13 = 0;
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &v13;
  }

  v5 = objc_opt_class();
  v9 = objc_msgSend__defaultStyleOfClass_withIdentifier_wasCreated_usingBlock_(a1, v6, v5, @"paragraph-style-default", v4, &unk_2885FF508);
  if (*v4 == 1)
  {
    v10 = objc_msgSend_defaultListStyle(a1, v7, v8);
    objc_msgSend_setInitialListStyle_(v9, v11, v10);
  }

  return v9;
}

id sub_276E085E8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [TSWPParagraphStyle alloc];
  v6 = sub_276E32640(v3, v4, v5);
  v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"Free Form", &stru_28860A0F0, @"TSText");
  v11 = objc_msgSend_defaultPropertyMap(TSWPParagraphStyle, v9, v10);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v3, v12, v2, v8, v11, 0);

  return isVariation;
}

uint64_t sub_276E086B0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_class();

  return objc_msgSend__defaultStyleOfClass_withIdentifier_wasCreated_usingBlock_(a1, v5, v6, @"text-0-liststyle-None", a3, &unk_2885FF528);
}

id sub_276E0870C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [TSWPListStyle alloc];
  v6 = sub_276E32640(v3, v4, v5);
  v8 = objc_msgSend_localizedStringForKey_value_table_(v6, v7, @"None", &stru_28860A0F0, @"TSText");
  v11 = objc_msgSend_defaultPropertyMap(TSWPListStyle, v9, v10);
  isVariation = objc_msgSend_initWithContext_name_overridePropertyMap_isVariation_(v3, v12, v2, v8, v11, 0);

  return isVariation;
}

uint64_t sub_276E087D4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_class();

  return objc_msgSend__defaultStyleOfClass_withIdentifier_wasCreated_usingBlock_(a1, v5, v6, @"column-style-default", a3, &unk_2885FF548);
}

uint64_t sub_276E08840(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_class();

  return objc_msgSend__defaultStyleOfClass_withIdentifier_wasCreated_usingBlock_(a1, v5, v6, @"toc-entry-style-default", a3, &unk_2885FF568);
}

uint64_t sub_276E088AC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_class();

  return objc_msgSend__defaultStyleOfClass_withIdentifier_wasCreated_usingBlock_(a1, v5, v6, @"drop-cap-style-default", a3, &unk_2885FF588);
}

id sub_276E08918(void *a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5, void *a6)
{
  v9 = a4;
  v10 = a6;
  v12 = objc_msgSend_cascadedStyleWithIdentifier_(a1, v11, v9);
  if (!v12)
  {
    v13 = a1;
    objc_sync_enter(v13);
    v12 = objc_msgSend_cascadedStyleWithIdentifier_(v13, v14, v9);
    if (!v12)
    {
      v17 = objc_msgSend_rootAncestor(v13, v15, v16);
      isLocked = objc_msgSend_isLocked(v17, v18, v19);
      objc_msgSend_setIsLocked_(v17, v21, 0);
      v24 = objc_msgSend_context(v17, v22, v23);
      v12 = v10[2](v10, v24);

      objc_msgSend_addStyle_withIdentifier_(v17, v25, v12, v9);
      objc_msgSend_setIsLocked_(v17, v26, isLocked);
      if (a5)
      {
        *a5 = 1;
      }
    }

    objc_sync_exit(v13);
  }

  return v12;
}

void sub_276E0906C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_276E09B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  if (a26)
  {
    free(a26);
  }

  _Unwind_Resume(a1);
}

void sub_276E09BA0(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_276D128DC();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_276E09C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276E0A7D0(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v22.location = a3;
  v22.length = a4;
  v5 = a2;
  v8 = objc_msgSend_insertionChangesTable(v5, v6, v7);
  v11 = v8;
  if (v8)
  {
    TSWPAttributeArray::begin(v8, &v22, &v20);
    v12 = v21;
    *a1 = v20;
    *(a1 + 8) = v12;
    TSWPAttributeArray::end(v11, &v22, v13, &v20);
    v14 = v21;
    *(a1 + 16) = v20;
    *(a1 + 24) = v14;
  }

  v15 = objc_msgSend_deletionChangesTable(v5, v9, v10);
  v16 = v15;
  if (v15)
  {
    TSWPAttributeArray::begin(v15, &v22, &v20);
    v17 = v21;
    *(a1 + 32) = v20;
    *(a1 + 40) = v17;
    TSWPAttributeArray::end(v16, &v22, v18, &v20);
    v19 = v21;
    *(a1 + 48) = v20;
    *(a1 + 56) = v19;
  }

  sub_276E0A9AC(a1);
}

_OWORD *sub_276E0A8BC(_OWORD *a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  sub_276E0A7D0(a1, a2, a3, a4);
  return a1;
}

TSWPAttributeArray **sub_276E0A8F0(TSWPAttributeArray **a1)
{
  v2 = sub_276E0A930(a1);
  if (v2)
  {
    v2[1] = (v2[1] + 1);
    sub_276E0A9AC(a1);
  }

  return a1;
}

TSWPAttributeArray **sub_276E0A930(TSWPAttributeArray **a1)
{
  if (a1[1] == a1[3])
  {
    v1 = 0;
  }

  else
  {
    v1 = a1;
  }

  v2 = a1[5];
  if (v2 == a1[7])
  {
    return v1;
  }

  v3 = a1;
  v4 = a1 + 4;
  if (!v1)
  {
    return v4;
  }

  v5 = TSWPAttributeArray::charIndexForAttributeIndex(*v4, v2);
  if (v5 < TSWPAttributeArray::charIndexForAttributeIndex(*v1, v1[1]))
  {
    return v4;
  }

  return v3;
}

void sub_276E0A9AC(TSWPAttributeArray **a1)
{
  v2 = sub_276E0A930(a1);
  if (v2)
  {
    v3 = v2;
    do
    {
      v4 = TSWPAttributeArray::iterator::object(v3);

      if (v4)
      {
        break;
      }

      v3[1] = (v3[1] + 1);
      v3 = sub_276E0A930(a1);
    }

    while (v3);
  }
}

TSWPAttributeArray::iterator *sub_276E0AA14(TSWPAttributeArray **a1)
{
  v1 = sub_276E0A930(a1);
  if (v1)
  {
    v1 = TSWPAttributeArray::iterator::object(v1);
  }

  return v1;
}

unint64_t sub_276E0AA48(TSWPAttributeArray **a1)
{
  v1 = sub_276E0A930(a1);
  if (!v1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v2 = v1[1];
  v3 = *v1;

  return TSWPAttributeArray::rangeForAttributeIndex(v3, v2);
}

uint64_t sub_276E0AA8C(TSWPAttributeArray **a1)
{
  v1 = sub_276E0AA14(a1);
  isHidden = objc_msgSend_isHidden(v1, v2, v3);

  return isHidden;
}

uint64_t sub_276E0AAD4(TSWPAttributeArray **a1)
{
  v1 = sub_276E0AA14(a1);
  isDeletion = objc_msgSend_isDeletion(v1, v2, v3);

  return isDeletion;
}

void *sub_276E0AB1C(uint64_t a1, unsigned __int8 a2)
{
  result = TSWPAttributeArray::TSWPAttributeArray(a1, a2);
  *result = &unk_2885FF5B8;
  return result;
}

void sub_276E0AB50(TSWPAttributeArray *this)
{
  this->var0 = &unk_2885FF5B8;
  if (*(this + 6))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      (*(this->var0 + 42))(this, &this->var1[v2]);
      ++v3;
      ++v2;
    }

    while (v3 < *(this + 6));
  }

  TSWPAttributeArray::~TSWPAttributeArray(this);
}

void sub_276E0AC08(TSWPAttributeArray *a1)
{
  sub_276E0AB50(a1);

  JUMPOUT(0x277CA3D00);
}

id sub_276E0AC44(uint64_t a1, const char *a2)
{
  if (*(a1 + 24) <= a2)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual NSArray<id<TSWPOverlappingField>> *TSWPOverlappingFieldsAttributeArray::overlappingFieldsAtAttributeIndex(TSWPAttributeIndex) const");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 79, 0, "Attribute index should be less than count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
    v8 = 0;
  }

  else
  {
    objc_opt_class();
    v4 = TSWPAttributeArray::objectForAttributeIndex(a1, a2);
    v5 = TSUDynamicCast();

    if (v5)
    {
      v8 = objc_msgSend_fields(v5, v6, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

uint64_t sub_276E0AD8C(TSWPAttributeArray *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  v6 = TSWPAttributeArray::objectForAttributeIndex(a1, a3);
  v7 = TSUDynamicCast();

  hasField = objc_msgSend_hasField_(v7, v8, v5);
  return hasField;
}

uint64_t sub_276E0AE44(unsigned int *a1, int a2, void *a3, unint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = a1[6];
  if (a4 && a4 - 1 < v10)
  {
    v11 = (*(*a1 + 144))(a1, v9);
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  if (a2)
  {
    if (v10 <= a4)
    {
      goto LABEL_11;
    }

    v11 = (*(*a1 + 144))(a1, v9, a4);
  }

LABEL_9:
  if (v11)
  {
    v12 = 1;
    goto LABEL_14;
  }

LABEL_11:
  if (a5 + a4 >= v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = (*(*a1 + 144))(a1, v9);
  }

LABEL_14:

  return v12 ^ 1u;
}

id sub_276E0AF7C(uint64_t a1, int a2, void *a3, unint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v36 = a3;
  if ((*(a1 + 28) & 0x100) != 0)
  {
    v22 = 0;
  }

  else
  {
    if (!a5)
    {
      v10 = MEMORY[0x277D81150];
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "virtual id TSWPOverlappingFieldsAttributeArray::objectForDOLC(BOOL, __strong id, TSWPAttributeIndex, TSWPAttributeIndex) const");
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 111, 0, "Expected count to be 1 or greater.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
    }

    objc_opt_class();
    v17 = TSUDynamicCast();
    v35 = v17;
    if (v17)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v20 = objc_msgSend_fields(v17, v18, v19, v17);
      v22 = 0;
      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v37, v41, 16);
      if (v23)
      {
        v24 = *v38;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v20);
            }

            v26 = *(*(&v37 + 1) + 8 * i);
            if (sub_276E0AE44(a1, a2, v26, a4, a5))
            {
              if (v22)
              {
                objc_msgSend_addField_(v22, v27, v26);
              }

              else
              {
                v28 = [TSWPOverlappingFieldsWrapper alloc];
                if (a2)
                {
                  v30 = objc_msgSend_initWithField_parentStorage_(v28, v29, v26, 0);
                }

                else
                {
                  v30 = objc_msgSend_initWithField_parentStorage_(v28, v29, v26, *(a1 + 16));
                }

                v22 = v30;
              }
            }
          }

          v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v27, &v37, v41, 16);
        }

        while (v23);
      }
    }

    else if (v36 && (sub_276E0AE44(a1, a2, v36, a4, a5) & 1) != 0)
    {
      v31 = [TSWPOverlappingFieldsWrapper alloc];
      if (a2)
      {
        v33 = objc_msgSend_initWithField_parentStorage_(v31, v32, v36, 0, 0);
      }

      else
      {
        v33 = objc_msgSend_initWithField_parentStorage_(v31, v32, v36, *(a1 + 16), 0);
      }

      v22 = v33;
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

void sub_276E0B278(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v26 = v4;
  objc_opt_class();
  v6 = TSUDynamicCast();
  objc_opt_class();
  v9 = TSUDynamicCast();
  v10 = 0;
  if (v5 && v6)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = objc_msgSend_fields(v6, v7, v8);
    v10 = 0;
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v31, v36, 16);
    if (v14)
    {
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          if (!v10)
          {
            v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          objc_msgSend_addObject_(v10, v13, v17);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v31, v36, 16);
      }

      while (v14);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v10;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v27, v35, 16);
  if (v21)
  {
    v22 = *v28;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v27 + 1) + 8 * j);
        objc_msgSend_removeField_(v6, v20, v24);
        objc_msgSend_removeField_(v9, v25, v24);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v27, v35, 16);
    }

    while (v21);
  }
}

void sub_276E0B518(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a5;
  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v11;
LABEL_6:
      TSWPAttributeRecord::TSWPAttributeRecord(&v16, a3, v13);
      TSWPAttributeArray::nonUndoableInsertAttribute(a1, &v16, a4, v12, a6);

      goto LABEL_7;
    }

    v14 = [TSWPOverlappingFieldsWrapper alloc];
    v13 = objc_msgSend_initWithField_parentStorage_(v14, v15, v11, *(a1 + 16));
    if (v13)
    {
      goto LABEL_6;
    }
  }

  else
  {
    TSWPAttributeRecord::TSWPAttributeRecord(&v16, a3, 0);
    TSWPAttributeArray::nonUndoableInsertAttribute(a1, &v16, a4, v12, a6);
  }

LABEL_7:
}

void sub_276E0B644(uint64_t a1, void *a2, unint64_t a3, void *a4, uint64_t a5)
{
  v56 = a2;
  v10 = a4;
  v11 = *(a1 + 24);
  if (v11 <= a3)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "virtual void TSWPOverlappingFieldsAttributeArray::nonUndoableAddFieldToAttributeIndex(__strong id, TSWPAttributeIndex, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 179, 0, "Bad attribute index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    v11 = *(a1 + 24);
  }

  if (v11 > a3)
  {
    if ((*(*a1 + 144))(a1, v56, a3))
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "virtual void TSWPOverlappingFieldsAttributeArray::nonUndoableAddFieldToAttributeIndex(__strong id, TSWPAttributeIndex, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 182, 0, "Field already exists at attribute index.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    }

    else
    {
      v27 = (*(a1 + 8) + 16 * a3);
      if (a5)
      {
        sub_276F2F46C(a5, v19);
        sub_276F2F660(a5, 7, *(a1 + 28), a3, 1, v27, 0);
      }

      v28 = (*(*a1 + 408))(a1, 1, v56, a3, 1);
      (*(*a1 + 376))(a1, v28, v10, a5);
      v29 = TSWPAttributeArray::objectForAttributeIndex(a1, a3);
      if (v29)
      {
        objc_opt_class();
        v30 = TSUDynamicCast();
        v33 = objc_msgSend_fields(v30, v31, v32);
        v36 = objc_msgSend_count(v33, v34, v35);

        if (!v36)
        {
          v38 = MEMORY[0x277D81150];
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "virtual void TSWPOverlappingFieldsAttributeArray::nonUndoableAddFieldToAttributeIndex(__strong id, TSWPAttributeIndex, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v42, v39, v41, 204, 0, "Expected at least one object in the fields array.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v43, v44);
        }

        objc_msgSend_addField_(v30, v37, v56);
      }

      else
      {
        v45 = [TSWPOverlappingFieldsWrapper alloc];
        v30 = objc_msgSend_initWithField_parentStorage_(v45, v46, v56, *(a1 + 16));
        v47 = TSWPAttributeRecord::object(v27, *(a1 + 28));

        if (v47)
        {
          v49 = MEMORY[0x277D81150];
          v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v48, "virtual void TSWPOverlappingFieldsAttributeArray::nonUndoableAddFieldToAttributeIndex(__strong id, TSWPAttributeIndex, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 199, 0, "Expected nil object.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
        }

        TSWPAttributeRecord::setObject(v27, *(a1 + 28), v30);
        (*(*a1 + 328))(a1, v27);
      }

      (*(*a1 + 384))(a1, v28, v10, a5);
    }
  }
}

void sub_276E0BB48(uint64_t a1, void *a2, unint64_t a3, void *a4, uint64_t a5)
{
  v57 = a2;
  v10 = a4;
  v11 = *(a1 + 24);
  if (v11 <= a3)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "virtual void TSWPOverlappingFieldsAttributeArray::nonUndoableRemoveFieldFromAttributeIndex(__strong id, TSWPAttributeIndex, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 216, 0, "Bad attribute index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
    v11 = *(a1 + 24);
  }

  if (v11 > a3)
  {
    if ((*(*a1 + 144))(a1, v57, a3))
    {
      v21 = TSWPAttributeArray::objectForAttributeIndex(a1, a3);
      if (v21)
      {
        v22 = (*(*a1 + 408))(a1, 0, v57, a3, 1);
        v24 = (*(*a1 + 392))(a1, v22, a5, a3);
        if (a5)
        {
          sub_276F2F46C(a5, v23);
          sub_276F2F660(a5, 7, *(a1 + 28), a3, 1, (*(a1 + 8) + 16 * a3), 0);
        }

        objc_opt_class();
        v25 = TSUDynamicCast();
        objc_msgSend_removeField_(v25, v26, v57);
        v29 = objc_msgSend_fields(v25, v27, v28);
        v32 = objc_msgSend_count(v29, v30, v31);

        if (!v32)
        {
          v33 = *(a1 + 8) + 16 * a3;
          v34 = TSWPAttributeRecord::object(v33, *(a1 + 28));

          if (!v34)
          {
            v56 = MEMORY[0x277D81150];
            v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "virtual void TSWPOverlappingFieldsAttributeArray::nonUndoableRemoveFieldFromAttributeIndex(__strong id, TSWPAttributeIndex, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
            v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v39, v36, v38, 237, 0, "Expected non-nil object.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
          }

          (*(*a1 + 336))(a1, v33);
          TSWPAttributeRecord::setObject(v33, *(a1 + 28), 0);
        }

        (*(*a1 + 400))(a1, v22, v24, a5);
      }

      else
      {
        v49 = MEMORY[0x277D81150];
        v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "virtual void TSWPOverlappingFieldsAttributeArray::nonUndoableRemoveFieldFromAttributeIndex(__strong id, TSWPAttributeIndex, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
        v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v53, v50, v52, 222, 0, "Expected a non-nil object at attribute index.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
      }
    }

    else
    {
      v42 = MEMORY[0x277D81150];
      v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "virtual void TSWPOverlappingFieldsAttributeArray::nonUndoableRemoveFieldFromAttributeIndex(__strong id, TSWPAttributeIndex, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
      v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v42, v46, v43, v45, 219, 0, "Expected field to exist attribute index.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v47, v48);
    }
  }
}

uint64_t sub_276E0C03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 28);
  v6 = TSWPAttributeRecord::object(a2, v5);
  v7 = TSWPAttributeRecord::object(a3, *(a1 + 28));
  IsEquivalentToObject = TSWPAttributeArray::objectIsEquivalentToObject(v5, v6, v7);

  return IsEquivalentToObject;
}

TSWPAttributeArray *sub_276E0C0D0(TSWPAttributeArray *this, const char *a2, uint64_t a3)
{
  v5 = this;
  if (a2 && *(this + 6) > a2 && (this = (*(this->var0 + 43))(this, &this->var1[a2], &this->var1[a2 - 1]), (this & 1) != 0) || (*(v5 + 6) - 1) == a2 && (v7 = TSWPAttributeArray::charIndexForAttributeIndex(v5, a2), this = (*(v5->var0 + 13))(v5), v7 > this))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "virtual void TSWPOverlappingFieldsAttributeArray::collapseAttributesAtAttributeIndex(TSWPAttributeIndex, TSWPStorageActionState *)");
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v12, v9, v11, 274, 0, "Collapsing should be avoided.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14);
    v15 = *(v5->var0 + 8);

    return v15(v5, a2, 1, a3);
  }

  return this;
}

void sub_276E0C28C(uint64_t a1, uint64_t a2)
{
  v4 = TSWPAttributeRecord::object(a2, *(a1 + 28));

  if (v4)
  {
    v5 = TSWPAttributeRecord::object(a2, *(a1 + 28));
    CFRetain(v5);
  }
}

void sub_276E0C330(uint64_t a1, uint64_t a2)
{
  v4 = TSWPAttributeRecord::object(a2, *(a1 + 28));

  if (v4)
  {
    v5 = TSWPAttributeRecord::object(a2, *(a1 + 28));
    CFRelease(v5);
  }
}

uint64_t sub_276E0C3D4(TSWPAttributeArray *a1, uint64_t a2, uint64_t a3)
{
  v5 = TSWPAttributeArray::objectForAttributeIndex(a1, a2);
  v6 = TSWPAttributeArray::objectForAttributeIndex(a1, a3);
  v8 = v6;
  if (v5 | v6)
  {
    isEqualToOverlappingFieldWrapper = 0;
    if (v5 && v6)
    {
      isEqualToOverlappingFieldWrapper = objc_msgSend_isEqualToOverlappingFieldWrapper_(v5, v7, v6);
    }
  }

  else
  {
    isEqualToOverlappingFieldWrapper = 1;
  }

  return isEqualToOverlappingFieldWrapper;
}

uint64_t sub_276E0C474(unsigned int *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (!v8)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "BOOL TSWPOverlappingFieldsAttributeArray::hasFieldInAttributeRange(__strong id, NSRange) const");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 311, 0, "invalid nil value for '%{public}s'", "field");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    v10 = a1[6];
    v9 = a3 + a4;
LABEL_11:
    if (v9 > v10)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "BOOL TSWPOverlappingFieldsAttributeArray::hasFieldInAttributeRange(__strong id, NSRange) const");
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 312, 0, "Bad attribute range.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    }

    goto LABEL_13;
  }

  v9 = a3 + a4;
  v10 = a1[6];
  if (a3 + a4 > v10)
  {
    goto LABEL_11;
  }

  if (a3 >= v9)
  {
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v11 = a4 - 1;
  do
  {
    v12 = (*(*a1 + 144))(a1, v8, a3);
    v13 = v12;
    ++a3;
    if (v11)
    {
      v14 = v12;
    }

    else
    {
      v14 = 1;
    }

    --v11;
  }

  while (v14 != 1);
LABEL_14:

  return v13;
}

uint64_t sub_276E0C678(TSWPAttributeArray *a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a3);
  v7 = (*(a1->var0 + 19))(a1, v5, v6);

  return v7;
}

unint64_t sub_276E0C710(unsigned int *a1, void *a2, unint64_t a3)
{
  v6 = a2;
  if (a1[6] <= a3)
  {
    v8 = *MEMORY[0x277D81490];
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "virtual NSRange TSWPOverlappingFieldsAttributeArray::attributeRangeContainingFieldAtAttributeIndex(__strong id, TSWPAttributeIndex) const");
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v14, v11, v13, 335, 0, "Expected object to be at char index.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16);
  }

  else
  {
    if (a3)
    {
      v7 = a3 + 1;
      do
      {
        v8 = v7 - 1;
        if (v7 == 1)
        {
          break;
        }

        v9 = (*(*a1 + 144))(a1, v6, v7 - 2);
        v7 = v8;
      }

      while ((v9 & 1) != 0);
    }

    else
    {
      v8 = 0;
    }

    v17 = a3 + 1;
    do
    {
      v18 = v17;
      if (v17 >= a1[6])
      {
        break;
      }

      v19 = (*(*a1 + 144))(a1, v6, v17);
      v17 = v18 + 1;
    }

    while ((v19 & 1) != 0);
    if (v8 >= v18 || v18 > a1[6])
    {
      v20 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "virtual NSRange TSWPOverlappingFieldsAttributeArray::attributeRangeContainingFieldAtAttributeIndex(__strong id, TSWPAttributeIndex) const");
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v24, v21, v23, 359, 0, "Bad attribute index calculation.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
    }
  }

  return v8;
}

uint64_t sub_276E0C944(uint64_t a1, NSUInteger a2, NSUInteger a3, void *a4)
{
  v7 = a4;
  v8 = *MEMORY[0x277D81490];
  v21.location = a2;
  v21.length = a3;
  v9 = TSWPAttributeArray::attributeRangeContainingCharacterRange(a1, v21);
  if (v10)
  {
    v11 = v9;
    v12 = v9 + v10;
    if (!__CFADD__(v9, v10))
    {
      while (v11 >= *(a1 + 24) || !(*(*a1 + 144))(a1, v7, v11))
      {
        if (++v11 > v12)
        {
          goto LABEL_9;
        }
      }

      v8 = (*(*a1 + 152))(a1, v7, v11);
    }
  }

  else
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "NSRange TSWPOverlappingFieldsAttributeArray::attributeRangeContainingFieldForCharRange(NSRange, __strong id) const");
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v17, v14, v16, 369, 0, "This attribute array was not properly initialized.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19);
  }

LABEL_9:

  return v8;
}

id sub_276E0CAEC(uint64_t a1, _NSRange a2, const void **a3)
{
  v5 = TSWPAttributeArray::attributeRangeContainingCharacterRange(a1, a2);
  if (!v6)
  {
    v35 = MEMORY[0x277D81150];
    v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "virtual NSArray<id<TSWPOverlappingField>> *TSWPOverlappingFieldsAttributeArray::overlappingFieldsForCharRange(NSRange, std::vector<TSWPCharIndex> &) const");
    v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v39, v36, v38, 389, 0, "This attribute array was not properly initialized.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
    goto LABEL_30;
  }

  v43 = (v5 + v6);
  if (v5 >= v5 + v6)
  {
LABEL_30:
    v7 = 0;
    goto LABEL_31;
  }

  v7 = 0;
  v46 = v5;
  v8 = v5;
  do
  {
    if (v8 < *(a1 + 24))
    {
      v9 = TSWPAttributeArray::objectForAttributeIndex(a1, v8);
      if (v9)
      {
        v45 = TSWPAttributeArray::charIndexForAttributeIndex(a1, v8);
        v12 = objc_msgSend_fields(v9, v10, v11);
        v15 = objc_msgSend_count(v12, v13, v14);

        if (v15)
        {
          v18 = 0;
          v44 = v9;
          do
          {
            v19 = objc_msgSend_fields(v9, v16, v17);
            v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, v18);

            if (v8 == v46 || ((*(*a1 + 144))(a1, v21, v8 - 1) & 1) == 0)
            {
              if (!v7)
              {
                v7 = objc_msgSend_array(MEMORY[0x277CBEB18], v22, v23);
              }

              objc_msgSend_addObject_(v7, v22, v21);
              v25 = a3[1];
              v24 = a3[2];
              if (v25 >= v24)
              {
                v27 = *a3;
                v28 = v25 - *a3;
                v29 = v28 >> 3;
                v30 = (v28 >> 3) + 1;
                if (v30 >> 61)
                {
                  sub_276D34ED8();
                }

                v31 = v24 - v27;
                if (v31 >> 2 > v30)
                {
                  v30 = v31 >> 2;
                }

                v32 = v31 >= 0x7FFFFFFFFFFFFFF8;
                v33 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v32)
                {
                  v33 = v30;
                }

                if (v33)
                {
                  sub_276D34EF0(a3, v33);
                }

                *(8 * v29) = v45;
                v26 = 8 * v29 + 8;
                memcpy(0, v27, v28);
                v34 = *a3;
                *a3 = 0;
                a3[1] = v26;
                a3[2] = 0;
                if (v34)
                {
                  operator delete(v34);
                }

                v9 = v44;
              }

              else
              {
                *v25 = v45;
                v26 = (v25 + 1);
              }

              a3[1] = v26;
            }

            ++v18;
          }

          while (v15 != v18);
        }
      }
    }

    ++v8;
  }

  while (v8 != v43);
LABEL_31:

  return v7;
}

void sub_276E0CE00(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, void *a5, uint64_t a6)
{
  v135 = *MEMORY[0x277D85DE8];
  v128 = a2;
  v129 = a5;
  if (!v128)
  {
    v19 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "virtual void TSWPOverlappingFieldsAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v21, v15, v17, 419, 0, "invalid nil value for '%{public}s'", "newObject");
    goto LABEL_17;
  }

  v13 = a3 + a4;
  if (a3 + a4 > (*(*a1 + 104))(a1))
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "virtual void TSWPOverlappingFieldsAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 424, 0, "Length cannot exceed storage length.");
LABEL_17:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v48, v49);
    goto LABEL_18;
  }

  if (!a4)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "virtual void TSWPOverlappingFieldsAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v26, v23, v25, 427, 0, "Must apply field over range with length.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
  }

  v136.location = a3;
  v136.length = a4;
  v127 = TSWPAttributeArray::attributeRangeContainingCharacterRange(a1, v136);
  v30 = v29;
  if (!v29)
  {
    v31 = *(a1 + 24);
    if (v127 && v127 == v31)
    {
      v32 = MEMORY[0x277D81150];
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "virtual void TSWPOverlappingFieldsAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
      v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v36, v33, v35, 432, 0, "Unexpected attribute range.");
    }

    else
    {
      v37 = MEMORY[0x277D81150];
      if (v127 >= v31)
      {
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "virtual void TSWPOverlappingFieldsAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v41, v33, v35, 438, 0, "This attribute array was not properly initialized.");
      }

      else
      {
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "virtual void TSWPOverlappingFieldsAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v37, v39, v33, v35, 435, 0, "Unexpected attribute range.");
      }
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43);
  }

  if (sub_276E0C474(a1, v128, v127, v30))
  {
    v45 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "virtual void TSWPOverlappingFieldsAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v47, v15, v17, 442, 0, "Expected field to not be in the table.");
    goto LABEL_17;
  }

  if (!v30)
  {
    goto LABEL_18;
  }

  (*(*a1 + 464))(a1, a3, a4, v128, a6, 0);
  v50 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a3 + a4);
  v52 = v50;
  v53 = 0;
  v54 = *(a1 + 24);
  if (v50 < v54 && v50 + 1 == v54)
  {
    v55 = TSWPAttributeArray::charIndexForAttributeIndex(a1, v50);
    if (v55 >= (*(*a1 + 104))(a1))
    {
      v53 = 0;
    }

    else
    {
      v56 = TSWPAttributeArray::objectForAttributeIndex(a1, v52);
      v53 = objc_msgSend_copy(v56, v57, v58);
    }
  }

  v126 = v53;
  v59 = 0;
  for (i = v127; i < *(a1 + 24); ++i)
  {
    v61 = TSWPAttributeArray::charIndexForAttributeIndex(a1, i);
    if (v59)
    {
      goto LABEL_28;
    }

LABEL_32:
    v62 = v129;
    if (v61 >= a3)
    {
      if (v61 == a3)
      {
LABEL_37:
        (*(*a1 + 472))(a1, v128, i, v62, a6);
        goto LABEL_41;
      }

      v73 = MEMORY[0x277D81150];
      v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "virtual void TSWPOverlappingFieldsAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v73, v75, v64, v66, 485, 0, "Unexpected character index for head.");
      goto LABEL_38;
    }

    v68 = TSWPAttributeArray::objectForAttributeIndex(a1, i);
    v71 = v68;
    if (v68)
    {
      v72 = objc_msgSend_copy(v68, v69, v70);
    }

    else
    {
      v72 = 0;
    }

    (*(*a1 + 56))(a1, v72, a3, ++i, v129, a6);
    (*(*a1 + 472))(a1, v128, i, v129, a6);

LABEL_41:
    v59 = 1;
  }

  v61 = 0x7FFFFFFFFFFFFFFFLL;
  if ((v59 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_28:
  v62 = v129;
  if (v61 < v13)
  {
    if (v61 > a3)
    {
      goto LABEL_37;
    }

    v63 = MEMORY[0x277D81150];
    v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "virtual void TSWPOverlappingFieldsAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v65, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v63, v67, v64, v66, 490, 0, "Unexpected character index for middle.");
LABEL_38:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v76, v77);
    goto LABEL_41;
  }

  v78 = v127;
  if (v61 == v13 || v13 >= (*(*a1 + 104))(a1))
  {
    goto LABEL_71;
  }

  if (i >= *(a1 + 24))
  {
    goto LABEL_52;
  }

  if (!i)
  {
    v86 = MEMORY[0x277D81150];
    v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v79, "virtual void TSWPOverlappingFieldsAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v90, v87, v89, 502, 0, "Expected attribute index > 0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92);
LABEL_52:
    v82 = 0;
    goto LABEL_53;
  }

  v81 = TSWPAttributeArray::objectForAttributeIndex(a1, (i - 1));
  v82 = v81;
  if (!v81)
  {
LABEL_53:
    v84 = 0;
    goto LABEL_54;
  }

  v83 = objc_msgSend_copy(v81, v79, v80);
  v84 = v83;
  if (!v83)
  {
LABEL_54:
    v85 = 1;
    goto LABEL_55;
  }

  if (objc_msgSend_hasField_(v83, v79, v128))
  {
    objc_msgSend_removeField_(v84, v79, v128);
  }

  v85 = 0;
LABEL_55:
  if (v126 && v13 < (*(*a1 + 104))(a1))
  {
    if (v85)
    {
      v84 = v126;
      objc_msgSend_fields(v84, v93, v94);
      goto LABEL_68;
    }

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v95 = objc_msgSend_fields(v126, v79, v80);
    v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v96, &v130, v134, 16);
    if (v98)
    {
      v99 = *v131;
      do
      {
        for (j = 0; j != v98; ++j)
        {
          if (*v131 != v99)
          {
            objc_enumerationMutation(v95);
          }

          objc_msgSend_addField_(v84, v97, *(*(&v130 + 1) + 8 * j));
        }

        v98 = objc_msgSend_countByEnumeratingWithState_objects_count_(v95, v97, &v130, v134, 16);
      }

      while (v98);
    }
  }

  objc_msgSend_fields(v84, v79, v80);
  v101 = LABEL_68:;
  v104 = objc_msgSend_count(v101, v102, v103) == 0;

  if (v104)
  {

    v84 = 0;
  }

  (*(*a1 + 56))(a1, v84, v13, i, v129, a6);

  v78 = v127;
LABEL_71:
  v105 = (*(*a1 + 152))(a1, v128, v78);
  v107 = v106;
  if (!v106)
  {
    v108 = MEMORY[0x277D81150];
    v109 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "virtual void TSWPOverlappingFieldsAttributeArray::applyObjectToCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v108, v112, v109, v111, 534, 0, "Expected the field attribute range to be lococated.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v113, v114);
  }

  v115 = v105 + v107;
  if (!__CFADD__(v105, v107))
  {
    do
    {
      if (v105 < *(a1 + 24))
      {
        objc_opt_class();
        v116 = TSWPAttributeArray::objectForAttributeIndex(a1, v105);
        v117 = TSUDynamicCast();

        if (v117)
        {
          v119 = MEMORY[0x277CBEA60];
          v120 = objc_msgSend_valueWithPointer_(MEMORY[0x277CCAE60], v118, a1);
          v122 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v121, v105);
          v124 = objc_msgSend_arrayWithObjects_(v119, v123, v120, v122, 0);

          objc_msgSend_sortWithContext_(v117, v125, v124);
        }
      }

      ++v105;
    }

    while (v105 <= v115);
  }

LABEL_18:
}

id sub_276E0DACC(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4)
{
  v7 = a2;
  v8 = sub_276E0C944(a1, a3, a4, v7);
  v10 = v9;
  v12 = objc_msgSend_textAttributeUUIDString(v7, v9, v11);
  if (v8 < &v10[v8])
  {
    do
    {
      if (v8 >= *(a1 + 24))
      {
        break;
      }

      objc_opt_class();
      v13 = TSWPAttributeArray::objectForAttributeIndex(a1, v8);
      v14 = TSUDynamicCast();

      v16 = objc_msgSend_findFieldWithTextAttributeUUIDString_(v14, v15, v12);

      if (v16)
      {
        goto LABEL_6;
      }

      ++v8;
      --v10;
    }

    while (v10);
  }

  v16 = 0;
LABEL_6:

  return v16;
}

void sub_276E0DC14(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, void *a5, uint64_t a6)
{
  v56 = a2;
  v11 = a5;
  v12 = sub_276E0C944(a1, a3, a4, v56);
  v14 = v13;
  v58.location = v12;
  v58.length = v14;
  v16 = TSWPAttributeArray::rangeForAttributeRange(a1, v58);
  if (!v56)
  {
    v24 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "void TSWPOverlappingFieldsAttributeArray::removeOrTruncateObjectFromCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v26, v20, v22, 573, 0, "invalid nil value for '%{public}s'", "object");
LABEL_5:

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v27, v28);
    if (v14)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v17 = v15;
  if (a3 > (*(*a1 + 104))(a1))
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "void TSWPOverlappingFieldsAttributeArray::removeOrTruncateObjectFromCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 578, 0, "Location cannot exceed storage length.");
    goto LABEL_5;
  }

  if (v14)
  {
    v29 = &v17[v16];
    v30 = a3 + a4;
    v31 = a3 > v16;
    v32 = a3 - v16;
    if (v31)
    {
      if (v29 > v30)
      {
        v33 = MEMORY[0x277D81150];
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "void TSWPOverlappingFieldsAttributeArray::removeOrTruncateObjectFromCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 595, 0, "Splitting overlapping fields is not supported.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
        goto LABEL_22;
      }
    }

    else
    {
      v32 = &v29[-v30];
      if (v29 <= v30)
      {
        sub_276E0E0E4(a1, v56, v12, v14, v11, a6);
        goto LABEL_22;
      }

      v16 = v30;
    }

    v49 = objc_msgSend_setDOLCSuppressed_(*(a1 + 16), v18, 1);
    v50 = v56;
    sub_276E0E0E4(a1, v50, v12, v14, v11, a6);
    (*(*a1 + 32))(a1, v50, v16, v32, v11, a6);
    objc_msgSend_setDOLCSuppressed_(*(a1 + 16), v51, v49);

    goto LABEL_22;
  }

LABEL_12:
  v40 = *(a1 + 24);
  if (v12 && v12 == v40)
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "void TSWPOverlappingFieldsAttributeArray::removeOrTruncateObjectFromCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v45, v42, v44, 583, 0, "Unexpected attribute range.");
  }

  else
  {
    v46 = MEMORY[0x277D81150];
    if (v12 >= v40)
    {
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "void TSWPOverlappingFieldsAttributeArray::removeOrTruncateObjectFromCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v52, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v53, v42, v44, 589, 0, "This attribute array was not properly initialized.");
    }

    else
    {
      v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "void TSWPOverlappingFieldsAttributeArray::removeOrTruncateObjectFromCharRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v48, v42, v44, 586, 0, "Unexpected attribute range.");
    }
  }

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55);
LABEL_22:
}

void sub_276E0E0E4(uint64_t a1, void *a2, NSUInteger a3, NSUInteger a4, void *a5, uint64_t a6)
{
  v36 = a2;
  v12 = a5;
  if (!v36)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "void TSWPOverlappingFieldsAttributeArray::removeObjectFromAttributeRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 625, 0, "invalid nil value for '%{public}s'", "object");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    if (a4)
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
LABEL_12:
    v23 = *(a1 + 24);
    if (a3 && a3 == v23)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "void TSWPOverlappingFieldsAttributeArray::removeObjectFromAttributeRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 632, 0, "Unexpected attribute range.");
    }

    else
    {
      v29 = MEMORY[0x277D81150];
      if (a3 >= v23)
      {
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "void TSWPOverlappingFieldsAttributeArray::removeObjectFromAttributeRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v33, v25, v27, 638, 0, "This attribute array was not properly initialized.");
      }

      else
      {
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "void TSWPOverlappingFieldsAttributeArray::removeObjectFromAttributeRange(__strong id, NSRange, TSKAddedToDocumentContext *__strong, TSWPStorageActionState *)");
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v31, v25, v27, 635, 0, "Unexpected attribute range.");
      }
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    goto LABEL_23;
  }

  v38.location = a3;
  v38.length = a4;
  v13 = TSWPAttributeArray::rangeForAttributeRange(a1, v38);
  (*(*a1 + 456))(a1, v13, v14, v36, a6, 0);
  if (a3 >= a4 + a3)
  {
    v15 = a3;
    if (!a3)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  v15 = a3;
  do
  {
    (*(*a1 + 480))(a1, v36, v15, v12, a6);
    if (v15 && sub_276E0C3D4(a1, v15 - 1, v15))
    {
      (*(*a1 + 64))(a1, v15, 1, 0);
      --a4;
      --v15;
    }

    ++v15;
  }

  while (v15 < a4 + a3);
  if (v15)
  {
LABEL_16:
    if (v15 < *(a1 + 24) && sub_276E0C3D4(a1, v15 - 1, v15))
    {
      (*(*a1 + 64))(a1, v15, 1, 0);
    }
  }

LABEL_23:
}

void sub_276E0E4F4(TSWPAttributeArray *a1, NSUInteger a2, NSUInteger a3, uint64_t a4)
{
  __p = 0;
  v33 = 0;
  v34 = 0;
  v31 = (*(a1->var0 + 20))(a1, a2, a3, &__p);
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10);
  v30 = a3;
  v16 = objc_msgSend_count(v31, v12, v13);
  if (v16)
  {
    v17 = 0;
    v18 = a2 + a3;
    do
    {
      v4 = objc_msgSend_objectAtIndexedSubscript_(v31, v14, v17);
      v19 = sub_276E0C678(a1, v4, *(__p + v17));
      v21 = v20;

      v35.location = v19;
      v35.length = v21;
      v22 = TSWPAttributeArray::rangeForAttributeRange(a1, v35);
      if (v22 >= a2 || &v14[v22] < v18)
      {
        v4 = objc_msgSend_objectAtIndexedSubscript_(v31, v14, v17);
        objc_msgSend_addObject_(v11, v24, v4);
      }

      ++v17;
    }

    while (v16 != v17);
  }

  v26 = objc_msgSend_count(v11, v14, v15);
  if (v26)
  {
    for (i = 0; i != v26; ++i)
    {
      v28 = objc_msgSend_objectAtIndexedSubscript_(v11, v25, i);
      if (a4)
      {
        v4 = *(a4 + 424);
        v29 = v4;
      }

      else
      {
        v29 = 0;
      }

      sub_276E0DC14(a1, v28, a2, v30, v29, a4);
      if (a4)
      {
      }
    }
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }
}

void sub_276E0E6CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_276E0E738(uint64_t a1, unint64_t a2, NSUInteger a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a4;
  __p = 0;
  v46 = 0;
  v47 = 0;
  v12 = a3 != 0;
  if (a5)
  {
    v13 = 0;
  }

  else
  {
    v13 = a3 != 0;
  }

  if (!a5)
  {
    v12 = 0;
  }

  v44 = v12;
  if (a5)
  {
    v14 = a3 == 0;
  }

  else
  {
    v14 = 0;
  }

  v42 = v14;
  v39 = v11;
  v15 = (*(*a1 + 160))(a1, a2, a3, &__p);
  if (objc_msgSend_count(v15, v16, v17))
  {
    v20 = 0;
    v40 = 0;
    v21 = a2 + a3;
    while (v20 < objc_msgSend_count(v15, v18, v19))
    {
      v22 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, *(__p + v20));
      v24 = objc_msgSend_objectAtIndexedSubscript_(v15, v23, v20);
      v25 = (*(*a1 + 152))(a1, v24, v22);
      v27 = v26;
      v48.location = v25;
      v48.length = v27;
      v28 = TSWPAttributeArray::rangeForAttributeRange(a1, v48);
      if (v13)
      {
        if (v28 < a2)
        {
          if (v28 + v29 <= v21)
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        }

        if (v28 == a2)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (!v44)
        {
          if (v42 && !(v40 & 1 | ((TSWPAttributeArray::attributeKindStyleNeverExtends(*(a1 + 28)) & 1) == 0)))
          {
            if (a2 == (*(*a1 + 104))(a1))
            {
              if (TSWPAttributeArray::exactAttributeIndexForCharIndex(a1, a2) == 0x7FFFFFFFFFFFFFFFLL)
              {
                (*(*a1 + 56))(a1, 0, a2, *(a1 + 24), 0, a7);
                v40 = 1;
                goto LABEL_35;
              }

              v33 = MEMORY[0x277D81150];
              v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "virtual void TSWPOverlappingFieldsAttributeArray::willReplaceCharactersInRangeWithString(NSRange, NSString *__strong, NSUInteger, TSWPMarkers *, TSWPStorageActionState *, TSWPAttributeArrayDataContext &)");
              v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v36, v41, v35, 787, 0, "Did not expect object at end of storage.");

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38);
            }

            v40 = 0;
          }

          goto LABEL_35;
        }

        if (v28 < a2)
        {
          v30 = v28 + v29;
          goto LABEL_28;
        }

        if (v28 == a2)
        {
          v30 = a2 + v29;
LABEL_28:
          if (v30 < v21)
          {
            goto LABEL_34;
          }

          goto LABEL_35;
        }
      }

      if (v28 > a2 && v28 < v21)
      {
LABEL_34:
        sub_276E0DC14(a1, v24, a2, a3, 0, a7);
      }

LABEL_35:

      ++v20;
    }
  }

  if (__p)
  {
    v46 = __p;
    operator delete(__p);
  }
}

void sub_276E0EA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_276E0EAD0(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a4;
  if (a2 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = a3 && a5 == 0;
    v13 = v12;
    if (a3 | a5)
    {
      if (*(a1 + 24))
      {
        v14 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(a1, a2);
        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (TSWPAttributeArray::rangeForAttributeIndex(a1, v14) <= a2)
          {
            ++v14;
          }

          if (v14 < *(a1 + 24))
          {
            v15 = a5 - a3;
            if (v14)
            {
              v16 = TSWPAttributeArray::charIndexForAttributeIndex(a1, v14);
              v17 = TSWPAttributeArray::charIndexForAttributeIndex(a1, v14 - 1);
              if (v15 < 0 && v16 + v15 == v17)
              {
                (*(*a1 + 64))(a1, --v14, 1, 0);
              }
            }

            TSWPAttributeArray::nonUndoableAdjustCharIndexStartingAtAttributeIndex(a1, 4, v14, v15);
          }

          if (v13 && a2 == (*(*a1 + 104))(a1))
          {
            v18 = TSWPAttributeArray::exactAttributeIndexForCharIndex(a1, a2);
            if (v18 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v20 = TSWPAttributeArray::objectForAttributeIndex(a1, v18);
              if (v20)
              {
                v21 = MEMORY[0x277D81150];
                v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "virtual void TSWPOverlappingFieldsAttributeArray::didReplaceCharactersInRangeWithString(NSRange, NSString *__strong, NSUInteger, TSWPMarkers *, TSWPStorageActionState *, TSWPStyleInsertionBehavior, TSWPAttributeArrayDataContext &)");
                v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPOverlappingFieldsAttributeArray.mm");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 830, 0, "Did not expect overlapping field to start at end of storage.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
              }

              else if (v18)
              {
                (*(*a1 + 64))(a1, v18, 1, a7);
              }
            }
          }
        }
      }
    }
  }
}

id sub_276E0ED8C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3);
  v6 = TSWPAttributeArray::attributeArrayName(*(a1 + 28), v5);
  v7 = (*(*a1 + 320))(a1);
  objc_msgSend_appendFormat_(v4, v8, @"%s <%p> %@: Count: %lu.\n", v7, a1, v6, *(a1 + 24));
  if (*(a1 + 24))
  {
    v9 = 0;
    do
    {
      v10 = TSWPAttributeArray::charIndexForAttributeIndex(a1, v9);
      v11 = TSWPAttributeArray::objectForAttributeIndex(a1, v9);
      v14 = objc_msgSend_description(v11, v12, v13);
      objc_msgSend_appendFormat_(v4, v15, @"\t%u CharIndex: %lu, %@\n"), v9, v10, v14);

      ++v9;
    }

    while (v9 < *(a1 + 24));
  }

  return v4;
}

void sub_276E0EEFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a4;
  if (a5)
  {
    if (*(a5 + 456))
    {
      v10 = *(a5 + 464);
      if (v10)
      {
        if (*(a5 + 472))
        {
          v11 = *(a1 + 28);
          if (*(v10 + 8) == v11)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v11 = *(a1 + 28);
        }

        sub_276F3FE94(v12, v11, a2, a3, v9, *(v10 + 4) & 0xFFFFFFFC | 1);
        sub_276F2F6C0(a5, v12, 0);
        sub_276F40794(v12);
      }
    }
  }

LABEL_9:
}

void sub_276E0EFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_276F40794(&a9);

  _Unwind_Resume(a1);
}

void sub_276E0EFD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v11 = a4;
  if (a5)
  {
    if (*(a5 + 456))
    {
      v12 = *(a5 + 464);
      if (v12)
      {
        if (*(a5 + 472))
        {
          v13 = *(a1 + 28);
          if (*(v12 + 8) == v13)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v13 = *(a1 + 28);
        }

        sub_276F3FE94(v14, v13, a2, a3, v11, *(v12 + 4) & 0xFFFFFFFC | a6 | 2);
        sub_276F2F6C0(a5, v14, 0);
        sub_276F40794(v14);
      }
    }
  }

LABEL_9:
}

void sub_276E0F09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_276F40794(&a9);

  _Unwind_Resume(a1);
}

unint64_t sub_276E0F0BC(unsigned int *a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = a1[6];
  if (v6 > a3)
  {
    if ((*(*a1 + 144))(a1, v5, a3))
    {
      goto LABEL_9;
    }

    LODWORD(v6) = a1[6];
  }

  if (v6)
  {
    a3 = 0;
    while (((*(*a1 + 144))(a1, v5, a3) & 1) == 0)
    {
      if (++a3 >= a1[6])
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    a3 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_9:

  return a3;
}

void sub_276E0F1A0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    v4 = TSWPAttributeArray::objectForAttributeIndex(a1, 0);

    if (!v4)
    {
      v5 = *(*a1 + 64);

      v5(a1, 0, 1, a2);
    }
  }
}

void sub_276E0FA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_7(&a9);

  _Unwind_Resume(a1);
}

void sub_276E10D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  nullsub_7(&a41);

  _Unwind_Resume(a1);
}

void sub_276E10F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_7(&a9);

  _Unwind_Resume(a1);
}

void sub_276E116F8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = objc_msgSend_p_trackedChangesIntersectingRange_(*(a1 + 40), a2, a2, a3);
  objc_msgSend_addObjectsFromArray_(v3, v4, v5);
}

void sub_276E11D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, TSWPAttributeEnumerator *a4, uint64_t a5, uint64_t a6, uint64_t a7, TSWPAttributeEnumerator *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  TSWPAttributeEnumerator::~TSWPAttributeEnumerator(&a25);

  _Unwind_Resume(a1);
}

void sub_276E1231C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276E1233C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276E12354(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = objc_msgSend_p_highlightsForSelectionRange_outRange_requireComment_stopOnFirst_(*(a1 + 32), a2, a2, a3, 0, *(a1 + 48), 1);
  v10 = objc_msgSend_firstObject(v7, v8, v9);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a5 = 1;
  }
}

void sub_276E12980(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v9 = v7;
  v17 = v7;
  if (!*(a1 + 32) || (objc_msgSend_storage(v7, v7, v8), v10 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend_canDeleteWithAuthor_docIsReadOnly_(v10, v11, *(a1 + 32), 0), v10, v9 = v17, v12))
  {
    objc_msgSend_addObject_(*(a1 + 40), v9, v9);
    v13 = *(a1 + 48);
    v15 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v14, a3, a4);
    objc_msgSend_addObject_(v13, v16, v15);

    v9 = v17;
  }
}

void sub_276E12CE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = a2;
  v11 = v9;
  if (v9)
  {
    v14 = v9;
    if (!*(a1 + 48) || (isCommentEmpty = objc_msgSend_isCommentEmpty(v9, v9, v10), v11 = v14, (isCommentEmpty & 1) == 0))
    {
      objc_msgSend_addObject_(*(a1 + 32), v11, v11);
      v13 = *(a1 + 40);
      if (v13)
      {
        *v13 = a3;
        v13[1] = a4;
      }

      v11 = v14;
      if (*(a1 + 49) == 1)
      {
        *a5 = 1;
      }
    }
  }
}

void sub_276E12EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_276E12F14(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = &a2[a3];
  if (a2 < &a2[a3])
  {
    CharacterIndex = a2;
    while (1)
    {
      v6 = objc_msgSend_attachmentAtCharIndex_(*(a1 + 32), a2, CharacterIndex);
      v9 = objc_msgSend_elementKind(v6, v7, v8) & 0x1000F;

      if (!v9)
      {
        break;
      }

      CharacterIndex = objc_msgSend_nextCharacterIndex_(*(a1 + 32), v10, CharacterIndex);
      if (CharacterIndex >= v3)
      {
        return;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

void sub_276E133E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, TSWPAttributeEnumerator *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 112), 8);
  _Unwind_Resume(a1);
}

__n128 sub_276E13444(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_276E13454(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    v5 = *(result + 48);
    v7 = a3 >= v5;
    v6 = a3 - v5;
    v7 = !v7 || v6 >= *(result + 56);
    if (!v7)
    {
      v8 = *(*(result + 40) + 8);
      if (*(result + 64))
      {
        if (!*(*(*(result + 32) + 8) + 24) || a3 > *(v8 + 48))
        {
          *(v8 + 48) = a3;
          *(v8 + 56) = a4;
          *(*(*(result + 32) + 8) + 24) = 1;
        }
      }

      else
      {
        if (!*(*(*(result + 32) + 8) + 24) || a3 < *(v8 + 48))
        {
          *(v8 + 48) = a3;
          *(v8 + 56) = a4;
          *(*(*(result + 32) + 8) + 24) = 1;
        }

        *a5 = 1;
      }
    }
  }

  return result;
}

void sub_276E13708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_276E13768(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  v19 = a2;
  if (objc_msgSend_firstRange(*(a1 + 32), v8, v9) >= a3)
  {
    v15 = objc_msgSend_firstRange(*(a1 + 32), v10, v11) - a3;
    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    v13 = (v16 + 40);
    if (v17 && (v15 == 0x7FFFFFFFFFFFFFFFLL || v15 >= *(*(*(a1 + 48) + 8) + 24)))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = *(*(a1 + 40) + 8);
    v14 = *(v12 + 40);
    v13 = (v12 + 40);
    if (v14)
    {
      goto LABEL_9;
    }

    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_storeStrong(v13, a2);
  v18 = *(a1 + 56);
  *(*(*(a1 + 48) + 8) + 24) = v15;
  if (v18)
  {
    *v18 = a3;
    v18[1] = a4;
  }

LABEL_9:
}

void sub_276E13FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, void *a37)
{
  _Block_object_dispose((v39 - 240), 8);

  _Unwind_Resume(a1);
}

void sub_276E141B0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (&a2[a3] == (*(a1 + 64) + *(a1 + 56)))
  {
    v6 = *(a1 + 32);
    v7 = *(*(a1 + 48) + 8);
    *(v7 + 48) = a2;
    *(v7 + 56) = a3;
  }

  else
  {
    v6 = 0;
  }

  v14 = v6;
  if (!objc_msgSend_length(v6, a2, a3))
  {
    v9 = objc_msgSend_selectionWithRange_(TSWPSelection, v8, a2, a3);
    v10 = [TSWPTextReplacement alloc];
    v12 = objc_msgSend_initWithSelection_string_(v10, v11, v9, v14);
    objc_msgSend_addObject_(*(a1 + 40), v13, v12);
  }
}

void sub_276E142B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [TSWPTrackedDeletion alloc];
  v9 = objc_msgSend_initWithRange_changeSession_(v6, v7, a2, a3, *(a1 + 32));
  objc_msgSend_addObject_(*(a1 + 40), v8, v9);
}

void sub_276E14340(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v18 = objc_msgSend_selectionWithRange_(TSWPSelection, a2, *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56));
  v9 = objc_msgSend_substringWithRange_(*(a1 + 32), v8, a2, a3);
  if (a4)
  {
    v10 = [TSWPTrackedInsertion alloc];
    v12 = objc_msgSend_initWithSelection_string_changeSession_(v10, v11, v18, v9, *(a1 + 40));
  }

  else
  {
    v14 = [TSWPTextReplacement alloc];
    v12 = objc_msgSend_initWithSelection_string_(v14, v15, v18, v9);
  }

  v16 = v12;
  objc_msgSend_addObject_(*(a1 + 48), v13, v12);
  v17 = *(*(a1 + 56) + 8);
  *(v17 + 48) += *(v17 + 56);
  *(v17 + 56) = 0;
}

void sub_276E148FC(uint64_t a1, void *a2, unint64_t a3, NSUInteger a4)
{
  v7 = a2;
  v16.location = a3;
  v16.length = a4;
  v10 = NSIntersectionRange(v16, *(a1 + 48));
  length = v10.length;
  if (v10.location == a3 || (objc_msgSend_pencilAnnotationStorage(v7, v10.length, v9), v11 = objc_claimAutoreleasedReturnValue(), shouldSplitAcrossAnchorRects = objc_msgSend_shouldSplitAcrossAnchorRects(v11, v12, v13), v11, shouldSplitAcrossAnchorRects))
  {
    v15 = xmmword_276F98AE0;
    if (*(a1 + 64) != 1 || !objc_msgSend_hasHiddenTextAtCharIndex_range_(*(a1 + 32), length, a3, &v15) || v15 > a3 || *(&v15 + 1) + v15 < a3 + a4)
    {
      objc_msgSend_addObject_(*(a1 + 40), length, v7, v15);
    }
  }
}

void sub_276E14C14(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276E14C78(uint64_t a1, uint64_t a2, NSUInteger a3, NSUInteger a4)
{
  v15 = TSUCheckedProtocolCast();
  objc_msgSend_addObject_(*(a1 + 32), v7, v15, &unk_288643E90);
  v8 = *(a1 + 40);
  v10 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v9, a3, a4);
  objc_msgSend_addObject_(v8, v11, v10);

  v12 = *(*(a1 + 48) + 8);
  v13 = v12[3];
  if (v13.location == *MEMORY[0x277D81490] && v13.length == *(MEMORY[0x277D81490] + 8))
  {
    v12[3].location = a3;
    v12[3].length = a4;
    v13 = *(*(*(a1 + 48) + 8) + 48);
  }

  v17.location = a3;
  v17.length = a4;
  *(*(*(a1 + 48) + 8) + 48) = NSUnionRange(v17, v13);
}

void sub_276E1513C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3 = a2;
  *(&v3 + 1) = a3;
  sub_276D20ABC(*(a1 + 32) + 8, &v3);
}

void sub_276E15A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276E15A6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = objc_msgSend_containsRange_(*(a1 + 32), a2, a2, a3);
  v8 = *(*(a1 + 40) + 8);
  if (result)
  {
    *(v8 + 24) = 1;
  }

  else
  {
    *(v8 + 24) = 0;
    *a5 = 1;
  }

  return result;
}

void sub_276E16060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276E1620C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 *sub_276E163B0(void *a1, __n128 *__src, __n128 *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_276D34ED8();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 3 > v11)
    {
      v11 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 4;
    v29 = a1;
    if (v14)
    {
      sub_276D34F6C(a1, v14);
    }

    v26 = 0;
    v27 = 16 * v15;
    v28 = (16 * v15);
    sub_276E17670(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6 < 0x10)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 1;
      *v6 = v6[-1];
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(&__src[1], __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 1;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = a3[v24];
  }

  return v4;
}

void sub_276E1654C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_276E17494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_276E174C8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_276D8D4CC(result, a4);
  }

  return result;
}

void sub_276E17528(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_276E17544(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_276D8D4CC(v6, v10);
    }

    sub_276D34ED8();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

__n128 sub_276E17670(__n128 **a1, __n128 *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = v5 - *a1;
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = (v4 - *a1) >> 3;
      }

      sub_276D34F6C(a1[4], v11);
    }

    v7 = ((v6 >> 4) + 1) / -2;
    v8 = ((v6 >> 4) + 1) / 2;
    v9 = &v5[-v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = (v9 + v10);
    a1[1] = &v5[v7];
    a1[2] = (v9 + v10);
  }

  result = *a2;
  *v4 = *a2;
  ++a1[2];
  return result;
}

char *sub_276E17778(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      sub_276D34ED8();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      sub_276D34F6C(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v29 = &__dst[16 * a5];
    v30 = (v10 - 16 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v29);
    }

    v28 = 16 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[16 * a5];
    v23 = v10 + v20;
    if (&v21[-16 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -16 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[16 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void sub_276E18904(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v11, v10, a2, v9, v7, v8);
}

void sub_276E189BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_count(*(*(a1 + 32) + 72), a2, a3);
  if (v4 >= 1)
  {
    v6 = v4 + 1;
    do
    {
      v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(a1 + 32) + 72), v5, v6 - 2);
      v10 = objc_msgSend_textboxes(v7, v8, v9);
      v13 = objc_msgSend_count(v10, v11, v12);

      if (!v13)
      {
        objc_msgSend_willModifyForUpgrade(*(a1 + 32), v5, v14);
        objc_msgSend_removeObjectAtIndex_(*(*(a1 + 32) + 72), v15, v6 - 2);
      }

      --v6;
    }

    while (v6 > 1);
  }
}

void TSWPParagraphEnumerator::~TSWPParagraphEnumerator(TSWPParagraphEnumerator *this)
{
}

{
}

void TSWPParagraphEnumerator::TSWPParagraphEnumerator(TSWPParagraphEnumerator *this)
{
  *&this->var2 = 0u;
  *&this->var4 = 0u;
  *&this->var0 = 0u;
  this->var6 = 1;
  this->var7 = *MEMORY[0x277D81490];
}

{
  *&this->var2 = 0u;
  *&this->var4 = 0u;
  *&this->var0 = 0u;
  this->var6 = 1;
  this->var7 = *MEMORY[0x277D81490];
}

void TSWPParagraphEnumerator::TSWPParagraphEnumerator(TSWPParagraphEnumerator *this, const TSWPParagraphEnumerator *a2)
{
  this->var0 = a2->var0;
  this->var1 = a2->var1;
  *&this->var2 = *&a2->var2;
  *&this->var4 = *&a2->var4;
  this->var6 = a2->var6;
  this->var7 = a2->var7;
}

uint64_t TSWPParagraphEnumerator::TSWPParagraphEnumerator(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = a2;
  v12 = a3;
  v13 = v11;
  *a1 = v13;
  v14 = v12;
  v16 = v14;
  *(a1 + 8) = v14;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a4;
  *(a1 + 40) = a4;
  *(a1 + 48) = a6;
  v17 = MEMORY[0x277D81490];
  *(a1 + 56) = *MEMORY[0x277D81490];
  if (v14 == v13)
  {
    *(a1 + 8) = 0;
  }

  TSWPParagraphEnumerator::fixFirstParIndex(a1, v15);
  TSWPParagraphEnumerator::fixLastParIndex(a1, v18);
  ValidParIndex = TSWPParagraphEnumerator::firstValidParIndex(a1, v19);
  *(a1 + 56) = *v17;
  *(a1 + 16) = ValidParIndex;

  return a1;
}

__n128 TSWPParagraphEnumerator::fixFirstParIndex(TSWPParagraphEnumerator *this, const char *a2)
{
  v3 = objc_msgSend_attributeArrayForKind_(this->var0, a2, 0);
  var4 = this->var4;
  if (var4)
  {
    v6 = v3;
    v7 = MEMORY[0x277D81490];
    do
    {
      v9 = TSWPAttributeArray::rangeForAttributeIndex(v6, var4);
      *v19 = xmmword_276F98AE0;
      var0 = this->var0;
      v11 = v9 - 1;
      if (this->var6)
      {
        if ((objc_msgSend_hasHiddenTextAtCharIndex_range_(var0, v8, v11, v19) & 1) == 0)
        {
          return result;
        }
      }

      else if (!objc_msgSend_hasDeletedTextAtCharIndex_range_(var0, v8, v11, v19))
      {
        return result;
      }

      v12 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v6, v19[0]);
      if (v12 >= this->var4)
      {
        TSUSetCrashReporterInfo();
        v13 = MEMORY[0x277D81150];
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSWPParagraphEnumerator::fixFirstParIndex()", "void TSWPParagraphEnumerator::fixFirstParIndex()", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphEnumerator.mm", 322);
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphEnumerator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v15, v17, 322, 1, "Skipping past the hidden range should give us a new paragraph");

        TSUCrashBreakpoint();
        abort();
      }

      var4 = v12;
      result = *v7;
      this->var7 = *v7;
      this->var4 = v12;
    }

    while (v12);
  }

  return result;
}

__n128 TSWPParagraphEnumerator::fixLastParIndex(TSWPParagraphEnumerator *this, const char *a2)
{
  v3 = objc_msgSend_attributeArrayForKind_(this->var0, a2, 0);
  var5 = this->var5;
  if ((var5 + 1) < this->var3)
  {
    v6 = v3;
    v7 = MEMORY[0x277D81490];
    do
    {
      v9 = TSWPAttributeArray::rangeForAttributeIndex(v6, var5);
      v19 = xmmword_276F98AE0;
      var0 = this->var0;
      v11 = &v8[v9 - 1];
      if (this->var6)
      {
        if ((objc_msgSend_hasHiddenTextAtCharIndex_range_(var0, v8, v11, &v19) & 1) == 0)
        {
          return result;
        }
      }

      else if (!objc_msgSend_hasDeletedTextAtCharIndex_range_(var0, v8, v11, &v19))
      {
        return result;
      }

      v12 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v6, *(&v19 + 1) + v19);
      if (v12 <= this->var5)
      {
        TSUSetCrashReporterInfo();
        v13 = MEMORY[0x277D81150];
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "void TSWPParagraphEnumerator::fixLastParIndex()", "void TSWPParagraphEnumerator::fixLastParIndex()", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphEnumerator.mm", 340);
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphEnumerator.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v15, v17, 340, 1, "Skipping past the hidden range should give us a new paragraph");

        TSUCrashBreakpoint();
        abort();
      }

      var5 = v12;
      result = *v7;
      this->var7 = *v7;
      this->var5 = v12;
    }

    while (v12 + 1 < this->var3);
  }

  return result;
}

__n128 TSWPParagraphEnumerator::setParIndex(TSWPParagraphEnumerator *this, unint64_t a2)
{
  result = *MEMORY[0x277D81490];
  this->var7 = *MEMORY[0x277D81490];
  this->var2 = a2;
  return result;
}

unint64_t TSWPParagraphEnumerator::firstValidParIndex(TSWPParagraphEnumerator *this, const char *a2)
{
  var4 = this->var4;
  var6 = this->var6;
  var0 = this->var0;
  v7 = TSWPParagraphEnumerator::paragraphTextRange(this, a2);
  if (var6)
  {
    VisibleCharInRange = objc_msgSend_indexOfFirstVisibleCharInRange_(var0, v6, v7, v6);
  }

  else
  {
    VisibleCharInRange = objc_msgSend_indexOfFirstNonDeletedCharInRange_(var0, v6, v7, v6);
  }

  v10 = VisibleCharInRange;
  if (VisibleCharInRange != 0x7FFFFFFFFFFFFFFFLL && VisibleCharInRange != TSWPParagraphEnumerator::paragraphTextRange(this, v9))
  {
    v12 = objc_msgSend_attributeArrayForKind_(this->var0, v11, 0);
    v13 = TSWPAttributeArray::effectiveAttributeIndexForCharIndex(v12, v10);
    var4 = v13;
    if (v13 < this->var4 || v13 > this->var5)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "TSWPParagraphIndex TSWPParagraphEnumerator::firstValidParIndex() const");
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphEnumerator.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 354, 0, "Valid par index is out of bounds");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
    }
  }

  return var4;
}

TSWPParagraphEnumerator *TSWPParagraphEnumerator::operator--(TSWPParagraphEnumerator *this, const char *a2)
{
  var4 = this->var4;
  if (var4 || (v4 = MEMORY[0x277D81150], objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSWPParagraphEnumerator &TSWPParagraphEnumerator::operator--()"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPParagraphEnumerator.mm"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 64, 0, "Undefined behavior when decrementing the 0th paragraph"), v7, v5, objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10), (var4 = this->var4) != 0))
  {
    v11 = var4 - 1;
    v12 = MEMORY[0x277D81490];
    this->var7 = *MEMORY[0x277D81490];
    this->var4 = v11;
    this->var5 = v11;
    TSWPParagraphEnumerator::fixFirstParIndex(this, a2);
    ValidParIndex = TSWPParagraphEnumerator::firstValidParIndex(this, v13);
    this->var7 = *v12;
    this->var2 = ValidParIndex;
  }

  else
  {
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    *&this->var2 = vnegq_f64(v16);
    *&this->var4 = xmmword_276F98AE0;
    this->var7 = *MEMORY[0x277D81490];
  }

  return this;
}

__n128 TSWPParagraphEnumerator::setLastParIndex(TSWPParagraphEnumerator *this, unint64_t a2)
{
  result = *MEMORY[0x277D81490];
  this->var7 = *MEMORY[0x277D81490];
  this->var5 = a2;
  return result;
}

__n128 TSWPParagraphEnumerator::setFirstParIndex(TSWPParagraphEnumerator *this, unint64_t a2)
{
  result = *MEMORY[0x277D81490];
  this->var7 = *MEMORY[0x277D81490];
  this->var4 = a2;
  return result;
}

TSWPParagraphEnumerator *TSWPParagraphEnumerator::operator++(TSWPParagraphEnumerator *this, const char *a2)
{
  v3 = this->var5 + 1;
  if (v3 >= this->var3)
  {
    this->var7 = *MEMORY[0x277D81490];
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    *&this->var4 = vnegq_f64(v7);
    ValidParIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = MEMORY[0x277D81490];
    this->var7 = *MEMORY[0x277D81490];
    this->var4 = v3;
    this->var5 = v3;
    TSWPParagraphEnumerator::fixLastParIndex(this, a2);
    ValidParIndex = TSWPParagraphEnumerator::firstValidParIndex(this, v5);
    this->var7 = *v4;
  }

  this->var2 = ValidParIndex;
  return this;
}

id TSWPParagraphEnumerator::paragraphStyle(TSWPParagraphEnumerator *this, _NSRange *a2)
{
  if (a2)
  {
    a2->location = TSWPParagraphEnumerator::paragraphTextRange(this, a2);
    a2->length = a2;
  }

  var2 = this->var2;
  if (var2 >= this->var3)
  {
    v6 = 0;
  }

  else
  {
    var1 = this->var1;
    if (var1)
    {
      objc_msgSend_paragraphStyleAtParIndex_effectiveRange_(var1, a2, var2, 0);
    }

    else
    {
      v7 = objc_msgSend_attributeArrayForKind_(this->var0, a2, 0);
      TSWPAttributeArray::objectForAttributeIndex(v7, this->var2);
    }
    v6 = ;
  }

  return v6;
}

NSUInteger TSWPParagraphEnumerator::paragraphTextRange(TSWPParagraphEnumerator *this, const char *a2)
{
  location = this->var7.location;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = objc_msgSend_attributeArrayForKind_(this->var0, a2, 0);
    location = TSWPAttributeArray::rangeForAttributeIndex(v4, this->var4);
    length = v5;
    if (this->var5 != this->var4)
    {
      v7 = objc_msgSend_attributeArrayForKind_(this->var0, v5, 0);
      v12.location = TSWPAttributeArray::rangeForAttributeIndex(v7, this->var5);
      v12.length = v8;
      v11.location = location;
      v11.length = length;
      v9 = NSUnionRange(v11, v12);
      location = v9.location;
      length = v9.length;
    }

    this->var7.location = location;
    this->var7.length = length;
  }

  return location;
}

id TSWPParagraphEnumerator::paragraphString(TSWPParagraphEnumerator *this, const char *a2)
{
  v3 = TSWPParagraphEnumerator::paragraphTextRange(this, a2);
  v5 = v4;
  if (objc_msgSend_hasTrackedChanges(this->var0, v4, v6))
  {
    v8 = objc_msgSend_filteredStorageRemovingDeletionsFromStorage_subRange_(TSWPFilteredStorage, v7, this->var0, v3, v5);
    v11 = objc_msgSend_string(v8, v9, v10);
  }

  else
  {
    v11 = objc_msgSend_substringWithRange_(this->var0, v7, v3, v5);
  }

  return v11;
}

id TSWPParagraphEnumerator::dropCapStyle(TSWPParagraphEnumerator *this, const char *a2)
{
  var2 = this->var2;
  if (var2 >= this->var3)
  {
    v5 = 0;
  }

  else
  {
    if (this->var1)
    {
      objc_msgSend_dropCapStyleAtParIndex_(this->var1, a2, var2, v2);
    }

    else
    {
      objc_msgSend_dropCapStyleAtParIndex_(this->var0, a2, var2, v2);
    }
    v5 = ;
  }

  return v5;
}

id TSWPParagraphEnumerator::attachmentOrFootnoteAtCharIndex(TSWPParagraphEnumerator *this, const char *a2)
{
  v4 = TSWPParagraphEnumerator::paragraphTextRange(this, a2);
  if (v5)
  {
    v7 = v4;
    v8 = v5;
    if (objc_msgSend_hasTrackedChanges(this->var0, v5, v6))
    {
      v10 = objc_msgSend_filteredStorageRemovingDeletionsFromStorage_subRange_(TSWPFilteredStorage, v9, this->var0, v7, v8);
      v12 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(v10, v11, a2);
    }

    else
    {
      v12 = objc_msgSend_attachmentOrFootnoteAtCharIndex_(this->var0, v9, &a2[v7]);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id TSWPParagraphEnumerator::paragraphListStyle(TSWPParagraphEnumerator *this, const char *a2)
{
  var2 = this->var2;
  if (var2 >= this->var3)
  {
    v5 = 0;
  }

  else
  {
    if (this->var1)
    {
      objc_msgSend_listStyleAtParIndex_effectiveRange_(this->var1, a2, var2, 0, v2);
    }

    else
    {
      objc_msgSend_listStyleAtParIndex_effectiveRange_(this->var0, a2, var2, 0, v2);
    }
    v5 = ;
  }

  return v5;
}

uint64_t TSWPParagraphEnumerator::paragraphListStart(TSWPParagraphEnumerator *this, const char *a2)
{
  var0 = this->var0;
  v4 = objc_msgSend_charIndexForParagraphAtIndex_(this->var0, a2, this->var2);

  return objc_msgSend_listStartAtCharIndex_(var0, v3, v4);
}

BOOL TSWPParagraphEnumerator::paragraphHasListLabel(TSWPParagraphEnumerator *this, const char *a2)
{
  v2 = TSWPParagraphEnumerator::paragraphListStyle(this, a2);
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_firstLabelType(v2, v3, v4) != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t TSWPParagraphEnumerator::paragraphLanguage(TSWPParagraphEnumerator *this, const char *a2)
{
  v5 = objc_msgSend_languageAtParIndex_useStringTokenizer_useDocumentLanguage_(this->var0, a2, this->var2, 0, 0);
  if (v5)
  {
    goto LABEL_2;
  }

  if (objc_msgSend_hasTrackedChanges(this->var0, v3, v4))
  {
    v9 = TSWPParagraphEnumerator::paragraphString(this, v7);
    v12 = objc_msgSend_length(v9, v10, v11);
    v13 = 0;
  }

  else
  {
    v9 = objc_msgSend_string(this->var0, v7, v8);
    v13 = TSWPParagraphEnumerator::paragraphTextRange(this, v14);
    v12 = v15;
  }

  if (!sub_276D39B0C(v9, v13, v12))
  {

    v5 = 0;
LABEL_10:
    v6 = 7;
    goto LABEL_11;
  }

  v18.location = v13;
  v18.length = v12;
  v16 = CFStringTokenizerCopyBestStringLanguage(v9, v18);

  v5 = v16;
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_2:
  v6 = sub_276D39910(v5, v3, v4);
LABEL_11:

  return v6;
}

void sub_276E1A2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v9 = objc_msgSend_substringWithRange_(WeakRetained, v7, a2, a3);

  if (v9)
  {
    objc_msgSend_appendString_(*(a1 + 40), v8, v9);
  }
}

void sub_276E1A504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_276E1A520(void *a1, const char *a2, uint64_t a3)
{
  v6 = a1[6];
  if (v6 > a2 || a1[7] + v6 < &a2[a3])
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredStorage getCharacters:range:]_block_invoke");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 121, 0, "Bogus visible range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = a3 + *(*(a1[5] + 8) + 24);
  v15 = a1[9];
  if (v14 > v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredStorage getCharacters:range:]_block_invoke");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 122, 0, "Not enough room in text buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    v15 = a1[9];
    v14 = a3 + *(*(a1[5] + 8) + 24);
  }

  if (v14 <= v15)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 8));
    objc_msgSend_getCharacters_range_(WeakRetained, v24, a1[10] + 2 * *(*(a1[5] + 8) + 24), a2, a3);

    *(*(a1[5] + 8) + 24) += a3;
  }
}

void sub_276E1B76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276E1B7A8(void *a1, const char *a2, uint64_t a3)
{
  v6 = a1[7];
  if (v6 > a2 || a1[8] + v6 < &a2[a3])
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredStorage substringWithRange:]_block_invoke");
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 387, 0, "Bogus visible range");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
  }

  v14 = a3 + *(*(a1[6] + 8) + 24);
  v15 = a1[10];
  if (v14 > v15)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSWPFilteredStorage substringWithRange:]_block_invoke");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPFilteredStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v20, v17, v19, 388, 0, "Not enough room in text buffer");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22);
    v15 = a1[10];
    v14 = a3 + *(*(a1[6] + 8) + 24);
  }

  if (v14 <= v15)
  {
    v23 = a1[4];
    WeakRetained = objc_loadWeakRetained((a1[5] + 8));
    v26 = objc_msgSend_substringWithRange_(WeakRetained, v25, a2, a3);
    objc_msgSend_appendString_(v23, v27, v26);

    *(*(a1[6] + 8) + 24) += a3;
  }
}

void sub_276E1BAA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  objc_msgSend_charRangeMappedFromStorage_(*(a1 + 32), v7, a3, a4);
  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_276E1BC50(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  objc_msgSend_charRangeMappedFromStorage_(*(a1 + 32), v7, a3, a4);
  if (v8)
  {
    (*(*(a1 + 40) + 16))();
  }
}

void sub_276E1BDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276E1BDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  LODWORD(a3) = objc_msgSend_hasSmartFieldsInRange_(WeakRetained, v10, a2, a3);

  if (a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a5 = 1;
  }
}

void sub_276E1C708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276E1C720(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v5 = *(result + 40);
  if (v5 <= a2)
  {
    *a5 = 1;
  }

  else if (a2 + a3 <= v5)
  {
    *(*(*(result + 32) + 8) + 24) += a3;
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) += v5 - a2;
  }

  return result;
}

void sub_276E1D58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  _Block_object_dispose(&a23, 8);
  sub_276E1D908(&a16);
  _Block_object_dispose((v26 - 176), 8);
  a23 = a10;
  sub_276E1D908(&a23);

  _Unwind_Resume(a1);
}

__n128 sub_276E1D648(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_276E1D698(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 32) + 8);
  v10[0] = v7;
  v10[1] = a3;
  v10[2] = a4;
  v9 = v7;
  sub_276E1D71C((v8 + 48), v10);
}

void *sub_276E1D71C(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_276D34ED8();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v14[4] = result;
    if (v11)
    {
      sub_276E1DA48(result, v11);
    }

    v12 = 24 * v8;
    v14[0] = 0;
    v14[1] = 24 * v8;
    v14[3] = 0;
    v13 = *a2;
    *a2 = 0;
    *v12 = v13;
    *(v12 + 8) = *(a2 + 1);
    v14[2] = 24 * v8 + 24;
    sub_276E1D988(result, v14);
    v7 = v3[1];
    result = sub_276E1DAA0(v14);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v4 = v6;
    *(v4 + 8) = *(a2 + 1);
    v7 = v4 + 24;
  }

  v3[1] = v7;
  return result;
}

void sub_276E1D834(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_276E1DAA0(va);
  _Unwind_Resume(a1);
}

void sub_276E1D848(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    v9 = *(*(a1 + 32) + 8);
    v10[0] = v7;
    v10[1] = a3;
    v10[2] = a4;
    sub_276E1D71C((v9 + 48), v10);
  }
}

void sub_276E1D908(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 3);
        v4 -= 24;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_276E1D988(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v4;
    do
    {
      v9 = *v7;
      *v7 = 0;
      *v8 = v9;
      *(v8 + 8) = *(v7 + 1);
      v7 += 3;
      v8 += 24;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5;
      v5 += 3;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  *(a1 + 8) = v11;
  a2[1] = v11;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void sub_276E1DA48(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_276D34F38();
}

uint64_t sub_276E1DAA0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_276E1E16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_276E1F5A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

void sub_276E20564()
{
  v24 = objc_alloc_init(MEMORY[0x277CCAB50]);
  v2 = objc_msgSend_alphanumericCharacterSet(MEMORY[0x277CCA900], v0, v1);
  objc_msgSend_formUnionWithCharacterSet_(v24, v3, v2);

  v6 = objc_msgSend_punctuationCharacterSet(MEMORY[0x277CCA900], v4, v5);
  objc_msgSend_formUnionWithCharacterSet_(v24, v7, v6);

  objc_msgSend_addCharactersInString_(v24, v8, @";/?:@=&");
  objc_msgSend_addCharactersInString_(v24, v9, @"$-_.+!*'(),");
  objc_msgSend_addCharactersInString_(v24, v10, @"%~");
  objc_msgSend_addCharactersInString_(v24, v11, @"#");
  v14 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v12, v13);
  objc_msgSend_formUnionWithCharacterSet_(v24, v15, v14);

  v18 = objc_msgSend_copy(v24, v16, v17);
  v19 = qword_280A584B8;
  qword_280A584B8 = v18;

  v22 = objc_msgSend_invertedSet(qword_280A584B8, v20, v21);
  v23 = qword_280A584C0;
  qword_280A584C0 = v22;
}

void sub_276E209E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_276E20A18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276E20A30(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend__newDetector(*(a1 + 32), a2, a3);
  v4 = qword_280A584D0;
  qword_280A584D0 = v3;
}

void sub_276E20A68(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v89[3] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v9 = objc_msgSend_range(v6, v7, v8);
  range2 = v10;
  v12 = objc_msgSend_URL(v6, v10, v11);
  v15 = objc_msgSend_phoneNumber(v6, v13, v14);
  v18 = v15;
  if (!v12)
  {
    if (!objc_msgSend_tswp_NSDetectorMatchStringIsStrictPhoneNumber(v15, v16, v17))
    {
      v12 = 0;
      goto LABEL_25;
    }

    v29 = objc_msgSend_stringByApplyingTransform_reverse_(v18, v32, *MEMORY[0x277CBE768], 0);
    v35 = objc_msgSend_URLFragmentAllowedCharacterSet(MEMORY[0x277CCA900], v33, v34);
    v12 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v29, v36, v35);

    v37 = MEMORY[0x277CBEBC0];
    v39 = objc_msgSend_stringByAppendingString_(@"tel:", v38, v12);
    v31 = objc_msgSend_URLWithString_(v37, v40, v39);

LABEL_6:
    v12 = v31;
    if (!v31)
    {
      goto LABEL_25;
    }

    goto LABEL_7;
  }

  v19 = objc_msgSend_absoluteString(v12, v16, v17);
  v22 = objc_msgSend_lowercaseString(v19, v20, v21);
  hasPrefix = objc_msgSend_hasPrefix_(v22, v23, @"tel://");

  if (hasPrefix)
  {
    v27 = objc_msgSend_absoluteString(v12, v25, v26);
    v29 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_options_range_(v27, v28, @"tel://", @"tel:", 1, 0, 6);

    v31 = objc_msgSend_URLWithString_(MEMORY[0x277CBEBC0], v30, v29);
    goto LABEL_6;
  }

LABEL_7:
  v41 = *(*(a1 + 32) + 8);
  v42 = *(v41 + 32);
  if (v42 > v9 || *(v41 + 40) + v42 < v9 + range2)
  {
    v84 = v12;
    v85 = v18;
    v86 = v6;
    *(v41 + 32) = v9;
    *(v41 + 40) = range2;
    v43 = objc_msgSend_count(*(*(*(a1 + 40) + 8) + 40), v25, v26, a4);
    if (v43)
    {
      v46 = v43;
      v47 = 0;
      v48 = 1;
      while (1)
      {
        v49 = a1;
        v50 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 40) + 8) + 40), length, v47);
        v52 = objc_msgSend_objectForKeyedSubscript_(v50, v51, @"range");
        v55 = objc_msgSend_rangeValue(v52, v53, v54);
        v57 = v56;

        v90.location = v55;
        v90.length = v57;
        v91.location = v9;
        v91.length = range2;
        v58 = NSIntersectionRange(v90, v91);
        length = v58.length;
        if (v58.length)
        {
          break;
        }

        v47 = v48;
        v59 = v46 > v48++;
        a1 = v49;
        if (!v59)
        {
          goto LABEL_17;
        }
      }

      if (v57 >= range2)
      {
        v18 = v85;
        v6 = v86;
        v12 = v84;
        goto LABEL_25;
      }

      a1 = v49;
      objc_msgSend_removeObjectAtIndex_(*(*(*(v49 + 40) + 8) + 40), v58.length, v47);
    }

LABEL_17:
    v12 = v84;
    v60 = objc_msgSend_scheme(v84, length, v45);
    v63 = objc_msgSend_lowercaseString(v60, v61, v62);

    if (v63)
    {
      v65 = objc_msgSend_member_(qword_280A584B0, v64, v63);

      if (!v65)
      {
        v66 = objc_opt_class();
        v69 = objc_msgSend_absoluteString(v84, v67, v68);
        v71 = objc_msgSend_newURLFromString_(v66, v70, v69);

        v73 = *(*(*(a1 + 40) + 8) + 40);
        if (!v73)
        {
          v74 = objc_alloc(MEMORY[0x277CBEB18]);
          v76 = objc_msgSend_initWithCapacity_(v74, v75, 1);
          v77 = *(*(a1 + 40) + 8);
          v78 = *(v77 + 40);
          *(v77 + 40) = v76;

          v73 = *(*(*(a1 + 40) + 8) + 40);
        }

        v88[0] = @"range";
        v79 = objc_msgSend_valueWithRange_(MEMORY[0x277CCAE60], v72, v9, range2);
        v89[0] = v79;
        v89[1] = v71;
        v88[1] = @"value";
        v88[2] = @"type";
        v89[2] = @"TSWPURLDataDetector";
        v81 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v80, v89, v88, 3);
        objc_msgSend_addObject_(v73, v82, v81);

        if ((*(a1 + 56) & 1) == 0)
        {
          *v83 = 1;
        }
      }
    }

    v18 = v85;
    v6 = v86;
  }

LABEL_25:
}

uint64_t sub_276E20ED0(void *a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(a1, v4, @"range");
  v8 = objc_msgSend_rangeValue(v5, v6, v7);

  v10 = objc_msgSend_objectForKeyedSubscript_(v3, v9, @"range");

  v13 = objc_msgSend_rangeValue(v10, v11, v12);
  if (v8 < v13)
  {
    return -1;
  }

  else
  {
    return v8 > v13;
  }
}

void sub_276E213F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276E21410(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(&unk_280A584E0);
  v4 = *(*(*(a1 + 48) + 8) + 24);
  os_unfair_lock_unlock(&unk_280A584E0);
  if ((v4 & 1) == 0)
  {
    v6 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), v5, a2);
    v9 = objc_msgSend_rangeValue(v6, v7, v8);
    v11 = v10;

    v12 = *(a1 + 56);
    v27 = 0;
    v14 = objc_msgSend_dataDetectorWithTypes_error_(MEMORY[0x277CCA948], v13, v12, &v27);
    v16 = v27;
    if (v16)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "+[TSWPURLDataDetector detectedDataInString:scanRange:withTextCheckingTypes:]_block_invoke");
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/text/TSWPURLDataDetector.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 322, 0, "Received error trying to instantiate NSDataDector: %@", v16);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    }

    v24 = objc_msgSend_p_newArrayByScanningString_scanRange_returnAllResults_dataDetector_(*(a1 + 64), v15, *(a1 + 40), v9, v11, 0, v14);
    if (objc_msgSend_count(v24, v25, v26))
    {
      os_unfair_lock_lock(&unk_280A584E0);
      *(*(*(a1 + 48) + 8) + 24) = 1;
      os_unfair_lock_unlock(&unk_280A584E0);
    }
  }
}

void sub_276E21B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276E21B7C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  v8 = TSUDynamicCast();

  *(*(*(a1 + 32) + 8) + 24) = objc_msgSend_textIsVertical(v8, v6, v7);
  *a3 = *(*(*(a1 + 32) + 8) + 24);
}

void sub_276E21CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_276E21CE4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  v6 = TSUDynamicCast();

  *(*(*(a1 + 32) + 8) + 24) = v6 != 0;
  *a3 = *(*(*(a1 + 32) + 8) + 24);
}

void sub_276E21F00(uint64_t a1, void *a2)
{
  v17 = a2;
  v5 = objc_msgSend_styleIdentifier(v17, v3, v4);
  hasPrefix = objc_msgSend_hasPrefix_(v5, v6, @"stickyComment");

  if ((hasPrefix & 1) == 0)
  {
    objc_opt_class();
    v9 = objc_msgSend_objectForProperty_(v17, v8, 16);
    v10 = TSUDynamicCast();

    objc_opt_class();
    v12 = objc_msgSend_objectForProperty_(v17, v11, 46);
    v13 = TSUDynamicCast();

    if (v10)
    {
      if (v13)
      {
        v14 = v13;

        v10 = v14;
      }
    }

    else
    {
      objc_opt_class();
      v16 = objc_msgSend_objectForProperty_(v17, v15, 797);
      v10 = TSUDynamicCast();

      if (!v10)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_7;
  }

LABEL_8:
}