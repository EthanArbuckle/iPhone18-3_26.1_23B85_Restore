void sub_265F55B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__hash_table<std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>>>::~__hash_table(v13 + 40);

  _Unwind_Resume(a1);
}

uint64_t SWCPatternStorage::evaluate(SWCPatternStorage *this, NSURLComponents *a2, const SWCFNMatch *a3, audit_token_t *a4)
{
  v93 = *MEMORY[0x277D85DE8];
  if (!a2 || (v6 = this, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v53 = [MEMORY[0x277CCA890] currentHandler];
    v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"SWCPatternMatchResult SWCPatternStorage::evaluate(NSURLComponents *const __strong, const SWCFNMatch *, const audit_token_t *) const"}];
    [v53 handleFailureInFunction:v50 file:@"SWCPattern.mm" lineNumber:1503 description:{@"Invalid parameter not satisfying: %@", @"components && [components isKindOfClass:[NSURLComponents class]]"}];
    v6 = this;
  }

  context = objc_autoreleasePoolPush();
  cStrings = v6->cStrings;
  v8 = *v6;
  LOBYTE(v67) = 0;
  v69 = 0;
  if ((v8 & 2) != 0)
  {
    v67 = cStrings;
    v68 = strlen(cStrings);
    v69 = 1;
    cStrings += v68 + 1;
  }

  LOBYTE(v64) = 0;
  v66 = 0;
  if ((v8 & 4) != 0)
  {
    v64 = cStrings;
    v65 = strlen(cStrings);
    v66 = 1;
    cStrings += v65 + 1;
  }

  LOBYTE(v61) = 0;
  v63 = 0;
  v9 = ((v8 >> 3) & 3) - 1;
  if (v9 <= 1)
  {
    v61 = cStrings;
    v62 = strlen(cStrings);
    v63 = 1;
    cStrings += v62 + 1;
  }

  if ((v8 & 0x80) != 0)
  {
    v59[0] = cStrings;
    v59[1] = strlen(cStrings);
    v60 = 1;
    if (!SWCPatternStorage::_CheckEntitlement(a4, v59))
    {
      v87 = "com.apple.private.associated-domains.ignore-required-entitlements";
      v88 = 65;
      if (!SWCPatternStorage::_CheckEntitlement(a4, &v87))
      {
        goto LABEL_43;
      }
    }
  }

  v57 = (v8 >> 1) & 0x10;
  if ((v8 & 2) != 0)
  {
    if ((v8 & 0x40) != 0)
    {
      [(NSURLComponents *)a2 path];
    }

    else
    {
      [(NSURLComponents *)a2 percentEncodedPath];
    }
    v10 = ;
    v11 = v10;
    v12 = &stru_2877A4C50;
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v56 = SWCPatternStorage::_EvaluateString(v13, &v67, a3, v57, 1);
    if ((v8 & 4) == 0)
    {
LABEL_32:
      if (v9 >= 2)
      {
        v20 = this;
        goto LABEL_39;
      }

      if (v56)
      {
LABEL_34:
        v20 = this;
        v21 = (*this >> 3) & 3;
        if (v21 == 1)
        {
          if ((v8 & 0x40) != 0)
          {
            [(NSURLComponents *)a2 query];
          }

          else
          {
            [(NSURLComponents *)a2 percentEncodedQuery];
          }
          v24 = ;
          v47 = v24;
          v48 = &stru_2877A4C50;
          if (v24)
          {
            v48 = v24;
          }

          v46 = v48;

          v20 = this;
          v45 = SWCPatternStorage::_EvaluateString(v46, &v61, a3, v57, 0);
          goto LABEL_69;
        }

        if (v21 == 2)
        {
          if ((v8 & 0x40) != 0)
          {
            [(NSURLComponents *)a2 queryItems];
          }

          else
          {
            [(NSURLComponents *)a2 percentEncodedQueryItems];
          }
          v22 = ;
          v26 = v22;
          v27 = MEMORY[0x277CBEBF8];
          if (v22)
          {
            v27 = v22;
          }

          v52 = v27;

          v82 = 0;
          v83 = &v82;
          v84 = 0x2020000000;
          v85 = 200;
          v51 = objc_autoreleasePoolPush();
          v87 = 0;
          v88 = &v87;
          v89 = 0x43012000000;
          v90 = __Block_byref_object_copy_;
          v91 = __Block_byref_object_dispose_;
          v92 = &unk_265F70387;
          v28 = SWCPatternStorage::_ReconstituteQueryJSON(&v61);
          if (v28)
          {
            v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v30 = v52;
            v31 = [(__CFString *)v30 countByEnumeratingWithState:&v78 objects:v86 count:16];
            if (v31)
            {
              v32 = *v79;
              do
              {
                for (i = 0; i != v31; ++i)
                {
                  if (*v79 != v32)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v34 = *(*(&v78 + 1) + 8 * i);
                  v35 = [v34 name];
                  v36 = [v34 value];
                  v37 = v36;
                  if (v36)
                  {
                    v38 = v36;
                  }

                  else
                  {
                    v38 = &stru_2877A4C50;
                  }

                  v39 = v38;

                  v40 = [v28 objectForKeyedSubscript:v35];
                  SWCGetFastUTF8String<1024ul>(v70, v40, (v88 + 48));

                  if (v71 == 1)
                  {
                    v41 = v83[3];
                    v42 = SWCPatternStorage::_EvaluateString(v39, v70, a3, v57, 0);
                    if (v41 >= v42)
                    {
                      v43 = v42;
                    }

                    else
                    {
                      v43 = v41;
                    }

                    v83[3] = v43;
                  }

                  [v29 addObject:v35];
                }

                v31 = [(__CFString *)v30 countByEnumeratingWithState:&v78 objects:v86 count:16];
              }

              while (v31);
            }

            v70[0] = MEMORY[0x277D85DD0];
            v70[1] = 3221225472;
            v71 = ___ZN17SWCPatternStorage18_EvaluateQueryJSONEP7NSArrayIP14NSURLQueryItemERKNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEPK10SWCFNMatchi_block_invoke;
            v72 = &unk_279BBDE20;
            v44 = v29;
            v73 = v44;
            v74 = &v87;
            v75 = &v82;
            v76 = a3;
            v77 = v57;
            [v28 enumerateKeysAndObjectsUsingBlock:v70];
          }

          _Block_object_dispose(&v87, 8);
          objc_autoreleasePoolPop(v51);
          v45 = v83[3];
          _Block_object_dispose(&v82, 8);
          v46 = v52;
          v20 = this;
LABEL_69:
          v23 = v56;
          if (v45 < v56)
          {
            v23 = v45;
          }

LABEL_72:
          objc_autoreleasePoolPop(context);
          result = v23;
          if (v23 != 200)
          {
            goto LABEL_76;
          }

          goto LABEL_73;
        }

LABEL_39:
        v23 = v56;
        goto LABEL_72;
      }

LABEL_43:
      objc_autoreleasePoolPop(context);
      result = 0;
      goto LABEL_76;
    }

    if (!v56)
    {
      goto LABEL_43;
    }

LABEL_24:
    if ((v8 & 0x40) != 0)
    {
      [(NSURLComponents *)a2 fragment];
    }

    else
    {
      [(NSURLComponents *)a2 percentEncodedFragment];
    }
    v14 = ;
    v15 = v14;
    v16 = &stru_2877A4C50;
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    v18 = SWCPatternStorage::_EvaluateString(v17, &v64, a3, v57, 0);
    v19 = v56;
    if (v18 < v56)
    {
      v19 = v18;
    }

    v56 = v19;

    goto LABEL_32;
  }

  if ((v8 & 4) != 0)
  {
    v56 = 200;
    goto LABEL_24;
  }

  if (v9 < 2)
  {
    v56 = 200;
    goto LABEL_34;
  }

  objc_autoreleasePoolPop(context);
  v20 = this;
