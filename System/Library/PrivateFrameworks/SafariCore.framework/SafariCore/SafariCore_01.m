id parsePasswordRule(UniChar *a1, UniChar **a2, uint64_t *a3)
{
  v26 = a1;
  v6 = parseIdentifier(a1, &v26, a3);
  v7 = v6;
  if (*a3 == -1)
  {
    v10 = [v6 lowercaseString];
    v11 = [v10 isEqualToString:@"allowed"];
    if (v11)
    {
      v12 = 0;
      v13 = 0;
    }

    else if ([v10 isEqualToString:@"required"])
    {
      v12 = 0;
      v13 = 1;
    }

    else if ([v10 isEqualToString:@"max-consecutive"])
    {
      v12 = 0;
      v13 = 2;
    }

    else if ([v10 isEqualToString:@"minlength"])
    {
      v12 = 1;
      v13 = 3;
    }

    else
    {
      if (([v10 isEqualToString:@"maxlength"] & 1) == 0)
      {

        v8 = 0;
        *a3 = 2;
        *a2 = a1;
        goto LABEL_36;
      }

      v12 = 0;
      v13 = 4;
    }

    for (i = v26; ; ++i)
    {
      v14 = *i;
      if (v14 > 0x3A)
      {
        goto LABEL_34;
      }

      if (((1 << v14) & 0x100003600) == 0)
      {
        break;
      }
    }

    if (v14 != 58)
    {
LABEL_34:
      v8 = 0;
      *a3 = 3;
      goto LABEL_35;
    }

    for (j = i + 1; ; ++j)
    {
      v16 = *j;
      if (v16 > 0x20 || ((1 << v16) & 0x100003600) == 0)
      {
        break;
      }
    }

    v26 = j;
    if (v16 != 59 && v16 != 0)
    {
      if (v13 < 2)
      {
        v24 = parsePasswordRequiredOrAllowedPropertyValue(j, &v26, a3);
        *a2 = v26;
        if (*a3 == -1)
        {
          if (v11)
          {
            [WBSAllowedPasswordRule allowedRuleWithCharacterClasses:v24];
          }

          else
          {
            [WBSRequiredPasswordRule requiredRuleWithCharacterClasses:v24];
          }
          v8 = ;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_36;
      }

      if ((v13 - 3) >= 2)
      {
        v25 = parsePositiveIntegerPropertyValue(j, &v26, a3);
        *a2 = v26;
        if (*a3 == -1)
        {
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:v25];
          v23 = [WBSMaxConsecutivePasswordRule maxConsecutiveRuleWithValue:v22];
LABEL_63:
          v8 = v23;

          goto LABEL_36;
        }
      }

      else
      {
        v21 = parsePositiveIntegerPropertyValue(j, &v26, a3);
        *a2 = v26;
        if (*a3 == -1)
        {
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
          if (v12)
          {
            [WBSMinLengthPasswordRule minLengthRuleWithValue:v22];
          }

          else
          {
            [WBSMaxLengthPasswordRule maxLengthRuleWithValue:v22];
          }
          v23 = ;
          goto LABEL_63;
        }
      }

      v8 = 0;
      goto LABEL_36;
    }

    *a3 = -1;
    *a2 = j;
    if (v13 <= 1)
    {
      if (v13)
      {
        [WBSRequiredPasswordRule requiredRuleWithCharacterClasses:0];
      }

      else
      {
        [WBSAllowedPasswordRule allowedRuleWithCharacterClasses:0];
      }
    }

    else
    {
      if (v13 == 2)
      {
        v19 = [WBSMaxConsecutivePasswordRule maxConsecutiveRuleWithValue:0];
        goto LABEL_50;
      }

      if (v13 == 3)
      {
        [WBSMinLengthPasswordRule minLengthRuleWithValue:0];
      }

      else
      {
        [WBSMaxLengthPasswordRule maxLengthRuleWithValue:0];
      }
    }
    v19 = ;
LABEL_50:
    v8 = v19;
    goto LABEL_36;
  }

  v8 = 0;
  i = v26;
LABEL_35:
  *a2 = i;
LABEL_36:

  return v8;
}

id parsePasswordRules(UniChar *i, uint64_t *a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  while (1)
  {
    v5 = *i;
    if (v5 > 0x20 || ((1 << v5) & 0x100003600) == 0)
    {
      break;
    }

    ++i;
  }

  v18 = i;
  if (v5)
  {
    v7 = MEMORY[0x1E695E0F0];
    while (v5 == 45 || (v5 & 0xFFDF) - 65 <= 0x19)
    {
      v8 = parsePasswordRule(i, &v18, a2);
      v9 = v8;
      if (*a2 != -1)
      {
        goto LABEL_29;
      }

      v10 = [v8 value];

      if (v10)
      {
        [v4 addObject:v9];
      }

      v11 = v18;
      for (i = v18 + 1; ; ++i)
      {
        v12 = *v11;
        if (v12 > 0x3B)
        {
          goto LABEL_27;
        }

        if (((1 << v12) & 0x100003600) == 0)
        {
          break;
        }

        ++v11;
      }

      if (!*v11)
      {
        *a2 = -1;
        v7 = v4;
LABEL_29:

        goto LABEL_30;
      }

      if (v12 != 59)
      {
LABEL_27:
        *a2 = 3;
        v7 = MEMORY[0x1E695E0F0];
        goto LABEL_29;
      }

      while (1)
      {
        v13 = *i;
        v14 = v13 > 0x20;
        v15 = (1 << v13) & 0x100003600;
        if (v14 || v15 == 0)
        {
          break;
        }

        ++i;
      }

      v18 = i;

      v5 = *i;
      if (!*i)
      {
        break;
      }
    }
  }

  *a2 = -1;
  v7 = v4;
LABEL_30:

  return v7;
}

id canonicalizedCharacterClasses(void *a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v2 = v1;
    v3 = [(__CFString *)v2 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (!v3)
    {
      goto LABEL_11;
    }

    v4 = v3;
    v5 = *v44;
LABEL_4:
    v6 = 0;
    while (1)
    {
      if (*v44 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = [*(*(&v43 + 1) + 8 * v6) type];
      if (!v7)
      {
        break;
      }

      if (v7 == 5)
      {
        v29 = +[WBSPasswordCharacterClass unicodeCharacterClass];
        v51 = v29;
        v31 = &v51;
        goto LABEL_79;
      }

      if (v4 == ++v6)
      {
        v4 = [(__CFString *)v2 countByEnumeratingWithState:&v43 objects:v52 count:16];
        if (!v4)
        {
LABEL_11:

          Mutable = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], 95);
          CFBitVectorSetCount(Mutable, 95);
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v9 = v2;
          v10 = [(__CFString *)v9 countByEnumeratingWithState:&v39 objects:v49 count:16];
          if (!v10)
          {
LABEL_31:

            v2 = [MEMORY[0x1E696AD60] string];
            v18 = 0;
            for (i = 33; i != 59; ++i)
            {
              if (CFBitVectorGetBitAtIndex(Mutable, i))
              {
                chars[v18++] = i + 32;
              }
            }

            if (v18 && v18 != 26)
            {
              CFStringAppendCharacters(v2, chars, v18);
            }

            v20 = 0;
            for (j = 65; j != 91; ++j)
            {
              if (CFBitVectorGetBitAtIndex(Mutable, j))
              {
                chars[v20++] = j + 32;
              }
            }

            if (v20 && v20 != 26)
            {
              CFStringAppendCharacters(v2, chars, v20);
            }

            v22 = 0;
            for (k = 16; k != 26; ++k)
            {
              if (CFBitVectorGetBitAtIndex(Mutable, k))
              {
                chars[v22++] = k | 0x20;
              }
            }

            if (v22 && v22 != 10)
            {
              CFStringAppendCharacters(v2, chars, v22);
            }

            v24 = 0;
            v25 = 0;
            do
            {
              if (CFBitVectorGetBitAtIndex(Mutable, v24))
              {
                chars[v25++] = v24 | 0x20;
              }

              ++v24;
            }

            while (v24 != 16);
            for (m = 26; m != 33; ++m)
            {
              if (CFBitVectorGetBitAtIndex(Mutable, m))
              {
                chars[v25++] = m + 32;
              }
            }

            for (n = 59; n != 65; ++n)
            {
              if (CFBitVectorGetBitAtIndex(Mutable, n))
              {
                chars[v25++] = n + 32;
              }
            }

            for (ii = 91; ii != 95; ++ii)
            {
              if (CFBitVectorGetBitAtIndex(Mutable, ii))
              {
                chars[v25++] = ii + 32;
              }
            }

            if (v25 && v25 != 33)
            {
              CFStringAppendCharacters(v2, chars, v25);
            }

            CFRelease(Mutable);
            if (v18 == 26 && v20 == 26 && v22 == 10 && v25 == 33)
            {
              v29 = +[WBSPasswordCharacterClass asciiPrintableCharacterClass];
              v47 = v29;
              v30 = MEMORY[0x1E695DEC8];
              v31 = &v47;
              goto LABEL_80;
            }

            v32 = [MEMORY[0x1E695DF70] array];
            if (v18 == 26)
            {
              v35 = +[WBSPasswordCharacterClass uppercaseCharacterClass];
              [v32 addObject:v35];
            }

            if (v20 == 26)
            {
              v36 = +[WBSPasswordCharacterClass lowercaseCharacterClass];
              [v32 addObject:v36];
            }

            if (v22 == 10)
            {
              v37 = +[WBSPasswordCharacterClass digitCharacterClass];
              [v32 addObject:v37];
            }

            if (v25 == 33)
            {
              v38 = +[WBSPasswordCharacterClass specialCharacterClass];
              [v32 addObject:v38];
            }

            if ([(__CFString *)v2 length])
            {
              v29 = [WBSPasswordCharacterClass customCharacterClassWithValue:v2];
              [v32 addObject:v29];
              goto LABEL_81;
            }

            goto LABEL_82;
          }

          v11 = v10;
          v12 = *v40;
          while (2)
          {
            v13 = 0;
LABEL_14:
            if (*v40 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v39 + 1) + 8 * v13);
            v15 = [v14 type];
            if (v15 <= 2)
            {
              if (v15 == 1)
              {
                v17.location = 16;
                v17.length = 10;
                goto LABEL_28;
              }

              if (v15 != 2)
              {
                goto LABEL_29;
              }

              v17.location = 65;
            }

            else
            {
              if (v15 != 3)
              {
                if (v15 != 4)
                {
                  if (v15 == 6)
                  {
                    v16 = [v14 value];
                    markBitsForCustomCharacterClassPropertyValue(Mutable, v16);
                  }

LABEL_29:
                  if (v11 == ++v13)
                  {
                    v11 = [(__CFString *)v9 countByEnumeratingWithState:&v39 objects:v49 count:16];
                    if (!v11)
                    {
                      goto LABEL_31;
                    }

                    continue;
                  }

                  goto LABEL_14;
                }

                v55.location = 0;
                v55.length = 16;
                CFBitVectorSetBits(Mutable, v55, 1u);
                v56.location = 26;
                v56.length = 7;
                CFBitVectorSetBits(Mutable, v56, 1u);
                v57.location = 59;
                v57.length = 6;
                CFBitVectorSetBits(Mutable, v57, 1u);
                v17.location = 91;
                v17.length = 4;
LABEL_28:
                CFBitVectorSetBits(Mutable, v17, 1u);
                goto LABEL_29;
              }

              v17.location = 33;
            }

            break;
          }

          v17.length = 26;
          goto LABEL_28;
        }

        goto LABEL_4;
      }
    }

    v29 = +[WBSPasswordCharacterClass asciiPrintableCharacterClass];
    v50 = v29;
    v31 = &v50;
LABEL_79:
    v30 = MEMORY[0x1E695DEC8];
LABEL_80:
    v32 = [v30 arrayWithObjects:v31 count:{1, v39}];
LABEL_81:

LABEL_82:
  }

  else
  {
    v32 = MEMORY[0x1E695E0F0];
  }

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

void markBitsForCustomCharacterClassPropertyValue(__CFBitVector *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v18 = 0u;
    memset(v17, 0, sizeof(v17));
    v5 = [v3 length];
    v6 = v4;
    v16 = v5;
    *&v17[0] = 0;
    if (v5)
    {
      if (v5 >= 0x20)
      {
        v5 = 32;
      }

      v14 = v5;
      [v6 getUid("getCharacters:v17 + 8 range:{0, v5}")];
      v7 = WORD4(v17[0]);
    }

    else
    {
      v14 = 0;
      v7 = -1;
    }

    WORD4(v18) = v7;

    v8 = 1;
    v9 = v14;
    if (v14)
    {
      do
      {
        v10 = WORD4(v18);
        if (v8 >= v9)
        {
          v12 = *&v17[0] + v9;
          if (v16 <= *&v17[0] + v9)
          {
            v8 = v9 + 1;
            v15 = v9 + 1;
            WORD4(v18) = -1;
          }

          else
          {
            if (v16 - (*&v17[0] + v9) >= 0x20)
            {
              v13 = 32;
            }

            else
            {
              v13 = v16 - (*&v17[0] + v9);
            }

            *&v17[0] += v9;
            v14 = v13;
            [v6 getUid("getCharacters:v17 + 8 range:{v12, v13}")];
            WORD4(v18) = WORD4(v17[0]);
            v15 = 1;
            v8 = 1;
          }
        }

        else
        {
          v11 = *(v17 + v8++ + 4);
          v15 = v8;
          WORD4(v18) = v11;
        }

        if ((v10 - 32) <= 0x5E)
        {
          CFBitVectorSetBitAtIndex(a1, v10 - 32, 1u);
          v8 = v15;
        }

        v9 = v14;
      }

      while (v8 - 1 < v14);
    }
  }
}

uint64_t __intersectCharacterClasses_block_invoke(uint64_t a1, int a2)
{
  v2 = a2;
  v26 = *MEMORY[0x1E69E9840];
  v4 = 40;
  if (a2)
  {
    v4 = 32;
  }

  v5 = *(a1 + v4);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v22;
    v10 = (a1 + 48);
    v11 = (a1 + 56);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 type];
        if (v14 <= 2)
        {
          if (v14)
          {
            if (v14 == 1)
            {
              v8 |= 4uLL;
            }

            else if (v14 == 2)
            {
              v8 |= 2uLL;
            }
          }

          else
          {
            v8 |= 0x20uLL;
          }
        }

        else if (v14 > 4)
        {
          if (v14 == 5)
          {
            v8 |= 0x10uLL;
          }

          else if (v14 == 6)
          {
            v15 = [v13 value];
            v16 = v15;
            if (v15)
            {
              v17 = v2;
            }

            else
            {
              v17 = 0;
            }

            v18 = v10;
            if ((v17 & 1) != 0 || v15 && (v18 = v11, (v2 & 1) == 0))
            {
              [*v18 appendString:v15];
            }
          }
        }

        else if (v14 == 3)
        {
          v8 |= 1uLL;
        }

        else
        {
          v8 |= 8uLL;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1B84D2830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a55, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B84D49E4(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_1B84D5094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, ...)
{
  va_start(va, a8);

  std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100](va, 0);
  _Unwind_Resume(a1);
}

void sub_1B84D7D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, std::exception a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  nlohmann::detail::parse_error::~parse_error(&a33);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a44)
  {
    operator delete(a44);
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(v55 + 40);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](&a54);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](&a50);

  _Unwind_Resume(a1);
}

void anonymous namespace::JSONSAXAdapter::~JSONSAXAdapter(id *this)
{
}

{

  JUMPOUT(0x1B8CC0290);
}

void sub_1B84D81A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer((v71 + 40));
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v72 - 224);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v72 - 256);
  nlohmann::detail::input_stream_adapter::~input_stream_adapter(&a13);
  nlohmann::detail::input_stream_adapter::~input_stream_adapter(&a15);
  std::ifstream::~ifstream(&a17, MEMORY[0x1E69E54C8]);
  MEMORY[0x1B8CC0220](&a70);

  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x1E69E5528] + 64;
  a1[53] = MEMORY[0x1E69E5528] + 64;
  v3 = *(MEMORY[0x1E69E54C8] + 16);
  v4 = *(MEMORY[0x1E69E54C8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x1E69E5528] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x1B8CC01A0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1B84D83BC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1B8CC0220](v1);
  _Unwind_Resume(a1);
}

void sub_1B84D8618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, void *a33, char a34, uint64_t a35, char a36)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer((v38 + 40));
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v39 - 240);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](&STACK[0x530]);
  nlohmann::detail::input_stream_adapter::~input_stream_adapter(&a34);
  nlohmann::detail::input_stream_adapter::~input_stream_adapter(&a36);
  std::istream::~istream();
  std::locale::~locale(v37 + 1);

  _Unwind_Resume(a1);
}

void anonymous namespace::FileDescriptorStreamBuf::~FileDescriptorStreamBuf(std::locale *this)
{
  this->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 1);
}

{
  this->__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 1);

  JUMPOUT(0x1B8CC0290);
}

uint64_t anonymous namespace::JSONSAXAdapter::null(_anonymous_namespace_::JSONSAXAdapter *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = [MEMORY[0x1E695DFB0] null];
  v4 = [v1 jsonReader:v2 scalarValue:v3];

  return v4;
}

uint64_t anonymous namespace::JSONSAXAdapter::BOOLean(_anonymous_namespace_::JSONSAXAdapter *this, uint64_t a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  v5 = [v2 jsonReader:v3 scalarValue:v4];

  return v5;
}

uint64_t anonymous namespace::JSONSAXAdapter::number_integer(_anonymous_namespace_::JSONSAXAdapter *this, uint64_t a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
  v5 = [v2 jsonReader:v3 scalarValue:v4];

  return v5;
}

uint64_t anonymous namespace::JSONSAXAdapter::number_unsigned(_anonymous_namespace_::JSONSAXAdapter *this, uint64_t a2)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  v5 = [v2 jsonReader:v3 scalarValue:v4];

  return v5;
}

uint64_t anonymous namespace::JSONSAXAdapter::number_float(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v4 = [v1 jsonReader:v2 scalarValue:v3];

  return v4;
}

uint64_t anonymous namespace::JSONSAXAdapter::string(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v6 = [v2 jsonReader:v3 scalarValue:v5];

  return v6;
}

uint64_t anonymous namespace::JSONSAXAdapter::binary(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:*a2 length:a2[1] - *a2];
  v5 = [v2 jsonReader:v3 scalarValue:v4];

  return v5;
}

uint64_t anonymous namespace::JSONSAXAdapter::key(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v6 = [v2 jsonReader:v3 appendKey:v5];

  return v6;
}

uint64_t anonymous namespace::JSONSAXAdapter::parse_error(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v6 = a4[2];
  v13 = *MEMORY[0x1E696A578];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:(*(*a4 + 16))(a4)];
  v14[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.Safari.Core.WBSJSONReaderErrorDomain" code:v6 userInfo:v8];

  v10 = [*(a1 + 16) jsonReader:*(a1 + 8) error:v9];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x1B8CC01B0](a1 + 2);

  return std::istream::~istream();
}

