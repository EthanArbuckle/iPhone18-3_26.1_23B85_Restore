id RKLinguisticCategoryToPreferenceKey(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v2 = keyToCategoryMap();
  v3 = [v2 allKeysForObject:v1];

  if ([v3 count] == 1)
  {
    v4 = [v3 objectAtIndexedSubscript:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id keyToCategoryMap()
{
  if (keyToCategoryMap_onceToken != -1)
  {
    keyToCategoryMap_cold_1();
  }

  v1 = keyToCategoryMap_sKeyToCategoryMap;

  return v1;
}

__CFString *RKLinguisticCategoryForFSMType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"xCONGRATULATIONx"])
  {
    v2 = 37;
LABEL_13:
    v3 = RKLinguisticCategoryToPreferenceKey(v2);
    goto LABEL_14;
  }

  if ([v1 isEqualToString:@"xNEWYEARx"])
  {
    v2 = 39;
    goto LABEL_13;
  }

  if ([v1 isEqualToString:@"xBIRTHDAYx"])
  {
    v2 = 38;
    goto LABEL_13;
  }

  if ([v1 isEqualToString:@"xTHINKING_OF_YOUx"])
  {
    v2 = 41;
    goto LABEL_13;
  }

  if ([v1 isEqualToString:@"xCHINESENEWYEARx"])
  {
    v2 = 40;
    goto LABEL_13;
  }

  if ([v1 isEqualToString:@"xSHOOTINGSTARx"])
  {
    v2 = 42;
    goto LABEL_13;
  }

  v3 = @"Unknown";
LABEL_14:

  return v3;
}

uint64_t RKLinguisticCategoryFromPreferenceKey(void *a1)
{
  v1 = a1;
  v2 = keyToCategoryMap();
  v3 = [v2 objectForKeyedSubscript:v1];

  if (v3)
  {
    v4 = [v3 unsignedIntegerValue];
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

void __keyToCategoryMap_block_invoke()
{
  v54[46] = *MEMORY[0x277D85DE8];
  v53[0] = @"Unknown";
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v54[0] = v52;
  v53[1] = @"QueryGeneral";
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v54[1] = v51;
  v53[2] = @"QueryPolar";
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v54[2] = v50;
  v53[3] = @"QueryPolarDefinite";
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
  v54[3] = v49;
  v53[4] = @"QueryPolarRequest";
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
  v54[4] = v48;
  v53[5] = @"QueryTagged";
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:5];
  v54[5] = v47;
  v53[6] = @"QueryAlternative";
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:6];
  v54[6] = v46;
  v53[7] = @"QueryPerson";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:7];
  v54[7] = v45;
  v53[8] = @"QueryObject";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:8];
  v54[8] = v44;
  v53[9] = @"QueryPersonOrObject";
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:9];
  v54[9] = v43;
  v53[10] = @"QueryPosessive";
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:10];
  v54[10] = v42;
  v53[11] = @"QueryLocation";
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:11];
  v54[11] = v41;
  v53[12] = @"QueryLocationSelf";
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:12];
  v54[12] = v40;
  v53[13] = @"QueryEvaluation";
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:13];
  v54[13] = v39;
  v53[14] = @"QueryEvaluationState";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:14];
  v54[14] = v38;
  v53[15] = @"QueryReason";
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:15];
  v54[15] = v37;
  v53[16] = @"QueryDistance";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:16];
  v54[16] = v36;
  v53[17] = @"QueryDimension";
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:17];
  v54[17] = v35;
  v53[18] = @"QueryCountable";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:18];
  v54[18] = v34;
  v53[19] = @"QueryUncountable";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:19];
  v54[19] = v33;
  v53[20] = @"QueryQuantity";
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:20];
  v54[20] = v32;
  v53[21] = @"QueryTime";
  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:21];
  v54[21] = v31;
  v53[22] = @"QueryTimePast";
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:22];
  v54[22] = v30;
  v53[23] = @"QueryTimeFuture";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:23];
  v54[23] = v29;
  v53[24] = @"QueryTimeOfDay";
  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:24];
  v54[24] = v28;
  v53[25] = @"QueryDay";
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:25];
  v54[25] = v27;
  v53[26] = @"QueryMonth";
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:26];
  v54[26] = v26;
  v53[27] = @"QueryYear";
  v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:27];
  v54[27] = v25;
  v53[28] = @"QueryDuration";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:28];
  v54[28] = v24;
  v53[29] = @"QueryFrequency";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:29];
  v54[29] = v23;
  v53[30] = @"QueryAge";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:30];
  v54[30] = v22;
  v53[31] = @"StatementGeneral";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:31];
  v54[31] = v21;
  v53[32] = @"StatementGreeting";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:32];
  v54[32] = v20;
  v53[33] = @"StatementImperative";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:33];
  v54[33] = v19;
  v53[34] = @"StatementAppreciation";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:34];
  v54[34] = v18;
  v53[35] = @"StatementApology";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:35];
  v54[35] = v17;
  v53[36] = @"FixedPhrase";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:36];
  v54[36] = v16;
  v53[37] = @"StatementCongratulation";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:37];
  v54[37] = v15;
  v53[38] = @"StatementBirthday";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:38];
  v54[38] = v0;
  v53[39] = @"StatementNewYear";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:39];
  v54[39] = v1;
  v53[40] = @"StatementChineseNewYear";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:40];
  v54[40] = v2;
  v53[41] = @"StatementThinkingOfYou";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:41];
  v54[41] = v3;
  v53[42] = @"StatementShootingStar";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:42];
  v54[42] = v4;
  v53[43] = @"QueryProactive";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:43];
  v54[43] = v5;
  v53[44] = @"StatementPayment";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:44];
  v54[44] = v6;
  v53[45] = @"QueryPhotoSharing";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:45];
  v54[45] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:46];
  v9 = keyToCategoryMap_sKeyToCategoryMap;
  keyToCategoryMap_sKeyToCategoryMap = v8;

  for (i = 0; i != 46; ++i)
  {
    v11 = keyToCategoryMap_sKeyToCategoryMap;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    v13 = [v11 allKeysForObject:v12];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2620A9DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _languageCodeForIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x277CBEAF8] componentsFromLocaleIdentifier:a1];
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];

  return v2;
}

id _regExPatternFromKeywords(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCAC68] escapedPatternForString:v1];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"\\s+" withString:@" \\\\s+ " options:1024 range:{0, objc_msgSend(v3, "length")}];
  v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  objc_autoreleasePoolPop(v2);

  return v6;
}

void sub_2620AF8B0(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x2A8], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2620B0044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2620B072C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSUInteger NSSubtractRange(NSRange a1, NSRange a2)
{
  length = a2.length;
  location = a2.location;
  v4 = a1.length;
  v5 = a1.location;
  if (NSIntersectionRange(a1, a2).length)
  {
    v9.location = v5;
    v9.length = v4;
    v10.location = location;
    v10.length = length;
    v6 = NSIntersectionRange(v9, v10);
    if (v6.location != v5 || v6.length != v4)
    {
      if (v5 + v4 <= location + length)
      {
        v7 = v5;
      }

      else
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (location > v5)
      {
        return v7;
      }

      else
      {
        return location + length;
      }
    }
  }

  return v5;
}