LABEL_73:
  if (*v20)
  {
    result = 100;
  }

  else
  {
    result = 200;
  }

LABEL_76:
  v49 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SWCPatternStorage::getSize(SWCPatternStorage *this)
{
  cStrings = this->cStrings;
  v2 = *this;
  if ((v2 & 2) != 0)
  {
    v3 = &cStrings[strlen(this->cStrings) + 1];
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = this->cStrings;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    v3 += strlen(v3) + 1;
  }

LABEL_6:
  if (((v2 >> 3) & 3) - 1 <= 1)
  {
    v3 += strlen(v3) + 1;
  }

  if ((v2 & 0x80) != 0)
  {
    v3 += strlen(v3) + 1;
  }

  return v3 - cStrings + 1;
}

void sub_265F56EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__hash_table<std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>>>::~__hash_table(v13 + 40);

  _Unwind_Resume(a1);
}

uint64_t SWCSubstitutionVariable::getSize(SWCSubstitutionVariable *this)
{
  if (*this)
  {
    return 1;
  }

  cStrings = this->cStrings;
  for (i = &this->cStrings[strlen(this->cStrings)]; ; i = &v4[strlen(v4)])
  {
    v5 = i[1];
    v4 = i + 1;
    if (!v5)
    {
      break;
    }
  }

  return v4 - cStrings + 2;
}

id SWCSubstitutionVariable::getValuesNoCopy(SWCSubstitutionVariable *this)
{
  if (*this)
  {
    v1 = 0;
  }

  else
  {
    v1 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ((*this & 1) == 0)
    {
      v3 = strlen(this->cStrings);
      if ((*this & 2) != 0)
      {
        v11 = "";
        v12 = 0;
        v4 = SWCGetNSStringFromStringViewNoCopy(&v11);
        if (v4)
        {
          [v1 addObject:v4];
        }
      }

      v5 = &this->cStrings[v3 + 1];
      if (*v5)
      {
        v6 = *this;
        do
        {
          if ((v6 & 4) != 0)
          {
            v7 = 1;
          }

          else
          {
            v7 = strlen(v5);
          }

          v11 = v5;
          v12 = v7;
          v8 = SWCGetNSStringFromStringViewNoCopy(&v11);
          if (v8)
          {
            [v1 addObject:v8];
          }

          v6 = *this;
          if ((*this & 4) != 0)
          {
            v9 = 1;
          }

          else
          {
            v9 = v7 + 1;
          }

          v5 += v9;
        }

        while (*v5);
      }
    }
  }

  return v1;
}

id SWCSubstitutionVariable::getNameNoCopy(SWCSubstitutionVariable *this)
{
  if (*this)
  {
    v3 = 0;
  }

  else
  {
    v5[4] = v1;
    v6 = v2;
    v5[0] = this->cStrings;
    v5[1] = strlen(this->cStrings);
    v3 = SWCGetNSStringFromStringViewNoCopy(v5);
  }

  return v3;
}

