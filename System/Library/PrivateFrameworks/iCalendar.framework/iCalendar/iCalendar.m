void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

const void *symbolicColorForLegacyRGB(CFStringRef theString)
{
  if (symbolicColorForLegacyRGB_onceToken != -1)
  {
    symbolicColorForLegacyRGB_cold_1();
  }

  if (CFStringGetLength(theString) == 9)
  {
    v4.location = 0;
    v4.length = 7;
    theString = CFStringCreateWithSubstring(0, theString, v4);
  }

  else
  {
    CFRetain(theString);
  }

  Value = CFDictionaryGetValue(symbolicColorForLegacyRGB_legacyColorMapping, theString);
  CFRelease(theString);
  return Value;
}

void __symbolicColorForLegacyRGB_block_invoke()
{
  symbolicColorForLegacyRGB_legacyColorMapping = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#0252D4", @"blue");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#492BA1", @"purple");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#F57802", @"orange");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#2CA10B", @"green");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#E51717", @"red");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#0F4D8C", @"blue");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#670A6C", @"purple");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#E56200", @"orange");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#2F8D00", @"green");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#B5000D", @"red");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#0E61B9", @"blue");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#711A76", @"purple");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#EC4400", @"orange");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#44A703", @"green");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#B90E28", @"red");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#0E61B9", @"blue");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#711A76", @"purple");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#F64F00", @"orange");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#44A703", @"green");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#B90E28", @"red");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#E6C800", @"yellow");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#882F00", @"brown");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#1BADF8", @"blue");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#CC73E1", @"purple");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#FF9500", @"orange");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#63DA38", @"green");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#FF2968", @"red");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#FFCC00", @"yellow");
  CFDictionarySetValue(symbolicColorForLegacyRGB_legacyColorMapping, @"#A2845E", @"brown");
  v0 = symbolicColorForLegacyRGB_legacyColorMapping;

  CFDictionarySetValue(v0, @"#EABB00", @"yellow");
}

void iCalendarAppendStringToStringWithOptions(void *a1, void *a2, char a3)
{
  v7 = a1;
  v5 = a2;
  if (v7)
  {
    if ((a3 & 0x20) != 0)
    {
      v6 = ICSRedactString(v7);
      [v5 appendString:v6];
    }

    else
    {
      [v5 appendString:v7];
    }
  }
}

__CFString *iCalendarRepresentationForCALDay(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"ERROR";
  }

  else
  {
    return off_27A64C120[a1 - 1];
  }
}

id VCSLogHandle()
{
  if (VCSLogHandle_onceToken != -1)
  {
    VCSLogHandle_cold_1();
  }

  v1 = VCSLogHandle_handle;

  return v1;
}

uint64_t __VCSLogHandle_block_invoke()
{
  VCSLogHandle_handle = os_log_create("com.apple.vCalendar", "VCS");

  return MEMORY[0x2821F96F8]();
}

id ICSRedactString(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = [a1 dataUsingEncoding:4];
  ICSRedactBytes([v1 bytes], objc_msgSend(v1, "length"), v5);
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v5 length:20 encoding:4];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void ICSRedactBytes(const void *a1, CC_LONG a2, _WORD *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = _testModeSalt;
  if (!_testModeSalt)
  {
    if (_uniqueSaltForThisMachine_onceToken != -1)
    {
      ICSRedactBytes_cold_1();
    }

    v6 = _uniqueSaltForThisMachine_saltData;
  }

  v7 = v6;
  memset(&v13, 0, sizeof(v13));
  CC_SHA256_Init(&v13);
  CC_SHA256_Update(&v13, [v7 bytes], objc_msgSend(v7, "length"));
  CC_SHA256_Update(&v13, a1, a2);
  CC_SHA256_Final(md, &v13);
  v8 = 0;
  v9 = md[8];
  *a3 = -24592;
  a3[1] = _pictureForByte_table[v9];
  v10 = a3 + 5;
  do
  {
    v11 = md[v8];
    *(v10 - 1) = _nibbleToChar_byteMap[v11 >> 4];
    *v10 = _nibbleToChar_byteMap[v11 & 0xF];
    v10 += 2;
    ++v8;
  }

  while (v8 != 8);

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t _pictureForByte(uint64_t result, _WORD *a2)
{
  *a2 = -24592;
  a2[1] = _pictureForByte_table[result];
  return result;
}

id ICSAppendEmoji(void *a1)
{
  v1 = a1;
  v5[0] = -24592;
  v5[1] = _pictureForByte_table[[v1 hash]];
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v5 length:4 encoding:4];
  v3 = [v1 stringByAppendingString:v2];

  return v3;
}