uint64_t anonymous namespace::FileDescriptorStreamBuf::underflow(_anonymous_namespace_::FileDescriptorStreamBuf *this)
{
  v1 = *(this + 3);
  if (v1 < *(this + 4))
  {
    return *v1;
  }

  v1 = this + 68;
  v3 = read(*(this + 16), this + 68, 0x400uLL);
  if (v3 >= 1)
  {
    *(this + 2) = v1;
    *(this + 3) = v1;
    *(this + 4) = &v1[v3];
    return *v1;
  }

  return 0xFFFFFFFFLL;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::iterator_input_adapter<char const*>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  *&v9 = a1;
  *(&v9 + 1) = a2;
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:sn200100](v10, a3);
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::parser(a5, &v9, v10, a4);
  result = std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v10);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B84D8E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::parser(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  v7 = std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:sn200100](a1, a3);
  *(v7 + 32) = 0;
  *(v7 + 40) = *a2;
  *(v7 + 56) = -1;
  *(v7 + 60) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0;
  *(v7 + 136) = "";
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 144) = 0;
  v8 = localeconv();
  if (v8->decimal_point)
  {
    v9 = *v8->decimal_point;
  }

  else
  {
    v9 = 46;
  }

  *(a1 + 168) = v9;
  *(a1 + 176) = a4;
  *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(a1 + 40);
  return a1;
}

void sub_1B84D8FB0(_Unwind_Exception *a1)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(v1 + 40);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v1);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan(uint64_t a1)
{
  if (!*(a1 + 24) && !nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::skip_bom(a1))
  {
    v4 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_22:
    *(a1 + 96) = v4;
    return 14;
  }

  while (1)
  {
    while (1)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
      v2 = *(a1 + 16);
      if (v2 > 47)
      {
        if (v2 >= 58)
        {
          if (v2 > 109)
          {
            if (v2 > 122)
            {
              if (v2 == 123)
              {
                return 9;
              }

              if (v2 == 125)
              {
                return 11;
              }
            }

            else if (v2 == 110)
            {
              v8 = 1819047278;
              v7 = 1;
              while (*(&v8 + v7) == nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1))
              {
                if (++v7 == 4)
                {
                  return 3;
                }
              }
            }

            else if (v2 == 116)
            {
              v9 = 1702195828;
              v5 = 1;
              while (*(&v9 + v5) == nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1))
              {
                if (++v5 == 4)
                {
                  return 1;
                }
              }
            }
          }

          else if (v2 > 92)
          {
            if (v2 == 93)
            {
              return 10;
            }

            if (v2 == 102)
            {
              v6 = 0;
              while (aFalse_0[v6 + 1] == nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1))
              {
                ++v6;
                result = 2;
                if (v6 == 4)
                {
                  return result;
                }
              }
            }
          }

          else
          {
            if (v2 == 58)
            {
              return 12;
            }

            if (v2 == 91)
            {
              return 8;
            }
          }

          goto LABEL_53;
        }

        goto LABEL_13;
      }

      if (v2 > 12)
      {
        break;
      }

      if ((v2 - 9) >= 2)
      {
        if ((v2 + 1) < 2)
        {
          return 15;
        }

        goto LABEL_53;
      }
    }

    if (v2 > 33)
    {
      break;
    }

    if (v2 != 13 && v2 != 32)
    {
      goto LABEL_53;
    }
  }

  if (v2 == 44)
  {
    return 13;
  }

  if (v2 == 45)
  {
LABEL_13:

    return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number(a1);
  }

  if (v2 != 34)
  {
LABEL_53:
    v4 = "invalid literal";
    goto LABEL_22;
  }

  return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_string(a1);
}

BOOL nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::skip_bom(unsigned __int8 **a1)
{
  if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) == 239)
  {
    return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) == 187 && nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) == 191;
  }

  else
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(a1);
    return 1;
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number(uint64_t a1)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::reset(a1);
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if ((v2 - 49) < 9)
  {
    v4 = 5;
LABEL_3:
    v5 = (a1 + 72);
    while (1)
    {
      std::string::push_back((a1 + 72), v2);
      v6 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
      if ((v6 - 48) >= 0xA)
      {
        break;
      }

      v2 = *v3;
    }

    if (v6 != 46)
    {
      if (v6 != 69 && v6 != 101)
      {
LABEL_9:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(a1);
        __endptr = 0;
        *__error() = 0;
        v7 = (a1 + 72);
        v8 = *(a1 + 95);
        if (v4 == 5)
        {
          if (v8 < 0)
          {
            v7 = *v7;
          }

          v9 = strtoull(v7, &__endptr, 10);
          if (!*__error())
          {
            *(a1 + 112) = v9;
            return 5;
          }
        }

        else
        {
          if (v8 < 0)
          {
            v7 = *v7;
          }

          v11 = strtoll(v7, &__endptr, 10);
          if (!*__error())
          {
            *(a1 + 104) = v11;
            return 6;
          }
        }

        goto LABEL_17;
      }

      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (v2 == 48)
  {
    std::string::push_back((a1 + 72), 48);
    v4 = 5;
  }

  else
  {
    if (v2 == 45)
    {
      std::string::push_back((a1 + 72), 45);
    }

    v13 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    if ((v13 - 49) < 9)
    {
      v2 = *v3;
      v4 = 6;
      goto LABEL_3;
    }

    if (v13 != 48)
    {
      v16 = "invalid number; expected digit after '-'";
      goto LABEL_45;
    }

    std::string::push_back((a1 + 72), *(a1 + 16));
    v4 = 6;
  }

  v14 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
  if (v14 != 101 && v14 != 69)
  {
    if (v14 != 46)
    {
      goto LABEL_9;
    }

    v5 = (a1 + 72);
LABEL_31:
    std::string::push_back(v5, *(a1 + 128));
    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) - 48 <= 9)
    {
      v5 = (a1 + 72);
      do
      {
        std::string::push_back((a1 + 72), *(a1 + 16));
        v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
      }

      while ((v15 - 48) < 0xA);
      if (v15 != 101 && v15 != 69)
      {
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    v16 = "invalid number; expected digit after '.'";
LABEL_45:
    *(a1 + 96) = v16;
    return 14;
  }

  v5 = (a1 + 72);
LABEL_41:
  std::string::push_back(v5, *(a1 + 16));
  v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
  if ((v17 - 48) < 0xA)
  {
    v18 = (a1 + 72);
  }

  else
  {
    if (v17 != 45 && v17 != 43)
    {
      v16 = "invalid number; expected '+', '-', or digit after exponent";
      goto LABEL_45;
    }

    v18 = (a1 + 72);
    std::string::push_back((a1 + 72), *(a1 + 16));
    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1) - 48 >= 0xA)
    {
      v16 = "invalid number; expected digit after exponent sign";
      goto LABEL_45;
    }
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::scan_number(a1, (a1 + 16), v18);
LABEL_48:
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(a1);
  __endptr = 0;
  *__error() = 0;
LABEL_17:
  v12 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v12 = *v12;
  }

  *(a1 + 120) = strtod(v12, &__endptr);
  return 7;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(uint64_t result)
{
  v1 = (result + 32);
  v2 = *(result + 32);
  *(result + 20) = 1;
  --*(result + 24);
  if (v2 || (v1 = (result + 40), (v2 = *(result + 40)) != 0))
  {
    *v1 = v2 - 1;
  }

  if (*(result + 16) != -1)
  {
    v3 = *(result + 56);
    if (*(result + 48) == v3)
    {
      __break(1u);
    }

    else
    {
      *(result + 56) = v3 - 1;
    }
  }

  return result;
}

void *std::vector<char>::push_back[abi:sn200100](void *result, _BYTE *a2)
{
  v3 = result[1];
  v2 = result[2];
  if (v3 >= v2)
  {
    v4 = &v3[-*result + 1];
    if (v4 < 0)
    {
      goto LABEL_13;
    }

    v5 = v2 - *result;
    if (2 * v5 > v4)
    {
      v4 = 2 * v5;
    }

    if (v5 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = v4;
    }

    if (v6)
    {
      operator new();
    }

LABEL_12:
    __break(1u);
LABEL_13:
    std::vector<unsigned short>::__throw_length_error[abi:sn200100]();
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  *v3 = *a2;
  result[1] = v3 + 1;
  return result;
}

void *nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::reset(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    **(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 95) = 0;
  }

  v7 = v1;
  v8 = v2;
  v4 = *(a1 + 48);
  v3 = (a1 + 48);
  v3[1] = v4;
  v6 = *(v3 - 8);
  return std::vector<char>::push_back[abi:sn200100](v3, &v6);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::next_byte_in_range(std::string *a1, _DWORD *a2, uint64_t a3)
{
  std::string::push_back(a1 + 3, a1->__r_.__value_.__s.__data_[16]);
  if (!a3)
  {
    return 1;
  }

  v6 = &a2[a3];
  while (1)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get(a1);
    v7 = a1->__r_.__value_.__r.__words[2];
    if (*a2 > v7 || v7 > a2[1])
    {
      break;
    }

    std::string::push_back(a1 + 3, v7);
    a2 += 2;
    if (a2 == v6)
    {
      return 1;
    }
  }

  result = 0;
  a1[4].__r_.__value_.__r.__words[0] = "invalid string: ill-formed UTF-8 byte";
  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::~lexer(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return a1;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 48);
  for (i = *(a1 + 56); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v9 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      v6 = strlen(__str);
      std::string::append(a2, __str, v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B84D9940(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parse_error::create(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, nlohmann::detail::exception *a4@<X8>)
{
  std::string::basic_string[abi:sn200100]<0>(&v24, "parse_error");
  nlohmann::detail::exception::name(a1, &v26);
  v8 = std::string::append(&v26, "parse error", 0xBuLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  nlohmann::detail::parse_error::position_string(a2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v27, p_p, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, ": ", 2uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = *(a3 + 23);
  if (v16 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v16 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v19 = std::string::append(&v29, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v31 = v19->__r_.__value_.__r.__words[2];
  v30 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  v21 = *a2;
  if (v31 >= 0)
  {
    v22 = &v30;
  }

  else
  {
    v22 = v30;
  }

  nlohmann::detail::exception::exception(a4, a1, v22);
  *a4 = &unk_1F30602F8;
  *(a4 + 4) = v21;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }
}

void sub_1B84D9B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::exception_message(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  std::string::basic_string[abi:sn200100]<0>(a4, "syntax error ");
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v38, " ", 1uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v40 = v9->__r_.__value_.__r.__words[2];
    v39 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v11 = &v39;
    }

    else
    {
      v11 = v39;
    }

    if (v40 >= 0)
    {
      v12 = HIBYTE(v40);
    }

    else
    {
      v12 = *(&v39 + 1);
    }

    std::string::append(a4, v11, v12);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a4, "- ", 2uLL);
  v13 = *(a1 + 32);
  if (v13 == 14)
  {
    std::string::basic_string[abi:sn200100]<0>(&v36, *(a1 + 136));
    v14 = std::string::append(&v36, "; last read: '", 0xEuLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::get_token_string(a1 + 40, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v37, p_p, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v38, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40 = v20->__r_.__value_.__r.__words[2];
    v39 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39;
    }

    if (v40 >= 0)
    {
      v23 = HIBYTE(v40);
    }

    else
    {
      v23 = *(&v39 + 1);
    }

    std::string::append(a4, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_49;
    }

LABEL_46:
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  v25 = nlohmann::detail::lexer_base<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::token_type_name(v13);
  std::string::basic_string[abi:sn200100]<0>(&v38, v25);
  v26 = std::string::insert(&v38, 0, "unexpected ", 0xBuLL);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v40 = v26->__r_.__value_.__r.__words[2];
  v39 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39;
  }

  if (v40 >= 0)
  {
    v29 = HIBYTE(v40);
  }

  else
  {
    v29 = *(&v39 + 1);
  }

  std::string::append(a4, v28, v29);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  v24 = v38.__r_.__value_.__r.__words[0];
LABEL_49:
  operator delete(v24);
  if (!a2)
  {
    return;
  }

LABEL_50:
  v30 = nlohmann::detail::lexer_base<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::token_type_name(a2);
  std::string::basic_string[abi:sn200100]<0>(&v38, v30);
  v31 = std::string::insert(&v38, 0, "; expected ", 0xBuLL);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v40 = v31->__r_.__value_.__r.__words[2];
  v39 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v33 = &v39;
  }

  else
  {
    v33 = v39;
  }

  if (v40 >= 0)
  {
    v34 = HIBYTE(v40);
  }

  else
  {
    v34 = *(&v39 + 1);
  }

  std::string::append(a4, v33, v34);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_1B84D9F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parse_error::~parse_error(std::exception *this)
{
  this->__vftable = &unk_1F30602D0;
  MEMORY[0x1B8CC0150](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F30602D0;
  MEMORY[0x1B8CC0150](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1B8CC0290);
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      goto LABEL_15;
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

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  if (v4 == -1)
  {
    __break(1u);
LABEL_15:
    std::vector<unsigned short>::__throw_length_error[abi:sn200100]();
  }

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

void nlohmann::detail::out_of_range::create(int a1@<W0>, uint64_t a2@<X1>, nlohmann::detail::exception *a3@<X8>)
{
  std::string::basic_string[abi:sn200100]<0>(&__p, "out_of_range");
  nlohmann::detail::exception::name(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  nlohmann::detail::exception::exception(a3, a1, v11);
  *a3 = &unk_1F30602A8;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1B84DA21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::out_of_range::~out_of_range(std::exception *this)
{
  this->__vftable = &unk_1F30602D0;
  MEMORY[0x1B8CC0150](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F30602D0;
  MEMORY[0x1B8CC0150](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1B8CC0290);
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:sn200100](&v2, a2);
    }

    std::vector<unsigned short>::__throw_length_error[abi:sn200100]();
  }

  return result;
}

void sub_1B84DA35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:sn200100](uint64_t a1, uint64_t a2)
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

    std::allocator<unsigned long>::allocate_at_least[abi:sn200100](a1, v2);
  }

  std::vector<unsigned short>::__throw_length_error[abi:sn200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  std::__copy_move_unwrap_iters[abi:sn200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::allocator<unsigned long>::allocate_at_least[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<unsigned short>::__throw_length_error[abi:sn200100]();
}

void std::__copy_move_unwrap_iters[abi:sn200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
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
  std::__copy_impl::operator()[abi:sn200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:sn200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
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

void nlohmann::detail::exception::name(int a1@<W1>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v12, ".", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v8 = std::string::append(&v13, p_p, size);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v14, "] ", 2uLL);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1B84DA72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

nlohmann::detail::exception *nlohmann::detail::exception::exception(nlohmann::detail::exception *this, int a2, const char *a3)
{
  *this = &unk_1F30602D0;
  *(this + 2) = a2;
  MEMORY[0x1B8CC0140](this + 16, a3);
  return this;
}

void nlohmann::detail::exception::~exception(std::exception *this)
{
  this->__vftable = &unk_1F30602D0;
  MEMORY[0x1B8CC0150](&this[2]);

  std::exception::~exception(this);
}

{
  this->__vftable = &unk_1F30602D0;
  MEMORY[0x1B8CC0150](&this[2]);
  std::exception::~exception(this);

  JUMPOUT(0x1B8CC0290);
}

void nlohmann::detail::parse_error::position_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v12, *(a1 + 16) + 1);
  v4 = std::string::insert(&v12, 0, " at line ", 9uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, ", column ", 9uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(a1 + 8));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v14, p_p, size);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1B84DAA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

const char *nlohmann::detail::lexer_base<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::token_type_name(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "unknown token";
  }

  else
  {
    return off_1E7CF3C50[a1];
  }
}

char *std::string::basic_string[abi:sn200100]<0>(char *a1, char *__s)
{
  if (!__s)
  {
    goto LABEL_13;
  }

  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_14;
  }

  if (v4 > 0x16)
  {
    operator new();
  }

  a1[23] = v4;
  v5 = &a1[v4];
  if (a1 <= __s && v5 > __s)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    std::vector<unsigned short>::__throw_length_error[abi:sn200100]();
  }

  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *v5 = 0;
  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::parser<nlohmann::detail::input_stream_adapter>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:sn200100](v9, a2);
  nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::parser(a4, a1, v9, a3);
  result = std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B84DACF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](va);
  _Unwind_Resume(a1);
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::sax_parse<anonymous namespace::JSONSAXAdapter>(uint64_t a1, uint64_t a2)
{
  memset(&v38, 0, sizeof(v38));
  while (1)
  {
    while (1)
    {
      v4 = *(a1 + 32);
      if (v4 <= 5)
      {
        if (v4 > 2)
        {
          if (v4 == 3)
          {
            v5 = (**a2)(a2);
          }

          else if (v4 == 4)
          {
            v5 = (*(*a2 + 40))(a2, a1 + 112);
          }

          else
          {
            v5 = (*(*a2 + 24))(a2, *(a1 + 152));
          }

          goto LABEL_27;
        }

        if (v4 == 1)
        {
          v5 = (*(*a2 + 8))(a2, 1);
          goto LABEL_27;
        }

        if (v4 == 2)
        {
          v5 = (*(*a2 + 8))(a2, 0);
          goto LABEL_27;
        }

        goto LABEL_66;
      }

      if (v4 <= 7)
      {
        if (v4 == 6)
        {
          v5 = (*(*a2 + 16))(a2, *(a1 + 144));
          goto LABEL_27;
        }

        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v27 = *(a1 + 64);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
          nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v32);
          v28 = std::string::insert(&v32, 0, "number overflow parsing '", 0x19uLL);
          v29 = *&v28->__r_.__value_.__l.__data_;
          v33.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&v33.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          v30 = std::string::append(&v33, "'", 1uLL);
          v31 = *&v30->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          nlohmann::detail::out_of_range::create(406, &__p, &v35);
          v16 = (*(*a2 + 96))(a2, v27, &v37, &v35);
          nlohmann::detail::out_of_range::~out_of_range(&v35);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_68;
        }

        if (!(*(*a2 + 32))(a2, a1 + 112))
        {
          goto LABEL_63;
        }

        goto LABEL_28;
      }

      if (v4 != 8)
      {
        break;
      }

      if (!(*(*a2 + 80))(a2, -1))
      {
        goto LABEL_63;
      }

      v7 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
      *(a1 + 32) = v7;
      if (v7 == 10)
      {
        v5 = (*(*a2 + 88))(a2);
        goto LABEL_27;
      }

      LOBYTE(v35.__vftable) = 1;
      std::vector<BOOL>::push_back(&v38, &v35);
    }

    if (v4 != 9)
    {
      if (v4 == 14)
      {
        v19 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
        __p = *(a1 + 64);
        std::string::basic_string[abi:sn200100]<0>(&v32, "value");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0, &v32, &v33);
        nlohmann::detail::parse_error::create(101, &__p, &v33, &v35);
        v20 = (*(*a2 + 96))(a2, v19, &v37, &v35);
LABEL_67:
        v16 = v20;
        v35.__vftable = &unk_1F30602D0;
        MEMORY[0x1B8CC0150](v36);
        std::exception::~exception(&v35);
        goto LABEL_68;
      }

LABEL_66:
      v21 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
      __p = *(a1 + 64);
      std::string::basic_string[abi:sn200100]<0>(&v32, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0x10u, &v32, &v33);
      nlohmann::detail::parse_error::create(101, &__p, &v33, &v35);
      v20 = (*(*a2 + 96))(a2, v21, &v37, &v35);
      goto LABEL_67;
    }

    if (((*(*a2 + 56))(a2, -1) & 1) == 0)
    {
      goto LABEL_63;
    }

    v6 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
    *(a1 + 32) = v6;
    if (v6 == 11)
    {
      break;
    }

    if (v6 != 4)
    {
LABEL_77:
      v25 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
      __p = *(a1 + 64);
      std::string::basic_string[abi:sn200100]<0>(&v32, "object key");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 4u, &v32, &v33);
      nlohmann::detail::parse_error::create(101, &__p, &v33, &v35);
      v23 = (*(*a2 + 96))(a2, v25, &v37, &v35);
      goto LABEL_79;
    }

    if (!(*(*a2 + 64))(a2, a1 + 112))
    {
      goto LABEL_63;
    }

    v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
    *(a1 + 32) = v15;
    if (v15 != 12)
    {
LABEL_78:
      v26 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
      __p = *(a1 + 64);
      std::string::basic_string[abi:sn200100]<0>(&v32, "object separator");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xCu, &v32, &v33);
      nlohmann::detail::parse_error::create(101, &__p, &v33, &v35);
      v23 = (*(*a2 + 96))(a2, v26, &v37, &v35);
LABEL_79:
      v16 = v23;
      nlohmann::detail::parse_error::~parse_error(&v35);
LABEL_68:
      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      goto LABEL_52;
    }

    LOBYTE(v35.__vftable) = 0;
    std::vector<BOOL>::push_back(&v38, &v35);
    v14 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
LABEL_45:
    *(a1 + 32) = v14;
  }

  v5 = (*(*a2 + 72))(a2);