void sub_2620B4554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 168), 8);
  _Block_object_dispose((v34 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_2620B5D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2620B67C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2620B97D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2620BB23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2620BB8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2620BFB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2620C338C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = RKMontrealModel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2620C3574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2620C44D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  objc_sync_exit(v35);

  _Unwind_Resume(a1);
}

uint64_t *std::map<int,int>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 7);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::vector<RKEventIdentifierRange>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::pair<int,int>>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RKEventIdentifierRange>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t IOMappings::lookupInput(IOMappings *this, const char *__src, size_t __n)
{
  if (__n >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__n >= 0x17)
  {
    operator new();
  }

  v14 = __n;
  if (__n)
  {
    memcpy(&__dst, __src, __n);
  }

  *(&__dst + __n) = 0;
  v5 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(this, &__dst);
  v6 = v5;
  if ((this + 8) == v5)
  {
    v12 = 7;
    strcpy(__p, "UNKNOWN");
    v8 = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(this, __p);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = (this + 96);
    if (v6 != v8)
    {
      v7 = (v8 + 56);
    }
  }

  else
  {
    v7 = (v5 + 56);
  }

  v9 = *v7;
  if (v14 < 0)
  {
    operator delete(__dst);
  }

  return v9;
}

void sub_2620C4A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_2620C4CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  _Block_object_dispose(&a28, 8);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__51(__n128 *a1, __n128 *a2)
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

