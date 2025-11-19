uint64_t ucal_inDaylightTime(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return (*(*a1 + 96))();
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ucal_setGregorianChange(uint64_t lpsrc, UErrorCode *a2, double a3)
{
  if (*a2 > 0)
  {
    return lpsrc;
  }

  v4 = lpsrc;
  if (!lpsrc)
  {
    v9 = 1;
LABEL_10:
    *a2 = v9;
    return lpsrc;
  }

  v6 = *lpsrc;
  v7 = **lpsrc;
  {
    lpsrc = sub_19520B9EC(*(*v4 - 8), &unk_1F093DBA8);
    if ((lpsrc & 1) == 0)
    {
      v9 = 16;
      goto LABEL_10;
    }
  }

  return icu::GregorianCalendar::setGregorianChange(v8, a3, a2);
}

double ucal_getGregorianChange(char **lpsrc, int *a2)
{
  if (*a2 > 0)
  {
    return 0.0;
  }

  if (!lpsrc)
  {
    v8 = 1;
LABEL_10:
    *a2 = v8;
    return 0.0;
  }

  v4 = *lpsrc;
  v5 = **lpsrc;
  {
    v8 = 16;
    goto LABEL_10;
  }

  return icu::GregorianCalendar::getGregorianChange(v6);
}

uint64_t ucal_getAttribute(icu::Calendar *this, int a2)
{
  result = 0xFFFFFFFFLL;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {

        return icu::Calendar::getFirstDayOfWeek(this);
      }
    }

    else
    {
      return icu::Calendar::isLenient(this);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return icu::Calendar::getMinimalDaysInFirstWeek(this);
      case 3:

        return icu::Calendar::getRepeatedWallTimeOption(this);
      case 4:

        return icu::Calendar::getSkippedWallTimeOption(this);
    }
  }

  return result;
}

uint64_t ucal_setAttribute(uint64_t result, int a2, unsigned __int8 a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return icu::Calendar::setFirstDayOfWeek(result, a3);
      }
    }

    else
    {
      return icu::Calendar::setLenient(result, a3);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        return icu::Calendar::setMinimalDaysInFirstWeek(result, a3);
      case 3:
        return icu::Calendar::setRepeatedWallTimeOption(result, a3);
      case 4:
        return icu::Calendar::setSkippedWallTimeOption(result, a3);
    }
  }

  return result;
}

double ucal_getMillis(icu::Calendar *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    return icu::Calendar::getTimeInMillis(this, a2);
  }

  else
  {
    return 0.0;
  }
}

uint64_t ucal_setMillis(uint64_t this, double a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    return icu::Calendar::setTimeInMillis(this, a2, a3);
  }

  return this;
}

icu::Calendar *ucal_setDate(icu::Calendar *this, int a2, int a3, int a4, int *a5)
{
  if (*a5 <= 0)
  {
    return icu::Calendar::set(this, a2, a3, a4);
  }

  return this;
}

icu::Calendar *ucal_setDateTime(icu::Calendar *this, int a2, int a3, int a4, int a5, int a6, int a7, int *a8)
{
  if (*a8 <= 0)
  {
    return icu::Calendar::set(this, a2, a3, a4, a5, a6, a7);
  }

  return this;
}

uint64_t ucal_add(uint64_t result, unsigned int a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a2 < 0x19)
    {
      return (*(*result + 56))();
    }

    else
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t ucal_roll(uint64_t result, unsigned int a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a2 < 0x19)
    {
      return (*(*result + 72))();
    }

    else
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t ucal_get(_BYTE *a1, unsigned int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 >= 0x19)
  {
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0xFFFFFFFFLL;
  }

  return icu::Calendar::get(a1, a2, a3);
}

_BYTE *ucal_set(_BYTE *this, unsigned int a2, int a3)
{
  if (a2 <= 0x18)
  {
    return icu::Calendar::set(this, a2, a3);
  }

  return this;
}

_BYTE *ucal_clearField(_BYTE *result, unsigned int a2)
{
  if (a2 <= 0x18)
  {
    return icu::Calendar::clear(result, a2);
  }

  return result;
}

uint64_t ucal_getLimit(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  if (!a4 || *a4 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 >= 0x19)
  {
    *a4 = 1;
    return 0xFFFFFFFFLL;
  }

  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        return (*(*a1 + 160))();
      case 4:
        return (*(*a1 + 168))();
      case 5:
        return (*(*a1 + 176))();
      default:
        return 0xFFFFFFFFLL;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return (*(*a1 + 128))();
    }

    else
    {
      if (a3 != 2)
      {
        return 0xFFFFFFFFLL;
      }

      return (*(*a1 + 144))();
    }
  }

  else
  {
    return (*(*a1 + 112))();
  }
}

uint64_t ucal_getLocaleByType(uint64_t a1, int a2, int *a3)
{
  if (a1)
  {
    return icu::Calendar::getLocaleID(a1, a2, a3);
  }

  if (*a3 <= 0)
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t ucal_getCanonicalTimeZoneID(uint64_t a1, uint64_t a2, UChar *a3, int a4, _BYTE *a5, icu::UnicodeString *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a6 && *a6 <= 0)
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a1 && a2 && a3 && a4 > 0)
    {
      v21 = 0u;
      v22 = 0u;
      v24 = 0;
      v23 = 0u;
      v20 = &unk_1F0935D00;
      LOWORD(v21) = 2;
      v18 = 0;
      icu::UnicodeString::UnicodeString(v19, a1, a2);
      icu::TimeZone::getCanonicalID(v19, &v20, &v18, a6, v13);
      icu::UnicodeString::~UnicodeString(v14, v19);
      v7 = 0;
      v15 = *a6;
      if (v15 <= 0)
      {
        if (a5)
        {
          *a5 = v18;
        }

        v17 = a3;
        v7 = icu::UnicodeString::extract(&v20, &v17, a4, a6);
        v16 = v17;
        v15 = &v16;
      }

      icu::UnicodeString::~UnicodeString(v15, &v20);
    }

    else
    {
      v7 = 0;
      *a6 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t ucal_getIanaTimeZoneID(uint64_t a1, uint64_t a2, UChar *a3, int a4, icu::UnicodeString *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v20 = 0;
  v19 = 0u;
  v16 = &unk_1F0935D00;
  LOWORD(v17) = 2;
  icu::UnicodeString::UnicodeString(v15, a1, a2);
  icu::TimeZone::getIanaID(v15, &v16, a5, v8);
  icu::UnicodeString::~UnicodeString(v9, v15);
  v14 = a3;
  v10 = icu::UnicodeString::extract(&v16, &v14, a4, a5);
  v13 = v14;
  icu::UnicodeString::~UnicodeString(&v13, &v16);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t ucal_getType(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return (*(*a1 + 184))();
  }

  else
  {
    return 0;
  }
}

uint64_t ucal_getDayOfWeekType(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 192))();
  }

  else
  {
    return 0;
  }
}

uint64_t ucal_getWeekendTransition(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 200))();
  }

  else
  {
    return 0;
  }
}

uint64_t ucal_isWeekend(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return (*(*a1 + 208))();
  }

  else
  {
    return 0;
  }
}

uint64_t ucal_getFieldDifference(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 88))();
  }

  else
  {
    return 0;
  }
}

_OWORD *ucal_getKeywordValuesForLocale(int a1, char *a2, int a3, UErrorCode *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  *v24 = 0u;
  v25 = 0u;
  ulocimp_getRegionForSupplementalData(a2, a4, 1, v24);
  v6 = ures_openDirect(0, "supplementalData", a4);
  ures_getByKey(v6, "calendarPreferenceData", v6, a4);
  v7 = ures_getByKey(v6, v24[0], 0, a4);
  v8 = *a4;
  if (v6 && v8 == U_MISSING_RESOURCE_ERROR)
  {
    *a4 = U_ZERO_ERROR;
    v7 = ures_getByKey(v6, "001", 0, a4);
    v8 = *a4;
  }

  if (v8 > U_ZERO_ERROR)
  {
    goto LABEL_5;
  }

  EmptyList = ulist_createEmptyList(a4);
  if (*a4 <= 0)
  {
    if (ures_getSize(v7) >= 1)
    {
      v14 = 0;
      while (1)
      {
        length = 0;
        StringByIndex = ures_getStringByIndex(v7, v14, &length, a4);
        v16 = malloc_type_malloc(length + 1, 0x100004077774924uLL);
        if (!v16)
        {
          break;
        }

        v17 = v16;
        u_UCharsToChars(StringByIndex, v16, length);
        v17[length] = 0;
        ulist_addItemEndList(EmptyList, v17, 1, a4);
        if (*a4 < 1 && ++v14 < ures_getSize(v7))
        {
          continue;
        }

        goto LABEL_22;
      }

      *a4 = U_MEMORY_ALLOCATION_ERROR;
    }

LABEL_22:
    v18 = *a4;
    if (!a3 && v18 <= U_ZERO_ERROR)
    {
      for (i = 0; i != 27; ++i)
      {
        while (1)
        {
          v20 = off_1E74101C8[i];
          v21 = strlen(v20);
          if (ulist_containsString(EmptyList, v20, v21))
          {
            break;
          }

          ulist_addItemEndList(EmptyList, v20, 0, a4);
          v18 = *a4;
          ++i;
          if (*a4 > 0 || i == 27)
          {
            goto LABEL_33;
          }
        }
      }

      v18 = *a4;
    }

LABEL_33:
    if (v18 >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      ulist_deleteList(EmptyList);
LABEL_5:
      EmptyList = 0;
    }
  }

  ures_close(v7);
  ures_close(v6);
  v10 = 0;
  if (*a4 <= 0 && EmptyList)
  {
    v10 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
    if (v10)
    {
      ulist_resetList(EmptyList);
      v11 = *&off_1F0943E00;
      *v10 = xmmword_1F0943DF0;
      v10[1] = v11;
      v10[2] = xmmword_1F0943E10;
      *(v10 + 6) = off_1F0943E20;
      *(v10 + 1) = EmptyList;
    }

    else
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
      ulist_deleteList(EmptyList);
    }
  }

  if (BYTE4(v24[1]))
  {
    free(v24[0]);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t ucal_getTimeZoneTransitionDate(icu::Calendar *a1, unsigned int a2, double *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v21 = v7;
  v22 = v6;
  v23 = v4;
  v24 = v5;
  TimeInMillis = icu::Calendar::getTimeInMillis(a1, a4);
  TimeZone = icu::Calendar::getTimeZone(v14, a1);
  v16 = **TimeZone;
  if (result)
  {
    if (*a4 > 0)
    {
      return 0;
    }

    v17 = result;
    memset(v20, 0, sizeof(v20));
    icu::TimeZoneTransition::TimeZoneTransition(v20);
    v18 = (a2 & 0xFFFFFFFD) == 1;
    v19 = *v17;
    if (a2 > 1)
    {
      if ((*(v19 + 120))(v17, v18, v20, TimeInMillis))
      {
        goto LABEL_8;
      }
    }

    else if ((*(v19 + 112))(v17, v18, v20, TimeInMillis))
    {
LABEL_8:
      *a3 = icu::TimeZoneTransition::getTime(v20);
      icu::TimeZoneTransition::~TimeZoneTransition(v20);
      return 1;
    }

    icu::TimeZoneTransition::~TimeZoneTransition(v20);
    return 0;
  }

  return result;
}

uint64_t ucal_getWindowsTimeZoneID(uint64_t a1, uint64_t a2, UChar *a3, int a4, icu::UnicodeString *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v19 = 0u;
    v20 = 0u;
    v22 = 0;
    v21 = 0u;
    v18 = &unk_1F0935D00;
    LOWORD(v19) = 2;
    icu::UnicodeString::UnicodeString(v17, a1, a2);
    icu::TimeZone::getWindowsID(v17, &v18, a5, v9, v10);
    icu::UnicodeString::~UnicodeString(v11, v17);
    v12 = *a5;
    if (v12 > 0)
    {
LABEL_4:
      v5 = 0;
LABEL_10:
      icu::UnicodeString::~UnicodeString(v12, &v18);
      goto LABEL_11;
    }

    v12 = v19;
    if ((v12 & 0x80000000) != 0)
    {
      v5 = DWORD1(v19);
      if (SDWORD1(v19) <= 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = v19;
      if (v19 < 0x20u)
      {
        goto LABEL_4;
      }

      v5 = v19 >> 5;
    }

    v16 = a3;
    icu::UnicodeString::extract(&v18, &v16, a4, a5);
    v15 = v16;
    v12 = &v15;
    goto LABEL_10;
  }

  v5 = 0;
LABEL_11:
  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t ucal_getTimeZoneIDForWindowsID(uint64_t a1, uint64_t a2, const icu::UnicodeString *a3, UChar *a4, int a5, UErrorCode *a6)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v20 = 0u;
    v21 = 0u;
    v23 = 0;
    v22 = 0u;
    *v19 = &unk_1F0935D00;
    LOWORD(v20) = 2;
    icu::UnicodeString::UnicodeString(v18, a1, a2);
    icu::TimeZone::getIDForWindowsID(v18, a3, v19, a6, v11);
    icu::UnicodeString::~UnicodeString(v12, v18);
    v13 = *a6;
    if (v13 > 0)
    {
LABEL_4:
      v6 = 0;
LABEL_10:
      icu::UnicodeString::~UnicodeString(v13, v19);
      goto LABEL_11;
    }

    v13 = v20;
    if ((v13 & 0x80000000) != 0)
    {
      v6 = DWORD1(v20);
      if (SDWORD1(v20) <= 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v13 = v20;
      if (v20 < 0x20u)
      {
        goto LABEL_4;
      }

      v6 = v20 >> 5;
    }

    v17 = a4;
    icu::UnicodeString::extract(v19, &v17, a5, a6);
    v16 = v17;
    v13 = &v16;
    goto LABEL_10;
  }

  v6 = 0;
LABEL_11:
  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

void ucal_getTimeZoneOffsetFromLocal(icu::Calendar *a1, int a2, int a3, int a4, int a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    TimeInMillis = icu::Calendar::getTimeInMillis(a1, a6);
    v9 = *a6;
    if (v9 <= 0)
    {
      v10 = TimeInMillis;
      TimeZone = icu::Calendar::getTimeZone(v9, a1);
      v12 = **TimeZone;
      if (v13)
      {
        v15 = *(*v13 + 160);
        v14.n128_f64[0] = v10;

        v15(v14);
      }

      else
      {
        *a6 = U_ILLEGAL_ARGUMENT_ERROR;
      }
    }
  }
}

uint64_t sub_1953FFFA0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  v3 = a1[1];
  v4 = a2[1];
  v5 = v3 < v4;
  v6 = v3 > v4;
  if (v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v6;
  }
}

uint64_t uacal_getDayPeriod(uint64_t a1, signed int a2, signed int a3, int a4, UErrorCode *a5)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_7;
  }

  if (a2 > 0x17 || a3 >= 0x3C)
  {
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_7:
    v12 = 10;
    goto LABEL_8;
  }

  __base = 0u;
  memset(v49, 0, sizeof(v49));
  v10 = ures_openDirect(0, "dayPeriods", a5);
  v11 = v10;
  if (*a5 <= 0)
  {
    if (a4)
    {
      v15 = "locales";
    }

    else
    {
      v15 = "locales_selection";
    }

    v16 = ures_getByKey(v10, v15, 0, a5);
    if (*a5 > 0)
    {
      v12 = 10;
LABEL_27:
      if (v16)
      {
        ures_close(v16);
      }

      goto LABEL_29;
    }

    v47 = 0;
    v46 = 0;
    if (!a1 || (LODWORD(v45) = 0, uloc_getLanguage(a1, &v46, 12, &v45), *a5 > 0) || *a5 == U_STRING_NOT_TERMINATED_WARNING || !v46)
    {
      strcpy(&v46, "en");
    }

    v17 = ures_getByKey(v16, &v46, 0, a5);
    if (*a5 >= 1)
    {
      *a5 = U_ZERO_ERROR;
      v17 = ures_getByKey(v16, "en", v17, a5);
      if (*a5 > 0)
      {
        goto LABEL_24;
      }
    }

    v45 = 0;
    v44 = 8;
    ures_getUTF8String(v17, &v45, &v44, 1, a5);
    if (*a5 > 0 || (v18 = ures_getByKey(v11, "rules", v16, a5), v16 = v18, *a5 > 0) || (v19 = ures_getByKey(v18, &v45, v11, a5), v11 = v19, *a5 > 0))
    {
LABEL_24:
      v12 = 10;
      goto LABEL_25;
    }

    v20 = 0;
    v21 = 0;
    if (ures_hasNext(v19))
    {
      while (1)
      {
        NextResource = ures_getNextResource(v11, v16, a5);
        v16 = NextResource;
        if (*a5 > 0)
        {
          goto LABEL_65;
        }

        Key = ures_getKey(NextResource);
        v39 = sub_195400528(Key);
        if (ures_hasNext(v16))
        {
          v40 = 24;
          do
          {
            v24 = ures_getNextResource(v16, v21, a5);
            v21 = v24;
            if (*a5 > 0)
            {
              goto LABEL_65;
            }

            v25 = ures_getKey(v24);
            v43 = 0;
            v41 = 6;
            *v42 = 0;
            ures_getUTF8String(v21, v42, &v41, 1, a5);
            if (*a5 >= 1)
            {
              goto LABEL_65;
            }

            v26 = atoi(v42);
            if (!strcmp(v25, "before"))
            {
              v40 = v26;
            }

            else
            {
              if (!strcmp(v25, "from"))
              {
                v27 = 1;
                if (v26 > v40 && v20 <= 11)
                {
                  v28 = &v49[-1] + 12 * v20;
                  *v28 = 0x100000000;
                  *(v28 + 2) = v39;
                  ++v20;
                  v27 = 1;
                }
              }

              else
              {
                v27 = 0;
              }

              if (v20 <= 11)
              {
                v29 = &v49[-1] + 3 * v20;
                *v29 = v26;
                v29[1] = v27;
                v29[2] = v39;
                ++v20;
              }
            }
          }

          while (ures_hasNext(v16));
        }

        if (!ures_hasNext(v11))
        {
          if (v20 < 12)
          {
            break;
          }

          qsort(&__base, v20, 0xCuLL, sub_1953FFFA0);
          goto LABEL_50;
        }
      }
    }

    v30 = v20;
    v31 = &v49[-1] + 12 * v20;
    *v31 = 24;
    *(v31 + 2) = 10;
    qsort(&__base, ++v20, 0xCuLL, sub_1953FFFA0);
    if ((v30 & 0x80000000) == 0)
    {
LABEL_50:
      v32 = 0;
      v33 = &__base + 1;
      do
      {
        if (!v32 || (*(v33 - 2) & 0xFFFFFFFE) != 8)
        {
          *v33 = 0;
        }

        ++v32;
        v33 += 3;
      }

      while (v20 != v32);
      if (v20 >= 2)
      {
        v34 = 0;
        v35 = (v20 - 1);
        v36 = v49;
        while (1)
        {
          v37 = *(v36 - 1);
          if (v37 > a2 || v37 >= a2 && *v36 > a3)
          {
            break;
          }

          ++v34;
          v36 += 3;
          if (v35 == v34)
          {
            goto LABEL_64;
          }
        }

        LODWORD(v35) = v34;
LABEL_64:
        v38 = &v49[-1] + 3 * v35;
        if (*v38 <= a2 && (*v38 < a2 || v38[1] <= a3))
        {
          v12 = v38[2];
          if (!v21)
          {
LABEL_25:
            if (v17)
            {
              ures_close(v17);
            }

            goto LABEL_27;
          }

LABEL_66:
          ures_close(v21);
          goto LABEL_25;
        }

LABEL_65:
        v12 = 10;
        if (!v21)
        {
          goto LABEL_25;
        }

        goto LABEL_66;
      }
    }

    LODWORD(v35) = 0;
    goto LABEL_64;
  }

  v12 = 10;
LABEL_29:
  if (v11)
  {
    ures_close(v11);
  }

LABEL_8:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t sub_195400528(char *__s1)
{
  v2 = &dword_1E74102B0;
  v3 = -16;
  while (strcmp(__s1, *(v2 - 1)))
  {
    v2 += 4;
    v3 += 16;
    if (v3 > 0x8F)
    {
      return 10;
    }
  }

  return *v2;
}

void sub_195400588(unsigned int a1, uint64_t a2)
{
  umtx_lock(0);
  ucln_registerCleanup(7, sub_1954005F4);
  if (a1 <= 0x25)
  {
    qword_1ED4432B8[a1] = a2;
  }

  umtx_unlock(0);
}

uint64_t sub_1954005F4()
{
  for (i = 0; i != 38; ++i)
  {
    v1 = qword_1ED4432B8[i];
    if (v1)
    {
      v1();
      qword_1ED4432B8[i] = 0;
    }
  }

  return 1;
}

uint64_t ucol_openBinary(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t ucol_cloneBinary(char **a1, unsigned __int8 *a2, int a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (a1)
  {
    v8 = **a1;
    if (!a1)
    {
      *a4 = U_UNSUPPORTED_ERROR;
      return 0;
    }
  }

  return icu::RuleBasedCollator::cloneBinary(a1, a2, a3, a4);
}

uint64_t ucol_safeClone(uint64_t result, uint64_t a2, int *a3, int *a4)
{
  if (!a4)
  {
    return 0;
  }

  if (*a4 > 0)
  {
    return 0;
  }

  if (!result)
  {
    v7 = 1;
LABEL_18:
    *a4 = v7;
    return result;
  }

  if (a3)
  {
    v6 = *a3;
    *a3 = 1;
    if (!v6)
    {
      return 0;
    }
  }

  result = (*(*result + 40))(result);
  if (result)
  {
    v7 = -126;
  }

  else
  {
    v7 = 7;
  }

  if (result)
  {
    v8 = a3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t ucol_clone(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 > 0)
  {
    return 0;
  }

  if (a1)
  {
    result = (*(*a1 + 40))(a1);
    if (result)
    {
      return result;
    }

    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  result = 0;
  *a2 = v4;
  return result;
}

uint64_t ucol_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ucol_mergeSortkeys(char *__s, int a2, char *a3, int a4, _BYTE *a5, int a6)
{
  if (!a2 || (v8 = __s) == 0 || (v9 = a2, a2 < -1))
  {
LABEL_14:
    result = 0;
    if (a5)
    {
      if (a6 >= 1)
      {
        result = 0;
        *a5 = 0;
      }
    }

    return result;
  }

  v10 = a4;
  v11 = a3;
  if (a2 < 1)
  {
    if (!a3)
    {
      goto LABEL_14;
    }
  }

  else if (!a3 || __s[a2 - 1])
  {
    goto LABEL_14;
  }

  if (a4 < -1 || !a4)
  {
    goto LABEL_14;
  }

  if (a4 < 1)
  {
    if (a6 < 0)
    {
      return 0;
    }
  }

  else if (a6 < 0 || a3[a4 - 1])
  {
    goto LABEL_14;
  }

  if (!a5 && a6)
  {
    return 0;
  }

  if (a2 < 0)
  {
    v9 = strlen(__s) + 1;
  }

  if (v10 < 0)
  {
    v10 = strlen(v11) + 1;
  }

  result = (v10 + v9);
  if (result <= a6)
  {
    for (i = a5; ; i += 2)
    {
      v14 = *v8;
      if (v14 >= 2)
      {
        do
        {
          *i++ = v14;
          v15 = *++v8;
          LOBYTE(v14) = v15;
        }

        while (v15 > 1);
      }

      *i = 2;
      v16 = i + 1;
      v17 = *v11;
      if (v17 >= 2)
      {
        do
        {
          *v16++ = v17;
          v18 = *++v11;
          v17 = v18;
        }

        while (v18 > 1);
        i = v16 - 1;
      }

      if (!v17 || *v8 != 1)
      {
        break;
      }

      ++v8;
      ++v11;
      *v16 = 1;
    }

    if (*v8)
    {
      v20 = v8;
    }

    else
    {
      v20 = v11;
    }

    LODWORD(result) = v16 - a5;
    do
    {
      v21 = *v20++;
      *v16++ = v21;
      result = (result + 1);
    }

    while (v21);
  }

  return result;
}

uint64_t ucol_nextSortKeyPart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (a6 && *a6 <= 0)
  {
    return (*(*a1 + 304))();
  }

  else
  {
    return 0;
  }
}

uint64_t ucol_getBound(_BYTE *__src, int a2, int a3, int a4, void *__dst, int a6, int *a7)
{
  if (!a7)
  {
    return 0;
  }

  if (*a7 > 0)
  {
    return 0;
  }

  if (!__src)
  {
    goto LABEL_18;
  }

  v10 = 0;
  while (1)
  {
    v12 = v10++;
    a4 -= __src[v12 + 1] == 1;
    if (!a4)
    {
      break;
    }

    if (__src[v12 + 1])
    {
      v13 = 1;
    }

    else
    {
      v13 = v10 < a2;
    }

    if (!v13)
    {
      *a7 = -123;
      break;
    }
  }

  if (!__dst || a3 + v12 + 1 > a6)
  {
    return (a3 + v12 + 2);
  }

  memcpy(__dst, __src, v10);
  if (a3 == 2)
  {
    *(__dst + v12 + 1) = -1;
    LODWORD(v10) = v12 + 3;
    *(__dst + v12 + 2) = -1;
  }

  else if (a3 == 1)
  {
    LODWORD(v10) = v12 + 2;
    *(__dst + v12 + 1) = 2;
  }

  else if (a3)
  {
LABEL_18:
    result = 0;
    *a7 = 1;
    return result;
  }

  result = (v10 + 1);
  *(__dst + v10) = 0;
  return result;
}

uint64_t ucol_setMaxVariable(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*result + 200))();
  }

  return result;
}