LABEL_27:
  if ((v5 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_28:
  size = v38.__r_.__value_.__l.__size_;
  if (!v38.__r_.__value_.__l.__size_)
  {
LABEL_51:
    v16 = 1;
    goto LABEL_52;
  }

  while (2)
  {
    if ((*(v38.__r_.__value_.__r.__words[0] + (((size - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (size - 1)))
    {
      v9 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        goto LABEL_44;
      }

      if (v9 != 10)
      {
        goto LABEL_75;
      }

      v10 = (*(*a2 + 88))(a2);
LABEL_36:
      if (!v10)
      {
        goto LABEL_63;
      }

      if (!v38.__r_.__value_.__l.__size_)
      {
        __break(1u);
LABEL_75:
        v22 = *(a1 + 64);
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
        __p = *(a1 + 64);
        std::string::basic_string[abi:sn200100]<0>(&v32, "array");
        nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xAu, &v32, &v33);
        nlohmann::detail::parse_error::create(101, &__p, &v33, &v35);
        v23 = (*(*a2 + 96))(a2, v22, &v37, &v35);
        goto LABEL_79;
      }

      size = v38.__r_.__value_.__l.__size_ - 1;
      v38.__r_.__value_.__l.__size_ = size;
      if (!size)
      {
        goto LABEL_51;
      }

      continue;
    }

    break;
  }

  v11 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
  *(a1 + 32) = v11;
  if (v11 != 13)
  {
    if (v11 != 11)
    {
      v24 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v37);
      __p = *(a1 + 64);
      std::string::basic_string[abi:sn200100]<0>(&v32, "object");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xBu, &v32, &v33);
      nlohmann::detail::parse_error::create(101, &__p, &v33, &v35);
      v23 = (*(*a2 + 96))(a2, v24, &v37, &v35);
      goto LABEL_79;
    }

    v10 = (*(*a2 + 72))(a2);
    goto LABEL_36;
  }

  v12 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
  *(a1 + 32) = v12;
  if (v12 != 4)
  {
    goto LABEL_77;
  }

  if ((*(*a2 + 64))(a2, a1 + 112))
  {
    v13 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
    *(a1 + 32) = v13;
    if (v13 != 12)
    {
      goto LABEL_78;
    }

LABEL_44:
    v14 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
    goto LABEL_45;
  }

LABEL_63:
  v16 = 0;
LABEL_52:
  if (v38.__r_.__value_.__r.__words[0])
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (v16)
  {
    v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
    *(a1 + 32) = v17;
    if (v17 != 15)
    {
      v18 = *(a1 + 64);
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &v38);
      v37 = *(a1 + 64);
      std::string::basic_string[abi:sn200100]<0>(&v33, "value");
      nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(a1, 0xFu, &v33, &__p);
      nlohmann::detail::parse_error::create(101, &v37, &__p, &v35);
      (*(*a2 + 96))(a2, v18, &v38, &v35);
      v35.__vftable = &unk_1F30602D0;
      MEMORY[0x1B8CC0150](v36);
      std::exception::~exception(&v35);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1B84DB8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::exception a29)
{
  nlohmann::detail::parse_error::~parse_error(&a29);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  v31 = *(v29 - 56);
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::parser(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::__value_func[abi:sn200100](a1, a3);
  *(v7 + 32) = 0;
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::lexer(v7 + 40, a2);
  *(a1 + 176) = a4;
  *(a1 + 32) = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan((a1 + 40));
  return a1;
}

void sub_1B84DBAC4(_Unwind_Exception *a1)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer((v1 + 40));
  std::__function::__value_func<BOOL ()(int,nlohmann::detail::parse_event_t,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> &)>::~__value_func[abi:sn200100](v1);
  _Unwind_Resume(a1);
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::lexer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 16) = -1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = "";
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  v3 = localeconv();
  if (v3->decimal_point)
  {
    v4 = *v3->decimal_point;
  }

  else
  {
    v4 = 46;
  }

  *(a1 + 128) = v4;
  return a1;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan(nlohmann::detail::input_stream_adapter *this)
{
  if (!*(this + 3) && !nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::skip_bom(this))
  {
    v4 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_22:
    *(this + 12) = v4;
    return 14;
  }

  while (1)
  {
    while (1)
    {
      nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(this);
      v2 = *(this + 4);
      if (v2 > 47)
      {
        if (v2 >= 58)
        {
          if (v2 > 109)
          {
            if (v2 > 122)
            {
              if (v2 == 123)
              {
                return 9;
              }

              if (v2 == 125)
              {
                return 11;
              }
            }

            else if (v2 == 110)
            {
              v8 = 1819047278;
              v7 = 1;
              while (*(&v8 + v7) == nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(this))
              {
                if (++v7 == 4)
                {
                  return 3;
                }
              }
            }

            else if (v2 == 116)
            {
              v9 = 1702195828;
              v5 = 1;
              while (*(&v9 + v5) == nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(this))
              {
                if (++v5 == 4)
                {
                  return 1;
                }
              }
            }
          }

          else if (v2 > 92)
          {
            if (v2 == 93)
            {
              return 10;
            }

            if (v2 == 102)
            {
              v6 = 0;
              while (aFalse_0[v6 + 1] == nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(this))
              {
                ++v6;
                result = 2;
                if (v6 == 4)
                {
                  return result;
                }
              }
            }
          }

          else
          {
            if (v2 == 58)
            {
              return 12;
            }

            if (v2 == 91)
            {
              return 8;
            }
          }

          goto LABEL_53;
        }

        goto LABEL_13;
      }

      if (v2 > 12)
      {
        break;
      }

      if ((v2 - 9) >= 2)
      {
        if ((v2 + 1) < 2)
        {
          return 15;
        }

        goto LABEL_53;
      }
    }

    if (v2 > 33)
    {
      break;
    }

    if (v2 != 13 && v2 != 32)
    {
      goto LABEL_53;
    }
  }

  if (v2 == 44)
  {
    return 13;
  }

  if (v2 == 45)
  {
LABEL_13:

    return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number(this);
  }

  if (v2 != 34)
  {
LABEL_53:
    v4 = "invalid literal";
    goto LABEL_22;
  }

  return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_string(this);
}

BOOL nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::skip_bom(nlohmann::detail::input_stream_adapter *a1)
{
  if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) == 239)
  {
    return nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) == 187 && nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) == 191;
  }

  else
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(a1);
    return 1;
  }
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number(uint64_t a1)
{
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::reset(a1);
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if ((v2 - 49) < 9)
  {
    v4 = 5;
LABEL_3:
    v5 = (a1 + 72);
    while (1)
    {
      std::string::push_back((a1 + 72), v2);
      v6 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
      if ((v6 - 48) >= 0xA)
      {
        break;
      }

      v2 = *v3;
    }

    if (v6 != 46)
    {
      if (v6 != 69 && v6 != 101)
      {
LABEL_9:
        nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(a1);
        __endptr = 0;
        *__error() = 0;
        v7 = (a1 + 72);
        v8 = *(a1 + 95);
        if (v4 == 5)
        {
          if (v8 < 0)
          {
            v7 = *v7;
          }

          v9 = strtoull(v7, &__endptr, 10);
          if (!*__error())
          {
            *(a1 + 112) = v9;
            return 5;
          }
        }

        else
        {
          if (v8 < 0)
          {
            v7 = *v7;
          }

          v11 = strtoll(v7, &__endptr, 10);
          if (!*__error())
          {
            *(a1 + 104) = v11;
            return 6;
          }
        }

        goto LABEL_17;
      }

      goto LABEL_41;
    }

    goto LABEL_31;
  }

  if (v2 == 48)
  {
    std::string::push_back((a1 + 72), 48);
    v4 = 5;
  }

  else
  {
    if (v2 == 45)
    {
      std::string::push_back((a1 + 72), 45);
    }

    v13 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
    if ((v13 - 49) < 9)
    {
      v2 = *v3;
      v4 = 6;
      goto LABEL_3;
    }

    if (v13 != 48)
    {
      v16 = "invalid number; expected digit after '-'";
      goto LABEL_45;
    }

    std::string::push_back((a1 + 72), *(a1 + 16));
    v4 = 6;
  }

  v14 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
  if (v14 != 101 && v14 != 69)
  {
    if (v14 != 46)
    {
      goto LABEL_9;
    }

    v5 = (a1 + 72);
LABEL_31:
    std::string::push_back(v5, *(a1 + 128));
    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) - 48 <= 9)
    {
      v5 = (a1 + 72);
      do
      {
        std::string::push_back((a1 + 72), *(a1 + 16));
        v15 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
      }

      while ((v15 - 48) < 0xA);
      if (v15 != 101 && v15 != 69)
      {
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    v16 = "invalid number; expected digit after '.'";
LABEL_45:
    *(a1 + 96) = v16;
    return 14;
  }

  v5 = (a1 + 72);
LABEL_41:
  std::string::push_back(v5, *(a1 + 16));
  v17 = nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
  if ((v17 - 48) < 0xA)
  {
    v18 = (a1 + 72);
  }

  else
  {
    if (v17 != 45 && v17 != 43)
    {
      v16 = "invalid number; expected '+', '-', or digit after exponent";
      goto LABEL_45;
    }

    v18 = (a1 + 72);
    std::string::push_back((a1 + 72), *(a1 + 16));
    if (nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1) - 48 >= 0xA)
    {
      v16 = "invalid number; expected digit after exponent sign";
      goto LABEL_45;
    }
  }

  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::scan_number(a1, (a1 + 16), v18);
LABEL_48:
  nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::iterator_input_adapter<char const*>>::unget(a1);
  __endptr = 0;
  *__error() = 0;
LABEL_17:
  v12 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v12 = *v12;
  }

  *(a1 + 120) = strtod(v12, &__endptr);
  return 7;
}

uint64_t nlohmann::detail::input_stream_adapter::get_character(nlohmann::detail::input_stream_adapter *this)
{
  v2 = *(this + 1);
  v3 = v2[3];
  if (v3 == v2[4])
  {
    result = (*(*v2 + 80))(v2);
    if (result == -1)
    {
      nlohmann::detail::input_stream_adapter::get_character(this);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v2[3] = v3 + 1;
    return *v3;
  }

  return result;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::next_byte_in_range(std::string *a1, _DWORD *a2, uint64_t a3)
{
  std::string::push_back(a1 + 3, a1->__r_.__value_.__s.__data_[16]);
  if (!a3)
  {
    return 1;
  }

  v6 = &a2[a3];
  while (1)
  {
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(a1);
    v7 = a1->__r_.__value_.__r.__words[2];
    if (*a2 > v7 || v7 > a2[1])
    {
      break;
    }

    std::string::push_back(a1 + 3, v7);
    a2 += 2;
    if (a2 == v6)
    {
      return 1;
    }
  }

  result = 0;
  a1[4].__r_.__value_.__r.__words[0] = "invalid string: ill-formed UTF-8 byte";
  return result;
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::~lexer(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this[6];
  if (v2)
  {
    this[7] = v2;
    operator delete(v2);
  }

  nlohmann::detail::input_stream_adapter::~input_stream_adapter(this);
}

void nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 48);
  for (i = *(a1 + 56); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v9 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      v6 = strlen(__str);
      std::string::append(a2, __str, v6);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B84DC338(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::parser<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::exception_message(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  std::string::basic_string[abi:sn200100]<0>(a4, "syntax error ");
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v38, " ", 1uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v40 = v9->__r_.__value_.__r.__words[2];
    v39 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v11 = &v39;
    }

    else
    {
      v11 = v39;
    }

    if (v40 >= 0)
    {
      v12 = HIBYTE(v40);
    }

    else
    {
      v12 = *(&v39 + 1);
    }

    std::string::append(a4, v11, v12);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a4, "- ", 2uLL);
  v13 = *(a1 + 32);
  if (v13 == 14)
  {
    std::string::basic_string[abi:sn200100]<0>(&v36, *(a1 + 136));
    v14 = std::string::append(&v36, "; last read: '", 0xEuLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get_token_string(a1 + 40, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v37, p_p, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v38, "'", 1uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40 = v20->__r_.__value_.__r.__words[2];
    v39 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39;
    }

    if (v40 >= 0)
    {
      v23 = HIBYTE(v40);
    }

    else
    {
      v23 = *(&v39 + 1);
    }

    std::string::append(a4, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_49;
    }

LABEL_46:
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  v25 = nlohmann::detail::lexer_base<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::token_type_name(v13);
  std::string::basic_string[abi:sn200100]<0>(&v38, v25);
  v26 = std::string::insert(&v38, 0, "unexpected ", 0xBuLL);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v40 = v26->__r_.__value_.__r.__words[2];
  v39 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39;
  }

  if (v40 >= 0)
  {
    v29 = HIBYTE(v40);
  }

  else
  {
    v29 = *(&v39 + 1);
  }

  std::string::append(a4, v28, v29);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  v24 = v38.__r_.__value_.__r.__words[0];
LABEL_49:
  operator delete(v24);
  if (!a2)
  {
    return;
  }

LABEL_50:
  v30 = nlohmann::detail::lexer_base<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::token_type_name(a2);
  std::string::basic_string[abi:sn200100]<0>(&v38, v30);
  v31 = std::string::insert(&v38, 0, "; expected ", 0xBuLL);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v40 = v31->__r_.__value_.__r.__words[2];
  v39 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v33 = &v39;
  }

  else
  {
    v33 = v39;
  }

  if (v40 >= 0)
  {
    v34 = HIBYTE(v40);
  }

  else
  {
    v34 = *(&v39 + 1);
  }

  std::string::append(a4, v33, v34);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_1B84DC698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void nlohmann::detail::input_stream_adapter::~input_stream_adapter(nlohmann::detail::input_stream_adapter *this)
{
  if (*this)
  {
    std::ios_base::clear((*this + *(**this - 24)), *(*this + *(**this - 24) + 32) & 2);
  }
}

void sub_1B84DCAFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WBSBrowsingDataImportServiceInterface()
{
  if (WBSBrowsingDataImportServiceInterface_once != -1)
  {
    WBSBrowsingDataImportServiceInterface_cold_1();
  }

  v1 = WBSBrowsingDataImportServiceInterface_interface;

  return v1;
}

void __WBSBrowsingDataImportServiceInterface_block_invoke()
{
  v0 = WBSBrowsingDataImportServiceInterfaceWithProtocol(&unk_1F30992F8);
  v1 = WBSBrowsingDataImportServiceInterface_interface;
  WBSBrowsingDataImportServiceInterface_interface = v0;
}

id WBSBrowsingDataImportServiceInterfaceWithProtocol(uint64_t a1)
{
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:a1];
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30C15C8];
  [v1 setInterface:v2 forSelector:sel_parseChromeExtensionsFromFileHandle_delegate_completionHandler_ argumentIndex:1 ofReply:0];

  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3098760];
  [v1 setInterface:v3 forSelector:sel_parseHistoryJSONFromFileHandle_ageLimit_delegate_completionHandler_ argumentIndex:2 ofReply:0];

  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30960A8];
  [v1 setInterface:v4 forSelector:sel_parseCreditCardJSONFromFileHandle_delegate_completionHandler_ argumentIndex:1 ofReply:0];

  v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30C1628];
  [v1 setInterface:v5 forSelector:sel_parseNetscapeBookmarkFromFileHandle_delegate_completionHandler_ argumentIndex:1 ofReply:0];

  v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30C15C8];
  [v1 setInterface:v6 forSelector:sel_parseExtensionsFromFileHandle_delegate_completionHandler_ argumentIndex:1 ofReply:0];

  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3098760];
  [v1 setInterface:v7 forSelector:sel_parseChromeHistoryJSONFromFileHandle_ageLimit_delegate_completionHandler_ argumentIndex:2 ofReply:0];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  [v1 setClasses:v10 forSelector:sel_scanImportURLs_sandboxExtensions_completionHandler_ argumentIndex:0 ofReply:0];

  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v1 setClasses:v13 forSelector:sel_scanImportURLs_sandboxExtensions_completionHandler_ argumentIndex:1 ofReply:0];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
  [v1 setClasses:v18 forSelector:sel_scanImportURLs_sandboxExtensions_completionHandler_ argumentIndex:0 ofReply:1];

  return v1;
}

void sub_1B84DDC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getAAAccountClassPrimary()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAAAccountClassPrimarySymbolLoc_ptr;
  v7 = getAAAccountClassPrimarySymbolLoc_ptr;
  if (!getAAAccountClassPrimarySymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAAAccountClassPrimarySymbolLoc_block_invoke;
    v3[3] = &unk_1E7CF0630;
    v3[4] = &v4;
    __getAAAccountClassPrimarySymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getAAAccountClassPrimary_cold_1();
  }

  v1 = *v0;

  return v1;
}

void sub_1B84DDDD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AccountsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccountsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AppleAccountLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppleAccountLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getACAccountTypeIdentifierAppleAccountSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccountsLibrary();
  result = dlsym(v2, "ACAccountTypeIdentifierAppleAccount");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACAccountTypeIdentifierAppleAccountSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getACAccountDataclassBookmarksSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccountsLibrary();
  result = dlsym(v2, "ACAccountDataclassBookmarks");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getACAccountDataclassBookmarksSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAAAccountClassPrimarySymbolLoc_block_invoke(uint64_t a1)
{
  v4 = 0;
  v2 = AppleAccountLibraryCore();
  if (!v2)
  {
    __getAAAccountClassPrimarySymbolLoc_block_invoke_cold_1(&v4);
  }

  result = dlsym(v2, "AAAccountClassPrimary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAAAccountClassPrimarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B84DF018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B84DF89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void WBSPerformBlockOnMainRunLoopWithCommonModes(void *a1)
{
  v1 = a1;
  Main = CFRunLoopGetMain();
  CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], v1);

  v3 = CFRunLoopGetMain();

  CFRunLoopWakeUp(v3);
}

