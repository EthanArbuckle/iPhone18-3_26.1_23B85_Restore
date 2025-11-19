uint64_t sub_195287F78(uint64_t a1, uint64_t a2, unsigned int a3, icu::UnicodeString *a4, unsigned int *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = a2;
  icu::UnicodeString::UnicodeString(&v20, a3 >> 31, &v18);
  v8 = (*(*a1 + 112))(a1, &v20, a5);
  v9 = *a5;
  if (v9 > 0)
  {
    goto LABEL_12;
  }

  v10 = v8;
  LODWORD(v9) = WORD4(v20) >> 5;
  v9 = (SWORD4(v20) & 0x8000u) == 0 ? v9 : HIDWORD(v20);
  if (v8 >= v9)
  {
    goto LABEL_12;
  }

  memset(v19, 0, sizeof(v19));
  icu::UnicodeString::tempSubString(&v20, v8, 0x7FFFFFFF, v19);
  if ((BYTE8(v20) & 0x11) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = ((BYTE8(v20) & 2) != 0 ? &v20 | 0xA : *(&v21 + 1));
  }

  v17 = v11;
  icu::UnicodeString::setTo(a4, 0, &v17, v10);
  (*(*a1 + 40))(a1, a4, v19, a5);
  v12 = *a5;
  icu::UnicodeString::~UnicodeString(v13, v19);
  if (v12 < 1)
  {
    v14 = 1;
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  icu::UnicodeString::~UnicodeString(v9, &v20);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t uprv_deleteUObject(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

UBool u_stringHasBinaryProperty(const UChar *s, int32_t length, UProperty which)
{
  if (!s && length)
  {
    return 0;
  }

  if (length == 1)
  {
    if (which <= (UCHAR_BINARY_LIMIT|UCHAR_BIDI_MIRRORED))
    {
      v7 = *s;
      v8 = qword_1F0935E98[2 * which + 1];

      return v8();
    }

    return 0;
  }

  if (length == 2)
  {
    v5 = *s;
  }

  else
  {
    if ((length & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    v5 = *s;
    if (!*s)
    {
      goto LABEL_22;
    }
  }

  v6 = 1;
  if ((v5 & 0xFC00) == 0xD800)
  {
    if ((s[1] & 0xFC00) == 0xDC00)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  if (length < 1)
  {
    if (!s[v6])
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (v6 != length)
  {
LABEL_22:
    if ((which - 65) <= 6)
    {
      return sub_1951D938C(s, length, which);
    }

    return 0;
  }

LABEL_24:
  if (which > (UCHAR_BINARY_LIMIT|UCHAR_BIDI_MIRRORED))
  {
    return 0;
  }

  v8 = qword_1F0935E98[2 * which + 1];

  return v8();
}

int32_t u_getIntPropertyMaxValue(UProperty which)
{
  if (which > (UCHAR_BINARY_LIMIT|UCHAR_CHANGES_WHEN_CASEMAPPED|0xF80))
  {
    if (which <= (UCHAR_VERTICAL_ORIENTATION|UCHAR_BIDI_CONTROL))
    {
      return qword_1F0936358[4 * (which - 4096) + 3]();
    }
  }

  else if (which < (UCHAR_BINARY_LIMIT|UCHAR_DASH))
  {
    return 1;
  }

  return -1;
}

uint64_t sub_195288408(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    return 0;
  }

  if (a1 <= 0x4B)
  {
    v1 = (&unk_1F0935E98 + 16 * a1);
    goto LABEL_4;
  }

  if (a1 < 0x1000)
  {
    return 0;
  }

  if (a1 > 0x101A)
  {
    if (!(a1 >> 14))
    {
      return (a1 & 0x2FFF) == 0x2000;
    }

    if (a1 > 0x400D)
    {
      return 2 * ((a1 & 0x7FFFFFFE) == 28672);
    }

    if (a1 - 0x4000 < 0xD)
    {
      return dword_19547C0D4[a1 - 0x4000];
    }

    return 0;
  }

  v1 = &qword_1F0936358[4 * a1 - 0x4000];
LABEL_4:
  if (*(v1 + 1))
  {
    return 2;
  }

  else
  {
    return *v1;
  }
}

uint64_t sub_1952884BC(uint64_t result, void *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return result;
  }

  v4 = result;
  if (result == 17)
  {
    for (i = 0; i != 10; ++i)
    {
      (a2[1])(*a2, dword_19547BFFC[i]);
    }

    for (j = 0; j != 13; ++j)
    {
      v8 = dword_19547C024[j];
      (a2[1])(*a2, v8);
      result = (a2[1])(*a2, v8 + 1);
    }

    return result;
  }

  if (result == 19)
  {
    for (k = 0; k != 18; ++k)
    {
      result = (a2[1])(*a2, dword_19547C058[k]);
    }

    return result;
  }

  result = sub_195288638(a3);
  if (!result)
  {
    return result;
  }

  if ((v4 - 12) > 2)
  {
    v14 = 1;
LABEL_21:
    *a3 = v14;
    return result;
  }

  v10 = off_1E740B810[v4 - 12];
  v11 = *v10;
  if (!*v10)
  {
    v14 = 2;
    goto LABEL_21;
  }

  result = ucptrie_getRange(*v10, 0, 0, 0, 0, 0, 0);
  if ((result & 0x80000000) == 0)
  {
    v12 = result;
    v13 = 0;
    do
    {
      (a2[1])(*a2, v13);
      v13 = (v12 + 1);
      result = ucptrie_getRange(v11, v13, 0, 0, 0, 0, 0);
      v12 = result;
    }

    while ((result & 0x80000000) == 0);
  }

  return result;
}

BOOL sub_195288638(UErrorCode *a1)
{
  if (*a1 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9ABC, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9ABC))
  {
    if (dword_1EAEC9AC0 >= 1)
    {
      *a1 = dword_1EAEC9AC0;
    }
  }

  else
  {
    sub_195289858(a1);
    dword_1EAEC9AC0 = *a1;
    icu::umtx_initImplPostInit(&dword_1EAEC9ABC);
  }

  return *a1 < U_ILLEGAL_ARGUMENT_ERROR;
}

BOOL u_hasIDType(unsigned int a1, unsigned int a2)
{
  if (a2 > 0xB)
  {
    return 0;
  }

  v3 = a2;
  v4 = byte_19547C0A0[a2];
  v5 = sub_195232CE4(a1, 2);
  v6 = v5 >> 26;
  if ((v3 - 10) < 0xFFFFFFFFFFFFFFFALL)
  {
    return v6 == v4;
  }

  v7 = v6 & v4;
  return v5 >> 30 != 3 && v7 != 0;
}

uint64_t u_getIDTypes(unsigned int a1, int *a2, unsigned int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if ((a3 & 0x80000000) != 0 || !a2 && a3)
  {
    result = 0;
    v8 = 1;
LABEL_7:
    *a4 = v8;
    return result;
  }

  v9 = sub_195232CE4(a1, 2);
  v10 = v9;
  if ((v9 + 0x40000000) >> 26 <= 0x10)
  {
    if (!a3)
    {
      *a4 = 15;
      return 1;
    }

    v11 = v9 >> 26;
    if (v9 >> 26 > 0x31)
    {
      switch(v11)
      {
        case '2':
          v11 = 3;
          goto LABEL_58;
        case '>':
          v11 = 10;
          goto LABEL_58;
        case '?':
          v11 = 11;
          goto LABEL_58;
      }
    }

    else
    {
      switch(v11)
      {
        case 0:
LABEL_58:
          *a2 = v11;
          return 1;
        case 48:
          v11 = 1;
          goto LABEL_58;
        case 49:
          v11 = 2;
          goto LABEL_58;
      }
    }

    result = 0;
    v8 = 3;
    goto LABEL_7;
  }

  if ((v9 & 0x4000000) == 0)
  {
    result = 0;
    if ((v10 & 0x80000000) != 0)
    {
LABEL_21:
      if (result < a3)
      {
        a2[result] = 5;
      }

      goto LABEL_34;
    }

LABEL_35:
    if ((v10 & 0x8000000) == 0)
    {
      if ((v10 & 0x10000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_43:
      if (result < a3)
      {
        a2[result] = 7;
      }

      goto LABEL_45;
    }

    if (result < a3)
    {
      a2[result] = 6;
    }

LABEL_42:
    result = (result + 1);
    if ((v10 & 0x10000000) == 0)
    {
LABEL_37:
      if ((v10 & 0x20000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_46;
    }

    goto LABEL_43;
  }

  if (a3)
  {
    *a2 = 4;
    result = 1;
    if ((v10 & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_35;
  }

  result = 1;
  if ((v10 & 0x80000000) != 0)
  {
LABEL_34:
    result = (result + 1);
    goto LABEL_35;
  }

  if ((v10 & 0x8000000) != 0)
  {
    goto LABEL_42;
  }

  if ((v10 & 0x10000000) == 0)
  {
    if ((v10 & 0x20000000) == 0)
    {
      if (!(v10 >> 30))
      {
        goto LABEL_52;
      }

LABEL_51:
      result = (result + 1);
      goto LABEL_52;
    }

    goto LABEL_48;
  }

LABEL_45:
  result = (result + 1);
  if ((v10 & 0x20000000) != 0)
  {
LABEL_46:
    if (result < a3)
    {
      a2[result] = 8;
    }

LABEL_48:
    result = (result + 1);
    if ((v10 & 0x40000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

LABEL_38:
  if ((v10 & 0x40000000) != 0)
  {
LABEL_49:
    if (result < a3)
    {
      a2[result] = 9;
    }

    goto LABEL_51;
  }

LABEL_52:
  if (result >= a3)
  {
    v8 = 15;
    goto LABEL_7;
  }

  return result;
}

int32_t u_getFC_NFKC_Closure(UChar32 c, UChar *dest, int32_t destCapacity, UErrorCode *pErrorCode)
{
  v43 = *MEMORY[0x1E69E9840];
  if (pErrorCode && *pErrorCode <= 0)
  {
    if (destCapacity < 0 || !dest && destCapacity)
    {
      v5 = 0;
      *pErrorCode = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_4;
    }

    NFKCInstance = icu::Normalizer2::getNFKCInstance(pErrorCode, dest);
    if (*pErrorCode <= 0)
    {
      v12 = NFKCInstance;
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      v39 = 0u;
      v38 = &unk_1F0935D00;
      LOWORD(v39) = 2;
      v26 = 0;
      v13 = ucase_toFullFolding(c, &v26, 0);
      if ((v13 & 0x80000000) != 0)
      {
        Impl = icu::Normalizer2Factory::getImpl(v12, v14);
        v17 = sub_1951FBB98(Impl, c);
        if (v17 > 0xFE01 || *(Impl + 18) > v17 || *(Impl + 30) <= v17)
        {
          v5 = u_terminateUChars(dest, destCapacity, 0, pErrorCode);
LABEL_24:
          icu::UnicodeString::~UnicodeString(v22, &v38);
          goto LABEL_4;
        }

        v15 = c;
      }

      else
      {
        if (v13 < 0x20)
        {
          v25 = v26;
          icu::UnicodeString::setTo(&v38, 0, &v25, v13);
          v23[1] = v25;
LABEL_19:
          v37 = 0;
          v35 = 0u;
          v36 = 0u;
          v34 = 0u;
          v33 = &unk_1F0935D00;
          LOWORD(v34) = 2;
          (*(*v12 + 24))(v12, &v38, &v33, pErrorCode);
          memset(v32, 0, sizeof(v32));
          icu::UnicodeString::UnicodeString(v32, &v33);
          v18 = icu::UnicodeString::foldCase(v32, 0);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0;
          v27 = &unk_1F0935D00;
          LOWORD(v28) = 2;
          (*(*v12 + 24))(v12, v18, &v27, pErrorCode);
          if (*pErrorCode > 0 || sub_195213DE4(&v33, &v27))
          {
            v5 = u_terminateUChars(dest, destCapacity, 0, pErrorCode);
          }

          else
          {
            v24 = dest;
            v5 = icu::UnicodeString::extract(&v27, &v24, destCapacity, pErrorCode);
            v23[0] = v24;
            v19 = v23;
          }

          icu::UnicodeString::~UnicodeString(v19, &v27);
          icu::UnicodeString::~UnicodeString(v20, v32);
          icu::UnicodeString::~UnicodeString(v21, &v33);
          goto LABEL_24;
        }

        v15 = v13;
      }

      sub_195288C64(&v38, v15);
      goto LABEL_19;
    }
  }

  v5 = 0;
LABEL_4:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_195288C64(uint64_t a1, unsigned int a2)
{
  icu::UnicodeString::unBogus(a1);
  if (*(a1 + 8) < 0)
  {
    v4 = *(a1 + 12);
  }

  else
  {
    v4 = *(a1 + 8) >> 5;
  }

  return icu::UnicodeString::replace(a1, 0, v4, a2);
}

BOOL sub_195288D0C(uint64_t a1, UErrorCode *a2)
{
  v2 = a2;
  v7 = 0;
  NFCImpl = icu::Normalizer2Factory::getNFCImpl(&v7, a2);
  if (v7 <= 0 && (v4 = NFCImpl, v5 = sub_1951FBB98(NFCImpl, v2), *(v4 + 18) <= v5))
  {
    return *(v4 + 30) > v5;
  }

  else
  {
    return 0;
  }
}

BOOL sub_195288DA4(uint64_t a1, uint64_t a2, int a3)
{
  v7 = 0;
  Instance = icu::Normalizer2Factory::getInstance(a3 - 35, &v7);
  v5 = 0;
  if (v7 <= 0)
  {
    return (*(*Instance + 136))(Instance, a2) != 0;
  }

  return v5;
}

BOOL sub_195288E20(uint64_t a1, UErrorCode *a2)
{
  v2 = a2;
  v6 = U_ZERO_ERROR;
  NFCImpl = icu::Normalizer2Factory::getNFCImpl(&v6, a2);
  if (v6 > U_ZERO_ERROR)
  {
    return 0;
  }

  v5 = NFCImpl;
  result = icu::Normalizer2Impl::ensureCanonIterData(NFCImpl, &v6);
  if (result)
  {
    return icu::Normalizer2Impl::isCanonSegmentStarter(v5, v2);
  }

  return result;
}

BOOL sub_195288EB4(uint64_t a1, UErrorCode *a2)
{
  v2 = a2;
  v35 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v34 = 0;
  v33 = 0u;
  v32 = 0u;
  v30 = &unk_1F0935D00;
  LOWORD(v31) = 2;
  pErrorCode = U_ZERO_ERROR;
  NFCInstance = icu::Normalizer2::getNFCInstance(&pErrorCode, a2);
  v4 = pErrorCode;
  if (pErrorCode > U_ZERO_ERROR)
  {
    goto LABEL_2;
  }

  if (!(*(*NFCInstance + 56))(NFCInstance, v2, &v30))
  {
    if ((v2 & 0x80000000) != 0)
    {
LABEL_2:
      v5 = 0;
      goto LABEL_16;
    }

LABEL_15:
    *dest = 0;
    v9 = ucase_toFullFolding(v2, dest, 0);
    v4 = ~v9;
    v5 = v9 >= 0;
    goto LABEL_16;
  }

  v6 = v31;
  if ((v31 & 0x80000000) == 0)
  {
    if ((v31 & 0x7FE0) != 0x20)
    {
      if (v31 > 0x5Fu)
      {
        goto LABEL_24;
      }

      v7 = v31 >> 5;
      goto LABEL_18;
    }

LABEL_11:
    if ((v31 & 2) != 0)
    {
      v8 = &v31 + 1;
    }

    else
    {
      v8 = v32;
    }

    LODWORD(v2) = *v8;
    goto LABEL_15;
  }

  v7 = DWORD1(v31);
  if (DWORD1(v31) == 1)
  {
    goto LABEL_11;
  }

  if (SDWORD1(v31) >= 3)
  {
    goto LABEL_24;
  }

LABEL_18:
  v12 = icu::UnicodeString::char32At(v31, &v30, 0);
  if (v12 < 0x10000)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if ((v12 & 0x80000000) == 0)
  {
    LODWORD(v2) = v12;
    if (v7 == v13)
    {
      goto LABEL_15;
    }
  }

  v6 = v31;
LABEL_24:
  v28 = 0u;
  memset(v29, 0, sizeof(v29));
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *dest = 0u;
  if ((v6 & 0x11) != 0)
  {
    v14 = 0;
  }

  else if ((v6 & 2) != 0)
  {
    v14 = &v31 + 1;
  }

  else
  {
    v14 = v32;
  }

  v15 = v6;
  v16 = v6 >> 5;
  if (v15 >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = DWORD1(v31);
  }

  v18 = u_strFoldCase(dest, 62, v14, v17, 0, &pErrorCode);
  v5 = 0;
  v4 = pErrorCode;
  if (pErrorCode <= U_ZERO_ERROR)
  {
    v19 = v18;
    if ((v31 & 0x11) != 0)
    {
      v20 = 0;
    }

    else if ((v31 & 2) != 0)
    {
      v20 = &v31 + 1;
    }

    else
    {
      v20 = v32;
    }

    if ((v31 & 0x8000u) == 0)
    {
      v21 = v31 >> 5;
    }

    else
    {
      v21 = DWORD1(v31);
    }

    v5 = u_strCompare(v20, v21, dest, v19, 0) != 0;
  }

LABEL_16:
  icu::UnicodeString::~UnicodeString(v4, &v30);
  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_195289120(uint64_t a1, UErrorCode *a2)
{
  v2 = a2;
  v30 = *MEMORY[0x1E69E9840];
  v20 = U_ZERO_ERROR;
  NFKC_CFImpl = icu::Normalizer2Factory::getNFKC_CFImpl(&v20, a2);
  v4 = 0;
  if (v20 <= U_ZERO_ERROR)
  {
    v5 = NFKC_CFImpl;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    icu::UnicodeString::UnicodeString(&v26, v2);
    v22 = 0u;
    v25 = 0;
    v24 = 0u;
    v23 = 0u;
    v21 = &unk_1F0935D00;
    LOWORD(v22) = 2;
    v19 = 0u;
    v15 = v5;
    v16 = &v21;
    v18 = 0u;
    v17 = 0u;
    *(&v18 + 5) = 0;
    if (icu::ReorderingBuffer::init(&v15, 5, &v20))
    {
      if ((BYTE8(v26) & 0x11) != 0)
      {
        v6 = 0;
      }

      else if ((BYTE8(v26) & 2) != 0)
      {
        v6 = (&v26 | 0xA);
      }

      else
      {
        v6 = *(&v27 + 1);
      }

      v7 = WORD4(v26) >> 5;
      if (SWORD4(v26) < 0)
      {
        v7 = HIDWORD(v26);
      }

      icu::Normalizer2Impl::compose(v5, v6, &v6[v7], 0, 1, &v15, &v20);
    }

    if (v17)
    {
      icu::UnicodeString::releaseBuffer(v16, (v18 - v17) >> 1);
    }

    v8 = v20;
    if (v20 <= U_ZERO_ERROR)
    {
      if (v22)
      {
        v8 = BYTE8(v26) & 1;
      }

      else
      {
        v8 = 0;
        if ((v22 & 0x8000u) == 0)
        {
          v9 = v22 >> 5;
        }

        else
        {
          v9 = DWORD1(v22);
        }

        if ((SWORD4(v26) & 0x8000u) == 0)
        {
          v10 = WORD4(v26) >> 5;
        }

        else
        {
          v10 = HIDWORD(v26);
        }

        if ((BYTE8(v26) & 1) == 0 && v9 == v10)
        {
          if ((BYTE8(v26) & 2) != 0)
          {
            v11 = (&v26 | 0xA);
          }

          else
          {
            v11 = *(&v27 + 1);
          }

          v8 = icu::UnicodeString::doEquals(&v21, v11, v9);
        }
      }

      v4 = v8 ^ 1;
    }

    else
    {
      v4 = 0;
    }

    icu::UnicodeString::~UnicodeString(v8, &v21);
    icu::UnicodeString::~UnicodeString(v12, &v26);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL sub_19528936C(uint64_t a1, int a2)
{
  if (a2 < 8706)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = dword_19547C024[v3];
    if (v4 == a2)
    {
      break;
    }
  }

  while (v3++ != 12);
  return v4 == a2;
}

BOOL sub_1952893B4(uint64_t a1, int a2)
{
  v2 = -2;
  v3 = &dword_19547C000;
  do
  {
    if (*(v3 - 1) > a2)
    {
      return 0;
    }

    if (*v3 > a2)
    {
      return 1;
    }

    v3 += 2;
    v2 += 2;
  }

  while (v2 <= 7);
  if (a2 < 8706)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = dword_19547C024[v5];
    if (v6 == a2)
    {
      break;
    }
  }

  while (v5++ != 12);
  return v6 == a2;
}

uint64_t sub_195289438(uint64_t a1, int a2)
{
  v2 = -2;
  for (i = &dword_19547C05C; ; i += 2)
  {
    if (*(i - 1) > a2)
    {
      return 0;
    }

    if (*i > a2)
    {
      break;
    }

    v2 += 2;
    if (v2 > 0xF)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_195289574(uint64_t a1, unsigned int a2)
{
  v2 = sub_195233A44(a2);
  if (v2 < 0x540)
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  if (v2 >= 0x2C0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (v2 >= 0x40)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1952895FC(uint64_t a1, signed int a2)
{
  if (a2 >= 0x10000)
  {
    return 0;
  }

  v2 = (sub_195232CE4(a2, 2) >> 5) & 0x1F;
  if (v2 > 9)
  {
    return 0;
  }

  else
  {
    return dword_19547C0AC[v2];
  }
}

uint64_t sub_1952896A0(uint64_t a1, unsigned int a2)
{
  v5 = 0;
  v3 = sub_195288638(&v5);
  result = 0;
  if (v3)
  {
    if (qword_1EAEC9A98)
    {
      return ucptrie_get(qword_1EAEC9A98, a2);
    }
  }

  return result;
}

uint64_t sub_1952896F8(uint64_t a1, int a2)
{
  v4 = 0;
  result = sub_195288638(&v4);
  if (result)
  {
    switch(a2)
    {
      case 4120:
        return dword_1EAEC9AB8;
      case 4119:
        return dword_1EAEC9AB4;
      case 4118:
        return dword_1EAEC9AB0;
      default:
        return 0;
    }
  }

  return result;
}

uint64_t sub_19528977C(uint64_t a1, unsigned int a2)
{
  v5 = 0;
  v3 = sub_195288638(&v5);
  result = 0;
  if (v3)
  {
    if (qword_1EAEC9AA0)
    {
      return ucptrie_get(qword_1EAEC9AA0, a2);
    }
  }

  return result;
}

uint64_t sub_1952897D4(uint64_t a1, unsigned int a2)
{
  v5 = 0;
  v3 = sub_195288638(&v5);
  result = 0;
  if (v3)
  {
    if (qword_1EAEC9AA8)
    {
      return ucptrie_get(qword_1EAEC9AA8, a2);
    }
  }

  return result;
}

void sub_195289858(UErrorCode *a1)
{
  v2 = udata_openChoice(0, "icu", "ulayout", sub_1952899D0, 0, a1);
  qword_1EAEC9AC8 = v2;
  if (*a1 <= 0)
  {
    Memory = udata_getMemory(v2);
    v4 = *Memory;
    if (*Memory > 11)
    {
      v5 = Memory;
      v6 = Memory[1];
      v7 = v6 - 4 * v4;
      if (v7 >= 16)
      {
        qword_1EAEC9A98 = ucptrie_openFromBinary(-1, -1, Memory + (4 * v4), v7, 0, a1);
      }

      v8 = v5[2];
      if (v8 - v6 >= 16)
      {
        qword_1EAEC9AA0 = ucptrie_openFromBinary(-1, -1, v5 + v6, v8 - v6, 0, a1);
      }

      v9 = v5[3] - v8;
      if (v9 >= 16)
      {
        qword_1EAEC9AA8 = ucptrie_openFromBinary(-1, -1, v5 + v8, v9, 0, a1);
      }

      v10 = v5[9];
      dword_1EAEC9AB0 = HIBYTE(v10);
      dword_1EAEC9AB4 = BYTE2(v10);
      dword_1EAEC9AB8 = BYTE1(v10);

      sub_1952376A4(0x14u, sub_195289A34);
    }

    else
    {
      *a1 = U_INVALID_FORMAT_ERROR;
    }
  }
}

uint64_t sub_195289A34()
{
  udata_close(qword_1EAEC9AC8);
  qword_1EAEC9AC8 = 0;
  ucptrie_close(qword_1EAEC9A98);
  qword_1EAEC9A98 = 0;
  ucptrie_close(qword_1EAEC9AA0);
  qword_1EAEC9AA0 = 0;
  ucptrie_close(qword_1EAEC9AA8);
  qword_1EAEC9AA8 = 0;
  dword_1EAEC9AB0 = 0;
  dword_1EAEC9AB4 = 0;
  dword_1EAEC9AB8 = 0;
  atomic_store(0, &dword_1EAEC9ABC);
  return 1;
}

icu::RuleBasedBreakIterator *urbtok_open(int a1, const char *a2, UErrorCode *a3)
{
  result = ubrk_open(a1, a2, 0, 0, a3);
  if (*a3 <= 0)
  {
    icu::RuleBasedBreakIterator::initLatin1Cat(result);
  }

  return result;
}

uint64_t urbtok_openRules(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a4 && *a4 <= 0)
  {
    memset(v10, 0, sizeof(v10));
    icu::UnicodeString::UnicodeString(v10, a1, a2);
    v6 = sub_195211D6C(v10, a3, a4);
    v7 = *a4;
    if (v7 <= 0)
    {
      icu::RuleBasedBreakIterator::initLatin1Cat(v6);
    }

    icu::UnicodeString::~UnicodeString(v7, v10);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t urbtok_openBinaryRules(unsigned int *a1, int *a2)
{
  if (a2 && *a2 <= 0)
  {
    v5 = a1[2];
    v6 = malloc_type_malloc(v5, 0x100004077774924uLL);
    if (v6)
    {
      memcpy(v6, a1, v5);
      operator new();
    }

    *a2 = 7;
  }

  return 0;
}

uint64_t urbtok_openBinaryRulesNoCopy(uint64_t a1, int *a2)
{
  if (a2 && *a2 <= 0)
  {
    v2 = *(a1 + 8);
    operator new();
  }

  return 0;
}

uint64_t urbtok_getBinaryRules(char **a1, void *a2, unsigned int a3, int *a4)
{
  if (a4 && *a4 <= 0)
  {
    {
      LODWORD(__n) = 0;
      v10 = (*(*v9 + 200))(v9, &__n);
      v5 = __n;
      if (!a2)
      {
        return v5;
      }

      if (__n <= a3)
      {
        memcpy(a2, v10, __n);
        return v5;
      }

      v11 = 15;
    }

    else
    {
      v5 = 0;
      v11 = 1;
    }

    *a4 = v11;
    return v5;
  }

  return 0;
}

unint64_t urbtok_tokenize(uint64_t a1, int a2, char *a3, void *a4)
{
  if (a1 && a3)
  {
    return icu::RuleBasedBreakIterator::tokenize(a1, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

void urbtok_swapBinaryRules(_DWORD *a1, void *a2, int a3, int a4, int *a5)
{
  v6 = a3;
  v9 = udata_openSwapper(a3, 0, a4, 0, a5);
  if (a5 && *a5 <= 0)
  {
    v10 = v9;
    v11 = (*(v9 + 2))(a1[2]);
    v12 = v11 + 24;
    v13 = malloc_type_malloc(v12, 0x1000040504FFAC1uLL);
    if (v13)
    {
      v14 = v13;
      v15 = malloc_type_malloc(v12, 0x1000040504FFAC1uLL);
      if (v15)
      {
        v16 = v15;
        *v14 = v10[1](24);
        v14[1] = 10202;
        v14[2] = v10[1](20);
        v14[3] = 0;
        *(v14 + 8) = v6;
        *(v14 + 9) = 512;
        *(v14 + 11) = 0;
        *(v14 + 3) = 543912514;
        *(v14 + 4) = a1[1];
        *(v14 + 5) = 260;
        memcpy(v14 + 12, a1, v11);
        v20 = ubrk_swap(v10, v14, v12, v16, a5, v17, v18, v19);
        if (*a5 > 0 || v20 == v12)
        {
          if (*a5 <= 0)
          {
            memcpy(a2, v16 + 12, v11);
          }
        }

        else
        {
          *a5 = 3;
        }

        free(v16);
      }

      else
      {
        *a5 = 7;
      }

      free(v14);
    }

    else
    {
      *a5 = 7;
    }

    udata_closeSwapper(v10);
  }
}

uint64_t urbtok57_openRules(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a4 && *a4 <= 0)
  {
    memset(v6, 0, sizeof(v6));
    icu::UnicodeString::UnicodeString(v6, a1, a2);
    operator new();
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

void *urbtok57_openBinaryRules(unsigned int *a1, int *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 > 0)
  {
    return 0;
  }

  v5 = a1[2];
  result = malloc_type_malloc(v5, 0x100004077774924uLL);
  if (result)
  {
    memcpy(result, a1, v5);
    operator new();
  }

  *a2 = 7;
  return result;
}

uint64_t urbtok57_openBinaryRulesNoCopy(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t urbtok57_getBinaryRules(char **a1, void *a2, unsigned int a3, int *a4)
{
  if (a4 && *a4 <= 0)
  {
    {
      LODWORD(__n) = 0;
      v10 = (*(*v9 + 192))(v9, &__n);
      v5 = __n;
      if (!a2)
      {
        return v5;
      }

      if (__n <= a3)
      {
        memcpy(a2, v10, __n);
        return v5;
      }

      v11 = 15;
    }

    else
    {
      v5 = 0;
      v11 = 1;
    }

    *a4 = v11;
    return v5;
  }

  return 0;
}

void *ures_openU(UChar *a1, char *a2, UErrorCode *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a3 || *a3 > 0)
  {
    goto LABEL_3;
  }

  bzero(v13, 0x400uLL);
  if (!a1)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v8 = u_strlen(a1);
  if (v8 >= 1024)
  {
LABEL_7:
    result = 0;
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_4;
  }

  v10 = v8;
  if (uprv_isInvariantUString(a1, v8))
  {
    v9 = v13;
    u_UCharsToChars(a1, v13, v10 + 1);
    goto LABEL_11;
  }

  DefaultConverter = u_getDefaultConverter(a3);
  v12 = ucnv_fromUChars(DefaultConverter, v13, 1024, a1, v10, a3);
  u_releaseDefaultConverter(DefaultConverter);
  if (*a3 <= 0)
  {
    if (v12 >= 1024)
    {
      goto LABEL_7;
    }

    v9 = v13;
LABEL_11:
    result = ures_open(v9, a2, a3);
    goto LABEL_4;
  }

LABEL_3:
  result = 0;
LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ures_getLocParent(char *Default, void *a2, int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (!Default)
  {
    Default = uloc_getDefault(0);
  }

  v8 = sub_19528A5F4(Default, "ar_Latn", "ar_Latn", dword_19547CA4C, 718);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = strlen(v8);
  v11 = uprv_min(v10, a3);
  memcpy(a2, v9, v11);

  return u_terminateChars(a2, a3, v10, a4);
}

uint64_t sub_19528A5F4(char *__s1, uint64_t a2, uint64_t a3, int *a4, int a5)
{
  if (!a5)
  {
    return 0;
  }

  v5 = a4;
  v9 = &a4[a5];
  while (1)
  {
    v10 = &v5[2 * ((v9 - v5 + (v9 - v5 < 0 ? 3uLL : 0)) >> 2)];
    v11 = strcmp(__s1, (a2 + *v10));
    if (!v11)
    {
      break;
    }

    if (v11 >= 0)
    {
      v5 = v10 + 2;
    }

    else
    {
      v9 = &v5[2 * ((v9 - v5 + (v9 - v5 < 0 ? 3uLL : 0)) >> 2)];
    }

    if (v5 >= v9)
    {
      return 0;
    }
  }

  return a3 + v10[1];
}

double ures_initStackObject(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double icu::StackUResourceBundle::StackUResourceBundle(icu::StackUResourceBundle *this)
{
  *(this + 16) = 0;
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

{
  *(this + 16) = 0;
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  return result;
}

void icu::StackUResourceBundle::~StackUResourceBundle(icu::StackUResourceBundle *this)
{
  sub_19528A750(this, 1);
}

{
  sub_19528A750(this, 1);
}

void sub_19528A750(void *a1, int a2)
{
  if (a1)
  {
    v4 = a1[1];
    if (v4)
    {
      sub_19528E96C(v4);
    }

    v5 = a1[2];
    if (v5)
    {
      free(v5);
    }

    v6 = a1[4];
    if (v6 && v6 != a1 + 5)
    {
      free(v6);
    }

    a1[4] = 0;
    *(a1 + 26) = 0;
    if (*(a1 + 29) == 19700503 && a2 && *(a1 + 30) == 19641227)
    {

      free(a1);
    }
  }
}

void *sub_19528A7FC(_DWORD *a1, _DWORD *a2, int *a3)
{
  v3 = a1;
  if (a2 && a1 != a2 && *a3 <= 0)
  {
    if (a1)
    {
      v6 = a1[29] == 19700503 && a1[30] == 19641227;
      sub_19528A750(a1, 0);
    }

    else
    {
      v3 = malloc_type_malloc(0x88uLL, 0x1070040ECCE1818uLL);
      if (!v3)
      {
        *a3 = 7;
        return v3;
      }

      v6 = 1;
    }

    v7 = *(a2 + 3);
    v8 = *(a2 + 4);
    v9 = *(a2 + 1);
    *(v3 + 2) = *(a2 + 2);
    v10 = *(a2 + 7);
    v11 = *(a2 + 16);
    v12 = *(a2 + 5);
    *(v3 + 6) = *(a2 + 6);
    v13 = *a2;
    *(v3 + 3) = v7;
    *(v3 + 4) = v8;
    *v3 = v13;
    *(v3 + 1) = v9;
    *(v3 + 16) = v11;
    *(v3 + 7) = v10;
    *(v3 + 5) = v12;
    *(v3 + 4) = 0;
    *(v3 + 26) = 0;
    v14 = *(a2 + 4);
    if (v14)
    {
      sub_19528A934(v3, v14, a2[26], a3);
    }

    if (v6)
    {
      v15 = 19700503;
    }

    else
    {
      v15 = 0;
    }

    if (v6)
    {
      v16 = 19641227;
    }

    else
    {
      v16 = 0;
    }

    *(v3 + 29) = v15;
    *(v3 + 30) = v16;
    v17 = *(v3 + 1);
    if (v17)
    {
      sub_19528AA28(v17);
    }
  }

  return v3;
}

char *sub_19528A934(uint64_t a1, char *__src, int a3, _DWORD *a4)
{
  v7 = *(a1 + 104);
  result = *(a1 + 32);
  if (result)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
    *(a1 + 40) = 0;
    result = (a1 + 40);
    *(a1 + 32) = a1 + 40;
  }

  v10 = v9 + a3;
  *(a1 + 104) = v10;
  if (v10 >= 63)
  {
    if (result == (a1 + 40))
    {
      result = malloc_type_malloc((v10 + 1), 0x100004077774924uLL);
      *(a1 + 32) = result;
      if (result)
      {
        strcpy(result, (a1 + 40));
        result = *(a1 + 32);
        goto LABEL_10;
      }
    }

    else
    {
      result = malloc_type_realloc(result, (v10 + 1), 0x100004077774924uLL);
      if (result)
      {
        *(a1 + 32) = result;
        goto LABEL_10;
      }
    }

    *a4 = 7;
    return result;
  }

LABEL_10:
  v11 = &result[v7];

  return strcpy(v11, __src);
}

void sub_19528AA28(uint64_t a1)
{
  umtx_lock(&unk_1ED442B18);
  ++*(a1 + 108);
  for (i = *(a1 + 16); i; i = *(i + 16))
  {
    ++*(i + 108);
  }

  umtx_unlock(&unk_1ED442B18);
}

const UChar *ures_getString(uint64_t a1, int *a2, int *a3)
{
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    v5 = 1;
    goto LABEL_9;
  }

  result = res_getStringNoTrace(*(a1 + 8) + 40, *(a1 + 108), a2);
  if (!result)
  {
    v5 = 17;
LABEL_9:
    result = 0;
    *a3 = v5;
  }

  return result;
}

char *ures_getUTF8String(uint64_t a1, char *a2, int32_t *a3, int a4, int *a5)
{
  srcLength = 0;
  String = ures_getString(a1, &srcLength, a5);
  return sub_19528AB60(String, srcLength, a2, a3, a4, a5);
}

char *sub_19528AB60(UChar *src, int32_t srcLength, char *dest, int32_t *pDestLength, int a5, int *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v6 = dest;
  if (!pDestLength)
  {
    v9 = 0;
    if (srcLength)
    {
      goto LABEL_12;
    }

    if (!a5)
    {
      return "";
    }

LABEL_10:
    u_terminateChars(dest, v9, 0, a6);
    return v6;
  }

  v9 = *pDestLength;
  if (*pDestLength < 0 || !dest && v9)
  {
    v6 = 0;
    *a6 = 1;
    return v6;
  }

  if (!srcLength)
  {
    *pDestLength = 0;
    if (!a5)
    {
      return "";
    }

    goto LABEL_10;
  }

LABEL_12:
  if (v9 >= srcLength)
  {
    if (srcLength <= 715827882)
    {
      v11 = 3 * srcLength;
      v12 = v9 - (3 * srcLength + 1);
      if (v9 <= 3 * srcLength + 1)
      {
        v12 = 0;
      }

      v13 = &dest[v12];
      if (v9 >= v11 + 1)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v9;
      }

      if (!a5)
      {
        v6 = v13;
        v9 = v14;
      }
    }

    v10 = v6;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  return u_strToUTF8(v10, v9, pDestLength, src, srcLength, a6);
}

int *ures_getBinary(uint64_t a1, int *a2, int *a3)
{
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    v5 = 1;
    goto LABEL_9;
  }

  result = res_getBinaryNoTrace(*(a1 + 8) + 40, *(a1 + 108), a2);
  if (!result)
  {
    v5 = 17;
LABEL_9:
    result = 0;
    *a3 = v5;
  }

  return result;
}

int *ures_getIntVector(uint64_t a1, int *a2, int *a3)
{
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    v5 = 1;
    goto LABEL_9;
  }

  result = res_getIntVectorNoTrace(*(a1 + 8) + 40, *(a1 + 108), a2);
  if (!result)
  {
    v5 = 17;
LABEL_9:
    result = 0;
    *a3 = v5;
  }

  return result;
}

uint64_t ures_getInt(uint64_t a1, int *a2)
{
  if (a2 && *a2 <= 0)
  {
    if (a1)
    {
      v2 = *(a1 + 108);
      if (v2 >> 28 == 7)
      {
        return ((16 * v2) >> 4);
      }

      v4 = 17;
    }

    else
    {
      v4 = 1;
    }

    *a2 = v4;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ures_getUInt(uint64_t a1, int *a2)
{
  if (a2 && *a2 <= 0)
  {
    if (a1)
    {
      v2 = *(a1 + 108);
      if (v2 >> 28 == 7)
      {
        return v2 & 0xFFFFFFF;
      }

      v4 = 17;
    }

    else
    {
      v4 = 1;
    }

    *a2 = v4;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ures_getType(uint64_t a1)
{
  if (a1)
  {
    return res_getPublicType(*(a1 + 108));
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ures_getKey(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t ures_getSize(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t ures_resetIterator(uint64_t result)
{
  if (result)
  {
    *(result + 124) = -1;
  }

  return result;
}

BOOL ures_hasNext(_BOOL8 result)
{
  if (result)
  {
    return *(result + 124) < *(result + 128) - 1;
  }

  return result;
}

const UChar *ures_getNextString(uint64_t a1, int *a2, void *a3, UErrorCode *a4)
{
  if (!a4 || *a4 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    v7 = 1;
    goto LABEL_7;
  }

  v6 = *(a1 + 124);
  if (v6 == *(a1 + 128) - 1)
  {
    v7 = 8;
LABEL_7:
    *a4 = v7;
    return 0;
  }

  v11 = v6 + 1;
  *(a1 + 124) = v6 + 1;
  v12 = *(a1 + 108);
  v13 = v12 >> 28;
  if (v12 >> 28 > 5)
  {
    if (v12 >> 28 > 7)
    {
      if (v13 - 8 < 2)
      {
        ArrayItem = res_getArrayItem(*(a1 + 8) + 40, v12, v11);
LABEL_20:
        v12 = ArrayItem;
        v11 = *(a1 + 124);
LABEL_21:

        return sub_19528AF88(a1, v12, v11, a2, a4);
      }

      if (v13 != 14)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v13 != 6)
    {
      if (v13 != 7)
      {
        return 0;
      }

      goto LABEL_31;
    }
  }

  else
  {
    if (v12 >> 28 > 2)
    {
      if (v13 - 4 >= 2)
      {
        if (v13 != 3)
        {
          return 0;
        }

        goto LABEL_21;
      }

      goto LABEL_19;
    }

    if (v13)
    {
      if (v13 != 1)
      {
        if (v13 != 2)
        {
          return 0;
        }

LABEL_19:
        ArrayItem = res_getTableItemByIndex(*(a1 + 8) + 40, v12, v11, a3);
        goto LABEL_20;
      }

LABEL_31:
      v7 = 17;
      goto LABEL_7;
    }
  }

  v15 = *(a1 + 8) + 40;

  return res_getStringNoTrace(v15, v12, a2);
}

const UChar *sub_19528AF88(uint64_t a1, unsigned int a2, signed int a3, int *a4, UErrorCode *a5)
{
  if (a2 >> 28 == 3)
  {
    v7 = ures_getByIndex(a1, a3, 0, a5);
    String = ures_getString(v7, a4, a5);
    sub_19528A750(v7, 1);
    return String;
  }

  else
  {
    v10 = *(a1 + 8) + 40;

    return res_getStringNoTrace(v10, a2, a4);
  }
}

_DWORD *ures_getNextResource(uint64_t a1, _DWORD *a2, int *a3)
{
  v14 = 0;
  if (!a3 || *a3 > 0)
  {
    return a2;
  }

  if (!a1)
  {
    v7 = 1;
    goto LABEL_7;
  }

  v6 = *(a1 + 124);
  if (v6 == *(a1 + 128) - 1)
  {
    v7 = 8;
LABEL_7:
    *a3 = v7;
    return a2;
  }

  v9 = v6 + 1;
  *(a1 + 124) = v6 + 1;
  v10 = *(a1 + 108);
  v11 = v10 >> 28;
  if (v10 >> 28 == 15)
  {
    return a2;
  }

  if (((1 << v11) & 0x40C3) == 0)
  {
    if (((1 << v11) & 0x34) != 0)
    {
      TableItemByIndex = res_getTableItemByIndex(*(a1 + 8) + 40, v10, v9, &v14);
      return sub_19528E9CC(*(a1 + 8), TableItemByIndex, v14, *(a1 + 124), *(a1 + 24), *(a1 + 32), 0, a2, a3);
    }

    else if (((1 << v11) & 0x300) != 0)
    {
      ArrayItem = res_getArrayItem(*(a1 + 8) + 40, v10, v9);
      return sub_19528E9CC(*(a1 + 8), ArrayItem, 0, *(a1 + 124), *(a1 + 24), *(a1 + 32), 0, a2, a3);
    }

    return a2;
  }

  return sub_19528A7FC(a2, a1, a3);
}

void *ures_getByIndex(uint64_t a1, signed int a2, _DWORD *a3, UErrorCode *a4)
{
  v4 = a3;
  v14 = 0;
  if (!a4 || *a4 > 0)
  {
    return v4;
  }

  if (!a1)
  {
    v11 = 1;
    goto LABEL_12;
  }

  if (a2 < 0 || *(a1 + 128) <= a2)
  {
    v11 = 2;
LABEL_12:
    *a4 = v11;
    return v4;
  }

  v8 = *(a1 + 108);
  v9 = v8 >> 28;
  if (v8 >> 28 == 15)
  {
    return v4;
  }

  if (((1 << v9) & 0x40C3) == 0)
  {
    if (((1 << v9) & 0x34) != 0)
    {
      TableItemByIndex = res_getTableItemByIndex(*(a1 + 8) + 40, v8, a2, &v14);
      return sub_19528E9CC(*(a1 + 8), TableItemByIndex, v14, a2, *(a1 + 24), *(a1 + 32), 0, v4, a4);
    }

    else if (((1 << v9) & 0x300) != 0)
    {
      ArrayItem = res_getArrayItem(*(a1 + 8) + 40, v8, a2);
      return sub_19528E9CC(*(a1 + 8), ArrayItem, 0, a2, *(a1 + 24), *(a1 + 32), 0, v4, a4);
    }

    return v4;
  }

  return sub_19528A7FC(a3, a1, a4);
}

const UChar *ures_getStringByIndex(uint64_t a1, signed int a2, int *a3, UErrorCode *a4)
{
  v14 = 0;
  if (!a4 || *a4 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    result = 0;
    v11 = 1;
    goto LABEL_15;
  }

  if (a2 < 0 || *(a1 + 128) <= a2)
  {
    result = 0;
    v11 = 2;
LABEL_15:
    *a4 = v11;
    return result;
  }

  ArrayItem = *(a1 + 108);
  v10 = ArrayItem >> 28;
  if (ArrayItem >> 28 > 5)
  {
    if (ArrayItem >> 28 <= 7)
    {
      if (v10 == 6)
      {
LABEL_24:
        v13 = *(a1 + 8) + 40;

        return res_getStringNoTrace(v13, ArrayItem, a3);
      }

      if (v10 != 7)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v10 - 8 < 2)
      {
        ArrayItem = res_getArrayItem(*(a1 + 8) + 40, ArrayItem, a2);
        goto LABEL_30;
      }

      if (v10 != 14)
      {
LABEL_33:
        result = 0;
        v11 = 5;
        goto LABEL_15;
      }
    }

LABEL_28:
    result = 0;
    v11 = 17;
    goto LABEL_15;
  }

  if (ArrayItem >> 28 <= 2)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      goto LABEL_28;
    }

    goto LABEL_24;
  }

  if (v10 - 4 < 2)
  {
LABEL_20:
    TableItemByIndex = res_getTableItemByIndex(*(a1 + 8) + 40, ArrayItem, a2, &v14);
    return sub_19528AF88(a1, TableItemByIndex, a2, a3, a4);
  }

  if (v10 != 3)
  {
    goto LABEL_33;
  }

LABEL_30:

  return sub_19528AF88(a1, ArrayItem, a2, a3, a4);
}

char *ures_getUTF8StringByIndex(uint64_t a1, signed int a2, char *a3, int32_t *a4, int a5, UErrorCode *a6)
{
  srcLength = 0;
  StringByIndex = ures_getStringByIndex(a1, a2, &srcLength, a6);
  return sub_19528AB60(StringByIndex, srcLength, a3, a4, a5, a6);
}

_DWORD *ures_findResource(const char *a1, _DWORD *a2, UErrorCode *a3)
{
  if (a3 && *a3 <= 0)
  {
    v6 = (strlen(a1) + 1);
    v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
    if (v7)
    {
      v8 = v7;
      memcpy(v7, a1, v6);
      if (*v8 == 47)
      {
        v9 = v8 + 1;
        v10 = strchr(v8 + 1, 47);
        if (v10)
        {
          *v10 = 0;
          v11 = v10 + 1;
          goto LABEL_11;
        }

        *a3 = U_ILLEGAL_ARGUMENT_ERROR;
      }

      else
      {
        v9 = 0;
      }

      v11 = v8;
LABEL_11:
      v12 = strchr(v11, 47);
      if (v12)
      {
        v13 = v12;
        *v12 = 0;
        v14 = sub_19528C7CC(0, v9, v11, 0, a3);
        if (*a3 <= 0)
        {
          v15 = v14;
          SubResource = ures_findSubResource(v14, v13 + 1, a2, a3);
LABEL_16:
          a2 = SubResource;
          sub_19528A750(v15, 1);
        }
      }

      else
      {
        v17 = sub_19528C7CC(0, v9, v11, 0, a3);
        if (*a3 <= 0)
        {
          v15 = v17;
          SubResource = sub_19528A7FC(a2, v17, a3);
          goto LABEL_16;
        }
      }

      free(v8);
      return a2;
    }

    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }

  return a2;
}

uint64_t ures_findSubResource(uint64_t a1, char *a2, uint64_t a3, UErrorCode *a4)
{
  v12 = a2;
  if (a4 && *a4 <= 0)
  {
    v6 = a1;
    v11 = 0;
    v7 = sub_195291DB0(*(a1 + 8) + 40, *(a1 + 108), &v12, &v11);
    if (v7 == -1)
    {
      v6 = a3;
LABEL_9:
      *a4 = U_MISSING_RESOURCE_ERROR;
    }

    else
    {
      v8 = v7;
      while (1)
      {
        v9 = sub_19528E9CC(*(v6 + 8), v8, v11, 0xFFFFFFFF, *(v6 + 24), *(v6 + 32), 0, a3, a4);
        v6 = v9;
        if (!*v12)
        {
          break;
        }

        v8 = sub_195291DB0(*(v9 + 8) + 40, *(v9 + 108), &v12, &v11);
        if (v8 == -1)
        {
          goto LABEL_9;
        }
      }
    }

    return v6;
  }

  return a3;
}

const UChar *ures_getStringByKeyWithFallback(uint64_t a1, char *a2, int *a3, UErrorCode *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  memset(v11, 0, sizeof(v11));
  ures_getByKeyWithFallback(a1, a2, v11, a4);
  v10 = 0;
  if (a4 && *a4 <= 0)
  {
    StringNoTrace = res_getStringNoTrace(*(&v11[0] + 1) + 40, HIDWORD(v12), &v10);
    if (!StringNoTrace)
    {
      *a4 = U_RESOURCE_TYPE_MISMATCH;
    }
  }

  else
  {
    StringNoTrace = 0;
  }

  sub_19528A750(v11, 1);
  if (*a4 <= 0)
  {
    v7 = v10;
    if (v10 == 3)
    {
      if (*StringNoTrace == 8709 && StringNoTrace[1] == 8709 && StringNoTrace[2] == 8709)
      {
        v7 = 0;
        StringNoTrace = 0;
        *a4 = U_MISSING_RESOURCE_ERROR;
      }

      else
      {
        v7 = 3;
      }
    }

    if (a3)
    {
      *a3 = v7;
    }
  }

  else
  {
    StringNoTrace = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return StringNoTrace;
}

uint64_t ures_getByKeyWithFallback(uint64_t a1, char *a2, uint64_t a3, UErrorCode *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  if (!a4 || *a4 > 0)
  {
    goto LABEL_73;
  }

  if (!a1)
  {
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_73;
  }

  v7 = *(a1 + 108);
  if (v7 >> 28 != 2 && (v7 & 0xE0000000) != 0x40000000)
  {
    v12 = 0;
    *a4 = U_RESOURCE_TYPE_MISMATCH;
    goto LABEL_72;
  }

  v40 = *(a1 + 32);
  v41 = *(a1 + 104);
  v10 = *(a1 + 8);
  v49 = 0u;
  v50 = 0u;
  v52 = 0;
  v51 = 0u;
  __s = &v49 + 5;
  LODWORD(v49) = 40;
  v44[0] = U_ZERO_ERROR;
  icu::StringPiece::StringPiece(&v46, a2);
  TableItemByKey = icu::CharString::append(&__s, v46, v47, v44);
  if (v44[0] <= U_ZERO_ERROR)
  {
    v13 = __s;
    v14 = *__s;
    if (*__s)
    {
      do
      {
        if (v7 >> 28 != 2 && (v7 & 0xE0000000) != 0x40000000 && (v7 & 0xE0000000) != 0x80000000)
        {
          break;
        }

        v15 = strchr(v13, 47);
        if (v15)
        {
          *v15 = 0;
          v16 = v15 + 1;
        }

        else
        {
          v16 = &v13[strlen(v13)];
        }

        v45 = 0;
        v46 = v13;
        TableItemByKey = res_getTableItemByKey(v10 + 40, v7, &v45, &v46);
        v7 = TableItemByKey;
        v14 = *v16;
        v17 = !*v16 || TableItemByKey == -1;
        v13 = v16;
      }

      while (!v17);
      if (v14)
      {
        v7 = -1;
      }
    }
  }

  else
  {
    v7 = -1;
  }

  if (BYTE4(v49))
  {
    free(__s);
  }

  v46 = a2;
  v18 = *(a1 + 8);
  if (v7 != -1)
  {
    v19 = sub_19528E9CC(v18, v7, a2, 0xFFFFFFFF, *(a1 + 24), *(a1 + 32), 0, a3, a4);
    v12 = 0;
    goto LABEL_71;
  }

  v20 = 0;
  v12 = 0;
  v49 = 0u;
  v50 = 0u;
  v52 = 0;
  v51 = 0u;
  __s = &v49 + 5;
  LODWORD(v49) = 40;
  v43 = *(a1 + 32);
  *v44 = 0;
  v42 = *(a1 + 104);
  do
  {
    v21 = *(v18 + 16);
    if (!v21 && (v20 & 1) != 0)
    {
      *a4 = U_MISSING_RESOURCE_ERROR;
      v35 = 1;
LABEL_67:
      v19 = a3;
      goto LABEL_68;
    }

    v22 = v21 == 0;
    if (v21)
    {
      v18 = *(v18 + 16);
    }

    if (*(v18 + 112))
    {
      v23 = -1;
      goto LABEL_45;
    }

    v24 = *(v18 + 72);
    sub_19528BD9C(v40, v41, v43, v42, a2, &__s, a4);
    if (*a4 >= 1)
    {
      sub_19528A750(v12, 1);
      v35 = 0;
      goto LABEL_67;
    }

    *v44 = __s;
    v46 = a2;
    do
    {
      TableItemByKey = sub_195291DB0(v18 + 40, v24, v44, &v46);
      v23 = TableItemByKey;
      if (TableItemByKey >> 28 == 3)
      {
        if (**v44)
        {
          TableItemByKey = sub_19528E9CC(v18, TableItemByKey, 0, 0xFFFFFFFF, *(a1 + 24), *(a1 + 32), 0, v12, a4);
          v12 = TableItemByKey;
          if (!TableItemByKey)
          {
            goto LABEL_46;
          }

          v18 = *(TableItemByKey + 8);
          v43 = *(TableItemByKey + 32);
          v24 = *(TableItemByKey + 108);
          v42 = *(TableItemByKey + 104);
        }
      }

      else if (TableItemByKey == -1)
      {
        break;
      }
    }

    while (**v44);
LABEL_45:
    v20 |= v22;
  }

  while (v23 == -1);
LABEL_46:
  v25 = *v18;
  Default = uloc_getDefault(TableItemByKey);
  if (!strcmp(v25, Default))
  {
    v27 = -127;
  }

  else if (!strcmp(*v18, "root"))
  {
    v27 = -127;
  }

  else
  {
    v27 = -128;
  }

  *a4 = v27;
  v28 = sub_19528E9CC(v18, v23, v46, 0xFFFFFFFF, *(a1 + 24), *(a1 + 32), 0, a3, a4);
  v19 = v28;
  v29 = v43;
  if (v43)
  {
    v30 = v40;
    v31 = v41;
    v32 = v42;
  }

  else
  {
    v33 = *(v28 + 32);
    if (v33 && (v34 = strchr(*(v28 + 32), 47)) != 0 && v34[1])
    {
      v32 = strlen(v33);
      v30 = v40;
      v31 = v41;
      v29 = v33;
    }

    else
    {
      v29 = "";
      v30 = v40;
      v31 = v41;
      v32 = 0;
    }
  }

  sub_19528BD9C(v30, v31, v29, v32, a2, &__s, a4);
  v36 = *(v19 + 32);
  if (v36)
  {
    v37 = v36 == (v19 + 40);
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    free(v36);
  }

  *(v19 + 32) = 0;
  *(v19 + 104) = 0;
  sub_19528A934(v19, __s, v52, a4);
  v35 = 1;
  if (*(*(v19 + 32) + *(v19 + 104) - 1) != 47)
  {
    sub_19528A934(v19, "/", 1, a4);
  }

LABEL_68:
  if (BYTE4(v49))
  {
    free(__s);
  }

  if (v35)
  {
LABEL_71:
    a3 = v19;
LABEL_72:
    sub_19528A750(v12, 1);
  }

LABEL_73:
  v38 = *MEMORY[0x1E69E9840];
  return a3;
}

icu::CharString *sub_19528BD9C(unsigned __int8 *a1, int a2, char *a3, int a4, char *__s, icu::CharString *this, UErrorCode *a7)
{
  *(this + 14) = 0;
  **this = 0;
  if (a4 >= 1)
  {
    icu::CharString::append(this, a3, a4, a7);
    if (*a7 <= 0)
    {
      v14 = a3;
      v15 = &a3[a4];
      if (a2 >= 1)
      {
        v16 = &a1[a2];
        v14 = a3;
        do
        {
          do
          {
            v17 = *a1++;
          }

          while (v17 != 47 && a1 < v16);
          if (v14 < v15)
          {
            v19 = (&a3[a4] - v14++);
            while (*(v14 - 1) != 47)
            {
              ++v14;
              if (!--v19)
              {
                v14 = &a3[a4];
                break;
              }
            }
          }
        }

        while (a1 < v16 && v14 < v15);
      }

      if (v14 < v15)
      {
        while (1)
        {
          v20 = *__s;
          if (!*__s)
          {
            break;
          }

          if (v14 < v15)
          {
            v21 = (&a3[a4] - v14++);
            while (*(v14 - 1) != 47)
            {
              ++v14;
              if (!--v21)
              {
                v14 = &a3[a4];
                break;
              }
            }
          }

          v22 = __s;
          if (*__s)
          {
            do
            {
              if (v20 == 47)
              {
                break;
              }

              v23 = *++v22;
              v20 = v23;
            }

            while (v23);
          }

          if (v20 == 47)
          {
            __s = v22 + 1;
          }

          else
          {
            __s = v22;
          }

          if (v14 >= v15)
          {
            if (v20 == 47)
            {
              __s = v22 + 1;
            }

            else
            {
              __s = v22;
            }

            break;
          }
        }
      }
    }
  }

  icu::StringPiece::StringPiece(&v25, __s);
  return icu::CharString::append(this, v25, v26, a7);
}

void ures_getAllChildrenWithFallback(uint64_t a1, char *a2, uint64_t a3, int *a4)
{
  v4[0] = &unk_1F0936700;
  v4[1] = a3;
  ures_getAllItemsWithFallback(a1, a2, v4, a4);
  icu::ResourceSink::~ResourceSink(v4);
}

void ures_getAllItemsWithFallback(uint64_t a1, char *a2, uint64_t a3, int *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (a2)
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      if (!*a2 || (a1 = ures_getByKeyWithFallback(a1, a2, v8, a4), *a4 <= 0))
      {
        v7[2] = 0;
        v7[0] = &unk_1F0936748;
        v7[1] = 0;
        v7[3] = 0xFFFFFFFFLL;
        sub_19528C0EC(a1, v7, a3, a4);
        icu::ResourceValue::~ResourceValue(v7);
      }

      sub_19528A750(v8, 1);
    }

    else
    {
      *a4 = 1;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t ures_getValueWithFallback(uint64_t result, char *a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    if (a2)
    {
      if (!*a2 || (result = ures_getByKeyWithFallback(result, a2, a3, a5), *a5 <= 0))
      {
        v7 = *(result + 24);
        *(a4 + 8) = *(result + 8) + 40;
        *(a4 + 16) = v7;
        *(a4 + 24) = *(result + 108);
      }
    }

    else
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return result;
}

void sub_19528C0EC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 24);
    *(a2 + 8) = v8 + 40;
    *(a2 + 16) = v9;
    v10 = *(v8 + 16);
    v11 = v10 && *(v10 + 112) < 1;
    *(a2 + 24) = *(a1 + 108);
    v12 = !v11;
    (*(*a3 + 24))(a3, *a1, a2, v12, a4);
    if (!v12)
    {
      v19[0] = 0;
      v20 = 0u;
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19[1] = v10;
      *(&v20 + 1) = *(a1 + 24);
      LOBYTE(v26) = *(v10 + 96) == 0;
      BYTE1(v26) = 1;
      HIDWORD(v25) = *(v10 + 72);
      v27 = res_countArrayItems(v10 + 40, HIDWORD(v25));
      HIDWORD(v26) = -1;
      sub_19528AA28(v10);
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      v16 = 0;
      v13 = *(a1 + 32);
      if (v13 && *v13)
      {
        v14 = ures_getByKeyWithFallback(v19, v13, v17, &v16);
        if (v16 > 0)
        {
LABEL_12:
          sub_19528A750(v17, 1);
          sub_19528A750(v19, 1);
          goto LABEL_13;
        }
      }

      else
      {
        v14 = v19;
      }

      sub_19528C0EC(v14, a2, a3, a4);
      goto LABEL_12;
    }
  }

LABEL_13:
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t ures_getByKey(uint64_t a1, const char *a2, uint64_t a3, int *a4)
{
  v16 = a2;
  if (a4 && *a4 <= 0)
  {
    if (!a1)
    {
      v13 = 1;
      goto LABEL_16;
    }

    v8 = *(a1 + 108);
    if (v8 >> 28 != 2 && (v8 & 0xE0000000) != 0x40000000)
    {
      v13 = 17;
LABEL_16:
      *a4 = v13;
      return a3;
    }

    v15 = 0;
    TableItemByKey = res_getTableItemByKey(*(a1 + 8) + 40, v8, &v15, &v16);
    v17 = TableItemByKey;
    if (TableItemByKey == -1)
    {
      v16 = a2;
      if (!*(a1 + 112) || (v12 = sub_19528C3D0(a1, &v16, &v17, a4), *a4 > 0))
      {
        v13 = 2;
        goto LABEL_16;
      }

      v11 = v17;
    }

    else
    {
      v11 = TableItemByKey;
      v12 = *(a1 + 8);
    }

    return sub_19528E9CC(v12, v11, v16, 0xFFFFFFFFLL, *(a1 + 24), *(a1 + 32), 0, a3, a4);
  }

  return a3;
}

uint64_t sub_19528C3D0(uint64_t a1, const char **a2, int *a3, int *a4)
{
  v5 = *(a1 + 8);
  v17 = -1;
  *a3 = -1;
  if (!v5)
  {
    goto LABEL_22;
  }

  if (!*(v5 + 112))
  {
    TableItemByKey = res_getTableItemByKey(v5 + 40, *(v5 + 72), &v17, a2);
    *a3 = TableItemByKey;
    if (*(a1 + 112))
    {
      if (TableItemByKey != -1)
      {
        return v5;
      }

      v9 = 1;
      goto LABEL_5;
    }

    v9 = 1;
LABEL_15:
    if (TableItemByKey != -1)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (!*(a1 + 112))
  {
LABEL_21:
    v5 = 0;
LABEL_22:
    v15 = 2;
LABEL_23:
    *a4 = v15;
    return v5;
  }

  v9 = 0;
LABEL_5:
  while (2)
  {
    v10 = v5;
    do
    {
      v5 = *(v10 + 16);
      if (!v5)
      {
        TableItemByKey = -1;
        v5 = v10;
        goto LABEL_15;
      }

      v10 = *(v10 + 16);
    }

    while (*(v5 + 112));
    ++v9;
    v11 = res_getTableItemByKey(v5 + 40, *(v5 + 72), &v17, a2);
    *a3 = v11;
    if (v11 == -1)
    {
      continue;
    }

    break;
  }

LABEL_16:
  if (v9 >= 2)
  {
    v13 = *v5;
    Default = uloc_getDefault();
    if (!strcmp(v13, Default))
    {
      v15 = -127;
    }

    else if (!strcmp(*v5, "root"))
    {
      v15 = -127;
    }

    else
    {
      v15 = -128;
    }

    goto LABEL_23;
  }

  return v5;
}

const UChar *ures_getStringByKey(uint64_t a1, const char *a2, int *a3, int *a4)
{
  v21 = a2;
  if (a4 && *a4 <= 0)
  {
    if (!a1)
    {
      String = 0;
      v15 = 1;
      goto LABEL_27;
    }

    v8 = *(a1 + 108);
    if (v8 >> 28 != 2 && (v8 & 0xE0000000) != 0x40000000)
    {
      String = 0;
      v15 = 17;
LABEL_27:
      *a4 = v15;
      return String;
    }

    v20 = 0;
    TableItemByKey = res_getTableItemByKey(*(a1 + 8) + 40, v8, &v20, &v21);
    v22 = TableItemByKey;
    if (TableItemByKey != -1)
    {
      v12 = TableItemByKey;
      v13 = TableItemByKey >> 28;
      if (TableItemByKey >> 28 == 6)
      {
LABEL_14:
        v14 = *(a1 + 8) + 40;
        return res_getStringNoTrace(v14, v12, a3);
      }

      if (v13 != 3)
      {
        if (!v13)
        {
          goto LABEL_14;
        }

        goto LABEL_25;
      }

LABEL_24:
      v18 = ures_getByKey(a1, a2, 0, a4);
      String = ures_getString(v18, a3, a4);
      sub_19528A750(v18, 1);
      return String;
    }

    v21 = a2;
    if (!*(a1 + 112) || (v16 = sub_19528C3D0(a1, &v21, &v22, a4), *a4 > 0))
    {
      v15 = 2;
LABEL_26:
      String = 0;
      goto LABEL_27;
    }

    v12 = v22;
    v17 = v22 >> 28;
    if (v22 >> 28 != 6)
    {
      if (v17 == 3)
      {
        goto LABEL_24;
      }

      if (v17)
      {
LABEL_25:
        v15 = 17;
        goto LABEL_26;
      }
    }

    v14 = v16 + 40;
    return res_getStringNoTrace(v14, v12, a3);
  }

  return 0;
}

char *ures_getUTF8StringByKey(uint64_t a1, const char *a2, char *a3, int32_t *a4, int a5, int *a6)
{
  srcLength = 0;
  StringByKey = ures_getStringByKey(a1, a2, &srcLength, a6);
  return sub_19528AB60(StringByKey, srcLength, a3, a4, a5, a6);
}

uint64_t ures_getLocaleInternal(uint64_t result, int *a2)
{
  if (!a2 || *a2 > 0)
  {
    return 0;
  }

  if (result)
  {
    return **(result + 8);
  }

  *a2 = 1;
  return result;
}

uint64_t ures_getLocale(uint64_t result, int *a2)
{
  if (!a2 || *a2 > 0)
  {
    return 0;
  }

  if (result)
  {
    return **(result + 8);
  }

  *a2 = 1;
  return result;
}

uint64_t ures_getLocaleByType(uint64_t result, int a2, int *a3)
{
  if (!a3 || *a3 > 0)
  {
    return 0;
  }

  if (result)
  {
    if (a2 == 1)
    {
      v3 = *(result + 24);
      return *v3;
    }

    if (!a2)
    {
      v3 = *(result + 8);
      return *v3;
    }

    result = 0;
  }

  *a3 = 1;
  return result;
}

uint64_t sub_19528C7BC(uint64_t result)
{
  if (result)
  {
    return **(result + 8);
  }

  return result;
}

void *sub_19528C7CC(uint64_t inited, const char *a2, char *a3, int a4, UErrorCode *a5)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_2;
  }

  Default = a3;
  v5 = inited;
  if (a4 == 2)
  {
    if (atomic_load_explicit(&dword_1ED442B68, memory_order_acquire) == 2 || (inited = icu::umtx_initImplPreInit(&dword_1ED442B68), !inited))
    {
      v15 = dword_1ED442B6C;
      if (dword_1ED442B6C >= 1)
      {
        v5 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      qword_1ED442B70 = uhash_open(sub_195290328, sub_195290364, 0, a5);
      sub_1952376A4(0x1Cu, sub_1952903AC);
      dword_1ED442B6C = *a5;
      icu::umtx_initImplPostInit(&dword_1ED442B68);
    }

    if (*a5 > 0)
    {
LABEL_2:
      v5 = 0;
      goto LABEL_3;
    }

    if (Default)
    {
      if (!*Default)
      {
        Default = "root";
      }
    }

    else
    {
      Default = uloc_getDefault(inited);
    }

    umtx_lock(&unk_1ED442B18);
    v17 = sub_19528FDD8(Default, a2, a5);
    if (*a5 > 0)
    {
      goto LABEL_34;
    }

    v13 = v17;
    if (v17[28])
    {
      --v17[27];
LABEL_34:
      v13 = 0;
LABEL_35:
      umtx_unlock(&unk_1ED442B18);
      goto LABEL_36;
    }

    v47[0] = v17;
    v31 = strcmp(Default, "root");
    v32 = v13;
    if (!v31 || (v32 = v13, *(v13 + 16)) || (v32 = v13, *(v13 + 96)) || (v33 = strlen(Default), v32 = v13, v33 > 0x9C))
    {
LABEL_76:
      while (1)
      {
        v32 = v32[2];
        if (!v32)
        {
          break;
        }

        ++*(v32 + 27);
      }

      goto LABEL_35;
    }

    v58 = 0u;
    memset(v59, 0, sizeof(v59));
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    *__dst = 0u;
    strcpy(__dst, Default);
    v34 = strrchr(__dst, 95);
    v35 = v13;
    if (v34)
    {
      *v34 = 0;
      v35 = v13;
      if (*__dst ^ 0x746F6F72 | __dst[4])
      {
        if (!sub_19529010C(v47, __dst, a5))
        {
LABEL_73:
          if (*a5 > 0)
          {
            goto LABEL_34;
          }

          v32 = v47[0];
          goto LABEL_76;
        }

        v35 = v47[0];
      }
    }

    if (strcmp(*v35, "root") && !v35[2])
    {
      sub_1952902A0(v47, a5);
    }

    goto LABEL_73;
  }

  v49 = 0u;
  v50 = 0u;
  *v47 = 0u;
  v48 = 0u;
  ulocimp_getBaseName(a3, a5, v47);
  v12 = *a5;
  if (*a5 >= 1)
  {
    v13 = 0;
    v14 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_23:
    *a5 = v14;
    goto LABEL_24;
  }

  v16 = v47[0];
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v43 = 1;
  v58 = 0u;
  memset(v59, 0, sizeof(v59));
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  *__dst = 0u;
  if (atomic_load_explicit(&dword_1ED442B68, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED442B68))
  {
    v14 = dword_1ED442B6C;
    if (dword_1ED442B6C >= 1)
    {
      v13 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    qword_1ED442B70 = uhash_open(sub_195290328, sub_195290364, 0, a5);
    sub_1952376A4(0x1Cu, sub_1952903AC);
    dword_1ED442B6C = *a5;
    icu::umtx_initImplPostInit(&dword_1ED442B68);
  }

  if (*a5 > 0)
  {
    v13 = 0;
    goto LABEL_24;
  }

  v21 = strncpy(__dst, v16, 0x9CuLL);
  v59[28] = 0;
  v22 = uloc_getDefault(v21);
  umtx_lock(&unk_1ED442B18);
  v23 = sub_19528F724(a2, __dst, v22, a4, &v44, &v43, &v44 + 1, &v46);
  v24 = v46;
  if (v46 == 7)
  {
    goto LABEL_47;
  }

  v29 = v23;
  if (v23)
  {
    v45 = v23;
    if (v43)
    {
      v30 = v44;
      if (!v44)
      {
LABEL_83:
        if (!sub_19529010C(&v45, __dst, a5))
        {
          goto LABEL_104;
        }

        v30 = 0;
      }

LABEL_85:
      v36 = 1;
      goto LABEL_86;
    }

    v30 = v44;
    if (!__dst[0])
    {
      goto LABEL_85;
    }

    v37 = strstr("nb nn", __dst);
    v36 = 1;
    if (v37 && !v30)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v36 = 0;
    v30 = v44;
  }

LABEL_86:
  if (a4 || v29 || HIBYTE(v44) || v30)
  {
    if (v29)
    {
LABEL_96:
      v39 = v36 == 0;
      goto LABEL_97;
    }

    goto LABEL_107;
  }

  strcpy(__dst, v22);
  v38 = sub_19528F724(a2, __dst, v22, 0, &v44, &v43, &v44 + 1, &v46);
  v24 = v46;
  if (v46 == 7)
  {
    goto LABEL_47;
  }

  v29 = v38;
  v46 = -127;
  if (!v38)
  {
LABEL_107:
    strcpy(__dst, "root");
    v42 = sub_19528F724(a2, __dst, v22, a4, &v44, &v43, &v44 + 1, &v46);
    v24 = v46;
    if (v46 != 7)
    {
      v13 = v42;
      if (!v42)
      {
        v24 = U_MISSING_RESOURCE_ERROR;
        goto LABEL_48;
      }

      v46 = -127;
      v29 = v42;
      if (v44)
      {
        goto LABEL_105;
      }

      goto LABEL_102;
    }

LABEL_47:
    v13 = 0;
    goto LABEL_48;
  }

  v45 = v38;
  if (v43)
  {
    if (v44)
    {
      goto LABEL_104;
    }

    goto LABEL_116;
  }

  v30 = v44;
  if (!__dst[0])
  {
LABEL_118:
    v36 = 1;
    goto LABEL_96;
  }

  v39 = 0;
  if (strstr("nb nn", __dst) && !v30)
  {
LABEL_116:
    if (!sub_19529010C(&v45, __dst, a5))
    {
      goto LABEL_104;
    }

    v30 = 0;
    goto LABEL_118;
  }

LABEL_97:
  if (!v30)
  {
    v40 = v45;
    if (!strcmp(*v45, "root") || v40[2] || *(v29 + 96))
    {
LABEL_101:
      v13 = v45;
LABEL_102:
      for (i = *(v13 + 16); i; i = *(i + 16))
      {
        ++*(i + 108);
      }

      goto LABEL_104;
    }

    if (sub_1952902A0(&v45, a5))
    {
      if (v39)
      {
        *(v29 + 28) = -127;
      }

      goto LABEL_101;
    }
  }

LABEL_104:
  v13 = v29;
LABEL_105:
  if (*a5 > 0)
  {
    v13 = 0;
    goto LABEL_49;
  }

  v24 = v46;
  if (!v46)
  {
    goto LABEL_49;
  }

LABEL_48:
  *a5 = v24;
LABEL_49:
  umtx_unlock(&unk_1ED442B18);
LABEL_24:
  if (BYTE4(v47[1]))
  {
    free(v47[0]);
  }

  if (v12 >= 1)
  {
    goto LABEL_2;
  }

LABEL_36:
  if (*a5 > 0)
  {
    goto LABEL_2;
  }

  if (!v13)
  {
    v5 = 0;
    v15 = U_MISSING_RESOURCE_ERROR;
    goto LABEL_12;
  }

  if (!v5)
  {
    v25 = malloc_type_malloc(0x88uLL, 0x1070040ECCE1818uLL);
    v5 = v25;
    if (v25)
    {
      v20 = 19700503;
      v25[16] = 0;
      *(v25 + 6) = 0u;
      *(v25 + 7) = 0u;
      *(v25 + 4) = 0u;
      *(v25 + 5) = 0u;
      *(v25 + 2) = 0u;
      *(v25 + 3) = 0u;
      *v25 = 0u;
      *(v25 + 1) = 0u;
      goto LABEL_52;
    }

    sub_19528E96C(v13);
    v15 = U_MEMORY_ALLOCATION_ERROR;
LABEL_12:
    *a5 = v15;
    goto LABEL_3;
  }

  if (*(v5 + 29) != 19700503)
  {
    sub_19528A750(v5, 0);
    v20 = 0;
    v19 = 0;
    v5[16] = 0;
    *(v5 + 6) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    goto LABEL_54;
  }

  v18 = *(v5 + 30);
  sub_19528A750(v5, 0);
  v19 = 0;
  v5[16] = 0;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  if (v18 == 19641227)
  {
    v20 = 19700503;
  }

  else
  {
    v20 = 0;
  }

  if (v18 != 19641227)
  {
    goto LABEL_54;
  }

LABEL_52:
  v19 = 19641227;
LABEL_54:
  *(v5 + 29) = v20;
  *(v5 + 30) = v19;
  v5[1] = v13;
  v5[3] = v13;
  v26 = a4 != 2 && *(v13 + 96) == 0;
  *(v5 + 112) = v26;
  *(v5 + 113) = 1;
  v27 = *(v13 + 72);
  *(v5 + 27) = v27;
  v28 = res_countArrayItems(v13 + 40, v27);
  *(v5 + 31) = -1;
  *(v5 + 32) = v28;
LABEL_3:
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void *ures_openFillIn(void *result, const char *a2, char *a3, UErrorCode *a4)
{
  if (result || *a4 > 0)
  {
    return sub_19528C7CC(result, a2, a3, 0, a4);
  }

  *a4 = U_ILLEGAL_ARGUMENT_ERROR;
  return result;
}

void *ures_openDirectFillIn(void *result, const char *a2, char *a3, UErrorCode *a4)
{
  if (result || *a4 > 0)
  {
    return sub_19528C7CC(result, a2, a3, 2, a4);
  }

  *a4 = U_ILLEGAL_ARGUMENT_ERROR;
  return result;
}

void *ures_openWithCountryFallback(const char *a1, char *a2, BOOL *a3, UErrorCode *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v36 = 0;
  if (ulocimp_setRegionToSupplementalRegion(a2) >= 1)
  {
    v48 = 0u;
    memset(v49, 0, sizeof(v49));
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    *__str = 0u;
    ulocimp_setRegionToSupplementalRegion(a2);
    if (*a4 <= 0)
    {
      v8 = ures_openWithCountryFallback(a1, __str, a3, a4);
      if (a3)
      {
        *a3 = 1;
      }

      goto LABEL_44;
    }
  }

  v8 = sub_19528C7CC(0, a1, a2, 0, a4);
  if (a3)
  {
    *a3 = 0;
  }

  *__s1 = 0;
  uloc_getCountry(a2, __s1, 4, a4);
  v9 = *a4 == U_USING_FALLBACK_WARNING;
  if (!a1 || *a4 != U_USING_FALLBACK_WARNING)
  {
    goto LABEL_9;
  }

  if (strcmp(a1, "icudt76l"))
  {
    *__str = 0;
    v10 = sub_19528C7CC(0, 0, a2, 0, __str);
    sub_19528A750(v10, 1);
    v9 = *__str == -128;
LABEL_9:
    if (!v9)
    {
      goto LABEL_44;
    }
  }

  if (__s1[0])
  {
    *__s2 = 0;
    if (*a4 <= 0)
    {
      if (v8)
      {
        v11 = *v8[1];
      }

      else
      {
        v11 = 0;
        *a4 = U_ILLEGAL_ARGUMENT_ERROR;
      }
    }

    else
    {
      v11 = 0;
    }

    uloc_getCountry(v11, __s2, 4, a4);
    if (strcmp(__s1, __s2))
    {
      v40 = 0;
      *__dst = 0;
      v33 = 0;
      *__s = 0;
      v48 = 0u;
      memset(v49, 0, sizeof(v49));
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      *__str = 0u;
      uloc_getLanguage(a2, __dst, 12, a4);
      uloc_getScript(a2, __s, 6, a4);
      v12 = strlen(__s);
      v13 = strlen(__dst);
      v14 = strlen(a2);
      snprintf(__str, 0x9DuLL, "und_%s", __s1);
      uloc_addLikelySubtags(__str, __str, 157, a4);
      uloc_getLanguage(__str, __dst, 12, a4);
      uloc_getScript(__str, __s, 6, a4);
      if (*a4 > 0)
      {
        goto LABEL_42;
      }

      v15 = &a2[v13 + 1];
      if (v12)
      {
        v15 += v12 + 1;
      }

      if (v14 <= 0x9D)
      {
        v16 = v15;
      }

      else
      {
        v16 = __s1;
      }

      v17 = strlen(__dst);
      v18 = strlen(__s);
      if (v17 + v18 + strlen(v16) - 155 >= 0xFFFFFFFFFFFFFF62)
      {
        v19 = v16;
      }

      else
      {
        v19 = __s1;
      }

      *a4 = U_ZERO_ERROR;
      snprintf(__str, 0x9DuLL, "%s_%s_%s", __dst, __s, v19);
      v20 = sub_19528C7CC(0, a1, __str, 0, a4);
      v21 = v20;
      v22 = *a4;
      if ((*a4 & 0xFFFFFFFE) == 0xFFFFFF80)
      {
        v38 = 0;
        *v37 = 0;
        if (v20)
        {
          v23 = *v20[1];
        }

        else
        {
          v23 = 0;
          *a4 = U_ILLEGAL_ARGUMENT_ERROR;
        }

        uloc_getLanguage(v23, v37, 12, a4);
        v22 = *a4;
        if (*a4 == U_USING_DEFAULT_WARNING || strcmp(__dst, v37))
        {
          strcpy(__dst, "en");
          v24 = off_1E740B830;
          v25 = -2;
          while (1)
          {
            v26 = strlen(*(v24 - 1));
            if (!strncmp(__str, *(v24 - 1), v26))
            {
              break;
            }

            v24 += 2;
            v25 += 2;
            if (v25 >= 8)
            {
              goto LABEL_40;
            }
          }

          strcpy(__dst, *v24);
LABEL_40:
          snprintf(__str, 0x9DuLL, "%s_%s_%s", __dst, __s, v19);
          sub_19528A750(v21, 1);
          v21 = sub_19528C7CC(0, a1, __str, 0, a4);
          v22 = *a4;
        }
      }

      if (v22 <= U_ZERO_ERROR)
      {
        if (a3)
        {
          if (v8 && v21)
          {
            v29 = 0;
            v30 = *v8[1];
            if (v30)
            {
              v31 = *v21[1];
              if (v31)
              {
                v29 = strcmp(v30, v31) != 0;
              }
            }
          }

          else
          {
            v29 = 0;
          }

          *a3 = v29;
        }

        sub_19528A750(v8, 1);
      }

      else
      {
LABEL_42:
        v21 = v8;
      }

      v8 = v21;
    }
  }

LABEL_44:
  v27 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t ures_countArrayItems(uint64_t a1, const char *a2, int *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  if (a3 && *a3 <= 0)
  {
    if (!a1)
    {
      v4 = 0;
      *a3 = 1;
      goto LABEL_4;
    }

    ures_getByKey(a1, a2, v7, a3);
    if (*(*(&v7[0] + 1) + 40))
    {
      v4 = res_countArrayItems(*(&v7[0] + 1) + 40, HIDWORD(v8));
      sub_19528A750(v7, 1);
      goto LABEL_4;
    }

    *a3 = 2;
    sub_19528A750(v7, 1);
  }

  v4 = 0;
LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

char *ures_getVersionNumberInternal(char *result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 2);
    if (!result)
    {
      *length = 0;
      StringByKey = ures_getStringByKey(v1, "Version", length, &length[1]);
      v3 = length[0] <= 1 ? 1 : length[0];
      result = malloc_type_malloc(v3 + 1, 0x100004077774924uLL);
      *(v1 + 16) = result;
      if (result)
      {
        if (length[0] < 1)
        {
          *result = 48;
        }

        else
        {
          u_UCharsToChars(StringByKey, result, length[0]);
          *(*(v1 + 16) + v3) = 0;
        }

        return *(v1 + 16);
      }
    }
  }

  return result;
}

void ures_getVersion(char *a1, uint8_t *a2)
{
  if (a1)
  {
    VersionNumberInternal = ures_getVersionNumberInternal(a1);

    u_versionFromString(a2, VersionNumberInternal);
  }
}

void *ures_openAvailableLocales(const char *a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v4 = malloc_type_malloc(0x110uLL, 0x1070040264301D4uLL);
  v5 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
  v6 = v5;
  if (!v4 || !v5)
  {
    *a2 = U_MEMORY_ALLOCATION_ERROR;
    free(v5);
    free(v4);
    return 0;
  }

  v7 = *&off_1F09366C8;
  *v5 = xmmword_1F09366B8;
  v5[1] = v7;
  v5[2] = xmmword_1F09366D8;
  *(v5 + 6) = off_1F09366E8;
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[7] = 0u;
  v4[8] = 0u;
  v4[9] = 0u;
  v4[10] = 0u;
  v4[11] = 0u;
  v4[12] = 0u;
  v4[13] = 0u;
  v4[14] = 0u;
  v4[15] = 0u;
  v4[16] = 0u;
  v8 = sub_19528C7CC(0, a1, "res_index", 2, a2);
  ures_getByKey(v8, "InstalledLocales", v4, a2);
  if (*a2 <= 0)
  {
    v6[1] = v4;
  }

  else
  {
    sub_19528A750(v4, 1);
    free(v4);
    free(v6);
    v6 = 0;
  }

  sub_19528A750(v8, 1);
  return v6;
}

uint64_t ures_getFunctionalEquivalent(char *a1, int a2, const char *a3, const char *a4, char *__s, char *a6, char *a7, int a8, int *a9)
{
  v96 = *MEMORY[0x1E69E9840];
  memset(&v94[1], 0, 48);
  v95 = 0;
  v93 = 0;
  v94[0] = &v94[1] + 5;
  LODWORD(v94[1]) = 40;
  memset(&v92[1], 0, 48);
  v92[0] = &v92[1] + 5;
  LODWORD(v92[1]) = 40;
  memset(&v90[1], 0, 48);
  v90[0] = &v90[1] + 5;
  LODWORD(v90[1]) = 40;
  __n = 0;
  memset(&v88[1], 0, 48);
  v88[0] = &v88[1] + 5;
  LODWORD(v88[1]) = 40;
  v89 = 0;
  memset(&v86[1], 0, 48);
  v86[0] = &v86[1] + 5;
  LODWORD(v86[1]) = 40;
  v87 = 0;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v53 = U_ZERO_ERROR;
  if (*a9 >= 1)
  {
    v9 = 0;
    goto LABEL_137;
  }

  memset(&__s1[1], 0, 48);
  __s1[0] = &__s1[1] + 5;
  LODWORD(__s1[1]) = 40;
  v67 = 0;
  if (!__s || !*__s)
  {
    goto LABEL_13;
  }

  v17 = strlen(__s);
  ulocimp_getKeywordValue(a6, __s, v17, &v53, &__s2);
  icu::CharString::operator=(__s1, &__s2);
  if (BYTE12(__s2))
  {
    free(__s2);
  }

  icu::StringPiece::StringPiece(&__s2, "default");
  if (v67 != DWORD2(__s2))
  {
    goto LABEL_13;
  }

  if (!DWORD2(__s2))
  {
    v18 = __s1[0];
LABEL_12:
    LODWORD(v67) = 0;
    *v18 = 0;
    goto LABEL_13;
  }

  v18 = __s1[0];
  if (!memcmp(__s1[0], __s2, SDWORD2(__s2)))
  {
    goto LABEL_12;
  }

LABEL_13:
  v64 = 0u;
  v65 = 0u;
  __s2 = 0u;
  v63 = 0u;
  ulocimp_getBaseName(a6, &v53, &__s2);
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0;
  icu::CharString::copyFrom(v88, &__s2, &v53);
  icu::CharString::copyFrom(v90, &__s2, &v53);
  if (a7)
  {
    v19 = ures_openAvailableLocales(a3, &v53);
    *a7 = 1;
    if (v53 <= U_ZERO_ERROR)
    {
      v20 = v88[0];
      while (1)
      {
        v21 = uenum_next(v19, 0, &v53);
        if (!v21)
        {
          break;
        }

        if (!strcmp(v21, v20))
        {
          v22 = 1;
          goto LABEL_20;
        }
      }

      v22 = 0;
LABEL_20:
      *a7 = v22;
    }

    uenum_close(v19);
  }

  if (v53 > U_ZERO_ERROR)
  {
    v9 = 0;
    *a9 = v53;
    goto LABEL_131;
  }

  do
  {
    v53 = U_ZERO_ERROR;
    v23 = sub_19528C7CC(0, a3, v88[0], 0, &v53);
    v24 = v23;
    if (a7 && (v53 & 0xFFFFFFFE) == 0xFFFFFF80)
    {
      *a7 = 0;
    }

    else if (v53 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      if (v53 == U_ZERO_ERROR)
      {
        ures_getByKey(v23, a4, &v77, &v53);
        if (v53 == U_ZERO_ERROR)
        {
          LODWORD(v58[0]) = 0;
          StringByKey = ures_getStringByKey(&v77, "default", v58, &v53);
          if (v53 <= U_ZERO_ERROR)
          {
            if (LODWORD(v58[0]))
            {
              LODWORD(v95) = 0;
              *v94[0] = 0;
              icu::CharString::appendInvariantChars(v94, StringByKey, v58[0], &v53);
              icu::CharString::copyFrom(v92, v88, &v53);
              if (!v67)
              {
                icu::CharString::append(__s1, v94[0], v95, &v53);
              }
            }
          }
        }
      }
    }

    else
    {
      *a9 = v53;
    }

    v53 = U_ZERO_ERROR;
    if (v24)
    {
      LODWORD(__n) = 0;
      *v90[0] = 0;
      if (v53 <= U_ZERO_ERROR)
      {
        v25 = **(v24 + 24);
      }

      else
      {
        v25 = 0;
      }

      icu::StringPiece::StringPiece(v58, v25);
      icu::CharString::append(v90, v58[0], v58[1], &v53);
    }

    if (__n == v89 && ((v26 = v90[0], !__n) || !memcmp(v90[0], v88[0], __n)))
    {
      sub_19528E4CC(v26, v24, &v77, v88);
    }

    else
    {
      icu::CharString::copyFrom(v88, v90, &v53);
    }

    sub_19528A750(v24, 1);
    if (v95)
    {
      break;
    }

    if (!__n)
    {
      break;
    }

    icu::StringPiece::StringPiece(v58, "root");
    if (__n == LODWORD(v58[1]) && (!LODWORD(v58[1]) || !memcmp(v90[0], v58[0], SLODWORD(v58[1]))))
    {
      break;
    }

    a7 = 0;
  }

  while (*a9 < 1);
  icu::CharString::copyFrom(v88, &__s2, &v53);
  icu::CharString::copyFrom(v90, &__s2, &v53);
  do
  {
    v28 = sub_19528C7CC(0, a3, v88[0], 0, &v53);
    v29 = v28;
    if (v53 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      if (v53 == U_ZERO_ERROR)
      {
        ures_getByKey(v28, a4, &v77, &v53);
        if (v53 == U_ZERO_ERROR)
        {
          ures_getByKey(&v77, __s1[0], &v68, &v53);
          if (v53 == U_ZERO_ERROR)
          {
            if (v89)
            {
              icu::CharString::copyFrom(v86, v88, &v53);
            }

            else
            {
              LODWORD(v87) = 0;
              *v86[0] = 0;
              icu::StringPiece::StringPiece(v58, "root");
              icu::CharString::append(v86, v58[0], v58[1], &v53);
            }

            if (v93 > v87)
            {
              LODWORD(v58[0]) = 0;
              v30 = ures_getStringByKey(&v77, "default", v58, &v53);
              if (v53 <= U_ZERO_ERROR)
              {
                if (LODWORD(v58[0]))
                {
                  LODWORD(v95) = 0;
                  *v94[0] = 0;
                  icu::CharString::appendInvariantChars(v94, v30, v58[0], &v53);
                  icu::CharString::copyFrom(v92, v86, &v53);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      *a9 = v53;
    }

    v53 = U_ZERO_ERROR;
    if (!v29)
    {
      goto LABEL_67;
    }

    if (strcmp(a4, "collations"))
    {
      goto LABEL_67;
    }

    v32 = **(v29 + 24);
    if (!v32 || !*v32 || !strcmp(v32, "root"))
    {
      goto LABEL_67;
    }

    v61 = 0u;
    v59 = 0u;
    v60 = 0u;
    *v58 = 0u;
    ulocimp_getLanguage(v32, &v53, v58);
    v56 = 0u;
    v57 = 0u;
    *v54 = 0u;
    v55 = 0u;
    ulocimp_getLanguage(v88[0], &v53, v54);
    if (v53 > U_ZERO_ERROR || DWORD2(v61) == DWORD2(v57) && (!DWORD2(v61) || !memcmp(v58[0], v54[0], SDWORD2(v61))))
    {
      if (BYTE4(v54[1]))
      {
        free(v54[0]);
      }

      if (BYTE4(v58[1]))
      {
        free(v58[0]);
      }

      v53 = U_ZERO_ERROR;
LABEL_67:
      icu::CharString::copyFrom(v90, v88, &v53);
      goto LABEL_68;
    }

    LODWORD(__n) = 0;
    *v90[0] = 0;
    icu::StringPiece::StringPiece(&v51, v32);
    icu::CharString::append(v90, v51, v52, &v53);
    if (BYTE4(v54[1]))
    {
      free(v54[0]);
    }

    if (BYTE4(v58[1]))
    {
      free(v58[0]);
    }

    v53 = U_ZERO_ERROR;
LABEL_68:
    sub_19528E4CC(v90[0], v29, &v77, v88);
    sub_19528A750(v29, 1);
    v53 = U_ZERO_ERROR;
    v31 = v87;
    if (v87)
    {
      goto LABEL_93;
    }
  }

  while (__n && *a9 < 1);
  if (v67 == v95)
  {
    if (!v67 || (v33 = __s1[0], !memcmp(__s1[0], v94[0], v67)))
    {
      v31 = 0;
      goto LABEL_93;
    }
  }

  else
  {
    v33 = __s1[0];
  }

  LODWORD(v67) = 0;
  *v33 = 0;
  icu::CharString::append(__s1, v94[0], v95, &v53);
  icu::CharString::copyFrom(v88, &__s2, &v53);
  icu::CharString::copyFrom(v90, &__s2, &v53);
  while (1)
  {
    v35 = sub_19528C7CC(0, a3, v88[0], 0, &v53);
    v36 = v35;
    if (v53 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      if (v53 == U_ZERO_ERROR)
      {
        ures_getByKey(v35, a4, &v77, &v53);
        if (v53 == U_ZERO_ERROR)
        {
          ures_getByKey(&v77, __s1[0], &v68, &v53);
          if (v53 == U_ZERO_ERROR)
          {
            if (v89)
            {
              icu::CharString::copyFrom(v86, v88, &v53);
            }

            else
            {
              LODWORD(v87) = 0;
              *v86[0] = 0;
              icu::StringPiece::StringPiece(v58, "root");
              icu::CharString::append(v86, v58[0], v58[1], &v53);
            }

            if (v93 > v87)
            {
              LODWORD(v58[0]) = 0;
              v37 = ures_getStringByKey(&v77, "default", v58, &v53);
              if (v53 <= U_ZERO_ERROR)
              {
                if (LODWORD(v58[0]))
                {
                  LODWORD(v95) = 0;
                  *v94[0] = 0;
                  icu::CharString::appendInvariantChars(v94, v37, v58[0], &v53);
                  icu::CharString::copyFrom(v92, v86, &v53);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      *a9 = v53;
    }

    v53 = U_ZERO_ERROR;
    icu::CharString::copyFrom(v90, v88, &v53);
    sub_19528E4CC(v90[0], v36, &v77, v88);
    sub_19528A750(v36, 1);
    v53 = U_ZERO_ERROR;
    v31 = v87;
    if (v87 || !__n)
    {
      break;
    }

    if (*a9 > 0)
    {
      goto LABEL_124;
    }
  }

LABEL_93:
  if (*a9 <= 0)
  {
    if (v31)
    {
      if (a8)
      {
        if (v93 <= v31 && v67 == v95)
        {
          v34 = __s1[0];
          if (!v67 || !memcmp(__s1[0], v94[0], v67))
          {
            LODWORD(v67) = 0;
            *v34 = 0;
          }
        }
      }
    }

    else
    {
      *a9 = 2;
    }

    icu::CharString::copyFrom(v90, v86, &v53);
    if (v67)
    {
      icu::StringPiece::StringPiece(v58, "@");
      v38 = icu::CharString::append(v90, v58[0], v58[1], &v53);
      icu::StringPiece::StringPiece(v58, __s);
      v39 = icu::CharString::append(v38, v58[0], v58[1], &v53);
      icu::StringPiece::StringPiece(v58, "=");
      v40 = icu::CharString::append(v39, v58[0], v58[1], &v53);
      v41 = __s1[0];
      v42 = v67;
      goto LABEL_122;
    }

    if (!a8)
    {
      icu::StringPiece::StringPiece(v58, "@");
      v48 = icu::CharString::append(v90, v58[0], v58[1], &v53);
      icu::StringPiece::StringPiece(v58, __s);
      v49 = icu::CharString::append(v48, v58[0], v58[1], &v53);
      icu::StringPiece::StringPiece(v58, "=");
      v40 = icu::CharString::append(v49, v58[0], v58[1], &v53);
      v41 = v94[0];
      v42 = v95;
LABEL_122:
      icu::CharString::append(v40, v41, v42, &v53);
    }
  }

LABEL_124:
  sub_19528A750(&v77, 1);
  sub_19528A750(&v68, 1);
  if (*a9 <= 0)
  {
    v43 = __n;
    v45 = uprv_min(__n, a2);
    if (v45 >= 1)
    {
      icu::CharString::extract(v90, a1, v45, &v53);
    }

    v44 = a2;
    if (!v43)
    {
      *a9 = 2;
    }
  }

  else
  {
    v43 = 0;
    *a1 = 0;
    v44 = a2;
  }

  v9 = u_terminateChars(a1, v44, v43, a9);
LABEL_131:
  if (BYTE12(__s2))
  {
    free(__s2);
  }

  if (BYTE4(__s1[1]))
  {
    free(__s1[0]);
  }

  if (BYTE4(v86[1]))
  {
    free(v86[0]);
  }

LABEL_137:
  if (BYTE4(v88[1]))
  {
    free(v88[0]);
  }

  if (BYTE4(v90[1]))
  {
    free(v90[0]);
  }

  if (BYTE4(v92[1]))
  {
    free(v92[0]);
  }

  if (BYTE4(v94[1]))
  {
    free(v94[0]);
  }

  v46 = *MEMORY[0x1E69E9840];
  return v9;
}

void sub_19528E4CC(char *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = U_ZERO_ERROR;
  a4[14] = 0;
  **a4 = 0;
  if (!a2)
  {
LABEL_10:
    if (a4[14])
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  ures_getByKey(a2, "%%Parent", a3, &v10);
  if (v10 <= U_ZERO_ERROR)
  {
    LODWORD(v11) = 0;
    if (a3)
    {
      StringNoTrace = res_getStringNoTrace(*(a3 + 8) + 40, *(a3 + 108), &v11);
      if (StringNoTrace)
      {
        goto LABEL_9;
      }

      v8 = U_RESOURCE_TYPE_MISMATCH;
    }

    else
    {
      v8 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    StringNoTrace = 0;
    v10 = v8;
LABEL_9:
    icu::CharString::appendInvariantChars(a4, StringNoTrace, v11, &v10);
    if (v10 <= U_ZERO_ERROR)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  v10 = U_ZERO_ERROR;
  ulocimp_getParent(a1, &v10, &v11);
  icu::CharString::operator=(a4, &v11);
  if (v12)
  {
    free(v11);
  }

LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
}

void *ures_getKeywordValues()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  *&v31[2046] = *MEMORY[0x1E69E9840];
  bzero(v31, 0x7FEuLL);
  bzero(v29, 0x1000uLL);
  v25 = 0;
  memset(v28, 0, sizeof(v28));
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v6 = ures_openAvailableLocales(v5, v2);
  if (*v2 < 1)
  {
    v8 = v6;
    v30 = 0;
    v9 = uenum_next(v6, &v25, v2);
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v23 = 0;
      do
      {
        v24 = U_ZERO_ERROR;
        v12 = sub_19528C7CC(0, v5, v10, 0, &v24);
        ures_getByKey(v12, v4, v28, &v24);
        if (v12)
        {
          if (v24 <= U_ZERO_ERROR)
          {
            NextResource = ures_getNextResource(v28, v26, &v24);
            if (NextResource)
            {
              if (v24 <= U_ZERO_ERROR)
              {
                do
                {
                  v14 = *NextResource;
                  if (*NextResource && *v14 && strcmp(*NextResource, "default") && strncmp(v14, "private-", 8uLL))
                  {
                    if (v11 >= 1)
                    {
                      v15 = v5;
                      v16 = v4;
                      v17 = v11;
                      v18 = v29;
                      do
                      {
                        if (!strcmp(*v18, v14))
                        {
                          v4 = v16;
                          v5 = v15;
                          goto LABEL_22;
                        }

                        ++v18;
                        --v17;
                      }

                      while (v17);
                      v4 = v16;
                      v5 = v15;
                      if (v11 > 510)
                      {
                        goto LABEL_19;
                      }
                    }

                    v19 = strlen(v14);
                    v20 = v23;
                    v21 = v23 + v19;
                    if (v21 < 2046)
                    {
                      v23 = v21 + 1;
                      v29[v11++] = strcpy(&v31[v20 - 2], v14);
                      v31[v21 - 2] = 0;
                    }

                    else
                    {
LABEL_19:
                      *v2 = U_ILLEGAL_ARGUMENT_ERROR;
                    }
                  }

LABEL_22:
                  NextResource = ures_getNextResource(v28, v26, &v24);
                }

                while (NextResource && v24 < U_ILLEGAL_ARGUMENT_ERROR);
              }
            }
          }
        }

        sub_19528A750(v12, 1);
        v10 = uenum_next(v8, &v25, v2);
      }

      while (v10);
    }

    else
    {
      v23 = 0;
    }

    v31[v23 - 2] = 0;
    sub_19528A750(v28, 1);
    sub_19528A750(v26, 1);
    uenum_close(v8);
    result = uloc_openKeywordList(&v30, v23 + 1, v2);
  }

  else
  {
    sub_19528A750(v28, 1);
    sub_19528A750(v26, 1);
    result = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void ures_getVersionByKey(uint64_t a1, const char *a2, uint8_t *a3, int *a4)
{
  v7 = 0;
  StringByKey = ures_getStringByKey(a1, a2, &v7, a4);
  if (*a4 <= 0)
  {
    u_versionFromUString(a3, StringByKey);
  }
}

void sub_19528E96C(uint64_t a1)
{
  umtx_lock(&unk_1ED442B18);
  if (a1)
  {
    do
    {
      v2 = *(a1 + 16);
      --*(a1 + 108);
      a1 = v2;
    }

    while (v2);
  }

  umtx_unlock(&unk_1ED442B18);
}

uint64_t sub_19528E9CC(uint64_t a1, unsigned int a2, const char *a3, unsigned int a4, uint64_t a5, char *a6, int a7, uint64_t a8, UErrorCode *a9)
{
  v9 = a8;
  v31 = *MEMORY[0x1E69E9840];
  if (!a9 || *a9 > 0)
  {
    goto LABEL_36;
  }

  if (!a5)
  {
    v9 = 0;
    v16 = 1;
    goto LABEL_8;
  }

  if (a2 >> 28 != 3)
  {
    if (a8)
    {
      v17 = *(a8 + 8);
      if (v17)
      {
        sub_19528E96C(v17);
      }

      v18 = *(v9 + 16);
      if (v18)
      {
        free(v18);
      }

      v19 = *(v9 + 32);
      if (v19 == a6)
      {
LABEL_24:
        *(v9 + 8) = a1;
        sub_19528AA28(a1);
        *(v9 + 112) = 0;
        *(v9 + 124) = -1;
        *v9 = a3;
        *(v9 + 24) = a5;
        if (*(v9 + 32) != a6)
        {
          v24 = strlen(a6);
          sub_19528A934(v9, a6, v24, a9);
        }

        if (a3)
        {
          v25 = strlen(a3);
          v26 = v9;
          v27 = a3;
        }

        else
        {
          if ((a4 & 0x80000000) != 0)
          {
LABEL_32:
            if (v9 + 40 == *(v9 + 32))
            {
              v28 = *(v9 + 104);
            }

            else
            {
              v28 = 0;
            }

            bzero((v9 + 40 + v28), 64 - v28);
            *(v9 + 16) = 0;
            *(v9 + 108) = a2;
            *(v9 + 128) = res_countArrayItems(*(v9 + 8) + 40, a2);
            goto LABEL_36;
          }

          memset(v30, 0, sizeof(v30));
          v25 = T_CString_integerToString(v30, a4, 0xAu);
          v27 = v30;
          v26 = v9;
        }

        sub_19528A934(v26, v27, v25, a9);
        if (*(*(v9 + 32) + *(v9 + 104) - 1) != 47)
        {
          sub_19528A934(v9, "/", 1, a9);
        }

        goto LABEL_32;
      }

      if (v19 && v19 != (v9 + 40))
      {
        free(v19);
      }
    }

    else
    {
      v23 = malloc_type_malloc(0x88uLL, 0x1070040ECCE1818uLL);
      v9 = v23;
      if (!v23)
      {
        v16 = 7;
        goto LABEL_8;
      }

      *(v23 + 116) = 0x12BB38B012C9B17;
    }

    *(v9 + 32) = 0;
    *(v9 + 104) = 0;
    goto LABEL_24;
  }

  if (a7 >= 256)
  {
    v16 = 24;
LABEL_8:
    *a9 = v16;
LABEL_36:
    v29 = *MEMORY[0x1E69E9840];
    return v9;
  }

  v20 = *MEMORY[0x1E69E9840];
  v21 = a1 + 40;

  return sub_19528ECAC(v21, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_19528ECAC(uint64_t a1, unsigned int a2, const char *a3, unsigned int a4, uint64_t a5, const char *a6, int a7, uint64_t a8, UErrorCode *a9)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*a9 > 0)
  {
    goto LABEL_78;
  }

  v44 = 0;
  Alias = res_getAlias(a1, a2, &v44);
  if (v44 <= 0)
  {
    *a9 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_78;
  }

  memset(&__s[1], 0, 48);
  __s[0] = &__s[1] + 5;
  LODWORD(__s[1]) = 40;
  v50 = 0;
  icu::CharString::appendInvariantChars(__s, Alias, v44, a9);
  v16 = 0;
  if (*a9 <= 0)
  {
    v17 = __s[0];
    if (*__s[0] == 47)
    {
      v18 = __s[0] + 1;
      v19 = strchr(__s[0] + 1, 47);
      v17 = v19;
      if (v19)
      {
        *v19 = 0;
        v17 = v19 + 1;
      }

      if (!strcmp(v18, "LOCALE"))
      {
        v40 = 0;
        v26 = a5;
        goto LABEL_22;
      }

      if (!strcmp(v18, "ICUDATA"))
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      if (v17)
      {
        v21 = strchr(v17, 47);
        v22 = v21;
        if (v21)
        {
          *v21 = 0;
          v22 = v21 + 1;
        }
      }

      else
      {
        v22 = 0;
        v17 = "";
      }
    }

    else
    {
      v23 = strchr(__s[0], 47);
      v22 = v23;
      if (v23)
      {
        *v23 = 0;
        v22 = v23 + 1;
      }

      v20 = *(a5 + 8);
    }

    LODWORD(__dst[0]) = 0;
    v24 = sub_19528C7CC(0, v20, v17, 2, __dst);
    v25 = v24;
    if (SLODWORD(__dst[0]) > 0)
    {
      *a9 = __dst[0];
LABEL_72:
      if (v25)
      {
        sub_19528A750(v25, 1);
      }

      v16 = a8;
      goto LABEL_75;
    }

    v40 = v24;
    v26 = v24[1];
    v17 = v22;
LABEL_22:
    __s2 = 0;
    if (v17)
    {
      v47 = 0u;
      v48 = 0u;
      *__dst = 0u;
      v46 = 0u;
      icu::StringPiece::StringPiece(&v41, v17);
      __dst[0] = (__dst | 0xD);
      LODWORD(__dst[1]) = 40;
      WORD2(__dst[1]) = 0;
      DWORD2(v48) = 0;
      icu::CharString::append(__dst, v41, v42, a9);
      v27 = *a9;
      if (*a9 <= 0)
      {
        v30 = 0;
        v31 = __dst[0];
        v41 = __dst[0];
        v32 = v27;
        v28 = a8;
        while (1)
        {
          v33 = *(v26 + 72);
          while (*v31)
          {
            if (v32 > U_ZERO_ERROR)
            {
              goto LABEL_25;
            }

            v33 = sub_195291DB0(v26 + 40, v33, &v41, &__s2);
            if (v33 == -1)
            {
              v32 = *a9;
              break;
            }

            v28 = sub_19528E9CC(v26, v33, __s2, 0xFFFFFFFFLL, a5, v30, (a7 + 1), v28, a9);
            v32 = *a9;
            if (*a9 > 0)
            {
              goto LABEL_25;
            }

            if (!__s2 || strcmp(v17, __s2))
            {
              v34 = *(v28 + 32);
              if (v34)
              {
                v35 = v34 == (v28 + 40);
              }

              else
              {
                v35 = 1;
              }

              if (!v35)
              {
                free(v34);
              }

              *(v28 + 32) = 0;
              *(v28 + 104) = 0;
              v36 = strlen(v17);
              sub_19528A934(v28, v17, v36, a9);
              if (*(*(v28 + 32) + *(v28 + 104) - 1) != 47)
              {
                sub_19528A934(v28, "/", 1, a9);
              }

              v32 = *a9;
              if (*a9 > 0)
              {
                goto LABEL_25;
              }
            }

            v26 = *(v28 + 8);
            v30 = *(v28 + 32);
            v33 = *(v28 + 108);
            v31 = v41;
          }

          if (v32 > U_ZERO_ERROR || v33 != -1)
          {
            break;
          }

          v26 = *(v26 + 16);
          if (!v26)
          {
            *a9 = U_MISSING_RESOURCE_ERROR;
            break;
          }

          v41 = __dst[0];
          strcpy(__dst[0], v17);
          v31 = v41;
          v32 = *a9;
        }
      }

      else
      {
        v28 = a8;
        a8 = 0;
      }

LABEL_25:
      v25 = v40;
      if (BYTE4(__dst[1]))
      {
        free(__dst[0]);
      }

      if (v27 > U_ZERO_ERROR)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    }

    v29 = *(v26 + 72);
    if (a6)
    {
      LODWORD(v50) = 0;
      *__s[0] = 0;
      icu::StringPiece::StringPiece(__dst, a6);
      icu::CharString::append(__s, __dst[0], __dst[1], a9);
      v25 = v40;
      if (*a9 > 0)
      {
LABEL_58:
        a8 = 0;
        goto LABEL_72;
      }

      __dst[0] = __s[0];
      v29 = sub_195291DB0(v26 + 40, v29, __dst, &__s2);
    }

    else
    {
      v25 = v40;
    }

    if (a3)
    {
      LODWORD(v50) = 0;
      *__s[0] = 0;
      icu::StringPiece::StringPiece(__dst, a3);
      icu::CharString::append(__s, __dst[0], __dst[1], a9);
      if (*a9 > 0)
      {
        goto LABEL_58;
      }

      __dst[0] = __s[0];
      TableItemByIndex = sub_195291DB0(v26 + 40, v29, __dst, &__s2);
    }

    else
    {
      if (a4 == -1)
      {
        goto LABEL_66;
      }

      if (v29 >> 28 == 2 || (v29 & 0xE0000000) == 0x40000000)
      {
        __dst[0] = 0;
        TableItemByIndex = res_getTableItemByIndex(v26 + 40, v29, a4, __dst);
      }

      else
      {
        TableItemByIndex = res_getArrayItem(v26 + 40, v29, a4);
      }
    }

    v29 = TableItemByIndex;
LABEL_66:
    if (v29 == -1)
    {
      *a9 = U_MISSING_RESOURCE_ERROR;
      v28 = a8;
    }

    else
    {
      v28 = sub_19528E9CC(v26, v29, __s2, 0xFFFFFFFFLL, a5, 0, (a7 + 1), a8, a9);
    }

LABEL_69:
    if (v25 == v28)
    {
      v25 = 0;
    }

    a8 = v28;
    goto LABEL_72;
  }

LABEL_75:
  if (BYTE4(__s[1]))
  {
    free(__s[0]);
  }

  a8 = v16;
LABEL_78:
  v38 = *MEMORY[0x1E69E9840];
  return a8;
}

void sub_19528F22C(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_19528F264(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, UErrorCode *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = a2;
  memset(v29, 0, sizeof(v29));
  (*(*a3 + 88))(v29, a3, a5);
  if (*a5 <= 0 && icu::ResourceTable::getKeyAndValue(v29, 0, &v31, a3))
  {
    v10 = 0;
    do
    {
      if ((*(*a3 + 24))(a3) == 3)
      {
        v42 = 0;
        memset(v41, 0, sizeof(v41));
        v11 = sub_19528ECAC(*(a3 + 1), *(a3 + 6), 0, 0xFFFFFFFF, *(a3 + 2), 0, 0, v41, a5);
        if (*a5 <= 0)
        {
          v12 = v11;
          v28 = 0;
          v26 = 0;
          v27 = 0;
          v13 = *(v11 + 8) + 40;
          v25 = &unk_1F0936748;
          v26 = v13;
          v27 = *(v11 + 24);
          LODWORD(v28) = *(v11 + 108);
          if (sub_195290E94(&v25) == 2)
          {
            v40 = 0;
            memset(&v38[1], 0, 48);
            v38[0] = &v38[1] + 5;
            LODWORD(v38[1]) = 40;
            v39 = 0;
            icu::StringPiece::StringPiece(&v32, *(v12 + 32));
            icu::CharString::append(v38, v32, v33, a5);
            v20 = v31;
            (*(**(a1 + 8) + 24))(*(a1 + 8));
            v14 = *(v12 + 8);
            v15 = 2;
            while (v15 == 2 && *(v14 + 16))
            {
              v37 = 0;
              v35 = 0u;
              v34 = 0u;
              v33 = 0u;
              v32 = &v33 + 5;
              LODWORD(v33) = 40;
              v36 = 0;
              icu::CharString::copyFrom(&v32, v38, a5);
              v23 = 0;
              v24 = v32;
              v14 = *(v14 + 16);
              v16 = sub_195291DB0(v14 + 40, *(v14 + 72), &v24, &v23);
              if (v16 == -1)
              {
                v19 = 1;
                v15 = 2;
              }

              else
              {
                v26 = v14 + 40;
                LODWORD(v28) = v16;
                v15 = sub_195290E94(&v25);
                if (v15 == 3)
                {
                  v17 = sub_19528ECAC(v26, v28, 0, 0xFFFFFFFF, v27, 0, 0, v41, a5);
                  v39 = 0;
                  *v38[0] = 0;
                  icu::StringPiece::StringPiece(&v21, *(v17 + 32));
                  icu::CharString::append(v38, v21, v22, a5);
                  v14 = *(v17 + 8);
                  v18 = *(v17 + 108);
                  v26 = v14 + 40;
                  LODWORD(v28) = v18;
                  v15 = sub_195290E94(&v25);
                }

                if (v15 == 2)
                {
                  (*(**(a1 + 8) + 24))(*(a1 + 8), v20, &v25, a4, a5);
                  v19 = 1;
                }

                else
                {
                  v19 = 0;
                  *a5 = U_INTERNAL_PROGRAM_ERROR;
                }
              }

              if (BYTE4(v33))
              {
                free(v32);
              }

              if ((v19 & 1) == 0)
              {
                if (BYTE4(v38[1]))
                {
                  free(v38[0]);
                }

                icu::ResourceValue::~ResourceValue(&v25);
                sub_19528A750(v41, 1);
                goto LABEL_2;
              }
            }

            if (BYTE4(v38[1]))
            {
              free(v38[0]);
            }
          }

          else
          {
            (*(**(a1 + 8) + 24))(*(a1 + 8), v31, &v25, a4, a5);
          }

          icu::ResourceValue::~ResourceValue(&v25);
        }

        sub_19528A750(v41, 1);
      }

      else
      {
        (*(**(a1 + 8) + 24))(*(a1 + 8), v31, a3, a4, a5);
      }

      if (*a5 >= 1)
      {
        break;
      }

      ++v10;
    }

    while (icu::ResourceTable::getKeyAndValue(v29, v10, &v31, a3));
  }

LABEL_2:
  v9 = *MEMORY[0x1E69E9840];
}

const char **sub_19528F724(const char *a1, char *a2, const char *a3, int a4, BOOL *a5, _BYTE *a6, BOOL *a7, UErrorCode *a8)
{
  v71 = *MEMORY[0x1E69E9840];
  *a6 = 1;
  memset(v49, 0, sizeof(v49));
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  *__dst = 0u;
  v42 = 0u;
  strcpy(__dst, a2);
  while (1)
  {
    v15 = sub_19528FDD8(a2, a1, a8);
    if (*a8 > 0)
    {
      v16 = 0;
      goto LABEL_76;
    }

    v16 = v15;
    v17 = strlen(a2);
    *a7 = strncmp(a2, a3, v17) == 0;
    v18 = *(v16 + 28);
    if (v18)
    {
      --*(v16 + 27);
      v16 = 0;
      *a8 = U_USING_FALLBACK_WARNING;
    }

    else
    {
      strcpy(a2, *v16);
    }

    *a5 = strcmp(a2, "root") == 0;
    v19 = a2;
    if (!v18)
    {
      break;
    }

    v20 = strlen(a2);
    if (!v20 || a2[v20 - 1] == 95 || (v65[0] = U_ZERO_ERROR, memset(v68, 0, 32), icu::CheckedArrayByteSink::CheckedArrayByteSink(v68, 0, 0), ulocimp_getSubtags(a2, 0, 0, 0, v68, 0, v65), v21 = *&v68[24], icu::CheckedArrayByteSink::~CheckedArrayByteSink(v68), v21))
    {
      v19 = a2;
      break;
    }

    v40 = U_ZERO_ERROR;
    v70 = 0;
    v69 = 0u;
    memset(&v68[8], 0, 32);
    *v68 = &v68[13];
    *&v68[8] = 40;
    v67 = 0;
    memset(v66, 0, sizeof(v66));
    *v65 = &v66[1] + 1;
    v66[0] = 40;
    v64 = 0;
    memset(&v63[1], 0, 48);
    v63[0] = &v63[1] + 5;
    LODWORD(v63[1]) = 40;
    ulocimp_getSubtags(a2, v68, v65, v63, 0, 0, &v40);
    if (v40 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      if (!a4)
      {
        v27 = sub_19528A5F4(a2, "ar_Latn", "ar_Latn", dword_19547CA4C, 718);
        if (v27)
        {
          strcpy(a2, v27);
          goto LABEL_22;
        }
      }

      v62 = 0;
      memset(&__src[1], 0, 48);
      __src[0] = &__src[1] + 5;
      LODWORD(__src[1]) = 40;
      if (v67)
      {
        if (v64)
        {
          sub_195290510(v68, v63, &__s1);
          if (__n == v67)
          {
            if (__n)
            {
              v26 = memcmp(__s1, *v65, __n) == 0;
            }

            else
            {
              v26 = 1;
            }
          }

          else
          {
            v26 = 0;
          }

          if (BYTE4(v57))
          {
            free(__s1);
          }

          v37 = icu::CharString::append(__src, *v68, v70, &v40);
          icu::StringPiece::StringPiece(&__s1, "_");
          v31 = icu::CharString::append(v37, __s1, v57, &v40);
          if (v26)
          {
            v32 = v63[0];
            v33 = v64;
          }

          else
          {
            v32 = *v65;
            v33 = v67;
          }

LABEL_60:
          icu::CharString::append(v31, v32, v33, &v40);
LABEL_61:
          LOBYTE(v25) = 0;
          if (v40 <= U_ZERO_ERROR && v62)
          {
            strcpy(a2, __src[0]);
            LOBYTE(v25) = 1;
          }
        }

        else
        {
          if (a4)
          {
            goto LABEL_59;
          }

          v54[0] = &v54[1] + 5;
          LODWORD(v54[1]) = 40;
          WORD2(v54[1]) = 0;
          LODWORD(v55) = 0;
          sub_195290510(v68, v54, &__s1);
          v25 = 0;
          if (__n == v67)
          {
            if (__n)
            {
              v25 = memcmp(__s1, *v65, __n) == 0;
            }

            else
            {
              v25 = 1;
            }
          }

          if (BYTE4(v57))
          {
            free(__s1);
          }

          if (BYTE4(v54[1]))
          {
            free(v54[0]);
          }

          if (v25)
          {
LABEL_59:
            v32 = *v68;
            v33 = v70;
            v31 = __src;
            goto LABEL_60;
          }
        }
      }

      else
      {
        if (v64)
        {
          v39 = U_ZERO_ERROR;
          __n = 0;
          v59 = 0uLL;
          v58 = 0uLL;
          v57 = 0uLL;
          __s1 = &v57 + 5;
          LODWORD(v57) = 40;
          v55 = 0;
          memset(&v54[1], 0, 48);
          v54[0] = &v54[1] + 5;
          LODWORD(v54[1]) = 40;
          ulocimp_getSubtags(__dst, &__s1, v54, 0, 0, 0, &v39);
          v28 = v55;
          v36 = icu::CharString::append(__src, *v68, v70, &v39);
          if (v28)
          {
            icu::StringPiece::StringPiece(&v50, "_");
            v29 = icu::CharString::append(v36, v50, v51, &v39);
            icu::CharString::append(v29, v54[0], v55, &v39);
          }

          else
          {
            icu::StringPiece::StringPiece(&v50, "_");
            v30 = icu::CharString::append(v36, v50, v51, &v39);
            sub_195290510(v68, v63, &v50);
            icu::CharString::append(v30, v50, v53, &v39);
            if (v52)
            {
              free(v50);
            }
          }

          if (BYTE4(v54[1]))
          {
            free(v54[0]);
          }

          if (BYTE4(v57))
          {
            free(__s1);
          }

          goto LABEL_61;
        }

        LOBYTE(v25) = 0;
      }

      if (BYTE4(__src[1]))
      {
        free(__src[0]);
      }

      goto LABEL_66;
    }

    v24 = strrchr(a2, 95);
    if (v24)
    {
      *v24 = 0;
LABEL_22:
      LOBYTE(v25) = 1;
      goto LABEL_66;
    }

    LOBYTE(v25) = 0;
LABEL_66:
    if (BYTE4(v63[1]))
    {
      free(v63[0]);
    }

    if (LOBYTE(v66[1]))
    {
      free(*v65);
    }

    if (v68[12])
    {
      free(*v68);
    }

    *a6 = v25;
    if (v25)
    {
      goto LABEL_13;
    }

    v23 = 0;
LABEL_17:
    if (!v23)
    {
      goto LABEL_76;
    }
  }

  v22 = strrchr(v19, 95);
  if (v22)
  {
    *v22 = 0;
    *a6 = 1;
LABEL_13:
    if (*a2)
    {
      v23 = 1;
      if (!v18)
      {
        goto LABEL_76;
      }
    }

    else
    {
      *a2 = 6581877;
      v23 = *a6 != 0;
      if (!v18)
      {
        goto LABEL_76;
      }
    }

    goto LABEL_17;
  }

  *a6 = 0;
LABEL_76:
  v34 = *MEMORY[0x1E69E9840];
  return v16;
}

void *sub_19528FDD8(const char *a1, const char *a2, UErrorCode *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *v30 = 0u;
  v31 = 0u;
  v21 = 0;
  if (*a3 > 0)
  {
    goto LABEL_2;
  }

  if (a1)
  {
    if (*a1)
    {
      Default = a1;
    }

    else
    {
      Default = "root";
    }
  }

  else
  {
    Default = uloc_getDefault();
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22[0] = Default;
  v22[1] = a2;
  v8 = uhash_get(qword_1ED442B70, v22);
  if (v8)
  {
    goto LABEL_10;
  }

  result = malloc_type_malloc(0x78uLL, 0x1070040BA7C0F55uLL);
  if (!result)
  {
    v9 = 7;
LABEL_18:
    *a3 = v9;
    goto LABEL_3;
  }

  v8 = result;
  *(result + 14) = 0;
  *(result + 5) = 0u;
  *(result + 6) = 0u;
  *(result + 3) = 0u;
  *(result + 4) = 0u;
  *(result + 1) = 0u;
  *(result + 2) = 0u;
  *result = 0u;
  v10 = strlen(Default);
  if (v10 > 2)
  {
    v11 = malloc_type_malloc((v10 + 1), 0x100004077774924uLL);
    *v8 = v11;
    if (!v11)
    {
LABEL_23:
      *a3 = U_MEMORY_ALLOCATION_ERROR;
      goto LABEL_27;
    }
  }

  else
  {
    v11 = v8 + 104;
    *v8 = v8 + 104;
  }

  strcpy(v11, Default);
  if (*a3 >= 1)
  {
LABEL_27:
    free(v8);
LABEL_2:
    result = 0;
    goto LABEL_3;
  }

  if (a2)
  {
    v12 = uprv_strdup(a2);
    *(v8 + 1) = v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = *(v8 + 1);
  }

  sub_195290B08(v8 + 40, v12, *v8, a3);
  if (*a3 < 1)
  {
    if (v8[98])
    {
      v13 = sub_1952906F4(*(v8 + 1), a3);
      *(v8 + 4) = v13;
      v14 = *a3;
      if (*a3 <= 0)
      {
        v15 = *(v13 + 48);
        if (*(*(v8 + 6) + 32) == *(v15 + 32))
        {
          *(v8 + 8) = v15 + 4 + 4 * *(v15 + 4);
          *(v8 + 10) = *(v13 + 56);
          goto LABEL_35;
        }

        v14 = U_INVALID_FORMAT_ERROR;
        *a3 = U_INVALID_FORMAT_ERROR;
      }

      *(v8 + 28) = v14;
    }

LABEL_35:
    if (*a3 <= 0)
    {
      Resource = res_getResource((v8 + 40), "%%ALIAS");
      if (Resource != -1)
      {
        StringNoTrace = res_getStringNoTrace((v8 + 40), Resource, &v21);
        if (StringNoTrace)
        {
          if (v21 >= 1)
          {
            u_UCharsToChars(StringNoTrace, v30, v21 + 1);
            *(v8 + 3) = sub_19528FDD8(v30, a2, a3);
          }
        }
      }
    }

    goto LABEL_36;
  }

  if (*a3 == U_MEMORY_ALLOCATION_ERROR)
  {
    goto LABEL_27;
  }

  *a3 = U_USING_FALLBACK_WARNING;
  *(v8 + 28) = -128;
LABEL_36:
  v16 = uhash_get(qword_1ED442B70, v8);
  if (v16)
  {
    v17 = v16;
    sub_19529047C(v8);
    v8 = v17;
    goto LABEL_10;
  }

  v20 = U_ZERO_ERROR;
  uhash_put(qword_1ED442B70, v8, v8, &v20);
  if (v20 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    *a3 = v20;
    sub_19529047C(v8);
    goto LABEL_2;
  }

  do
  {
LABEL_10:
    result = v8;
    v8 = *(v8 + 3);
  }

  while (v8);
  v9 = *(result + 28);
  ++*(result + 27);
  if (v9 && *a3 <= 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19529010C(uint64_t *a1, char *a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v16 = v3;
  v17 = v4;
  v7 = *a1;
  if (!*(*a1 + 16))
  {
    while (!*(v7 + 96))
    {
      if (res_getResource(v7 + 40, "%%ParentIsRoot") != -1)
      {
        break;
      }

      Resource = res_getResource(*a1 + 40, "%%Parent");
      if (Resource != -1)
      {
        v15 = 0;
        StringNoTrace = res_getStringNoTrace(*a1 + 40, Resource, &v15);
        if (StringNoTrace)
        {
          if ((v15 - 1) <= 0x9B)
          {
            u_UCharsToChars(StringNoTrace, a2, v15 + 1);
            if (!strcmp(a2, "root"))
            {
              break;
            }
          }
        }
      }

      v14 = 0;
      v12 = sub_19528FDD8(a2, *(*a1 + 8), &v14);
      if (v14 >= 1)
      {
        result = 0;
        *a3 = v14;
        return result;
      }

      if (v12 == *a1)
      {
        return 1;
      }

      *(*a1 + 16) = v12;
      *a1 = v12;
      v13 = strrchr(a2, 95);
      if (v13)
      {
        *v13 = 0;
      }

      else if (!*a2 || !strstr("nb nn", a2))
      {
        return 1;
      }

      v7 = *a1;
      result = 1;
      if (*(*a1 + 16))
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t sub_1952902A0(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  v8 = 0;
  v7 = sub_19528FDD8("root", *(*a1 + 8), &v8);
  if (v8 < 1)
  {
    *(*a1 + 16) = v7;
    *a1 = v7;
    return 1;
  }

  else
  {
    result = 0;
    *a2 = v8;
  }

  return result;
}

uint64_t sub_195290328(const char **a1)
{
  v1 = a1[1];
  v2 = uhash_hashChars(*a1);
  return v2 + 37 * uhash_hashChars(v1);
}

BOOL sub_195290364(unsigned __int8 **a1, unsigned __int8 **a2)
{
  v2 = a1[1];
  v3 = a2[1];
  result = uhash_compareChars(*a1, *a2);
  if (result)
  {
    return uhash_compareChars(v2, v3);
  }

  return result;
}

uint64_t sub_1952903AC()
{
  if (qword_1ED442B70)
  {
    v5 = 0;
    umtx_lock(&unk_1ED442B18);
    if (qword_1ED442B70)
    {
      do
      {
        v5 = -1;
        v0 = uhash_nextElement(qword_1ED442B70, &v5);
        if (!v0)
        {
          break;
        }

        v1 = v0;
        v2 = 0;
        do
        {
          v3 = *(v1 + 8);
          if (!*(v3 + 108))
          {
            uhash_removeElement(qword_1ED442B70, v1);
            sub_19529047C(v3);
            v2 = 1;
          }

          v1 = uhash_nextElement(qword_1ED442B70, &v5);
        }

        while (v1);
      }

      while (v2);
    }

    umtx_unlock(&unk_1ED442B18);
    uhash_close(qword_1ED442B70);
    qword_1ED442B70 = 0;
  }

  atomic_store(0, &dword_1ED442B68);
  return 1;
}

void sub_19529047C(char *a1)
{
  sub_195290B9C(a1 + 5);
  v2 = *a1;
  if (*a1)
  {
    v3 = v2 == a1 + 104;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    free(v2);
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 4);
  if (v5)
  {
    --*(v5 + 108);
  }

  v6 = *(a1 + 3);
  if (v6)
  {
    do
    {
      v7 = v6;
      v6 = *(v6 + 24);
    }

    while (v6);
    --*(v7 + 108);
  }

  free(a1);
}

void sub_195290510(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v15 = U_ZERO_ERROR;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  icu::StringPiece::StringPiece(&__s1, "Latn");
  v6 = __s1;
  v7 = v17[0];
  *a3 = a3 + 13;
  *(a3 + 8) = 40;
  *(a3 + 12) = 0;
  *(a3 + 56) = 0;
  icu::CharString::append(a3, v6, v7, &v15);
  if (*(a2 + 56))
  {
    *v17 = 0u;
    v18 = 0u;
    v20 = 0;
    v19 = 0u;
    __s1 = &v17[1] + 1;
    v17[0] = 40;
    v8 = icu::CharString::append(&__s1, *a1, *(a1 + 56), &v15);
    icu::StringPiece::StringPiece(&v13, "_");
    v9 = icu::CharString::append(v8, v13, v14, &v15);
    icu::CharString::append(v9, *a2, *(a2 + 56), &v15);
    v10 = 0;
    v11 = v15;
    if (v15 <= U_ZERO_ERROR)
    {
      v10 = sub_19528A5F4(__s1, &unk_19547D5A9, "Aghb", dword_19547E884, 2096);
    }

    if (LOBYTE(v17[1]))
    {
      free(__s1);
    }

    if (v11 > U_ZERO_ERROR)
    {
      goto LABEL_10;
    }

    if (v10)
    {
LABEL_9:
      *(a3 + 56) = 0;
      **a3 = 0;
      icu::StringPiece::StringPiece(&__s1, v10);
      icu::CharString::append(a3, __s1, v17[0], &v15);
      goto LABEL_10;
    }
  }

  v10 = sub_19528A5F4(*a1, &unk_19547D5A9, "Aghb", dword_19547E884, 2096);
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1952906F4(uint64_t a1, int *a2)
{
  result = sub_19528FDD8("pool", a1, a2);
  if (*a2 <= 0 && (!result || *(result + 112) || !*(result + 97)))
  {
    *a2 = 3;
  }

  return result;
}

void sub_195290754(void *a1)
{
  v2 = a1[1];
  sub_19528A750(v2 + 17, 1);
  sub_19528A750(v2, 1);
  free(v2);

  free(a1);
}

uint64_t sub_1952907AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *(v1 + 128);
  }

  else
  {
    return 0;
  }
}

const char *sub_1952907C4(uint64_t a1, _DWORD *a2, int *a3)
{
  NextResource = *(a1 + 8);
  if (NextResource)
  {
    if (NextResource[31] >= NextResource[32] - 1)
    {
      v5 = 0;
      LODWORD(NextResource) = 0;
      if (!a2)
      {
        return v5;
      }

      goto LABEL_7;
    }

    NextResource = ures_getNextResource(NextResource, NextResource + 34, a3);
    if (NextResource)
    {
      v5 = *NextResource;
      LODWORD(NextResource) = strlen(*NextResource);
      if (!a2)
      {
        return v5;
      }

      goto LABEL_7;
    }
  }

  v5 = 0;
  if (a2)
  {
LABEL_7:
    *a2 = NextResource;
  }

  return v5;
}

uint64_t sub_19529083C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    *(v1 + 124) = -1;
  }

  return result;
}

void res_read(_OWORD *a1, unsigned __int16 *a2, unsigned int *a3, unsigned int a4, int *a5)
{
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  if (*a5 <= 0)
  {
    v12 = v5;
    v13 = v6;
    v11 = 0;
    if (sub_1952908E4(&v11, a2, a3, a2))
    {
      sub_195290960(a1, &v11, a3, a4, a5);
    }

    else
    {
      *a5 = 3;
    }
  }
}

void sub_195290960(uint64_t a1, unsigned __int8 *a2, unsigned int *a3, unsigned int a4, _DWORD *a5)
{
  v6 = *a3;
  *(a1 + 32) = *a3;
  *(a1 + 8) = a3;
  *(a1 + 16) = &unk_19548097E;
  if ((a4 & 0x80000000) == 0)
  {
    v7 = 6;
    if (*a2 == 1)
    {
      if (a2[1])
      {
        v7 = 6;
      }

      else
      {
        v7 = 1;
      }
    }

    if (a4 >> 2 < v7)
    {
      goto LABEL_34;
    }
  }

  if (v6 >> 28 != 2 && (v6 & 0xE0000000) != 0x40000000)
  {
    goto LABEL_34;
  }

  v9 = *a2;
  if (v9 == 1 && !a2[1])
  {
    *(a1 + 36) = 0x10000;
    goto LABEL_27;
  }

  v10 = *(a3 + 4);
  if (v10 <= 4 || (a4 & 0x80000000) == 0 && (4 * v10 + 4 > a4 || a4 < (4 * a3[4])))
  {
    goto LABEL_34;
  }

  v11 = a3[2];
  if (v11 > (v10 + 1))
  {
    *(a1 + 36) = 4 * v11;
    v9 = *a2;
  }

  if (v9 >= 3)
  {
    *(a1 + 48) = a3[1] >> 8;
  }

  if (v10 != 5)
  {
    v12 = a3[6];
    *(a1 + 56) = v12 & 1;
    *(a1 + 57) = (v12 & 2) != 0;
    *(a1 + 58) = (v12 & 4) != 0;
    *(a1 + 48) |= (v12 << 12) & 0xF000000;
    *(a1 + 52) = HIWORD(v12);
    if ((v12 >> 1))
    {
      if (v10 <= 7)
      {
        goto LABEL_34;
      }

LABEL_37:
      v14 = a3[2];
      if (a3[7] > v14)
      {
        *(a1 + 16) = &a3[v14];
      }

      goto LABEL_27;
    }

    if (v10 <= 7 && ((v12 >> 2) & 1) != 0)
    {
      goto LABEL_34;
    }

    if (v10 >= 7)
    {
      goto LABEL_37;
    }

LABEL_27:
    *(a1 + 59) = 1;
    return;
  }

  if (!*(a1 + 57) && !*(a1 + 58))
  {
    goto LABEL_27;
  }

LABEL_34:
  *a5 = 3;
  v13 = *a1;
  if (*a1)
  {
    udata_close(v13);
    *a1 = 0;
  }
}

void sub_195290B08(_OWORD *a1, char *a2, const char *a3, UErrorCode *a4)
{
  v8 = 0;
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  v6 = udata_openChoice(a2, "res", a3, sub_1952908E4, &v8, a4);
  *a1 = v6;
  if (*a4 <= 0)
  {
    Memory = udata_getMemory(v6);
    sub_195290960(a1, &v8, Memory, 0xFFFFFFFF, a4);
  }
}

void sub_195290B9C(_OWORD **a1)
{
  v2 = *a1;
  if (v2)
  {
    udata_close(v2);
    *a1 = 0;
  }
}

const UChar *res_getStringNoTrace(uint64_t a1, unsigned int a2, int *a3)
{
  if (a2 >> 28 == 6)
  {
    v4 = *(a1 + 48);
    v5 = (a2 & 0xFFFFFFF) < v4;
    if ((a2 & 0xFFFFFFF) < v4)
    {
      v4 = 0;
    }

    v6 = 16;
    if (v5)
    {
      v6 = 40;
    }

    v7 = (*(a1 + v6) + 2 * ((a2 & 0xFFFFFFF) - v4));
    v8 = *v7;
    if ((v8 & 0xFC00) == 0xDC00)
    {
      if (v8 > 0xDFEE)
      {
        if (v8 > 0xDFFE)
        {
          v9 = v7[2] | (v7[1] << 16);
          v7 += 3;
          if (!a3)
          {
            return v7;
          }
        }

        else
        {
          v9 = (v7[1] | (v8 << 16)) + 537985024;
          v7 += 2;
          if (!a3)
          {
            return v7;
          }
        }
      }

      else
      {
        v9 = v8 & 0x3FF;
        ++v7;
        if (!a3)
        {
          return v7;
        }
      }
    }

    else
    {
      v9 = u_strlen(v7);
      if (!a3)
      {
        return v7;
      }
    }

    goto LABEL_22;
  }

  if (a2 >> 28)
  {
    v9 = 0;
    v7 = 0;
    if (!a3)
    {
      return v7;
    }

    goto LABEL_22;
  }

  if (a2)
  {
    v10 = (*(a1 + 8) + 4 * a2);
  }

  else
  {
    v10 = &dword_195480954;
  }

  v11 = *v10;
  v7 = (v10 + 1);
  v9 = v11;
  if (a3)
  {
LABEL_22:
    *a3 = v9;
  }

  return v7;
}

int *res_getAlias(uint64_t a1, unsigned int a2, int *a3)
{
  if (a2 >> 28 == 3)
  {
    if ((a2 & 0xFFFFFFF) != 0)
    {
      v3 = (*(a1 + 8) + 4 * (a2 & 0xFFFFFFF));
    }

    else
    {
      v3 = &dword_195480954;
    }

    v6 = *v3;
    result = v3 + 1;
    v4 = v6;
    if (a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    result = 0;
    if (a3)
    {
LABEL_8:
      *a3 = v4;
    }
  }

  return result;
}

int *res_getBinaryNoTrace(uint64_t a1, unsigned int a2, int *a3)
{
  if (a2 >> 28 == 1)
  {
    if ((a2 & 0xFFFFFFF) != 0)
    {
      v3 = (*(a1 + 8) + 4 * (a2 & 0xFFFFFFF));
    }

    else
    {
      v3 = &dword_19548095C;
    }

    v6 = *v3;
    result = v3 + 1;
    v4 = v6;
    if (a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    result = 0;
    if (a3)
    {
LABEL_8:
      *a3 = v4;
    }
  }

  return result;
}

int *res_getIntVectorNoTrace(uint64_t a1, unsigned int a2, int *a3)
{
  if (a2 >> 28 == 14)
  {
    if ((a2 & 0xFFFFFFF) != 0)
    {
      v3 = (*(a1 + 8) + 4 * (a2 & 0xFFFFFFF));
    }

    else
    {
      v3 = &dword_19548095C;
    }

    v6 = *v3;
    result = v3 + 1;
    v5 = v6;
    if (a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = 0;
    v5 = 0;
    if (a3)
    {
LABEL_8:
      *a3 = v5;
    }
  }

  return result;
}

uint64_t res_countArrayItems(uint64_t a1, unsigned int a2)
{
  v3 = a2 & 0xFFFFFFF;
  v4 = a2 >> 28;
  result = 1;
  if (a2 >> 28 == 15)
  {
    goto LABEL_6;
  }

  if (((1 << v4) & 0x40C8) != 0)
  {
    return result;
  }

  if (((1 << v4) & 0x110) == 0)
  {
    if (((1 << v4) & 0x220) != 0)
    {
      return *(*(a1 + 16) + 2 * v3);
    }

LABEL_6:
    if (v4 < 2)
    {
      return result;
    }

    if (v4 == 2 && v3)
    {
      return *(*(a1 + 8) + 4 * (a2 & 0xFFFFFFF));
    }

    return 0;
  }

  if (v3)
  {
    return *(*(a1 + 8) + 4 * v3);
  }

  return 0;
}

void sub_195290E5C(icu::ResourceValue *a1)
{
  icu::ResourceValue::~ResourceValue(a1);

  JUMPOUT(0x19A8B2600);
}

const UChar *sub_195290EAC(uint64_t a1, int *a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  result = res_getStringNoTrace(*(a1 + 8), *(a1 + 24), a2);
  if (!result)
  {
    *a3 = 17;
  }

  return result;
}

int *sub_195290F00(uint64_t a1, int *a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (v4 >> 28 == 3)
  {
    v5 = v4 & 0xFFFFFFF;
    if (v5)
    {
      v6 = (*(*(a1 + 8) + 8) + 4 * v5);
    }

    else
    {
      v6 = &dword_195480954;
    }

    v7 = *v6;
    result = v6 + 1;
    *a2 = v7;
  }

  else
  {
    result = 0;
    *a2 = 0;
    *a3 = 17;
  }

  return result;
}

uint64_t sub_195290F64(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (v3 >> 28 != 7)
  {
    *a2 = 17;
  }

  return ((16 * v3) >> 4);
}

uint64_t sub_195290F98(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (v3 >> 28 != 7)
  {
    *a2 = 17;
  }

  return v3 & 0xFFFFFFF;
}

int *sub_195290FCC(uint64_t a1, int *a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (v4 >> 28 == 14)
  {
    v5 = v4 & 0xFFFFFFF;
    if (v5)
    {
      v6 = (*(*(a1 + 8) + 8) + 4 * v5);
    }

    else
    {
      v6 = &dword_19548095C;
    }

    v7 = *v6;
    result = v6 + 1;
    *a2 = v7;
  }

  else
  {
    result = 0;
    *a2 = 0;
    *a3 = 17;
  }

  return result;
}

int *sub_195291030(uint64_t a1, int *a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (v4 >> 28 == 1)
  {
    v5 = v4 & 0xFFFFFFF;
    if (v5)
    {
      v6 = (*(*(a1 + 8) + 8) + 4 * v5);
    }

    else
    {
      v6 = &dword_19548095C;
    }

    v7 = *v6;
    result = v6 + 1;
    *a2 = v7;
  }

  else
  {
    result = 0;
    *a2 = 0;
    *a3 = 17;
  }

  return result;
}

uint64_t sub_195291094@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 >= 1)
  {
    goto LABEL_2;
  }

  v3 = *(result + 24);
  v4 = v3 & 0xFFFFFFF;
  v5 = v3 >> 28;
  if (v5 == 9)
  {
    v8 = 0;
    v10 = (*(*(result + 8) + 16) + 2 * v4);
    v11 = *v10;
    v6 = v10 + 1;
    LODWORD(v4) = v11;
  }

  else
  {
    if (v5 != 8)
    {
      *a2 = 17;
LABEL_2:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return result;
    }

    if (v4)
    {
      v6 = 0;
      v7 = (*(*(result + 8) + 8) + 4 * v4);
      v9 = *v7;
      v8 = v7 + 1;
      LODWORD(v4) = v9;
    }

    else
    {
      v8 = 0;
      v6 = 0;
    }
  }

  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v4;
  return result;
}

uint64_t sub_19529111C@<X0>(uint64_t result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 >= 1)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v3 = *(result + 24);
  v4 = v3 & 0xFFFFFFF;
  v5 = v3 >> 28;
  if (v5 == 5)
  {
    v6 = 0;
    v11 = 0;
    v14 = (*(*(result + 8) + 16) + 2 * v4);
    v15 = *v14;
    v9 = v14 + 1;
    LODWORD(v4) = v15;
    v7 = &v9[v15];
    goto LABEL_13;
  }

  if (v5 == 4)
  {
    if (v4)
    {
      v7 = 0;
      v9 = 0;
      v12 = (*(*(result + 8) + 8) + 4 * v4);
      v13 = *v12;
      v6 = v12 + 1;
      LODWORD(v4) = v13;
      v11 = &v6[v13];
      goto LABEL_13;
    }

LABEL_12:
    v6 = 0;
    v7 = 0;
    v11 = 0;
    v9 = 0;
    goto LABEL_13;
  }

  if (v5 != 2)
  {
    *a2 = 17;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    return result;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = 0;
  v7 = 0;
  v8 = (*(*(result + 8) + 8) + 4 * v4);
  v10 = *v8;
  v9 = v8 + 1;
  LODWORD(v4) = v10;
  v11 = &v9[v10 + ((v10 & 1) == 0)];
LABEL_13:
  *a3 = v9;
  *(a3 + 8) = v6;
  *(a3 + 16) = v7;
  *(a3 + 24) = v11;
  *(a3 + 32) = v4;
  return result;
}

BOOL sub_195291208(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1 & 0xFFFFFFF;
  if ((v1 & 0xFFFFFFF) == 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v1 >> 28)
  {
    if (v1 >> 28 == 6)
    {
      v7 = *(v3 + 48);
      v8 = v2 < v7;
      if (v2 < v7)
      {
        v7 = 0;
      }

      v9 = 16;
      if (v8)
      {
        v9 = 40;
      }

      v10 = (*(v3 + v9) + 2 * (v2 - v7));
      v11 = *v10;
      if (v11 == 56323)
      {
        v5 = 8709;
        if (v10[1] != 8709 || v10[2] != 8709)
        {
          return 0;
        }
      }

      else
      {
        if (v11 != 8709 || v10[1] != 8709 || v10[2] != 8709)
        {
          return 0;
        }

        v5 = 0;
      }

      v6 = v10 + 3;
      return *v6 == v5;
    }
  }

  else
  {
    v4 = *(v3 + 8) + 4 * v1;
    if (*v4 == 3)
    {
      v5 = 8709;
      if (*(v4 + 4) == 8709 && *(v4 + 6) == 8709)
      {
        v6 = (v4 + 8);
        return *v6 == v5;
      }
    }
  }

  return 0;
}

uint64_t sub_1952912F8(void *a1, icu::UnicodeString *a2, int a3, int *a4)
{
  v7 = a1[1];
  (*(*a1 + 80))(v9);
  return sub_195291374(v7, v9, a2, a3, a4);
}

uint64_t sub_195291374(uint64_t a1, uint64_t a2, icu::UnicodeString *a3, int a4, int *a5)
{
  if (*a5 <= 0)
  {
    v7 = a3;
    if (a3)
    {
      if ((a4 & 0x80000000) == 0)
      {
LABEL_5:
        v5 = *(a2 + 16);
        if (!v5)
        {
          return v5;
        }

        if (v5 <= a4)
        {
          if (v5 < 1)
          {
            return v5;
          }

          v12 = 0;
          while (1)
          {
            v20 = 0;
            if (*a2)
            {
              v13 = *(*a2 + 2 * v12);
              v14 = *(a1 + 52);
              v15 = __OFSUB__(v13, v14);
              v16 = v13 - v14;
              if (v16 < 0 == v15)
              {
                v13 = v16 + *(a1 + 48);
              }

              v17 = v13 | 0x60000000;
            }

            else
            {
              v17 = *(*(a2 + 8) + 4 * v12);
            }

            StringNoTrace = res_getStringNoTrace(a1, v17, &v20);
            if (!StringNoTrace)
            {
              break;
            }

            v19 = StringNoTrace;
            icu::UnicodeString::setTo(v7, 1, &v19, v20);
            ++v12;
            v7 = (v7 + 64);
            if (v5 == v12)
            {
              return v5;
            }
          }

          v5 = 0;
          v10 = 17;
        }

        else
        {
          v10 = 15;
        }

LABEL_10:
        *a5 = v10;
        return v5;
      }
    }

    else if (!a4)
    {
      goto LABEL_5;
    }

    v5 = 0;
    v10 = 1;
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_19529149C(uint64_t a1, icu::UnicodeString *a2, int a3, int *a4)
{
  v7 = *(a1 + 24);
  if ((v7 & 0xFFFFFFFE) != 8)
  {
    if (*a4 > 0)
    {
      return 0;
    }

    if (a2)
    {
      if ((a3 & 0x80000000) == 0)
      {
        if (a3)
        {
          LODWORD(v14[0]) = 0;
          StringNoTrace = res_getStringNoTrace(*(a1 + 8), v7, v14);
          if (StringNoTrace)
          {
            v13 = StringNoTrace;
            v9 = 1;
            icu::UnicodeString::setTo(a2, 1, &v13, v14[0]);
            return v9;
          }

          v9 = 0;
          v11 = 17;
LABEL_12:
          *a4 = v11;
          return v9;
        }

LABEL_13:
        *a4 = 15;
        return 1;
      }
    }

    else if (!a3)
    {
      goto LABEL_13;
    }

    v9 = 0;
    v11 = 1;
    goto LABEL_12;
  }

  v8 = *(a1 + 8);
  (*(*a1 + 80))(v14);
  return sub_195291374(v8, v14, a2, a3, a4);
}

icu::UnicodeString *sub_1952915C0@<X0>(icu::UnicodeString *result@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = &unk_1F0935D00;
  *(a3 + 8) = 2;
  if (*a2 <= 0)
  {
    v5 = result;
    v18 = 0;
    StringNoTrace = res_getStringNoTrace(*(result + 1), *(result + 6), &v18);
    if (StringNoTrace)
    {
      v17 = StringNoTrace;
      return icu::UnicodeString::setTo(a3, 1, &v17, v18);
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      result = (*(*v5 + 80))(&v14, v5, a2);
      if (*a2 <= 0)
      {
        if (v16 < 1)
        {
          goto LABEL_13;
        }

        v7 = *(v5 + 1);
        if (v14)
        {
          v8 = *v14;
          v9 = *(v7 + 52);
          v10 = __OFSUB__(v8, v9);
          v11 = v8 - v9;
          if (v11 < 0 == v10)
          {
            v8 = v11 + *(v7 + 48);
          }

          v12 = v8 | 0x60000000;
        }

        else
        {
          v12 = *v15;
        }

        result = res_getStringNoTrace(v7, v12, &v18);
        if (result)
        {
          v13 = result;
          return icu::UnicodeString::setTo(a3, 1, &v13, v18);
        }

        else
        {
LABEL_13:
          *a2 = 17;
        }
      }
    }
  }

  return result;
}

uint64_t icu::ResourceArray::internalGetResource(void *a1, uint64_t a2, int a3)
{
  if (!*a1)
  {
    return *(a1[1] + 4 * a3);
  }

  v3 = *(*a1 + 2 * a3);
  v4 = *(a2 + 52);
  v5 = __OFSUB__(v3, v4);
  v6 = v3 - v4;
  if (v6 < 0 == v5)
  {
    v3 = v6 + *(a2 + 48);
  }

  return v3 | 0x60000000u;
}

uint64_t res_getTableItemByKey(uint64_t a1, unsigned int a2, unsigned int *a3, const char **a4)
{
  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a4;
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a2 & 0xFFFFFFF;
  v9 = a2 >> 28;
  if (a2 >> 28 != 5)
  {
    if (v9 == 4)
    {
      if (v8)
      {
        v16 = (*(a1 + 8) + 4 * v8);
        v19 = *v16;
        v17 = (v16 + 1);
        v18 = v19;
        v20 = sub_195291960(a1, v17, v19, v5, a4);
        *a3 = v20;
        if ((v20 & 0x80000000) == 0)
        {
          return *(v17 + 4 * (v20 + v18));
        }
      }
    }

    else if (v9 == 2)
    {
      if (v8)
      {
        v10 = (*(a1 + 8) + 4 * v8);
        v13 = *v10;
        v12 = (v10 + 1);
        v11 = v13;
        v14 = sub_195291898(a1, v12, v13, v5, a4);
        *a3 = v14;
        if ((v14 & 0x80000000) == 0)
        {
          return *(v12 + 2 * v11 + 2 * ((v11 & 1) == 0) + 4 * v14);
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  v21 = (*(a1 + 16) + 2 * v8);
  v24 = *v21;
  v22 = (v21 + 1);
  v23 = v24;
  v25 = sub_195291898(a1, v22, v24, v5, a4);
  *a3 = v25;
  if ((v25 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v26 = *(v22 + 2 * (v25 + v23));
  v27 = *(a1 + 52);
  v28 = __OFSUB__(v26, v27);
  v29 = v26 - v27;
  if (v29 < 0 == v28)
  {
    v26 = v29 + *(a1 + 48);
  }

  return v26 | 0x60000000u;
}

uint64_t sub_195291898(uint64_t a1, uint64_t a2, int a3, char *__s1, void *a5)
{
  if (a3 >= 1)
  {
    v7 = a3;
    v10 = 0;
    v11 = *(a1 + 36);
    do
    {
      v12 = (v7 + v10) >> 1;
      v13 = *(a2 + (2 * v12));
      if (v11 <= v13)
      {
        v14 = *(a1 + 24) - v11;
      }

      else
      {
        v14 = *(a1 + 8);
      }

      v15 = v14 + v13;
      v16 = strcmp(__s1, (v14 + v13));
      if (v16 < 0)
      {
        v7 = (v7 + v10) >> 1;
      }

      else
      {
        if (!v16)
        {
          *a5 = v15;
          return v12;
        }

        v10 = v12 + 1;
      }
    }

    while (v10 < v7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_195291960(uint64_t a1, uint64_t a2, int a3, char *__s1, const char **a5)
{
  if (a3 >= 1)
  {
    v7 = a3;
    v10 = 0;
    do
    {
      v11 = (v7 + v10) >> 1;
      v12 = *(a2 + 4 * v11);
      v13 = v12 & 0x7FFFFFFF;
      if (v12 >= 0)
      {
        v14 = 8;
      }

      else
      {
        v14 = 24;
      }

      v15 = (*(a1 + v14) + v13);
      v16 = strcmp(__s1, v15);
      if (v16 < 0)
      {
        v7 = (v7 + v10) >> 1;
      }

      else
      {
        if (!v16)
        {
          *a5 = v15;
          return v11;
        }

        v10 = v11 + 1;
      }
    }

    while (v10 < v7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t res_getTableItemByIndex(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a2 & 0xFFFFFFF;
  v5 = a2 >> 28;
  if (a2 >> 28 == 5)
  {
    v22 = (*(a1 + 16) + 2 * v4);
    v25 = *v22;
    v23 = v22 + 1;
    v24 = v25;
    if (v25 <= a3)
    {
      return 0xFFFFFFFFLL;
    }

    if (a4)
    {
      v26 = v23[a3];
      v27 = *(a1 + 36);
      if (v27 <= v26)
      {
        v28 = *(a1 + 24) + v26 - v27;
      }

      else
      {
        v28 = *(a1 + 8) + v26;
      }

      *a4 = v28;
    }

    v29 = v23[v24 + a3];
    v30 = *(a1 + 52);
    v31 = __OFSUB__(v29, v30);
    v32 = v29 - v30;
    if (v32 < 0 == v31)
    {
      v29 = v32 + *(a1 + 48);
    }

    return v29 | 0x60000000u;
  }

  else
  {
    if (v5 != 4)
    {
      if (v5 == 2)
      {
        if (v4)
        {
          v6 = *(a1 + 8);
          v7 = (v6 + 4 * v4);
          v10 = *v7;
          v9 = v7 + 1;
          v8 = v10;
          if (v10 > a3)
          {
            v11 = &v9[v8 + ((v8 & 1) == 0)];
            if (a4)
            {
              v12 = v9[a3];
              v13 = *(a1 + 36);
              if (v13 <= v12)
              {
                v14 = *(a1 + 24) + v12 - v13;
              }

              else
              {
                v14 = v6 + v12;
              }

              *a4 = v14;
            }

            return *(v11 + 4 * a3);
          }
        }
      }

      return 0xFFFFFFFFLL;
    }

    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }

    v15 = *(a1 + 8);
    v16 = (v15 + 4 * v4);
    v19 = *v16;
    v17 = v16 + 1;
    v18 = v19;
    if (v19 <= a3)
    {
      return 0xFFFFFFFFLL;
    }

    if (a4)
    {
      v20 = v17[a3];
      if ((v20 & 0x80000000) != 0)
      {
        v15 = *(a1 + 24);
        v20 &= ~0x80000000;
      }

      *a4 = v15 + v20;
    }

    return v17[v18 + a3];
  }
}

uint64_t icu::ResourceTable::getKeyAndValue(icu::ResourceTable *this, unsigned int a2, const char **a3, icu::ResourceValue *a4)
{
  if ((a2 & 0x80000000) != 0 || *(this + 8) <= a2)
  {
    return 0;
  }

  if (!*this)
  {
    v4 = *(*(this + 1) + 4 * a2);
    v5 = *(a4 + 1);
    if ((v4 & 0x80000000) != 0)
    {
      v9 = *(v5 + 24);
      v4 &= 0x7FFFFFFFu;
      goto LABEL_10;
    }

LABEL_8:
    v9 = *(v5 + 8);
LABEL_10:
    v7 = (v9 + v4);
    goto LABEL_11;
  }

  v4 = *(*this + 2 * a2);
  v5 = *(a4 + 1);
  v6 = *(v5 + 36);
  if (v6 > v4)
  {
    goto LABEL_8;
  }

  v7 = (*(v5 + 24) + v4 - v6);
LABEL_11:
  *a3 = v7;
  v10 = *(this + 2);
  if (v10)
  {
    v11 = *(a4 + 1);
    v12 = *(v10 + 2 * a2);
    v13 = *(v11 + 52);
    v14 = __OFSUB__(v12, v13);
    v15 = v12 - v13;
    if (v15 < 0 == v14)
    {
      v12 = v15 + *(v11 + 48);
    }

    v16 = v12 | 0x60000000;
  }

  else
  {
    v16 = *(*(this + 3) + 4 * a2);
  }

  *(a4 + 6) = v16;
  return 1;
}

uint64_t icu::ResourceTable::findValue(icu::ResourceTable *this, char *__s1, icu::ResourceValue *a3)
{
  v5 = *(a3 + 1);
  if (!*this)
  {
    v6 = sub_195291960(v5, *(this + 1), *(this + 8), __s1, &v14);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v6 = sub_195291898(v5, *this, *(this + 8), __s1, &v14);
  if ((v6 & 0x80000000) != 0)
  {
    return 0;
  }

LABEL_3:
  v7 = *(this + 2);
  if (v7)
  {
    v8 = *(v7 + 2 * v6);
    v9 = *(v5 + 52);
    v10 = __OFSUB__(v8, v9);
    v11 = v8 - v9;
    if (v11 < 0 == v10)
    {
      v8 = v11 + *(v5 + 48);
    }

    v12 = v8 | 0x60000000;
  }

  else
  {
    v12 = *(*(this + 3) + 4 * v6);
  }

  *(a3 + 6) = v12;
  return 1;
}

uint64_t res_getArrayItem(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a2 & 0xFFFFFFF;
  if (a2 >> 28 != 9)
  {
    if (a2 >> 28 == 8)
    {
      if (v3)
      {
        v4 = (*(a1 + 8) + 4 * v3);
        if (*v4 > a3)
        {
          return v4[a3 + 1];
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  v6 = (*(a1 + 16) + 2 * v3);
  if (*v6 <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6[a3 + 1];
  v8 = *(a1 + 52);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v10 < 0 == v9)
  {
    v7 = v10 + *(a1 + 48);
  }

  return v7 | 0x60000000u;
}

uint64_t icu::ResourceArray::getValue(icu::ResourceArray *this, unsigned int a2, icu::ResourceValue *a3)
{
  if ((a2 & 0x80000000) != 0 || *(this + 4) <= a2)
  {
    return 0;
  }

  if (*this)
  {
    v3 = *(a3 + 1);
    v4 = *(*this + 2 * a2);
    v5 = *(v3 + 52);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v7 < 0 == v6)
    {
      v4 = v7 + *(v3 + 48);
    }

    v8 = v4 | 0x60000000;
  }

  else
  {
    v8 = *(*(this + 1) + 4 * a2);
  }

  *(a3 + 6) = v8;
  return 1;
}

uint64_t sub_195291DB0(uint64_t a1, uint64_t a2, char **a3, const char **a4)
{
  TableItemByKey = a2;
  v5 = *a3;
  __endptr = 0;
  if (*v5)
  {
    v9 = a2 >> 28;
    if (a2 >> 28 == 2 || (a2 & 0xE0000000) == 0x40000000 || (a2 & 0xE0000000) == 0x80000000)
    {
      do
      {
        if (*v5)
        {
          v10 = TableItemByKey == -1;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          break;
        }

        v11 = v9 & 0xE;
        v12 = v11 == 4 || v9 == 2;
        if (v9 != 2 && v11 != 8 && v11 != 4)
        {
          break;
        }

        v13 = strchr(v5, 47);
        v14 = v13;
        if (v13)
        {
          if (v13 == v5)
          {
            return 0xFFFFFFFFLL;
          }

          *v13 = 0;
          v15 = v13 + 1;
        }

        else
        {
          v15 = &v5[strlen(v5)];
        }

        *a3 = v15;
        if (v12)
        {
          *a4 = v5;
          TableItemByKey = res_getTableItemByKey(a1, TableItemByKey, &v18, a4);
        }

        else if (v11 == 8)
        {
          v16 = strtol(v5, &__endptr, 10);
          if ((v16 & 0x80000000) != 0 || *__endptr)
          {
            TableItemByKey = 0xFFFFFFFFLL;
          }

          else
          {
            TableItemByKey = res_getArrayItem(a1, TableItemByKey, v16);
          }

          *a4 = 0;
        }

        else
        {
          TableItemByKey = 0xFFFFFFFFLL;
        }

        v9 = TableItemByKey >> 28;
        v5 = *a3;
      }

      while (v14);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return TableItemByKey;
}

uint64_t ures_swap(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a3;
  v96 = *MEMORY[0x1E69E9840];
  v13 = udata_swapDataHeader(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!a5 || *a5 > 0)
  {
    goto LABEL_3;
  }

  v21 = *(a2 + 12);
  if (__PAIR64__(*(a2 + 13), v21) != 0x6500000052 || *(a2 + 14) != 115 || *(a2 + 15) != 66)
  {
    goto LABEL_13;
  }

  v22 = v13;
  v23 = *(a2 + 16);
  if (v23 == 1)
  {
    if (*(a2 + 17))
    {
      goto LABEL_9;
    }

LABEL_13:
    v80 = *(a2 + 16);
    v81 = *(a2 + 17);
    v78 = *(a2 + 14);
    v79 = *(a2 + 15);
    udata_printError(a1, "ures_swap(): data format %02x.%02x.%02x.%02x (format version %02x.%02x) is not a resource bundle\n", v14, v15, v16, v17, v18, v19, v21);
    result = 0;
    v24 = 16;
LABEL_14:
    *a5 = v24;
    goto LABEL_15;
  }

  if ((v23 & 0xFE) != 2)
  {
    goto LABEL_13;
  }

LABEL_9:
  v92 = 0;
  *v90 = 0u;
  *v91 = 0u;
  BYTE4(v92) = v23;
  if (v10 < 0)
  {
    v26 = -1;
  }

  else
  {
    if (v10 - v13 <= 23)
    {
      udata_printError(a1, "ures_swap(): too few bytes (%d after header) for a resource bundle\n", v14, v15, v16, v17, v18, v19, (v10 - v13));
LABEL_26:
      result = 0;
      v24 = 8;
      goto LABEL_14;
    }

    v26 = (v10 - v13) >> 2;
  }

  v27 = (a2 + v13);
  v89 = (*(a1 + 16))(*v27);
  Int32 = udata_readInt32(a1, v27[1]);
  if (Int32 <= 4)
  {
    v35 = "ures_swap(): too few indexes for a 1.1+ resource bundle\n";
LABEL_25:
    udata_printError(a1, v35, v28, v29, v30, v31, v32, v33, v77);
    goto LABEL_26;
  }

  v36 = udata_readInt32(a1, v27[2]);
  v88 = v36;
  if (Int32 >= 7)
  {
    v36 = udata_readInt32(a1, v27[7]);
  }

  v86 = v36;
  v37 = udata_readInt32(a1, v27[4]);
  __src = (a2 + v22);
  v38 = udata_readInt32(a1, __src[5]);
  if ((v26 & 0x80000000) == 0 && v26 < v37)
  {
    v77 = v37;
    v35 = "ures_swap(): resource top %d exceeds bundle length %d\n";
    goto LABEL_25;
  }

  v39 = Int32 + 1;
  v40 = 4 * v88;
  if (v88 <= v39)
  {
    v40 = 0;
  }

  LODWORD(v92) = v40;
  if (v10 < 0)
  {
    goto LABEL_55;
  }

  v85 = v88 - v39;
  v82 = v38;
  v84 = v37;
  v41 = v93;
  bzero(v93, 0x320uLL);
  v42 = ((v10 + 31) >> 5) + 3;
  v43 = v42 & 0x7FFFFFC;
  if (v43 <= 0x320)
  {
    v91[1] = v93;
LABEL_33:
    bzero(v95, 0x640uLL);
    bzero(v94, 0x320uLL);
    v83 = v41;
    bzero(v41, v43);
    v37 = a4 + v22;
    if (a2 != a4)
    {
      memcpy(v37, __src, 4 * v84);
    }

    udata_swapInvStringBlock(a1, &__src[v39], 4 * v85, v37 + 4 * v39, a5);
    if (*a5 >= 1)
    {
      udata_printError(a1, "ures_swap().udata_swapInvStringBlock(keys[%d]) failed\n", v50, v51, v52, v53, v54, v55, 4 * v85);
      goto LABEL_37;
    }

    v56 = v86 - v88;
    if (v86 > v88)
    {
      (*(a1 + 48))(a1, &__src[v88], (4 * v56), v37 + 4 * v88, a5);
      if (*a5 >= 1)
      {
        udata_printError(a1, "ures_swap().swapArray16(16-bit units[%d]) failed\n", v57, v58, v59, v60, v61, v62, (2 * v56));
        goto LABEL_37;
      }
    }

    v90[0] = v37;
    if (v23 > 1 || v82 <= 200)
    {
      v90[1] = v95;
      v70 = v94;
    }

    else
    {
      v63 = malloc_type_malloc((4 * v82) + 8 * v82, 0x100004000313F17uLL);
      v90[1] = v63;
      if (!v63)
      {
        udata_printError(a1, "ures_swap(): unable to allocate memory for sorting tables (max length: %d)\n", v64, v65, v66, v67, v68, v69, v82);
        *a5 = 7;
LABEL_37:
        if (v83 != v93)
        {
          free(v83);
        }

        goto LABEL_3;
      }

      v70 = &v63[8 * v82];
    }

    v91[0] = v70;
    sub_1952923F4(a1, __src, v37, v89, 0, v90, a5);
    if (*a5 >= 1)
    {
      udata_printError(a1, "ures_swapResource(root res=%08x) failed\n", v71, v72, v73, v74, v75, v76, v89);
    }

    if (v90[1] != v95)
    {
      free(v90[1]);
    }

    if (v91[1] != v93)
    {
      free(v91[1]);
    }

    (*(a1 + 56))(a1, __src, 4 * v39, v37, a5);
    LODWORD(v37) = v84;
LABEL_55:
    result = (v22 + 4 * v37);
    goto LABEL_15;
  }

  v41 = malloc_type_malloc(v42 & 0x7FFFFFC, 0x100004052888210uLL);
  v91[1] = v41;
  if (v41)
  {
    goto LABEL_33;
  }

  udata_printError(a1, "ures_swap(): unable to allocate memory for tracking resources\n", v44, v45, v46, v47, v48, v49, v77);
  *a5 = 7;
LABEL_3:
  result = 0;
LABEL_15:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1952923F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, int *a7)
{
  v7 = a4 >> 28;
  v8 = a4 >> 28 > 9 || ((1 << (a4 >> 28)) & 0x2E0) == 0;
  v9 = a4 & 0xFFFFFFF;
  if (!v8 || v9 == 0)
  {
    return result;
  }

  v13 = *(a6 + 24);
  v14 = *(v13 + 4 * (v9 >> 5));
  if ((v14 & (1 << a4)) != 0)
  {
    return result;
  }

  v18 = result;
  *(v13 + 4 * (v9 >> 5)) = v14 | (1 << a4);
  v19 = (a2 + 4 * v9);
  v20 = (a3 + 4 * v9);
  if (a4 >> 28 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        Int32 = udata_readInt32(result, *v19);
        result = (*(v18 + 56))(v18, v19, 4, v20, a7);
        if (a5)
        {
          result = a5 == "" ? ucol_looksLikeCollationBinary(v18, v19 + 2, Int32, v58, v59, v60, v61, v62) : (*(v18 + 24))(v18, a5, 0xFFFFFFFFLL, L"%%CollationBin", 14) == 0;
          if (result)
          {

            return ucol_swap(v18, (v19 + 1), Int32, v20 + 2, a7, v63, v64, v65);
          }
        }

        return result;
      }

      if (v7 == 2)
      {
        __srcc = (a3 + 4 * v9);
        v22 = (*(result + 8))(*v19);
        result = (*(v18 + 48))(v18, v19, 2);
        v24 = __srcc + 2;
        v23 = v19 + 2;
        v21 = 0;
        v99 = 0;
        v25 = (v22 + 2) >> 1;
LABEL_20:
        if (!v22)
        {
          return result;
        }

        v101 = v24;
        v102 = v21;
        __dst = v25 + v9;
        v26 = (a2 + 4 * (v25 + v9));
        v100 = v22;
        __src = v23;
        if (v22 >= 1)
        {
          v27 = 0;
          do
          {
            if (v23)
            {
              v28 = (*(v18 + 8))(*&v23[2 * v27]);
              v29 = *(a6 + 32) > v28;
            }

            else
            {
              v28 = udata_readInt32(v18, v102[v27]);
              v29 = v28 >= 0;
            }

            v30 = v29 ? (a3 + v28) : "";
            v31 = v26;
            v32 = (*(v18 + 16))(v26[v27]);
            sub_1952923F4(v18, a2, a3, v32, v30, a6, a7);
            if (*a7 >= 1)
            {
              return udata_printError(v18, "ures_swapResource(table res=%08x)[%d].recurse(%08x) failed\n", v33, v34, v35, v36, v37, v38, a4);
            }

            ++v27;
            v23 = __src;
            v26 = v31;
          }

          while (v100 != v27);
        }

        if (*(a6 + 36) > 1u || *(v18 + 1) == *(v18 + 3))
        {
          if (v23)
          {
            (*(v18 + 48))(v18, v23, (2 * v100), v101, a7);
            v39 = *(v18 + 56);
            v40 = (4 * v100);
            v41 = v18;
            v42 = v26;
            v43 = (a3 + 4 * __dst);
          }

          else
          {
            v39 = *(v18 + 56);
            v40 = (8 * v100);
            v41 = v18;
            v42 = v102;
            v43 = v99;
          }

LABEL_51:

          return v39(v41, v42, v40, v43, a7);
        }

        __dsta = (a3 + 4 * __dst);
        v104 = v26;
        if (v23)
        {
          if (v100 >= 1)
          {
            v66 = 0;
            v67 = 0;
            do
            {
              v68 = (*(v18 + 8))(*&__src[v66]);
              v69 = (*(a6 + 8) + 4 * v66);
              *v69 = v68;
              v69[1] = v67++;
              v66 += 2;
            }

            while (2 * v100 != v66);
          }
        }

        else if (v100 >= 1)
        {
          v70 = 0;
          v71 = 0;
          v72 = v102;
          do
          {
            v73 = *v72++;
            v74 = udata_readInt32(v18, v73);
            v75 = (*(a6 + 8) + v70);
            *v75 = v74;
            v75[1] = v71++;
            v70 += 8;
          }

          while (8 * v100 != v70);
        }

        uprv_sortArray(*(a6 + 8), v100, 8, sub_195292BC0, *a6, 0, a7);
        if (*a7 >= 1)
        {
          return udata_printError(v18, "ures_swapResource(table res=%08x).uprv_sortArray(%d items) failed\n", v76, v77, v78, v79, v80, v81, a4);
        }

        if (__src)
        {
          v82 = v101;
          v83 = __dsta;
          if (__src == v101)
          {
            v82 = *(a6 + 16);
          }

          if (v100 >= 1)
          {
            v84 = v100;
            v85 = 4;
            v86 = v82;
            do
            {
              (*(v18 + 48))(v18, &__src[2 * *(*(a6 + 8) + v85)], 2, v86, a7);
              v86 += 2;
              v85 += 8;
              --v84;
            }

            while (v84);
          }

          v87 = v100;
          result = v101;
          if (v101 == v82)
          {
            goto LABEL_85;
          }

          v88 = 2 * v100;
          v89 = v82;
        }

        else
        {
          v83 = __dsta;
          __srca = v99;
          if (v102 == v99)
          {
            __srca = *(a6 + 16);
          }

          if (v100 >= 1)
          {
            v90 = v100;
            v91 = 4;
            v92 = __srca;
            do
            {
              (*(v18 + 56))(v18, &v102[*(*(a6 + 8) + v91)], 4, v92, a7);
              v92 += 4;
              v91 += 8;
              --v90;
            }

            while (v90);
          }

          result = v99;
          v87 = v100;
          v89 = __srca;
          if (v99 == __srca)
          {
            goto LABEL_85;
          }

          v88 = 4 * v100;
        }

        result = memcpy(result, v89, v88);
LABEL_85:
        v93 = v83;
        if (a2 == a3)
        {
          v93 = *(a6 + 16);
        }

        if (v87 >= 1)
        {
          v94 = v87;
          v95 = 4;
          v96 = v93;
          do
          {
            result = (*(v18 + 56))(v18, &v104[*(*(a6 + 8) + v95)], 4, v96, a7);
            v96 += 4;
            v95 += 8;
            --v94;
          }

          while (v94);
        }

        if (v83 != v93)
        {

          return memcpy(v83, v93, 4 * v87);
        }

        return result;
      }

LABEL_39:
      *a7 = 16;
      return result;
    }

LABEL_38:
    v45 = udata_readInt32(result, *v19);
    (*(v18 + 56))(v18, v19, 4, v20, a7);
    v39 = *(v18 + 48);
    v40 = (2 * v45);
    v43 = v20 + 4;
    v41 = v18;
    v42 = v19 + 1;
    goto LABEL_51;
  }

  if (a4 >> 28 <= 7)
  {
    if (v7 != 3)
    {
      if (v7 == 4)
      {
        __srcb = (a3 + 4 * v9);
        v21 = v19 + 1;
        v22 = udata_readInt32(result, *v19);
        v99 = __srcb + 4;
        result = (*(v18 + 56))(v18, v19, 4);
        v23 = 0;
        v24 = 0;
        v25 = v22 + 1;
        goto LABEL_20;
      }

      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v7 != 8)
  {
    if (v7 == 14)
    {
      v44 = udata_readInt32(result, *v19);
      v39 = *(v18 + 56);
      v40 = (4 * v44 + 4);
      v41 = v18;
      v42 = v19;
      v43 = v20;
      goto LABEL_51;
    }

    goto LABEL_39;
  }

  v46 = v19 + 1;
  v47 = udata_readInt32(result, *v19);
  (*(v18 + 56))(v18, v19, 4, v20, a7);
  v103 = v47;
  if (v47 < 1)
  {
LABEL_44:
    v39 = *(v18 + 56);
    v40 = (4 * v103);
    v43 = v20 + 4;
    v41 = v18;
    v42 = v46;
    goto LABEL_51;
  }

  v48 = 0;
  while (1)
  {
    v49 = (*(v18 + 16))(v46[v48]);
    sub_1952923F4(v18, a2, a3, v49, 0, a6, a7);
    if (*a7 >= 1)
    {
      return udata_printError(v18, "ures_swapResource(array res=%08x)[%d].recurse(%08x) failed\n", v50, v51, v52, v53, v54, v55, a4);
    }

    if (v103 == ++v48)
    {
      goto LABEL_44;
    }
  }
}

void *uscript_openRun(uint64_t a1, int a2, int *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (*a3 <= 0)
  {
    result = malloc_type_malloc(0x128uLL, 0x1050040A33D8A17uLL);
    if (!result)
    {
      *a3 = 7;
      return result;
    }

    if (*a3 <= 0)
    {
      if ((a2 & 0x80000000) == 0 && (a1 == 0) != (a2 != 0))
      {
        result[1] = a1;
        *result = a2;
        result[2] = 0;
        *(result + 6) = -1;
        *(result + 71) = -1;
        result[36] = 0;
        return result;
      }

      *a3 = 1;
    }

    free(result);
  }

  return 0;
}

uint64_t uscript_setRunText(uint64_t result, uint64_t a2, int a3, int *a4)
{
  if (a4 && *a4 <= 0)
  {
    if (result && (a3 & 0x80000000) == 0 && (a2 == 0) != (a3 != 0))
    {
      *(result + 8) = a2;
      *result = a3;
      *(result + 16) = 0;
      *(result + 24) = -1;
      *(result + 284) = -1;
      *(result + 288) = 0;
    }

    else
    {
      *a4 = 1;
    }
  }

  return result;
}

void uscript_closeRun(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

double uscript_resetRun(uint64_t a1)
{
  if (a1)
  {
    result = 0.0;
    *(a1 + 16) = 0;
    *(a1 + 24) = -1;
    *(a1 + 284) = -1;
    *(a1 + 288) = 0;
  }

  return result;
}

uint64_t uscript_nextRun(uint64_t result, _DWORD *a2, _DWORD *a3, int *a4)
{
  v61 = 0;
  if (result)
  {
    v4 = result;
    v5 = *(result + 20);
    v6 = *result;
    if (v5 >= *result)
    {
      return 0;
    }

    else
    {
      *(result + 292) = 0;
      *(result + 24) = 0;
      v10 = result + 28;
      *(result + 16) = v5;
      while (1)
      {
        v11 = *(v4 + 8);
        v12 = *(v11 + 2 * v5);
        v13 = v6 - 1;
        v14 = (v12 & 0xFC00) == 0xD800 && v5 < v13;
        if (v14)
        {
          v15 = v5 + 1;
          v16 = *(v11 + 2 * v15);
          if ((v16 & 0xFC00) == 0xDC00)
          {
            v12 = v16 + (v12 << 10) - 56613888;
            *(v4 + 20) = v15;
          }
        }

        Script = uscript_getScript(v12, &v61);
        v18 = 2 * (v12 > 59);
        v19 = 32;
        do
        {
          if (*&asc_1954809A0[2 * (v18 + (v19 >> 1))] <= v12)
          {
            v18 += v19 >> 1;
          }

          v14 = v19 > 3;
          v19 >>= 1;
        }

        while (v14);
        if (*&asc_1954809A0[2 * v18] != v12)
        {
          v18 = -1;
        }

        if ((v18 & 0x80000000) == 0)
        {
          v20 = *(v4 + 288);
          if (v18)
          {
            v30 = __OFSUB__(v20, 1);
            v31 = v20 - 1;
            if (v31 < 0 == v30)
            {
              v32 = *(v4 + 284);
              while (1)
              {
                v33 = v32;
                if (*(v10 + 8 * v32) == (v18 & 0x7FFFFFFE))
                {
                  break;
                }

                v34 = *(v4 + 292);
                v30 = __OFSUB__(v34, 1);
                v35 = v34 - 1;
                if (v35 < 0 == v30)
                {
                  *(v4 + 292) = v35;
                }

                *(v4 + 288) = v31;
                v36 = v33 + 31;
                v37 = -(v33 + 31);
                v26 = v37 < 0;
                v38 = v37 & 0x1F;
                v32 = v36 & 0x1F;
                if (!v26)
                {
                  v32 = -v38;
                }

                if (!v31)
                {
                  v32 = -1;
                }

                *(v4 + 284) = v32;
                v39 = v31-- + 1;
                if (v39 <= 1)
                {
                  goto LABEL_40;
                }
              }

              Script = *(v10 + 8 * v32 + 4);
            }
          }

          else
          {
            v21 = *(v4 + 24);
            if (v20 < 32)
            {
              v22 = v20 + 1;
            }

            else
            {
              v22 = 32;
            }

            *(v4 + 288) = v22;
            v23 = *(v4 + 292);
            if (v23 < 32)
            {
              v24 = v23 + 1;
            }

            else
            {
              v24 = 32;
            }

            *(v4 + 292) = v24;
            v25 = *(v4 + 284) + 1;
            v26 = -v25 < 0;
            v27 = -v25 & 0x1F;
            v28 = v25 & 0x1F;
            if (!v26)
            {
              v28 = -v27;
            }

            *(v4 + 284) = v28;
            v29 = (v10 + 8 * v28);
            *v29 = v18;
            v29[1] = v21;
          }
        }

LABEL_40:
        v40 = *(v4 + 24);
        v41 = v40 <= 1 || Script < 2;
        if (!v41 && v40 != Script)
        {
          break;
        }

        if (Script >= 2 && v40 <= 1)
        {
          *(v4 + 24) = Script;
          v44 = *(v4 + 292);
          v45 = v44 - 1;
          if (v44 >= 1)
          {
            v46 = *(v4 + 284) - v44 + 32;
            v47 = v46 & 0x1F;
            v48 = -v46;
            v26 = v48 < 0;
            v49 = v48 & 0x1F;
            if (v26)
            {
              v50 = v47;
            }

            else
            {
              v50 = -v49;
            }

            do
            {
              v51 = v50 + 1;
              v26 = -v51 < 0;
              v52 = -v51 & 0x1F;
              v50 = v51 & 0x1F;
              if (!v26)
              {
                v50 = -v52;
              }

              *(v10 + 8 * v50 + 4) = Script;
              --v44;
            }

            while (v44);
            v45 = -1;
          }

          *(v4 + 292) = v45;
          v40 = Script;
        }

        if ((v18 & 0x80000001) == 1)
        {
          v53 = *(v4 + 288);
          if (v53 >= 1)
          {
            v54 = *(v4 + 292);
            v30 = __OFSUB__(v54, 1);
            v55 = v54 - 1;
            if (v55 < 0 == v30)
            {
              *(v4 + 292) = v55;
            }

            v56 = *(v4 + 284) + 31;
            v26 = -v56 < 0;
            v57 = -v56 & 0x1F;
            v58 = v56 & 0x1F;
            if (!v26)
            {
              v58 = -v57;
            }

            v59 = v53 - 1;
            *(v4 + 288) = v59;
            if (v59)
            {
              v60 = v58;
            }

            else
            {
              v60 = -1;
            }

            *(v4 + 284) = v60;
          }
        }

        v5 = *(v4 + 20) + 1;
        *(v4 + 20) = v5;
        v6 = *v4;
        if (v5 >= *v4)
        {
          goto LABEL_77;
        }
      }

      if (v12 >= 0x10000)
      {
        --*(v4 + 20);
      }

LABEL_77:
      if (a2)
      {
        *a2 = *(v4 + 16);
      }

      if (a3)
      {
        *a3 = *(v4 + 20);
      }

      if (a4)
      {
        *a4 = v40;
      }

      return 1;
    }
  }

  return result;
}

uint64_t uscript_getCode(char *__s, int32_t *a2, int a3, UErrorCode *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    goto LABEL_2;
  }

  if (!__s)
  {
    goto LABEL_16;
  }

  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_6;
    }

LABEL_16:
    v4 = 0;
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_17;
  }

  if (a3 < 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  v9 = strrchr(__s, 45);
  if (v9 || (v9 = strrchr(__s, 95)) != 0)
  {
    if (v9 - __s == 7)
    {
      if (strlen(__s) == 11)
      {
        goto LABEL_11;
      }
    }

    else if (v9 - __s == 3 && strlen(__s) > 8)
    {
      goto LABEL_11;
    }

    v13 = 1;
LABEL_21:
    v17 = U_ZERO_ERROR;
    v4 = sub_19529326C(__s, a2, a3, a4);
    if (v4 || *a4 > 0)
    {
      goto LABEL_17;
    }

    v20 = 0u;
    v21 = 0u;
    *v18 = 0u;
    v19 = 0u;
    ulocimp_addLikelySubtags(__s, &v17, v18);
    if (v17 > U_ZERO_ERROR || v17 == U_STRING_NOT_TERMINATED_WARNING)
    {
      if (!v13)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v4 = sub_19529326C(v18[0], a2, a3, a4);
      if (v4)
      {
        v14 = 0;
      }

      else
      {
        v14 = *a4 < U_ILLEGAL_ARGUMENT_ERROR;
      }

      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0;
      }

      if ((v15 & 1) == 0)
      {
LABEL_37:
        if (BYTE4(v18[1]))
        {
          free(v18[0]);
        }

        goto LABEL_17;
      }
    }

    PropertyValueEnum = u_getPropertyValueEnum(UCHAR_SCRIPT, __s);
    if (PropertyValueEnum != -1 && *a4 <= 0)
    {
      if (a3)
      {
        *a2 = PropertyValueEnum;
      }

      else
      {
        *a4 = U_BUFFER_OVERFLOW_ERROR;
      }

      v4 = 1;
      goto LABEL_37;
    }

LABEL_36:
    v4 = 0;
    goto LABEL_37;
  }

LABEL_11:
  v10 = u_getPropertyValueEnum(UCHAR_SCRIPT, __s);
  if (v10 == -1)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if (*a4 > 0)
  {
LABEL_2:
    v4 = 0;
    goto LABEL_17;
  }

  if (a3)
  {
    *a2 = v10;
  }

  else
  {
    *a4 = U_BUFFER_OVERFLOW_ERROR;
  }

  v4 = 1;
LABEL_17:
  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_19529326C(const char *a1, uint64_t a2, int a3, UErrorCode *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    v4 = 0;
    goto LABEL_9;
  }

  memset(&v21[1], 0, 48);
  v21[0] = &v21[1] + 5;
  LODWORD(v21[1]) = 40;
  v22 = 0;
  memset(&__s1[1], 0, 48);
  v20 = 0;
  __s1[0] = &__s1[1] + 5;
  LODWORD(__s1[1]) = 40;
  ulocimp_getSubtags(a1, v21, __s1, 0, 0, 0, a4);
  if (*a4 > 0)
  {
    goto LABEL_4;
  }

  icu::StringPiece::StringPiece(&__s2, "ja");
  if (v22 == v16 && (!v16 || !memcmp(v21[0], __s2, v16)))
  {
    if (*a4 <= 0)
    {
      if (a3 >= 3)
      {
        *a2 = 0x1400000016;
        *(a2 + 8) = 17;
      }

      else
      {
        *a4 = U_BUFFER_OVERFLOW_ERROR;
      }

      v4 = 3;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  icu::StringPiece::StringPiece(&__s2, "ko");
  if (v22 == v16 && (!v16 || !memcmp(v21[0], __s2, v16)))
  {
    if (*a4 <= 0)
    {
      if (a3 >= 2)
      {
        v12 = 0x1100000012;
        goto LABEL_56;
      }

      goto LABEL_49;
    }
  }

  else
  {
    icu::StringPiece::StringPiece(&__s2, "zh");
    if (v22 == v16 && (!v16 || !memcmp(v21[0], __s2, v16)) && (icu::StringPiece::StringPiece(&__s2, "Hant"), v20 == v16) && (!v16 || !memcmp(__s1[0], __s2, v16)))
    {
      if (*a4 <= 0)
      {
        if (a3 >= 2)
        {
          v12 = 0x500000011;
          goto LABEL_56;
        }

LABEL_49:
        *a4 = U_BUFFER_OVERFLOW_ERROR;
LABEL_57:
        v4 = 2;
        goto LABEL_5;
      }
    }

    else
    {
      icu::StringPiece::StringPiece(&__s2, "mn");
      if (v22 != v16 || v16 && memcmp(v21[0], __s2, v16))
      {
        icu::StringPiece::StringPiece(&__s2, "mon");
        if (v22 != v16 || v16 && memcmp(v21[0], __s2, v16))
        {
          if (v20)
          {
            icu::StringPiece::StringPiece(&__s2, "Aran");
            if (v20 == v16 && (!v16 || !memcmp(__s1[0], __s2, v16)))
            {
              icu::StringPiece::StringPiece(&v13, "Arab");
              __s2 = &v17 + 1;
              v16 = 40;
              v17 = 0;
              v18 = 0;
              icu::CharString::append(&__s2, v13, v14, a4);
              icu::CharString::operator=(__s1, &__s2);
              if (v17)
              {
                free(__s2);
              }
            }

            PropertyValueEnum = u_getPropertyValueEnum(UCHAR_SCRIPT, __s1[0]);
            if (PropertyValueEnum != -1)
            {
              v11 = (PropertyValueEnum - 73) >= 2 ? PropertyValueEnum : 17;
              if (*a4 <= 0)
              {
                if (a3 <= 0)
                {
                  *a4 = U_BUFFER_OVERFLOW_ERROR;
                }

                else
                {
                  *a2 = v11;
                }

                v4 = 1;
                goto LABEL_5;
              }
            }
          }

          goto LABEL_4;
        }
      }

      if (*a4 <= 0)
      {
        if (a3 >= 2)
        {
          v12 = 0x1B00000008;
LABEL_56:
          *a2 = v12;
          goto LABEL_57;
        }

        goto LABEL_49;
      }
    }
  }

LABEL_4:
  v4 = 0;
LABEL_5:
  if (BYTE4(__s1[1]))
  {
    free(__s1[0]);
  }

  if (BYTE4(v21[1]))
  {
    free(v21[0]);
  }

LABEL_9:
  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t uscript_getSampleString(unsigned int a1, _WORD *a2, unsigned int a3, int *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if ((a3 & 0x80000000) != 0 || !a2 && a3)
  {
    *a4 = 1;
    return 0;
  }

  if (a1 <= 0xCF && (v5 = dword_195480A48[a1], v6 = v5 & 0x1FFFFF, (v5 & 0x1FFFFF) != 0))
  {
    if (v6 < 0x10000)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (v7 <= a3)
    {
      if (HIWORD(v6))
      {
        *a2 = (v6 >> 10) - 10304;
        a2[1] = v5 & 0x3FF | 0xDC00;
        v7 = 2;
      }

      else
      {
        *a2 = v5;
        v7 = 1;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return u_terminateUChars(a2, a3, v7, a4);
}

uint64_t uscript_getSampleUnicodeString@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  if (result <= 0xCF)
  {
    v2 = dword_195480A48[result] & 0x1FFFFF;
    if (v2)
    {
      return icu::UnicodeString::append(a2, v2);
    }
  }

  return result;
}

uint64_t uscript_getUsage(unsigned int a1)
{
  if (a1 > 0xCF)
  {
    return 0;
  }

  else
  {
    return (dword_195480A48[a1] >> 21) & 7;
  }
}

uint64_t uscript_isRightToLeft(unsigned int a1)
{
  if (a1 > 0xCF)
  {
    return 0;
  }

  else
  {
    return HIBYTE(dword_195480A48[a1]) & 1;
  }
}

uint64_t uscript_breaksBetweenLetters(unsigned int a1)
{
  if (a1 > 0xCF)
  {
    return 0;
  }

  else
  {
    return (dword_195480A48[a1] >> 25) & 1;
  }
}

uint64_t uscript_isCased(unsigned int a1)
{
  if (a1 > 0xCF)
  {
    return 0;
  }

  else
  {
    return (dword_195480A48[a1] >> 26) & 1;
  }
}

icu::UnicodeSet *uset_close(icu::UnicodeSet *result)
{
  if (result)
  {
    icu::UnicodeSet::~UnicodeSet(result);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

void *uset_addString(icu::UnicodeSet *a1, uint64_t a2, unsigned int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v7 = a2;
  icu::UnicodeString::UnicodeString(v8, a3 >> 31, &v7);
  icu::UnicodeSet::add(a1, v8);
  result = icu::UnicodeString::~UnicodeString(v4, v8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *uset_addAllCodePoints(icu::UnicodeSet *a1, uint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  icu::UnicodeString::UnicodeString(v7, a2, a3);
  icu::UnicodeSet::addAll(a1, v7);
  result = icu::UnicodeString::~UnicodeString(v4, v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *uset_removeString(icu::UnicodeSet *a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v7 = a2;
  icu::UnicodeString::UnicodeString(v8, a3 == -1, &v7);
  icu::UnicodeSet::remove(a1, v8);
  result = icu::UnicodeString::~UnicodeString(v4, v8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *uset_removeAllCodePoints(icu::UVector **a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v7 = a2;
  icu::UnicodeString::UnicodeString(v8, a3 == -1, &v7);
  icu::UnicodeSet::removeAll(a1, v8);
  result = icu::UnicodeString::~UnicodeString(v4, v8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *uset_retainString(icu::UnicodeSet *a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v7 = a2;
  icu::UnicodeString::UnicodeString(v8, a3 == -1, &v7);
  icu::UnicodeSet::retain(a1, v8);
  result = icu::UnicodeString::~UnicodeString(v4, v8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *uset_retainAllCodePoints(icu::UVector **a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v7 = a2;
  icu::UnicodeString::UnicodeString(v8, a3 == -1, &v7);
  icu::UnicodeSet::retainAll(a1, v8);
  result = icu::UnicodeString::~UnicodeString(v4, v8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *uset_complementString(icu::UnicodeSet *a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v7 = a2;
  icu::UnicodeString::UnicodeString(v8, a3 == -1, &v7);
  icu::UnicodeSet::complement(a1, v8);
  result = icu::UnicodeString::~UnicodeString(v4, v8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *uset_complementAllCodePoints(icu::UVector **a1, uint64_t a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v7 = a2;
  icu::UnicodeString::UnicodeString(v8, a3 == -1, &v7);
  icu::UnicodeSet::complementAll(a1, v8);
  result = icu::UnicodeString::~UnicodeString(v4, v8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

icu::UVector *uset_containsString(icu::UnicodeSet *a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  v8 = a2;
  icu::UnicodeString::UnicodeString(v9, a3 == -1, &v8);
  v4 = icu::UnicodeSet::contains(a1, v9);
  icu::UnicodeString::~UnicodeString(v5, v9);
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

BOOL uset_containsAllCodePoints(icu::UnicodeSet *a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  v8 = a2;
  icu::UnicodeString::UnicodeString(v9, a3 == -1, &v8);
  v4 = icu::UnicodeSet::containsAll(a1, v9);
  icu::UnicodeString::~UnicodeString(v5, v9);
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t uset_getString(icu::UnicodeSet *a1, signed int a2, unsigned int *a3)
{
  if (!a3)
  {
    return 0;
  }

  v6 = icu::UnicodeSet::stringsSize(a1);
  if (a2 < 0 || v6 <= a2)
  {
    result = 0;
    *a3 = 0;
  }

  else
  {
    String = icu::UnicodeSet::getString(a1, a2);
    v8 = *(String + 8);
    if ((v8 & 0x8000) != 0)
    {
      v9 = *(String + 12);
    }

    else
    {
      v9 = v8 >> 5;
    }

    *a3 = v9;
    v11 = *(String + 8);
    if ((v11 & 0x11) != 0)
    {
      return 0;
    }

    else if ((v11 & 2) != 0)
    {
      return String + 10;
    }

    else
    {
      return *(String + 24);
    }
  }

  return result;
}