uint64_t sub_1953B3E68(const char *a1)
{
  v2 = strlen(a1);
  if (v2 < 7)
  {
    if (v2 != 6)
    {
      return 0;
    }

    v3 = 6;
  }

  else
  {
    v3 = v2 & 0x7FFFFFFF;
    if (!strcmp(&a1[v3 - 7], "-narrow"))
    {
      return 2;
    }
  }

  return !strcmp(&a1[v3 - 6], "-short");
}

uint64_t sub_1953B3EE8(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_195492648[a1 - 1];
  }
}

uint64_t sub_1953B3F0C(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_195492680[a1];
  }
}

void sub_1953B3F2C(uint64_t a1)
{
  *a1 = &unk_1F0941C18;
  icu::Locale::~Locale((a1 + 16));

  icu::CacheKeyBase::~CacheKeyBase(a1);
}

void sub_1953B3F80(uint64_t a1)
{
  *a1 = &unk_1F0941C18;
  icu::Locale::~Locale((a1 + 16));
  icu::CacheKeyBase::~CacheKeyBase(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953B3FE8(uint64_t a1)
{
  v2 = strlen(("N3icu25RelativeDateTimeCacheDataE" & 0x7FFFFFFFFFFFFFFFLL));
  v3 = ustr_hashCharsN(("N3icu25RelativeDateTimeCacheDataE" & 0x7FFFFFFFFFFFFFFFLL), v2);
  return icu::Locale::hashCode((a1 + 16)) + 37 * v3;
}

char *sub_1953B40B0(uint64_t a1, char *__dst, int a3)
{
  result = strncpy(__dst, *(a1 + 56), a3);
  __dst[a3 - 1] = 0;
  return result;
}

BOOL sub_1953B40EC(void *a1, void *a2)
{
  result = sub_1952C1D2C(a1, a2);
  if (result)
  {

    return icu::Locale::operator==((a1 + 2), (a2 + 2));
  }

  return result;
}

uint64_t sub_1953B4154(uint64_t a1, uint64_t a2)
{
  v4 = icu::DateFormat::DateFormat(a1, a2);
  *v4 = &unk_1F0941C98;
  v4[44] = 0;
  icu::UnicodeString::UnicodeString((v4 + 45), (a2 + 360));
  icu::UnicodeString::UnicodeString((a1 + 424), (a2 + 424));
  *(a1 + 488) = 0;
  *(a1 + 496) = *(a2 + 496);
  icu::Locale::Locale((a1 + 504), a2 + 504);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 736) = 0;
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 752) = 0;
  v5 = *(a2 + 352);
  if (v5)
  {
    *(a1 + 352) = (*(*v5 + 32))(v5);
  }

  if (*(a2 + 488))
  {
    operator new();
  }

  v6 = *(a1 + 728);
  if (v6 >= 1)
  {
    v7 = malloc_type_malloc(16 * v6, 0x1050040606E6C2FuLL);
    *(a1 + 736) = v7;
    memcpy(v7, *(a2 + 736), 16 * *(a1 + 728));
  }

  v8 = *(a2 + 752);
  if (v8)
  {
    *(a1 + 752) = (*(*v8 + 32))(v8);
  }

  return a1;
}

uint64_t sub_1953B42C0(uint64_t a1, int a2, int a3, uint64_t a4, int *a5)
{
  v10 = icu::DateFormat::DateFormat(a1);
  *v10 = &unk_1F0941C98;
  v10[44] = 0;
  v10[45] = &unk_1F0935D00;
  *(v10 + 184) = 2;
  v10[53] = &unk_1F0935D00;
  *(v10 + 216) = 2;
  v10[61] = 0;
  *(v10 + 124) = a3;
  icu::Locale::Locale((v10 + 63), a4);
  *(a1 + 728) = 0;
  *(a1 + 752) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  if (*a5 <= 0)
  {
    if ((a3 - 132) > 0xFFFFFFFB && (a2 - 4) > 0xFFFFFFFA)
    {
      icu::DateFormat::createDateInstance(a3 & 3);
    }

    *a5 = 1;
  }

  return a1;
}

uint64_t sub_1953B4528(icu::TimeZone *a1, icu::Calendar *this, icu::TimeZone *a3, icu::Locale *a4)
{
  if (*a4 > 0)
  {
    return *(a1 + 41);
  }

  if (!this)
  {
    this = icu::TimeZone::createDefault(a1);
  }

  result = icu::Calendar::createInstance(this, a3, a4, a4);
  *(a1 + 41) = result;
  if (*a4 >= 1)
  {
    return *(a1 + 41);
  }

  if (!result)
  {
    *a4 = 7;
  }

  return result;
}

void sub_1953B45A4(uint64_t a1, UErrorCode *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  BaseName = icu::Locale::getBaseName((a1 + 504));
  v5 = ures_open(0, BaseName, a2);
  v6 = ures_getByKeyWithFallback(v5, "calendar/gregorian/DateTimePatterns%atTime", 0, a2);
  v7 = v6;
  if (*a2 < 1)
  {
    ures_getSize(v6);
    v20 = 0;
    v13 = *(a1 + 496);
    if ((v13 & 0xFFFFFF7F) >= 132 || v13 <= -1)
    {
      v10 = 0;
    }

    else
    {
      v10 = v13 & 0xFFFFFF7F;
    }

    goto LABEL_21;
  }

  *a2 = U_ZERO_ERROR;
  v8 = ures_getByKeyWithFallback(v5, "calendar/gregorian/DateTimePatterns", 0, a2);
  if (v7)
  {
    ures_close(v7);
  }

  if (*a2 <= 0)
  {
    Size = ures_getSize(v8);
    if (Size > 8)
    {
      v20 = 0;
      v10 = 8;
      if (Size >= 0xD)
      {
        v11 = *(a1 + 496);
        if ((v11 & 0xFFFFFF7F) >= 132 || v11 <= -1)
        {
          v10 = 8;
        }

        else
        {
          v10 = (v11 & 0xFFFFFF7F) + 9;
        }
      }

      v7 = v8;
LABEL_21:
      StringByIndex = ures_getStringByIndex(v7, v10, &v20, a2);
      if (*a2 <= 0 && v20 >= 3 && !u_strncmp(StringByIndex, a1_1, 3))
      {
        *(a1 + 744) = 1;
      }

      operator new();
    }
  }

  *(a1 + 728) = 6;
  v16 = malloc_type_malloc(0x60uLL, 0x1050040606E6C2FuLL);
  *(a1 + 736) = v16;
  v21[1] = v16;
  v22 = 0;
  v17 = *(a1 + 728);
  v21[0] = &unk_1F0941DD0;
  LODWORD(v22) = v17;
  if (v17 >= 1)
  {
    v18 = v16 + 8;
    do
    {
      *v18 = 0;
      *(v18 - 1) = 0xFFFFFFFF00000000;
      v18 += 2;
      --v17;
    }

    while (v17);
  }

  ures_getAllItemsWithFallback(v5, "fields/day/relative", v21, a2);
  ures_close(v5);
  if (*a2 >= 1)
  {
    *(a1 + 728) = 0;
  }

  icu::ResourceSink::~ResourceSink(v21);
  if (v8)
  {
    ures_close(v8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1953B4884(uint64_t a1)
{
  *a1 = &unk_1F0941C98;
  v2 = *(a1 + 352);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 488);
  if (v3)
  {
    icu::SimpleFormatter::~SimpleFormatter(v3);
    MEMORY[0x19A8B2600]();
  }

  free(*(a1 + 736));
  v4 = *(a1 + 752);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  icu::Locale::~Locale((a1 + 504));
  icu::UnicodeString::~UnicodeString(v5, (a1 + 424));
  icu::UnicodeString::~UnicodeString(v6, (a1 + 360));

  icu::DateFormat::~DateFormat(a1);
}

void sub_1953B4970(uint64_t a1)
{
  sub_1953B4884(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_1953B49F4(uint64_t a1, uint64_t a2)
{
  if (!icu::DateFormat::operator==(a1, a2) || *(a1 + 496) != *(a2 + 496))
  {
    return 0;
  }

  v4 = *(a1 + 368);
  if (v4)
  {
    if ((*(a2 + 368) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((v4 & 0x8000) != 0)
    {
      v5 = *(a1 + 372);
    }

    else
    {
      v5 = v4 >> 5;
    }

    v6 = *(a2 + 368);
    if ((v6 & 0x8000u) == 0)
    {
      v7 = v6 >> 5;
    }

    else
    {
      v7 = *(a2 + 372);
    }

    if ((v6 & 1) != 0 || v5 != v7)
    {
      return 0;
    }

    v8 = (v6 & 2) != 0 ? (a2 + 370) : *(a2 + 384);
    if (!icu::UnicodeString::doEquals(a1 + 360, v8, v5))
    {
      return 0;
    }
  }

  v9 = *(a1 + 432);
  if ((v9 & 1) == 0)
  {
    if ((v9 & 0x8000) != 0)
    {
      v10 = *(a1 + 436);
    }

    else
    {
      v10 = v9 >> 5;
    }

    v11 = *(a2 + 432);
    if ((v11 & 0x8000u) == 0)
    {
      v12 = v11 >> 5;
    }

    else
    {
      v12 = *(a2 + 436);
    }

    if ((v11 & 1) == 0 && v10 == v12)
    {
      v13 = (v11 & 2) != 0 ? (a2 + 434) : *(a2 + 448);
      if (icu::UnicodeString::doEquals(a1 + 424, v13, v10))
      {
        goto LABEL_33;
      }
    }

    return 0;
  }

  if ((*(a2 + 432) & 1) == 0)
  {
    return 0;
  }

LABEL_33:

  return icu::Locale::operator==(a1 + 504, a2 + 504);
}

uint64_t sub_1953B4B20(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v35 = U_ZERO_ERROR;
  v50 = 0u;
  v53 = 0;
  v52 = 0u;
  v51 = 0u;
  v49 = &unk_1F0935D00;
  LOWORD(v50) = 2;
  v8 = (*(*a1 + 208))(a1, 1, &v35);
  v9 = sub_1953B50BC(a2, &v35);
  if (v35 <= U_ZERO_ERROR && v9 >= -2 && v9 + 2 < *(a1 + 728))
  {
    v15 = *(a1 + 736) + 16 * (v9 + 2);
    if (*v15 == v9)
    {
      v16 = *(v15 + 8);
      if (v16)
      {
        v17 = *(v15 + 4);
        icu::UnicodeString::unBogus(&v49);
        if ((v50 & 0x8000u) == 0)
        {
          v18 = v50 >> 5;
        }

        else
        {
          v18 = DWORD1(v50);
        }

        icu::UnicodeString::doReplace(&v49, 0, v18, v16, 0, v17);
      }
    }
  }

  v11 = v50 >> 5;
  if ((v50 & 0x8000u) != 0)
  {
    v11 = DWORD1(v50);
  }

  if (v11 >= 1 && *(a1 + 368) >= 0x20u)
  {
    v12 = *(a1 + 432);
    if (v12 < 0x20 || (v12 = *(a1 + 488)) == 0 || (v12 = *(a1 + 744), *(a1 + 744)))
    {
      v13 = icu::UnicodeString::char32At(v12, &v49, 0);
      if (!u_islower(v13))
      {
        goto LABEL_29;
      }

      v14 = *(a1 + 752);
      if (!v14)
      {
        goto LABEL_29;
      }

      if (v8 != 258)
      {
        if (v8 == 260)
        {
          if (!*(a1 + 747))
          {
LABEL_29:
            v8 = 256;
            goto LABEL_30;
          }
        }

        else if (v8 != 259 || !*(a1 + 746))
        {
          goto LABEL_29;
        }
      }

      icu::UnicodeString::toTitle(&v49, v14, (a1 + 504), 768);
      goto LABEL_29;
    }
  }

LABEL_30:
  (*(**(a1 + 352) + 200))(*(a1 + 352), v8, &v35);
  if (*(a1 + 368) <= 0x1Fu)
  {
    v28 = *(**(a1 + 352) + 256);
    goto LABEL_53;
  }

  v19 = (a1 + 360);
  if (*(a1 + 432) < 0x20u || !*(a1 + 488))
  {
    if ((v50 & 0x8000u) == 0)
    {
      v29 = v50 >> 5;
    }

    else
    {
      v29 = DWORD1(v50);
    }

    if (v29 >= 1)
    {
      icu::UnicodeString::doAppend(a3, &v49, 0, v29);
      goto LABEL_54;
    }

    v28 = *(**(a1 + 352) + 256);
LABEL_53:
    v28();
    (*(**(a1 + 352) + 64))(*(a1 + 352), a2, a3, a4);
    goto LABEL_54;
  }

  v45 = 0u;
  v48 = 0;
  v47 = 0u;
  v46 = 0u;
  v44 = &unk_1F0935D00;
  LOWORD(v45) = 2;
  v20 = v50 >> 5;
  if ((v50 & 0x8000u) != 0)
  {
    v20 = DWORD1(v50);
  }

  if (v20 >= 1)
  {
    v34 = "'";
    icu::UnicodeString::UnicodeString(&v39, 1, &v34);
    v33 = L"''";
    icu::UnicodeString::UnicodeString(v36, 1, &v33);
    if ((v50 & 0x8000u) == 0)
    {
      v21 = v50 >> 5;
    }

    else
    {
      v21 = DWORD1(v50);
    }

    if ((v40 & 0x8000u) == 0)
    {
      v22 = v40 >> 5;
    }

    else
    {
      v22 = DWORD1(v40);
    }

    v23 = v37 >> 5;
    if ((v37 & 0x8000u) != 0)
    {
      v23 = v38;
    }

    v19 = &v49;
    icu::UnicodeString::findAndReplace(&v49, 0, v21, &v39, 0, v22, v36, 0, v23);
    icu::UnicodeString::~UnicodeString(v24, v36);
    v32 = v33;
    icu::UnicodeString::~UnicodeString(&v32, &v39);
    LOWORD(v39) = 39;
    icu::UnicodeString::doReplace(&v49, 0, 0, &v39, 0, 1);
    LOWORD(v39) = 39;
    icu::UnicodeString::doAppend(&v49, &v39, 0, 1);
  }

  icu::UnicodeString::copyFrom(&v44, v19, 0);
  v40 = 0u;
  v43 = 0;
  v42 = 0u;
  v41 = 0u;
  v39 = &unk_1F0935D00;
  LOWORD(v40) = 2;
  icu::SimpleFormatter::format(*(a1 + 488), (a1 + 424), &v44, &v39, &v35);
  (*(**(a1 + 352) + 256))();
  (*(**(a1 + 352) + 64))(*(a1 + 352), a2, a3, a4);
  icu::UnicodeString::~UnicodeString(v25, &v39);
  icu::UnicodeString::~UnicodeString(v26, &v44);
LABEL_54:
  icu::UnicodeString::~UnicodeString(v27, &v49);
  v30 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t sub_1953B50BC(_BYTE *a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v4 = a1;
  v5 = (*(*a1 + 24))(a1);
  icu::Calendar::getNow(v5);
  icu::Calendar::setTimeInMillis(v5, v6, a2);
  LODWORD(v4) = icu::Calendar::get(v4, 0x14u, a2);
  v2 = v4 - icu::Calendar::get(v5, 0x14u, a2);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return v2;
}

void *sub_1953B5190(uint64_t a1, UChar **a2, uint64_t a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a1 + 368) <= 0x1Fu)
  {
    v24 = *(**(a1 + 352) + 256);
LABEL_39:
    v24();
    v30 = *(**(a1 + 352) + 88);
    v31 = *MEMORY[0x1E69E9840];

    return v30();
  }

  v8 = *(a4 + 8);
  if (*(a1 + 432) < 0x20u || !*(a1 + 488))
  {
    if (*(a1 + 728) >= 1)
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = *(a1 + 736) + v25;
        v28 = *(v27 + 8);
        if (v28)
        {
          v29 = icu::UnicodeString::doCompare(a2, v8, *(v27 + 4), v28, 0, *(v27 + 4));
          if (!v29)
          {
            v46[0] = U_ZERO_ERROR;
            icu::Calendar::getNow(v29);
            icu::Calendar::setTimeInMillis(a3, v33, v46);
            result = (*(*a3 + 56))(a3, 5, *(*(a1 + 736) + v25), v46);
            if (v46[0] < U_ILLEGAL_ARGUMENT_ERROR)
            {
              *(a4 + 8) = *(*(a1 + 736) + v25 + 4) + v8;
            }

            else
            {
              *(a4 + 12) = v8;
            }

            goto LABEL_48;
          }
        }

        ++v26;
        v25 += 16;
      }

      while (v26 < *(a1 + 728));
    }

    v24 = *(**(a1 + 352) + 256);
    goto LABEL_39;
  }

  v49 = 0u;
  v47 = 0u;
  v48 = 0u;
  *v46 = 0u;
  icu::UnicodeString::UnicodeString(v46, a2);
  v40[2] = 0;
  v40[0] = &unk_1F093AD90;
  v40[1] = 0xFFFFFFFFLL;
  v39 = U_ZERO_ERROR;
  v9 = *(a1 + 728);
  if (v9 < 1)
  {
LABEL_21:
    LODWORD(v17) = 0;
    LODWORD(v18) = 0;
    LODWORD(v19) = 0;
    goto LABEL_22;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(a1 + 736) + v10;
    v13 = *(v12 + 8);
    if (v13)
    {
      break;
    }

LABEL_20:
    ++v11;
    v10 += 16;
    if (v11 >= v9)
    {
      goto LABEL_21;
    }
  }

  if (v8 < 0)
  {
    v15 = U_ZERO_ERROR;
    if ((v46[2] & 0x8000) != 0)
    {
      v14 = v46[3];
    }

    else
    {
      v14 = LOWORD(v46[2]) >> 5;
    }
  }

  else if ((v46[2] & 0x8000) != 0)
  {
    v14 = v46[3];
    if (v46[3] >= v8)
    {
      v15 = v8;
    }

    else
    {
      v15 = v46[3];
    }
  }

  else
  {
    v14 = LOWORD(v46[2]) >> 5;
    if (v14 >= v8)
    {
      v15 = v8;
    }

    else
    {
      v15 = LOWORD(v46[2]) >> 5;
    }
  }

  v16 = icu::UnicodeString::indexOf(v46, v13, 0, *(v12 + 4), v15, v14 - v15);
  if (v16 < v8)
  {
    v9 = *(a1 + 728);
    goto LABEL_20;
  }

  v19 = v16;
  v42 = 0u;
  v45 = 0;
  v44 = 0u;
  v43 = 0u;
  v41 = &unk_1F0935D00;
  LOWORD(v42) = 2;
  v34 = (*(*a3 + 24))(a3);
  icu::Calendar::getNow(v34);
  icu::Calendar::setTimeInMillis(v34, v35, &v39);
  (*(*v34 + 56))(v34, 5, *(*(a1 + 736) + v10), &v39);
  if (v39 > U_ZERO_ERROR)
  {
    *(a4 + 12) = v8;
    (*(*v34 + 8))(v34);
    goto LABEL_47;
  }

  (*(**(a1 + 352) + 256))(*(a1 + 352), a1 + 360);
  (*(**(a1 + 352) + 64))(*(a1 + 352), v34, &v41, v40);
  v18 = *(*(a1 + 736) + v10 + 4);
  if ((v42 & 0x8000u) == 0)
  {
    v17 = v42 >> 5;
  }

  else
  {
    v17 = DWORD1(v42);
  }

  icu::UnicodeString::doReplace(v46, v19, v18, &v41, 0, v17);
  (*(*v34 + 8))(v34);
  icu::UnicodeString::~UnicodeString(v38, &v41);
LABEL_22:
  v42 = 0u;
  v45 = 0;
  v44 = 0u;
  v43 = 0u;
  v41 = &unk_1F0935D00;
  LOWORD(v42) = 2;
  icu::SimpleFormatter::format(*(a1 + 488), (a1 + 424), (a1 + 360), &v41, &v39);
  (*(**(a1 + 352) + 256))();
  (*(**(a1 + 352) + 88))(*(a1 + 352), v46, a3, a4);
  v20 = *(a4 + 8);
  v21 = *(a4 + 12);
  if (v21 >= 0)
  {
    v20 = *(a4 + 12);
  }

  if (v20 >= v19)
  {
    v22 = v19;
  }

  else
  {
    v22 = v20;
  }

  if (v20 >= v19 + v17)
  {
    v23 = (v18 - v17 + v20);
  }

  else
  {
    v23 = v22;
  }

  if (v21 < 0)
  {
    *(a4 + 8) = v23;
  }

  else
  {
    *(a4 + 12) = v23;
  }

LABEL_47:
  icu::UnicodeString::~UnicodeString(v23, &v41);
  icu::FieldPosition::~FieldPosition(v40);
  result = icu::UnicodeString::~UnicodeString(v36, v46);
LABEL_48:
  v37 = *MEMORY[0x1E69E9840];
  return result;
}

icu::UnicodeString *sub_1953B57A4(uint64_t a1, icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (*(a2 + 4))
    {
      v4 = 2;
    }

    else
    {
      v4 = *(a2 + 4) & 0x1E;
    }

    *(a2 + 4) = v4;
    if (*(a1 + 368) <= 0x1Fu)
    {
      v5 = (a1 + 424);
    }

    else
    {
      if (*(a1 + 432) >= 0x20u && *(a1 + 488))
      {
        icu::SimpleFormatter::format(*(a1 + 488), (a1 + 424), (a1 + 360), a2, a3);
        return a2;
      }

      v5 = (a1 + 360);
    }

    icu::UnicodeString::copyFrom(a2, v5, 0);
  }

  return a2;
}

icu::UnicodeString *sub_1953B5840(uint64_t a1, icu::UnicodeString *this, int *a3)
{
  if (*a3 <= 0)
  {
    if (*(this + 4))
    {
      v4 = 2;
    }

    else
    {
      v4 = *(this + 4) & 0x1E;
    }

    *(this + 4) = v4;
    icu::UnicodeString::copyFrom(this, (a1 + 360), 0);
  }

  return this;
}

icu::UnicodeString *sub_1953B5898(uint64_t a1, icu::UnicodeString *this, int *a3)
{
  if (*a3 <= 0)
  {
    if (*(this + 4))
    {
      v4 = 2;
    }

    else
    {
      v4 = *(this + 4) & 0x1E;
    }

    *(this + 4) = v4;
    icu::UnicodeString::copyFrom(this, (a1 + 424), 0);
  }

  return this;
}

icu::UnicodeString *sub_1953B58F0(icu::UnicodeString *result, UChar **a2, UChar **a3, int *a4)
{
  if (*a4 <= 0)
  {
    v6 = result;
    icu::UnicodeString::copyFrom(result + 45, a2, 0);

    return icu::UnicodeString::copyFrom(v6 + 53, a3, 0);
  }

  return result;
}

void sub_1953B597C(uint64_t a1, int a2, int *a3)
{
  icu::DateFormat::setContext(a1, a2, a3);
  if (*a3 <= 0)
  {
    if ((a2 - 259) <= 1 && !*(a1 + 745))
    {
      sub_1953B5A68(a1, (a1 + 504));
      *(a1 + 745) = 1;
    }

    if (!*(a1 + 752))
    {
      if (a2 != 258)
      {
        if (a2 == 260)
        {
          if (!*(a1 + 747))
          {
            return;
          }
        }

        else if (a2 != 259 || !*(a1 + 746))
        {
          return;
        }
      }

      *a3 = 0;
      SentenceInstance = icu::BreakIterator::createSentenceInstance((a1 + 504), a3, v6, v7);
      *(a1 + 752) = SentenceInstance;
      if (*a3 >= 1)
      {
        if (SentenceInstance)
        {
          (*(*SentenceInstance + 8))(SentenceInstance);
        }

        *(a1 + 752) = 0;
      }
    }
  }
}

void sub_1953B5A68(uint64_t a1, icu::Locale *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  icu::Locale::Locale(v10, v9, 0, 0, 0, 0);
  BaseName = 0;
  if (!icu::Locale::operator==(a2, v9))
  {
    BaseName = icu::Locale::getBaseName(a2);
  }

  icu::Locale::~Locale(v9);
  v9[0] = 0;
  v5 = ures_open(0, BaseName, v9);
  ures_getByKeyWithFallback(v5, "contextTransforms/relative", v5, v9);
  if (v9[0] > 0)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v5)
  {
    v8 = 0;
    IntVector = ures_getIntVector(v5, &v8, v9);
    if (v9[0] <= 0 && IntVector && v8 >= 2)
    {
      *(a1 + 746) = *IntVector;
      *(a1 + 747) = IntVector[1];
    }

LABEL_11:
    ures_close(v5);
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1953B5B98(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953B5BD0(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, uint64_t a5)
{
  v17 = 0;
  v18 = a2;
  memset(v16, 0, sizeof(v16));
  (*(*a3 + 88))(v16, a3, a5);
  v15 = 0;
  result = icu::ResourceTable::getKeyAndValue(v16, 0, &v18, a3);
  if (result)
  {
    v9 = 1;
    do
    {
      v10 = atoi(v18);
      if (v10 >= -2)
      {
        v11 = (v10 + 2);
        if (v11 < *(a1 + 16))
        {
          v12 = *(a1 + 8) + 16 * v11;
          if (!*(v12 + 8))
          {
            *v12 = v10;
            v13 = (*(*a3 + 32))(a3, &v15, a5);
            v14 = *(a1 + 8) + 16 * v11;
            *(v14 + 8) = v13;
            *(v14 + 4) = v15;
          }
        }
      }

      result = icu::ResourceTable::getKeyAndValue(v16, v9++, &v18, a3);
    }

    while (result);
  }

  return result;
}

icu::RegexMatcher *icu::RegexMatcher::RegexMatcher(icu::RegexMatcher *this, const icu::RegexPattern *a2)
{
  *this = &unk_1F0941E18;
  v4 = (this + 316);
  *(this + 79) = 0;
  icu::RegexMatcher::init(this, this + 79);
  if (*(this + 79) <= 0)
  {
    if (a2)
    {
      *(this + 1) = a2;
      icu::RegexMatcher::init2(this, *(qword_1ED443488 + 3832), v4);
    }

    else
    {
      *v4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return this;
}

double icu::RegexMatcher::init(icu::RegexMatcher *this, UErrorCode *a2)
{
  *(this + 14) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 128) = 0;
  *(this + 129) = 1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 152) = xmmword_195492710;
  *(this + 84) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 264) = xmmword_195492720;
  *(this + 313) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 79) = *a2;
  *(this + 24) = this + 200;
  *(this + 312) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 40) = 0;
  *(this + 41) = 0;
  return result;
}

void *icu::RegexMatcher::init2(void *this, UText *a2, UErrorCode *a3)
{
  v3 = this;
  if (*a3 >= 1)
  {
    *(this + 79) = *a3;
  }

  else
  {
    v5 = *(this[1] + 132);
    if (v5 < 9 || (this = malloc_type_malloc(8 * v5, 0x100004000313F17uLL), (v3[24] = this) != 0))
    {
      operator new();
    }

    *(v3 + 79) = 7;
    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }

  return this;
}

icu::RegexMatcher *icu::RegexMatcher::RegexMatcher(icu::RegexMatcher *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, const icu::UnicodeString *a4, UErrorCode *a5)
{
  *this = &unk_1F0941E18;
  icu::RegexMatcher::init(this, a5);
  if (*a5 <= 0)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v11 = icu::RegexPattern::compile(a2, a4, v14, a5, v10);
    *(this + 1) = v11;
    *(this + 2) = v11;
    memset(&v13, 0, sizeof(v13));
    v13.magic = 878368812;
    v13.sizeOfStruct = 144;
    utext_openConstUnicodeString(&v13, a3, a5);
    icu::RegexMatcher::init2(this, &v13, a5);
    utext_close(&v13);
    *(this + 312) = 1;
  }

  return this;
}

icu::RegexMatcher *icu::RegexMatcher::RegexMatcher(icu::RegexMatcher *this, UText *a2, UText *a3, UText *a4, UErrorCode *a5)
{
  *this = &unk_1F0941E18;
  icu::RegexMatcher::init(this, a5);
  if (*a5 <= 0)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v11 = icu::RegexPattern::compile(a2, a4, v13, a5, v10);
    *(this + 2) = v11;
    if (*a5 <= 0)
    {
      *(this + 1) = v11;
      icu::RegexMatcher::init2(this, a3, a5);
    }
  }

  return this;
}

icu::RegexMatcher *icu::RegexMatcher::RegexMatcher(icu::RegexMatcher *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, UErrorCode *a4)
{
  *this = &unk_1F0941E18;
  icu::RegexMatcher::init(this, a4);
  if (*a4 <= 0)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    v9 = icu::RegexPattern::compile(a2, a3, v11, a4, v8);
    *(this + 2) = v9;
    if (*a4 <= 0)
    {
      *(this + 1) = v9;
      icu::RegexMatcher::init2(this, *(qword_1ED443488 + 3832), a4);
    }
  }

  return this;
}