void WBSRunLoopRunUntilTerminationSignal()
{
  signal(15, 1);
  v0 = objc_autoreleasePoolPush();
  Current = CFRunLoopGetCurrent();
  v2 = dispatch_source_create(MEMORY[0x1E69E9700], 0xFuLL, 0, MEMORY[0x1E69E96A0]);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __WBSRunLoopRunUntilTerminationSignal_block_invoke;
  handler[3] = &__block_descriptor_40_e5_v8__0l;
  handler[4] = Current;
  dispatch_source_set_event_handler(v2, handler);
  dispatch_resume(v2);
  CFRunLoopRun();

  objc_autoreleasePoolPop(v0);
}

uint64_t _WBSRunOnceImpl(void *a1)
{
  v2 = objc_getAssociatedObject(a1, &hasRunAssociatedObjectKey);
  v3 = [v2 BOOLValue];

  if ((v3 & 1) == 0)
  {
    objc_setAssociatedObject(a1, &hasRunAssociatedObjectKey, MEMORY[0x1E695E118], 1);
  }

  return v3;
}

void sub_1B84E0F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *WBSStringFromCloudBookmarksAccountChangeType(uint64_t a1)
{
  v1 = @"Added";
  if (a1 == 1)
  {
    v1 = @"Deleted";
  }

  if (a1 == 2)
  {
    return @"Modified";
  }

  else
  {
    return v1;
  }
}

__CFString *WBSStringFromCloudBookmarksSyncResult(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Success";
  }

  else
  {
    return off_1E7CF3EA8[a1 - 1];
  }
}

__CFString *WBSStringFromCloudBookmarksErrorCode(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Sync Disabled";
  }

  else
  {
    return off_1E7CF3ED8[a1 - 1];
  }
}

__CFString *WBSStringFromCloudTabsErrorCode(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Code Invalid Close Request";
  }

  else
  {
    return off_1E7CF3EF8[a1 - 1];
  }
}

__CFString *WBSStringFromCKContainerManateeState(uint64_t a1)
{
  v1 = @"Not Determined";
  if (a1 == 1)
  {
    v1 = @"Not Supported";
  }

  if (a1 == 2)
  {
    return @"Supported";
  }

  else
  {
    return v1;
  }
}

__CFString *WBSStringFromCKAccountTermsState(uint64_t a1)
{
  v1 = @"Not Determined";
  if (a1 == 1)
  {
    v1 = @"Not Verified";
  }

  if (a1 == 2)
  {
    return @"Verified";
  }

  else
  {
    return v1;
  }
}

void sub_1B84E3868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B84E53BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B84E6C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B84E6F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL domainIsUUID(void *a1)
{
  v1 = MEMORY[0x1E696AFB0];
  v2 = a1;
  v3 = [[v1 alloc] initWithUUIDString:v2];

  return v3 != 0;
}

void sub_1B84EA6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id __protectionSpacesString_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 port];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [v2 protocol];
  v6 = [v2 host];

  if (v3)
  {
    [v4 stringWithFormat:@"%@:%@:%ld", v5, v6, v3];
  }

  else
  {
    [v4 stringWithFormat:@"%@:%@", v5, v6, v9];
  }
  v7 = ;

  return v7;
}

void __setOfHighLevelDomainsWhereFullDomainIsPreferableToHighLevelDomainForDisplayToUser_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F308EBB0];
  v1 = setOfHighLevelDomainsWhereFullDomainIsPreferableToHighLevelDomainForDisplayToUser_set;
  setOfHighLevelDomainsWhereFullDomainIsPreferableToHighLevelDomainForDisplayToUser_set = v0;
}

__CFString *WBSStringFromSidecarType(uint64_t a1)
{
  if (a1)
  {
    return @"shared";
  }

  else
  {
    return @"personal";
  }
}

void sub_1B84F2C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B84F3438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B84F7AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B84F7CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B84FA5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B84FF9F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B85007FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B8502B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8506860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8506B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8507518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8508BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __setOfUninterestingSubdomains_block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F308EBE0];
  v1 = setOfUninterestingSubdomains_set;
  setOfUninterestingSubdomains_set = v0;
}

void __numberedSubdomainRegexp_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"(www\\d+|\\d+web)" options:0 error:0];
  v1 = numberedSubdomainRegexp_regexp;
  numberedSubdomainRegexp_regexp = v0;
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_7_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_10_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_11_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_14_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

id deepMutableDictionaryCopy(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [v3 objectForKeyedSubscript:{v8, v14}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = deepMutableDictionaryCopy(v9);
LABEL_10:
          v11 = v10;
          [v2 setObject:v10 forKeyedSubscript:v8];

          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 mutableCopy];
          goto LABEL_10;
        }

        [v2 setObject:v9 forKeyedSubscript:v8];
LABEL_12:
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_1B850B20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WBSCreateExportMetadataDictionary(void *a1, uint64_t a2)
{
  v20[3] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = MEMORY[0x1E695DF90];
  v19[0] = @"export_time_usec";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:((CFAbsoluteTimeGetCurrent() + *MEMORY[0x1E695E468]) * 1000000.0)];
  v20[0] = v5;
  v20[1] = v3;
  v19[1] = @"data_type";
  v19[2] = @"schema_version";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v20[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v8 = [v4 dictionaryWithDictionary:v7];

  v9 = [MEMORY[0x1E696AAE8] safari_safariApplicationPlatformBundleIdentifier];
  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 safari_displayName];
    [v8 setObject:v12 forKeyedSubscript:@"browser_name"];

    v13 = [v11 safari_shortVersion];
    [v8 setObject:v13 forKeyedSubscript:@"browser_version"];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v9 allowPlaceholder:0 error:0];
    v14 = [v13 localizedNameWithPreferredLocalizations:&unk_1F308EBF8];
    [v8 setObject:v14 forKeyedSubscript:@"browser_name"];

    v15 = [v13 shortVersionString];
    [v8 setObject:v15 forKeyedSubscript:@"browser_version"];
  }

  v16 = [v8 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

id WBSLoadMetadataDictionaryFromURL(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:a1 error:a2];
  v4 = v3;
  if (v3)
  {
    v5 = WBSLoadMetadataDictionaryFromFileHandle(v3, a2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id WBSLoadMetadataDictionaryFromFileHandle(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_alloc_init(WBSJSONReader);
  v5 = objc_alloc_init(WBSMetadataDictionaryReaderDelegate);
  [(WBSJSONReader *)v4 setDelegate:v5];
  v6 = [(WBSJSONReader *)v4 parseFileHandle:v3 error:a2];

  if (!v6)
  {
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v7 = [(WBSMetadataDictionaryReaderDelegate *)v5 error];

  if (v7)
  {
    if (a2)
    {
      [(WBSMetadataDictionaryReaderDelegate *)v5 error];
      *a2 = v8 = 0;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = [(WBSMetadataDictionaryReaderDelegate *)v5 metadataDictionary];
  v8 = [v10 count];

  if (v8)
  {
    v8 = [(WBSMetadataDictionaryReaderDelegate *)v5 metadataDictionary];
  }

LABEL_6:

  return v8;
}

Class __getDSArchiveServiceClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DesktopServicesPrivLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DesktopServicesPrivLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7CF51A0;
    v6 = 0;
    DesktopServicesPrivLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!DesktopServicesPrivLibraryCore_frameworkLibrary)
  {
    __getDSArchiveServiceClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("DSArchiveService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDSArchiveServiceClass_block_invoke_cold_1();
  }

  getDSArchiveServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __DesktopServicesPrivLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  DesktopServicesPrivLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B850E748(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

__CFString *errorStringForCode(int a1)
{
  if (a1 == 101)
  {
    v3 = @"Statement returned nothing";
  }

  else if (a1 == 100)
  {
    v3 = @"Statement returned more rows than expected";
  }

  else
  {
    v3 = sqlite3_errstr(a1);
    if (v3)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v3, v1}];
    }
  }

  return v3;
}

void sub_1B850F8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B85112D0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B8511360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WBSSQLiteStore;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B85118C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B8511A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  objc_destroyWeak((v15 + 48));

  _Unwind_Resume(a1);
}

void SafariShared::SuddenTerminationDisabler::invalidateTask(SafariShared::SuddenTerminationDisabler *this)
{
  if (SafariShared::invalidTaskIdentifier(void)::once != -1)
  {
    SafariShared::SuddenTerminationDisabler::SuddenTerminationDisabler();
  }

  *this = SafariShared::invalidTaskIdentifier(void)::identifer;
}

BOOL SafariShared::SuddenTerminationDisabler::isTaskInvalid(SafariShared::SuddenTerminationDisabler *this)
{
  v1 = *this;
  if (SafariShared::invalidTaskIdentifier(void)::once != -1)
  {
    SafariShared::SuddenTerminationDisabler::SuddenTerminationDisabler();
  }

  return v1 == SafariShared::invalidTaskIdentifier(void)::identifer;
}

void ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_5(SafariShared *a1)
{
  v1 = SafariShared::coalescingBackgroundTaskAssertionQueue(a1);
  dispatch_sync(v1, &__block_literal_global_7_0);
}

void ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_2()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = SafariShared::coalescingBackgroundTaskIdentifier;
  if (SafariShared::invalidTaskIdentifier(void)::once != -1)
  {
    SafariShared::SuddenTerminationDisabler::SuddenTerminationDisabler();
  }

  if (v0 == SafariShared::invalidTaskIdentifier(void)::identifer)
  {
    v1 = WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1B8447000, v1, OS_LOG_TYPE_INFO, "Background task assertion was released by a prior item in the queue", &v13, 2u);
    }
  }

  else
  {
    v2 = [MEMORY[0x1E696AB50] set];
    if (_MergedGlobals_1)
    {
      v3 = qword_1ED985C38;
      if (qword_1ED985C38 != &qword_1ED985C40)
      {
        do
        {
          v4 = v3[4];
          v5 = *(v4 + 16);
          [v2 addObject:v5];

          if (SafariShared::invalidTaskIdentifier(void)::once != -1)
          {
            SafariShared::SuddenTerminationDisabler::SuddenTerminationDisabler();
          }

          *v4 = SafariShared::invalidTaskIdentifier(void)::identifer;
          v6 = v3[1];
          if (v6)
          {
            do
            {
              v7 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v7 = v3[2];
              v8 = *v7 == v3;
              v3 = v7;
            }

            while (!v8);
          }

          v3 = v7;
        }

        while (v7 != &qword_1ED985C40);
      }
    }

    else
    {
      ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_cold_3();
    }

    std::__tree<SafariShared::SuddenTerminationDisabler *>::destroy(&qword_1ED985C38, qword_1ED985C40);
    qword_1ED985C38 = &qword_1ED985C40;
    qword_1ED985C48 = 0;
    qword_1ED985C40 = 0;
    v9 = WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      v13 = 138543362;
      v14 = v2;
      _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_DEFAULT, "Background task assertion expired while performing reasons: %{public}@", &v13, 0xCu);
    }

    v11 = SafariShared::sharedApplication(v10);
    [v11 endBackgroundTask:SafariShared::coalescingBackgroundTaskIdentifier];

    if (SafariShared::invalidTaskIdentifier(void)::once != -1)
    {
      ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_cold_1();
    }

    SafariShared::coalescingBackgroundTaskIdentifier = SafariShared::invalidTaskIdentifier(void)::identifer;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B85126EC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void std::__tree<SafariShared::SuddenTerminationDisabler *>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<SafariShared::SuddenTerminationDisabler *>::destroy(a1, *a2);
    std::__tree<SafariShared::SuddenTerminationDisabler *>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void WBSDispatchAsyncAndReleaseOnMainQueue(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 copy];
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__18;
  v6[4] = __Block_byref_object_dispose__18;
  v7 = _Block_copy(v4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __WBSDispatchAsyncAndReleaseOnMainQueue_block_invoke;
  block[3] = &unk_1E7CF0630;
  block[4] = v6;
  dispatch_async(v3, block);

  _Block_object_dispose(v6, 8);
}

void *__Block_byref_object_copy__18(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __WBSDispatchAsyncAndReleaseOnMainQueue_block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(*(a1 + 32) + 8) + 40));
  v6 = v2;
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v2[2](v2);
  WBSReleaseOnMainQueueImpl(&v6);
  v5 = v6;
}

void sub_1B8515E70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  WBSReleaseOnMainQueueImpl(va);
  _Unwind_Resume(a1);
}

void WBSPrintf(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = MEMORY[0x1E696AEC0];
  v10 = a1;
  v11 = [[v9 alloc] initWithFormat:v10 arguments:&a9];

  printf("%s", [v11 UTF8String]);
}

void WBSDPrintf(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = MEMORY[0x1E696AEC0];
  v11 = a2;
  v12 = [[v10 alloc] initWithFormat:v11 arguments:&a9];

  dprintf(a1, "%s", [v12 UTF8String]);
}

unint64_t WBSRangeEnumerateIndexesUsingBlock(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < result + a2)
  {
    v9 = v3;
    v10 = v4;
    v6 = result;
    v7 = a2 - 1;
    do
    {
      v8 = 0;
      result = (*(a3 + 16))(a3, v6, &v8);
      if (!v7)
      {
        break;
      }

      ++v6;
      --v7;
    }

    while ((v8 & 1) == 0);
  }

  return result;
}

id sub_1B8516BB8()
{
  result = [objc_allocWithZone(WBSPasswordsNotificationManager) initIfAvailable];
  qword_1EBA8A518 = result;
  return result;
}

void sub_1B8516C7C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1B8516E20(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_1B8516FC4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B85658C8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_1B8517034(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8517054, 0, 0);
}

uint64_t sub_1B8517054()
{
  v1 = sub_1B851D854(*(v0 + 16));
  v2 = sub_1B8565D68();
  v3 = [objc_opt_self() requestWithIdentifier:v2 content:v1 trigger:0];
  *(v0 + 32) = v3;

  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1B851715C;
  v5 = *(v0 + 24);

  return sub_1B85173BC(v3, 1);
}

uint64_t sub_1B851715C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8517298, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B8517298()
{
  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8565B78();
  __swift_project_value_buffer(v1, qword_1ED985C68);
  v2 = sub_1B8565B48();
  v3 = sub_1B8566218();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B8447000, v2, v3, "Unable to schedule Password Saved notification", v4, 2u);
    MEMORY[0x1B8CC1710](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B85173BC(uint64_t a1, char a2)
{
  *(v3 + 328) = a2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1B85173E0, 0, 0);
}

uint64_t sub_1B85173E0()
{
  v1 = *(v0[36] + OBJC_IVAR___WBSPasswordsNotificationManager_userNotificationCenter);
  v0[37] = v1;
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_1B851750C;
  v2 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A6D8, &qword_1B8574528);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1B8519DD0;
  v0[29] = &block_descriptor_167;
  v0[30] = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B851750C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B85175EC, 0, 0);
}

uint64_t sub_1B85175EC()
{
  v20 = v0;
  v1 = *(v0 + 272);
  *(v0 + 304) = v1;
  v2 = [v1 authorizationStatus];
  if ((v2 - 2) < 3)
  {
    goto LABEL_2;
  }

  if (v2 != 1)
  {
    if (!v2)
    {
      if (*(v0 + 328) == 1 && ![v1 authorizationStatus])
      {
        v3 = v0 + 144;
        v7 = *(v0 + 288);
        *(v0 + 144) = v0;
        *(v0 + 184) = v0 + 272;
        *(v0 + 152) = sub_1B85179B0;
        v8 = swift_continuation_init();
        *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A6E8, &qword_1B8574538);
        *(v0 + 208) = MEMORY[0x1E69E9820];
        *(v0 + 216) = 1107296256;
        *(v0 + 224) = sub_1B8519E34;
        *(v0 + 232) = &block_descriptor_174;
        *(v0 + 240) = v8;
        [v7 requestPermissionToSendNotificationsProvisionally:1 withCompletionHandler:v0 + 208];
        goto LABEL_3;
      }

LABEL_2:
      v3 = v0 + 80;
      v4 = *(v0 + 296);
      v5 = *(v0 + 280);
      *(v0 + 80) = v0;
      *(v0 + 88) = sub_1B8517C2C;
      v6 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A6E0, &qword_1B8574530);
      *(v0 + 208) = MEMORY[0x1E69E9820];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1B8519F00;
      *(v0 + 232) = &block_descriptor_170;
      *(v0 + 240) = v6;
      [v4 addNotificationRequest:v5 withCompletionHandler:v0 + 208];
LABEL_3:

      return MEMORY[0x1EEE6DEC8](v3);
    }

    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v9 = sub_1B8565B78();
    __swift_project_value_buffer(v9, qword_1ED985C68);
    v10 = v1;
    v1 = sub_1B8565B48();
    v11 = sub_1B8566218();

    if (!os_log_type_enabled(v1, v11))
    {

      goto LABEL_17;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v0 + 208) = [v10 authorizationStatus];
    type metadata accessor for UNAuthorizationStatus(0);
    v14 = sub_1B8565E08();
    v16 = sub_1B8525560(v14, v15, &v19);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B8447000, v1, v11, "Received unknown notification authorization status: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B8CC1710](v13, -1, -1);
    MEMORY[0x1B8CC1710](v12, -1, -1);
  }