uint64_t SWCPatternStorage::_EvaluateString(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a1;
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"static SWCPatternMatchResult SWCPatternStorage::_EvaluateString(NSString *__strong, const std::string_view &, const SWCFNMatch *, int, BOOL)"}];
    [v16 handleFailureInFunction:v17 file:@"SWCPattern.mm" lineNumber:1252 description:{@"Invalid parameter not satisfying: %@", @"component != nil"}];

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_24:
    v18 = [MEMORY[0x277CCA890] currentHandler];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"static SWCPatternMatchResult SWCPatternStorage::_EvaluateString(NSString *__strong, const std::string_view &, const SWCFNMatch *, int, BOOL)"}];
    [v18 handleFailureInFunction:v19 file:@"SWCPattern.mm" lineNumber:1253 description:{@"Invalid parameter not satisfying: %@", @"fnmatch != NULL"}];

    goto LABEL_3;
  }

  if (!a3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v10 = *(a2 + 8);
  if (v10 == 1 && **a2 == 42)
  {
    v11 = 200;
  }

  else
  {
    if (a5)
    {
      v12 = [_SWCPattern _normalizedURLPath:v9];

      v10 = *(a2 + 8);
      v9 = v12;
    }

    if (v10)
    {
      if (*(a3 + 32))
      {
        v20 = [MEMORY[0x277CCA890] currentHandler];
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL SWCFNMatch::execute(const std::string_view &, NSString *const __strong, int) const"}];
        [v20 handleFailureInFunction:v21 file:@"SWCPattern.mm" lineNumber:2258 description:{@"Entered SWCFNMatch::execute() with non-zero recursion depth (%i).", *(a3 + 32)}];
      }

      SWCGetFastUTF8String<1024ul>(v24, v9, v25);
      if (v24[16] == 1)
      {
        *(a3 + 8) = *a2;
        *a3 = 0;
        v13 = SWCFNMatch::_execute(a3, a2, v24, a4);
      }

      else
      {
        v13 = 0;
      }

      if (*(a3 + 32))
      {
        v22 = [MEMORY[0x277CCA890] currentHandler];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL SWCFNMatch::execute(const std::string_view &, NSString *const __strong, int) const"}];
        [v22 handleFailureInFunction:v23 file:@"SWCPattern.mm" lineNumber:2267 description:{@"Exited SWCFNMatch::execute() with non-zero recursion depth (%i).", *(a3 + 32)}];
      }

      if (v13)
      {
        v11 = 200;
      }

      else
      {
        v11 = 0;
      }
    }

    else if ([v9 length])
    {
      v11 = 0;
    }

    else
    {
      v11 = 200;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

id SWCPatternStorage::_ReconstituteQueryJSON(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:a1[1] + 2];
  [v3 appendBytes:"{" length:1];
  [v3 appendBytes:*a1 length:a1[1]];
  [v3 appendBytes:"}" length:1];
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:0];
  if (v4 && _NSIsNSDictionary())
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 1;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___ZN17SWCPatternStorage22_ReconstituteQueryJSONERKNSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE_block_invoke;
    v7[3] = &unk_279BBDDF8;
    v7[4] = &v8;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
    if (*(v9 + 24) == 1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v2);

  return v5;
}

void sub_265F5A320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZN17SWCPatternStorage22_ReconstituteQueryJSONERKNSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = _NSIsNSString();
  if (!result || (result = _NSIsNSString(), (result & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void SWCGetFastUTF8String<1024ul>(uint64_t a1, void *a2, const char *a3)
{
  v5 = a2;
  v6 = v5;
  *a1 = 0;
  *(a1 + 16) = 0;
  if (v5)
  {
    v9 = v5;
    if ((v5 & 0x8000000000000000) != 0 || (CStringPtr = CFStringGetCStringPtr(v5, 0x8000100u), v6 = v9, !CStringPtr))
    {
      if (![v6 getCString:a3 maxLength:1024 encoding:4])
      {
        a3 = [v9 UTF8String];
      }

      v8 = strlen(a3);
      *(a1 + 16) = 1;
      *a1 = a3;
    }

    else
    {
      *a1 = CStringPtr;
      v8 = strlen(CStringPtr);
      *(a1 + 16) = 1;
    }

    *(a1 + 8) = v8;
    v6 = v9;
  }
}

void ___ZN17SWCPatternStorage18_EvaluateQueryJSONEP7NSArrayIP14NSURLQueryItemERKNSt3__117basic_string_viewIcNS5_11char_traitsIcEEEEPK10SWCFNMatchi_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [*(a1 + 32) member:a2];

  if (!v5)
  {
    SWCGetFastUTF8String<1024ul>(v9, a3, (*(*(a1 + 40) + 8) + 48));
    if (v9[16] == 1)
    {
      v6 = *(*(*(a1 + 48) + 8) + 24);
      v7 = SWCPatternStorage::_EvaluateString(&stru_2877A4C50, v9, *(a1 + 56), *(a1 + 64), 0);
      if (v6 >= v7)
      {
        v8 = v7;
      }

      else
      {
        v8 = v6;
      }

      *(*(*(a1 + 48) + 8) + 24) = v8;
    }
  }
}

BOOL SWCPatternStorage::_CheckEntitlement(__int128 *a1, const char **a2)
{
  if (qword_280B21750 && (+[_SWCPrefs sharedPrefs](_SWCPrefs, "sharedPrefs"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isAppleInternal], v4, v5))
  {
    v6 = xpc_dictionary_get_value(qword_280B21750, *a2);
  }

  else if (a1)
  {
    v12 = *a1;
    v13 = a1[1];
    v7 = *a2;
    v6 = xpc_copy_entitlement_for_token();
  }

  else
  {
    v8 = *a2;
    v6 = xpc_copy_entitlement_for_self();
  }

  v9 = v6;
  v10 = v6 && MEMORY[0x266773A10](v6) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v9);

  return v10;
}

uint64_t std::string_view::find[abi:nn200100](char *__s, uint64_t a2)
{
  v2 = __s;
  v3 = &__s[a2];
  if (a2 >= 2)
  {
    do
    {
      v4 = memchr(__s, 36, a2 - 1);
      if (!v4)
      {
        break;
      }

      if (*v4 == 10276)
      {
        goto LABEL_6;
      }

      __s = v4 + 1;
      a2 = v3 - __s;
    }

    while (v3 - __s > 1);
  }

  v4 = v3;
LABEL_6:
  if (v4 == v3)
  {
    return -1;
  }

  else
  {
    return v4 - v2;
  }
}

id getLog(void)
{
  if (qword_280B217F8 != -1)
  {
    dispatch_once(&qword_280B217F8, &__block_literal_global_273);
  }

  v1 = qword_280B217F0;

  return v1;
}

__CFString *SWCGetNSStringFromStringViewNoCopy(void *a1)
{
  if (a1[1])
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:*a1 length:a1[1] encoding:4 freeWhenDone:0];
  }

  else
  {
    v2 = &stru_2877A4C50;
  }

  return v2;
}

uint64_t SWCEnumerateStructureSequence<SWCSubstitutionVariable,SWCFNMatch::_getVariable(std::string_view const&)::$_0>(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  if (*result)
  {
    return result;
  }

  v3 = a2;
  do
  {
    v4 = *v3;
    v5 = strlen(v2->cStrings);
    v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v2->cStrings, v5);
    v7 = v6;
    v8 = v4[6];
    if (!*&v8)
    {
      goto LABEL_21;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    v10 = v9.u32[0];
    if (v9.u32[0] > 1uLL)
    {
      v11 = v6;
      if (v6 >= *&v8)
      {
        v11 = v6 % *&v8;
      }
    }

    else
    {
      v11 = (*&v8 - 1) & v6;
    }

    v12 = *(*&v4[5] + 8 * v11);
    if (!v12 || (v13 = *v12) == 0)
    {
LABEL_21:
      operator new();
    }

    while (1)
    {
      v14 = v13[1];
      if (v14 == v7)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        goto LABEL_21;
      }

LABEL_20:
      v13 = *v13;
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    if (v13[3] != v5 || memcmp(v13[2], v2->cStrings, v5))
    {
      goto LABEL_20;
    }

    v3 = a2;
    v15 = *(a2 + 8);
    if (*(v15 + 8) == v5)
    {
      result = memcmp(*v15, v2->cStrings, v5);
      if (!result)
      {
        **(a2 + 16) = v2;
        return result;
      }
    }

    result = SWCSubstitutionVariable::getSize(v2);
    v2 = (v2 + result);
  }

  while ((*v2 & 1) == 0);
  return result;
}