icu::RegexMatcher *icu::RegexMatcher::RegexMatcher(icu::RegexMatcher *this, UText *a2, UText *a3, UErrorCode *a4)
{
  *this = &unk_1F0941E18;
  icu::RegexMatcher::init(this, a4);
  if (*a4 <= 0)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    v9 = icu::RegexPattern::compile(a2, a3, v11, a4, v8);
    *(this + 2) = v9;
    if (*a4 <= 0)
    {
      *(this + 1) = v9;
      icu::RegexMatcher::init2(this, *(qword_1ED443488 + 3832), a4);
    }
  }

  return this;
}

void icu::RegexMatcher::~RegexMatcher(icu::RegexMatcher *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 24);
  if (v3 != this + 200)
  {
    free(v3);
    *(this + 24) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    icu::RegexPattern::~RegexPattern(v4);
    MEMORY[0x19A8B2600]();
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  v5 = *(this + 3);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    utext_close(v6);
  }

  v7 = *(this + 5);
  if (v7)
  {
    utext_close(v7);
  }

  v8 = *(this + 40);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 41);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  icu::UObject::~UObject(this);
}

{
  icu::RegexMatcher::~RegexMatcher(this);

  JUMPOUT(0x19A8B2600);
}

icu::RegexMatcher *icu::RegexMatcher::reset(icu::RegexMatcher *this, UText *a2)
{
  v3 = *(this + 4);
  if (v3 == a2)
  {
LABEL_11:
    v9 = *(this + 6);
    *(this + 8) = 0;
    *(this + 9) = v9;
    *(this + 14) = 0;
    *(this + 15) = v9;
    *(this + 10) = 0;
    *(this + 11) = v9;
    *(this + 12) = 0;
    *(this + 13) = v9;
    *(this + 17) = 0;
    *(this + 18) = 0;
    *(this + 152) = xmmword_195492710;
    *(this + 130) = 0;
    *(this + 84) = 0;
    *(this + 268) = 0x271000000000;
    *(this + 312) = 0;
    return this;
  }

  v5 = utext_clone(v3, a2, 0, 1, this + 79);
  *(this + 4) = v5;
  if (*(*(this + 1) + 184))
  {
    *(this + 5) = utext_clone(*(this + 5), v5, 0, 1, this + 79);
  }

  if (*(this + 79) <= 0)
  {
    *(this + 6) = utext_nativeLength(*(this + 4));
    v6 = *(this + 3);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(this + 3) = 0;
    v7 = *(this + 40);
    if (v7)
    {
      (*(*v7 + 64))(v7, a2, this + 316);
    }

    v8 = *(this + 41);
    if (v8)
    {
      (*(*v8 + 64))(v8, *(this + 4), this + 316);
    }

    goto LABEL_11;
  }

  return this;
}

char *icu::RegexMatcher::setStackLimit(char *this, unsigned int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v3 = this;
    v4 = *(this + 79);
    if (v4 >= U_ILLEGAL_ARGUMENT_ERROR)
    {
LABEL_3:
      *a3 = v4;
      return this;
    }

    if ((a2 & 0x80000000) != 0)
    {
      v4 = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_3;
    }

    v6 = *(this + 6);
    *(this + 8) = 0;
    *(this + 9) = v6;
    *(this + 14) = 0;
    *(this + 15) = v6;
    *(this + 10) = 0;
    *(this + 11) = v6;
    *(this + 12) = 0;
    *(this + 13) = v6;
    *(this + 17) = 0;
    *(this + 18) = 0;
    *(this + 152) = xmmword_195492710;
    this[130] = 0;
    *(this + 84) = 0;
    *(this + 268) = 0x271000000000;
    if (a2)
    {
      if ((a2 >> 2) <= *(*(this + 1) + 128))
      {
        v7 = *(*(this + 1) + 128);
      }

      else
      {
        v7 = a2 >> 2;
      }
    }

    else
    {
      v7 = 0;
    }

    this = icu::UVector64::setMaxCapacity(*(this + 22), v7);
    v3[69] = a2;
  }

  return this;
}

icu::RegexMatcher *icu::RegexMatcher::appendReplacement(icu::RegexMatcher *this, icu::UnicodeString *a2, const icu::UnicodeString *a3, UErrorCode *status)
{
  memset(&ut, 0, sizeof(ut));
  ut.magic = 878368812;
  ut.sizeOfStruct = 144;
  utext_openConstUnicodeString(&ut, a3, status);
  if (*status <= 0)
  {
    memset(&v8, 0, sizeof(v8));
    v8.magic = 878368812;
    v8.sizeOfStruct = 144;
    utext_openUnicodeString(&v8, a2, status);
    if (*status <= 0)
    {
      icu::RegexMatcher::appendReplacement(this, &v8, &ut, status);
      utext_close(&v8);
    }

    utext_close(&ut);
  }

  return this;
}

icu::RegexMatcher *icu::RegexMatcher::appendReplacement(icu::RegexMatcher *this, UText *ut, UText *a3, UErrorCode *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v6 = *(this + 79);
    if (v6 > U_ZERO_ERROR)
    {
LABEL_3:
      *a4 = v6;
      goto LABEL_4;
    }

    if (!*(this + 130))
    {
      v6 = U_REGEX_INVALID_STATE;
      goto LABEL_3;
    }

    v11 = utext_nativeLength(ut);
    v12 = *(this + 17);
    v13 = *(this + 20);
    if (v12 > v13)
    {
      v14 = *(this + 4);
      if (!v14->chunkNativeStart && (v15 = *(this + 6), v15 == v14->chunkNativeLimit) && v15 == v14->nativeIndexingLimit)
      {
        v11 += utext_replace(ut, v11, v11, &v14->chunkContents[v13], v12 - v13, a4);
      }

      else
      {
        if (v14->pFuncs->mapNativeIndexToUTF16)
        {
          status[0] = U_ZERO_ERROR;
          v16 = utext_extract(v14, v13, v12, 0, 0, status);
        }

        else
        {
          v16 = v12 - v13;
        }

        v17 = malloc_type_malloc(2 * (v16 + 1), 0x1000040BDFB0063uLL);
        if (!v17)
        {
          v6 = U_MEMORY_ALLOCATION_ERROR;
          goto LABEL_3;
        }

        v18 = v17;
        utext_extract(*(this + 4), *(this + 20), *(this + 17), v17, v16 + 1, a4);
        v11 += utext_replace(ut, v11, v11, v18, v16, a4);
        free(v18);
      }
    }

    *(this + 20) = *(this + 18);
    chunkNativeStart = a3->chunkNativeStart;
    if (chunkNativeStart > 0 || (v20 = -chunkNativeStart, v20 >= a3->nativeIndexingLimit) || a3->chunkContents[v20] >> 10 > 0x36u)
    {
      utext_setNativeIndex(a3, 0);
      LODWORD(v20) = a3->chunkOffset;
    }

    else
    {
      a3->chunkOffset = v20;
    }

    if (v20 >= a3->chunkLength || (v21 = a3->chunkContents[v20], v21 >> 11 > 0x1A))
    {
      v21 = utext_next32(a3);
    }

    else
    {
      a3->chunkOffset = v20 + 1;
    }

    while (*a4 <= 0 && v21 != -1)
    {
      if (v21 == 36)
      {
        v29 = utext_current32(a3);
        if (v29 == 123)
        {
          v54 = 0;
          v53 = 0u;
          v52 = 0u;
          v51 = 0u;
          *status = &unk_1F0935D00;
          LOWORD(v51) = 2;
          utext_next32(a3);
          v30 = *a4;
          if (v30 > 0)
          {
            v31 = 0;
            goto LABEL_40;
          }

          while (2)
          {
            v32 = utext_next32(a3);
            v33 = v32;
            if (v32 == -1)
            {
LABEL_45:
              *a4 = U_REGEX_INVALID_CAPTURE_GROUP_NAME;
            }

            else
            {
              if ((v32 - 49) >= 9)
              {
                v30 = ((v32 & 0xFFFFFFDF) - 65);
                if (v30 > 0x19)
                {
                  if (v32 == 125)
                  {
                    v30 = *(this + 1);
                    v46 = v30[24];
                    if (!v46 || (v31 = uhash_geti(v46, status)) == 0)
                    {
                      v31 = 0;
                      *a4 = U_REGEX_INVALID_CAPTURE_GROUP_NAME;
                    }

LABEL_40:
                    icu::UnicodeString::~UnicodeString(v30, status);
                    goto LABEL_88;
                  }

                  goto LABEL_45;
                }
              }

              icu::UnicodeString::append(status, v32);
            }

            v31 = 0;
            if (v33 == 125)
            {
              goto LABEL_40;
            }

            v30 = *a4;
            if (v30 >= 1)
            {
              goto LABEL_40;
            }

            continue;
          }
        }

        if (u_isdigit(v29))
        {
          v34 = 0;
          v31 = 0;
          v35 = *(*(*(this + 1) + 136) + 8);
          while (1)
          {
            chunkOffset = a3->chunkOffset;
            if (chunkOffset >= a3->chunkLength || (v37 = a3->chunkContents[chunkOffset], v37 >> 11 > 0x1A))
            {
              v37 = utext_current32(a3);
              if (v37 == -1)
              {
                goto LABEL_88;
              }
            }

            if (!u_isdigit(v37))
            {
              goto LABEL_88;
            }

            v38 = u_charDigitValue(v37) + 10 * v31;
            if (v38 > v35)
            {
              break;
            }

            v39 = a3->chunkOffset;
            if (v39 >= a3->chunkLength || a3->chunkContents[v39] >> 11 > 0x1Au)
            {
              utext_next32(a3);
            }

            else
            {
              a3->chunkOffset = v39 + 1;
            }

            --v34;
            v31 = v38;
          }

          if (v34)
          {
LABEL_88:
            if (*a4 <= 0)
            {
              v11 += icu::RegexMatcher::appendGroup(this, v31, ut, a4);
            }
          }

          else
          {
            *a4 = U_INDEX_OUTOFBOUNDS_ERROR;
          }
        }

        else
        {
          *a4 = U_REGEX_INVALID_CAPTURE_GROUP_NAME;
        }
      }

      else
      {
        if (v21 != 92)
        {
          if (!HIWORD(v21))
          {
            LOWORD(status[0]) = v21;
            goto LABEL_72;
          }

          LOWORD(status[0]) = (v21 >> 10) - 10304;
          HIWORD(status[0]) = v21 & 0x3FF | 0xDC00;
LABEL_65:
          v40 = ut;
          v41 = v11;
          v42 = v11;
          v43 = 2;
LABEL_73:
          v11 += utext_replace(v40, v41, v42, status, v43, a4);
          goto LABEL_95;
        }

        v22 = a3->chunkOffset;
        if (v22 >= a3->chunkLength || (v23 = a3->chunkContents[v22], v23 >> 11 > 0x1A))
        {
          v23 = utext_current32(a3);
          if (v23 == -1)
          {
            break;
          }
        }

        if ((v23 & 0xFFFFFFDF) == 0x55)
        {
          offset = 0;
          *status = a3;
          *&v51 = 0xFFFFFFFFLL;
          v24 = u_unescapeAt(sub_1953AD1AC, &offset, 0x7FFFFFFF, status);
          if (v24 != -1)
          {
            if (!HIWORD(v24))
            {
              v48[0] = v24;
              v25 = ut;
              v26 = v11;
              v27 = v11;
              v28 = 1;
              goto LABEL_80;
            }

            v48[0] = (v24 >> 10) - 10304;
            v48[1] = v24 & 0x3FF | 0xDC00;
            if (*a4 <= 0)
            {
              v25 = ut;
              v26 = v11;
              v27 = v11;
              v28 = 2;
LABEL_80:
              v11 += utext_replace(v25, v26, v27, v48, v28, a4);
            }

            if (v51 == offset)
            {
              v45 = a3->chunkOffset;
              if (v45 < 1 || a3->chunkContents[v45 - 1] >> 11 > 0x1Au)
              {
                utext_previous32(a3);
              }

              else
              {
                a3->chunkOffset = v45 - 1;
              }
            }

            else if (v51 != offset - 1)
            {
              utext_moveIndex32(a3, offset + ~v51);
            }
          }
        }

        else
        {
          v44 = a3->chunkOffset;
          if (v44 >= a3->chunkLength || a3->chunkContents[v44] >> 11 > 0x1Au)
          {
            utext_next32(a3);
          }

          else
          {
            a3->chunkOffset = v44 + 1;
          }

          if (!HIWORD(v23))
          {
            LOWORD(status[0]) = v23;
LABEL_72:
            v40 = ut;
            v41 = v11;
            v42 = v11;
            v43 = 1;
            goto LABEL_73;
          }

          LOWORD(status[0]) = (v23 >> 10) - 10304;
          HIWORD(status[0]) = v23 & 0x3FF | 0xDC00;
          if (*a4 <= 0)
          {
            goto LABEL_65;
          }
        }
      }

LABEL_95:
      v47 = a3->chunkOffset;
      if (v47 >= a3->chunkLength || (v21 = a3->chunkContents[v47], v21 >> 11 > 0x1A))
      {
        v21 = utext_next32(a3);
      }

      else
      {
        a3->chunkOffset = v47 + 1;
      }
    }
  }

LABEL_4:
  v7 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::RegexMatcher::appendGroup(icu::RegexMatcher *this, unsigned int a2, UText *ut, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v7 = *(this + 79);
    if (v7 >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      v4 = 0;
LABEL_5:
      *a4 = v7;
      return v4;
    }

    v10 = utext_nativeLength(ut);
    if (*(this + 130))
    {
      if ((a2 & 0x80000000) == 0)
      {
        v11 = *(*(this + 1) + 136);
        if (*(v11 + 8) >= a2)
        {
          if (a2)
          {
            v19 = *(this + 23) + 8 * *(*(v11 + 24) + 4 * a2 - 4);
            v20 = (v19 + 16);
            v21 = (v19 + 24);
          }

          else
          {
            v20 = (this + 136);
            v21 = (this + 144);
          }

          v22 = *v20;
          if ((*v20 & 0x8000000000000000) == 0)
          {
            v23 = *v21;
            v24 = *(this + 4);
            if (v24->chunkNativeStart || (v25 = *(this + 6), v25 != v24->chunkNativeLimit) || v25 != v24->nativeIndexingLimit)
            {
              if (v24->pFuncs->mapNativeIndexToUTF16)
              {
                status = U_ZERO_ERROR;
                v26 = utext_extract(v24, v22, v23, 0, 0, &status);
              }

              else
              {
                v26 = v23 - v22;
              }

              v27 = malloc_type_malloc(2 * (v26 + 1), 0x1000040BDFB0063uLL);
              if (v27)
              {
                v28 = v27;
                utext_extract(*(this + 4), v22, v23, v27, v26 + 1, a4);
                v4 = utext_replace(ut, v10, v10, v28, v26, a4);
                free(v28);
                return v4;
              }

              v4 = 0;
              v7 = U_MEMORY_ALLOCATION_ERROR;
              goto LABEL_5;
            }

            v16 = &v24->chunkContents[v22];
            v17 = v23 - v22;
            v13 = ut;
            v14 = v10;
            v15 = v10;
            return utext_replace(v13, v14, v15, v16, v17, a4);
          }

LABEL_12:
          v13 = ut;
          v14 = v10;
          v15 = v10;
          v16 = 0;
          v17 = 0;
          return utext_replace(v13, v14, v15, v16, v17, a4);
        }
      }

      v12 = U_INDEX_OUTOFBOUNDS_ERROR;
    }

    else
    {
      v12 = U_REGEX_INVALID_STATE;
    }

    *a4 = v12;
    goto LABEL_12;
  }

  return 0;
}

icu::UnicodeString *icu::RegexMatcher::appendTail(icu::RegexMatcher *this, icu::UnicodeString *a2)
{
  status = U_ZERO_ERROR;
  memset(&v5, 0, sizeof(v5));
  v5.magic = 878368812;
  v5.sizeOfStruct = 144;
  utext_openUnicodeString(&v5, a2, &status);
  if (status <= U_ZERO_ERROR)
  {
    icu::RegexMatcher::appendTail(this, &v5, &status);
    utext_close(&v5);
  }

  return a2;
}

UText *icu::RegexMatcher::appendTail(icu::RegexMatcher *this, UText *ut, UErrorCode *status)
{
  if (*status <= 0)
  {
    v6 = *(this + 79);
    if (v6 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      v7 = *(this + 6);
      v8 = *(this + 20);
      if (v7 > v8)
      {
        v9 = *(this + 4);
        if (!v9->chunkNativeStart && v7 == v9->chunkNativeLimit && v7 == v9->nativeIndexingLimit)
        {
          v10 = utext_nativeLength(ut);
          utext_replace(ut, v10, v10, (*(*(this + 4) + 48) + 2 * *(this + 20)), *(this + 12) - *(this + 20), status);
        }

        else
        {
          if (v9->pFuncs->mapNativeIndexToUTF16)
          {
            v11 = utext_extract(v9, v8, v7, 0, 0, status);
            *status = U_ZERO_ERROR;
          }

          else
          {
            v11 = v7 - v8;
          }

          v12 = malloc_type_malloc(2 * v11, 0x1000040BDFB0063uLL);
          if (v12)
          {
            v13 = v12;
            utext_extract(*(this + 4), *(this + 20), *(this + 6), v12, v11, status);
            v14 = utext_nativeLength(ut);
            utext_replace(ut, v14, v14, v13, v11, status);
            free(v13);
          }

          else
          {
            *(this + 79) = 7;
          }
        }
      }
    }

    else
    {
      *status = v6;
    }
  }

  return ut;
}

uint64_t icu::RegexMatcher::end(icu::RegexMatcher *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    if (*(this + 130))
    {
      if ((*(*(*(this + 1) + 136) + 8) & 0x80000000) == 0)
      {
        return *(this + 36);
      }

      v3 = U_INDEX_OUTOFBOUNDS_ERROR;
    }

    else
    {
      v3 = U_REGEX_INVALID_STATE;
    }

    *a2 = v3;
  }

  return 0xFFFFFFFFLL;
}

uint64_t icu::RegexMatcher::end64(icu::RegexMatcher *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    if (*(this + 130))
    {
      if ((*(*(*(this + 1) + 136) + 8) & 0x80000000) == 0)
      {
        return *(this + 18);
      }

      v3 = U_INDEX_OUTOFBOUNDS_ERROR;
    }

    else
    {
      v3 = U_REGEX_INVALID_STATE;
    }

    *a2 = v3;
  }

  return -1;
}

uint64_t icu::RegexMatcher::end64(icu::RegexMatcher *this, unsigned int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return -1;
  }

  if (!*(this + 130))
  {
    v4 = U_REGEX_INVALID_STATE;
    goto LABEL_7;
  }

  if ((a2 & 0x80000000) != 0 || (v3 = *(*(this + 1) + 136), *(v3 + 8) < a2))
  {
    v4 = U_INDEX_OUTOFBOUNDS_ERROR;
LABEL_7:
    *a3 = v4;
    return -1;
  }

  if (a2)
  {
    v6 = (*(this + 23) + 8 * *(*(v3 + 24) + 4 * a2 - 4) + 24);
  }

  else
  {
    v6 = this + 144;
  }

  return *v6;
}

uint64_t icu::RegexMatcher::find(icu::RegexMatcher *this)
{
  if (*(this + 79) > 0)
  {
    return 0;
  }

  v5 = v1;
  v6 = v2;
  v4 = 0;
  return icu::RegexMatcher::find(this, &v4);
}

uint64_t icu::RegexMatcher::find(icu::RegexMatcher *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = *(this + 79);
  if (v5 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v2 = 0;
LABEL_5:
    *a2 = v5;
    return v2;
  }

  v6 = *(this + 4);
  chunkNativeStart = v6->chunkNativeStart;
  if (chunkNativeStart || (v8 = *(this + 6), v8 != v6->chunkNativeLimit) || v8 != v6->nativeIndexingLimit)
  {
    v10 = *(this + 18);
    v11 = v10;
    if (!v10)
    {
      v11 = *(this + 14);
    }

    if (*(this + 130))
    {
      *(this + 19) = v10;
      if (*(this + 17) == v10)
      {
        if (v11 >= *(this + 15))
        {
LABEL_34:
          v2 = 0;
          *(this + 130) = 0;
          goto LABEL_35;
        }

        v12 = v11 - chunkNativeStart;
        if (v12 < 0 || v12 >= v6->nativeIndexingLimit || v6->chunkContents[v12] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v6, v11);
          v6 = *(this + 4);
          LODWORD(v12) = v6->chunkOffset;
        }

        else
        {
          v6->chunkOffset = v12;
        }

        if (v12 >= v6->chunkLength || v6->chunkContents[v12] >> 11 > 0x1Au)
        {
          utext_next32(v6);
          v6 = *(this + 4);
          chunkOffset = v6->chunkOffset;
        }

        else
        {
          chunkOffset = v12 + 1;
          v6->chunkOffset = chunkOffset;
        }

        if (chunkOffset <= v6->nativeIndexingLimit)
        {
          v11 = v6->chunkNativeStart + chunkOffset;
        }

        else
        {
          v11 = (v6->pFuncs->mapOffsetToNative)();
          v6 = *(this + 4);
        }
      }
    }

    else if ((*(this + 19) & 0x8000000000000000) == 0)
    {
LABEL_22:
      v2 = 0;
LABEL_35:
      *(this + 168) = 1;
      return v2;
    }

    v14 = *(this + 15);
    v15 = *(this + 1);
    v16 = v15[31];
    if (v6->pFuncs->mapNativeIndexToUTF16)
    {
      v17 = v14 - (v16 > 0);
LABEL_37:
      v18 = v15[36];
      if (v18 <= 2)
      {
        if (v18)
        {
          if (v18 != 1)
          {
            if (v18 == 2)
            {
              v19 = v11 - v6->chunkNativeStart;
              if (v19 < 0 || v19 >= v6->nativeIndexingLimit || v6->chunkContents[v19] >> 10 > 0x36u)
              {
                utext_setNativeIndex(v6, v11);
              }

              else
              {
                v6->chunkOffset = v19;
              }

              while (1)
              {
                v34 = *(this + 4);
                v35 = v34->chunkOffset;
                if (v35 >= v34->chunkLength || (v36 = v34->chunkContents[v35], v36 >> 11 > 0x1A))
                {
                  v36 = utext_next32(v34);
                  v34 = *(this + 4);
                  v37 = v34->chunkOffset;
                }

                else
                {
                  v37 = v35 + 1;
                  v34->chunkOffset = v37;
                }

                if (v37 <= v34->nativeIndexingLimit)
                {
                  v38 = v34->chunkNativeStart + v37;
                  if ((v36 & 0x80000000) != 0)
                  {
                    goto LABEL_119;
                  }
                }

                else
                {
                  v38 = (v34->pFuncs->mapOffsetToNative)();
                  if ((v36 & 0x80000000) != 0)
                  {
                    goto LABEL_119;
                  }
                }

                v39 = *(this + 1);
                if (v36 > 0xFF)
                {
                  if (icu::UnicodeSet::contains(*(v39 + 160), v36))
                  {
LABEL_112:
                    icu::RegexMatcher::MatchAt(this, v11, 0, a2);
                    if (*a2 > 0)
                    {
                      return 0;
                    }

                    if (*(this + 130))
                    {
                      return 1;
                    }

                    v40 = *(this + 4);
                    v41 = v11 - v40->chunkNativeStart;
                    if (v41 < 0 || v41 >= v40->nativeIndexingLimit || v40->chunkContents[v41] >> 10 > 0x36u)
                    {
                      utext_setNativeIndex(v40, v11);
                    }

                    else
                    {
                      v40->chunkOffset = v41;
                    }
                  }
                }

                else if ((*(*(v39 + 176) + (v36 >> 3)) >> (v36 & 7)))
                {
                  goto LABEL_112;
                }

LABEL_119:
                if (v38 > v17)
                {
                  goto LABEL_34;
                }

                v42 = *(this + 37);
                v11 = v38;
                if (v42)
                {
                  v11 = v38;
                  if (!v42(*(this + 38), v38))
                  {
                    goto LABEL_194;
                  }
                }
              }
            }

LABEL_94:
            v2 = 0;
            v5 = U_INTERNAL_PROGRAM_ERROR;
            goto LABEL_5;
          }

          goto LABEL_48;
        }

        icu::RegexMatcher::MatchAt(this, v11, 0, a2);
        if (*a2 <= 0)
        {
          while (!*(this + 130))
          {
            if (v11 >= v17)
            {
              goto LABEL_22;
            }

            v30 = *(this + 4);
            v31 = v11 - v30->chunkNativeStart;
            if (v31 < 0 || v31 >= v30->nativeIndexingLimit || v30->chunkContents[v31] >> 10 > 0x36u)
            {
              utext_setNativeIndex(v30, v11);
              v30 = *(this + 4);
              LODWORD(v31) = v30->chunkOffset;
            }

            else
            {
              v30->chunkOffset = v31;
            }

            if (v31 >= v30->chunkLength || v30->chunkContents[v31] >> 11 > 0x1Au)
            {
              utext_next32(v30);
              v30 = *(this + 4);
              v32 = v30->chunkOffset;
            }

            else
            {
              v32 = v31 + 1;
              v30->chunkOffset = v32;
            }

            if (v32 <= v30->nativeIndexingLimit)
            {
              v11 = v30->chunkNativeStart + v32;
            }

            else
            {
              v11 = (v30->pFuncs->mapOffsetToNative)();
            }

            v33 = *(this + 37);
            if (v33 && !v33(*(this + 38), v11))
            {
              goto LABEL_194;
            }

            icu::RegexMatcher::MatchAt(this, v11, 0, a2);
            v2 = 0;
            if (*a2 >= 1)
            {
              return v2;
            }
          }

          return 1;
        }

        return 0;
      }

      if (v18 == 3)
      {
        if (v11 > *(this + 14))
        {
          v2 = 0;
          *(this + 130) = 0;
          return v2;
        }

        icu::RegexMatcher::MatchAt(this, v11, 0, a2);
        if (*a2 <= 0)
        {
          return *(this + 130);
        }

        return 0;
      }

      if (v18 != 4)
      {
        if (v18 != 5)
        {
          goto LABEL_94;
        }

LABEL_48:
        v20 = v15[42];
        v21 = v11 - v6->chunkNativeStart;
        if (v21 < 0 || v21 >= v6->nativeIndexingLimit || v6->chunkContents[v21] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v6, v11);
        }

        else
        {
          v6->chunkOffset = v21;
        }

        while (1)
        {
          v22 = *(this + 4);
          v23 = v22->chunkOffset;
          if (v23 >= v22->chunkLength || (v24 = v22->chunkContents[v23], v24 >> 11 > 0x1A))
          {
            v24 = utext_next32(v22);
            v22 = *(this + 4);
            v25 = v22->chunkOffset;
          }

          else
          {
            v25 = v23 + 1;
            v22->chunkOffset = v25;
          }

          if (v25 <= v22->nativeIndexingLimit)
          {
            v26 = v22->chunkNativeStart + v25;
          }

          else
          {
            v26 = (v22->pFuncs->mapOffsetToNative)();
          }

          if (v24 == v20)
          {
            icu::RegexMatcher::MatchAt(this, v11, 0, a2);
            if (*a2 > 0)
            {
              return 0;
            }

            if (*(this + 130))
            {
              return 1;
            }

            v27 = *(this + 4);
            v28 = v26 - v27->chunkNativeStart;
            if (v28 < 0 || v28 >= v27->nativeIndexingLimit || v27->chunkContents[v28] >> 10 > 0x36u)
            {
              utext_setNativeIndex(v27, v26);
            }

            else
            {
              v27->chunkOffset = v28;
            }
          }

          if (v26 > v17)
          {
            goto LABEL_34;
          }

          v29 = *(this + 37);
          v11 = v26;
          if (v29)
          {
            v11 = v26;
            if (!v29(*(this + 38), v26))
            {
              break;
            }
          }
        }

LABEL_194:
        v2 = 0;
        v5 = U_REGEX_STOPPED_BY_CALLER;
        goto LABEL_5;
      }

      if (v11 == *(this + 10))
      {
        icu::RegexMatcher::MatchAt(this, v11, 0, a2);
        if (*a2 > 0)
        {
          return 0;
        }

        if (*(this + 130))
        {
          return 1;
        }

        v66 = *(this + 4);
        v67 = v11 - v66->chunkNativeStart;
        if (v67 < 0 || v67 >= v66->nativeIndexingLimit || v66->chunkContents[v67] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v66, v11);
          v66 = *(this + 4);
          LODWORD(v67) = v66->chunkOffset;
        }

        else
        {
          v66->chunkOffset = v67;
        }

        if (v67 >= v66->chunkLength || (v46 = v66->chunkContents[v67], v46 >> 11 > 0x1A))
        {
          v46 = utext_next32(v66);
          v66 = *(this + 4);
          v68 = v66->chunkOffset;
        }

        else
        {
          v68 = v67 + 1;
          v66->chunkOffset = v68;
        }

        if (v68 <= v66->nativeIndexingLimit)
        {
          v11 = v66->chunkNativeStart + v68;
        }

        else
        {
          v11 = (v66->pFuncs->mapOffsetToNative)();
        }
      }

      else
      {
        v43 = v11 - v6->chunkNativeStart;
        if (v43 < 0 || v43 >= v6->nativeIndexingLimit || v6->chunkContents[v43] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v6, v11);
          v6 = *(this + 4);
          LODWORD(v43) = v6->chunkOffset;
        }

        else
        {
          v6->chunkOffset = v43;
        }

        v44 = v43 - 1;
        if (v43 < 1 || (chunkContents = v6->chunkContents, chunkContents[v43 - 1] >> 11 > 0x1Au))
        {
          v46 = utext_previous32(v6);
          v6 = *(this + 4);
        }

        else
        {
          v6->chunkOffset = v44;
          v46 = chunkContents[v44];
        }

        v47 = v11 - v6->chunkNativeStart;
        if (v47 < 0 || v47 >= v6->nativeIndexingLimit || v6->chunkContents[v47] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v6, v11);
        }

        else
        {
          v6->chunkOffset = v47;
        }
      }

      if (*(*(this + 1) + 24))
      {
        do
        {
          if (v46 == 10)
          {
            icu::RegexMatcher::MatchAt(this, v11, 0, a2);
            if (*a2 > 0)
            {
              return 0;
            }

            if (*(this + 130))
            {
              return 1;
            }

            v60 = *(this + 4);
            v61 = v11 - v60->chunkNativeStart;
            if (v61 < 0 || v61 >= v60->nativeIndexingLimit || v60->chunkContents[v61] >> 10 > 0x36u)
            {
              utext_setNativeIndex(v60, v11);
            }

            else
            {
              v60->chunkOffset = v61;
            }
          }

          if (v11 >= v17)
          {
            goto LABEL_34;
          }

          v62 = *(this + 4);
          v63 = v62->chunkOffset;
          if (v63 >= v62->chunkLength || (v46 = v62->chunkContents[v63], v46 >> 11 > 0x1A))
          {
            v46 = utext_next32(v62);
            v62 = *(this + 4);
            v64 = v62->chunkOffset;
          }

          else
          {
            v64 = v63 + 1;
            v62->chunkOffset = v64;
          }

          if (v64 <= v62->nativeIndexingLimit)
          {
            v11 = v62->chunkNativeStart + v64;
          }

          else
          {
            v11 = (v62->pFuncs->mapOffsetToNative)();
          }

          v65 = *(this + 37);
        }

        while (!v65 || v65(*(this + 38), v11));
        goto LABEL_194;
      }

      while (1)
      {
        if ((v46 & 0xFFFFDF50) == 0)
        {
          if (v46 > 132)
          {
            if (v46 - 8232 < 2 || v46 == 133)
            {
              goto LABEL_154;
            }
          }

          else
          {
            if (v46 - 10 < 3)
            {
              goto LABEL_154;
            }

            if (v46 == 13)
            {
              if (v11 < *(this + 15))
              {
                v48 = *(this + 4);
                v49 = v48->chunkOffset;
                if (v49 >= v48->chunkLength || (v50 = v48->chunkContents[v49], v50 >> 11 > 0x1A))
                {
                  v50 = utext_current32(v48);
                }

                if (v50 == 10)
                {
                  v51 = *(this + 4);
                  v52 = v51->chunkOffset;
                  if (v52 >= v51->chunkLength || v51->chunkContents[v52] >> 11 > 0x1Au)
                  {
                    utext_next32(v51);
                    v51 = *(this + 4);
                    v53 = v51->chunkOffset;
                  }

                  else
                  {
                    v53 = v52 + 1;
                    v51->chunkOffset = v53;
                  }

                  if (v53 <= v51->nativeIndexingLimit)
                  {
                    v11 = v51->chunkNativeStart + v53;
                  }

                  else
                  {
                    v11 = (v51->pFuncs->mapOffsetToNative)();
                  }
                }
              }

LABEL_154:
              icu::RegexMatcher::MatchAt(this, v11, 0, a2);
              if (*a2 > 0)
              {
                return 0;
              }

              if (*(this + 130))
              {
                return 1;
              }

              v54 = *(this + 4);
              v55 = v11 - v54->chunkNativeStart;
              if (v55 < 0 || v55 >= v54->nativeIndexingLimit || v54->chunkContents[v55] >> 10 > 0x36u)
              {
                utext_setNativeIndex(v54, v11);
              }

              else
              {
                v54->chunkOffset = v55;
              }
            }
          }
        }

        if (v11 >= v17)
        {
          goto LABEL_34;
        }

        v56 = *(this + 4);
        v57 = v56->chunkOffset;
        if (v57 >= v56->chunkLength || (v46 = v56->chunkContents[v57], v46 >> 11 > 0x1A))
        {
          v46 = utext_next32(v56);
          v56 = *(this + 4);
          v58 = v56->chunkOffset;
        }

        else
        {
          v58 = v57 + 1;
          v56->chunkOffset = v58;
        }

        if (v58 <= v56->nativeIndexingLimit)
        {
          v11 = v56->chunkNativeStart + v58;
        }

        else
        {
          v11 = (v56->pFuncs->mapOffsetToNative)();
        }

        v59 = *(this + 37);
        if (v59 && !v59(*(this + 38), v11))
        {
          goto LABEL_194;
        }
      }
    }

    v17 = v14 - v16;
    if (v11 <= v14 - v16)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  return icu::RegexMatcher::findUsingChunk(this, a2);
}