void ICSRedactionSetTestModeEnabled(int a1)
{
  if (a1)
  {
    v5 = 4;
    v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v5 length:1];
    v3 = _testModeSalt;
    _testModeSalt = v2;
  }

  else
  {
    v4 = _testModeSalt;
    _testModeSalt = 0;
  }
}

void ___uniqueSaltForThisMachine_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  alloc = [v0 objectForKey:@"icaluuid"];

  if (!alloc)
  {
    v1 = CFUUIDCreate(0);
    alloc = CFUUIDCreateString(0, v1);
    CFRelease(v1);
    v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v2 setObject:alloc forKey:@"icaluuid"];

    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v3 synchronize];
  }

  v4 = [(__CFAllocator *)alloc dataUsingEncoding:4];
  v5 = [v4 copy];
  v6 = _uniqueSaltForThisMachine_saltData;
  _uniqueSaltForThisMachine_saltData = v5;
}

void *VCSByteBufferWithCapacity(NSUInteger a1)
{
  v2 = NSZoneMalloc(0, 0x18uLL);
  if (a1 <= 1)
  {
    a1 = 1;
  }

  v3 = NSZoneMalloc(0, a1);
  v2[1] = 0;
  v2[2] = a1;
  *v2 = v3;
  return v2;
}

void VCSByteBufferAppendByte(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5 && v5 <= 0x7FFFFFFE)
  {
    v5 = 2 * v4;
    v7 = NSZoneRealloc(0, *a1, 2 * v4);
    if (v7)
    {
      *a1 = v7;
      *(a1 + 16) = v5;
    }

    else
    {
      v5 = *(a1 + 16);
    }
  }

  v8 = *(a1 + 8);
  if (v8 == v5)
  {
    v9 = VCSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      VCSByteBufferAppendByte_cold_1(a1, v9);
    }
  }

  else
  {
    v10 = *a1;
    *(a1 + 8) = v8 + 1;
    v10[v8] = a2;
  }
}

void VCSByteBufferAppendCString(uint64_t a1, char *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = (a2 + 1);
    do
    {
      VCSByteBufferAppendByte(a1, v2);
      v5 = *v4++;
      v2 = v5;
    }

    while (v5);
  }
}

id VCSByteBufferData(void *a1)
{
  v2 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:*a1 length:a1[1]];
  NSZoneFree(0, a1);

  return v2;
}

id ICSDefaultPRODID()
{
  if (ICSDefaultPRODID_onceToken != -1)
  {
    ICSDefaultPRODID_cold_1();
  }

  v1 = ICSDefaultPRODID_defaultPRODID;

  return v1;
}

void __ICSDefaultPRODID_block_invoke()
{
  v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"-//Apple Inc."];
  v0 = _CFCopySystemVersionDictionary();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 objectForKey:*MEMORY[0x277CBEC78]];
    v3 = v2;
    if (v2 && [v2 length])
    {
      [v8 appendFormat:@"//%@", v3];
      v4 = [v1 objectForKey:*MEMORY[0x277CBEC88]];
      v5 = v4;
      if (v4 && [v4 length])
      {
        [v8 appendFormat:@" %@", v5];
      }
    }
  }

  [v8 appendString:@"//EN"];
  v6 = [v8 copy];
  v7 = ICSDefaultPRODID_defaultPRODID;
  ICSDefaultPRODID_defaultPRODID = v6;
}