uint64_t ucol_setVariableTop(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (a1 && *a4 <= 0)
  {
    return (*(*a1 + 216))();
  }

  else
  {
    return 0;
  }
}

uint64_t ucol_getVariableTop(uint64_t a1, int *a2)
{
  if (a1 && *a2 <= 0)
  {
    return (*(*a1 + 240))();
  }

  else
  {
    return 0;
  }
}

uint64_t ucol_restoreVariableTop(uint64_t result, uint64_t a2, int *a3)
{
  if (result)
  {
    if (*a3 <= 0)
    {
      return (*(*result + 232))();
    }
  }

  return result;
}

uint64_t ucol_setAttribute(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (result)
  {
    if (*a4 <= 0)
    {
      return (*(*result + 184))();
    }
  }

  return result;
}

uint64_t ucol_getAttribute(uint64_t a1, uint64_t a2, int *a3)
{
  if (a1 && *a3 <= 0)
  {
    return (*(*a1 + 192))();
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ucol_setStrength(uint64_t result, uint64_t a2)
{
  v2 = 0;
  if (result)
  {
    return (*(*result + 184))(result, 5, a2, &v2);
  }

  return result;
}

uint64_t ucol_getStrength(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    return (*(*a1 + 192))(a1, 5, &v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ucol_getReorderCodes(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    return (*(*a1 + 160))();
  }

  else
  {
    return 0;
  }
}

uint64_t ucol_setReorderCodes(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    return (*(*result + 168))();
  }

  return result;
}

uint64_t ucol_strcollIter(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (a4 && *a4 <= 0)
  {
    if (a1 && a2 && a3)
    {
      return (*(*a1 + 96))();
    }

    *a4 = 1;
  }

  return 0;
}

uint64_t ucol_strcollUTF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (*a6 <= 0)
  {
    return (*(*a1 + 296))();
  }

  else
  {
    return 0;
  }
}

uint64_t ucol_getUCAVersion(uint64_t result, _BYTE *a2)
{
  if (result)
  {
    v4 = 0;
    result = (*(*result + 176))(result, &v4);
    v3 = BYTE1(v4);
    *a2 = BYTE1(v4) >> 3;
    a2[1] = v3 & 7;
    a2[2] = BYTE2(v4) >> 6;
    a2[3] = 0;
  }

  return result;
}

void *ucol_getRules(icu::RuleBasedCollator *a1, unsigned int *a2)
{
  {
    *a2 = 0;
    return &unk_1954939E8;
  }

  else
  {
    Rules = icu::RuleBasedCollator::getRules(a1);
    v5 = *(Rules + 8);
    v6 = v5;
    v7 = v5 >> 5;
    if (v6 < 0)
    {
      v7 = *(Rules + 12);
    }

    *a2 = v7;
    v8 = *(Rules + 8);
    if ((v8 & 0x11) != 0)
    {
      return 0;
    }

    else if ((v8 & 2) != 0)
    {
      return (Rules + 10);
    }

    else
    {
      return *(Rules + 24);
    }
  }
}

uint64_t ucol_getRulesEx(char **a1, int a2, UChar *a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v19 = 0;
  v18 = 0u;
  v15 = &unk_1F0935D00;
  LOWORD(v16) = 2;
  {
    icu::RuleBasedCollator::getRules(a1, a2, &v15);
  }

  if (a3 && a4 >= 1)
  {
    v14 = 0;
    v13 = a3;
    v8 = icu::UnicodeString::extract(&v15, &v13, a4, &v14);
    v12 = v13;
    v9 = &v12;
  }

  else
  {
    v9 = v16;
    if ((v9 & 0x80000000) != 0)
    {
      v8 = DWORD1(v16);
    }

    else
    {
      v9 = v16;
      v8 = v16 >> 5;
    }
  }

  icu::UnicodeString::~UnicodeString(v9, &v15);
  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

const char *ucol_getLocaleByType(char **a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a1)
  {
    v6 = **a1;
    if (!a1)
    {
      *a3 = 16;
      return 0;
    }
  }

  return icu::RuleBasedCollator::internalGetLocaleID(a1, a2, a3);
}

icu::UnicodeSet *ucol_getTailoredSet(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  result = (*(*a1 + 248))(a1);
  if (*a2 >= 1)
  {
    if (result)
    {
      icu::UnicodeSet::~UnicodeSet(result);
      MEMORY[0x19A8B2600]();
      return 0;
    }
  }

  return result;
}

uint64_t ucol_equals(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return (*(*a1 + 24))(a1);
  }
}

void sub_1954014FC(UErrorCode *a1)
{
  if (*a1 <= 0)
  {
    v2 = ures_open("icudt76l-coll", "root", a1);
    qword_1EAECA488 = v2;
    if (*a1 <= 0)
    {
      qword_1EAECA498 = ures_getStringByKey(v2, "UCARules", &dword_1EAECA490, a1);
      if (*a1 < 1)
      {

        sub_195400588(0x1Eu, sub_1954015BC);
      }

      else
      {
        ures_close(qword_1EAECA488);
        qword_1EAECA488 = 0;
      }
    }
  }
}

uint64_t sub_1954015BC()
{
  qword_1EAECA498 = 0;
  dword_1EAECA490 = 0;
  ures_close(qword_1EAECA488);
  qword_1EAECA488 = 0;
  atomic_store(0, &dword_1EAECA4A0);
  return 1;
}

void sub_195401608(uint64_t a1)
{
  v3 = 0;
  if (atomic_load_explicit(&dword_1EAECA4A0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAECA4A0))
  {
    sub_1954014FC(&v3);
    dword_1EAECA4A4 = v3;
    icu::umtx_initImplPostInit(&dword_1EAECA4A0);
    if (v3 > 0)
    {
      return;
    }

    goto LABEL_10;
  }

  if (dword_1EAECA4A4 <= 0 && v3 <= 0)
  {
LABEL_10:
    icu::UnicodeString::doAppend(a1, qword_1EAECA498, 0, dword_1EAECA490);
  }
}