uint64_t SWCFNMatch::_execute(int8x8_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = *MEMORY[0x277D85DE8];
  if (!*a2)
  {
    v58 = [MEMORY[0x277CCA890] currentHandler];
    v59 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL SWCFNMatch::_execute(const std::string_view &, const std::string_view &, int) const"}];
    [v58 handleFailureInFunction:v59 file:@"SWCPattern.mm" lineNumber:2043 description:{@"Invalid parameter not satisfying: %@", @"pattern.data() != NULL"}];
  }

  v7 = *a3;
  if (!*a3)
  {
    v60 = [MEMORY[0x277CCA890] currentHandler];
    v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL SWCFNMatch::_execute(const std::string_view &, const std::string_view &, int) const"}];
    [v60 handleFailureInFunction:v61 file:@"SWCPattern.mm" lineNumber:2044 description:{@"Invalid parameter not satisfying: %@", @"string.data() != NULL"}];

    v7 = *a3;
  }

  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a3 + 8);
  if (*(*a2 + v9))
  {
    v62 = [MEMORY[0x277CCA890] currentHandler];
    v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL SWCFNMatch::_execute(const std::string_view &, const std::string_view &, int) const"}];
    [v62 handleFailureInFunction:v63 file:@"SWCPattern.mm" lineNumber:2052 description:{@"Invalid parameter not satisfying: %@", @"*pEnd == '\\0'"}];
  }

  if (v7[v10])
  {
    v64 = [MEMORY[0x277CCA890] currentHandler];
    v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL SWCFNMatch::_execute(const std::string_view &, const std::string_view &, int) const"}];
    [v64 handleFailureInFunction:v65 file:@"SWCPattern.mm" lineNumber:2053 description:{@"Invalid parameter not satisfying: %@", @"*sEnd == '\\0'"}];
  }

  if (a1->i8[0])
  {
    goto LABEL_102;
  }

  if (a1[4].i32[0] >= 65)
  {
    v66 = getLog();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      v67 = SWCGetNSStringFromStringViewNoCopy(&a1[1]);
      LODWORD(s1) = 138412290;
      *(&s1 + 4) = v67;
      _os_log_impl(&dword_265F54000, v66, OS_LOG_TYPE_INFO, "Pattern %@ was too complex. Stopping evaluation.", &s1, 0xCu);
    }

    LOBYTE(v30) = 0;
    a1->i8[0] = 1;
    goto LABEL_103;
  }

  v11 = *v8;
  if (!*v8)
  {
    if (*v7)
    {
LABEL_102:
      LOBYTE(v30) = 0;
      goto LABEL_103;
    }
  }

  v12 = v8;
  v13 = v7;
  while (v11 > 41)
  {
    switch(v11)
    {
      case '?':
        if (*v13)
        {
          SWCFNMatch::_decodeUTF8Character(v13, a2, a3);
          if (a2 >= 2)
          {
            v13 = &v13[a2 - 1];
          }

          goto LABEL_53;
        }

        break;
      case '\\':
        ++v12;
        goto LABEL_53;
      case '*':
        v26 = &v8[v9] - v12;
        do
        {
          v28 = *++v12;
          v27 = v28;
          --v26;
        }

        while (v28 == 42);
        if (v27)
        {
          if (!*v13)
          {
            goto LABEL_102;
          }

          v40 = a1[4].i32[0] + 1;
          v41 = &v7[v10] - v13;
          do
          {
            a1[4].i32[0] = v40;
            *&s1 = v12;
            *(&s1 + 1) = v26;
            *s2 = v13;
            v77 = v41;
            LOBYTE(v30) = SWCFNMatch::_execute(a1, &s1, s2, a4);
            v40 = a1[4].i32[0];
            a1[4].i32[0] = v40 - 1;
            if (v30)
            {
              break;
            }

            v42 = *++v13;
            --v41;
          }

          while (v42);
          goto LABEL_103;
        }

LABEL_57:
        LOBYTE(v30) = 1;
        goto LABEL_103;
    }

LABEL_29:
    v16 = SWCFNMatch::_decodeUTF8Character(v12, a2, a3);
    if (v14 > 1)
    {
      v12 = &v14[v12 - 1];
    }

    v17 = SWCFNMatch::_decodeUTF8Character(v13, v14, v15);
    v18 = v17;
    if (a2 > 1)
    {
      v13 = &v13[a2 - 1];
    }

    if (v16 == v17 || (a4 & 0x10) == 0)
    {
      if (v16 != v17)
      {
        goto LABEL_102;
      }
    }

    else if (((v17 | v16) & 0xFFFFFF80) != 0)
    {
      if (v16 - 0x10000 >= 0x100000)
      {
        v20 = v16;
      }

      else
      {
        v20 = (v16 >> 10) - 10304;
      }

      v21 = (v16 & 0x3FF | 0xDC00) << 16;
      if (v16 - 0x10000 >= 0x100000)
      {
        v21 = 0;
      }

      WORD2(s1) = 0;
      LODWORD(s1) = v21 & 0xFFFF0000 | v20;
      if (v17 - 0x10000 >= 0x100000)
      {
        v22 = v17;
      }

      else
      {
        v22 = (v17 >> 10) - 10304;
      }

      v23 = (v17 & 0x3FF | 0xDC00) << 16;
      if (v17 - 0x10000 >= 0x100000)
      {
        v23 = 0;
      }

      s2[2] = 0;
      *s2 = v23 & 0xFFFF0000 | v22;
      if (u_strcasecmp(&s1, s2, 0))
      {
        goto LABEL_102;
      }
    }

    else
    {
      v24 = __tolower(v16);
      if (v24 != __tolower(v18))
      {
        goto LABEL_102;
      }
    }

LABEL_53:
    v25 = *++v12;
    v11 = v25;
    ++v13;
  }

  if (!v11)
  {
    if (!*v13)
    {
      goto LABEL_57;
    }

    goto LABEL_29;
  }

  if (v11 != 36 || v12[1] != 40)
  {
    goto LABEL_29;
  }

  v29 = v12 + 2;
  v30 = strchr(v12 + 2, 41);
  if (!v30)
  {
    goto LABEL_103;
  }

  v31 = v30;
  v32 = v30 - v29;
  v72[0] = v12 + 2;
  v72[1] = v30 - v29;
  *s2 = 0;
  v33 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100]((v12 + 2), v30 - v29);
  v34 = a1[6];
  if (!*&v34)
  {
    goto LABEL_81;
  }

  v35 = v33;
  v36 = vcnt_s8(v34);
  v36.i16[0] = vaddlv_u8(v36);
  v37 = v36.u32[0];
  if (v36.u32[0] > 1uLL)
  {
    v38 = v33;
    v39 = a1;
    if (v33 >= *&v34)
    {
      v38 = v33 % *&v34;
    }
  }

  else
  {
    v38 = (*&v34 - 1) & v33;
    v39 = a1;
  }

  v43 = *(*&v39[5] + 8 * v38);
  if (!v43 || (v44 = *v43) == 0)
  {
LABEL_81:
    if (a1[10].i8[0] != 1)
    {
      *&s1 = a1;
      *(&s1 + 1) = v72;
      v80 = s2;
      v46 = a1[3];
      if (!*&v46 || (SWCEnumerateStructureSequence<SWCSubstitutionVariable,SWCFNMatch::_getVariable(std::string_view const&)::$_0>(*&v46 + 8, &s1), (v47 = *s2) == 0))
      {
        v48 = +[_SWCSubstitutionVariableList cheapBuiltInSubstitutionVariableList];
        SWCEnumerateStructureSequence<SWCSubstitutionVariable,SWCFNMatch::_getVariable(std::string_view const&)::$_0>(v48 + 8, &s1);

        v47 = *s2;
        if (!*s2)
        {
          v49 = +[_SWCSubstitutionVariableList expensiveBuiltInSubstitutionVariableList];
          SWCEnumerateStructureSequence<SWCSubstitutionVariable,SWCFNMatch::_getVariable(std::string_view const&)::$_0>(v49 + 8, &s1);

          v47 = *s2;
          if (!*s2)
          {
            a1[10].i8[0] = 1;
          }
        }
      }

      if (v47)
      {
        goto LABEL_88;
      }
    }

    goto LABEL_102;
  }

  while (2)
  {
    v45 = v44[1];
    if (v45 != v35)
    {
      if (v37 > 1)
      {
        if (v45 >= *&v34)
        {
          v45 %= *&v34;
        }
      }

      else
      {
        v45 &= *&v34 - 1;
      }

      if (v45 != v38)
      {
        goto LABEL_81;
      }

      goto LABEL_80;
    }

    if (v44[3] != v32 || memcmp(v44[2], v29, v32))
    {
LABEL_80:
      v44 = *v44;
      if (!v44)
      {
        goto LABEL_81;
      }

      continue;
    }

    break;
  }

  v47 = v44[4];
  if (!v47)
  {
    goto LABEL_102;
  }