LABEL_17:
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1B85179B0()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_1B8517DA0;
  }

  else
  {
    v3 = sub_1B8517AC0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8517AC0()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 296);
    v2 = *(v0 + 280);
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_1B8517C2C;
    v3 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A6E0, &qword_1B8574530);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1B8519F00;
    *(v0 + 232) = &block_descriptor_170;
    *(v0 + 240) = v3;
    [v1 addNotificationRequest:v2 withCompletionHandler:v0 + 208];

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1B8517C2C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_1B8517E10;
  }

  else
  {
    v3 = sub_1B8517D3C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B8517D3C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B8517DA0()
{
  v1 = v0[38];
  v2 = v0[39];
  swift_willThrow();

  v3 = v0[39];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B8517E10()
{
  v1 = v0[40];
  v2 = v0[38];
  swift_willThrow();

  v3 = v0[40];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1B851800C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B85180D0;

  return sub_1B8517034(v6);
}

uint64_t sub_1B85180D0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v6 = *v0;

  if (v3)
  {
    v7 = *(v1 + 32);
    v7[2](v7);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_1B8518230(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8518250, 0, 0);
}

uint64_t sub_1B8518250()
{
  v1 = sub_1B851DBEC(*(v0 + 16));
  v2 = sub_1B8565D68();
  v3 = [objc_opt_self() requestWithIdentifier:v2 content:v1 trigger:0];
  *(v0 + 32) = v3;

  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_1B8518358;
  v5 = *(v0 + 24);

  return sub_1B85173BC(v3, 1);
}

uint64_t sub_1B8518358()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8518494, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B8518494()
{
  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8565B78();
  __swift_project_value_buffer(v1, qword_1ED985C68);
  v2 = sub_1B8565B48();
  v3 = sub_1B8566218();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B8447000, v2, v3, "Unable to schedule Password Updated notification", v4, 2u);
    MEMORY[0x1B8CC1710](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B8518740(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B851F930;

  return sub_1B8518230(v6);
}

uint64_t sub_1B8518824()
{
  v1 = objc_opt_self();
  v0[3] = v1;
  v2 = [v1 pm_defaults];
  v0[4] = @"hasSentTakeATourNotification";
  v3 = [v2 safari_BOOLForKey_defaultValue_];

  if ((v3 & 1) != 0 || (v4 = [v1 pm_defaults], v5 = objc_msgSend(v4, sel_safari_BOOLForKey_defaultValue_, @"shouldShowAppOnboardingView", 1), v4, !v5))
  {
    v12 = v0[1];

    return v12();
  }

  else
  {
    v6 = sub_1B851DF78();
    v7 = sub_1B8565D68();
    v8 = [objc_opt_self() requestWithIdentifier:v7 content:v6 trigger:0];
    v0[5] = v8;

    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = sub_1B85189FC;
    v10 = v0[2];

    return sub_1B85173BC(v8, 1);
  }
}

uint64_t sub_1B85189FC()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_1B8518BA4;
  }

  else
  {

    v4 = sub_1B8518B18;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B8518B18()
{
  v1 = *(v0 + 32);
  v2 = [*(v0 + 24) pm_defaults];
  [v2 setBool:1 forKey:v1];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B8518BA4()
{
  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8565B78();
  __swift_project_value_buffer(v1, qword_1ED985C68);
  v2 = sub_1B8565B48();
  v3 = sub_1B8566218();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 56);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B8447000, v2, v3, "Unable to schedule Take A Tour notification", v6, 2u);
    MEMORY[0x1B8CC1710](v6, -1, -1);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B8518E40(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1B8518EE8;

  return sub_1B8518804();
}

uint64_t sub_1B8518EE8()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;

  if (v3)
  {
    v6 = *(v1 + 24);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

void sub_1B851917C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1B8519310(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B85658C8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1B8519374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B85193A4, 0, 0);
}

uint64_t sub_1B85193A4()
{
  v21 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v18 = v0[6];
  v19 = v0[7];
  v16 = v0[4];
  v17 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = [objc_allocWithZone(MEMORY[0x1E6983228]) init];
  v0[11] = v5;
  sub_1B8457180();

  v6 = sub_1B8565D68();

  [v5 setTitle_];

  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &dword_1B8447000;
  sub_1B8457180();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A540, &qword_1B8574108);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B85740E0;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B851C674();
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;

  sub_1B8565D78();

  v8 = sub_1B8565D68();

  [v5 setBody_];

  v20[0] = sub_1B85659B8();
  v20[1] = v9;
  sub_1B851CC5C(v16, v17, v18, v19, 0, v20, v5);

  v10 = v5;
  v11 = sub_1B8565D68();
  v12 = [objc_opt_self() requestWithIdentifier:v11 content:v10 trigger:0];
  v0[12] = v12;

  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_1B8519698;
  v14 = v0[10];

  return sub_1B85173BC(v12, 1);
}

uint64_t sub_1B8519698()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1B85197B4;
  }

  else
  {

    v4 = sub_1B851F934;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B85197B4()
{
  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8565B78();
  __swift_project_value_buffer(v1, qword_1ED985C68);
  v2 = sub_1B8565B48();
  v3 = sub_1B8566218();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B8447000, v2, v3, "Unable to schedule Automatically Created Passkey notification", v7, 2u);
    MEMORY[0x1B8CC1710](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B8519A98(int a1, int a2, int a3, void *a4, void *aBlock, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  v23 = sub_1B8565DA8();
  v10 = v9;
  v6[4] = v9;
  v11 = sub_1B8565DA8();
  v13 = v12;
  v6[5] = v12;
  v14 = sub_1B8565DA8();
  v16 = v15;
  v6[6] = v15;
  v17 = a4;
  a6;
  v18 = sub_1B85659D8();
  v20 = v19;

  v6[7] = v18;
  v6[8] = v20;
  v21 = swift_task_alloc();
  v6[9] = v21;
  *v21 = v6;
  v21[1] = sub_1B8519BF0;

  return sub_1B8519374(v23, v10, v11, v13, v14, v16, v18, v20);
}

uint64_t sub_1B8519BF0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  v7 = *(*v0 + 32);
  v8 = *(*v0 + 24);
  v9 = *(*v0 + 16);
  v10 = *v0;

  sub_1B851D53C(v4, v3);

  if (v8)
  {
    v11 = *(v1 + 24);
    v11[2](v11);
    _Block_release(v11);
  }

  v12 = *(v10 + 8);

  return v12();
}

uint64_t sub_1B8519DD0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1B8519E34(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A6F0, &qword_1B8574540);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1B8519F00(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A6F0, &qword_1B8574540);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1B8519FAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    v11 = sub_1B8565CB8();
    [a1 notificationManager:a2 didReceiveResponseOfType:a3 toNotificationOfType:a4 withUserInfo:v11];
  }

  return a6();
}

uint64_t sub_1B851A050(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t WBSPasswordsNotificationManager.schedulePasskeyUpdatedNotification(forApp:relyingPartyID:userName:credentialID:shouldUseRelyingPartyForServiceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = a8;
  *(v9 + 80) = v8;
  *(v9 + 120) = v11;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B851A270, 0, 0);
}

uint64_t sub_1B851A270()
{
  v38 = v0;
  v1 = *(v0 + 120);
  v2 = [objc_allocWithZone(MEMORY[0x1E6983228]) init];
  *(v0 + 88) = v2;
  v33 = 0x2079656B73736150;
  v34 = 0xEF64657461647055;
  v35 = 0;
  v36 = 0;
  v37 = &dword_1B8447000;
  sub_1B8457180();

  v3 = sub_1B8565D68();

  v32 = v2;
  [v2 setTitle_];

  if (v1 == 1)
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v33 = 0x1000000000000048;
    v34 = 0x80000001B858D570;
    v35 = 0;
    v36 = 0;
    v37 = &dword_1B8447000;
    sub_1B8457180();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A540, &qword_1B8574108);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B85740F0;
    v9 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v10 = sub_1B851C674();
    *(v8 + 32) = v7;
    *(v8 + 40) = v6;
    *(v8 + 96) = v9;
    *(v8 + 104) = v10;
    *(v8 + 64) = v10;
    *(v8 + 72) = v5;
    *(v8 + 80) = v4;
  }

  else
  {
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    v33 = 0x100000000000003CLL;
    v34 = 0x80000001B858D4F0;
    v35 = 0;
    v36 = 0;
    v37 = &dword_1B8447000;
    sub_1B8457180();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A540, &qword_1B8574108);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B85740F0;
    v16 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v17 = sub_1B851C674();
    *(v15 + 32) = v14;
    *(v15 + 40) = v13;
    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
    *(v15 + 64) = v17;
    *(v15 + 72) = v12;
    *(v15 + 80) = v11;
  }

  sub_1B8565D78();
  v19 = *(v0 + 64);
  v18 = *(v0 + 72);
  v20 = *(v0 + 48);
  v31 = *(v0 + 56);
  v21 = *(v0 + 32);
  v22 = *(v0 + 40);

  v23 = sub_1B8565D68();

  [v32 setBody_];

  v33 = sub_1B85659B8();
  v34 = v24;
  sub_1B851CC5C(v21, v22, v20, v31, 0, &v33, v32);

  v25 = v32;
  v26 = sub_1B8565D68();
  v27 = [objc_opt_self() requestWithIdentifier:v26 content:v25 trigger:0];
  *(v0 + 96) = v27;

  v28 = swift_task_alloc();
  *(v0 + 104) = v28;
  *v28 = v0;
  v28[1] = sub_1B851A634;
  v29 = *(v0 + 80);

  return sub_1B85173BC(v27, 1);
}

uint64_t sub_1B851A634()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_1B851A7B0;
  }

  else
  {

    v4 = sub_1B851A750;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B851A750()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B851A7B0()
{
  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8565B78();
  __swift_project_value_buffer(v1, qword_1ED985C68);
  v2 = sub_1B8565B48();
  v3 = sub_1B8566218();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B8447000, v2, v3, "Unable to schedule passkey updated notification", v7, 2u);
    MEMORY[0x1B8CC1710](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B851AAA4(int a1, int a2, int a3, void *a4, int a5, void *aBlock, void *a7, int a8, char a9)
{
  v9[2] = a7;
  v9[3] = _Block_copy(aBlock);
  v26 = sub_1B8565DA8();
  v13 = v12;
  v9[4] = v12;
  v14 = sub_1B8565DA8();
  v16 = v15;
  v9[5] = v15;
  v17 = sub_1B8565DA8();
  v19 = v18;
  v9[6] = v18;
  v20 = a4;
  a7;
  v21 = sub_1B85659D8();
  v23 = v22;

  v9[7] = v21;
  v9[8] = v23;
  v24 = swift_task_alloc();
  v9[9] = v24;
  *v24 = v9;
  v24[1] = sub_1B851AC0C;

  return WBSPasswordsNotificationManager.schedulePasskeyUpdatedNotification(forApp:relyingPartyID:userName:credentialID:shouldUseRelyingPartyForServiceName:)(v26, v13, v14, v16, v17, v19, v21, v23);
}

uint64_t sub_1B851AC0C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v7 = *(*v0 + 24);
  v8 = *(*v0 + 16);
  v11 = *v0;

  sub_1B851D53C(v3, v2);

  v7[2](v7);
  _Block_release(v7);
  v9 = *(v11 + 8);

  return v9();
}

uint64_t WBSPasswordsNotificationManager.schedulePasskeyMovedToRecentlyDeletedNotification(forApp:relyingPartyID:userName:credentialID:shouldUseRelyingPartyForServiceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 72) = a8;
  *(v9 + 80) = v8;
  *(v9 + 128) = v13;
  *(v9 + 56) = a6;
  *(v9 + 64) = a7;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120) - 8) + 64) + 15;
  *(v9 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B851AE9C, 0, 0);
}

uint64_t sub_1B851AE9C()
{
  v41 = v0;
  v1 = *(v0 + 128);
  v2 = [objc_allocWithZone(MEMORY[0x1E6983228]) init];
  *(v0 + 96) = v2;
  sub_1B8457180();

  v3 = sub_1B8565D68();

  [v2 setTitle_];

  if (v1 == 1)
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v36 = 0x1000000000000066;
    v37 = 0x80000001B858D620;
    v38 = 0;
    v39 = 0;
    v40 = &dword_1B8447000;
    sub_1B8457180();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A540, &qword_1B8574108);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1B85740F0;
    v9 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    v10 = sub_1B851C674();
    *(v8 + 32) = v7;
    *(v8 + 40) = v6;
    *(v8 + 96) = v9;
    *(v8 + 104) = v10;
    *(v8 + 64) = v10;
    *(v8 + 72) = v5;
    *(v8 + 80) = v4;
  }

  else
  {
    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    v36 = 0x100000000000005ALL;
    v37 = 0x80000001B858D5C0;
    v38 = 0;
    v39 = 0;
    v40 = &dword_1B8447000;
    sub_1B8457180();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A540, &qword_1B8574108);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1B85740F0;
    v16 = MEMORY[0x1E69E6158];
    *(v15 + 56) = MEMORY[0x1E69E6158];
    v17 = sub_1B851C674();
    *(v15 + 32) = v14;
    *(v15 + 40) = v13;
    *(v15 + 96) = v16;
    *(v15 + 104) = v17;
    *(v15 + 64) = v17;
    *(v15 + 72) = v12;
    *(v15 + 80) = v11;
  }

  sub_1B8565D78();
  v18 = *(v0 + 80);
  v19 = *(v0 + 88);

  v20 = sub_1B8565D68();

  [v2 setBody_];

  sub_1B851B5A0(v19);
  v21 = sub_1B8565938();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v19, 1, v21) != 1)
  {
    v24 = *(v0 + 88);
    v23 = sub_1B85658F8();
    (*(v22 + 8))(v24, v21);
  }

  v26 = *(v0 + 64);
  v25 = *(v0 + 72);
  v28 = *(v0 + 48);
  v27 = *(v0 + 56);
  v30 = *(v0 + 32);
  v29 = *(v0 + 40);
  [v2 setDefaultActionURL_];

  v36 = sub_1B85659B8();
  v37 = v31;
  sub_1B851CC5C(v30, v29, v28, v27, 0, &v36, v2);

  v32 = [objc_opt_self() requestWithIdentifier:@"com.apple.Passwords.Notifications.RecentlyDeleted" content:v2 trigger:0];
  *(v0 + 104) = v32;
  v33 = swift_task_alloc();
  *(v0 + 112) = v33;
  *v33 = v0;
  v33[1] = sub_1B851B2D8;
  v34 = *(v0 + 80);

  return sub_1B85173BC(v32, 1);
}

uint64_t sub_1B851B2D8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1B851B45C;
  }

  else
  {

    v4 = sub_1B851B3F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B851B3F4()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B851B45C()
{
  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8565B78();
  __swift_project_value_buffer(v1, qword_1ED985C68);
  v2 = sub_1B8565B48();
  v3 = sub_1B8566218();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B8447000, v2, v3, "Unable to schedule passkey deleted notification", v7, 2u);
    MEMORY[0x1B8CC1710](v7, -1, -1);
  }

  v8 = *(v0 + 88);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B851B5A0@<X0>(uint64_t a1@<X8>)
{
  if ([objc_opt_self() isPasswordsAppInstalled])
  {
    v2 = [objc_opt_self() passwordManagerURLForRecentlyDeleted];
    sub_1B8565908();

    v3 = sub_1B8565938();
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 0, 1, v3);
  }

  else
  {
    v6 = [objc_opt_self() resourceSpecifierEncodedKey:@"recentlyDeleted" value:@"true"];
    sub_1B8565DA8();

    sub_1B8565F78();
    sub_1B8565EB8();

    sub_1B8565928();
  }
}

uint64_t sub_1B851B910(int a1, int a2, int a3, void *a4, int a5, void *aBlock, void *a7, int a8, char a9)
{
  v9[2] = a7;
  v9[3] = _Block_copy(aBlock);
  v26 = sub_1B8565DA8();
  v13 = v12;
  v9[4] = v12;
  v14 = sub_1B8565DA8();
  v16 = v15;
  v9[5] = v15;
  v17 = sub_1B8565DA8();
  v19 = v18;
  v9[6] = v18;
  v20 = a4;
  a7;
  v21 = sub_1B85659D8();
  v23 = v22;

  v9[7] = v21;
  v9[8] = v23;
  v24 = swift_task_alloc();
  v9[9] = v24;
  *v24 = v9;
  v24[1] = sub_1B851F918;

  return WBSPasswordsNotificationManager.schedulePasskeyMovedToRecentlyDeletedNotification(forApp:relyingPartyID:userName:credentialID:shouldUseRelyingPartyForServiceName:)(v26, v13, v14, v16, v17, v19, v21, v23);
}

uint64_t WBSPasswordsNotificationManager.schedulePasswordMovedToRecentlyDeletedNotification(forApp:domain:userName:shouldUseRelyingPartyForServiceName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 56) = a6;
  *(v8 + 64) = v7;
  *(v8 + 112) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A550, &qword_1B8574120) - 8) + 64) + 15;
  *(v8 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B851BB24, 0, 0);
}

uint64_t sub_1B851BB24()
{
  v35 = v0;
  v1 = *(v0 + 112);
  v2 = [objc_allocWithZone(MEMORY[0x1E6983228]) init];
  *(v0 + 80) = v2;
  v30 = 0xD000000000000010;
  v31 = 0x80000001B858D690;
  v32 = 0;
  v33 = 0;
  v34 = &dword_1B8447000;
  sub_1B8457180();

  v3 = sub_1B8565D68();

  [v2 setTitle_];

  if (v1 == 1)
  {
    v4 = *(v0 + 48);
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);
    v28 = v4;
    v29 = *(v0 + 32);
    v7 = 0x80000001B858D770;
    v30 = 0x100000000000007FLL;
    v31 = 0x80000001B858D6B0;
    v8 = 0xD000000000000034;
  }

  else
  {
    v9 = *(v0 + 48);
    v5 = *(v0 + 56);
    v6 = *(v0 + 24);
    v28 = v9;
    v29 = *(v0 + 16);
    v7 = 0x80000001B858D730;
    v30 = 0x100000000000007FLL;
    v31 = 0x80000001B858D6B0;
    v8 = 0xD000000000000030;
  }

  v32 = v8;
  v33 = v7;
  v34 = &dword_1B8447000;
  sub_1B8457180();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A540, &qword_1B8574108);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B85740F0;
  v11 = MEMORY[0x1E69E6158];
  *(v10 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1B851C674();
  *(v10 + 32) = v28;
  *(v10 + 40) = v5;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = v29;
  *(v10 + 80) = v6;

  sub_1B8565D78();
  v13 = *(v0 + 64);
  v14 = *(v0 + 72);

  v15 = sub_1B8565D68();

  [v2 setBody_];

  sub_1B851B5A0(v14);
  v16 = sub_1B8565938();
  v17 = *(v16 - 8);
  v18 = 0;
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    v19 = *(v0 + 72);
    v18 = sub_1B85658F8();
    (*(v17 + 8))(v19, v16);
  }

  v21 = *(v0 + 48);
  v20 = *(v0 + 56);
  v23 = *(v0 + 32);
  v22 = *(v0 + 40);
  [v2 setDefaultActionURL_];

  v30 = 0;
  v31 = 0;
  sub_1B851CC5C(v23, v22, v21, v20, 0, &v30, v2);
  v24 = [objc_opt_self() requestWithIdentifier:@"com.apple.Passwords.Notifications.RecentlyDeleted" content:v2 trigger:0];
  *(v0 + 88) = v24;
  v25 = swift_task_alloc();
  *(v0 + 96) = v25;
  *v25 = v0;
  v25[1] = sub_1B851BEE4;
  v26 = *(v0 + 64);

  return sub_1B85173BC(v24, 1);
}

uint64_t sub_1B851BEE4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_1B851C068;
  }

  else
  {

    v4 = sub_1B851C000;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B851C000()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B851C068()
{
  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v1 = sub_1B8565B78();
  __swift_project_value_buffer(v1, qword_1ED985C68);
  v2 = sub_1B8565B48();
  v3 = sub_1B8566218();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  v6 = *(v0 + 80);
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B8447000, v2, v3, "Unable to schedule password deleted notification", v7, 2u);
    MEMORY[0x1B8CC1710](v7, -1, -1);
  }

  v8 = *(v0 + 72);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B851C358(int a1, int a2, int a3, char a4, void *aBlock, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  v9 = sub_1B8565DA8();
  v11 = v10;
  v6[4] = v10;
  v12 = sub_1B8565DA8();
  v14 = v13;
  v6[5] = v13;
  v15 = sub_1B8565DA8();
  v17 = v16;
  v6[6] = v16;
  a6;
  v18 = swift_task_alloc();
  v6[7] = v18;
  *v18 = v6;
  v18[1] = sub_1B851C490;

  return WBSPasswordsNotificationManager.schedulePasswordMovedToRecentlyDeletedNotification(forApp:domain:userName:shouldUseRelyingPartyForServiceName:)(v9, v11, v12, v14, v15, v17, a4);
}