uint64_t icu::RegexMatcher::findUsingChunk(icu::RegexMatcher *this, UErrorCode *a2)
{
  v4 = *(this + 18);
  v5 = v4;
  if (!v4)
  {
    v5 = *(this + 28);
  }

  v6 = *(*(this + 4) + 48);
  if (*(this + 130))
  {
    *(this + 19) = v4;
    if (*(this + 17) == v4)
    {
      if (*(this + 15) <= v5)
      {
LABEL_15:
        v8 = 0;
        *(this + 130) = 0;
        goto LABEL_16;
      }

      v7 = v5 + 1;
      if ((*(v6 + 2 * v5) & 0xFC00) == 0xD800 && *(this + 6) != v7)
      {
        if ((*(v6 + 2 * v7) & 0xFC00) == 0xDC00)
        {
          v5 += 2;
        }

        else
        {
          ++v5;
        }
      }

      else
      {
        ++v5;
      }
    }
  }

  else if ((*(this + 19) & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v9 = *(this + 1);
  v10 = *(this + 30) - v9[31];
  if (v5 > v10)
  {
    goto LABEL_15;
  }

  v12 = v9[36];
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      if (*(this + 14) < v5)
      {
        v8 = 0;
        *(this + 130) = 0;
        return v8;
      }

      icu::RegexMatcher::MatchChunkAt(this, v5, 0, a2);
      if (*a2 <= 0)
      {
        return *(this + 130);
      }

      return 0;
    }

    if (v12 != 4)
    {
      if (v12 != 5)
      {
        goto LABEL_74;
      }

      goto LABEL_43;
    }

    if (*(this + 10) != v5)
    {
      goto LABEL_82;
    }

    icu::RegexMatcher::MatchChunkAt(this, v5, 0, a2);
    if (*a2 > 0)
    {
      return 0;
    }

    if (*(this + 130))
    {
      return 1;
    }

    if (v5 < v10)
    {
      v37 = v5 + 1;
      if ((*(v6 + 2 * v5) & 0xFC00) == 0xD800 && *(this + 15) != v37)
      {
        if ((*(v6 + 2 * v37) & 0xFC00) == 0xDC00)
        {
          v5 += 2;
        }

        else
        {
          ++v5;
        }
      }

      else
      {
        ++v5;
      }

LABEL_82:
      if (*(*(this + 1) + 24))
      {
        LODWORD(v33) = v5;
        while (1)
        {
          v34 = v33;
          v35 = (v6 + 2 * v33);
          if (*(v35 - 1) == 10)
          {
            icu::RegexMatcher::MatchChunkAt(this, v33, 0, a2);
            if (*a2 > 0)
            {
              return 0;
            }

            if (*(this + 130))
            {
              return 1;
            }
          }

          if (v33 >= v10)
          {
            goto LABEL_15;
          }

          v33 = v33 + 1;
          if ((*v35 & 0xFC00) == 0xD800 && *(this + 15) != v33 && (*(v6 + 2 * v33) & 0xFC00) == 0xDC00)
          {
            LODWORD(v33) = v34 + 2;
          }

          v36 = *(this + 37);
          if (v36 && !v36(*(this + 38), v33))
          {
LABEL_58:
            v8 = 0;
            v26 = U_REGEX_STOPPED_BY_CALLER;
            goto LABEL_75;
          }
        }
      }

      while (1)
      {
        v29 = (v6 + 2 * v5);
        v30 = *(v29 - 1);
        if ((v30 & 0xDF50) == 0)
        {
          if (*(v29 - 1) > 0x84u)
          {
            if ((v30 - 8232) < 2 || v30 == 133)
            {
              goto LABEL_93;
            }
          }

          else
          {
            if ((v30 - 10) < 3)
            {
              goto LABEL_93;
            }

            if (v30 == 13)
            {
              if (*(this + 15) > v5 && *v29 == 10)
              {
                ++v5;
              }

LABEL_93:
              icu::RegexMatcher::MatchChunkAt(this, v5, 0, a2);
              if (*a2 > 0)
              {
                return 0;
              }

              if (*(this + 130))
              {
                return 1;
              }
            }
          }
        }

        if (v5 >= v10)
        {
          goto LABEL_15;
        }

        v31 = v5 + 1;
        if ((*(v6 + 2 * v5) & 0xFC00) == 0xD800 && *(this + 15) != v31)
        {
          if ((*(v6 + 2 * v31) & 0xFC00) == 0xDC00)
          {
            v5 += 2;
          }

          else
          {
            ++v5;
          }
        }

        else
        {
          ++v5;
        }

        v32 = *(this + 37);
        if (v32 && !v32(*(this + 38), v5))
        {
          goto LABEL_58;
        }
      }
    }

LABEL_10:
    v8 = 0;
LABEL_16:
    *(this + 168) = 1;
    return v8;
  }

  switch(v12)
  {
    case 0:
      icu::RegexMatcher::MatchChunkAt(this, v5, 0, a2);
      if (*a2 <= 0)
      {
        while (!*(this + 130))
        {
          if (v5 >= v10)
          {
            goto LABEL_10;
          }

          v27 = v5 + 1;
          if ((*(v6 + 2 * v5) & 0xFC00) == 0xD800 && *(this + 15) != v27)
          {
            if ((*(v6 + 2 * v27) & 0xFC00) == 0xDC00)
            {
              v5 += 2;
            }

            else
            {
              ++v5;
            }
          }

          else
          {
            ++v5;
          }

          v28 = *(this + 37);
          if (v28 && !v28(*(this + 38), v5))
          {
            goto LABEL_58;
          }

          icu::RegexMatcher::MatchChunkAt(this, v5, 0, a2);
          v8 = 0;
          if (*a2 >= 1)
          {
            return v8;
          }
        }

        return 1;
      }

      return 0;
    case 1:
LABEL_43:
      v19 = v9[42];
      while (1)
      {
        v20 = v5 + 1;
        v21 = *(v6 + 2 * v5);
        if ((v21 & 0xFC00) == 0xD800 && *(this + 15) != v20)
        {
          v22 = *(v6 + 2 * v20);
          v23 = (v22 & 0xFC00) == 56320;
          v24 = (v21 << 10) - 56613888 + v22;
          if (v23)
          {
            v21 = v24;
          }

          if (v23)
          {
            LODWORD(v20) = v5 + 2;
          }
        }

        if (v21 == v19)
        {
          icu::RegexMatcher::MatchChunkAt(this, v5, 0, a2);
          if (*a2 > 0)
          {
            return 0;
          }

          if (*(this + 130))
          {
            return 1;
          }
        }

        if (v20 > v10)
        {
          goto LABEL_15;
        }

        v25 = *(this + 37);
        v5 = v20;
        if (v25)
        {
          v5 = v20;
          if (!v25(*(this + 38), v20))
          {
            goto LABEL_58;
          }
        }
      }

    case 2:
      while (1)
      {
        v13 = v5 + 1;
        v14 = *(v6 + 2 * v5);
        if ((v14 & 0xFC00) == 0xD800)
        {
          if (*(this + 15) != v13)
          {
            v15 = *(v6 + 2 * v13);
            v16 = (v15 & 0xFC00) == 56320;
            v17 = (v14 << 10) - 56613888 + v15;
            if (v16)
            {
              LODWORD(v13) = v5 + 2;
            }

            if (v16)
            {
              LODWORD(v14) = v17;
            }
          }
        }

        else if (v14 <= 0xFF)
        {
          if ((*(*(*(this + 1) + 176) + (v14 >> 3)) >> (v14 & 7)))
          {
            goto LABEL_34;
          }

          goto LABEL_36;
        }

        if (icu::UnicodeSet::contains(*(*(this + 1) + 160), v14))
        {
LABEL_34:
          icu::RegexMatcher::MatchChunkAt(this, v5, 0, a2);
          if (*a2 > 0)
          {
            return 0;
          }

          if (*(this + 130))
          {
            return 1;
          }
        }

LABEL_36:
        if (v13 > v10)
        {
          goto LABEL_15;
        }

        v18 = *(this + 37);
        v5 = v13;
        if (v18)
        {
          v5 = v13;
          if (!v18(*(this + 38), v13))
          {
            goto LABEL_58;
          }
        }
      }
  }

LABEL_74:
  v8 = 0;
  v26 = U_INTERNAL_PROGRAM_ERROR;
LABEL_75:
  *a2 = v26;
  return v8;
}

void icu::RegexMatcher::MatchAt(icu::RegexMatcher *this, int64_t a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return;
  }

  v415 = v4;
  v416 = v5;
  v10 = *(this + 1);
  v11 = *(v10 + 48);
  if ((v11 & 0x11) != 0)
  {
    v12 = 0;
  }

  else if ((v11 & 2) != 0)
  {
    v12 = v10 + 50;
  }

  else
  {
    v12 = *(v10 + 64);
  }

  v13 = *(*(v10 + 32) + 24);
  v14 = *(v10 + 104);
  *(this + 14) = *(v10 + 128);
  v15 = icu::RegexMatcher::resetStack(this);
  v16 = *(this + 79);
  if (v16 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    *a4 = v16;
    return;
  }

  v17 = v15;
  v409 = v14;
  v410 = v12;
  v408 = a3;
  *v15 = a2;
  v15[1] = 0;
  v18 = *(*(this + 1) + 132);
  if (v18 >= 1)
  {
    bzero(*(this + 24), 8 * v18);
  }

  while (2)
  {
    v19 = v17[1];
    v20 = *(v13 + 8 * v19);
    v21 = v19 + 1;
    v17[1] = v19 + 1;
    v22 = U_INTERNAL_PROGRAM_ERROR;
    v23 = v20 & 0xFFFFFF;
    switch(BYTE3(v20))
    {
      case 1:
        goto LABEL_316;
      case 2:
        if (v408 && *v17 != *(this + 15))
        {
          goto LABEL_316;
        }

        *(this + 130) = 1;
        *(this + 19) = *(this + 18);
        *(this + 17) = a2;
        *(this + 18) = *v17;
        goto LABEL_779;
      case 3:
        v102 = *v17;
        if (*v17 >= *(this + 15))
        {
          goto LABEL_315;
        }

        v103 = *(this + 4);
        v104 = v102 - v103->chunkNativeStart;
        if (v104 < 0 || v104 >= v103->nativeIndexingLimit || v103->chunkContents[v104] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v103, v102);
          v103 = *(this + 4);
          LODWORD(v104) = v103->chunkOffset;
        }

        else
        {
          v103->chunkOffset = v104;
        }

        if (v104 >= v103->chunkLength || (v262 = v103->chunkContents[v104], v262 >> 11 > 0x1A))
        {
          v262 = utext_next32(v103);
        }

        else
        {
          v103->chunkOffset = v104 + 1;
        }

        if (v262 == v23)
        {
          goto LABEL_614;
        }

        goto LABEL_316;
      case 4:
        v99 = *(v13 + 8 * v21);
        v17[1] = v19 + 2;
        v100 = *(this + 4);
        v101 = *v17 - v100->chunkNativeStart;
        if (v101 < 0 || v101 >= v100->nativeIndexingLimit || v100->chunkContents[v101] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v100, *v17);
        }

        else
        {
          v100->chunkOffset = v101;
        }

        v187 = 0;
        v188 = v99 & 0xFFFFFF;
        v189 = v410 + 2 * (v20 & 0xFFFFFF);
        while (1)
        {
          v190 = *(this + 4);
          chunkOffset = v190->chunkOffset;
          nativeIndexingLimit = v190->nativeIndexingLimit;
          if (v187 >= v188)
          {
            goto LABEL_616;
          }

          if (chunkOffset <= nativeIndexingLimit)
          {
            v193 = v190->chunkNativeStart + chunkOffset;
          }

          else
          {
            v193 = (v190->pFuncs->mapOffsetToNative)();
          }

          if (v193 >= *(this + 15))
          {
            goto LABEL_315;
          }

          v194 = *(this + 4);
          v195 = *(v194 + 40);
          if (v195 >= *(v194 + 44) || (v196 = *(*(v194 + 48) + 2 * v195), v196 >> 11 > 0x1A))
          {
            v196 = utext_next32(*(this + 4));
          }

          else
          {
            *(v194 + 40) = v195 + 1;
          }

          v197 = v187 + 1;
          v198 = *(v189 + 2 * v187);
          if ((v198 & 0xFC00) == 0xD800 && v197 != v188)
          {
            v200 = *(v189 + 2 * v197);
            v201 = (v200 & 0xFC00) == 56320;
            v202 = (v198 << 10) - 56613888 + v200;
            if (v201)
            {
              v198 = v202;
            }

            if (v201)
            {
              LODWORD(v197) = v187 + 2;
            }
          }

          v187 = v197;
          if (v198 != v196)
          {
            goto LABEL_316;
          }
        }

      case 6:
        if (*a4 > 0)
        {
          goto LABEL_778;
        }

        v82 = *(this + 22);
        v83 = *(this + 14);
        v84 = *(v82 + 8);
        v85 = v84 + v83;
        if (v84 + v83 >= 0 && *(v82 + 12) >= v85)
        {
          goto LABEL_96;
        }

        if (icu::UVector64::expandCapacity(*(this + 22), v85, a4))
        {
          v84 = *(v82 + 8);
          v85 = v84 + v83;
LABEL_96:
          v86 = (*(v82 + 24) + 8 * v84);
          *(v82 + 8) = v85;
        }

        else
        {
          v86 = 0;
        }

        if (*a4 > 0)
        {
          goto LABEL_776;
        }

        v324 = 0;
        v325 = v20 & 0xFFFFFF;
        v326 = *(this + 14);
        v327 = &v86[-v326];
        v328 = -1 * v326;
        do
        {
          v86[v324++] = v86[v328++];
        }

        while (v328 * 8);
        v329 = *(this + 68);
        v81 = __OFSUB__(v329--, 1);
        *(this + 68) = v329;
        if ((v329 < 0) ^ v81 | (v329 == 0))
        {
          icu::RegexMatcher::IncrementTime(this, a4);
        }

        v327[1] = v325;
        goto LABEL_706;
      case 7:
        goto LABEL_317;
      case 8:
        v108 = *v17;
        v109 = &v17[v23 + 2];
        goto LABEL_199;
      case 9:
        v72 = *v17;
        v17[(v20 & 0xFFFFFF) + 2] = v17[(v23 + 2) + 2];
        v17[(v23 + 1) + 2] = v72;
        goto LABEL_317;
      case 0xA:
        v127 = *v17;
        if (*v17 >= *(this + 15))
        {
          goto LABEL_315;
        }

        v128 = *(this + 4);
        v129 = v127 - v128->chunkNativeStart;
        if (v129 < 0 || v129 >= v128->nativeIndexingLimit || v128->chunkContents[v129] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v128, v127);
          v128 = *(this + 4);
          LODWORD(v129) = v128->chunkOffset;
        }

        else
        {
          v128->chunkOffset = v129;
        }

        if (v129 >= v128->chunkLength || (v266 = v128->chunkContents[v129], v266 >> 11 > 0x1A))
        {
          v266 = utext_next32(v128);
        }

        else
        {
          v128->chunkOffset = v129 + 1;
        }

        v289 = v20 & 0x7FFFFF;
        if (v266 > 255)
        {
          v290 = icu::UnicodeSet::contains((qword_1ED443488 + 200 * v289 + 8), v266) == 0;
        }

        else
        {
          v290 = ((*(qword_1ED443488 + 32 * v289 + (v266 >> 3) + 2608) >> (v266 & 7)) & 1) == 0;
        }

        if (v290)
        {
          v310 = (v20 & 0x800000) >> 23;
        }

        else
        {
          v310 = (v20 & 0x800000) == 0;
        }

        if (!v310)
        {
          goto LABEL_316;
        }

        goto LABEL_614;
      case 0xB:
        v110 = *v17;
        if (*v17 >= *(this + 15))
        {
          goto LABEL_315;
        }

        v111 = *(this + 4);
        v112 = v110 - v111->chunkNativeStart;
        if (v112 < 0 || v112 >= v111->nativeIndexingLimit || v111->chunkContents[v112] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v111, v110);
          v111 = *(this + 4);
          LODWORD(v112) = v111->chunkOffset;
        }

        else
        {
          v111->chunkOffset = v112;
        }

        if (v112 >= v111->chunkLength || (v263 = v111->chunkContents[v112], v263 >> 11 > 0x1A))
        {
          v263 = utext_next32(v111);
        }

        else
        {
          v111->chunkOffset = v112 + 1;
        }

        if (v263 > 255)
        {
          v307 = icu::UVector::elementAt(v409, v20 & 0xFFFFFF);
          if (icu::UnicodeSet::contains(v307, v263))
          {
            goto LABEL_614;
          }
        }

        else if ((*(*(*(this + 1) + 112) + 32 * (v20 & 0xFFFFFF) + (v263 >> 3)) >> (v263 & 7)))
        {
          goto LABEL_614;
        }

        goto LABEL_316;
      case 0xC:
        v116 = *v17;
        if (*v17 >= *(this + 15))
        {
          goto LABEL_315;
        }

        v117 = *(this + 4);
        v118 = v116 - v117->chunkNativeStart;
        if (v118 < 0 || v118 >= v117->nativeIndexingLimit || v117->chunkContents[v118] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v117, v116);
          v117 = *(this + 4);
          LODWORD(v118) = v117->chunkOffset;
        }

        else
        {
          v117->chunkOffset = v118;
        }

        if (v118 >= v117->chunkLength || (v265 = v117->chunkContents[v118], v265 >> 11 > 0x1A))
        {
          v265 = utext_next32(v117);
        }

        else
        {
          v117->chunkOffset = v118 + 1;
        }

        if ((v265 & 0xFFFFDF50) != 0 || v265 - 10 >= 4 && v265 - 8232 >= 2 && v265 != 133)
        {
          goto LABEL_614;
        }

        goto LABEL_316;
      case 0xD:
        goto LABEL_21;
      case 0xE:
        goto LABEL_778;
      case 0xF:
        if (*a4 > 0)
        {
          goto LABEL_664;
        }

        v130 = *(this + 22);
        v131 = *(this + 14);
        v132 = *(v130 + 8);
        v133 = v132 + v131;
        if (v132 + v131 >= 0 && *(v130 + 12) >= v133)
        {
          goto LABEL_162;
        }

        if (icu::UVector64::expandCapacity(*(this + 22), v133, a4))
        {
          v132 = *(v130 + 8);
          v133 = v132 + v131;
LABEL_162:
          v86 = (*(v130 + 24) + 8 * v132);
          *(v130 + 8) = v133;
        }

        else
        {
          v86 = 0;
        }

        if (*a4 < 1)
        {
          v358 = 0;
          v359 = *(this + 14);
          v360 = &v86[-v359];
          v361 = -1 * v359;
          do
          {
            v86[v358++] = v86[v361++];
          }

          while (v361 * 8);
          v362 = *(this + 68);
          v81 = __OFSUB__(v362--, 1);
          *(this + 68) = v362;
          if ((v362 < 0) ^ v81 | (v362 == 0))
          {
            icu::RegexMatcher::IncrementTime(this, a4);
          }

          v360[1] = v21;
        }

        else
        {
          *a4 = U_REGEX_STACK_OVERFLOW;
LABEL_664:
          v86 = v17;
        }

        v357 = v20 & 0xFFFFFF;
        goto LABEL_705;
      case 0x10:
        isWordBoundary = icu::RegexMatcher::isWordBoundary(this, *v17);
        goto LABEL_109;
      case 0x11:
        v138 = *v17;
        if (*(this + 130))
        {
          v139 = *(this + 18);
        }

        else
        {
          v139 = *(this + 14);
        }

        goto LABEL_484;
      case 0x12:
        v66 = v20 & 0xFFFFFF;
        v67 = *(v13 - 8 + 8 * v66) & 0xFFFFFFLL;
        if (v17[v67 + 2] >= *v17)
        {
          goto LABEL_317;
        }

        if (*a4 > 0)
        {
          goto LABEL_692;
        }

        v68 = *(this + 22);
        v69 = *(this + 14);
        v70 = *(v68 + 8);
        v71 = v70 + v69;
        if (v70 + v69 >= 0 && *(v68 + 12) >= v71)
        {
          goto LABEL_81;
        }

        if (icu::UVector64::expandCapacity(*(this + 22), v71, a4))
        {
          v70 = *(v68 + 8);
          v71 = v70 + v69;
LABEL_81:
          v59 = (*(v68 + 24) + 8 * v70);
          *(v68 + 8) = v71;
        }

        else
        {
          v59 = 0;
        }

        if (*a4 < 1)
        {
          v369 = 0;
          v370 = *(this + 14);
          v371 = &v59[-v370];
          v372 = -1 * v370;
          do
          {
            v59[v369++] = v59[v372++];
          }

          while (v372 * 8);
          v373 = *(this + 68);
          v81 = __OFSUB__(v373--, 1);
          *(this + 68) = v373;
          if ((v373 < 0) ^ v81 | (v373 == 0))
          {
            icu::RegexMatcher::IncrementTime(this, a4);
          }

          v371[1] = v21;
        }

        else
        {
          *a4 = U_REGEX_STACK_OVERFLOW;
LABEL_692:
          v59 = v17;
        }

        v59[1] = v66;
        v367 = *v59;
        v368 = &v59[v67];
        goto LABEL_722;
      case 0x13:
        if (*v17 >= *(this + 15))
        {
          goto LABEL_315;
        }

        v148 = icu::RegexMatcher::followingGCBoundary(this, *v17, a4);
        *v17 = v148;
        v149 = *(this + 15);
        if (v148 >= v149)
        {
          *(this + 168) = 1;
          *v17 = v149;
        }

        goto LABEL_317;
      case 0x14:
        if (*v17 >= *(this + 11))
        {
          goto LABEL_753;
        }

        goto LABEL_316;
      case 0x15:
        v87 = *v17;
        if (*v17 >= *(this + 15))
        {
          goto LABEL_315;
        }

        v88 = *(this + 4);
        v89 = v87 - v88->chunkNativeStart;
        if (v89 < 0 || v89 >= v88->nativeIndexingLimit || v88->chunkContents[v89] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v88, v87);
          v88 = *(this + 4);
          LODWORD(v89) = v88->chunkOffset;
        }

        else
        {
          v88->chunkOffset = v89;
        }

        if (v89 >= v88->chunkLength || (v260 = v88->chunkContents[v89], v260 >> 11 > 0x1A))
        {
          v260 = utext_next32(v88);
          v88 = *(this + 4);
          v261 = v88->chunkOffset;
        }

        else
        {
          v261 = v89 + 1;
          v88->chunkOffset = v261;
        }

        if (v261 <= v88->nativeIndexingLimit)
        {
          v288 = v88->chunkNativeStart + v261;
        }

        else
        {
          v288 = (v88->pFuncs->mapOffsetToNative)();
        }

        *v17 = v288;
        if (v260 != 13 || v288 >= *(this + 15))
        {
          goto LABEL_317;
        }

        v302 = *(this + 4);
        v303 = v302->chunkOffset;
        if (v303 >= v302->chunkLength || (v304 = v302->chunkContents[v303], v304 >> 11 > 0x1A))
        {
          v304 = utext_current32(v302);
        }

        if (v304 != 10)
        {
          goto LABEL_317;
        }

        v190 = *(this + 4);
        v305 = v190->chunkOffset;
        if (v305 >= v190->chunkLength || v190->chunkContents[v305] >> 11 > 0x1Au)
        {
          utext_next32(v190);
          v190 = *(this + 4);
          v306 = v190->chunkOffset;
        }

        else
        {
          v306 = v305 + 1;
          v190->chunkOffset = v306;
        }

        if (v306 > v190->nativeIndexingLimit)
        {
          goto LABEL_617;
        }

        v330 = v190->chunkNativeStart + v306;
        goto LABEL_619;
      case 0x16:
        v140 = *v17;
        if (*v17 >= *(this + 15))
        {
          goto LABEL_315;
        }

        v141 = *(this + 4);
        v142 = v140 - v141->chunkNativeStart;
        if (v142 < 0 || v142 >= v141->nativeIndexingLimit || v141->chunkContents[v142] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v141, v140);
          v141 = *(this + 4);
          LODWORD(v142) = v141->chunkOffset;
        }

        else
        {
          v141->chunkOffset = v142;
        }

        if (v142 >= v141->chunkLength || (v270 = v141->chunkContents[v142], v270 >> 11 > 0x1A))
        {
          v270 = utext_next32(v141);
        }

        else
        {
          v141->chunkOffset = v142 + 1;
        }

        v291 = u_charType(v270) == 9;
        goto LABEL_498;
      case 0x17:
        v138 = *v17;
        v139 = *(this + 10);