LABEL_88:
  v70 = v31 + 1;
  v71 = strlen(v31 + 1);
  v69[0] = v13;
  v50 = strlen(v13);
  LOBYTE(v30) = 0;
  v69[1] = v50;
  v75 = a4;
  v74 = 0;
  v73 = v71;
  *&s1 = &v73;
  *(&s1 + 1) = &v70;
  v80 = a1;
  v81 = v69;
  v82 = &v75;
  v83 = &v74;
  v51 = *v47;
  if ((*v47 & 1) == 0)
  {
    v78 = 0;
    v52 = strlen(v47 + 1);
    if ((v51 & 2) == 0 || (*s2 = "", v77 = 0, SWCFNMatch::_tryMatchingVariable(SWCSubstitutionVariable const*,std::string_view const&,std::string_view const&,int)const::$_0::operator()(&s1, s2, &v78), (v78 & 1) == 0))
    {
      for (i = &v47[v52 + 2]; *i; i += v55)
      {
        if ((*v47 & 4) != 0)
        {
          v54 = 1;
        }

        else
        {
          v54 = strlen(i);
        }

        *s2 = i;
        v77 = v54;
        SWCFNMatch::_tryMatchingVariable(SWCSubstitutionVariable const*,std::string_view const&,std::string_view const&,int)const::$_0::operator()(&s1, s2, &v78);
        if (v78 == 1)
        {
          break;
        }

        v55 = (*v47 & 4) != 0 ? 1 : v54 + 1;
      }
    }

    LOBYTE(v30) = v74;
  }

LABEL_103:
  v56 = *MEMORY[0x277D85DE8];
  return v30 & 1;
}

uint64_t SWCFNMatch::_decodeUTF8Character(uint8_t *s, const char *a2, const char *a3)
{
  v3 = *s;
  if (*s < 0)
  {
    if (v3 > 0xBF)
    {
      v5 = 0;
      LODWORD(v6) = 1;
    }

    else
    {
      v5 = utf8_back1SafeBody(s, 0, 0);
      v3 = s[v5];
      if ((v3 & 0x80) == 0)
      {
        return v3;
      }

      LODWORD(v6) = v5 + 1;
      if (v5 == -2)
      {
        return -1;
      }
    }

    if (v3 < 0xE0)
    {
      if (v3 < 0xC2)
      {
        return -1;
      }

      v9 = v3 & 0x1F;
    }

    else
    {
      if (v3 > 0xEF)
      {
        if (v3 > 0xF4)
        {
          return -1;
        }

        v11 = v3 - 240;
        v12 = s[v6];
        if (((byte_265F6B65D[v12 >> 4] >> v11) & 1) == 0)
        {
          return -1;
        }

        v6 = v5 + 2;
        if (v5 == -3)
        {
          return -1;
        }

        v8 = s[v6] ^ 0x80;
        if (v8 > 0x3F)
        {
          return -1;
        }

        LODWORD(v7) = v12 & 0x3F | (v11 << 6);
      }

      else
      {
        v7 = v3 & 0xF;
        if (((a00000000000000[v7] >> (s[v6] >> 5)) & 1) == 0)
        {
          return -1;
        }

        v8 = s[v6] & 0x3F;
      }

      LODWORD(v6) = v6 + 1;
      if (v6 == -1)
      {
        return -1;
      }

      v9 = v8 | (v7 << 6);
    }

    v10 = s[v6] ^ 0x80;
    if (v10 <= 0x3F)
    {
      return v10 | (v9 << 6);
    }

    return -1;
  }

  return v3;
}