uint64_t sub_1B851C490()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 32);
  v5 = *(*v0 + 24);
  v6 = *(*v0 + 16);
  v9 = *v0;

  v5[2](v5);
  _Block_release(v5);
  v7 = *(v9 + 8);

  return v7();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B851C674()
{
  result = qword_1EBA8A548;
  if (!qword_1EBA8A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A548);
  }

  return result;
}

void *sub_1B851C6C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B851C6E4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B8565B08();
}

uint64_t sub_1B851C730()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1B8565AF8();
}

uint64_t sub_1B851C788()
{
  sub_1B85667D8();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1B8565AF8();
  return sub_1B8566808();
}

uint64_t sub_1B851C7F8(uint64_t a1, id *a2)
{
  result = sub_1B8565D88();
  *a2 = 0;
  return result;
}

uint64_t sub_1B851C870(uint64_t a1, id *a2)
{
  v3 = sub_1B8565D98();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B851C8F0@<X0>(uint64_t *a1@<X8>)
{
  sub_1B8565DA8();
  v2 = sub_1B8565D68();

  *a1 = v2;
  return result;
}

uint64_t sub_1B851C934@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B8565D68();

  *a2 = v5;
  return result;
}

uint64_t sub_1B851C97C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1B8565DA8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1B851C9A8()
{
  v1 = *v0;
  v2 = sub_1B8565DA8();
  v3 = MEMORY[0x1B8CBF190](v2);

  return v3;
}

uint64_t sub_1B851C9E4()
{
  v1 = *v0;
  sub_1B8565DA8();
  sub_1B8565D38();
}

uint64_t sub_1B851CA38()
{
  v1 = *v0;
  sub_1B8565DA8();
  sub_1B85667D8();
  sub_1B8565D38();
  v2 = sub_1B8566808();

  return v2;
}

uint64_t sub_1B851CAAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1B8565DA8();
  v6 = v5;
  if (v4 == sub_1B8565DA8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B8566758();
  }

  return v9 & 1;
}

uint64_t sub_1B851CB34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1B8565AE8();
}

uint64_t sub_1B851CBA0(uint64_t a1)
{
  v2 = sub_1B851D0DC(&qword_1EBA8A628, type metadata accessor for Name);
  v3 = sub_1B851D0DC(&qword_1EBA8A630, type metadata accessor for Name);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1B851CC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7)
{
  v13 = MEMORY[0x1E69E7CC8];
  v15 = *a6;
  v14 = a6[1];
  v30 = MEMORY[0x1E69E7CC8];
  *&v27 = 0x6576654C68676968;
  *(&v27 + 1) = 0xEF6E69616D6F446CLL;
  v16 = MEMORY[0x1E69E6158];
  sub_1B85663A8();
  if (a2)
  {
    v28 = v16;
    *&v27 = a1;
    *(&v27 + 1) = a2;
    sub_1B851F84C(&v27, v26);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B8553EE8(v26, v29, isUniquelyReferenced_nonNull_native);
    sub_1B851F7F8(v29);
    v30 = v13;
  }

  else
  {
    sub_1B8525AFC(v29, &v27);
    sub_1B851F790(&v27);
    sub_1B851F7F8(v29);
  }

  *&v27 = 0x656D614E72657375;
  *(&v27 + 1) = 0xE800000000000000;
  v18 = MEMORY[0x1E69E6158];
  sub_1B85663A8();
  if (a4)
  {
    v28 = v18;
    *&v27 = a3;
    *(&v27 + 1) = a4;
    sub_1B851F84C(&v27, v26);

    v19 = v30;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B8553EE8(v26, v29, v20);
    sub_1B851F7F8(v29);
    v30 = v19;
  }

  else
  {
    sub_1B8525AFC(v29, &v27);
    sub_1B851F790(&v27);
    sub_1B851F7F8(v29);
  }

  *&v27 = 0x7365746973;
  *(&v27 + 1) = 0xE500000000000000;
  sub_1B85663A8();
  if (a5)
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA8A700, &qword_1B8574550);
    *&v27 = a5;
    sub_1B851F84C(&v27, v26);

    v21 = v30;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B8553EE8(v26, v29, v22);
    sub_1B851F7F8(v29);
    v30 = v21;
  }

  else
  {
    sub_1B8525AFC(v29, &v27);
    sub_1B851F790(&v27);
    sub_1B851F7F8(v29);
  }

  *&v27 = 0xD000000000000013;
  *(&v27 + 1) = 0x80000001B858DF00;
  v23 = MEMORY[0x1E69E6158];
  sub_1B85663A8();
  if (v14)
  {
    v28 = v23;
    *&v27 = v15;
    *(&v27 + 1) = v14;
    sub_1B851F84C(&v27, v26);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1B8553EE8(v26, v29, v24);
  }

  else
  {
    sub_1B8525AFC(v29, &v27);
    sub_1B851F790(&v27);
  }

  sub_1B851F7F8(v29);
  v25 = sub_1B8565CB8();

  [a7 setUserInfo_];
}

uint64_t sub_1B851D0DC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B851D1FC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B851F914;

  return sub_1B851C358(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1B851D2D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B851F914;

  return sub_1B85349C8(v2, v3, v5);
}

uint64_t sub_1B851D394(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B851F914;

  return sub_1B8534AB0(a1, v4, v5, v7);
}

uint64_t sub_1B851D460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v13 = *(v9 + 32);
  v14 = *(v9 + 40);
  v15 = *(v9 + 48);
  v17 = *(v9 + 56);
  v16 = *(v9 + 64);
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_1B851F914;

  return sub_1B851B910(v11, v12, v13, v14, v15, v17, v16, sub_1B851B910, a9);
}

uint64_t sub_1B851D53C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t objectdestroy_32Tm()
{
  _Block_release(*(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B851D5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *(v9 + 16);
  v12 = *(v9 + 24);
  v13 = *(v9 + 32);
  v14 = *(v9 + 40);
  v15 = *(v9 + 48);
  v17 = *(v9 + 56);
  v16 = *(v9 + 64);
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_1B851F914;

  return sub_1B851AAA4(v11, v12, v13, v14, v15, v17, v16, sub_1B851AAA4, a9);
}

uint64_t sub_1B851D6CC(void *a1, void *a2)
{
  v4 = [a1 highLevelDomain];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B8565DA8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = [a1 user];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1B8565DA8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a1 sites];
  if (v14)
  {
    v15 = v14;
    v16 = sub_1B8566008();
  }

  else
  {
    v16 = 0;
  }

  v17 = [a1 passkeyCredentialID];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1B8565DA8();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v23[0] = v19;
  v23[1] = v21;
  sub_1B851CC5C(v6, v8, v11, v13, v16, v23, a2);
}

id sub_1B851D854(void *a1)
{
  v2 = sub_1B8565938();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E6983228]) init];
  strcpy(v22, "Password Saved");
  HIBYTE(v22[1]) = -18;
  v23 = 0;
  v24 = 0;
  v25 = &dword_1B8447000;
  sub_1B8457180();

  v8 = sub_1B8565D68();

  [v7 setTitle_];

  v9 = [a1 userVisibleDomain];
  v10 = sub_1B8565DA8();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v22[0] = 0x1000000000000048;
    v22[1] = 0x80000001B858DD90;
    v23 = 0;
    v24 = 0;
    v25 = &dword_1B8447000;
    sub_1B8457180();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A540, &qword_1B8574108);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B85740E0;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1B851C674();
    *(v14 + 32) = v10;
    *(v14 + 40) = v12;
    sub_1B8565D78();
  }

  else
  {

    v22[0] = 0xD00000000000003BLL;
    v22[1] = 0x80000001B858DE00;
    v23 = 0;
    v24 = 0;
    v25 = &dword_1B8447000;
    sub_1B8457180();
  }

  v15 = sub_1B8565D68();

  [v7 setBody_];

  v16 = sub_1B8565D68();
  [v7 setCategoryIdentifier_];

  v17 = [objc_opt_self() urlForDetailViewOfSavedAccount_];
  if (v17)
  {
    v18 = v17;
    sub_1B8565908();

    v19 = sub_1B85658F8();
    [v7 setDefaultActionURL_];

    (*(v3 + 8))(v6, v2);
  }

  sub_1B851D6CC(a1, v7);
  return v7;
}

id sub_1B851DBEC(void *a1)
{
  v2 = sub_1B8565938();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E6983228]) init];
  v22 = 0xD000000000000010;
  v23 = 0x80000001B858DCC0;
  v24 = 0;
  v25 = 0;
  v26 = &dword_1B8447000;
  sub_1B8457180();

  v8 = sub_1B8565D68();

  [v7 setTitle_];

  v9 = [a1 userVisibleDomain];
  v10 = sub_1B8565DA8();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v22 = 0x100000000000004ALL;
    v23 = 0x80000001B858DCE0;
    v24 = 0;
    v25 = 0;
    v26 = &dword_1B8447000;
    sub_1B8457180();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A540, &qword_1B8574108);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B85740E0;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = sub_1B851C674();
    *(v14 + 32) = v10;
    *(v14 + 40) = v12;
    sub_1B8565D78();
  }

  else
  {

    v22 = 0xD00000000000003DLL;
    v23 = 0x80000001B858DD50;
    v24 = 0;
    v25 = 0;
    v26 = &dword_1B8447000;
    sub_1B8457180();
  }

  v15 = sub_1B8565D68();

  [v7 setBody_];

  v16 = sub_1B8565D68();
  [v7 setCategoryIdentifier_];

  v17 = [objc_opt_self() urlForDetailViewOfSavedAccount_];
  if (v17)
  {
    v18 = v17;
    sub_1B8565908();

    v19 = sub_1B85658F8();
    [v7 setDefaultActionURL_];

    (*(v3 + 8))(v6, v2);
  }

  sub_1B851D6CC(a1, v7);
  return v7;
}

id sub_1B851DF78()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6983228]) init];
  sub_1B8457180();

  v1 = sub_1B8565D68();

  [v0 setTitle_];

  v2 = [objc_opt_self() sharedMonitor];
  [v2 isKeychainSyncEnabled];

  sub_1B8457180();

  v3 = sub_1B8565D68();

  [v0 setBody_];

  v4 = sub_1B8565D68();
  [v0 setCategoryIdentifier_];

  return v0;
}

uint64_t sub_1B851E148(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000003BLL && 0x80000001B858DA20 == a2 || (sub_1B8566758() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0xD000000000000037 && 0x80000001B858DA60 == a2 || (sub_1B8566758() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0xD000000000000038 && 0x80000001B858D530 == a2 || (sub_1B8566758() & 1) != 0)
  {
    return 9;
  }

  if (a1 == 0xD000000000000039 && 0x80000001B858DAA0 == a2 || (sub_1B8566758() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0xD00000000000002BLL && 0x80000001B858D360 == a2 || (sub_1B8566758() & 1) != 0)
  {
    return 4;
  }

  if (sub_1B8565DA8() == a1 && v5 == a2)
  {

    return 6;
  }

  v6 = sub_1B8566758();

  if (v6)
  {
    return 6;
  }

  if (sub_1B8565DA8() == a1 && v7 == a2)
  {

    return 5;
  }

  v8 = sub_1B8566758();

  if (v8)
  {
    return 5;
  }

  if (a1 == 0xD000000000000026 && 0x80000001B858DAE0 == a2)
  {
    return 8;
  }

  if (sub_1B8566758())
  {
    return 8;
  }

  return 0;
}

uint64_t sub_1B851E3EC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1B8565B88();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B8565BA8();
  v12 = *(v27 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 request];
  v17 = [v16 content];

  v18 = [v17 userInfo];
  v19 = sub_1B8565CC8();

  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;

  v21 = [v4 delegate];
  sub_1B8451F34(0, &qword_1EBA8A640, 0x1E69E9610);
  v22 = sub_1B8566238();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = v4;
  *(v23 + 32) = xmmword_1B85740E0;
  *(v23 + 48) = v19;
  *(v23 + 56) = sub_1B851F038;
  *(v23 + 64) = v20;
  aBlock[4] = sub_1B851F910;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B851A050;
  aBlock[3] = &block_descriptor_79;
  v24 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v25 = v4;

  sub_1B8565B98();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B851D0DC(&qword_1EBA8A6A8, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A6B0, &qword_1B8574480);
  sub_1B851EF8C();
  sub_1B8566318();
  MEMORY[0x1B8CBF4A0](0, v15, v11, v24);
  _Block_release(v24);
  swift_unknownObjectRelease();

  (*(v28 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v27);
}

uint64_t sub_1B851E7C8(void *a1, void *a2, void (**a3)(void))
{
  v68 = a2;
  v5 = sub_1B8565B88();
  v71 = *(v5 - 8);
  v6 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B8565BA8();
  v69 = *(v9 - 8);
  v70 = v9;
  v10 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  _Block_copy(a3);
  v14 = [a1 notification];
  v15 = &unk_1E7CF5000;
  v16 = [v14 request];

  v17 = [v16 identifier];
  v18 = sub_1B8565DA8();
  v20 = v19;

  v21 = sub_1B851E148(v18, v20);
  LOBYTE(v17) = v22;

  if (v17)
  {
    goto LABEL_2;
  }

  v67 = v21;
  v42 = [a1 actionIdentifier];
  v43 = sub_1B8565DA8();
  v45 = v44;

  v46 = *MEMORY[0x1E69833F0];
  if (sub_1B8565DA8() == v43 && v47 == v45)
  {
    v48 = 0;
    v15 = &unk_1E7CF5000;
LABEL_12:

LABEL_15:

    v50 = v48;
LABEL_16:
    v51 = [a1 notification];
    v52 = [v51 v15[429]];

    v53 = [v52 content];
    v54 = [v53 userInfo];

    v55 = sub_1B8565CC8();
    v56 = v68;
    v57 = [v68 delegate];
    sub_1B8451F34(0, &qword_1EBA8A640, 0x1E69E9610);
    v58 = sub_1B8566238();
    v59 = swift_allocObject();
    v59[2] = v57;
    v59[3] = v56;
    v60 = v67;
    v59[4] = v50;
    v59[5] = v60;
    v59[6] = v55;
    v59[7] = sub_1B851EF78;
    v59[8] = v13;
    aBlock[4] = sub_1B851EF88;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B851A050;
    aBlock[3] = &block_descriptor;
    v61 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    v62 = v56;

    sub_1B8565B98();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B851D0DC(&qword_1EBA8A6A8, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A6B0, &qword_1B8574480);
    sub_1B851EF8C();
    sub_1B8566318();
    MEMORY[0x1B8CBF4A0](0, v12, v8, v61);
    _Block_release(v61);
    swift_unknownObjectRelease();

    (*(v71 + 8))(v8, v5);
    (*(v69 + 8))(v12, v70);
  }

  v49 = sub_1B8566758();

  if (v49)
  {
    v48 = 0;
    v15 = &unk_1E7CF5000;
    goto LABEL_15;
  }

  v63 = *MEMORY[0x1E69833E8];
  v15 = &unk_1E7CF5000;
  if (sub_1B8565DA8() == v43 && v64 == v45)
  {
    v48 = 1;
    goto LABEL_12;
  }

  v65 = sub_1B8566758();

  if (v65)
  {
    v50 = 1;
    goto LABEL_16;
  }

LABEL_2:
  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v23 = sub_1B8565B78();
  __swift_project_value_buffer(v23, qword_1ED985C68);
  v24 = a1;
  v25 = sub_1B8565B48();
  v26 = sub_1B8566218();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315394;
    v29 = [v24 notification];
    v30 = [v29 v15[429]];

    v31 = [v30 identifier];
    v32 = sub_1B8565DA8();
    v34 = v33;

    v35 = sub_1B8525560(v32, v34, aBlock);

    *(v27 + 4) = v35;
    *(v27 + 12) = 2080;
    v36 = [v24 actionIdentifier];
    v37 = sub_1B8565DA8();
    v39 = v38;

    v40 = sub_1B8525560(v37, v39, aBlock);

    *(v27 + 14) = v40;
    _os_log_impl(&dword_1B8447000, v25, v26, "Could not get notification type (%s) or response type (%s) for user notification", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CC1710](v28, -1, -1);
    MEMORY[0x1B8CC1710](v27, -1, -1);
  }

  a3[2](a3);
}

unint64_t sub_1B851EF8C()
{
  result = qword_1EBA8A6B8;
  if (!qword_1EBA8A6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA8A6B0, &qword_1B8574480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A6B8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B851F038()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1(0);
}

uint64_t objectdestroy_65Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B851F0C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B851F914;

  return sub_1B8519A98(v2, v3, v4, v5, v7, v6);
}

uint64_t sub_1B851F1A4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B851F914;

  return sub_1B8518E40(v2, v3);
}

uint64_t sub_1B851F250(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B851F31C;

  return sub_1B8534AB0(a1, v4, v5, v7);
}

uint64_t sub_1B851F31C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B851F410()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B851F914;

  return sub_1B8518740(v2, v3, v4);
}

uint64_t objectdestroy_119Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B851F50C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B851F914;

  return sub_1B851800C(v2, v3, v4);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B851F61C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2([a1 authorizationStatus]);
}

uint64_t sub_1B851F688(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1B851F790(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A6F8, &qword_1B8574548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1B851F84C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B851F86C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B851F88C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void sub_1B851F954(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A860, &qword_1B8574758);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8574680;
  *(inited + 32) = sub_1B8565DA8();
  *(inited + 40) = v3;
  v4 = *(a1 + 2);
  v5 = sub_1B8565D68();
  v59 = objc_opt_self();
  v6 = [v59 cborWithUTF8String_];

  v60 = v4;
  v7 = sub_1B8530A58(v6, v4);

  if (!v7 || (v8 = [v7 string], v7, !v8))
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v9 = sub_1B8565DA8();
  v11 = v10;

  v12 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  *(inited + 80) = sub_1B8565DA8();
  *(inited + 88) = v13;
  v14 = *(a1 + 5);
  v15 = *(a1 + 6);
  *(inited + 120) = MEMORY[0x1E6969080];
  *(inited + 96) = v14;
  *(inited + 104) = v15;
  *(inited + 128) = sub_1B8565DA8();
  *(inited + 136) = v16;
  v17 = *(a1 + 3);
  v18 = *(a1 + 4);
  *(inited + 168) = v12;
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  *(inited + 176) = sub_1B8565DA8();
  *(inited + 184) = v19;
  v20 = type metadata accessor for WBSKeychainPasskey();
  v21 = v20[8];
  v22 = sub_1B8565A38();
  *(inited + 216) = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 192));
  v24 = *(*(v22 - 8) + 16);
  v24(boxed_opaque_existential_0, &a1[v21], v22);
  *(inited + 224) = sub_1B8565DA8();
  *(inited + 232) = v25;
  v26 = v20[9];
  *(inited + 264) = v22;
  v27 = __swift_allocate_boxed_opaque_existential_0((inited + 240));
  v24(v27, &a1[v26], v22);
  *(inited + 272) = sub_1B8565DA8();
  *(inited + 280) = v28;
  v29 = a1[v20[10]];
  *(inited + 312) = MEMORY[0x1E69E6370];
  *(inited + 288) = v29;
  *(inited + 320) = sub_1B8565DA8();
  *(inited + 328) = v30;

  sub_1B852550C(v14, v15);
  v31 = sub_1B8565D68();
  v32 = [v59 cborWithUTF8String_];

  v33 = sub_1B8530A58(v32, v60);
  if (!v33)
  {
    goto LABEL_11;
  }

  v34 = [v33 data];

  if (!v34)
  {
    goto LABEL_11;
  }

  v35 = sub_1B85659D8();
  v37 = v36;

  v38 = sub_1B85659B8();
  v40 = v39;
  sub_1B851D53C(v35, v37);
  v41 = MEMORY[0x1E69E6158];
  *(inited + 360) = MEMORY[0x1E69E6158];
  *(inited + 336) = v38;
  *(inited + 344) = v40;
  v42 = sub_1B8525DBC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A868, &qword_1B8574760);
  swift_arrayDestroy();
  v64 = v42;
  v43 = sub_1B8565DA8();
  v45 = v44;
  v46 = &a1[v20[11]];
  v47 = *v46;
  v48 = v46[1];
  v63 = v41;
  *&v62 = v47;
  *(&v62 + 1) = v48;
  sub_1B851F84C(&v62, v61);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B8554034(v61, v43, v45, isUniquelyReferenced_nonNull_native);

  v64 = v42;
  if ([v58 isForTesting])
  {
    v50 = sub_1B8565DA8();
    v52 = v51;
    v53 = sub_1B8565D68();
    v54 = [v59 cborWithUTF8String_];

    v55 = sub_1B8530A58(v54, v60);
    if (v55)
    {
      v56 = [v55 BOOLValue];

      v63 = MEMORY[0x1E69E6370];
      LOBYTE(v62) = v56;
      sub_1B851F84C(&v62, v61);
      v57 = swift_isUniquelyReferenced_nonNull_native();
      sub_1B8554034(v61, v50, v52, v57);
    }

    else
    {
      sub_1B8525BA0(v50, v52, &v62);

      sub_1B8456588(&v62, &qword_1EBA8A6F8, &qword_1B8574548);
    }
  }
}