void sub_1954016C4(char *a1, char *__s, uint64_t a3, UErrorCode *a4)
{
  __dst[2] = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v8 = strlen(__s);
    if (v8 < 16)
    {
      memcpy(__dst, __s, v8 + 1);
      T_CString_toLowerCase(__dst);
      v9 = ures_open("icudt76l-coll", a1, a4);
      v10 = ures_getByKey(v9, "collations", 0, a4);
      v11 = ures_getByKeyWithFallback(v10, __dst, 0, a4);
      v20 = 0;
      StringByKey = ures_getStringByKey(v11, "Sequence", &v20, a4);
      if (*a4 <= 0)
      {
        v13 = StringByKey;
        v14 = v20;
        icu::UnicodeString::unBogus(a3);
        v15 = *(a3 + 8);
        v16 = v15;
        v17 = v15 >> 5;
        v18 = v16 >= 0 ? v17 : *(a3 + 12);
        icu::UnicodeString::doReplace(a3, 0, v18, v13, 0, v14);
        if (*(a3 + 8))
        {
          *a4 = U_MEMORY_ALLOCATION_ERROR;
        }
      }

      if (v11)
      {
        ures_close(v11);
      }

      if (v10)
      {
        ures_close(v10);
      }

      if (v9)
      {
        ures_close(v9);
      }
    }

    else
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

icu::SharedObject *sub_19540186C(uint64_t a1, int *a2)
{
  if (!*(a1 + 504))
  {
    return sub_195401C5C(a1, a2);
  }

  if (!*(a1 + 512))
  {
    return sub_195401DF8(a1, a2);
  }

  if (*(a1 + 520))
  {
    return sub_19540230C(a1, a2);
  }

  return sub_195402004(a1, a2);
}

UErrorCode *sub_195401894(uint64_t a1, icu::CollationRoot *this)
{
  v9[66] = *MEMORY[0x1E69E9840];
  RootCacheEntry = icu::CollationRoot::getRootCacheEntry(this, this);
  if (*this <= 0)
  {
    v5 = RootCacheEntry;
    v6 = *(a1 + 40);
    if (!*v6 || !strcmp(v6, "root"))
    {
      icu::SharedObject::addRef(v5);
    }

    else
    {
      *this = 0;
      bzero(v9, 0x210uLL);
      sub_195401A80(v9, v5, a1, this);
      v5 = sub_19540197C(v9, this);
      sub_195401C10(v9);
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

icu::SharedObject *sub_19540197C(icu::SharedObject ***a1, UErrorCode *a2)
{
  v8[30] = *MEMORY[0x1E69E9840];
  memset(&v8[1], 0, 232);
  v8[0] = &unk_1F0943EB8;
  icu::Locale::Locale(&v8[2], (a1 + 30));
  v7 = 0;
  sub_1952C1AD0(*a1, v8, a1, &v7, a2);
  v4 = v7;
  v8[0] = &unk_1F0943EB8;
  icu::Locale::~Locale(&v8[2]);
  icu::CacheKeyBase::~CacheKeyBase(v8);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_195401A80(uint64_t a1, UErrorCode *a2, char **a3, icu::UnifiedCache *this)
{
  v14 = *MEMORY[0x1E69E9840];
  *a1 = icu::UnifiedCache::getInstance(this, a2);
  *(a1 + 8) = a2;
  icu::Locale::Locale((a1 + 16), (a2 + 6));
  icu::Locale::Locale((a1 + 240), a3);
  *(a1 + 496) = 0;
  *(a1 + 500) = 0;
  *(a1 + 464) = 0;
  *(a1 + 480) = 0;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  if (*this <= 0)
  {
    if (*(a1 + 456))
    {
      goto LABEL_3;
    }

    BaseName = icu::Locale::getBaseName((a1 + 240));
    if (!strcmp(*(a1 + 280), BaseName))
    {
      goto LABEL_4;
    }

    icu::Locale::Locale(v13, BaseName, 0, 0, 0);
    icu::Locale::operator=(a1 + 240, v13);
    icu::Locale::~Locale(v13);
    if (*(a1 + 456) || (v11 = (a1 + 464), KeywordValue = icu::Locale::getKeywordValue(a3, "collation", (a1 + 464), 15, this), *this >= 1))
    {
LABEL_3:
      *this = 1;
    }

    else
    {
      v11[KeywordValue] = 0;
      if (KeywordValue)
      {
        if (uprv_stricmp((a1 + 464), "default"))
        {
          T_CString_toLowerCase((a1 + 464));
          sub_1951DE32C(a1 + 240, "collation", (a1 + 464), this);
        }

        else
        {
          *v11 = 0;
        }
      }
    }
  }

LABEL_4:
  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

void **sub_195401C10(void **a1)
{
  ures_close(a1[65]);
  ures_close(a1[64]);
  ures_close(a1[63]);
  icu::Locale::~Locale((a1 + 30));
  icu::Locale::~Locale((a1 + 2));
  return a1;
}

icu::SharedObject *sub_195401C5C(uint64_t a1, UErrorCode *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    BaseName = icu::Locale::getBaseName((a1 + 240));
    *(a1 + 504) = ures_openNoDefault("icudt76l-coll", BaseName, a2);
    if (*a2 == U_MISSING_RESOURCE_ERROR)
    {
      *a2 = U_USING_DEFAULT_WARNING;
      icu::SharedObject::addRef(*(a1 + 8));
      v2 = *(a1 + 8);
    }

    else
    {
      memset(v13, 0, sizeof(v13));
      icu::Locale::Locale(v13, a1 + 240);
      LocaleByType = ures_getLocaleByType(*(a1 + 504), 0, a2);
      v7 = *a2;
      if (v7 <= 0)
      {
        icu::Locale::Locale(v7, v12, LocaleByType, 0, 0, 0);
        v8 = icu::Locale::operator=(a1 + 16, v12);
        icu::Locale::operator=((a1 + 240), v8);
        icu::Locale::~Locale(v12);
        if (*(a1 + 464))
        {
          sub_1951DE32C(a1 + 240, "collation", (a1 + 464), a2);
        }

        if (icu::Locale::operator==(a1 + 240, v13))
        {
          v9 = sub_195401DF8(a1, a2);
        }

        else
        {
          v9 = sub_19540197C(a1, a2);
        }

        v2 = v9;
      }

      else
      {
        v2 = 0;
      }

      icu::Locale::~Locale(v13);
    }
  }

  else
  {
    v2 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

icu::SharedObject *sub_195401DF8(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v5 = ures_getByKey(*(a1 + 504), "collations", 0, a2);
  *(a1 + 512) = v5;
  if (*a2 == 2)
  {
    *a2 = -127;

    return sub_1954026A4(a1, v6, a2);
  }

  else
  {
    if (*a2 > 0)
    {
      return 0;
    }

    v12 = 0;
    v7 = ures_getByKeyWithFallback(v5, "default", 0, &v12);
    v11 = 0;
    String = ures_getString(v7, &v11, &v12);
    if (v12 > 0 || (v11 - 1) > 0xE)
    {
      strcpy((a1 + 480), "standard");
    }

    else
    {
      u_UCharsToChars(String, (a1 + 480), v11 + 1);
    }

    if (v7)
    {
      ures_close(v7);
    }

    if (*(a1 + 464))
    {
      if (!strcmp((a1 + 464), (a1 + 480)))
      {
        *(a1 + 496) |= 2u;
      }

      if (!strcmp((a1 + 464), "search"))
      {
        *(a1 + 496) |= 1u;
      }

      if (!strcmp((a1 + 464), "standard"))
      {
        *(a1 + 496) |= 4u;
      }

      return sub_195402004(a1, a2);
    }

    else
    {
      strcpy((a1 + 464), (a1 + 480));
      v9 = *(a1 + 496);
      v10 = v9 | 2;
      *(a1 + 496) = v9 | 2;
      if (!strcmp((a1 + 464), "search"))
      {
        v10 = v9 | 3;
        *(a1 + 496) = v9 | 3;
      }

      if (!strcmp((a1 + 464), "standard"))
      {
        *(a1 + 496) = v10 | 4;
      }

      sub_1951DE32C(a1 + 240, "collation", (a1 + 464), a2);
      return sub_19540197C(a1, a2);
    }
  }
}

uint64_t sub_195402004(uint64_t a1, UErrorCode *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    goto LABEL_2;
  }

  v5 = ures_getByKeyWithFallback(*(a1 + 512), (a1 + 464), 0, a2);
  v6 = v5;
  if (*a2 == U_MISSING_RESOURCE_ERROR)
  {
    v7 = strlen((a1 + 464));
    *a2 = U_USING_DEFAULT_WARNING;
    *(a1 + 500) = 1;
    v9 = *(a1 + 496);
    if ((v9 & 1) == 0 && v7 >= 7 && !strncmp((a1 + 464), "search", 6uLL))
    {
      *(a1 + 496) = v9 | 1;
      *(a1 + 470) = 0;
    }

    else if ((v9 & 2) != 0)
    {
      if ((v9 & 4) != 0)
      {
        v19 = sub_1954026A4(a1, v8, a2);
        goto LABEL_25;
      }

      *(a1 + 496) = v9 | 4;
      strcpy((a1 + 464), "standard");
    }

    else
    {
      *(a1 + 496) = v9 | 2;
      strcpy((a1 + 464), (a1 + 480));
    }

    sub_1951DE32C(a1 + 240, "collation", (a1 + 464), a2);
    v19 = sub_19540197C(a1, a2);
LABEL_25:
    v2 = v19;
    if (!v6)
    {
      goto LABEL_27;
    }

LABEL_26:
    ures_close(v6);
    goto LABEL_27;
  }

  if (*a2 > 0)
  {
    v2 = 0;
    if (!v5)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  *(a1 + 520) = v5;
  LocaleByType = ures_getLocaleByType(v5, 0, a2);
  if (*a2 > 0)
  {
    goto LABEL_2;
  }

  v11 = LocaleByType;
  BaseName = icu::Locale::getBaseName((a1 + 16));
  icu::Locale::Locale(v13, v24, v11, 0, 0, 0);
  icu::Locale::Locale(v14, v23, BaseName, 0, 0, 0);
  v15 = icu::Locale::operator==(v24, v23);
  icu::Locale::~Locale(v23);
  icu::Locale::~Locale(v24);
  if (strcmp((a1 + 464), (a1 + 480)))
  {
    sub_1951DE32C(a1 + 16, "collation", (a1 + 464), a2);
    if (*a2 > 0)
    {
LABEL_2:
      v2 = 0;
      goto LABEL_27;
    }
  }

  if ((!*v11 || !strcmp(v11, "root")) && !strcmp((a1 + 464), "standard"))
  {
    if (*(a1 + 500))
    {
      *a2 = U_USING_DEFAULT_WARNING;
    }

    v18 = sub_1954026A4(a1, v17, a2);
  }

  else
  {
    icu::Locale::Locale(v16, v24, v11, 0, 0, 0);
    icu::Locale::operator=(a1 + 240, v24);
    icu::Locale::~Locale(v24);
    if (v15)
    {
      v18 = sub_19540230C(a1, a2);
    }

    else
    {
      sub_1951DE32C(a1 + 240, "collation", (a1 + 464), a2);
      v22 = sub_19540197C(a1, a2);
      v18 = sub_195402700(a1 + 16, v22, a2);
    }
  }

  v2 = v18;
LABEL_27:
  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t sub_19540230C(uint64_t a1, int *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    operator new();
  }

  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1954026A4(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  icu::SharedObject::addRef(*(a1 + 8));
  v7 = *(a1 + 8);

  return sub_195402700(a1 + 16, v7, a3);
}

uint64_t sub_195402700(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0 && !icu::Locale::operator==(a1, a2 + 24))
  {
    operator new();
  }

  return a2;
}

void sub_195402780(uint64_t a1)
{
  *a1 = &unk_1F0943EB8;
  icu::Locale::~Locale((a1 + 16));

  icu::CacheKeyBase::~CacheKeyBase(a1);
}

uint64_t ucol_open(char *a1, const icu::Locale *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  icu::Locale::Locale(v8, v7, a1, 0, 0, 0);
  Instance = icu::Collator::createInstance(v7, a2, v3);
  icu::Locale::~Locale(v7);
  if (*a2 <= 0)
  {
    result = Instance;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ucol_getDisplayName(char *a1, const char *a2, char *a3, unsigned int a4, int *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v21 = 0u;
    v24 = 0;
    v23 = 0u;
    v22 = 0u;
    v20 = &unk_1F0935D00;
    v11 = 2;
    LOWORD(v21) = 2;
    if (a3 || a4)
    {
      icu::UnicodeString::setTo(&v20, a3, 0, a4);
    }

    icu::Locale::Locale(v11, v19, a1, 0, 0, 0);
    icu::Locale::Locale(v12, v18, a2, 0, 0, 0);
    icu::Collator::getDisplayName(v19, v18, &v20, v13);
    icu::Locale::~Locale(v18);
    icu::Locale::~Locale(v19);
    v17 = a3;
    v5 = icu::UnicodeString::extract(&v20, &v17, a4, a5);
    v16 = v17;
    icu::UnicodeString::~UnicodeString(&v16, &v20);
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t ucol_getAvailable(int a1, int *a2)
{
  v5 = 0;
  AvailableLocales = icu::Collator::getAvailableLocales(&v5, a2);
  result = 0;
  if (AvailableLocales)
  {
    if (v5 > a1)
    {
      return *(AvailableLocales + 224 * a1 + 40);
    }
  }

  return result;
}

uint64_t ucol_countAvailable(uint64_t a1, int *a2)
{
  v3 = 0;
  icu::Collator::getAvailableLocales(&v3, a2);
  return v3;
}

_OWORD *ucol_getKeywords(int *a1)
{
  if (*a1 <= 0)
  {
    return uenum_openCharStringsEnumeration(&off_1E7410348, 1, a1);
  }

  else
  {
    return 0;
  }
}

void *ucol_getKeywordValues(const char *a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (!a1 || strcmp(a1, "collation"))
  {
    *a2 = 1;
    return 0;
  }

  return ures_getKeywordValues();
}

_OWORD *ucol_getKeywordValuesForLocale(uint64_t a1, char *a2, uint64_t a3, UErrorCode *a4)
{
  v5 = ures_open("icudt76l-coll", a2, a4);
  v12 = 0;
  v10 = &unk_1F0943E70;
  EmptyList = ulist_createEmptyList(a4);
  ures_getAllItemsWithFallback(v5, "collations", &v10, a4);
  v6 = 0;
  if (*a4 <= 0)
  {
    v7 = malloc_type_malloc(0x38uLL, 0x80040C96DFCA5uLL);
    v6 = v7;
    if (v7)
    {
      v8 = *&off_1F0943E38;
      *v7 = xmmword_1F0943E28;
      v7[1] = v8;
      v7[2] = xmmword_1F0943E48;
      *(v7 + 6) = off_1F0943E58;
      ulist_resetList(EmptyList);
      *(v6 + 1) = EmptyList;
      EmptyList = 0;
    }

    else
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  v10 = &unk_1F0943E70;
  ulist_deleteList(EmptyList);
  icu::ResourceSink::~ResourceSink(&v10);
  if (v5)
  {
    ures_close(v5);
  }

  return v6;
}

void sub_195402C20(icu::ResourceSink *a1)
{
  *a1 = &unk_1F0943E70;
  ulist_deleteList(*(a1 + 1));

  icu::ResourceSink::~ResourceSink(a1);
}

uint64_t ucol_isCompressibleLeadByte(unsigned int a1, icu::CollationRoot *this)
{
  Data = icu::CollationRoot::getData(this, this);
  if (*this <= 0)
  {
    return *(*(Data + 72) + a1);
  }

  else
  {
    return 0;
  }
}

void sub_195402D0C(icu::ResourceSink *a1)
{
  *a1 = &unk_1F0943E70;
  ulist_deleteList(*(a1 + 1));
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195402D78(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  __s1 = a2;
  if (*a5 > 0)
  {
    goto LABEL_2;
  }

  v18 = 0;
  memset(v17, 0, sizeof(v17));
  (*(*a3 + 88))(v17, a3, a5);
  if (!icu::ResourceTable::getKeyAndValue(v17, 0, &__s1, a3))
  {
    goto LABEL_2;
  }

  v9 = 1;
  while (1)
  {
    v10 = (*(*a3 + 24))(a3);
    if (v10 == 2)
    {
      v14 = __s1;
      if (strncmp(__s1, "private-", 8uLL))
      {
        v15 = strlen(v14);
        if (!ulist_containsString(*(a1 + 8), v14, v15))
        {
          ulist_addItemEndList(*(a1 + 8), __s1, 0, a5);
        }
      }

      goto LABEL_18;
    }

    if (!v10 && !*(a1 + 16) && !strcmp(__s1, "default"))
    {
      break;
    }

LABEL_18:
    if (*a5 < 1)
    {
      if (icu::ResourceTable::getKeyAndValue(v17, v9++, &__s1, a3))
      {
        continue;
      }
    }

    goto LABEL_2;
  }

  v25 = 0;
  memset(&v23[1], 0, 48);
  v23[0] = &v23[1] + 5;
  LODWORD(v23[1]) = 40;
  v24 = 0;
  v21 = 0;
  v20 = (*(*a3 + 32))(a3, &v21, a5);
  icu::UnicodeString::UnicodeString(v22, 1, &v20);
  icu::CharString::appendInvariantChars(v23, v22, a5);
  icu::UnicodeString::~UnicodeString(v11, v22);
  if (*a5 > 0 || !v24)
  {
LABEL_13:
    if (BYTE4(v23[1]))
    {
      free(v23[0]);
    }

    goto LABEL_18;
  }

  v12 = uprv_strdup(v23[0]);
  if (v12)
  {
    v13 = v12;
    ulist_removeString(*(a1 + 8), v23[0]);
    ulist_addItemBeginList(*(a1 + 8), v13, 1, a5);
    *(a1 + 16) = 1;
    goto LABEL_13;
  }

  *a5 = 7;
  if (BYTE4(v23[1]))
  {
    free(v23[0]);
  }

LABEL_2:
  v5 = *MEMORY[0x1E69E9840];
}

void sub_195403048(uint64_t a1)
{
  *a1 = &unk_1F0943EB8;
  icu::Locale::~Locale((a1 + 16));
  icu::CacheKeyBase::~CacheKeyBase(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1954030B0(uint64_t a1)
{
  v2 = strlen((off_1F0938648 & 0x7FFFFFFFFFFFFFFFLL));
  v3 = ustr_hashCharsN((off_1F0938648 & 0x7FFFFFFFFFFFFFFFLL), v2);
  return icu::Locale::hashCode((a1 + 16)) + 37 * v3;
}

char *sub_19540317C(uint64_t a1, char *__dst, int a3)
{
  result = strncpy(__dst, *(a1 + 56), a3);
  __dst[a3 - 1] = 0;
  return result;
}

BOOL sub_1954031B8(void *a1, void *a2)
{
  result = sub_1952C1D2C(a1, a2);
  if (result)
  {

    return icu::Locale::operator==((a1 + 2), (a2 + 2));
  }

  return result;
}

void ucol_prepareShortStringOpen(const char *a1, uint64_t a2, char *a3, UErrorCode *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = &v22;
  }

  *v6 = 0;
  *(v6 + 4) = 0;
  *(v6 + 20) = 0;
  bzero(v28, 0x670uLL);
  for (i = 0; i != 384; i += 64)
  {
    v8 = &v28[i];
    *v8 = &v28[i + 13];
    *(v8 + 2) = 40;
    *(v8 + 6) = 0;
    *(v8 + 14) = 0;
  }

  v9 = 0;
  v29 = &v31 + 1;
  v30 = 40;
  v31 = 0;
  v32 = 0;
  v38 = 0;
  v35 = 0u;
  memset(v36, 0, sizeof(v36));
  v37 = 0;
  do
  {
    v10 = &v28[v9];
    *(v10 + 70) = &v39[v9];
    *(v10 + 142) = 40;
    *(v10 + 286) = 0;
    *(v10 + 154) = 0;
    v9 += 64;
  }

  while (v9 != 1088);
  *&v11 = -1;
  *(&v11 + 1) = -1;
  v33 = v11;
  v34 = v11;
  sub_1954034DC(v28, a1, v6, a4);
  sub_195403650(v28, a4);
  memset(v27, 0, 64);
  ulocimp_canonicalize(v29, a4, v27);
  v12 = ures_open("icudt76l-coll", v27[0], a4);
  v13 = ures_getByKey(v12, "collations", 0, a4);
  v25 = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  ulocimp_getKeywordValue(v27[0], "collation", 9, a4, v23);
  if (!DWORD2(v26))
  {
    v15 = ures_getByKeyWithFallback(v13, "default", 0, a4);
    if (*a4 >= 1)
    {
      *a4 = U_INTERNAL_PROGRAM_ERROR;
      goto LABEL_13;
    }

    v19 = v15;
    v21 = 0;
    String = ures_getString(v15, &v21, a4);
    icu::CharString::appendInvariantChars(v23, String, v21, a4);
    ures_close(v19);
  }

  v14 = ures_getByKeyWithFallback(v13, v23[0], 0, a4);
  ures_close(v14);
  ures_close(v13);
  ures_close(v12);
LABEL_13:
  if (BYTE4(v23[1]))
  {
    free(v23[0]);
  }

  if (BYTE4(v27[1]))
  {
    free(v27[0]);
  }

  v16 = 68;
  do
  {
    if (BYTE12(v36[v16]))
    {
      free(*&v36[v16]);
    }

    v16 -= 4;
  }

  while (v16 * 16);
  if (v31)
  {
    free(v29);
  }

  v17 = 48;
  do
  {
    if (BYTE4(v27[v17 + 2]))
    {
      free(v27[v17 + 1]);
    }

    v17 -= 8;
  }

  while (v17 * 8);
LABEL_27:
  v18 = *MEMORY[0x1E69E9840];
}

const char *sub_1954034DC(uint64_t a1, const char *a2, uint64_t a3, UErrorCode *a4)
{
  v4 = a2;
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (*a4 > 0)
  {
LABEL_14:
    *(a3 + 4) = v5 - v4;
  }

  else
  {
    v8 = *a2;
    v5 = a2;
    while (v8)
    {
      v9 = -560;
      v10 = &dword_1F0943F38;
      while (v8 != *(v10 - 16))
      {
        v9 -= 64;
        v10 += 6;
        if (v9 == -1648)
        {
          *a4 = U_ILLEGAL_ARGUMENT_ERROR;
          goto LABEL_11;
        }
      }

      v11 = (*(v10 - 1))(a1, *v10, v5 + 1, a4);
      v16 = &v18 + 1;
      v17 = 40;
      v18 = 0;
      v19 = 0;
      icu::CharString::append(&v16, v5, v11 - v5, a4);
      icu::CharString::copyFrom((a1 - v9), &v16, a4);
      if (v18)
      {
        free(v16);
      }

      v5 = v11;
LABEL_11:
      --v5;
      do
      {
        v12 = *++v5;
        v8 = v12;
      }

      while (v12 == 95);
      if (*a4 > 0)
      {
        goto LABEL_14;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

icu::CharString *sub_195403650(icu::CharString *result, UErrorCode *a2)
{
  if (*(result + 110))
  {
    return result;
  }

  v10 = v2;
  v11 = v3;
  v5 = result;
  result = icu::CharString::append((result + 384), *result, *(result + 14), a2);
  if (*(v5 + 30))
  {
    icu::StringPiece::StringPiece(&v8, "_");
    icu::CharString::append((v5 + 384), v8, v9, a2);
    result = icu::CharString::append((v5 + 384), *(v5 + 8), *(v5 + 30), a2);
  }

  if (*(v5 + 46))
  {
    icu::StringPiece::StringPiece(&v8, "_");
    icu::CharString::append((v5 + 384), v8, v9, a2);
    v6 = *(v5 + 16);
    v7 = *(v5 + 46);
LABEL_8:
    result = icu::CharString::append((v5 + 384), v6, v7, a2);
    goto LABEL_9;
  }

  if (*(v5 + 62))
  {
    icu::StringPiece::StringPiece(&v8, "_");
    v6 = v8;
    v7 = v9;
    goto LABEL_8;
  }

LABEL_9:
  if (*(v5 + 62))
  {
    icu::StringPiece::StringPiece(&v8, "_");
    icu::CharString::append((v5 + 384), v8, v9, a2);
    result = icu::CharString::append((v5 + 384), *(v5 + 24), *(v5 + 62), a2);
  }

  if (*(v5 + 78))
  {
    icu::StringPiece::StringPiece(&v8, "@collation=");
    icu::CharString::append((v5 + 384), v8, v9, a2);
    result = icu::CharString::append((v5 + 384), *(v5 + 32), *(v5 + 78), a2);
  }

  if (*(v5 + 94))
  {
    icu::StringPiece::StringPiece(&v8, "@sp=");
    icu::CharString::append((v5 + 384), v8, v9, a2);
    return icu::CharString::append((v5 + 384), *(v5 + 40), *(v5 + 94), a2);
  }

  return result;
}

uint64_t ucol_openFromShortString(const char *a1, int a2, char *a3, UErrorCode *a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = &v23;
    }

    *v8 = 0;
    *(v8 + 4) = 0;
    *(v8 + 20) = 0;
    bzero(v26, 0x670uLL);
    for (i = 0; i != 384; i += 64)
    {
      v10 = &v26[i];
      *v10 = &v26[i + 13];
      *(v10 + 2) = 40;
      *(v10 + 6) = 0;
      *(v10 + 14) = 0;
    }

    v11 = 0;
    v27 = &v29 + 1;
    v28 = 40;
    v29 = 0;
    v30 = 0;
    v37 = 0;
    v33 = 0u;
    memset(v34, 0, sizeof(v34));
    v35 = 0;
    do
    {
      v12 = &v26[v11];
      *(v12 + 70) = &v38[v11];
      *(v12 + 142) = 40;
      *(v12 + 286) = 0;
      *(v12 + 154) = 0;
      v11 += 64;
    }

    while (v11 != 1088);
    *&v13 = -1;
    *(&v13 + 1) = -1;
    v32 = v13;
    v31 = v13;
    v14 = sub_1954034DC(v26, a1, v8, a4);
    sub_195403650(v26, a4);
    *v24 = 0u;
    memset(v25, 0, sizeof(v25));
    ulocimp_canonicalize(v27, a4, v24);
    v4 = ucol_open(v24[0], a4);
    for (j = 0; j != 8; ++j)
    {
      v16 = &v26[4 * j];
      v17 = *(v16 + 112);
      if (v17 != -1)
      {
        if (a2 || (Attribute = ucol_getAttribute(v4, j, a4), v17 = *(v16 + 112), Attribute != v17))
        {
          ucol_setAttribute(v4, j, v17, a4);
        }

        if (*a4 >= 1)
        {
          *(v8 + 1) = v14 - a1;
LABEL_23:
          ucol_close(v4);
          v4 = 0;
          goto LABEL_24;
        }
      }
    }

    if (v37)
    {
      if (WORD2(v33))
      {
        ucol_setVariableTop(v4, &v33 + 4, v36, a4);
      }

      else
      {
        ucol_restoreVariableTop(v4, v33, a4);
      }
    }

    if (*a4 >= 1)
    {
      goto LABEL_23;
    }

LABEL_24:
    if (BYTE4(v24[1]))
    {
      free(v24[0]);
    }

    v19 = 1088;
    do
    {
      if (v34[v19 + 12])
      {
        free(*&v34[v19]);
      }

      v19 -= 64;
    }

    while (v19);
    if (v29)
    {
      free(v27);
    }

    v20 = 384;
    do
    {
      if (BYTE4(v25[v20 / 0x10]))
      {
        free(v24[v20 / 8 + 1]);
      }

      v20 -= 64;
    }

    while (v20);
  }

  else
  {
    v4 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t ucol_getShortDefinitionString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  if (!a1)
  {
    *a5 = 1;
    return 0;
  }

  return (*(*a1 + 288))();
}

uint64_t ucol_normalizeShortDefinitionString(const char *a1, void *a2, int a3, _BYTE *a4, UErrorCode *a5)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (a2)
    {
      bzero(a2, a3);
    }

    bzero(v31, 0x670uLL);
    for (i = 0; i != 384; i += 64)
    {
      v12 = &v31[i];
      *v12 = &v31[i + 13];
      *(v12 + 2) = 40;
      *(v12 + 6) = 0;
      *(v12 + 14) = 0;
    }

    v13 = 0;
    v32 = &v34 + 1;
    v33 = 40;
    v34 = 0;
    v35 = 0;
    v41 = 0;
    v38 = 0u;
    memset(v39, 0, sizeof(v39));
    v40 = 0;
    do
    {
      v14 = &v31[v13];
      *(v14 + 70) = &v42[v13 + 13];
      *(v14 + 142) = 40;
      *(v14 + 286) = 0;
      *(v14 + 154) = 0;
      v13 += 64;
    }

    while (v13 != 1088);
    if (a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = v30;
    }

    *&v16 = -1;
    *(&v16 + 1) = -1;
    v36 = v16;
    v37 = v16;
    sub_1954034DC(v31, a1, v15, a5);
    if (*a5 <= 0)
    {
      __s = a2;
      v21 = 0;
      v5 = 0;
      do
      {
        v22 = &v42[64 * v21];
        v23 = *(v22 + 14);
        if (v23)
        {
          if (v5)
          {
            if (v5 < a3)
            {
              *&__s[strlen(__s)] = 95;
            }

            LODWORD(v5) = v5 + 1;
          }

          v24 = **v22 - 75;
          v25 = v24 > 0xB;
          v26 = (1 << v24) & 0x883;
          if (v25 || v26 == 0)
          {
            v5 = icu::CharString::extract(&v42[64 * v21], &__s[v5], a3 - v5, a5) + v5;
          }

          else
          {
            if (v23 >= 1)
            {
              for (j = 0; j < v23; ++j)
              {
                if (v5 + j < a3)
                {
                  __s[v5 + j] = uprv_toupper((*v22)[j]);
                  v23 = *(v22 + 14);
                }
              }
            }

            v5 = (v23 + v5);
          }
        }

        ++v21;
      }

      while (v21 != 17);
    }

    else
    {
      v5 = 0;
    }

    v17 = 68;
    do
    {
      if (BYTE12(v39[v17]))
      {
        free(*&v39[v17]);
      }

      v17 -= 4;
    }

    while (v17 * 16);
    if (v34)
    {
      free(v32);
    }

    v18 = 384;
    do
    {
      if (v30[v18 + 20])
      {
        free(*&v30[v18 + 8]);
      }

      v18 -= 64;
    }

    while (v18);
  }

  else
  {
    v5 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t ucol_getContractions(char **a1, icu::UnicodeSet *a2, UErrorCode *a3)
{
  ucol_getContractionsAndExpansions(a1, a2, 0, 0, a3);

  return uset_getItemCount(a2);
}

char **ucol_getContractionsAndExpansions(char **result, icu::UnicodeSet *a2, icu::UnicodeSet *a3, char a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return result;
  }

  if (!result)
  {
    v10 = 1;
LABEL_9:
    *a5 = v10;
    return result;
  }

  v9 = **result;
  if (!result)
  {
    v10 = 16;
    goto LABEL_9;
  }

  return icu::RuleBasedCollator::internalGetContractionsAndExpansions(result, a2, a3, a4, a5);
}

unsigned __int8 *sub_195403EFC(uint64_t a1, unsigned int a2, unsigned __int8 *a3, int *a4)
{
  v4 = &dword_195493A78;
  v5 = 12;
  while (*(v4 - 4) != *a3)
  {
    v4 += 2;
    if (!--v5)
    {
      *a4 = 1;
      v6 = -1;
      goto LABEL_6;
    }
  }

  v6 = *v4;
LABEL_6:
  *(a1 + 4 * a2 + 448) = v6;
  v9 = a3[1];
  v7 = a3 + 1;
  v8 = v9;
  v10 = v9 == 95 || v8 == 0;
  if (!v10 || *a4 >= 1)
  {
    *a4 = 1;
  }

  return v7;
}

char *sub_195403F6C(uint64_t a1, int a2, char *a3, int *a4)
{
  v12 = a3;
  if (a2)
  {
    *(a1 + 480) = sub_1954041E4(&v12, a4);
    v6 = *a4;
  }

  else
  {
    if (*a4 >= 1)
    {
      *(a1 + 548) = 0;
      return v12;
    }

    v7 = 0;
    do
    {
      if (!*v12 || *v12 == 95)
      {
        *(a1 + 548) = v7;
        goto LABEL_20;
      }

      v8 = sub_1954041E4(&v12, a4);
      v9 = v7 + 1;
      *(a1 + 484 + 2 * v7) = v8;
      v6 = *a4;
    }

    while (*a4 <= 0 && v7++ < 0x1F);
    *(a1 + 548) = v9;
    if (v9 == 32 && *v12 && *v12 != 95)
    {
      *a4 = 15;
      return v12;
    }
  }

  if (v6 <= 0)
  {
LABEL_20:
    *(a1 + 552) = 1;
  }

  return v12;
}

_BYTE *sub_19540405C(uint64_t a1, unsigned int a2, uint64_t a3, UErrorCode *a4)
{
  v6 = (a1 + (a2 << 6));
  v7 = (a3 + 1);
  v8 = 1 << a2;
  do
  {
    v9 = v7;
    if (a2 <= 5 && (v8 & 0x31) != 0)
    {
      v10 = uprv_asciitolower(*(v7 - 1));
    }

    else
    {
      v10 = *(v7 - 1);
    }

    icu::CharString::append(v6, v10, a4);
    if (!*v9)
    {
      break;
    }

    if (*v9 == 95)
    {
      break;
    }

    v7 = v9 + 1;
  }

  while (*a4 < 1);
  return v9;
}

const char *sub_195404100(uint64_t a1, int a2, char *__s, UErrorCode *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = __s + 1;
  v7 = strchr(__s + 2, *__s);
  if (v7 && (v8 = v7, v7 - v6 < 256))
  {
    v11 = &v13 + 1;
    v12 = 40;
    v13 = 0;
    v14 = 0;
    icu::CharString::append(&v11, v6, v7 - v6, a4);
    icu::CharString::copyFrom((a1 + 384), &v11, a4);
    if (v13)
    {
      free(v11);
    }

    v6 = v8 + 1;
  }

  else
  {
    *a4 = U_BUFFER_OVERFLOW_ERROR;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1954041E4(char **a1, _DWORD *a2)
{
  v2 = **a1;
  if (!v2)
  {
LABEL_13:
    v4 = 0;
LABEL_14:
    *a2 = 1;
    return v4;
  }

  v3 = 0;
  v4 = 0;
  v5 = *a1 + 1;
  do
  {
    v6 = v3;
    v7 = v2;
    if ((v2 - 48) >= 0xAu)
    {
      if ((v2 - 97) >= 6)
      {
        if ((v2 - 65) > 5)
        {
          goto LABEL_13;
        }

        v8 = -55;
      }

      else
      {
        v8 = -87;
      }
    }

    else
    {
      v8 = -48;
    }

    v4 = (v8 + v7) | (16 * v4);
    *a1 = v5;
    v9 = *v5++;
    v2 = v9;
    if (!v9)
    {
      break;
    }

    v3 = v6 + 1;
  }

  while (v6 < 3);
  if (v6 <= 2)
  {
    goto LABEL_14;
  }

  return v4;
}

void sub_195404284(uint64_t a1, int a2, int a3, int a4, int *a5)
{
  if (*a5 <= 0)
  {
    v9 = *(a1 + 200);
    v10 = *(a1 + 204);
    if (v9 < v10)
    {
      v11 = *(a1 + 192);
LABEL_8:
      v15 = &v11[12 * v9];
      *v15 = a2;
      *(v15 + 1) = a3;
      *(v15 + 2) = a4;
      *(a1 + 200) = v9 + 1;
      return;
    }

    v13 = malloc_type_malloc(12 * v10 + 96, 0x10000403E1C8BA9uLL);
    if (v13)
    {
      v11 = v13;
      memcpy(v13, *(a1 + 192), 12 * *(a1 + 204));
      v14 = *(a1 + 192);
      if (v14 != a1)
      {
        free(v14);
      }

      *(a1 + 192) = v11;
      v9 = *(a1 + 200);
      *(a1 + 204) += 8;
      goto LABEL_8;
    }

    *a5 = 7;
  }
}

void sub_195404370(uint64_t a1, uint64_t a2, int a3, int a4, int *a5)
{
  if (*a5 <= 0)
  {
    v9 = *(a1 + 264);
    v10 = *(a1 + 268);
    if (v9 < v10)
    {
      v11 = *(a1 + 256);
LABEL_8:
      v15 = &v11[16 * v9];
      *v15 = a2;
      *(v15 + 2) = a3;
      *(v15 + 3) = a4;
      *(a1 + 264) = v9 + 1;
      return;
    }

    v13 = malloc_type_malloc(16 * v10 + 128, 0x1000040451B5BE8uLL);
    if (v13)
    {
      v11 = v13;
      memcpy(v13, *(a1 + 256), 16 * *(a1 + 268));
      v14 = *(a1 + 256);
      if (v14 != a1)
      {
        free(v14);
      }

      *(a1 + 256) = v11;
      *(a1 + 268) += 8;
      v9 = *(a1 + 264);
      goto LABEL_8;
    }

    *a5 = 7;
  }
}

void *sub_195404460(void *a1, uint64_t a2)
{
  a1[32] = a1;
  a1[33] = 0x1000000000;
  a1[34] = a2;
  sub_1954044A0(a1, *(a2 + 16));
  return a1;
}

uint64_t sub_1954044A0(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  *(a1 + 280) = (*(*a2 + 192))(a2, 5, &v5);
  *(a1 + 284) = (*(*a2 + 192))(a2, 1, &v5) == 20;
  *(a1 + 285) = 0;
  result = (*(*a2 + 240))(a2, &v5);
  *(a1 + 288) = result;
  return result;
}

void *sub_195404574(void *a1)
{
  v2 = a1[32];
  if (v2 != a1)
  {
    free(v2);
  }

  return a1;
}

uint64_t sub_1954045A8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 280);
  v3 = a2 << 16;
  if (v2 == 1)
  {
    v3 = 0;
  }

  v4 = BYTE1(a2) << 32;
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v4 = *(a1 + 280);
    v5 = v4;
  }

  v6 = HIWORD(a2);
  if (*(a1 + 284) && a2 >= 0x10000 && *(a1 + 288) > a2)
  {
    v7 = 0;
    if (v2 <= 2)
    {
      v8 = 0;
    }

    else
    {
      v8 = HIWORD(a2);
    }

    *(a1 + 285) = 1;
  }

  else
  {
    if (!v6 && *(a1 + 285))
    {
      return 0;
    }

    v10 = v2 <= 2;
    v8 = 0xFFFFLL;
    if (v10)
    {
      v8 = 0;
    }

    *(a1 + 285) = 0;
    v7 = v4 | (v6 << 48) | v5;
  }

  return v7 | v8;
}

uint64_t *ucol_openElements(char **a1, uint64_t a2, unsigned int a3, int *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    v4 = 0;
    goto LABEL_8;
  }

  if (!a1 || !a2 && a3)
  {
    v4 = 0;
    v8 = 1;
LABEL_7:
    *a4 = v8;
    goto LABEL_8;
  }

  v11 = **a1;
  if (!v12)
  {
    v4 = 0;
    v8 = 16;
    goto LABEL_7;
  }

  v13 = v12;
  memset(v17, 0, sizeof(v17));
  v16 = a2;
  icu::UnicodeString::UnicodeString(v17, a3 >> 31, &v16);
  v15 = v16;
  v4 = icu::RuleBasedCollator::createCollationElementIterator(&v15, v13, v17);
  if (!v4)
  {
    v14 = 7;
    *a4 = 7;
  }

  icu::UnicodeString::~UnicodeString(v14, v17);
LABEL_8:
  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

icu::CollationElementIterator *ucol_closeElements(icu::CollationElementIterator *result)
{
  if (result)
  {
    icu::CollationElementIterator::~CollationElementIterator(result);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t ucol_next(icu::CollationElementIterator *a1, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    return icu::CollationElementIterator::next(a1, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ucol_nextProcessed(uint64_t a1, _DWORD *a2, _DWORD *a3, UErrorCode *a4)
{
  v10 = v9;
  v11 = 0x1000000000;
  v12 = a1;
  sub_1954044A0(v9, *(a1 + 16));
  v7 = sub_19540487C(v9, a2, a3, a4);
  if (v10 != v9)
  {
    free(v10);
  }

  return v7;
}

uint64_t sub_19540487C(uint64_t a1, _DWORD *a2, _DWORD *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  *(a1 + 264) = 0;
  while (1)
  {
    Offset = icu::CollationElementIterator::getOffset(*(a1 + 272));
    v10 = icu::CollationElementIterator::next(*(a1 + 272), a4);
    v11 = icu::CollationElementIterator::getOffset(*(a1 + 272));
    if (v10 == -1)
    {
      break;
    }

    result = sub_1954045A8(a1, v10);
    if (result)
    {
      if (!a2)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a2)
  {
LABEL_7:
    *a2 = Offset;
  }

LABEL_8:
  if (a3)
  {
    *a3 = v11;
  }

  return result;
}

uint64_t ucol_previous(icu::CollationElementIterator *a1, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    return icu::CollationElementIterator::previous(a1, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ucol_previousProcessed(uint64_t a1, _DWORD *a2, _DWORD *a3, UErrorCode *a4)
{
  v10 = v9;
  v11 = 0x1000000000;
  v12 = a1;
  sub_1954044A0(v9, *(a1 + 16));
  v7 = sub_1954049E0(v9, a2, a3, a4);
  if (v10 != v9)
  {
    free(v10);
  }

  return v7;
}

uint64_t sub_1954049E0(uint64_t a1, _DWORD *a2, _DWORD *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v29 = v7;
  v30 = v6;
  v31 = v4;
  v32 = v5;
  do
  {
    v13 = *(a1 + 264);
    if (v13 > 0)
    {
      goto LABEL_28;
    }

    memset(v26, 0, sizeof(v26));
    v27 = v26;
    v28 = 0x1000000000;
    while (1)
    {
      Offset = icu::CollationElementIterator::getOffset(*(a1 + 272));
      v15 = icu::CollationElementIterator::previous(*(a1 + 272), a4);
      v16 = icu::CollationElementIterator::getOffset(*(a1 + 272));
      if (v15 == -1)
      {
        break;
      }

      sub_195404284(v26, v15, v16, Offset, a4);
      v17 = *a4;
      if (*a4 > 0)
      {
        goto LABEL_21;
      }

      if (v15 >= 0x10000 && (v15 & 0xC0) != 0xC0)
      {
        goto LABEL_10;
      }
    }

    if (v28 <= 0)
    {
      v22 = 6;
      goto LABEL_23;
    }

    v17 = *a4;
    if (*a4 > 0)
    {
LABEL_21:
      v22 = 1;
      goto LABEL_23;
    }

LABEL_10:
    v18 = v28;
    if (v28 >= 1)
    {
      do
      {
        LODWORD(v28) = v18 - 1;
        v19 = v27 + 12 * (v18 - 1);
        v20 = sub_1954045A8(a1, *v19);
        if (v20)
        {
          sub_195404370(a1, v20, *(v19 + 1), *(v19 + 2), a4);
        }

        v17 = *a4;
        v18 = v28;
      }

      while (*a4 <= 0 && v28 > 0);
    }

    v22 = v17 > U_ZERO_ERROR;
LABEL_23:
    if (v27 != v26)
    {
      free(v27);
    }
  }

  while (!v22);
  if (v22 != 6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = *(a1 + 264);
  if (v13 <= 0)
  {
    if (a2)
    {
      *a2 = -1;
    }

    if (a3)
    {
      *a3 = -1;
    }

    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_28:
  v23 = *(a1 + 256);
  v24 = v13 - 1;
  *(a1 + 264) = v24;
  v25 = (v23 + 16 * v24);
  if (a2)
  {
    *a2 = v25[2];
  }

  if (a3)
  {
    *a3 = v25[3];
  }

  return *v25;
}

void *ucol_setText(void *result, uint64_t a2, unsigned int a3, UErrorCode *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v5 = result;
    if (a2 || !a3)
    {
      memset(v9, 0, sizeof(v9));
      v8 = a2;
      icu::UnicodeString::UnicodeString(v9, a3 >> 31, &v8);
      icu::CollationElementIterator::setText(v5, v9, a4);
      result = icu::UnicodeString::~UnicodeString(v6, v9);
    }

    else
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t ucol_setOffset(unint64_t this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    return icu::CollationElementIterator::setOffset(this, a2, a3);
  }

  return this;
}

uint64_t ucsdet_open(int *a1)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t ucsdet_close(uint64_t result)
{
  if (result)
  {
    sub_1952E4460();

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t ucsdet_setText(uint64_t a1, char *a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    return sub_1952E4464(a1, a2, a3);
  }

  return a1;
}

uint64_t ucsdet_getName(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return sub_1952E4DC4(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t ucsdet_getConfidence(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return sub_1952E4DD4(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t ucsdet_getLanguage(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return sub_1952E4DCC(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t ucsdet_detect(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return sub_1952E44BC(a1, a2);
  }

  else
  {
    return 0;
  }
}

char **ucsdet_setDeclaredEncoding(char **a1, char *a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    return sub_1952E44B4(a1, a2, a3);
  }

  return a1;
}

uint64_t ucsdet_detectAll(void *a1, _DWORD *a2, int *a3)
{
  if (*a3 <= 0)
  {
    return sub_1952E4510(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t ucsdet_isInputFilterEnabled(uint64_t a1)
{
  if (a1)
  {
    return sub_1952E44AC(a1);
  }

  return a1;
}

uint64_t ucsdet_enableInputFilter(uint64_t result, char a2)
{
  if (result)
  {
    v3 = result;
    v4 = sub_1952E44AC(result);
    sub_1952E4494(v3, a2);
    return v4;
  }

  return result;
}

uint64_t ucsdet_getUChars(unsigned __int8 **a1, unint64_t a2, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    return sub_1952E4DDC(a1, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t udat_toCalendarDateField(unsigned int a1)
{
  if (a1 > 0x25)
  {
    return 25;
  }

  else
  {
    return dword_195493AF0[a1];
  }
}

uint64_t udat_patternCharToDateFormatField(icu::DateFormatSymbols *a1)
{
  v1 = a1;
  PatternUChars = icu::DateFormatSymbols::getPatternUChars(a1);
  v3 = u_strchr(PatternUChars, v1);
  if (v3)
  {
    return ((v3 - PatternUChars) >> 1);
  }

  else
  {
    return 38;
  }
}

void udat_registerOpener(void *a1, int *a2)
{
  if (*a2 <= 0)
  {
    umtx_lock(0);
    if (off_1EAECA4A8)
    {
      *a2 = 1;
    }

    else
    {
      off_1EAECA4A8 = a1;
    }

    umtx_unlock(0);
  }
}

void *udat_unregisterOpener(void *a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  umtx_lock(0);
  v2 = off_1EAECA4A8;
  if (off_1EAECA4A8)
  {
    v5 = off_1EAECA4A8 == a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    off_1EAECA4A8 = 0;
  }

  else
  {
    v2 = 0;
    *a2 = 1;
  }

  umtx_unlock(0);
  return v2;
}

icu::Locale *udat_open(icu::Locale *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*a8 <= 0)
  {
    v11 = a7;
    v14 = a2;
    v15 = a1;
    v16 = off_1EAECA4A8;
    if (!off_1EAECA4A8 || (a1 = off_1EAECA4A8(a1, a2, a3, a4, a5, a6, a7, a8), (v8 = a1) == 0))
    {
      if (v15 == -2)
      {
        memset(v18, 0, sizeof(v18));
        v17 = a6;
        icu::UnicodeString::UnicodeString(v18, v11 == -1, &v17);
        operator new();
      }

      if (a3)
      {
        icu::Locale::Locale(v16, v19, a3, 0, 0, 0);
        icu::DateFormat::createDateTimeInstance(v14, v15);
      }

      icu::Locale::getDefault(a1);
      icu::DateFormat::createDateTimeInstance(v14, v15);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t udat_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t udat_clone(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  result = (*(*a1 + 32))(a1);
  if (!result)
  {
    *a2 = 7;
  }

  return result;
}

uint64_t udat_format(icu::DateFormat *this, char *a2, unsigned int a3, uint64_t a4, int *a5, double a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_10;
  }

  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if ((a3 & 0x80000000) != 0)
  {
LABEL_9:
    *a5 = 1;
LABEL_10:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_11;
  }

LABEL_4:
  v21 = 0u;
  v22 = 0u;
  v24 = 0;
  v23 = 0u;
  v20 = &unk_1F0935D00;
  LOWORD(v21) = 2;
  if (a2)
  {
    icu::UnicodeString::setTo(&v20, a2, 0, a3);
  }

  v18 = &unk_1F093AD90;
  v19 = 0xFFFFFFFFuLL;
  if (a4)
  {
    LODWORD(v19) = *a4;
    icu::DateFormat::format(this, a6, &v20, &v18);
    *(a4 + 4) = *(&v19 + 4);
  }

  else
  {
    icu::DateFormat::format(this, a6, &v20, &v18);
  }

  v17 = a2;
  v12 = icu::UnicodeString::extract(&v20, &v17, a3, a5);
  v16 = v17;
  icu::FieldPosition::~FieldPosition(&v16, &v18);
  icu::UnicodeString::~UnicodeString(v15, &v20);
LABEL_11:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t udat_formatCalendar(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, uint64_t a5, int *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    goto LABEL_13;
  }

  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if ((a4 & 0x80000000) != 0)
  {
LABEL_12:
    *a6 = 1;
LABEL_13:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

LABEL_4:
  v21 = 0u;
  v22 = 0u;
  v24 = 0;
  v23 = 0u;
  v20 = &unk_1F0935D00;
  LOWORD(v21) = 2;
  if (a3)
  {
    icu::UnicodeString::setTo(&v20, a3, 0, a4);
  }

  v18 = &unk_1F093AD90;
  v19 = 0xFFFFFFFFuLL;
  if (a5)
  {
    LODWORD(v19) = *a5;
  }

  (*(*a1 + 64))(a1, a2, &v20, &v18);
  if (a5)
  {
    *(a5 + 4) = *(&v19 + 4);
  }

  v17 = a3;
  v12 = icu::UnicodeString::extract(&v20, &v17, a4, a6);
  v16 = v17;
  icu::FieldPosition::~FieldPosition(&v16, &v18);
  icu::UnicodeString::~UnicodeString(v13, &v20);
LABEL_14:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t udat_formatForFields(icu::DateFormat *this, char *a2, unsigned int a3, icu::FieldPositionIterator *a4, UErrorCode *a5, double a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if ((a3 & 0x80000000) != 0)
  {
LABEL_8:
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_9:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

LABEL_4:
  v18 = 0u;
  v19 = 0u;
  v21 = 0;
  v20 = 0u;
  v17 = &unk_1F0935D00;
  LOWORD(v18) = 2;
  if (a2)
  {
    icu::UnicodeString::setTo(&v17, a2, 0, a3);
  }

  icu::DateFormat::format(this, a6, &v17, a4, a5);
  v16 = a2;
  v12 = icu::UnicodeString::extract(&v17, &v16, a3, a5);
  v15 = v16;
  icu::UnicodeString::~UnicodeString(&v15, &v17);
LABEL_10:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t udat_formatCalendarForFields(uint64_t a1, uint64_t a2, char *a3, unsigned int a4, uint64_t a5, int *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if ((a4 & 0x80000000) != 0)
  {
LABEL_8:
    *a6 = 1;
LABEL_9:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

LABEL_4:
  v18 = 0u;
  v19 = 0u;
  v21 = 0;
  v20 = 0u;
  v17 = &unk_1F0935D00;
  LOWORD(v18) = 2;
  if (a3)
  {
    icu::UnicodeString::setTo(&v17, a3, 0, a4);
  }

  (*(*a1 + 72))(a1, a2, &v17, a5, a6);
  v16 = a3;
  v12 = icu::UnicodeString::extract(&v17, &v16, a4, a6);
  v15 = v16;
  icu::UnicodeString::~UnicodeString(&v15, &v17);
LABEL_10:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

double udat_parse(icu::DateFormat *a1, uint64_t a2, int a3, int *a4, int *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  if (*a5 <= 0)
  {
    memset(v17, 0, sizeof(v17));
    v16 = a2;
    icu::UnicodeString::UnicodeString(v17, a3 == -1, &v16);
    v13 = &unk_1F0932C70;
    v15 = -1;
    if (a4)
    {
      v9 = *a4;
    }

    else
    {
      v9 = 0;
    }

    v14 = v9;
    v5 = icu::DateFormat::parse(a1, v17, &v13);
    if (v15 == -1)
    {
      if (a4)
      {
        *a4 = v14;
      }
    }

    else
    {
      if (a4)
      {
        *a4 = v15;
      }

      *a5 = 9;
    }

    icu::ParsePosition::~ParsePosition(&v13);
    icu::UnicodeString::~UnicodeString(v10, v17);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

void udat_parseCalendar(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int *a5, int *a6)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    memset(v16, 0, sizeof(v16));
    v15 = a3;
    icu::UnicodeString::UnicodeString(v16, a4 == -1, &v15);
    v12 = &unk_1F0932C70;
    v14 = -1;
    if (a5)
    {
      v10 = *a5;
    }

    else
    {
      v10 = 0;
    }

    v13 = v10;
    (*(*a1 + 88))(a1, v16, a2, &v12);
    if (v14 == -1)
    {
      if (a5)
      {
        *a5 = v13;
      }
    }

    else
    {
      if (a5)
      {
        *a5 = v14;
      }

      *a6 = 9;
    }

    icu::ParsePosition::~ParsePosition(&v12);
    icu::UnicodeString::~UnicodeString(v16);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t udat_getBooleanAttribute(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 224))();
  }

  else
  {
    return 0;
  }
}

uint64_t udat_setBooleanAttribute(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    return (*(*result + 216))();
  }

  return result;
}

uint64_t udat_getNumberFormatForField(char **a1, unsigned int a2)
{
  v6 = 0;
  sub_195405D44(a1, &v6);
  if (v6 < 1)
  {

    return icu::SimpleDateFormat::getNumberFormatForField(a1, a2);
  }

  else
  {
    v4 = *(*a1 + 19);

    return v4(a1);
  }
}

char **sub_195405D44(char **result, int *a2)
{
  if (*a2 <= 0)
  {
    {
      *a2 = 1;
    }
  }

  return result;
}

char **udat_adoptNumberFormatForFields(char **a1, _WORD *a2, icu::NumberFormat *a3, int *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = a2;
  result = sub_195405D44(a1, a4);
  if (*a4 <= 0 && a2 != 0)
  {
    memset(v13, 0, sizeof(v13));
    sub_1951F3478(v13, &v12);
    icu::SimpleDateFormat::adoptNumberFormat(a1, v13, a3, a4);
    result = icu::UnicodeString::~UnicodeString(v10, v13);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

double udat_get2DigitYearStart(uint64_t a1, int *a2)
{
  sub_195405D44(a1, a2);
  result = 0.0;
  if (*a2 <= 0)
  {
    return *(a1 + 784);
  }

  return result;
}

char **udat_set2DigitYearStart(char **a1, int *a2, double a3)
{
  result = sub_195405D44(a1, a2);
  if (*a2 <= 0)
  {
    v8 = *(*a1 + 29);
    v7.n128_f64[0] = a3;

    return v8(a1, a2, v7);
  }

  return result;
}

uint64_t udat_toPattern(char **lpsrc, int a2, char *a3, unsigned int a4, int *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (a3)
    {
      if ((a4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (!a4)
    {
LABEL_4:
      v23 = 0u;
      v24 = 0u;
      v26 = 0;
      v25 = 0u;
      v22 = &unk_1F0935D00;
      LOWORD(v23) = 2;
      if (a3)
      {
        icu::UnicodeString::setTo(&v22, a3, 0, a4);
      }

      if (lpsrc)
      {
        v10 = *lpsrc;
        v11 = **lpsrc;
        if (v12)
        {
          v13 = *v12;
          if (a2)
          {
            (*(v13 + 248))();
          }

          else
          {
            (*(v13 + 240))();
          }

          goto LABEL_19;
        }

        if (!a2)
        {
          v18 = *v10;
          if (v19)
          {
            (*(*v19 + 232))(v19, &v22, a5);
LABEL_19:
            v21 = a3;
            v14 = icu::UnicodeString::extract(&v22, &v21, a4, a5);
            v20 = v21;
            v17 = &v20;
            goto LABEL_20;
          }
        }
      }

      v17 = 1;
      *a5 = 1;
      v14 = 0xFFFFFFFFLL;
LABEL_20:
      icu::UnicodeString::~UnicodeString(v17, &v22);
      goto LABEL_13;
    }

    *a5 = 1;
  }

  v14 = 0xFFFFFFFFLL;
LABEL_13:
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void *udat_applyPattern(char **a1, int a2, uint64_t a3, int a4)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  v11 = a3;
  icu::UnicodeString::UnicodeString(v12, a4 == -1, &v11);
  v10 = 0;
  sub_195405D44(a1, &v10);
  v6 = v10;
  if (v10 <= 0)
  {
    v7 = *a1;
    if (a2)
    {
      (*(v7 + 33))(a1, v12, &v10);
    }

    else
    {
      (*(v7 + 32))(a1, v12);
    }
  }

  result = icu::UnicodeString::~UnicodeString(v6, v12);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t udat_getSymbols(char **a1, unsigned int a2, signed int a3, char *a4, unsigned int a5, int *a6)
{
  v54[9] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_8;
  }

  v12 = *a1;
  v13 = **a1;
  if (v14)
  {
    v15 = v14;
    v16 = (*(*v14 + 272))(v14);
    v17 = (v15 + 824);
    goto LABEL_6;
  }

  v18 = *v12;
  if (!v19)
  {
LABEL_8:
    v23 = 0xFFFFFFFFLL;
    goto LABEL_71;
  }

  v20 = v19;
  v16 = (*(*v19 + 264))(v19);
  v17 = (v20 + 752);
LABEL_6:
  v21 = *v17;
  v52 = 0;
  switch(a2)
  {
    case 0u:
      Eras = icu::DateFormatSymbols::getEras(v16, &v52);
      break;
    case 1u:
      Eras = icu::DateFormatSymbols::getMonths(v16, &v52);
      break;
    case 2u:
      Eras = icu::DateFormatSymbols::getShortMonths(v16, &v52);
      break;
    case 3u:
      Eras = icu::DateFormatSymbols::getWeekdays(v16, &v52);
      break;
    case 4u:
      Eras = icu::DateFormatSymbols::getShortWeekdays(v16, &v52);
      break;
    case 5u:
      Eras = icu::DateFormatSymbols::getAmPmStrings(v16, &v52);
      break;
    case 6u:
      memset(v53 + 8, 0, 56);
      *&v53[0] = &unk_1F0935D00;
      WORD4(v53[0]) = 2;
      if (a4 || a5)
      {
        icu::UnicodeString::setTo(v53, a4, 0, a5);
      }

      icu::DateFormatSymbols::getLocalPatternChars(v16, v53);
      v51 = a4;
      v23 = icu::UnicodeString::extract(v53, &v51, a5, a6);
      v48 = v51;
      v34 = &v48;
      v35 = v53;
      goto LABEL_73;
    case 7u:
      Eras = icu::DateFormatSymbols::getEraNames(v16, &v52);
      break;
    case 8u:
      v30 = v16;
      v31 = 0;
      goto LABEL_43;
    case 9u:
      v27 = v16;
      v28 = 0;
      goto LABEL_23;
    case 0xAu:
      v30 = v16;
      v31 = 1;
      v32 = 1;
      goto LABEL_44;
    case 0xBu:
      v30 = v16;
      v31 = 1;
      v32 = 0;
      goto LABEL_44;
    case 0xCu:
      v30 = v16;
      v31 = 1;
LABEL_43:
      v32 = 2;
LABEL_44:
      Eras = icu::DateFormatSymbols::getMonths(v30, &v52, v31, v32);
      break;
    case 0xDu:
      v27 = v16;
      v28 = 1;
      v29 = 1;
      goto LABEL_34;
    case 0xEu:
      v27 = v16;
      v28 = 1;
      v29 = 0;
      goto LABEL_34;
    case 0xFu:
      v27 = v16;
      v28 = 1;
LABEL_23:
      v29 = 2;
      goto LABEL_34;
    case 0x10u:
      v25 = v16;
      v26 = 0;
      goto LABEL_40;
    case 0x11u:
      v25 = v16;
      v26 = 0;
      goto LABEL_47;
    case 0x12u:
      v25 = v16;
      v26 = 1;
LABEL_40:
      v36 = 1;
      goto LABEL_53;
    case 0x13u:
      v25 = v16;
      v26 = 1;
LABEL_47:
      v36 = 0;
      goto LABEL_53;
    case 0x14u:
      v27 = v16;
      v28 = 0;
      goto LABEL_32;
    case 0x15u:
      v27 = v16;
      v28 = 1;
LABEL_32:
      v29 = 3;
LABEL_34:
      Eras = icu::DateFormatSymbols::getWeekdays(v27, &v52, v28, v29);
      break;
    case 0x16u:
      v33 = v16;
      goto LABEL_49;
    case 0x17u:
      v33 = v16;
      goto LABEL_49;
    case 0x18u:
      v33 = v16;
LABEL_49:
      Eras = icu::DateFormatSymbols::getYearNames(v33, &v52);
      break;
    case 0x19u:
      v24 = v16;
      goto LABEL_55;
    case 0x1Au:
      v24 = v16;
      goto LABEL_55;
    case 0x1Bu:
      v24 = v16;
LABEL_55:
      Eras = icu::DateFormatSymbols::getZodiacNames(v24, &v52);
      break;
    case 0x1Cu:
      v25 = v16;
      v26 = 0;
      goto LABEL_52;
    case 0x1Du:
      v25 = v16;
      v26 = 1;
LABEL_52:
      v36 = 2;
LABEL_53:
      Eras = icu::DateFormatSymbols::getQuarters(v25, &v52, v26, v36);
      break;
    default:
      if (a2 == 128)
      {
        Eras = icu::DateFormatSymbols::getZodiacNames(v16, &v52);
        if (a3 < 1)
        {
          a3 = 0;
        }

        else
        {
          a3 = (a3 - 1) % 0xCu;
        }
      }

      else
      {
        Eras = 0;
      }

      break;
  }

  if (a3 >= v52)
  {
    v23 = 0;
    goto LABEL_71;
  }

  v37 = a3;
  v38 = (Eras + (a3 << 6));
  v39 = icu::UnicodeString::char32At(v37, v38, 0);
  if (!u_islower(v39) || !v21)
  {
    goto LABEL_70;
  }

  v40 = (*(*a1 + 26))(a1, 1, a6);
  switch(v40)
  {
    case 258:
      goto LABEL_66;
    case 259:
      v41 = 0;
      break;
    case 260:
      v41 = 1;
      break;
    default:
LABEL_70:
      v49 = a4;
      v23 = icu::UnicodeString::extract(v38, &v49, a5, a6);
      goto LABEL_71;
  }

  if (!*(v16 + 2 * sub_195406A30(a2) + v41 + 832))
  {
    goto LABEL_70;
  }

LABEL_66:
  memset(v54, 0, 64);
  icu::UnicodeString::UnicodeString(v54, v38);
  v42 = (*(*v21 + 32))(v21);
  if (!v42)
  {
LABEL_69:
    icu::UnicodeString::~UnicodeString(v43, v54);
    goto LABEL_70;
  }

  v44 = v42;
  memset(v53, 0, sizeof(v53));
  icu::BreakIterator::getLocale(v42, 0, a6, v53);
  if (*a6 >= 1)
  {
    (*(*v44 + 8))(v44);
    (icu::Locale::~Locale)(v53);
    goto LABEL_69;
  }

  icu::UnicodeString::toTitle(v54, v44, v53, 768);
  (*(*v44 + 8))(v44);
  v50 = a4;
  v23 = icu::UnicodeString::extract(v54, &v50, a5, a6);
  v47 = v50;
  icu::Locale::~Locale(&v47, v53);
  v35 = v54;
LABEL_73:
  icu::UnicodeString::~UnicodeString(v34, v35);
LABEL_71:
  v45 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t sub_195406A30(unsigned int a1)
{
  if (a1 > 0x15)
  {
    return 0;
  }

  else
  {
    return dword_195493B88[a1];
  }
}

char **udat_countSymbols(char **result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = *result;
    v5 = **result;
    if (v6)
    {
      v7 = (*(*v6 + 272))(v6);
    }

    else
    {
      v8 = *v4;
      if (!result)
      {
        return result;
      }

      v7 = (*(*result + 33))(result);
    }

    v15 = 0;
    switch(a2)
    {
      case 0:
        icu::DateFormatSymbols::getEras(v7, &v15);
        return v15;
      case 1:
        icu::DateFormatSymbols::getMonths(v7, &v15);
        return v15;
      case 2:
        icu::DateFormatSymbols::getShortMonths(v7, &v15);
        return v15;
      case 3:
        icu::DateFormatSymbols::getWeekdays(v7, &v15);
        return v15;
      case 4:
        icu::DateFormatSymbols::getShortWeekdays(v7, &v15);
        return v15;
      case 5:
        icu::DateFormatSymbols::getAmPmStrings(v7, &v15);
        return v15;
      case 6:
        v15 = 1;
        return v15;
      case 7:
        icu::DateFormatSymbols::getEraNames(v7, &v15);
        return v15;
      case 8:
        v11 = 0;
        goto LABEL_25;
      case 9:
        v9 = 0;
        goto LABEL_31;
      case 10:
        v11 = 1;
        v12 = 1;
        goto LABEL_26;
      case 11:
        v11 = 1;
        v12 = 0;
        goto LABEL_26;
      case 12:
        v11 = 1;
LABEL_25:
        v12 = 2;
LABEL_26:
        icu::DateFormatSymbols::getMonths(v7, &v15, v11, v12);
        return v15;
      case 13:
        v9 = 1;
        v10 = 1;
        goto LABEL_35;
      case 14:
        v9 = 1;
        v10 = 0;
        goto LABEL_35;
      case 15:
        v9 = 1;
LABEL_31:
        v10 = 2;
        goto LABEL_35;
      case 16:
        v13 = 0;
        goto LABEL_37;
      case 17:
        v13 = 0;
        goto LABEL_29;
      case 18:
        v13 = 1;
LABEL_37:
        v14 = 1;
        goto LABEL_42;
      case 19:
        v13 = 1;
LABEL_29:
        v14 = 0;
        goto LABEL_42;
      case 20:
        v9 = 0;
        goto LABEL_34;
      case 21:
        v9 = 1;
LABEL_34:
        v10 = 3;
LABEL_35:
        icu::DateFormatSymbols::getWeekdays(v7, &v15, v9, v10);
        return v15;
      case 22:
      case 23:
      case 24:
        icu::DateFormatSymbols::getYearNames(v7, &v15);
        return v15;
      case 25:
      case 26:
      case 27:
        goto LABEL_43;
      case 28:
        v13 = 0;
        goto LABEL_41;
      case 29:
        v13 = 1;
LABEL_41:
        v14 = 2;
LABEL_42:
        icu::DateFormatSymbols::getQuarters(v7, &v15, v13, v14);
        break;
      default:
        if (a2 == 128)
        {
LABEL_43:
          icu::DateFormatSymbols::getZodiacNames(v7, &v15);
        }

        break;
    }

    return v15;
  }

  return result;
}

uint64_t udat_setSymbols(char **a1, int a2, int a3, uint64_t a4, uint64_t a5, int *a6)
{
  result = sub_195405D44(a1, a6);
  if (*a6 <= 0)
  {
    result = (*(*a1 + 34))(a1);
    switch(a2)
    {
      case 0:
        v13 = *(result + 8);
        v14 = *(result + 16);
        goto LABEL_31;
      case 1:
        v13 = *(result + 56);
        v14 = *(result + 64);
        goto LABEL_31;
      case 2:
        v13 = *(result + 72);
        v14 = *(result + 80);
        goto LABEL_31;
      case 3:
        v13 = *(result + 152);
        v14 = *(result + 160);
        goto LABEL_31;
      case 4:
        v13 = *(result + 168);
        v14 = *(result + 176);
        goto LABEL_31;
      case 5:
        v13 = *(result + 280);
        v14 = *(result + 288);
        goto LABEL_31;
      case 6:
        v15 = result + 768;
        v14 = 1;
        v16 = 0;
        goto LABEL_32;
      case 7:
        v13 = *(result + 24);
        v14 = *(result + 32);
        goto LABEL_31;
      case 8:
        v13 = *(result + 88);
        v14 = *(result + 96);
        goto LABEL_31;
      case 9:
        v13 = *(result + 200);
        v14 = *(result + 208);
        goto LABEL_31;
      case 10:
        v13 = *(result + 104);
        v14 = *(result + 112);
        goto LABEL_31;
      case 11:
        v13 = *(result + 120);
        v14 = *(result + 128);
        goto LABEL_31;
      case 12:
        v13 = *(result + 136);
        v14 = *(result + 144);
        goto LABEL_31;
      case 13:
        v13 = *(result + 216);
        v14 = *(result + 224);
        goto LABEL_31;
      case 14:
        v13 = *(result + 232);
        v14 = *(result + 240);
        goto LABEL_31;
      case 15:
        v13 = *(result + 264);
        v14 = *(result + 272);
        goto LABEL_31;
      case 16:
        v13 = *(result + 376);
        v14 = *(result + 384);
        goto LABEL_31;
      case 17:
        v13 = *(result + 392);
        v14 = *(result + 400);
        goto LABEL_31;
      case 18:
        v13 = *(result + 424);
        v14 = *(result + 432);
        goto LABEL_31;
      case 19:
        v13 = *(result + 440);
        v14 = *(result + 448);
        goto LABEL_31;
      case 20:
        v13 = *(result + 184);
        v14 = *(result + 192);
        goto LABEL_31;
      case 21:
        v13 = *(result + 248);
        v14 = *(result + 256);
        goto LABEL_31;
      case 23:
        v13 = *(result + 488);
        v14 = *(result + 496);
        goto LABEL_31;
      case 26:
        v13 = *(result + 504);
        v14 = *(result + 512);
        goto LABEL_31;
      case 28:
        v13 = *(result + 408);
        v14 = *(result + 416);
        goto LABEL_31;
      case 29:
        v13 = *(result + 456);
        v14 = *(result + 464);
LABEL_31:
        v15 = v13;
        v16 = a3;
LABEL_32:

        result = sub_195407568(v15, v14, v16, a4, a5, a6);
        break;
      default:
        *a6 = 16;
        break;
    }
  }

  return result;
}

uint64_t udat_getLocaleByType(uint64_t a1, int a2, int *a3)
{
  if (a1)
  {
    return icu::Format::getLocaleID(a1, a2, a3);
  }

  if (*a3 <= 0)
  {
    *a3 = 1;
  }

  return 0;
}

uint64_t udat_setContext(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*result + 200))();
  }

  return result;
}

uint64_t udat_getContext(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 208))();
  }

  else
  {
    return 0;
  }
}

uint64_t udat_toPatternRelativeDate(char **a1, char *a2, unsigned int a3, int *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_195407244(a1, a4);
  if (*a4 > 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if ((a3 & 0x80000000) != 0)
  {
LABEL_8:
    *a4 = 1;
LABEL_9:
    v8 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

LABEL_4:
  v14 = 0u;
  v15 = 0u;
  v17 = 0;
  v16 = 0u;
  v13 = &unk_1F0935D00;
  LOWORD(v14) = 2;
  if (a2)
  {
    icu::UnicodeString::setTo(&v13, a2, 0, a3);
  }

  (*(*a1 + 30))(a1, &v13, a4);
  v12 = a2;
  v8 = icu::UnicodeString::extract(&v13, &v12, a3, a4);
  v11 = v12;
  icu::UnicodeString::~UnicodeString(&v11, &v13);
LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

char **sub_195407244(char **result, int *a2)
{
  if (*a2 <= 0)
  {
    {
      *a2 = 1;
    }
  }

  return result;
}

uint64_t udat_toPatternRelativeTime(char **a1, char *a2, unsigned int a3, int *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  sub_195407244(a1, a4);
  if (*a4 > 0)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if ((a3 & 0x80000000) != 0)
  {
LABEL_8:
    *a4 = 1;
LABEL_9:
    v8 = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

LABEL_4:
  v14 = 0u;
  v15 = 0u;
  v17 = 0;
  v16 = 0u;
  v13 = &unk_1F0935D00;
  LOWORD(v14) = 2;
  if (a2)
  {
    icu::UnicodeString::setTo(&v13, a2, 0, a3);
  }

  (*(*a1 + 31))(a1, &v13, a4);
  v12 = a2;
  v8 = icu::UnicodeString::extract(&v13, &v12, a3, a4);
  v11 = v12;
  icu::UnicodeString::~UnicodeString(&v11, &v13);
LABEL_10:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

char **udat_applyPatternRelative(char **a1, uint64_t a2, int a3, uint64_t a4, int a5, int *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  result = sub_195407244(a1, a6);
  if (*a6 <= 0)
  {
    memset(v19, 0, sizeof(v19));
    v17 = a2;
    icu::UnicodeString::UnicodeString(v19, a3 == -1, &v17);
    memset(v18, 0, sizeof(v18));
    v16 = a4;
    icu::UnicodeString::UnicodeString(v18, a5 == -1, &v16);
    (*(*a1 + 32))(a1, v19, v18, a6);
    icu::UnicodeString::~UnicodeString(v13, v18);
    result = icu::UnicodeString::~UnicodeString(v14, v19);
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195407568(uint64_t result, int a2, int a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (!result)
  {
    return result;
  }

  if (a3 >= a2)
  {
    v10 = 8;
LABEL_8:
    *a6 = v10;
    return result;
  }

  if (!a4)
  {
    v10 = 1;
    goto LABEL_8;
  }

  v8 = result + (a3 << 6);
  icu::UnicodeString::unBogus(v8);
  if (*(v8 + 8) < 0)
  {
    v9 = *(v8 + 12);
  }

  else
  {
    v9 = *(v8 + 8) >> 5;
  }

  return icu::UnicodeString::doReplace(v8, 0, v9, a4, 0, a5);
}

uint64_t udtitvfmt_openResult(int *a1)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t udtitvfmt_resultAsValue(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 > 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (result)
  {
    if (*(result + 16) == 1178880342)
    {
      goto LABEL_8;
    }

    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  result = 0;
  *a2 = v2;
LABEL_8:
  if (v2 >= 1)
  {
    return 0;
  }

  return result;
}

_DWORD *udtitvfmt_closeResult(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (result[4] == 1178880342)
    {
      icu::FormattedDateInterval::~FormattedDateInterval((result + 6));
      v1[4] = 0;
      *v1 = 0;

      JUMPOUT(0x19A8B2600);
    }
  }

  return result;
}

uint64_t udtitvfmt_open(const char *a1, uint64_t a2, int a3, uint64_t a4, int a5, const icu::Locale *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    if (a2)
    {
      if (a3 < -1)
      {
        goto LABEL_10;
      }
    }

    else if (a3)
    {
      goto LABEL_10;
    }

    if (a4)
    {
      if (a5 > -2)
      {
        goto LABEL_8;
      }
    }

    else if (!a5)
    {
LABEL_8:
      memset(v14, 0, sizeof(v14));
      v12 = a2;
      icu::UnicodeString::UnicodeString(v14, a3 == -1, &v12);
      v11 = v12;
      icu::Locale::Locale(&v11, v13, a1, 0, 0, 0);
      icu::DateIntervalFormat::createInstance(v14, v13, a6, v8);
    }

LABEL_10:
    *a6 = 1;
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t udtitvfmt_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t udtitvfmt_format(icu::DateIntervalFormat *a1, char *a2, unsigned int a3, uint64_t a4, UErrorCode *a5, double a6, double a7)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    v7 = 0xFFFFFFFFLL;
    goto LABEL_17;
  }

  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_5;
    }

LABEL_12:
    v7 = 0;
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_17;
  }

  if ((a3 & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  v24 = 0u;
  v25 = 0u;
  v27 = 0;
  v26 = 0u;
  v23 = &unk_1F0935D00;
  LOWORD(v24) = 2;
  if (a2)
  {
    icu::UnicodeString::setTo(&v23, a2, 0, a3);
  }

  v21 = &unk_1F093AD90;
  v22 = 0xFFFFFFFFuLL;
  if (a4)
  {
    LODWORD(v22) = *a4;
  }

  memset(v20, 0, sizeof(v20));
  icu::DateInterval::DateInterval(v20, a6, a7);
  icu::DateIntervalFormat::format(a1, v20, &v23, &v21, a5);
  if (*a5 <= 0)
  {
    if (a4)
    {
      *(a4 + 4) = *(&v22 + 4);
    }

    v19 = a2;
    v7 = icu::UnicodeString::extract(&v23, &v19, a3, a5);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  icu::DateInterval::~DateInterval(v20);
  icu::FieldPosition::~FieldPosition(v15, &v21);
  icu::UnicodeString::~UnicodeString(v16, &v23);
LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t udtitvfmt_setAttribute(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    return (*(*result + 104))();
  }

  return result;
}

void udtitvfmt_formatToResult(double a1, double a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return;
  }

  v11[7] = v5;
  v11[8] = v6;
  v8 = a4;
  if (!a4)
  {
    v9 = 1;
    goto LABEL_6;
  }

  if (*(a4 + 16) != 1178880342)
  {
    v9 = 3;
LABEL_6:
    v8 = 0;
    *a5 = v9;
  }

  memset(v11, 0, 24);
  icu::DateInterval::DateInterval(v11, a1, a2);
  if (v8)
  {
    icu::DateIntervalFormat::formatToValue(a5, v10);
    icu::FormattedDateInterval::operator=(v8 + 24, v10);
    icu::FormattedDateInterval::~FormattedDateInterval(v10);
  }

  icu::DateInterval::~DateInterval(v11);
}

void udtitvfmt_formatCalendarToResult(int a1, int a2, int a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v10 = v5;
    v11 = v6;
    if (a4)
    {
      if (*(a4 + 16) == 1178880342)
      {
        icu::DateIntervalFormat::formatToValue(a5, v9);
        icu::FormattedDateInterval::operator=(a4 + 24, v9);
        icu::FormattedDateInterval::~FormattedDateInterval(v9);
        return;
      }

      v8 = U_INVALID_FORMAT_ERROR;
    }

    else
    {
      v8 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    *a5 = v8;
  }
}

uint64_t udtitvfmt_setContext(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*result + 88))();
  }

  return result;
}

uint64_t udtitvfmt_getContext(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    return (*(*a1 + 96))();
  }

  else
  {
    return 0;
  }
}

void *udtitvfmt_getPatternString(icu::DateIntervalFormat *a1, _WORD *a2, unsigned int a3, UChar *a4, int a5, int *a6)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = a2;
  v19 = 0u;
  v20 = 0u;
  v22 = 0;
  v21 = 0u;
  v18 = &unk_1F0935D00;
  LOWORD(v19) = 2;
  DateIntervalInfo = icu::DateIntervalFormat::getDateIntervalInfo(a1);
  sub_1951F3478(v17, &v16);
  icu::DateIntervalInfo::getIntervalPattern(DateIntervalInfo, v17, a3, &v18, a6);
  icu::UnicodeString::~UnicodeString(v11, v17);
  v15 = a4;
  icu::UnicodeString::extract(&v18, &v15, a5, a6);
  v14 = v15;
  result = icu::UnicodeString::~UnicodeString(&v14, &v18);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t udatpg_open(char *a1, icu::DateTimePatternGenerator *this)
{
  v3 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    icu::Locale::Locale(v3, v9, a1, 0, 0, 0);
    Instance = icu::DateTimePatternGenerator::createInstance(v9, this, 0);
    icu::Locale::~Locale(v5, v9);
    v6 = *MEMORY[0x1E69E9840];
    return Instance;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    return icu::DateTimePatternGenerator::createInstance(this, this);
  }
}

uint64_t udatpg_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t udatpg_clone(icu::DateTimePatternGenerator *a1, int *a2)
{
  if (*a2 <= 0)
  {
    icu::DateTimePatternGenerator::clone(a1);
  }

  return 0;
}

uint64_t udatpg_getBestPatternWithOptions(void *a1, uint64_t a2, unsigned int a3, int a4, UChar *a5, int a6, int *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    if (a2 || !a3)
    {
      memset(v20, 0, sizeof(v20));
      v18 = a2;
      icu::UnicodeString::UnicodeString(v20, a3 >> 31, &v18);
      v16[1] = v18;
      memset(v19, 0, sizeof(v19));
      icu::DateTimePatternGenerator::getBestPattern(a1, v20, a4, a7, v19);
      v17 = a5;
      v7 = icu::UnicodeString::extract(v19, &v17, a6, a7);
      v16[0] = v17;
      icu::UnicodeString::~UnicodeString(v16, v19);
      icu::UnicodeString::~UnicodeString(v13, v20);
    }

    else
    {
      v7 = 0;
      *a7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t udatpg_getSkeleton(uint64_t a1, uint64_t a2, unsigned int a3, UChar *a4, int a5, int *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    if (a2 || !a3)
    {
      memset(v17, 0, sizeof(v17));
      v15 = a2;
      icu::UnicodeString::UnicodeString(v17, a3 >> 31, &v15);
      v13[1] = v15;
      memset(v16, 0, sizeof(v16));
      icu::DateTimePatternGenerator::staticGetSkeleton(v17, v16);
      v14 = a4;
      v6 = icu::UnicodeString::extract(v16, &v14, a5, a6);
      v13[0] = v14;
      icu::UnicodeString::~UnicodeString(v13, v16);
      icu::UnicodeString::~UnicodeString(v10, v17);
    }

    else
    {
      v6 = 0;
      *a6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t udatpg_getBaseSkeleton(uint64_t a1, uint64_t a2, unsigned int a3, UChar *a4, int a5, int *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    if (a2 || !a3)
    {
      memset(v17, 0, sizeof(v17));
      v15 = a2;
      icu::UnicodeString::UnicodeString(v17, a3 >> 31, &v15);
      v13[1] = v15;
      memset(v16, 0, sizeof(v16));
      icu::DateTimePatternGenerator::staticGetBaseSkeleton(v17, v16);
      v14 = a4;
      v6 = icu::UnicodeString::extract(v16, &v14, a5, a6);
      v13[0] = v14;
      icu::UnicodeString::~UnicodeString(v13, v16);
      icu::UnicodeString::~UnicodeString(v10, v17);
    }

    else
    {
      v6 = 0;
      *a6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t udatpg_addPattern(icu::DateTimePatternGenerator *a1, uint64_t a2, unsigned int a3, int a4, UChar *a5, int a6, _DWORD *a7, UErrorCode *a8)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a8 <= 0)
  {
    if (a2 || !a3)
    {
      memset(v27, 0, sizeof(v27));
      v21 = a2;
      icu::UnicodeString::UnicodeString(v27, a3 >> 31, &v21);
      v19[1] = v21;
      v23 = 0u;
      v26 = 0;
      v25 = 0u;
      v24 = 0u;
      v22 = &unk_1F0935D00;
      LOWORD(v23) = 2;
      v8 = icu::DateTimePatternGenerator::addPattern(a1, v27, a4, &v22, a8);
      v20 = a5;
      v15 = icu::UnicodeString::extract(&v22, &v20, a6, a8);
      v19[0] = v20;
      if (a7)
      {
        *a7 = v15;
      }

      icu::UnicodeString::~UnicodeString(v19, &v22);
      icu::UnicodeString::~UnicodeString(v16, v27);
    }

    else
    {
      v8 = 0;
      *a8 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v8;
}

void *udatpg_setAppendItemFormat(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  v9 = a3;
  icu::UnicodeString::UnicodeString(v10, a4 >> 31, &v9);
  icu::DateTimePatternGenerator::setAppendItemFormat(a1, a2, v10);
  result = icu::UnicodeString::~UnicodeString(v6, v10);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t udatpg_getAppendItemFormat(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  AppendItemFormat = icu::DateTimePatternGenerator::getAppendItemFormat(a1, a2);
  if (a3)
  {
    v5 = *(AppendItemFormat + 8);
    v6 = v5;
    v7 = v5 >> 5;
    if (v6 < 0)
    {
      v7 = *(AppendItemFormat + 12);
    }

    *a3 = v7;
  }

  v8 = *(AppendItemFormat + 8);
  if ((v8 & 0x11) != 0)
  {
    return 0;
  }

  if ((v8 & 2) != 0)
  {
    return AppendItemFormat + 10;
  }

  return *(AppendItemFormat + 24);
}

void *udatpg_setAppendItemName(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  v9 = a3;
  icu::UnicodeString::UnicodeString(v10, a4 >> 31, &v9);
  icu::DateTimePatternGenerator::setAppendItemName(a1, a2, v10);
  result = icu::UnicodeString::~UnicodeString(v6, v10);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t udatpg_getAppendItemName(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  AppendItemName = icu::DateTimePatternGenerator::getAppendItemName(a1, a2);
  if (a3)
  {
    v5 = *(AppendItemName + 8);
    v6 = v5;
    v7 = v5 >> 5;
    if (v6 < 0)
    {
      v7 = *(AppendItemName + 12);
    }

    *a3 = v7;
  }

  v8 = *(AppendItemName + 8);
  if ((v8 & 0x11) != 0)
  {
    return 0;
  }

  if ((v8 & 2) != 0)
  {
    return AppendItemName + 10;
  }

  return *(AppendItemName + 24);
}

uint64_t udatpg_getFieldDisplayName(uint64_t a1, unsigned int a2, unsigned int a3, UChar *a4, int a5, int *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    goto LABEL_8;
  }

  if (!a4)
  {
    if (!a5)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      icu::DateTimePatternGenerator::getFieldDisplayName(a1, a2, a3, &v15);
      v10 = SWORD4(v15);
      if ((v10 & 0x80000000) != 0)
      {
        v9 = HIDWORD(v15);
      }

      else
      {
        v10 = WORD4(v15);
        v9 = WORD4(v15) >> 5;
      }

      goto LABEL_5;
    }

    goto LABEL_7;
  }

  if (a5 < 0)
  {
LABEL_7:
    *a6 = 1;
LABEL_8:
    v9 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  icu::DateTimePatternGenerator::getFieldDisplayName(a1, a2, a3, &v15);
  v14 = a4;
  v9 = icu::UnicodeString::extract(&v15, &v14, a5, a6);
  v13 = v14;
  v10 = &v13;
LABEL_5:
  icu::UnicodeString::~UnicodeString(v10, &v15);
LABEL_9:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

void *udatpg_setDateTimeFormat(icu::DateTimePatternGenerator *a1, uint64_t a2, unsigned int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v7 = a2;
  icu::UnicodeString::UnicodeString(v8, a3 >> 31, &v7);
  icu::DateTimePatternGenerator::setDateTimeFormat(a1, v8);
  result = icu::UnicodeString::~UnicodeString(v4, v8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

char *udatpg_getDateTimeFormatForStyle(uint64_t a1, unsigned int a2, unsigned int *a3, int *a4)
{
  if (*a4 < 1)
  {
    DateTimeFormat = icu::DateTimePatternGenerator::getDateTimeFormat(a1, a2, a4);
    if (a3)
    {
      v7 = *(DateTimeFormat + 4);
      v8 = v7;
      v9 = v7 >> 5;
      if (v8 < 0)
      {
        v9 = DateTimeFormat[3];
      }

      *a3 = v9;
    }

    v10 = *(DateTimeFormat + 4);
    if ((v10 & 0x11) != 0)
    {
      return 0;
    }

    else if ((v10 & 2) != 0)
    {
      return DateTimeFormat + 10;
    }

    else
    {
      return *(DateTimeFormat + 3);
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    return &unk_195493BE0;
  }
}

void *udatpg_setDateTimeFormatForStyle(void *result, unsigned int a2, uint64_t a3, unsigned int a4, int *a5)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if (a3)
    {
      v7 = result;
      memset(v11, 0, sizeof(v11));
      v10 = a3;
      icu::UnicodeString::UnicodeString(v11, a4 >> 31, &v10);
      icu::DateTimePatternGenerator::setDateTimeFormat(v7, a2, v11, a5);
      result = icu::UnicodeString::~UnicodeString(v8, v11);
    }

    else
    {
      *a5 = 1;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void *udatpg_setDecimal(UChar **a1, uint64_t a2, unsigned int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  v7 = a2;
  icu::UnicodeString::UnicodeString(v8, a3 >> 31, &v7);
  icu::DateTimePatternGenerator::setDecimal(a1, v8);
  result = icu::UnicodeString::~UnicodeString(v4, v8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t udatpg_getDecimal(icu::DateTimePatternGenerator *a1, unsigned int *a2)
{
  Decimal = icu::DateTimePatternGenerator::getDecimal(a1);
  if (a2)
  {
    v4 = *(Decimal + 8);
    v5 = v4;
    v6 = v4 >> 5;
    if (v5 < 0)
    {
      v6 = *(Decimal + 12);
    }

    *a2 = v6;
  }

  v7 = *(Decimal + 8);
  if ((v7 & 0x11) != 0)
  {
    return 0;
  }

  if ((v7 & 2) != 0)
  {
    return Decimal + 10;
  }

  return *(Decimal + 24);
}

uint64_t udatpg_replaceFieldTypesWithOptions(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5, int a6, UChar *a7, int a8, int *a9)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a9 <= 0)
  {
    if ((a2 || !a3) && (a4 || !a5))
    {
      memset(v26, 0, sizeof(v26));
      v23 = a2;
      icu::UnicodeString::UnicodeString(v26, a3 >> 31, &v23);
      v20[2] = v23;
      memset(v25, 0, sizeof(v25));
      v22 = a4;
      icu::UnicodeString::UnicodeString(v25, a5 >> 31, &v22);
      v20[1] = v22;
      memset(v24, 0, sizeof(v24));
      icu::DateTimePatternGenerator::replaceFieldTypes(a1, v26, v25, a6, a9, v24);
      v21 = a7;
      v9 = icu::UnicodeString::extract(v24, &v21, a8, a9);
      v20[0] = v21;
      icu::UnicodeString::~UnicodeString(v20, v24);
      icu::UnicodeString::~UnicodeString(v16, v25);
      icu::UnicodeString::~UnicodeString(v17, v26);
    }

    else
    {
      v9 = 0;
      *a9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v9;
}

_OWORD *udatpg_openSkeletons(icu::DateTimePatternGenerator *a1, UErrorCode *a2)
{
  Skeletons = icu::DateTimePatternGenerator::getSkeletons(a1, a2);

  return uenum_openFromStringEnumeration(Skeletons, a2);
}

_OWORD *udatpg_openBaseSkeletons(icu::DateTimePatternGenerator *a1, UErrorCode *a2)
{
  BaseSkeletons = icu::DateTimePatternGenerator::getBaseSkeletons(a1, a2);

  return uenum_openFromStringEnumeration(BaseSkeletons, a2);
}

char *udatpg_getPatternForSkeleton(icu::DateTimePatternGenerator *a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, sizeof(v16));
  v15 = a2;
  icu::UnicodeString::UnicodeString(v16, a3 >> 31, &v15);
  v14 = v15;
  PatternForSkeleton = icu::DateTimePatternGenerator::getPatternForSkeleton(&v14, a1, v16);
  if (a4)
  {
    v7 = *(PatternForSkeleton + 4);
    v8 = v7;
    v9 = v7 >> 5;
    if (v8 < 0)
    {
      v9 = *(PatternForSkeleton + 3);
    }

    *a4 = v9;
  }

  v10 = *(PatternForSkeleton + 4);
  if ((v10 & 0x11) != 0)
  {
    v11 = 0;
  }

  else if ((v10 & 2) != 0)
  {
    v11 = PatternForSkeleton + 10;
  }

  else
  {
    v11 = PatternForSkeleton[3];
  }

  icu::UnicodeString::~UnicodeString(v10, v16);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t uadatpg_remapPatternWithOptions(void *a1, uint64_t a2, unsigned int a3, int a4, UChar *a5, int a6, int *a7)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    if (a2)
    {
      if (a5)
      {
        if ((a6 & 0x80000000) == 0)
        {
LABEL_6:
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v38 = a2;
          icu::UnicodeString::UnicodeString(&v51, a3 >> 31, &v38);
          v36[1] = v38;
          if ((a4 & 0x60000000) == 0x40000000 || (a4 & 0x60000000) == 0x20000000)
          {
            v47 = 0u;
            v50 = 0;
            v49 = 0u;
            v48 = 0u;
            v45 = 0;
            v46 = &unk_1F0935D00;
            LOWORD(v47) = 2;
            v42 = 0u;
            v44 = 0u;
            v43 = 0u;
            v41 = &unk_1F0935D00;
            LOWORD(v42) = 2;
            memset(v40, 0, sizeof(v40));
            icu::UnicodeString::UnicodeString(v40, "abBhHKkmsSzZOvVXx", 0xFFFFFFFFLL, 0);
            v13 = (WORD4(v51) >> 5);
            if ((SWORD4(v51) & 0x8000u) == 0)
            {
              v14 = WORD4(v51) >> 5;
            }

            else
            {
              v14 = HIDWORD(v51);
            }

            if (v14 >= 1)
            {
              v32 = a4 & 0x60000000;
              v33 = 0;
              v15 = 0;
              v16 = 0;
              v30 = 0;
              v31 = 0;
              v17 = 0;
              v34 = 0;
              v35 = -1;
              while (1)
              {
                if ((SWORD4(v51) & 0x8000u) == 0)
                {
                  v18 = WORD4(v51) >> 5;
                }

                else
                {
                  v18 = HIDWORD(v51);
                }

                if (v18 <= v16)
                {
                  v20 = 0xFFFF;
                }

                else
                {
                  if ((BYTE8(v51) & 2) != 0)
                  {
                    v19 = &v51 | 0xA;
                  }

                  else
                  {
                    v19 = *(&v52 + 1);
                  }

                  v20 = *(v19 + 2 * v16);
                  if (v20 == 39)
                  {
                    v15 = !v15;
                    goto LABEL_61;
                  }
                }

                if (v15)
                {
                  v15 = 1;
                }

                else
                {
                  if ((SWORD4(v40[0]) & 0x8000u) == 0)
                  {
                    v21 = WORD4(v40[0]) >> 5;
                  }

                  else
                  {
                    v21 = HIDWORD(v40[0]);
                  }

                  if ((icu::UnicodeString::doIndexOf(v40, v20, 0, v21) & 0x80000000) == 0)
                  {
                    if (!v17)
                    {
                      v33 = 0;
                      if (v47)
                      {
                        v22 = 2;
                      }

                      else
                      {
                        v22 = v47 & 0x1E;
                      }

                      LOWORD(v47) = v22;
                      if (v42)
                      {
                        v23 = 2;
                      }

                      else
                      {
                        v23 = v42 & 0x1E;
                      }

                      LOWORD(v42) = v23;
                      v35 = -1;
                      LODWORD(v31) = v16;
                    }

                    if (v20 > 103)
                    {
                      if (v20 != 107)
                      {
                        if (v20 == 104)
                        {
                          goto LABEL_49;
                        }

LABEL_40:
                        if (v35 < 0 && (v20 == 115 || v20 == 109))
                        {
                          v35 = v16;
                        }

                        goto LABEL_54;
                      }
                    }

                    else if (v20 != 72)
                    {
                      if (v20 != 75)
                      {
                        goto LABEL_40;
                      }

LABEL_49:
                      if (v32 == 0x40000000)
                      {
                        v35 = v16 + 1;
                        ++v33;
                        v24 = 72;
                        goto LABEL_53;
                      }

LABEL_54:
                      v24 = v20;
LABEL_55:
                      v39 = v20;
                      icu::UnicodeString::doAppend(&v46, &v39, 0, 1);
                      v39 = v24;
                      icu::UnicodeString::doAppend(&v41, &v39, 0, 1);
LABEL_56:
                      if (u_isUWhiteSpace(v20) || (HIDWORD(v31) = v16 + 1, v35 < 0) || (v20 - 66) <= 0x20 && ((1 << (v20 - 66)) & 0x180000001) != 0)
                      {
                        v15 = 0;
                        v17 = 1;
                      }

                      else
                      {
                        v15 = 0;
                        v17 = 1;
                        v30 = v16 + 1;
                      }

                      goto LABEL_61;
                    }

                    if (v32 != 0x20000000)
                    {
                      goto LABEL_54;
                    }

                    v35 = v16 + 1;
                    v24 = 104;
LABEL_53:
                    v34 = 1;
                    goto LABEL_55;
                  }

                  if ((v20 - 65) >= 0x1A)
                  {
                    if ((v20 - 97) <= 0x19 && v17)
                    {
LABEL_65:
                      v15 = v34;
                      if (v34)
                      {
                        v25 = sub_1954092B8(a1, a4, v33 > 1, &v51, &v46, &v41, v31, SHIDWORD(v31), v35, v30, a7);
                        v17 = 0;
                        v34 = 0;
                        v15 = 0;
                        v14 += v25;
                        v16 += v25;
                      }

                      else
                      {
                        v17 = 0;
                        v34 = 0;
                      }

                      goto LABEL_61;
                    }

                    if (v17)
                    {
                      goto LABEL_56;
                    }
                  }

                  else if (v17)
                  {
                    goto LABEL_65;
                  }

                  v15 = 0;
                }

LABEL_61:
                if (++v16 >= v14)
                {
                  v13 = v34;
                  if (v34)
                  {
                    sub_1954092B8(a1, a4, v33 > 1, &v51, &v46, &v41, v31, SHIDWORD(v31), v35, v30, a7);
                  }

                  break;
                }
              }
            }

            icu::UnicodeString::~UnicodeString(v13, v40);
            icu::UnicodeString::~UnicodeString(v26, &v41);
            icu::UnicodeString::~UnicodeString(v27, &v46);
          }

          v37 = a5;
          v7 = icu::UnicodeString::extract(&v51, &v37, a6, a7);
          v36[0] = v37;
          icu::UnicodeString::~UnicodeString(v36, &v51);
          goto LABEL_77;
        }
      }

      else if (!a6)
      {
        goto LABEL_6;
      }
    }

    v7 = 0;
    *a7 = 1;
    goto LABEL_77;
  }

  v7 = 0;
LABEL_77:
  v28 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t sub_1954092B8(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9, int a10, int *a11)
{
  v58 = *MEMORY[0x1E69E9840];
  v56 = 0u;
  v57 = 0u;
  if (a3)
  {
    v16 = a2 | 0x800;
  }

  else
  {
    v16 = a2;
  }

  v54 = 0uLL;
  v55 = 0uLL;
  icu::DateTimePatternGenerator::getBestPattern(a1, a6, v16, a11, &v54);
  v17 = *a11;
  if (v17 > 0)
  {
    v18 = 0;
    goto LABEL_81;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  icu::DateTimePatternGenerator::getBestPattern(a1, a5, 0xFFFF, a11, &v50);
  if (*a11 <= 0)
  {
    if ((SWORD4(v50) & 0x8000u) == 0)
    {
      v31 = WORD4(v50) >> 5;
    }

    else
    {
      v31 = HIDWORD(v50);
    }

    if ((BYTE8(v50) & 1) == 0 && v31 >= 1)
    {
      v32 = *(a4 + 8);
      v33 = v32;
      v34 = v32 >> 5;
      v35 = v33 >= 0 ? v34 : *(a4 + 12);
      v36 = (BYTE8(v50) & 2) != 0 ? &v50 | 0xA : *(&v51 + 1);
      v37 = icu::UnicodeString::indexOf(a4, v36, 0, v31, 0, v35);
      if ((v37 & 0x80000000) == 0)
      {
        if ((SWORD4(v50) & 0x8000u) == 0)
        {
          v38 = WORD4(v50) >> 5;
        }

        else
        {
          v38 = HIDWORD(v50);
        }

        if ((SWORD4(v54) & 0x8000u) == 0)
        {
          v39 = WORD4(v54) >> 5;
        }

        else
        {
          v39 = HIDWORD(v54);
        }

        icu::UnicodeString::doReplace(a4, v37, v38, &v54, 0, v39);
        LODWORD(v40) = WORD4(v54) >> 5;
        if ((SWORD4(v54) & 0x8000u) == 0)
        {
          v40 = v40;
        }

        else
        {
          v40 = HIDWORD(v54);
        }

        v18 = (v40 - v38);
        goto LABEL_80;
      }
    }
  }

  else
  {
    *a11 = 0;
  }

  if (a9 < 0 || a10 <= a9)
  {
    goto LABEL_73;
  }

  v46 = 0u;
  v49 = 0;
  v48 = 0u;
  v47 = 0u;
  v45 = &unk_1F0935D00;
  LOWORD(v46) = 2;
  (*(*a4 + 24))(a4);
  v19 = WORD4(v54) >> 5;
  if ((SWORD4(v54) & 0x8000u) == 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = HIDWORD(v54);
  }

  if (v20 < 1)
  {
    goto LABEL_72;
  }

  v21 = 0;
  v22 = 0;
  LOBYTE(v19) = 0;
  v23 = 0;
  v24 = 0xFFFFFFFFLL;
  do
  {
    if ((SWORD4(v54) & 0x8000u) == 0)
    {
      v25 = WORD4(v54) >> 5;
    }

    else
    {
      v25 = HIDWORD(v54);
    }

    if (v21 >= v25)
    {
      v27 = 0xFFFF;
    }

    else
    {
      if ((BYTE8(v54) & 2) != 0)
      {
        v26 = &v54 | 0xA;
      }

      else
      {
        v26 = *(&v55 + 1);
      }

      v27 = *(v26 + 2 * v21);
      if (v27 == 39)
      {
        v19 = v19 == 0;
        goto LABEL_38;
      }
    }

    if (v19)
    {
      v19 = 1;
    }

    else
    {
      if ((v27 - 72) <= 0x23 && ((1 << (v27 - 72)) & 0x900000009) != 0)
      {
        v24 = (v22 + 1);
      }

      else if ((v24 & 0x80000000) != 0 && (v27 == 115 || v27 == 109))
      {
        v24 = v21;
      }

      isUWhiteSpace = u_isUWhiteSpace(v27);
      v19 = 0;
      if (v24 > -1 && isUWhiteSpace == 0 && v27 != 97)
      {
        v23 = v21 + 1;
      }
    }

LABEL_38:
    ++v21;
    ++v22;
  }

  while (v20 != v21);
  if ((v24 & 0x80000000) == 0 && v23 > v24)
  {
    if ((v46 & 0x8000u) == 0)
    {
      v41 = v46 >> 5;
    }

    else
    {
      v41 = DWORD1(v46);
    }

    icu::UnicodeString::doReplace(&v54, v24, (v23 - v24), &v45, 0, v41);
  }

LABEL_72:
  icu::UnicodeString::~UnicodeString(v19, &v45);
LABEL_73:
  if ((SWORD4(v54) & 0x8000u) == 0)
  {
    v42 = WORD4(v54) >> 5;
  }

  else
  {
    v42 = HIDWORD(v54);
  }

  icu::UnicodeString::doReplace(a4, a7, (a8 - a7), &v54, 0, v42);
  LODWORD(v40) = WORD4(v54) >> 5;
  if ((SWORD4(v54) & 0x8000u) == 0)
  {
    v40 = v40;
  }

  else
  {
    v40 = HIDWORD(v54);
  }

  v18 = (a7 - a8 + v40);
LABEL_80:
  icu::UnicodeString::~UnicodeString(v40, &v50);
LABEL_81:
  icu::UnicodeString::~UnicodeString(v17, &v54);
  v43 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t ufieldpositer_open(int *a1)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t ufieldpositer_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ufieldpositer_next(icu::FieldPositionIterator *a1, _DWORD *a2, _DWORD *a3)
{
  v10 = 0;
  v8 = &unk_1F093AD90;
  v9 = 0xFFFFFFFFLL;
  if (icu::FieldPositionIterator::next(a1, &v8))
  {
    v6 = v9;
    if (a2)
    {
      v5 = HIDWORD(v9);
      *a2 = HIDWORD(v9);
    }

    if (a3)
    {
      v5 = v10;
      *a3 = v10;
    }
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  icu::FieldPosition::~FieldPosition(v5, &v8);
  return v6;
}

void icu::UIterCollationIterator::~UIterCollationIterator(icu::UIterCollationIterator *this@<X0>, void *a2@<X8>)
{
  icu::CollationIterator::~CollationIterator(this, a2);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::UIterCollationIterator::resetToOffset(icu::UIterCollationIterator *this)
{
  icu::CollationIterator::reset(this);
  v2 = *(*(this + 49) + 40);

  return v2();
}

uint64_t icu::UIterCollationIterator::handleNextCE32(icu::UIterCollationIterator *this, unsigned int *a2, UErrorCode *a3)
{
  v5 = (*(*(this + 49) + 72))();
  *a2 = v5;
  if ((v5 & 0x80000000) != 0)
  {
    return 192;
  }

  else
  {
    return *(*(*(this + 1) + 16) + 4 * ((v5 & 0x1F) + 4 * *(**(this + 1) + 2 * (v5 >> 5))));
  }
}

uint64_t icu::UIterCollationIterator::handleGetTrailSurrogate(icu::UIterCollationIterator *this)
{
  v2 = (*(*(this + 49) + 72))();
  v3 = v2;
  if ((v2 & 0x80000000) == 0 && (v2 & 0xFFFFFC00) != 0xDC00)
  {
    (*(*(this + 49) + 80))();
  }

  return v3;
}

uint64_t icu::UIterCollationIterator::forwardNumCodePoints(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    v4 = this;
    do
    {
      this = uiter_next32(*(v4 + 392));
      v5 = __OFSUB__(v3--, 1);
    }

    while ((this & 0x80000000) == 0 && !((v3 < 0) ^ v5 | (v3 == 0)));
  }

  return this;
}

uint64_t icu::UIterCollationIterator::backwardNumCodePoints(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v3 = a2;
    v4 = this;
    do
    {
      this = uiter_previous32(*(v4 + 392));
      v5 = __OFSUB__(v3--, 1);
    }

    while ((this & 0x80000000) == 0 && !((v3 < 0) ^ v5 | (v3 == 0)));
  }

  return this;
}

void icu::FCDUIterCollationIterator::~FCDUIterCollationIterator(icu::FCDUIterCollationIterator *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F09440D0;
  icu::UnicodeString::~UnicodeString(a2, (this + 424));

  icu::CollationIterator::~CollationIterator(this, v3);
}

{
  *this = &unk_1F09440D0;
  icu::UnicodeString::~UnicodeString(a2, (this + 424));

  icu::CollationIterator::~CollationIterator(this, v3);
}

{
  *this = &unk_1F09440D0;
  icu::UnicodeString::~UnicodeString(a2, (this + 424));
  icu::CollationIterator::~CollationIterator(this, v3);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::FCDUIterCollationIterator::resetToOffset(icu::FCDUIterCollationIterator *this, int a2)
{
  icu::CollationIterator::reset(this);
  result = (*(*(this + 49) + 40))();
  *(this + 101) = a2;
  *(this + 100) = 0;
  return result;
}

uint64_t icu::FCDUIterCollationIterator::getOffset(icu::FCDUIterCollationIterator *this)
{
  v2 = *(this + 100);
  if (v2 <= 1)
  {
    return (*(*(this + 49) + 32))();
  }

  result = *(this + 102);
  if (v2 != 2)
  {
    if (result)
    {
      return *(this + 103);
    }

    else
    {
      return *(this + 101);
    }
  }

  return result;
}

uint64_t icu::FCDUIterCollationIterator::handleNextCE32(icu::FCDUIterCollationIterator *this, int *a2, UErrorCode *a3)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 100);
      if (v6 == 2)
      {
        if (*(this + 102) != *(this + 103))
        {
          *a2 = (*(*(this + 49) + 72))();
          ++*(this + 102);
          return *(*(*(this + 1) + 16) + 4 * ((*a2 & 0x1F) + 4 * *(**(this + 1) + 2 * (*a2 >> 5))));
        }

        goto LABEL_20;
      }

      if (v6)
      {
        break;
      }

      v7 = (*(*(this + 49) + 72))();
      *a2 = v7;
      if ((v7 & 0x80000000) != 0)
      {
        return 192;
      }

      if (v7 < 0xC0)
      {
        return *(*(*(this + 1) + 16) + 4 * ((*a2 & 0x1F) + 4 * *(**(this + 1) + 2 * (*a2 >> 5))));
      }

      if (!icu::CollationFCD::tcccIndex[v7 >> 5])
      {
        return *(*(*(this + 1) + 16) + 4 * ((*a2 & 0x1F) + 4 * *(**(this + 1) + 2 * (*a2 >> 5))));
      }

      if (((icu::CollationFCD::tcccBits[icu::CollationFCD::tcccIndex[v7 >> 5]] >> v7) & 1) == 0)
      {
        return *(*(*(this + 1) + 16) + 4 * ((*a2 & 0x1F) + 4 * *(**(this + 1) + 2 * (*a2 >> 5))));
      }

      if ((v7 & 0x1FFF01) != 0xF01)
      {
        v8 = (*(*(this + 49) + 64))();
        if (v8 < 768 || !icu::CollationFCD::lcccIndex[v8 >> 5] || ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v8 >> 5]] >> v8) & 1) == 0)
        {
          return *(*(*(this + 1) + 16) + 4 * ((*a2 & 0x1F) + 4 * *(**(this + 1) + 2 * (*a2 >> 5))));
        }
      }

      (*(*(this + 49) + 80))();
      if (!icu::FCDUIterCollationIterator::nextSegment(this, a3))
      {
        *a2 = -1;
        return 192;
      }
    }

    if (v6 < 3)
    {
      goto LABEL_20;
    }

    v9 = *(this + 102);
    v10 = *(this + 216);
    if ((*(this + 216) & 0x80000000) == 0)
    {
      break;
    }

    v12 = *(this + 109);
    if (v9 != v12)
    {
      goto LABEL_22;
    }

LABEL_20:
    icu::FCDUIterCollationIterator::switchToForward(this);
  }

  if (v9 == v10 >> 5)
  {
    goto LABEL_20;
  }

  v12 = v10 >> 5;
LABEL_22:
  *(this + 102) = v9 + 1;
  if (v12 <= v9)
  {
    v14 = 0xFFFF;
  }

  else
  {
    if ((v10 & 2) != 0)
    {
      v13 = this + 434;
    }

    else
    {
      v13 = *(this + 56);
    }

    v14 = *&v13[2 * v9];
  }

  *a2 = v14;
  return *(*(*(this + 1) + 16) + 4 * ((*a2 & 0x1F) + 4 * *(**(this + 1) + 2 * (*a2 >> 5))));
}

uint64_t icu::FCDUIterCollationIterator::nextSegment(icu::FCDUIterCollationIterator *this, UErrorCode *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    v2 = 0;
    goto LABEL_34;
  }

  v5 = 0;
  *(this + 102) = (*(*(this + 49) + 32))();
  v23 = 0u;
  v24 = 0u;
  v26 = 0;
  v25 = 0u;
  v22 = &unk_1F0935D00;
  LOWORD(v23) = 2;
  while (1)
  {
    v6 = uiter_next32(*(this + 49));
    if (v6 < 0)
    {
      goto LABEL_23;
    }

    v7 = v6;
    v8 = sub_1951FAB08(*(this + 52), v6);
    v9 = v8;
    if (v8 > 0xFF)
    {
      break;
    }

    if (v23 > 0x1Fu)
    {
      uiter_previous32(*(this + 49));
LABEL_23:
      v15 = *(this + 102);
      if (v23 < 0)
      {
        v16 = DWORD1(v23) + v15;
      }

      else
      {
        v16 = v15 + (v23 >> 5);
      }

      *(this + 103) = v16;
      v2 = 1;
      (*(*(this + 49) + 40))();
      v17 = 2;
      *(this + 100) = 2;
      goto LABEL_33;
    }

    icu::UnicodeString::append(&v22, v7);
LABEL_15:
    v5 = v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v10 = v8 >> 8;
  icu::UnicodeString::append(&v22, v7);
  if (v10 >= v5 && v9 != 33156 && v9 != 33154)
  {
    goto LABEL_15;
  }

  v13 = uiter_next32(*(this + 49));
  if ((v13 & 0x80000000) == 0)
  {
    v14 = v13;
    while (sub_1951FAB08(*(this + 52), v14) > 0xFF)
    {
      icu::UnicodeString::append(&v22, v14);
      v14 = uiter_next32(*(this + 49));
      if (v14 < 0)
      {
        goto LABEL_28;
      }
    }

    uiter_previous32(*(this + 49));
  }

LABEL_28:
  icu::Normalizer2Impl::decompose(*(this + 52), &v22, (this + 424), a2);
  v17 = *a2;
  if (v17 <= 0)
  {
    v18 = *(this + 102);
    *(this + 101) = v18;
    v19 = v23 >> 5;
    if ((v23 & 0x8000u) != 0)
    {
      v19 = DWORD1(v23);
    }

    *(this + 103) = v19 + v18;
    v17 = 3;
    *(this + 100) = 3;
    *(this + 102) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

LABEL_33:
  icu::UnicodeString::~UnicodeString(v17, &v22);
LABEL_34:
  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t icu::FCDUIterCollationIterator::switchToForward(uint64_t this)
{
  v1 = this;
  v2 = *(this + 400);
  if (v2 == 4)
  {
    v5 = (*(this + 412) - *(this + 404));
    this = (*(*(this + 392) + 40))();
    goto LABEL_7;
  }

  if (v2 == 2)
  {
    v4 = 0;
    goto LABEL_8;
  }

  if (v2 != 1)
  {
LABEL_7:
    v4 = 0;
    v1[101] = v1[103];
    goto LABEL_8;
  }

  this = (*(*(this + 392) + 32))();
  v3 = this != v1[103];
  v1[102] = this;
  v1[101] = this;
  v4 = 2 * v3;
LABEL_8:
  v1[100] = v4;
  return this;
}

uint64_t icu::FCDUIterCollationIterator::handleGetTrailSurrogate(icu::FCDUIterCollationIterator *this)
{
  if (*(this + 100) > 2)
  {
    v4 = *(this + 102);
    v5 = *(this + 216);
    if (*(this + 216) < 0)
    {
      v6 = *(this + 109);
    }

    else
    {
      v6 = v5 >> 5;
    }

    if (v6 <= v4)
    {
      return 0xFFFFLL;
    }

    else
    {
      if ((v5 & 2) != 0)
      {
        v8 = this + 434;
      }

      else
      {
        v8 = *(this + 56);
      }

      result = *&v8[2 * v4];
      if ((result & 0xFC00) == 0xDC00)
      {
        *(this + 102) = v4 + 1;
      }
    }
  }

  else
  {
    v2 = (*(*(this + 49) + 72))();
    v3 = v2;
    if (v2 >> 10 == 55)
    {
      if (*(this + 100) == 2)
      {
        ++*(this + 102);
      }
    }

    else if ((v2 & 0x80000000) == 0)
    {
      (*(*(this + 49) + 80))();
    }

    return v3;
  }

  return result;
}

uint64_t icu::FCDUIterCollationIterator::nextCodePoint(icu::FCDUIterCollationIterator *this, UErrorCode *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 100);
      if (v4 == 2)
      {
        if (*(this + 102) == *(this + 103))
        {
          goto LABEL_20;
        }

        v11 = uiter_next32(*(this + 49));
LABEL_27:
        v6 = v11;
        if (v11 < 0x10000)
        {
          v12 = 1;
        }

        else
        {
          v12 = 2;
        }

        *(this + 102) += v12;
        return v6;
      }

      if (!v4)
      {
        break;
      }

      if (v4 >= 3)
      {
        v8 = *(this + 216) < 0 ? *(this + 109) : (*(this + 216) >> 5);
        v9 = *(this + 102);
        if (v9 != v8)
        {
          v11 = icu::UnicodeString::char32At(v8, (this + 424), v9);
          goto LABEL_27;
        }
      }

LABEL_20:
      icu::FCDUIterCollationIterator::switchToForward(this);
    }

    v5 = (*(*(this + 49) + 72))();
    v6 = v5;
    if ((v5 & 0x80000000) != 0)
    {
      return v6;
    }

    if (v5 < 0xC0)
    {
      break;
    }

    if (!icu::CollationFCD::tcccIndex[v5 >> 5])
    {
      break;
    }

    if (((icu::CollationFCD::tcccBits[icu::CollationFCD::tcccIndex[v5 >> 5]] >> v5) & 1) == 0)
    {
      break;
    }

    if ((v5 & 0x1FFF01) != 0xF01)
    {
      v7 = (*(*(this + 49) + 64))();
      if (v7 < 768 || !icu::CollationFCD::lcccIndex[v7 >> 5] || ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v7 >> 5]] >> v7) & 1) == 0)
      {
        break;
      }
    }

    (*(*(this + 49) + 80))();
    if (!icu::FCDUIterCollationIterator::nextSegment(this, a2))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if ((v6 & 0x7FFFFC00) == 0xD800)
  {
    v10 = (*(*(this + 49) + 72))();
    if (v10 >> 10 == 55)
    {
      return v10 + (v6 << 10) - 56613888;
    }

    else if ((v10 & 0x80000000) == 0)
    {
      (*(*(this + 49) + 80))();
    }
  }

  return v6;
}

uint64_t icu::FCDUIterCollationIterator::previousCodePoint(icu::FCDUIterCollationIterator *this, UErrorCode *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(this + 100);
      if (v4 != 2)
      {
        break;
      }

      if (*(this + 102) != *(this + 101))
      {
        v10 = uiter_previous32(*(this + 49));
LABEL_31:
        v6 = v10;
        if (v10 >= 0x10000)
        {
          v11 = -2;
        }

        else
        {
          v11 = -1;
        }

        *(this + 102) += v11;
        return v6;
      }

LABEL_13:
      icu::FCDUIterCollationIterator::switchToBackward(this);
    }

    if (v4 != 1)
    {
      if (v4 >= 3)
      {
        v8 = *(this + 102);
        if (v8)
        {
          v10 = icu::UnicodeString::char32At(v8, (this + 424), v8 - 1);
          goto LABEL_31;
        }
      }

      goto LABEL_13;
    }

    v5 = (*(*(this + 49) + 80))();
    if ((v5 & 0x80000000) != 0)
    {
      *(this + 102) = 0;
      *(this + 50) = 2;
      return 0xFFFFFFFFLL;
    }

    v6 = v5;
    if (v5 < 0x300 || !icu::CollationFCD::lcccIndex[v5 >> 5] || ((icu::CollationFCD::lcccBits[icu::CollationFCD::lcccIndex[v5 >> 5]] >> v5) & 1) == 0)
    {
      return v6;
    }

    if ((v5 & 0x1FFF01) != 0xF01)
    {
      break;
    }

    v7 = -1;
LABEL_17:
    (*(*(this + 49) + 72))();
    if ((v7 & 0x80000000) == 0)
    {
      (*(*(this + 49) + 72))();
    }

    if (!icu::FCDUIterCollationIterator::previousSegment(this, a2))
    {
      return 0xFFFFFFFFLL;
    }
  }

  v9 = (*(*(this + 49) + 80))();
  v7 = v9;
  if (v9 >= 192 && icu::CollationFCD::tcccIndex[v9 >> 5] && ((icu::CollationFCD::tcccBits[icu::CollationFCD::tcccIndex[v9 >> 5]] >> v9) & 1) != 0)
  {
    goto LABEL_17;
  }

  if ((v6 & 0x7FFFFC00) != 0xDC00)
  {
    goto LABEL_28;
  }

  if (v9 < 0)
  {
    v7 = (*(*(this + 49) + 80))();
  }

  if (v7 >> 10 == 54)
  {
    return v6 + (v7 << 10) - 56613888;
  }

LABEL_28:
  if ((v7 & 0x80000000) == 0)
  {
    (*(*(this + 49) + 72))();
  }

  return v6;
}

uint64_t icu::FCDUIterCollationIterator::previousSegment(icu::FCDUIterCollationIterator *this, UErrorCode *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    v2 = 0;
    goto LABEL_40;
  }

  LOBYTE(v5) = 0;
  *(this + 102) = (*(*(this + 49) + 32))();
  v23 = 0u;
  v24 = 0u;
  v26 = 0;
  v25 = 0u;
  v22 = &unk_1F0935D00;
  LOWORD(v23) = 2;
  while (1)
  {
    v6 = uiter_previous32(*(this + 49));
    if (v6 < 0)
    {
      goto LABEL_33;
    }

    v7 = v6;
    v8 = sub_1951FAB08(*(this + 52), v6);
    if (!v8)
    {
      if (v23 > 0x1Fu)
      {
        uiter_next32(*(this + 49));
LABEL_33:
        if ((v23 & 0x8000u) == 0)
        {
          v19 = v23 >> 5;
        }

        else
        {
          v19 = DWORD1(v23);
        }

        *(this + 101) = *(this + 102) - v19;
        v2 = 1;
        (*(*(this + 49) + 40))();
        v15 = 2;
        *(this + 100) = 2;
        goto LABEL_39;
      }

      icu::UnicodeString::append(&v22, v7);
      goto LABEL_16;
    }

    icu::UnicodeString::append(&v22, v7);
    if (v5 && v8 > v5)
    {
      if (v8 >= 0x100)
      {
        break;
      }

      goto LABEL_24;
    }

    if (v8 == 33154 || v8 == 33156)
    {
      break;
    }

LABEL_16:
    v5 = v8 >> 8;
    if (v8 <= 0xFF)
    {
      goto LABEL_33;
    }
  }

  do
  {
    v10 = uiter_previous32(*(this + 49));
    if (v10 < 0)
    {
      break;
    }

    v11 = v10;
    v12 = sub_1951FAB08(*(this + 52), v10);
    if (!v12)
    {
      uiter_next32(*(this + 49));
      break;
    }

    v13 = v12;
    icu::UnicodeString::append(&v22, v11);
  }

  while (v13 > 0xFF);
LABEL_24:
  if ((v23 & 0x8000u) == 0)
  {
    v14 = v23 >> 5;
  }

  else
  {
    v14 = DWORD1(v23);
  }

  icu::UnicodeString::doReverse(&v22, 0, v14);
  icu::Normalizer2Impl::decompose(*(this + 52), &v22, (this + 424), a2);
  v2 = 0;
  v15 = *a2;
  if (v15 <= 0)
  {
    v16 = *(this + 102);
    *(this + 103) = v16;
    v17 = v23 >> 5;
    if ((v23 & 0x8000u) != 0)
    {
      v17 = DWORD1(v23);
    }

    *(this + 101) = v16 - v17;
    *(this + 100) = 4;
    v18 = *(this + 216);
    if ((v18 & 0x8000) != 0)
    {
      v15 = *(this + 109);
    }

    else
    {
      v15 = v18 >> 5;
    }

    *(this + 102) = v15;
    v2 = 1;
  }

LABEL_39:
  icu::UnicodeString::~UnicodeString(v15, &v22);
LABEL_40:
  v20 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t icu::FCDUIterCollationIterator::switchToBackward(uint64_t this)
{
  v1 = this;
  v2 = *(this + 400);
  if (v2 == 3)
  {
    v4 = (*(this + 404) - *(this + 412));
    this = (*(*(this + 392) + 40))();
    goto LABEL_8;
  }

  if (v2 == 2)
  {
LABEL_9:
    v3 = 1;
    goto LABEL_10;
  }

  if (v2)
  {
LABEL_8:
    v1[103] = v1[101];
    goto LABEL_9;
  }

  this = (*(*(this + 392) + 32))();
  v1[102] = this;
  v1[103] = this;
  if (this == v1[101])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

LABEL_10:
  v1[100] = v3;
  return this;
}

uint64_t icu::FCDUIterCollationIterator::forwardNumCodePoints(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = this;
    do
    {
      this = icu::FCDUIterCollationIterator::nextCodePoint(v5, a3);
      v6 = __OFSUB__(v4--, 1);
    }

    while ((this & 0x80000000) == 0 && !((v4 < 0) ^ v6 | (v4 == 0)));
  }

  return this;
}

uint64_t icu::FCDUIterCollationIterator::backwardNumCodePoints(uint64_t this, int a2, UErrorCode *a3)
{
  if (a2 >= 1)
  {
    v4 = a2;
    v5 = this;
    do
    {
      this = icu::FCDUIterCollationIterator::previousCodePoint(v5, a3);
      v6 = __OFSUB__(v4--, 1);
    }

    while ((this & 0x80000000) == 0 && !((v4 < 0) ^ v6 | (v4 == 0)));
  }

  return this;
}

uint64_t ulistfmt_open(char *a1, UErrorCode *a2)
{
  v10[28] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  if (v3 > 0)
  {
    goto LABEL_2;
  }

  icu::Locale::Locale(v3, v10, a1, 0, 0, 0);
  Instance = icu::ListFormatter::createInstance(v10, a2, v7, v8);
  icu::Locale::~Locale(v9, v10);
  if (*a2 >= 1 && Instance)
  {
    (*(*Instance + 8))(Instance);
LABEL_2:
    Instance = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t ulistfmt_openForType(char *a1, int a2, unsigned int a3, UErrorCode *a4)
{
  v12[28] = *MEMORY[0x1E69E9840];
  v4 = *a4;
  if (v4 > 0)
  {
    goto LABEL_2;
  }

  icu::Locale::Locale(v4, v12, a1, 0, 0, 0);
  Instance = icu::ListFormatter::createInstance(v12, a2, a3, a4);
  icu::Locale::~Locale(v11, v12);
  if (*a4 >= 1 && Instance)
  {
    (*(*Instance + 8))(Instance);
LABEL_2:
    Instance = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return Instance;
}

uint64_t ulistfmt_openWithPatterns(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int *a10)
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = *a10;
  if (v10 <= 0)
  {
    memset(v30, 0, sizeof(v30));
    icu::Locale::Locale(v10, v30, a1, 0, 0, 0);
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    icu::UnicodeString::UnicodeString(v27, a2, a3);
    icu::UnicodeString::UnicodeString(v26, a4, a5);
    icu::UnicodeString::UnicodeString(v25, a6, a7);
    icu::UnicodeString::UnicodeString(v24, a8, a9);
    sub_19540B374(v28, v27, v26, v25, v24, v30);
    icu::UnicodeString::~UnicodeString(v18, v24);
    icu::UnicodeString::~UnicodeString(v19, v25);
    icu::UnicodeString::~UnicodeString(v20, v26);
    icu::UnicodeString::~UnicodeString(v21, v27);
    operator new();
  }

  v22 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t ulistfmt_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ulistfmt_openResult(int *a1)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t ulistfmt_resultAsValue(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 > 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (result)
  {
    if (*(result + 16) == 1179407188)
    {
      goto LABEL_8;
    }

    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  result = 0;
  *a2 = v2;
LABEL_8:
  if (v2 >= 1)
  {
    return 0;
  }

  return result;
}

_DWORD *ulistfmt_closeResult(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (result[4] == 1179407188)
    {
      icu::FormattedList::~FormattedList((result + 6));
      v1[4] = 0;
      *v1 = 0;

      JUMPOUT(0x19A8B2600);
    }
  }

  return result;
}

uint64_t ulistfmt_format(icu::ListFormatter *a1, const UChar **a2, unsigned int *a3, unsigned int a4, char *a5, unsigned int a6, UErrorCode *a7)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a7 > 0)
  {
    goto LABEL_10;
  }

  if (a5)
  {
    if ((a6 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    *a7 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_10;
  }

  if (a6)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = 0;
  memset(v26, 0, sizeof(v26));
  do
  {
    v13 = &v26[v12];
    *v13 = &unk_1F0935D00;
    *(v13 + 4) = 2;
    v12 += 4;
  }

  while (v12 != 16);
  v20 = 0;
  v14 = sub_19540B064(a2, a3, a4, v26, &v20, a7);
  if (*a7 <= 0)
  {
    v17 = v14;
    v22 = 0u;
    v25 = 0;
    v24 = 0u;
    v23 = 0u;
    v21 = &unk_1F0935D00;
    LOWORD(v22) = 2;
    if (a5)
    {
      icu::UnicodeString::setTo(&v21, a5, 0, a6);
    }

    icu::ListFormatter::format(a1, v17, a4, &v21, a7);
  }

  sub_1951DB10C(&v20);
  for (i = 12; i != -4; i -= 4)
  {
    icu::UnicodeString::~UnicodeString(v18, &v26[i]);
  }

LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
  return 0xFFFFFFFFLL;
}

icu::UnicodeString *sub_19540B064(const UChar **a1, unsigned int *a2, unsigned int a3, icu::UnicodeString *this, uint64_t a5, _DWORD *a6)
{
  if ((a3 & 0x80000000) != 0 || (v6 = this, v7 = a2, (v8 = a1) == 0) && a3)
  {
    v6 = 0;
    *a6 = 1;
  }

  else
  {
    if (a3 >= 5)
    {
      operator new[]();
    }

    if (a2)
    {
      if (a3)
      {
        v10 = a3;
        v11 = this;
        do
        {
          v13 = *v7++;
          v12 = v13;
          v14 = v13 >> 31;
          v15 = *v8++;
          v19 = v15;
          icu::UnicodeString::setTo(v11, v14, &v19, v12);
          v11 = (v11 + 64);
          --v10;
        }

        while (v10);
      }
    }

    else if (a3)
    {
      v16 = a3;
      v17 = this;
      do
      {
        v18 = *v8++;
        v20 = v18;
        icu::UnicodeString::setTo(v17, 1, &v20, -1);
        v17 = (v17 + 64);
        --v16;
      }

      while (v16);
    }
  }

  return v6;
}

icu::ListFormatter *ulistfmt_formatStringsToResult(icu::ListFormatter *result, const UChar **a2, unsigned int *a3, unsigned int a4, uint64_t a5, UErrorCode *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    goto LABEL_14;
  }

  if (!a5)
  {
    v14 = 1;
LABEL_13:
    *a6 = v14;
    goto LABEL_14;
  }

  if (*(a5 + 16) != 1179407188)
  {
    v14 = 3;
    goto LABEL_13;
  }

  v8 = result;
  v9 = 0;
  memset(v17, 0, sizeof(v17));
  do
  {
    v10 = &v17[v9];
    *v10 = &unk_1F0935D00;
    *(v10 + 4) = 2;
    v9 += 4;
  }

  while (v9 != 16);
  v16 = 0;
  v11 = sub_19540B064(a2, a3, a4, v17, &v16, a6);
  if (*a6 <= 0)
  {
    icu::ListFormatter::formatStringsToValue(v8, v11, a4, a6);
  }

  sub_1951DB10C(&v16);
  for (i = 12; i != -4; i -= 4)
  {
    result = icu::UnicodeString::~UnicodeString(v12, &v17[i]);
  }

LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19540B374(uint64_t a1, UChar **a2, UChar **a3, UChar **a4, UChar **a5, uint64_t a6)
{
  icu::UnicodeString::UnicodeString((a1 + 8), a2);
  icu::UnicodeString::UnicodeString((a1 + 72), a3);
  icu::UnicodeString::UnicodeString((a1 + 136), a4);
  icu::UnicodeString::UnicodeString((a1 + 200), a5);
  icu::Locale::Locale((a1 + 264), a6);
  return a1;
}

void *sub_19540B3F0(void *result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v9 = result;
    v10 = *result;
    if (*result)
    {
      v11 = v10 - 16;
      v12 = *(v10 - 8);
      if (v12)
      {
        v13 = (v10 + (v12 << 6) - 64);
        v14 = -64 * v12;
        do
        {
          icu::UnicodeString::~UnicodeString(v13);
          v13 = (v15 - 64);
          v14 += 64;
        }

        while (v14);
      }

      result = MEMORY[0x19A8B25E0](v11, 0x1093C808E78F3FDLL);
    }

    *v9 = a2;
    if (!a2)
    {
      *a3 = 7;
    }
  }

  else if (a2)
  {
    v4 = *(a2 - 8);
    if (v4)
    {
      v5 = (a2 + (v4 << 6) - 64);
      v6 = -64 * v4;
      do
      {
        icu::UnicodeString::~UnicodeString(v5);
        v5 = (v7 - 64);
        v6 += 64;
      }

      while (v6);
    }

    JUMPOUT(0x19A8B25E0);
  }

  return result;
}

uint64_t u_vformatMessage(uint64_t a1, UChar *a2, int a3, uint64_t a4, int a5, uint64_t a6, int *a7)
{
  v11 = umsg_open(a2, a3, a1, 0, a7);
  v12 = umsg_vformat(v11, a4, a5, a6, a7);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return v12;
}

uint64_t umsg_open(UChar *s, int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a5 && *a5 <= 0)
  {
    if (s && a2 > -2)
    {
      v15 = 0;
      v9 = 0uLL;
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      if (a2 == -1)
      {
        u_strlen(s);
        v9 = 0uLL;
      }

      v16[2] = v9;
      v16[3] = v9;
      v16[0] = v9;
      v16[1] = v9;
      v10 = s;
      icu::UnicodeString::UnicodeString(v16, a2 == -1, &v10);
      operator new();
    }

    *a5 = 1;
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t umsg_vformat(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int *a5)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a5 && *a5 <= 0)
  {
    if (a1 && (a3 & 0x80000000) == 0 && (a2 || !a3))
    {
      v7 = *(a1 + 696);
      if (*(a1 + 704) <= 1u)
      {
        v8 = 1;
      }

      else
      {
        v8 = *(a1 + 704);
      }

      is_mul_ok(v8, 0x70uLL);
      operator new[]();
    }

    *a5 = 1;
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0xFFFFFFFFLL;
}

uint64_t umsg_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t u_vformatMessageWithError(uint64_t a1, UChar *s, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int *a8)
{
  v12 = umsg_open(s, a3, a1, a6, a8);
  v13 = umsg_vformat(v12, a4, a5, a7, a8);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return v13;
}

void *u_vparseMessage(uint64_t a1, UChar *s, int a3, UChar *a4, uint64_t a5, uint64_t *a6, int *a7)
{
  v11 = umsg_open(s, a3, a1, 0, a7);
  v13 = 0;
  result = umsg_vparse(v11, a4, a5, &v13, a6, a7);
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

void *umsg_vparse(void *result, UChar *s, uint64_t a3, int *a4, uint64_t *a5, int *a6)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a6 && *a6 <= 0)
  {
    v7 = result;
    if (result && s && a3 >= -1 && a4)
    {
      if (a3 == -1)
      {
        a3 = u_strlen(s);
      }

      memset(v36, 0, sizeof(v36));
      icu::UnicodeString::UnicodeString(v36, s, a3);
      v10 = (*(*v7 + 192))(v7, v36, a4, a6);
      v11 = v10;
      v32 = 0u;
      v35 = 0;
      v34 = 0u;
      v33 = 0u;
      v31 = &unk_1F0935D00;
      LOWORD(v32) = 2;
      v12 = *a4;
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = v10;
        do
        {
          Type = icu::Formattable::getType(v14);
          if (Type > 2)
          {
            if (Type <= 4)
            {
              if (Type != 3)
              {
                goto LABEL_33;
              }

              v18 = a5++;
              v19 = *v18;
              if (*v18)
              {
                icu::UnicodeString::operator=(&v31, v14[1]);
                if ((v32 & 0x8000u) == 0)
                {
                  v20 = v32 >> 5;
                }

                else
                {
                  v20 = DWORD1(v32);
                }

                icu::UnicodeString::doExtract(&v31, 0, v20, v19, 0);
                *(v19 + 2 * v20) = 0;
                goto LABEL_29;
              }

LABEL_28:
              *a6 = 1;
              goto LABEL_29;
            }

            if (Type != 5)
            {
              if (Type == 6)
              {
LABEL_33:
                abort();
              }

              goto LABEL_29;
            }

            v23 = a5++;
            v24 = *v23;
            if (!v24)
            {
              goto LABEL_28;
            }

            *v24 = v14[1];
          }

          else if (Type < 2)
          {
            v21 = a5++;
            v22 = *v21;
            if (!v22)
            {
              goto LABEL_28;
            }

            *v22 = v14[1];
          }

          else if (Type == 2)
          {
            v16 = a5++;
            v17 = *v16;
            if (!v17)
            {
              goto LABEL_28;
            }

            *v17 = v14[1];
          }

LABEL_29:
          ++v13;
          v12 = *a4;
          v14 += 14;
        }

        while (v13 < v12);
      }

      if (v11)
      {
        v25 = *(v11 - 8);
        if (v25)
        {
          v26 = (v11 + 112 * v25 - 112);
          v27 = -112 * v25;
          do
          {
            v26 = (icu::Formattable::~Formattable(v25, v26) - 112);
            v27 += 112;
          }

          while (v27);
        }

        MEMORY[0x19A8B25E0](v11 - 16, 0x10B3C80062A7C37);
      }

      icu::UnicodeString::~UnicodeString(v12, &v31);
      result = icu::UnicodeString::~UnicodeString(v28, v36);
    }

    else
    {
      *a6 = 1;
    }
  }

  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void *u_vparseMessageWithError(uint64_t a1, UChar *s, int a3, UChar *a4, uint64_t a5, uint64_t *a6, uint64_t a7, int *a8)
{
  v12 = umsg_open(s, a3, a1, a7, a8);
  v14 = 0;
  result = umsg_vparse(v12, a4, a5, &v14, a6, a8);
  if (v12)
  {
    return (*(*v12 + 8))(v12);
  }

  return result;
}

uint64_t umsg_clone(uint64_t a1, int *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2 > 0)
  {
    return 0;
  }

  if (a1)
  {
    result = (*(*a1 + 32))(a1);
    if (result)
    {
      return result;
    }

    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  result = 0;
  *a2 = v4;
  return result;
}

void umsg_setLocale(uint64_t a1, const char *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    icu::Locale::Locale(v4, a2, 0, 0, 0);
    (*(*a1 + 64))(a1, v4);
    icu::Locale::~Locale(v4);
  }

  v3 = *MEMORY[0x1E69E9840];
}

const char *umsg_getLocale(uint64_t a1)
{
  if (a1)
  {
    return *((*(*a1 + 72))(a1) + 40);
  }

  else
  {
    return "";
  }
}

void *umsg_applyPattern(void *result, uint64_t a2, uint64_t a3, _OWORD *a4, int *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a5 && *a5 <= 0)
  {
    v6 = result;
    if (!result || (!a2 ? (v7 = a3 == 0) : (v7 = 1), v7 ? (v8 = 0) : (v8 = 1), a3 < -1 || v8))
    {
      *a5 = 1;
    }

    else
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      if (a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v12;
      }

      icu::UnicodeString::UnicodeString(v14, a2, a3);
      (*(*v6 + 88))(v6, v14, v9, a5);
      result = icu::UnicodeString::~UnicodeString(v10, v14);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t umsg_toPattern(uint64_t a1, char *a2, unsigned int a3, int *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a4 || *a4 > 0)
  {
    goto LABEL_8;
  }

  if (!a1 || (a3 & 0x80000000) != 0 || !a2 && a3)
  {
    *a4 = 1;
LABEL_8:
    v8 = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  v14 = 0u;
  v15 = 0u;
  v17 = 0;
  v16 = 0u;
  v13 = &unk_1F0935D00;
  LOWORD(v14) = 2;
  if (a2 || a3)
  {
    icu::UnicodeString::setTo(&v13, a2, 0, a3);
  }

  (*(*a1 + 104))(a1, &v13);
  v12 = a2;
  v8 = icu::UnicodeString::extract(&v13, &v12, a3, a4);
  v11 = v12;
  icu::UnicodeString::~UnicodeString(&v11, &v13);
LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t umsg_autoQuoteApostrophe(UChar *s, int32_t a2, uint64_t a3, int a4, int *a5)
{
  if (!a5 || *a5 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = s;
  if (!s || a2 < -1 || !a3 && a4 >= 1)
  {
    *a5 = 1;
    return 0xFFFFFFFFLL;
  }

  if (a2 == -1)
  {
    a2 = u_strlen(s);
  }

  if (a2 < 1)
  {
    v21 = 0;
    goto LABEL_49;
  }

  LODWORD(v10) = 0;
  v11 = 0;
  v12 = 0;
  v13 = a2;
  do
  {
    v15 = *v6++;
    v14 = v15;
    if (v12 > 1)
    {
      v16 = v11 - 1;
      if (v11 == 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 3;
      }

      if (v14 == 123)
      {
        v18 = v11 + 1;
      }

      else
      {
        v18 = v11;
      }

      if (v14 != 125)
      {
        v17 = 3;
        v16 = v18;
      }

      v19 = v12 == 2;
      if (v12 == 2)
      {
        v12 = 2 * (v14 != 39);
      }

      else
      {
        v12 = v17;
      }

      if (!v19)
      {
        v11 = v16;
      }

      goto LABEL_31;
    }

    if (!v12)
    {
      v12 = v14 == 39;
      if (v14 == 123)
      {
        v12 = 3;
        ++v11;
      }

      goto LABEL_31;
    }

    if (v14 == 39)
    {
      v12 = 0;
      goto LABEL_31;
    }

    if (v14 == 125 || v14 == 123)
    {
      v12 = 2;
LABEL_31:
      v20 = v10;
      goto LABEL_32;
    }

    if (v10 < a4)
    {
      *(a3 + 2 * v10) = 39;
    }

    v12 = 0;
    v20 = v10 + 1;
LABEL_32:
    if (v20 < a4)
    {
      *(a3 + 2 * v20) = v14;
    }

    v10 = v20 + 1;
    --v13;
  }

  while (v13);
  if ((v12 - 1) >= 2)
  {
    v21 = v20 + 1;
  }

  else
  {
    v21 = (v20 + 2);
    if (v10 < a4)
    {
      *(a3 + 2 * v10) = 39;
    }
  }

LABEL_49:

  return u_terminateUChars(a3, a4, v21, a5);
}

void sub_19540C658()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = L"Hex-Any/Unicode";
  icu::UnicodeString::UnicodeString(v1, 1, &v0);
  icu::Transliterator::_registerFactory();
}

void *sub_19540CBE4(char *a1)
{
  v2 = 0;
  do
  {
    v3 = *&a1[v2];
    v2 += 2;
  }

  while (v3 != -1);
  result = malloc_type_malloc(v2 & 0xFFFFFFFE, 0x1000040BDFB0063uLL);
  if (result)
  {

    return memcpy(result, a1, v2 & 0xFFFFFFFE);
  }

  return result;
}

void sub_19540CC58(void **a1)
{
  *a1 = &unk_1F0944220;
  free(a1[11]);

  icu::Transliterator::~Transliterator(a1);
}

void sub_19540CCB0(void **a1)
{
  *a1 = &unk_1F0944220;
  free(a1[11]);
  icu::Transliterator::~Transliterator(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19540CD8C(uint64_t result, uint64_t a2, _DWORD *a3, int a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3[2];
  v5 = a3[3];
  if (v4 >= v5)
  {
    goto LABEL_51;
  }

  v7 = result;
  v42 = result;
  do
  {
    v8 = *(v7 + 88);
    v9 = *v8;
    if (v9 == 0xFFFF)
    {
      goto LABEL_43;
    }

    v10 = 0;
    v44 = v4;
    v38 = v4;
    while (1)
    {
      v43 = v8[1];
      LOWORD(v11) = v8[2];
      v39 = v8[3];
      v12 = v10 + 5;
      v13 = v4;
      v14 = v8[4];
      v41 = v9;
      v40 = v12;
      if (!v9)
      {
        break;
      }

      v15 = 0;
      v16 = 2 * v12;
      v17 = 1;
      v18 = v9;
      while (1)
      {
        v19 = v15;
        if (v44 + v15 >= v5 && v15 != 0)
        {
          break;
        }

        result = (*(*a2 + 72))(a2);
        if (result == *(*(v7 + 88) + v16))
        {
          v15 = v19 + 1;
          v17 = v19 + 1 < v18;
          v16 += 2;
          if (v18 != v19 + 1)
          {
            continue;
          }
        }

        if (v17)
        {
          goto LABEL_37;
        }

        v13 = v44 + v19 + 1;
        goto LABEL_16;
      }

LABEL_36:
      if (a4)
      {
LABEL_50:
        LODWORD(v4) = v38;
        goto LABEL_51;
      }

LABEL_37:
      v7 = v42;
      v10 = v40 + v41 + v43;
      v8 = (*(v42 + 88) + 2 * v10);
      v9 = *v8;
      v4 = v38;
      if (v9 == 0xFFFF)
      {
        goto LABEL_43;
      }
    }

LABEL_16:
    v21 = 0;
    v22 = 0;
    v11 = v11;
    while (v13 < v5)
    {
      v23 = (*(*a2 + 80))(a2, v13);
      result = u_digit(v23, v11);
      if ((result & 0x80000000) != 0)
      {
        goto LABEL_25;
      }

      if (v23 < 0x10000)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      v13 = (v24 + v13);
      v21 = result + v21 * v11;
      if (v14 == ++v22)
      {
        v22 = v14;
        goto LABEL_25;
      }
    }

    if (a4)
    {
      goto LABEL_50;
    }

LABEL_25:
    if (v22 < v39)
    {
      goto LABEL_37;
    }

    v25 = v43;
    if (v43)
    {
      if (v13 <= v5)
      {
        v26 = v5;
      }

      else
      {
        v26 = v13;
      }

      v27 = (v26 - v13);
      v28 = 2 * (v40 + v41);
      v29 = 1;
      v30 = 1;
      while (v27)
      {
        v31 = v29;
        result = (*(*a2 + 72))(a2, v13 + v29 - 1);
        if (result == *(*(v42 + 88) + v28))
        {
          v30 = v31 < v43;
          v28 += 2;
          --v27;
          v29 = v31 + 1;
          if (--v25)
          {
            continue;
          }
        }

        if (v30)
        {
          goto LABEL_37;
        }

        v13 = (v13 + v31);
        goto LABEL_39;
      }

      goto LABEL_36;
    }

LABEL_39:
    memset(v45, 0, sizeof(v45));
    icu::UnicodeString::UnicodeString(v45, v21);
    v4 = v38;
    (*(*a2 + 32))(a2, v38, v13, v45);
    LODWORD(v32) = WORD4(v45[0]) >> 5;
    if ((SWORD4(v45[0]) & 0x8000u) == 0)
    {
      v32 = v32;
    }

    else
    {
      v32 = HIDWORD(v45[0]);
    }

    v5 = v38 + v5 - v13 + v32;
    result = icu::UnicodeString::~UnicodeString(v32, v45);
    v7 = v42;
LABEL_43:
    if (v4 < v5)
    {
      result = (*(*a2 + 80))(a2, v4);
      if (result < 0x10000)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      v4 = (v33 + v4);
    }
  }

  while (v4 < v5);
LABEL_51:
  v34 = v5 - a3[3] + a3[1];
  a3[2] = v4;
  a3[3] = v5;
  a3[1] = v34;
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

icu::Transliterator *sub_19540D16C(icu::Transliterator *a1, icu::UnicodeFilter *a2)
{
  v8[8] = *MEMORY[0x1E69E9840];
  v7 = L"Any-Name";
  icu::UnicodeString::UnicodeString(v8, 1, &v7);
  icu::Transliterator::Transliterator(a1, v8, a2);
  icu::UnicodeString::~UnicodeString(v4, v8);
  *a1 = &unk_1F09442D0;
  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_19540D230(icu::Transliterator *a1)
{
  icu::Transliterator::~Transliterator(a1);

  JUMPOUT(0x19A8B2600);
}

char *sub_19540D2C4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  result = uprv_getMaxCharNameLength();
  if (result && (v6 = result, (result = malloc_type_malloc(result, 0x100004077774924uLL)) != 0))
  {
    v7 = result;
    v8 = a3[2];
    v9 = a3[3];
    memset(v29, 0, sizeof(v29));
    v24 = L"\\N{";
    icu::UnicodeString::UnicodeString(v29, 0, &v24);
    for (pErrorCode = U_ZERO_ERROR; v8 < v9; v8 = (v12 + v8))
    {
      v10 = (*(*a2 + 80))(a2, v8);
      if (v10 >= 0x10000)
      {
        v11 = -2;
      }

      else
      {
        v11 = -1;
      }

      if (v10 < 0x10000)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      pErrorCode = U_ZERO_ERROR;
      v13 = u_charName(v10, U_EXTENDED_CHAR_NAME, v7, v6, &pErrorCode);
      if (v13 >= 1 && pErrorCode <= U_ZERO_ERROR)
      {
        v15 = v13;
        v16 = WORD4(v29[0]) >> 5;
        if (SWORD4(v29[0]) < 0)
        {
          v16 = HIDWORD(v29[0]);
        }

        if (v16 >= 4)
        {
          WORD4(v29[0]) = BYTE8(v29[0]) & 0x1F | 0x60;
        }

        icu::UnicodeString::UnicodeString(v26, v7, v13, 0);
        if ((v27 & 0x8000u) == 0)
        {
          v17 = v27 >> 5;
        }

        else
        {
          v17 = v28;
        }

        v18 = icu::UnicodeString::doAppend(v29, v26, 0, v17);
        v25 = 125;
        icu::UnicodeString::doAppend(v18, &v25, 0, 1);
        icu::UnicodeString::~UnicodeString(v19, v26);
        (*(*a2 + 32))(a2, v8, (v12 + v8), v29);
        v12 = v15 + 4;
        v9 += v11 + v15 + 4;
      }
    }

    v20 = v9 - a3[3] + a3[1];
    a3[2] = v8;
    a3[3] = v9;
    a3[1] = v20;
    free(v7);
    result = icu::UnicodeString::~UnicodeString(v21, v29);
  }

  else
  {
    a3[2] = a3[3];
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::units::ComplexUnitsConverter::ComplexUnitsConverter(uint64_t a1, icu::MeasureUnitImpl *this, int *a3, UErrorCode *a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 8;
  *(a1 + 28) = 0;
  icu::MeasureUnitImpl::extractIndividualUnitsWithIndices(this, a4, a1 + 96);
  if (*a4 <= 0)
  {
    v7 = (**(a1 + 104) + 8);
    if (*(a1 + 96) >= 2)
    {
      v8 = 1;
      do
      {
        v9 = icu::units::UnitsConverter::compareTwoUnits((*(*(a1 + 104) + 8 * v8) + 8), v7, a3, a4);
        v10 = *a4;
        if (v9 >= 1 && v10 <= U_ZERO_ERROR)
        {
          v7 = (*(*(a1 + 104) + 8 * v8) + 8);
        }

        else if (v10 >= U_ILLEGAL_ARGUMENT_ERROR)
        {
          return a1;
        }

        ++v8;
      }

      while (v8 < *(a1 + 96));
    }

    icu::units::ComplexUnitsConverter::init(a1, v7, a3, a4);
  }

  return a1;
}

void icu::units::ComplexUnitsConverter::init(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  uprv_sortArray(*(a1 + 104), *(a1 + 96), 8, sub_19540E0F0, a3, 0, a4);
  v6 = *(a1 + 96);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 8 * v6 - 8;
    while (1)
    {
      v9 = *a4;
      if (v7)
      {
        if (v9 > 0)
        {
          return;
        }

        v10 = *(*(a1 + 104) + v7 - 8);
        v11 = *(*(a1 + 104) + v7);
        v12 = sub_19540E134(a1 + 8);
      }

      else
      {
        if (v9 > 0)
        {
          return;
        }

        v13 = **(a1 + 104);
        v12 = sub_19540E134(a1 + 8);
      }

      v14 = *a4 <= 0 && v12 == 0;
      if (v14)
      {
        break;
      }

      if (*a4 <= 0)
      {
        v14 = v8 == v7;
        v7 += 8;
        if (!v14)
        {
          continue;
        }
      }

      return;
    }

    *a4 = 7;
  }
}

uint64_t icu::units::ComplexUnitsConverter::ComplexUnitsConverter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, UErrorCode *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 8;
  *(a1 + 28) = 0;
  *(a1 + 96) = 0;
  v7 = (a1 + 120);
  *(a1 + 104) = a1 + 120;
  *(a1 + 112) = 8;
  *(a1 + 116) = 0;
  if (*a6 <= 0)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    memset(v34, 0, sizeof(v34));
    icu::MeasureUnitImpl::forIdentifier(a2, a3, a6, v34);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    memset(v29, 0, sizeof(v29));
    icu::MeasureUnitImpl::forIdentifier(a4, a5, a6, v29);
    icu::MeasureUnitImpl::extractIndividualUnitsWithIndices(v29, a6, &v21);
    v11 = *(a1 + 96);
    *(a1 + 96) = v21;
    v21 = v11;
    memset(v27, 0, sizeof(v27));
    v28 = 0;
    v12 = *(a1 + 104);
    v26 = v12;
    v13 = *(a1 + 112);
    LODWORD(v27[0]) = v13;
    v14 = *(a1 + 116);
    BYTE4(v27[0]) = *(a1 + 116);
    if (v12 == v7)
    {
      v15 = v27 + 8;
      v26 = v27 + 8;
      memcpy(v27 + 8, v7, 8 * v13);
      if (v14)
      {
        free(v12);
      }
    }

    else
    {
      v15 = v12;
    }

    v16 = v23;
    *(a1 + 112) = v23;
    v17 = v24;
    *(a1 + 116) = v24;
    v18 = v22;
    if (v22 == v25)
    {
      *(a1 + 104) = v7;
      memcpy(v7, v25, 8 * v16);
      if (v17)
      {
        free(v18);
        v13 = v27[0];
        v14 = BYTE4(v27[0]);
        v15 = v26;
      }
    }

    else
    {
      *(a1 + 104) = v22;
    }

    v23 = v13;
    v24 = v14;
    if (v15 == v27 + 8)
    {
      v22 = v25;
      memcpy(v25, v27 + 8, 8 * v13);
      if (v14)
      {
        free(v15);
      }
    }

    else
    {
      v22 = v15;
    }

    sub_19537B688(&v21);
    v21 = 0;
    v22 = v25;
    v23 = 8;
    v24 = 0;
    icu::units::getAllConversionRates(&v21, a6);
    icu::units::ComplexUnitsConverter::init(a1, v34, &v21, a6);
    sub_19537B4F0(&v21);
    if (BYTE12(v30))
    {
      free(v30);
    }

    sub_195342340(&v29[2]);
    if (BYTE12(v35))
    {
      free(v35);
    }

    sub_195342340(&v34[8]);
  }

  v19 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t icu::units::ComplexUnitsConverter::ComplexUnitsConverter(uint64_t a1, uint64_t a2, icu::MeasureUnitImpl *this, uint64_t a4, UErrorCode *a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = 8;
  *(a1 + 28) = 0;
  icu::MeasureUnitImpl::extractIndividualUnitsWithIndices(this, a5, a1 + 96);
  if (*a5 <= 0)
  {
    icu::units::ComplexUnitsConverter::init(a1, a2, a4, a5);
  }

  return a1;
}

void icu::units::ComplexUnitsConverter::convert(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v30 = *MEMORY[0x1E69E9840];
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 80) = 0;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 8) = a4 + 24;
  *(a4 + 16) = 8;
  v8 = a5 < 0.0;
  v9 = *(a1 + 8);
  v10 = v9 - 1;
  v11 = v9 > 1;
  if (v8 && v11)
  {
    v12 = -a5;
  }

  else
  {
    v12 = a5;
  }

  if (v8 && v11)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  v27 = 0;
  v25 = 0uLL;
  v26 = 0uLL;
  *v24 = 0uLL;
  sub_19540DE44(v24, v10, *a3);
  if (*a3 <= 0)
  {
    bzero(v24[0], 8 * *(a1 + 8) - 8);
    v14 = *(a1 + 8);
    if (v14 >= 1)
    {
      for (i = 0; i != v14; ++i)
      {
        v16 = icu::units::UnitsConverter::convert(*(*(a1 + 16) + 8 * i), v12);
        v12 = v16;
        if (i < (v14 - 1))
        {
          isNaN = uprv_isNaN(v16);
          v18 = vcvtmd_s64_f64(v12 * 1.0);
          if (isNaN)
          {
            v18 = 0;
          }

          *(v24[0] + i) = v18;
          if (v12 - v18 >= 0.0)
          {
            v12 = v12 - v18;
          }

          else
          {
            v12 = 0.0;
          }
        }
      }
    }

    v28 = v12;
    icu::units::ComplexUnitsConverter::applyRounder(a1, v24, &v28, a2, a3);
    v22 = 0u;
    v23 = 0u;
    *v21 = 0u;
    sub_19540E05C(v21, *(a1 + 8), *a3);
    if (*a3 < 1)
    {
      v20 = *(a1 + 8);
      if (v20 >= 1)
      {
        memset(v29, 0, sizeof(v29));
        if (v20 == 1)
        {
          icu::Formattable::Formattable(v29, v28 * v13);
        }

        else
        {
          icu::Formattable::Formattable(v29, *v24[0] * v13);
        }

        operator new();
      }
    }

    if (BYTE4(v21[1]))
    {
      free(v21[0]);
    }
  }

  if (BYTE4(v24[1]))
  {
    free(v24[0]);
  }

  v19 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19540DE44(uint64_t a1, int a2, int a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 5;
  *(a1 + 12) = 0;
  if (a2 >= 6 && a3 <= 0)
  {
    v5 = malloc_type_malloc(8 * a2, 0x100004000313F17uLL);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 12))
      {
        free(*a1);
      }

      *a1 = v6;
      *(a1 + 8) = a2;
      *(a1 + 12) = 1;
    }
  }

  return a1;
}

void icu::units::ComplexUnitsConverter::applyRounder(uint64_t a1, uint64_t *a2, double *a3, uint64_t a4, int *a5)
{
  if (!uprv_isInfinite(*a3))
  {
    isNaN = uprv_isNaN(*a3);
    if (a4)
    {
      if (!isNaN)
      {
        v24 = 0;
        memset(v23, 0, sizeof(v23));
        icu::number::impl::DecimalQuantity::DecimalQuantity(v23);
        icu::number::impl::DecimalQuantity::setToDouble(v23, *a3);
        sub_195374000(a4, v23, a5);
        if (*a5 <= 0)
        {
          v11 = icu::number::impl::DecimalQuantity::toDouble(v23);
          *a3 = v11;
          v12 = *(a1 + 8);
          v13 = v12 - 1;
          if (v12 != 1)
          {
            v14 = vcvtmd_s64_f64(icu::units::UnitsConverter::convertInverse(*(*(a1 + 16) + 8 * v13), v11) * 1.0);
            if (v14 >= 1)
            {
              *a3 = *a3 - icu::units::UnitsConverter::convert(*(*(a1 + 16) + 8 * v13), v14);
              v15 = (v12 - 2);
              v16 = *a2;
              *(*a2 + 8 * v15) += v14;
              if (v12 >= 3)
              {
                v17 = *(v16 + 8 * v15);
                do
                {
                  v18 = vcvtmd_s64_f64(icu::units::UnitsConverter::convertInverse(*(*(a1 + 16) + 8 * v15), v17) * 1.0);
                  if (v18 < 1)
                  {
                    break;
                  }

                  v19 = icu::units::UnitsConverter::convert(*(*(a1 + 16) + 8 * v15), v18);
                  v20 = (*a2 + 8 * v15);
                  v21 = *v20 - llround(v19);
                  v17 = *(v20 - 1) + v18;
                  *(v20 - 1) = v17;
                  *v20 = v21;
                }

                while (v15-- > 1);
              }
            }
          }
        }

        icu::number::impl::DecimalQuantity::~DecimalQuantity(v23);
      }
    }
  }
}

uint64_t sub_19540E05C(uint64_t a1, int a2, int a3)
{
  *a1 = a1 + 16;
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  if (a2 >= 5 && a3 <= 0)
  {
    v5 = malloc_type_malloc(8 * a2, 0x2004093837F09uLL);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 12))
      {
        free(*a1);
      }

      *a1 = v6;
      *(a1 + 8) = a2;
      *(a1 + 12) = 1;
    }
  }

  return a1;
}

void *sub_19540E134(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  if (result)
  {
    v5 = result;
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(result, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

void *sub_19540E258(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*a1 != v2)
  {
    goto LABEL_16;
  }

  if (v2 == 8)
  {
    v3 = 32;
  }

  else
  {
    v3 = 2 * v2;
  }

  if (v3 < 1)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  if (result)
  {
    v5 = result;
    if (v2 >= 1)
    {
      v6 = *(a1 + 16);
      if (v6 >= v2)
      {
        v6 = v2;
      }

      if (v6 >= v3)
      {
        v6 = v3;
      }

      memcpy(result, *(a1 + 8), 8 * v6);
    }

    if (*(a1 + 20))
    {
      free(*(a1 + 8));
    }

    *(a1 + 8) = v5;
    *(a1 + 16) = v3;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return result;
}

float64x2_t *icu::units::Factor::multiplyBy(float64x2_t *result, float64x2_t *a2)
{
  v2 = 0;
  *result = vmulq_f64(*a2, *result);
  do
  {
    *(&result[1].f64[1] + v2 + 4) += *(&a2[1].f64[1] + v2 + 4);
    v2 += 4;
  }

  while (v2 != 60);
  v3 = a2[1].f64[0];
  if (v3 < result[1].f64[0])
  {
    v3 = result[1].f64[0];
  }

  result[1].f64[0] = v3;
  return result;
}