void ___ZL6getLogv_block_invoke()
{
  v0 = os_log_create("com.apple.swc", "pattern");
  v1 = qword_280B217F0;
  qword_280B217F0 = v0;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v32 + v35 + v41;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v41 + v33 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v34 + v36 + v47;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v59 + v57 + v68 + v58;
      v50 = __ROR8__(v59 + v57 + v68, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * ((v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v29);
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

void SWCFNMatch::_tryMatchingVariable(SWCSubstitutionVariable const*,std::string_view const&,std::string_view const&,int)const::$_0::operator()(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  v6 = **a1 + v4;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v6 + 1;
  if (v6 == -1)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void SWCWithFastBuffer(NSUInteger, const FunctionType &) [ElementType = char, ArraySize = 128UL, FunctionType = (lambda at /Library/Caches/com.apple.xbs/Sources/EmbeddedSharedWebCredentials/Sources/SWCPattern.mm:2001:65)]"}];
    [v17 handleFailureInFunction:v18 file:@"SWCLogging.h" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];

    v12 = *(a2 + 8);
  }

  else
  {
    v12 = *(a2 + 8);
    if (v11 > 0x80)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }
  }

  memset(__dst, 0, sizeof(__dst));
  if (v12)
  {
    memmove(__dst, *a2, v12);
  }

  v13 = *(v5 + 8);
  if (v13)
  {
    memmove(__dst + v4, *v5, v13);
  }

  *v23 = __dst;
  v24 = v6;
  if (std::string_view::find[abi:nn200100](__dst, v6) >= v12)
  {
    ++*(v7 + 32);
    v15 = SWCFNMatch::_execute(v7, v23, v8, *v10);
    --*(v7 + 32);
    if (v15)
    {
      *v9 = 1;
      *a3 = 1;
    }
  }

  else
  {
    if (qword_280B217F8 != -1)
    {
      dispatch_once(&qword_280B217F8, &__block_literal_global_273);
    }

    v14 = qword_280B217F0;
    if (os_log_type_enabled(qword_280B217F0, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v22 = __dst;
      _os_log_impl(&dword_265F54000, v14, OS_LOG_TYPE_INFO, "Substitution variable value composed to another substitution variable: %s. Rejecting.", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t std::__hash_table<std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::__unordered_map_hasher<std::string_view,std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::hash<std::string_view>,std::equal_to<std::string_view>,true>,std::__unordered_map_equal<std::string_view,std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>,std::equal_to<std::string_view>,std::hash<std::string_view>,true>,std::allocator<std::__hash_value_type<std::string_view,SWCSubstitutionVariable const*>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_265F5C258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265F5CB4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v28 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_265F5CEFC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_265F5D994(_Unwind_Exception *a1)
{
  v10 = v6;

  _Unwind_Resume(a1);
}

void sub_265F5DD0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_265F5DFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void ___ZL6getLogv_block_invoke_0()
{
  v0 = os_log_create("com.apple.swc", "settings");
  v1 = qword_280B21820;
  qword_280B21820 = v0;
}

void sub_265F5EC94(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_265F5FB78(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {

    objc_begin_catch(exception_object);
    os_unfair_recursive_lock_unlock();
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_265F607C8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_265F60884(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_265F6089C(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_265F60960(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_265F60978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_265F60BB4(_Unwind_Exception *a1)
{
  v9 = v6;

  _Unwind_Resume(a1);
}

void ___ZL6getLogv_block_invoke_1()
{
  v0 = os_log_create("com.apple.swc", "cbx");
  v1 = qword_280B21850;
  qword_280B21850 = v0;
}

void ___ZL6getLogv_block_invoke_2()
{
  v0 = os_log_create("com.apple.swc", "db");
  v1 = qword_280B218C8;
  qword_280B218C8 = v0;
}

uint64_t _SWCEnabledConfigurationGetFromDetails(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"alwaysEnabled"];
  v3 = [v1 objectForKeyedSubscript:@"enabledByDefault"];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0 && ([v2 BOOLValue] & 1) != 0)
  {
    v4 = 1;
  }

  else if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if ([v3 BOOLValue])
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void _SWCFieldsLogDebugDescription(unsigned int a1, __sFILE *a2, void *a3)
{
  v13 = a3;
  logApprovalState(a2, @"User Approval", a1 & 3);
  logApprovalState(a2, @"Site/Fmwk Approval", (a1 >> 2) & 3);
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v6 = v5;
  if ((a1 & 0x10) != 0)
  {
    [v5 addObject:@"updating"];
  }

  if ((a1 & 0x20) != 0)
  {
    [v6 addObject:@"systemApplication"];
  }

  if ((a1 & 0x100) != 0)
  {
    [v6 addObject:@"enterpriseManaged"];
  }

  if ((a1 & 0x200) != 0)
  {
    [v6 addObject:@"systemPlaceholder"];
  }

  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      v7 = @"enabledByDefault";
    }

    else
    {
      v7 = @"disabledByDefault";
    }
  }

  else
  {
    if (!(a1 >> 6))
    {
      goto LABEL_16;
    }

    v7 = @"alwaysEnabled";
  }

  [v6 addObject:v7];
LABEL_16:
  v8 = ((a1 >> 10) & 7) - 1;
  if (v8 <= 2)
  {
    [v6 addObject:off_279BBDF60[v8]];
  }

  if (v13)
  {
    [v6 unionSet:v13];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [v6 array];
  v11 = [v10 componentsJoinedByString:{@", "}];
  logValueForOptionalKey(a2, &cfstr_Flags.isa, v11, -1, -1, 1);

  objc_autoreleasePoolPop(v9);
  if (BYTE2(a1))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithChar:((a1 << 8) >> 24)];
    logValueForOptionalKey(a2, &cfstr_RelativeOrder.isa, v12, -1, -1, 1);
  }
}

void logApprovalState(__sFILE *a1, void *a2, unsigned int a3)
{
  v8 = a2;
  v5 = _SWCServiceApprovalStateGetDebugDescription(a3);
  if (a3 == 2)
  {
    v6 = 160;
  }

  else
  {
    v6 = 8;
  }

  if (a3 == 1)
  {
    v7 = 42;
  }

  else
  {
    v7 = v6;
  }

  logValueForOptionalKey(a1, v8, v5, v7, -1, 1);
}

__CFString *_SWCServiceApprovalStateGetDebugDescription(unsigned int a1)
{
  if (a1 >= 3)
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%llu", a1];
  }

  else
  {
    v1 = off_279BBDF78[a1];
  }

  return v1;
}

id _SWCGetServerConnection()
{
  os_unfair_lock_lock(&gLock);
  v0 = _MergedGlobals_3;
  if (!_MergedGlobals_3)
  {
    v1 = objc_autoreleasePoolPush();
    v2 = gTestListener;
    v3 = objc_alloc(MEMORY[0x277CCAE80]);
    v4 = v3;
    if (v2)
    {
      v5 = [gTestListener endpoint];
      v6 = [v4 initWithListenerEndpoint:v5];
      v7 = _MergedGlobals_3;
      _MergedGlobals_3 = v6;
    }

    else
    {
      v8 = [v3 initWithMachServiceName:@"com.apple.SharedWebCredentials" options:4096];
      v5 = _MergedGlobals_3;
      _MergedGlobals_3 = v8;
    }

    v9 = _SWCGetServerInterface();
    [_MergedGlobals_3 setRemoteObjectInterface:v9];

    [_MergedGlobals_3 setInterruptionHandler:&__block_literal_global_3];
    [_MergedGlobals_3 setInvalidationHandler:&__block_literal_global_4];
    [_MergedGlobals_3 resume];
    objc_autoreleasePoolPop(v1);
    v0 = _MergedGlobals_3;
  }

  v10 = v0;
  os_unfair_lock_unlock(&gLock);

  return v10;
}

id _SWCGetServerInterface()
{
  if (qword_280B218F8 != -1)
  {
    dispatch_once(&qword_280B218F8, &__block_literal_global_6);
  }

  v1 = qword_280B218F0;

  return v1;
}

void _SWCSetServerListenerForTests(void *a1)
{
  v8 = a1;
  v2 = +[_SWCPrefs sharedPrefs];
  v3 = [v2 isAppleInternal];

  if ((v3 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _SWCSetServerListenerForTests(NSXPCListener *__strong _Nullable)"];
    [v6 handleFailureInFunction:v7 file:@"SWCServerProtocol.mm" lineNumber:170 description:@"Cannot change the SWC XPC server object here"];
  }

  v4 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&gLock);
  if (_MergedGlobals_3)
  {
    [_MergedGlobals_3 invalidate];
    v5 = _MergedGlobals_3;
    _MergedGlobals_3 = 0;
  }

  if (gTestListener)
  {
    [gTestListener invalidate];
  }

  objc_storeStrong(&gTestListener, a1);
  os_unfair_lock_unlock(&gLock);
  objc_autoreleasePoolPop(v4);
}

BOOL _SWCServerIsUsingTestListener()
{
  v0 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&gLock);
  v1 = gTestListener != 0;
  os_unfair_lock_unlock(&gLock);
  objc_autoreleasePoolPop(v0);
  return v1;
}

BOOL _SWCGetAuditTokenForSelf(_OWORD *a1)
{
  task_info_outCnt = 8;
  v2 = task_info(*MEMORY[0x277D85F48], 0xFu, task_info_out, &task_info_outCnt);
  if (a1 && !v2)
  {
    v3 = v7;
    *a1 = *task_info_out;
    a1[1] = v3;
  }

  return v2 == 0;
}

BOOL _SWCCanAuditTokenConnect(__int128 *a1)
{
  v1 = *MEMORY[0x277D861D8];
  v3 = *a1;
  v4 = a1[1];
  [@"com.apple.SharedWebCredentials" UTF8String];
  return sandbox_check_by_audit_token() == 0;
}

uint64_t _SWCIsAuditTokenEntitled(_OWORD *a1, int a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = a1[1];
  *v31.val = *a1;
  *&v31.val[4] = v5;
  v6 = audit_token_to_pid(&v31);
  if (qword_280B21908 != -1)
  {
    dispatch_once(&qword_280B21908, &__block_literal_global_101);
  }

  v7 = qword_280B21900;
  if (os_log_type_enabled(qword_280B21900, OS_LOG_TYPE_DEBUG))
  {
    v31.val[0] = 134217984;
    *&v31.val[1] = v6;
    _os_log_debug_impl(&dword_265F54000, v7, OS_LOG_TYPE_DEBUG, "Checking connection from %llu for various SWC-tracked entitlements", &v31, 0xCu);
  }

  if (qword_280B21760 && (+[_SWCPrefs sharedPrefs](_SWCPrefs, "sharedPrefs"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isAppleInternal], v8, v9))
  {
    if (qword_280B21908 != -1)
    {
      dispatch_once(&qword_280B21908, &__block_literal_global_101);
    }

    v10 = qword_280B21900;
    if (os_log_type_enabled(qword_280B21900, OS_LOG_TYPE_DEFAULT))
    {
      v31.val[0] = 134218242;
      *&v31.val[1] = v6;
      LOWORD(v31.val[3]) = 2114;
      *(&v31.val[3] + 2) = qword_280B21760;
      _os_log_impl(&dword_265F54000, v10, OS_LOG_TYPE_DEFAULT, "Using artificially-enforced entitlements for %llu: %{public}@", &v31, 0x16u);
    }

    v11 = qword_280B21760;
  }

  else
  {
    v12 = xpc_copy_entitlements_data_for_token();
    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x277CBEA90]);
      bytes_ptr = xpc_data_get_bytes_ptr(v12);
      v15 = [v13 initWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(v12) freeWhenDone:0];
      if (qword_280B21918 != -1)
      {
        dispatch_once(&qword_280B21918, &__block_literal_global_104);
      }

      *v31.val = 0;
      v16 = *MEMORY[0x277CBECE8];
      Filtered = _CFPropertyListCreateFiltered();
      v18 = *v31.val;
      if (Filtered && (v19 = _NSIsNSDictionary(), v18 = *v31.val, v19))
      {
        v18 = *v31.val;
        v11 = v18;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  if (v11)
  {
    v20 = [v11 objectForKeyedSubscript:@"com.apple.private.associated-domains"];
    v21 = [v20 isEqual:MEMORY[0x277CBEC38]];

    if (((v21 | a2) & 1) == 0)
    {
      v22 = [v11 objectForKeyedSubscript:@"com.apple.private.canGetAppLinkInfo"];
      LOBYTE(v21) = [v22 isEqual:MEMORY[0x277CBEC38]];
    }

    if (v21 & 1) != 0 || ([v11 objectForKeyedSubscript:@"com.apple.private.canModifyAppLinkPermissions"], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqual:", MEMORY[0x277CBEC38]), v23, (v24))
    {
      v25 = 1;
LABEL_36:
      if (qword_280B21908 != -1)
      {
        dispatch_once(&qword_280B21908, &__block_literal_global_101);
      }

      v27 = qword_280B21900;
      if (os_log_type_enabled(qword_280B21900, OS_LOG_TYPE_DEBUG))
      {
        v31.val[0] = 134218498;
        *&v31.val[1] = v6;
        if (a2)
        {
          v30 = "read-write";
        }

        else
        {
          v30 = "read-only";
        }

        LOWORD(v31.val[3]) = 2082;
        *(&v31.val[3] + 2) = v30;
        HIWORD(v31.val[5]) = 1024;
        v31.val[6] = v25;
        _os_log_debug_impl(&dword_265F54000, v27, OS_LOG_TYPE_DEBUG, "Connection from %llu entitled for %{public}s access? %{BOOL}i", &v31, 0x1Cu);
      }

      goto LABEL_39;
    }
  }

  if (qword_280B21760 || v6 != getpid())
  {
    v25 = 0;
    goto LABEL_36;
  }

  if (qword_280B21908 != -1)
  {
    dispatch_once(&qword_280B21908, &__block_literal_global_101);
  }

  v26 = qword_280B21900;
  if (os_log_type_enabled(qword_280B21900, OS_LOG_TYPE_DEBUG))
  {
    v31.val[0] = 134217984;
    *&v31.val[1] = v6;
    _os_log_debug_impl(&dword_265F54000, v26, OS_LOG_TYPE_DEBUG, "Treating connection from self (%llu) as entitled", &v31, 0xCu);
  }

  v25 = 1;
LABEL_39:

  objc_autoreleasePoolPop(v4);
  v28 = *MEMORY[0x277D85DE8];
  return v25;
}

void ___ZL6getLogv_block_invoke_3()
{
  v0 = os_log_create("com.apple.swc", "xpc");
  v1 = qword_280B21900;
  qword_280B21900 = v0;
}

void ___ZL34_SWCGetEntitlementsNeededForAccessP6NSData_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_2877A7480];
  v1 = qword_280B21910;
  qword_280B21910 = v0;
}

uint64_t _SWCServiceTypeIsWhitelisted(void *a1)
{
  v1 = a1;
  v2 = _SWCServiceTypeGetCanonicals();
  v3 = [v2 containsObject:v1];

  return v3;
}

id _SWCServiceTypeGetCanonicals(void)
{
  if (qword_280B21928 != -1)
  {
    dispatch_once(&qword_280B21928, &__block_literal_global_4);
  }

  v1 = _MergedGlobals_4;

  return v1;
}

uint64_t _SWCServiceTypeIsWhitelistedForAppClips(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:@"appclips"])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqual:@"webcredentials"];
  }

  return v2;
}

void *_SWCServiceTypeCanonicalize(void *a1)
{
  v1 = a1;
  v2 = _SWCServiceTypeGetCanonicals();
  v3 = [v2 member:v1];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v1;
  }

  v6 = v5;

  return v5;
}