uint64_t sub_1B851FE7C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B85266D0;
    *(v9 + 24) = v8;

    v13 = v2;
    sub_1B8526714(&v13, v14);
    v2 = v3;

    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v9;
      }

      __break(1u);
    }

    v9 = v14[0];
    v11 = swift_isEscapingClosureAtFileLocation();

    if ((v11 & 1) == 0)
    {
      return v9;
    }

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1B8566448();
  MEMORY[0x1B8CBF120](0xD00000000000003FLL, 0x80000001B858DFE0);
  v13 = v2;
  type metadata accessor for WBSPasskeyStore();
  sub_1B8566548();
  MEMORY[0x1B8CBF120](46, 0xE100000000000000);
  result = sub_1B85665A8();
  __break(1u);
  return result;
}

uint64_t sub_1B8520078(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B8526598;
    *(v9 + 24) = v8;

    v13 = v2;
    sub_1B85265DC(&v13, &v14);
    v2 = v3;

    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return isEscapingClosureAtFileLocation;
      }

      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = v14;
      v11 = swift_isEscapingClosureAtFileLocation();

      if ((v11 & 1) == 0)
      {
        return isEscapingClosureAtFileLocation;
      }
    }

    __break(1u);
  }

  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  sub_1B8566448();
  MEMORY[0x1B8CBF120](0xD00000000000003FLL, 0x80000001B858DFE0);
  v13 = v2;
  type metadata accessor for WBSPasskeyStore();
  sub_1B8566548();
  MEMORY[0x1B8CBF120](46, 0xE100000000000000);
  result = sub_1B85665A8();
  __break(1u);
  return result;
}

uint64_t sub_1B8520298(uint64_t a1)
{
  v3 = [v1 passkeyStore];
  v7 = v1;
  v4 = sub_1B8450D18(a1, &v6);

  return v4;
}

uint64_t WBSSavedAccountStore.passkeys(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B8520348, 0, 0);
}

uint64_t sub_1B8520348()
{
  *(v0 + 40) = [*(v0 + 32) passkeyStore];
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B8520400;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return WBSPasskeyStore.passkeys(for:)(v3, v2);
}

uint64_t sub_1B8520400(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8520558, 0, 0);
  }

  else
  {
    v7 = *(v4 + 40);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_1B8520558()
{
  v1 = v0[5];

  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8565B78();
  __swift_project_value_buffer(v2, qword_1ED985C68);
  v3 = sub_1B8565B48();
  v4 = sub_1B8566218();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[7];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B8447000, v3, v4, "Could not find passkeys for relyingParty", v7, 2u);
    MEMORY[0x1B8CC1710](v7, -1, -1);
  }

  v8 = v0[1];
  v9 = MEMORY[0x1E69E7CC0];

  return v8(v9);
}

uint64_t WBSSavedAccountStore.passkey(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B85206AC, 0, 0);
}

uint64_t sub_1B85206AC()
{
  *(v0 + 48) = [*(v0 + 40) passkeyStore];
  *(v0 + 56) = sub_1B8565DA8();
  *(v0 + 64) = v1;
  type metadata accessor for WBSPasskeyStore();
  sub_1B8526624(&qword_1EBA8A790, type metadata accessor for WBSPasskeyStore);
  v3 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B8520794, v3, v2);
}

uint64_t sub_1B8520794()
{
  v1 = v0[6];
  WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)(v0[3], v0[4], v0[7], v0[8], 0, v0[2]);
  v0[9] = 0;
  v2 = v0[8];
  v3 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1B8520844, 0, 0);
}

uint64_t sub_1B8520844()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for WBSKeychainPasskey();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B85208E0()
{
  v22 = v0;
  v1 = v0[8];
  v2 = v0[6];

  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_1B8565B78();
  __swift_project_value_buffer(v5, qword_1ED985C68);
  sub_1B852550C(v4, v3);
  v6 = sub_1B8565B48();
  v7 = sub_1B8566218();
  sub_1B851D53C(v4, v3);
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[9];
  if (v8)
  {
    v11 = v0[3];
    v10 = v0[4];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    v14 = sub_1B85659B8();
    v16 = sub_1B8525560(v14, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B8447000, v6, v7, "Could not find passkey with ID: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B8CC1710](v13, -1, -1);
    MEMORY[0x1B8CC1710](v12, -1, -1);
  }

  v17 = v0[2];
  v18 = type metadata accessor for WBSKeychainPasskey();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = v0[1];

  return v19();
}

uint64_t WBSSavedAccountStore.passkeyData(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(type metadata accessor for WBSKeychainPasskey() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8520B7C, 0, 0);
}

uint64_t sub_1B8520B7C()
{
  *(v0 + 48) = [*(v0 + 32) passkeyStore];
  *(v0 + 56) = sub_1B8565DA8();
  *(v0 + 64) = v1;
  type metadata accessor for WBSPasskeyStore();
  sub_1B8526624(&qword_1EBA8A790, type metadata accessor for WBSPasskeyStore);
  v3 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B8520C64, v3, v2);
}

uint64_t sub_1B8520C64()
{
  v1 = v0[6];
  WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)(v0[2], v0[3], v0[7], v0[8], 0, v0[5]);
  v0[9] = 0;
  v2 = v0[8];
  v3 = v0[6];

  return MEMORY[0x1EEE6DFA0](sub_1B8520D10, 0, 0);
}

uint64_t sub_1B8520D10()
{
  v2 = v0[4];
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A798, &qword_1B85746C8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B85740E0;
  sub_1B851F954(v1);
  *(v3 + 32) = v4;
  sub_1B85260A0(v1, type metadata accessor for WBSKeychainPasskey);
  v5 = v0[5];

  v6 = v0[1];

  return v6(v3);
}

uint64_t sub_1B8520DD8()
{
  v20 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = sub_1B8565B78();
  __swift_project_value_buffer(v5, qword_1ED985C68);
  sub_1B852550C(v4, v3);
  v6 = sub_1B8565B48();
  v7 = sub_1B8566218();
  sub_1B851D53C(v4, v3);
  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 16);
    v8 = *(v0 + 24);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    v12 = sub_1B85659B8();
    v14 = sub_1B8525560(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1B8447000, v6, v7, "Could not find passkey with ID: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B8CC1710](v11, -1, -1);
    MEMORY[0x1B8CC1710](v10, -1, -1);
  }

  v15 = *(v0 + 40);

  v16 = *(v0 + 8);
  v17 = MEMORY[0x1E69E7CC0];

  return v16(v17);
}

uint64_t WBSSavedAccountStore.passkeyDataForPasskeyCredentialID(onInternalQueue:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 passkeyStore];
  v8[2] = a1;
  v8[3] = a2;
  v9 = v2;
  v6 = sub_1B8450D18(sub_1B8525A94, v8);

  return v6;
}

void sub_1B8521048(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for WBSKeychainPasskey();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B8565DA8();
  WBSPasskeyStore.passkey(for:groupID:inRecentlyDeleted:)(a1, a2, v11, v12, 0, v10);
  if (v3)
  {

    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v13 = sub_1B8565B78();
    __swift_project_value_buffer(v13, qword_1ED985C68);
    sub_1B852550C(a1, a2);
    v14 = sub_1B8565B48();
    v15 = sub_1B8566218();
    sub_1B851D53C(a1, a2);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136315138;
      v18 = sub_1B85659B8();
      v20 = sub_1B8525560(v18, v19, &v24);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1B8447000, v14, v15, "Could not find passkey with ID: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CC1710](v17, -1, -1);
      MEMORY[0x1B8CC1710](v16, -1, -1);
    }

    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A798, &qword_1B85746C8);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B85740E0;
    sub_1B851F954(v10);
    *(v21 + 32) = v22;
    sub_1B85260A0(v10, type metadata accessor for WBSKeychainPasskey);
  }

  *a3 = v21;
}

uint64_t WBSSavedAccountStore.updateUserVisibleName(_:forPasskeyWith:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B8521408, 0, 0);
}

uint64_t sub_1B8521408()
{
  *(v0 + 48) = [*(v0 + 40) passkeyStore];
  type metadata accessor for WBSPasskeyStore();
  sub_1B8526624(&qword_1EBA8A790, type metadata accessor for WBSPasskeyStore);
  v2 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B85214DC, v2, v1);
}

uint64_t sub_1B85214DC()
{
  v1 = *(v0 + 48);
  sub_1B852E114(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  *(v0 + 56) = 0;
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B85215A0()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1B8521794(int a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v4[5] = sub_1B8565DA8();
  v4[6] = v7;
  v8 = a2;
  v9 = a4;

  return MEMORY[0x1EEE6DFA0](sub_1B8521830, 0, 0);
}

uint64_t sub_1B8521830()
{
  *(v0 + 56) = [*(v0 + 24) passkeyStore];
  type metadata accessor for WBSPasskeyStore();
  sub_1B8526624(&qword_1EBA8A790, type metadata accessor for WBSPasskeyStore);
  v2 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B8521904, v2, v1);
}

uint64_t sub_1B8521904()
{
  v1 = *(v0 + 56);
  sub_1B852E114(*(v0 + 40), *(v0 + 48), *(v0 + 16));
  *(v0 + 64) = 0;
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);

  (*(v4 + 16))(v4, 0);
  _Block_release(*(v0 + 32));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B8521A04()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);

  v7 = sub_1B85658C8();

  (*(v4 + 16))(v4, v7);
  _Block_release(*(v0 + 32));
  v8 = *(v0 + 8);

  return v8();
}

Swift::Void __swiftcall WBSSavedAccountStore.updateUserVisibleName(onInternalQueue:forPasskeyWith:)(Swift::String onInternalQueue, WBSPublicKeyCredentialIdentifier forPasskeyWith)
{
  isa = forPasskeyWith.super.isa;
  object = onInternalQueue._object;
  countAndFlagsBits = onInternalQueue._countAndFlagsBits;
  isEscapingClosureAtFileLocation = [v2 passkeyStore];
  v12 = countAndFlagsBits;
  v13 = object;
  v14 = isa;
  v7 = *(isEscapingClosureAtFileLocation + 24);
  v8 = *(isEscapingClosureAtFileLocation + 32);
  if (swift_task_isCurrentExecutor())
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B8525AB4;
    *(v9 + 24) = &v11;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1B8525AD4;
    *(v10 + 24) = v9;

    v16[0] = isEscapingClosureAtFileLocation;
    sub_1B8525D90(v16);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1B8566448();
  MEMORY[0x1B8CBF120](0xD00000000000003FLL, 0x80000001B858DFE0);
  v15 = isEscapingClosureAtFileLocation;
  type metadata accessor for WBSPasskeyStore();
  sub_1B8566548();
  MEMORY[0x1B8CBF120](46, 0xE100000000000000);
  sub_1B85665A8();
  __break(1u);
}

void sub_1B8521CD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1B852E114(a2, a3, a4);
  if (v4)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v5 = sub_1B8565B78();
    __swift_project_value_buffer(v5, qword_1ED985C68);
    v6 = v4;
    v7 = sub_1B8565B48();
    v8 = sub_1B8566218();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136446210;
      swift_getErrorValue();
      v11 = Error.loggerDescription()();
      v12 = sub_1B8525560(v11._countAndFlagsBits, v11._object, &v13);

      *(v9 + 4) = v12;
      _os_log_impl(&dword_1B8447000, v7, v8, "Failed to update passkey name: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x1B8CC1710](v10, -1, -1);
      MEMORY[0x1B8CC1710](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t WBSSavedAccountStore.updateUserVisibleName(_:forPasskeyWithRelyingPartyIdentifier:userHandle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = sub_1B8565938();
  v8[10] = v9;
  v10 = *(v9 - 8);
  v8[11] = v10;
  v11 = *(v10 + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8521FD4, 0, 0);
}

uint64_t sub_1B8521FD4()
{
  *(v0 + 112) = [*(v0 + 72) passkeyStore];
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1B8522098;
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return WBSPasskeyStore.setUserVisibleName(_:relyingParty:userHandle:)(v8, v6, v7, v4, v5, v2, v3);
}

uint64_t sub_1B8522098(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 120);
  v9 = *v3;
  v4[16] = a1;
  v4[17] = a2;
  v4[18] = v2;

  if (v2)
  {
    v6 = sub_1B85224C4;
  }

  else
  {
    v7 = v4[14];

    v6 = sub_1B85221B8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B85221B8()
{
  v1 = v0[17];
  if (v1)
  {
    v2 = v0[5];
    v3 = v0[6];
    v4 = sub_1B8565D68();
    v5 = [v4 safari_bestURLForUserTypedString];

    if (v5)
    {
      v7 = v0[12];
      v6 = v0[13];
      v9 = v0[10];
      v8 = v0[11];
      sub_1B8565908();

      (*(v8 + 32))(v6, v7, v9);
      v10 = swift_task_alloc();
      v0[19] = v10;
      *v10 = v0;
      v10[1] = sub_1B8522328;
      v11 = v0[16];
      v12 = v0[13];
      v13 = v0[9];
      v14 = v0[3];
      v15 = v0[4];

      return sub_1B852253C(v11, v1, v14, v15, v12);
    }
  }

  v18 = v0[12];
  v17 = v0[13];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1B8522328()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8522440, 0, 0);
}

uint64_t sub_1B8522440()
{
  (*(v0[11] + 8))(v0[13], v0[10]);
  v2 = v0[12];
  v1 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B85224C4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_1B852253C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[39] = a5;
  v6[40] = v5;
  v6[37] = a3;
  v6[38] = a4;
  v6[35] = a1;
  v6[36] = a2;
  v7 = sub_1B8565938();
  v6[41] = v7;
  v8 = *(v7 - 8);
  v6[42] = v8;
  v9 = *(v8 + 64) + 15;
  v6[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8522604, 0, 0);
}

uint64_t sub_1B8522604()
{
  v1 = v0[39];
  v2 = v0[40];
  v4 = v0[35];
  v3 = v0[36];
  v5 = objc_allocWithZone(WBSStringQuery);
  v6 = sub_1B8565D68();
  v7 = [v5 initWithString:v6 matchingType:1];
  v0[44] = v7;

  v8 = objc_allocWithZone(WBSSavedAccountMatchCriteria);
  v9 = v7;
  v10 = sub_1B85658F8();
  v11 = [v8 initWithURL:v10 options:17 userNameQuery:v9 associatedDomainsManager:0 webFrameIdentifier:0];
  v0[45] = v11;

  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_1B85227D4;
  v12 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A848, &qword_1B8574748);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B8519DD0;
  v0[21] = &block_descriptor_0;
  v0[22] = v12;
  [v2 savedAccountsMatchingCriteria:v11 withCompletionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B85227D4()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B85228B4, 0, 0);
}

uint64_t sub_1B85228B4()
{
  v47 = v0;
  v1 = *(v0 + 360);
  v2 = *(v0 + 272);
  *(v0 + 368) = v2;

  if (v2)
  {
    v3 = [v2 exactMatches];
    sub_1B85267B0();
    v4 = sub_1B8566008();
    *(v0 + 376) = v4;

    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 336);
    v5 = *(v0 + 344);
    v7 = *(v0 + 328);
    v8 = *(v0 + 312);
    v9 = sub_1B8565B78();
    __swift_project_value_buffer(v9, qword_1ED985C68);
    (*(v6 + 16))(v5, v8, v7);

    v10 = sub_1B8565B48();
    v11 = sub_1B8566208();
    v12 = v4 >> 62;
    if (!os_log_type_enabled(v10, v11))
    {
      v24 = *(v0 + 336);
      v23 = *(v0 + 344);
      v13 = *(v0 + 328);

      (*(v24 + 8))(v23, v13);
      goto LABEL_10;
    }

    v13 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v13 = 134218243;
    v45 = v4 >> 62;
    v46 = v43;
    v44 = v11;
    if (v12)
    {
      goto LABEL_29;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8566358())
    {
      v16 = *(v0 + 336);
      v15 = *(v0 + 344);
      v17 = *(v0 + 328);
      *(v13 + 4) = i;

      *(v13 + 12) = 2085;
      v18 = sub_1B85658E8();
      v20 = v19;
      (*(v16 + 8))(v15, v17);
      v21 = sub_1B8525560(v18, v20, &v46);

      *(v13 + 14) = v21;
      _os_log_impl(&dword_1B8447000, v10, v44, "Found %ld accounts with matching user for domain %{sensitive}s", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x1B8CC1710](v43, -1, -1);
      MEMORY[0x1B8CC1710](v13, -1, -1);

      v12 = v45;
LABEL_10:
      *(v0 + 384) = v4;
      if (v12)
      {
        v25 = sub_1B8566358();
        *(v0 + 392) = v25;
        if (!v25)
        {
LABEL_24:
          v22 = *(v0 + 352);
          v39 = *(v0 + 360);

          goto LABEL_25;
        }
      }

      else
      {
        v25 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 392) = v25;
        if (!v25)
        {
          goto LABEL_24;
        }
      }

      if (v25 >= 1)
      {
        break;
      }

      __break(1u);
LABEL_29:
      ;
    }

    v26 = 0;
    while (1)
    {
      *(v0 + 400) = v26;
      v27 = (*(v0 + 384) & 0xC000000000000001) != 0 ? MEMORY[0x1B8CBF6C0]() : *(*(v0 + 376) + 8 * v26 + 32);
      v28 = v27;
      *(v0 + 408) = v27;
      v30 = *(v0 + 296);
      v29 = *(v0 + 304);
      v31 = [objc_allocWithZone(WBSSavedAccountChangeRequest) init];
      *(v0 + 416) = v31;
      v32 = [v28 savedAccount];
      [v31 setSavedAccount_];

      v33 = sub_1B8565D68();
      [v31 setUser_];

      if ([v31 hasChanges])
      {
        break;
      }

      v26 = *(v0 + 400) + 1;
      if (v26 == *(v0 + 392))
      {
        v22 = *(v0 + 368);
        v34 = *(v0 + 376);
        v36 = *(v0 + 352);
        v35 = *(v0 + 360);

        goto LABEL_25;
      }
    }

    v37 = *(v0 + 320);
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_1B8522DA8;
    v38 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A858, &qword_1B8574750);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1B85269B0;
    *(v0 + 232) = &block_descriptor_63;
    *(v0 + 240) = v38;
    [v37 changeSavedAccountWithRequest:v31 completionHandler:v0 + 208];

    return MEMORY[0x1EEE6DEC8](v0 + 80);
  }

  else
  {
    v22 = *(v0 + 352);

LABEL_25:
    v40 = *(v0 + 344);

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_1B8522DA8()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B8522E88, 0, 0);
}