LABEL_484:
        if (v138 == v139)
        {
          goto LABEL_317;
        }

        goto LABEL_316;
      case 0x18:
        v154 = *v17;
        if (*v17 >= *(this + 11))
        {
          goto LABEL_753;
        }

        v155 = *(this + 4);
        v156 = v154 - v155->chunkNativeStart;
        if (v156 < 0 || v156 >= v155->nativeIndexingLimit || v155->chunkContents[v156] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v155, v154);
          v155 = *(this + 4);
          LODWORD(v156) = v155->chunkOffset;
        }

        else
        {
          v155->chunkOffset = v156;
        }

        if (v156 >= v155->chunkLength || (v271 = v155->chunkContents[v156], v271 >> 11 > 0x1A))
        {
          v271 = utext_next32(v155);
          v155 = *(this + 4);
          v272 = v155->chunkOffset;
        }

        else
        {
          v272 = v156 + 1;
          v155->chunkOffset = v272;
        }

        if (v272 <= v155->nativeIndexingLimit)
        {
          v292 = v155->chunkNativeStart + v272;
        }

        else
        {
          v292 = (v155->pFuncs->mapOffsetToNative)();
        }

        if (v292 >= *(this + 11))
        {
          if (sub_1953BAE10(v271))
          {
            if (v271 != 10 || *v17 <= *(this + 10))
            {
              goto LABEL_753;
            }

            v321 = *(this + 4);
            v322 = v321->chunkOffset;
            if (v322 < 1 || v321->chunkContents[v322 - 1] >> 11 > 0x1Au)
            {
              utext_previous32(v321);
              v321 = *(this + 4);
              v323 = v321->chunkOffset;
            }

            else
            {
              v323 = v322 - 1;
              v321->chunkOffset = v323;
            }

            v396 = v323 - 1;
            if (v323 < 1 || (chunkContents = v321->chunkContents, chunkContents[v323 - 1] >> 11 > 0x1Au))
            {
              v398 = utext_previous32(v321);
            }

            else
            {
              v321->chunkOffset = v396;
              v398 = chunkContents[v396];
            }

            if (v398 != 13)
            {
LABEL_753:
              *(this + 84) = 257;
              goto LABEL_317;
            }
          }
        }

        else
        {
          v318 = *(this + 4);
          v319 = v318->chunkOffset;
          if (v319 >= v318->chunkLength || (v320 = v318->chunkContents[v319], v320 >> 11 > 0x1A))
          {
            v320 = utext_next32(v318);
          }

          else
          {
            v318->chunkOffset = v319 + 1;
          }

          if (v271 == 13 && v320 == 10)
          {
            v331 = *(this + 4);
            v332 = *(v331 + 40);
            v333 = v332 <= *(v331 + 28) ? *(v331 + 32) + v332 : (*(*(v331 + 56) + 64))();
            if (v333 >= *(this + 11))
            {
              goto LABEL_753;
            }
          }
        }

LABEL_316:
        v231 = *(this + 22);
        v232 = *(this + 14);
        v233 = (*(v231 + 8) - v232) & ~((*(v231 + 8) - v232) >> 31);
        *(v231 + 8) = v233;
        v17 = (*(v231 + 24) + 8 * v233 - 8 * v232);
        goto LABEL_317;
      case 0x19:
        v17[(v20 & 0xFFFFFF) + 2] = 0;
        v17[1] = v19 + 4;
        v53 = *(v13 + (((v21 << 32) + 0x200000000) >> 29));
        if (*(v13 + (((v21 << 32) + 0x100000000) >> 29)) || *a4 > 0)
        {
          goto LABEL_719;
        }

        v54 = *(v13 + 8 * v21);
        v55 = *(this + 22);
        v56 = *(this + 14);
        v57 = *(v55 + 8);
        v58 = v57 + v56;
        if (v57 + v56 >= 0 && *(v55 + 12) >= v58)
        {
          goto LABEL_62;
        }

        if (icu::UVector64::expandCapacity(*(this + 22), v58, a4))
        {
          v57 = *(v55 + 8);
          v58 = v57 + v56;
LABEL_62:
          v59 = (*(v55 + 24) + 8 * v57);
          *(v55 + 8) = v58;
        }

        else
        {
          v59 = 0;
        }

        if (*a4 < 1)
        {
          v378 = 0;
          v379 = (v54 & 0xFFFFFF) + 1;
          v380 = *(this + 14);
          v381 = &v59[-v380];
          v382 = -1 * v380;
          do
          {
            v59[v378++] = v59[v382++];
          }

          while (v382 * 8);
          v383 = *(this + 68);
          v81 = __OFSUB__(v383--, 1);
          *(this + 68) = v383;
          if ((v383 < 0) ^ v81 | (v383 == 0))
          {
            icu::RegexMatcher::IncrementTime(this, a4);
          }

          v381[1] = v379;
          if (!v53)
          {
            goto LABEL_316;
          }
        }

        else
        {
          *a4 = U_REGEX_STACK_OVERFLOW;
LABEL_719:
          v59 = v17;
          if (!v53)
          {
            goto LABEL_316;
          }
        }

        if (v53 == -1)
        {
          v367 = *v59;
          v368 = &v59[v23 + 1];
LABEL_722:
          v368[2] = v367;
        }

        v17 = v59;
        goto LABEL_317;
      case 0x1A:
        v17[(v20 & 0xFFFFFF) + 2] = 0;
        v150 = v19 + 4;
        v17[1] = v19 + 4;
        v151 = *(v13 + 8 * v21);
        v152 = *(v13 + (((v21 << 32) + 0x100000000) >> 29));
        v153 = *(v13 + (((v21 << 32) + 0x200000000) >> 29));
        if (v153 == -1)
        {
          v17[(v23 + 1) + 2] = *v17;
          if (v152)
          {
            goto LABEL_317;
          }

LABEL_489:
          v17 = sub_1953BF38C(this, v17, v150, a4);
          goto LABEL_490;
        }

        if (*(v13 + (((v21 << 32) + 0x100000000) >> 29)))
        {
          goto LABEL_317;
        }

        if (v153)
        {
          goto LABEL_489;
        }

LABEL_490:
        v27 = (v151 & 0xFFFFFF) + 1;
LABEL_654:
        v17[1] = v27;
        goto LABEL_317;
      case 0x1B:
        v170 = *v17;
        if (*v17 >= *(this + 15))
        {
          goto LABEL_315;
        }

        v171 = *(this + 4);
        v172 = v170 - v171->chunkNativeStart;
        if (v172 < 0 || v172 >= v171->nativeIndexingLimit || v171->chunkContents[v172] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v171, v170);
          v171 = *(this + 4);
          LODWORD(v172) = v171->chunkOffset;
        }

        else
        {
          v171->chunkOffset = v172;
        }

        if (v172 >= v171->chunkLength || (v275 = v171->chunkContents[v172], v275 >> 11 > 0x1A))
        {
          v275 = utext_next32(v171);
        }

        else
        {
          v171->chunkOffset = v172 + 1;
        }

        if (v275 != 10)
        {
          goto LABEL_614;
        }

        goto LABEL_316;
      case 0x1C:
        v73 = (v13 + 8 * (v20 & 0xFFFFFF));
        v74 = v17 + 2;
        v75 = *v73 & 0xFFFFFFLL;
        v77 = v73[2];
        v76 = v73[3];
        v78 = v17[v75 + 2] + 1;
        v17[v75 + 2] = v78;
        if (v76 != -1 && v78 >= v76)
        {
          goto LABEL_317;
        }

        if (v78 >= v77)
        {
          if (v76 == -1)
          {
            v301 = v75 + 1;
            if (*v17 == v74[v301])
            {
              goto LABEL_317;
            }

            v74[v301] = *v17;
          }

          v17 = sub_1953BF38C(this, v17, v21, a4);
        }

        else
        {
          v80 = *(this + 68);
          v81 = __OFSUB__(v80--, 1);
          *(this + 68) = v80;
          if ((v80 < 0) ^ v81 | (v80 == 0))
          {
            icu::RegexMatcher::IncrementTime(this, a4);
          }
        }

        v27 = (v23 + 4);
        goto LABEL_654;
      case 0x1D:
        v119 = (v13 + 8 * (v20 & 0xFFFFFF));
        v120 = v17 + 2;
        v121 = *v119 & 0xFFFFFFLL;
        v123 = v119[2];
        v122 = v119[3];
        v124 = v17[v121 + 2] + 1;
        v17[v121 + 2] = v124;
        if (v122 != -1 && v124 >= v122)
        {
          goto LABEL_317;
        }

        if (v124 >= v123)
        {
          if (v122 == -1)
          {
            v308 = v121 + 1;
            if (*v17 == v120[v308])
            {
              goto LABEL_317;
            }

            v120[v308] = *v17;
          }

          v17 = sub_1953BF38C(this, v17, (v23 + 4), a4);
        }

        else
        {
          v17[1] = (v23 + 4);
          v126 = *(this + 68);
          v81 = __OFSUB__(v126--, 1);
          *(this + 68) = v126;
          if ((v126 < 0) ^ v81 | (v126 == 0))
          {
            icu::RegexMatcher::IncrementTime(this, a4);
          }
        }

        goto LABEL_317;
      case 0x1E:
        v173 = *v17;
        if (*v17 <= *(this + 10))
        {
          goto LABEL_317;
        }

        v174 = *(this + 4);
        v175 = v173 - v174->chunkNativeStart;
        if (v175 < 0 || v175 >= v174->nativeIndexingLimit || v174->chunkContents[v175] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v174, v173);
          v174 = *(this + 4);
          LODWORD(v175) = v174->chunkOffset;
        }

        else
        {
          v174->chunkOffset = v175;
        }

        v276 = v175 - 1;
        if (v175 < 1 || (v277 = v174->chunkContents, v277[v175 - 1] >> 11 > 0x1Au))
        {
          v278 = utext_previous32(v174);
        }

        else
        {
          v174->chunkOffset = v276;
          v278 = v277[v276];
        }

        if (v278 == 10)
        {
          goto LABEL_317;
        }

        goto LABEL_316;
      case 0x20:
        *(*(this + 24) + 8 * (v20 & 0xFFFFFF)) = *(*(this + 22) + 8);
        goto LABEL_317;
      case 0x21:
        v143 = *(*(this + 24) + 8 * (v20 & 0xFFFFFF));
        v144 = *(this + 22);
        v145 = *(this + 14);
        v86 = (*(v144 + 3) + 8 * v143 - 8 * v145);
        if (v86 == v17)
        {
          goto LABEL_317;
        }

        if (v145 >= 1)
        {
          v146 = (*(v144 + 3) + 8 * v143 - 8 * v145);
          do
          {
            v147 = *v17++;
            *v146++ = v147;
            --v145;
          }

          while (v145);
        }

        icu::UVector64::setSize(v144, v143);
        goto LABEL_706;
      case 0x22:
        v157 = v17[(v20 & 0xFFFFFF) + 2];
        if (v157 < 0)
        {
          goto LABEL_316;
        }

        v158 = v17[(v23 + 1) + 2];
        v159 = *(this + 5);
        v160 = v157 - v159->chunkNativeStart;
        if (v160 < 0 || v160 >= v159->nativeIndexingLimit || v159->chunkContents[v160] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v159, v157);
        }

        else
        {
          v159->chunkOffset = v160;
        }

        v227 = *(this + 4);
        v228 = *v17 - v227->chunkNativeStart;
        if (v228 < 0 || v228 >= v227->nativeIndexingLimit || v227->chunkContents[v228] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v227, *v17);
        }

        else
        {
          v227->chunkOffset = v228;
        }

        while (2)
        {
          NativeIndex = utext_getNativeIndex(*(this + 5));
          v190 = *(this + 4);
          if (NativeIndex >= v158)
          {
LABEL_615:
            chunkOffset = v190->chunkOffset;
            nativeIndexingLimit = v190->nativeIndexingLimit;
LABEL_616:
            if (chunkOffset <= nativeIndexingLimit)
            {
              v330 = v190->chunkNativeStart + chunkOffset;
            }

            else
            {
LABEL_617:
              v330 = (v190->pFuncs->mapOffsetToNative)();
            }

LABEL_619:
            *v17 = v330;
            goto LABEL_317;
          }

          if (utext_getNativeIndex(v190) < *(this + 15))
          {
            v230 = utext_next32(*(this + 5));
            if (utext_next32(*(this + 4)) != v230)
            {
              goto LABEL_316;
            }

            continue;
          }

          break;
        }

LABEL_315:
        *(this + 168) = 1;
        goto LABEL_316;
      case 0x23:
        v108 = *v17;
        v109 = &v17[v20 & 0xFFFFFF];
LABEL_199:
        v109[2] = v108;
        goto LABEL_317;
      case 0x24:
        v17[1] = v19 + 2;
        if (v17[(*(v13 + 8 * v21) & 0xFFFFFFLL) + 2] >= *v17)
        {
          goto LABEL_316;
        }

LABEL_21:
        v27 = v20 & 0xFFFFFF;
        goto LABEL_654;
      case 0x25:
        v31 = (*(this + 24) + 8 * (v20 & 0xFFFFFF));
        *v31 = *(*(this + 22) + 8);
        v31[1] = *v17;
        v31[2] = *(this + 14);
        v31[3] = *(this + 15);
        *(this + 7) = *(this + 6);
        goto LABEL_317;
      case 0x26:
        v90 = *(this + 22);
        v91 = *(this + 24);
        v92 = v20 & 0xFFFFFF;
        v93 = *(v91 + 8 * (v20 & 0xFFFFFF));
        if (*(v90 + 8) <= v93)
        {
          v95 = v17;
        }

        else
        {
          v94 = *(this + 14);
          v95 = (*(v90 + 24) + 8 * v93 - 8 * v94);
          if (v94 >= 1)
          {
            v96 = (*(v90 + 24) + 8 * v93 - 8 * v94);
            do
            {
              v97 = *v17++;
              *v96++ = v97;
              --v94;
            }

            while (v94);
          }

          icu::UVector64::setSize(v90, v93);
          v91 = *(this + 24);
          v17 = v95;
        }

        v163 = (v91 + 8 * v92);
        *v95 = v163[1];
        goto LABEL_642;
      case 0x27:
        v184 = *v17;
        if (*v17 >= *(this + 15))
        {
          goto LABEL_315;
        }

        v185 = *(this + 4);
        v186 = v184 - v185->chunkNativeStart;
        if (v186 < 0 || v186 >= v185->nativeIndexingLimit || v185->chunkContents[v186] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v185, v184);
          v185 = *(this + 4);
          LODWORD(v186) = v185->chunkOffset;
        }

        else
        {
          v185->chunkOffset = v186;
        }

        if (v186 >= v185->chunkLength || (v279 = v185->chunkContents[v186], v279 >> 11 > 0x1A))
        {
          v279 = utext_next32(v185);
        }

        else
        {
          v185->chunkOffset = v186 + 1;
        }

        if (u_foldCase(v279, 0) == v23)
        {
          goto LABEL_614;
        }

        goto LABEL_316;
      case 0x28:
        v181 = *(v13 + 8 * v21);
        v17[1] = v19 + 2;
        v182 = *(this + 4);
        v183 = *v17 - *(v182 + 32);
        if (v183 < 0 || v183 >= *(v182 + 28) || *(*(v182 + 48) + 2 * v183) >> 10 > 0x36u)
        {
          utext_setNativeIndex(*(this + 4), *v17);
          v182 = *(this + 4);
        }

        else
        {
          *(v182 + 40) = v183;
        }

        v214 = v410 + 2 * (v20 & 0xFFFFFF);
        v215 = v181 & 0xFFFFFF;
        v412 = 0;
        v413 = 0;
        v414 = 0;
        sub_1953AC824(&v412, v182);
        v216 = 0;
        while (2)
        {
          v217 = sub_19525EEE8(&v412);
          if (v216 < v215)
          {
            if (v217 || ((v218 = *(this + 4), v219 = *(v218 + 40), v219 <= *(v218 + 28)) ? (v220 = *(v218 + 32) + v219) : (v220 = (*(*(v218 + 56) + 64))()), v220 < *(this + 15)))
            {
              v221 = v216 + 1;
              v222 = *(v214 + 2 * v216);
              if ((v222 & 0xFC00) == 0xD800 && v221 != v215)
              {
                v224 = *(v214 + 2 * v221);
                v225 = (v224 & 0xFC00) == 56320;
                v226 = (v222 << 10) - 56613888 + v224;
                if (v225)
                {
                  v222 = v226;
                }

                if (v225)
                {
                  LODWORD(v221) = v216 + 2;
                }
              }

              v216 = v221;
              if (sub_1953AC830(&v412) != v222)
              {
                goto LABEL_626;
              }

              continue;
            }

            *(this + 168) = 1;
LABEL_626:
            sub_19525EEE8(&v412);
LABEL_627:
            v334 = *(this + 22);
            v335 = *(this + 14);
            v336 = (*(v334 + 8) - v335) & ~((*(v334 + 8) - v335) >> 31);
            *(v334 + 8) = v336;
            v17 = (*(v334 + 24) + 8 * v336 - 8 * v335);
            goto LABEL_680;
          }

          break;
        }

        if (v217)
        {
          goto LABEL_627;
        }

        v234 = *(this + 4);
        v235 = *(v234 + 40);
        if (v235 <= *(v234 + 28))
        {
          v236 = *(v234 + 32) + v235;
        }

        else
        {
          v236 = (*(*(v234 + 56) + 64))();
        }

        *v17 = v236;
        goto LABEL_680;
      case 0x29:
        v105 = v17[(v20 & 0xFFFFFF) + 2];
        if (v105 < 0)
        {
          goto LABEL_316;
        }

        v106 = v17[(v23 + 1) + 2];
        utext_setNativeIndex(*(this + 5), v105);
        utext_setNativeIndex(*(this + 4), *v17);
        v412 = 0;
        v413 = 0;
        v414 = 0;
        sub_1953AC824(&v412, *(this + 5));
        memset(v411, 0, sizeof(v411));
        sub_1953AC824(v411, *(this + 4));
        while (2)
        {
          if (sub_19525EEE8(&v412) || utext_getNativeIndex(*(this + 5)) < v106)
          {
            if (sub_19525EEE8(v411) || utext_getNativeIndex(*(this + 4)) < *(this + 15))
            {
              v107 = sub_1953AC830(&v412);
              if (sub_1953AC830(v411) != v107)
              {
                goto LABEL_632;
              }

              continue;
            }

            *(this + 168) = 1;
LABEL_632:
            v340 = *(this + 22);
            v341 = *(this + 14);
            v342 = (*(v340 + 8) - v341) & ~((*(v340 + 8) - v341) >> 31);
            *(v340 + 8) = v342;
            v17 = (*(v340 + 24) + 8 * v342 - 8 * v341);
            goto LABEL_633;
          }

          break;
        }

        if (sub_19525EEE8(v411))
        {
          goto LABEL_632;
        }

        v337 = *(this + 4);
        v338 = *(v337 + 40);
        if (v338 <= *(v337 + 28))
        {
          v339 = *(v337 + 32) + v338;
        }

        else
        {
          v339 = (*(*(v337 + 56) + 64))();
        }

        *v17 = v339;
LABEL_633:
        nullsub_17(v411);
LABEL_680:
        nullsub_17(&v412);
        goto LABEL_317;
      case 0x2A:
        v60 = *v17;
        if (*v17 >= *(this + 11))
        {
          goto LABEL_753;
        }

        v61 = *(this + 4);
        v62 = v60 - v61->chunkNativeStart;
        if (v62 < 0 || v62 >= v61->nativeIndexingLimit || v61->chunkContents[v62] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v61, v60);
          v61 = *(this + 4);
          LODWORD(v62) = v61->chunkOffset;
        }

        else
        {
          v61->chunkOffset = v62;
        }

        if (v62 >= v61->chunkLength || (v253 = v61->chunkContents[v62], v253 >> 11 > 0x1A))
        {
          v253 = utext_current32(v61);
        }

        if ((v253 & 0xFFFFDF50) != 0)
        {
          goto LABEL_316;
        }

        if (v253 > 132)
        {
          if ((v253 - 8232) < 2 || v253 == 133)
          {
            goto LABEL_317;
          }

          goto LABEL_316;
        }

        if ((v253 - 11) >= 3)
        {
          if (v253 != 10)
          {
            goto LABEL_316;
          }

          if (*v17 > *(this + 10))
          {
            v254 = *(this + 4);
            v255 = v254->chunkOffset;
            if (v255 < 1 || (v256 = v254->chunkContents, v256[v255 - 1] >> 11 > 0x1Au))
            {
              v258 = utext_previous32(v254);
            }

            else
            {
              v257 = v255 - 1;
              v254->chunkOffset = v257;
              v258 = v256[v257];
            }

            if (v258 == 13)
            {
              goto LABEL_316;
            }
          }
        }

        goto LABEL_317;
      case 0x2B:
        v28 = *v17;
        if (*v17 != *(this + 10))
        {
          v29 = *(this + 4);
          v30 = v28 - v29->chunkNativeStart;
          if (v30 < 0 || v30 >= v29->nativeIndexingLimit || v29->chunkContents[v30] >> 10 > 0x36u)
          {
            utext_setNativeIndex(v29, v28);
            v29 = *(this + 4);
            LODWORD(v30) = v29->chunkOffset;
          }

          else
          {
            v29->chunkOffset = v30;
          }

          v248 = v30 - 1;
          if (v30 < 1 || (v249 = v29->chunkContents, v249[v30 - 1] >> 11 > 0x1Au))
          {
            v250 = utext_previous32(v29);
          }

          else
          {
            v29->chunkOffset = v248;
            v250 = v249[v248];
          }

          if (*v17 >= *(this + 11) || !sub_1953BAE10(v250))
          {
            goto LABEL_316;
          }
        }

        goto LABEL_317;
      case 0x2C:
        v161 = (*(this + 24) + 8 * (v20 & 0xFFFFFF));
        *v161 = *(*(this + 22) + 8);
        v161[1] = *v17;
        v161[2] = *(this + 14);
        v161[3] = *(this + 15);
        *(this + 14) = *(this + 8);
        *(this + 15) = *v17;
        v161[4] = -1;
        goto LABEL_317;
      case 0x2D:
        v17[1] = v19 + 2;
        v35 = *(v13 + 8 * v21);
        v17[1] = v19 + 3;
        v36 = *(v13 + 8 * (v19 + 2));
        v37 = *(this + 4);
        if (v37->pFuncs->mapNativeIndexToUTF16)
        {
          v38 = 3 * v36;
        }

        else
        {
          v38 = v36;
        }

        v39 = v20 & 0xFFFFFF;
        v40 = *(this + 24) + 8 * (v20 & 0xFFFFFF);
        v41 = *(v40 + 32);
        if ((v41 & 0x8000000000000000) == 0)
        {
          if (!v41)
          {
            *(v40 + 32) = -1;
LABEL_641:
            v343 = *(this + 22);
            v344 = *(this + 14);
            v345 = (*(v343 + 8) - v344) & ~((*(v343 + 8) - v344) >> 31);
            *(v343 + 8) = v345;
            v17 = (*(v343 + 24) + 8 * v345 - 8 * v344);
            v163 = (*(this + 24) + 8 * v39);
LABEL_642:
            *(this + 14) = v163[2];
            *(this + 15) = v163[3];
            goto LABEL_317;
          }

          v42 = v41 - v37->chunkNativeStart;
          if (v42 < 0 || v42 >= v37->nativeIndexingLimit || v37->chunkContents[v42] >> 10 > 0x36u)
          {
            utext_setNativeIndex(v37, v41);
            v37 = *(this + 4);
            LODWORD(v42) = v37->chunkOffset;
          }

          else
          {
            v37->chunkOffset = v42;
          }

          v299 = v42 - 1;
          if (v42 < 1 || v37->chunkContents[v42 - 1] >> 11 > 0x1Au)
          {
            utext_previous32(v37);
            v37 = *(this + 4);
            v299 = v37->chunkOffset;
          }

          else
          {
            v37->chunkOffset = v299;
          }

          if (v299 <= v37->nativeIndexingLimit)
          {
            v281 = v37->chunkNativeStart + v299;
            goto LABEL_638;
          }

LABEL_605:
          v281 = (v37->pFuncs->mapOffsetToNative)();
          goto LABEL_638;
        }

        v281 = *v17 - v35;
        *(v40 + 32) = v281;
        if (v281 < 1)
        {
          goto LABEL_639;
        }

        v282 = v281 - v37->chunkNativeStart;
        if (v282 < 0 || (v283 = v37->nativeIndexingLimit, v282 >= v283) || v37->chunkContents[v282] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v37, v281);
          v37 = *(this + 4);
          LODWORD(v282) = v37->chunkOffset;
          LODWORD(v283) = v37->nativeIndexingLimit;
        }

        else
        {
          v37->chunkOffset = v282;
        }

        if (v282 > v283)
        {
          goto LABEL_605;
        }

        v281 = v37->chunkNativeStart + v282;
LABEL_638:
        *(v40 + 32) = v281;
LABEL_639:
        if (v281 < 0 || v281 < *v17 - v38)
        {
          goto LABEL_641;
        }

        if (*a4 > 0)
        {
          goto LABEL_764;
        }

        v346 = v17[1];
        v347 = *(this + 22);
        v348 = *(this + 14);
        v349 = *(v347 + 8);
        v350 = v349 + v348;
        if (v349 + v348 >= 0 && *(v347 + 12) >= v350)
        {
          goto LABEL_648;
        }

        if (icu::UVector64::expandCapacity(*(this + 22), v350, a4))
        {
          v349 = *(v347 + 8);
          v350 = v349 + v348;
LABEL_648:
          v86 = (*(v347 + 24) + 8 * v349);
          *(v347 + 8) = v350;
        }

        else
        {
          v86 = 0;
        }

        if (*a4 >= 1)
        {
          goto LABEL_763;
        }

        v399 = 0;
        v400 = v346 - 3;
        v401 = *(this + 14);
        v402 = &v86[-v401];
        v403 = -1 * v401;
        do
        {
          v86[v399++] = v86[v403++];
        }

        while (v403 * 8);
        goto LABEL_768;
      case 0x2E:
        if (*v17 != *(this + 15))
        {
          goto LABEL_316;
        }

        v163 = (*(this + 24) + 8 * (v20 & 0xFFFFFF));
        goto LABEL_642;
      case 0x2F:
        v17[1] = v19 + 2;
        v46 = *(v13 + 8 * v21);
        v17[1] = v19 + 3;
        v47 = *(this + 4);
        if (v47->pFuncs->mapNativeIndexToUTF16)
        {
          v48 = 3 * *(v13 + 8 * (v19 + 2));
        }

        else
        {
          v48 = *(v13 + 8 * (v19 + 2));
        }

        v17[1] = v19 + 4;
        v49 = *(v13 + 8 * (v19 + 3));
        v50 = v20 & 0xFFFFFF;
        v40 = *(this + 24) + 8 * (v20 & 0xFFFFFF);
        v51 = *(v40 + 32);
        if ((v51 & 0x8000000000000000) == 0)
        {
          if (!v51)
          {
            *(v40 + 32) = -1;
LABEL_653:
            v27 = v49 & 0xFFFFFF;
            v351 = *(this + 24) + 8 * v50;
            *(this + 14) = *(v351 + 16);
            *(this + 15) = *(v351 + 24);
            goto LABEL_654;
          }

          v52 = v51 - v47->chunkNativeStart;
          if (v52 < 0 || v52 >= v47->nativeIndexingLimit || v47->chunkContents[v52] >> 10 > 0x36u)
          {
            utext_setNativeIndex(v47, v51);
            v47 = *(this + 4);
            LODWORD(v52) = v47->chunkOffset;
          }

          else
          {
            v47->chunkOffset = v52;
          }

          v300 = v52 - 1;
          if (v52 < 1 || v47->chunkContents[v52 - 1] >> 11 > 0x1Au)
          {
            utext_previous32(v47);
            v47 = *(this + 4);
            v300 = v47->chunkOffset;
          }

          else
          {
            v47->chunkOffset = v300;
          }

          if (v300 <= v47->nativeIndexingLimit)
          {
            v284 = v47->chunkNativeStart + v300;
            goto LABEL_650;
          }

LABEL_608:
          v284 = (v47->pFuncs->mapOffsetToNative)();
          goto LABEL_650;
        }

        v284 = *v17 - v46;
        *(v40 + 32) = v284;
        if (v284 < 1)
        {
          goto LABEL_651;
        }

        v285 = v284 - v47->chunkNativeStart;
        if (v285 < 0 || (v286 = v47->nativeIndexingLimit, v285 >= v286) || v47->chunkContents[v285] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v47, v284);
          v47 = *(this + 4);
          LODWORD(v285) = v47->chunkOffset;
          LODWORD(v286) = v47->nativeIndexingLimit;
        }

        else
        {
          v47->chunkOffset = v285;
        }

        if (v285 > v286)
        {
          goto LABEL_608;
        }

        v284 = v47->chunkNativeStart + v285;