void __Block_byref_object_dispose__52(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_2620C50B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  _Block_object_dispose(&a28, 8);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *findTopKClassifications(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2 >= 6)
  {
    findTopKClassifications();
  }

  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  v7 = a5 + a4;
  if (a5 + a4 > a4)
  {
    v8 = a3 + 20 * a4;
    do
    {
      for (i = 0; i != 20; i += 4)
      {
        *(v20 + i) = *(v8 + i) + *(v20 + i);
      }

      ++a4;
      v8 += 20;
    }

    while (a4 != v7);
  }

  v10 = 0;
  v11 = 0.0;
  do
  {
    v11 = v11 + *(v20 + v10);
    v10 += 4;
  }

  while (v10 != 20);
  for (j = 0; j != 20; j += 4)
  {
    *(v20 + j) = *(v20 + j) / v11;
  }

  v13 = 0;
  v14 = &v19;
  do
  {
    v15 = *(v20 + v13);
    *(v14 - 1) = v13;
    *v14 = v15;
    v14 += 2;
    ++v13;
  }

  while (v13 != 5);
  qsort_b(&v18, 5uLL, 0x10uLL, &__block_literal_global_118);
  result = memcpy(a1, &v18, 16 * a2);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2620C59A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__82(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_2620C5AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279B0FD78, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::find<std::string>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *(a2 + 23);
  v5 = v4 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v6 = v4 >= 0 ? a2 : *a2;
  v7 = a1 + 8;
  do
  {
    v8 = *(v3 + 55);
    if (v8 >= 0)
    {
      v9 = *(v3 + 55);
    }

    else
    {
      v9 = *(v3 + 40);
    }

    if (v8 >= 0)
    {
      v10 = (v3 + 32);
    }

    else
    {
      v10 = *(v3 + 32);
    }

    if (v5 >= v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }

    v12 = memcmp(v10, v6, v11);
    v13 = v9 < v5;
    if (v12)
    {
      v13 = v12 < 0;
    }

    v14 = !v13;
    if (v13)
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v7 = v3;
    }

    v3 = *(v3 + v15);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v16 = *(v7 + 55);
  v17 = v16 >= 0 ? *(v7 + 55) : *(v7 + 40);
  v18 = v16 >= 0 ? (v7 + 32) : *(v7 + 32);
  v19 = v17 >= v5 ? v5 : v17;
  v20 = memcmp(v6, v18, v19);
  v21 = v5 < v17;
  if (v20)
  {
    v21 = v20 < 0;
  }

  if (v21)
  {
    return v2;
  }

  return v7;
}

uint64_t ___ZL23findTopKClassificationsP31RKEventIdentifierClassificationmPKfmm_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a3 + 8);
  if (v3 <= v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v3 < v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279B0FD80, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

int *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(int *result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = a2 - 1;
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v88 = *(a2 - 2);
        v89 = *v10;
        if (v88 < *v10 || v89 >= v88 && *(a2 - 1) < v10[1])
        {
          *v10 = v88;
          *(a2 - 2) = v89;
          v90 = v10[1];
          v10[1] = *(a2 - 1);
          *(a2 - 1) = v90;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v13 == 3)
    {
      v91 = v10[2];
      v92 = *v10;
      if (v91 >= *v10 && (v92 < v91 || v10[3] >= v10[1]))
      {
        v106 = *(a2 - 2);
        if (v106 >= v91 && (v91 < v106 || *(a2 - 1) >= v10[3]))
        {
          return result;
        }

        v10[2] = v106;
        *(a2 - 2) = v91;
        v9 = v10 + 3;
        v107 = v10[3];
        v10[3] = *(a2 - 1);
        *(a2 - 1) = v107;
        v108 = v10[2];
        v109 = *v10;
        if (v108 >= *v10 && (v109 < v108 || v10[3] >= v10[1]))
        {
          return result;
        }

        *v10 = v108;
        v10[2] = v109;
        v94 = v10 + 1;
LABEL_201:
        v113 = *v94;
        *v94 = *v9;
        *v9 = v113;
        return result;
      }

      v93 = *(a2 - 2);
      if (v93 < v91)
      {
LABEL_156:
        *v10 = v93;
        v94 = v10 + 1;
        *(a2 - 2) = v92;
        goto LABEL_201;
      }

      if (v91 >= v93)
      {
        v110 = v10[3];
        if (*(a2 - 1) < v110)
        {
          goto LABEL_156;
        }
      }

      else
      {
        v110 = v10[3];
      }

      v111 = v10[1];
      v10[3] = v111;
      *v10 = v91;
      v10[1] = v110;
      v10[2] = v92;
      v112 = *(a2 - 2);
      if (v112 >= v92 && (v92 < v112 || *(a2 - 1) >= v111))
      {
        return result;
      }

      v10[2] = v112;
      *(a2 - 2) = v92;
      v94 = v10 + 3;
      goto LABEL_201;
    }

    if (v13 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(v10, v10 + 2, v10 + 4, a2 - 2);
    }

    if (v13 == 5)
    {
      break;
    }

LABEL_11:
    if (v13 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v10, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v10, a2);
      }
    }

    if (v11 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,std::pair<int,int> *>(v10, a2, a2, a3);
      }

      return result;
    }

    v14 = &v10[2 * (v13 >> 1)];
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = *v14;
      v17 = *v10;
      if (*v14 >= *v10 && (v17 < v16 || v14[1] >= v10[1]))
      {
        v24 = *(a2 - 2);
        if (v24 >= v16 && (v16 < v24 || *(a2 - 1) >= v14[1]))
        {
          goto LABEL_45;
        }

        *v14 = v24;
        *(a2 - 2) = v16;
        v25 = v14 + 1;
        v26 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v26;
        v27 = *v14;
        v28 = *v10;
        if (*v14 >= *v10 && (v28 < v27 || *v25 >= v10[1]))
        {
LABEL_45:
          v39 = v14 - 2;
          v40 = *(v14 - 2);
          v41 = v10[2];
          if (v40 >= v41 && (v41 < v40 || *(v14 - 1) >= v10[3]))
          {
            v44 = *(a2 - 4);
            if (v44 >= v40 && (v40 < v44 || *(a2 - 3) >= *(v14 - 1)))
            {
              goto LABEL_67;
            }

            *v39 = v44;
            *(a2 - 4) = v40;
            v45 = v14 - 1;
            v46 = *(v14 - 1);
            *(v14 - 1) = *(a2 - 3);
            *(a2 - 3) = v46;
            v47 = *v39;
            v48 = v10[2];
            if (*v39 >= v48 && (v48 < v47 || *v45 >= v10[3]))
            {
LABEL_67:
              v57 = v14[2];
              v55 = v14 + 2;
              v56 = v57;
              v58 = v10[4];
              if (v57 >= v58 && (v58 < v56 || v55[1] >= v10[5]))
              {
                v61 = *(a2 - 6);
                if (v61 >= v56 && (v56 < v61 || *(a2 - 5) >= v55[1]))
                {
                  goto LABEL_85;
                }

                *v55 = v61;
                *(a2 - 6) = v56;
                v62 = v55 + 1;
                v63 = v55[1];
                v55[1] = *(a2 - 5);
                *(a2 - 5) = v63;
                v64 = *v55;
                v65 = v10[4];
                if (*v55 >= v65 && (v65 < v64 || *v62 >= v10[5]))
                {
LABEL_85:
                  v70 = *v15;
                  v71 = *v39;
                  if (*v15 >= *v39 && (v71 < v70 || v15[1] >= v39[1]))
                  {
                    v75 = *v55;
                    if (*v55 >= v70)
                    {
                      if (v70 < v75)
                      {
                        goto LABEL_104;
                      }

                      v77 = v55[1];
                      v76 = v15[1];
                      if (v77 >= v76)
                      {
                        goto LABEL_104;
                      }
                    }

                    else
                    {
                      v76 = v15[1];
                      v77 = v55[1];
                    }

                    *v15 = v75;
                    v15[1] = v77;
                    v78 = v15 + 1;
                    *v55 = v70;
                    v55[1] = v76;
                    if (v75 >= v71 && (v71 < v75 || v77 >= v39[1]))
                    {
                      v70 = v75;
                      goto LABEL_104;
                    }

                    *v39 = v75;
                    v73 = v39 + 1;
                    *v15 = v71;
LABEL_103:
                    v81 = *v73;
                    *v73 = *v78;
                    *v78 = v81;
                    v70 = *v15;
LABEL_104:
                    v82 = *v10;
                    *v10 = v70;
                    v23 = v10 + 1;
                    *v15 = v82;
                    v30 = v15 + 1;
                    goto LABEL_105;
                  }

                  v72 = *v55;
                  if (*v55 < v70)
                  {
                    goto LABEL_87;
                  }

                  if (v70 >= v72)
                  {
                    v79 = v15[1];
                    if (v55[1] < v79)
                    {
LABEL_87:
                      *v39 = v72;
                      v73 = v39 + 1;
                      *v55 = v71;
                      v74 = v55 + 1;
LABEL_102:
                      v78 = v74;
                      goto LABEL_103;
                    }
                  }

                  else
                  {
                    v79 = v15[1];
                  }

                  *v15 = v71;
                  v80 = v39[1];
                  v15[1] = v80;
                  *v39 = v70;
                  v39[1] = v79;
                  if (v72 >= v71 && (v71 < v72 || v55[1] >= v80))
                  {
                    v70 = v71;
                    goto LABEL_104;
                  }

                  *v15 = v72;
                  *v55 = v71;
                  v74 = v55 + 1;
                  v73 = v15 + 1;
                  goto LABEL_102;
                }

                v10[4] = v64;
                *v55 = v65;
                v60 = v10 + 5;
LABEL_84:
                v69 = *v60;
                *v60 = *v62;
                *v62 = v69;
                goto LABEL_85;
              }

              v59 = *(a2 - 6);
              if (v59 < v56)
              {
                goto LABEL_69;
              }

              if (v56 >= v59)
              {
                v66 = v55[1];
                if (*(a2 - 5) < v66)
                {
LABEL_69:
                  v10[4] = v59;
                  *(a2 - 6) = v58;
                  v60 = v10 + 5;
LABEL_83:
                  v62 = a2 - 5;
                  goto LABEL_84;
                }
              }

              else
              {
                v66 = v55[1];
              }

              v67 = v10[5];
              v10[4] = v56;
              v10[5] = v66;
              *v55 = v58;
              v55[1] = v67;
              v60 = v55 + 1;
              v68 = *(a2 - 6);
              if (v68 >= v58 && (v58 < v68 || *(a2 - 5) >= v67))
              {
                goto LABEL_85;
              }

              *v55 = v68;
              *(a2 - 6) = v58;
              goto LABEL_83;
            }

            v10[2] = v47;
            *v39 = v48;
            v43 = v10 + 3;
LABEL_66:
            v54 = *v43;
            *v43 = *v45;
            *v45 = v54;
            goto LABEL_67;
          }

          v42 = *(a2 - 4);
          if (v42 < v40)
          {
            goto LABEL_47;
          }

          if (v40 >= v42)
          {
            v49 = *(v14 - 1);
            if (*(a2 - 3) < v49)
            {
LABEL_47:
              v10[2] = v42;
              *(a2 - 4) = v41;
              v43 = v10 + 3;
LABEL_65:
              v45 = a2 - 3;
              goto LABEL_66;
            }
          }

          else
          {
            v49 = *(v14 - 1);
          }

          v52 = v10[3];
          v10[2] = v40;
          v10[3] = v49;
          *v39 = v41;
          *(v14 - 1) = v52;
          v43 = v14 - 1;
          v53 = *(a2 - 4);
          if (v53 >= v41 && (v41 < v53 || *(a2 - 3) >= v52))
          {
            goto LABEL_67;
          }

          *v39 = v53;
          *(a2 - 4) = v41;
          goto LABEL_65;
        }

        *v10 = v27;
        v19 = v10 + 1;
        *v14 = v28;
LABEL_44:
        v38 = *v19;
        *v19 = *v25;
        *v25 = v38;
        goto LABEL_45;
      }

      v18 = *(a2 - 2);
      if (v18 < v16)
      {
        goto LABEL_16;
      }

      if (v16 >= v18)
      {
        v34 = v14[1];
        if (*(a2 - 1) < v34)
        {
LABEL_16:
          *v10 = v18;
          v19 = v10 + 1;
LABEL_43:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
          goto LABEL_44;
        }
      }

      else
      {
        v34 = v14[1];
      }

      v36 = v10[1];
      *v10 = v16;
      v10[1] = v34;
      *v14 = v17;
      v14[1] = v36;
      v19 = v14 + 1;
      v37 = *(a2 - 2);
      if (v37 >= v17 && (v17 < v37 || *(a2 - 1) >= v36))
      {
        goto LABEL_45;
      }

      *v14 = v37;
      goto LABEL_43;
    }

    v20 = *v10;
    v21 = *v14;
    if (*v10 < *v15 || v21 >= v20 && v10[1] < v15[1])
    {
      v22 = *(a2 - 2);
      if (v22 < v20)
      {
        goto LABEL_19;
      }

      if (v20 >= v22)
      {
        v35 = v10[1];
        if (*(a2 - 1) >= v35)
        {
          goto LABEL_59;
        }

LABEL_19:
        *v15 = v22;
        *(a2 - 2) = v21;
        v23 = v15 + 1;
      }

      else
      {
        v35 = v10[1];
LABEL_59:
        v50 = v15[1];
        *v15 = v20;
        v15[1] = v35;
        *v10 = v21;
        v10[1] = v50;
        v23 = v10 + 1;
        v51 = *(a2 - 2);
        if (v51 >= v21 && (v21 < v51 || *(a2 - 1) >= v50))
        {
          goto LABEL_106;
        }

        *v10 = v51;
        *(a2 - 2) = v21;
      }

      v30 = a2 - 1;
LABEL_105:
      v83 = *v23;
      *v23 = *v30;
      *v30 = v83;
      goto LABEL_106;
    }

    v29 = *(a2 - 2);
    if (v29 < v20 || v20 >= v29 && *(a2 - 1) < v10[1])
    {
      *v10 = v29;
      *(a2 - 2) = v20;
      v30 = v10 + 1;
      v31 = v10[1];
      v10[1] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = *v10;
      v33 = *v15;
      if (*v10 < *v15 || v33 >= v32 && *v30 < v15[1])
      {
        *v15 = v32;
        *v10 = v33;
        v23 = v15 + 1;
        goto LABEL_105;
      }
    }