uint64_t sub_1B8522E88()
{
  v1 = v0[51];
  v2 = v0[52];

  v3 = v0[50] + 1;
  if (v3 == v0[49])
  {
LABEL_7:
    v12 = v0[46];
    v11 = v0[47];
    v14 = v0[44];
    v13 = v0[45];

    v15 = v0[43];

    v16 = v0[1];

    return v16();
  }

  else
  {
    while (1)
    {
      v0[50] = v3;
      v4 = (v0[48] & 0xC000000000000001) != 0 ? MEMORY[0x1B8CBF6C0]() : *(v0[47] + 8 * v3 + 32);
      v5 = v4;
      v0[51] = v4;
      v7 = v0[37];
      v6 = v0[38];
      v8 = [objc_allocWithZone(WBSSavedAccountChangeRequest) init];
      v0[52] = v8;
      v9 = [v5 savedAccount];
      [v8 setSavedAccount_];

      v10 = sub_1B8565D68();
      [v8 setUser_];

      if ([v8 hasChanges])
      {
        break;
      }

      v3 = v0[50] + 1;
      if (v3 == v0[49])
      {
        goto LABEL_7;
      }
    }

    v18 = v0[40];
    v0[10] = v0;
    v0[11] = sub_1B8522DA8;
    v19 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A858, &qword_1B8574750);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1B85269B0;
    v0[29] = &block_descriptor_63;
    v0[30] = v19;
    [v18 changeSavedAccountWithRequest:v8 completionHandler:v0 + 26];

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }
}

uint64_t WBSSavedAccountStore.deletePasskey(with:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B8523130, 0, 0);
}

uint64_t sub_1B8523130()
{
  *(v0 + 32) = [*(v0 + 24) passkeyStore];
  type metadata accessor for WBSPasskeyStore();
  sub_1B8526624(&qword_1EBA8A790, type metadata accessor for WBSPasskeyStore);
  v2 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B8523204, v2, v1);
}

uint64_t sub_1B8523204()
{
  sub_1B85366A4(*(v0 + 16));
  *(v0 + 40) = 0;
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B85232C0()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1B85234AC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x1EEE6DFA0](sub_1B8523538, 0, 0);
}

uint64_t sub_1B8523538()
{
  *(v0 + 40) = [*(v0 + 24) passkeyStore];
  type metadata accessor for WBSPasskeyStore();
  sub_1B8526624(&qword_1EBA8A790, type metadata accessor for WBSPasskeyStore);
  v2 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B852360C, v2, v1);
}

uint64_t sub_1B852360C()
{
  sub_1B85366A4(*(v0 + 16));
  *(v0 + 48) = 0;
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  (*(v2 + 16))(v2, 0);
  _Block_release(*(v0 + 32));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B85236EC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);

  v6 = sub_1B85658C8();
  (*(v3 + 16))(v3, v6);

  _Block_release(*(v0 + 32));
  v7 = *(v0 + 8);

  return v7();
}

Swift::Void __swiftcall WBSSavedAccountStore.deletePasskeyWithIdentifier(onInternalQueue:)(WBSPublicKeyCredentialIdentifier onInternalQueue)
{
  isa = onInternalQueue.super.isa;
  isEscapingClosureAtFileLocation = [v1 passkeyStore];
  v9 = isa;
  v4 = *(isEscapingClosureAtFileLocation + 24);
  v5 = *(isEscapingClosureAtFileLocation + 32);
  if (swift_task_isCurrentExecutor())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1B8525EEC;
    *(v6 + 24) = &v8;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1B8526980;
    *(v7 + 24) = v6;

    v11[0] = isEscapingClosureAtFileLocation;
    sub_1B8526938(v11);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1B8566448();
  MEMORY[0x1B8CBF120](0xD00000000000003FLL, 0x80000001B858DFE0);
  v10 = isEscapingClosureAtFileLocation;
  type metadata accessor for WBSPasskeyStore();
  sub_1B8566548();
  MEMORY[0x1B8CBF120](46, 0xE100000000000000);
  sub_1B85665A8();
  __break(1u);
}

void sub_1B8523998(uint64_t a1, void *a2)
{
  sub_1B85366A4(a2);
  if (v2)
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v3 = sub_1B8565B78();
    __swift_project_value_buffer(v3, qword_1ED985C68);
    v4 = v2;
    v5 = sub_1B8565B48();
    v6 = sub_1B8566218();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v11 = v8;
      *v7 = 136446210;
      swift_getErrorValue();
      v9 = Error.loggerDescription()();
      v10 = sub_1B8525560(v9._countAndFlagsBits, v9._object, &v11);

      *(v7 + 4) = v10;
      _os_log_impl(&dword_1B8447000, v5, v6, "Failed to delete passkey: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B8CC1710](v8, -1, -1);
      MEMORY[0x1B8CC1710](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t WBSSavedAccountStore.exportPasskeyCredentialWithID(onInternalQueue:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 passkeyStore];
  v8[2] = a1;
  v8[3] = a2;
  v6 = sub_1B851FE7C(sub_1B8525F08, v8);

  return v6;
}

void sub_1B8523C38(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B852675C();
  v5 = MEMORY[0x1E69E6158];
  v37 = sub_1B85662B8();
  v38 = v6;
  v35 = v4;
  v36 = v4;
  v33 = v5;
  v34 = v4;
  v7 = sub_1B85662B8();
  v9 = v8;

  v10 = sub_1B8565E78();
  v11 = v10 & 3;
  if (v10 <= 0)
  {
    v11 = -(-v10 & 3);
  }

  if (v11 >= 1)
  {
    v12 = sub_1B8565F48();
    v14 = v13;
    v37 = v7;
    v38 = v9;

    MEMORY[0x1B8CBF120](v12, v14);
  }

  v15 = sub_1B8565978();
  v17 = v16;

  if (v17 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v18 = sub_1B852F0B4(v15, v17, 0);
    if (v2)
    {
      sub_1B852608C(v15, v17);
      if (qword_1ED985688 != -1)
      {
        swift_once();
      }

      v20 = sub_1B8565B78();
      __swift_project_value_buffer(v20, qword_1ED985C68);
      v21 = v2;
      v22 = sub_1B8565B48();
      v23 = sub_1B8566218();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v37 = v25;
        *v24 = 136446210;
        swift_getErrorValue();
        v26 = Error.loggerDescription()();
        v27 = sub_1B8525560(v26._countAndFlagsBits, v26._object, &v37);

        *(v24 + 4) = v27;
        _os_log_impl(&dword_1B8447000, v22, v23, "Failed to export passkey: %{public}s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x1B8CC1710](v25, -1, -1);
        MEMORY[0x1B8CC1710](v24, -1, -1);
      }

      else
      {
      }

      v32 = 0;
    }

    else
    {
      v28 = v18;
      v29 = v19;
      v30 = sub_1B85659A8();
      v31 = sub_1B85659A8();
      v32 = [objc_allocWithZone(WBSPair) initWithFirst:v30 second:{v31, v33, v34, v35, v36}];

      sub_1B852608C(v15, v17);
      sub_1B851D53C(v28, v29);
    }

    *a1 = v32;
  }
}

uint64_t WBSSavedAccountStore.importPasskeyCredential(onInternalQueue:)(uint64_t a1)
{
  v3 = [v1 passkeyStore];
  v6[2] = a1;
  v4 = sub_1B8520078(sub_1B8525F24, v6);

  return v4;
}

void sub_1B8524138(unint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A7A0, &unk_1B85764D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v59 - v11;
  v13 = type metadata accessor for WBSKeychainPasskey();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WBSShareablePasskey();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v59 - v22;
  v24 = [a2 second];
  if (!v24)
  {
    goto LABEL_4;
  }

  v63 = a3;
  v64 = xmmword_1B8574690;
  v25 = v24;
  sub_1B85659C8();

  v26 = *(&v64 + 1);
  if (*(&v64 + 1) >> 60 == 15)
  {
    a3 = v63;
LABEL_4:
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v27 = sub_1B8565B78();
    __swift_project_value_buffer(v27, qword_1ED985C68);
    v28 = sub_1B8565B48();
    v29 = sub_1B8566218();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = a3;
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1B8447000, v28, v29, "Missing passkey data to import.", v31, 2u);
      v32 = v31;
      a3 = v30;
      MEMORY[0x1B8CC1710](v32, -1, -1);
    }

    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v60 = v3;
  v33 = v64;
  v34 = sub_1B8565A78();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  sub_1B852550C(v33, v26);
  sub_1B8565A68();
  sub_1B8526624(&qword_1EBA8A840, type metadata accessor for WBSShareablePasskey);
  v61 = v33;
  v37 = v60;
  sub_1B8565A58();
  if (v37)
  {

    v38 = v61;
    v62 = v26;
    sub_1B852608C(v61, v26);
    v39 = v38;
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v44 = sub_1B8565B78();
    __swift_project_value_buffer(v44, qword_1ED985C68);
    v45 = v37;
    v46 = sub_1B8565B48();
    v47 = sub_1B8566218();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v64 = v49;
      *v48 = 136446210;
      swift_getErrorValue();
      v50 = Error.loggerDescription()();
      v51 = sub_1B8525560(v50._countAndFlagsBits, v50._object, &v64);

      *(v48 + 4) = v51;
      _os_log_impl(&dword_1B8447000, v46, v47, "Failed to import passkey: %{public}s.", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x1B8CC1710](v49, -1, -1);
      MEMORY[0x1B8CC1710](v48, -1, -1);
      sub_1B852608C(v39, v62);
    }

    else
    {
      sub_1B852608C(v39, v62);
    }

    v52 = v63;
    *v63 = 0;
    v52[1] = 0;
  }

  else
  {

    sub_1B852608C(v61, v26);
    sub_1B852666C(v21, v23);
    v40 = sub_1B8565A38();
    v41 = *(*(v40 - 8) + 56);
    v41(v12, 1, 1, v40);
    v41(v10, 1, 1, v40);
    v42 = sub_1B8565DA8();
    WBSPasskeyStore.importPasskey(_:to:inRecentlyDeleted:importedCredentialID:lastModified:created:)(v23, v42, v43, 0, 0, 0xF000000000000000, v12, v10, v16);

    sub_1B8456588(v10, &qword_1EBA8A7A0, &unk_1B85764D0);
    sub_1B8456588(v12, &qword_1EBA8A7A0, &unk_1B85764D0);
    v53 = *(v16 + 5);
    v54 = *(v16 + 6);
    v55 = sub_1B85659B8();
    v57 = v56;
    sub_1B852608C(v61, v26);
    sub_1B85260A0(v23, type metadata accessor for WBSShareablePasskey);
    sub_1B85260A0(v16, type metadata accessor for WBSKeychainPasskey);
    v58 = v63;
    *v63 = v55;
    v58[1] = v57;
  }
}

uint64_t WBSSavedAccountStore.savePasskey(for:credentialID:relyingPartyIdentifier:userHandle:privateKey:created:lastModified:passwordAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 160) = v20;
  *(v9 + 168) = v8;
  *(v9 + 128) = v18;
  *(v9 + 144) = v19;
  *(v9 + 112) = a7;
  *(v9 + 120) = a8;
  *(v9 + 96) = a5;
  *(v9 + 104) = a6;
  *(v9 + 80) = a3;
  *(v9 + 88) = a4;
  *(v9 + 64) = a1;
  *(v9 + 72) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A7A0, &unk_1B85764D0) - 8) + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  v11 = *(*(type metadata accessor for WBSKeychainPasskey() - 8) + 64) + 15;
  *(v9 + 192) = swift_task_alloc();
  v12 = *(*(type metadata accessor for WBSShareablePasskey() - 8) + 64) + 15;
  *(v9 + 200) = swift_task_alloc();
  v13 = sub_1B8565C48();
  *(v9 + 208) = v13;
  v14 = *(v13 - 8);
  *(v9 + 216) = v14;
  v15 = *(v14 + 64) + 15;
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B8524A28, 0, 0);
}

uint64_t sub_1B8524A28()
{
  v41 = v0;
  v1 = v0[29];
  v3 = v0[16];
  v2 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[8];
  v6 = v0[9];

  v40 = sub_1B8525F40(MEMORY[0x1E69E7CC0]);
  v39 = 0;

  WBSKeychainPasskey.Metadata.subscript.setter(v7, v6, &v39);
  v39 = 1;
  WBSKeychainPasskey.Metadata.subscript.setter(v7, v6, &v39);
  v39 = 1;
  sub_1B852550C(v5, v4);
  WBSKeychainPasskey.Metadata.subscript.setter(v5, v4, &v39);
  v8 = sub_1B8565D68();
  v9 = objc_opt_self();
  v10 = [v9 cborWithUTF8String_];

  v11 = sub_1B8525C44(v10);
  v12 = sub_1B8565D68();
  v13 = [v9 cborWithUTF8String_];

  v14 = sub_1B8525C44(v13);
  v15 = v40;
  v0[5] = v3;
  v0[6] = v2;
  sub_1B852550C(v3, v2);
  sub_1B8526038();
  sub_1B8565C08();
  v0[30] = 0;
  v17 = v0[28];
  v16 = v0[29];
  v18 = v0[26];
  v19 = v0[27];
  v20 = v0[25];
  v21 = v0[23];
  v22 = v0[21];
  v36 = v0[19];
  v37 = v0[18];
  v38 = v0[22];
  v23 = v0[12];
  v24 = v0[13];
  v25 = v0[10];
  v26 = v0[11];
  v40 = v15;
  (*(v19 + 16))(v17, v16, v18);

  WBSShareablePasskey.init(relyingParty:metadata:privateKey:)(v23, v24, &v40, v17, v20);
  v0[31] = [v22 passkeyStore];
  v0[32] = sub_1B8565978();
  v0[33] = v27;
  v28 = sub_1B8565A38();
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v30(v21, v36, v28);
  v31 = *(v29 + 56);
  v31(v21, 0, 1, v28);
  v30(v38, v37, v28);
  v31(v38, 0, 1, v28);
  v0[34] = sub_1B8565DA8();
  v0[35] = v32;
  type metadata accessor for WBSPasskeyStore();
  sub_1B8526624(&qword_1EBA8A790, type metadata accessor for WBSPasskeyStore);
  v34 = sub_1B85660E8();

  return MEMORY[0x1EEE6DFA0](sub_1B8524FA8, v34, v33);
}

uint64_t sub_1B8524FA8()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  WBSPasskeyStore.importPasskey(_:to:inRecentlyDeleted:importedCredentialID:lastModified:created:)(*(v0 + 200), *(v0 + 272), *(v0 + 280), 0, *(v0 + 256), *(v0 + 264), *(v0 + 184), *(v0 + 176), *(v0 + 192));
  *(v0 + 288) = v2;
  v3 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 248);
  if (v2)
  {
    v8 = *(v0 + 176);
    v7 = *(v0 + 184);

    sub_1B852608C(v5, v4);

    sub_1B8456588(v8, &qword_1EBA8A7A0, &unk_1B85764D0);
    sub_1B8456588(v7, &qword_1EBA8A7A0, &unk_1B85764D0);
    v9 = sub_1B85252D8;
  }

  else
  {
    v11 = *(v0 + 184);
    v10 = *(v0 + 192);
    v12 = *(v0 + 176);

    sub_1B852608C(v5, v4);

    sub_1B8456588(v12, &qword_1EBA8A7A0, &unk_1B85764D0);
    sub_1B8456588(v11, &qword_1EBA8A7A0, &unk_1B85764D0);
    sub_1B85260A0(v10, type metadata accessor for WBSKeychainPasskey);
    v9 = sub_1B8525118;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B8525118()
{
  v26 = *(v0 + 160);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  sub_1B85659B8();
  v9 = objc_allocWithZone(WBSSavedAccount);
  v10 = sub_1B8565D68();
  v11 = sub_1B8565D68();
  v12 = sub_1B8565D68();

  v13 = sub_1B8565D68();
  v14 = [v9 initWithPasskeyRelyingPartyID:v10 user:v11 passkeyUserHandle:v12 passkeyCredentialID:v13];

  if (v26)
  {
    [*(v0 + 168) _mergeSavedAccountWithPasskey_toSavedAccountWithPassword_];
  }

  v15 = *(v0 + 232);
  v16 = *(v0 + 208);
  v17 = *(v0 + 216);
  sub_1B85260A0(*(v0 + 200), type metadata accessor for WBSShareablePasskey);
  (*(v17 + 8))(v15, v16);
  v19 = *(v0 + 224);
  v18 = *(v0 + 232);
  v21 = *(v0 + 192);
  v20 = *(v0 + 200);
  v23 = *(v0 + 176);
  v22 = *(v0 + 184);

  v24 = *(v0 + 8);

  return v24(v14);
}

uint64_t sub_1B85252D8()
{
  v25 = v0;
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  sub_1B85260A0(v0[25], type metadata accessor for WBSShareablePasskey);
  (*(v3 + 8))(v1, v2);
  v4 = v0[36];
  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v5 = sub_1B8565B78();
  __swift_project_value_buffer(v5, qword_1ED985C68);
  v6 = v4;
  v7 = sub_1B8565B48();
  v8 = sub_1B8566218();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = Error.loggerDescription()();
    v15 = sub_1B8525560(v14._countAndFlagsBits, v14._object, &v24);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1B8447000, v7, v8, "Failed to import passkey: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B8CC1710](v10, -1, -1);
    MEMORY[0x1B8CC1710](v9, -1, -1);
  }

  else
  {
  }

  v17 = v0[28];
  v16 = v0[29];
  v19 = v0[24];
  v18 = v0[25];
  v21 = v0[22];
  v20 = v0[23];

  v22 = v0[1];

  return v22(0);
}

uint64_t sub_1B852550C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1B8525560(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B852562C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B851F688(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1B852562C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B8525738(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B8566498();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1B8525738(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B8525784(a1, a2);
  sub_1B85258B4(&unk_1F3060ED0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B8525784(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B853F408(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B8566498();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B8565EE8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B853F408(v10, 0);
        result = sub_1B8566408();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}