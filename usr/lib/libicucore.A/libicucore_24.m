void *sub_1952EBEE8(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, UErrorCode *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0;
  __s1 = a2;
  memset(v19, 0, sizeof(v19));
  result = (*(*a3 + 88))(v19, a3, a5);
  if (*a5 <= 0)
  {
    result = icu::ResourceTable::getKeyAndValue(v19, 0, &__s1, a3);
    if (result)
    {
      v9 = 0;
      do
      {
        v10 = __s1;
        if (!strcmp(__s1, "locales"))
        {
          v18 = 0;
          memset(v17, 0, sizeof(v17));
          result = (*(*a3 + 88))(v17, a3, a5);
          if (*a5 > 0)
          {
            break;
          }

          KeyAndValue = icu::ResourceTable::getKeyAndValue(v17, 0, &__s1, a3);
          v12 = 0uLL;
          if (KeyAndValue)
          {
            v13 = 1;
            do
            {
              v24[2] = v12;
              v24[3] = v12;
              v24[1] = v12;
              v24[0] = v12;
              v23 = 0;
              v22 = (*(*a3 + 32))(a3, &v23, a5);
              icu::UnicodeString::UnicodeString(v24, 1, &v22);
              v14 = sub_1952EC2F4(v24, a5);
              uhash_puti(*qword_1EAEC9C80, __s1, v14, a5);
              icu::UnicodeString::~UnicodeString(v15, v24);
              v16 = icu::ResourceTable::getKeyAndValue(v17, v13, &__s1, a3);
              v12 = 0uLL;
              ++v13;
            }

            while (v16);
          }
        }

        else if (!strcmp(v10, "rules"))
        {
          is_mul_ok(*(qword_1EAEC9C80 + 16) + 1, 0x64uLL);
          operator new[]();
        }

        result = icu::ResourceTable::getKeyAndValue(v19, ++v9, &__s1, a3);
      }

      while (result);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1952EC21C(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v11 = 0;
  v12 = a2;
  memset(v10, 0, sizeof(v10));
  result = (*(*a3 + 88))(v10, a3, a5);
  if (*a5 <= 0)
  {
    result = icu::ResourceTable::getKeyAndValue(v10, 0, &v12, a3);
    if (result)
    {
      v8 = 1;
      do
      {
        v9 = sub_1952EC7D8(v12, a5);
        if (v9 > *(qword_1EAEC9C80 + 16))
        {
          *(qword_1EAEC9C80 + 16) = v9;
        }

        result = icu::ResourceTable::getKeyAndValue(v10, v8++, &v12, a3);
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_1952EC2F4(icu::UnicodeString *a1, UErrorCode *a2)
{
  v6[8] = *MEMORY[0x1E69E9840];
  memset(&v6[1], 0, 56);
  v6[0] = &v6[1] + 5;
  LODWORD(v6[1]) = 40;
  icu::CharString::appendInvariantChars(v6, a1, a2);
  v3 = sub_1952EC7D8(v6[0], a2);
  if (BYTE4(v6[1]))
  {
    free(v6[0]);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void *sub_1952EC3A4(void *result, icu::ResourceTable *this, char *a3, icu::ResourceValue *a4, int *a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v33 = a3;
  if (*a5 > 0)
  {
    goto LABEL_2;
  }

  v9 = result;
  result = icu::ResourceTable::getKeyAndValue(this, 0, &v33, a4);
  if (!result)
  {
    goto LABEL_2;
  }

  v10 = 0;
  while (1)
  {
    *(v9 + 108) = sub_1952EC7D8(v33, a5);
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    result = (*(*a4 + 88))(v31, a4, a5);
    if (*a5 > 0)
    {
      goto LABEL_2;
    }

    v26 = v10;
    result = icu::ResourceTable::getKeyAndValue(v31, 0, &v33, a4);
    if (result)
    {
      break;
    }

LABEL_22:
    v21 = *(qword_1EAEC9C80 + 8);
    v22 = *(v9 + 108);
    if (*(v21 + 100 * v22 + 4) == -1)
    {
LABEL_29:
      *a5 = 3;
      goto LABEL_2;
    }

    v23 = (v21 + 100 * v22 + 8);
    v24 = -1;
    while (v24 != 22)
    {
      v25 = *v23++;
      ++v24;
      if (v25 == -1)
      {
        if (v24 <= 0x16)
        {
          goto LABEL_29;
        }

        break;
      }
    }

    v10 = v26 + 1;
    result = icu::ResourceTable::getKeyAndValue(this, v26 + 1, &v33, a4);
    if (!result)
    {
      goto LABEL_2;
    }
  }

  v11 = 0;
  while (1)
  {
    result = sub_1952EBD70(v33);
    *(v9 + 112) = result;
    if (result == -1)
    {
      goto LABEL_29;
    }

    v30 = 0;
    memset(v29, 0, sizeof(v29));
    result = (*(*a4 + 88))(v29, a4, a5);
    if (*a5 > 0)
    {
      goto LABEL_2;
    }

    if (icu::ResourceTable::getKeyAndValue(v29, 0, &v33, a4))
    {
      break;
    }

LABEL_21:
    sub_1952EC970(v9, a5);
    *(v9 + 104) = 0;
    *(v9 + 88) = 0u;
    *(v9 + 72) = 0u;
    *(v9 + 56) = 0u;
    *(v9 + 40) = 0u;
    *(v9 + 24) = 0u;
    ++v11;
    *(v9 + 8) = 0u;
    result = icu::ResourceTable::getKeyAndValue(v31, v11, &v33, a4);
    if (!result)
    {
      goto LABEL_22;
    }
  }

  v12 = 0;
  while (1)
  {
    v13 = (*(*a4 + 24))(a4);
    v14 = sub_1952EC850(v33);
    v15 = v14;
    if (!v13)
    {
      LODWORD(v34) = 0;
      v27[0] = (*(*a4 + 32))(a4, &v34, a5);
      icu::UnicodeString::UnicodeString(v36, 1, v27);
      sub_1952EC8E8(v9, v15, v36, a5);
      result = icu::UnicodeString::~UnicodeString(v20, v36);
      if (*a5 >= 1)
      {
        goto LABEL_2;
      }

      goto LABEL_20;
    }

    *(v9 + 116) = v14;
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
    result = (*(*a4 + 80))(v27, a4, a5);
    if (*a5 > 0)
    {
      goto LABEL_2;
    }

    v16 = v28;
    if (v28 >= 1)
    {
      break;
    }

LABEL_20:
    if (!icu::ResourceTable::getKeyAndValue(v29, ++v12, &v33, a4))
    {
      goto LABEL_21;
    }
  }

  v17 = 0;
  while (1)
  {
    icu::ResourceArray::getValue(v27, v17, a4);
    v18 = *(v9 + 116);
    v35 = 0;
    v34 = (*(*a4 + 32))(a4, &v35, a5);
    icu::UnicodeString::UnicodeString(v36, 1, &v34);
    sub_1952EC8E8(v9, v18, v36, a5);
    result = icu::UnicodeString::~UnicodeString(v19, v36);
    if (*a5 >= 1)
    {
      break;
    }

    if (v16 == ++v17)
    {
      goto LABEL_20;
    }
  }

LABEL_2:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1952EC7D8(_BYTE *a1, int *a2)
{
  if (*a2 <= 0)
  {
    if (*a1 == 115 && a1[1] == 101 && a1[2] == 116)
    {
      v3 = a1[3];
      if (a1[3])
      {
        LODWORD(result) = 0;
        v5 = a1 + 4;
        while ((v3 - 48) <= 9)
        {
          result = (v3 + 10 * result - 48);
          v6 = *v5++;
          v3 = v6;
          if (!v6)
          {
            if (result)
            {
              return result;
            }

            break;
          }
        }
      }
    }

    *a2 = 3;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1952EC850(uint64_t a1)
{
  if (!strcmp(a1, "from"))
  {
    return 2;
  }

  result = strcmp(a1, "before");
  if (result)
  {
    if (!strcmp(a1, "after"))
    {
      return 1;
    }

    else if (*a1 == 97 && *(a1 + 1) == 116)
    {
      if (*(a1 + 2))
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_1952EC8E8(uint64_t result, int a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    v5 = a2;
    if (a2 == -1)
    {
      *a4 = 3;
    }

    else
    {
      v6 = result;
      result = sub_1952ECA44(a3, a4);
      if (*a4 <= 0)
      {
        *(v6 + 4 * result + 8) |= 1 << v5;
      }
    }
  }

  return result;
}

uint64_t sub_1952EC970(uint64_t result, _DWORD *a2)
{
  v2 = 0;
  v3 = (*(qword_1EAEC9C80 + 8) + 100 * *(result + 108));
  v4 = result + 8;
  while (1)
  {
    v5 = *(v4 + 4 * v2);
    if ((v5 & 8) != 0)
    {
      if (v2 == 12)
      {
        if (*(result + 112) != 1)
        {
          goto LABEL_24;
        }

        v3[1] = 1;
      }

      else
      {
        if (v2 || *(result + 112))
        {
          goto LABEL_24;
        }

        *v3 = 1;
      }
    }

    if ((v5 & 6) != 0)
    {
      break;
    }

LABEL_16:
    if (v2 > 0x17)
    {
      return result;
    }

LABEL_23:
    ++v2;
  }

  v6 = v2;
  while (++v6 != v2)
  {
    if (v6 == 25)
    {
      v6 = 0;
    }

    if (*(v4 + 4 * v6))
    {
      if (v2 == v6)
      {
        goto LABEL_16;
      }

      v7 = *(result + 112);
      v8 = v2;
      do
      {
        if (v8 == 24)
        {
          v8 = 0;
        }

        *&v3[4 * v8++ + 4] = v7;
      }

      while (v8 != v6);
      if (v2 >= 0x18)
      {
        return result;
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  *a2 = 3;
  return result;
}

uint64_t sub_1952ECA44(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (*(a1 + 8) < 0)
  {
    v4 = *(a1 + 12);
  }

  else
  {
    v4 = v3 >> 5;
  }

  if (v4 - 6 < 0xFFFFFFFE)
  {
    goto LABEL_18;
  }

  v5 = v4 - 3;
  v6 = (a1 + 10);
  if ((v3 & 2) == 0)
  {
    v6 = *(a1 + 24);
  }

  if (v6[v5] != 58)
  {
    goto LABEL_18;
  }

  v7 = v3;
  v8 = v4 - 2;
  v9 = v3 >> 5;
  if (v7 < 0)
  {
    v9 = *(a1 + 12);
  }

  if (v9 <= v8 || v6[v8] != 48 || (v10 = v4 - 1, v9 <= v10) || v6[v10] != 48 || (v11 = *v6, (v11 - 58) < 0xFFFFFFF6) || (result = (v11 - 48), v5 == 2) && ((v12 = v6[1], (v12 - 58) < 0xFFFFFFF6) || (result = (v12 + 10 * result - 48), result >= 25)))
  {
LABEL_18:
    result = 0;
    *a2 = 3;
  }

  return result;
}

icu::DecimalFormatSymbols *icu::DecimalFormatSymbols::DecimalFormatSymbols(icu::DecimalFormatSymbols *this, UErrorCode *a2)
{
  v4 = 0;
  *this = &unk_1F0939D90;
  do
  {
    v5 = this + v4;
    *(v5 + 1) = &unk_1F0935D00;
    *(v5 + 8) = 2;
    v4 += 64;
  }

  while (v4 != 1856);
  *(this + 233) = &unk_1F0935D00;
  *(this + 936) = 2;
  icu::Locale::Locale((this + 1936));
  v6 = 0;
  *(this + 310) = 0;
  do
  {
    v7 = this + v6;
    *(v7 + 311) = &unk_1F0935D00;
    *(v7 + 1248) = 2;
    v6 += 64;
  }

  while (v6 != 192);
  for (i = 0; i != 192; i += 64)
  {
    v9 = this + i;
    *(v9 + 335) = &unk_1F0935D00;
    *(v9 + 1344) = 2;
  }

  *(this + 2882) = 0;
  *(this + 2874) = 0;
  icu::DecimalFormatSymbols::initialize(this, this + 242, a2, 1, 0, 0);
  return this;
}

void icu::DecimalFormatSymbols::initialize(icu::DecimalFormatSymbols *this, char **a2, UErrorCode *a3, int a4, const icu::NumberingSystem *a5, char a6)
{
  v76[9] = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_20;
  }

  *(this + 2160) = 0;
  *(this + 2317) = 0;
  icu::DecimalFormatSymbols::initialize(this);
  if (a5)
  {
    Instance = 0;
  }

  else
  {
    Instance = icu::NumberingSystem::createInstance(a2, a3, v12);
    a5 = Instance;
  }

  if (*a3 > 0 || icu::NumberingSystem::getRadix(a5) != 10 || icu::NumberingSystem::isAlgorithmic(a5))
  {
    Name = "latn";
    goto LABEL_9;
  }

  Name = icu::NumberingSystem::getName(a5);
  memset(v76, 0, 64);
  (*(*a5 + 24))(v76, a5);
  v50 = icu::UnicodeString::char32At(v49, v76, 0);
  icu::UnicodeString::unBogus(this + 264);
  v60 = Instance;
  if (*(this + 136) < 0)
  {
    v51 = *(this + 69);
  }

  else
  {
    v51 = *(this + 136) >> 5;
  }

  icu::UnicodeString::replace((this + 264), 0, v51, v50);
  v52 = 0;
  v53 = (this + 1160);
  v54 = 9;
  do
  {
    if (v50 < 0x10000)
    {
      v55 = 1;
    }

    else
    {
      v55 = 2;
    }

    v52 += v55;
    v50 = icu::UnicodeString::char32At(v55, v76, v52);
    icu::UnicodeString::unBogus(v53);
    if (*(v53 + 4) < 0)
    {
      v56 = *(v53 + 3);
    }

    else
    {
      v56 = *(v53 + 4) >> 5;
    }

    icu::UnicodeString::replace(v53, 0, v56, v50);
    v53 = (v53 + 64);
    --v54;
  }

  while (v54);
  icu::UnicodeString::~UnicodeString(v57, v76);
  Instance = v60;
  if ((a6 & 1) == 0)
  {
LABEL_9:
    strcpy(this + 2874, Name);
    v15 = a2[5];
    v16 = ures_open(0, v15, a3);
    v17 = ures_getByKeyWithFallback(v16, "NumberElements", 0, a3);
    v18 = ures_openWithCountryFallback(0, v15, 0, a3);
    if (*a3 < 1)
    {
      v59 = Instance;
      v65[0] = this + 2317;
      v65[1] = this + 2160;
      LocaleByType = ures_getLocaleByType(v17, 1, a3);
      v58 = v17;
      v21 = ures_getLocaleByType(v17, 0, a3);
      icu::LocaleBased::setLocaleIDs(v65, LocaleByType, v21);
      v72 = &unk_1F0939DD0;
      v73 = this;
      *&v75 = 0;
      HIDWORD(v75) = 0;
      v74 = 0uLL;
      *(&v75 + 5) = 0;
      if (v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = v16;
      }

      if (v22)
      {
        do
        {
          if (strcmp(Name, "latn"))
          {
            memset(&v76[1], 0, 56);
            v76[0] = (&v76[1] + 5);
            LODWORD(v76[1]) = 40;
            icu::StringPiece::StringPiece(&v66, "NumberElements");
            v23 = icu::CharString::append(v76, v66, v67[0], a3);
            v24 = icu::CharString::append(v23, 47, a3);
            icu::StringPiece::StringPiece(&v66, Name);
            v25 = icu::CharString::append(v24, v66, v67[0], a3);
            v26 = icu::CharString::append(v25, 47, a3);
            icu::StringPiece::StringPiece(&v66, "symbols");
            icu::CharString::append(v26, v66, v67[0], a3);
            ures_getAllItemsWithFallback(v22, v76[0], &v72, a3);
            if (*a3 == U_MISSING_RESOURCE_ERROR)
            {
              *a3 = U_ZERO_ERROR;
            }

            else if (*a3 > 0)
            {
              if (BYTE4(v76[1]))
              {
                free(v76[0]);
              }

              goto LABEL_71;
            }

            if (BYTE4(v76[1]))
            {
              free(v76[0]);
            }
          }

          if (v74)
          {
            v27 = 0;
            while (v27 != 28)
            {
              if (!*(&v74 + ++v27))
              {
                if ((v27 - 1) > 0x1B)
                {
                  break;
                }

                goto LABEL_36;
              }
            }
          }

          else
          {
LABEL_36:
            ures_getAllItemsWithFallback(v22, "NumberElements/latn/symbols", &v72, a3);
            if (*a3 > 0)
            {
              goto LABEL_71;
            }
          }

          if (v22 == v18)
          {
            BYTE3(v74) = 0;
            BYTE11(v74) = 0;
            HIWORD(v74) = 0;
            *(&v74 + 6) = 0;
          }

          if (v22 == v16)
          {
            break;
          }

          v22 = v16;
        }

        while (v16);
        v29 = (this + 8);
        if (BYTE10(v74))
        {
          goto LABEL_45;
        }
      }

      else
      {
        v29 = (this + 8);
      }

      icu::UnicodeString::operator=(v73 + 81, v29);
LABEL_45:
      if (!BYTE1(v75))
      {
        icu::UnicodeString::operator=(v73 + 137, this + 9);
      }

      v30 = 0;
      v31 = (v29 + 136);
      v32 = -1;
      while (1)
      {
        v33 = v30 ? v31 : (this + 264);
        if (icu::UnicodeString::countChar32(v33, 0, 0x7FFFFFFF) != 1)
        {
          break;
        }

        v35 = icu::UnicodeString::char32At(v34, v33, 0);
        if (v30)
        {
          if (v30 + v32 != v35)
          {
            break;
          }
        }

        else
        {
          v32 = v35;
        }

        ++v30;
        v31 = (v31 + 64);
        if (v30 == 10)
        {
          goto LABEL_59;
        }
      }

      v32 = -1;
LABEL_59:
      *(this + 482) = v32;
      v64 = 0;
      v70 = 0;
      v71 = 0;
      *v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = &unk_1F0935D00;
      LOWORD(v67[0]) = 2;
      v36 = ucurr_forLocale(v15, &v71, 4, &v64);
      if (v64 <= 0 && v36 == 3)
      {
        icu::DecimalFormatSymbols::setCurrency(this, &v71, a3);
      }

      v37 = ures_open("icudt76l-curr", v15, a3);
      v62 = this;
      v63 = 0;
      v61 = &unk_1F0939E18;
      ures_getAllItemsWithFallback(v37, "currencySpacing", &v61, a3);
      if (!v63 || !BYTE1(v63))
      {
        v38 = off_1E740D198;
        for (i = 2680; i != 2872; i += 64)
        {
          v40 = v62;
          v41 = *v38++;
          icu::UnicodeString::UnicodeString(v76, v41, 0xFFFFFFFFLL, 0);
          icu::UnicodeString::operator=((v40 + i), v76);
          icu::UnicodeString::~UnicodeString(v42, v76);
        }

        v43 = off_1E740D198;
        for (j = 2488; j != 2680; j += 64)
        {
          v45 = v62;
          v46 = *v43++;
          icu::UnicodeString::UnicodeString(v76, v46, 0xFFFFFFFFLL, 0);
          icu::UnicodeString::operator=((v45 + j), v76);
          icu::UnicodeString::~UnicodeString(v47, v76);
        }
      }

      icu::ResourceSink::~ResourceSink(&v61);
      if (v37)
      {
        ures_close(v37);
      }

      icu::UnicodeString::~UnicodeString(v48, &v66);
LABEL_71:
      icu::ResourceSink::~ResourceSink(&v72);
      v17 = v58;
      Instance = v59;
      if (!v18)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (a4)
      {
        *a3 = U_USING_DEFAULT_WARNING;
        icu::DecimalFormatSymbols::initialize(this);
      }

      if (!v18)
      {
        goto LABEL_14;
      }
    }

    ures_close(v18);
LABEL_14:
    if (v17)
    {
      ures_close(v17);
    }

    if (v16)
    {
      ures_close(v16);
    }
  }

  if (Instance)
  {
    (*(*Instance + 8))(Instance);
  }

LABEL_20:
  v19 = *MEMORY[0x1E69E9840];
}

icu::DecimalFormatSymbols *icu::DecimalFormatSymbols::DecimalFormatSymbols(icu::DecimalFormatSymbols *this, const icu::Locale *a2, UErrorCode *a3)
{
  v5 = 0;
  *this = &unk_1F0939D90;
  do
  {
    v6 = this + v5;
    *(v6 + 1) = &unk_1F0935D00;
    *(v6 + 8) = 2;
    v5 += 64;
  }

  while (v5 != 1856);
  *(this + 233) = &unk_1F0935D00;
  *(this + 936) = 2;
  icu::Locale::Locale((this + 1936), a2);
  v7 = 0;
  *(this + 310) = 0;
  do
  {
    v8 = this + v7;
    *(v8 + 311) = &unk_1F0935D00;
    *(v8 + 1248) = 2;
    v7 += 64;
  }

  while (v7 != 192);
  for (i = 0; i != 192; i += 64)
  {
    v10 = this + i;
    *(v10 + 335) = &unk_1F0935D00;
    *(v10 + 1344) = 2;
  }

  *(this + 2882) = 0;
  *(this + 2874) = 0;
  icu::DecimalFormatSymbols::initialize(this, this + 242, a3, 0, 0, 0);
  return this;
}

icu::DecimalFormatSymbols *icu::DecimalFormatSymbols::DecimalFormatSymbols(icu::DecimalFormatSymbols *this, const icu::Locale *a2, const icu::NumberingSystem *a3, UErrorCode *a4)
{
  v7 = 0;
  *this = &unk_1F0939D90;
  do
  {
    v8 = this + v7;
    *(v8 + 1) = &unk_1F0935D00;
    *(v8 + 8) = 2;
    v7 += 64;
  }

  while (v7 != 1856);
  *(this + 233) = &unk_1F0935D00;
  *(this + 936) = 2;
  icu::Locale::Locale((this + 1936), a2);
  v9 = 0;
  *(this + 310) = 0;
  do
  {
    v10 = this + v9;
    *(v10 + 311) = &unk_1F0935D00;
    *(v10 + 1248) = 2;
    v9 += 64;
  }

  while (v9 != 192);
  for (i = 0; i != 192; i += 64)
  {
    v12 = this + i;
    *(v12 + 335) = &unk_1F0935D00;
    *(v12 + 1344) = 2;
  }

  *(this + 2882) = 0;
  *(this + 2874) = 0;
  icu::DecimalFormatSymbols::initialize(this, this + 242, a4, 0, a3, 0);
  return this;
}

icu::DecimalFormatSymbols *icu::DecimalFormatSymbols::DecimalFormatSymbols(icu::DecimalFormatSymbols *this, const icu::Locale *a2, const icu::NumberingSystem *a3, char a4, UErrorCode *a5)
{
  v9 = 0;
  *this = &unk_1F0939D90;
  do
  {
    v10 = this + v9;
    *(v10 + 1) = &unk_1F0935D00;
    *(v10 + 8) = 2;
    v9 += 64;
  }

  while (v9 != 1856);
  *(this + 233) = &unk_1F0935D00;
  *(this + 936) = 2;
  icu::Locale::Locale((this + 1936), a2);
  v11 = 0;
  *(this + 310) = 0;
  do
  {
    v12 = this + v11;
    *(v12 + 311) = &unk_1F0935D00;
    *(v12 + 1248) = 2;
    v11 += 64;
  }

  while (v11 != 192);
  for (i = 0; i != 192; i += 64)
  {
    v14 = this + i;
    *(v14 + 335) = &unk_1F0935D00;
    *(v14 + 1344) = 2;
  }

  *(this + 2882) = 0;
  *(this + 2874) = 0;
  icu::DecimalFormatSymbols::initialize(this, this + 242, a5, 0, a3, a4);
  return this;
}

icu::DecimalFormatSymbols *icu::DecimalFormatSymbols::DecimalFormatSymbols(icu::DecimalFormatSymbols *this)
{
  v2 = 0;
  *this = &unk_1F0939D90;
  do
  {
    v3 = this + v2;
    *(v3 + 1) = &unk_1F0935D00;
    *(v3 + 8) = 2;
    v2 += 64;
  }

  while (v2 != 1856);
  *(this + 233) = &unk_1F0935D00;
  *(this + 936) = 2;
  Root = icu::Locale::getRoot(this);
  icu::Locale::Locale((this + 1936), Root);
  v5 = 0;
  *(this + 310) = 0;
  do
  {
    v6 = this + v5;
    *(v6 + 311) = &unk_1F0935D00;
    *(v6 + 1248) = 2;
    v5 += 64;
  }

  while (v5 != 192);
  for (i = 0; i != 192; i += 64)
  {
    v8 = this + i;
    *(v8 + 335) = &unk_1F0935D00;
    *(v8 + 1344) = 2;
  }

  *(this + 2882) = 0;
  *(this + 2874) = 0;
  *(this + 2160) = 0;
  *(this + 2317) = 0;
  icu::DecimalFormatSymbols::initialize(this);
  return this;
}

uint64_t icu::DecimalFormatSymbols::initialize(icu::DecimalFormatSymbols *this)
{
  v58 = 46;
  v2 = *(this + 8);
  if ((v2 & 0x8000) != 0)
  {
    v3 = *(this + 5);
  }

  else
  {
    v3 = v2 >> 5;
  }

  icu::UnicodeString::doReplace(this + 8, 0, v3, &v58, 0, 1);
  if (*(this + 40))
  {
    v4 = 2;
  }

  else
  {
    v4 = *(this + 40) & 0x1E;
  }

  *(this + 40) = v4;
  v58 = 59;
  v5 = *(this + 72);
  if ((v5 & 0x8000) != 0)
  {
    v6 = *(this + 37);
  }

  else
  {
    v6 = v5 >> 5;
  }

  icu::UnicodeString::doReplace(this + 136, 0, v6, &v58, 0, 1);
  v58 = 37;
  v7 = *(this + 104);
  if ((v7 & 0x8000) != 0)
  {
    v8 = *(this + 53);
  }

  else
  {
    v8 = v7 >> 5;
  }

  icu::UnicodeString::doReplace(this + 200, 0, v8, &v58, 0, 1);
  v58 = 48;
  v9 = *(this + 136);
  if ((v9 & 0x8000) != 0)
  {
    v10 = *(this + 69);
  }

  else
  {
    v10 = v9 >> 5;
  }

  icu::UnicodeString::doReplace(this + 264, 0, v10, &v58, 0, 1);
  v58 = 49;
  v11 = *(this + 584);
  if ((v11 & 0x8000) != 0)
  {
    v12 = *(this + 293);
  }

  else
  {
    v12 = v11 >> 5;
  }

  icu::UnicodeString::doReplace(this + 1160, 0, v12, &v58, 0, 1);
  v58 = 50;
  v13 = *(this + 616);
  if ((v13 & 0x8000) != 0)
  {
    v14 = *(this + 309);
  }

  else
  {
    v14 = v13 >> 5;
  }

  icu::UnicodeString::doReplace(this + 1224, 0, v14, &v58, 0, 1);
  v58 = 51;
  v15 = *(this + 648);
  if ((v15 & 0x8000) != 0)
  {
    v16 = *(this + 325);
  }

  else
  {
    v16 = v15 >> 5;
  }

  icu::UnicodeString::doReplace(this + 1288, 0, v16, &v58, 0, 1);
  v58 = 52;
  v17 = *(this + 680);
  if ((v17 & 0x8000) != 0)
  {
    v18 = *(this + 341);
  }

  else
  {
    v18 = v17 >> 5;
  }

  icu::UnicodeString::doReplace(this + 1352, 0, v18, &v58, 0, 1);
  v58 = 53;
  v19 = *(this + 712);
  if ((v19 & 0x8000) != 0)
  {
    v20 = *(this + 357);
  }

  else
  {
    v20 = v19 >> 5;
  }

  icu::UnicodeString::doReplace(this + 1416, 0, v20, &v58, 0, 1);
  v58 = 54;
  v21 = *(this + 744);
  if ((v21 & 0x8000) != 0)
  {
    v22 = *(this + 373);
  }

  else
  {
    v22 = v21 >> 5;
  }

  icu::UnicodeString::doReplace(this + 1480, 0, v22, &v58, 0, 1);
  v58 = 55;
  v23 = *(this + 776);
  if ((v23 & 0x8000) != 0)
  {
    v24 = *(this + 389);
  }

  else
  {
    v24 = v23 >> 5;
  }

  icu::UnicodeString::doReplace(this + 1544, 0, v24, &v58, 0, 1);
  v58 = 56;
  v25 = *(this + 808);
  if ((v25 & 0x8000) != 0)
  {
    v26 = *(this + 405);
  }

  else
  {
    v26 = v25 >> 5;
  }

  icu::UnicodeString::doReplace(this + 1608, 0, v26, &v58, 0, 1);
  v58 = 57;
  v27 = *(this + 840);
  if ((v27 & 0x8000) != 0)
  {
    v28 = *(this + 421);
  }

  else
  {
    v28 = v27 >> 5;
  }

  icu::UnicodeString::doReplace(this + 1672, 0, v28, &v58, 0, 1);
  v58 = 35;
  v29 = *(this + 168);
  if ((v29 & 0x8000) != 0)
  {
    v30 = *(this + 85);
  }

  else
  {
    v30 = v29 >> 5;
  }

  icu::UnicodeString::doReplace(this + 328, 0, v30, &v58, 0, 1);
  v58 = 43;
  v31 = *(this + 232);
  if ((v31 & 0x8000) != 0)
  {
    v32 = *(this + 117);
  }

  else
  {
    v32 = v31 >> 5;
  }

  icu::UnicodeString::doReplace(this + 456, 0, v32, &v58, 0, 1);
  v58 = 45;
  v33 = *(this + 200);
  if ((v33 & 0x8000) != 0)
  {
    v34 = *(this + 101);
  }

  else
  {
    v34 = v33 >> 5;
  }

  icu::UnicodeString::doReplace(this + 392, 0, v34, &v58, 0, 1);
  v58 = 164;
  v35 = *(this + 264);
  if ((v35 & 0x8000) != 0)
  {
    v36 = *(this + 133);
  }

  else
  {
    v36 = v35 >> 5;
  }

  icu::UnicodeString::doReplace(this + 520, 0, v36, &v58, 0, 1);
  v57 = &unk_19548BDBC;
  icu::UnicodeString::setTo((this + 584), 1, &v57, 2);
  v58 = 46;
  v37 = *(this + 328);
  if ((v37 & 0x8000) != 0)
  {
    v38 = *(this + 165);
  }

  else
  {
    v38 = v37 >> 5;
  }

  icu::UnicodeString::doReplace(this + 648, 0, v38, &v58, 0, 1);
  v58 = 69;
  v39 = *(this + 360);
  if ((v39 & 0x8000) != 0)
  {
    v40 = *(this + 181);
  }

  else
  {
    v40 = v39 >> 5;
  }

  icu::UnicodeString::doReplace(this + 712, 0, v40, &v58, 0, 1);
  v58 = 8240;
  v41 = *(this + 392);
  if ((v41 & 0x8000) != 0)
  {
    v42 = *(this + 197);
  }

  else
  {
    v42 = v41 >> 5;
  }

  icu::UnicodeString::doReplace(this + 776, 0, v42, &v58, 0, 1);
  v58 = 42;
  v43 = *(this + 424);
  if ((v43 & 0x8000) != 0)
  {
    v44 = *(this + 213);
  }

  else
  {
    v44 = v43 >> 5;
  }

  icu::UnicodeString::doReplace(this + 840, 0, v44, &v58, 0, 1);
  v58 = 8734;
  v45 = *(this + 456);
  if ((v45 & 0x8000) != 0)
  {
    v46 = *(this + 229);
  }

  else
  {
    v46 = v45 >> 5;
  }

  icu::UnicodeString::doReplace(this + 904, 0, v46, &v58, 0, 1);
  v58 = -3;
  v47 = *(this + 488);
  if ((v47 & 0x8000) != 0)
  {
    v48 = *(this + 245);
  }

  else
  {
    v48 = v47 >> 5;
  }

  icu::UnicodeString::doReplace(this + 968, 0, v48, &v58, 0, 1);
  v58 = 64;
  v49 = *(this + 520);
  if ((v49 & 0x8000) != 0)
  {
    v50 = *(this + 261);
  }

  else
  {
    v50 = v49 >> 5;
  }

  icu::UnicodeString::doReplace(this + 1032, 0, v50, &v58, 0, 1);
  if (*(this + 552))
  {
    v51 = 2;
  }

  else
  {
    v51 = *(this + 552) & 0x1E;
  }

  *(this + 552) = v51;
  v58 = 215;
  v52 = *(this + 872);
  if ((v52 & 0x8000) != 0)
  {
    v53 = *(this + 437);
  }

  else
  {
    v53 = v52 >> 5;
  }

  icu::UnicodeString::doReplace(this + 1736, 0, v53, &v58, 0, 1);
  v58 = 126;
  v54 = *(this + 904);
  if ((v54 & 0x8000) != 0)
  {
    v55 = *(this + 453);
  }

  else
  {
    v55 = v54 >> 5;
  }

  result = icu::UnicodeString::doReplace(this + 1800, 0, v55, &v58, 0, 1);
  *(this + 1436) = 0;
  *(this + 482) = 48;
  *(this + 310) = 0;
  *(this + 2874) = 0;
  return result;
}

uint64_t icu::DecimalFormatSymbols::createWithLastResortData(icu::DecimalFormatSymbols *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::DecimalFormatSymbols::~DecimalFormatSymbols(icu::DecimalFormatSymbols *this)
{
  *this = &unk_1F0939D90;
  for (i = 2808; i != 2616; i -= 64)
  {
    icu::UnicodeString::~UnicodeString((this + i));
  }

  do
  {
    icu::UnicodeString::~UnicodeString((this + i));
    i -= 64;
  }

  while (i != 2424);
  icu::Locale::~Locale((this + 1936));
  icu::UnicodeString::~UnicodeString((this + 1864));
  for (j = 1800; j != -56; j -= 64)
  {
    icu::UnicodeString::~UnicodeString((this + j));
  }

  icu::UObject::~UObject(this);
}

{
  icu::DecimalFormatSymbols::~DecimalFormatSymbols(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::DecimalFormatSymbols::DecimalFormatSymbols(icu::DecimalFormatSymbols *this, const icu::DecimalFormatSymbols *a2)
{
  v4 = 0;
  *this = &unk_1F0939D90;
  do
  {
    v5 = this + v4;
    *(v5 + 1) = &unk_1F0935D00;
    *(v5 + 8) = 2;
    v4 += 64;
  }

  while (v4 != 1856);
  *(this + 233) = &unk_1F0935D00;
  *(this + 936) = 2;
  icu::Locale::Locale((this + 1936));
  v6 = 0;
  *(this + 310) = 0;
  do
  {
    v7 = this + v6;
    *(v7 + 311) = &unk_1F0935D00;
    *(v7 + 1248) = 2;
    v6 += 64;
  }

  while (v6 != 192);
  for (i = 0; i != 192; i += 64)
  {
    v9 = this + i;
    *(v9 + 335) = &unk_1F0935D00;
    *(v9 + 1344) = 2;
  }

  *(this + 2882) = 0;
  *(this + 2874) = 0;

  return icu::DecimalFormatSymbols::operator=(this, a2);
}

uint64_t icu::DecimalFormatSymbols::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = (a1 + 8);
    v5 = (a2 + 8);
    v6 = 29;
    do
    {
      icu::UnicodeString::fastCopyFrom(v4, v5);
      v4 += 8;
      v5 += 8;
      --v6;
    }

    while (v6);
    v7 = (a1 + 2680);
    v8 = (a2 + 2680);
    v9 = 3;
    do
    {
      icu::UnicodeString::fastCopyFrom(v7 - 24, v8 - 24);
      icu::UnicodeString::fastCopyFrom(v7, v8);
      v8 += 8;
      v7 += 8;
      --v9;
    }

    while (v9);
    icu::Locale::operator=((a1 + 1936), a2 + 1936);
    strcpy((a1 + 2317), (a2 + 2317));
    strcpy((a1 + 2160), (a2 + 2160));
    *(a1 + 2872) = *(a2 + 2872);
    *(a1 + 1928) = *(a2 + 1928);
    *(a1 + 2480) = *(a2 + 2480);
    strcpy((a1 + 2874), (a2 + 2874));
  }

  return a1;
}

uint64_t icu::DecimalFormatSymbols::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 2872) != *(a2 + 2872) || *(a1 + 2873) != *(a2 + 2873))
  {
    return 0;
  }

  v4 = -1856;
  do
  {
    v5 = *(a1 + v4 + 1872);
    if (v5)
    {
      if ((*(a2 + v4 + 1872) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((v5 & 0x8000) != 0)
      {
        v6 = *(a1 + v4 + 1876);
      }

      else
      {
        v6 = v5 >> 5;
      }

      result = 0;
      v8 = *(a2 + v4 + 1872);
      v9 = *(a2 + v4 + 1876);
      if ((v8 & 0x8000u) == 0)
      {
        v9 = v8 >> 5;
      }

      if ((v8 & 1) != 0 || v6 != v9)
      {
        return result;
      }

      v10 = (v8 & 2) != 0 ? (a2 + v4 + 1874) : *(a2 + v4 + 1888);
      result = icu::UnicodeString::doEquals(a1 + v4 + 1864, v10, v6);
      if (!result)
      {
        return result;
      }
    }

    v4 += 64;
  }

  while (v4);
  do
  {
    v11 = *(a1 + v4 + 2496);
    if (v11)
    {
      if ((*(a2 + v4 + 2496) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((v11 & 0x8000) != 0)
      {
        v12 = *(a1 + v4 + 2500);
      }

      else
      {
        v12 = v11 >> 5;
      }

      result = 0;
      v13 = *(a2 + v4 + 2496);
      v14 = *(a2 + v4 + 2500);
      if ((v13 & 0x8000u) == 0)
      {
        v14 = v13 >> 5;
      }

      if ((v13 & 1) != 0 || v12 != v14)
      {
        return result;
      }

      v15 = (v13 & 2) != 0 ? (a2 + v4 + 2498) : *(a2 + v4 + 2512);
      result = icu::UnicodeString::doEquals(a1 + v4 + 2488, v15, v12);
      if (!result)
      {
        return result;
      }
    }

    v16 = *(a1 + v4 + 2688);
    if (v16)
    {
      if ((*(a2 + v4 + 2688) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((v16 & 0x8000) != 0)
      {
        v17 = *(a1 + v4 + 2692);
      }

      else
      {
        v17 = v16 >> 5;
      }

      result = 0;
      v18 = *(a2 + v4 + 2688);
      v19 = *(a2 + v4 + 2692);
      if ((v18 & 0x8000u) == 0)
      {
        v19 = v18 >> 5;
      }

      if ((v18 & 1) != 0 || v17 != v19)
      {
        return result;
      }

      v20 = (v18 & 2) != 0 ? (a2 + v4 + 2690) : *(a2 + v4 + 2704);
      result = icu::UnicodeString::doEquals(a1 + v4 + 2680, v20, v17);
      if (!result)
      {
        return result;
      }
    }

    v4 += 64;
  }

  while (v4 != 192);
  result = icu::Locale::operator==(a1 + 1936, a2 + 1936);
  if (result)
  {
    if (!strcmp((a1 + 2317), (a2 + 2317)))
    {
      return strcmp((a1 + 2160), (a2 + 2160)) == 0;
    }

    return 0;
  }

  return result;
}

char **icu::DecimalFormatSymbols::setCurrency(char **result, const UChar *a2, int *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = result;
    v31 = 0u;
    v34 = 0;
    v33 = 0u;
    v32 = 0u;
    v30 = &unk_1F0935D00;
    LOWORD(v31) = 2;
    uprv_getStaticCurrencyName(a2, result[247], &v30, a3);
    if (*a3 <= 0)
    {
      icu::UnicodeString::unBogus((v5 + 73));
      if (v5[74] < 0)
      {
        v6 = *(v5 + 149);
      }

      else
      {
        v6 = *(v5 + 296) >> 5;
      }

      icu::UnicodeString::doReplace((v5 + 73), 0, v6, a2, 0, 3);
      icu::UnicodeString::operator=(v5 + 65, &v30);
    }

    *v17 = 0;
    u_UCharsToChars(a2, v17, 3);
    v16 = 0;
    v7 = ures_open("icudt76l-curr", v5[247], &v16);
    v8 = ures_getByKeyWithFallback(v7, "Currencies", 0, &v16);
    ures_getByKeyWithFallback(v8, v17, v8, &v16);
    v9 = v16;
    if (v16 <= 0 && ures_getSize(v8) >= 3)
    {
      ures_getByIndex(v8, 2, v8, &v16);
      v15 = 0;
      v5[310] = ures_getStringByIndex(v8, 0, &v15, &v16);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0;
      v25 = &unk_1F0935D00;
      LOWORD(v26) = 2;
      LODWORD(v18) = 0;
      StringByIndex = ures_getStringByIndex(v8, 1, &v18, &v16);
      if (v16 <= 0)
      {
        v20 = StringByIndex;
        icu::UnicodeString::setTo(&v25, 1, &v20, v18);
      }

      else
      {
        icu::UnicodeString::setToBogus(&v25);
      }

      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0;
      v20 = &unk_1F0935D00;
      LOWORD(v21) = 2;
      v19 = 0;
      v11 = ures_getStringByIndex(v8, 2, &v19, &v16);
      if (v16 <= 0)
      {
        v18 = v11;
        icu::UnicodeString::setTo(&v20, 1, &v18, v19);
      }

      else
      {
        icu::UnicodeString::setToBogus(&v20);
      }

      v12 = v16;
      if (v16 <= 0)
      {
        icu::UnicodeString::operator=(v5 + 137, &v20);
        icu::UnicodeString::operator=(v5 + 81, &v25);
      }

      icu::UnicodeString::~UnicodeString(v12, &v20);
      icu::UnicodeString::~UnicodeString(v13, &v25);
    }

    if (v8)
    {
      ures_close(v8);
    }

    if (v7)
    {
      ures_close(v7);
    }

    result = icu::UnicodeString::~UnicodeString(v9, &v30);
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::DecimalFormatSymbols::getLocale@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, icu::Locale *a4@<X8>)
{
  v5[0] = (a1 + 2317);
  v5[1] = (a1 + 2160);
  return icu::LocaleBased::getLocale(v5, a2, a3, a4);
}

uint64_t icu::DecimalFormatSymbols::getPatternForCurrencySpacing(uint64_t a1, int a2, int a3, int *a4)
{
  v4 = a1 + (a2 << 6);
  v5 = v4 + 2680;
  v6 = v4 + 2488;
  if (!a3)
  {
    v6 = v5;
  }

  if (*a4 >= 1)
  {
    return a1 + 1864;
  }

  else
  {
    return v6;
  }
}

icu::UnicodeString *icu::DecimalFormatSymbols::setPatternForCurrencySpacing(uint64_t a1, int a2, int a3, UChar **a4)
{
  v4 = 2488;
  if (!a3)
  {
    v4 = 2680;
  }

  return icu::UnicodeString::operator=((a1 + v4 + (a2 << 6)), a4);
}

void sub_1952EE8B4(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_1952EE8EC(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v21[8] = *MEMORY[0x1E69E9840];
  v17 = 0;
  __s1 = a2;
  memset(v16, 0, sizeof(v16));
  result = (*(*a3 + 88))(v16, a3, a5);
  if (*a5 <= 0)
  {
    result = icu::ResourceTable::getKeyAndValue(v16, 0, &__s1, a3);
    if (result)
    {
      v9 = 0;
      v10 = a1 + 16;
      while (2)
      {
        v11 = 0;
        v12 = __s1;
        while (((0x7FD2334uLL >> v11) & 1) != 0 || strcmp(v12, off_1E740D0B0[v11]))
        {
          if (++v11 == 29)
          {
            goto LABEL_11;
          }
        }

        if (!*(v10 + v11))
        {
          *(v10 + v11) = 1;
          v13 = *(a1 + 8);
          v20 = 0;
          v19 = (*(*a3 + 32))(a3, &v20, a5);
          icu::UnicodeString::UnicodeString(v21, 1, &v19);
          sub_1952EEAC0(v13, v11, v21, 1);
          result = icu::UnicodeString::~UnicodeString(v14, v21);
          if (*a5 >= 1)
          {
            break;
          }
        }

LABEL_11:
        result = icu::ResourceTable::getKeyAndValue(v16, ++v9, &__s1, a3);
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

icu::UnicodeString *sub_1952EEAC0(icu::UnicodeString *result, int a2, UChar **a3, int a4)
{
  v6 = result;
  v18 = *MEMORY[0x1E69E9840];
  if (a2 == 9)
  {
    *(result + 2873) = 1;
    goto LABEL_5;
  }

  if (a2 != 8)
  {
    if (a2 <= 28)
    {
      result = icu::UnicodeString::operator=(result + 8 * a2 + 1, a3);
      if (a2 == 4)
      {
        result = icu::UnicodeString::char32At(v10, a3, 0);
        if (a4)
        {
          v11 = result;
          result = u_charDigitValue(result);
          if (!result)
          {
            result = icu::UnicodeString::countChar32(a3, 0, 0x7FFFFFFF);
            if (result == 1)
            {
              *(v6 + 482) = v11;
              v12 = (v6 + 1160);
              v13 = v11 + 1;
              v14 = 9;
              do
              {
                icu::UnicodeString::UnicodeString(v17, v13);
                icu::UnicodeString::operator=(v12, v17);
                result = icu::UnicodeString::~UnicodeString(v15, v17);
                v12 = (v12 + 64);
                ++v13;
                --v14;
              }

              while (v14);
              goto LABEL_18;
            }
          }
        }

        goto LABEL_17;
      }

      if ((a2 - 18) <= 8)
      {
LABEL_17:
        *(v6 + 482) = -1;
      }
    }

LABEL_18:
    v16 = *MEMORY[0x1E69E9840];
    return result;
  }

  *(result + 2872) = 1;
LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  v8 = (result + 64 * a2 + 8);

  return icu::UnicodeString::operator=(v8, a3);
}

void sub_1952EEC48(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1952EEC80(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v29[8] = *MEMORY[0x1E69E9840];
  v25 = 0;
  __s1 = a2;
  memset(v24, 0, sizeof(v24));
  (*(*a3 + 88))(v24, a3, a5);
  result = icu::ResourceTable::getKeyAndValue(v24, 0, &__s1, a3);
  if (result)
  {
    v9 = 0;
    do
    {
      v10 = __s1;
      v11 = strcmp(__s1, "beforeCurrency");
      if (v11)
      {
        if (strcmp(v10, "afterCurrency"))
        {
          goto LABEL_26;
        }

        *(a1 + 17) = 1;
      }

      else
      {
        *(a1 + 16) = 1;
      }

      v23 = 0;
      memset(v22, 0, sizeof(v22));
      (*(*a3 + 88))(v22, a3, a5);
      if (icu::ResourceTable::getKeyAndValue(v22, 0, &__s1, a3))
      {
        if (v11)
        {
          v12 = 2680;
        }

        else
        {
          v12 = 2488;
        }

        v13 = 1;
        while (1)
        {
          v14 = __s1;
          if (!strcmp(__s1, "currencyMatch"))
          {
            break;
          }

          if (!strcmp(v14, "surroundingMatch"))
          {
            v15 = 1;
            goto LABEL_18;
          }

          if (!strcmp(v14, "insertBetween"))
          {
            v15 = 2;
LABEL_18:
            v16 = *(a1 + 8);
            if (*a5 < 1)
            {
              v18 = v16 + (v15 << 6);
              if (v11)
              {
                v17 = v18 + 2680;
              }

              else
              {
                v17 = v18 + 2488;
              }
            }

            else
            {
              v17 = v16 + 1864;
            }

            if (*(v17 + 8) <= 0x1Fu)
            {
              v28 = 0;
              v27 = (*(*a3 + 32))(a3, &v28, a5);
              icu::UnicodeString::UnicodeString(v29, 1, &v27);
              icu::UnicodeString::operator=((v16 + v12 + (v15 << 6)), v29);
              icu::UnicodeString::~UnicodeString(v19, v29);
            }
          }

          if (!icu::ResourceTable::getKeyAndValue(v22, v13++, &__s1, a3))
          {
            goto LABEL_26;
          }
        }

        v15 = 0;
        goto LABEL_18;
      }

LABEL_26:
      result = icu::ResourceTable::getKeyAndValue(v24, ++v9, &__s1, a3);
    }

    while (result);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t uprv_decContextDefault(uint64_t result, int a2)
{
  *result = xmmword_19548BE80;
  *(result + 16) = 8927;
  *(result + 24) = 0;
  HIDWORD(v3) = a2;
  LODWORD(v3) = a2;
  v2 = v3 >> 5;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v4 = xmmword_19548BEA0;
      goto LABEL_11;
    }

    if (v2 == 4)
    {
      v4 = xmmword_19548BE90;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    if (v2 == 1)
    {
      v4 = xmmword_19548BEB0;
LABEL_11:
      *result = v4;
      *(result + 16) = 0;
      *(result + 24) = 1;
      return result;
    }
  }

  *(result + 20) = 128;
  return result;
}

uint64_t uprv_decContextSetStatusFromString(uint64_t a1, char *__s1)
{
  if (!strcmp(__s1, "Conversion syntax"))
  {
    v4 = *(a1 + 20) | 1;
LABEL_30:
    *(a1 + 20) = v4;
    return a1;
  }

  if (!strcmp(__s1, "Division by zero"))
  {
    v4 = *(a1 + 20) | 2;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Division impossible"))
  {
    v4 = *(a1 + 20) | 4;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Division undefined"))
  {
    v4 = *(a1 + 20) | 8;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Inexact"))
  {
    v4 = *(a1 + 20) | 0x20;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Insufficient storage"))
  {
    v4 = *(a1 + 20) | 0x10;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Invalid context"))
  {
    v4 = *(a1 + 20) | 0x40;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Invalid operation"))
  {
    v4 = *(a1 + 20) | 0x80;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Overflow"))
  {
    v4 = *(a1 + 20) | 0x200;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Clamped"))
  {
    v4 = *(a1 + 20) | 0x400;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Rounded"))
  {
    v4 = *(a1 + 20) | 0x800;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Subnormal"))
  {
    v4 = *(a1 + 20) | 0x1000;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Underflow"))
  {
    v4 = *(a1 + 20) | 0x2000;
    goto LABEL_30;
  }

  if (strcmp(__s1, "No status"))
  {
    return 0;
  }

  return a1;
}

uint64_t uprv_decContextSetStatusFromStringQuiet(uint64_t a1, char *__s1)
{
  if (!strcmp(__s1, "Conversion syntax"))
  {
    v4 = *(a1 + 20) | 1;
LABEL_30:
    *(a1 + 20) = v4;
    return a1;
  }

  if (!strcmp(__s1, "Division by zero"))
  {
    v4 = *(a1 + 20) | 2;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Division impossible"))
  {
    v4 = *(a1 + 20) | 4;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Division undefined"))
  {
    v4 = *(a1 + 20) | 8;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Inexact"))
  {
    v4 = *(a1 + 20) | 0x20;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Insufficient storage"))
  {
    v4 = *(a1 + 20) | 0x10;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Invalid context"))
  {
    v4 = *(a1 + 20) | 0x40;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Invalid operation"))
  {
    v4 = *(a1 + 20) | 0x80;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Overflow"))
  {
    v4 = *(a1 + 20) | 0x200;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Clamped"))
  {
    v4 = *(a1 + 20) | 0x400;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Rounded"))
  {
    v4 = *(a1 + 20) | 0x800;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Subnormal"))
  {
    v4 = *(a1 + 20) | 0x1000;
    goto LABEL_30;
  }

  if (!strcmp(__s1, "Underflow"))
  {
    v4 = *(a1 + 20) | 0x2000;
    goto LABEL_30;
  }

  if (strcmp(__s1, "No status"))
  {
    return 0;
  }

  return a1;
}

const char *uprv_decContextStatusToString(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 > 63)
  {
    if (v1 <= 1023)
    {
      switch(v1)
      {
        case 64:
          return "Invalid context";
        case 128:
          return "Invalid operation";
        case 512:
          return "Overflow";
      }
    }

    else if (v1 > 4095)
    {
      if (v1 == 4096)
      {
        return "Subnormal";
      }

      if (v1 == 0x2000)
      {
        return "Underflow";
      }
    }

    else
    {
      if (v1 == 1024)
      {
        return "Clamped";
      }

      if (v1 == 2048)
      {
        return "Rounded";
      }
    }
  }

  else if (v1 <= 3)
  {
    switch(v1)
    {
      case 0:
        return "No status";
      case 1:
        return "Conversion syntax";
      case 2:
        return "Division by zero";
    }
  }

  else if (v1 > 15)
  {
    if (v1 == 16)
    {
      return "Insufficient storage";
    }

    if (v1 == 32)
    {
      return "Inexact";
    }
  }

  else
  {
    if (v1 == 4)
    {
      return "Division impossible";
    }

    if (v1 == 8)
    {
      return "Division undefined";
    }
  }

  return "Multiple status";
}

uint64_t uprv_decNumberFromInt32(uint64_t a1, signed int a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    a2 = -a2;
  }

  result = uprv_decNumberFromUInt32(a1, a2);
  if (v2 < 0)
  {
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t uprv_decNumberFromUInt32(uint64_t result, unsigned int a2)
{
  *(result + 8) = 0;
  *result = 1;
  if (a2)
  {
    v2 = 0;
    v3 = result + 9;
    v4 = 9;
    do
    {
      *(result + v4++) = a2 % 0xA;
      v2 += 0x100000000;
      v5 = a2 > 9;
      a2 /= 0xAu;
    }

    while (v5);
    v6 = v4 - 9;
    v7 = (v3 + (v2 >> 32) - 1);
    if (v7 >= v3)
    {
      while (!*v7 && v6 != 1)
      {
        --v6;
        if (--v7 < v3)
        {
          v6 = 0;
          break;
        }
      }
    }

    *result = v6;
  }

  return result;
}

double uprv_decNumberZero(uint64_t a1)
{
  *(a1 + 8) = 0;
  *&result = 1;
  *a1 = 1;
  return result;
}

uint64_t uprv_decNumberToInt32(unsigned int *a1, uint64_t a2)
{
  if ((a1[2] & 0x70) != 0)
  {
    goto LABEL_4;
  }

  v2 = *a1;
  if (v2 > 10 || a1[1])
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 9);
  if (v2 < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a1 + 10;
    v7 = v2 - 1;
    v8 = dword_19548BEE0;
    do
    {
      v10 = *v6++;
      v9 = v10;
      v11 = *v8++;
      v5 += v11 * v9;
      --v7;
    }

    while (v7);
    if (v5 > 0xCCCCCCC)
    {
LABEL_4:
      uprv_decContextSetStatus(a2, 128);
      return 0;
    }

    if (v5 == 214748364 && v4 >= 8)
    {
      if ((a1[2] & 0x80) != 0 && v4 == 8)
      {
        return 0x80000000;
      }

      goto LABEL_4;
    }
  }

  v13 = v4 + 10 * v5;
  if (*(a1 + 8) >= 0)
  {
    return v13;
  }

  else
  {
    return -v13;
  }
}

uint64_t uprv_decNumberToUInt32(unsigned int *a1, uint64_t a2)
{
  if ((a1[2] & 0x70) != 0)
  {
    goto LABEL_4;
  }

  v2 = *a1;
  if (v2 > 10 || a1[1])
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 9);
  if ((a1[2] & 0x80) == 0)
  {
    if (v2 >= 2)
    {
      v5 = 0;
      v6 = a1 + 10;
      v7 = v2 - 1;
      v8 = dword_19548BEE0;
      do
      {
        v10 = *v6++;
        v9 = v10;
        v11 = *v8++;
        v5 += v11 * v9;
        --v7;
      }

      while (v7);
      if (v5 > 0x19999999)
      {
        goto LABEL_4;
      }

      if (v5 == 429496729 && v4 > 5)
      {
        goto LABEL_4;
      }

      return v4 + 10 * v5;
    }

LABEL_18:
    v5 = 0;
    return v4 + 10 * v5;
  }

  if (v2 == 1 && !*(a1 + 9))
  {
    goto LABEL_18;
  }

LABEL_4:
  uprv_decContextSetStatus(a2, 128);
  return 0;
}

uint64_t sub_1952EF7E0(uint64_t result, _BYTE *a2, int a3)
{
  v3 = a2;
  v4 = result;
  v5 = *result;
  if (*result <= 49)
  {
    v5 = byte_19548BF08[v5];
  }

  v6 = *(result + 4);
  v7 = *(result + 8);
  if (v7 < 0)
  {
    *a2 = 45;
    v3 = a2 + 1;
    LOBYTE(v7) = *(result + 8);
  }

  if ((v7 & 0x70) == 0)
  {
    v8 = *result;
    goto LABEL_14;
  }

  if ((v7 & 0x40) != 0)
  {
    *v3 = 6712905;
    strcpy(v3 + 3, "inity");
    return result;
  }

  if ((v7 & 0x10) != 0)
  {
    *v3++ = 115;
  }

  *v3 = 5136718;
  if (!v6)
  {
    v3 += 3;
    v8 = *result;
    if (*(result + 9) || v8 != 1)
    {
LABEL_14:
      v9 = v5 + 8;
      v10 = v8;
      if (v8 <= 49)
      {
        v10 = byte_19548BF08[v8];
      }

      v11 = v8 - v10;
      if (!v6)
      {
        if (v5)
        {
          do
          {
            if ((v11 & 0x80000000) == 0)
            {
              v29 = *(v4 + v9);
              v30 = v11 + 1;
              v31 = &dword_19548BEE0[v11];
              do
              {
                v32 = 48;
                *v3 = 48;
                v34 = *v31--;
                v33 = v34;
                if (v29 <= 2 * v34)
                {
                  v39 = 2 * v33;
                }

                else
                {
                  v35 = 8 * v33;
                  if (v29 < 8 * v33)
                  {
                    v32 = 48;
                  }

                  else
                  {
                    v32 = 56;
                  }

                  if (v29 < 8 * v33)
                  {
                    v36 = 0;
                  }

                  else
                  {
                    v36 = 8 * v33;
                  }

                  v37 = v29 - v36;
                  if (v37 < v35 >> 1)
                  {
                    v38 = 0;
                  }

                  else
                  {
                    v32 |= 4u;
                    v38 = 4 * (v33 & 0x1FFFFFFF);
                  }

                  if (v29 >= 8 * v33 || v37 >= 4 * (v33 & 0x1FFFFFFFu))
                  {
                    *v3 = v32;
                  }

                  v29 = v37 - v38;
                  v39 = v35 >> 2;
                }

                if (v29 < v39)
                {
                  v40 = 0;
                }

                else
                {
                  v40 = v39;
                }

                v41 = v29 - v40;
                result = v39 >> 1;
                if (v41 < v39 >> 1)
                {
                  v42 = 0;
                }

                else
                {
                  v42 = v39 >> 1;
                }

                if (v29 >= v39 || v41 >= result)
                {
                  if (v29 < v39)
                  {
                    v44 = v32;
                  }

                  else
                  {
                    v44 = v32 + 2;
                  }

                  if (v41 >= result)
                  {
                    ++v44;
                  }

                  *v3 = v44;
                }

                v29 = v41 - v42;
                ++v3;
                v45 = v30-- <= 1;
              }

              while (!v45);
            }

            v11 = 0;
            v45 = v9-- <= 9;
          }

          while (!v45);
        }

        goto LABEL_220;
      }

      v12 = v8 + v6;
      if (v6 <= 0 && v12 > -6)
      {
        v13 = 0;
        v14 = v8 + v6;
        goto LABEL_20;
      }

      v13 = v12 - 1;
      v14 = 1;
      if (a3 && v12 != 1)
      {
        v46 = ((1 - v12) % 3u) ^ 3;
        if (!((1 - v12) % 3u))
        {
          v46 = 0;
        }

        if (v12 > 0)
        {
          v46 = v13 % 3;
        }

        v13 -= v46;
        if (v8 != 1 || *(result + 9) || (*(result + 8) & 0x70) != 0)
        {
          v14 = v46 + 1;
        }

        else
        {
          if (v46)
          {
            v13 += 3;
            v14 = v46 - 2;
LABEL_20:
            v15 = *(result + v9);
            if (v14 < 1)
            {
              *v3 = 11824;
              result = (v3 + 2);
              if (v14 < 0)
              {
                v16 = ~v14;
                memset(result, 48, v16 + 1);
                result = &v3[v16 + 3];
              }

              v3 = result;
              if ((v11 & 0x80000000) == 0)
              {
                goto LABEL_26;
              }

              while (v9 != 9)
              {
                v11 = 0;
                --v9;
                v15 = *(v4 + v9);
                do
                {
LABEL_26:
                  v17 = 48;
                  *v3 = 48;
                  v18 = dword_19548BEE0[v11];
                  if (v15 <= 2 * v18)
                  {
                    v23 = 2 * v18;
                  }

                  else
                  {
                    v19 = 8 * v18;
                    if (v15 < 8 * v18)
                    {
                      v17 = 48;
                    }

                    else
                    {
                      v17 = 56;
                    }

                    if (v15 < 8 * v18)
                    {
                      v20 = 0;
                    }

                    else
                    {
                      v20 = 8 * v18;
                    }

                    v21 = v15 - v20;
                    if (v21 < v19 >> 1)
                    {
                      v22 = 0;
                    }

                    else
                    {
                      v17 |= 4u;
                      v22 = 4 * (v18 & 0x1FFFFFFF);
                    }

                    if (v15 >= 8 * v18 || v21 >= 4 * (v18 & 0x1FFFFFFFu))
                    {
                      *v3 = v17;
                    }

                    v15 = v21 - v22;
                    v23 = v19 >> 2;
                  }

                  if (v15 < v23)
                  {
                    v24 = 0;
                  }

                  else
                  {
                    v24 = v23;
                  }

                  v25 = v15 - v24;
                  v26 = v23 >> 1;
                  if (v25 < v23 >> 1)
                  {
                    v27 = 0;
                  }

                  else
                  {
                    v27 = v23 >> 1;
                  }

                  if (v15 >= v23 || v25 >= v26)
                  {
                    if (v15 >= v23)
                    {
                      v17 += 2;
                    }

                    if (v25 >= v26)
                    {
                      ++v17;
                    }

                    *v3 = v17;
                  }

                  v15 = v25 - v27;
                  ++v3;
                  --v11;
                }

                while ((v11 & 0x80000000) == 0);
              }

              goto LABEL_188;
            }

            goto LABEL_111;
          }

          v14 = 1;
        }
      }

      v15 = *(result + v9);
LABEL_111:
      v47 = v14 + 1;
      v48 = v14;
      while (1)
      {
        if ((v11 & 0x80000000) != 0)
        {
          if (v9 == 9)
          {
            if (v14 >= *v4)
            {
              result = memset(v3, 48, v48);
              v3 += v48;
              goto LABEL_188;
            }

            v9 = 9;
LABEL_151:
            *v3++ = 46;
            if ((v11 & 0x80000000) == 0)
            {
              goto LABEL_154;
            }

            while (v9 != 9)
            {
              v11 = 0;
              --v9;
              v15 = *(v4 + v9);
              do
              {
LABEL_154:
                v61 = 48;
                *v3 = 48;
                v62 = dword_19548BEE0[v11];
                if (v15 <= 2 * v62)
                {
                  v67 = 2 * v62;
                }

                else
                {
                  v63 = 8 * v62;
                  if (v15 < 8 * v62)
                  {
                    v61 = 48;
                  }

                  else
                  {
                    v61 = 56;
                  }

                  if (v15 < 8 * v62)
                  {
                    v64 = 0;
                  }

                  else
                  {
                    v64 = 8 * v62;
                  }

                  v65 = v15 - v64;
                  if (v65 < v63 >> 1)
                  {
                    v66 = 0;
                  }

                  else
                  {
                    v61 |= 4u;
                    v66 = 4 * (v62 & 0x1FFFFFFF);
                  }

                  if (v15 >= 8 * v62 || v65 >= 4 * (v62 & 0x1FFFFFFFu))
                  {
                    *v3 = v61;
                  }

                  v15 = v65 - v66;
                  v67 = v63 >> 2;
                }

                if (v15 < v67)
                {
                  v68 = 0;
                }

                else
                {
                  v68 = v67;
                }

                v69 = v15 - v68;
                v70 = v67 >> 1;
                if (v69 < v67 >> 1)
                {
                  v71 = 0;
                }

                else
                {
                  v71 = v67 >> 1;
                }

                if (v15 >= v67 || v69 >= v70)
                {
                  if (v15 >= v67)
                  {
                    v61 += 2;
                  }

                  if (v69 >= v70)
                  {
                    ++v61;
                  }

                  *v3 = v61;
                }

                v15 = v69 - v71;
                --v11;
                ++v3;
              }

              while ((v11 & 0x80000000) == 0);
            }

LABEL_188:
            if (v13)
            {
              *v3 = 11077;
              if ((v13 & 0x80000000) != 0)
              {
                v3[1] = 45;
                v13 = -v13;
              }

              v73 = 0;
              v74 = 9u;
              v3 += 2;
              do
              {
                *v3 = 48;
                v75 = dword_19548BEE0[v74];
                if (v13 <= 2 * v75)
                {
                  v81 = 2 * v75;
                  v77 = 48;
                }

                else
                {
                  v76 = 8 * v75;
                  if (v13 < 8 * v75)
                  {
                    v77 = 48;
                  }

                  else
                  {
                    v77 = 56;
                  }

                  if (v13 < 8 * v75)
                  {
                    v78 = 0;
                  }

                  else
                  {
                    v78 = 8 * v75;
                  }

                  v79 = v13 - v78;
                  result = 4 * (v75 & 0x1FFFFFFFu);
                  if (v79 < v76 >> 1)
                  {
                    v80 = 0;
                  }

                  else
                  {
                    v77 |= 4u;
                    v80 = 4 * (v75 & 0x1FFFFFFF);
                  }

                  if (v13 >= 8 * v75 || v79 >= result)
                  {
                    *v3 = v77;
                  }

                  v13 = v79 - v80;
                  v81 = v76 >> 2;
                }

                v82 = v77 + 2;
                if (v13 >= v81)
                {
                  v83 = v81;
                }

                else
                {
                  v82 = v77;
                  v83 = 0;
                }

                v84 = v13 - v83;
                if (v84 < v81 >> 1)
                {
                  v85 = 0;
                }

                else
                {
                  ++v82;
                  v85 = v81 >> 1;
                }

                if (v13 >= v81 || v84 >= v81 >> 1)
                {
                  *v3 = v82;
                }

                v13 = v84 - v85;
                v73 |= v82 != 48;
                v3 += v73 & 1;
                --v74;
              }

              while (v74 != -1);
            }

LABEL_220:
            *v3 = 0;
            return result;
          }

          v11 = 0;
          --v9;
          v15 = *(v4 + v9);
        }

        v49 = 48;
        *v3 = 48;
        v50 = dword_19548BEE0[v11];
        if (v15 <= 2 * v50)
        {
          v55 = 2 * v50;
        }

        else
        {
          v51 = 8 * v50;
          if (v15 < 8 * v50)
          {
            v49 = 48;
          }

          else
          {
            v49 = 56;
          }

          if (v15 < 8 * v50)
          {
            v52 = 0;
          }

          else
          {
            v52 = 8 * v50;
          }

          v53 = v15 - v52;
          result = 4 * (v50 & 0x1FFFFFFFu);
          if (v53 < v51 >> 1)
          {
            v54 = 0;
          }

          else
          {
            v49 |= 4u;
            v54 = 4 * (v50 & 0x1FFFFFFF);
          }

          if (v15 >= 8 * v50 || v53 >= result)
          {
            *v3 = v49;
          }

          v15 = v53 - v54;
          v55 = v51 >> 2;
        }

        if (v15 < v55)
        {
          v56 = 0;
        }

        else
        {
          v56 = v55;
        }

        v57 = v15 - v56;
        v58 = v55 >> 1;
        if (v57 < v55 >> 1)
        {
          v59 = 0;
        }

        else
        {
          v59 = v55 >> 1;
        }

        if (v15 >= v55 || v57 >= v58)
        {
          result = (v49 + 2);
          if (v15 >= v55)
          {
            LOBYTE(v49) = v49 + 2;
          }

          if (v57 >= v58)
          {
            LOBYTE(v49) = v49 + 1;
          }

          *v3 = v49;
        }

        v15 = v57 - v59;
        ++v3;
        --v11;
        --v48;
        if (--v47 <= 1)
        {
          if (v14 >= *v4)
          {
            goto LABEL_188;
          }

          goto LABEL_151;
        }
      }
    }
  }

  return result;
}

uint64_t uprv_decNumberFromString(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0u;
  v8 = 0;
  v9 = 0;
  v52 = *MEMORY[0x1E69E9840];
  v49 = 0;
  j = a2;
  while (1)
  {
    v11 = &a2[v5];
    v12 = a2[v5];
    if ((v12 - 48) <= 9)
    {
      ++v7;
      goto LABEL_17;
    }

    if (v12 != 46 || v8 != 0)
    {
      break;
    }

    if (v11 == j)
    {
      ++j;
    }

    v8 = &a2[v5];
LABEL_16:
    v11 = v9;
LABEL_17:
    ++v5;
    v9 = v11;
  }

  if (!v5)
  {
    if (v12 == 43)
    {
      ++j;
    }

    else
    {
      if (v12 != 45)
      {
        goto LABEL_19;
      }

      ++j;
      v6 = 0x80;
    }

    goto LABEL_16;
  }

  a2 += v5;
LABEL_19:
  memset(v51, 0, 45);
  v50 = 0;
  if (v9)
  {
    if (!v12)
    {
      v28 = 0;
      goto LABEL_56;
    }

    v14 = 1;
    v49 = 1;
    if ((v12 | 0x20) != 0x65)
    {
      goto LABEL_91;
    }

    v16 = a2 + 1;
    v15 = a2[1];
    v17 = v15 == 45 || v15 == 43;
    v18 = 1;
    if (v17)
    {
      v18 = 2;
      v16 = a2 + 2;
    }

    v19 = a2[v18];
    if (v19)
    {
      v20 = v16 + 1;
      do
      {
        v21 = v19;
        v22 = v20;
        if (v19 != 48)
        {
          break;
        }

        ++v20;
        v19 = *v22;
      }

      while (*v22);
      v23 = *(v22 - 1);
      if ((v23 - 58) >= 0xFFFFFFF6)
      {
        v25 = 0;
        v29 = 0;
        do
        {
          v25 = v23 + 10 * v25 - 48;
          v24 = v29 + 1;
          v23 = v22[v29++];
        }

        while ((v23 - 58) > 0xFFFFFFF5);
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      if (!v23)
      {
        if (v24 == 10 && v21 <= 49)
        {
          v31 = v25;
        }

        else
        {
          v31 = 1999999998;
        }

        if (v24 < 0xA)
        {
          v31 = v25;
        }

        if (v15 == 45)
        {
          v28 = -v31;
        }

        else
        {
          v28 = v31;
        }

LABEL_55:
        v49 = 0;
LABEL_56:
        if (*j == 48 && j < v9)
        {
          v32 = v9 - j;
          do
          {
            v33 = *j;
            if (v33 != 46)
            {
              if (v33 != 48)
              {
                goto LABEL_64;
              }

              --v7;
            }

            ++j;
            --v32;
          }

          while (v32);
          j = v9;
        }

LABEL_64:
        if (v8 >= v9 || v8 == 0)
        {
          v35 = 0;
        }

        else
        {
          v35 = v8 - v9;
        }

        if (v7 <= *a3)
        {
          v38 = 0;
          v37 = (a1 + 9);
        }

        else
        {
          v36 = v7;
          if (v7 > 49)
          {
            goto LABEL_74;
          }

          if ((v7 - 46) > 3)
          {
            v38 = 0;
            v37 = v51;
          }

          else
          {
            v36 = byte_19548BF08[v7];
LABEL_74:
            v37 = malloc_type_malloc(v36, 0x100004077774924uLL);
            v38 = v37;
            if (!v37)
            {
              v14 = 16;
              goto LABEL_91;
            }
          }
        }

        v39 = v35 + v28;
        if (v9 >= j)
        {
          v40 = v37;
          do
          {
            v41 = *v9;
            if (v41 != 46)
            {
              *v40++ = v41 - 48;
            }

            --v9;
          }

          while (v9 >= j);
        }

        *(a1 + 8) = v6;
        *a1 = v7;
        *(a1 + 4) = v39;
        if (v7 > *a3)
        {
          v50 = 0;
          sub_1952F03A4(a1, a3, v37, v7, &v50, &v49);
          goto LABEL_87;
        }

        if (v39 <= *(a3 + 8) - v7 || v39 - 1 > *(a3 + 4) - *a3)
        {
          v50 = 0;
LABEL_87:
          sub_1952F0618(a1, a3, &v50, &v49);
        }

        if (v38)
        {
          free(v38);
        }
      }
    }

LABEL_90:
    v14 = v49;
    if (v49)
    {
LABEL_91:
      sub_1952F0784(a1, v14, a3);
    }
  }

  else
  {
    v14 = 1;
    v49 = 1;
    if (!v12 || v8)
    {
      goto LABEL_91;
    }

    v26 = 0;
    *(a1 + 8) = 0;
    *a1 = 1;
    while (1)
    {
      v27 = a2[v26];
      if (v27 != aInfinity[v26] && v27 != aInfinity_0[v26])
      {
        break;
      }

      if (!a2[v26])
      {
LABEL_97:
        *(a1 + 8) = v6 | 0x40;
        goto LABEL_98;
      }

      ++v26;
    }

    for (i = 0; ; ++i)
    {
      v43 = a2[i];
      if (v43 != aInf[i] && v43 != aInf_0[i])
      {
        break;
      }

      if (!a2[i])
      {
        goto LABEL_97;
      }
    }

    *(a1 + 8) = v6 | 0x20;
    v46 = *a2;
    if ((v46 | 0x20) == 0x73)
    {
      v6 |= 0x10u;
      *(a1 + 8) = v6;
      v47 = *++a2;
      v46 = v47;
    }

    else
    {
      v6 |= 0x20u;
    }

    if ((v46 | 0x20) != 0x6E || (a2[1] | 0x20) != 0x61 || (a2[2] | 0x20) != 0x6E)
    {
      goto LABEL_90;
    }

    for (j = a2 + 3; ; ++j)
    {
      v48 = *j;
      if (v48 != 48)
      {
        break;
      }
    }

    if (*j)
    {
      if ((v48 - 58) >= 0xFFFFFFF6)
      {
        v9 = j - 1;
        do
        {
          ++v7;
          v48 = v9[2];
          ++v9;
        }

        while ((v48 - 58) > 0xFFFFFFF5);
      }

      else
      {
        v9 = 0;
      }

      if (!v48 && (v7 < *a3 || !*(a3 + 24) && v7 <= *a3))
      {
        v28 = 0;
        goto LABEL_55;
      }

      goto LABEL_90;
    }
  }

LABEL_98:
  v44 = *MEMORY[0x1E69E9840];
  return a1;
}

_BYTE *sub_1952F03A4(_BYTE *result, int *a2, char *a3, int a4, int *a5, int *a6)
{
  v6 = *a2;
  v7 = a4 - *a2;
  if (v7 >= 1)
  {
    *(result + 1) += v7;
    *a6 |= 0x800u;
    v8 = *a5;
    if (*a5 <= 1)
    {
      if (v6 < 0)
      {
        if (v8 != 1)
        {
          if (a4 < 1)
          {
LABEL_26:
            if (!v8)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v16 = a4 + 1;
            while (!*a3)
            {
              ++a3;
              if (--v16 <= 1)
              {
                goto LABEL_26;
              }
            }

            *a5 = 1;
          }
        }

LABEL_41:
        *a6 |= 0x20u;
LABEL_42:
        result[9] = 0;
        *result = 1;
        return result;
      }
    }

    else
    {
      v8 = 1;
      *a5 = 1;
      if (v6 < 0)
      {
        goto LABEL_41;
      }
    }

    if (v7 != 1)
    {
      v13 = ~v6 + a4;
      do
      {
        if (*a3)
        {
          v8 = 1;
          *a5 = 1;
        }

        ++a3;
        --v13;
      }

      while (v13);
    }

    v14 = *a3;
    if (v14 < 5)
    {
      if (!*a3)
      {
        goto LABEL_31;
      }

      v15 = 3;
    }

    else
    {
      v15 = v8 + 5;
      if (v14 != 5)
      {
        v15 = 7;
      }
    }

    *a5 = v15;
LABEL_31:
    v17 = *a2;
    if (*a2 < 1)
    {
      result[9] = 0;
      *result = 1;
    }

    else
    {
      *result = v17;
      result += 9;
      v18 = v17 + 1;
      v19 = a3 + 1;
      do
      {
        v20 = *v19++;
        *result++ = v20;
        --v18;
      }

      while (v18 > 1);
    }

    if (*a5)
    {
      v12 = *a6 | 0x20;
      goto LABEL_38;
    }

    return result;
  }

  v9 = result + 9;
  if (result + 9 != a3)
  {
    if (a4 >= 1)
    {
      v10 = a4 + 1;
      do
      {
        v11 = *a3++;
        *v9++ = v11;
        --v10;
      }

      while (v10 > 1);
    }

    *result = a4;
  }

  if (*a5)
  {
    v12 = *a6 | 0x820;
LABEL_38:
    *a6 = v12;
  }

  return result;
}

void sub_1952F0618(unsigned int *a1, uint64_t a2, int *a3, int *a4)
{
  v8 = *(a2 + 8);
  v9 = a1[1];
  v10 = v8 - *a1;
  if (v9 <= v10 + 1)
  {
    v20 = 0;
    if (v9 > v10)
    {
      BYTE1(v20) = 1;
      v19[0] = 1;
      v19[1] = v8;
      v17 = sub_1952F47D8(a1, v19, 1);
      if (v17 == 0x80000000)
      {
        v18 = *a4 | 0x10;
LABEL_17:
        *a4 = v18;
        return;
      }

      v11 = *a3;
      if (v17 || (v11 & 0x80000000) == 0)
      {
        goto LABEL_3;
      }

      sub_1952F71EC(a1, a2, v11, a4);
    }

    sub_1952F7670(a1, a2, a3, a4);
    return;
  }

  v11 = *a3;
LABEL_3:
  if (v11)
  {
    sub_1952F71EC(a1, a2, v11, a4);
  }

  v12 = a1[1];
  v13 = *(a2 + 4);
  v14 = v13 - *a2 + 1;
  v15 = v12 - v14;
  if (v12 > v14)
  {
    v16 = *a1;
    if (v12 > v13 - v16 + 1)
    {
      sub_1952F7534(a1, a2, a4);
      return;
    }

    if (*(a2 + 24))
    {
      if (v16 != 1 || *(a1 + 9) || (a1[2] & 0x70) != 0)
      {
        *a1 = sub_1952F527C(a1 + 9, v16, v12 - v14);
        v12 = a1[1];
      }

      a1[1] = v12 - v15;
      v18 = *a4 | 0x400;
      goto LABEL_17;
    }
  }
}

uint64_t sub_1952F0784(uint64_t a1, int a2, uint64_t a3)
{
  if ((a2 & 0xDD) != 0)
  {
    if ((a2 & 0x40000000) != 0)
    {
      a2 &= ~0x40000000u;
    }

    else
    {
      *a1 = 1;
      *(a1 + 8) = 32;
    }
  }

  return uprv_decContextSetStatus(a3, a2);
}

int *uprv_decNumberAbs(int *a1, uint64_t a2, int *a3)
{
  v8[2] = 0;
  v5 = *(a2 + 4);
  v7 = 0;
  v8[0] = 1;
  v8[1] = v5;
  sub_1952F0830(a1, v8, a2, a3, *(a2 + 8) & 0x80, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a3);
  }

  return a1;
}

int *sub_1952F0830(int *a1, int *a2, uint64_t a3, int *a4, char a5, int *a6)
{
  v8 = a3;
  v9 = a2;
  v76 = *MEMORY[0x1E69E9840];
  v11 = *(a2 + 8);
  v12 = *(a3 + 8);
  v13 = v12 ^ a5;
  v14 = v12 ^ a5 ^ v11;
  if (((v12 | v11) & 0x70) != 0)
  {
    if (((v12 | v11) & 0x30) != 0)
    {
      sub_1952F3D64(a1, a2, a3, a4, a6);
      goto LABEL_112;
    }

    if ((a2[2] & 0x40) == 0 || (v13 = *(a2 + 8), (*(a3 + 8) & 0x40) == 0) || (((v12 ^ a5) ^ v11) & 0x80) == 0)
    {
      *a1 = 1;
      *(a1 + 4) = v13 & 0x80 | 0x40;
      goto LABEL_112;
    }

    v38 = *a6 | 0x80;
LABEL_111:
    *a6 = v38;
    goto LABEL_112;
  }

  v16 = *a4;
  v74 = 0;
  memset(v75, 0, 92);
  v17 = *(a2 + 9);
  if (!*(a2 + 9) && (v11 & 0x70) == 0 && *a2 == 1)
  {
    v31 = a2[1];
    v74 = 0;
    *(a1 + 8) = v12;
    v32 = *a3;
    a1[1] = *(a3 + 4);
    sub_1952F03A4(a1, a4, (a3 + 9), v32, &v74, a6);
    v33 = *(a1 + 8) ^ a5;
    *(a1 + 8) = v33;
    v34 = v31 - a1[1];
    v35 = a1 + 9;
    if (!*(a1 + 9) && *a1 == 1 && (v33 & 0x70) == 0)
    {
      if (v34 < 0)
      {
        a1[1] = v31;
      }

      if ((v14 & 0x80) == 0)
      {
        goto LABEL_43;
      }

      if (a4[3] != 6)
      {
        *(a1 + 8) = 0;
        goto LABEL_43;
      }

      v30 = 0x80;
      goto LABEL_23;
    }

    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    v36 = *a1;
    if (v36 - v34 > *a4)
    {
      v34 = v36 - *a4;
      *a6 |= 0x800u;
      v36 = *a1;
    }

    v37 = -v34;
LABEL_42:
    v41 = sub_1952F527C(v35, v36, v37);
    v42 = a1[1] + v34;
    *a1 = v41;
    a1[1] = v42;
    goto LABEL_43;
  }

  v18 = *(a3 + 9);
  if (!*(a3 + 9) && (v12 & 0x70) == 0 && *a3 == 1)
  {
    v39 = *(a3 + 4);
    v74 = 0;
    *(a1 + 8) = v11;
    v40 = *a2;
    a1[1] = a2[1];
    sub_1952F03A4(a1, a4, a2 + 9, v40, &v74, a6);
    v34 = v39 - a1[1];
    if (v34 >= 0)
    {
      goto LABEL_43;
    }

    v36 = *a1;
    if (v36 - v34 > *a4)
    {
      v34 = v36 - *a4;
      *a6 |= 0x800u;
      v36 = *a1;
    }

    v37 = -v34;
    v35 = a1 + 9;
    goto LABEL_42;
  }

  v19 = *(a3 + 4);
  v20 = a2[1];
  v21 = v19 - v20;
  if (v19 == v20)
  {
    v24 = *a3;
    if (*a3 <= 1 && v19 >= a4[2] && v19 <= a4[1] - v16 + 1 && v24 <= v16)
    {
      v64 = *a2;
      if (v64 <= v16)
      {
        if (v14 < 0)
        {
          v66 = v17 - v18;
          if (v17 - v18 >= 1)
          {
            if (a1 != a2)
            {
              uprv_decNumberCopy(a1, a2);
            }

            *(a1 + 9) = v66;
            v67 = a1 + 9;
            v68 = *a1;
            if (*a1 <= 49)
            {
              v68 = byte_19548BF08[v68];
            }

            v69 = &v67[v68];
            while (--v69 >= v67)
            {
              if (*v69 || v68 == 1)
              {
                break;
              }

              --v68;
            }

            *a1 = v68;
            goto LABEL_112;
          }
        }

        else
        {
          v65 = v18 + v17;
          if ((v18 + v17) <= 9 && (v64 > 0 || v65 < dword_19548BEE0[v64]))
          {
            if (a1 != a2)
            {
              uprv_decNumberCopy(a1, a2);
            }

            *(a1 + 9) = v65;
            goto LABEL_112;
          }
        }
      }
    }

    v22 = 0;
    v43 = 0;
    v25 = *a2;
    v44 = 1;
  }

  else
  {
    if (v21 >= 0)
    {
      v22 = v19 - v20;
    }

    else
    {
      v11 = v13;
      v22 = v20 - v19;
    }

    if (v21 < 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = a3;
    }

    if (v21 < 0)
    {
      v9 = a3;
    }

    v24 = *v23;
    v25 = *v9;
    if ((*v23 + v22) > v16 + *v9 + 1)
    {
      v26 = v16 - v24;
      if (v14 < 0)
      {
        v27 = -1;
      }

      else
      {
        v27 = 1;
      }

      v74 = v27;
      *(a1 + 8) = *(v23 + 8);
      a1[1] = v23[1];
      sub_1952F03A4(a1, a4, v23 + 9, v24, &v74, a6);
      if (v26 >= 1)
      {
        v28 = sub_1952F527C(a1 + 9, *a1, v26);
        v29 = a1[1] - v26;
        *a1 = v28;
        a1[1] = v29;
      }

      if (v21 < 0)
      {
        goto LABEL_43;
      }

      v30 = *(a1 + 8) ^ a5;
LABEL_23:
      *(a1 + 8) = v30;
LABEL_43:
      sub_1952F0618(a1, a4, &v74, a6);
      goto LABEL_112;
    }

    v43 = v22;
    if (v22 <= 0x30)
    {
      v43 = byte_19548BF08[v22 + 1] - 1;
    }

    v44 = dword_19548BEE0[v22 - v43];
    v8 = v23;
  }

  v72 = v14;
  if (v14 < 0)
  {
    v45 = -v44;
  }

  else
  {
    v45 = v44;
  }

  v46 = v24 + v22;
  if (v25 > v46)
  {
    v46 = v25;
  }

  v47 = a1 + 9;
  if (v46 >= v16 || v43 >= 1 && v8 == a1)
  {
    if (v46 <= 49)
    {
      v46 = byte_19548BF08[v46];
    }

    if (v46 < 0x5C)
    {
      v73 = 0;
      v49 = v75;
    }

    else
    {
      v71 = v45;
      v48 = malloc_type_malloc((v46 + 1), 0x100004077774924uLL);
      if (!v48)
      {
        v38 = *a6 | 0x10;
        goto LABEL_111;
      }

      v49 = v48;
      v25 = *v9;
      v73 = v48;
      v45 = v71;
    }
  }

  else
  {
    v73 = 0;
    v49 = a1 + 9;
  }

  *(a1 + 8) = v11 & 0x80;
  a1[1] = v9[1];
  if (v25 <= 49)
  {
    v25 = byte_19548BF08[v25];
  }

  v52 = *v8;
  v51 = v8 + 9;
  v50 = v52;
  if (v52 <= 49)
  {
    v50 = byte_19548BF08[v50];
  }

  v53 = sub_1952F6E20(v9 + 9, v25, v51, v50, v43, v49, v45);
  v54 = v53;
  *a1 = v53;
  if (v53 < 0)
  {
    v54 = -v53;
    *a1 = -v53;
    *(a1 + 8) ^= 0x80u;
  }

  v74 = 0;
  if (v49 != v47)
  {
    if (v54 > v16)
    {
      if (v54 <= 0x31)
      {
        v54 = byte_19548BF08[v54];
      }

      v55 = &v49[v54];
      while (--v55 >= v49)
      {
        if (*v55 || v54 == 1)
        {
          break;
        }

        --v54;
      }

      *a1 = v54;
    }

    sub_1952F03A4(a1, a4, v49, v54, &v74, a6);
    v54 = *a1;
  }

  if (v54 <= 49)
  {
    v54 = byte_19548BF08[v54];
  }

  v57 = &v47[v54];
  while (--v57 >= v47)
  {
    if (*v57 || v54 == 1)
    {
      break;
    }

    --v54;
  }

  *a1 = v54;
  sub_1952F0618(a1, a4, &v74, a6);
  if (!*(a1 + 9) && *a1 == 1 && v72 < 0)
  {
    v59 = *(a1 + 8);
    if ((v59 & 0x70) == 0 && (*a6 & 0x20) == 0)
    {
      v60 = v59 | 0x80;
      v61 = v59 & 0xF;
      if (a4[3] == 6)
      {
        v61 = v60;
      }

      *(a1 + 8) = v61;
    }
  }

  if (v73)
  {
    free(v73);
  }

LABEL_112:
  v62 = *MEMORY[0x1E69E9840];
  return a1;
}

int *uprv_decNumberAdd(int *a1, int *a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F0830(a1, a2, a3, a4, 0, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

uint64_t uprv_decNumberAnd(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (*(a2 + 4) || *(a2 + 8) > 0xFu || *(a3 + 4) || *(a3 + 8) >= 0x10u)
  {
LABEL_23:
    *a1 = 1;
    *(a1 + 8) = 32;
    uprv_decContextSetStatus(a4, 128);
    return a1;
  }

  v7 = *a2;
  v5 = (a2 + 9);
  v6 = v7;
  if (v7 <= 49)
  {
    v6 = byte_19548BF08[v6];
  }

  v8 = a1 + 9;
  v9 = *a3;
  if (*a3 <= 49)
  {
    v9 = byte_19548BF08[v9];
  }

  v10 = *a4;
  if (v10 >= 50)
  {
LABEL_12:
    v11 = (a3 + 9);
    v12 = &v5[v6 - 1];
    v13 = a3 + 9 + v9 - 1;
    v14 = a1 + v10 + 8;
    v15 = (a1 + 9);
    while (1)
    {
      v16 = v5 <= v12 ? *v5 : 0;
      v17 = v11 <= v13 ? *v11 : 0;
      *v15 = 0;
      if (v17 | v16)
      {
        *v15 = v16 & v17 & 1;
        if (((v17 - 10 * ((429496730 * v17) >> 32)) | (v16 - 10 * ((429496730 * v16) >> 32))) >= 2)
        {
          goto LABEL_23;
        }
      }

      ++v5;
      ++v11;
      if (++v15 > v14)
      {
        goto LABEL_26;
      }
    }
  }

  if (v10)
  {
    v10 = byte_19548BF08[v10];
    goto LABEL_12;
  }

  LODWORD(v15) = a1 + 9;
LABEL_26:
  v19 = v15 - v8;
  v20 = (v8 + v15 - v8 - 1);
  if (v20 >= v8)
  {
    v21 = v15 - a1 - 10;
    do
    {
      if (*v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21 == 0;
      }

      if (v22)
      {
        break;
      }

      --v20;
      --v21;
    }

    while (v20 >= v8);
    v19 = v21 + 1;
  }

  *a1 = v19;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t uprv_decNumberCompare(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F1150(a1, a2, a3, a4, 1, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

uint64_t sub_1952F1150(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int a5, int *a6)
{
  v12 = *(a2 + 8);
  if (a5 == 4)
  {
    v13 = *(a3 + 8);
    if ((*(a2 + 8) & 0x80) != 0)
    {
      if ((*(a3 + 8) & 0x80) == 0)
      {
        v14 = -1;
        goto LABEL_67;
      }
    }

    else if ((*(a3 + 8) & 0x80) != 0)
    {
      v14 = 1;
      goto LABEL_67;
    }
  }

  else
  {
    v13 = *(a3 + 8);
  }

  if (((v13 | v12) & 0x30) == 0)
  {
    v14 = sub_1952F47D8(a2, a3, (a5 - 7) < 2);
    if (v14 == 0x80000000)
    {
      *a6 |= 0x10u;
      return a1;
    }

LABEL_39:
    if (a5 > 4)
    {
      if (a5 == 5)
      {
        return a1;
      }

      if (a5 != 6)
      {
        goto LABEL_42;
      }
    }

    else if (a5 != 1 && a5 != 4)
    {
LABEL_42:
      v34 = 0;
      if (!v14)
      {
        v18 = *(a2 + 8);
        v19 = *(a3 + 8);
        if ((v18 & 0x80) == (v19 & 0x80))
        {
          v20 = v19 & v18;
          if (*(a2 + 4) > *(a3 + 4))
          {
            v21 = 1;
          }

          else
          {
            v21 = -1;
          }

          if (*(a2 + 4) <= *(a3 + 4))
          {
            v22 = 1;
          }

          else
          {
            v22 = -1;
          }

          if (v20 < 0)
          {
            v14 = v22;
          }

          else
          {
            v14 = v21;
          }
        }

        else if ((*(a2 + 8) & 0x80) != 0)
        {
          v14 = -1;
        }

        else
        {
          v14 = 1;
        }
      }

      if (a5 == 8 || a5 == 3)
      {
        v14 = -v14;
      }

      goto LABEL_76;
    }

    if (a5 != 4 || v14)
    {
      *(a1 + 8) = 0;
      v25 = (a1 + 8);
      *a1 = 1;
      v26 = (a1 + 9);
      if (!v14)
      {
        return a1;
      }

      goto LABEL_68;
    }

    v23 = *(a2 + 4);
    v24 = *(a3 + 4);
    if (v23 == v24)
    {
      *(a1 + 8) = 0;
      *a1 = 1;
      return a1;
    }

    if (v23 < v24)
    {
      v27 = -1;
    }

    else
    {
      v27 = 1;
    }

    if (*(a2 + 8) >= 0)
    {
      v14 = v27;
    }

    else
    {
      v14 = -v27;
    }

LABEL_67:
    *(a1 + 8) = 0;
    v25 = (a1 + 8);
    *a1 = 1;
    v26 = (a1 + 9);
LABEL_68:
    *v26 = 1;
    if (v14 < 0)
    {
      *v25 = 0x80;
    }

    return a1;
  }

  switch(a5)
  {
    case 1:
LABEL_10:
      sub_1952F3D64(a1, a2, a3, a4, a6);
      return a1;
    case 6:
      *a6 |= 0x40000080u;
      goto LABEL_10;
    case 4:
      if ((*(a2 + 8) & 0x30) != 0)
      {
        if ((v13 & 0x30) != 0)
        {
          if ((*(a2 + 8) & 0x10) != 0 && (v13 & 0x20) != 0)
          {
            goto LABEL_20;
          }

          if ((*(a2 + 8) & 0x20) == 0 || (v13 & 0x10) == 0)
          {
            v16 = *a2;
            if (*a2 <= 49)
            {
              v16 = byte_19548BF08[v16];
            }

            v17 = *a3;
            if (*a3 <= 49)
            {
              v17 = byte_19548BF08[v17];
            }

            if (v16 <= v17)
            {
              if (v16 >= v17)
              {
                v31 = v16 + 8;
                while (v31 + 1 >= 10)
                {
                  v32 = *(a2 + v31);
                  v33 = *(a3 + v31);
                  if (v32 > v33)
                  {
                    goto LABEL_35;
                  }

                  --v31;
                  v15 = -1;
                  if (v32 < v33)
                  {
                    goto LABEL_36;
                  }
                }

                v15 = 0;
                goto LABEL_36;
              }

              goto LABEL_20;
            }
          }
        }

LABEL_35:
        v15 = 1;
LABEL_36:
        if ((v12 & 0x80u) == 0)
        {
          v14 = v15;
        }

        else
        {
          v14 = -v15;
        }

        goto LABEL_39;
      }

LABEL_20:
      v15 = -1;
      goto LABEL_36;
  }

  if (((v13 | v12) & 0x10) != 0 || (*(a2 + 8) & 0x30) != 0 && (v13 & 0x30) != 0)
  {
    goto LABEL_10;
  }

  if ((*(a2 + 8) & 0x20) != 0)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  v34 = 0;
LABEL_76:
  if (v14 <= 0)
  {
    v28 = a3;
  }

  else
  {
    v28 = a2;
  }

  *(a1 + 8) = *(v28 + 8);
  v29 = *v28;
  *(a1 + 4) = *(v28 + 4);
  sub_1952F03A4(a1, a4, (v28 + 9), v29, &v34, a6);
  sub_1952F0618(a1, a4, &v34, a6);
  return a1;
}

uint64_t uprv_decNumberCompareSignal(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F1150(a1, a2, a3, a4, 6, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

uint64_t uprv_decNumberCompareTotal(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F1150(a1, a2, a3, a4, 4, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

uint64_t uprv_decNumberCompareTotalMag(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = a2;
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  if ((*(a2 + 8) & 0x80000000) == 0)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v9 = *a2;
  if (*a2 > 49)
  {
    goto LABEL_6;
  }

  if ((v9 - 38) <= 0xB)
  {
    v9 = byte_19548BF08[v9];
LABEL_6:
    v10 = malloc_type_malloc((v9 + 11), 0x1000040CBA68D63uLL);
    v8 = v10;
    if (!v10)
    {
      v11 = 16;
LABEL_25:
      sub_1952F0784(a1, v11, a4);
      goto LABEL_26;
    }

    goto LABEL_9;
  }

  v8 = 0;
  v10 = v21;
LABEL_9:
  v12 = uprv_decNumberCopy(v10, v6);
  *(v12 + 8) &= ~0x80u;
  v6 = v12;
LABEL_10:
  if ((*(a3 + 8) & 0x80000000) == 0)
  {
    v13 = 0;
    goto LABEL_20;
  }

  v14 = *a3;
  if (*a3 <= 49)
  {
    if ((v14 - 38) > 0xB)
    {
      v13 = 0;
      v15 = v20;
      goto LABEL_19;
    }

    v14 = byte_19548BF08[v14];
  }

  v15 = malloc_type_malloc((v14 + 11), 0x1000040CBA68D63uLL);
  v13 = v15;
  if (v15)
  {
LABEL_19:
    v16 = uprv_decNumberCopy(v15, a3);
    *(v16 + 8) &= ~0x80u;
    a3 = v16;
LABEL_20:
    sub_1952F1150(a1, v6, a3, a4, 4, &v19);
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v19 = 16;
  if (v8)
  {
LABEL_21:
    free(v8);
  }

LABEL_22:
  if (v13)
  {
    free(v13);
  }

  v11 = v19;
  if (v19)
  {
    goto LABEL_25;
  }

LABEL_26:
  v17 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t uprv_decNumberCopy(uint64_t result, unsigned int *a2)
{
  if (result != a2)
  {
    *(result + 8) = *(a2 + 8);
    *result = *a2;
    *(result + 9) = *(a2 + 9);
    v2 = *a2;
    if (v2 >= 2)
    {
      v3 = (result + 10);
      if (v2 <= 0x31)
      {
        v2 = byte_19548BF08[v2];
      }

      v4 = a2 + v2 + 9;
      v5 = a2 + 10;
      do
      {
        v6 = *v5++;
        *v3++ = v6;
      }

      while (v5 < v4);
    }
  }

  return result;
}

uint64_t uprv_decNumberDivide(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F17CC(a1, a2, a3, a4, 128, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

uint64_t sub_1952F17CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int a5, int *a6)
{
  v7 = a5;
  v11 = a1;
  v125 = *MEMORY[0x1E69E9840];
  memset(v124, 0, 47);
  memset(v123, 0, 73);
  v122 = 0;
  v12 = *(a2 + 8);
  v13 = *(a3 + 8);
  v14 = (v13 ^ v12) & 0x80;
  if (((v13 | v12) & 0x70) != 0)
  {
    if (((v13 | v12) & 0x30) != 0)
    {
      sub_1952F3D64(a1, a2, a3, a4, a6);
      goto LABEL_190;
    }

    if ((*(a2 + 8) & 0x40) == 0)
    {
      if ((a5 & 0x50) == 0)
      {
        *a1 = 1;
        *(a1 + 9) = 0;
        *(a1 + 8) = v14;
        if ((a5 & 0x80) != 0)
        {
          *(a1 + 4) = a4[2] - *a4 + 1;
          *a6 |= 0x400u;
        }

        goto LABEL_42;
      }

      *(a1 + 8) = v12;
      v17 = *a2;
      *(a1 + 4) = *(a2 + 4);
      v16 = (a2 + 9);
LABEL_18:
      sub_1952F03A4(a1, a4, v16, v17, &v122, a6);
LABEL_42:
      v28 = v11;
LABEL_43:
      sub_1952F0618(v28, a4, &v122, a6);
      goto LABEL_190;
    }

    if (!(a5 & 0x50 | v13 & 0x40))
    {
      *a1 = 1;
      *(a1 + 9) = 0;
      goto LABEL_26;
    }

    v24 = *a6;
LABEL_38:
    v27 = v24 | 0x80;
LABEL_164:
    *a6 = v27;
    goto LABEL_190;
  }

  v15 = *a4;
  v121 = (a3 + 9);
  if (!*(a3 + 9) && (*(a3 + 8) & 0x70) == 0 && *a3 == 1)
  {
    if (!*(a2 + 9) && (*(a2 + 8) & 0x70) == 0 && *a2 == 1)
    {
      *(a1 + 8) = 0;
      *a1 = 1;
      v27 = *a6 | 8;
      goto LABEL_164;
    }

    *(a1 + 8) = 0;
    *a1 = 1;
    v24 = *a6;
    if ((a5 & 0x50) == 0)
    {
      *a6 = v24 | 2;
LABEL_26:
      *(a1 + 8) = v14 | 0x40;
      goto LABEL_190;
    }

    goto LABEL_38;
  }

  v16 = (a2 + 9);
  v17 = *a2;
  if (!*(a2 + 9) && (*(a2 + 8) & 0x70) == 0 && v17 == 1)
  {
    if ((a5 & 0x80) != 0)
    {
      v83 = *(a2 + 4) - *(a3 + 4);
      v28 = uprv_decNumberCopy(a1, a2);
      *(v11 + 8) = v14;
      *(v11 + 4) = v83;
      goto LABEL_43;
    }

    if ((a5 & 0x20) == 0)
    {
      v25 = *(a3 + 4);
      uprv_decNumberCopy(a1, a2);
      if (v25 < *(v11 + 4))
      {
        *(v11 + 4) = v25;
      }

      goto LABEL_190;
    }

LABEL_36:
    *a1 = 1;
    *(a1 + 9) = 0;
    *(a1 + 8) = v14;
    goto LABEL_190;
  }

  v18 = *(a2 + 4);
  v19 = *a3;
  v20 = *(a3 + 4);
  v21 = v17 + v18 - (v20 + *a3);
  if (a5 != 128 && v21 < 0)
  {
    if ((a5 & 0x20) != 0)
    {
      goto LABEL_36;
    }

    if (v18 <= v20 && ((a5 & 0x40) != 0 || v21 != -1))
    {
      *(a1 + 8) = v12;
      *(a1 + 4) = v18;
      goto LABEL_18;
    }
  }

  v22 = v15 + 1;
  if (v15 >= 49)
  {
    v23 = v22;
  }

  else
  {
    v116 = byte_19548BF08[v22];
    if ((v15 - 47) > 1)
    {
      v104 = v14;
      v26 = 0;
      v114 = v124;
      goto LABEL_45;
    }

    v23 = byte_19548BF08[v22];
  }

  v116 = v23;
  v26 = malloc_type_malloc(v23, 0x100004077774924uLL);
  if (!v26)
  {
    v27 = *a6 | 0x10;
    goto LABEL_164;
  }

  v104 = v14;
  v19 = *a3;
  v17 = *a2;
  v114 = v26;
LABEL_45:
  v29 = v19 + v15;
  v30 = v19 + v15 - 1;
  if (v17 >= v29)
  {
    v31 = v17;
  }

  else
  {
    v31 = v30;
  }

  if (v31 <= 49)
  {
    v31 = byte_19548BF08[v31];
  }

  v108 = a6;
  v109 = a2;
  v107 = v26;
  v103 = a4;
  v113 = v7;
  v32 = v7;
  v33 = (v31 + 3);
  v111 = v32;
  if (v32 < 0)
  {
    v34 = (v31 + 2);
  }

  else
  {
    v34 = v33;
  }

  if (v34 < 0x49)
  {
    v105 = 0;
    v106 = v11;
    v36 = v123;
LABEL_57:
    v37 = &v36[v34 - 1];
    if (v17 <= 49)
    {
      v38 = &v36[v34 - 1];
      if (!v17)
      {
LABEL_62:
        if (v38 >= v36)
        {
          v41 = v38 - 1;
          if (v38 - 1 >= v36 - 1)
          {
            v41 = v36 - 1;
          }

          bzero(v41 + 1, v38 - v41);
        }

        v112 = v15;
        v42 = *a3;
        if (*a3 <= 49)
        {
          v42 = byte_19548BF08[v42];
        }

        v43 = v42 + 9;
        v120 = v43 - 1;
        v44 = *(a3 + v43 - 1);
        if (v42 <= 1)
        {
          v45 = *(a3 + v43 - 1);
        }

        else
        {
          v45 = v44 + 1;
        }

        v119 = 10 * v44;
        if (v42 >= 2)
        {
          v46 = *(a3 + v43 - 2);
          v47 = 10 * v44;
          if (v42 != 2)
          {
            v47 = v119 + 1;
          }

          v119 = v47 + v46;
        }

        v48 = *v37;
        if (v48 >= 0xA)
        {
          v49 = &dword_19548BEE8;
          do
          {
            --v21;
            v50 = *v49++;
          }

          while (v50 <= v48);
        }

        if (v44 >= 0xA)
        {
          v51 = &dword_19548BEE8;
          do
          {
            ++v21;
            v52 = *v51++;
          }

          while (v52 <= v44);
        }

        if (v113 < 0)
        {
          v110 = *(v109 + 4) - *(a3 + 4);
          if (v48 < v44)
          {
            LODWORD(v33) = v31 + 1;
          }

          else
          {
            LODWORD(v33) = v31 + 2;
          }

          v102 = 0;
          if (v48 < v44)
          {
            --v21;
          }
        }

        else
        {
          v53 = *v109;
          if (*v109 <= 49)
          {
            v53 = byte_19548BF08[v53];
          }

          if (v21 < 0)
          {
            v54 = -v21;
          }

          else
          {
            v54 = 1;
          }

          sub_1952F5D20(v36, v33, v54);
          v21 += v54;
          v102 = v33 - v54 - v53;
          if (v54 >= 1)
          {
            bzero(&v36[v34 - v54], v54);
          }

          v110 = 0;
        }

        v118 = v21;
        v115 = 0;
        v55 = 0;
        v117 = v114 + v116 - 1;
        for (i = v33; ; --i)
        {
          v57 = 0;
          while (1)
          {
            v58 = *v37;
            if (v37 > v36 && !*v37)
            {
              v59 = (v37 - 1);
              do
              {
                v34 = (v34 - 1);
                v60 = v59 > v36;
                v61 = *v59--;
                v58 = v61;
              }

              while (v60 && !v58);
              v37 = (v59 + 1);
            }

            if (i > v34)
            {
              break;
            }

            v62 = v45;
            if (v34 == i)
            {
              v63 = v37;
              for (j = v120; ; --j)
              {
                v65 = j >= 9 ? *(a3 + j) : 0;
                v66 = *v63;
                if (v65 != v66 || v63 == v36)
                {
                  break;
                }

                --v63;
              }

              if (v65 > v66)
              {
                break;
              }

              v62 = v119;
              if (v65 == v66)
              {
                ++v57;
                *v36 = 0;
                v34 = 1;
                break;
              }
            }

            v68 = (*(v37 - 1) + 10 * v58) / v62;
            if (v68 <= 1)
            {
              v68 = 1;
            }

            v57 += v68;
            sub_1952F6E20(&v36[i - v42], v34 - (i - v42), v121, v42, 0, &v36[i - v42], -v68);
          }

          v69 = v117;
          if (v115 || v57)
          {
            *v117 = v57;
            if (v115)
            {
              ++v55;
              v71 = v118;
            }

            else
            {
              v72 = v57;
              v73 = &dword_19548BEE4;
              v71 = v118;
              do
              {
                ++v55;
                v74 = *v73++;
              }

              while (v74 <= v72);
            }

            v70 = v115 + 1;
            v69 = v117 - 1;
            if (v55 > v112)
            {
              goto LABEL_145;
            }
          }

          else
          {
            v70 = 0;
            v71 = v118;
          }

          if (*v36 || v34 != 1)
          {
            break;
          }

          v76 = v111 >= 0;
          v77 = v71 > v110 || v111 >= 0;
          if (v71)
          {
            v76 = 0;
          }

          if ((v113 & 0x50) != 0 || !v77 || v76)
          {
            goto LABEL_145;
          }

LABEL_144:
          v115 = v70;
          v117 = v69;
          v118 = v71 - 1;
        }

        if (v113 < 0 || v71)
        {
          goto LABEL_144;
        }

LABEL_145:
        v11 = v106;
        if (v70)
        {
          ++v69;
        }

        else
        {
          *v69 = 0;
          v55 = 1;
        }

        v122 = 0;
        if (v113 < 0)
        {
          v78 = v69;
          if (*v36 || v34 >= 2)
          {
            v122 = 1;
          }
        }

        else
        {
          if (v55 + v71 > v112)
          {
LABEL_150:
            *v108 |= 4u;
LABEL_160:
            v81 = v107;
            v82 = v105;
            goto LABEL_186;
          }

          v78 = v69;
          if ((v113 & 0x50) != 0)
          {
            v79 = *(v109 + 8);
            if (!*v36 && v34 == 1)
            {
              v80 = *(v109 + 4);
              if (*(a3 + 4) < v80)
              {
                v80 = *(a3 + 4);
              }

              *(v106 + 9) = 0;
              *v106 = 1;
              *(v106 + 4) = v80;
              *(v106 + 8) = v79 & 0x80;
              sub_1952F0618(v106, v103, &v122, v108);
              goto LABEL_160;
            }

            v84 = *v69;
            if (v102 >= v71 + v102 - *(v109 + 4) + *(a3 + 4))
            {
              v85 = v71 + v102 - *(v109 + 4) + *(a3 + 4);
            }

            else
            {
              v85 = v102;
            }

            v86 = sub_1952F5D20(v36, v34, v85);
            v87 = &v36[v86];
            while (--v87 >= v36)
            {
              if (*v87 || v86 == 1)
              {
                break;
              }

              --v86;
            }

            v89 = v86;
            if (v86 <= 49)
            {
              v89 = byte_19548BF08[v86];
            }

            v104 = v79;
            if (*(a3 + 4) >= *(v109 + 4))
            {
              v71 = *(v109 + 4);
            }

            else
            {
              v71 = *(a3 + 4);
            }

            if ((v113 & 0x10) != 0)
            {
              v92 = sub_1952F6E20(v36, v89, v36, v89, 0, v36, 1);
              v93 = *a3;
              if (*a3 <= 49)
              {
                v93 = byte_19548BF08[v93];
              }

              v94 = sub_1952F7018(v36, v92, v121, v93, *(a3 + 4) - v71);
              if (v94 == 0x80000000)
              {
                *v108 |= 0x10u;
                v11 = v106;
                goto LABEL_160;
              }

              if (v92 >= 1)
              {
                v95 = v36;
                do
                {
                  v96 = *v95;
                  *v95 = *v95 >> 1;
                  if (v96)
                  {
                    *(v95 - 1) += 5;
                  }

                  ++v95;
                }

                while (v95 < &v36[v92]);
              }

              if (v94 > 0 || (v84 & (v94 == 0)) != 0)
              {
                v11 = v106;
                if (v55 == v112)
                {
                  if (v112 < 2)
                  {
                    v97 = v78;
LABEL_210:
                    if (dword_19548BEE0[v112] - 1 == *v97)
                    {
                      goto LABEL_150;
                    }
                  }

                  else
                  {
                    v97 = &v78[v112 - 1];
                    v98 = v112 + 1;
                    while (*v78 == 9)
                    {
                      ++v78;
                      if (--v98 <= 2)
                      {
                        LODWORD(v112) = 1;
                        goto LABEL_210;
                      }
                    }
                  }
                }

                v99 = *a3;
                if (*a3 <= 49)
                {
                  v99 = byte_19548BF08[v99];
                }

                v55 = -sub_1952F6E20(v36, v89, v121, v99, *(a3 + 4) - v71, v36, -1);
                v100 = &v36[v55];
                while (--v100 >= v36)
                {
                  if (*v100 || v55 == 1)
                  {
                    break;
                  }

                  --v55;
                }

                v104 = v79 ^ 0x80;
                v78 = v36;
              }

              else
              {
                v78 = v36;
                v55 = v86;
                v11 = v106;
              }
            }

            else
            {
              v78 = v36;
              v55 = v86;
            }
          }
        }

        v81 = v107;
        v82 = v105;
        *(v11 + 4) = v71;
        *(v11 + 8) = v104 & 0x80;
        sub_1952F03A4(v11, v103, v78, v55, &v122, v108);
        sub_1952F0618(v11, v103, &v122, v108);
LABEL_186:
        if (v82)
        {
          free(v82);
        }

        goto LABEL_188;
      }

      v17 = byte_19548BF08[v17];
    }

    v39 = v17;
    v38 = &v36[v34 - 1];
    do
    {
      *v38-- = *(v109 + 8 + v39);
      v40 = v39 + 8;
      --v39;
    }

    while (v40 >= 0xA);
    goto LABEL_62;
  }

  v35 = malloc_type_malloc((v34 + 1), 0x100004077774924uLL);
  if (v35)
  {
    v36 = v35;
    v105 = v35;
    v106 = v11;
    v17 = *v109;
    goto LABEL_57;
  }

  v81 = v107;
  *v108 |= 0x10u;
LABEL_188:
  if (v81)
  {
    free(v81);
  }

LABEL_190:
  v90 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t uprv_decNumberDivideInteger(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F17CC(a1, a2, a3, a4, 32, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

uint64_t uprv_decNumberExp(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = 0;
  if (!sub_1952F23F0(a2, a3, &v7))
  {
    sub_1952F24A4(a1, a2, a3, &v7);
  }

  if (v7)
  {
    sub_1952F0784(a1, v7, a3);
  }

  return a1;
}

BOOL sub_1952F23F0(uint64_t a1, int *a2, int *a3)
{
  v3 = *a3;
  if (*a2 > 999999 || a2[1] > 999999 || a2[2] < -999999)
  {
    v4 = 64;
    goto LABEL_5;
  }

  v7 = *a1;
  if (*a1 > 999999)
  {
LABEL_8:
    v4 = 128;
    goto LABEL_5;
  }

  if ((v7 - 1000001 + *(a1 + 4)) > 0xFFD23942)
  {
    v5 = *a3;
    return v5 != v3;
  }

  v4 = 128;
  if (v7 == 1 && !*(a1 + 9))
  {
    v5 = *a3;
    if ((*(a1 + 8) & 0x70) == 0)
    {
      return v5 != v3;
    }

    goto LABEL_8;
  }

LABEL_5:
  v5 = v3 | v4;
  *a3 = v5;
  return v5 != v3;
}

uint64_t sub_1952F24A4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = a2;
  v64 = *MEMORY[0x1E69E9840];
  v53 = 0;
  v8 = *(a2 + 8);
  if ((v8 & 0x70) != 0)
  {
    if ((*(a2 + 8) & 0x40) == 0)
    {
      sub_1952F3D64(a1, a2, 0, a3, a4);
      goto LABEL_19;
    }

    if ((*(a2 + 8) & 0x80) == 0)
    {
      uprv_decNumberCopy(a1, a2);
      goto LABEL_19;
    }

    *(a1 + 8) = 0;
LABEL_18:
    *a1 = 1;
    goto LABEL_19;
  }

  if (!*(a2 + 9) && *a2 == 1)
  {
    *(a1 + 8) = 256;
    goto LABEL_18;
  }

  v49 = 0uLL;
  v51 = 0;
  v50 = 0;
  memset(v48, 0, 28);
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  memset(v61, 0, sizeof(v61));
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v55 = 1024;
  v45 = 0;
  v46 = 0;
  v9 = v8 < 0;
  v10 = -*a3;
  if (v9)
  {
    v10 = ~*a3;
  }

  LODWORD(v54) = 1;
  HIDWORD(v54) = v10;
  v11 = sub_1952F47D8(&v54, a2, 1);
  if (v11 == 0x80000000)
  {
    goto LABEL_13;
  }

  if ((v11 & 0x80000000) == 0)
  {
    v13 = *a3;
    *(a1 + 8) = 256;
    *a1 = 1;
    *a1 = sub_1952F527C((a1 + 9), 1, v13 - 1);
    *(a1 + 4) = 1 - v13;
    v12 = *a4 | 0x820;
    goto LABEL_16;
  }

  v52 = 0;
  memset(v47, 0, 28);
  uprv_decContextDefault(&v49, 64);
  *(&v49 + 4) = *(a3 + 4);
  LOBYTE(v51) = 0;
  v16 = *v6;
  v17 = *(v6 + 4);
  v18 = *v6 + v17;
  if (v18 >= 9)
  {
    WORD4(v59[0]) = 512;
    *&v59[0] = 1;
    v43 = 0;
    v44 = 0;
    v19 = 0;
    if (*(v6 + 8) < 0)
    {
      DWORD1(v59[0]) = -2;
    }

    v25 = v61;
    v26 = v59;
    LODWORD(v27) = 9;
    v28 = 8;
    goto LABEL_59;
  }

  v20 = v16 > 8;
  if (8 - v18 < v20)
  {
    v20 = 8 - v18;
  }

  v21 = v20 + v18;
  if ((v20 + v18) < 0 || (v22 = -v16 - v20, v17 == v22))
  {
    v44 = 0;
  }

  else
  {
    if (v16 <= 49)
    {
      v16 = byte_19548BF08[v16];
    }

    if (v16 < 0x4A)
    {
      v24 = 0;
      v23 = v62;
    }

    else
    {
      v23 = malloc_type_malloc((v16 + 11), 0x1000040CBA68D63uLL);
      v24 = v23;
      if (!v23)
      {
LABEL_13:
        v12 = *a4 | 0x10;
LABEL_16:
        *a4 = v12;
        goto LABEL_19;
      }
    }

    v44 = v24;
    v29 = uprv_decNumberCopy(v23, v6);
    v29[1] = v22;
    v16 = *v29;
    v6 = v29;
  }

  v28 = v21 & ~(v21 >> 31);
  if (v16 <= *a3)
  {
    v16 = *a3;
  }

  v30 = v16 + v28;
  v27 = v16 + v28 + 2;
  v31 = 2 * v27;
  if (v30 <= 22)
  {
    v31 = byte_19548BF08[2 * v27];
  }

  v32 = (v31 + 11);
  if (v32 < 0xB5)
  {
    v43 = 0;
    v26 = v59;
LABEL_45:
    v35 = v30 + 4;
    if (v30 <= 45)
    {
      LODWORD(v35) = byte_19548BF08[v35];
    }

    if (v35 < 0x56)
    {
      v19 = 0;
      v25 = v61;
    }

    else
    {
      v19 = malloc_type_malloc((v35 + 11), 0x1000040CBA68D63uLL);
      v25 = v19;
      if (!v19)
      {
        *a4 |= 0x10u;
        v34 = v44;
LABEL_83:
        v33 = v43;
        goto LABEL_84;
      }
    }

    uprv_decNumberCopy(v25, v6);
    *(v26 + 4) = 256;
    *v26 = 1;
    LOWORD(v55) = 512;
    v54 = 1;
    LOWORD(v46) = 256;
    v45 = 1;
    uprv_decContextDefault(v48, 64);
    v47[0] = v48[0];
    *(v47 + 12) = *(v48 + 12);
    LODWORD(v49) = 2 * v27;
    LODWORD(v48[0]) = v27;
    DWORD2(v48[0]) = -999999999;
    while (1)
    {
      sub_1952F0830(v26, v26, v25, &v49, 0, a4);
      v36 = sub_1952F2D24(v25, v25, v6, v48, &v53);
      sub_1952F17CC(v36, v25, &v54, v48, 128, &v53);
      if (*v26 >= v27 && *(v26 + 1) + *v26 > *v25 + v27 + *(v25 + 1))
      {
        break;
      }

      sub_1952F0830(&v54, &v54, &v45, v47, 0, &v53);
    }

    if (v21 >= 1)
    {
LABEL_59:
      v38 = 0;
      v39 = dword_19548BEE0[v28];
      LODWORD(v49) = v27 + 2;
      *(v25 + 4) = 256;
      *v25 = 1;
      for (i = 30; ; --i)
      {
        if ((*a4 & 0x2200) != 0 && ((*a4 & 0x200) != 0 || !*(v25 + 9) && *v25 == 1 && (*(v25 + 8) & 0x70) == 0))
        {
LABEL_73:
          v26 = v25;
          goto LABEL_74;
        }

        v39 *= 2;
        if (v39 < 0)
        {
          break;
        }

        if (!i)
        {
          goto LABEL_73;
        }

        if (v38)
        {
          goto LABEL_71;
        }

LABEL_72:
        ;
      }

      sub_1952F2D24(v25, v25, v26, &v49, a4);
      if (!i)
      {
        goto LABEL_73;
      }

      v38 = 1;
LABEL_71:
      sub_1952F2D24(v25, v25, v25, &v49, a4);
      goto LABEL_72;
    }

LABEL_74:
    v52 = 1;
    v41 = *v26;
    if (*(v26 + 9))
    {
      v42 = 0;
    }

    else
    {
      v42 = v41 == 1;
    }

    v34 = v44;
    if (v42)
    {
      if ((*(v26 + 8) & 0x70) != 0)
      {
        v41 = 1;
      }

      else
      {
        v52 = 0;
        v41 = *v26;
      }
    }

    LODWORD(v49) = *a3;
    *(a1 + 8) = *(v26 + 8);
    *(a1 + 4) = *(v26 + 1);
    sub_1952F03A4(a1, &v49, v26 + 9, v41, &v52, a4);
    sub_1952F0618(a1, a3, &v52, a4);
    goto LABEL_83;
  }

  v26 = malloc_type_malloc(v32, 0x1000040CBA68D63uLL);
  v43 = v26;
  if (v26)
  {
    goto LABEL_45;
  }

  v19 = 0;
  v33 = 0;
  *a4 |= 0x10u;
  v34 = v44;
LABEL_84:
  if (v34)
  {
    free(v34);
  }

  if (v33)
  {
    free(v33);
  }

  if (v19)
  {
    free(v19);
  }

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t uprv_decNumberFMA(uint64_t a1, int *a2, int *a3, uint64_t *a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v17 = 0;
  v16 = 0;
  if (((a2[2] & 0x70) != 0 || !sub_1952F23F0(a2, a5, &v19)) && ((a3[2] & 0x70) != 0 || !sub_1952F23F0(a3, a5, &v19)) && ((a4[1] & 0x70) != 0 || !sub_1952F23F0(a4, a5, &v19)))
  {
    *v18 = *a5;
    *&v18[12] = *(a5 + 12);
    v10 = *a3 + *a2;
    *v18 = v10;
    *&v18[4] = 0xC46536013B9AC9FFLL;
    if (v10 <= 49)
    {
      LODWORD(v10) = byte_19548BF08[v10];
    }

    if (v10 < 0x4A)
    {
      v11 = 0;
      v12 = v20;
    }

    else
    {
      v11 = malloc_type_malloc((v10 + 11), 0x1000040CBA68D63uLL);
      v12 = v11;
      if (!v11)
      {
        v13 = v19 | 0x10;
LABEL_24:
        sub_1952F0784(a1, v13, a5);
        goto LABEL_25;
      }
    }

    sub_1952F2D24(v12, a2, a3, v18, &v19);
    if ((v19 & 0x80) != 0)
    {
      if ((v19 & 0x40000000) == 0)
      {
        *a1 = 1;
        *(a1 + 8) = 32;
        if (!v11)
        {
          goto LABEL_23;
        }

LABEL_22:
        free(v11);
        goto LABEL_23;
      }

      LOWORD(v17) = 0;
      v16 = 1;
      a4 = &v16;
    }

    sub_1952F0830(a1, v12, a4, a5, 0, &v19);
    if (!v11)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_23:
  v13 = v19;
  if (v19)
  {
    goto LABEL_24;
  }

LABEL_25:
  v14 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_1952F2D24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int *a5)
{
  v6 = a4;
  v110 = *MEMORY[0x1E69E9840];
  v103 = 0;
  v8 = *(a2 + 8);
  v9 = *(a3 + 8);
  v10 = (v9 ^ v8) & 0x80;
  if (((v9 | v8) & 0x70) != 0)
  {
    if (((v9 | v8) & 0x30) != 0)
    {
      sub_1952F3D64(a1, a2, a3, a4, a5);
      goto LABEL_129;
    }

    if (((*(a2 + 8) & 0x40) != 0 || *(a2 + 9) || (*(a2 + 8) & 0x30) != 0 || *a2 != 1) && ((*(a3 + 8) & 0x40) != 0 || *(a3 + 9) || (*(a3 + 8) & 0x30) != 0 || *a3 != 1))
    {
      *a1 = 1;
      *(a1 + 9) = 0;
      *(a1 + 8) = v10 | 0x40;
      goto LABEL_129;
    }

    v21 = *a5 | 0x80;
LABEL_107:
    *a5 = v21;
    goto LABEL_129;
  }

  memset(v109, 0, 145);
  memset(v107, 0, sizeof(v107));
  v108 = 0;
  memset(v105, 0, sizeof(v105));
  v106 = 0;
  memset(v104, 0, 128);
  v11 = *a2;
  if (*a2 >= *a3)
  {
    v12 = *a3;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 <= *a3)
  {
    v11 = *a3;
  }

  if (*a2 > *a3)
  {
    v13 = a3;
  }

  else
  {
    v13 = a2;
  }

  if (*a2 > *a3)
  {
    v14 = a2;
  }

  else
  {
    v14 = a3;
  }

  memset(&v104[8], 0, 32);
  if (v12 < 3)
  {
    if (v11 <= 49)
    {
      v11 = byte_19548BF08[v11];
    }

    v18 = v11 + byte_19548BF08[v12];
    if (v18 < 0x92)
    {
      v20 = 0;
      v19 = v109;
    }

    else
    {
      v19 = malloc_type_malloc(v18, 0x100004077774924uLL);
      v20 = v19;
      if (!v19)
      {
        v21 = *a5 | 0x10;
        goto LABEL_107;
      }
    }

    v99 = v20;
    *v19 = 0;
    v24 = *v14;
    if (*v14 <= 49)
    {
      v24 = byte_19548BF08[v24];
    }

    v26 = v13 + 9;
    v25 = *v13;
    if (v25 >= 50)
    {
      v97 = v10;
    }

    else
    {
      if (!v25)
      {
        v74 = 0;
        v75 = 0;
        v83 = 1;
LABEL_100:
        v73 = v99;
        goto LABEL_110;
      }

      v97 = v10;
      v25 = byte_19548BF08[v25];
    }

    v80 = 0;
    v81 = 0;
    v102 = v13;
    v82 = v13 + v25 + 9;
    v83 = 1;
    do
    {
      if (v26[v81])
      {
        v83 = v81 + sub_1952F6E20((v19 + v81), v83 + v80, (v14 + 9), v24, 0, (v19 + v81), v26[v81]);
      }

      else
      {
        *(v19 + v83++) = 0;
      }

      ++v81;
      --v80;
    }

    while (&v26[v81] < v82);
    v74 = 0;
    v75 = 0;
    v10 = v97;
    v13 = v102;
    goto LABEL_100;
  }

  v15 = (v11 + 8) / 9;
  v16 = (v12 + 8) / 9u;
  if (v11 < 91)
  {
    v96 = 0;
    v17 = v107;
  }

  else
  {
    v17 = malloc_type_malloc((4 * v15), 0x100004052888210uLL);
    v96 = v17;
  }

  v101 = v13;
  v22 = v15 + v16;
  if (v12 < 0x5B)
  {
    v95 = 0;
    v23 = v105;
  }

  else
  {
    v23 = malloc_type_malloc(4 * v16, 0x100004052888210uLL);
    v95 = v23;
  }

  if (v22 >= -7)
  {
    v27 = v22 + 7;
  }

  else
  {
    v27 = v22 + 14;
  }

  v28 = (8 * (v22 + (v27 >> 3)));
  if (v28 < 161)
  {
    v100 = 0;
    v19 = v104;
    if (!v17)
    {
      goto LABEL_91;
    }
  }

  else
  {
    v19 = malloc_type_malloc(v28, 0x100004000313F17uLL);
    v100 = v19;
    if (!v17)
    {
      goto LABEL_91;
    }
  }

  if (!v23 || !v19)
  {
LABEL_91:
    *a5 |= 0x10u;
    v73 = v100;
    v75 = v95;
    v74 = v96;
    if (!v100)
    {
      goto LABEL_125;
    }

    goto LABEL_124;
  }

  v98 = v10;
  v29 = v27 >> 3;
  v30 = *v14;
  v31 = v17;
  if (*v14 >= 1)
  {
    v32 = (v14 + 9);
    v31 = v17;
    do
    {
      v33 = 0;
      *v31 = 0;
      v34 = v30 - 1;
      if ((v30 - 1) >= 8)
      {
        v34 = 8;
      }

      v35 = (v34 + 1);
      v36 = dword_19548BEE0;
      do
      {
        v38 = *v32++;
        v37 = v38;
        v39 = *v36++;
        v33 += v39 * v37;
        *v31 = v33;
        --v30;
        --v35;
      }

      while (v35);
      ++v31;
    }

    while (v30 + 1 > 1);
  }

  v94 = v6;
  v40 = (v19 + 8 * v29);
  v41 = *v101;
  v42 = v23;
  if (*v101 >= 1)
  {
    v43 = v101 + 9;
    v42 = v23;
    do
    {
      v44 = 0;
      *v42 = 0;
      v45 = v41 - 1;
      if ((v41 - 1) >= 8)
      {
        v45 = 8;
      }

      v46 = (v45 + 1);
      v47 = dword_19548BEE0;
      do
      {
        v49 = *v43++;
        v48 = v49;
        v50 = *v47++;
        v44 += v50 * v48;
        *v42 = v44;
        --v41;
        --v46;
      }

      while (v46);
      v42 += 4;
    }

    while (v41 + 1 > 1);
  }

  v51 = v42 - 4;
  if (v22 >= 1)
  {
    v52 = (v19 + 8 * v29);
    v53 = &v52[8 * v22];
    v54 = v52 + 8;
    if (v53 > v54)
    {
      v54 = v53;
    }

    bzero(v40, (&v54[~v19 + -8 * v29] & 0xFFFFFFFFFFFFFFF8) + 8);
  }

  v55 = &v40[8 * v22];
  if (v23 <= v51)
  {
    v56 = v31 - 1;
    v57 = 18;
    v58 = v23;
    do
    {
      if (v17 <= v56)
      {
        v59 = &v40[2 * (v58 - v23)];
        v60 = *v58;
        v61 = v17;
        do
        {
          v62 = *v61++;
          *v59 += v60 * v62;
          v59 += 8;
        }

        while (v61 <= v56);
      }

      v63 = __OFSUB__(v57--, 1);
      if ((v57 < 0) ^ v63 | (v57 == 0))
      {
        v64 = 0;
      }

      else
      {
        v64 = 1;
      }

      v65 = v64 & (v58 != v51);
      if (!v65)
      {
        v57 = 18;
      }

      if ((v65 & 1) == 0 && v22 >= 1)
      {
        v66 = v40;
        do
        {
          v67 = *v66;
          if (*v66 >= 0x3B9ACA00)
          {
            v68 = v67 / 0x3B9ACA00;
            if (v67 >= 0xDE0B6B3A7640000)
            {
              v69 = v67 / 0xDE0B6B3A7640000;
              v66[2] += v67 / 0xDE0B6B3A7640000;
              v67 %= 0xDE0B6B3A7640000uLL;
              LODWORD(v68) = v68 - 1000000000 * v69;
            }

            v70 = v68;
            v71 = v66[1] + v68;
            *v66 = v67 - 1000000000 * v70;
            v66[1] = v71;
          }

          ++v66;
        }

        while (v66 < v55);
        v57 = 18;
      }

      v58 += 4;
    }

    while (v58 <= v51);
  }

  if (v22 < 1)
  {
    v78 = v19;
    v10 = v98;
    v73 = v100;
    v13 = v101;
    v75 = v95;
    v74 = v96;
  }

  else
  {
    v72 = v19;
    v10 = v98;
    v73 = v100;
    v13 = v101;
    v75 = v95;
    v74 = v96;
    do
    {
      v76 = *v40;
      ++v72;
      v77 = 8;
      v78 = v72;
      do
      {
        v79 = v76;
        v76 /= 0xAu;
        *(v72 - 1) = v79 - 10 * v76;
        ++v78;
        ++v72;
        --v77;
      }

      while (v77);
      *(v72 - 1) = v76;
      v40 += 8;
    }

    while (v40 < v55);
  }

  v83 = v78 - v19;
  v6 = v94;
LABEL_110:
  *(a1 + 8) = v10;
  v84 = (v19 + v83);
  while (--v84 >= v19)
  {
    if (*v84 || v83 == 1)
    {
      break;
    }

    --v83;
  }

  v86 = *(v14 + 4);
  v87 = v13[1];
  v88 = v87 + v86;
  v89 = v86 & v87;
  if (v88 > 0 && v89 < 0)
  {
    v91 = -1999999998;
  }

  else
  {
    v91 = v88;
  }

  *a1 = v83;
  *(a1 + 4) = v91;
  sub_1952F03A4(a1, v6, v19, v83, &v103, a5);
  sub_1952F0618(a1, v6, &v103, a5);
  if (!v73)
  {
    goto LABEL_125;
  }

LABEL_124:
  free(v73);
LABEL_125:
  if (v75)
  {
    free(v75);
  }

  if (v74)
  {
    free(v74);
  }

LABEL_129:
  v92 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t uprv_decNumberInvert(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (*(a2 + 4) || *(a2 + 8) >= 0x10u)
  {
LABEL_17:
    *a1 = 1;
    *(a1 + 8) = 32;
    uprv_decContextSetStatus(a3, 128);
  }

  else
  {
    v6 = *a2;
    v4 = (a2 + 9);
    v5 = v6;
    v7 = a1 + 9;
    if (v6 <= 49)
    {
      v5 = byte_19548BF08[v5];
    }

    v8 = *a3;
    if (v8 >= 50)
    {
      goto LABEL_8;
    }

    if (v8)
    {
      v8 = byte_19548BF08[v8];
LABEL_8:
      v9 = &v4[v5 - 1];
      v10 = a1 + v8 + 8;
      v11 = (a1 + 9);
      while (1)
      {
        if (v4 <= v9)
        {
          v12 = *v4;
          if (v12)
          {
            v13 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = 1;
LABEL_14:
        *v11 = v13;
        if ((v12 - 10 * ((429496730 * v12) >> 32)) >= 2)
        {
          goto LABEL_17;
        }

        ++v4;
        if (++v11 > v10)
        {
          goto LABEL_20;
        }
      }
    }

    LODWORD(v11) = a1 + 9;
LABEL_20:
    v15 = v11 - v7;
    v16 = (v7 + v11 - v7 - 1);
    if (v16 >= v7)
    {
      v17 = v11 - a1 - 10;
      do
      {
        if (*v16)
        {
          v18 = 1;
        }

        else
        {
          v18 = v17 == 0;
        }

        if (v18)
        {
          break;
        }

        --v16;
        --v17;
      }

      while (v16 >= v7);
      v15 = v17 + 1;
    }

    *a1 = v15;
    *(a1 + 4) = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t uprv_decNumberLn(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = 0;
  if (!sub_1952F23F0(a2, a3, &v7))
  {
    sub_1952F363C(a1, a2, a3, &v7);
  }

  if (v7)
  {
    sub_1952F0784(a1, v7, a3);
  }

  return a1;
}

uint64_t sub_1952F363C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v50 = 0;
  if ((*(a2 + 8) & 0x70) != 0)
  {
    if ((*(a2 + 8) & 0x40) == 0)
    {
      sub_1952F3D64(a1, a2, 0, a3, a4);
      goto LABEL_92;
    }

    if ((*(a2 + 8) & 0x80) == 0)
    {
      uprv_decNumberCopy(a1, a2);
      goto LABEL_92;
    }

    goto LABEL_16;
  }

  v8 = *(a2 + 9);
  if (!*(a2 + 9) && *a2 == 1)
  {
    *a1 = 1;
    *(a1 + 8) = 192;
    goto LABEL_92;
  }

  if ((*(a2 + 8) & 0x80) != 0)
  {
LABEL_16:
    v11 = *a4 | 0x80;
LABEL_17:
    *a4 = v11;
    goto LABEL_92;
  }

  memset(v52, 0, 60);
  memset(v51, 0, sizeof(v51));
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  memset(v44, 0, 28);
  v9 = *a3;
  if (!*(a2 + 4) && v9 <= 40)
  {
    if (v8)
    {
      if (v8 == 2 && *a2 == 1)
      {
        v44[0] = *a3;
        *(v44 + 12) = *(a3 + 12);
        HIDWORD(v44[0]) = 3;
        v10 = "0.6931471805599453094172321214581765680755";
LABEL_21:
        uprv_decNumberFromString(a1, v10, v44);
        v11 = *a4 | 0x820;
        goto LABEL_17;
      }
    }

    else if (*(a2 + 10) == 1 && *a2 == 2)
    {
      v44[0] = *a3;
      *(v44 + 12) = *(a3 + 12);
      HIDWORD(v44[0]) = 3;
      v10 = "2.302585092994045684017991454684364207601";
      goto LABEL_21;
    }
  }

  v12 = *a2;
  if (v9 <= *a2)
  {
    v13 = *a2;
  }

  else
  {
    v13 = *a3;
  }

  if (v13 <= 7)
  {
    v14 = 7;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14 + 2;
  if ((v14 + 2) <= 0x10)
  {
    v16 = 16;
  }

  else
  {
    v16 = v14 + 2;
  }

  if (v13 <= 47)
  {
    v16 = byte_19548BF08[v16];
  }

  if (v16 < 0x32)
  {
    v17 = 0;
    v18 = v52;
  }

  else
  {
    v17 = malloc_type_malloc(v16 + 11, 0x1000040CBA68D63uLL);
    if (!v17)
    {
      v11 = *a4 | 0x10;
      goto LABEL_17;
    }

    v12 = *a2;
    v18 = v17;
  }

  v19 = v12 + v15;
  if ((v12 + v15) <= 16)
  {
    v20 = 16;
  }

  else
  {
    v20 = v12 + v15;
  }

  if (v19 <= 49)
  {
    v20 = byte_19548BF08[v20];
  }

  v42 = v17;
  memset(v43, 0, 28);
  v49 = 0;
  if (v20 < 0x56)
  {
    v21 = 0;
    v22 = v51;
  }

  else
  {
    v21 = malloc_type_malloc(v20 + 11, 0x1000040CBA68D63uLL);
    v22 = v21;
    if (!v21)
    {
      *a4 |= 0x10u;
      v23 = v42;
      goto LABEL_88;
    }
  }

  uprv_decContextDefault(v44, 64);
  v24 = *a2 + *(a2 + 4);
  if (v24 >= 0)
  {
    v25 = *a2 + *(a2 + 4);
  }

  else
  {
    v25 = -v24;
  }

  uprv_decNumberFromUInt32(v18, v25);
  if (v24 < 0)
  {
    *(v18 + 8) = 0x80;
  }

  uprv_decNumberFromUInt32(v22, 0x232279u);
  *(v22 + 1) = -6;
  sub_1952F2D24(v18, v18, v22, v44, &v50);
  v49 = 0;
  LODWORD(v44[0]) = 2;
  HIDWORD(v44[0]) = 5;
  *(v22 + 8) = *(a2 + 8);
  v26 = *a2;
  *(v22 + 1) = *(a2 + 4);
  sub_1952F03A4(v22, v44, (a2 + 9), v26, &v49, &v50);
  *(v22 + 1) = 0;
  v27 = sub_1952F53C0(v22);
  v28 = 10 * v27;
  if (v27 >= 10)
  {
    v28 = v27;
  }

  v29 = word_19548BF50[v28 - 10];
  uprv_decNumberFromUInt32(v22, v29 >> 2);
  *(v22 + 1) = -3 - (v29 & 3);
  *(v22 + 8) = 0x80;
  LODWORD(v44[0]) = 16;
  HIDWORD(v44[0]) = 3;
  sub_1952F0830(v18, v18, v22, v44, 0, &v50);
  LOWORD(v48) = 256;
  v47 = 1;
  *(v44 + 4) = *(a3 + 4);
  BYTE8(v44[1]) = 0;
  LODWORD(v43[0]) = v44[0];
  *(v43 + 12) = *(v44 + 12);
  *(v43 + 4) = 0xFFE17B82001E847ELL;
  v30 = 9;
  LODWORD(v44[0]) = 9;
  v31 = *a2 + 9;
LABEL_54:
  LODWORD(v43[0]) = v31;
  while (1)
  {
    *(v18 + 8) ^= 0x80u;
    v32 = sub_1952F24A4(v22, v18, v43, &v50);
    *(v18 + 8) ^= 0x80u;
    v33 = sub_1952F2D24(v32, v22, a2, v43, &v50);
    sub_1952F0830(v33, v22, &v47, v43, 128, &v50);
    v34 = *v22;
    v35 = !*(v22 + 9) && v34 == 1;
    v36 = v35;
    if (v35 && (*(v22 + 8) & 0x70) == 0)
    {
      break;
    }

    v37 = *v18;
    if (*(v18 + 1) + *v18 > *(v22 + 1) + v34 + *a3)
    {
      goto LABEL_67;
    }

LABEL_74:
    sub_1952F0830(v18, v18, v22, v44, 0, &v50);
    if (v30 != v15)
    {
      if (2 * v30 >= v15)
      {
        v30 = v15;
      }

      else
      {
        v30 *= 2;
      }

      LODWORD(v44[0]) = v30;
      v31 = *a2 + v30;
      goto LABEL_54;
    }
  }

  v37 = *v18;
LABEL_67:
  if (v37 == v15)
  {
    goto LABEL_83;
  }

  if (v37 != 1 || *(v18 + 9) || (*(v18 + 8) & 0x70) != 0)
  {
    if (v36 && (*(v22 + 8) & 0x70) == 0)
    {
      *(v22 + 1) = *(v18 + 1) - v15;
    }

    goto LABEL_74;
  }

  sub_1952F1150(&v45, a2, &v47, v44, 1, &v50);
  if (BYTE1(v46))
  {
    *a4 |= 0x820u;
  }

  else
  {
    *(v18 + 1) = 0;
  }

LABEL_83:
  v49 = 1;
  if (*(v18 + 9))
  {
    v38 = *(v18 + 8);
    v39 = *v18;
    v23 = v42;
  }

  else
  {
    v39 = *v18;
    v38 = *(v18 + 8);
    v23 = v42;
    if (*v18 == 1)
    {
      v49 = (v38 & 0x70) != 0;
      v39 = 1;
    }
  }

  LODWORD(v44[0]) = *a3;
  *(a1 + 8) = v38;
  *(a1 + 4) = *(v18 + 1);
  sub_1952F03A4(a1, v44, v18 + 9, v39, &v49, a4);
  sub_1952F0618(a1, a3, &v49, a4);
LABEL_88:
  if (v23)
  {
    free(v23);
  }

  if (v21)
  {
    free(v21);
  }

LABEL_92:
  v40 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t uprv_decNumberLogB(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v12 = 0;
  if ((*(a2 + 8) & 0x30) != 0)
  {
    sub_1952F3D64(a1, a2, 0, a3, &v12);
    v5 = v12;
    if (v12)
    {
LABEL_3:
      sub_1952F0784(a1, v5, a3);
      return a1;
    }

    return a1;
  }

  if ((*(a2 + 8) & 0x40) != 0)
  {
    uprv_decNumberCopy(a1, a2);
    v10 = *(a1 + 8) & 0x7F;
    goto LABEL_15;
  }

  v6 = *a2;
  if (*(a2 + 9))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 1;
  }

  if (v7)
  {
    *a1 = 1;
    *(a1 + 8) = 192;
    v5 = 2;
    goto LABEL_3;
  }

  v8 = v6 + *(a2 + 4);
  if (v8 - 1 < 0)
  {
    v9 = 1 - v8;
  }

  else
  {
    v9 = v8 - 1;
  }

  uprv_decNumberFromUInt32(a1, v9);
  if (v8 <= 0)
  {
    v10 = 0x80;
LABEL_15:
    *(a1 + 8) = v10;
  }

  return a1;
}

uint64_t sub_1952F3D64(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  if ((*(a2 + 8) & 0x10) != 0)
  {
    *a5 |= 0x40000080u;
  }

  else if (a3)
  {
    if ((*(a3 + 8) & 0x10) != 0)
    {
      *a5 |= 0x40000080u;
      a2 = a3;
    }

    else if ((*(a2 + 8) & 0x20) == 0)
    {
      a2 = a3;
    }
  }

  v5 = *a4;
  if (*a2 <= v5)
  {
    result = uprv_decNumberCopy(result, a2);
    goto LABEL_20;
  }

  *(result + 8) = *(a2 + 8);
  if (v5 >= 50)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    v5 = byte_19548BF08[v5];
LABEL_13:
    v6 = (result + 9);
    v7 = result + v5 + 9;
    v8 = (a2 + 9);
    do
    {
      v9 = *v8++;
      *v6++ = v9;
    }

    while (v6 < v7);
    LODWORD(v5) = *a4;
    if (*a4 >= 50)
    {
      *result = v5;
      goto LABEL_20;
    }
  }

  v10 = byte_19548BF08[v5];
  *result = v10;
  if (v10 > v5)
  {
    result = sub_1952F6134(result, v10 - v5);
  }

LABEL_20:
  *(result + 8) = *(result + 8) & 0xCF | 0x20;
  *(result + 4) = 0;
  return result;
}

uint64_t uprv_decNumberCopyAbs(uint64_t a1, unsigned int *a2)
{
  result = uprv_decNumberCopy(a1, a2);
  *(result + 8) &= ~0x80u;
  return result;
}

uint64_t uprv_decNumberLog10(uint64_t a1, uint64_t a2, int *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = 0;
  memset(v31, 0, 60);
  memset(v30, 0, 60);
  v29[0] = 0;
  v29[1] = 0;
  v24 = 0uLL;
  v26 = 0;
  v25 = 0;
  if (sub_1952F23F0(a2, a3, &v27 + 1))
  {
    goto LABEL_38;
  }

  uprv_decContextDefault(&v24, 64);
  v6 = *(a2 + 8);
  v7 = *a2;
  if (v6 > 0xF)
  {
    v8 = *a2;
  }

  else
  {
    v8 = 1;
    if (*(a2 + 9) || v7 != 1)
    {
      v23 = 0;
      LODWORD(v24) = 1;
      LOBYTE(v29[0]) = v6;
      HIDWORD(v28) = *(a2 + 4);
      sub_1952F03A4(&v28, &v24, (a2 + 9), v7, &v23 + 1, &v23);
      if ((v23 & 0x20) == 0 && BYTE1(v29[0]) == 1)
      {
        v9 = HIDWORD(v28);
        if (v28 >= 0)
        {
          v10 = HIDWORD(v28);
        }

        else
        {
          v10 = -HIDWORD(v28);
        }

        uprv_decNumberFromUInt32(&v28, v10);
        if (v9 < 0)
        {
          v11 = 0x80;
          LOBYTE(v29[0]) = 0x80;
        }

        else
        {
          v11 = v29[0];
        }

        HIDWORD(v23) = 0;
        *(a1 + 8) = v11;
        v20 = v28;
        *(a1 + 4) = HIDWORD(v28);
        sub_1952F03A4(a1, a3, v29 + 1, v20, &v23 + 1, &v27 + 1);
        sub_1952F0618(a1, a3, &v23 + 1, &v27 + 1);
        goto LABEL_38;
      }

      v8 = *a2;
    }
  }

  if (v8 + 6 <= *a3)
  {
    v12 = *a3;
  }

  else
  {
    v12 = v8 + 6;
  }

  if (v12 >= 47)
  {
    v13 = malloc_type_malloc((v12 + 14), 0x1000040CBA68D63uLL);
    v14 = v13;
    if (!v13)
    {
      v17 = HIDWORD(v27) | 0x10;
LABEL_39:
      sub_1952F0784(a1, v17, a3);
      goto LABEL_40;
    }
  }

  else
  {
    v13 = 0;
    v14 = v31;
  }

  LODWORD(v24) = v12 + 3;
  *(&v24 + 4) = 0xFFF0BDC1000F423FLL;
  LOBYTE(v26) = 0;
  sub_1952F363C(v14, a2, &v24, &v27 + 1);
  v15 = HIDWORD(v27);
  if ((v27 & 0xDD00000000) != 0 && (v27 & 0x4000000000000000) == 0)
  {
    goto LABEL_23;
  }

  if ((v14[2] & 0x70) != 0 || !*(v14 + 9) && *v14 == 1)
  {
    uprv_decNumberCopy(a1, v14);
LABEL_23:
    v16 = 0;
    goto LABEL_24;
  }

  v18 = *a3;
  if (v18 >= 47)
  {
    v16 = malloc_type_malloc(v18 + 14, 0x1000040CBA68D63uLL);
    v19 = v16;
    if (!v16)
    {
      HIDWORD(v27) = v15 | 0x10;
      goto LABEL_24;
    }
  }

  else
  {
    v16 = 0;
    v19 = v30;
  }

  LOWORD(v29[0]) = 0;
  BYTE2(v29[0]) = 1;
  v28 = 2;
  LODWORD(v24) = v18 + 3;
  sub_1952F363C(v19, &v28, &v24, &v27);
  LODWORD(v24) = *a3;
  sub_1952F17CC(a1, v14, v19, &v24, 128, &v27 + 1);
LABEL_24:
  if (v13)
  {
    free(v13);
  }

  if (v16)
  {
    free(v16);
  }

LABEL_38:
  v17 = HIDWORD(v27);
  if (HIDWORD(v27))
  {
    goto LABEL_39;
  }

LABEL_40:
  v21 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t uprv_decNumberMax(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F1150(a1, a2, a3, a4, 2, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

uint64_t uprv_decNumberMaxMag(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F1150(a1, a2, a3, a4, 7, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

uint64_t uprv_decNumberMin(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F1150(a1, a2, a3, a4, 3, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

uint64_t uprv_decNumberMinMag(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F1150(a1, a2, a3, a4, 8, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

int *uprv_decNumberMinus(int *a1, uint64_t a2, int *a3)
{
  v8[2] = 0;
  v5 = *(a2 + 4);
  v7 = 0;
  v8[0] = 1;
  v8[1] = v5;
  sub_1952F0830(a1, v8, a2, a3, 128, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a3);
  }

  return a1;
}

uint64_t uprv_decNumberNextMinus(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  *v9 = *a3;
  *&v9[3] = *(a3 + 3);
  v8 = 0;
  if ((*(a2 + 8) & 0xC0) == 0x40)
  {
    v5 = *a3;
    *a1 = v5;
    v6 = (a1 + 9);
    if (v5 >= 2)
    {
      memset(v6, 9, (v5 - 1));
      v6 = (a1 + v5 + 8);
      LODWORD(v5) = 1;
    }

    *v6 = dword_19548BEE0[v5] - 1;
    *(a1 + 8) = 0;
    *(a1 + 4) = a3[1] - *a3 + 1;
  }

  else
  {
    v11 = 0x100C4653600;
    v10 = 1;
    v9[3] = 6;
    sub_1952F0830(a1, a2, &v10, v9, 128, &v8);
    if ((v8 & 0x40000080) != 0)
    {
      sub_1952F0784(a1, v8 & 0x40000080, a3);
    }
  }

  return a1;
}

uint64_t uprv_decNumberNextPlus(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  *v9 = *a3;
  *&v9[3] = *(a3 + 3);
  v8 = 0;
  if (*(a2 + 8) < 0xC0u)
  {
    v11 = 0x100C4653600;
    v10 = 1;
    v9[3] = 0;
    sub_1952F0830(a1, a2, &v10, v9, 0, &v8);
    if ((v8 & 0x40000080) != 0)
    {
      sub_1952F0784(a1, v8 & 0x40000080, a3);
    }
  }

  else
  {
    v5 = *a3;
    *a1 = v5;
    v6 = (a1 + 9);
    if (v5 >= 2)
    {
      memset(v6, 9, (v5 - 1));
      v6 = (a1 + v5 + 8);
      LODWORD(v5) = 1;
    }

    *v6 = dword_19548BEE0[v5] - 1;
    *(a1 + 4) = a3[1] - *a3 + 1;
    *(a1 + 8) = 0x80;
  }

  return a1;
}

uint64_t uprv_decNumberNextToward(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v23 = 0;
  v22 = 0;
  *v21 = *a4;
  *&v21[3] = *(a4 + 3);
  v20 = 0;
  if ((*(a2 + 8) & 0x30) != 0 || (*(a3 + 8) & 0x30) != 0)
  {
    sub_1952F3D64(a1, a2, a3, a4, &v20);
  }

  else
  {
    v10 = sub_1952F47D8(a2, a3, 0);
    if (v10 == 0x80000000)
    {
      v8 = 16;
      goto LABEL_5;
    }

    if (v10)
    {
      v12 = *(a2 + 8);
      if (v10 < 0)
      {
        if (v12 >= 0xC0)
        {
          v15 = *a4;
          *a1 = v15;
          v16 = (a1 + 9);
          if (v15 >= 2)
          {
            memset(v16, 9, (v15 - 1));
            v16 = (a1 + v15 + 8);
            LODWORD(v15) = 1;
          }

          *v16 = dword_19548BEE0[v15] - 1;
          *(a1 + 4) = a4[1] - *a4 + 1;
          *(a1 + 8) = 0x80;
          return a1;
        }

        v18 = 0;
        v17 = 0;
      }

      else
      {
        if ((v12 & 0xC0) == 0x40)
        {
          v13 = *a4;
          *a1 = v13;
          v14 = (a1 + 9);
          if (v13 >= 2)
          {
            memset(v14, 9, (v13 - 1));
            v14 = (a1 + v13 + 8);
            LODWORD(v13) = 1;
          }

          *v14 = dword_19548BEE0[v13] - 1;
          *(a1 + 8) = 0;
          *(a1 + 4) = a4[1] - *a4 + 1;
          return a1;
        }

        v17 = 0x80;
        v18 = 6;
      }

      v21[3] = v18;
      LOWORD(v23) = 256;
      v22 = 0xC465360000000001;
      sub_1952F0830(a1, a2, &v22, v21, v17, &v20);
      if ((*(a1 + 8) & 0x70) == 0)
      {
        v19 = *a1;
        if ((*(a1 + 9) || v19 != 1) && *(a1 + 4) + v19 > a4[2])
        {
          return a1;
        }
      }
    }

    else
    {
      v11 = *(a3 + 8);
      uprv_decNumberCopy(a1, a2);
      *(a1 + 8) = v11 & 0x80 | *(a1 + 8) & 0x7F;
    }
  }

  v8 = v20;
  if (v20)
  {
LABEL_5:
    sub_1952F0784(a1, v8, a4);
  }

  return a1;
}

uint64_t sub_1952F47D8(uint64_t a1, uint64_t a2, int a3)
{
  if (!*(a1 + 9) && *a1 == 1)
  {
    v3 = (*(a1 + 8) & 0x70) == 0;
    v4 = (*(a1 + 8) & 0x70) != 0;
    if (!a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (*(a2 + 9) || *a2 != 1)
    {
      if (v3)
      {
        return 0xFFFFFFFFLL;
      }

      v6 = *(a2 + 8);
    }

    else
    {
      v6 = *(a2 + 8);
      v7 = (v6 & 0x70) == 0 || v3;
      if ((v6 & 0x70) != 0)
      {
        v8 = 0xFFFFFFFFLL;
      }

      else
      {
        v8 = v4;
      }

      if (v7)
      {
        return v8;
      }
    }

    v5 = 1;
    goto LABEL_29;
  }

  v3 = 0;
  v4 = 1;
  if (a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = (*(a1 + 8) >> 31) | 1;
  }

  if (*(a2 + 9) || *a2 != 1 || (v6 = *(a2 + 8), (v6 & 0x70) != 0))
  {
    v6 = *(a2 + 8);
    v9 = (v6 >> 7) | 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = v5 < v9;
  if (v5 > v9)
  {
    return 1;
  }

  v11 = v5 < v9 || v3;
  if (v10)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  if (!v11)
  {
LABEL_29:
    v12 = *(a1 + 8);
    if (((v6 | v12) & 0x40) != 0)
    {
      if ((v12 & 0x40) != 0)
      {
        LODWORD(v8) = 0;
      }

      else
      {
        LODWORD(v8) = -v5;
      }

      if ((v6 & 0x40) != 0)
      {
        return v8;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      v13 = *(a1 + 4);
      v14 = *(a2 + 4);
      v15 = v13 <= v14;
      if (v13 <= v14)
      {
        v16 = a2;
      }

      else
      {
        v16 = a1;
      }

      if (v15)
      {
        v17 = a1;
      }

      else
      {
        v17 = a2;
      }

      if (v15)
      {
        v18 = v5;
      }

      else
      {
        v18 = -v5;
      }

      v19 = *v17;
      if (*v17 <= 49)
      {
        v19 = byte_19548BF08[v19];
      }

      v20 = *v16;
      if (*v16 <= 49)
      {
        v20 = byte_19548BF08[v20];
      }

      v21 = sub_1952F7018((v17 + 9), v19, (v16 + 9), v20, *(v16 + 4) - *(v17 + 4));
      LODWORD(v8) = v21 * v18;
      if (v21 == 0x80000000)
      {
        return 0x80000000;
      }

      else
      {
        return v8;
      }
    }
  }

  return v8;
}

uint64_t uprv_decNumberCopySign(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  result = uprv_decNumberCopy(a1, a2);
  *(result + 8) = v3 & 0x80 | *(result + 8) & 0x7F;
  return result;
}

BOOL uprv_decNumberIsNormal(int *a1, uint64_t a2)
{
  if ((a1[2] & 0x70) != 0)
  {
    return 0;
  }

  v2 = *a1;
  return (*(a1 + 9) || v2 != 1) && v2 + a1[1] > *(a2 + 8);
}

uint64_t uprv_decNumberOr(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (*(a2 + 4) || *(a2 + 8) > 0xFu || *(a3 + 4) || *(a3 + 8) >= 0x10u)
  {
LABEL_25:
    *a1 = 1;
    *(a1 + 8) = 32;
    uprv_decContextSetStatus(a4, 128);
    return a1;
  }

  v7 = *a2;
  v5 = (a2 + 9);
  v6 = v7;
  if (v7 <= 49)
  {
    v6 = byte_19548BF08[v6];
  }

  v8 = a1 + 9;
  v9 = *a3;
  if (*a3 <= 49)
  {
    v9 = byte_19548BF08[v9];
  }

  v10 = *a4;
  if (v10 >= 50)
  {
LABEL_12:
    v11 = (a3 + 9);
    v12 = &v5[v6 - 1];
    v13 = a3 + 9 + v9 - 1;
    v14 = a1 + v10 + 8;
    v15 = (a1 + 9);
    while (1)
    {
      v16 = v5 <= v12 ? *v5 : 0;
      v17 = v11 <= v13 ? *v11 : 0;
      *v15 = 0;
      if (v17 | v16)
      {
        if ((v17 | v16))
        {
          *v15 = 1;
        }

        if (((v17 - 10 * ((429496730 * v17) >> 32)) | (v16 - 10 * ((429496730 * v16) >> 32))) >= 2)
        {
          goto LABEL_25;
        }
      }

      ++v5;
      ++v11;
      if (++v15 > v14)
      {
        goto LABEL_28;
      }
    }
  }

  if (v10)
  {
    v10 = byte_19548BF08[v10];
    goto LABEL_12;
  }

  LODWORD(v15) = a1 + 9;
LABEL_28:
  v19 = v15 - v8;
  v20 = (v8 + v15 - v8 - 1);
  if (v20 >= v8)
  {
    v21 = v15 - a1 - 10;
    do
    {
      if (*v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21 == 0;
      }

      if (v22)
      {
        break;
      }

      --v20;
      --v21;
    }

    while (v20 >= v8);
    v19 = v21 + 1;
  }

  *a1 = v19;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  return a1;
}

int *uprv_decNumberPlus(int *a1, uint64_t a2, int *a3)
{
  v8[2] = 0;
  v5 = *(a2 + 4);
  v7 = 0;
  v8[0] = 1;
  v8[1] = v5;
  sub_1952F0830(a1, v8, a2, a3, 0, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a3);
  }

  return a1;
}

uint64_t uprv_decNumberMultiply(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F2D24(a1, a2, a3, a4, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

uint64_t uprv_decNumberPower(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v43 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  v40 = 0;
  memset(v39, 0, 28);
  v38 = 0;
  v37 = 0;
  memset(v42, 0, 60);
  memset(v41, 0, 60);
  v9 = *(a2 + 8);
  v10 = *(a3 + 8);
  if (((v10 | v9) & 0x70) != 0)
  {
    if (((v10 | v9) & 0x30) != 0)
    {
      sub_1952F3D64(a1, a2, a3, a4, &v40);
      goto LABEL_65;
    }

    if ((v10 & 0x40) != 0)
    {
      if ((*(a2 + 8) & 0x80) != 0)
      {
        if (*(a2 + 9))
        {
          goto LABEL_45;
        }

        v18 = 128;
        if ((v9 & 0x40) != 0 || *v6 != 1)
        {
          goto LABEL_66;
        }
      }

      LOWORD(v38) = 256;
      v37 = 1;
      uprv_decNumberCompare(v42, v6, &v37, a4);
      *(a1 + 8) = 0;
      *a1 = 1;
      if (SBYTE8(v42[0]) < 0)
      {
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (!BYTE9(v42[0]))
        {
          v23 = *a4;
          *(a1 + 9) = 1;
          *a1 = sub_1952F527C((a1 + 9), 1, v23 - 1);
          *(a1 + 4) = 1 - v23;
          v18 = 2080;
          goto LABEL_66;
        }

        if ((v10 & 0x80) != 0)
        {
          goto LABEL_65;
        }
      }

      LOBYTE(v17) = 64;
LABEL_24:
      *(a1 + 8) = v17;
      goto LABEL_65;
    }
  }

  v11 = sub_1952F53C0(a3);
  v12 = v11;
  if ((((v9 & 0x80u) != 0) & v11) != 0)
  {
    v13 = -128;
  }

  else
  {
    v13 = 0;
  }

  if ((v9 & 0x40) != 0)
  {
    *(a1 + 8) = 0;
    *a1 = 1;
    if (!v11)
    {
      *(a1 + 9) = 1;
      goto LABEL_65;
    }

    if (v11 != 0x80000000 || (*(v6 + 8) & 0x80000000) == 0)
    {
      if ((v10 & 0x80u) == 0)
      {
        LOBYTE(v17) = v13 | 0x40;
      }

      else
      {
        LOBYTE(v17) = v13;
      }

      goto LABEL_24;
    }

    goto LABEL_45;
  }

  if (!*(v6 + 9) && (v9 & 0x30) == 0 && *v6 == 1)
  {
    if (v11)
    {
      *a1 = 1;
      v17 = v13 | (v10 >> 1) & 0x40;
      *(a1 + 9) = 0;
      goto LABEL_24;
    }

LABEL_45:
    v18 = 128;
    goto LABEL_66;
  }

  if (v11 + 0x80000000 > 3 || v11 == -2147483647)
  {
    if (!v11)
    {
      *(a1 + 8) = 256;
      *a1 = 1;
      goto LABEL_65;
    }

    if (v11 >= 0)
    {
      v16 = v11;
    }

    else
    {
      v16 = -v11;
    }

    *(v39 + 12) = *(a4 + 12);
    v39[0] = *a4;
    v19 = *a3 + v8 + *(a3 + 4);
    v15 = v19 + 2;
    HIDWORD(v39[0]) = 3;
    LODWORD(v39[0]) = v19 + 2;
    if (v19 > 999999997)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if ((v9 & 0x80) != 0)
    {
      goto LABEL_45;
    }

    if (sub_1952F23F0(v6, a4, &v40) || sub_1952F23F0(a3, a4, &v40))
    {
      goto LABEL_65;
    }

    uprv_decContextDefault(v39, 64);
    *(v39 + 4) = 0xFFF0BDC1000F423FLL;
    BYTE8(v39[1]) = 0;
    v14 = *v6;
    if (*v6 <= *a4)
    {
      v14 = *a4;
    }

    v15 = v14 + 10;
    LODWORD(v39[0]) = v14 + 10;
    v16 = v12;
  }

  if (v15 < 50)
  {
    v22 = 0;
    v20 = byte_19548BF08[v15] + 11;
    v21 = v42;
  }

  else
  {
    v20 = (v15 + 11);
    v21 = malloc_type_malloc(v20, 0x1000040CBA68D63uLL);
    v22 = v21;
    if (!v21)
    {
      v18 = v40 | 0x10;
      goto LABEL_66;
    }
  }

  v36 = v22;
  if (v12 + 0x80000000 <= 3 && v12 != -2147483647)
  {
    v24 = sub_1952F363C(v21, v6, v39, &v40);
    v26 = *(v24 + 9);
    v25 = (v24 + 9);
    if (v26 || *v21 != 1 || (*(v21 + 8) & 0x70) != 0)
    {
      v27 = sub_1952F2D24(v21, v21, a3, v39, &v40);
      sub_1952F24A4(v27, v21, v39, &v40);
    }

    else
    {
      *v25 = 1;
      if (v12 == 0x80000000)
      {
        v32 = *a4;
        v28 = 0;
        *v21 = sub_1952F527C(v25, 1, *a4 - 1);
        *(v21 + 1) = 1 - v32;
        LODWORD(v40) = v40 | 0x820;
        goto LABEL_60;
      }
    }

    v28 = 0;
LABEL_60:
    *(a1 + 8) = *(v21 + 8);
    v29 = *v21;
    *(a1 + 4) = *(v21 + 1);
    sub_1952F03A4(a1, a4, v21 + 9, v29, &v40 + 1, &v40);
    sub_1952F0618(a1, a4, &v40 + 1, &v40);
    goto LABEL_61;
  }

  *(v21 + 4) = 256;
  *v21 = 1;
  if (*(a3 + 8) < 0)
  {
    uprv_decNumberCopy(&v37, v21);
    sub_1952F17CC(v21, &v37, v6, v39, 128, &v40);
    if (v15 < 50)
    {
      v28 = 0;
      v6 = v41;
    }

    else
    {
      v28 = malloc_type_malloc(v20, 0x1000040CBA68D63uLL);
      v6 = v28;
      if (!v28)
      {
        LODWORD(v40) = v40 | 0x10;
        goto LABEL_61;
      }
    }

    uprv_decNumberCopy(v6, v21);
    uprv_decNumberCopy(v21, &v37);
  }

  else
  {
    v28 = 0;
  }

  v33 = 0;
  for (i = 30; ; --i)
  {
    v35 = v40 & 0x2200;
    if ((v40 & 0x2200) != 0 && ((v40 & 0x200) != 0 || !*(v21 + 9) && *v21 == 1 && (*(v21 + 8) & 0x70) == 0))
    {
      break;
    }

    v16 *= 2;
    if (v16 < 0)
    {
      sub_1952F2D24(v21, v21, v6, v39, &v40);
      if (!i)
      {
        v35 = v40 & 0x2200;
LABEL_92:
        if (!v35)
        {
          goto LABEL_60;
        }

        break;
      }

      v33 = 1;
LABEL_89:
      sub_1952F2D24(v21, v21, v21, v39, &v40);
      continue;
    }

    if (!i)
    {
      goto LABEL_92;
    }

    if (v33)
    {
      goto LABEL_89;
    }
  }

  *(v21 + 8) = *(v21 + 8) & 0x7F | v13;
  sub_1952F0618(v21, a4, &v40 + 1, &v40);
  uprv_decNumberCopy(a1, v21);
LABEL_61:
  if (v36)
  {
    free(v36);
  }

  if (v28)
  {
    free(v28);
  }

LABEL_65:
  v18 = v40;
  if (v40)
  {
LABEL_66:
    sub_1952F0784(a1, v18, a4);
  }

  v30 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_1952F527C(unsigned __int8 *a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return a2;
  }

  result = (a3 + a2);
  if (result > 1)
  {
    if (a2 <= 49)
    {
      LODWORD(a2) = byte_19548BF08[a2];
    }

    v5 = &a1[a2 - 1];
    if (a3 >= 50)
    {
      v6 = a3;
      v7 = a3;
    }

    else
    {
      v6 = byte_19548BF08[a3];
      v7 = byte_19548BF08[a3];
    }

    v8 = &v5[v6];
    v9 = a3 - v7;
    v10 = v9 + 1;
    if (v9)
    {
      v12 = result;
      if (result <= 0x31)
      {
        v12 = byte_19548BF08[result];
      }

      if (v5 >= a1)
      {
        v13 = 0;
        v14 = 1 - v10;
        v15 = &a1[v12 - 1];
        v16 = dword_19548BF3C[v14];
        v17 = dword_19548BEE0[v14];
        v18 = dword_19548BEE0[v10];
        do
        {
          v19 = *v5;
          v20 = ((v19 >> v14) * v16) >> 17;
          if (v8 <= v15)
          {
            *v8 = v20 + v13;
          }

          v13 = v18 * (v19 - v20 * v17);
          --v5;
          --v8;
        }

        while (v5 >= a1);
        goto LABEL_23;
      }
    }

    else
    {
      while (v5 >= a1)
      {
        v11 = *v5--;
        *v8-- = v11;
      }
    }

    while (1)
    {
      v13 = 0;
LABEL_23:
      if (v8 < a1)
      {
        break;
      }

      *v8-- = v13;
    }
  }

  else
  {
    *a1 *= dword_19548BEE0[a3];
  }

  return result;
}

uint64_t sub_1952F53C0(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = a1 + 9;
  if (*(a1 + 9))
  {
    v4 = 0;
  }

  else
  {
    v4 = v1 == 1;
  }

  if (v4 && (v2 & 0x70) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  if (v6 < 0)
  {
    v10 = 1 - v6;
    while (!*v3)
    {
      ++v3;
      if (--v10 < 2)
      {
        goto LABEL_15;
      }
    }

    return 0x80000000;
  }

  else
  {
    if (v6)
    {
      v7 = 0;
      v8 = a1[1];
    }

    else
    {
LABEL_15:
      v11 = *v3++;
      v7 = v11;
      v8 = 1;
    }

    v12 = v6 + v1;
    if (v12 > 10)
    {
      return v7 & 1 | 0x80000002;
    }

    if (v8 >= v12)
    {
      v14 = v7;
    }

    else
    {
      v13 = &dword_19548BEE0[v8];
      v14 = v7;
      do
      {
        v16 = *v3++;
        v15 = v16;
        v17 = *v13++;
        v14 += v17 * v15;
        ++v8;
      }

      while (v12 > v8);
    }

    if (v12 != 10 || ((v18 = v14 / dword_19548BEE0[v8 - 1], v19 = *(v3 - 1), v2 < 0) ? (v20 = v14 <= 1999999997) : (v20 = 1), v20 ? (v21 = 0) : (v21 = 1), v18 == v19 && (v21 & 1) == 0 && (v14 > 999999999 ? (v22 = v2 <= -1) : (v22 = 1), v22)))
    {
      if (v2 >= 0)
      {
        return v14;
      }

      else
      {
        return -v14;
      }
    }

    else
    {
      return v7 & 1 | 0x80000002;
    }
  }
}

unsigned int *uprv_decNumberQuantize(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  sub_1952F5538(a1, a2, a3, a4, 1, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

unsigned int *sub_1952F5538(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int *a6)
{
  v10 = *a4;
  v28 = 0;
  v11 = *(a2 + 8);
  v12 = *(a3 + 8);
  if (((v12 | v11) & 0x70) == 0)
  {
    v13 = *(a4 + 8) - v10 + 1;
    if (a5)
    {
      v14 = *(a3 + 4);
    }

    else
    {
      v14 = sub_1952F53C0(a3);
    }

    v16 = v14 + 0x80000000 <= 3 && v14 != -2147483647 || v14 < v13;
    if (!v16 && v14 <= *(a4 + 4))
    {
      v20 = *a2;
      if (!*(a2 + 9) && (v11 & 0x70) == 0 && v20 == 1)
      {
        uprv_decNumberCopy(a1, a2);
        goto LABEL_36;
      }

      v21 = *(a2 + 4);
      v22 = v14 - v21;
      if ((v20 - (v14 - v21)) <= v10)
      {
        if (v22 >= 1)
        {
          *v27 = *a4;
          *&v27[12] = *(a4 + 12);
          *v27 = v20 - (v14 - v21);
          *(a1 + 8) = v11;
          a1[1] = v21;
          sub_1952F03A4(a1, v27, (a2 + 9), v20, &v28, a6);
          sub_1952F71EC(a1, v27, v28, a6);
          v28 = 0;
          v23 = a1[1];
          if (v23 > v14)
          {
            v24 = *a1;
            if (v24 == v10)
            {
              v17 = *a6 & 0xFFFFF75F;
              goto LABEL_18;
            }

            v25 = sub_1952F527C(a1 + 9, v24, 1);
            v23 = a1[1] - 1;
            *a1 = v25;
            a1[1] = v23;
          }

          v14 = v23;
          goto LABEL_37;
        }

        uprv_decNumberCopy(a1, a2);
        if ((v22 & 0x80000000) == 0)
        {
          v14 = a1[1];
          goto LABEL_37;
        }

        v26 = sub_1952F527C(a1 + 9, *a1, -v22);
        v14 = a1[1] + v22;
        *a1 = v26;
LABEL_36:
        a1[1] = v14;
LABEL_37:
        if (v14 <= (*(a4 + 4) - *a1 + 1))
        {
          sub_1952F0618(a1, a4, &v28, a6);
          v18 = *a6 & 0xFFFFDFFF;
          goto LABEL_19;
        }
      }
    }

LABEL_17:
    v17 = *a6;
LABEL_18:
    v18 = v17 | 0x80;
LABEL_19:
    *a6 = v18;
    return a1;
  }

  if (((v12 | v11) & 0x30) == 0)
  {
    if (((v12 ^ v11) & 0x40) == 0)
    {
      uprv_decNumberCopy(a1, a2);
      return a1;
    }

    goto LABEL_17;
  }

  sub_1952F3D64(a1, a2, a3, a4, a6);
  return a1;
}

uint64_t uprv_decNumberReduce(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = 0;
  if ((*(a2 + 8) & 0x30) != 0)
  {
    sub_1952F3D64(a1, a2, 0, a3, &v8 + 1);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    v5 = *a2;
    *(a1 + 4) = *(a2 + 4);
    sub_1952F03A4(a1, a3, (a2 + 9), v5, &v8, &v8 + 1);
    sub_1952F0618(a1, a3, &v8, &v8 + 1);
    sub_1952F583C(a1, a3, 1, 0, &v7);
  }

  if (HIDWORD(v8))
  {
    sub_1952F0784(a1, SHIDWORD(v8), a3);
  }

  return a1;
}

unsigned int *sub_1952F583C(unsigned int *a1, uint64_t a2, int a3, int a4, int *a5)
{
  *a5 = 0;
  if ((a1[2] & 0x70) == 0)
  {
    v6 = a1 + 9;
    if ((*(a1 + 9) & 1) == 0)
    {
      v8 = *a1;
      if (*(a1 + 9))
      {
        v9 = 0;
      }

      else
      {
        v9 = v8 == 1;
      }

      if (v9)
      {
        a1[1] = 0;
      }

      else if (v8 >= 2)
      {
        v11 = 0;
        v12 = v8 - 1;
        v13 = a1[1];
        while (!(-10 * ((26215 * (*(a1 + v11 + 9) >> 1)) >> 17) + *(a1 + v11 + 9)))
        {
          if (!a3 && v13 <= 0)
          {
            if (!v13)
            {
              break;
            }

            ++v13;
          }

          if (v12 == ++v11)
          {
            goto LABEL_19;
          }
        }

        if (!v11)
        {
          return a1;
        }

        v12 = v11;
LABEL_19:
        if (a4 || !*(a2 + 24))
        {
          goto LABEL_24;
        }

        v14 = *(a2 + 4) - (a1[1] + *a2);
        if (v12 >= v14 + 1)
        {
          v12 = v14 + 1;
        }

        if (v14 + 1 >= 1)
        {
LABEL_24:
          if (v8 <= 49)
          {
            v8 = byte_19548BF08[v8];
          }

          sub_1952F5D20(v6, v8, v12);
          v15 = a1[1] + v12;
          *a1 -= v12;
          a1[1] = v15;
          *a5 = v12;
        }
      }
    }
  }

  return a1;
}

unsigned int *uprv_decNumberRescale(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  sub_1952F5538(a1, a2, a3, a4, 0, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

uint64_t uprv_decNumberRemainder(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F17CC(a1, a2, a3, a4, 64, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

uint64_t uprv_decNumberRemainderNear(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F17CC(a1, a2, a3, a4, 16, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

uint64_t uprv_decNumberRotate(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v40 = 0;
  if ((*(a2 + 8) & 0x30) != 0 || (*(a3 + 8) & 0x30) != 0)
  {
    sub_1952F3D64(a1, a2, a3, a4, &v40);
    v7 = v40;
    if (!v40)
    {
      return a1;
    }

    goto LABEL_10;
  }

  if ((*(a3 + 8) & 0x40) != 0 || *(a3 + 4) || (v8 = sub_1952F53C0(a3), v9 = v8, v8 + 0x80000000 <= 3) && v8 != -2147483647 || (v8 >= 0 ? (v11 = v8) : (v11 = -v8), v11 > *a4))
  {
    v7 = 128;
LABEL_10:
    sub_1952F0784(a1, v7, a4);
    return a1;
  }

  uprv_decNumberCopy(a1, a2);
  if (v9 < 0)
  {
    v9 += *a4;
  }

  if (v9)
  {
    v12 = *a4;
    if (v9 != *a4 && (*(a1 + 8) & 0x40) == 0)
    {
      v14 = (a1 + 9);
      v13 = *a1;
      if (*a1 <= 49)
      {
        v13 = byte_19548BF08[v13];
      }

      v15 = &v14[v13];
      v16 = *a4;
      if (v12 <= 49)
      {
        v16 = byte_19548BF08[v12];
      }

      v17 = v16;
      v18 = (a1 + v16 + 8);
      if (v15 <= v18)
      {
        v19 = a1 + v13;
        v20 = v19 + 10;
        if (v19 + 10 <= a1 + v16 + 9)
        {
          v20 = a1 + v16 + 9;
        }

        bzero(v15, v20 - v19 - 9);
        v12 = *a4;
      }

      *a1 = v12;
      v21 = v12;
      if (v12 <= 49)
      {
        v21 = byte_19548BF08[v12];
      }

      v22 = (v12 - v9);
      if (v12 != v9)
      {
        v23 = v12 - v21;
        v24 = v23 + 1;
        if (v23)
        {
          v25 = *v14 % dword_19548BEE0[-v23];
          sub_1952F5D20((a1 + 9), v22, -v23);
          *v18 += dword_19548BEE0[v24] * v25;
        }

        v26 = a1 + v22;
        if (v26 + 9 < v18)
        {
          v27 = v22 + a1 + 10;
          v28 = v18;
          do
          {
            v29 = *(v27 - 1);
            *(v27 - 1) = *v28;
            *v28-- = v29;
            v30 = v27++ >= v28;
          }

          while (!v30);
        }

        if (v22 >= 2)
        {
          v31 = (v26 + 8);
          v32 = a1 + 10;
          do
          {
            v33 = *(v32 - 1);
            *(v32 - 1) = *v31;
            *v31-- = v33;
            v30 = v32++ >= v31;
          }

          while (!v30);
        }

        if (v17 >= 2)
        {
          v34 = a1 + 10;
          v35 = v18;
          do
          {
            v36 = *(v34 - 1);
            *(v34 - 1) = *v35;
            *v35-- = v36;
            v30 = v34++ >= v35;
          }

          while (!v30);
        }
      }

      v37 = v18 - v14 + 1;
      v38 = &v14[v37];
      while (--v38 >= v14)
      {
        if (*v38 || v37 == 1)
        {
          break;
        }

        --v37;
      }

      *a1 = v37;
    }
  }

  return a1;
}

uint64_t sub_1952F5D20(_BYTE *a1, uint64_t a2, int a3)
{
  if (!a3)
  {
    return a2;
  }

  if (a3 == a2)
  {
    *a1 = 0;
    return 1;
  }

  if (a3 > 49)
  {
    LODWORD(v3) = a3;
  }

  else
  {
    v3 = byte_19548BF08[a3];
    v4 = a3 - (v3 - 1);
    if (v4 != 1)
    {
      v5 = byte_19548BF08[v3 - 1];
      v6 = dword_19548BF3C[v4];
      v7 = ((a1[v5] >> v4) * v6) >> 17;
      *a1 = v7;
      v8 = a2 - a3 - (1 - v4);
      LODWORD(v9) = a1;
      if (v8 >= 1)
      {
        v10 = dword_19548BEE0[v4];
        v11 = dword_19548BEE0[1 - v4];
        v12 = ~a3 + a2;
        v13 = v5 + 1;
        v9 = a1;
        do
        {
          v14 = v9[v13];
          v15 = ((v14 >> v4) * v6) >> 17;
          *v9 = v7 + (v14 - v15 * v10) * v11;
          v16 = __OFSUB__(v12--, 1);
          if (v12 < 0 != v16)
          {
            break;
          }

          *++v9 = v15;
          --v8;
          v7 = ((v14 >> v4) * v6) >> 17;
        }

        while (v8 > 0);
      }

      return (v9 - a1 + 1);
    }
  }

  LODWORD(v17) = a1;
  if (v3 < a2)
  {
    v17 = a1;
    v18 = &a1[v3];
    do
    {
      v19 = *v18++;
      *v17++ = v19;
    }

    while (v18 < &a1[a2]);
  }

  return (v17 - a1);
}

double uprv_decNumberSameQuantum(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a3 + 8);
  if (((v4 | v3) & 0x70) != 0)
  {
    v5 = v3 & 0x30;
    v6 = v4 & 0x30;
    v7 = (v4 >> 6) & 1;
    if ((*(a2 + 8) & 0x40) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v5)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = *(a2 + 4) == *(a3 + 4);
  }

  *(a1 + 8) = 0;
  *&result = 1;
  *a1 = 1;
  *(a1 + 9) = v8;
  return result;
}

uint64_t uprv_decNumberScaleB(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v13 = 0;
  if ((*(a2 + 8) & 0x30) != 0 || (*(a3 + 8) & 0x30) != 0)
  {
    sub_1952F3D64(a1, a2, a3, a4, &v13);
    goto LABEL_4;
  }

  if ((*(a3 + 8) & 0x40) == 0 && !*(a3 + 4))
  {
    v8 = sub_1952F53C0(a3);
    v9 = v8;
    if (v8 + 0x80000000 > 3 || v8 == -2147483647)
    {
      v11 = v8 >= 0 ? v8 : -v8;
      if (v11 <= 2 * (a4[1] + *a4))
      {
        uprv_decNumberCopy(a1, a2);
        if ((*(a1 + 8) & 0x40) == 0)
        {
          *(a1 + 4) += v9;
          v12 = 0;
          sub_1952F0618(a1, a4, &v12, &v13);
        }

LABEL_4:
        v7 = v13;
        if (!v13)
        {
          return a1;
        }

        goto LABEL_11;
      }
    }
  }

  v7 = 128;
LABEL_11:
  sub_1952F0784(a1, v7, a4);
  return a1;
}

unsigned int *uprv_decNumberShift(unsigned int *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v18 = 0;
  if ((*(a2 + 8) & 0x30) != 0 || (*(a3 + 8) & 0x30) != 0)
  {
    sub_1952F3D64(a1, a2, a3, a4, &v18);
    v7 = v18;
    if (!v18)
    {
      return a1;
    }

    goto LABEL_10;
  }

  if ((*(a3 + 8) & 0x40) != 0 || *(a3 + 4) || (v8 = sub_1952F53C0(a3), v9 = v8, v8 + 0x80000000 <= 3) && v8 != -2147483647 || (v8 >= 0 ? (v11 = v8) : (v11 = -v8), v11 > *a4))
  {
    v7 = 128;
LABEL_10:
    sub_1952F0784(a1, v7, a4);
    return a1;
  }

  uprv_decNumberCopy(a1, a2);
  if (v9 && (a1[2] & 0x40) == 0)
  {
    if (v9 < 1)
    {
      v16 = *a1;
      if (v16 > -v9)
      {
        if (v16 <= 0x31)
        {
          v16 = byte_19548BF08[v16];
        }

        sub_1952F5D20(a1 + 9, v16, -v9);
        v17 = *a1 + v9;
        goto LABEL_30;
      }
    }

    else
    {
      v12 = *a4;
      if (v9 != *a4)
      {
        v13 = *a1;
        v14 = __OFSUB__(v13 + v9, v12);
        v15 = v13 + v9 - v12;
        if (!((v15 < 0) ^ v14 | (v15 == 0)))
        {
          sub_1952F6134(a1, v15);
          v13 = *a1;
        }

        if (v13 > 1 || *(a1 + 9))
        {
          *a1 = sub_1952F527C(a1 + 9, v13, v9);
        }

        return a1;
      }
    }

    *(a1 + 9) = 0;
    v17 = 1;
LABEL_30:
    *a1 = v17;
  }

  return a1;
}

int *sub_1952F6134(int *result, int a2)
{
  v2 = result + 9;
  v3 = *result;
  if (v3 <= a2)
  {
    *v2 = 0;
    v7 = 1;
  }

  else
  {
    v4 = v3 - a2;
    if (v4 >= 50)
    {
      v5 = v4;
      v6 = v4;
    }

    else
    {
      v5 = byte_19548BF08[v4];
      v6 = byte_19548BF08[v4];
    }

    v8 = &v2[v5 - 1];
    v9 = v4 - v6 + 1;
    if (v9 != 1)
    {
      *v8 = *v8 % dword_19548BEE0[v9];
    }

    v7 = v8 - v2 + 1;
    v10 = &v2[v7];
    while (--v10 >= v2)
    {
      if (*v10 || v7 == 1)
      {
        break;
      }

      --v7;
    }
  }

  *result = v7;
  return result;
}

uint64_t uprv_decNumberSquareRoot(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  v75 = 0uLL;
  v77 = 0;
  v76 = 0;
  v73 = 0;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  memset(v83, 0, 48);
  memset(v82, 0, 60);
  memset(v81, 0, 60);
  v78 = 0;
  v79 = 0;
  v80 = 0;
  if ((*(a2 + 8) & 0x70) != 0)
  {
    if ((*(a2 + 8) & 0x40) == 0)
    {
      sub_1952F3D64(a1, a2, 0, a3, &v71);
      goto LABEL_70;
    }

    if ((*(a2 + 8) & 0x80) == 0)
    {
      uprv_decNumberCopy(a1, a2);
      goto LABEL_70;
    }

    goto LABEL_21;
  }

  v6 = *(a2 + 4) >> 1;
  if (!*(a2 + 9) && *a2 == 1)
  {
    v7 = uprv_decNumberCopy(a1, a2);
    *(a1 + 4) = v6;
    sub_1952F0618(v7, a3, &v71 + 1, &v71);
    goto LABEL_70;
  }

  if ((*(a2 + 8) & 0x80) != 0)
  {
LABEL_21:
    v14 = 128;
    goto LABEL_71;
  }

  v8 = *a2;
  if (*a3 + 1 > *a2)
  {
    v9 = *a3 + 1;
  }

  else
  {
    v9 = *a2;
  }

  if (v9 <= 7)
  {
    v10 = 7;
  }

  else
  {
    v10 = v9;
  }

  if (v8 <= 49)
  {
    v8 = byte_19548BF08[v8];
  }

  v11 = (v8 + 11);
  if (v11 <= 48)
  {
    v12 = 0;
    v13 = v83;
  }

  else
  {
    v12 = malloc_type_malloc(v11, 0x1000040CBA68D63uLL);
    v13 = v12;
    if (!v12)
    {
      v14 = 16;
LABEL_71:
      sub_1952F0784(a1, v14, a3);
      goto LABEL_72;
    }
  }

  v66 = v10;
  v15 = v10 + 2;
  v16 = v15;
  if (v9 < 48)
  {
    v16 = byte_19548BF08[v15];
  }

  memset(v74, 0, 28);
  v68 = 0;
  v69 = 0;
  v17 = (v16 + 11);
  if (v17 < 61)
  {
    v63 = v6;
    v20 = 0;
    v64 = 0;
    v24 = v81;
    v23 = v82;
  }

  else
  {
    v18 = malloc_type_malloc((v16 + 11), 0x1000040CBA68D63uLL);
    v19 = v17;
    v20 = v18;
    v21 = malloc_type_malloc(v19, 0x1000040CBA68D63uLL);
    v22 = v21;
    if (!v20 || !v21)
    {
      LODWORD(v71) = 16;
      goto LABEL_64;
    }

    v63 = v6;
    v23 = v20;
    v64 = v21;
    v24 = v21;
  }

  uprv_decNumberCopy(v13, a2);
  v25 = *v13 + v13[1];
  v13[1] = -*v13;
  uprv_decContextDefault(&v75, 64);
  *(&v75 + 4) = 0xC46536013B9AC9FFLL;
  LODWORD(v75) = v66;
  LOBYTE(v79) = 0;
  LODWORD(v78) = 3;
  *(v23 + 8) = 0;
  *v23 = 3;
  if (v25)
  {
    ++v25;
    v26 = 2;
    v27 = 5;
    --v13[1];
    v28 = 8;
    v29 = 1;
    v31 = -2;
    v30 = -4;
  }

  else
  {
    v26 = 8;
    v27 = 1;
    v28 = 2;
    v29 = 5;
    v30 = -3;
    v31 = -3;
  }

  HIDWORD(v78) = v30;
  v23[1] = v31;
  BYTE1(v79) = 9;
  BYTE2(v79) = v29;
  BYTE3(v79) = v28;
  *(v23 + 9) = 9;
  v65 = v23 + 9;
  *(v23 + 10) = v27;
  *(v23 + 11) = v26;
  v32 = sub_1952F2D24(v23, v23, v13, &v75, &v70);
  sub_1952F0830(v32, v23, &v78, &v75, 0, &v70);
  LOWORD(v73) = 0;
  v72 = 1;
  LOWORD(v79) = 1280;
  v78 = 0xFFFFFFFF00000001;
  v33 = 3;
  do
  {
    v34 = 2 * v33 - 2;
    if (v34 >= v15)
    {
      v34 = v15;
    }

    LODWORD(v75) = v34;
    v35 = sub_1952F17CC(v24, v13, v23, &v75, 128, &v70);
    sub_1952F0830(v35, v24, v23, &v75, 0, &v70);
    sub_1952F2D24(v23, v24, &v78, &v75, &v70);
    v33 = v75;
  }

  while (v75 < v15);
  v74[0] = *a3;
  *(v74 + 12) = *(a3 + 12);
  HIDWORD(v74[0]) = 3;
  v36 = v25 + (v25 >> 31);
  v37 = *v23;
  v38 = v23[1] + v25 / 2;
  v69 = 0;
  HIDWORD(v71) = 0;
  v23[1] = v38;
  sub_1952F03A4(v23, v74, v65, v37, &v71 + 1, &v69);
  sub_1952F0618(v23, v74, &v71 + 1, &v69);
  v39 = v69;
  if ((v69 & 0x200) == 0)
  {
    v61 = v20;
    v62 = v12;
    v40 = v36 >> 1;
    v41 = v69 & 0xFFFFF5DF;
    LODWORD(v71) = v69 & 0xFFFFF5DF;
    v42 = *v23;
    v23[1] -= v40;
    LODWORD(v75) = v75 - 1;
    HIDWORD(v78) = ~v42;
    v43 = 0x80;
    v44 = sub_1952F0830(v24, v23, &v78, &v75, 128, &v70);
    HIDWORD(v75) = 1;
    v45 = sub_1952F2D24(v44, v24, v24, &v75, &v70);
    sub_1952F1150(v45, v13, v24, &v75, 1, &v70);
    if ((v24[2] & 0x80000000) == 0)
    {
      v46 = sub_1952F0830(v24, v23, &v78, &v75, 0, &v70);
      HIDWORD(v75) = 5;
      v47 = sub_1952F2D24(v46, v24, v24, &v75, &v70);
      sub_1952F1150(v47, v24, v13, &v75, 1, &v70);
      if ((v24[2] & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      v43 = 0;
    }

    ++HIDWORD(v78);
    BYTE1(v79) = 1;
    v48 = sub_1952F0830(v23, v23, &v78, &v75, v43, &v70);
    *(v74 + 4) = vsub_s32(*(v74 + 4), vdup_n_s32(v40));
    sub_1952F0830(v48, &v72, v23, v74, 0, &v70);
LABEL_42:
    v23[1] += v40;
    v49 = uprv_decNumberCopy(v24, v23);
    sub_1952F583C(v49, a3, 1, 1, &v68);
    if (2 * *v24 - 1 <= v66)
    {
      v67 = 0;
      sub_1952F2D24(v24, v24, v24, &v75, &v67);
      v20 = v61;
      if ((v67 & 0x200) != 0)
      {
        v41 = v39 | 0x820;
        LODWORD(v71) = v39 | 0x820;
        v12 = v62;
      }

      else
      {
        sub_1952F1150(&v78, v24, a2, &v75, 1, &v67);
        v12 = v62;
        if (BYTE1(v79) || v78 != 1 || (v79 & 0x70) != 0)
        {
          v41 = v39 | 0x820;
        }

        else
        {
          v56 = v23[1];
          v57 = v63 - v56;
          if ((v63 - v56) >= 0)
          {
            v58 = *(a3 + 4) - (v56 + *a3) + 1;
            if (v57 > v58 && *(a3 + 24))
            {
              v41 |= 0x400u;
              LODWORD(v71) = v41;
              v57 = v58;
            }

            if (v68 < v57)
            {
              v41 |= 0x400u;
              LODWORD(v71) = v41;
              v57 = v68;
            }

            if (v57 >= 1)
            {
              v59 = *v23;
              if (v59 <= 49)
              {
                v59 = byte_19548BF08[v59];
              }

              sub_1952F5D20(v65, v59, v57);
              v60 = v23[1] + v57;
              *v23 -= v57;
              v23[1] = v60;
              v41 = v71;
            }

            goto LABEL_53;
          }

          v41 |= 0x800u;
        }

        LODWORD(v71) = v41;
      }
    }

    else
    {
      v41 = v39 | 0x820;
      LODWORD(v71) = v39 | 0x820;
      v20 = v61;
      v12 = v62;
    }

LABEL_53:
    v22 = v64;
    if ((v41 & 0x2000) != 0)
    {
      v50 = *a2 + *(a2 + 4);
      v51 = *(a3 + 8);
      v52 = v50 <= 2 * v51;
      v53 = v50 <= 2 * v51 ? v41 : v41 & 0xFFFFCFFF;
      if (!v52 || (v53 & 0x20) == 0)
      {
        if ((v53 & 0x20) == 0)
        {
          v53 &= 0xFFFFDFDF;
        }

        LODWORD(v71) = v53;
      }
    }

    uprv_decNumberCopy(a1, v23);
    goto LABEL_64;
  }

  LODWORD(v71) = v69;
  uprv_decNumberCopy(a1, v23);
  v22 = v64;
LABEL_64:
  if (v12)
  {
    free(v12);
  }

  if (v20)
  {
    free(v20);
  }

  if (v22)
  {
    free(v22);
  }

LABEL_70:
  v14 = v71;
  if (v71)
  {
    goto LABEL_71;
  }

LABEL_72:
  v54 = *MEMORY[0x1E69E9840];
  return a1;
}

int *uprv_decNumberSubtract(int *a1, int *a2, uint64_t a3, int *a4)
{
  v7 = 0;
  sub_1952F0830(a1, a2, a3, a4, 128, &v7);
  if (v7)
  {
    sub_1952F0784(a1, v7, a4);
  }

  return a1;
}

unsigned int *uprv_decNumberToIntegralExact(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v9 = 0;
  memset(v8, 0, 28);
  v7 = 0;
  if ((*(a2 + 8) & 0x70) != 0)
  {
    if ((*(a2 + 8) & 0x40) == 0)
    {
      sub_1952F3D64(a1, a2, 0, a3, &v7);
      v5 = v7;
      if (!v7)
      {
        return a1;
      }

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if ((*(a2 + 4) & 0x80000000) == 0)
  {
LABEL_6:
    uprv_decNumberCopy(a1, a2);
    return a1;
  }

  v8[0] = *a3;
  *(v8 + 12) = *(a3 + 12);
  LODWORD(v8[0]) = *a2;
  LODWORD(v8[1]) = 0;
  LOWORD(v10) = 0;
  v9 = 1;
  uprv_decNumberQuantize(a1, a2, &v9, v8);
  v5 = DWORD1(v8[1]);
  if (DWORD1(v8[1]))
  {
LABEL_8:
    sub_1952F0784(a1, v5, a3);
  }

  return a1;
}

unsigned int *uprv_decNumberToIntegralValue(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  *&v5[12] = *(a3 + 12);
  *v5 = *a3;
  *&v5[16] = 0;
  result = uprv_decNumberToIntegralExact(a1, a2, v5);
  *(a3 + 20) |= v5[20] & 0x80;
  return result;
}

uint64_t uprv_decNumberXor(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (*(a2 + 4) || *(a2 + 8) > 0xFu || *(a3 + 4) || *(a3 + 8) >= 0x10u)
  {
LABEL_25:
    *a1 = 1;
    *(a1 + 8) = 32;
    uprv_decContextSetStatus(a4, 128);
    return a1;
  }

  v7 = *a2;
  v5 = (a2 + 9);
  v6 = v7;
  if (v7 <= 49)
  {
    v6 = byte_19548BF08[v6];
  }

  v8 = a1 + 9;
  v9 = *a3;
  if (*a3 <= 49)
  {
    v9 = byte_19548BF08[v9];
  }

  v10 = *a4;
  if (v10 >= 50)
  {
LABEL_12:
    v11 = (a3 + 9);
    v12 = &v5[v6 - 1];
    v13 = a3 + 9 + v9 - 1;
    v14 = a1 + v10 + 8;
    v15 = (a1 + 9);
    while (1)
    {
      v16 = v5 <= v12 ? *v5 : 0;
      v17 = v11 <= v13 ? *v11 : 0;
      *v15 = 0;
      if (v17 | v16)
      {
        if ((v17 ^ v16))
        {
          *v15 = 1;
        }

        if (((v17 - 10 * ((429496730 * v17) >> 32)) | (v16 - 10 * ((429496730 * v16) >> 32))) >= 2)
        {
          goto LABEL_25;
        }
      }

      ++v5;
      ++v11;
      if (++v15 > v14)
      {
        goto LABEL_28;
      }
    }
  }

  if (v10)
  {
    v10 = byte_19548BF08[v10];
    goto LABEL_12;
  }

  LODWORD(v15) = a1 + 9;
LABEL_28:
  v19 = v15 - v8;
  v20 = (v8 + v15 - v8 - 1);
  if (v20 >= v8)
  {
    v21 = v15 - a1 - 10;
    do
    {
      if (*v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21 == 0;
      }

      if (v22)
      {
        break;
      }

      --v20;
      --v21;
    }

    while (v20 >= v8);
    v19 = v21 + 1;
  }

  *a1 = v19;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  return a1;
}