LABEL_650:
        *(v40 + 32) = v284;
LABEL_651:
        if (v284 < 0 || v284 < *v17 - v48)
        {
          goto LABEL_653;
        }

        if (*a4 > 0)
        {
          goto LABEL_764;
        }

        v352 = v17[1];
        v353 = *(this + 22);
        v354 = *(this + 14);
        v355 = *(v353 + 8);
        v356 = v355 + v354;
        if (v355 + v354 >= 0 && *(v353 + 12) >= v356)
        {
          goto LABEL_660;
        }

        if (icu::UVector64::expandCapacity(*(this + 22), v356, a4))
        {
          v355 = *(v353 + 8);
          v356 = v355 + v354;
LABEL_660:
          v86 = (*(v353 + 24) + 8 * v355);
          *(v353 + 8) = v356;
        }

        else
        {
          v86 = 0;
        }

        if (*a4 < 1)
        {
          v404 = 0;
          v400 = v352 - 4;
          v405 = *(this + 14);
          v402 = &v86[-v405];
          v406 = -1 * v405;
          do
          {
            v86[v404++] = v86[v406++];
          }

          while (v406 * 8);
LABEL_768:
          v407 = *(this + 68);
          v81 = __OFSUB__(v407--, 1);
          *(this + 68) = v407;
          if ((v407 < 0) ^ v81 | (v407 == 0))
          {
            icu::RegexMatcher::IncrementTime(this, a4);
          }

          v402[1] = v400;
        }

        else
        {
LABEL_763:
          *a4 = U_REGEX_STACK_OVERFLOW;
LABEL_764:
          v86 = v17;
        }

        *v86 = *(v40 + 32);
LABEL_706:
        v17 = v86;
        goto LABEL_317;
      case 0x30:
        if (*v17 == *(this + 15))
        {
          v162 = (*(this + 24) + 8 * (v20 & 0xFFFFFF));
          *(this + 14) = v162[2];
          *(this + 15) = v162[3];
          icu::UVector64::setSize(*(this + 22), *v162);
        }

        goto LABEL_316;
      case 0x31:
        v32 = *v17;
        if (*v17 >= *(this + 15))
        {
          goto LABEL_315;
        }

        v33 = *(this + 4);
        v34 = v32 - v33->chunkNativeStart;
        if (v34 < 0 || v34 >= v33->nativeIndexingLimit || v33->chunkContents[v34] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v33, v32);
          v33 = *(this + 4);
          LODWORD(v34) = v33->chunkOffset;
        }

        else
        {
          v33->chunkOffset = v34;
        }

        if (v34 >= v33->chunkLength || (v251 = v33->chunkContents[v34], v251 >> 11 > 0x1A))
        {
          v251 = utext_next32(v33);
        }

        else
        {
          v33->chunkOffset = v34 + 1;
        }

        v280 = v20 & 0xFFFFFF;
        if (v251 > 255)
        {
          if (icu::UnicodeSet::contains((qword_1ED443488 + 200 * v280 + 8), v251))
          {
            goto LABEL_316;
          }
        }

        else if ((*(qword_1ED443488 + 32 * v280 + (v251 >> 3) + 2608) >> (v251 & 7)))
        {
          goto LABEL_316;
        }

        goto LABEL_614;
      case 0x32:
        v176 = *(*(this + 1) + 112);
        v177 = icu::UVector::elementAt(v409, v20 & 0xFFFFFF);
        v178 = *v17;
        v179 = *(this + 4);
        v180 = *v17 - v179->chunkNativeStart;
        if (v180 < 0 || v180 >= v179->nativeIndexingLimit || v179->chunkContents[v180] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v179, *v17);
        }

        else
        {
          v179->chunkOffset = v180;
        }

        if (v178 >= *(this + 15))
        {
          goto LABEL_277;
        }

        v203 = v176 + 32 * (v20 & 0xFFFFFF);
        do
        {
          v204 = *(this + 4);
          v205 = v204->chunkOffset;
          if (v205 >= v204->chunkLength || (v206 = v204->chunkContents[v205], v206 >> 11 > 0x1A))
          {
            v206 = utext_next32(v204);
          }

          else
          {
            v204->chunkOffset = v205 + 1;
          }

          if (v206 > 255)
          {
            if (!icu::UnicodeSet::contains(v177, v206))
            {
              goto LABEL_278;
            }
          }

          else if (((*(v203 + (v206 >> 3)) >> (v206 & 7)) & 1) == 0)
          {
            goto LABEL_278;
          }

          v207 = *(this + 4);
          v208 = *(v207 + 40);
          if (v208 <= *(v207 + 28))
          {
            v178 = *(v207 + 32) + v208;
          }

          else
          {
            v178 = (*(*(v207 + 56) + 64))();
          }
        }

        while (v178 < *(this + 15));
LABEL_277:
        *(this + 168) = 1;
LABEL_278:
        v209 = v17[1];
        if (v178 == *v17)
        {
          goto LABEL_347;
        }

        v17[(*(v13 + 8 * v209) & 0xFFFFFFLL) + 2] = *v17;
        *v17 = v178;
        if (*a4 > 0)
        {
          goto LABEL_703;
        }

        v210 = *(this + 22);
        v211 = *(this + 14);
        v212 = *(v210 + 8);
        v213 = v212 + v211;
        if (v212 + v211 >= 0 && *(v210 + 12) >= v213)
        {
          goto LABEL_284;
        }

        if (icu::UVector64::expandCapacity(*(this + 22), v213, a4))
        {
          v212 = *(v210 + 8);
          v213 = v212 + v211;
LABEL_284:
          v86 = (*(v210 + 24) + 8 * v212);
          *(v210 + 8) = v213;
        }

        else
        {
          v86 = 0;
        }

        if (*a4 >= 1)
        {
          goto LABEL_702;
        }

        v374 = 0;
        v375 = *(this + 14);
        v365 = &v86[-v375];
        v376 = -1 * v375;
        do
        {
          v86[v374++] = v86[v376++];
        }

        while (v376 * 8);
        goto LABEL_709;
      case 0x33:
        v134 = v17[(v20 & 0xFFFFFF) + 2];
        v135 = *v17;
        if (v134 == *v17)
        {
          goto LABEL_317;
        }

        v136 = *(this + 4);
        v137 = v135 - v136->chunkNativeStart;
        if (v137 < 0 || v137 >= v136->nativeIndexingLimit || v136->chunkContents[v137] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v136, v135);
          v136 = *(this + 4);
          LODWORD(v137) = v136->chunkOffset;
        }

        else
        {
          v136->chunkOffset = v137;
        }

        v267 = v137 - 1;
        if (v137 < 1 || (v268 = v136->chunkContents, v268[v137 - 1] >> 11 > 0x1Au))
        {
          v269 = utext_previous32(v136);
          v136 = *(this + 4);
          v267 = v136->chunkOffset;
        }

        else
        {
          v136->chunkOffset = v267;
          v269 = v268[v267];
        }

        if (v267 <= v136->nativeIndexingLimit)
        {
          v298 = v136->chunkNativeStart + v267;
        }

        else
        {
          v298 = (v136->pFuncs->mapOffsetToNative)();
          v136 = *(this + 4);
          v267 = v136->chunkOffset;
        }

        *v17 = v298;
        v311 = v267 - 1;
        if (v267 < 1 || (v312 = v136->chunkContents, v312[v267 - 1] >> 11 > 0x1Au))
        {
          v313 = utext_previous32(v136);
        }

        else
        {
          v136->chunkOffset = v311;
          v313 = v312[v311];
        }

        if (v269 == 10)
        {
          v314 = *v17 > v134 && v313 == 13;
          if (v314 && *(v13 - 16 + 8 * v17[1] + 3) << 24 == 872415232)
          {
            v315 = *(this + 4);
            v316 = *(v315 + 40);
            if (v316 <= *(v315 + 28))
            {
              v317 = *(v315 + 32) + v316;
            }

            else
            {
              v317 = (*(*(v315 + 56) + 64))();
            }

            *v17 = v317;
          }
        }

        if (*a4 > 0)
        {
          goto LABEL_778;
        }

        v384 = v17[1];
        v385 = *(this + 22);
        v386 = *(this + 14);
        v387 = *(v385 + 8);
        v388 = v387 + v386;
        if (v387 + v386 >= 0 && *(v385 + 12) >= v388)
        {
          goto LABEL_738;
        }

        if (icu::UVector64::expandCapacity(*(this + 22), v388, a4))
        {
          v387 = *(v385 + 8);
          v388 = v387 + v386;
LABEL_738:
          v389 = *(v385 + 24) + 8 * v387;
          *(v385 + 8) = v388;
        }

        else
        {
          v389 = 0;
        }

        if (*a4 <= 0)
        {
          v390 = 0;
          v391 = v384 - 1;
          v392 = *(this + 14);
          v393 = v389 - 8 * v392;
          v394 = -8 * v392;
          do
          {
            *(v389 + v390) = *(v389 + v394);
            v390 += 8;
            v394 += 8;
          }

          while (v394);
          v395 = *(this + 68);
          v81 = __OFSUB__(v395--, 1);
          *(this + 68) = v395;
          if ((v395 < 0) ^ v81 | (v395 == 0))
          {
            icu::RegexMatcher::IncrementTime(this, a4);
          }

          *(v393 + 8) = v391;
          v17 = v389;
LABEL_317:
          if (*a4 >= 1)
          {
            goto LABEL_778;
          }

          continue;
        }

LABEL_776:
        v22 = U_REGEX_STACK_OVERFLOW;
LABEL_777:
        *a4 = v22;
LABEL_778:
        *(this + 130) = 0;
LABEL_779:
        *(this + 23) = v17;
        return;
      case 0x34:
        if (v20)
        {
          v24 = *(this + 15);
LABEL_345:
          *(this + 168) = 1;
          goto LABEL_346;
        }

        v24 = *v17;
        v25 = *(this + 4);
        v26 = *v17 - v25->chunkNativeStart;
        if (v26 < 0 || v26 >= v25->nativeIndexingLimit || v25->chunkContents[v26] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v25, *v17);
        }

        else
        {
          v25->chunkOffset = v26;
        }

        if (v24 >= *(this + 15))
        {
          goto LABEL_345;
        }

        v237 = v20 & 2;
        while (1)
        {
          v238 = *(this + 4);
          v239 = *(v238 + 40);
          if (v239 >= *(v238 + 44) || (v240 = *(*(v238 + 48) + 2 * v239), v240 >> 11 > 0x1A))
          {
            v240 = utext_next32(*(this + 4));
          }

          else
          {
            *(v238 + 40) = v239 + 1;
          }

          if ((v240 & 0x7E) <= 0x29)
          {
            if (v240 == 10)
            {
              break;
            }

            if (!(v240 & 0xFFFFDF50 | v237))
            {
              v241 = v240 - 11 >= 3 && v240 - 8232 >= 2;
              if (!v241 || v240 == 133)
              {
                break;
              }
            }
          }

          v242 = *(this + 4);
          v243 = *(v242 + 40);
          if (v243 <= *(v242 + 28))
          {
            v24 = *(v242 + 32) + v243;
          }

          else
          {
            v24 = (*(*(v242 + 56) + 64))();
          }

          if (v24 >= *(this + 15))
          {
            goto LABEL_345;
          }
        }

LABEL_346:
        v209 = v17[1];
        if (v24 == *v17)
        {
LABEL_347:
          v27 = v209 + 1;
          goto LABEL_654;
        }

        v17[(*(v13 + 8 * v209) & 0xFFFFFFLL) + 2] = *v17;
        *v17 = v24;
        if (*a4 > 0)
        {
          goto LABEL_703;
        }

        v244 = *(this + 22);
        v245 = *(this + 14);
        v246 = *(v244 + 8);
        v247 = v246 + v245;
        if (v246 + v245 >= 0 && *(v244 + 12) >= v247)
        {
          goto LABEL_353;
        }

        if (icu::UVector64::expandCapacity(*(this + 22), v247, a4))
        {
          v246 = *(v244 + 8);
          v247 = v246 + v245;
LABEL_353:
          v86 = (*(v244 + 24) + 8 * v246);
          *(v244 + 8) = v247;
        }

        else
        {
          v86 = 0;
        }

        if (*a4 >= 1)
        {
LABEL_702:
          *a4 = U_REGEX_STACK_OVERFLOW;
LABEL_703:
          v86 = v17;
        }

        else
        {
          v363 = 0;
          v364 = *(this + 14);
          v365 = &v86[-v364];
          v366 = -1 * v364;
          do
          {
            v86[v363++] = v86[v366++];
          }

          while (v366 * 8);
LABEL_709:
          v377 = *(this + 68);
          v81 = __OFSUB__(v377--, 1);
          *(this + 68) = v377;
          if ((v377 < 0) ^ v81 | (v377 == 0))
          {
            icu::RegexMatcher::IncrementTime(this, a4);
          }

          v365[1] = v209;
        }

        v357 = v86[1] + 1;
LABEL_705:
        v86[1] = v357;
        goto LABEL_706;
      case 0x35:
        isWordBoundary = icu::RegexMatcher::isUWordBoundary(this, *v17, a4);
LABEL_109:
        if (isWordBoundary != (v23 != 0))
        {
          goto LABEL_317;
        }

        goto LABEL_316;
      case 0x36:
        v167 = *v17;
        if (*v17 >= *(this + 11))
        {
          goto LABEL_753;
        }

        v168 = *(this + 4);
        v169 = v167 - v168->chunkNativeStart;
        if (v169 < 0 || v169 >= v168->nativeIndexingLimit || v168->chunkContents[v169] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v168, v167);
          v168 = *(this + 4);
          LODWORD(v169) = v168->chunkOffset;
        }

        else
        {
          v168->chunkOffset = v169;
        }

        if (v169 >= v168->chunkLength || (v274 = v168->chunkContents[v169], v274 >> 11 > 0x1A))
        {
          v274 = utext_next32(v168);
        }

        else
        {
          v168->chunkOffset = v169 + 1;
        }

        if (v274 == 10)
        {
          v295 = *(this + 4);
          v296 = *(v295 + 40);
          v297 = v296 <= *(v295 + 28) ? *(v295 + 32) + v296 : (*(*(v295 + 56) + 64))();
          if (v297 == *(this + 11))
          {
            goto LABEL_753;
          }
        }

        goto LABEL_316;
      case 0x37:
        v43 = *v17;
        if (*v17 >= *(this + 11))
        {
          goto LABEL_753;
        }

        v44 = *(this + 4);
        v45 = v43 - v44->chunkNativeStart;
        if (v45 < 0 || v45 >= v44->nativeIndexingLimit || v44->chunkContents[v45] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v44, v43);
          v44 = *(this + 4);
          LODWORD(v45) = v44->chunkOffset;
        }

        else
        {
          v44->chunkOffset = v45;
        }

        if (v45 >= v44->chunkLength || (v252 = v44->chunkContents[v45], v252 >> 11 > 0x1A))
        {
          v252 = utext_current32(v44);
        }

        if (v252 == 10)
        {
          goto LABEL_317;
        }

        goto LABEL_316;
      case 0x38:
        v164 = *v17;
        if (*v17 >= *(this + 15))
        {
          goto LABEL_315;
        }

        v165 = *(this + 4);
        v166 = v164 - v165->chunkNativeStart;
        if (v166 < 0 || v166 >= v165->nativeIndexingLimit || v165->chunkContents[v166] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v165, v164);
          v165 = *(this + 4);
          LODWORD(v166) = v165->chunkOffset;
        }

        else
        {
          v165->chunkOffset = v166;
        }

        if (v166 >= v165->chunkLength || (v273 = v165->chunkContents[v166], v273 >> 11 > 0x1A))
        {
          v273 = utext_next32(v165);
        }

        else
        {
          v165->chunkOffset = v166 + 1;
        }

        v293 = u_charType(v273);
        v291 = v273 == 9 || v293 == 12;
LABEL_498:
        v294 = v291;
        v287 = v23 != 0;
        goto LABEL_613;
      case 0x39:
        v113 = *v17;
        if (*v17 >= *(this + 15))
        {
          goto LABEL_315;
        }

        v114 = *(this + 4);
        v115 = v113 - v114->chunkNativeStart;
        if (v115 < 0 || v115 >= v114->nativeIndexingLimit || v114->chunkContents[v115] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v114, v113);
          v114 = *(this + 4);
          LODWORD(v115) = v114->chunkOffset;
        }

        else
        {
          v114->chunkOffset = v115;
        }

        if (v115 >= v114->chunkLength || (v264 = v114->chunkContents[v115], v264 >> 11 > 0x1A))
        {
          v264 = utext_next32(v114);
        }

        else
        {
          v114->chunkOffset = v115 + 1;
        }

        if ((v264 & 0xFFFFDF50) != 0)
        {
          goto LABEL_316;
        }

        if (v264 <= 132)
        {
          if ((v264 - 10) >= 3)
          {
            if (v264 != 13)
            {
              goto LABEL_316;
            }

            if (utext_current32(*(this + 4)) == 10)
            {
              utext_next32(*(this + 4));
            }
          }

LABEL_614:
          v190 = *(this + 4);
          goto LABEL_615;
        }

        if ((v264 - 8232) < 2 || v264 == 133)
        {
          goto LABEL_614;
        }

        goto LABEL_316;
      case 0x3A:
        v63 = *v17;
        if (*v17 >= *(this + 15))
        {
          goto LABEL_315;
        }

        v64 = *(this + 4);
        v65 = v63 - v64->chunkNativeStart;
        if (v65 < 0 || v65 >= v64->nativeIndexingLimit || v64->chunkContents[v65] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v64, v63);
          v64 = *(this + 4);
          LODWORD(v65) = v64->chunkOffset;
        }

        else
        {
          v64->chunkOffset = v65;
        }

        if (v65 >= v64->chunkLength || (v259 = v64->chunkContents[v65], v259 >> 11 > 0x1A))
        {
          v259 = utext_next32(v64);
        }

        else
        {
          v64->chunkOffset = v65 + 1;
        }

        if ((v259 & 0xFFFFDF50) != 0 || (v287 = 1, v259 - 10 >= 4) && v259 - 8232 >= 2 && v259 != 133)
        {
          v287 = 0;
        }

        v294 = v23 != 0;
LABEL_613:
        if (v287 != v294)
        {
          goto LABEL_614;
        }

        goto LABEL_316;
      default:
        goto LABEL_777;
    }
  }
}

uint64_t sub_1953BAE10(int a1)
{
  v1 = (a1 - 8232) < 2 || a1 == 133;
  v2 = (a1 - 10) < 4 || v1;
  if ((a1 & 0xFFFFDF50) != 0)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t icu::RegexMatcher::find(icu::RegexMatcher *this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v3 = *(this + 79);
  if (v3 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
LABEL_6:
    *a3 = v3;
    return 0;
  }

  v4 = *(this + 6);
  *(this + 8) = 0;
  *(this + 9) = v4;
  *(this + 14) = 0;
  *(this + 15) = v4;
  *(this + 10) = 0;
  *(this + 11) = v4;
  *(this + 12) = 0;
  *(this + 13) = v4;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 152) = xmmword_195492710;
  *(this + 130) = 0;
  *(this + 84) = 0;
  *(this + 268) = 0x271000000000;
  if (a2 < 0 || v4 < a2)
  {
    v3 = U_INDEX_OUTOFBOUNDS_ERROR;
    goto LABEL_6;
  }

  *(this + 18) = a2;
  return icu::RegexMatcher::find(this, a3);
}

double icu::RegexMatcher::reset(icu::RegexMatcher *this)
{
  v1 = *(this + 6);
  *(this + 8) = 0;
  *(this + 9) = v1;
  *(this + 14) = 0;
  *(this + 15) = v1;
  *(this + 10) = 0;
  *(this + 11) = v1;
  *(this + 12) = 0;
  *(this + 13) = v1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  result = NAN;
  *(this + 152) = xmmword_195492710;
  *(this + 130) = 0;
  *(this + 84) = 0;
  *(this + 268) = 0x271000000000;
  return result;
}