LABEL_106:
    if ((a5 & 1) == 0)
    {
      v84 = *(v10 - 2);
      if (v84 >= *v10 && (*v10 < v84 || *(v10 - 1) >= v10[1]))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(v10, a2);
        v10 = result;
        goto LABEL_146;
      }
    }

    v85 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(v10, a2);
    if ((v86 & 1) == 0)
    {
      goto LABEL_144;
    }

    v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v10, v85);
    v10 = v85 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(v85 + 2, a2);
    if (result)
    {
      a4 = -v12;
      a2 = v85;
      if (v87)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if (!v87)
    {
LABEL_144:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,false>(v8, v85, a3, -v12, a5 & 1);
      v10 = v85 + 2;
LABEL_146:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(v10, v10 + 2, v10 + 4, v10 + 6);
  v95 = *(a2 - 2);
  v96 = v10[6];
  if (v95 < v96 || v96 >= v95 && *(a2 - 1) < v10[7])
  {
    v10[6] = v95;
    *(a2 - 2) = v96;
    v97 = v10[7];
    v10[7] = *(a2 - 1);
    *(a2 - 1) = v97;
    v98 = v10[6];
    v99 = v10[4];
    if (v98 >= v99)
    {
      if (v99 < v98)
      {
        return result;
      }

      v101 = v10[7];
      v100 = v10[5];
      if (v101 >= v100)
      {
        return result;
      }
    }

    else
    {
      v100 = v10[5];
      v101 = v10[7];
    }

    v10[4] = v98;
    v10[5] = v101;
    v10[6] = v99;
    v10[7] = v100;
    v102 = v10[2];
    if (v98 >= v102)
    {
      if (v102 < v98)
      {
        return result;
      }

      v103 = v10[3];
      if (v101 >= v103)
      {
        return result;
      }
    }

    else
    {
      v103 = v10[3];
    }

    v10[2] = v98;
    v10[3] = v101;
    v10[4] = v102;
    v10[5] = v103;
    v104 = *v10;
    if (v98 >= *v10)
    {
      if (v104 < v98)
      {
        return result;
      }

      v105 = v10[1];
      if (v101 >= v105)
      {
        return result;
      }
    }

    else
    {
      v105 = v10[1];
    }

    *v10 = v98;
    v10[1] = v101;
    v10[2] = v104;
    v10[3] = v105;
  }

  return result;
}

int *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(int *result, int *a2, int *a3, int *a4)
{
  v4 = *a2;
  v5 = *result;
  if (*a2 < *result || v5 >= v4 && a2[1] < result[1])
  {
    v6 = *a3;
    if (*a3 < v4 || v4 >= v6 && a3[1] < a2[1])
    {
      *result = v6;
      v7 = result + 1;
    }

    else
    {
      *result = v4;
      *a2 = v5;
      v7 = a2 + 1;
      v13 = result[1];
      result[1] = a2[1];
      a2[1] = v13;
      v14 = *a3;
      v5 = *a2;
      if (*a3 >= *a2 && (v5 < v14 || a3[1] >= v13))
      {
        goto LABEL_15;
      }

      *a2 = v14;
    }

    *a3 = v5;
    v10 = a3 + 1;
    goto LABEL_14;
  }

  v8 = *a3;
  if (*a3 < v4 || v4 >= v8 && a3[1] < a2[1])
  {
    *a2 = v8;
    *a3 = v4;
    v10 = a2 + 1;
    v9 = a2[1];
    a2[1] = a3[1];
    a3[1] = v9;
    v11 = *a2;
    v12 = *result;
    if (*a2 < *result || v12 >= v11 && *v10 < result[1])
    {
      *result = v11;
      v7 = result + 1;
      *a2 = v12;
LABEL_14:
      v15 = *v7;
      *v7 = *v10;
      *v10 = v15;
    }
  }

LABEL_15:
  v16 = *a4;
  v17 = *a3;
  if (*a4 < *a3 || v17 >= v16 && a4[1] < a3[1])
  {
    *a3 = v16;
    *a4 = v17;
    v18 = a3[1];
    a3[1] = a4[1];
    a4[1] = v18;
    v19 = *a3;
    v20 = *a2;
    if (*a3 < *a2 || v20 >= v19 && a3[1] < a2[1])
    {
      *a2 = v19;
      *a3 = v20;
      v21 = a2[1];
      a2[1] = a3[1];
      a3[1] = v21;
      v22 = *a2;
      v23 = *result;
      if (*a2 < *result || v23 >= v22 && a2[1] < result[1])
      {
        *result = v22;
        *a2 = v23;
        v24 = result[1];
        result[1] = a2[1];
        a2[1] = v24;
      }
    }
  }

  return result;
}

_DWORD *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(_DWORD *result, _DWORD *a2)
{
  if (result == a2)
  {
    return result;
  }

  v2 = result + 2;
  if (result + 2 == a2)
  {
    return result;
  }

  v3 = 0;
  v4 = result;
  do
  {
    v5 = v4;
    v4 = v2;
    v6 = v5[2];
    v7 = *v5;
    if (v6 >= *v5 && (v7 < v6 || v5[3] >= v5[1]))
    {
      goto LABEL_18;
    }

    v9 = v5[2];
    v8 = v5[3];
    v10 = v5[1];
    v5[2] = v7;
    v4[1] = v10;
    v11 = result;
    if (v5 == result)
    {
      goto LABEL_17;
    }

    v12 = v3;
    while (1)
    {
      v13 = *(result + v12 - 8);
      if (v13 <= v9)
      {
        break;
      }

      v14 = *(result + v12 - 4);
LABEL_11:
      v5 -= 2;
      v15 = (result + v12);
      *v15 = v13;
      v15[1] = v14;
      v12 -= 8;
      if (!v12)
      {
        v11 = result;
        goto LABEL_17;
      }
    }

    if (v13 >= v9)
    {
      v11 = (result + v12);
      v14 = *(result + v12 - 4);
      if (v14 <= v8)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v11 = v5;
LABEL_17:
    *v11 = v9;
    v11[1] = v8;
LABEL_18:
    v2 = v4 + 2;
    v3 += 8;
  }

  while (v4 + 2 != a2);
  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = result + 1;
      do
      {
        v4 = result;
        result = v2;
        v5 = v4[2];
        v6 = *v4;
        if (v5 < *v4 || v6 >= v5 && v4[3] < v4[1])
        {
          v7 = *result;
          v8 = result[1];
          for (i = v3; ; i -= 2)
          {
            v10 = *i;
            i[1] = v6;
            i[2] = v10;
            v6 = *(i - 3);
            if (v6 <= v7 && (v6 < v7 || *(i - 2) <= v8))
            {
              break;
            }
          }

          *(i - 1) = v7;
          *i = v8;
        }

        v2 = result + 2;
        v3 += 2;
      }

      while (result + 2 != a2);
    }
  }

  return result;
}