id logHandle()
{
  if (logHandle_onceToken != -1)
  {
    logHandle_cold_1();
  }

  v1 = logHandle_handle;

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __logHandle_block_invoke()
{
  logHandle_handle = os_log_create("com.apple.calendar.iCalendar", "ICSTimeZoneTranslator");

  return MEMORY[0x2821F96F8]();
}

CFDataRef ICSDecodeBase64(const __CFAllocator *a1, CFStringRef theString)
{
  if (theString)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x201u);
    if (CStringPtr)
    {
      CharactersPtr = 0;
    }

    else
    {
      CharactersPtr = CFStringGetCharactersPtr(theString);
    }

    Length = CFStringGetLength(theString);
    bytesDeallocator = a1;
    v10 = MEMORY[0x277C79490](a1, 3 * Length / 4 + 1, 0x100004077774924, 0);
    if (Length < 1)
    {
      v15 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        if (CStringPtr)
        {
          v17 = *CStringPtr++;
          CharacterAtIndex = v17;
        }

        else
        {
          CStringPtr = 0;
          if (CharactersPtr)
          {
            v18 = *CharactersPtr++;
            CharacterAtIndex = v18;
          }

          else
          {
            CharacterAtIndex = CFStringGetCharacterAtIndex(theString, v12);
          }
        }

        if (CharacterAtIndex == 61)
        {
          ++v13;
        }

        v19 = __CFPLDataDecodeTable[CharacterAtIndex & 0x7F];
        if ((v19 & 0x8000000000000000) == 0)
        {
          ++v14;
          v11 = v19 + (v11 << 6);
          if ((v14 & 3) == 0)
          {
            v10[v15] = BYTE2(v11);
            if (v13 > 1)
            {
              ++v15;
            }

            else
            {
              v20 = v15 + 2;
              v10[v15 + 1] = BYTE1(v11);
              if (v13)
              {
                v15 += 2;
              }

              else
              {
                v15 += 3;
                v10[v20] = v11;
              }
            }
          }
        }

        ++v12;
      }

      while (Length != v12);
    }

    return CFDataCreateWithBytesNoCopy(bytesDeallocator, v10, v15, bytesDeallocator);
  }

  else
  {
    v7 = MEMORY[0x277CBEA90];

    return objc_alloc_init(v7);
  }
}

CFStringRef ICSEncodeBase64(const __CFAllocator *a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v6 = MEMORY[0x277C79490](a1, 2 * (4 * Length / 3) + 4, 0x1000040BDFB0063, 0);
  if (Length < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = Length;
    do
    {
      if (v7 % 3 == 2)
      {
        v11 = &v6[v8];
        *v11 = __CFPLDataEncodeTable[((*BytePtr | (*(BytePtr - 1) << 8)) >> 6) & 0x3F];
        v8 += 2;
        v11[1] = __CFPLDataEncodeTable[*BytePtr & 0x3F];
      }

      else
      {
        if (v7 % 3 == 1)
        {
          v10 = ((*BytePtr | (*(BytePtr - 1) << 8)) >> 4) & 0x3F;
        }

        else
        {
          v10 = *BytePtr >> 2;
        }

        v6[v8++] = __CFPLDataEncodeTable[v10];
      }

      ++v7;
      ++BytePtr;
      --v9;
    }

    while (v9);
    if (Length % 3uLL == 2)
    {
      v14 = &v6[v8];
      *v14 = __CFPLDataEncodeTable[4 * (*(BytePtr - 1) & 0xF)];
      v13 = v14 + 1;
      v8 += 2;
    }

    else
    {
      if (Length % 3uLL != 1)
      {
        goto LABEL_16;
      }

      v12 = &v6[v8];
      *v12 = __CFPLDataEncodeTable[16 * (*(BytePtr - 1) & 3)];
      v12[1] = 61;
      v8 += 3;
      v13 = v12 + 2;
    }

    *v13 = 61;
  }

LABEL_16:
  v6[v8] = 0;

  return CFStringCreateWithCStringNoCopy(a1, v6, 0x600u, a1);
}

__CFString *stringForEntityStatus(unint64_t a1)
{
  if (a1 >= 9)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid(%lu)", a1];
  }

  else
  {
    v2 = off_27A64C4A8[a1];
  }

  return v2;
}

__CFString *stringForEntityTransparency(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid(%lu)", a1];
  }

  else
  {
    v2 = off_27A64C4F0[a1];
  }

  return v2;
}

__CFString *stringForEntityClassification(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid(%lu)", a1];
  }

  else
  {
    v2 = off_27A64C518[a1];
  }

  return v2;
}

uint64_t strncmp_s(const char *a1, const char *a2, size_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = strlen(a1);
  if (!a2 || v6 < a3 || strlen(a2) < a3)
  {
    return 0xFFFFFFFFLL;
  }

  return strncmp(a1, a2, a3);
}

void VCSByteBufferAppendByte_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_2754C5000, a2, OS_LOG_TYPE_ERROR, "Cannot append any more bytes to buffer at %p.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}