void icu::RegexMatcher::MatchChunkAt(icu::RegexMatcher *this, int a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return;
  }

  v300 = v4;
  v301 = v5;
  v10 = *(this + 1);
  v11 = *(v10 + 48);
  if ((v11 & 0x11) != 0)
  {
    v12 = 0;
  }

  else if ((v11 & 2) != 0)
  {
    v12 = v10 + 50;
  }

  else
  {
    v12 = *(v10 + 64);
  }

  v13 = *(*(v10 + 32) + 24);
  v14 = *(v10 + 104);
  v15 = *(*(this + 4) + 48);
  *(this + 14) = *(v10 + 128);
  v16 = icu::RegexMatcher::resetStack(this);
  v17 = *(this + 79);
  if (v17 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    *a4 = v17;
    return;
  }

  v18 = v16;
  v293 = v14;
  v294 = v12;
  v292 = a3;
  *v16 = a2;
  v16[1] = 0;
  v289 = a2;
  v19 = *(*(this + 1) + 132);
  if (v19 >= 1)
  {
    bzero(*(this + 24), 8 * v19);
  }

  v20 = 0;
  v290 = v15 - 2;
  v291 = v15 - 4;
  while (2)
  {
    v21 = *(v18 + 8);
    v22 = *(v13 + 8 * v21);
    v23 = v21 + 1;
    *(v18 + 8) = v21 + 1;
    v24 = U_INTERNAL_PROGRAM_ERROR;
    v25 = v22 & 0xFFFFFF;
    switch(BYTE3(v22))
    {
      case 1:
        goto LABEL_327;
      case 2:
        if (v292 && *v18 != *(this + 15))
        {
          goto LABEL_327;
        }

        *(this + 130) = 1;
        *(this + 19) = *(this + 18);
        *(this + 17) = v289;
        *(this + 18) = *v18;
        goto LABEL_496;
      case 3:
        v106 = *v18;
        v107 = *(this + 15);
        if (*v18 >= v107)
        {
          goto LABEL_326;
        }

        v108 = v106 + 1;
        *v18 = v106 + 1;
        v109 = *(v15 + 2 * v106);
        if ((v109 & 0xFC00) == 0xD800 && v108 != v107)
        {
          v111 = *(v15 + 2 * v108);
          if ((v111 & 0xFC00) == 0xDC00)
          {
            *v18 = v106 + 2;
            v109 = (v109 << 10) - 56613888 + v111;
          }
        }

        if (v109 == v25)
        {
          goto LABEL_328;
        }

        goto LABEL_327;
      case 4:
        v98 = *(v13 + 8 * v23);
        *(v18 + 8) = v21 + 2;
        v99 = v98 & 0xFFFFFF;
        v100 = (v15 + 2 * *v18);
        v101 = (v294 + 2 * (v22 & 0xFFFFFF));
        v102 = &v100[v99];
        while (v100 < v102)
        {
          if (v100 >= v15 + 2 * *(this + 15))
          {
            goto LABEL_326;
          }

          v104 = *v100++;
          v103 = v104;
          v105 = *v101++;
          if (v103 != v105)
          {
            goto LABEL_327;
          }
        }

        v132 = *v18 + v99;
        goto LABEL_386;
      case 6:
        if (*a4 > 0)
        {
          goto LABEL_495;
        }

        v81 = *(this + 22);
        v82 = *(this + 14);
        v83 = *(v81 + 8);
        v84 = v83 + v82;
        if (v83 + v82 >= 0 && *(v81 + 12) >= v84)
        {
          goto LABEL_107;
        }

        if (icu::UVector64::expandCapacity(*(this + 22), v84, a4))
        {
          v83 = *(v81 + 8);
          v84 = v83 + v82;
LABEL_107:
          v85 = *(v81 + 24) + 8 * v83;
          *(v81 + 8) = v84;
        }

        else
        {
          v85 = 0;
        }

        if (*a4 <= 0)
        {
          v266 = 0;
          v267 = *(this + 14);
          v268 = v85 - 8 * v267;
          v269 = -8 * v267;
          do
          {
            *(v85 + v266) = *(v85 + v269);
            v266 += 8;
            v269 += 8;
          }

          while (v269);
          v270 = *(this + 68);
          v80 = __OFSUB__(v270--, 1);
          *(this + 68) = v270;
          if ((v270 < 0) ^ v80 | (v270 == 0))
          {
            icu::RegexMatcher::IncrementTime(this, a4);
          }

          *(v268 + 8) = v22 & 0xFFFFFF;
LABEL_472:
          v18 = v85;
LABEL_328:
          ++v20;
          if (*a4 > 0 || v20 == 148108655)
          {
            goto LABEL_495;
          }

          continue;
        }

        v24 = U_REGEX_STACK_OVERFLOW;
LABEL_494:
        *a4 = v24;
LABEL_495:
        *(this + 130) = 0;
LABEL_496:
        *(this + 23) = v18;
        return;
      case 7:
        goto LABEL_328;
      case 8:
        v57 = *v18;
        v58 = v25 + 2;
        goto LABEL_142;
      case 9:
        v71 = *v18;
        *(v18 + 16 + 8 * (v22 & 0xFFFFFF)) = *(v18 + 16 + 8 * (v25 + 2));
        *(v18 + 16 + 8 * (v25 + 1)) = v71;
        goto LABEL_328;
      case 0xA:
        v147 = *v18;
        v148 = *(this + 15);
        if (*v18 >= v148)
        {
          goto LABEL_326;
        }

        v149 = v22 & 0x7FFFFF;
        v150 = v147 + 1;
        *v18 = v147 + 1;
        v151 = *(v15 + 2 * v147);
        if ((v151 & 0xFC00) == 0xD800)
        {
          if (v150 != v148)
          {
            v152 = *(v15 + 2 * v150);
            if ((v152 & 0xFC00) == 0xDC00)
            {
              *v18 = v147 + 2;
              LODWORD(v151) = (v151 << 10) - 56613888 + v152;
            }
          }
        }

        else if (v151 <= 0xFF)
        {
          v262 = ((*(qword_1ED443488 + 32 * v149 + (v151 >> 3) + 2608) >> (v151 & 7)) & 1) == 0;
          goto LABEL_399;
        }

        v262 = icu::UnicodeSet::contains((qword_1ED443488 + 200 * v149 + 8), v151) == 0;
LABEL_399:
        if (v262)
        {
          v264 = (v22 & 0x800000) >> 23;
        }

        else
        {
          v264 = (v22 & 0x800000) == 0;
        }

        if ((v264 & 1) == 0)
        {
          goto LABEL_327;
        }

        goto LABEL_328;
      case 0xB:
        v117 = *v18;
        v118 = *(this + 15);
        if (*v18 >= v118)
        {
          goto LABEL_326;
        }

        v119 = v117 + 1;
        *v18 = v117 + 1;
        v120 = *(v15 + 2 * v117);
        if ((v120 & 0xFC00) == 0xD800)
        {
          if (v119 != v118)
          {
            v121 = *(v15 + 2 * v119);
            if ((v121 & 0xFC00) == 0xDC00)
            {
              *v18 = v117 + 2;
              LODWORD(v120) = (v120 << 10) - 56613888 + v121;
            }
          }
        }

        else if (v120 <= 0xFF)
        {
          if ((*(*(*(this + 1) + 112) + 32 * (v22 & 0xFFFFFF) + (v120 >> 3)) >> (v120 & 7)))
          {
            goto LABEL_328;
          }

          goto LABEL_327;
        }

        v260 = icu::UVector::elementAt(v293, v22 & 0xFFFFFF);
        if (icu::UnicodeSet::contains(v260, v120))
        {
          goto LABEL_328;
        }

        goto LABEL_327;
      case 0xC:
        v133 = *v18;
        v134 = *(this + 15);
        if (*v18 >= v134)
        {
          goto LABEL_326;
        }

        v135 = v133 + 1;
        *v18 = v133 + 1;
        v136 = *(v15 + 2 * v133);
        if ((v136 & 0xFC00) == 0xD800 && v135 != v134)
        {
          v138 = *(v15 + 2 * v135);
          if ((v138 & 0xFC00) == 0xDC00)
          {
            *v18 = v133 + 2;
            v136 = (v136 << 10) - 56613888 + v138;
          }
        }

        if (!sub_1953BAE10(v136))
        {
          goto LABEL_328;
        }

        goto LABEL_327;
      case 0xD:
        goto LABEL_39;
      case 0xE:
        goto LABEL_495;
      case 0xF:
        if (*a4 > 0)
        {
          goto LABEL_470;
        }

        v153 = *(this + 22);
        v154 = *(this + 14);
        v155 = *(v153 + 8);
        v156 = v155 + v154;
        if (v155 + v154 >= 0 && *(v153 + 12) >= v156)
        {
          goto LABEL_197;
        }

        if (icu::UVector64::expandCapacity(*(this + 22), v156, a4))
        {
          v155 = *(v153 + 8);
          v156 = v155 + v154;
LABEL_197:
          v85 = *(v153 + 24) + 8 * v155;
          *(v153 + 8) = v156;
        }

        else
        {
          v85 = 0;
        }

        if (*a4 < 1)
        {
          v283 = 0;
          v284 = *(this + 14);
          v285 = v85 - 8 * v284;
          v286 = -8 * v284;
          do
          {
            *(v85 + v283) = *(v85 + v286);
            v283 += 8;
            v286 += 8;
          }

          while (v286);
          v287 = *(this + 68);
          v80 = __OFSUB__(v287--, 1);
          *(this + 68) = v287;
          if ((v287 < 0) ^ v80 | (v287 == 0))
          {
            icu::RegexMatcher::IncrementTime(this, a4);
          }

          *(v285 + 8) = v23;
        }

        else
        {
          *a4 = U_REGEX_STACK_OVERFLOW;
LABEL_470:
          v85 = v18;
        }

        *(v85 + 8) = v22 & 0xFFFFFF;
        goto LABEL_472;
      case 0x10:
        isChunkWordBoundary = icu::RegexMatcher::isChunkWordBoundary(this, *v18);
        goto LABEL_119;
      case 0x11:
        v163 = *v18;
        if (*(this + 130))
        {
          v164 = *(this + 18);
        }

        else
        {
          v164 = *(this + 14);
        }

        goto LABEL_358;
      case 0x12:
        v69 = *(v13 - 8 + 8 * (v22 & 0xFFFFFF)) & 0xFFFFFFLL;
        if (*(v18 + 8 * v69 + 16) >= *v18)
        {
          goto LABEL_328;
        }

        v18 = sub_1953BF38C(this, v18, v21 + 1, a4);
        *(v18 + 8) = v22 & 0xFFFFFF;
        v57 = *v18;
        v70 = v18 + 8 * v69;
        goto LABEL_247;
      case 0x13:
        if (*v18 >= *(this + 15))
        {
          goto LABEL_326;
        }

        v177 = icu::RegexMatcher::followingGCBoundary(this, *v18, a4);
        *v18 = v177;
        v132 = *(this + 15);
        if (v177 < v132)
        {
          goto LABEL_328;
        }

        *(this + 168) = 1;
        goto LABEL_386;
      case 0x14:
        if (*v18 >= *(this + 11))
        {
          goto LABEL_491;
        }

        goto LABEL_327;
      case 0x15:
        v86 = *v18;
        v87 = *(this + 15);
        if (*v18 >= v87)
        {
          goto LABEL_326;
        }

        v88 = v86 + 1;
        *v18 = v86 + 1;
        v89 = *(v15 + 2 * v86);
        if ((v89 & 0xFC00) == 0xD800)
        {
          if (v88 == v87)
          {
            goto LABEL_328;
          }

          v90 = *(v15 + 2 * v88);
          goto LABEL_278;
        }

        v259 = v89 == 13 && v88 < v87;
        if (!v259 || *(v15 + 2 * v88) != 10)
        {
          goto LABEL_328;
        }

        goto LABEL_385;
      case 0x16:
        v165 = *v18;
        v166 = *(this + 15);
        if (*v18 >= v166)
        {
          goto LABEL_326;
        }

        v167 = v165 + 1;
        *v18 = v165 + 1;
        v168 = *(v15 + 2 * v165);
        if ((v168 & 0xFC00) == 0xD800 && v167 != v166)
        {
          v170 = *(v15 + 2 * v167);
          if ((v170 & 0xFC00) == 0xDC00)
          {
            *v18 = v165 + 2;
            v168 = (v168 << 10) - 56613888 + v170;
          }
        }

        v171 = u_charType(v168) == 9;
        goto LABEL_264;
      case 0x17:
        v163 = *v18;
        v164 = *(this + 10);
LABEL_358:
        if (v163 == v164)
        {
          goto LABEL_328;
        }

        goto LABEL_327;
      case 0x18:
        v182 = *v18;
        v183 = *(this + 11);
        if (*v18 < v183 - 2)
        {
          goto LABEL_327;
        }

        if (v182 >= v183)
        {
          goto LABEL_491;
        }

        if (v182 == v183 - 1)
        {
          v184 = (v15 + 2 * v182);
          v185 = *v184;
          if ((v185 & 0xF800) == 0xD800)
          {
            if ((v185 & 0x400) != 0)
            {
              if (v182 > *(this + 10))
              {
                v288 = *(v184 - 1);
                v187 = (v288 & 0xFC00) == 55296;
                v188 = v185 - 56613888 + (v288 << 10);
                goto LABEL_484;
              }
            }

            else if (v182 + 1 != v183)
            {
              v186 = *(v15 + 2 * (v182 + 1));
              v187 = (v186 & 0xFC00) == 56320;
              v188 = (v185 << 10) - 56613888 + v186;
LABEL_484:
              if (v187)
              {
                v185 = v188;
              }
            }
          }

          if (sub_1953BAE10(v185) && (v185 != 10 || v182 <= *(this + 10) || *(v184 - 1) != 13))
          {
            goto LABEL_491;
          }

          goto LABEL_327;
        }

        if (v182 == v183 - 2)
        {
          v282 = (v15 + 2 * v182);
          if (*v282 == 13)
          {
            v209 = v282[1];
LABEL_272:
            if (v209 == 10)
            {
LABEL_491:
              *(this + 84) = 257;
              goto LABEL_328;
            }
          }
        }

LABEL_327:
        v244 = *(this + 22);
        v245 = *(this + 14);
        v246 = (*(v244 + 8) - v245) & ~((*(v244 + 8) - v245) >> 31);
        *(v244 + 8) = v246;
        v18 = *(v244 + 24) + 8 * v246 - 8 * v245;
        goto LABEL_328;
      case 0x19:
        *(v18 + 8 * (v22 & 0xFFFFFF) + 16) = 0;
        *(v18 + 8) = v21 + 4;
        v56 = *(v13 + (((v23 << 32) + 0x200000000) >> 29));
        if (!*(v13 + (((v23 << 32) + 0x100000000) >> 29)))
        {
          v18 = sub_1953BF38C(this, v18, (*(v13 + 8 * v23) & 0xFFFFFFLL) + 1, a4);
        }

        if (!v56)
        {
          goto LABEL_327;
        }

        if (v56 == -1)
        {
          v57 = *v18;
          v58 = v25 + 1;
LABEL_142:
          v70 = v18 + 8 * v58;
LABEL_247:
          *(v70 + 16) = v57;
        }

        goto LABEL_328;
      case 0x1A:
        *(v18 + 16 + 8 * (v22 & 0xFFFFFF)) = 0;
        v178 = v21 + 4;
        *(v18 + 8) = v178;
        v179 = *(v13 + 8 * v23);
        v180 = *(v13 + (((v23 << 32) + 0x100000000) >> 29));
        v181 = *(v13 + (((v23 << 32) + 0x200000000) >> 29));
        if (v181 == -1)
        {
          *(v18 + 16 + 8 * (v25 + 1)) = *v18;
          if (v180)
          {
            goto LABEL_328;
          }

LABEL_361:
          v18 = sub_1953BF38C(this, v18, v178, a4);
          goto LABEL_362;
        }

        if (*(v13 + (((v23 << 32) + 0x100000000) >> 29)))
        {
          goto LABEL_328;
        }

        if (v181)
        {
          goto LABEL_361;
        }

LABEL_362:
        v35 = (v179 & 0xFFFFFF) + 1;
LABEL_461:
        *(v18 + 8) = v35;
        goto LABEL_328;
      case 0x1B:
        v86 = *v18;
        v210 = *(this + 15);
        if (*v18 >= v210)
        {
          goto LABEL_326;
        }

        v211 = v86 + 1;
        *v18 = v86 + 1;
        v212 = *(v15 + 2 * v86);
        if ((v212 & 0xFC00) == 0xD800)
        {
          if (v211 != v210)
          {
            v90 = *(v15 + 2 * v211);
LABEL_278:
            if ((v90 & 0xFC00) == 0xDC00)
            {
LABEL_385:
              v132 = v86 + 2;
              goto LABEL_386;
            }
          }
        }

        else if (v212 == 10)
        {
          goto LABEL_327;
        }

        goto LABEL_328;
      case 0x1C:
        v72 = (v13 + 8 * (v22 & 0xFFFFFF));
        v73 = v18 + 16;
        v74 = *v72 & 0xFFFFFFLL;
        v76 = v72[2];
        v75 = v72[3];
        v77 = *(v18 + 16 + 8 * v74) + 1;
        *(v18 + 16 + 8 * v74) = v77;
        if (v75 != -1 && v77 >= v75)
        {
          goto LABEL_328;
        }

        if (v77 >= v76)
        {
          if (v75 == -1)
          {
            v258 = v74 + 1;
            if (*v18 == *(v73 + 8 * v258))
            {
              goto LABEL_328;
            }

            *(v73 + 8 * v258) = *v18;
          }

          v18 = sub_1953BF38C(this, v18, v21 + 1, a4);
        }

        else
        {
          v79 = *(this + 68);
          v80 = __OFSUB__(v79--, 1);
          *(this + 68) = v79;
          if ((v79 < 0) ^ v80 | (v79 == 0))
          {
            icu::RegexMatcher::IncrementTime(this, a4);
          }
        }

        v35 = (v25 + 4);
        goto LABEL_461;
      case 0x1D:
        v139 = (v13 + 8 * (v22 & 0xFFFFFF));
        v140 = v18 + 16;
        v141 = *v139 & 0xFFFFFFLL;
        v143 = v139[2];
        v142 = v139[3];
        v144 = *(v18 + 16 + 8 * v141) + 1;
        *(v18 + 16 + 8 * v141) = v144;
        if (v142 != -1 && v144 >= v142)
        {
          goto LABEL_328;
        }

        if (v144 < v143)
        {
          *(v18 + 8) = (v25 + 4);
          v146 = *(this + 68);
          v80 = __OFSUB__(v146--, 1);
          *(this + 68) = v146;
          if ((v146 < 0) ^ v80 | (v146 == 0))
          {
            icu::RegexMatcher::IncrementTime(this, a4);
          }

          goto LABEL_328;
        }

        if (v142 == -1)
        {
          v261 = v141 + 1;
          if (*v18 == *(v140 + 8 * v261))
          {
            goto LABEL_328;
          }

          *(v140 + 8 * v261) = *v18;
        }

        v21 = (v25 + 4);
        goto LABEL_417;
      case 0x1E:
        if (*v18 <= *(this + 10))
        {
          goto LABEL_328;
        }

        v49 = *(v290 + 2 * *v18);
        goto LABEL_282;
      case 0x20:
        *(*(this + 24) + 8 * (v22 & 0xFFFFFF)) = *(*(this + 22) + 8);
        goto LABEL_328;
      case 0x21:
        v172 = *(*(this + 24) + 8 * (v22 & 0xFFFFFF));
        v173 = *(this + 22);
        v174 = *(this + 14);
        v85 = *(v173 + 3) + 8 * v172 - 8 * v174;
        if (v85 == v18)
        {
          goto LABEL_328;
        }

        if (v174 >= 1)
        {
          v175 = (*(v173 + 3) + 8 * v172 - 8 * v174);
          do
          {
            v176 = *v18;
            v18 += 8;
            *v175++ = v176;
            --v174;
          }

          while (v174);
        }

        icu::UVector64::setSize(v173, v172);
        goto LABEL_472;
      case 0x22:
        v189 = *(v18 + 16 + 8 * (v22 & 0xFFFFFF));
        if (v189 < 0)
        {
          goto LABEL_327;
        }

        v190 = *(v18 + 16 + 8 * (v25 + 1));
        v191 = *v18;
        v132 = *v18;
        v192 = v190 - v189;
        if (v190 <= v189)
        {
          goto LABEL_386;
        }

        v193 = *(this + 15);
        v132 = v191 + v190 - v189;
        if (v191 > v193)
        {
          v193 = *v18;
        }

        v194 = (v15 + 2 * v189);
        v195 = v193 - v191;
        v196 = (v15 + 2 * v191);
        do
        {
          if (!v195)
          {
LABEL_326:
            *(this + 168) = 1;
            goto LABEL_327;
          }

          if (*v194 != *v196)
          {
            goto LABEL_327;
          }

          ++v194;
          --v195;
          ++v196;
          --v192;
        }

        while (v192);
        if ((*(v290 + 2 * v190) & 0xFC00) == 0xD800 && v132 < *(this + 15) && (*(v15 + 2 * v132) & 0xFC00) == 0xDC00)
        {
          goto LABEL_327;
        }

LABEL_386:
        *v18 = v132;
        goto LABEL_328;
      case 0x23:
        v57 = *v18;
        v70 = v18 + 8 * (v22 & 0xFFFFFF);
        goto LABEL_247;
      case 0x24:
        *(v18 + 8) = v21 + 2;
        if (*(v18 + 8 * (*(v13 + 8 * v23) & 0xFFFFFFLL) + 16) >= *v18)
        {
          goto LABEL_327;
        }

LABEL_39:
        v35 = v22 & 0xFFFFFF;
        goto LABEL_461;
      case 0x25:
        v37 = (*(this + 24) + 8 * (v22 & 0xFFFFFF));
        *v37 = *(*(this + 22) + 8);
        v37[1] = *v18;
        v37[2] = *(this + 14);
        v37[3] = *(this + 15);
        *(this + 7) = *(this + 6);
        goto LABEL_328;
      case 0x26:
        v91 = *(this + 22);
        v92 = *(this + 24);
        v93 = *(v92 + 8 * (v22 & 0xFFFFFF));
        if (*(v91 + 8) <= v93)
        {
          v95 = v18;
        }

        else
        {
          v94 = *(this + 14);
          v95 = (*(v91 + 24) + 8 * v93 - 8 * v94);
          if (v94 >= 1)
          {
            v96 = (*(v91 + 24) + 8 * v93 - 8 * v94);
            do
            {
              v97 = *v18;
              v18 += 8;
              *v96++ = v97;
              --v94;
            }

            while (v94);
          }

          icu::UVector64::setSize(v91, v93);
          v92 = *(this + 24);
          v18 = v95;
        }

        v199 = (v92 + 8 * (v22 & 0xFFFFFF));
        *v95 = v199[1];
        goto LABEL_339;
      case 0x27:
        v238 = *v18;
        v239 = *(this + 15);
        if (*v18 >= v239)
        {
          goto LABEL_326;
        }

        v240 = v238 + 1;
        *v18 = v238 + 1;
        v241 = *(v15 + 2 * v238);
        if ((v241 & 0xFC00) == 0xD800 && v240 != v239)
        {
          v243 = *(v15 + 2 * v240);
          if ((v243 & 0xFC00) == 0xDC00)
          {
            *v18 = v238 + 2;
            v241 = (v241 << 10) - 56613888 + v243;
          }
        }

        if (u_foldCase(v241, 0) == v25)
        {
          goto LABEL_328;
        }

        goto LABEL_327;
      case 0x28:
        v226 = v294 + 2 * (v22 & 0xFFFFFF);
        v227 = *(v13 + 8 * v23);
        *(v18 + 8) = v21 + 2;
        v228 = v227 & 0xFFFFFF;
        v299 = 0;
        v297 = 0u;
        v298 = 0u;
        sub_1953AC940(&v297, v15, *v18, *(this + 15));
        v229 = 0;
        while (v229 < v228)
        {
          v230 = v229 + 1;
          v231 = *(v226 + 2 * v229);
          if ((v231 & 0xFC00) == 0xD800 && v230 != v228)
          {
            v233 = *(v226 + 2 * v230);
            v234 = (v233 & 0xFC00) == 56320;
            v235 = v229 + 2;
            v236 = (v231 << 10) - 56613888 + v233;
            if (v234)
            {
              v231 = v236;
            }

            if (v234)
            {
              LODWORD(v230) = v235;
            }
          }

          v237 = sub_1953AC950(&v297);
          v229 = v230;
          if (v237 != v231)
          {
            if (v237 == -1)
            {
              *(this + 168) = 1;
            }

            sub_1953ACA7C(&v297);
            goto LABEL_335;
          }
        }

        if (sub_1953ACA7C(&v297))
        {
LABEL_335:
          v248 = *(this + 22);
          v249 = *(this + 14);
          v250 = (*(v248 + 8) - v249) & ~((*(v248 + 8) - v249) >> 31);
          *(v248 + 8) = v250;
          v18 = *(v248 + 24) + 8 * v250 - 8 * v249;
          goto LABEL_443;
        }

        *v18 = sub_1953ACA8C(&v297);
        goto LABEL_443;
      case 0x29:
        v112 = *(v18 + 16 + 8 * (v22 & 0xFFFFFF));
        if (v112 < 0)
        {
          goto LABEL_327;
        }

        v113 = *(v18 + 16 + 8 * (v25 + 1));
        v299 = 0;
        v297 = 0u;
        v298 = 0u;
        sub_1953AC940(&v297, v15, v112, v113);
        v296 = 0;
        memset(v295, 0, sizeof(v295));
        sub_1953AC940(v295, v15, *v18, *(this + 15));
        while (2)
        {
          v114 = sub_1953AC950(&v297);
          if (v114 == -1)
          {
            if (!sub_1953ACA7C(v295))
            {
              *v18 = sub_1953ACA8C(v295);
              goto LABEL_434;
            }
          }

          else
          {
            v115 = v114;
            v116 = sub_1953AC950(v295);
            if (v116 != -1)
            {
              if (v116 != v115)
              {
                break;
              }

              continue;
            }

            *(this + 168) = 1;
          }

          break;
        }

        v271 = *(this + 22);
        v272 = *(this + 14);
        v273 = (*(v271 + 8) - v272) & ~((*(v271 + 8) - v272) >> 31);
        *(v271 + 8) = v273;
        v18 = *(v271 + 24) + 8 * v273 - 8 * v272;
LABEL_434:
        nullsub_17(v295);
LABEL_443:
        nullsub_17(&v297);
        goto LABEL_328;
      case 0x2A:
        v59 = *v18;
        if (*v18 >= *(this + 11))
        {
          goto LABEL_491;
        }

        v60 = (v15 + 2 * v59);
        v61 = *v60;
        if (sub_1953BAE10(v61) && (v61 != 10 || v59 <= *(this + 10) || *(v60 - 1) != 13))
        {
          goto LABEL_328;
        }

        goto LABEL_327;
      case 0x2B:
        v36 = *v18;
        if (*v18 != *(this + 10) && (v36 >= *(this + 11) || !sub_1953BAE10(*(v290 + 2 * v36))))
        {
          goto LABEL_327;
        }

        goto LABEL_328;
      case 0x2C:
        v197 = (*(this + 24) + 8 * (v22 & 0xFFFFFF));
        *v197 = *(*(this + 22) + 8);
        v197[1] = *v18;
        v197[2] = *(this + 14);
        v197[3] = *(this + 15);
        *(this + 14) = *(this + 8);
        *(this + 15) = *v18;
        v197[4] = -1;
        goto LABEL_328;
      case 0x2D:
        *(v18 + 8) = v21 + 2;
        v43 = *(v13 + 8 * v23);
        *(v18 + 8) = v21 + 3;
        v44 = *(v13 + 8 * (v21 + 2));
        v45 = (*(this + 24) + 8 * (v22 & 0xFFFFFF));
        v46 = v45[4];
        if (v46 < 0)
        {
          v47 = *v18 - v43;
          v45[4] = v47;
          if (v47 < 1)
          {
            if (v47 < 0)
            {
              goto LABEL_454;
            }

            v47 = 0;
          }

          else if (v47 < *(this + 6))
          {
            v256 = (v15 + 2 * v47);
            if ((*v256 & 0xFC00) == 0xDC00 && (*(v256 - 1) & 0xFC00) == 0xD800)
            {
              --v47;
              goto LABEL_350;
            }
          }
        }

        else
        {
          if (!v46)
          {
            v45[4] = -1;
            goto LABEL_454;
          }

          v47 = v46 - 1;
          v45[4] = v46 - 1;
          v48 = v46 != 1 && (*(v15 + 2 * (v46 - 1)) & 0xFC00) == 56320;
          if (v48 && (*(v291 + 2 * v46) & 0xFC00) == 0xD800)
          {
            v47 = v46 - 2;
LABEL_350:
            v45[4] = v47;
          }
        }

        if (v47 >= *v18 - v44)
        {
          v281 = *(v18 + 8) - 3;
          goto LABEL_463;
        }

LABEL_454:
        v278 = *(this + 22);
        v279 = *(this + 14);
        v280 = (*(v278 + 8) - v279) & ~((*(v278 + 8) - v279) >> 31);
        *(v278 + 8) = v280;
        v18 = *(v278 + 24) + 8 * v280 - 8 * v279;
        *(this + 14) = v45[2];
        v252 = v45[3];
LABEL_455:
        *(this + 15) = v252;
        goto LABEL_328;
      case 0x2E:
        if (*v18 != *(this + 15))
        {
          goto LABEL_327;
        }

        v199 = (*(this + 24) + 8 * (v22 & 0xFFFFFF));
LABEL_339:
        *(this + 14) = v199[2];
        v252 = v199[3];
        goto LABEL_455;
      case 0x2F:
        *(v18 + 8) = v21 + 2;
        v50 = *(v13 + 8 * v23);
        *(v18 + 8) = v21 + 3;
        v51 = *(v13 + 8 * (v21 + 2));
        *(v18 + 8) = v21 + 4;
        v52 = *(v13 + 8 * (v21 + 3));
        v45 = (*(this + 24) + 8 * (v22 & 0xFFFFFF));
        v53 = v45[4];
        if (v53 < 0)
        {
          v54 = *v18 - v50;
          v45[4] = v54;
          if (v54 < 1)
          {
            if (v54 < 0)
            {
              goto LABEL_460;
            }

            v54 = 0;
          }

          else if (v54 < *(this + 6))
          {
            v257 = (v15 + 2 * v54);
            if ((*v257 & 0xFC00) == 0xDC00 && (*(v257 - 1) & 0xFC00) == 0xD800)
            {
              --v54;
              goto LABEL_356;
            }
          }
        }

        else
        {
          if (!v53)
          {
            v45[4] = -1;
LABEL_460:
            v35 = v52 & 0xFFFFFF;
            *(this + 14) = v45[2];
            *(this + 15) = v45[3];
            goto LABEL_461;
          }

          v54 = v53 - 1;
          v45[4] = v53 - 1;
          v55 = v53 != 1 && (*(v15 + 2 * (v53 - 1)) & 0xFC00) == 56320;
          if (v55 && (*(v291 + 2 * v53) & 0xFC00) == 0xD800)
          {
            v54 = v53 - 2;
LABEL_356:
            v45[4] = v54;
          }
        }

        if (v54 < *v18 - v51)
        {
          goto LABEL_460;
        }

        v281 = *(v18 + 8) - 4;
LABEL_463:
        v18 = sub_1953BF38C(this, v18, v281, a4);
        *v18 = v45[4];
        goto LABEL_328;
      case 0x30:
        if (*v18 == *(this + 15))
        {
          v198 = (*(this + 24) + 8 * (v22 & 0xFFFFFF));
          *(this + 14) = v198[2];
          *(this + 15) = v198[3];
          icu::UVector64::setSize(*(this + 22), *v198);
        }

        goto LABEL_327;
      case 0x31:
        v38 = *v18;
        v39 = *(this + 15);
        if (*v18 >= v39)
        {
          goto LABEL_326;
        }

        v40 = v38 + 1;
        *v18 = v38 + 1;
        v41 = *(v15 + 2 * v38);
        if ((v41 & 0xFC00) == 0xD800)
        {
          if (v40 != v39)
          {
            v42 = *(v15 + 2 * v40);
            if ((v42 & 0xFC00) == 0xDC00)
            {
              *v18 = v38 + 2;
              LODWORD(v41) = (v41 << 10) - 56613888 + v42;
            }
          }
        }

        else if (v41 <= 0xFF)
        {
          if ((*(qword_1ED443488 + 32 * (v22 & 0xFFFFFF) + (v41 >> 3) + 2608) >> (v41 & 7)))
          {
            goto LABEL_327;
          }

          goto LABEL_328;
        }

        if (icu::UnicodeSet::contains((qword_1ED443488 + 200 * (v22 & 0xFFFFFF) + 8), v41))
        {
          goto LABEL_327;
        }

        goto LABEL_328;
      case 0x32:
        v213 = *(*(this + 1) + 112);
        v214 = icu::UVector::elementAt(v293, v22 & 0xFFFFFF);
        v215 = *v18;
        v216 = *(this + 15);
        if (v216 <= *v18)
        {
          v220 = *v18;
LABEL_341:
          *(this + 168) = 1;
          LODWORD(v215) = v220;
          goto LABEL_342;
        }

        v217 = v214;
        v218 = v213 + 32 * (v22 & 0xFFFFFF);
        v219 = v215;
        while (2)
        {
          v220 = v215 + 1;
          v221 = *(v15 + 2 * v219);
          if ((v221 & 0xFC00) == 0xD800)
          {
            if (v216 != v220)
            {
              v222 = *(v15 + 2 * v220);
              v223 = (v222 & 0xFC00) == 56320;
              v224 = v215 + 2;
              v225 = (v221 << 10) - 56613888 + v222;
              if (v223)
              {
                LODWORD(v221) = v225;
              }

              if (v223)
              {
                LODWORD(v220) = v224;
              }
            }
          }

          else if (v221 <= 0xFF)
          {
            if ((*(v218 + (v221 >> 3)) >> (v221 & 7)))
            {
              goto LABEL_299;
            }

            if (v215 >= 1 && (*(v15 + 2 * v215) & 0xFC00) == 0xDC00)
            {
              LODWORD(v215) = v215 - ((*(v291 + 2 * v220) & 0xFC00) == 55296);
            }

            goto LABEL_342;
          }

          if (icu::UnicodeSet::contains(v217, v221))
          {
            v216 = *(this + 15);
LABEL_299:
            LODWORD(v215) = v220;
            v219 = v220;
            if (v216 <= v220)
            {
              goto LABEL_341;
            }

            continue;
          }

          break;
        }

        LODWORD(v215) = v220 - 1;
        v274 = (*(v15 + 2 * (v220 - 1)) & 0xFC00) != 0xDC00 || v220 < 2;
        if (!v274 && (*(v291 + 2 * v220) & 0xFC00) == 0xD800)
        {
          LODWORD(v215) = v220 - 2;
        }

LABEL_342:
        v253 = *(v18 + 8);
        if (*v18 == v215)
        {
          v35 = v253 + 1;
          goto LABEL_461;
        }

        *(v18 + 8 * (*(v13 + 8 * v253) & 0xFFFFFFLL) + 16) = *v18;
        *v18 = v215;
        v254 = this;
        v255 = v18;
LABEL_368:
        v18 = sub_1953BF38C(v254, v255, v253, a4);
        ++*(v18 + 8);
        goto LABEL_328;
      case 0x33:
        v157 = *(v18 + 8 * (v22 & 0xFFFFFF) + 16);
        v158 = *v18;
        if (v157 == *v18)
        {
          goto LABEL_328;
        }

        *v18 = v158 - 1;
        v159 = (v15 + 2 * (v158 - 1));
        v160 = *v159;
        v161 = v158 - 2;
        if (v158 >= 2 && (v160 & 0xFC00) == 0xDC00)
        {
          if ((*(v291 + 2 * v158) & 0xFC00) != 0xD800)
          {
            goto LABEL_417;
          }

          v162 = -2;
          goto LABEL_203;
        }

        if (v160 == 10 && v158 - 1 > v157 && *(v159 - 1) == 13 && *(v13 - 16 + 8 * v23 + 3) << 24 == 872415232)
        {
          *v18 = v161;
          if (v158 >= 3 && (*(v15 + 2 * v161) & 0xFC00) == 0xDC00 && (*(v159 - 2) & 0xFC00) == 0xD800)
          {
            v162 = -3;
LABEL_203:
            *v18 = v158 + v162;
          }
        }

LABEL_417:
        v18 = sub_1953BF38C(this, v18, v21, a4);
        goto LABEL_328;
      case 0x34:
        if (v22)
        {
          v251 = *(this + 30);
          *(this + 168) = 1;
          goto LABEL_365;
        }

        v26 = *v18;
        v27 = *(this + 15);
        if (v27 <= *v18)
        {
          goto LABEL_364;
        }

        v28 = v26;
        while (1)
        {
          v29 = v26;
          LODWORD(v26) = v26 + 1;
          v30 = *(v15 + 2 * v28);
          if ((v30 & 0xFC00) == 0xD800 && v27 != v26)
          {
            v31 = *(v15 + 2 * v26);
            v32 = (v31 & 0xFC00) == 56320;
            v33 = (v30 << 10) - 56613888 + v31;
            LODWORD(v26) = (v31 & 0xFC00) == 0xDC00 ? v29 + 2 : v29 + 1;
            if (v32)
            {
              v30 = v33;
            }
          }

          if ((v30 & 0x7Eu) <= 0x29)
          {
            if (v30 == 10)
            {
              break;
            }

            if (!(v30 & 0xFFFFDF50 | v22 & 2))
            {
              v34 = (v30 - 10) >= 4 && (v30 - 8232) >= 2;
              if (!v34 || v30 == 133)
              {
                break;
              }
            }
          }

          v28 = v26;
          if (v27 <= v26)
          {
LABEL_364:
            *(this + 168) = 1;
            v251 = v26;
            goto LABEL_365;
          }
        }

        v251 = v26 - 1;
        if ((*(v15 + 2 * (v26 - 1)) & 0xFC00) == 0xDC00 && v26 >= 2)
        {
          v276 = *(v291 + 2 * v26) & 0xFC00;
          v277 = v26 - 2;
          if (v276 == 55296)
          {
            v251 = v277;
          }
        }

LABEL_365:
        if (*v18 == v251)
        {
          v35 = v21 + 2;
          goto LABEL_461;
        }

        *(v18 + 8 * (*(v13 + 8 * v23) & 0xFFFFFFLL) + 16) = *v18;
        *v18 = v251;
        v254 = this;
        v255 = v18;
        v253 = v21 + 1;
        goto LABEL_368;
      case 0x35:
        isChunkWordBoundary = icu::RegexMatcher::isUWordBoundary(this, *v18, a4);
        goto LABEL_119;
      case 0x36:
        v208 = *(this + 11) - 1;
        if (*v18 < v208)
        {
          goto LABEL_327;
        }

        if (*v18 != v208)
        {
          goto LABEL_491;
        }

        v209 = *(v15 + 2 * *v18);
        goto LABEL_272;
      case 0x37:
        if (*v18 >= *(this + 11))
        {
          goto LABEL_491;
        }

        v49 = *(v15 + 2 * *v18);
LABEL_282:
        if (v49 == 10)
        {
          goto LABEL_328;
        }

        goto LABEL_327;
      case 0x38:
        v200 = *v18;
        v201 = *(this + 15);
        if (*v18 >= v201)
        {
          goto LABEL_326;
        }

        v202 = v200 + 1;
        *v18 = v200 + 1;
        v203 = *(v15 + 2 * v200);
        if ((v203 & 0xFC00) == 0xD800 && v202 != v201)
        {
          v205 = *(v15 + 2 * v202);
          if ((v205 & 0xFC00) == 0xDC00)
          {
            *v18 = v200 + 2;
            v203 = (v203 << 10) - 56613888 + v205;
          }
        }

        v206 = u_charType(v203);
        v171 = v203 == 9 || v206 == 12;
LABEL_264:
        v207 = v171;
        if (((v25 != 0) ^ v207))
        {
          goto LABEL_328;
        }

        goto LABEL_327;
      case 0x39:
        v122 = *v18;
        v123 = *(this + 15);
        if (*v18 >= v123)
        {
          goto LABEL_326;
        }

        v124 = v122 + 1;
        *v18 = v122 + 1;
        v125 = *(v15 + 2 * v122);
        if ((v125 & 0xFC00) == 0xD800 && v124 != v123)
        {
          v127 = *(v15 + 2 * v124);
          if ((v127 & 0xFC00) == 0xDC00)
          {
            v124 = v122 + 2;
            *v18 = v122 + 2;
            v125 = (v125 << 10) - 56613888 + v127;
          }
        }

        if (!sub_1953BAE10(v125))
        {
          goto LABEL_327;
        }

        if (v125 != 13 || v124 >= v123)
        {
          goto LABEL_328;
        }

        v129 = v124 + 1;
        *v18 = v124 + 1;
        v130 = *(v15 + 2 * v124);
        if (v130 >> 10 != 54)
        {
          goto LABEL_165;
        }

        if (v129 == v123)
        {
          goto LABEL_168;
        }

        v131 = *(v15 + 2 * v129);
        v123 = v124 + 1;
        if (v131 >> 10 != 55)
        {
          goto LABEL_168;
        }

        v129 = v124 + 2;
        *v18 = v124 + 2;
        LOWORD(v130) = v131 + (v130 << 10) + 9216;
LABEL_165:
        v123 = v129;
        if (v130 != 10)
        {
LABEL_168:
          *v18 = v123 - 1;
          v132 = v123 - 2;
          if (v123 >= 2 && (*(v15 + 2 * (v123 - 1)) & 0xFC00) == 0xDC00 && (*(v291 + 2 * v123) & 0xFC00) == 0xD800)
          {
            goto LABEL_386;
          }
        }

        goto LABEL_328;
      case 0x3A:
        v62 = *v18;
        v63 = *(this + 15);
        if (*v18 >= v63)
        {
          goto LABEL_326;
        }

        v64 = v62 + 1;
        *v18 = v62 + 1;
        v65 = *(v15 + 2 * v62);
        if ((v65 & 0xFC00) == 0xD800 && v64 != v63)
        {
          v67 = *(v15 + 2 * v64);
          if ((v67 & 0xFC00) == 0xDC00)
          {
            *v18 = v62 + 2;
            v65 = (v65 << 10) - 56613888 + v67;
          }
        }

        isChunkWordBoundary = sub_1953BAE10(v65);
LABEL_119:
        if (isChunkWordBoundary != (v25 != 0))
        {
          goto LABEL_328;
        }

        goto LABEL_327;
      default:
        goto LABEL_494;
    }
  }
}