int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(int *a1, int *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 - 2);
  if (v4 > *a1 || v4 >= v3 && *(a2 - 1) > v2)
  {
    i = a1;
    do
    {
      v7 = i[2];
      i += 2;
      v6 = v7;
    }

    while (v7 <= v3 && (v6 < v3 || i[1] <= v2));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 2; v4 > v3 || v4 >= v3 && a2[1] > v2; a2 -= 2)
    {
      v8 = *(a2 - 2);
      v4 = v8;
    }
  }

  if (i < a2)
  {
    v9 = *i;
    v10 = *a2;
    do
    {
      *i = v10;
      *a2 = v9;
      v11 = i[1];
      i[1] = a2[1];
      a2[1] = v11;
      do
      {
        v12 = i[2];
        i += 2;
        v9 = v12;
      }

      while (v12 <= v3 && (v9 < v3 || i[1] <= v2));
      do
      {
        do
        {
          v13 = *(a2 - 2);
          a2 -= 2;
          v10 = v13;
          v14 = v13 < v3;
        }

        while (v13 > v3);
      }

      while (!v14 && a2[1] > v2);
    }

    while (i < a2);
  }

  if (i - 2 != a1)
  {
    *a1 = *(i - 2);
    a1[1] = *(i - 1);
  }

  *(i - 2) = v3;
  *(i - 1) = v2;
  return i;
}

_DWORD *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,int> *,std::__less<void,void> &>(int *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  while (1)
  {
    v5 = a1[v2 + 2];
    if (v5 >= v3 && (v5 > v3 || a1[v2 + 3] >= v4))
    {
      break;
    }

    v2 += 2;
  }

  v6 = &a1[v2 + 2];
  if (v2 * 4)
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v7 = v8;
    }

    while (v8 >= v3 && (v7 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v6 < a2)
    {
      do
      {
        v10 = *(a2 - 2);
        a2 -= 2;
        v9 = v10;
        if (v10 < v3)
        {
          break;
        }

        if (v9 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v6 < a2);
    }
  }

  if (v6 >= a2)
  {
    v13 = v6;
  }

  else
  {
    v12 = *a2;
    v13 = v6;
    v14 = a2;
    do
    {
      *v13 = v12;
      *v14 = v5;
      v15 = v13[1];
      v13[1] = v14[1];
      v14[1] = v15;
      do
      {
        do
        {
          v16 = v13[2];
          v13 += 2;
          v5 = v16;
          v17 = v16 <= v3;
        }

        while (v16 < v3);
      }

      while (v17 && v13[1] < v4);
      do
      {
        v18 = *(v14 - 2);
        v14 -= 2;
        v12 = v18;
      }

      while (v18 >= v3 && (v12 > v3 || v14[1] >= v4));
    }

    while (v13 < v14);
  }

  if (v13 - 2 != a1)
  {
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v13 - 2;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(int *a1, int *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 == 4)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
        return 1;
      }

      if (v4 != 5)
      {
        goto LABEL_20;
      }

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
      v8 = *(a2 - 2);
      v9 = a1[6];
      if (v8 >= v9 && (v9 < v8 || *(a2 - 1) >= a1[7]))
      {
        return 1;
      }

      a1[6] = v8;
      *(a2 - 2) = v9;
      v10 = a1[7];
      a1[7] = *(a2 - 1);
      *(a2 - 1) = v10;
      v11 = a1[6];
      v12 = a1[4];
      if (v11 >= v12)
      {
        if (v12 < v11)
        {
          return 1;
        }

        v14 = a1[7];
        v13 = a1[5];
        if (v14 >= v13)
        {
          return 1;
        }
      }

      else
      {
        v13 = a1[5];
        v14 = a1[7];
      }

      a1[4] = v11;
      a1[5] = v14;
      a1[6] = v12;
      a1[7] = v13;
      v15 = a1[2];
      if (v11 >= v15)
      {
        if (v15 < v11)
        {
          return 1;
        }

        v16 = a1[3];
        if (v14 >= v16)
        {
          return 1;
        }
      }

      else
      {
        v16 = a1[3];
      }

      a1[2] = v11;
      a1[3] = v14;
      a1[4] = v15;
      a1[5] = v16;
      v17 = *a1;
      if (v11 >= *a1)
      {
        if (v17 < v11)
        {
          return 1;
        }

        v18 = a1[1];
        if (v14 >= v18)
        {
          return 1;
        }
      }

      else
      {
        v18 = a1[1];
      }

      *a1 = v11;
      a1[1] = v14;
      result = 1;
      a1[2] = v17;
      a1[3] = v18;
      return result;
    }

    v20 = a1[2];
    v21 = *a1;
    if (v20 >= *a1 && (v21 < v20 || a1[3] >= a1[1]))
    {
      v30 = *(a2 - 2);
      if (v30 >= v20 && (v20 < v30 || *(a2 - 1) >= a1[3]))
      {
        return 1;
      }

      a1[2] = v30;
      *(a2 - 2) = v20;
      v24 = a1 + 3;
      v31 = a1[3];
      a1[3] = *(a2 - 1);
      *(a2 - 1) = v31;
      v32 = a1[2];
      v33 = *a1;
      if (v32 >= *a1 && (v33 < v32 || a1[3] >= a1[1]))
      {
        return 1;
      }

      *a1 = v32;
      a1[2] = v33;
      v23 = a1 + 1;
      goto LABEL_60;
    }

    v22 = *(a2 - 2);
    if (v22 < v20)
    {
LABEL_19:
      *a1 = v22;
      v23 = a1 + 1;
      *(a2 - 2) = v21;
      v24 = a2 - 1;
      goto LABEL_60;
    }

    if (v20 >= v22)
    {
      v38 = a1[3];
      if (*(a2 - 1) < v38)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v38 = a1[3];
    }

    v40 = a1[1];
    a1[3] = v40;
    *a1 = v20;
    a1[1] = v38;
    a1[2] = v21;
    v41 = *(a2 - 2);
    if (v41 >= v21 && (v21 < v41 || *(a2 - 1) >= v40))
    {
      return 1;
    }

    a1[2] = v41;
    *(a2 - 2) = v21;
    v24 = a2 - 1;
    v23 = a1 + 3;
