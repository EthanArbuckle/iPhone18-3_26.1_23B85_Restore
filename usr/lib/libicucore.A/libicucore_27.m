uint64_t sub_195315568(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  v4 = a1 + 8;
  v5 = a2 + 8;
  while (1)
  {
    v6 = *(v4 + 8 * v2);
    v7 = *(v5 + 8 * v2);
    if (v6 != v7)
    {
      break;
    }

LABEL_44:
    v3 = v2++ > 0x32;
    if (v2 == 52)
    {
      return v3;
    }
  }

  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    while (v7 && v6)
    {
      v9 = *(v6 + 16);
      if (v9)
      {
        if ((*(v7 + 16) & 1) == 0)
        {
          return v3;
        }
      }

      else
      {
        if ((v9 & 0x8000) != 0)
        {
          v10 = *(v6 + 20);
        }

        else
        {
          v10 = v9 >> 5;
        }

        v11 = *(v7 + 16);
        if ((v11 & 0x8000u) == 0)
        {
          v12 = v11 >> 5;
        }

        else
        {
          v12 = *(v7 + 20);
        }

        if ((v11 & 1) != 0 || v10 != v12)
        {
          return v3;
        }

        v13 = (v11 & 2) != 0 ? (v7 + 18) : *(v7 + 32);
        if (!icu::UnicodeString::doEquals(v6 + 8, v13, v10))
        {
          return v3;
        }
      }

      v14 = *(v6 + 88);
      if (v14)
      {
        if ((*(v7 + 88) & 1) == 0)
        {
          return v3;
        }
      }

      else
      {
        if ((v14 & 0x8000) != 0)
        {
          v15 = *(v6 + 92);
        }

        else
        {
          v15 = v14 >> 5;
        }

        v16 = *(v7 + 88);
        if ((v16 & 0x8000u) == 0)
        {
          v17 = v16 >> 5;
        }

        else
        {
          v17 = *(v7 + 92);
        }

        if ((v16 & 1) != 0 || v15 != v17)
        {
          return v3;
        }

        v18 = (v16 & 2) != 0 ? (v7 + 90) : *(v7 + 104);
        if (!icu::UnicodeString::doEquals(v6 + 80, v18, v15))
        {
          return v3;
        }
      }

      v19 = *(v6 + 72);
      v20 = *(v7 + 72);
      if (v19 != v20 && !sub_19531BEC4(v19, v20))
      {
        return v3;
      }

      v6 = *(v6 + 152);
      v7 = *(v7 + 152);
      if (!(v7 | v6) || v6 == v7)
      {
        goto LABEL_44;
      }
    }
  }

  return v3;
}

void icu::DateTimePatternGenerator::~DateTimePatternGenerator(icu::DateTimePatternGenerator *this)
{
  *this = &unk_1F093A430;
  v2 = *(this + 586);
  if (v2)
  {
    if (*v2)
    {
      uhash_close(*v2);
    }

    MEMORY[0x19A8B2600](v2, 0x10A0C40DD2A5DBALL);
  }

  v3 = *(this + 29);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 30);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 31);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 32);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 585);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  icu::UnicodeString::~UnicodeString(0x1258, (this + 4696));
  icu::UnicodeString::~UnicodeString(0x1208, (this + 4616));
  v8 = 4552;
  v9 = (this + 4552);
  v10 = -256;
  do
  {
    v9 = (icu::UnicodeString::~UnicodeString(v8, v9) - 64);
    v10 += 64;
  }

  while (v10);
  for (i = 4296; i != 1224; i -= 64)
  {
    icu::UnicodeString::~UnicodeString(v8, (this + i));
  }

  do
  {
    icu::UnicodeString::~UnicodeString(v8, (this + i));
    i -= 64;
  }

  while (i != 200);
  icu::Locale::~Locale((this + 8));

  icu::UObject::~UObject(this);
}