void ___ZL28_SWCServiceTypeGetCanonicalsv_block_invoke()
{
  v5[7] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v5[0] = @"activitycontinuation";
  v5[1] = @"applinks";
  v5[2] = @"webcredentials";
  v5[3] = @"messagefilter";
  v5[4] = @"classificationreport";
  v5[5] = @"authsrv";
  v5[6] = @"appclips";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:7];
  v2 = [v0 initWithArray:v1];
  v3 = _MergedGlobals_4;
  _MergedGlobals_4 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

id _SWCGetBundle()
{
  if (qword_280B21938 != -1)
  {
    dispatch_once(&qword_280B21938, &__block_literal_global_5);
  }

  v1 = _MergedGlobals_5;

  return v1;
}

void sub_265F65350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v30 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265F6618C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_265F6660C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_265F66898(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_265F66CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_265F67B78(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___ZL6getLogv_block_invoke_4()
{
  v0 = os_log_create("com.apple.swc", "tracking-domains");
  v1 = qword_280B21950;
  qword_280B21950 = v0;
}

uint64_t _SWCFileIsTTY(FILE *a1)
{
  v1 = fileno(a1);
  if (v1 < 0)
  {
    return 0;
  }

  v2 = v1;
  result = isatty(v1);
  if (result)
  {
    return *forcedTTY() == v2 || getenv("TERM") != 0;
  }

  return result;
}

_DWORD *_SWCForceTTY()
{
  result = forcedTTY();
  *result = v1;
  return result;
}

uint64_t _SWCLogSeparator(FILE *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  *&v2 = 0x2D2D2D2D2D2D2D2DLL;
  *(&v2 + 1) = 0x2D2D2D2D2D2D2D2DLL;
  v5[0] = v2;
  v5[1] = v2;
  v5[2] = v2;
  v5[3] = v2;
  v5[4] = v2;
  fputs(v5, a1);
  result = fputc(10, a1);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void _SWCLogHeader(FILE *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  fputc(10, a1);
  IsTTY = _SWCFileIsTTY(a1);
  if (IsTTY)
  {
    fputs("\x1B[1m", a1);
  }

  v5 = [v3 uppercaseString];
  v6 = [v5 UTF8String];

  v7 = strlen(v6);
  if (v7 < 0x4E)
  {
    v8 = v7;
    v14 = 0;
    *&v9 = 0x3D3D3D3D3D3D3D3DLL;
    *(&v9 + 1) = 0x3D3D3D3D3D3D3D3DLL;
    v13[0] = v9;
    v13[1] = v9;
    v13[2] = v9;
    v13[3] = v9;
    v13[4] = v9;
    v10 = 80 - v7;
    v11 = v13 + ((80 - v7) >> 1);
    *(v11 - 1) = 32;
    memcpy(v11, v6, v8);
    *(v13 + v8 + (v10 >> 1)) = 32;
    fputs(v13, a1);
  }

  else
  {
    fputs(v6, a1);
  }

  if (IsTTY)
  {
    fputs("\x1B[0m", a1);
  }

  fputc(10, a1);

  v12 = *MEMORY[0x277D85DE8];
}

void logValueForOptionalKey(__sFILE *a1, NSString *a2, objc_object *a3, int a4, int a5, int a6)
{
  v23 = a2;
  v11 = a3;
  IsTTY = _SWCFileIsTTY(a1);
  if (!v23)
  {
    goto LABEL_6;
  }

  if (IsTTY)
  {
    fputs("\x1B[1m", a1);
  }

  v13 = [(NSString *)v23 stringByAppendingString:@": "];
  fprintf(a1, "%-22s", [v13 UTF8String]);

  if (IsTTY)
  {
    fputs("\x1B[0m", a1);
LABEL_6:
    v14 = IsTTY ^ 1;
    if (a4 < 0)
    {
      v14 = 1;
    }

    if (v14 & 1) == 0 && (_SWCFileIsTTY(a1))
    {
      fprintf(a1, "\x1B[38;5;%um", a4);
      if ((a5 & 0x80000000) == 0)
      {
        fprintf(a1, "\x1B[48;5;%um", a5);
      }
    }
  }

  if (v11)
  {
    TypeID = CFBooleanGetTypeID();
    if (TypeID == CFGetTypeID(v11))
    {
      v16 = [(objc_object *)v11 BOOLValue];
      v17 = @"no";
      if (v16)
      {
        v17 = @"yes";
      }

      v18 = v17;

      v11 = v18;
    }
  }

  v19 = [(objc_object *)v11 description];
  v20 = [v19 UTF8String];
  if (!v20)
  {
    v20 = "(null)";
  }

  fputs(v20, a1);

  v21 = IsTTY ^ 1;
  if ((a5 & a4) < 0 != v22)
  {
    v21 = 1;
  }

  if ((v21 & 1) == 0)
  {
    fputs("\x1B[0m", a1);
  }

  if (a6)
  {
    fputc(10, a1);
  }
}

void sub_265F68960(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void ___ZL6getLogv_block_invoke_5()
{
  v0 = os_log_create("com.apple.swc", "domain");
  v1 = qword_280B21970;
  qword_280B21970 = v0;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}