LABEL_60:
    v42 = *v23;
    *v23 = *v24;
    *v24 = v42;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (v5 < *a1 || v6 >= v5 && *(a2 - 1) < a1[1])
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_20:
  v25 = a1 + 4;
  v26 = a1[2];
  v27 = *a1;
  if (v26 < *a1 || v27 >= v26 && a1[3] < a1[1])
  {
    v28 = *v25;
    if (*v25 < v26)
    {
LABEL_22:
      *a1 = v28;
      a1[4] = v27;
      v29 = a1 + 1;
LABEL_64:
      v37 = a1 + 5;
      goto LABEL_65;
    }

    if (v26 >= v28)
    {
      v39 = a1[3];
      if (a1[5] < v39)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v39 = a1[3];
    }

    v43 = a1[1];
    a1[3] = v43;
    v29 = a1 + 3;
    *a1 = v26;
    a1[1] = v39;
    a1[2] = v27;
    if (v28 >= v27 && (v27 < v28 || a1[5] >= v43))
    {
      goto LABEL_66;
    }

    a1[2] = v28;
    a1[4] = v27;
    goto LABEL_64;
  }

  v34 = *v25;
  if (*v25 < v26)
  {
    v35 = a1[3];
    v36 = a1[5];
LABEL_33:
    a1[3] = v36;
    v37 = a1 + 3;
    a1[2] = v34;
    a1[4] = v26;
    a1[5] = v35;
    if (v34 >= v27 && (v27 < v34 || v36 >= a1[1]))
    {
      goto LABEL_66;
    }

    *a1 = v34;
    a1[2] = v27;
    v29 = a1 + 1;
LABEL_65:
    v44 = *v29;
    *v29 = *v37;
    *v37 = v44;
    goto LABEL_66;
  }

  if (v26 >= v34)
  {
    v36 = a1[5];
    v35 = a1[3];
    if (v36 < v35)
    {
      goto LABEL_33;
    }
  }

LABEL_66:
  v45 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  while (2)
  {
    v48 = *v25;
    if (*v45 >= *v25 && (v48 < *v45 || v45[1] >= v25[1]))
    {
      goto LABEL_81;
    }

    v49 = *v45;
    v50 = v45[1];
    *v45 = v48;
    v45[1] = v25[1];
    v51 = v46;
    while (1)
    {
      v52 = a1 + v51;
      v53 = *(a1 + v51 + 8);
      if (v53 <= v49)
      {
        break;
      }

      v54 = *(v52 + 3);
LABEL_74:
      *(v52 + 4) = v53;
      *(a1 + v51 + 20) = v54;
      v51 -= 8;
      if (v51 == -16)
      {
        v55 = a1;
        goto LABEL_80;
      }
    }

    if (v53 >= v49)
    {
      v54 = *(a1 + v51 + 12);
      if (v54 > v50)
      {
        goto LABEL_74;
      }
    }

    v55 = (a1 + v51 + 16);
LABEL_80:
    *v55 = v49;
    v55[1] = v50;
    if (++v47 != 8)
    {
LABEL_81:
      v25 = v45;
      v46 += 8;
      v45 += 2;
      if (v45 == a2)
      {
        return 1;
      }

      continue;
    }

    return v45 + 2 == a2;
  }
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *,std::pair<int,int> *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(a1, a4, v8, v11);
        v11 -= 2;
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
        v13 = *v12;
        v14 = *a1;
        if (*v12 < *a1 || v14 >= v13 && v12[1] < a1[1])
        {
          *v12 = v14;
          *a1 = v13;
          v15 = v12[1];
          v12[1] = a1[1];
          a1[1] = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v16 = a2 - 2;
      do
      {
        v18 = *a1;
        v17 = a1[1];
        v19 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(a1, a4, v8);
        if (v16 == v19)
        {
          *v19 = v18;
          v19[1] = v17;
        }

        else
        {
          *v19 = *v16;
          v19[1] = v16[1];
          *v16 = v18;
          v16[1] = v17;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(a1, (v19 + 2), a4, ((v19 + 2) - a1) >> 3);
        }

        v16 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[2];
        if (*v8 < v10 || v10 >= *v8 && v8[1] < v8[3])
        {
          v8 += 2;
          v7 = v9;
        }
      }

      v11 = *v8;
      if (*v8 >= *a4 && (*a4 < v11 || v8[1] >= a4[1]))
      {
        v12 = *a4;
        v13 = a4[1];
        *a4 = v11;
        a4[1] = v8[1];
        if (v5 >= v7)
        {
          while (1)
          {
            v15 = 2 * v7;
            v7 = (2 * v7) | 1;
            v14 = (result + 8 * v7);
            v16 = v15 + 2;
            if (v16 < a3)
            {
              v17 = v14[2];
              if (*v14 < v17 || v17 >= *v14 && v14[1] < v14[3])
              {
                v14 += 2;
                v7 = v16;
              }
            }

            v18 = *v14;
            if (*v14 < v12 || v18 <= v12 && v14[1] < v13)
            {
              break;
            }

            *v8 = v18;
            v8[1] = v14[1];
            v8 = v14;
            if (v5 < v7)
            {
              goto LABEL_13;
            }
          }
        }

        v14 = v8;
LABEL_13:
        *v14 = v12;
        v14[1] = v13;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[2 * v3];
    result = v5 + 2;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[4];
      v9 = v5[2];
      if (v9 < v8 || v8 >= v9 && v5[3] < v5[5])
      {
        result = v5 + 4;
        v3 = v7;
      }
    }

    *v4 = *result;
    v4[1] = result[1];
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<int,int> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 8 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 8);
    if (*v6 < v8 || v8 >= v7 && v6[1] < *(a2 - 4))
    {
      v9 = *(a2 - 8);
      v10 = *(a2 - 4);
      *(a2 - 8) = v7;
      *(a2 - 4) = v6[1];
      if (v4 >= 2)
      {
        while (1)
        {
          v12 = v5 - 1;
          v5 = (v5 - 1) >> 1;
          v11 = (result + 8 * v5);
          v13 = *v11;
          if (*v11 >= v9)
          {
            if (v13 > v9)
            {
              break;
            }

            v14 = v11[1];
            if (v14 >= v10)
            {
              break;
            }
          }

          else
          {
            v14 = v11[1];
          }

          *v6 = v13;
          v6[1] = v14;
          v6 = (result + 8 * v5);
          if (v12 <= 1)
          {
            goto LABEL_10;
          }
        }
      }

      v11 = v6;
LABEL_10:
      *v11 = v9;
      v11[1] = v10;
    }
  }

  return result;
}