uint64_t icu::RegexMatcher::group@<X0>(UText **this@<X0>, UErrorCode *a2@<X2>, unsigned int a3@<W1>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0u;
  *(a4 + 56) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *a4 = &unk_1F0935D00;
  *(a4 + 8) = 2;
  v8 = icu::RegexMatcher::start64(this, a3, a2);
  result = icu::RegexMatcher::end64(this, a3, a2);
  if (*a2 <= 0 && v8 != -1 && v8 != result)
  {
    v12 = result;
    result = utext_extract(this[4], v8, result, 0, 0, a2);
    if (*a2 == U_BUFFER_OVERFLOW_ERROR)
    {
      v13 = result;
      *a2 = U_ZERO_ERROR;
      result = icu::UnicodeString::getBuffer(a4, result);
      if (result)
      {
        v14 = utext_extract(this[4], v8, v12, result, v13, a2);

        return icu::UnicodeString::releaseBuffer(a4, v14);
      }

      else
      {
        *a2 = U_MEMORY_ALLOCATION_ERROR;
      }
    }
  }

  return result;
}

UText *icu::RegexMatcher::group(icu::RegexMatcher *this, unsigned int a2, UText *dest, uint64_t *a4, UErrorCode *a5)
{
  v5 = dest;
  *a4 = 0;
  if (*a5 > 0)
  {
    return v5;
  }

  v6 = *(this + 79);
  if (v6 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
LABEL_8:
    *a5 = v6;
    return v5;
  }

  if (!*(this + 130))
  {
    v6 = U_REGEX_INVALID_STATE;
    goto LABEL_8;
  }

  if ((a2 & 0x80000000) != 0 || (v7 = *(*(this + 1) + 136), *(v7 + 8) < a2))
  {
    v6 = U_INDEX_OUTOFBOUNDS_ERROR;
    goto LABEL_8;
  }

  if (a2)
  {
    v9 = *(this + 23) + 8 * *(*(v7 + 24) + 4 * a2 - 4);
    v10 = (v9 + 16);
    v11 = (v9 + 24);
  }

  else
  {
    v10 = (this + 136);
    v11 = (this + 144);
  }

  v12 = *v10;
  if ((*v10 & 0x8000000000000000) == 0)
  {
    *a4 = *v11 - v12;
    v13 = utext_clone(dest, *(this + 4), 0, 1, a5);
    v5 = v13;
    if (v13)
    {
      v14 = v12 - v13->chunkNativeStart;
      if (v14 < 0 || v14 >= v13->nativeIndexingLimit || v13->chunkContents[v14] >> 10 > 0x36u)
      {
        utext_setNativeIndex(v13, v12);
      }

      else
      {
        v13->chunkOffset = v14;
      }
    }

    return v5;
  }

  v15 = *(this + 4);

  return utext_clone(dest, v15, 0, 1, a5);
}

uint64_t icu::RegexMatcher::start64(icu::RegexMatcher *this, unsigned int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return -1;
  }

  v3 = *(this + 79);
  if (v3 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
LABEL_8:
    *a3 = v3;
    return -1;
  }

  if (!*(this + 130))
  {
    v3 = U_REGEX_INVALID_STATE;
    goto LABEL_8;
  }

  if ((a2 & 0x80000000) != 0 || (v4 = *(*(this + 1) + 136), *(v4 + 8) < a2))
  {
    v3 = U_INDEX_OUTOFBOUNDS_ERROR;
    goto LABEL_8;
  }

  if (a2)
  {
    v6 = (*(this + 23) + 8 * *(*(v4 + 24) + 4 * a2 - 4) + 16);
  }

  else
  {
    v6 = this + 136;
  }

  return *v6;
}

uint64_t icu::RegexMatcher::input(icu::RegexMatcher *this)
{
  if (!*(this + 3))
  {
    status = U_ZERO_ERROR;
    v2 = *(this + 4);
    v3 = *(this + 6);
    if (v2->pFuncs->mapNativeIndexToUTF16)
    {
      utext_extract(v2, 0, *(this + 6), 0, 0, &status);
      status = U_ZERO_ERROR;
    }

    operator new();
  }

  return *(this + 3);
}

UText *icu::RegexMatcher::getInput(icu::RegexMatcher *this, UText *ut, UErrorCode *status)
{
  if (*status > 0)
  {
    return ut;
  }

  v6 = *(this + 79);
  if (v6 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    *status = v6;
    return ut;
  }

  v8 = *(this + 4);
  if (ut)
  {
    if (!v8->chunkNativeStart && (v9 = *(this + 6), v9 == v8->chunkNativeLimit) && v9 == v8->nativeIndexingLimit)
    {
      v10 = utext_nativeLength(ut);
      utext_replace(ut, 0, v10, *(*(this + 4) + 48), *(this + 12), status);
    }

    else
    {
      if (v8->pFuncs->mapNativeIndexToUTF16)
      {
        statusa = U_ZERO_ERROR;
        v11 = utext_extract(v8, 0, *(this + 6), 0, 0, &statusa);
      }

      else
      {
        v11 = *(this + 12);
      }

      v12 = malloc_type_malloc(2 * v11, 0x1000040BDFB0063uLL);
      if (v12)
      {
        v13 = v12;
        *status = U_ZERO_ERROR;
        utext_extract(*(this + 4), 0, *(this + 6), v12, v11, status);
        *status = U_ZERO_ERROR;
        v14 = utext_nativeLength(ut);
        utext_replace(ut, 0, v14, v13, v11, status);
        free(v13);
      }
    }

    return ut;
  }

  return utext_clone(0, v8, 0, 1, status);
}

uint64_t icu::RegexMatcher::lookingAt(icu::RegexMatcher *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = *(this + 79);
  if (v5 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v2 = 0;
    *a2 = v5;
    return v2;
  }

  if (*(this + 312))
  {
    if (!sub_1953BD11C(*(this + 4)))
    {
      goto LABEL_9;
    }

    v6 = utext_nativeLength(*(this + 4));
    *(this + 6) = v6;
    *(this + 8) = 0;
    *(this + 9) = v6;
    *(this + 14) = 0;
    *(this + 15) = v6;
    *(this + 10) = 0;
    *(this + 11) = v6;
    *(this + 12) = 0;
    *(this + 13) = v6;
  }

  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 152) = xmmword_195492710;
  *(this + 130) = 0;
  *(this + 84) = 0;
  *(this + 268) = 0x271000000000;
LABEL_9:
  v7 = *(this + 4);
  if (!*(v7 + 32) && (v8 = *(this + 6), v8 == *(v7 + 16)) && v8 == *(v7 + 28))
  {
    icu::RegexMatcher::MatchChunkAt(this, *(this + 28), 0, a2);
  }

  else
  {
    icu::RegexMatcher::MatchAt(this, *(this + 14), 0, a2);
  }

  return *(this + 130);
}

uint64_t sub_1953BD11C(UText *a1)
{
  if (utext_nativeLength(a1) == a1->nativeIndexingLimit)
  {
    return 0;
  }

  context = a1->context;
  v4 = context[4];
  if (context[4] < 0)
  {
    v5 = *(context + 3);
  }

  else
  {
    v5 = v4 >> 5;
  }

  if ((v4 & 0x11) != 0)
  {
    v6 = 0;
  }

  else if ((v4 & 2) != 0)
  {
    v6 = context + 5;
  }

  else
  {
    v6 = *(context + 3);
  }

  a1->chunkContents = v6;
  a1->chunkLength = v5;
  a1->chunkNativeLimit = v5;
  a1->nativeIndexingLimit = v5;
  return 1;
}

double icu::RegexMatcher::resetPreserveRegion(icu::RegexMatcher *this)
{
  *(this + 17) = 0;
  *(this + 18) = 0;
  result = NAN;
  *(this + 152) = xmmword_195492710;
  *(this + 130) = 0;
  *(this + 84) = 0;
  *(this + 268) = 0x271000000000;
  return result;
}

uint64_t icu::RegexMatcher::lookingAt(icu::RegexMatcher *this, int64_t a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v6 = *(this + 79);
  if (v6 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v3 = 0;
LABEL_14:
    *a3 = v6;
    return v3;
  }

  *(this + 17) = 0;
  v8 = *(this + 6);
  *(this + 8) = 0;
  *(this + 9) = v8;
  *(this + 14) = 0;
  *(this + 15) = v8;
  *(this + 10) = 0;
  *(this + 11) = v8;
  *(this + 12) = 0;
  *(this + 13) = v8;
  *(this + 18) = 0;
  *(this + 152) = xmmword_195492710;
  *(this + 130) = 0;
  *(this + 84) = 0;
  *(this + 268) = 0x271000000000;
  if (a2 < 0)
  {
    goto LABEL_13;
  }

  if (*(this + 312))
  {
    if (sub_1953BD11C(*(this + 4)))
    {
      v9 = utext_nativeLength(*(this + 4));
      v10 = 0;
      *(this + 6) = v9;
      *(this + 8) = 0;
      *(this + 9) = v9;
      *(this + 14) = 0;
      *(this + 15) = v9;
      *(this + 10) = 0;
      *(this + 11) = v9;
      *(this + 12) = 0;
      *(this + 13) = v9;
      *(this + 17) = 0;
      *(this + 18) = 0;
      *(this + 152) = xmmword_195492710;
      *(this + 130) = 0;
      *(this + 84) = 0;
      *(this + 268) = 0x271000000000;
    }

    else
    {
      v10 = *(this + 14);
    }
  }

  else
  {
    v10 = 0;
  }

  if (v10 > a2 || *(this + 15) < a2)
  {
LABEL_13:
    v3 = 0;
    v6 = U_INDEX_OUTOFBOUNDS_ERROR;
    goto LABEL_14;
  }

  v12 = *(this + 4);
  if (!*(v12 + 32) && (v13 = *(this + 6), v13 == *(v12 + 16)) && v13 == *(v12 + 28))
  {
    icu::RegexMatcher::MatchChunkAt(this, a2, 0, a3);
  }

  else
  {
    icu::RegexMatcher::MatchAt(this, a2, 0, a3);
  }

  return *(this + 130);
}

uint64_t icu::RegexMatcher::matches(icu::RegexMatcher *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = *(this + 79);
  if (v5 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v2 = 0;
    *a2 = v5;
    return v2;
  }

  if (*(this + 312))
  {
    if (!sub_1953BD11C(*(this + 4)))
    {
      goto LABEL_9;
    }

    v6 = utext_nativeLength(*(this + 4));
    *(this + 6) = v6;
    *(this + 8) = 0;
    *(this + 9) = v6;
    *(this + 14) = 0;
    *(this + 15) = v6;
    *(this + 10) = 0;
    *(this + 11) = v6;
    *(this + 12) = 0;
    *(this + 13) = v6;
  }

  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 152) = xmmword_195492710;
  *(this + 130) = 0;
  *(this + 84) = 0;
  *(this + 268) = 0x271000000000;
LABEL_9:
  v7 = *(this + 4);
  if (!*(v7 + 32) && (v8 = *(this + 6), v8 == *(v7 + 16)) && v8 == *(v7 + 28))
  {
    icu::RegexMatcher::MatchChunkAt(this, *(this + 28), 1, a2);
  }

  else
  {
    icu::RegexMatcher::MatchAt(this, *(this + 14), 1, a2);
  }

  return *(this + 130);
}

uint64_t icu::RegexMatcher::matches(icu::RegexMatcher *this, int64_t a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v6 = *(this + 79);
  if (v6 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    v3 = 0;
LABEL_14:
    *a3 = v6;
    return v3;
  }

  *(this + 17) = 0;
  v8 = *(this + 6);
  *(this + 8) = 0;
  *(this + 9) = v8;
  *(this + 14) = 0;
  *(this + 15) = v8;
  *(this + 10) = 0;
  *(this + 11) = v8;
  *(this + 12) = 0;
  *(this + 13) = v8;
  *(this + 18) = 0;
  *(this + 152) = xmmword_195492710;
  *(this + 130) = 0;
  *(this + 84) = 0;
  *(this + 268) = 0x271000000000;
  if (a2 < 0)
  {
    goto LABEL_13;
  }

  if (*(this + 312))
  {
    if (sub_1953BD11C(*(this + 4)))
    {
      v9 = utext_nativeLength(*(this + 4));
      v10 = 0;
      *(this + 6) = v9;
      *(this + 8) = 0;
      *(this + 9) = v9;
      *(this + 14) = 0;
      *(this + 15) = v9;
      *(this + 10) = 0;
      *(this + 11) = v9;
      *(this + 12) = 0;
      *(this + 13) = v9;
      *(this + 17) = 0;
      *(this + 18) = 0;
      *(this + 152) = xmmword_195492710;
      *(this + 130) = 0;
      *(this + 84) = 0;
      *(this + 268) = 0x271000000000;
    }

    else
    {
      v10 = *(this + 14);
    }
  }

  else
  {
    v10 = 0;
  }

  if (v10 > a2 || *(this + 15) < a2)
  {
LABEL_13:
    v3 = 0;
    v6 = U_INDEX_OUTOFBOUNDS_ERROR;
    goto LABEL_14;
  }

  v12 = *(this + 4);
  if (!*(v12 + 32) && (v13 = *(this + 6), v13 == *(v12 + 16)) && v13 == *(v12 + 28))
  {
    icu::RegexMatcher::MatchChunkAt(this, a2, 1, a3);
  }

  else
  {
    icu::RegexMatcher::MatchAt(this, a2, 1, a3);
  }

  return *(this + 130);
}

uint64_t icu::RegexMatcher::region(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    if (a2 > a3 || (a3 | a2) < 0)
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    v5 = *(this + 48);
    if (v5 < a2 || v5 < a3)
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    if (a4 == -1)
    {
      *(this + 80) = 0;
      *(this + 88) = v5;
      *(this + 96) = 0;
      *(this + 104) = v5;
      *(this + 136) = 0;
      *(this + 144) = 0;
      *(this + 152) = xmmword_195492710;
      *(this + 130) = 0;
      *(this + 168) = 0;
      *(this + 268) = 0x271000000000;
      *(this + 64) = a2;
      *(this + 72) = a3;
      *(this + 112) = a2;
      *(this + 120) = a3;
    }

    else
    {
      *(this + 136) = 0;
      *(this + 152) = xmmword_195492710;
      *(this + 130) = 0;
      *(this + 168) = 0;
      *(this + 268) = 0x271000000000;
      *(this + 64) = a2;
      *(this + 72) = a3;
      *(this + 112) = a2;
      *(this + 120) = a3;
      if (a2 > a4 || a4 > a3)
      {
        *a5 = U_INDEX_OUTOFBOUNDS_ERROR;
      }

      *(this + 144) = a4;
    }

    if (!*(this + 128))
    {
      *(this + 96) = a2;
      *(this + 104) = a3;
    }

    if (*(this + 129))
    {
      *(this + 80) = a2;
      *(this + 88) = a3;
    }
  }

  return this;
}

UText *icu::RegexMatcher::replaceAll@<X0>(UText *this@<X0>, const icu::UnicodeString *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  memset(&ut, 0, sizeof(ut));
  ut.magic = 878368812;
  ut.sizeOfStruct = 144;
  memset(&v7, 0, sizeof(v7));
  v7.magic = 878368812;
  v7.sizeOfStruct = 144;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0;
  *a4 = &unk_1F0935D00;
  *(a4 + 8) = 2;
  if (*a3 <= 0)
  {
    v6 = this;
    utext_openConstUnicodeString(&ut, a2, a3);
    utext_openUnicodeString(&v7, a4, a3);
    icu::RegexMatcher::replaceAll(v6, &ut, &v7, a3);
    utext_close(&v7);
    return utext_close(&ut);
  }

  return this;
}