{
  icu::DateTimePatternGenerator::~DateTimePatternGenerator(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19531590C()
{
  uhash_close(qword_1ED442BA8);
  qword_1ED442BA8 = 0;
  atomic_store(0, &dword_1ED442BB0);
  return 1;
}

unsigned int *icu::DateTimePatternGenerator::addCanonicalItems(unsigned int *this, UErrorCode *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v3 = this;
    v4 = 0;
    v11 = 0u;
    v12 = 0u;
    v14 = 0;
    v13 = 0u;
    v10 = &unk_1F0935D00;
    LOWORD(v11) = 2;
    do
    {
      icu::UnicodeString::UnicodeString(v9, aGyqmwwedfdahms[v4]);
      v5 = v3[1198];
      if (v5 < 1)
      {
        icu::DateTimePatternGenerator::addPatternWithSkeleton(v3, v9, 0, 0, &v10, a2);
      }

      else
      {
        *a2 = v5;
      }

      icu::UnicodeString::~UnicodeString(v5, v9);
      v6 = *a2;
    }

    while (v6 <= 0 && v4++ != 15);
    this = icu::UnicodeString::~UnicodeString(v6, &v10);
  }

  v8 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::DateTimePatternGenerator::addICUPatterns(icu::DateTimePatternGenerator *this, const char **a2, UErrorCode *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v50 = 0u;
    memset(v51, 0, sizeof(v51));
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    __dst = 0u;
    if (!ulocimp_setRegionToSupplementalRegion(a2[5]))
    {
      strncpy(&__dst, a2[5], 0x9DuLL);
      v51[28] = 0;
    }

    v6 = ures_open(0, &__dst, a3);
    memset(&v41[1], 0, 48);
    v42[1] = 0;
    v41[0] = &v41[1] + 5;
    LODWORD(v41[1]) = 40;
    v42[0] = 0;
    v7 = icu::Locale::Locale(&v36, &__dst, 0, 0, 0);
    icu::DateTimePatternGenerator::getCalendarTypeToUse(v7, &v36, v41, a3);
    icu::Locale::~Locale(&v36);
    if (__dst == 0x52545F504A5F616ALL && *(&__dst + 1) == 0x414E4F4954494441 && v44 == 76)
    {
      v42[0] = 0;
      *v41[0] = 0;
      icu::StringPiece::StringPiece(&v36, "gregorian");
      icu::CharString::append(v41, v36, v37, a3);
    }

    if (*a3 <= 0)
    {
      v37 = 0u;
      v39 = 0u;
      v38 = 0u;
      v36 = &v37 + 5;
      LODWORD(v37) = 40;
      v40 = 0;
      icu::StringPiece::StringPiece(&v31, "calendar");
      v10 = icu::CharString::append(&v36, v31, v32, a3);
      v11 = icu::CharString::append(v10, 47, a3);
      v12 = icu::CharString::append(v11, v41[0], v42[0], a3);
      v13 = icu::CharString::append(v12, 47, a3);
      icu::StringPiece::StringPiece(&v31, "DateTimePatterns");
      icu::CharString::append(v13, v31, v32, a3);
      v14 = ures_getByKeyWithFallback(v6, v36, 0, a3);
      if (ures_getType(v14) != 8 || ures_getSize(v14) < 8)
      {
        *a3 = U_INVALID_FORMAT_ERROR;
        goto LABEL_17;
      }

      if (*a3 <= 0)
      {
        v16 = 0;
        while (1)
        {
          v17 = ures_getByIndex(v14, v16, 0, a3);
          v35 = 0;
          v34 = 0u;
          v33 = 0u;
          v32 = 0u;
          v31 = &unk_1F0935D00;
          LOWORD(v32) = 2;
          Type = ures_getType(v17);
          if (Type == 8)
          {
            v30 = 0;
            v29 = 0u;
            v28 = 0u;
            v27 = 0u;
            v26 = &unk_1F0935D00;
            LOWORD(v27) = 2;
            v25 = 0;
            StringByIndex = ures_getStringByIndex(v17, 0, &v25, a3);
            if (*a3 <= 0)
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (Type)
            {
              *a3 = U_INVALID_FORMAT_ERROR;
              icu::UnicodeString::~UnicodeString(3, &v31);
              if (v17)
              {
                ures_close(v17);
              }

              break;
            }

            v30 = 0;
            v29 = 0u;
            v28 = 0u;
            v27 = 0u;
            v26 = &unk_1F0935D00;
            LOWORD(v27) = 2;
            v25 = 0;
            StringByIndex = ures_getString(v17, &v25, a3);
            if (*a3 <= 0)
            {
LABEL_34:
              v24 = StringByIndex;
              icu::UnicodeString::setTo(&v26, 1, &v24, v25);
              goto LABEL_35;
            }
          }

          icu::UnicodeString::setToBogus(&v26);
LABEL_35:
          icu::UnicodeString::operator=(&v31, &v26);
          icu::UnicodeString::~UnicodeString(v20, &v26);
          v21 = *a3;
          if (v21 <= 0)
          {
            v30 = 0;
            v29 = 0u;
            v28 = 0u;
            v27 = 0u;
            v26 = &unk_1F0935D00;
            LOWORD(v27) = 2;
            icu::DateTimePatternGenerator::addPatternWithSkeleton(this, &v31, 0, 0, &v26, a3);
            icu::UnicodeString::~UnicodeString(v22, &v26);
          }

          icu::UnicodeString::~UnicodeString(v21, &v31);
          if (v17)
          {
            ures_close(v17);
          }

          if (*a3 <= 0 && v16++ < 7)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
      if (v14)
      {
        ures_close(v14);
      }

      if (BYTE4(v37))
      {
        free(v36);
      }
    }

    if (BYTE4(v41[1]))
    {
      free(v41[0]);
    }

    if (v6)
    {
      ures_close(v6);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void *icu::DateTimePatternGenerator::addCLDRData(void *this, char **a2, UErrorCode *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v5 = this;
    v52 = 0u;
    v55 = 0;
    v54 = 0u;
    v53 = 0u;
    v50 = 0;
    v51 = &unk_1F0935D00;
    LOWORD(v52) = 2;
    v47 = 0u;
    v49 = 0u;
    v48 = 0u;
    v46 = &unk_1F0935D00;
    LOWORD(v47) = 2;
    v42 = 0u;
    v45 = 0;
    v44 = 0u;
    v43 = 0u;
    v41 = &unk_1F0935D00;
    LOWORD(v42) = 2;
    memset(&v39[1], 0, 48);
    v39[0] = &v39[1] + 5;
    LODWORD(v39[1]) = 40;
    v40 = 0;
    v26 = 0;
    v6 = ures_open(0, a2[5], a3);
    v7 = ures_openWithCountryFallback(0, a2[5], &v26, a3);
    if (*a3 <= 0)
    {
      v38 = 0;
      *v37 = 0;
      v25 = U_ZERO_ERROR;
      KeywordValue = icu::Locale::getKeywordValue(a2, "numbers", v37, 9, &v25);
      if (v26 && v25 <= U_ZERO_ERROR && !KeywordValue)
      {
        LODWORD(v27) = 0;
        LODWORD(v35[0]) = -1;
        StringByKeyWithFallback = ures_getStringByKeyWithFallback(v6, "NumberElements/default", v35, &v27);
        KeywordValue = ures_getStringByKeyWithFallback(v7, "NumberElements/default", v35, &v27);
        if (v27 > 0 || (KeywordValue = u_strcmp(StringByKeyWithFallback, KeywordValue), KeywordValue))
        {
          v26 = 0;
        }
      }

      memset(&v35[1], 0, 48);
      v36[1] = 0;
      v35[0] = &v35[1] + 5;
      LODWORD(v35[1]) = 40;
      v36[0] = 0;
      icu::DateTimePatternGenerator::getCalendarTypeToUse(KeywordValue, a2, v35, a3);
      if (*a3 <= 0)
      {
        v24 = 0;
        v23[0] = &unk_1F093A670;
        v23[1] = v5;
        LODWORD(v40) = 0;
        *v39[0] = 0;
        icu::StringPiece::StringPiece(&v27, "calendar");
        v10 = icu::CharString::append(v39, v27, v28[0], a3);
        v11 = icu::CharString::append(v10, 47, a3);
        v12 = icu::CharString::append(v11, v35[0], v36[0], a3);
        v13 = icu::CharString::append(v12, 47, a3);
        icu::StringPiece::StringPiece(&v27, "appendItems");
        icu::CharString::append(v13, v27, v28[0], a3);
        if (*a3 <= 0)
        {
          ures_getAllChildrenWithFallback(v6, v39[0], v23, &v24);
          sub_1953187E0(v23);
          v24 = 0;
          v22[0] = &unk_1F093A6B8;
          v22[1] = v5;
          ures_getAllChildrenWithFallback(v6, "fields", v22, &v24);
          sub_1953188B4(v22);
          v24 = 0;
          icu::DateTimePatternGenerator::initHashtable(v5, a3);
          if (*a3 <= 0)
          {
            LODWORD(v40) = 0;
            *v39[0] = 0;
            icu::StringPiece::StringPiece(&v27, "calendar");
            v14 = icu::CharString::append(v39, v27, v28[0], a3);
            v15 = icu::CharString::append(v14, 47, a3);
            v16 = icu::CharString::append(v15, v35[0], v36[0], a3);
            v17 = icu::CharString::append(v16, 47, a3);
            icu::StringPiece::StringPiece(&v27, "availableFormats");
            icu::CharString::append(v17, v27, v28[0], a3);
            if (*a3 <= 0)
            {
              if (v26)
              {
                v29 = 1;
                v31 = 0u;
                v34 = 0;
                v32 = 0u;
                v33 = 0u;
                v27 = &unk_1F093A458;
                *v28 = v5;
                v30 = &unk_1F0935D00;
                LOWORD(v31) = 2;
                ures_getAllChildrenWithFallback(v7, v39[0], &v27, &v24);
                sub_195318724(&v27);
              }

              v29 = 0;
              v31 = 0u;
              v34 = 0;
              v32 = 0u;
              v33 = 0u;
              v27 = &unk_1F093A458;
              *v28 = v5;
              v30 = &unk_1F0935D00;
              LOWORD(v31) = 2;
              ures_getAllChildrenWithFallback(v6, v39[0], &v27, &v24);
              sub_195318724(&v27);
            }
          }

          icu::ResourceSink::~ResourceSink(v22);
        }

        icu::ResourceSink::~ResourceSink(v23);
      }

      if (BYTE4(v35[1]))
      {
        free(v35[0]);
      }
    }

    if (v7)
    {
      ures_close(v7);
    }

    if (v6)
    {
      ures_close(v6);
    }

    v18 = BYTE4(v39[1]);
    if (BYTE4(v39[1]))
    {
      free(v39[0]);
    }

    icu::UnicodeString::~UnicodeString(v18, &v41);
    icu::UnicodeString::~UnicodeString(v19, &v46);
    this = icu::UnicodeString::~UnicodeString(v20, &v51);
  }

  v21 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::DateTimePatternGenerator::setDateTimeFromCalendar(icu::DateTimePatternGenerator *this, const icu::Locale *a2, UErrorCode *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_53;
  }

  v27 = 0;
  BaseName = icu::Locale::getBaseName(a2);
  v7 = ures_open(0, BaseName, a3);
  v8 = v7;
  if (*a3 <= 0)
  {
    ures_getByKey(v7, "calendar", v7, a3);
    if (*a3 <= 0)
    {
      v30 = 0;
      memset(v29, 0, sizeof(v29));
      icu::Calendar::getCalendarTypeFromLocale(a2, v29, 0x20, a3, v9);
      v30 = 0;
      if (*a3 > 0 || !LOBYTE(v29[0]))
      {
        *a3 = U_ZERO_ERROR;
        strcpy(v29, "gregorian");
      }

      v10 = *&v29[0] == 0x6169726F67657267 && WORD4(v29[0]) == 110;
      v11 = !v10;
      if (v10)
      {
        *a3 = U_ZERO_ERROR;
        v15 = ures_getByKeyWithFallback(v8, "gregorian", 0, a3);
        v16 = ures_getByKeyWithFallback(v15, "DateTimePatterns%atTime", 0, a3);
      }

      else
      {
        v12 = ures_getByKeyWithFallback(v8, v29, 0, a3);
        v13 = ures_getByKeyWithFallback(v12, "DateTimePatterns%atTime", 0, a3);
        if (v13)
        {
          v14 = *a3;
          if (*a3 != U_MISSING_RESOURCE_ERROR)
          {
LABEL_22:
            if (v14 <= U_ZERO_ERROR)
            {
              if (ures_getSize(v13) < 4)
              {
                v17 = v12;
                goto LABEL_46;
              }

              v14 = *a3;
            }

            if (v14 != U_MISSING_RESOURCE_ERROR)
            {
              v20 = 0;
              goto LABEL_34;
            }

            *a3 = U_ZERO_ERROR;
            if (v11)
            {
              v17 = ures_getByKeyWithFallback(v8, v29, 0, a3);
              if (v12)
              {
                ures_close(v12);
              }

              v13 = ures_getByKeyWithFallback(v17, "DateTimePatterns", 0, a3);
              v18 = v13 == 0;
              if (v13)
              {
                v19 = *a3;
                if (*a3 != U_MISSING_RESOURCE_ERROR)
                {
                  goto LABEL_44;
                }
              }
            }

            else
            {
              v13 = 0;
              v18 = 1;
              v17 = v12;
            }

            *a3 = U_ZERO_ERROR;
            v23 = ures_getByKeyWithFallback(v8, "gregorian", 0, a3);
            if (v17)
            {
              ures_close(v17);
            }

            v24 = ures_getByKeyWithFallback(v23, "DateTimePatterns", 0, a3);
            if (!v18)
            {
              ures_close(v13);
            }

            v19 = *a3;
            v17 = v23;
            v13 = v24;
LABEL_44:
            if (v19 > U_ZERO_ERROR)
            {
LABEL_47:
              if (v13)
              {
                ures_close(v13);
              }

              if (v17)
              {
                ures_close(v17);
              }

              goto LABEL_51;
            }

            if (ures_getSize(v13) < 13)
            {
LABEL_46:
              *a3 = U_INVALID_FORMAT_ERROR;
              goto LABEL_47;
            }

            v14 = *a3;
            v20 = 9;
            v12 = v17;
LABEL_34:
            if (v14 <= U_ZERO_ERROR)
            {
              for (i = 0; i != 4; ++i)
              {
                StringByIndex = ures_getStringByIndex(v13, v20 + i, &v27, a3);
                icu::UnicodeString::UnicodeString(v28, 1, &StringByIndex);
                icu::DateTimePatternGenerator::setDateTimeFormat(this, i, v28, a3);
                icu::UnicodeString::~UnicodeString(v22, v28);
              }
            }

            v17 = v12;
            goto LABEL_47;
          }
        }

        *a3 = U_ZERO_ERROR;
        v15 = ures_getByKeyWithFallback(v8, "gregorian", 0, a3);
        if (v12)
        {
          ures_close(v12);
        }

        v16 = ures_getByKeyWithFallback(v15, "DateTimePatterns%atTime", 0, a3);
        if (v13)
        {
          ures_close(v13);
        }
      }

      v14 = *a3;
      v12 = v15;
      v13 = v16;
      goto LABEL_22;
    }
  }

LABEL_51:
  if (v8)
  {
    ures_close(v8);
  }

LABEL_53:
  v25 = *MEMORY[0x1E69E9840];
}

void icu::DateTimePatternGenerator::setDecimalSymbols(icu::DateTimePatternGenerator *this, const icu::Locale *a2, UErrorCode *a3)
{
  v10[360] = *MEMORY[0x1E69E9840];
  bzero(v9, 0xB48uLL);
  icu::DecimalFormatSymbols::DecimalFormatSymbols(v9, a2, a3);
  if (*a3 <= 0)
  {
    icu::UnicodeString::UnicodeString(v8, v10);
    icu::UnicodeString::operator=((this + 4616), v8);
    icu::UnicodeString::~UnicodeString(v6, v8);
    icu::UnicodeString::getTerminatedBuffer((this + 4616));
  }

  icu::DecimalFormatSymbols::~DecimalFormatSymbols(v9);
  v7 = *MEMORY[0x1E69E9840];
}

void icu::DateTimePatternGenerator::loadAllowedHourFormatsData(icu::DateTimePatternGenerator *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    v8[3] = v2;
    v8[4] = v3;
    v5 = uhash_open(uhash_hashChars, uhash_compareChars, 0, this);
    qword_1ED442BA8 = v5;
    if (*this <= 0)
    {
      uhash_setValueDeleter(v5, j__free_1);
      sub_195400588(0x19u, sub_19531590C);
      v6 = ures_openDirect(0, "supplementalData", this);
      v7 = v6;
      if (*this <= 0)
      {
        v8[0] = &unk_1F093A7D8;
        ures_getAllItemsWithFallback(v6, "timeData", v8, this);
        icu::ResourceSink::~ResourceSink(v8);
      }

      if (v7)
      {
        ures_close(v7);
      }
    }
  }
}

void icu::DateTimePatternGenerator::getAllowedHourFormats(icu::DateTimePatternGenerator *this, char **a2, UErrorCode *a3)
{
  v26[9] = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_48;
  }

  memset(v26, 0, 64);
  ulocimp_getRegionForSupplementalData(a2[5], a3, 0, v26);
  v6 = a2[5];
  if (!*v6 || (v7 = v26[0], !strcmp(a2[5], "root")) || !strcmp(v6, "und"))
  {
    v8 = "und";
    v7 = "001";
  }

  else
  {
    v8 = (a2 + 1);
  }

  memset(v25, 0, sizeof(v25));
  icu::Locale::Locale(v25);
  if (!*v8 || !*v7)
  {
    icu::Locale::operator=(v25, a2);
    v24[0] = U_ZERO_ERROR;
    icu::Locale::addLikelySubtags(v25, v24);
    v9 = v25 + 8;
    if (v24[0] <= U_ZERO_ERROR)
    {
      v10 = &v25[1] + 10;
    }

    else
    {
      v10 = v7;
    }

    if (v24[0] > U_ZERO_ERROR)
    {
      v9 = v8;
    }

    if (*v9)
    {
      v8 = v9;
    }

    else
    {
      v8 = "und";
    }

    if (*v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = "001";
    }
  }

  v11 = sub_195316E1C(v8, v7, a3);
  *v24 = 0;
  KeywordValue = icu::Locale::getKeywordValue(a2, "hours", v24, 8, a3);
  v14 = 0;
  *(this + 2380) = 0;
  if (*a3 > 0 || KeywordValue < 1)
  {
LABEL_31:
    if (v11)
    {
      goto LABEL_32;
    }

LABEL_42:
    *v23 = 0;
    Instance = icu::Region::getInstance(v7, v23, v13);
    if (*v23 >= 1 || (RegionCode = icu::Region::getRegionCode(Instance), (v22 = sub_195316E1C(v8, RegionCode, a3)) == 0))
    {
      if (!*(this + 2380))
      {
        *(this + 2380) = 72;
      }

      *(this + 4764) = 0xFFFFFFFF00000001;
      goto LABEL_46;
    }

    v11 = v22;
    if (!*(this + 2380))
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  switch(v24[0])
  {
    case 0x343268:
      v14 = 107;
LABEL_30:
      *(this + 2380) = v14;
      goto LABEL_31;
    case 0x333268:
      v14 = 72;
      goto LABEL_30;
    case 0x323168:
      v14 = 104;
      goto LABEL_30;
    case 0x313168:
      v14 = 75;
      goto LABEL_30;
  }

  v14 = 0;
  if (!v11)
  {
    goto LABEL_42;
  }

LABEL_32:
  if (!v14)
  {
LABEL_33:
    v15 = *v11;
    if (v15 >= 4)
    {
      v16 = 72;
    }

    else
    {
      v16 = 0x6B004B00480068uLL >> (16 * v15);
    }

    *(this + 2380) = v16;
  }

LABEL_37:
  v17 = 0;
  do
  {
    if (v17 == 7)
    {
      break;
    }

    v18 = v11[v17 + 1];
    *(this + v17 * 4 + 4764) = v18;
    ++v17;
  }

  while (v18 != -1);
LABEL_46:
  icu::Locale::~Locale(v25);
  if (BYTE4(v26[1]))
  {
    free(v26[0]);
  }

LABEL_48:
  v20 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195316E1C(char *__s, const char *a2, UErrorCode *a3)
{
  v10[8] = *MEMORY[0x1E69E9840];
  memset(&v10[1], 0, 56);
  v10[0] = &v10[1] + 5;
  LODWORD(v10[1]) = 40;
  icu::StringPiece::StringPiece(&v8, __s);
  icu::CharString::append(v10, v8, v9, a3);
  icu::CharString::append(v10, 95, a3);
  icu::StringPiece::StringPiece(&v8, a2);
  icu::CharString::append(v10, v8, v9, a3);
  v5 = uhash_get(qword_1ED442BA8, v10[0]);
  if (!v5)
  {
    v5 = uhash_get(qword_1ED442BA8, a2);
  }

  if (BYTE4(v10[1]))
  {
    free(v10[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t icu::DateTimePatternGenerator::getDefaultHourCycle(icu::DateTimePatternGenerator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 2;
  }

  v3 = *(this + 2380);
  if (v3 <= 0x4A)
  {
    if (*(this + 2380))
    {
      if (v3 != 72)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *a2 = U_UNSUPPORTED_ERROR;
    }

    return 2;
  }

  if (v3 == 75)
  {
    return 0;
  }

  if (v3 != 104)
  {
    if (v3 == 107)
    {
      return 3;
    }

LABEL_10:
    abort();
  }

  return 1;
}

void *icu::DateTimePatternGenerator::getSkeleton@<X0>(const icu::UnicodeString *a1@<X1>, uint64_t a2@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  bzero(v13, 0xC80uLL);
  v6 = 0;
  v12 = &unk_1F093A4C8;
  do
  {
    v7 = &v13[v6 - 1];
    v7[1] = &unk_1F0935D00;
    *(v7 + 8) = 2;
    v6 += 8;
  }

  while (v6 != 400);
  v13[400] = 0;
  v33 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24[0] = &unk_1F093A4A8;
  v24[1] = &unk_1F093A510;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = &unk_1F093A510;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  sub_195317174(v24, a1, &v12, &v14);
  sub_195317464(&v14, a2);
  v12 = &unk_1F093A4C8;
  for (i = 393; i != -7; i -= 8)
  {
    result = icu::UnicodeString::~UnicodeString(v8, &v13[i - 1]);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

__n128 sub_195317174(uint64_t a1, const icu::UnicodeString *a2, _DWORD *a3, uint64_t a4)
{
  v37 = *MEMORY[0x1E69E9840];
  *(a4 + 8) = 0u;
  v5 = (a4 + 8);
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 72) = 0u;
  v29 = (a4 + 72);
  *(a4 + 104) = 0u;
  v30 = (a4 + 104);
  *(a4 + 88) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  sub_1953182DC(a3, a2);
  v31 = 0;
  if (a3[802] >= 1)
  {
    v6 = 0;
    v7 = a3 + 2;
    do
    {
      v8 = &v7[16 * v6];
      v9 = *(v8 + 4);
      if ((v9 & 0x8000u) == 0)
      {
        v10 = v9 >> 5;
      }

      else
      {
        v10 = v8[3];
      }

      if (!v10)
      {
        goto LABEL_11;
      }

      v11 = v8 + 5;
      if ((v9 & 2) == 0)
      {
        v11 = *(v8 + 3);
      }

      if (*v11 == 39)
      {
        v36 = 0;
        v35 = 0u;
        v34 = 0u;
        v33 = 0u;
        v32 = &unk_1F0935D00;
        LOWORD(v33) = 2;
        sub_1953183D0(a3, &v32, &v31);
        icu::UnicodeString::~UnicodeString(v12, &v32);
        v6 = v31;
      }

      else
      {
LABEL_11:
        v13 = sub_19531C09C(&v7[16 * v6], 1);
        if ((v13 & 0x80000000) == 0)
        {
          if (v10)
          {
            v14 = v8 + 10;
            if ((v9 & 2) == 0)
            {
              v14 = *(v8 + 3);
            }

            v15 = *v14;
          }

          else
          {
            v15 = -1;
          }

          v16 = &aG_2[16 * v13];
          v17 = *(v16 + 1);
          *(v29 + v17) = v15;
          *(a4 + 88 + v17) = v10;
          v18 = v16[10];
          *(v30 + v17) = *v16;
          *(a4 + 120 + v17) = v18;
          v19 = *(v16 + 4);
          if (v19 >= 1)
          {
            v20 = *(v8 + 4);
            if (v20 < 0)
            {
              v20 = v8[3];
            }

            else
            {
              LOWORD(v20) = v20 >> 5;
            }

            LOWORD(v19) = v20 + v19;
          }

          *(v5 + v17) = v19;
        }
      }

      v31 = ++v6;
    }

    while (v6 < a3[802]);
  }

  if (*(a4 + 100) && *(a4 + 102) && !*(a4 + 101))
  {
    *(a4 + 85) = 115;
    *(a4 + 101) = 1;
    *(a4 + 117) = 115;
    *(a4 + 133) = 1;
    *(a4 + 60) = 257;
  }

  if (*(a4 + 99))
  {
    v21 = *(a4 + 83);
    if (v21 == 104 || v21 == 75)
    {
      if (!*(a4 + 98))
      {
        *(a4 + 82) = 97;
        *(a4 + 98) = 1;
        *(a4 + 114) = 97;
        *(a4 + 130) = 1;
        *(a4 + 48) = -259;
        *(a4 + 136) = 1;
      }
    }

    else
    {
      *(a4 + 82) = 0;
      *(a4 + 98) = 0;
      *(a4 + 114) = 0;
      *(a4 + 130) = 0;
      *(a4 + 48) = 0;
    }
  }

  v22 = *v5;
  v23 = v5[1];
  v24 = v5[3];
  *(a1 + 48) = v5[2];
  *(a1 + 64) = v24;
  *(a1 + 16) = v22;
  *(a1 + 32) = v23;
  *(a1 + 80) = *v29;
  *(a1 + 96) = *(a4 + 88);
  *(a1 + 112) = *v30;
  result = *(a4 + 120);
  *(a1 + 128) = result;
  *(a1 + 144) = *(a4 + 136);
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195317464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  do
  {
    sub_19531B00C(a1 + 72, v4++, a2);
  }

  while (v4 != 16);
  result = icu::UnicodeString::operator=(a2, a2);
  if (*(a1 + 136))
  {
    v6 = *(a2 + 8);
    v7 = v6;
    v8 = v6 >> 5;
    v9 = v7 >= 0 ? v8 : *(a2 + 12);
    result = icu::UnicodeString::doIndexOf(a2, 0x61u, 0, v9);
    if ((result & 0x80000000) == 0)
    {

      return icu::UnicodeString::doReplace(a2, result, 1, 0, 0, 0);
    }
  }

  return result;
}

void *sub_195317568(void *a1)
{
  *a1 = &unk_1F093A4C8;
  for (i = 393; i != -7; i -= 8)
  {
    icu::UnicodeString::~UnicodeString(&a1[i]);
  }

  return a1;
}

void *icu::DateTimePatternGenerator::staticGetSkeleton@<X0>(icu::DateTimePatternGenerator *this@<X0>, uint64_t a2@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  bzero(v13, 0xC80uLL);
  v6 = 0;
  v12 = &unk_1F093A4C8;
  do
  {
    v7 = &v13[v6 - 1];
    v7[1] = &unk_1F0935D00;
    *(v7 + 8) = 2;
    v6 += 8;
  }

  while (v6 != 400);
  v13[400] = 0;
  v33 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24[0] = &unk_1F093A4A8;
  v24[1] = &unk_1F093A510;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = &unk_1F093A510;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  sub_195317174(v24, this, &v12, &v14);
  sub_195317464(&v14, a2);
  v12 = &unk_1F093A4C8;
  for (i = 393; i != -7; i -= 8)
  {
    result = icu::UnicodeString::~UnicodeString(v8, &v13[i - 1]);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void *icu::DateTimePatternGenerator::getBaseSkeleton@<X0>(const icu::UnicodeString *a1@<X1>, uint64_t a2@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  bzero(v13, 0xC80uLL);
  v6 = 0;
  v12 = &unk_1F093A4C8;
  do
  {
    v7 = &v13[v6 - 1];
    v7[1] = &unk_1F0935D00;
    *(v7 + 8) = 2;
    v6 += 8;
  }

  while (v6 != 400);
  v13[400] = 0;
  v33 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24[0] = &unk_1F093A4A8;
  v24[1] = &unk_1F093A510;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = &unk_1F093A510;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  sub_195317174(v24, a1, &v12, &v14);
  sub_195317958(&v14, a2);
  v12 = &unk_1F093A4C8;
  for (i = 393; i != -7; i -= 8)
  {
    result = icu::UnicodeString::~UnicodeString(v8, &v13[i - 1]);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195317958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  do
  {
    sub_19531B00C(a1 + 104, v4++, a2);
  }

  while (v4 != 16);
  result = icu::UnicodeString::operator=(a2, a2);
  if (*(a1 + 136))
  {
    v6 = *(a2 + 8);
    v7 = v6;
    v8 = v6 >> 5;
    v9 = v7 >= 0 ? v8 : *(a2 + 12);
    result = icu::UnicodeString::doIndexOf(a2, 0x61u, 0, v9);
    if ((result & 0x80000000) == 0)
    {

      return icu::UnicodeString::doReplace(a2, result, 1, 0, 0, 0);
    }
  }

  return result;
}

void *icu::DateTimePatternGenerator::staticGetBaseSkeleton@<X0>(icu::DateTimePatternGenerator *this@<X0>, uint64_t a2@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  bzero(v13, 0xC80uLL);
  v6 = 0;
  v12 = &unk_1F093A4C8;
  do
  {
    v7 = &v13[v6 - 1];
    v7[1] = &unk_1F0935D00;
    *(v7 + 8) = 2;
    v6 += 8;
  }

  while (v6 != 400);
  v13[400] = 0;
  v33 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v24[0] = &unk_1F093A4A8;
  v24[1] = &unk_1F093A510;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = 0;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = &unk_1F093A510;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  sub_195317174(v24, this, &v12, &v14);
  sub_195317958(&v14, a2);
  v12 = &unk_1F093A4C8;
  for (i = 393; i != -7; i -= 8)
  {
    result = icu::UnicodeString::~UnicodeString(v8, &v13[i - 1]);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void icu::DateTimePatternGenerator::getCalendarTypeToUse(icu::DateTimePatternGenerator *this, const char **a2, icu::CharString *a3, UErrorCode *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  *(a3 + 14) = 0;
  **a3 = 0;
  icu::CharString::append(a3, "gregorian", -1, a4);
  if (*a4 > 0)
  {
    goto LABEL_2;
  }

  if (strcmp(a2[5], "ja_JP_TRADITIONAL"))
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    icu::Calendar::getCalendarTypeFromLocale(a2, v10, 0x32, a4, v8);
    if (*a4 <= 0)
    {
      *(a3 + 14) = 0;
      **a3 = 0;
      icu::CharString::append(a3, v10, -1, a4);
    }

LABEL_2:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  *(a3 + 14) = 0;
  **a3 = 0;
  v9 = *MEMORY[0x1E69E9840];

  icu::CharString::append(a3, "japanese", -1, a4);
}

uint64_t icu::DateTimePatternGenerator::addPatternWithSkeleton(icu::DateTimePatternGenerator *this, UChar **a2, UChar **a3, int a4, UChar **a5, UErrorCode *a6)
{
  v48 = *MEMORY[0x1E69E9840];
  v7 = *(this + 1198);
  if (v7 < U_ILLEGAL_ARGUMENT_ERROR)
  {
    v12 = a2;
    v44 = 0u;
    v47 = 0;
    v46 = 0u;
    v45 = 0u;
    v43 = &unk_1F0935D00;
    LOWORD(v44) = 2;
    v42 = 0;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v32 = 0;
    v33 = &unk_1F093A510;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23[0] = &unk_1F093A4A8;
    v23[1] = &unk_1F093A510;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    if (a3)
    {
      a2 = a3;
    }

    sub_195317174(v23, a2, *(this + 29), &v33);
    sub_19531A6A4(v23, &v43);
    v22 = 0;
    v14 = sub_19531A708(*(this + 32), &v43, &v22);
    if (!v14 || (!a4 ? (v15 = a3 == 0) : (v15 = 1), v15 && v22))
    {
      LODWORD(v8) = 0;
    }

    else
    {
      icu::UnicodeString::operator=(a5, v14);
      v8 = 1;
      if (!a4)
      {
LABEL_23:
        icu::UnicodeString::~UnicodeString(v16, &v43);
        goto LABEL_24;
      }
    }

    v21 = 0;
    v17 = *(this + 32);
    v18 = sub_19531A82C(v17, &v33, &v21);
    if (v18)
    {
      icu::UnicodeString::operator=(a5, v18);
      if (!a4 || a3 && (v16 = v21) != 0)
      {
        v8 = 2;
        goto LABEL_23;
      }

      v17 = *(this + 32);
      LODWORD(v8) = 2;
    }

    sub_19531A918(v17, &v43, &v33, v12, a3 != 0, a6);
    v16 = *a6;
    if (v16 <= 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = v8;
    }

    goto LABEL_23;
  }

  v8 = 0;
  *a6 = v7;
LABEL_24:
  v19 = *MEMORY[0x1E69E9840];
  return v8;
}

void *icu::DateTimePatternGenerator::hackTimes(icu::DateTimePatternGenerator *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v38 = 0;
  v37 = 0u;
  v36 = 0u;
  v34 = &unk_1F0935D00;
  LOWORD(v35) = 2;
  sub_1953182DC(*(this + 29), a2);
  v30 = 0u;
  v33 = 0;
  v32 = 0u;
  v31 = 0u;
  v29 = &unk_1F0935D00;
  LOWORD(v30) = 2;
  v19 = 0;
  v5 = *(this + 29);
  if (v5[802] < 1)
  {
    goto LABEL_32;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    icu::UnicodeString::UnicodeString(&v25, &v5[16 * v7 + 2]);
    v8 = BYTE8(v25);
    v9 = (SWORD4(v25) & 0x8000u) == 0 ? WORD4(v25) >> 5 : HIDWORD(v25);
    if (!v9)
    {
      break;
    }

    v10 = *(&v26 + 1);
    if ((BYTE8(v25) & 2) != 0)
    {
      v10 = &v25 + 5;
    }

    v11 = *v10;
    if (v11 != 39)
    {
      break;
    }

    if (v6)
    {
      v24 = 0;
      v23 = 0u;
      v22 = 0u;
      v21 = 0u;
      v20 = &unk_1F0935D00;
      LOWORD(v21) = 2;
      sub_1953183D0(*(this + 29), &v20, &v19);
      if ((v21 & 0x8000u) == 0)
      {
        v12 = v21 >> 5;
      }

      else
      {
        v12 = DWORD1(v21);
      }

      icu::UnicodeString::doAppend(&v29, &v20, 0, v12);
      icu::UnicodeString::~UnicodeString(v13, &v20);
      goto LABEL_25;
    }

LABEL_26:
    icu::UnicodeString::~UnicodeString(v11, &v25);
    v7 = v19 + 1;
    v19 = v7;
    v5 = *(this + 29);
    if (v7 >= v5[802])
    {
      goto LABEL_32;
    }
  }

  v14 = sub_195318594(*(this + 29), &v25);
  if (v6 && v14)
  {
    goto LABEL_24;
  }

  if (!v9)
  {
    v11 = 0xFFFFLL;
    if (v6)
    {
      goto LABEL_31;
    }

LABEL_29:
    v11 = (((v11 - 86) >> 2) | ((v11 - 86) << 14));
    if (v11 <= 9)
    {
      v11 = (1 << v11);
      if ((v11 & 0x303) != 0)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_26;
  }

  v15 = *(&v26 + 1);
  if ((v8 & 2) != 0)
  {
    v15 = &v25 + 5;
  }

  v11 = *v15;
  if (v11 == 109)
  {
LABEL_24:
    icu::UnicodeString::doAppend(&v29, &v25, 0, v9);
LABEL_25:
    v6 = 1;
    goto LABEL_26;
  }

  if (v11 != 115)
  {
    if (v6)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v6)
  {
    icu::UnicodeString::doAppend(&v29, &v25, 0, v9);
    v11 = *(this + 1198);
    if (v11 < 1)
    {
      icu::DateTimePatternGenerator::addPatternWithSkeleton(this, &v29, 0, 0, &v34, a3);
    }

    else
    {
      *a3 = v11;
    }
  }

LABEL_31:
  icu::UnicodeString::~UnicodeString(v11, &v25);
LABEL_32:
  icu::UnicodeString::~UnicodeString(v5, &v29);
  result = icu::UnicodeString::~UnicodeString(v16, &v34);
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1953182DC(_DWORD *a1, const icu::UnicodeString *a2)
{
  v4 = 0;
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  a1[802] = 0;
  v5 = a1 + 2;
  do
  {
    result = (*(*a1 + 16))(a1, a2, v4, &v10);
    if (result != 1)
    {
      break;
    }

    icu::UnicodeString::UnicodeString(v11, a2, v4, v10);
    v7 = a1[802];
    a1[802] = v7 + 1;
    icu::UnicodeString::operator=(&v5[16 * v7], v11);
    result = icu::UnicodeString::~UnicodeString(v8, v11);
    v4 = (v10 + v4);
  }

  while (a1[802] < 50);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1953183D0(uint64_t result, icu::UnicodeString *this, int *a3)
{
  v5 = result;
  v6 = *a3;
  if (*(this + 4))
  {
    v7 = 2;
  }

  else
  {
    v7 = *(this + 4) & 0x1E;
  }

  *(this + 4) = v7;
  v8 = result + 8;
  v9 = result + 8 + (v6 << 6);
  v10 = *(v9 + 8);
  if (*(v9 + 8) < 0)
  {
    if (!*(v9 + 12))
    {
      goto LABEL_17;
    }
  }

  else if (!(v10 >> 5))
  {
    goto LABEL_17;
  }

  if ((v10 & 2) != 0)
  {
    v11 = (v9 + 10);
  }

  else
  {
    v11 = *(v9 + 24);
  }

  if (*v11 == 39)
  {
    v12 = v10;
    v13 = v10 >> 5;
    goto LABEL_13;
  }

LABEL_17:
  while (1)
  {
    v15 = *(v5 + 3208);
    if (v6 >= v15)
    {
      break;
    }

    v9 = v8 + (v6 << 6);
    v16 = *(v9 + 8);
    v13 = v16 >> 5;
    if (*(v9 + 8) < 0)
    {
      v17 = *(v9 + 12);
    }

    else
    {
      v17 = v16 >> 5;
    }

    v12 = v16;
    if (v17 && ((v16 & 2) != 0 ? (v18 = (v9 + 10)) : (v18 = *(v9 + 24)), *v18 == 39))
    {
      v19 = v6 + 1;
      if (v19 >= v15)
      {
        goto LABEL_43;
      }

      v20 = v8 + (v19 << 6);
      v21 = *(v20 + 8);
      if (*(v20 + 8) < 0)
      {
        if (!*(v20 + 12))
        {
          goto LABEL_43;
        }
      }

      else if (!(v21 >> 5))
      {
        goto LABEL_43;
      }

      if ((v21 & 2) != 0)
      {
        v22 = (v20 + 10);
      }

      else
      {
        v22 = *(v20 + 24);
      }

      if (*v22 != 39)
      {
LABEL_43:
        if (v12 >= 0)
        {
          v28 = v13;
        }

        else
        {
          v28 = *(v9 + 12);
        }

        result = icu::UnicodeString::doAppend(this, v9, 0, v28);
        break;
      }

      if (v12 >= 0)
      {
        v23 = v13;
      }

      else
      {
        v23 = *(v9 + 12);
      }

      icu::UnicodeString::doAppend(this, v9, 0, v23);
      LODWORD(v6) = v6 + 2;
      v24 = *(v20 + 8);
      v25 = v24;
      v26 = v24 >> 5;
      if (v25 >= 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = *(v20 + 12);
      }

      result = icu::UnicodeString::doAppend(this, v20, 0, v27);
    }

    else
    {
LABEL_13:
      if (v12 >= 0)
      {
        v14 = v13;
      }

      else
      {
        v14 = *(v9 + 12);
      }

      result = icu::UnicodeString::doAppend(this, v9, 0, v14);
      LODWORD(v6) = v6 + 1;
    }
  }

  *a3 = v6;
  return result;
}

uint64_t sub_195318594(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 8);
  v4 = a2 + 10;
  if ((v3 & 2) == 0)
  {
    v4 = *(a2 + 24);
  }

  v5 = (a1 + 32);
  if ((v3 & 0x8000) != 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = v3 >> 5;
  if (v2 >= v3 >> 5)
  {
    return 1;
  }

  while (1)
  {
    if (v6 <= v2 || ((v7 = *(v4 + 2 * v2) - 32, v8 = v7 > 0x3C, v9 = (1 << v7) & 0x1000000004003085, !v8) ? (v10 = v9 == 0) : (v10 = 1), v10))
    {
      v11 = *(v5 - 8);
      if (*(v5 - 2) < 0)
      {
        result = *(v5 - 3);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        result = v11 >> 5;
        if (!result)
        {
          return result;
        }
      }

      v13 = (v11 & 2) != 0 ? (v5 - 14) : *v5;
      if (*v13 != 46)
      {
        return 0;
      }
    }

    ++v2;
    v5 += 8;
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v6 = *(a2 + 12);
    if (v2 >= *(a2 + 12))
    {
      return 1;
    }
  }
}

uint64_t icu::DateTimePatternGenerator::addPattern(icu::DateTimePatternGenerator *this, UChar **a2, int a3, UChar **a4, UErrorCode *a5)
{
  v5 = *(this + 1198);
  if (v5 < U_ILLEGAL_ARGUMENT_ERROR)
  {
    return icu::DateTimePatternGenerator::addPatternWithSkeleton(this, a2, 0, a3, a4, a5);
  }

  *a5 = v5;
  return 0;
}

icu::DateTimePatternGenerator *icu::DateTimePatternGenerator::consumeShortTimePattern(icu::DateTimePatternGenerator *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    return icu::DateTimePatternGenerator::hackTimes(this, a2, a3);
  }

  return this;
}

void sub_1953186B0(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953186EC(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195318724(uint64_t a1)
{
  *a1 = &unk_1F093A458;
  icu::UnicodeString::~UnicodeString((a1 + 24));

  icu::ResourceSink::~ResourceSink(a1);
}

void sub_195318778(uint64_t a1)
{
  *a1 = &unk_1F093A458;
  icu::UnicodeString::~UnicodeString((a1 + 24));
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_1953187E0(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  v9 = "{";
  icu::UnicodeString::UnicodeString(v10, 1, &v9);
  for (i = 272; i != 1296; i += 64)
  {
    v3 = (*(a1 + 8) + i);
    v6 = *v3;
    v5 = (v3 - 4);
    v4 = v6;
    if (v6 <= 0x1F)
    {
      icu::UnicodeString::operator=(v5, v10);
      icu::UnicodeString::getTerminatedBuffer(v5);
    }
  }

  result = icu::UnicodeString::~UnicodeString(v4, v10);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1953188B4(void *result)
{
  v1 = result;
  v2 = 0;
  v15 = *MEMORY[0x1E69E9840];
  v3 = 1288;
  do
  {
    v4 = v1[1] + 192 * v2;
    if (*(v4 + 1296) < 0x20u)
    {
      v5 = (v4 + 1288);
      v14[0] = 70;
      v6 = *(v4 + 1296);
      if (v6 < 0)
      {
        v7 = v5[3];
      }

      else
      {
        v7 = v6 >> 5;
      }

      icu::UnicodeString::doReplace(v5, 0, v7, v14, 0, 1);
      if (v2 > 9)
      {
        v14[0] = 49;
        icu::UnicodeString::doAppend(v5, v14, 0, 1);
        v8 = v2 + 38;
      }

      else
      {
        v8 = v2 | 0x30;
      }

      v14[0] = v8;
      icu::UnicodeString::doAppend(v5, v14, 0, 1);
      result = icu::UnicodeString::getTerminatedBuffer(v5);
    }

    v9 = 2;
    v10 = v3;
    do
    {
      v11 = v1[1] + v10;
      if (*(v11 + 72) <= 0x1Fu)
      {
        icu::UnicodeString::UnicodeString(v14, (v1[1] + v10));
        icu::UnicodeString::operator=((v11 + 64), v14);
        result = icu::UnicodeString::~UnicodeString(v12, v14);
      }

      v10 += 64;
      --v9;
    }

    while (v9);
    ++v2;
    v3 += 192;
  }

  while (v2 != 16);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::DateTimePatternGenerator::initHashtable(uint64_t this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v4 = v2;
    v5 = v3;
    if (!*(this + 4688))
    {
      operator new();
    }
  }

  return this;
}

uint64_t icu::DateTimePatternGenerator::setAppendItemFormat(uint64_t a1, unsigned int a2, UChar **a3)
{
  v3 = a1 + (a2 << 6);
  icu::UnicodeString::operator=((v3 + 264), a3);

  return icu::UnicodeString::getTerminatedBuffer((v3 + 264));
}

uint64_t icu::DateTimePatternGenerator::setAppendItemName(uint64_t a1, unsigned int a2, UChar **a3)
{
  v3 = a1 + 192 * a2;
  icu::UnicodeString::operator=((v3 + 1288), a3);

  return icu::UnicodeString::getTerminatedBuffer((v3 + 1288));
}

uint64_t icu::DateTimePatternGenerator::setFieldDisplayName(uint64_t a1, unsigned int a2, unsigned int a3, UChar **a4)
{
  v4 = a1 + 192 * a2 + (a3 << 6);
  icu::UnicodeString::operator=((v4 + 1288), a4);

  return icu::UnicodeString::getTerminatedBuffer((v4 + 1288));
}

uint64_t icu::DateTimePatternGenerator::getAppendName(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v16 = 39;
  v6 = *(a3 + 8);
  v7 = v6;
  v8 = v6 >> 5;
  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(a3 + 12);
  }

  icu::UnicodeString::doReplace(a3, 0, v9, &v16, 0, 1);
  v10 = a1 + 192 * a2;
  v11 = *(v10 + 1296);
  v12 = v11;
  v13 = v11 >> 5;
  if (v12 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(v10 + 1300);
  }

  icu::UnicodeString::doAppend(a3, (v10 + 1288), 0, v14);
  v17 = 39;
  return icu::UnicodeString::doAppend(a3, &v17, 0, 1);
}

void *icu::DateTimePatternGenerator::getBestPattern@<X0>(void *result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int *a4@<X3>, icu::UnicodeString *a5@<X8>)
{
  v70 = *MEMORY[0x1E69E9840];
  if (*a4 >= 1)
  {
    goto LABEL_4;
  }

  v7 = result;
  v8 = *(result + 1198);
  if (v8 < 1)
  {
    v56 = 0u;
    v59 = 0;
    v58 = 0u;
    v57 = 0u;
    v54 = 0;
    v55 = &unk_1F0935D00;
    LOWORD(v56) = 2;
    v51 = 0u;
    v53 = 0u;
    v52 = 0u;
    v50 = &unk_1F0935D00;
    LOWORD(v51) = 2;
    v46 = 0;
    memset(v49, 0, sizeof(v49));
    icu::DateTimePatternGenerator::mapSkeletonMetacharacters(result, a2, &v46, a3, a4, v49);
    v11 = *a4;
    if (v11 >= 1)
    {
      *a5 = &unk_1F0935D00;
      *(a5 + 4) = 2;
LABEL_51:
      icu::UnicodeString::~UnicodeString(v11, v49);
      icu::UnicodeString::~UnicodeString(v42, &v50);
      result = icu::UnicodeString::~UnicodeString(v43, &v55);
      goto LABEL_5;
    }

    if (v51)
    {
      v12 = 2;
    }

    else
    {
      v12 = v51 & 0x1E;
    }

    LOWORD(v51) = v12;
    v14 = v7[29];
    v13 = v7[30];
    v69 = 0;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = &unk_1F093A510;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    sub_195317174(v13, v49, v14, &v60);
    v45 = 0;
    BestRaw = icu::DateTimePatternGenerator::getBestRaw(v7, v7[30], -1, v7[31], a4, &v45);
    v16 = BestRaw;
    v17 = *(BestRaw + 8);
    if ((v17 & 0x8000) != 0)
    {
      v18 = *(BestRaw + 12);
    }

    else
    {
      v18 = v17 >> 5;
    }

    if (icu::UnicodeString::doIndexOf(BestRaw, 0x47u, 0, v18) != -1)
    {
      *(v7[31] + 8) &= ~1u;
    }

    if (*a4 >= 1)
    {
      *a5 = &unk_1F0935D00;
      v11 = 2;
      *(a5 + 4) = 2;
      goto LABEL_51;
    }

    v19 = v7[31];
    if (!*(v19 + 8) && !*(v19 + 12))
    {
      icu::DateTimePatternGenerator::adjustFieldTypes(v7, v16, v45, v46, a3, &v60);
      icu::UnicodeString::operator=(&v50, &v60);
      icu::UnicodeString::~UnicodeString(v37, &v60);
      icu::UnicodeString::UnicodeString(a5, &v50);
      goto LABEL_51;
    }

    v20 = 0;
    v21 = xmmword_19547B440;
    v22 = 0uLL;
    v23.i64[0] = 0x100000001;
    v23.i64[1] = 0x100000001;
    v24.i64[0] = 0x400000004;
    v24.i64[1] = 0x400000004;
    do
    {
      v22 = vorrq_s8(vbicq_s8(vshlq_u32(v23, v21), vceqzq_s32(*(v7[30] + 16 + v20))), v22);
      v21 = vaddq_s32(v21, v24);
      v20 += 16;
    }

    while (v20 != 64);
    v25 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    v26 = v25.i16[0] | v25.i16[2];
    memset(v48, 0, sizeof(v48));
    v27 = v46;
    icu::DateTimePatternGenerator::getBestAppending(v7, (v25.i16[0] | v25.i16[2]) & 0x3FF, v46, a4, a3, v48);
    memset(v47, 0, sizeof(v47));
    icu::DateTimePatternGenerator::getBestAppending(v7, v26 & 0xFC00, v27, a4, a3, v47);
    if (*a4 >= 1)
    {
      *a5 = &unk_1F0935D00;
      v28 = 2;
      *(a5 + 4) = 2;
LABEL_50:
      icu::UnicodeString::~UnicodeString(v28, v47);
      icu::UnicodeString::~UnicodeString(v41, v48);
      goto LABEL_51;
    }

    if ((SWORD4(v48[0]) & 0x8000u) == 0)
    {
      v29 = WORD4(v48[0]) >> 5;
    }

    else
    {
      v29 = HIDWORD(v48[0]);
    }

    if (v29)
    {
      v30 = HIDWORD(v47[0]);
      v31 = WORD4(v47[0]) >> 5;
    }

    else
    {
      v31 = WORD4(v47[0]) >> 5;
      v30 = HIDWORD(v47[0]);
      if ((SWORD4(v47[0]) & 0x8000u) == 0)
      {
        v38 = WORD4(v47[0]) >> 5;
      }

      else
      {
        v38 = HIDWORD(v47[0]);
      }

      if (v38)
      {
        v39 = v47;
LABEL_49:
        icu::UnicodeString::UnicodeString(a5, v39);
        goto LABEL_50;
      }

      if (v51)
      {
        v44 = 2;
      }

      else
      {
        v44 = v51 & 0x1E;
      }

      LOWORD(v51) = v44;
    }

    if ((SWORD4(v47[0]) & 0x8000u) == 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = v30;
    }

    if (v32)
    {
      if (v51)
      {
        v33 = 2;
      }

      else
      {
        v33 = v51 & 0x1E;
      }

      LOWORD(v51) = v33;
      *a4 = 0;
      v34 = v7[30];
      v35 = *(v34 + 131);
      if (v35 == 3)
      {
        v36 = 2;
      }

      else if (v35 == 4)
      {
        v36 = *(v34 + 134) < 1;
      }

      else
      {
        v36 = 3;
      }

      DateTimeFormat = icu::DateTimePatternGenerator::getDateTimeFormat(v7, v36, a4);
      icu::UnicodeString::operator=(&v55, DateTimeFormat);
      *&v61 = &unk_1F0935D00;
      WORD4(v61) = 2;
      icu::SimpleFormatter::applyPatternMinMaxArguments(&v60, &v55, 2, 2, 0, a4);
      icu::SimpleFormatter::format(&v60, v47, v48, &v50, a4);
      icu::SimpleFormatter::~SimpleFormatter(&v60);
      v39 = &v50;
    }

    else
    {
      v39 = v48;
    }

    goto LABEL_49;
  }

  *a4 = v8;
LABEL_4:
  *a5 = &unk_1F0935D00;
  *(a5 + 4) = 2;
LABEL_5:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void *icu::DateTimePatternGenerator::mapSkeletonMetacharacters@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, int a4@<W3>, _DWORD *a5@<X4>, icu::UnicodeString *a6@<X8>)
{
  v58 = *MEMORY[0x1E69E9840];
  v54 = 0u;
  v55 = 0u;
  v57 = 0;
  v56 = 0u;
  v53 = &unk_1F0935D00;
  LOWORD(v54) = 2;
  v6 = *(a1 + 4760);
  if ((a4 & 0x60000000) == 0x20000000)
  {
    v6 = 104;
  }

  if ((a4 & 0x60000000) == 0x40000000)
  {
    v7 = 72;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a2 + 8);
  v9 = v8;
  v10 = v8 >> 5;
  if (v9 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(a2 + 12);
  }

  if (v11 < 1)
  {
    goto LABEL_96;
  }

  v12 = a4;
  v14 = a1;
  v15 = 0;
  v16 = 0;
  v17 = a2 + 10;
  v18 = (a1 + 4764);
  do
  {
    v19 = *(a2 + 8);
    if ((v19 & 0x8000u) == 0)
    {
      v20 = v19 >> 5;
    }

    else
    {
      v20 = *(a2 + 12);
    }

    if (v20 <= v16)
    {
      v22 = 0xFFFF;
    }

    else
    {
      if ((v19 & 2) != 0)
      {
        v21 = v17;
      }

      else
      {
        v21 = *(a2 + 24);
      }

      v22 = *(v21 + 2 * v16);
      if (v22 == 39)
      {
        v15 = !v15;
        goto LABEL_64;
      }
    }

    if (v15)
    {
      v15 = 1;
      goto LABEL_64;
    }

    v23 = icu::DateTimePatternGenerator::localeUsesLongDayPeriods((v14 + 8), a2);
    v24 = (v12 & 0x10000000) == 0 && v23;
    if (v22 > 103)
    {
      if (v22 != 106 && (v22 != 104 || !v24))
      {
        goto LABEL_46;
      }
    }

    else if (v22 != 67)
    {
      if (v22 == 74)
      {
        v52 = 72;
        icu::UnicodeString::doAppend(&v53, &v52, 0, 1);
        v15 = 0;
        *a3 |= 2u;
        goto LABEL_64;
      }

LABEL_46:
      v52 = v22;
      icu::UnicodeString::doAppend(&v53, &v52, 0, 1);
      v15 = 0;
      goto LABEL_64;
    }

    v25 = v16 + 1;
    if (v16 + 1 >= v11)
    {
      v34 = 1;
      v35 = 1;
    }

    else
    {
      v26 = 0;
      v27 = *(a2 + 8);
      if ((v27 & 0x8000u) == 0)
      {
        v28 = v27 >> 5;
      }

      else
      {
        v28 = *(a2 + 12);
      }

      v29 = *(a2 + 24);
      if ((v27 & 2) != 0)
      {
        v29 = v17;
      }

      v30 = v11 - 1 - v16;
      v31 = v29 + 2 * v25;
      v32 = v11 - v25;
      while (1)
      {
        v33 = v28 <= v16 + 1 ? 0xFFFF : *(v31 + 2 * v26);
        if (v33 != v22)
        {
          break;
        }

        ++v16;
        if (v32 == ++v26)
        {
          v16 = v11 - 1;
          goto LABEL_49;
        }
      }

      v30 = v26;
LABEL_49:
      v34 = (v30 & 1) + 1;
      v35 = (v30 >> 1) + 3;
      if (v30 <= 1)
      {
        v35 = 1;
      }
    }

    if (v22 == 104)
    {
      goto LABEL_54;
    }

    if (v22 == 106)
    {
      v22 = v7;
LABEL_54:
      if (v24)
      {
        v36 = 66;
      }

      else
      {
        v36 = 97;
      }

      goto LABEL_57;
    }

    if (*v18 == -1)
    {
      *a5 = 3;
      *a6 = &unk_1F0935D00;
      v44 = 2;
      *(a6 + 4) = 2;
      goto LABEL_97;
    }

    v39 = 0;
    while (1)
    {
      v40 = v18[v39];
      if (v40 + 1 > 0xA)
      {
LABEL_78:
        if (v7 == 75 || v7 == 104)
        {
          goto LABEL_82;
        }

        goto LABEL_72;
      }

      if (((1 << (v40 + 1)) & 0x614) != 0)
      {
        if (v7 == 72 || v7 == 107)
        {
          goto LABEL_82;
        }

LABEL_72:
        v41 = -1;
        goto LABEL_73;
      }

      v41 = *v18;
      if (v40 != -1)
      {
        goto LABEL_78;
      }

LABEL_73:
      if (v41 != -1)
      {
        break;
      }

      v40 = -1;
      if (v39++ >= 6)
      {
        goto LABEL_82;
      }
    }

    v40 = v41;
LABEL_82:
    if (v40 > 9)
    {
      goto LABEL_89;
    }

    if (((1 << v40) & 0xC4) != 0)
    {
      v22 = 75;
    }

    else
    {
      if (((1 << v40) & 0x302) != 0)
      {
        v22 = 72;
        goto LABEL_90;
      }

      if (v40 == 3)
      {
        v22 = 107;
        goto LABEL_95;
      }

LABEL_89:
      v22 = 104;
    }

LABEL_90:
    if (v40 > 9)
    {
      goto LABEL_95;
    }

    v43 = 1 << v40;
    if ((v43 & 0x150) != 0)
    {
      v36 = 98;
      goto LABEL_57;
    }

    if ((v43 & 0x2A0) == 0)
    {
LABEL_95:
      v36 = 97;
      goto LABEL_57;
    }

    v36 = 66;
LABEL_57:
    if (v22 != 72 && v22 != 107)
    {
      v37 = v35 + 1;
      do
      {
        v52 = v36;
        icu::UnicodeString::doAppend(&v53, &v52, 0, 1);
        --v37;
      }

      while (v37 > 1);
    }

    v38 = v34 + 1;
    do
    {
      v52 = v22;
      icu::UnicodeString::doAppend(&v53, &v52, 0, 1);
      --v38;
    }

    while (v38 > 1);
    v15 = 0;
    v12 = a4;
    v14 = a1;
LABEL_64:
    ++v16;
  }

  while (v16 < v11);
LABEL_96:
  icu::UnicodeString::UnicodeString(a6, &v53);
LABEL_97:
  result = icu::UnicodeString::~UnicodeString(v44, &v53);
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::DateTimePatternGenerator::getBestRaw(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int *a5, void *a6)
{
  v47 = *MEMORY[0x1E69E9840];
  v35 = &unk_1F093A620;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0u;
  v32 = 0u;
  sub_19531C1AC(&v31, a5);
  if (*a5 > 0 || (v15 = *(a1 + 256), (v33 = v15) == 0))
  {
    v12 = 0;
    goto LABEL_3;
  }

  v12 = 0;
  v29 = -1;
  v30 = 0x7FFFFFFF;
  while (2)
  {
    if (SDWORD2(v31) > 51)
    {
      goto LABEL_24;
    }

    v16 = v32;
    v17 = SDWORD2(v31) + 1;
    while (v16)
    {
      if (*(v16 + 152))
      {
        goto LABEL_17;
      }

LABEL_14:
      v16 = 0;
      if (v17++ == 52)
      {
        goto LABEL_24;
      }
    }

    if (!*(v15 + 8 * v17))
    {
      goto LABEL_14;
    }

LABEL_17:
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v19 = sub_19531ADFC(&v31);
    *&v37 = &unk_1F093A4A8;
    *(&v37 + 1) = &unk_1F093A510;
    LOBYTE(v46) = 0;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v20 = *(v19 + 64);
    v22 = *(v19 + 16);
    v21 = *(v19 + 32);
    v40 = *(v19 + 48);
    v41 = v20;
    v38 = v22;
    v39 = v21;
    v23 = *(v19 + 96);
    v42 = *(v19 + 80);
    v43 = v23;
    v24 = *(v19 + 128);
    v44 = *(v19 + 112);
    v45 = v24;
    LOBYTE(v46) = *(v19 + 144);
    if (sub_19531AED4(&v37, *(a1 + 4680)) || (v25 = sub_19531AF0C(a2, &v37, a3, &v35), v26 = v25, v27 = v36, v25 >= v30) && (v25 != v30 || v29 >= v36))
    {
LABEL_23:
      v15 = v33;
      if (!v33)
      {
        goto LABEL_24;
      }

      continue;
    }

    break;
  }

  v12 = sub_19531A82C(*(a1 + 256), &v37 + 1, &v34);
  v28 = HIDWORD(v36);
  *(a4 + 8) = v27;
  *(a4 + 12) = v28;
  if (v26)
  {
    v29 = v27;
    v30 = v26;
    goto LABEL_23;
  }

LABEL_24:
  if (a6 && v12)
  {
    *a6 = v34;
  }

LABEL_3:
  *&v31 = &unk_1F093A4F0;
  if (*(&v32 + 1))
  {
    (*(**(&v32 + 1) + 8))(*(&v32 + 1));
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void *icu::DateTimePatternGenerator::adjustFieldTypes@<X0>(uint64_t a1@<X0>, const icu::UnicodeString *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v70 = *MEMORY[0x1E69E9840];
  *(a6 + 8) = 0u;
  *(a6 + 56) = 0;
  *(a6 + 40) = 0u;
  *(a6 + 24) = 0u;
  *a6 = &unk_1F0935D00;
  *(a6 + 8) = 2;
  result = sub_1953182DC(*(a1 + 232), a2);
  v60 = 0;
  v10 = *(a1 + 232);
  if (*(v10 + 3208) >= 1)
  {
    v11 = 0;
    while (1)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      icu::UnicodeString::UnicodeString(&v66, (v10 + (v11 << 6) + 8));
      v12 = BYTE8(v66);
      if ((SWORD4(v66) & 0x8000u) == 0)
      {
        v13 = WORD4(v66) >> 5;
      }

      else
      {
        v13 = HIDWORD(v66);
      }

      if (v13)
      {
        v14 = *(&v67 + 1);
        if ((BYTE8(v66) & 2) != 0)
        {
          v14 = &v66 + 5;
        }

        if (*v14 == 39)
        {
          v65 = 0;
          v64 = 0u;
          v63 = 0u;
          v62 = 0u;
          v61 = &unk_1F0935D00;
          LOWORD(v62) = 2;
          sub_1953183D0(*(a1 + 232), &v61, &v60);
          if ((v62 & 0x8000u) == 0)
          {
            v15 = v62 >> 5;
          }

          else
          {
            v15 = DWORD1(v62);
          }

          icu::UnicodeString::doAppend(a6, &v61, 0, v15);
          icu::UnicodeString::~UnicodeString(v16, &v61);
          goto LABEL_122;
        }
      }

      if (!sub_195318594(*(a1 + 232), &v66))
      {
        v20 = sub_19531C09C(&v66, 1);
        if ((v20 & 0x80000000) == 0)
        {
          break;
        }
      }

      v18 = a6;
      v19 = v13;
LABEL_121:
      icu::UnicodeString::doAppend(v18, &v66, 0, v19);
LABEL_122:
      result = icu::UnicodeString::~UnicodeString(v17, &v66);
      v11 = v60 + 1;
      v60 = v11;
      v10 = *(a1 + 232);
      if (v11 >= *(v10 + 3208))
      {
        goto LABEL_123;
      }
    }

    v21 = &aG_2[16 * v20];
    v22 = *(v21 + 1);
    if ((a4 & 1) != 0 && v22 == 13)
    {
      v23 = *(a1 + 4624);
      v24 = v23;
      v25 = v23 >> 5;
      if (v24 >= 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = *(a1 + 4628);
      }

      icu::UnicodeString::doAppend(&v66, (a1 + 4616), 0, v26);
      sub_19531B00C(*(a1 + 240) + 80, 14, &v66);
      goto LABEL_117;
    }

    v27 = *(a1 + 240);
    if (!*(v27 + 4 * v22 + 16))
    {
LABEL_117:
      if ((SWORD4(v66) & 0x8000u) == 0)
      {
        v19 = WORD4(v66) >> 5;
      }

      else
      {
        v19 = HIDWORD(v66);
      }

      v18 = a6;
      goto LABEL_121;
    }

    v28 = v27 + v22;
    v29 = *(v28 + 80);
    v30 = *(v28 + 96);
    if (v30 <= 3)
    {
      v31 = 3;
    }

    else
    {
      v31 = v30;
    }

    if (v29 == 69)
    {
      v30 = v31;
    }

    v33 = (a5 & 0x1000) == 0 && v22 == 12;
    v35 = (a5 & 0x2000) == 0 && v22 == 13;
    v36 = v22 == 11 && (a5 & 0x800) == 0;
    v37 = v13;
    if (!v36)
    {
      v37 = v13;
      if (!v33)
      {
        v37 = v13;
        if (!v35)
        {
          if (!a3 || v29 == 99)
          {
            v37 = v30;
          }

          else
          {
            v37 = v30;
            if (v29 != 101)
            {
              v38 = *(v21 + 4);
              v39 = v38 < 1;
              v40 = *(a3 + 8 + 4 * v22);
              v41 = v40 <= 0;
              v42 = v40 > 0;
              if (!v41)
              {
                v39 = 1;
              }

              if (v38 >= 1)
              {
                v42 = 0;
              }

              if (v30 == *(a3 + 88 + v22) || !v39 || v42)
              {
                v37 = v13;
              }

              else
              {
                v37 = v30;
              }
            }
          }
        }
      }
    }

    if (v22 <= 0xB && ((1 << v22) & 0x848) != 0)
    {
      if (!v13)
      {
        v43 = -1;
LABEL_73:
        if (v37 < 3 && v43 == 69)
        {
          v47 = 101;
        }

        else
        {
          v47 = v43;
        }

        if (v22 == 11 && *(a1 + 4760))
        {
          v48 = icu::DateTimePatternGenerator::defaultHourPeriodCharForHourCycle(a1, a5);
          v49 = (a5 & 0x20000000) != 0 ? 104 : v48;
          v50 = (a5 & 0x20000000) != 0 ? 104 : v47;
          if ((a5 & 0x40000000) != 0)
          {
            v49 = 72;
            v51 = 72;
          }

          else
          {
            v51 = v50;
          }

          v52 = (a4 & 2) != 0 ? v49 : v29;
          v53 = (a4 & 2) != 0 ? v51 : v47;
          v47 = v48;
          if (v48 != v52)
          {
            if (v52 == 104 && v48 == 75)
            {
              v47 = 75;
            }

            else if (v52 == 72 && v48 == 107)
            {
              v47 = 107;
            }

            else if (v52 == 107 && v48 == 72)
            {
              v47 = 72;
            }

            else if (v48 == 104 && v52 == 75)
            {
              v47 = 104;
            }

            else
            {
              v47 = v53;
            }
          }
        }

        v55 = v12 & 0x1E;
        if (v12)
        {
          v55 = 2;
        }

        WORD4(v66) = v55;
        if (v37 >= 1)
        {
          v56 = v37 + 1;
          do
          {
            LOWORD(v61) = v47;
            icu::UnicodeString::doAppend(&v66, &v61, 0, 1);
            --v56;
          }

          while (v56 > 1);
        }

        goto LABEL_117;
      }
    }

    else
    {
      v44 = v22 != 1 || v29 == 89;
      if (v44)
      {
        v43 = v29;
      }

      else
      {
        v43 = -1;
      }

      if (v44 || !v13)
      {
        goto LABEL_73;
      }
    }

    v45 = *(&v67 + 1);
    if ((v12 & 2) != 0)
    {
      v45 = &v66 + 5;
    }

    v43 = *v45;
    goto LABEL_73;
  }

LABEL_123:
  v57 = *MEMORY[0x1E69E9840];
  return result;
}

void *icu::DateTimePatternGenerator::getBestAppending@<X0>(void *result@<X0>, int a2@<W1>, char a3@<W2>, int *a4@<X3>, int a5@<W4>, icu::UnicodeString *a6@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*a4 < 1)
  {
    v46 = 0u;
    v49 = 0;
    v48 = 0u;
    v47 = 0u;
    v45 = &unk_1F0935D00;
    LOWORD(v46) = 2;
    v41 = 0u;
    v44 = 0;
    v43 = 0u;
    v42 = 0u;
    v40 = &unk_1F0935D00;
    LOWORD(v41) = 2;
    if (a2)
    {
      v11 = result;
      v31 = &unk_1F0935D00;
      LOWORD(v32) = 2;
      icu::UnicodeString::operator=(&v45, &v31);
      icu::UnicodeString::~UnicodeString(v12, &v31);
      v30 = 0;
      BestRaw = icu::DateTimePatternGenerator::getBestRaw(v11, *(v11 + 240), a2, *(v11 + 248), a4, &v30);
      if (*a4 >= 1)
      {
LABEL_5:
        *a6 = &unk_1F0935D00;
        v14 = 2;
        *(a6 + 4) = 2;
LABEL_24:
        icu::UnicodeString::~UnicodeString(v14, &v40);
        result = icu::UnicodeString::~UnicodeString(v28, &v45);
        goto LABEL_25;
      }

      icu::UnicodeString::operator=(&v40, BestRaw);
      icu::DateTimePatternGenerator::adjustFieldTypes(v11, &v40, v30, a3, a5, &v31);
      icu::UnicodeString::operator=(&v45, &v31);
      icu::UnicodeString::~UnicodeString(v15, &v31);
      v16 = *(v11 + 248);
      v17 = *(v16 + 8);
      if (v17)
      {
        if ((~a2 & 0x6000) != 0 || (*(v16 + 8) & 0x6000) != 0x4000 || (icu::DateTimePatternGenerator::adjustFieldTypes(v11, &v45, v30, a3 | 1, a5, &v31), icu::UnicodeString::operator=(&v45, &v31), icu::UnicodeString::~UnicodeString(v18, &v31), v16 = *(v11 + 248), v17 = *(v16 + 8) & 0xFFFFBFFF, (*(v16 + 8) = v17) != 0))
        {
          v19 = icu::DateTimePatternGenerator::getBestRaw(v11, *(v11 + 240), v17, v16, a4, &v30);
          if (*a4 >= 1)
          {
            goto LABEL_5;
          }

          icu::UnicodeString::operator=(&v40, v19);
          icu::DateTimePatternGenerator::adjustFieldTypes(v11, &v40, v30, a3, a5, &v31);
          icu::UnicodeString::operator=(&v40, &v31);
          icu::UnicodeString::~UnicodeString(v20, &v31);
          v21 = v17 & ~*(*(v11 + 248) + 8);
          if (v21)
          {
            v22 = -1;
            do
            {
              ++v22;
              v23 = v21 > 1;
              v21 >>= 1;
            }

            while (v23);
            if (v22 >= 0xF)
            {
              v24 = 15;
            }

            else
            {
              v24 = v22;
            }
          }

          else
          {
            v24 = 0;
          }

          v25 = v11 + 264 + (v24 << 6);
          if (*(v25 + 8) < 0)
          {
            v26 = *(v25 + 12);
          }

          else
          {
            v26 = *(v25 + 8) >> 5;
          }

          if (v26)
          {
            v39 = 0;
            v38 = 0u;
            v37 = 0u;
            v36 = 0u;
            v35 = &unk_1F0935D00;
            LOWORD(v36) = 2;
            icu::DateTimePatternGenerator::getAppendName(v11, v24, &v35);
            v34[0] = &v45;
            v34[1] = &v40;
            v34[2] = &v35;
            v32 = &unk_1F0935D00;
            v33 = 2;
            icu::SimpleFormatter::applyPatternMinMaxArguments(&v31, v25, 2, 3, 0, a4);
            icu::SimpleFormatter::formatAndReplace(&v31, v34, 3u, &v45, 0, 0, a4);
            icu::SimpleFormatter::~SimpleFormatter(&v31);
            icu::UnicodeString::~UnicodeString(v27, &v35);
          }
        }
      }
    }

    icu::UnicodeString::UnicodeString(a6, &v45);
    goto LABEL_24;
  }

  *a6 = &unk_1F0935D00;
  *(a6 + 4) = 2;
LABEL_25:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

void *icu::DateTimePatternGenerator::getDateTimeFormat(uint64_t a1, unsigned int a2, int *a3)
{
  if ((atomic_load_explicit(&qword_1ED442BB8, memory_order_acquire) & 1) == 0)
  {
    v9[1] = v3;
    v9[2] = v4;
    v7 = a3;
    v8 = a1;
    v6 = a2;
    sub_19542FDD4(v9);
    a2 = v6;
    a3 = v7;
    a1 = v8;
  }

  if (*a3 > 0)
  {
    return &unk_1ED442BC0;
  }

  if (a2 >= 4)
  {
    *a3 = 1;
    return &unk_1ED442BC0;
  }

  return (a1 + (a2 << 6) + 4360);
}

BOOL icu::DateTimePatternGenerator::localeUsesLongDayPeriods(char **this, const icu::Locale *a2)
{
  v3 = _os_feature_enabled_impl();
  v10 = U_ZERO_ERROR;
  v4 = uaprv_isRunningUnitTests() | v3;
  v9 = 0;
  *v8 = 0;
  if (icu::Locale::getKeywordValue(this, "ldpn", v8, 5, &v10) == 2)
  {
    if ((((*v8 ^ 0x6F6E | v8[2]) != 0) & v4) == 0)
    {
      return 0;
    }
  }

  else if ((v4 & 1) == 0)
  {
    return 0;
  }

  if (*(this + 4) ^ 0x687A | *(this + 10))
  {
    v5 = *(this + 4) ^ 0x6968;
    v6 = *(this + 10);
    return !(v5 | v6);
  }

  if (*(this + 5) ^ 0x746E6148 | *(this + 24))
  {
    if (*(this + 20))
    {
      return 0;
    }

    v5 = *(this + 13) ^ 0x5754;
    v6 = *(this + 28);
    return !(v5 | v6);
  }

  return 1;
}

void *icu::DateTimePatternGenerator::replaceFieldTypes@<X0>(void *result@<X0>, const icu::UnicodeString *a2@<X1>, const icu::UnicodeString *a3@<X2>, int a4@<W3>, int *a5@<X4>, uint64_t a6@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a5 < 1)
  {
    v7 = result;
    v8 = *(result + 1198);
    if (v8 < 1)
    {
      v13 = *(result + 29);
      v12 = *(result + 30);
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v14 = &unk_1F093A510;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0;
      sub_195317174(v12, a3, v13, &v14);
      *(a6 + 32) = 0u;
      *(a6 + 48) = 0u;
      *a6 = 0u;
      *(a6 + 16) = 0u;
      result = icu::DateTimePatternGenerator::adjustFieldTypes(v7, a2, 0, 0, a4, a6);
      goto LABEL_5;
    }

    *a5 = v8;
  }

  *a6 = &unk_1F0935D00;
  *(a6 + 8) = 2;
LABEL_5:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::DateTimePatternGenerator::setDecimal(UChar **this, UChar **a2)
{
  icu::UnicodeString::operator=(this + 577, a2);

  return icu::UnicodeString::getTerminatedBuffer((this + 577));
}

uint64_t icu::DateTimePatternGenerator::setDateTimeFormat(icu::DateTimePatternGenerator *this, UChar **a2)
{
  v3 = (this + 4360);
  v4 = 4;
  do
  {
    icu::UnicodeString::operator=(v3, a2);
    result = icu::UnicodeString::getTerminatedBuffer(v3);
    v3 += 8;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t icu::DateTimePatternGenerator::setDateTimeFormat(uint64_t result, unsigned int a2, UChar **a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a2 < 4)
    {
      v5 = result + (a2 << 6);
      icu::UnicodeString::operator=((v5 + 4360), a3);

      return icu::UnicodeString::getTerminatedBuffer((v5 + 4360));
    }

    else
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t sub_19531A6A4(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (*(a2 + 8))
  {
    v5 = 2;
  }

  else
  {
    v5 = *(a2 + 8) & 0x1E;
  }

  *(a2 + 8) = v5;
  do
  {
    result = sub_19531B00C(a1 + 112, v4++, a2);
  }

  while (v4 != 16);
  return result;
}

uint64_t sub_19531A708(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *(a2 + 8);
  if ((v3 & 0x8000u) == 0)
  {
    v4 = v3 >> 5;
  }

  else
  {
    v4 = *(a2 + 12);
  }

  if (!v4)
  {
    return 0;
  }

  v7 = -71;
  if ((v3 & 2) != 0)
  {
    v8 = (a2 + 10);
  }

  else
  {
    v8 = *(a2 + 24);
  }

  v9 = *v8;
  if ((v9 - 65) >= 0x1A)
  {
    if ((v9 - 97) > 0x19)
    {
      return 0;
    }
  }

  else
  {
    v7 = -65;
  }

  v11 = *(a1 + 8 * (v7 + v9) + 8);
  if (!v11)
  {
    return 0;
  }

  while (1)
  {
    v12 = *(a2 + 8);
    v13 = *(v11 + 16);
    if ((v13 & 1) == 0)
    {
      break;
    }

    if (v12)
    {
      goto LABEL_28;
    }

LABEL_26:
    v11 = *(v11 + 152);
    if (!v11)
    {
      return 0;
    }
  }

  v14 = v12;
  v15 = v12 >> 5;
  if (v14 >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(a2 + 12);
  }

  if ((v13 & 0x8000u) == 0)
  {
    v17 = v13 >> 5;
  }

  else
  {
    v17 = *(v11 + 20);
  }

  if ((v13 & 2) != 0)
  {
    v18 = v11 + 18;
  }

  else
  {
    v18 = *(v11 + 32);
  }

  if (icu::UnicodeString::doCompare(a2, 0, v16, v18, v17 & (v17 >> 31), v17 & ~(v17 >> 31)))
  {
    goto LABEL_26;
  }

LABEL_28:
  *a3 = *(v11 + 144);
  return v11 + 80;
}

uint64_t sub_19531A82C(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  v3 = 16;
  for (i = a2 + 15; !*i; ++i)
  {
    if (!--v3)
    {
      return 0;
    }
  }

  v5 = -71;
  v6 = *(i - 16);
  v7 = *(i - 16);
  if ((v6 - 65) >= 0x1A)
  {
    if ((v7 - 97) > 0x19u)
    {
      return 0;
    }
  }

  else
  {
    v5 = -65;
  }

  v8 = *(a1 + 8 * (v5 + v7) + 8);
  if (!v8)
  {
    return 0;
  }

  while (1)
  {
    v9 = *(v8 + 72);
    if (a3)
    {
      break;
    }

    if (v9[13] == a2[13] && v9[14] == a2[14])
    {
      v14 = v9[15];
      v13 = v9[16];
      if (v14 == a2[15] && v13 == a2[16])
      {
        return v8 + 80;
      }
    }

LABEL_32:
    v8 = *(v8 + 152);
    if (!v8)
    {
      return 0;
    }
  }

  if (v9[9] != a2[9] || v9[10] != a2[10])
  {
    goto LABEL_32;
  }

  if (v9[11] != a2[11] || v9[12] != a2[12])
  {
    goto LABEL_32;
  }

  if (*(v8 + 144))
  {
    *a3 = v9;
  }

  return v8 + 80;
}

uint64_t sub_19531A918(uint64_t result, uint64_t a2, uint64_t a3, UChar **a4, char a5, _DWORD *a6)
{
  v6 = *(a2 + 8);
  if ((v6 & 0x8000u) == 0)
  {
    v7 = v6 >> 5;
  }

  else
  {
    v7 = *(a2 + 12);
  }

  if (!v7)
  {
    goto LABEL_18;
  }

  v10 = result;
  if ((v6 & 2) != 0)
  {
    v11 = (a2 + 10);
  }

  else
  {
    v11 = *(a2 + 24);
  }

  v12 = *v11;
  *a6 = 0;
  if ((v12 - 65) >= 0x1A)
  {
    if ((v12 - 97) < 0x1A)
    {
      v13 = -71;
      goto LABEL_12;
    }

LABEL_18:
    *a6 = 65567;
    return result;
  }

  v13 = -65;
LABEL_12:
  v14 = v13 + v12;
  v15 = *(result + 8 + 8 * v14);
  if (!v15)
  {
    operator new();
  }

  result = sub_19531BDEC(result, a2, a3, *(result + 8 + 8 * v14));
  if (!result)
  {
    do
    {
      v15 = *(v15 + 152);
    }

    while (v15);
    operator new();
  }

  if (*(v10 + 424))
  {
    v16 = result;
    result = icu::UnicodeString::operator=((result + 80), a4);
    *(v16 + 144) = a5;
  }

  return result;
}

uint64_t icu::DateTimePatternGenerator::getAppendFormatNumber(icu::DateTimePatternGenerator *this, const char *__s2)
{
  for (i = 0; i != 16; ++i)
  {
    if (!strcmp(off_1E740D428[i], __s2))
    {
      break;
    }
  }

  return i;
}

uint64_t icu::DateTimePatternGenerator::getFieldAndWidthIndices(uint64_t a1, const char *a2, _DWORD *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  strncpy(__dst, a2, 0x18uLL);
  __dst[24] = 0;
  *a3 = 0;
  v4 = strchr(__dst, 45);
  if (v4)
  {
    v5 = v4;
    v6 = 2;
    while (strcmp(*(&off_1E740D4A8 + v6), v5))
    {
      if (v6-- <= 1)
      {
        goto LABEL_7;
      }
    }

    *a3 = v6;
LABEL_7:
    *v5 = 0;
  }

  for (i = 0; i != 16; ++i)
  {
    if (!strcmp(off_1E740D4C0[i], __dst))
    {
      break;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return i;
}

uint64_t sub_19531ADFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 52)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
LABEL_15:
      v5 = *(a1 + 24);
      v6 = *(v2 + 72);
      v7 = *(v6 + 8);
      v8 = *(v6 + 24);
      v9 = *(v6 + 56);
      *(v5 + 48) = *(v6 + 40);
      *(v5 + 64) = v9;
      *(v5 + 16) = v7;
      *(v5 + 32) = v8;
      *(v5 + 80) = *(v6 + 72);
      *(v5 + 96) = *(v6 + 88);
      *(v5 + 112) = *(v6 + 104);
      *(v5 + 128) = *(v6 + 120);
      *(v5 + 144) = *(v6 + 136);
      return *(a1 + 24);
    }
  }

  else
  {
    v2 = *(a1 + 16);
    v3 = v2;
    do
    {
      if (v3)
      {
        v2 = *(v3 + 152);
        if (v2)
        {
          goto LABEL_14;
        }

        *(a1 + 8) = ++v1;
        *(a1 + 16) = 0;
      }

      else
      {
        if (*(*(a1 + 32) + 8 * v1 + 8))
        {
          v2 = *(*(a1 + 32) + 8 * v1 + 8);
LABEL_14:
          *(a1 + 16) = v2;
          goto LABEL_15;
        }

        *(a1 + 8) = ++v1;
      }

      v3 = 0;
    }

    while (v1 < 52);
    if (v2)
    {
      goto LABEL_15;
    }
  }

  v4 = *(a1 + 24);
  v4[7] = 0u;
  v4[8] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  return *(a1 + 24);
}

BOOL sub_19531AED4(void *a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1[10] != a2[10] || a1[11] != a2[11])
  {
    return 0;
  }

  return a1[12] == a2[12] && a1[13] == a2[13];
}

uint64_t sub_19531AF0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = 0;
  result = 0;
  v7 = 0;
  v8 = 0;
  *(a4 + 8) = 0;
  v9 = a1 + 16;
  v10 = a2 + 16;
  do
  {
    v11 = 1 << v5;
    if (((1 << v5) & a3) == 0)
    {
      if (!*(v10 + 4 * v5))
      {
        goto LABEL_12;
      }

LABEL_11:
      result = (result + 0x10000);
      v8 |= v11;
      *(a4 + 12) = v8;
      goto LABEL_12;
    }

    v12 = *(v9 + 4 * v5);
    v13 = *(v10 + 4 * v5);
    if (v12 == v13)
    {
      goto LABEL_12;
    }

    if (!v12)
    {
      goto LABEL_11;
    }

    if (v13)
    {
      if (v12 - v13 >= 0)
      {
        v14 = v12 - v13;
      }

      else
      {
        v14 = v13 - v12;
      }

      result = (v14 + result);
    }

    else
    {
      result = (result + 4096);
      v7 |= v11;
      *(a4 + 8) = v7;
    }

LABEL_12:
    ++v5;
  }

  while (v5 != 16);
  return result;
}

void *sub_19531AF9C(void *a1)
{
  *a1 = &unk_1F093A4F0;
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_19531B00C(uint64_t a1, int a2, uint64_t a3)
{
  v4 = (a1 + a2);
  v5 = v4[16];
  if (v5 >= 1)
  {
    v6 = *v4;
    do
    {
      v8 = v6;
      icu::UnicodeString::doAppend(a3, &v8, 0, 1);
      --v5;
    }

    while (v5);
  }

  return a3;
}

uint64_t icu::DateTimePatternGenerator::defaultHourPeriodCharForHourCycle(uint64_t a1, int a2)
{
  result = *(a1 + 4760);
  if ((a2 & 0x40000000) != 0)
  {
    if (result == 72 || result == 107)
    {
      return result;
    }

    if ((a2 & 0x20000000) == 0)
    {
LABEL_9:
      v4 = 0;
      v5 = a1 + 4764;
      while (1)
      {
        v6 = *(v5 + v4);
        if (v6 <= 1)
        {
          if (v6)
          {
            if (v6 != 1)
            {
              if (v6 == -1)
              {
                return result;
              }

              goto LABEL_28;
            }

LABEL_21:
            if ((a2 & 0x40000000) != 0)
            {
              return 72;
            }

            goto LABEL_28;
          }

LABEL_23:
          if ((a2 & 0x20000000) != 0)
          {
            return 104;
          }

          goto LABEL_28;
        }

        if (v6 > 9)
        {
          goto LABEL_15;
        }

        v7 = 1 << v6;
        if (((1 << v6) & 0x30) != 0)
        {
          goto LABEL_23;
        }

        if ((v7 & 0xC0) == 0)
        {
          break;
        }

LABEL_25:
        if ((a2 & 0x20000000) != 0)
        {
          return 75;
        }

LABEL_28:
        v4 += 4;
        if (v4 == 28)
        {
          return result;
        }
      }

      if ((v7 & 0x300) != 0)
      {
        goto LABEL_21;
      }

LABEL_15:
      if (v6 != 2)
      {
        if (v6 == 3 && (a2 & 0x40000000) != 0)
        {
          return 107;
        }

        goto LABEL_28;
      }

      goto LABEL_25;
    }
  }

  else if ((a2 & 0x20000000) == 0)
  {
    return result;
  }

  if (result != 75 && result != 104)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t icu::DateTimePatternGenerator::getTopBitNumber(icu::DateTimePatternGenerator *this, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = -1;
  do
  {
    ++v2;
    v3 = a2 > 1;
    a2 >>= 1;
  }

  while (v3);
  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

uint64_t icu::DateTimePatternGenerator::getSkeletons(icu::DateTimePatternGenerator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(this + 1198);
  if (v3 < U_ILLEGAL_ARGUMENT_ERROR)
  {
    operator new();
  }

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t icu::DateTimePatternGenerator::getPatternForSkeleton(icu::DateTimePatternGenerator *this, const icu::UnicodeString *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (*(a2 + 4) < 0)
  {
    if (!*(a2 + 3))
    {
      goto LABEL_30;
    }
  }

  else if (v4 <= 0x1F)
  {
    goto LABEL_30;
  }

  v5 = -71;
  if ((v4 & 2) != 0)
  {
    v6 = (a2 + 10);
  }

  else
  {
    v6 = *(a2 + 3);
  }

  v7 = *v6;
  if ((v7 - 65) >= 0x1A)
  {
    if ((v7 - 97) > 0x19)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v5 = -65;
  }

  for (i = *(*(this + 32) + 8 * (v5 + v7) + 8); i; i = *(i + 152))
  {
    sub_195317464(*(i + 72), v18);
    if (v19)
    {
      v15 = *(a2 + 4);
      icu::UnicodeString::~UnicodeString(v19, v18);
      if (v15)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if ((v19 & 0x8000u) == 0)
      {
        v9 = v19 >> 5;
      }

      else
      {
        v9 = v20;
      }

      v10 = *(a2 + 4);
      if (v10 >= 0)
      {
        v11 = v10 >> 5;
      }

      else
      {
        v11 = *(a2 + 3);
      }

      if ((v10 & 1) != 0 || v9 != v11)
      {
        icu::UnicodeString::~UnicodeString(v10, v18);
      }

      else
      {
        if ((v10 & 2) != 0)
        {
          v12 = a2 + 10;
        }

        else
        {
          v12 = *(a2 + 3);
        }

        v13 = icu::UnicodeString::doEquals(v18, v12, v9);
        icu::UnicodeString::~UnicodeString(v14, v18);
        if (v13)
        {
LABEL_32:
          result = i + 80;
          goto LABEL_31;
        }
      }
    }
  }

LABEL_30:
  result = this + 4696;
LABEL_31:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::DateTimePatternGenerator::getBaseSkeletons(icu::DateTimePatternGenerator *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(this + 1198);
  if (v3 < U_ILLEGAL_ARGUMENT_ERROR)
  {
    operator new();
  }

  result = 0;
  *a2 = v3;
  return result;
}

uint64_t icu::DateTimePatternGenerator::getRedundants(icu::DateTimePatternGenerator *this, UErrorCode *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v2 = *(this + 1198);
    if (v2 < U_ILLEGAL_ARGUMENT_ERROR)
    {
      operator new();
    }

    *a2 = v2;
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

BOOL icu::DateTimePatternGenerator::isCanonicalItem(icu::DateTimePatternGenerator *this, const icu::UnicodeString *a2)
{
  v2 = *(a2 + 4);
  if ((v2 & 0x8000u) == 0)
  {
    v3 = v2 >> 5;
  }

  else
  {
    v3 = *(a2 + 3);
  }

  if (v3 != 1)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    v4 = (a2 + 10);
  }

  else
  {
    v4 = *(a2 + 3);
  }

  v5 = *v4;
  if (v5 == 71)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v7 == 15)
    {
      break;
    }

    v9 = aGyqmwwedfdahms[++v7];
  }

  while (v5 != v9);
  return v8 < 0xF;
}

void *sub_19531BA10@<X0>(uint64_t a1@<X0>, icu::UnicodeString *a2@<X8>)
{
  v4 = 0;
  v13 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v12 = 0;
  v11 = 0u;
  v8 = &unk_1F0935D00;
  LOWORD(v9) = 2;
  do
  {
    sub_19531B00C(a1 + 80, v4++, &v8);
  }

  while (v4 != 16);
  icu::UnicodeString::UnicodeString(a2, &v8);
  result = icu::UnicodeString::~UnicodeString(v5, &v8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19531BADC(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    if (*(result + 120))
    {
      operator new();
    }

    operator new();
  }

  return result;
}

uint64_t sub_19531BC70(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v7 = result;
    result = *result;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *v7 = a2;
    if (!a2)
    {
      *a3 = 7;
    }
  }

  else if (a2)
  {
    v4 = *(*a2 + 8);
    v5 = *a2 + 8;

    return v4(a2);
  }

  return result;
}

void *sub_19531BD30(void *a1)
{
  *a1 = &unk_1F093A488;
  for (i = 1; i != 53; ++i)
  {
    v3 = a1[i];
    if (v3)
    {
      (*(*v3 + 8))(v3);
      a1[i] = 0;
    }
  }

  return a1;
}

void sub_19531BDB4(void *a1)
{
  sub_19531BD30(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19531BDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a4)
  {
    v6 = a3 + 8;
    do
    {
      v7 = *(a2 + 8);
      v8 = *(v4 + 16);
      if (v8)
      {
        if (v7)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v9 = v7;
        v10 = v7 >> 5;
        if (v9 >= 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = *(a2 + 12);
        }

        if ((v8 & 0x8000u) == 0)
        {
          v12 = v8 >> 5;
        }

        else
        {
          v12 = *(v4 + 20);
        }

        if ((v8 & 2) != 0)
        {
          v13 = v4 + 18;
        }

        else
        {
          v13 = *(v4 + 32);
        }

        if (!icu::UnicodeString::doCompare(a2, 0, v11, v13, v12 & (v12 >> 31), v12 & ~(v12 >> 31)))
        {
LABEL_18:
          v14 = 0;
          while (*(*(v4 + 72) + 8 + v14) == *(v6 + v14))
          {
            v14 += 4;
            if (v14 == 64)
            {
              return v4;
            }
          }
        }
      }

      v4 = *(v4 + 152);
    }

    while (v4);
  }

  return v4;
}

BOOL sub_19531BEC4(void *a1, void *a2)
{
  v2 = a1[9] == a2[9] && a1[10] == a2[10];
  if (v2 && (a1[11] == a2[11] ? (v3 = a1[12] == a2[12]) : (v3 = 0), v3 && (a1[13] == a2[13] ? (v4 = a1[14] == a2[14]) : (v4 = 0), v4 && (a1[15] == a2[15] ? (v5 = a1[16] == a2[16]) : (v5 = 0), v5))))
  {
    return memcmp(a1 + 1, a2 + 1, 0x40uLL) == 0;
  }

  else
  {
    return 0;
  }
}

void sub_19531BF60(void *a1)
{
  *a1 = &unk_1F093A4C8;
  for (i = 393; i != -7; i -= 8)
  {
    icu::UnicodeString::~UnicodeString(&a1[i]);
  }

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19531BFD8(uint64_t a1, uint64_t a2, signed int a3, int *a4)
{
  v4 = *(a2 + 8);
  v5 = v4 >> 5;
  if ((v4 & 0x8000u) != 0)
  {
    v5 = *(a2 + 12);
  }

  if (v5 <= a3)
  {
    return 3;
  }

  v6 = 0;
  if ((v4 & 2) != 0)
  {
    v7 = a2 + 10;
  }

  else
  {
    v7 = *(a2 + 24);
  }

  v8 = a3;
  while (v5 > v8 && (*(v7 + 2 * v8) & 0xFFDFu) - 65 <= 0x19)
  {
    if (v5 <= v8 + 1)
    {
      v9 = 0xFFFF;
    }

    else
    {
      v9 = *(v7 + 2 * v8 + 2);
    }

    if (v5 <= a3)
    {
      v10 = 0xFFFF;
    }

    else
    {
      v10 = *(v7 + 2 * a3);
    }

    ++v6;
    if (v9 == v10 && v8++ < v5)
    {
      continue;
    }

    goto LABEL_21;
  }

  v6 = 1;
LABEL_21:
  *a4 = v6;
  return 1;
}

uint64_t sub_19531C09C(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    if (v2 >= 0x20)
    {
      v3 = v2 >> 5;
      goto LABEL_5;
    }

    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 12);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_5:
  v4 = *(a1 + 24);
  if ((v2 & 2) != 0)
  {
    v4 = (a1 + 10);
  }

  v5 = *v4;
  if (v3 > 1)
  {
    v6 = v2;
    LODWORD(v7) = v2 >> 5;
    if (v6 >= 0)
    {
      v7 = v7;
    }

    else
    {
      v7 = *(a1 + 12);
    }

    v8 = 1;
    do
    {
      v9 = v8 >= v7 ? 0xFFFF : v4[v8];
      if (v5 != v9)
      {
        return 0xFFFFFFFFLL;
      }
    }

    while (v3 != ++v8);
  }

  v10 = 0;
  LODWORD(result) = -1;
  v12 = 71;
  do
  {
    v13 = result;
    v14 = &aG_2[16 * v10 + 16];
    result = v10;
    while (v12 != v5)
    {
      v15 = *v14;
      v14 += 16;
      v12 = v15;
      result = (result + 1);
      if (!v15)
      {
        if (a2)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return v13;
        }
      }
    }

    v10 = (result + 1);
    v16 = &aG_2[16 * v10];
    if (v5 != *v16)
    {
      break;
    }

    v17 = *(v16 + 5);
    v12 = *v4;
  }

  while (v3 >= v17);
  return result;
}

uint64_t sub_19531C1AC(uint64_t result, int *a2)
{
  *result = &unk_1F093A4F0;
  *(result + 8) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  if (*a2 <= 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_19531C27C(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v7 = result;
    result = *result;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *v7 = a2;
    if (!a2)
    {
      *a3 = 7;
    }
  }

  else if (a2)
  {
    v4 = *(*a2 + 8);
    v5 = *a2 + 8;

    return v4(a2);
  }

  return result;
}

void sub_19531C33C(void *a1)
{
  *a1 = &unk_1F093A4F0;
  v1 = a1[3];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19A8B2600);
}

void *sub_19531C3DC(void *a1)
{
  *a1 = &unk_1F093A530;
  v2 = a1[19];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::UnicodeString::~UnicodeString((a1 + 10));
  v3 = a1[9];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeString::~UnicodeString((a1 + 1));
  return a1;
}

void sub_19531C488(void *a1)
{
  sub_19531C3DC(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_19531C4C0(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = icu::StringEnumeration::StringEnumeration(a1);
  *v1 = &unk_1F093A550;
  *(v1 + 120) = 0;
  v3 = 0u;
  v4 = 0u;
  v6 = 0;
  v5 = 0u;
  v2 = &unk_1F0935D00;
  LOWORD(v3) = 2;
  *(v1 + 116) = 0;
  operator new();
}

BOOL sub_19531C718(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((v2 & 0x8000u) == 0)
  {
    v3 = v2 >> 5;
  }

  else
  {
    v3 = *(a2 + 12);
  }

  if (v3 != 1)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    v4 = (a2 + 10);
  }

  else
  {
    v4 = *(a2 + 24);
  }

  v5 = *v4;
  if (v5 == 71)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    v8 = v7;
    if (v7 == 15)
    {
      break;
    }

    v9 = aGyqmwwedfdahms[++v7];
  }

  while (v5 != v9);
  return v8 < 0xF;
}

uint64_t sub_19531C79C(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(a1 + 120);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 116);
  if (v4 >= *(v3 + 2))
  {
    return 0;
  }

  *(a1 + 116) = v4 + 1;
  return icu::UVector::elementAt(v3, v4);
}

uint64_t sub_19531C7E0(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

void sub_19531C7F8(icu::StringEnumeration *this)
{
  *this = &unk_1F093A550;
  v2 = *(this + 15);
  if (v2)
  {
    if (*(v2 + 2) >= 1)
    {
      v3 = 0;
      do
      {
        v4 = icu::UVector::elementAt(v2, v3);
        if (v4)
        {
          (*(*v4 + 8))(v4);
        }

        ++v3;
        v2 = *(this + 15);
      }

      while (v3 < *(v2 + 2));
    }

    (*(*v2 + 8))(v2);
  }

  icu::StringEnumeration::~StringEnumeration(this);
}

void sub_19531C8CC(icu::StringEnumeration *a1)
{
  sub_19531C7F8(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19531C904(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(a1 + 120);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 116);
  if (v4 >= *(v3 + 2))
  {
    return 0;
  }

  *(a1 + 116) = v4 + 1;
  return icu::UVector::elementAt(v3, v4);
}

uint64_t sub_19531C948(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    return *(v1 + 8);
  }

  else
  {
    return 0;
  }
}

void sub_19531C960(icu::StringEnumeration *this)
{
  *this = &unk_1F093A5B8;
  v2 = *(this + 15);
  if (v2)
  {
    if (*(v2 + 2) >= 1)
    {
      v3 = 0;
      do
      {
        v4 = icu::UVector::elementAt(v2, v3);
        if (v4)
        {
          (*(*v4 + 8))(v4);
        }

        ++v3;
        v2 = *(this + 15);
      }

      while (v3 < *(v2 + 2));
    }

    (*(*v2 + 8))(v2);
  }

  icu::StringEnumeration::~StringEnumeration(this);
}

void sub_19531CA34(icu::StringEnumeration *a1)
{
  sub_19531C960(a1);

  JUMPOUT(0x19A8B2600);
}

BOOL sub_19531CA6C(int32_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  icu::StringCharacterIterator::StringCharacterIterator(v20, a1);
  v2 = icu::UCharCharacterIterator::first(v20);
  if (!icu::UCharCharacterIterator::hasNext(v20))
  {
LABEL_34:
    v11 = 0;
    goto LABEL_35;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = -1;
  v7 = -1;
  v8 = -1;
  do
  {
    v9 = (v2 - 76);
    if (v9 <= 0x2D && ((1 << (v2 - 76)) & 0x224001002003) != 0)
    {
      v7 = HIDWORD(v20[0]);
      if (v8 == -1)
      {
        v8 = HIDWORD(v20[0]);
      }

      if (((1 << (v2 - 76)) & 0x224000002000) != 0)
      {
        v3 = 1;
      }

      else if (((1 << (v2 - 76)) & 3) != 0)
      {
        if (v5 > 1)
        {
          goto LABEL_34;
        }

        ++v5;
      }

      else if (v9 == 24)
      {
        v4 = 1;
      }
    }

    else if (u_isalpha(v2))
    {
      if (v6 == -1 && v8 != -1)
      {
        v6 = HIDWORD(v20[0]);
      }
    }

    else if (!u_isspace(v2) && !u_ispunct(v2) && v2 != 8207)
    {
      goto LABEL_34;
    }

    v2 = icu::UCharCharacterIterator::next(v20);
  }

  while (icu::UCharCharacterIterator::hasNext(v20));
  v11 = 0;
  v12 = v3 != 0;
  v13 = v4 != 0;
  if ((v8 & 0x80000000) == 0 && (v7 & 0x80000000) == 0)
  {
    v14 = *(a1 + 4);
    v15 = v14;
    v16 = v14 >> 5;
    if (v15 >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = a1[3];
    }

    if (icu::UnicodeString::doIndexOf(a1, 0x27u, 0, v17) == -1 && (v6 == -1 || v6 >= v7))
    {
      v11 = v13 + (v5 > 0) + v12 > 1;
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_35:
  icu::StringCharacterIterator::~StringCharacterIterator(v20);
  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_19531CC94(uint64_t a1, char *__s2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = off_1E740D428;
  v10 = 272;
  while (1)
  {
    result = strcmp(*v9, __s2);
    if (!result)
    {
      break;
    }

    v10 += 64;
    ++v9;
    if (v10 == 1296)
    {
      goto LABEL_9;
    }
  }

  v18 = 0;
  v17 = (*(*a3 + 32))(a3, &v18, a5);
  icu::UnicodeString::UnicodeString(&v19, 1, &v17);
  v12 = (*(a1 + 8) + v10);
  v15 = *v12;
  v14 = (v12 - 4);
  v13 = v15;
  if (v15 <= 0x1F)
  {
    v13 = v20;
    if (v20 >= 0x20u)
    {
      icu::UnicodeString::operator=(v14, &v19);
      icu::UnicodeString::getTerminatedBuffer(v14);
    }
  }

  result = icu::UnicodeString::~UnicodeString(v13, &v19);
LABEL_9:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19531CDD0(uint64_t a1, const char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0;
  result = icu::DateTimePatternGenerator::getFieldAndWidthIndices(a1, a2, &v17);
  if (result != 16)
  {
    v9 = result;
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    result = (*(*a3 + 88))(v15, a3, a5);
    if (*a5 <= 0)
    {
      result = icu::ResourceTable::findValue(v15, "dn", a3);
      if (result)
      {
        v18 = 0;
        v19 = (*(*a3 + 32))(a3, &v18, a5);
        icu::UnicodeString::UnicodeString(&v21, 1, &v19);
        v10 = *a5;
        if (v10 <= 0)
        {
          v11 = v17;
          icu::UnicodeString::UnicodeString(&v19, (*(a1 + 8) + 192 * v9 + (v17 << 6) + 1288));
          if (v20 < 0x20u)
          {
            v12 = v22;
            icu::UnicodeString::~UnicodeString(v20, &v19);
            if (v12 >= 0x20)
            {
              v13 = *(a1 + 8) + 192 * v9 + (v11 << 6);
              icu::UnicodeString::operator=((v13 + 1288), &v21);
              icu::UnicodeString::getTerminatedBuffer((v13 + 1288));
            }
          }

          else
          {
            icu::UnicodeString::~UnicodeString(v20, &v19);
          }
        }

        result = icu::UnicodeString::~UnicodeString(v10, &v21);
      }
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_19531CF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v16 = 0;
  memset(v23, 0, sizeof(v23));
  icu::UnicodeString::UnicodeString(v23, a2, 0xFFFFFFFFLL, 0);
  memset(v22, 0, sizeof(v22));
  LODWORD(v17) = 0;
  v19 = (*(*a3 + 32))(a3, &v17, &v16);
  icu::UnicodeString::UnicodeString(v22, 1, &v19);
  v8 = v16;
  if (v16 <= 0 && uhash_geti(**(*(a1 + 8) + 4688), v23) != 1 && (!*(a1 + 16) || sub_19531CA6C(v22)))
  {
    if (!icu::Locale::isRightToLeft((*(a1 + 8) + 8)))
    {
      icu::UnicodeString::UnicodeString(&v19, 8207);
      v17 = &unk_1F0935D00;
      v18 = 2;
      if ((SWORD4(v22[0]) & 0x8000u) == 0)
      {
        v9 = WORD4(v22[0]) >> 5;
      }

      else
      {
        v9 = HIDWORD(v22[0]);
      }

      if ((v20 & 0x8000u) == 0)
      {
        v10 = v20 >> 5;
      }

      else
      {
        v10 = v21;
      }

      icu::UnicodeString::findAndReplace(v22, 0, v9, &v19, 0, v10, &v17, 0, 0);
      icu::UnicodeString::~UnicodeString(v11, &v17);
      icu::UnicodeString::~UnicodeString(v12, &v19);
    }

    icu::DateTimePatternGenerator::setAvailableFormat(*(a1 + 8), v23, a5);
  }

  icu::UnicodeString::~UnicodeString(v8, v22);
  result = icu::UnicodeString::~UnicodeString(v13, v23);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19531D1B0(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_19531D1E8(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v44 = 0;
  __s1 = a2;
  memset(v43, 0, sizeof(v43));
  (*(*a3 + 88))(v43, a3, a5);
  if (*a5 <= 0 && icu::ResourceTable::getKeyAndValue(v43, 0, &__s1, a3))
  {
    v7 = 0;
    v8 = "allowed";
    v9 = "preferred";
    while (1)
    {
      v10 = __s1;
      v42 = 0;
      memset(v41, 0, sizeof(v41));
      (*(*a3 + 88))(v41, a3, a5);
      if (*a5 > 0)
      {
        break;
      }

      v36 = v10;
      if (icu::ResourceTable::getKeyAndValue(v41, 0, &__s1, a3))
      {
        v35 = v7;
        v11 = 0;
        LODWORD(v38) = 0;
        v12 = 0;
        v37 = -1;
        do
        {
          v13 = __s1;
          if (!strcmp(__s1, v8))
          {
            if ((*(*a3 + 24))(a3))
            {
              v16 = v9;
              v17 = v8;
              v39[0] = 0;
              v39[1] = 0;
              v40 = 0;
              (*(*a3 + 80))(v39, a3, a5);
              v18 = v40;
              if (v40 < -1)
              {
                goto LABEL_33;
              }

              v19 = malloc_type_malloc(4 * (v40 + 2), 0x100004052888210uLL);
              if (!v19)
              {
                goto LABEL_33;
              }

              v20 = v19;
              v38 = (v18 + 1);
              bzero(v19, 4 * (v18 + 2));
              free(v12);
              if (v18 >= 1)
              {
                v21 = 0;
                do
                {
                  icu::ResourceArray::getValue(v39, v21, a3);
                  v47 = 0;
                  v46 = (*(*a3 + 32))(a3, &v47, a5);
                  v22 = icu::UnicodeString::UnicodeString(v48, 1, &v46);
                  v20[v21 + 1] = sub_19531D6F4(v22);
                  icu::UnicodeString::~UnicodeString(v23, v48);
                  ++v21;
                }

                while (v38 - 1 != v21);
              }

              v12 = v20;
              v8 = v17;
              v9 = v16;
            }

            else
            {
              v24 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
              if (!v24)
              {
                goto LABEL_33;
              }

              v25 = v24;
              v24[2] = 0;
              *v24 = 0;
              free(v12);
              LODWORD(v46) = 0;
              v39[0] = (*(*a3 + 32))(a3, &v46, a5);
              v26 = icu::UnicodeString::UnicodeString(v48, 1, v39);
              v25[1] = sub_19531D6F4(v26);
              icu::UnicodeString::~UnicodeString(v27, v48);
              LODWORD(v38) = 2;
              v12 = v25;
            }
          }

          else if (!strcmp(v13, v9))
          {
            LODWORD(v46) = 0;
            v39[0] = (*(*a3 + 32))(a3, &v46, a5);
            v14 = icu::UnicodeString::UnicodeString(v48, 1, v39);
            v37 = sub_19531D6F4(v14);
            icu::UnicodeString::~UnicodeString(v15, v48);
          }

          ++v11;
        }

        while (icu::ResourceTable::getKeyAndValue(v41, v11, &__s1, a3));
        if (v38 >= 2)
        {
          v28 = v37;
          v29 = v36;
          if (v37 == -1)
          {
            v28 = v12[1];
          }

          *v12 = v28;
          v30 = v38;
          v7 = v35;
          goto LABEL_30;
        }

        v7 = v35;
      }

      else
      {
        v12 = 0;
        v37 = -1;
      }

      v31 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
      if (!v31)
      {
LABEL_33:
        *a5 = 7;
        free(v12);
        break;
      }

      v32 = v31;
      v31[2] = 0;
      *v31 = 0;
      free(v12);
      v33 = v37;
      if (v37 == -1)
      {
        v33 = 1;
      }

      *v32 = v33;
      v32[1] = v33;
      v12 = v32;
      v30 = 2;
      v29 = v36;
LABEL_30:
      v12[v30] = -1;
      uhash_put(qword_1ED442BA8, v29, v12, a5);
      if (*a5 < 1)
      {
        if (icu::ResourceTable::getKeyAndValue(v43, ++v7, &__s1, a3))
        {
          continue;
        }
      }

      break;
    }
  }

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19531D6F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(a1 + 8) < 0)
  {
    v2 = *(a1 + 12);
    if (v2 == 1)
    {
      goto LABEL_17;
    }

    if (v2 != 2)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_7:
    if ((v1 & 2) != 0)
    {
      v3 = (a1 + 10);
    }

    else
    {
      v3 = *(a1 + 24);
    }

    if (*v3 == 104)
    {
      v4 = *(a1 + 12);
      if ((v1 & 0x8000u) == 0)
      {
        v5 = v1 >> 5;
      }

      else
      {
        v5 = *(a1 + 12);
      }

      if (v5 >= 2 && v3[1] == 98)
      {
        return 4;
      }
    }

    else
    {
      v4 = *(a1 + 12);
    }

    if ((v1 & 0x8000u) == 0)
    {
      v11 = v1 >> 5;
    }

    else
    {
      v11 = v4;
    }

    if (v11)
    {
      v12 = *(a1 + 24);
      if ((v1 & 2) != 0)
      {
        v12 = (a1 + 10);
      }

      v13 = *v12 != 104 || v11 == 1;
      if (!v13 && v12[1] == 66)
      {
        return 5;
      }

      v14 = *(a1 + 24);
      if ((v1 & 2) != 0)
      {
        v14 = (a1 + 10);
      }

      v15 = *v14 != 75 || v11 == 1;
      if (!v15 && v14[1] == 98)
      {
        return 6;
      }

      v16 = *(a1 + 24);
      if ((v1 & 2) != 0)
      {
        v16 = (a1 + 10);
      }

      v17 = *v16 != 75 || v11 == 1;
      if (!v17 && v16[1] == 66)
      {
        return 7;
      }

      v18 = *(a1 + 24);
      if ((v1 & 2) != 0)
      {
        v18 = (a1 + 10);
      }

      v19 = *v18 != 72 || v11 == 1;
      if (!v19 && v18[1] == 98)
      {
        return 8;
      }

      v20 = (v1 & 2) != 0 ? (a1 + 10) : *(a1 + 24);
      if (*v20 == 72 && v11 != 1 && v20[1] == 66)
      {
        return 9;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if ((v1 & 0x7FE0) == 0x40)
  {
    goto LABEL_7;
  }

  if ((v1 & 0x7FE0) != 0x20)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_17:
  v7 = (a1 + 10);
  if ((v1 & 2) == 0)
  {
    v7 = *(a1 + 24);
  }

  v8 = *v7;
  if (v8 == 104)
  {
    return 0;
  }

  v9 = v1;
  v10 = v1 >> 5;
  if (v9 < 0)
  {
    v10 = *(a1 + 12);
  }

  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  if (v8 == 72)
  {
    return 1;
  }

  if (v8 != 75)
  {
    if (v8 == 107)
    {
      return 3;
    }

    return 0xFFFFFFFFLL;
  }

  return 2;
}

uint64_t icu::DateTimeRule::DateTimeRule(uint64_t result, int a2, int a3, int a4, int a5)
{
  *result = &unk_1F093A820;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = 0;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 32) = a5;
  return result;
}

{
  *result = &unk_1F093A820;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = 0;
  *(result + 24) = a4;
  *(result + 28) = 0;
  *(result + 32) = a5;
  return result;
}

uint64_t icu::DateTimeRule::DateTimeRule(uint64_t result, int a2, int a3, int a4, int a5, int a6)
{
  *result = &unk_1F093A820;
  *(result + 8) = a2;
  *(result + 12) = 0;
  *(result + 16) = a4;
  *(result + 20) = a3;
  *(result + 24) = a5;
  *(result + 28) = 1;
  *(result + 32) = a6;
  return result;
}

{
  *result = &unk_1F093A820;
  *(result + 8) = a2;
  *(result + 12) = 0;
  *(result + 16) = a4;
  *(result + 20) = a3;
  *(result + 24) = a5;
  *(result + 28) = 1;
  *(result + 32) = a6;
  return result;
}

uint64_t icu::DateTimeRule::DateTimeRule(uint64_t result, int a2, int a3, int a4, int a5, int a6, int a7)
{
  *result = &unk_1F093A820;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a4;
  *(result + 20) = 0;
  if (a5)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  *(result + 24) = a6;
  *(result + 28) = v7;
  *(result + 32) = a7;
  return result;
}

{
  *result = &unk_1F093A820;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a4;
  *(result + 20) = 0;
  if (a5)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  *(result + 24) = a6;
  *(result + 28) = v7;
  *(result + 32) = a7;
  return result;
}

double icu::DateTimeRule::DateTimeRule(icu::DateTimeRule *this, const icu::DateTimeRule *a2)
{
  *this = &unk_1F093A820;
  *(this + 8) = *(a2 + 8);
  result = *(a2 + 3);
  *(this + 3) = result;
  *(this + 8) = *(a2 + 8);
  return result;
}

{
  *this = &unk_1F093A820;
  *(this + 8) = *(a2 + 8);
  result = *(a2 + 3);
  *(this + 3) = result;
  *(this + 8) = *(a2 + 8);
  return result;
}

void icu::DateTimeRule::~DateTimeRule(icu::DateTimeRule *this)
{
  icu::UObject::~UObject(this);

  JUMPOUT(0x19A8B2600);
}

double icu::DateTimeRule::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    result = *(a2 + 24);
    *(a1 + 24) = result;
    *(a1 + 32) = *(a2 + 32);
  }

  return result;
}

BOOL icu::DateTimeRule::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (result)
  {
    return *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

icu::EraRules *icu::EraRules::EraRules(icu::EraRules *a1, void *a2, int a3)
{
  *a1 = 0;
  *(a1 + 2) = a3;
  *a1 = *a2;
  *a2 = 0;
  icu::EraRules::initCurrentEra(a1);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 2) = a3;
  *a1 = *a2;
  *a2 = 0;
  icu::EraRules::initCurrentEra(a1);
  return a1;
}

BOOL icu::EraRules::initCurrentEra(icu::EraRules *this)
{
  v19 = 0;
  Now = ucal_getNow();
  v4 = v3;
  v17 = 0;
  v18 = 0;
  Default = icu::TimeZone::createDefault(Now);
  if (Default)
  {
    v6 = Default;
    (*(*Default + 48))(Default, 0, &v18, &v17, &v19, v4);
    (*(*v6 + 8))(v6);
    v4 = v4 + (v17 + v18);
  }

  v16 = 0;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  result = sub_195329158(&v16, &v15 + 1, &v15, &v14 + 1, &v14, &v13, &v19, v4);
  if (v19 <= 0)
  {
    v8 = *(this + 2);
    if (v8 >= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = *(this + 2);
    }

    v10 = v9 - 1;
    v11 = v8 - 1;
    while (v8 >= 2)
    {
      v12 = *(*this + 4 * v11);
      LODWORD(v8) = v8 - 1;
      --v11;
      if ((v15 | (v16 << 16) | ((HIDWORD(v15) << 8) + 256)) >= v12)
      {
        goto LABEL_12;
      }
    }

    LODWORD(v8) = v10;
LABEL_12:
    *(this + 3) = v8;
  }

  return result;
}

void icu::EraRules::~EraRules(void **this)
{
  free(*this);
}

{
  free(*this);
}

uint64_t icu::EraRules::createInstance(icu::EraRules *this, const char *a2, UErrorCode *a3, UErrorCode *a4)
{
  if (*a3 <= 0)
  {
    v6 = ures_openDirect(0, "supplementalData", a3);
    ures_getByKey(v6, "calendarData", v6, a3);
    ures_getByKey(v6, this, v6, a3);
    ures_getByKey(v6, "eras", v6, a3);
    if (*a3 <= 0)
    {
      Size = ures_getSize(v6);
      v8 = malloc_type_malloc(4 * Size, 0x100004052888210uLL);
      v9 = v8;
      if (!v8)
      {
        *a3 = U_MEMORY_ALLOCATION_ERROR;
        goto LABEL_52;
      }

      bzero(v8, 4 * Size);
      v29 = 0x7FFFFFFF;
      while (1)
      {
        if (!ures_hasNext(v6))
        {
          operator new();
        }

        NextResource = ures_getNextResource(v6, 0, a3);
        v11 = NextResource;
        if (*a3 > 0)
        {
LABEL_7:
          v12 = 0;
          if (v11)
          {
            goto LABEL_14;
          }

          goto LABEL_15;
        }

        Key = ures_getKey(NextResource);
        __endptr = 0;
        v14 = strtol(Key, &__endptr, 10);
        if (&__endptr[-Key] != strlen(Key))
        {
          goto LABEL_13;
        }

        if (v14 < 0)
        {
          goto LABEL_13;
        }

        if (Size <= v14)
        {
          goto LABEL_13;
        }

        v15 = v14 & 0x7FFFFFFF;
        if (v9[v15])
        {
          goto LABEL_13;
        }

        v30 = 1;
        v31 = 0;
        while (ures_hasNext(v11))
        {
          v16 = ures_getNextResource(v11, 0, a3);
          v17 = v16;
          if (*a3 > 0)
          {
            goto LABEL_20;
          }

          v19 = ures_getKey(v16);
          if (!strcmp(v19, "start"))
          {
            IntVector = ures_getIntVector(v17, &v31, a3);
            if (*a3 > 0)
            {
LABEL_20:
              v18 = 0;
              if (!v17)
              {
                goto LABEL_29;
              }

              goto LABEL_28;
            }

            if (v31 != 3 || (v24 = *IntVector, v24 != v24) || (v25 = IntVector[1], (v25 - 13) < 0xFFFFFFF4) || (v26 = IntVector[2], (v26 - 32) <= 0xFFFFFFE0))
            {
              v18 = 0;
              *a3 = U_INVALID_FORMAT_ERROR;
              if (!v17)
              {
                goto LABEL_29;
              }

LABEL_28:
              ures_close(v17);
              goto LABEL_29;
            }

            v9[v15] = (v25 << 8) | (v24 << 16) | v26;
          }

          else if (!strcmp(v19, "named"))
          {
            String = ures_getString(v17, &v31, a3);
            v21 = u_strncmp(String, "f", 5);
            v22 = v30;
            if (!v21)
            {
              v22 = 0;
            }

            v30 = v22;
          }

          v18 = 1;
          if (v17)
          {
            goto LABEL_28;
          }

LABEL_29:
          if ((v18 & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        if (v9[v15])
        {
          goto LABEL_40;
        }

        if (v14)
        {
          goto LABEL_13;
        }

        v9[v15] = -2147483391;
LABEL_40:
        if (v30)
        {
          if (v29 > v14)
          {
            goto LABEL_48;
          }

LABEL_13:
          v12 = 0;
          *a3 = U_INVALID_FORMAT_ERROR;
          if (v11)
          {
LABEL_14:
            ures_close(v11);
          }
        }

        else
        {
          v27 = v29;
          if (v29 >= v14)
          {
            v27 = v14;
          }

          v29 = v27;
LABEL_48:
          v12 = 1;
          if (v11)
          {
            goto LABEL_14;
          }
        }

LABEL_15:
        if ((v12 & 1) == 0)
        {
LABEL_52:
          free(v9);
          break;
        }
      }
    }

    if (v6)
    {
      ures_close(v6);
    }
  }

  return 0;
}

uint64_t icu::EraRules::getStartDate(uint64_t this, unsigned int a2, int (*a3)[3], UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    if ((a2 & 0x80000000) != 0 || *(this + 8) <= a2)
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v4 = *(*this + 4 * a2);
      v5 = BYTE1(v4);
      v6 = v4;
      if (v4 == -2147483391)
      {
        v7 = -1;
      }

      else
      {
        v7 = v4 >> 16;
      }

      (*a3)[0] = v7;
      (*a3)[1] = v5;
      (*a3)[2] = v6;
    }
  }

  return this;
}

uint64_t icu::EraRules::getStartYear(icu::EraRules *this, unsigned int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0x3FFFFFFFLL;
  }

  if ((a2 & 0x80000000) != 0 || *(this + 2) <= a2)
  {
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0x3FFFFFFFLL;
  }

  v3 = *(*this + 4 * a2);
  if (v3 == -2147483391)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v3 >> 16);
  }
}

uint64_t icu::EraRules::getEraIndex(icu::EraRules *this, int a2, int a3, int a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((a3 - 13) < 0xFFFFFFF4 || (a4 - 32) <= 0xFFFFFFE0)
  {
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0xFFFFFFFFLL;
  }

  v6 = *(this + 2);
  result = *(this + 3);
  v8 = *this;
  v9 = *(v8 + 4 * result);
  if (a2 <= -32769)
  {
    if (v9 == -2147483391)
    {
      goto LABEL_13;
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  if (a2 < 0x8000 && ((a3 << 8) | (a2 << 16) | a4) < v9)
  {
    goto LABEL_12;
  }

LABEL_13:
  while (result < v6 - 1)
  {
    v10 = (result + v6) / 2;
    v11 = *(v8 + 4 * v10);
    v13 = a2 >= 0x8000 || ((a3 << 8) | (a2 << 16) | a4) >= v11;
    v14 = v11 == -2147483391;
    if (a2 > -32769)
    {
      v14 = v13;
    }

    if (v14)
    {
      result = v10;
    }

    else
    {
      v6 = (result + v6) / 2;
      result = result;
    }
  }

  return result;
}

void sub_19531E448()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = "A";
  icu::UnicodeString::UnicodeString(v1, 1, &v0);
  icu::Transliterator::_registerFactory();
}

uint64_t sub_19531ED04(uint64_t a1, UChar **a2, UChar **a3, UChar **a4, int a5, int a6, char a7, uint64_t a8)
{
  v15 = icu::Transliterator::Transliterator(a1, a2, 0);
  *v15 = &unk_1F093A860;
  *(a1 + 88) = &unk_1F0935D00;
  *(a1 + 96) = 2;
  *(a1 + 152) = &unk_1F0935D00;
  *(a1 + 160) = 2;
  icu::UnicodeString::operator=(v15 + 11, a3);
  icu::UnicodeString::operator=((a1 + 152), a4);
  *(a1 + 216) = a5;
  *(a1 + 220) = a6;
  *(a1 + 224) = a7;
  *(a1 + 232) = a8;
  return a1;
}

uint64_t sub_19531EDE4(uint64_t a1, uint64_t a2)
{
  v4 = icu::Transliterator::Transliterator(a1, a2);
  *v4 = &unk_1F093A860;
  icu::UnicodeString::UnicodeString((v4 + 88), (a2 + 88));
  icu::UnicodeString::UnicodeString((a1 + 152), (a2 + 152));
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  if (*(a2 + 232))
  {
    operator new();
  }

  *(a1 + 232) = 0;
  return a1;
}

void sub_19531EE84(void *a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F093A860;
  v3 = a1[29];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeString::~UnicodeString(a2, (a1 + 19));
  icu::UnicodeString::~UnicodeString(v4, (a1 + 11));

  icu::Transliterator::~Transliterator(a1);
}

void sub_19531EF14(void *a1@<X0>, void *a2@<X8>)
{
  sub_19531EE84(a1, a2);

  JUMPOUT(0x19A8B2600);
}

void *sub_19531EF98(uint64_t a1, uint64_t *a2, _DWORD *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3[2];
  v7 = a3[3];
  memset(v40, 0, sizeof(v40));
  icu::UnicodeString::UnicodeString(v40, (a1 + 88));
  if (*(a1 + 96) < 0)
  {
    v8 = *(a1 + 100);
  }

  else
  {
    v8 = *(a1 + 96) >> 5;
  }

  if (v6 < v7)
  {
    v9 = 0;
    while (1)
    {
      v10 = *a2;
      if (!*(a1 + 224))
      {
        break;
      }

      v11 = (*(v10 + 80))(a2, v6);
      v12 = v11;
      if (*(a1 + 224))
      {
        v13 = v11 >= 0x10000;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      if (v11 < 0x10000)
      {
        goto LABEL_22;
      }

      v15 = *(a1 + 232);
      if (!v15)
      {
        goto LABEL_23;
      }

      if (BYTE8(v40[0]))
      {
        icu::UnicodeString::unBogus(v40);
        v15 = *(a1 + 232);
      }

      else
      {
        if ((SWORD4(v40[0]) & 0x8000u) == 0)
        {
          v16 = WORD4(v40[0]) >> 5;
        }

        else
        {
          v16 = HIDWORD(v40[0]);
        }

        if (v16)
        {
          BYTE8(v40[0]) &= 0x1Eu;
          WORD4(v40[0]) = BYTE8(v40[0]);
        }
      }

      v28 = *(v15 + 96);
      v29 = v28;
      v30 = v28 >> 5;
      if (v29 >= 0)
      {
        v31 = v30;
      }

      else
      {
        v31 = *(v15 + 100);
      }

      icu::UnicodeString::doAppend(v40, (v15 + 88), 0, v31);
      icu::ICU_Utility::appendNumber(v40, v12, *(*(a1 + 232) + 216), *(*(a1 + 232) + 220));
      v32 = *(a1 + 232);
      v33 = *(v32 + 160);
      v34 = v33;
      v35 = v33 >> 5;
      if (v34 >= 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = *(v32 + 164);
      }

      icu::UnicodeString::doAppend(v40, (v32 + 152), 0, v36);
      v9 = 1;
LABEL_42:
      (*(*a2 + 32))(a2, v6, (v14 + v6), v40);
      v26 = WORD4(v40[0]) >> 5;
      if (SWORD4(v40[0]) < 0)
      {
        v26 = HIDWORD(v40[0]);
      }

      v6 = (v26 + v6);
      v7 = v7 - v14 + v26;
      if (v6 >= v7)
      {
        goto LABEL_61;
      }
    }

    v12 = (*(v10 + 72))(a2, v6);
LABEL_22:
    v14 = 1;
LABEL_23:
    if (v9)
    {
      if (BYTE8(v40[0]))
      {
        icu::UnicodeString::unBogus(v40);
      }

      else
      {
        if ((SWORD4(v40[0]) & 0x8000u) == 0)
        {
          v17 = WORD4(v40[0]) >> 5;
        }

        else
        {
          v17 = HIDWORD(v40[0]);
        }

        if (v17)
        {
          BYTE8(v40[0]) &= 0x1Eu;
          WORD4(v40[0]) = BYTE8(v40[0]);
        }
      }

      v18 = *(a1 + 96);
      v19 = v18;
      v20 = v18 >> 5;
      if (v19 >= 0)
      {
        v21 = v20;
      }

      else
      {
        v21 = *(a1 + 100);
      }

      icu::UnicodeString::doAppend(v40, (a1 + 88), 0, v21);
    }

    else if (v8 || (BYTE8(v40[0]) & 1) == 0)
    {
      if ((SWORD4(v40[0]) & 0x8000u) == 0)
      {
        v27 = WORD4(v40[0]) >> 5;
      }

      else
      {
        v27 = HIDWORD(v40[0]);
      }

      if (v27 > v8)
      {
        if (v8 > 1023)
        {
          WORD4(v40[0]) = BYTE8(v40[0]) | 0xFFE0;
          HIDWORD(v40[0]) = v8;
        }

        else
        {
          WORD4(v40[0]) = BYTE8(v40[0]) & 0x1F | (32 * v8);
        }
      }
    }

    else
    {
      icu::UnicodeString::unBogus(v40);
    }

    icu::ICU_Utility::appendNumber(v40, v12, *(a1 + 216), *(a1 + 220));
    v22 = *(a1 + 160);
    v23 = v22;
    v24 = v22 >> 5;
    if (v23 >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = *(a1 + 164);
    }

    icu::UnicodeString::doAppend(v40, (a1 + 152), 0, v25);
    v9 = 0;
    goto LABEL_42;
  }

LABEL_61:
  v37 = (v7 - a3[3] + a3[1]);
  a3[2] = v6;
  a3[3] = v7;
  a3[1] = v37;
  result = icu::UnicodeString::~UnicodeString(v37, v40);
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

icu::CECalendar *sub_19531F344(icu::CECalendar *a1, char **a2, UErrorCode *a3)
{
  result = icu::CECalendar::CECalendar(a1, a2, a3);
  *result = &unk_1F093A910;
  return result;
}

void sub_19531F37C(icu::CECalendar *a1)
{
  icu::CECalendar::~CECalendar(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19531F41C(_DWORD *a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  if (icu::Calendar::newerField(a1, 0x13u, 1u) == 19)
  {
    if (a1[54] >= 1)
    {
      return a1[22];
    }

    return 1;
  }

  if (a1[35] < 1 || a1[3] == 1)
  {
    if (a1[36] >= 1)
    {
      return a1[4];
    }

    return 1;
  }

  if (a1[36] < 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a1[4];
  }

  v8 = v7;
  if (!uprv_add32_overflow(v7, -5500, &v8))
  {
    return v8;
  }

  result = 0;
  *a2 = 1;
  return result;
}

uint64_t sub_19531F4FC(uint64_t a1, icu::CECalendar *a2, int *a3)
{
  *v14 = 0;
  v13 = 0;
  v6 = (*(*a1 + 456))(a1);
  result = icu::CECalendar::jdToCE(a2, v6, &v14[1], v14, &v13, a3, v7);
  if (*a3 <= 0)
  {
    v9 = v14[1];
    *(a1 + 88) = v14[1];
    *(a1 + 216) = 1;
    *(a1 + 131) = 1;
    v10 = v9 > 0;
    *(a1 + 140) = 1;
    *(a1 + 112) = 1;
    if (v9 <= 0)
    {
      v9 += 5500;
    }

    *(a1 + 12) = v10;
    *(a1 + 16) = v9;
    *(a1 + 144) = 0x100000001;
    *(a1 + 113) = 257;
    v12 = v13;
    v11 = v14[0];
    *(a1 + 20) = v14[0];
    *(a1 + 104) = v11;
    *(a1 + 232) = 1;
    *(a1 + 135) = 1;
    *(a1 + 117) = 257;
    *(a1 + 32) = v12;
    *(a1 + 36) = v12 + 30 * v11;
    *(a1 + 160) = 1;
    *(a1 + 164) = 1;
  }

  return result;
}

uint64_t sub_19531F5FC(_BYTE *a1, UErrorCode *a2)
{
  v3 = icu::Calendar::get(a1, 0x13u, a2) + 8;
  if (*a2 <= 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

double sub_19531F644()
{
  if (atomic_load_explicit(dword_1ED442C00, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442C00))
  {
    sub_19531F698();
    icu::umtx_initImplPostInit(dword_1ED442C00);
  }

  return *&qword_1ED441AD8;
}

void sub_19531F698()
{
  v5[80] = *MEMORY[0x1E69E9840];
  v3 = U_ZERO_ERROR;
  bzero(v5, 0x280uLL);
  icu::Locale::Locale(v4, "@calendar=ethiopic", 0, 0, 0);
  icu::CECalendar::CECalendar(v5, v4, &v3);
  v5[0] = &unk_1F093A910;
  icu::Locale::~Locale(v4);
  if (v3 <= U_ZERO_ERROR)
  {
    icu::Calendar::getNow(v0);
    icu::Calendar::setTimeInMillis(v5, v1, &v3);
    icu::Calendar::add(v5, 1u, -80, &v3);
    qword_1ED441AD8 = icu::Calendar::getTimeInMillis(v5, &v3);
    dword_1ED441AE0 = icu::Calendar::get(v5, 1u, &v3);
  }

  icu::CECalendar::~CECalendar(v5);
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t sub_19531F7B0()
{
  if (atomic_load_explicit(dword_1ED442C00, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(dword_1ED442C00))
  {
    sub_19531F698();
    icu::umtx_initImplPostInit(dword_1ED442C00);
  }

  return dword_1ED441AE0;
}

icu::CECalendar *sub_19531F818(icu::CECalendar *a1, char **a2, UErrorCode *a3)
{
  result = icu::CECalendar::CECalendar(a1, a2, a3);
  *result = &unk_1F093AAF0;
  return result;
}

void sub_19531F850(icu::CECalendar *a1)
{
  icu::CECalendar::~CECalendar(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19531F8F0(_DWORD *a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v9 = v2;
  v10 = v3;
  if (icu::Calendar::newerField(a1, 0x13u, 1u) == 19)
  {
    if (a1[54] < 1)
    {
      return 1;
    }

    else
    {
      return a1[22];
    }
  }

  else
  {
    if (a1[36] < 1)
    {
      v7 = 5501;
    }

    else
    {
      v7 = a1[4];
    }

    v8 = v7;
    if (uprv_add32_overflow(v7, -5500, &v8))
    {
      result = 0;
      *a2 = 1;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t sub_19531F9A4(uint64_t a1, icu::CECalendar *a2, int *a3)
{
  *v13 = 0;
  v12 = 0;
  v6 = (*(*a1 + 456))(a1);
  result = icu::CECalendar::jdToCE(a2, v6, &v13[1], v13, &v12, a3, v7);
  if (*a3 <= 0)
  {
    v9 = v13[1];
    *(a1 + 88) = v13[1];
    *(a1 + 216) = 1;
    *(a1 + 131) = 1;
    *(a1 + 140) = 1;
    *(a1 + 112) = 1;
    *(a1 + 12) = 0;
    *(a1 + 16) = v9 + 5500;
    *(a1 + 144) = 0x100000001;
    *(a1 + 113) = 257;
    v11 = v12;
    v10 = v13[0];
    *(a1 + 20) = v13[0];
    *(a1 + 104) = v10;
    *(a1 + 232) = 1;
    *(a1 + 135) = 1;
    *(a1 + 117) = 257;
    *(a1 + 32) = v11;
    *(a1 + 36) = v11 + 30 * v10;
    *(a1 + 160) = 1;
    *(a1 + 164) = 1;
  }

  return result;
}

uint64_t sub_19531FA98(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    return icu::CECalendar::handleGetLimit(a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19531FAA8(_BYTE *a1, UErrorCode *a2)
{
  v3 = icu::Calendar::get(a1, 0x13u, a2) - 5492;
  if (*a2 <= 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void icu::Formattable::init(icu::Formattable *this)
{
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
}

icu::Formattable *icu::Formattable::Formattable(icu::Formattable *this)
{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  return this;
}

{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  return this;
}

uint64_t icu::Formattable::Formattable(uint64_t a1, double a2)
{
  *a1 = &unk_1F093AD00;
  *(a1 + 48) = &unk_1F0935D00;
  *(a1 + 56) = 2;
  *(a1 + 8) = 0;
  *(a1 + 40) = 2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  icu::UnicodeString::setToBogus((a1 + 48));
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  return a1;
}

{
  *a1 = &unk_1F093AD00;
  *(a1 + 48) = &unk_1F0935D00;
  *(a1 + 56) = 2;
  *(a1 + 8) = 0;
  *(a1 + 40) = 2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  icu::UnicodeString::setToBogus((a1 + 48));
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  return a1;
}

icu::Formattable *icu::Formattable::Formattable(icu::Formattable *this, double a2)
{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  *(this + 10) = 1;
  *(this + 1) = a2;
  return this;
}

{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  *(this + 10) = 1;
  *(this + 1) = a2;
  return this;
}

icu::Formattable *icu::Formattable::Formattable(icu::Formattable *this, int a2)
{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  *(this + 1) = a2;
  return this;
}

{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  *(this + 1) = a2;
  return this;
}

icu::Formattable *icu::Formattable::Formattable(icu::Formattable *this, uint64_t a2)
{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  *(this + 10) = 5;
  *(this + 1) = a2;
  return this;
}

{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  *(this + 10) = 5;
  *(this + 1) = a2;
  return this;
}

uint64_t icu::Formattable::Formattable(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *a1 = &unk_1F093AD00;
  *(a1 + 48) = &unk_1F0935D00;
  *(a1 + 56) = 2;
  *(a1 + 8) = 0;
  *(a1 + 40) = 2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  icu::UnicodeString::setToBogus((a1 + 48));
  icu::Formattable::setDecimalNumber(a1, a2, a3, a4);
  return a1;
}

icu::Formattable *icu::Formattable::setDecimalNumber(icu::Formattable *result, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    icu::Formattable::dispose(result);
    operator new();
  }

  return result;
}

void icu::Formattable::Formattable(icu::Formattable *this, const icu::UnicodeString *a2)
{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  *(this + 10) = 3;
  operator new();
}

icu::Formattable *icu::Formattable::Formattable(icu::Formattable *this, icu::UnicodeString *a2)
{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  *(this + 10) = 3;
  *(this + 1) = a2;
  return this;
}

{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  *(this + 10) = 3;
  *(this + 1) = a2;
  return this;
}

icu::Formattable *icu::Formattable::Formattable(icu::Formattable *this, icu::UObject *a2)
{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  *(this + 10) = 6;
  *(this + 1) = a2;
  return this;
}

{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  *(this + 10) = 6;
  *(this + 1) = a2;
  return this;
}

void icu::Formattable::Formattable(icu::Formattable *this, const icu::Formattable *a2, int a3)
{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));
  *(this + 10) = 4;
  sub_1953204F0(a2, a3);
}

uint64_t icu::Formattable::Formattable(icu::Formattable *this, const icu::Formattable *a2)
{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  *(this + 1) = 0;
  *(this + 10) = 2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  icu::UnicodeString::setToBogus((this + 48));

  return icu::Formattable::operator=(this, a2);
}

uint64_t icu::Formattable::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  icu::Formattable::dispose(a1);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4 > 2)
  {
    if (v4 <= 4)
    {
      if (v4 != 3)
      {
        v5 = *(a2 + 16);
        *(a1 + 16) = v5;
        sub_1953204F0(*(a2 + 8), v5);
      }

      operator new();
    }

    if (v4 != 5)
    {
      if (v4 == 6)
      {
        *(a1 + 8) = (*(**(a2 + 8) + 24))(*(a2 + 8));
      }

      goto LABEL_15;
    }

LABEL_13:
    *(a1 + 8) = *(a2 + 8);
    goto LABEL_15;
  }

  if (v4 >= 2)
  {
    if (v4 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  *(a1 + 8) = *(a2 + 8);
LABEL_15:
  v7 = U_ZERO_ERROR;
  if (*(a2 + 32))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    operator new();
  }

  return a1;
}

uint64_t icu::Formattable::dispose(icu::Formattable *this)
{
  v2 = *(this + 10);
  if (v2 == 6)
  {
LABEL_4:
    v3 = *(this + 1);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    goto LABEL_11;
  }

  if (v2 != 4)
  {
    if (v2 != 3)
    {
      goto LABEL_11;
    }

    goto LABEL_4;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = v4 - 16;
    v6 = *(v4 - 8);
    if (v6)
    {
      v7 = (v4 + 112 * v6 - 112);
      v8 = -112 * v6;
      do
      {
        icu::Formattable::~Formattable(v7);
        v7 = (v9 - 112);
        v8 += 112;
      }

      while (v8);
    }

    MEMORY[0x19A8B25E0](v5, 0x10B3C80062A7C37);
  }

LABEL_11:
  *(this + 10) = 2;
  *(this + 1) = 0;
  v10 = *(this + 3);
  if (v10)
  {
    if (*(v10 + 12))
    {
      free(*v10);
    }

    MEMORY[0x19A8B2600](v10, 0x1010C40AA5E6C2FLL);
  }

  *(this + 3) = 0;
  result = *(this + 4);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 4) = 0;
  return result;
}

uint64_t icu::Formattable::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = *(a1 + 40);
  if (v4 != *(a2 + 40))
  {
    return 0;
  }

  result = 1;
  if (v4 <= 2)
  {
    if (v4 < 2)
    {
      return *(a1 + 8) == *(a2 + 8);
    }

    if (v4 != 2)
    {
      return result;
    }

    return *(a1 + 8) == *(a2 + 8);
  }

  if (v4 > 4)
  {
    if (v4 != 5)
    {
      if (v4 != 6)
      {
        return result;
      }

      result = *(a1 + 8);
      if (!result)
      {
        return result;
      }

      v9 = *(a2 + 8);
      if (!v9)
      {
        return 0;
      }

      return icu::Measure::operator==(result, v9);
    }

    return *(a1 + 8) == *(a2 + 8);
  }

  if (v4 != 3)
  {
    v6 = *(a1 + 16);
    if (v6 == *(a2 + 16))
    {
      if (v6 >= 1)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          result = icu::Formattable::operator==(*(a1 + 8) + v7, *(a2 + 8) + v7);
          if ((result & 1) == 0)
          {
            break;
          }

          ++v8;
          v7 += 112;
        }

        while (v8 < *(a1 + 16));
      }

      return result;
    }

    return 0;
  }

  v11 = *(a1 + 8);
  v12 = *(a2 + 8);
  v13 = *(v11 + 8);
  if (v13)
  {
    return *(v12 + 8) & 1;
  }

  if ((v13 & 0x8000) != 0)
  {
    v14 = *(v11 + 12);
  }

  else
  {
    v14 = v13 >> 5;
  }

  result = 0;
  v15 = *(v12 + 8);
  if ((v15 & 0x8000u) == 0)
  {
    v16 = v15 >> 5;
  }

  else
  {
    v16 = *(v12 + 12);
  }

  if ((v15 & 1) == 0 && v14 == v16)
  {
    v17 = (v12 + 10);
    v18 = *(v12 + 24);
    if ((v15 & 2) != 0)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    return icu::UnicodeString::doEquals(*(a1 + 8), v19, v14);
  }

  return result;
}

void icu::Formattable::~Formattable(icu::Formattable *this)
{
  *this = &unk_1F093AD00;
  v2 = (this + 48);
  icu::Formattable::dispose(this);
  icu::UnicodeString::~UnicodeString(v3, v2);

  icu::UObject::~UObject(this);
}

{
  icu::Formattable::~Formattable(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::Formattable::isNumeric(icu::Formattable *this)
{
  v1 = *(this + 10);
  if (v1 >= 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x10000010100uLL >> (8 * v1);
  }

  return v2 & 1;
}

uint64_t icu::Formattable::getLong(icu::Formattable *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(this + 10);
    if (v5 != 6)
    {
      break;
    }

    result = *(this + 1);
    if (!result)
    {
      v7 = U_MEMORY_ALLOCATION_ERROR;
      goto LABEL_18;
    }

    this = (result + 8);
    v6 = **result;
    {
      goto LABEL_11;
    }
  }

  switch(v5)
  {
    case 1:
      v8 = *(this + 1);
      if (v8 > 2147483650.0)
      {
LABEL_16:
        *a2 = U_INVALID_FORMAT_ERROR;
        return 0x7FFFFFFFLL;
      }

      if (v8 >= -2147483650.0)
      {
        return v8;
      }

LABEL_21:
      *a2 = U_INVALID_FORMAT_ERROR;
      return 0x80000000;
    case 5:
      result = *(this + 1);
      if (result >= 0x80000000)
      {
        goto LABEL_16;
      }

      if (result > 0xFFFFFFFF7FFFFFFFLL)
      {
        return result;
      }

      goto LABEL_21;
    case 2:
      return *(this + 2);
  }

LABEL_11:
  result = 0;
  v7 = U_INVALID_FORMAT_ERROR;
LABEL_18:
  *a2 = v7;
  return result;
}

uint64_t icu::Formattable::getInt64(icu::Formattable *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(this + 10);
    if (v5 != 6)
    {
      break;
    }

    result = *(this + 1);
    if (!result)
    {
      v8 = U_MEMORY_ALLOCATION_ERROR;
      goto LABEL_18;
    }

    this = (result + 8);
    v6 = **result;
    {
      goto LABEL_14;
    }
  }

  if (v5 != 1)
  {
    if (v5 == 5 || v5 == 2)
    {
      return *(this + 1);
    }

LABEL_14:
    result = 0;
    v8 = U_INVALID_FORMAT_ERROR;
LABEL_18:
    *a2 = v8;
    return result;
  }

  v9 = *(this + 1);
  if (v9 <= 9.22337204e18)
  {
    if (v9 >= -9.22337204e18)
    {
      if (fabs(v9) > 9.00719925e15 && (v10 = *(this + 4)) != 0)
      {
        if (icu::number::impl::DecimalQuantity::fitsInLong(v10, 1))
        {
          v11 = *(this + 4);

          return icu::number::impl::DecimalQuantity::toLong(v11, 0);
        }

        else
        {
          *a2 = U_INVALID_FORMAT_ERROR;
          if (icu::number::impl::DecimalQuantity::isNegative(*(this + 4)))
          {
            return 0x8000000000000000;
          }

          else
          {
            return 0x7FFFFFFFFFFFFFFFLL;
          }
        }
      }

      else
      {
        return v9;
      }
    }

    else
    {
      *a2 = U_INVALID_FORMAT_ERROR;
      return 0x8000000000000000;
    }
  }

  else
  {
    *a2 = U_INVALID_FORMAT_ERROR;
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

double icu::Formattable::getDouble(icu::Formattable *this, UErrorCode *a2)
{
  v2 = 0.0;
  if (*a2 <= 0)
  {
    while (1)
    {
      v5 = *(this + 10);
      if (v5 != 6)
      {
        if (v5 == 1)
        {
          return *(this + 1);
        }

        if (v5 == 5 || v5 == 2)
        {
          return *(this + 1);
        }

LABEL_13:
        v9 = U_INVALID_FORMAT_ERROR;
        goto LABEL_16;
      }

      v6 = *(this + 1);
      if (!v6)
      {
        break;
      }

      this = (v6 + 1);
      v7 = **v6;
      {
        goto LABEL_13;
      }
    }

    v9 = U_MEMORY_ALLOCATION_ERROR;
LABEL_16:
    *a2 = v9;
  }

  return v2;
}

uint64_t icu::Formattable::getObject(icu::Formattable *this)
{
  if (*(this + 10) == 6)
  {
    return *(this + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t icu::Formattable::setDouble(icu::Formattable *this, double a2)
{
  result = icu::Formattable::dispose(this);
  *(this + 10) = 1;
  *(this + 1) = a2;
  return result;
}

uint64_t icu::Formattable::setLong(icu::Formattable *this, int a2)
{
  result = icu::Formattable::dispose(this);
  *(this + 10) = 2;
  *(this + 1) = a2;
  return result;
}

uint64_t icu::Formattable::setInt64(icu::Formattable *this, uint64_t a2)
{
  result = icu::Formattable::dispose(this);
  *(this + 10) = 5;
  *(this + 1) = a2;
  return result;
}

uint64_t icu::Formattable::setDate(icu::Formattable *this, double a2)
{
  result = icu::Formattable::dispose(this);
  *(this + 10) = 0;
  *(this + 1) = a2;
  return result;
}

void icu::Formattable::setString(icu::Formattable *this, const icu::UnicodeString *a2)
{
  icu::Formattable::dispose(this);
  *(this + 10) = 3;
  operator new();
}

void icu::Formattable::setArray(icu::Formattable *this, const icu::Formattable *a2, int a3)
{
  icu::Formattable::dispose(this);
  *(this + 10) = 4;
  sub_1953204F0(a2, a3);
}

uint64_t icu::Formattable::adoptString(icu::Formattable *this, icu::UnicodeString *a2)
{
  result = icu::Formattable::dispose(this);
  *(this + 10) = 3;
  *(this + 1) = a2;
  return result;
}

uint64_t icu::Formattable::adoptArray(icu::Formattable *this, icu::Formattable *a2, int a3)
{
  result = icu::Formattable::dispose(this);
  *(this + 10) = 4;
  *(this + 1) = a2;
  *(this + 4) = a3;
  return result;
}

uint64_t icu::Formattable::adoptObject(icu::Formattable *this, icu::UObject *a2)
{
  result = icu::Formattable::dispose(this);
  *(this + 10) = 6;
  *(this + 1) = a2;
  return result;
}

UChar **icu::Formattable::getString(icu::Formattable *this, UChar **a2, UErrorCode *a3)
{
  if (*(this + 10) == 3)
  {
    v4 = *(this + 1);
    if (v4)
    {
      icu::UnicodeString::operator=(a2, v4);
    }

    else if (*a3 <= 0)
    {
      *a3 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  else
  {
    if (*a3 <= 0)
    {
      *a3 = U_INVALID_FORMAT_ERROR;
    }

    icu::UnicodeString::setToBogus(a2);
  }

  return a2;
}

uint64_t icu::Formattable::getString(icu::Formattable *this, UErrorCode *a2)
{
  if (*(this + 10) != 3)
  {
    if (*a2 <= 0)
    {
      v3 = U_INVALID_FORMAT_ERROR;
      goto LABEL_7;
    }

    return this + 48;
  }

  v2 = *(this + 1);
  if (!v2)
  {
    if (*a2 <= 0)
    {
      v3 = U_MEMORY_ALLOCATION_ERROR;
LABEL_7:
      *a2 = v3;
      return this + 48;
    }

    return this + 48;
  }

  return v2;
}

{
  if (*(this + 10) != 3)
  {
    if (*a2 <= 0)
    {
      v3 = U_INVALID_FORMAT_ERROR;
      goto LABEL_7;
    }

    return this + 48;
  }

  v2 = *(this + 1);
  if (!v2)
  {
    if (*a2 <= 0)
    {
      v3 = U_MEMORY_ALLOCATION_ERROR;
LABEL_7:
      *a2 = v3;
      return this + 48;
    }

    return this + 48;
  }

  return v2;
}

uint64_t icu::Formattable::getArray(icu::Formattable *this, int *a2, UErrorCode *a3)
{
  if (*(this + 10) == 4)
  {
    *a2 = *(this + 4);
    return *(this + 1);
  }

  else
  {
    if (*a3 <= 0)
    {
      *a3 = U_INVALID_FORMAT_ERROR;
    }

    result = 0;
    *a2 = 0;
  }

  return result;
}

uint64_t icu::Formattable::getDecimalNumber(icu::Formattable *this, UErrorCode *a2)
{
  if (*a2 < 1)
  {
    v2 = *(this + 3);
    if (v2)
    {
      v3 = *v2;
      v4 = *(v2 + 14);
      v8 = v3;
      LODWORD(v9) = v4;
      return v8;
    }

    CharString = icu::Formattable::internalGetCharString(this, a2);
    if (CharString)
    {
      v6 = *(CharString + 56);
      v8 = *CharString;
      LODWORD(v9) = v6;
      return v8;
    }
  }

  icu::StringPiece::StringPiece(&v8, "");
  return v8;
}

uint64_t icu::Formattable::internalGetCharString(icu::Formattable *this, UErrorCode *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!*(this + 3))
  {
    if (*(this + 4))
    {
      operator new();
    }

    operator new();
  }

  result = *(this + 3);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void icu::Formattable::populateDecimalQuantity(icu::Formattable *this, icu::number::impl::DecimalQuantity *a2, UErrorCode *a3)
{
  v4 = *(this + 4);
  if (v4)
  {

    icu::number::impl::DecimalQuantity::operator=(a2, v4);
  }

  else
  {
    v5 = *(this + 10);
    switch(v5)
    {
      case 5:
        v7 = *(this + 1);

        icu::number::impl::DecimalQuantity::setToLong(a2, v7);
        break;
      case 2:
        v6 = *(this + 2);

        icu::number::impl::DecimalQuantity::setToInt(a2, v6);
        break;
      case 1:
        icu::number::impl::DecimalQuantity::setToDouble(a2, *(this + 1));

        icu::number::impl::DecimalQuantity::roundToInfinity(a2);
        break;
      default:
        *a3 = U_INVALID_STATE_ERROR;
        break;
    }
  }
}

void icu::Formattable::adoptDecimalQuantity(icu::Formattable *this, icu::number::impl::DecimalQuantity *a2)
{
  v4 = *(this + 4);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 4) = a2;
  if (a2)
  {
    if (icu::number::impl::DecimalQuantity::fitsInLong(a2, 0))
    {
      v5 = icu::number::impl::DecimalQuantity::toLong(*(this + 4), 0);
      *(this + 1) = v5;
      if (v5 == v5)
      {
        v6 = 2;
      }

      else
      {
        v6 = 5;
      }

      *(this + 10) = v6;
    }

    else
    {
      *(this + 10) = 1;
      *(this + 1) = icu::number::impl::DecimalQuantity::toDouble(*(this + 4));
    }
  }
}

uint64_t ufmt_open(int *a1)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t ufmt_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ufmt_getType(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return *(a1 + 40);
  }

  else
  {
    return 7;
  }
}

uint64_t ufmt_isNumeric(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x10000010100uLL >> (8 * v1);
  }

  return v2 & 1;
}

uint64_t ufmt_getDate(uint64_t result, int *a2)
{
  if (*(result + 40))
  {
    if (*a2 <= 0)
    {
      *a2 = 3;
    }
  }

  else
  {
    v2 = *(result + 8);
  }

  return result;
}

uint64_t ufmt_getObject(uint64_t a1, int *a2)
{
  if (*(a1 + 40) == 6)
  {
    return *(a1 + 8);
  }

  result = 0;
  if (*a2 <= 0)
  {
    *a2 = 3;
  }

  return result;
}

uint64_t ufmt_getUChars(uint64_t a1, int *a2, int *a3)
{
  if (*(a1 + 40) == 3)
  {
    v4 = *(a1 + 8);
    v5 = *a3;
    if (v4)
    {
      if (a2 && v5 <= 0)
      {
        if (*(v4 + 8) < 0)
        {
          v6 = *(v4 + 12);
        }

        else
        {
          v6 = *(v4 + 8) >> 5;
        }

        *a2 = v6;
      }
    }

    else
    {
      if (v5 <= 0)
      {
        *a3 = 7;
      }

      v4 = a1 + 48;
    }

    return icu::UnicodeString::getTerminatedBuffer(v4);
  }

  else
  {
    if (*a3 <= 0)
    {
      *a3 = 3;
    }

    return 0;
  }
}

uint64_t ufmt_getArrayLength(uint64_t a1, int *a2)
{
  if (*(a1 + 40) == 4)
  {
    return *(a1 + 16);
  }

  result = 0;
  if (*a2 <= 0)
  {
    *a2 = 3;
  }

  return result;
}

uint64_t ufmt_getArrayItemByIndex(uint64_t a1, unsigned int a2, int *a3)
{
  v3 = *a3;
  if (*(a1 + 40) == 4)
  {
    if (v3 <= 0)
    {
      if ((a2 & 0x80000000) == 0 && *(a1 + 16) > a2)
      {
        return *(a1 + 8) + 112 * a2;
      }

      result = 0;
      v5 = 8;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 > 0)
  {
    return 0;
  }

  result = 0;
  v5 = 3;
LABEL_10:
  *a3 = v5;
  return result;
}

const char *ufmt_getDecNumChars(icu::Formattable *a1, _DWORD *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return "";
  }

  CharString = icu::Formattable::internalGetCharString(a1, a3);
  if (*a3 > 0)
  {
    return "";
  }

  if (!CharString)
  {
    *a3 = U_MEMORY_ALLOCATION_ERROR;
    return "";
  }

  if (a2)
  {
    *a2 = CharString[14];
  }

  return *CharString;
}

void icu::Formattable::Formattable(icu::Formattable *this, const char *a2)
{
  *this = &unk_1F093AD00;
  *(this + 6) = &unk_1F0935D00;
  *(this + 28) = 2;
  icu::Formattable::init(this);
  *(this + 10) = 3;
  operator new();
}

void icu::FieldPosition::~FieldPosition(icu::FieldPosition *this)
{
  icu::UObject::~UObject(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::Format::Format(uint64_t this)
{
  *this = &unk_1F093AD40;
  *(this + 8) = 0;
  *(this + 165) = 0;
  return this;
}

uint64_t icu::Format::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    strcpy((a1 + 165), (a2 + 165));
    strcpy((a1 + 8), (a2 + 8));
  }

  return a1;
}

icu::UnicodeString *icu::Format::format(icu::Format *this, const icu::Formattable *a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  v4 = a3;
  if (*a4 <= 0)
  {
    v6[2] = 0;
    v6[0] = &unk_1F093AD90;
    v6[1] = 0xFFFFFFFFLL;
    v4 = (*(*this + 40))(this, a2, a3, v6, a4);
    icu::UObject::~UObject(v6);
  }

  return v4;
}

uint64_t icu::Format::format(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  result = a3;
  if (*a5 <= 0)
  {
    *a5 = 16;
  }

  return result;
}

void icu::Format::parseObject(icu::Format *this, const icu::UnicodeString *a2, icu::Formattable *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v9 = v4;
    v10 = v5;
    v7 = &unk_1F0932C70;
    v8 = 0xFFFFFFFF00000000;
    (*(*this + 56))(this, a2, a3, &v7);
    if (!v8)
    {
      *a4 = U_INVALID_FORMAT_ERROR;
    }

    icu::ParsePosition::~ParsePosition(&v7);
  }
}

BOOL icu::Format::operator==(void *a1, void *a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v3 = *(*a1 - 8);
  v4 = *(*a2 - 8);

  return sub_19520B9EC(v3, v4);
}

char *icu::Format::syntaxError(icu::Format *this, const icu::UnicodeString *a2, _DWORD *a3, UParseError *a4)
{
  v5 = a2;
  *a3 = 0;
  a3[1] = a2;
  if (a2 >= 16)
  {
    v7 = a2 - 15;
  }

  else
  {
    v7 = 0;
  }

  v8 = v5 - v7;
  v9 = a3 + 2;
  icu::UnicodeString::doExtract(this, v7, v5 - v7, (a3 + 2), 0);
  *(v9 + v8) = 0;
  v10 = v5 + 16;
  if (*(this + 4) < 0)
  {
    v12 = *(this + 3);
    if (v10 > v12)
    {
      goto LABEL_9;
    }

LABEL_8:
    v12 = v5 + 15;
    goto LABEL_9;
  }

  v11 = *(this + 4);
  if (v10 <= (v11 >> 5))
  {
    goto LABEL_8;
  }

  v12 = v11 >> 5;
LABEL_9:
  v13 = v5 + 1;
  v14 = v12 - (v5 + 1);
  v15 = (a3 + 10);
  result = icu::UnicodeString::doExtract(this, v13, v12 - v13, v15, 0);
  *(v15 + 2 * v14) = 0;
  return result;
}

uint64_t icu::Format::getLocale@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, icu::Locale *a4@<X8>)
{
  v5[0] = (a1 + 165);
  v5[1] = (a1 + 8);
  return icu::LocaleBased::getLocale(v5, a2, a3, a4);
}

uint64_t icu::Format::getLocaleID(uint64_t a1, int a2, int *a3)
{
  v4[0] = a1 + 165;
  v4[1] = a1 + 8;
  return icu::LocaleBased::getLocaleID(v4, a2, a3);
}

char *icu::Format::setLocaleIDs(icu::Format *this, const char *a2, const char *a3)
{
  v4[0] = this + 165;
  v4[1] = this + 8;
  return icu::LocaleBased::setLocaleIDs(v4, a2, a3);
}

double icu::FormattedStringBuilder::FormattedStringBuilder(icu::FormattedStringBuilder *this)
{
  *this = 0;
  *&result = 20;
  *(this + 16) = 20;
  return result;
}

{
  *this = 0;
  *&result = 20;
  *(this + 16) = 20;
  return result;
}

void icu::FormattedStringBuilder::~FormattedStringBuilder(void **this)
{
  if (*this == 1)
  {
    free(this[1]);
    free(this[11]);
  }
}

unsigned __int8 *icu::FormattedStringBuilder::FormattedStringBuilder(unsigned __int8 *this, uint64_t a2)
{
  *this = 0;
  *(this + 16) = 20;
  return icu::FormattedStringBuilder::operator=(this, a2);
}

{
  *this = 0;
  *(this + 16) = 20;
  return icu::FormattedStringBuilder::operator=(this, a2);
}

unsigned __int8 *icu::FormattedStringBuilder::operator=(unsigned __int8 *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    goto LABEL_27;
  }

  v4 = *a1;
  if (v4 == 1)
  {
    free(*(a1 + 1));
    free(*(a1 + 11));
    v4 = 0;
    *a1 = 0;
  }

  if (*a2 != 1)
  {
    LODWORD(v5) = 40;
LABEL_13:
    v10 = a1 + 8;
    if (!v4)
    {
      if (v5)
      {
LABEL_17:
        if (*a2)
        {
          v11 = *(a2 + 8);
        }

        else
        {
          v11 = (a2 + 8);
        }

        memcpy(v10, v11, 2 * v5);
        v12 = a1 + 88;
        if (*a1)
        {
          v12 = *v12;
        }

        if (*a2)
        {
          v13 = *(a2 + 88);
        }

        else
        {
          v13 = (a2 + 88);
        }

        memcpy(v12, v13, v5);
      }

LABEL_26:
      *(a1 + 16) = *(a2 + 128);
      goto LABEL_27;
    }

LABEL_16:
    v10 = *v10;
    if (v5)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = *(a2 + 16);
  if (v5 < 41)
  {
    goto LABEL_13;
  }

  v6 = malloc_type_malloc(2 * v5, 0x1000040BDFB0063uLL);
  v7 = malloc_type_malloc(v5, 0x100004077774924uLL);
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    *a1 = 1;
    *(a1 + 1) = v6;
    v10 = a1 + 8;
    *(a1 + 4) = v5;
    *(a1 + 24) = v5;
    *(a1 + 11) = v8;
    goto LABEL_16;
  }

  free(v6);
  free(v8);
  v16[0] = 0;
  v17 = 20;
  icu::FormattedStringBuilder::operator=(a1, v16);
LABEL_27:
  v14 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t icu::FormattedStringBuilder::codePointCount(icu::FormattedStringBuilder *this)
{
  v1 = (this + 8);
  if (*this == 1)
  {
    v1 = *v1;
  }

  return u_countChar32(&v1[*(this + 32)], *(this + 33));
}

uint64_t icu::FormattedStringBuilder::getFirstCodePoint(icu::FormattedStringBuilder *this)
{
  v1 = *(this + 33);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = this + 8;
  if (*this == 1)
  {
    v2 = *(this + 1);
  }

  v3 = *(this + 32);
  result = *&v2[2 * v3];
  if (v1 != 1 && (result & 0xFC00) == 55296)
  {
    v6 = *&v2[2 * v3 + 2];
    if ((v6 & 0xFC00) == 0xDC00)
    {
      return (v6 + (result << 10) - 56613888);
    }
  }

  return result;
}

uint64_t icu::FormattedStringBuilder::getLastCodePoint(icu::FormattedStringBuilder *this)
{
  v1 = *(this + 33);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = this + 8;
  v3 = *this;
  v4 = this + 8;
  if (v3 == 1)
  {
    v4 = *v2;
  }

  v5 = *(this + 32);
  v6 = &v4[2 * v5];
  v7 = v1 - 1;
  v8 = *&v6[2 * v1 - 2] & 0xFC00;
  if (v1 >= 2 && v8 == 56320)
  {
    v10 = this + 8;
    if (v3)
    {
      v10 = *v2;
    }

    if ((*&v10[2 * v5 - 4 + 2 * v1] & 0xFC00) == 0xD800)
    {
      v7 = v1 - 2;
    }
  }

  v11 = this + 8;
  if (v3)
  {
    v11 = *v2;
  }

  result = *&v11[2 * v5 + 2 * v7];
  if ((result & 0xF800) == 0xD800)
  {
    if ((result & 0x400) != 0)
    {
      if (v7 >= 1)
      {
        if (v3)
        {
          v2 = *v2;
        }

        v16 = *&v2[2 * v5 - 2 + 2 * v7];
        if ((v16 & 0xFC00) == 0xD800)
        {
          v15 = result + (v16 << 10);
          return (v15 - 56613888);
        }
      }
    }

    else
    {
      v13 = v7 + 1;
      if (v13 != v1)
      {
        if (v3)
        {
          v2 = *v2;
        }

        v14 = *&v2[2 * v5 + 2 * v13];
        if ((v14 & 0xFC00) == 0xDC00)
        {
          v15 = v14 + (result << 10);
          return (v15 - 56613888);
        }
      }
    }
  }

  return result;
}

uint64_t icu::FormattedStringBuilder::codePointAt(icu::FormattedStringBuilder *this, int a2)
{
  v3 = this + 8;
  v4 = *this;
  v5 = this + 8;
  if (v4 == 1)
  {
    v5 = *v3;
  }

  v6 = *(this + 32);
  result = *&v5[2 * v6 + 2 * a2];
  if ((result & 0xF800) == 0xD800)
  {
    if ((result & 0x400) != 0)
    {
      if (a2 < 1)
      {
        return result;
      }

      if (v4)
      {
        v3 = *v3;
      }

      v12 = *&v3[2 * v6 - 2 + 2 * a2];
      v10 = (v12 & 0xFC00) == 55296;
      v11 = result + (v12 << 10);
    }

    else
    {
      v8 = a2 + 1;
      if (v8 == *(this + 33))
      {
        return result;
      }

      if (v4)
      {
        v3 = *v3;
      }

      v9 = *&v3[2 * v6 + 2 * v8];
      v10 = (v9 & 0xFC00) == 56320;
      v11 = v9 + (result << 10);
    }

    v13 = v11 - 56613888;
    if (v10)
    {
      return v13;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t icu::FormattedStringBuilder::codePointBefore(icu::FormattedStringBuilder *this, int a2)
{
  v2 = this + 8;
  v3 = *this;
  v4 = this + 8;
  if (v3 == 1)
  {
    v4 = *v2;
  }

  v5 = *(this + 32);
  v6 = a2 - 1;
  if (a2 >= 2 && (*&v4[2 * v5 + 2 * v6] & 0xFC00) == 0xDC00)
  {
    v7 = this + 8;
    if (v3)
    {
      v7 = *v2;
    }

    if ((*&v7[2 * v5 - 4 + 2 * a2] & 0xFC00) == 0xD800)
    {
      v6 = a2 - 2;
    }
  }

  v8 = this + 8;
  if (v3)
  {
    v8 = *v2;
  }

  v9 = *&v8[2 * v5 + 2 * v6];
  if ((v9 & 0xF800) == 0xD800)
  {
    if ((v9 & 0x400) != 0)
    {
      if (v6 < 1)
      {
        return v9;
      }

      if (v3)
      {
        v2 = *v2;
      }

      v14 = *&v2[2 * v5 - 2 + 2 * v6];
      v12 = (v14 & 0xFC00) == 55296;
      v13 = v9 + (v14 << 10);
    }

    else
    {
      v10 = v6 + 1;
      if (v10 == *(this + 33))
      {
        return v9;
      }

      if (v3)
      {
        v2 = *v2;
      }

      v11 = *&v2[2 * v5 + 2 * v10];
      v12 = (v11 & 0xFC00) == 56320;
      v13 = v11 + (v9 << 10);
    }

    v15 = v13 - 56613888;
    if (v12)
    {
      return v15;
    }

    else
    {
      return v9;
    }
  }

  return v9;
}

uint64_t icu::FormattedStringBuilder::clear(uint64_t this)
{
  if (*this == 1)
  {
    v1 = *(this + 16) / 2;
  }

  else
  {
    v1 = 20;
  }

  *(this + 128) = v1;
  *(this + 132) = 0;
  return this;
}

uint64_t icu::FormattedStringBuilder::insertCodePoint(icu::FormattedStringBuilder *a1, int a2, unsigned int a3, char a4, UErrorCode *a5)
{
  if (a3 < 0x10000)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = icu::FormattedStringBuilder::prepareForInsert(a1, a2, v9, a5);
  if (*a5 <= 0)
  {
    v11 = (a1 + 8);
    if (*a1)
    {
      v11 = *(a1 + 1);
      v12 = *(a1 + 11);
    }

    else
    {
      v12 = (a1 + 88);
    }

    if (HIWORD(a3))
    {
      *(v11 + v10) = (a3 >> 10) - 10304;
      v13 = v10 + 1;
      *(v11 + v13) = a3 & 0x3FF | 0xDC00;
      *(v12 + v13) = a4;
    }

    else
    {
      *(v11 + v10) = a3;
    }

    *(v12 + v10) = a4;
  }

  return v9;
}

uint64_t icu::FormattedStringBuilder::prepareForInsert(icu::FormattedStringBuilder *this, int a2, uint64_t a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return a3;
  }

  if (a2 || (v4 = (*(this + 32) - a3), v4 < 0))
  {
    if (*(this + 33) != a2)
    {
      return icu::FormattedStringBuilder::prepareForInsertHelper(this, a2, a3, a4);
    }

    v5 = *this == 1 ? *(this + 4) : 40;
    v4 = (*(this + 32) + a2);
    if (v5 - v4 < a3)
    {
      return icu::FormattedStringBuilder::prepareForInsertHelper(this, a2, a3, a4);
    }

    v6 = a2 + a3;
  }

  else
  {
    v6 = *(this + 33) + a3;
    *(this + 32) = v4;
  }

  *(this + 33) = v6;
  return v4;
}

uint64_t icu::FormattedStringBuilder::insert(icu::FormattedStringBuilder *a1, int a2, uint64_t a3, char a4, int a5, UErrorCode *a6)
{
  v7 = *(a3 + 8);
  if (*(a3 + 8) < 0)
  {
    v8 = *(a3 + 12);
    if (v8)
    {
      if (v8 != 1 || (a5 & 1) != 0)
      {
        return icu::FormattedStringBuilder::insert(a1, a2, a3, 0, v8, a4, a5, a6);
      }

      goto LABEL_9;
    }

    return 0;
  }

  if (v7 < 0x20)
  {
    return 0;
  }

  if (v7 & 0x7FE0) != 0x20 || (a5)
  {
    v8 = v7 >> 5;
    return icu::FormattedStringBuilder::insert(a1, a2, a3, 0, v8, a4, a5, a6);
  }

LABEL_9:
  if ((v7 & 2) != 0)
  {
    v9 = (a3 + 10);
  }

  else
  {
    v9 = *(a3 + 24);
  }

  return icu::FormattedStringBuilder::insertCodePoint(a1, a2, *v9, a4, a6);
}

uint64_t icu::FormattedStringBuilder::insert(icu::FormattedStringBuilder *a1, int a2, uint64_t a3, unsigned int a4, int a5, char a6, int a7, UErrorCode *a8)
{
  v11 = a4;
  v14 = a5 - a4;
  if (a7)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  v16 = icu::FormattedStringBuilder::prepareForInsert(a1, a2, (v15 + v14), a8);
  if (*a8 <= 0)
  {
    if (a7)
    {
      if (*a1)
      {
        *(*(a1 + 1) + 2 * v16) = 8296;
        v17 = *(a1 + 11);
      }

      else
      {
        *(a1 + v16 + 4) = 8296;
        v17 = (a1 + 88);
      }

      *(v17 + v16++) = a6;
    }

    if (v14 >= 1)
    {
      v18 = 0;
      v19 = 2 * v11;
      v20 = v14;
      v21 = v16;
      do
      {
        v22 = *(a3 + 8);
        if ((v22 & 0x8000u) == 0)
        {
          v23 = v22 >> 5;
        }

        else
        {
          v23 = *(a3 + 12);
        }

        if (v23 <= v11)
        {
          v25 = -1;
        }

        else
        {
          if ((v22 & 2) != 0)
          {
            v24 = a3 + 10;
          }

          else
          {
            v24 = *(a3 + 24);
          }

          v25 = *(v24 + v19);
        }

        if (*a1)
        {
          v26 = v18 + v16;
          *(*(a1 + 1) + 2 * v21) = v25;
          v27 = *(a1 + 11);
        }

        else
        {
          *(a1 + v21 + 4) = v25;
          v26 = v21;
          v27 = (a1 + 88);
        }

        *(v27 + v26) = a6;
        ++v18;
        ++v21;
        v19 += 2;
        ++v11;
        --v20;
      }

      while (v20);
    }

    if (a7)
    {
      v28 = v16 + v14;
      if (*a1)
      {
        *(*(a1 + 1) + 2 * v28) = 8297;
        v29 = *(a1 + 11);
      }

      else
      {
        *(a1 + v28 + 4) = 8297;
        v29 = (a1 + 88);
      }

      *(v29 + v28) = a6;
    }
  }

  return (v15 + v14);
}

uint64_t icu::FormattedStringBuilder::splice(icu::FormattedStringBuilder *this, int a2, int a3, uint64_t a4, unsigned int a5, int a6, char a7, UErrorCode *a8)
{
  v8 = a6 - a5;
  v9 = (v8 + a2 - a3);
  if (*a8 <= 0)
  {
    v12 = a5;
    v15 = v9 < 1 ? icu::FormattedStringBuilder::remove(this, a2, -v9) : icu::FormattedStringBuilder::prepareForInsert(this, a2, (v8 + a2 - a3), a8);
    if (*a8 <= 0 && v8 >= 1)
    {
      v17 = 0;
      v18 = 2 * v12;
      v19 = v15;
      do
      {
        v20 = *(a4 + 8);
        if ((v20 & 0x8000u) == 0)
        {
          v21 = v20 >> 5;
        }

        else
        {
          v21 = *(a4 + 12);
        }

        if (v21 <= v12)
        {
          v23 = -1;
        }

        else
        {
          if ((v20 & 2) != 0)
          {
            v22 = a4 + 10;
          }

          else
          {
            v22 = *(a4 + 24);
          }

          v23 = *(v22 + v18);
        }

        if (*this)
        {
          v24 = v17 + v15;
          *(*(this + 1) + 2 * v19) = v23;
          v25 = *(this + 11);
        }

        else
        {
          *(this + v19 + 4) = v23;
          v24 = v19;
          v25 = this + 88;
        }

        v25[v24] = a7;
        ++v17;
        ++v19;
        v18 += 2;
        ++v12;
        --v8;
      }

      while (v8);
    }
  }

  return v9;
}

uint64_t icu::FormattedStringBuilder::remove(icu::FormattedStringBuilder *this, int a2, int a3)
{
  v5 = (this + 8);
  if (*this == 1)
  {
    v5 = *v5;
  }

  v6 = *(this + 32) + a2;
  v7 = a3 + a2;
  v8 = *(this + 33) - (a3 + a2);
  if (v8)
  {
    memmove(v5 + 2 * v6, v5 + 2 * v6 + 2 * a3, 2 * v8);
    v9 = (this + 88);
    if ((*this & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = (this + 88);
  if (*this)
  {
LABEL_7:
    v9 = *v9;
  }

LABEL_8:
  v10 = *(this + 33) - v7;
  if (v10)
  {
    memmove(v9 + v6, v9 + v6 + a3, v10);
    v7 = *(this + 33);
  }

  *(this + 33) = v7 - a3;
  return v6;
}

uint64_t icu::FormattedStringBuilder::insert(icu::FormattedStringBuilder *this, int a2, const icu::FormattedStringBuilder *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  if (this == a3)
  {
    v4 = 0;
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
  }

  else
  {
    v4 = *(a3 + 33);
    if (v4)
    {
      v9 = icu::FormattedStringBuilder::prepareForInsert(this, a2, *(a3 + 33), a4);
      if (*a4 <= 0 && v4 >= 1)
      {
        v10 = 0;
        v11 = (a3 + 88);
        v12 = v9;
        do
        {
          v13 = *a3;
          if (*a3)
          {
            v14 = *(a3 + 1);
          }

          else
          {
            v14 = a3 + 8;
          }

          v15 = *(a3 + 32);
          v16 = *&v14[2 * v10 + 2 * v15];
          if (*this)
          {
            *(*(this + 1) + 2 * v12) = v16;
            if (v13)
            {
              v17 = *v11;
            }

            else
            {
              v17 = a3 + 88;
            }

            v18 = *(this + 11);
            v19 = v12;
          }

          else
          {
            v19 = v10 + v9;
            *(this + v12 + 4) = v16;
            if (v13)
            {
              v17 = *v11;
            }

            else
            {
              v17 = a3 + 88;
            }

            v18 = this + 88;
          }

          v18[v19] = v17[v15 + v10++];
          ++v12;
        }

        while (v4 != v10);
      }
    }
  }

  return v4;
}

uint64_t icu::FormattedStringBuilder::writeTerminator(icu::FormattedStringBuilder *this, UErrorCode *a2)
{
  result = icu::FormattedStringBuilder::prepareForInsert(this, *(this + 33), 1, a2);
  if (*a2 <= 0)
  {
    if (*this)
    {
      *(*(this + 1) + 2 * result) = 0;
      v5 = *(this + 11);
    }

    else
    {
      *(this + result + 4) = 0;
      v5 = this + 88;
    }

    v5[result] = 0;
    --*(this + 33);
  }

  return result;
}

uint64_t icu::FormattedStringBuilder::prepareForInsertHelper(icu::FormattedStringBuilder *this, int a2, int a3, UErrorCode *a4)
{
  if (*this)
  {
    v8 = *(this + 4);
    v9 = *(this + 1);
    v10 = *(this + 11);
  }

  else
  {
    v9 = this + 8;
    v10 = this + 88;
    v8 = 40;
  }

  v35 = 0;
  v11 = *(this + 32);
  if (uprv_add32_overflow(*(this + 33), a3, &v35))
  {
    goto LABEL_5;
  }

  v14 = v35;
  v15 = v8 - v35;
  if (v8 >= v35)
  {
    v24 = v15 + (v15 >> 31);
    v18 = v15 / 2;
    v25 = &v9[2 * (v15 / 2)];
    v26 = *(this + 33);
    if (v26)
    {
      memmove(&v9[2 * v18], &v9[2 * v11], 2 * v26);
      v27 = *(this + 33);
    }

    else
    {
      v27 = 0;
    }

    v28 = a2;
    v29 = v27 - a2;
    if (v29)
    {
      memmove(&v25[2 * a2 + 2 * a3], &v25[2 * a2], 2 * v29);
      v28 = *(this + 33);
    }

    v30 = &v10[v24 >> 1];
    if (v28)
    {
      memmove(v30, &v10[v11], v28);
      v28 = *(this + 33);
    }

    v31 = v28 - a2;
    if (v31)
    {
      memmove(&v30[a2 + a3], &v30[a2], v31);
    }
  }

  else
  {
    if (v35 >= 0x40000000)
    {
LABEL_5:
      v12 = U_INPUT_TOO_LONG_ERROR;
LABEL_6:
      *a4 = v12;
      return 0xFFFFFFFFLL;
    }

    v16 = malloc_type_malloc(4 * v35, 0x1000040BDFB0063uLL);
    v17 = malloc_type_malloc(2 * v14, 0x100004077774924uLL);
    if (!v16 || !v17)
    {
      v32 = v17;
      free(v16);
      free(v32);
      v12 = U_MEMORY_ALLOCATION_ERROR;
      goto LABEL_6;
    }

    v34 = v17;
    v33 = 2 * v14;
    v18 = v14 / 2;
    v19 = &v16[2 * (v14 / 2)];
    v20 = a2;
    if (a2)
    {
      memcpy(&v16[2 * v18], &v9[2 * v11], 2 * a2);
      v20 = a2;
      v19 = &v16[2 * v18];
    }

    v21 = *(this + 33) - a2;
    if (v21)
    {
      memcpy(&v19[2 * v20 + 2 * a3], &v9[2 * v11 + 2 * v20], 2 * v21);
      v20 = a2;
    }

    v22 = &v10[v11];
    if (a2)
    {
      memcpy(&v34[v18], v22, v20);
      v20 = a2;
    }

    v23 = *(this + 33) - a2;
    if (v23)
    {
      memcpy(&v34[v18 + v20 + a3], &v22[v20], v23);
    }

    if (*this == 1)
    {
      free(v9);
      free(v10);
    }

    *this = 1;
    *(this + 1) = v16;
    *(this + 4) = v33;
    *(this + 11) = v34;
    *(this + 24) = v33;
    v14 = v35;
  }

  *(this + 32) = v18;
  *(this + 33) = v14;
  return (v18 + a2);
}

uint64_t icu::FormattedStringBuilder::toUnicodeString@<X0>(icu::FormattedStringBuilder *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (this + 8);
  if (*this == 1)
  {
    v4 = *v4;
  }

  return icu::UnicodeString::UnicodeString(a2, v4 + 2 * *(this + 32), *(this + 33));
}

uint64_t icu::FormattedStringBuilder::toTempUnicodeString@<X0>(icu::FormattedStringBuilder *this@<X0>, uint64_t a2@<X8>)
{
  v6 = (this + 8);
  if (*this == 1)
  {
    v6 = *v6;
  }

  v9[1] = v2;
  v9[2] = v3;
  v7 = *(this + 33);
  v9[0] = v6 + 2 * *(this + 32);
  return icu::UnicodeString::UnicodeString(a2, 0, v9);
}

uint64_t icu::FormattedStringBuilder::toDebugString@<X0>(icu::FormattedStringBuilder *this@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  icu::UnicodeString::doAppend(a2, "<", 0, 0xFFFFFFFFLL);
  v4 = (this + 8);
  if (*this == 1)
  {
    v4 = *v4;
  }

  icu::UnicodeString::UnicodeString(&v17, v4 + 2 * *(this + 32), *(this + 33));
  if ((v18 & 0x8000u) == 0)
  {
    v5 = v18 >> 5;
  }

  else
  {
    v5 = v19;
  }

  icu::UnicodeString::doAppend(a2, &v17, 0, v5);
  icu::UnicodeString::~UnicodeString(v6, &v17);
  icu::UnicodeString::doAppend(a2, "]", 0, 0xFFFFFFFFLL);
  if (*(this + 33) >= 1)
  {
    for (i = 0; i < *(this + 33); ++i)
    {
      if (*this == 1)
      {
        v8 = *(this + 32);
        v9 = *(*(this + 11) + v8 + i);
        if (!*(*(this + 11) + v8 + i))
        {
          goto LABEL_17;
        }

        if ((v9 & 0xF0) == 0x20)
        {
          v10 = i + v8;
          goto LABEL_15;
        }
      }

      else
      {
        v11 = *(this + 32);
        v9 = *(this + i + v11 + 88);
        if (!*(this + i + v11 + 88))
        {
LABEL_17:
          v17 = 110;
          goto LABEL_23;
        }

        if ((v9 & 0xF0) == 0x20)
        {
          v10 = v11 + i;
LABEL_15:
          v12 = v9 & 0xF;
          if (v12 >= 0xB)
          {
            v14 = this + 88;
            if (*this)
            {
              v14 = *(this + 11);
            }

            v13 = v14[v10] & 0xF | 0x30;
          }

          else
          {
            v13 = aIfEE[v12];
          }

          v17 = v13;
LABEL_23:
          icu::UnicodeString::doAppend(a2, &v17, 0, 1);
          continue;
        }
      }

      icu::UnicodeString::append(a2, (v9 >> 4) | 0x30);
    }
  }

  result = icu::UnicodeString::doAppend(a2, "]", 0, 0xFFFFFFFFLL);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::FormattedStringBuilder::chars(icu::FormattedStringBuilder *this)
{
  v1 = (this + 8);
  if (*this == 1)
  {
    v1 = *v1;
  }

  return v1 + 2 * *(this + 32);
}

uint64_t icu::FormattedStringBuilder::contentEquals(icu::FormattedStringBuilder *this, const icu::FormattedStringBuilder *a2)
{
  v2 = *(this + 33);
  if (v2 == *(a2 + 33))
  {
    if (v2 < 1)
    {
      return 1;
    }

    v3 = 0;
    v4 = *this;
    v5 = (this + 8);
    v6 = *(this + 32);
    v7 = *a2 == 0;
    if (*a2)
    {
      v8 = *(a2 + 1);
    }

    else
    {
      v8 = a2 + 8;
    }

    v9 = *(a2 + 32);
    v10 = (this + 88);
    v13 = *(a2 + 11);
    v11 = a2 + 88;
    v12 = v13;
    if (v7)
    {
      v12 = v11;
    }

    v14 = *(this + 32);
    for (i = v9; ; ++i)
    {
      if (v4)
      {
        if (*(*v5 + 2 * v14) != *&v8[2 * i])
        {
          return 0;
        }

        v16 = v3 + v6;
        v17 = v3 + v9;
        v18 = *v10;
      }

      else
      {
        v16 = v14;
        v17 = i;
        v18 = v10;
        if (*(v5 + v14) != *&v8[2 * i])
        {
          return 0;
        }
      }

      if (*(v18 + v16) != v12[v17])
      {
        break;
      }

      ++v3;
      ++v14;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL icu::FormattedStringBuilder::containsField(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 132);
  if (v2 < 1)
  {
    return 0;
  }

  else
  {
    v3 = *(a1 + 128);
    v4 = 1;
    v5 = 1;
    do
    {
      v6 = a1 + 88;
      if (*a1)
      {
        v6 = *(a1 + 88);
      }

      if (*(v6 + v3) == a2)
      {
        break;
      }

      v5 = v4 < v2;
      ++v3;
      ++v4;
    }

    while (v4 - v2 != 1);
  }

  return v5;
}

uint64_t sub_195323404(uint64_t a1, int a2, UErrorCode *a3)
{
  *a1 = &unk_1F093ADE8;
  *(a1 + 8) = &unk_1F0935D00;
  *(a1 + 16) = 2;
  icu::UVector32::UVector32((a1 + 72), 4 * a2, a3);
  return a1;
}

void sub_195323478(void **a1)
{
  *a1 = &unk_1F093ADE8;
  v2 = (a1 + 1);
  icu::UVector32::~UVector32(a1 + 9);
  icu::UnicodeString::~UnicodeString(v3, v2);

  icu::FormattedValue::~FormattedValue(a1);
}

void sub_1953234E0(void **a1)
{
  sub_195323478(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195323524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + 16);
  if ((v6 & 0x11) != 0)
  {
    v7 = 0;
  }

  else if ((v6 & 2) != 0)
  {
    v7 = a1 + 18;
  }

  else
  {
    v7 = *(a1 + 32);
  }

  v10[1] = v2;
  v10[2] = v3;
  v10[0] = v7;
  if (v6 < 0)
  {
    v8 = *(a1 + 20);
  }

  return icu::UnicodeString::UnicodeString(a2, 1, v10);
}

uint64_t sub_19532359C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if ((v3 & 0x11) == 0)
  {
    if ((v3 & 2) != 0)
    {
      v4 = a1 + 18;
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = *(a1 + 32);
      if ((v3 & 0x8000) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v5 = *(a1 + 20);
    goto LABEL_9;
  }

  v4 = 0;
  if ((v3 & 0x8000) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v5 = v3 >> 5;
LABEL_9:
  (*(*a2 + 40))(a2, v4, v5);
  return a2;
}

BOOL sub_195323624(uint64_t a1, icu::ConstrainedFieldPosition *this)
{
  v3 = *(a1 + 80) / 4;
  v4 = *this;
  if (v3 <= *this)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v6 = (4 * v4) | 3;
  v7 = 1;
  while (v4 < 0)
  {
    if (icu::ConstrainedFieldPosition::matchesField(this, 0, 0))
    {
      v9 = 0;
      v10 = 0;
      v8 = 0;
      goto LABEL_21;
    }

LABEL_13:
    v7 = ++v4 < v3;
    v6 += 4;
    if (v3 == v4)
    {
      v4 = v3;
      goto LABEL_23;
    }
  }

  if (*(a1 + 80) <= v6 - 3)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(*(a1 + 96) + 4 * (v6 - 3));
  }

  if (*(a1 + 80) <= v6 - 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(*(a1 + 96) + 4 * (v6 - 2));
  }

  if (!icu::ConstrainedFieldPosition::matchesField(this, v8, v10))
  {
    goto LABEL_13;
  }

  if (*(a1 + 80) <= v6 - 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(*(a1 + 96) + 4 * (v6 - 1));
  }

  if (*(a1 + 80) > v6)
  {
    v11 = *(*(a1 + 96) + 4 * v6);
    goto LABEL_22;
  }

LABEL_21:
  v11 = 0;
LABEL_22:
  icu::ConstrainedFieldPosition::setState(this, v8, v10, v9, v11);
LABEL_23:
  if (v4 == v3)
  {
    v12 = v4;
  }

  else
  {
    v12 = v4 + 1;
  }

  icu::ConstrainedFieldPosition::setInt64IterationContext(this, v12);
  return v7;
}