__int128 *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>(__int128 *result, unint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  if (*a2 < *result || *a2 <= *result && ((v17 = a2[1], v18 = *(result + 1), v17 < v18) || v17 <= v18 && *(a2 + 16) < *(result + 16)))
  {
    if (*a3 < v3 || *a3 <= v3 && ((v21 = *(a3 + 1), v22 = a2[1], v21 < v22) || v21 <= v22 && *(a3 + 16) < *(a2 + 16)))
    {
      v4 = *(result + 2);
      v5 = *result;
      v6 = *(a3 + 2);
      *result = *a3;
      *(result + 2) = v6;
    }

    else
    {
      v13 = *(result + 2);
      v14 = *result;
      v15 = a2[2];
      *result = *a2;
      *(result + 2) = v15;
      *a2 = v14;
      a2[2] = v13;
      if (*a3 >= *a2)
      {
        if (*a3 > *a2)
        {
          return result;
        }

        v25 = *(a3 + 1);
        v26 = a2[1];
        if (v25 >= v26 && (v25 > v26 || *(a3 + 16) >= *(a2 + 16)))
        {
          return result;
        }
      }

      v4 = a2[2];
      v5 = *a2;
      v16 = *(a3 + 2);
      *a2 = *a3;
      a2[2] = v16;
    }

    *a3 = v5;
    *(a3 + 2) = v4;
    return result;
  }

  if (*a3 < v3 || *a3 <= v3 && ((v19 = *(a3 + 1), v20 = a2[1], v19 < v20) || v19 <= v20 && *(a3 + 16) < *(a2 + 16)))
  {
    v7 = a2[2];
    v8 = *a2;
    v9 = *(a3 + 2);
    *a2 = *a3;
    a2[2] = v9;
    *a3 = v8;
    *(a3 + 2) = v7;
    if (*a2 < *result || *a2 <= *result && ((v23 = a2[1], v24 = *(result + 1), v23 < v24) || v23 <= v24 && *(a2 + 16) < *(result + 16)))
    {
      v10 = *(result + 2);
      v11 = *result;
      v12 = a2[2];
      *result = *a2;
      *(result + 2) = v12;
      *a2 = v11;
      a2[2] = v10;
    }
  }

  return result;
}

__int128 *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>(uint64_t a1, unint64_t *a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>(a1, a2, a3);
  if (*a4 < *a3 || *a4 <= *a3 && ((v20 = *(a4 + 1), v21 = *(a3 + 8), v20 < v21) || v20 <= v21 && *(a4 + 16) < *(a3 + 16)))
  {
    v11 = *(a3 + 16);
    v12 = *a3;
    v13 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 16) = v13;
    *a4 = v12;
    *(a4 + 2) = v11;
    if (*a3 < *a2 || *a3 <= *a2 && ((v22 = *(a3 + 8), v23 = a2[1], v22 < v23) || v22 <= v23 && *(a3 + 16) < *(a2 + 16)))
    {
      v14 = a2[2];
      v15 = *a2;
      v16 = *(a3 + 16);
      *a2 = *a3;
      a2[2] = v16;
      *a3 = v15;
      *(a3 + 16) = v14;
      if (*a2 < *a1 || *a2 <= *a1 && ((v42 = a2[1], v43 = *(a1 + 8), v42 < v43) || v42 <= v43 && *(a2 + 16) < *(a1 + 16)))
      {
        v17 = *(a1 + 16);
        v18 = *a1;
        v19 = a2[2];
        *a1 = *a2;
        *(a1 + 16) = v19;
        *a2 = v18;
        a2[2] = v17;
      }
    }
  }

  if (*a5 < *a4 || *a5 <= *a4 && ((v36 = *(a5 + 1), v37 = *(a4 + 1), v36 < v37) || v36 <= v37 && *(a5 + 16) < *(a4 + 16)))
  {
    v24 = *(a4 + 2);
    v25 = *a4;
    v26 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v26;
    *a5 = v25;
    *(a5 + 2) = v24;
    if (*a4 < *a3 || *a4 <= *a3 && ((v38 = *(a4 + 1), v39 = *(a3 + 8), v38 < v39) || v38 <= v39 && *(a4 + 16) < *(a3 + 16)))
    {
      v27 = *(a3 + 16);
      v28 = *a3;
      v29 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 16) = v29;
      *a4 = v28;
      *(a4 + 2) = v27;
      if (*a3 < *a2 || *a3 <= *a2 && ((v40 = *(a3 + 8), v41 = a2[1], v40 < v41) || v40 <= v41 && *(a3 + 16) < *(a2 + 16)))
      {
        v30 = a2[2];
        v31 = *a2;
        v32 = *(a3 + 16);
        *a2 = *a3;
        a2[2] = v32;
        *a3 = v31;
        *(a3 + 16) = v30;
        if (*a2 < *a1 || *a2 <= *a1 && ((v44 = a2[1], v45 = *(a1 + 8), v44 < v45) || v44 <= v45 && *(a2 + 16) < *(a1 + 16)))
        {
          v33 = *(a1 + 16);
          v34 = *a1;
          v35 = a2[2];
          *a1 = *a2;
          *(a1 + 16) = v35;
          *a2 = v34;
          a2[2] = v33;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>(a1, (a1 + 24), (a2 - 24));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>(a1, (a1 + 24), (a1 + 48));
        v21 = (a2 - 24);
        v22 = *(a2 - 24);
        v23 = *(a1 + 48);
        if (v22 < v23 || v22 <= v23 && ((v36 = *(a2 - 16), v37 = *(a1 + 56), v36 < v37) || v36 <= v37 && *(a2 - 8) < *(a1 + 64)))
        {
          v24 = *(a1 + 64);
          v25 = *(a1 + 48);
          v26 = *(a2 - 8);
          *(a1 + 48) = *v21;
          *(a1 + 64) = v26;
          *v21 = v25;
          *(a2 - 8) = v24;
          v27 = *(a1 + 48);
          v28 = *(a1 + 24);
          if (v27 < v28 || v27 <= v28 && ((v38 = *(a1 + 56), v39 = *(a1 + 32), v38 < v39) || v38 <= v39 && *(a1 + 64) < *(a1 + 40)))
          {
            v29 = *(a1 + 40);
            v30 = *(a1 + 24);
            *(a1 + 24) = *(a1 + 48);
            *(a1 + 40) = *(a1 + 64);
            *(a1 + 48) = v30;
            *(a1 + 64) = v29;
            v31 = *(a1 + 24);
            if (v31 < *a1 || v31 <= *a1 && ((v41 = *(a1 + 32), v42 = *(a1 + 8), v41 < v42) || v41 <= v42 && *(a1 + 40) < *(a1 + 16)))
            {
              v32 = *(a1 + 16);
              v33 = *a1;
              *a1 = *(a1 + 24);
              *(a1 + 16) = *(a1 + 40);
              *(a1 + 24) = v33;
              *(a1 + 40) = v32;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>(a1, (a1 + 24), a1 + 48, (a1 + 72), (a2 - 24));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 24);
      v6 = *(a2 - 24);
      if (v6 < *a1 || v6 <= *a1 && ((v34 = *(a2 - 16), v35 = *(a1 + 8), v34 < v35) || v34 <= v35 && *(a2 - 8) < *(a1 + 16)))
      {
        v7 = *(a1 + 16);
        v8 = *a1;
        v9 = *(a2 - 8);
        *a1 = *v5;
        *(a1 + 16) = v9;
        *v5 = v8;
        *(a2 - 8) = v7;
      }

      return 1;
    }
  }

  v10 = a1 + 48;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::$_0 &,-[RKEventIdentifier _identifyStrings:otherDateCount:otherDates:]::Delta *,0>(a1, (a1 + 24), (a1 + 48));
  v11 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v12 = 0;
  v13 = 0;
  do
  {
    v14 = *v11;
    if (*v11 >= *v10)
    {
      if (*v11 > *v10)
      {
        goto LABEL_26;
      }

      v15 = *(v11 + 8);
      v20 = *(v10 + 8);
      if (v15 >= v20 && (v15 > v20 || *(v11 + 16) >= *(v10 + 16)))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = *(v11 + 8);
    }

    v16 = *(v11 + 16);
    *v43 = *(v11 + 17);
    *&v43[3] = *(v11 + 20);
    *v11 = *v10;
    *(v11 + 16) = *(v10 + 16);
    v17 = v12;
    while (1)
    {
      v18 = *(a1 + v17 + 24);
      if (v14 >= v18)
      {
        if (v14 > v18)
        {
          goto LABEL_23;
        }

        v19 = *(a1 + v17 + 32);
        if (v15 >= v19)
        {
          break;
        }
      }

LABEL_21:
      v10 -= 24;
      *(a1 + v17 + 48) = *(a1 + v17 + 24);
      *(a1 + v17 + 64) = *(a1 + v17 + 40);
      v17 -= 24;
      if (v17 == -48)
      {
        v10 = a1;
        goto LABEL_23;
      }
    }

    if (v15 <= v19)
    {
      if (v16 >= *(a1 + v17 + 40))
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }

    v10 = a1 + v17 + 48;
LABEL_23:
    *v10 = v14;
    *(v10 + 8) = v15;
    *(v10 + 16) = v16;
    *(v10 + 17) = *v43;
    *(v10 + 20) = *&v43[3];
    if (++v13 == 8)
    {
      return v11 + 24 == a2;
    }

LABEL_26:
    v10 = v11;
    v12 += 24;
    v11 += 24;
  }

  while (v11 != a2);
  return 1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RKEventIdentifierRange>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_2620C97A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2620CEEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 192), 8);
  _Unwind_Resume(a1);
}