UText *icu::RegexMatcher::replaceAll(icu::RegexMatcher *this, UText *a2, UText *ut, UErrorCode *status)
{
  v4 = ut;
  v19 = *MEMORY[0x1E69E9840];
  if (*status <= 0)
  {
    v7 = *(this + 79);
    if (v7 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      if (ut)
      {
        goto LABEL_5;
      }

      v15 = 0u;
      v18 = 0;
      v17 = 0u;
      v16 = 0u;
      v14 = &unk_1F0935D00;
      LOWORD(v15) = 2;
      memset(&v13, 0, sizeof(v13));
      v13.magic = 878368812;
      v13.sizeOfStruct = 144;
      utext_openUnicodeString(&v13, &v14, status);
      v4 = utext_clone(0, &v13, 1, 0, status);
      utext_close(&v13);
      icu::UnicodeString::~UnicodeString(v10, &v14);
      if (*status <= 0)
      {
LABEL_5:
        v9 = *(this + 6);
        *(this + 8) = 0;
        *(this + 9) = v9;
        *(this + 14) = 0;
        *(this + 15) = v9;
        *(this + 10) = 0;
        *(this + 11) = v9;
        *(this + 12) = 0;
        *(this + 13) = v9;
        *(this + 17) = 0;
        *(this + 18) = 0;
        *(this + 152) = xmmword_195492710;
        *(this + 130) = 0;
        *(this + 84) = 0;
        *(this + 268) = 0x271000000000;
        do
        {
          if (*(this + 79) > 0)
          {
            break;
          }

          v13.magic = 0;
          if (!icu::RegexMatcher::find(this, &v13))
          {
            break;
          }

          icu::RegexMatcher::appendReplacement(this, v4, a2, status);
        }

        while (*status < 1);
        icu::RegexMatcher::appendTail(this, v4, status);
      }
    }

    else
    {
      *status = v7;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

UText *icu::RegexMatcher::replaceFirst@<X0>(icu::RegexMatcher *this@<X0>, const icu::UnicodeString *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  memset(&ut, 0, sizeof(ut));
  ut.magic = 878368812;
  ut.sizeOfStruct = 144;
  memset(&v8, 0, sizeof(v8));
  v8.magic = 878368812;
  v8.sizeOfStruct = 144;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0;
  *a4 = &unk_1F0935D00;
  *(a4 + 8) = 2;
  utext_openConstUnicodeString(&ut, a2, a3);
  utext_openUnicodeString(&v8, a4, a3);
  icu::RegexMatcher::replaceFirst(this, &ut, &v8, a3);
  utext_close(&v8);
  return utext_close(&ut);
}

UText *icu::RegexMatcher::replaceFirst(icu::RegexMatcher *this, UText *a2, UText *Input, UErrorCode *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v7 = *(this + 79);
    if (v7 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      v9 = *(this + 6);
      *(this + 8) = 0;
      *(this + 9) = v9;
      *(this + 14) = 0;
      *(this + 15) = v9;
      *(this + 10) = 0;
      *(this + 11) = v9;
      *(this + 12) = 0;
      *(this + 13) = v9;
      *(this + 17) = 0;
      *(this + 18) = 0;
      *(this + 152) = xmmword_195492710;
      *(this + 130) = 0;
      *(this + 84) = 0;
      *(this + 268) = 0x271000000000;
      v14.magic = 0;
      if (icu::RegexMatcher::find(this, &v14))
      {
        if (!Input)
        {
          v16 = 0u;
          v19 = 0;
          v18 = 0u;
          v17 = 0u;
          v15 = &unk_1F0935D00;
          LOWORD(v16) = 2;
          memset(&v14, 0, sizeof(v14));
          v14.magic = 878368812;
          v14.sizeOfStruct = 144;
          utext_openUnicodeString(&v14, &v15, a4);
          Input = utext_clone(0, &v14, 1, 0, a4);
          utext_close(&v14);
          icu::UnicodeString::~UnicodeString(v10, &v15);
        }

        appended = icu::RegexMatcher::appendReplacement(this, Input, a2, a4);
        icu::RegexMatcher::appendTail(appended, Input, a4);
      }

      else
      {
        Input = icu::RegexMatcher::getInput(this, Input, a4);
      }
    }

    else
    {
      *a4 = v7;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return Input;
}

icu::RegexMatcher *icu::RegexMatcher::reset(icu::RegexMatcher *this, const icu::UnicodeString *a2)
{
  v3 = (this + 316);
  v4 = utext_openConstUnicodeString(*(this + 4), a2, this + 79);
  *(this + 4) = v4;
  if (*(*(this + 1) + 184))
  {
    *(this + 5) = utext_clone(*(this + 5), v4, 0, 1, this + 79);
  }

  if (*v3 <= 0)
  {
    v5 = utext_nativeLength(*(this + 4));
    *(this + 6) = v5;
    *(this + 8) = 0;
    *(this + 9) = v5;
    *(this + 14) = 0;
    *(this + 15) = v5;
    *(this + 10) = 0;
    *(this + 11) = v5;
    *(this + 12) = 0;
    *(this + 13) = v5;
    *(this + 17) = 0;
    *(this + 18) = 0;
    *(this + 152) = xmmword_195492710;
    *(this + 130) = 0;
    *(this + 84) = 0;
    *(this + 268) = 0x271000000000;
    v6 = *(this + 3);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(this + 3) = 0;
    *(this + 312) = 1;
    v7 = *(this + 40);
    if (v7)
    {
      (*(*v7 + 64))(v7, *(this + 4), this + 316);
    }

    v8 = *(this + 41);
    if (v8)
    {
      (*(*v8 + 64))(v8, *(this + 4), this + 316);
    }
  }

  return this;
}

uint64_t icu::RegexMatcher::reset(uint64_t this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v3 = *(this + 48);
    *(this + 64) = 0;
    *(this + 72) = v3;
    *(this + 112) = 0;
    *(this + 120) = v3;
    *(this + 80) = 0;
    *(this + 88) = v3;
    *(this + 96) = 0;
    *(this + 104) = v3;
    *(this + 136) = 0;
    *(this + 144) = 0;
    *(this + 152) = xmmword_195492710;
    *(this + 130) = 0;
    *(this + 168) = 0;
    *(this + 268) = 0x271000000000;
    if (a2 < 0 || v3 < a2)
    {
      *a3 = U_INDEX_OUTOFBOUNDS_ERROR;
    }

    else
    {
      *(this + 144) = a2;
    }
  }

  return this;
}

icu::RegexMatcher *icu::RegexMatcher::refreshInputText(const UText **this, UText *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (a2 && (v6 = utext_nativeLength(this[4]), v6 == utext_nativeLength(a2)))
    {
      NativeIndex = utext_getNativeIndex(this[4]);
      v8 = utext_clone(this[4], a2, 0, 1, a3);
      this[4] = v8;
      if (*a3 <= 0)
      {
        utext_setNativeIndex(v8, NativeIndex);
        v9 = this[5];
        if (v9)
        {
          v10 = utext_getNativeIndex(v9);
          v11 = utext_clone(this[5], a2, 0, 1, a3);
          this[5] = v11;
          if (*a3 <= 0)
          {
            utext_setNativeIndex(v11, v10);
          }
        }
      }
    }

    else
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return this;
}

uint64_t icu::RegexMatcher::split(int64_t *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, int a4, UErrorCode *status)
{
  memset(&v17, 0, sizeof(v17));
  v17.magic = 878368812;
  v17.sizeOfStruct = 144;
  utext_openConstUnicodeString(&v17, a2, status);
  if (*status > 0)
  {
    return 0;
  }

  v10 = malloc_type_malloc(8 * a4, 0x2004093837F09uLL);
  if (v10)
  {
    v11 = v10;
    if (a4 <= 0)
    {
      v9 = icu::RegexMatcher::split(this, &v17, v10, a4, status);
    }

    else
    {
      v12 = 0;
      v13 = a4;
      do
      {
        v11[v12++] = utext_openUnicodeString(0, a3, status);
        a3 = (a3 + 64);
      }

      while (a4 != v12);
      v9 = icu::RegexMatcher::split(this, &v17, v11, a4, status);
      v14 = v11;
      do
      {
        v15 = *v14++;
        utext_close(v15);
        --v13;
      }

      while (v13);
    }

    free(v11);
    utext_close(&v17);
  }

  else
  {
    v9 = 0;
    *status = U_MEMORY_ALLOCATION_ERROR;
  }

  return v9;
}

uint64_t icu::RegexMatcher::split(int64_t *this, UText *a2, UText **a3, int a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v87 = v5;
  v88 = v6;
  if (a4 <= 0)
  {
    result = 0;
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return result;
  }

  v11 = a2;
  v13 = *(icu::RegexMatcher::reset(this, a2) + 15);
  if (!v13)
  {
    return 0;
  }

  v14 = a4 - 1;
  v82 = a3;
  v15 = 0;
  if (a4 != 1)
  {
    v20 = 0;
    v84 = *(*(this[1] + 136) + 8);
    v76 = a4;
    v83 = (a4 - 2);
    v78 = a4 - 1;
    v77 = v11;
    while (1)
    {
      if (*(this + 79) > 0 || (ut.magic = 0, !icu::RegexMatcher::find(this, &ut)))
      {
        if (!v11->chunkNativeStart && (v60 = this[6], v60 == v11->chunkNativeLimit) && v60 == v11->nativeIndexingLimit)
        {
          v61 = a3;
          v62 = a3[v20];
          if (v62)
          {
            v63 = utext_nativeLength(v62);
            utext_replace(v62, 0, v63, &v11->chunkContents[v15], *(this + 30) - v15, a5);
          }

          else
          {
            memset(&ut, 0, sizeof(ut));
            v74 = &v11->chunkContents[v15];
            v75 = this[15] - v15;
            ut.magic = 878368812;
            ut.sizeOfStruct = 144;
            utext_openUChars(&ut, v74, v75, a5);
            v61[v20] = utext_clone(0, &ut, 1, 0, a5);
            utext_close(&ut);
          }
        }

        else
        {
          status = U_ZERO_ERROR;
          v64 = utext_extract(v11, v15, this[15], 0, 0, &status);
          v65 = malloc_type_malloc(2 * (v64 + 1), 0x1000040BDFB0063uLL);
          if (v65)
          {
            v66 = v65;
            utext_extract(v11, v15, this[15], v65, v64 + 1, a5);
            v67 = v82[v20];
            if (v67)
            {
              v68 = utext_nativeLength(v82[v20]);
              utext_replace(v67, 0, v68, v66, v64, a5);
            }

            else
            {
              memset(&ut, 0, sizeof(ut));
              ut.magic = 878368812;
              ut.sizeOfStruct = 144;
              utext_openUChars(&ut, v66, v64, a5);
              v82[v20] = utext_clone(0, &ut, 1, 0, a5);
              utext_close(&ut);
            }

            free(v66);
          }

          else
          {
LABEL_82:
            *a5 = U_MEMORY_ALLOCATION_ERROR;
          }
        }

LABEL_91:
        v14 = v20;
        return (v14 + 1);
      }

      if (!v11->chunkNativeStart && (v21 = this[6], v21 == v11->chunkNativeLimit) && v21 == v11->nativeIndexingLimit)
      {
        v22 = a3;
        v23 = a3[v20];
        if (v23)
        {
          v24 = utext_nativeLength(v23);
          utext_replace(v23, 0, v24, &v11->chunkContents[v15], *(this + 34) - v15, a5);
        }

        else
        {
          memset(&ut, 0, sizeof(ut));
          v53 = &v11->chunkContents[v15];
          v54 = this[17] - v15;
          ut.magic = 878368812;
          ut.sizeOfStruct = 144;
          utext_openUChars(&ut, v53, v54, a5);
          v22[v20] = utext_clone(0, &ut, 1, 0, a5);
          utext_close(&ut);
        }

        a3 = v22;
      }

      else
      {
        status = U_ZERO_ERROR;
        v25 = utext_extract(v11, v15, this[17], 0, 0, &status);
        v26 = malloc_type_malloc(2 * (v25 + 1), 0x1000040BDFB0063uLL);
        if (!v26)
        {
          goto LABEL_82;
        }

        v27 = v26;
        utext_extract(v11, v15, this[17], v26, v25 + 1, a5);
        v28 = v82[v20];
        if (v28)
        {
          v29 = utext_nativeLength(v82[v20]);
          utext_replace(v28, 0, v29, v27, v25, a5);
        }

        else
        {
          memset(&ut, 0, sizeof(ut));
          ut.magic = 878368812;
          ut.sizeOfStruct = 144;
          utext_openUChars(&ut, v27, v25, a5);
          v82[v20] = utext_clone(0, &ut, 1, 0, a5);
          utext_close(&ut);
        }

        a3 = v82;
        free(v27);
      }

      v80 = this[18];
      if (v84 >= 1 && v20 < v83)
      {
        break;
      }

LABEL_65:
      v13 = this[15];
      v15 = v80;
      if (v80 == v13)
      {
        v69 = v20 + 1;
        v14 = v20;
        if (v20 + 1 < v76)
        {
          v70 = a3;
          v71 = a3[v69];
          if (v71)
          {
            v72 = utext_nativeLength(v71);
            utext_replace(v71, 0, v72, &word_195492738, 0, a5);
          }

          else
          {
            v70[v69] = utext_openUChars(0, 0, 0, a5);
          }

          v14 = v20 + 1;
        }

        return (v14 + 1);
      }

      if (*a5 > 0)
      {
        goto LABEL_91;
      }

      ++v20;
      v14 = v78;
      v11 = v77;
      if (v20 >= v78)
      {
        goto LABEL_6;
      }
    }

    v30 = v20 + 1;
    v31 = 1;
    while (1)
    {
      v32 = this[4];
      v33 = a3[v30];
      v34 = icu::RegexMatcher::start64(this, v31, a5);
      v35 = icu::RegexMatcher::end64(this, v31, a5);
      if (*a5 <= 0)
      {
        v37 = v35;
        if (v34 == v35)
        {
          if (v33)
          {
            v38 = utext_nativeLength(v33);
            utext_replace(v33, 0, v38, 0, 0, a5);
          }

          else
          {
            v33 = utext_openUChars(0, 0, 0, a5);
          }
        }

        else
        {
          v39 = utext_extract(v32, v34, v35, 0, 0, a5);
          if (*a5 == U_BUFFER_OVERFLOW_ERROR || *a5 <= 0)
          {
            *a5 = U_ZERO_ERROR;
            memset(&ut.providerProperties, 0, 88);
            v40 = &ut.sizeOfStruct + 1;
            *&ut.magic = &ut.sizeOfStruct + 2;
            v41 = v39 + 1;
            ut.providerProperties = 40;
            replacementLength = v39;
            if (v39 >= 40)
            {
              v79 = v39 + 1;
              v42 = malloc_type_malloc((2 * v41), 0x1000040BDFB0063uLL);
              if (v42)
              {
                v40 = v42;
                if (LOBYTE(ut.sizeOfStruct))
                {
                  free(*&ut.magic);
                }

                *&ut.magic = v40;
                v41 = v79;
                ut.providerProperties = v79;
                LOBYTE(ut.sizeOfStruct) = 1;
              }

              else
              {
                *a5 = U_MEMORY_ALLOCATION_ERROR;
                v40 = *&ut.magic;
                v41 = v79;
              }
            }

            v43 = v40;
            v44 = v41;
            utext_extract(v32, v34, v37, v43, v41, a5);
            if (v33)
            {
              v45 = utext_nativeLength(v33);
              utext_replace(v33, 0, v45, *&ut.magic, replacementLength, a5);
              goto LABEL_48;
            }

            v46 = v44;
            a3 = v82;
            if (*a5 > 0)
            {
              v33 = 0;
LABEL_51:
              if (LOBYTE(ut.sizeOfStruct))
              {
                free(*&ut.magic);
              }

              goto LABEL_31;
            }

            if (LOBYTE(ut.sizeOfStruct))
            {
              v47 = *&ut.magic;
              *&ut.magic = &ut.sizeOfStruct + 2;
              ut.providerProperties = 40;
              LOBYTE(ut.sizeOfStruct) = 0;
              v48 = replacementLength;
              if (!v47)
              {
                goto LABEL_63;
              }

LABEL_61:
              v52 = utext_openUChars(0, v47, v48, a5);
              if (*a5 < 1)
              {
                v33 = v52;
                v52->providerProperties |= 0x20u;
              }

              else
              {
                free(v47);
                v33 = 0;
              }
            }

            else
            {
              if ((replacementLength & 0x80000000) == 0)
              {
                providerProperties = ut.providerProperties;
                if (ut.providerProperties >= v46)
                {
                  providerProperties = v46;
                }

                v50 = 2 * providerProperties;
                v51 = malloc_type_malloc(v50, 0x1000040BDFB0063uLL);
                if (v51)
                {
                  v47 = v51;
                  memcpy(v51, *&ut.magic, v50);
                  v48 = replacementLength;
                  *&ut.magic = &ut.sizeOfStruct + 2;
                  ut.providerProperties = 40;
                  LOBYTE(ut.sizeOfStruct) = 0;
                  goto LABEL_61;
                }
              }

LABEL_63:
              v33 = 0;
              *a5 = U_MEMORY_ALLOCATION_ERROR;
            }

LABEL_48:
            a3 = v82;
            goto LABEL_51;
          }
        }
      }

LABEL_31:
      a3[v30] = v33;
      ++v20;
      if (v31 < v84)
      {
        ++v31;
        if (v30++ < v83)
        {
          continue;
        }
      }

      goto LABEL_65;
    }
  }

LABEL_6:
  if (v13 > v15)
  {
    if (!v11->chunkNativeStart && (v16 = this[6], v16 == v11->chunkNativeLimit) && v16 == v11->nativeIndexingLimit)
    {
      v17 = a3;
      v18 = a3[v14];
      if (v18)
      {
        v19 = utext_nativeLength(v18);
        utext_replace(v18, 0, v19, &v11->chunkContents[v15], *(this + 30) - v15, a5);
      }

      else
      {
        memset(&ut, 0, sizeof(ut));
        v73 = &v11->chunkContents[v15];
        ut.magic = 878368812;
        ut.sizeOfStruct = 144;
        utext_openUChars(&ut, v73, v13 - v15, a5);
        v17[v14] = utext_clone(0, &ut, 1, 0, a5);
        utext_close(&ut);
      }
    }

    else
    {
      status = U_ZERO_ERROR;
      v55 = utext_extract(v11, v15, v13, 0, 0, &status);
      v56 = malloc_type_malloc(2 * (v55 + 1), 0x1000040BDFB0063uLL);
      if (v56)
      {
        v57 = v56;
        utext_extract(v11, v15, this[15], v56, v55 + 1, a5);
        v58 = v82[v14];
        if (v58)
        {
          v59 = utext_nativeLength(v82[v14]);
          utext_replace(v58, 0, v59, v57, v55, a5);
        }

        else
        {
          memset(&ut, 0, sizeof(ut));
          ut.magic = 878368812;
          ut.sizeOfStruct = 144;
          utext_openUChars(&ut, v57, v55, a5);
          v82[v14] = utext_clone(0, &ut, 1, 0, a5);
          utext_close(&ut);
        }

        free(v57);
      }

      else
      {
        *a5 = U_MEMORY_ALLOCATION_ERROR;
      }
    }
  }

  return (v14 + 1);
}

uint64_t icu::RegexMatcher::start(icu::RegexMatcher *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(this + 79);
  if (v2 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
LABEL_3:
    *a2 = v2;
    return 0xFFFFFFFFLL;
  }

  if (!*(this + 130))
  {
    v2 = U_REGEX_INVALID_STATE;
    goto LABEL_3;
  }

  if ((*(*(*(this + 1) + 136) + 8) & 0x80000000) != 0)
  {
    v2 = U_INDEX_OUTOFBOUNDS_ERROR;
    goto LABEL_3;
  }

  return *(this + 34);
}

uint64_t icu::RegexMatcher::start64(icu::RegexMatcher *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return -1;
  }

  v2 = *(this + 79);
  if (v2 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
LABEL_3:
    *a2 = v2;
    return -1;
  }

  if (!*(this + 130))
  {
    v2 = U_REGEX_INVALID_STATE;
    goto LABEL_3;
  }

  if ((*(*(*(this + 1) + 136) + 8) & 0x80000000) != 0)
  {
    v2 = U_INDEX_OUTOFBOUNDS_ERROR;
    goto LABEL_3;
  }

  return *(this + 17);
}

uint64_t icu::RegexMatcher::useAnchoringBounds(uint64_t this, int a2)
{
  *(this + 129) = a2;
  if (a2)
  {
    v2 = *(this + 64);
    v3 = 72;
  }

  else
  {
    v2 = 0;
    v3 = 48;
  }

  *(this + 80) = v2;
  *(this + 88) = *(this + v3);
  return this;
}

uint64_t icu::RegexMatcher::useTransparentBounds(uint64_t this, int a2)
{
  *(this + 128) = a2;
  if (a2)
  {
    v2 = 0;
    v3 = 48;
  }

  else
  {
    v2 = *(this + 64);
    v3 = 72;
  }

  *(this + 96) = v2;
  *(this + 104) = *(this + v3);
  return this;
}

uint64_t icu::RegexMatcher::setTimeLimit(uint64_t this, int a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v3 = *(this + 316);
    if (v3 >= U_ILLEGAL_ARGUMENT_ERROR)
    {
LABEL_3:
      *a3 = v3;
      return this;
    }

    if (a2 < 0)
    {
      v3 = U_ILLEGAL_ARGUMENT_ERROR;
      goto LABEL_3;
    }

    *(this + 264) = a2;
  }

  return this;
}

uint64_t icu::RegexMatcher::setMatchCallback(uint64_t this, signed __int8 (*a2)(const void *, int), const void *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    *(this + 280) = a2;
    *(this + 288) = a3;
  }

  return this;
}

uint64_t icu::RegexMatcher::getMatchCallback(uint64_t this, signed __int8 (**a2)(const void *, int), const void **a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    *a2 = *(this + 280);
    *a3 = *(this + 288);
  }

  return this;
}

uint64_t icu::RegexMatcher::setFindProgressCallback(uint64_t this, signed __int8 (*a2)(const void *, uint64_t), const void *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    *(this + 296) = a2;
    *(this + 304) = a3;
  }

  return this;
}

uint64_t icu::RegexMatcher::getFindProgressCallback(uint64_t this, signed __int8 (**a2)(const void *, uint64_t), const void **a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    *a2 = *(this + 296);
    *a3 = *(this + 304);
  }

  return this;
}

uint64_t icu::RegexMatcher::resetStack(icu::RegexMatcher *this)
{
  icu::UVector64::removeAllElements(*(this + 22));
  v2 = *(this + 22);
  v3 = *(*(this + 1) + 128);
  v4 = *(v2 + 8);
  v5 = v4 + v3;
  if (v4 + v3 >= 0 && *(v2 + 12) >= v5)
  {
    goto LABEL_5;
  }

  if (icu::UVector64::expandCapacity(*(this + 22), v5, this + 79))
  {
    v4 = *(v2 + 8);
    v5 = v4 + v3;
LABEL_5:
    v6 = *(v2 + 24) + 8 * v4;
    *(v2 + 8) = v5;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  if (*(this + 79) > 0)
  {
    return 0;
  }

  v7 = *(*(this + 1) + 128);
  if (v7 >= 3)
  {
    memset((v6 + 16), 255, 8 * (v7 - 2));
  }

  return v6;
}

uint64_t icu::RegexMatcher::isWordBoundary(icu::RegexMatcher *this, int64_t a2)
{
  if (*(this + 13) <= a2)
  {
    v5 = 0;
    *(this + 168) = 1;
    goto LABEL_7;
  }

  v3 = *(this + 4);
  v4 = a2 - v3->chunkNativeStart;
  if (v4 < 0 || v4 >= v3->nativeIndexingLimit || v3->chunkContents[v4] >> 10 > 0x36u)
  {
    utext_setNativeIndex(v3, a2);
    v3 = *(this + 4);
    LODWORD(v4) = v3->chunkOffset;
  }

  else
  {
    v3->chunkOffset = v4;
  }

  if (v4 >= v3->chunkLength || (v16 = v3->chunkContents[v4], v16 >> 11 > 0x1A))
  {
    v16 = utext_current32(v3);
  }

  if (u_hasBinaryProperty(v16, UCHAR_GRAPHEME_EXTEND) || u_charType(v16) == 16)
  {
    return 0;
  }

  v5 = icu::UnicodeSet::contains((qword_1ED443488 + 208), v16);
LABEL_7:
  while (1)
  {
    v6 = *(this + 4);
    v7 = *(v6 + 40);
    v8 = v7 <= *(v6 + 28) ? *(v6 + 32) + v7 : (*(*(v6 + 56) + 64))();
    if (v8 <= *(this + 12))
    {
      break;
    }

    v9 = *(this + 4);
    chunkOffset = v9->chunkOffset;
    if (chunkOffset < 1 || (chunkContents = v9->chunkContents, chunkContents[chunkOffset - 1] >> 11 > 0x1Au))
    {
      v13 = utext_previous32(v9);
    }

    else
    {
      v12 = chunkOffset - 1;
      v9->chunkOffset = v12;
      v13 = chunkContents[v12];
    }

    if (!u_hasBinaryProperty(v13, UCHAR_GRAPHEME_EXTEND) && u_charType(v13) != 16)
    {
      v14 = icu::UnicodeSet::contains((qword_1ED443488 + 208), v13);
      return v14 ^ v5;
    }
  }

  v14 = 0;
  return v14 ^ v5;
}

uint64_t icu::RegexMatcher::isChunkWordBoundary(icu::RegexMatcher *this, int a2)
{
  v2 = a2;
  v4 = *(*(this + 4) + 48);
  v5 = a2;
  v6 = *(this + 13);
  if (v6 <= a2)
  {
    v12 = 0;
    *(this + 168) = 1;
    goto LABEL_7;
  }

  v7 = (v4 + 2 * a2);
  v8 = *v7;
  if ((v8 & 0xF800) == 0xD800)
  {
    if ((v8 & 0x400) != 0)
    {
      if (*(this + 12) < a2)
      {
        v20 = *(v7 - 1);
        v10 = (v20 & 0xFC00) == 55296;
        v11 = v8 + (v20 << 10);
LABEL_20:
        v21 = v11 - 56613888;
        if (v10)
        {
          v8 = v21;
        }
      }
    }

    else if (v6 != a2 + 1)
    {
      v9 = *(v4 + 2 * (a2 + 1));
      v10 = (v9 & 0xFC00) == 56320;
      v11 = v9 + (v8 << 10);
      goto LABEL_20;
    }
  }

  if (u_hasBinaryProperty(v8, UCHAR_GRAPHEME_EXTEND) || u_charType(v8) == 16)
  {
    return 0;
  }

  v12 = icu::UnicodeSet::contains((qword_1ED443488 + 208), v8);
LABEL_7:
  v13 = *(this + 12);
  if (v13 >= v5)
  {
    v19 = 0;
  }

  else
  {
    v23 = v12;
    while (1)
    {
      v14 = v2 - 1;
      v15 = *(v4 + 2 * (v2 - 1));
      if (v13 < v2 - 1 && (v15 & 0xFC00) == 0xDC00)
      {
        v16 = *(v4 - 4 + 2 * v5);
        v17 = v16 & 0xFC00;
        v18 = v15 - 56613888 + (v16 << 10);
        if (v17 == 55296)
        {
          v14 = v2 - 2;
          v15 = v18;
        }
      }

      if (!u_hasBinaryProperty(v15, UCHAR_GRAPHEME_EXTEND) && u_charType(v15) != 16)
      {
        break;
      }

      v5 = v14;
      v13 = *(this + 12);
      v2 = v14;
      if (v13 >= v14)
      {
        v19 = 0;
        goto LABEL_28;
      }
    }

    v19 = icu::UnicodeSet::contains((qword_1ED443488 + 208), v15);
LABEL_28:
    v12 = v23;
  }

  return v19 ^ v12;
}

uint64_t icu::RegexMatcher::isUWordBoundary(icu::RegexMatcher *this, uint64_t a2, UErrorCode *a3)
{
  if (!*(this + 40))
  {
    English = icu::Locale::getEnglish(this);
    WordInstance = icu::BreakIterator::createWordInstance(English, a3, v9, v10);
    *(this + 40) = WordInstance;
    if (*a3 > 0)
    {
      return 0;
    }

    (*(*WordInstance + 64))(WordInstance, *(this + 4), a3);
  }

  if (*(this + 13) <= a2)
  {
    result = 1;
    *(this + 168) = 1;
  }

  else
  {
    v5 = *(**(this + 40) + 136);

    return v5();
  }

  return result;
}

uint64_t icu::RegexMatcher::followingGCBoundary(icu::RegexMatcher *this, uint64_t a2, UErrorCode *a3)
{
  v5 = *(this + 41);
  if (!v5)
  {
    English = icu::Locale::getEnglish(0);
    CharacterInstance = icu::BreakIterator::createCharacterInstance(English, a3, v9, v10);
    *(this + 41) = CharacterInstance;
    if (*a3 > 0)
    {
      return a2;
    }

    (*(*CharacterInstance + 64))(CharacterInstance, *(this + 4), a3);
    v5 = *(this + 41);
  }

  v6 = (*(*v5 + 120))(v5, a2, a3);
  if (v6 != -1)
  {
    return v6;
  }

  return a2;
}

uint64_t icu::RegexMatcher::IncrementTime(uint64_t this, UErrorCode *a2)
{
  v3 = this;
  v4 = U_REGEX_TIME_OUT;
  *(this + 272) = 10000;
  ++*(this + 268);
  v5 = *(this + 280);
  if (v5)
  {
    this = v5(*(this + 288));
    if (!this)
    {
      v4 = U_REGEX_STOPPED_BY_CALLER;
LABEL_7:
      *a2 = v4;
      return this;
    }
  }

  v6 = *(v3 + 264);
  if (v6 >= 1 && *(v3 + 268) >= v6)
  {
    goto LABEL_7;
  }

  return this;
}

uint64_t sub_1953BF38C(icu::RegexMatcher *this, uint64_t a2, uint64_t a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return a2;
  }

  v8 = *(this + 22);
  v9 = *(this + 14);
  v10 = *(v8 + 8);
  v11 = v10 + v9;
  if (v10 + v9 >= 0 && *(v8 + 12) >= v11)
  {
    goto LABEL_6;
  }

  if (icu::UVector64::expandCapacity(*(this + 22), v11, a4))
  {
    v10 = *(v8 + 8);
    v11 = v10 + v9;
LABEL_6:
    v12 = *(v8 + 24) + 8 * v10;
    *(v8 + 8) = v11;
    goto LABEL_8;
  }

  v12 = 0;
LABEL_8:
  if (*a4 >= 1)
  {
    *a4 = U_REGEX_STACK_OVERFLOW;
    return a2;
  }

  v14 = 0;
  v15 = *(this + 14);
  v16 = v12 - 8 * v15;
  v17 = -8 * v15;
  do
  {
    *(v12 + v14) = *(v12 + v17);
    v14 += 8;
    v17 += 8;
  }

  while (v17);
  v18 = *(this + 68);
  v19 = __OFSUB__(v18--, 1);
  *(this + 68) = v18;
  if ((v18 < 0) ^ v19 | (v18 == 0))
  {
    icu::RegexMatcher::IncrementTime(this, a4);
  }

  *(v16 + 8) = a3;
  return v12;
}

void sub_1953BF4B8()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = L"Any-Remove";
  icu::UnicodeString::UnicodeString(v1, 1, &v0);
  icu::Transliterator::_registerFactory();
}

icu::Transliterator *sub_1953BF5FC(icu::Transliterator *a1)
{
  v6[8] = *MEMORY[0x1E69E9840];
  v5 = L"Any-Remove";
  icu::UnicodeString::UnicodeString(v6, 1, &v5);
  icu::Transliterator::Transliterator(a1, v6, 0);
  icu::UnicodeString::~UnicodeString(v2, v6);
  *a1 = &unk_1F0942030;
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1953BF6B8(icu::Transliterator *a1)
{
  icu::Transliterator::~Transliterator(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953BF778(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v10 = 0;
  v9 = 0u;
  v6 = &unk_1F0935D00;
  LOWORD(v7) = 2;
  (*(*a2 + 32))(a2, a3[2], a3[3], &v6);
  v4 = a3[2];
  a3[1] += v4 - a3[3];
  a3[3] = v4;
  icu::UnicodeString::~UnicodeString(&v6);
  v5 = *MEMORY[0x1E69E9840];
}

void icu::RegexPattern::RegexPattern(icu::RegexPattern *this)
{
  *this = &unk_1F09420E0;
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  icu::RegexPattern::init(this);
}

{
  *this = &unk_1F09420E0;
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  icu::RegexPattern::init(this);
}

void icu::RegexPattern::init(icu::RegexPattern *this)
{
  *(this + 104) = 0u;
  *(this + 6) = 0;
  *(this + 4) = 0;
  if (*(this + 24))
  {
    v1 = 2;
  }

  else
  {
    v1 = *(this + 24) & 0x1E;
  }

  *(this + 24) = v1;
  *(this + 120) = 0uLL;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *(this + 22) = 0;
  *(this + 184) = 0;
  *(this + 24) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 136) = 0uLL;
  *(this + 38) = 0;
  operator new();
}

void icu::RegexPattern::RegexPattern(icu::RegexPattern *this, const icu::RegexPattern *a2)
{
  *this = &unk_1F09420E0;
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  icu::RegexPattern::init(this);
}

{
  *this = &unk_1F09420E0;
  *(this + 5) = &unk_1F0935D00;
  *(this + 24) = 2;
  icu::RegexPattern::init(this);
}

icu::RegexPattern *icu::RegexPattern::operator=(icu::RegexPattern *result, icu::RegexPattern *a2)
{
  v2 = result;
  if (result != a2)
  {
    icu::RegexPattern::zap(result);
    icu::RegexPattern::init(v2);
  }

  return result;
}

void icu::RegexPattern::zap(icu::RegexPattern *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 4) = 0;
  v3 = *(this + 13);
  if (*(v3 + 2) >= 2)
  {
    v4 = 1;
    do
    {
      v5 = icu::UVector::elementAt(v3, v4);
      if (v5)
      {
        v7 = icu::UnicodeSet::~UnicodeSet(v6, v5);
        MEMORY[0x19A8B2600](v7, 0x10B1C403432821BLL);
      }

      ++v4;
      v3 = *(this + 13);
    }

    while (v4 < *(v3 + 2));
  }

  (*(*v3 + 8))(v3);
  *(this + 13) = 0;
  v9 = *(this + 14);
  if (v9)
  {
    MEMORY[0x19A8B25E0](v9, 0x1000C80E0EAB150);
  }

  *(this + 14) = 0;
  v10 = *(this + 17);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 17) = 0;
  v11 = *(this + 20);
  if (v11)
  {
    v12 = icu::UnicodeSet::~UnicodeSet(v8, v11);
    MEMORY[0x19A8B2600](v12, 0x10B1C403432821BLL);
  }

  *(this + 20) = 0;
  v13 = *(this + 22);
  if (v13)
  {
    MEMORY[0x19A8B2600](v13, 0x1000C40E0EAB150);
  }

  *(this + 22) = 0;
  v14 = *(this + 1);
  if (v14)
  {
    utext_close(v14);
    *(this + 1) = 0;
  }

  v15 = *(this + 2);
  if (v15)
  {
    (*(*v15 + 8))(v15);
    *(this + 2) = 0;
  }

  v16 = *(this + 24);
  if (v16)
  {
    uhash_close(v16);
    *(this + 24) = 0;
  }
}

uint64_t icu::RegexPattern::initNamedCaptureMap(icu::RegexPattern *this)
{
  if (*(this + 24))
  {
    return 1;
  }

  v3 = uhash_openSize(uhash_hashUnicodeString, uhash_compareUnicodeString, uhash_compareLong, 7, this + 30);
  *(this + 24) = v3;
  if (*(this + 30) > 0)
  {
    return 0;
  }

  uhash_setKeyDeleter(v3, uprv_deleteUObject);
  return 1;
}

void icu::RegexPattern::~RegexPattern(icu::RegexPattern *this)
{
  icu::RegexPattern::zap(this);
  icu::UnicodeString::~UnicodeString(v2, (this + 40));

  icu::UObject::~UObject(this);
}

{
  icu::RegexPattern::zap(this);
  icu::UnicodeString::~UnicodeString(v2, (this + 40));

  icu::UObject::~UObject(this);
}

{
  icu::RegexPattern::zap(this);
  icu::UnicodeString::~UnicodeString(v2, (this + 40));
  icu::UObject::~UObject(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::RegexPattern::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 120) != *(a2 + 120))
  {
    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4 || (v5 = *(a2 + 16)) == 0)
  {
    v8 = *(a1 + 8);
    v9 = *(a2 + 8);
    if (v8)
    {
      if (v9)
      {
        chunkNativeStart = v8->chunkNativeStart;
        if (chunkNativeStart > 0 || (v11 = -chunkNativeStart, v11 >= v8->nativeIndexingLimit) || v8->chunkContents[v11] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v8, 0);
          v9 = *(a2 + 8);
        }

        else
        {
          v8->chunkOffset = v11;
        }

        v14 = v9->chunkNativeStart;
        if (v14 > 0 || (v15 = -v14, v15 >= v9->nativeIndexingLimit) || v9->chunkContents[v15] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v9, 0);
          v9 = *(a2 + 8);
        }

        else
        {
          v9->chunkOffset = v15;
        }

        v16 = utext_equals(*(a1 + 8), v9);
        return v16 != 0;
      }
    }

    else if (!v9)
    {
      return 1;
    }

    return 0;
  }

  v6 = *(v4 + 8);
  if (v6)
  {
    return *(v5 + 8) & 1;
  }

  if ((v6 & 0x8000) != 0)
  {
    v7 = *(v4 + 12);
  }

  else
  {
    v7 = v6 >> 5;
  }

  v12 = 0;
  v17 = *(v5 + 8);
  if ((v17 & 0x8000u) == 0)
  {
    v18 = v17 >> 5;
  }

  else
  {
    v18 = *(v5 + 12);
  }

  if ((v17 & 1) == 0 && v7 == v18)
  {
    v19 = (v5 + 10);
    v20 = *(v5 + 24);
    if ((v17 & 2) != 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }

    v16 = icu::UnicodeString::doEquals(v4, v21, v7);
    return v16 != 0;
  }

  return v12;
}