void stripCharacterSet(void *a1, void *a2)
{
  v9 = a1;
  v3 = a2;
  v4 = [v9 length];
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [v9 rangeOfCharacterFromSet:v3 options:4 range:{0, v5}];
      if (v6 == 0x7FFFFFFFFFFFFFFFLL || v7 == 0)
      {
        break;
      }

      v5 = v6;
      [v9 deleteCharactersInRange:{v6, v7}];
    }

    while (v5);
  }
}

void sub_2620CF888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void stripEmojiSkinTones(void *a1)
{
  v1 = stripEmojiSkinTones_onceToken;
  v2 = a1;
  v3 = v2;
  if (v1 != -1)
  {
    stripEmojiSkinTones_cold_1();
    v2 = v3;
  }

  stripCharacterSet(v2, stripEmojiSkinTones_sEmojiSkinToneCharacterSet);
}

void stripDiacritics(void *a1)
{
  v1 = stripDiacritics_onceToken;
  v2 = a1;
  theString = v2;
  if (v1 != -1)
  {
    stripDiacritics_cold_1();
    v2 = theString;
  }

  CFStringNormalize(v2, kCFStringNormalizationFormD);
  stripCharacterSet(theString, stripDiacritics_sDiacriticCharacterSet);
  CFStringNormalize(theString, kCFStringNormalizationFormC);
}

void sub_2620D0150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __stripEmojiSkinTones_block_invoke()
{
  stripEmojiSkinTones_sEmojiSkinToneCharacterSet = [MEMORY[0x277CCA900] characterSetWithRange:{127995, 5}];

  return MEMORY[0x2821F96F8]();
}

uint64_t __normalizeWhitespace_block_invoke()
{
  v0 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v1 = normalizeWhitespace_sWhitespaceCharacterSet;
  normalizeWhitespace_sWhitespaceCharacterSet = v0;

  normalizeWhitespace_sNonWhitespaceCharacterSet = [normalizeWhitespace_sWhitespaceCharacterSet invertedSet];

  return MEMORY[0x2821F96F8]();
}

void __stripDiacritics_block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] characterSetWithRange:{768, 56}];
  [v0 addCharactersInRange:{825, 22}];
  [v0 addCharactersInRange:{848, 8}];
  [v0 addCharactersInRange:{861, 6}];
  [v0 addCharactersInRange:{1155, 5}];
  [v0 addCharactersInRange:{1425, 45}];
  [v0 addCharactersInRange:{1471, 1}];
  [v0 addCharactersInRange:{1473, 2}];
  [v0 addCharactersInRange:{1476, 1}];
  [v0 addCharactersInRange:{1611, 8}];
  [v0 addCharactersInRange:{1623, 2}];
  [v0 addCharactersInRange:{1759, 2}];
  [v0 addCharactersInRange:{1770, 3}];
  [v0 addCharactersInRange:{2275, 28}];
  [v0 addCharactersInRange:{3655, 6}];
  [v0 addCharactersInRange:{3662, 1}];
  [v0 addCharactersInRange:{12330, 6}];
  v1 = stripDiacritics_sDiacriticCharacterSet;
  stripDiacritics_sDiacriticCharacterSet = v0;
}

void sub_2620D1284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  v2 = MEMORY[0x28210FE18](theString, theIndex);
  result.length = v3;
  result.location = v2;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x28210FEB8](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}