const char *icu::TimeZone::getIDForWindowsID(icu::TimeZone *this, const icu::UnicodeString *a2, const char *a3, UErrorCode *a4, UErrorCode *a5)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a3 + 4))
  {
    v6 = 2;
  }

  else
  {
    v6 = *(a3 + 4) & 0x1E;
  }

  *(a3 + 4) = v6;
  if (*a4 <= 0)
  {
    v10 = ures_openDirect(0, "windowsZones", a4);
    ures_getByKey(v10, "mapTimezones", v10, a4);
    if (*a4 >= 1)
    {
      goto LABEL_6;
    }

    v26 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *v27 = 0u;
    v28 = 0u;
    v13 = *(this + 4);
    v14 = v13;
    v15 = v13 >> 5;
    v16 = v14 >= 0 ? v15 : *(this + 3);
    v17 = icu::UnicodeString::extract(this, 0, v16, v27, 127);
    if (!v17)
    {
      goto LABEL_6;
    }

    if (v17 >= 128)
    {
      goto LABEL_6;
    }

    v27[v17] = 0;
    ures_getByKey(v10, v27, v10, &v26);
    if (v26 >= 1)
    {
      goto LABEL_6;
    }

    v25 = 0;
    if (a2 && (v18 = ures_getStringByKey(v10, a2, &v25, &v26), v26 <= 0))
    {
      v23 = v18;
      v24 = u_strchr(v18, 0x20u);
      if (v24)
      {
        v21 = (v24 - v23) >> 1;
        v22 = a3;
        v20 = v23;
      }

      else
      {
        v22 = a3;
        v20 = v23;
        v21 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      StringByKey = ures_getStringByKey(v10, "001", &v25, a4);
      if (*a4 > 0)
      {
LABEL_6:
        ures_close(v10);
        goto LABEL_7;
      }

      v20 = StringByKey;
      v21 = v25;
      v22 = a3;
    }

    sub_19537E4C8(v22, v20, v21);
    goto LABEL_6;
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t sub_1953DE1FC(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    return *(a1 + 136);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1953DE218(uint64_t a1, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v4 = *(a1 + 120);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 140);
  if (v5 >= *(a1 + 136))
  {
    return 0;
  }

  sub_1953DE998(a1, *(v4 + 4 * v5), a2);
  ++*(a1 + 140);
  return a1 + 8;
}

uint64_t sub_1953DE298(uint64_t a1, UErrorCode *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    icu::StackUResourceBundle::StackUResourceBundle(v7);
    v4 = sub_1953DC2D0(a1, v7, a2);
    if (*a2 <= 0)
    {
      operator new();
    }

    ures_close(v4);
    *a2;
    icu::StackUResourceBundle::~StackUResourceBundle(v7);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1953DE3D0(int a1, int *a2, int *a3)
{
  *a2 = 0;
  if (*a3 > 0)
  {
    return 0;
  }

  if (a1 == 2)
  {
    sub_1951D10A4(&unk_1EAECA200, sub_1953DE4D4, 2, a3);
    result = qword_1EAECA1E8;
    v5 = dword_1EAECA1E0;
  }

  else if (a1 == 1)
  {
    sub_1951D10A4(&unk_1EAECA1F8, sub_1953DE4D4, 1, a3);
    result = qword_1EAECA1D8;
    v5 = dword_1EAECA1D0;
  }

  else if (a1)
  {
    v5 = 0;
    result = 0;
    *a3 = 1;
  }

  else
  {
    sub_1951D10A4(&unk_1EAECA1F0, sub_1953DE4D4, 0, a3);
    result = qword_1EAECA1C8;
    v5 = dword_1EAECA1C0;
  }

  *a2 = v5;
  return result;
}

void sub_1953DE4D4(int a1, UErrorCode *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  sub_195400588(0x15u, sub_1953DB838);
  v4 = ures_openDirect(0, "zoneinfo64", a2);
  v5 = ures_getByKey(v4, "Names", v4, a2);
  v6 = v5;
  if (*a2 > 0)
  {
    goto LABEL_2;
  }

  Size = ures_getSize(v5);
  ptr = malloc_type_malloc(4 * Size, 0x100004052888210uLL);
  if (!ptr)
  {
    *a2 = U_MEMORY_ALLOCATION_ERROR;
    goto LABEL_2;
  }

  if (Size >= 1)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v40 = 0;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v36 = &unk_1F0935D00;
      LOWORD(v37) = 2;
      v30 = 0;
      StringByIndex = ures_getStringByIndex(v6, v9, &v30, a2);
      v29[2] = StringByIndex;
      if (*a2 <= 0)
      {
        v31 = StringByIndex;
        icu::UnicodeString::setTo(&v36, 1, &v31, v30);
        v29[1] = v31;
      }

      else
      {
        icu::UnicodeString::setToBogus(&v36);
      }

      v12 = *a2;
      if (v12 > 0)
      {
LABEL_41:
        icu::UnicodeString::~UnicodeString(v12, &v36);
        goto LABEL_42;
      }

      if ((v37 & 0x8000u) == 0)
      {
        v13 = v37 >> 5;
      }

      else
      {
        v13 = DWORD1(v37);
      }

      v14 = icu::UnicodeString::doCompare(&v36, 0, v13, L"Etc/Unknown", 0, 11);
      v29[0] = L"Etc/Unknown";
      v16 = v29;
      if (v14)
      {
        if ((a1 - 1) > 1)
        {
          goto LABEL_34;
        }

        v35 = 0;
        v34 = 0u;
        v33 = 0u;
        v32 = 0u;
        v31 = &unk_1F0935D00;
        LOWORD(v32) = 2;
        icu::ZoneMeta::getCanonicalCLDRID(&v36, &v31, a2, v15);
        v17 = *a2;
        if (v17 >= 1)
        {
          icu::UnicodeString::~UnicodeString(v17, &v31);
          goto LABEL_41;
        }

        if (v32)
        {
          v24 = v37;
          icu::UnicodeString::~UnicodeString(v32, &v31);
          if ((v24 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if ((v32 & 0x8000u) == 0)
          {
            v18 = v32 >> 5;
          }

          else
          {
            v18 = DWORD1(v32);
          }

          if ((v37 & 0x8000u) == 0)
          {
            v19 = v37 >> 5;
          }

          else
          {
            v19 = DWORD1(v37);
          }

          if ((v37 & 1) != 0 || v18 != v19)
          {
            icu::UnicodeString::~UnicodeString(v37, &v31);
            goto LABEL_35;
          }

          if ((v37 & 2) != 0)
          {
            v20 = &v37 + 2;
          }

          else
          {
            v20 = v38;
          }

          v21 = icu::UnicodeString::doEquals(&v31, v20, v18);
          icu::UnicodeString::~UnicodeString(v22, &v31);
          if (!v21)
          {
            goto LABEL_35;
          }
        }

        if (a1 != 2)
        {
          goto LABEL_34;
        }

        Region = icu::TimeZone::getRegion(&v36, a2, v23);
        v12 = *a2;
        if (v12 > 0)
        {
          goto LABEL_41;
        }

        if (u_strcmp(Region, "0"))
        {
LABEL_34:
          ptr[v10] = v9;
          v16 = ++v10;
        }
      }

LABEL_35:
      icu::UnicodeString::~UnicodeString(v16, &v36);
      if (Size == ++v9)
      {
        goto LABEL_42;
      }
    }
  }

  v10 = 0;
LABEL_42:
  if (*a2 <= 0)
  {
    v26 = malloc_type_realloc(ptr, 4 * v10, 0x100004052888210uLL);
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = ptr;
    }

    switch(a1)
    {
      case 2:
        qword_1EAECA1E8 = v27;
        dword_1EAECA1E0 = v10;
        break;
      case 1:
        qword_1EAECA1D8 = v27;
        dword_1EAECA1D0 = v10;
        break;
      case 0:
        qword_1EAECA1C8 = v27;
        dword_1EAECA1C0 = v10;
        break;
    }
  }

LABEL_2:
  ures_close(v6);
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1953DE8D8(uint64_t a1, uint64_t a2)
{
  v4 = icu::StringEnumeration::StringEnumeration(a1);
  *v4 = &unk_1F0942FE8;
  v4[16] = 0;
  v4[17] = 0;
  v4[15] = 0;
  if (*(a2 + 128))
  {
    v5 = malloc_type_malloc(4 * *(a2 + 136), 0x100004052888210uLL);
    *(a1 + 128) = v5;
    if (v5)
    {
      v6 = *(a2 + 136);
      *(a1 + 136) = v6;
      memcpy(v5, *(a2 + 128), 4 * v6);
      *(a1 + 140) = *(a2 + 140);
      *(a1 + 120) = *(a1 + 128);
    }

    else
    {
      *(a1 + 136) = 0;
      *(a1 + 120) = 0;
    }
  }

  else
  {
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = 0;
    *(a1 + 136) = *(a2 + 136);
  }

  return a1;
}

BOOL sub_1953DE998(uint64_t a1, signed int a2, UErrorCode *a3)
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14 = 0;
  v6 = ures_openDirect(0, "zoneinfo64", a3);
  v7 = ures_getByKey(v6, "Names", v6, a3);
  StringByIndex = ures_getStringByIndex(v7, a2, &v14, a3);
  if (*a3 < 1)
  {
    v13 = StringByIndex;
    icu::UnicodeString::UnicodeString(v15, 1, &v13);
    icu::UnicodeString::fastCopyFrom((a1 + 8), v15);
    icu::UnicodeString::~UnicodeString(v10, v15);
  }

  else
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      icu::UnicodeString::unBogus(a1 + 8);
    }

    else
    {
      if ((v9 & 0x8000) == 0)
      {
        if (!(v9 >> 5))
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }

      if (*(a1 + 20))
      {
LABEL_9:
        *(a1 + 16) &= 0x1Eu;
      }
    }
  }

LABEL_10:
  ures_close(v7);
  result = *a3 < U_ILLEGAL_ARGUMENT_ERROR;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

icu::Transliterator *sub_1953DEAE0(icu::Transliterator *a1)
{
  v6[8] = *MEMORY[0x1E69E9840];
  v5 = L"Any-Title";
  icu::UnicodeString::UnicodeString(v6, 1, &v5);
  sub_1952C1EA4(a1, v6, 0);
  icu::UnicodeString::~UnicodeString(v2, v6);
  *a1 = &unk_1F0943080;
  icu::Transliterator::setMaximumContextLength(a1, 2);
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1953DEBAC(icu::Transliterator *a1)
{
  icu::Transliterator::~Transliterator(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953DEC40(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3[2];
  v4 = a3[3];
  if (v5 >= v4)
  {
    goto LABEL_40;
  }

  v9 = *a3;
  if (v5 <= *a3)
  {
    v14 = 1;
  }

  else
  {
    v10 = (v5 - 1);
    while (1)
    {
      v11 = (*(*a2 + 80))(a2, v10);
      TypeOrIgnorable = ucase_getTypeOrIgnorable(v11);
      if (TypeOrIgnorable >= 1)
      {
        break;
      }

      v9 = *a3;
      if (TypeOrIgnorable)
      {
        v13 = v11 >= 0x10000 ? -2 : -1;
        v10 = (v13 + v10);
        if (v10 >= v9)
        {
          continue;
        }
      }

      v14 = 1;
      goto LABEL_13;
    }

    v14 = 0;
    v9 = *a3;
LABEL_13:
    v5 = a3[2];
    v4 = a3[3];
  }

  v31 = 0;
  v32 = 0;
  v30[0] = a2;
  v30[1] = v9;
  LODWORD(v31) = a3[1];
  v34 = 0u;
  v35 = 0u;
  v37 = 0;
  v36 = 0u;
  v33 = &unk_1F0935D00;
  v15 = 2;
  LOWORD(v34) = 2;
  v29 = 0;
  if (v5 >= v4)
  {
    LODWORD(v19) = v5;
    goto LABEL_39;
  }

  while (1)
  {
    HIDWORD(v31) = v5;
    v16 = (*(*a2 + 80))(a2, v5);
    v17 = v16;
    v18 = v16 < 0x10000 ? 1 : 2;
    v19 = (v18 + v5);
    LODWORD(v32) = v18 + v5;
    v20 = ucase_getTypeOrIgnorable(v16);
    if ((v20 & 0x80000000) == 0)
    {
      break;
    }

LABEL_35:
    v15 = a3[3];
    v5 = v19;
    if (v19 >= v15)
    {
      goto LABEL_39;
    }
  }

  v21 = v20;
  if (v14)
  {
    v22 = ucase_toFullTitle(v17, sub_1952C1D88, v30, &v29, 1);
  }

  else
  {
    v22 = ucase_toFullLower(v17, sub_1952C1D88, v30, &v29, 1);
  }

  v23 = v22;
  v14 = v21 == 0;
  if (!a4 || (v15 = BYTE5(v32), !BYTE5(v32)))
  {
    if ((v22 & 0x80000000) == 0)
    {
      if (v22 > 0x1F)
      {
        icu::UnicodeString::unBogus(&v33);
        if ((v34 & 0x8000u) == 0)
        {
          v24 = v34 >> 5;
        }

        else
        {
          v24 = DWORD1(v34);
        }

        icu::UnicodeString::replace(&v33, 0, v24, v23);
        if ((v34 & 0x8000) != 0)
        {
          v23 = DWORD1(v34);
        }

        else
        {
          v23 = v34 >> 5;
        }
      }

      else
      {
        v28 = v29;
        icu::UnicodeString::setTo(&v33, 0, &v28, v22);
      }

      (*(*a2 + 32))(a2, HIDWORD(v31), (v18 + v5), &v33);
      v25 = v23 - v18;
      if (v23 != v18)
      {
        v19 = v23 + v5;
        v26 = a3[1] + v25;
        a3[1] = v26;
        LODWORD(v31) = v26;
        a3[3] += v25;
      }
    }

    goto LABEL_35;
  }

  LODWORD(v19) = HIDWORD(v31);
LABEL_39:
  a3[2] = v19;
  icu::UnicodeString::~UnicodeString(v15, &v33);
LABEL_40:
  v27 = *MEMORY[0x1E69E9840];
}

uint64_t icu::TimeUnit::createInstance(unsigned int a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (a1 < 7)
  {
    operator new();
  }

  result = 0;
  *a2 = 1;
  return result;
}

icu::MeasureUnit *icu::TimeUnit::TimeUnit(icu::MeasureUnit *a1, unsigned int a2)
{
  v4 = icu::MeasureUnit::MeasureUnit(a1);
  *v4 = &unk_1F0943130;
  *(v4 + 20) = a2;
  if (a2 >= 7)
  {
    abort();
  }

  icu::MeasureUnit::initTime(a1, off_1E74100B8[a2]);
  return a1;
}

uint64_t icu::TimeUnit::TimeUnit(icu::TimeUnit *this, const icu::TimeUnit *a2)
{
  result = icu::MeasureUnit::MeasureUnit(this, a2);
  *result = &unk_1F0943130;
  *(result + 20) = *(a2 + 5);
  return result;
}

{
  result = icu::MeasureUnit::MeasureUnit(this, a2);
  *result = &unk_1F0943130;
  *(result + 20) = *(a2 + 5);
  return result;
}

uint64_t icu::TimeUnit::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::MeasureUnit::operator=(a1, a2);
    *(a1 + 20) = *(a2 + 20);
  }

  return a1;
}

void icu::TimeUnit::~TimeUnit(icu::TimeUnit *this)
{
  icu::MeasureUnit::~MeasureUnit(this);

  JUMPOUT(0x19A8B2600);
}

icu::Measure *icu::TimeUnitAmount::TimeUnitAmount(icu::Measure *a1, const icu::Formattable *a2, unsigned int a3, int *a4)
{
  Instance = icu::TimeUnit::createInstance(a3, a4);
  result = icu::Measure::Measure(a1, a2, Instance, a4);
  *a1 = &unk_1F0943180;
  return result;
}

{
  Instance = icu::TimeUnit::createInstance(a3, a4);
  result = icu::Measure::Measure(a1, a2, Instance, a4);
  *a1 = &unk_1F0943180;
  return result;
}

icu::Measure *icu::TimeUnitAmount::TimeUnitAmount(icu::Measure *a1, unsigned int a2, int *a3, double a4)
{
  v12 = *MEMORY[0x1E69E9840];
  icu::Formattable::Formattable(v11, a4);
  Instance = icu::TimeUnit::createInstance(a2, a3);
  icu::Measure::Measure(a1, v11, Instance, a3);
  icu::Formattable::~Formattable(v8, v11);
  *a1 = &unk_1F0943180;
  v9 = *MEMORY[0x1E69E9840];
  return a1;
}

void *icu::TimeUnitAmount::TimeUnitAmount(icu::TimeUnitAmount *this, const icu::TimeUnitAmount *a2)
{
  result = icu::Measure::Measure(this, a2);
  *result = &unk_1F0943180;
  return result;
}

{
  result = icu::Measure::Measure(this, a2);
  *result = &unk_1F0943180;
  return result;
}

void icu::TimeUnitAmount::~TimeUnitAmount(icu::TimeUnitAmount *this)
{
  icu::Measure::~Measure(this);

  JUMPOUT(0x19A8B2600);
}

icu::TimeUnitFormat *icu::TimeUnitFormat::TimeUnitFormat(icu::TimeUnitFormat *this, UErrorCode *a2)
{
  v4 = icu::MeasureFormat::MeasureFormat(this);
  *v4 = &unk_1F09431D0;
  Default = icu::Locale::getDefault(v4);
  icu::MeasureFormat::initMeasureFormat(this, Default, 0, 0, a2);
  *(this + 53) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 376) = 0u;
  if (*a2 <= 0)
  {
    *(this + 108) = 0;
    icu::TimeUnitFormat::setup(this, a2);
  }

  return this;
}

void icu::TimeUnitFormat::create(uint64_t a1, unsigned int a2, UErrorCode *a3)
{
  *(a1 + 424) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 376) = 0u;
  if (*a3 <= 0)
  {
    if (a2 < 2)
    {
      *(a1 + 432) = a2;
      icu::TimeUnitFormat::setup(a1, a3);
    }

    else
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }
}

icu::TimeUnitFormat *icu::TimeUnitFormat::TimeUnitFormat(icu::TimeUnitFormat *this, const char **a2, UErrorCode *a3)
{
  v6 = icu::MeasureFormat::MeasureFormat(this);
  *v6 = &unk_1F09431D0;
  icu::MeasureFormat::initMeasureFormat(v6, a2, 0, 0, a3);
  *(this + 53) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 376) = 0u;
  if (*a3 <= 0)
  {
    *(this + 108) = 0;
    icu::TimeUnitFormat::setup(this, a3);
  }

  return this;
}

uint64_t icu::TimeUnitFormat::TimeUnitFormat(uint64_t a1, const char **a2, unsigned int a3, UErrorCode *a4)
{
  v8 = icu::MeasureFormat::MeasureFormat(a1);
  *v8 = &unk_1F09431D0;
  icu::MeasureFormat::initMeasureFormat(v8, a2, a3 == 1, 0, a4);
  *(a1 + 424) = 0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 376) = 0u;
  if (*a4 <= 0)
  {
    if (a3 < 2)
    {
      *(a1 + 432) = a3;
      icu::TimeUnitFormat::setup(a1, a4);
    }

    else
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return a1;
}

icu::TimeUnitFormat *icu::TimeUnitFormat::TimeUnitFormat(icu::TimeUnitFormat *this, const icu::TimeUnitFormat *a2)
{
  inited = icu::MeasureFormat::MeasureFormat(this, a2);
  *inited = &unk_1F09431D0;
  *(inited + 108) = *(a2 + 108);
  for (i = 376; i != 432; i += 8)
  {
    v9 = U_ZERO_ERROR;
    inited = icu::TimeUnitFormat::initHash(inited, &v9);
    v6 = inited;
    *(this + i) = inited;
    if (v9 <= U_ZERO_ERROR)
    {
      icu::TimeUnitFormat::copyHash(inited, *(a2 + i), inited, &v9);
    }

    else
    {
      if (inited)
      {
        v7 = *inited;
        if (*v6)
        {
          uhash_close(v7);
        }

        inited = MEMORY[0x19A8B2600](v6, 0x10A0C40DD2A5DBALL);
      }

      *(this + i) = 0;
    }
  }

  return this;
}

uint64_t icu::TimeUnitFormat::initHash(icu::TimeUnitFormat *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::TimeUnitFormat::copyHash(uint64_t a1, uint64_t **a2, uint64_t *a3, int *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v11 = -1;
    if (a2)
    {
      v6 = uhash_nextElement(*a2, &v11);
      if (v6)
      {
        v8 = *(v6 + 8);
        v7 = *(v6 + 16);
        v9 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
        *v9 = (*(**v8 + 32))();
        v9[1] = (*(*v8[1] + 32))(v8[1]);
        icu::UnicodeString::UnicodeString(v12, v7);
        v10 = *a3;
        operator new();
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void icu::TimeUnitFormat::~TimeUnitFormat(icu::TimeUnitFormat *this)
{
  *this = &unk_1F09431D0;
  for (i = 376; i != 432; i += 8)
  {
    icu::TimeUnitFormat::deleteHash(this, *(this + i));
    *(this + i) = 0;
  }

  icu::MeasureFormat::~MeasureFormat(this);
}

{
  icu::TimeUnitFormat::~TimeUnitFormat(this);

  JUMPOUT(0x19A8B2600);
}

void icu::TimeUnitFormat::deleteHash(uint64_t a1, uint64_t **a2)
{
  v6 = -1;
  if (a2)
  {
    while (1)
    {
      v3 = uhash_nextElement(*a2, &v6);
      if (!v3)
      {
        break;
      }

      v4 = *(v3 + 8);
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      v5 = v4[1];
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      free(v4);
    }

    if (*a2)
    {
      uhash_close(*a2);
    }

    MEMORY[0x19A8B2600](a2, 0x10A0C40DD2A5DBALL);
  }
}

uint64_t icu::TimeUnitFormat::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    inited = icu::MeasureFormat::operator=(a1, a2);
    v5 = 0;
    v6 = a1 + 376;
    do
    {
      icu::TimeUnitFormat::deleteHash(inited, *(v6 + v5));
      *(v6 + v5) = 0;
      v5 += 8;
    }

    while (v5 != 56);
    for (i = 0; i != 56; i += 8)
    {
      v11 = U_ZERO_ERROR;
      inited = icu::TimeUnitFormat::initHash(inited, &v11);
      v8 = inited;
      *(v6 + i) = inited;
      if (v11 <= U_ZERO_ERROR)
      {
        icu::TimeUnitFormat::copyHash(inited, *(a2 + 376 + i), inited, &v11);
      }

      else
      {
        if (inited)
        {
          v9 = *inited;
          if (*v8)
          {
            uhash_close(v9);
          }

          inited = MEMORY[0x19A8B2600](v8, 0x10A0C40DD2A5DBALL);
        }

        *(v6 + i) = 0;
      }
    }

    *(a1 + 432) = *(a2 + 432);
  }

  return a1;
}

void *icu::TimeUnitFormat::parseObject(icu::TimeUnitFormat *this, const icu::UnicodeString *a2, icu::Formattable *a3, icu::ParsePosition *a4)
{
  v57 = *MEMORY[0x1E69E9840];
  memset(v56, 0, sizeof(v56));
  icu::Formattable::Formattable(v56, 0.0);
  v7 = 0;
  v8 = 0;
  v38 = 0;
  v9 = *(a4 + 2);
  v36 = this;
  v34 = this + 376;
  v39 = 0;
  do
  {
    v10 = *&v34[8 * v7];
    v42 = -1;
    for (i = v10; ; v10 = i)
    {
      v11 = uhash_nextElement(*v10, &v42);
      if (!v11)
      {
        break;
      }

      v12 = 0;
      v13 = *(v11 + 8);
      v40 = *(v11 + 16);
      v14 = 1;
      do
      {
        v15 = *(v13 + 8 * v12);
        v16 = v14;
        *(a4 + 2) = v9;
        *(a4 + 3) = -1;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        *v49 = 0u;
        icu::Formattable::Formattable(v49);
        (*(*v15 + 56))(v15, a2, v49, a4);
        v17 = *(a4 + 3);
        if (v17 == -1)
        {
          v17 = *(a4 + 2);
          if (v17 != v9)
          {
            memset(v48, 0, sizeof(v48));
            icu::Formattable::Formattable(v48, 0.0);
            if (icu::MessageFormat::getArgTypeCount(v15))
            {
              v18 = v49[1];
              if (icu::Formattable::getType(v49[1]) == 3)
              {
                v47 = 0;
                v46 = 0u;
                v45 = 0u;
                v44 = 0u;
                v43 = &unk_1F0935D00;
                LOWORD(v44) = 2;
                v41 = 0;
                v19 = v7;
                NumberFormatInternal = icu::MeasureFormat::getNumberFormatInternal(v36);
                icu::UnicodeString::operator=(&v43, v18[1]);
                v21 = *(*NumberFormatInternal + 168);
                v22 = NumberFormatInternal;
                v7 = v19;
                v21(v22, &v43, v48, &v41);
                v23 = v41;
                icu::UnicodeString::~UnicodeString(v24, &v43);
                if (v23 < 1)
                {
                  goto LABEL_13;
                }

LABEL_18:
                icu::Formattable::~Formattable(v25, v48);
                goto LABEL_19;
              }

              if (!icu::Formattable::isNumeric(v18))
              {
                goto LABEL_18;
              }

              icu::Formattable::operator=(v48, v18);
            }

LABEL_13:
            v25 = *(a4 + 2);
            v26 = v25 - v9;
            if (v25 - v9 > v8)
            {
              if (icu::MessageFormat::getArgTypeCount(v15))
              {
                icu::Formattable::operator=(v56, v48);
                v39 = 1;
              }

              else
              {
                v39 = 0;
              }

              v37 = *(a4 + 2);
              v25 = v40;
              v38 = v40;
              v8 = v26;
            }

            goto LABEL_18;
          }
        }

LABEL_19:
        icu::Formattable::~Formattable(v17, v49);
        v14 = 0;
        v12 = 1;
      }

      while ((v16 & 1) != 0);
    }

    ++v7;
  }

  while (v7 != 7);
  if (!v39 && v8)
  {
    if (*(v38 + 8) < 0)
    {
      v27 = *(v38 + 12);
    }

    else
    {
      v27 = *(v38 + 8) >> 5;
    }

    if (icu::UnicodeString::doCompare(v38, 0, v27, "z", 0, 4))
    {
      if (*(v38 + 8) < 0)
      {
        v28 = *(v38 + 12);
      }

      else
      {
        v28 = *(v38 + 8) >> 5;
      }

      if (icu::UnicodeString::doCompare(v38, 0, v28, L"one", 0, 3))
      {
        if (*(v38 + 8) < 0)
        {
          v30 = *(v38 + 12);
        }

        else
        {
          v30 = *(v38 + 8) >> 5;
        }

        if (icu::UnicodeString::doCompare(v38, 0, v30, L"two", 0, 3))
        {
          v29 = 3.0;
        }

        else
        {
          v29 = 2.0;
        }
      }

      else
      {
        v29 = 1.0;
      }
    }

    else
    {
      v29 = 0.0;
    }

    icu::Formattable::Formattable(v49, v29);
    icu::Formattable::operator=(v56, v49);
    icu::Formattable::~Formattable(v31, v49);
LABEL_43:
    LODWORD(v49[0]) = 0;
    operator new();
  }

  if (v8)
  {
    goto LABEL_43;
  }

  *(a4 + 2) = v9;
  *(a4 + 3) = 0;
  result = icu::Formattable::~Formattable(v39, v56);
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

void icu::TimeUnitFormat::setup(icu::TimeUnitFormat *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v4 = 0;
    v5 = this + 376;
    do
    {
      icu::TimeUnitFormat::deleteHash(this, *&v5[v4]);
      *&v5[v4] = 0;
      v4 += 8;
    }

    while (v4 != 56);
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  icu::UVector::UVector(v12, 0, uhash_compareUnicodeString, 6, a2);
  PluralRules = icu::MeasureFormat::getPluralRules(this);
  Keywords = icu::PluralRules::getKeywords(PluralRules, a2);
  v8 = Keywords;
  v9 = *a2;
  if (Keywords || v9 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    if (v9 <= U_ZERO_ERROR)
    {
      v10 = (*(*Keywords + 56))(Keywords, a2);
      if (v10)
      {
        v11 = v10;
        do
        {
          icu::UVector::addElement(v12, v11, a2);
          v11 = (*(*v8 + 56))(v8, a2);
        }

        while (v11);
      }

      icu::TimeUnitFormat::readFromCurrentLocale(this, 0, "units", v12, a2);
      icu::TimeUnitFormat::checkConsistency(this, 0, "units", a2);
      icu::TimeUnitFormat::readFromCurrentLocale(this, 1u, "unitsShort", v12, a2);
      icu::TimeUnitFormat::checkConsistency(this, 1u, "unitsShort", a2);
    }

    else if (!Keywords)
    {
      goto LABEL_15;
    }

    (*(*v8 + 8))(v8);
    goto LABEL_15;
  }

  *a2 = U_MEMORY_ALLOCATION_ERROR;
LABEL_15:
  icu::UVector::~UVector(v12);
}

void icu::TimeUnitFormat::initDataMembers(icu::TimeUnitFormat *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    v2 = 0;
    v3 = this + 376;
    do
    {
      icu::TimeUnitFormat::deleteHash(this, *&v3[v2]);
      *&v3[v2] = 0;
      v2 += 8;
    }

    while (v2 != 56);
  }
}

void icu::TimeUnitFormat::readFromCurrentLocale(icu::MeasureFormat *a1, unsigned int a2, const char *a3, uint64_t a4, int *a5)
{
  if (*a5 <= 0)
  {
    v16 = v5;
    v17 = v6;
    v15 = U_ZERO_ERROR;
    LocaleID = icu::MeasureFormat::getLocaleID(a1, &v15);
    v12 = ures_open("icudt76l-unit", LocaleID, &v15);
    v13 = ures_getByKey(v12, a3, 0, &v15);
    ures_getByKey(v13, "duration", v13, &v15);
    if (v15 <= U_ZERO_ERROR)
    {
      v14[2] = a4;
      v14[0] = &unk_1F0943238;
      v14[1] = a1;
      v14[3] = a2;
      ures_getAllItemsWithFallback(v13, "", v14, &v15);
      icu::ResourceSink::~ResourceSink(v14);
    }

    if (v13)
    {
      ures_close(v13);
    }

    if (v12)
    {
      ures_close(v12);
    }
  }
}

void icu::TimeUnitFormat::checkConsistency(icu::MeasureFormat *a1, unsigned int a2, const char *a3, UErrorCode *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    PluralRules = icu::MeasureFormat::getPluralRules(a1);
    Keywords = icu::PluralRules::getKeywords(PluralRules, a4);
    v10 = *a4;
    if (!Keywords && v10 <= U_ZERO_ERROR)
    {
      *a4 = U_MEMORY_ALLOCATION_ERROR;
      goto LABEL_8;
    }

    v19 = Keywords;
    if (v10 <= U_ZERO_ERROR)
    {
LABEL_9:
      v11 = v19;
      v13 = (*(*v19 + 56))(v19, a4);
      if (!v13)
      {
        goto LABEL_7;
      }

      v14 = v13;
      v15 = 0;
      while (1)
      {
        v16 = a1 + 8 * v15;
        inited = *(v16 + 47);
        if (!inited)
        {
          inited = icu::TimeUnitFormat::initHash(v13, a4);
          *(v16 + 47) = inited;
          if (*a4 > 0)
          {
            break;
          }
        }

        v13 = uhash_get(*inited, v14);
        if (!v13 || !*(v13 + a2))
        {
          LocaleID = icu::MeasureFormat::getLocaleID(a1, a4);
          v22 = 0;
          memset(&v20[1], 0, 48);
          v20[0] = &v20[1] + 5;
          LODWORD(v20[1]) = 40;
          v21 = 0;
          icu::CharString::appendInvariantChars(v20, v14, a4);
          icu::TimeUnitFormat::searchInLocaleChain(a1, a2, a3, LocaleID, v15, v14, v20[0], inited, a4);
          if (BYTE4(v20[1]))
          {
            free(v20[0]);
          }
        }

        if (++v15 == 7)
        {
          if (*a4 <= 0)
          {
            goto LABEL_9;
          }

          break;
        }
      }
    }

    v11 = v19;
    if (!v19)
    {
      goto LABEL_8;
    }

LABEL_7:
    (*(*v11 + 8))(v11);
  }

LABEL_8:
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1953E07B4(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void icu::TimeUnitFormat::searchInLocaleChain(uint64_t a1, unsigned int a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t *a8, UErrorCode *a9)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*a9 > 0)
  {
    goto LABEL_40;
  }

  v30 = U_ZERO_ERROR;
  v37 = 0u;
  memset(v36, 0, sizeof(v36));
  icu::StringPiece::StringPiece(&v31, a4);
  *&v36[0] = v36 | 0xD;
  DWORD2(v36[0]) = 40;
  WORD6(v36[0]) = 0;
  DWORD2(v37) = 0;
  icu::CharString::append(v36, v31, v32[0], &v30);
  do
  {
    ulocimp_getParent(*&v36[0], &v30, &v31);
    icu::CharString::operator=(v36, &v31);
    if (LOBYTE(v32[1]))
    {
      free(v31);
    }

    v13 = ures_open("icudt76l-unit", *&v36[0], &v30);
    v14 = ures_getByKey(v13, a3, 0, &v30);
    v15 = a5;
    TimeUnitName = icu::TimeUnitFormat::getTimeUnitName(a5, &v30);
    v17 = ures_getByKey(v14, TimeUnitName, 0, &v30);
    LODWORD(v29) = 0;
    ures_getStringByKeyWithFallback(v17, a7, &v29, &v30);
    if (v30 <= U_ZERO_ERROR)
    {
      operator new();
    }

    v30 = U_ZERO_ERROR;
    v18 = 2 * (DWORD2(v37) == 0);
    if (v17)
    {
      ures_close(v17);
    }

    if (v14)
    {
      ures_close(v14);
    }

    a5 = v15;
    if (v13)
    {
      ures_close(v13);
    }
  }

  while (!v18);
  if (v18 == 2)
  {
    if (!DWORD2(v37) && !strcmp(a3, "unitsShort"))
    {
      *v32 = 0u;
      v35 = 0;
      v34 = 0u;
      v33 = 0u;
      v31 = &v32[1] + 1;
      v32[0] = 40;
      icu::CharString::append(&v31, a4, -1, a9);
      icu::CharString::append(&v31, 95, a9);
      icu::TimeUnitFormat::searchInLocaleChain(a1, a2, "units", v31, v15, a6, a7, a8, a9);
      if (*a9 > 0 || (v23 = uhash_get(*a8, a6)) != 0 && *(v23 + 8 * a2))
      {
        if (LOBYTE(v32[1]))
        {
          free(v31);
        }

        goto LABEL_38;
      }

      if (LOBYTE(v32[1]))
      {
        free(v31);
      }
    }

    if (!strcmp(a7, "other"))
    {
      v29 = 0;
      if (v15 <= 6)
      {
        v19 = off_1E74100F0[v15];
        operator new();
      }

      if (*a9 <= 0)
      {
        v20 = uhash_get(*a8, a6);
        if (v20)
        {
          if (*a9 <= 0)
          {
            v22 = v29;
            v29 = 0;
            *(v20 + 8 * a2) = v22;
          }
        }

        else
        {
          v21 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
          if (v21)
          {
            *v21 = 0;
            v21[1] = 0;
            sub_1951D065C(a8);
          }

          *a9 = U_MEMORY_ALLOCATION_ERROR;
        }
      }

      if (v29)
      {
        (*(*v29 + 8))(v29);
      }
    }

    else
    {
      icu::TimeUnitFormat::searchInLocaleChain(a1, a2, a3, a4, v15, a6, "other", a8, a9);
    }
  }

LABEL_38:
  if (BYTE12(v36[0]))
  {
    free(*&v36[0]);
  }

LABEL_40:
  v24 = *MEMORY[0x1E69E9840];
}

char *icu::TimeUnitFormat::getTimeUnitName(unsigned int a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (a1 < 7)
  {
    return off_1E7410128[a1];
  }

  result = 0;
  *a2 = 1;
  return result;
}

void icu::TimeUnitFormat::setLocale(icu::TimeUnitFormat *this, const char **a2, UErrorCode *a3)
{
  if (icu::MeasureFormat::setMeasureFormatLocale(this, a2, a3))
  {

    icu::TimeUnitFormat::setup(this, a3);
  }
}

void icu::TimeUnitFormat::setNumberFormat(icu::TimeUnitFormat *this, const icu::NumberFormat *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v6 = (*(*a2 + 32))(a2);

    icu::MeasureFormat::adoptNumberFormat(this, v6, a3);
  }
}

uint64_t sub_1953E0E94(void *a1, void *a2)
{
  result = (*(**a1 + 24))(*a1, *a2);
  if (result)
  {
    return (*(*a1[1] + 24))(a1[1], a2[1]);
  }

  return result;
}

void *sub_1953E0F14(void *result, char *a2, icu::ResourceValue *a3, uint64_t a4, UErrorCode *a5)
{
  v31 = *MEMORY[0x1E69E9840];
  __s1 = a2;
  if (!*(result + 28))
  {
    v7 = result;
    *(result + 28) = 1;
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    result = (*(*a3 + 88))(v25, a3, a5);
    if (*a5 <= 0)
    {
      result = icu::ResourceTable::getKeyAndValue(v25, 0, &__s1, a3);
      if (result)
      {
        v9 = 0;
        do
        {
          v10 = __s1;
          if (__s1)
          {
            v11 = strcmp(__s1, "year");
            if (v11)
            {
              v11 = strcmp(v10, "month");
              if (v11)
              {
                v11 = strcmp(v10, "day");
                if (v11)
                {
                  v11 = strcmp(v10, "hour");
                  if (v11)
                  {
                    v11 = strcmp(v10, "minute");
                    if (v11)
                    {
                      v11 = strcmp(v10, "second");
                      if (v11)
                      {
                        v11 = strcmp(v10, "week");
                        if (v11)
                        {
                          goto LABEL_35;
                        }

                        v12 = 3;
                      }

                      else
                      {
                        v12 = 6;
                      }
                    }

                    else
                    {
                      v12 = 5;
                    }
                  }

                  else
                  {
                    v12 = 4;
                  }
                }

                else
                {
                  v12 = 2;
                }
              }

              else
              {
                v12 = 1;
              }
            }

            else
            {
              v12 = 0;
            }

            v24 = 0;
            v13 = 0uLL;
            if (!*(v7[1] + 8 * v12 + 376))
            {
              inited = icu::TimeUnitFormat::initHash(v11, a5);
              sub_1953E13F4(&v24, inited, a5);
              if (*a5 >= 1)
              {
                result = sub_1952E8F9C(&v24);
                break;
              }

              v13 = 0uLL;
            }

            v23 = 0;
            v22[0] = v13;
            v22[1] = v13;
            (*(*a3 + 88))(v22, a3, a5);
            if (*a5 <= 0)
            {
              if (icu::ResourceTable::getKeyAndValue(v22, 0, &__s1, a3))
              {
                v15 = 1;
                do
                {
                  *a5 = U_ZERO_ERROR;
                  memset(v30, 0, 64);
                  v29[0] = 0;
                  v28[0] = (*(*a3 + 32))(a3, v29, a5);
                  v16 = icu::UnicodeString::UnicodeString(v30, 1, v28);
                  v17 = *a5;
                  if (v17 < 1)
                  {
                    memset(v29, 0, sizeof(v29));
                    icu::UnicodeString::UnicodeString(v29, __s1, 0xFFFFFFFFLL, 0);
                    if ((icu::UVector::indexOf(v7[2], v29, 0) & 0x80000000) == 0)
                    {
                      operator new();
                    }

                    icu::UnicodeString::~UnicodeString(v18, v29);
                    v16 = v30;
                  }

                  icu::UnicodeString::~UnicodeString(v17, v16);
                }

                while (icu::ResourceTable::getKeyAndValue(v22, v15++, &__s1, a3));
              }

              v20 = v7[1] + 376;
              if (!*(v20 + 8 * v12))
              {
                v21 = v24;
                v24 = 0;
                *(v20 + 8 * v12) = v21;
              }
            }

            sub_1952E8F9C(&v24);
          }

LABEL_35:
          result = icu::ResourceTable::getKeyAndValue(v25, ++v9, &__s1, a3);
        }

        while (result);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void ****sub_1953E13F4(void ****result, void ***a2, int *a3)
{
  if (*a3 <= 0)
  {
    v5 = result;
    v6 = *result;
    if (*result)
    {
      if (*v6)
      {
        uhash_close(*v6);
      }

      result = MEMORY[0x19A8B2600](v6, 0x10A0C40DD2A5DBALL);
    }

    *v5 = a2;
    if (!a2)
    {
      *a3 = 7;
    }
  }

  else if (a2)
  {
    if (*a2)
    {
      uhash_close(*a2);
    }

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

icu::Transliterator *sub_1953E14C8(icu::Transliterator *a1)
{
  v6[8] = *MEMORY[0x1E69E9840];
  v5 = L"Any-Lower";
  icu::UnicodeString::UnicodeString(v6, 1, &v5);
  sub_1952C1EA4(a1, v6, ucase_toFullLower);
  icu::UnicodeString::~UnicodeString(v2, v6);
  *a1 = &unk_1F0943280;
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1953E1594(icu::Transliterator *a1)
{
  icu::Transliterator::~Transliterator(a1);

  JUMPOUT(0x19A8B2600);
}

icu::Transliterator *sub_1953E1640(icu::Transliterator *a1)
{
  v6[8] = *MEMORY[0x1E69E9840];
  v5 = L"Any-Upper";
  icu::UnicodeString::UnicodeString(v6, 1, &v5);
  sub_1952C1EA4(a1, v6, ucase_toFullUpper);
  icu::UnicodeString::~UnicodeString(v2, v6);
  *a1 = &unk_1F0943330;
  v3 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1953E170C(icu::Transliterator *a1)
{
  icu::Transliterator::~Transliterator(a1);

  JUMPOUT(0x19A8B2600);
}

icu::Transliterator *icu::Transliterator::Transliterator(icu::Transliterator *this, UChar **a2, icu::UnicodeFilter *a3)
{
  *this = &unk_1F09433E0;
  icu::UnicodeString::UnicodeString((this + 8), a2);
  *(this + 9) = a3;
  *(this + 20) = 0;
  v9 = 0;
  icu::UnicodeString::doAppend(this + 8, &v9, 0, 1);
  v5 = *(this + 8);
  if (*(this + 8) < 0)
  {
    v6 = *(this + 5);
  }

  else
  {
    v6 = v5 >> 5;
  }

  v7 = v6 - 1;
  if ((v5 & 1) != 0 && v6 == 1)
  {
    icu::UnicodeString::unBogus(this + 8);
  }

  else if (v6 > v7)
  {
    if (v7 > 1023)
    {
      *(this + 8) = v5 | 0xFFE0;
      *(this + 5) = v7;
    }

    else
    {
      *(this + 8) = *(this + 8) & 0x1F | (32 * v7);
    }
  }

  return this;
}

void icu::Transliterator::~Transliterator(icu::Transliterator *this)
{
  *this = &unk_1F09433E0;
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::UnicodeString::~UnicodeString((this + 8));

  icu::UObject::~UObject(this);
}

icu::Transliterator *icu::Transliterator::Transliterator(icu::Transliterator *this, UChar **a2)
{
  *this = &unk_1F09433E0;
  icu::UnicodeString::UnicodeString((this + 8), a2 + 1);
  *(this + 9) = 0;
  *(this + 20) = *(a2 + 20);
  v9 = 0;
  icu::UnicodeString::doAppend(this + 8, &v9, 0, 1);
  v4 = *(this + 8);
  if (*(this + 8) < 0)
  {
    v5 = *(this + 5);
  }

  else
  {
    v5 = v4 >> 5;
  }

  v6 = v5 - 1;
  if ((v4 & 1) != 0 && v5 == 1)
  {
    icu::UnicodeString::unBogus(this + 8);
  }

  else if (v5 > v6)
  {
    if (v6 > 1023)
    {
      *(this + 8) = v4 | 0xFFE0;
      *(this + 5) = v6;
    }

    else
    {
      *(this + 8) = *(this + 8) & 0x1F | (32 * v6);
    }
  }

  v7 = a2[9];
  if (v7)
  {
    *(this + 9) = (*(*v7 + 24))(v7);
  }

  return this;
}

uint64_t icu::Transliterator::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::UnicodeString::operator=((a1 + 8), (a2 + 8));
    icu::UnicodeString::getTerminatedBuffer((a1 + 8));
    *(a1 + 80) = *(a2 + 80);
    v4 = *(a2 + 72);
    if (v4)
    {
      v5 = (*(*v4 + 24))(v4);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(a1 + 72) = v5;
  }

  return a1;
}

uint64_t icu::Transliterator::adoptFilter(icu::Transliterator *this, icu::UnicodeFilter *a2)
{
  result = *(this + 9);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 9) = a2;
  return result;
}

uint64_t icu::Transliterator::transliterate(icu::Transliterator *this, icu::Replaceable *a2, int a3, int a4)
{
  result = 0xFFFFFFFFLL;
  if ((a3 & 0x80000000) == 0 && a4 >= a3)
  {
    if ((*(*a2 + 64))(a2) >= a4)
    {
      v9[0] = a3;
      v9[1] = a4;
      v9[2] = a3;
      v10 = a4;
      (*(*this + 96))(this, a2, v9, 0, 1);
      return v10;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t icu::Transliterator::transliterate(icu::Transliterator *this, icu::Replaceable *a2)
{
  v4 = (*(*a2 + 64))(a2);
  v5 = *(*this + 32);

  return v5(this, a2, 0, v4);
}

uint64_t icu::Transliterator::_transliterate(uint64_t result, uint64_t a2, int *a3, uint64_t a4, int *a5)
{
  if (*a5 <= 0)
  {
    v9 = result;
    result = (*(*a2 + 64))(a2);
    if (*a3 < 0 || (v10 = a3[2], v10 < *a3) || (v11 = a3[3], v11 < v10) || (v12 = a3[1], v12 < v11) || v12 > result)
    {
      *a5 = 1;
    }

    else
    {
      if (a4)
      {
        (*(*a2 + 32))(a2, v11, a3[3], a4);
        if (*(a4 + 8) < 0)
        {
          v13 = *(a4 + 12);
        }

        else
        {
          v13 = *(a4 + 8) >> 5;
        }

        LODWORD(v11) = a3[3] + v13;
        a3[3] = v11;
        if (*(a4 + 8) < 0)
        {
          v14 = *(a4 + 12);
        }

        else
        {
          v14 = *(a4 + 8) >> 5;
        }

        a3[1] += v14;
      }

      if (v11 < 1 || (result = (*(*a2 + 72))(a2), (result & 0xFC00) != 0xD800))
      {
        v15 = *(*v9 + 96);

        return v15(v9, a2, a3, 1, 1);
      }
    }
  }

  return result;
}

void *icu::Transliterator::transliterate(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, int *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, sizeof(v12));
  icu::UnicodeString::UnicodeString(v12, a4);
  icu::Transliterator::_transliterate(a1, a2, a3, v12, a5);
  result = icu::UnicodeString::~UnicodeString(v9, v12);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::Transliterator::finishTransliteration(uint64_t a1, uint64_t a2, int *a3)
{
  result = (*(*a2 + 64))(a2);
  if ((*a3 & 0x80000000) == 0)
  {
    v7 = a3[2];
    if (v7 >= *a3)
    {
      v8 = a3[3];
      if (v8 >= v7)
      {
        v9 = a3[1];
        if (v9 >= v8 && v9 <= result)
        {
          v11 = *(*a1 + 96);

          return v11(a1, a2, a3, 0, 1);
        }
      }
    }
  }

  return result;
}

void icu::Transliterator::filteredTransliterate(void *a1, uint64_t a2, _DWORD *a3, int a4, int a5)
{
  v5 = a5;
  v6 = a4;
  v44 = *MEMORY[0x1E69E9840];
  v10 = a1[9];
  if (a5 || v10)
  {
    v13 = v10 == 0;
    v14 = a3[2];
    v15 = a3[3];
    while (1)
    {
      if (!v13)
      {
        while (v14 < v15)
        {
          v16 = a1[9];
          v17 = (*(*a2 + 80))(a2, v14);
          v18 = (*(*v16 + 56))(v16, v17);
          v14 = a3[2];
          if (v18)
          {
            break;
          }

          if (v17 < 0x10000)
          {
            v19 = 1;
          }

          else
          {
            v19 = 2;
          }

          v14 = (v14 + v19);
          a3[2] = v14;
        }

        a3[3] = v14;
        if (v14 < v15)
        {
          do
          {
            v20 = a1[9];
            v21 = (*(*a2 + 80))(a2, v14);
            if (!(*(*v20 + 56))(v20, v21))
            {
              break;
            }

            v22 = v21 < 0x10000 ? 1 : 2;
            v14 = (a3[3] + v22);
            a3[3] = v14;
          }

          while (v14 < v15);
          v14 = a3[2];
        }
      }

      v23 = a3[3];
      if (v23 == v14)
      {
LABEL_47:
        a3[3] = v15;
        v34 = *MEMORY[0x1E69E9840];
        return;
      }

      if (v23 >= v15)
      {
        v24 = v6;
      }

      else
      {
        v24 = 0;
      }

      if (v5 && v24)
      {
        v38 = v23 - v14;
        v39 = v24;
        v40 = v15;
        v25 = (*(*a2 + 64))(a2);
        (*(*a2 + 40))(a2, v14, v23, v25);
        v26 = a3[2];
        if ((*(*a2 + 80))(a2, v26) < 0x10000)
        {
          v27 = 1;
        }

        else
        {
          v27 = 2;
        }

        v28 = v27 + v26;
        v37 = v25;
        if (v28 <= v23)
        {
          v41 = 0;
          v31 = 0;
          do
          {
            v31 += v27;
            a3[3] = v28;
            (*(*a1 + 80))(a1, a2, a3, 1);
            v32 = a3[3];
            v33 = v32 - v28;
            if (a3[2] == v32)
            {
              LODWORD(v25) = v32 - v28 + v25 + v31;
              LODWORD(v23) = v33 + v23;
              v41 += v33;
              v14 = a3[3];
              v28 = v14;
              v31 = 0;
            }

            else
            {
              v42 = &unk_1F0935D00;
              v43 = 2;
              (*(*a2 + 32))(a2, v14);
              icu::UnicodeString::~UnicodeString(&v42);
              (*(*a2 + 40))(a2, (v25 - v28 + v14), (v25 - v28 + v14 + v31), v14);
              a3[2] = v14;
              a3[3] = v28;
              a3[1] -= v33;
            }

            if ((*(*a2 + 80))(a2, v28) < 0x10000)
            {
              v27 = 1;
            }

            else
            {
              v27 = 2;
            }

            v28 = (v27 + v28);
          }

          while (v28 <= v23);
        }

        else
        {
          v41 = 0;
        }

        v30 = v41;
        v42 = &unk_1F0935D00;
        v43 = 2;
        (*(*a2 + 32))(a2, (v41 + v37), (v38 + v41 + v37), &v42);
        icu::UnicodeString::~UnicodeString(&v42);
        v29 = v14;
        v5 = a5;
        v6 = a4;
        v24 = v39;
        v15 = v40;
      }

      else
      {
        (*(*a1 + 80))(a1, a2, a3, v24);
        v14 = a3[2];
        v29 = a3[3];
        v30 = v29 - v23;
        if (v6 || v14 == v29)
        {
          goto LABEL_45;
        }
      }

      a3[2] = v29;
      v14 = v29;
LABEL_45:
      v15 += v30;
      if (a1[9])
      {
        v13 = 0;
        if (!v24)
        {
          continue;
        }
      }

      goto LABEL_47;
    }
  }

  v11 = *(*a1 + 80);
  v12 = *MEMORY[0x1E69E9840];

  v11();
}

const icu::Locale *icu::Transliterator::getDisplayName(icu::Transliterator *this, const icu::UnicodeString *a2, icu::UnicodeString *a3)
{
  Default = icu::Locale::getDefault(this);

  return icu::Transliterator::getDisplayName(this, Default, a2, v6);
}

const icu::Locale *icu::Transliterator::getDisplayName(icu::Transliterator *this, char **a2, const icu::Locale *a3, icu::UnicodeString *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v29 = U_ZERO_ERROR;
  memset(v28, 0, sizeof(v28));
  icu::ResourceBundle::ResourceBundle(v28, "icudt76l-translit", a2, &v29);
  v7 = *(a3 + 4);
  if (v7)
  {
    icu::UnicodeString::unBogus(a3);
  }

  else
  {
    if ((v7 & 0x8000u) == 0)
    {
      v8 = v7 >> 5;
    }

    else
    {
      v8 = *(a3 + 3);
    }

    if (v8)
    {
      *(a3 + 4) &= 0x1Eu;
    }
  }

  v60 = 0u;
  v63 = 0;
  v62 = 0u;
  v61 = 0u;
  LOWORD(v60) = 2;
  v55 = 0u;
  v58 = 0;
  v59 = &unk_1F0935D00;
  v57 = 0u;
  v56 = 0u;
  LOWORD(v55) = 2;
  v50 = 0u;
  v53 = 0;
  v54 = &unk_1F0935D00;
  v52 = 0u;
  v51 = 0u;
  v49 = &unk_1F0935D00;
  LOWORD(v50) = 2;
  v27 = 0;
  sub_1953E9BA8(this, &v59, &v54, &v49, &v27);
  LODWORD(v9) = v55 >> 5;
  if ((v55 & 0x8000u) == 0)
  {
    v9 = v9;
  }

  else
  {
    v9 = DWORD1(v55);
  }

  if (v9 >= 1)
  {
    v10 = v50 >> 5;
    if ((v50 & 0x8000u) != 0)
    {
      v10 = DWORD1(v50);
    }

    if (v10 >= 1)
    {
      v32[0] = 47;
      icu::UnicodeString::doReplace(&v49, 0, 0, v32, 0, 1);
    }

    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    icu::UnicodeString::UnicodeString(&v45, &v59);
    v32[0] = 45;
    v11 = icu::UnicodeString::doAppend(&v45, v32, 0, 1);
    if ((v55 & 0x8000u) == 0)
    {
      v12 = v55 >> 5;
    }

    else
    {
      v12 = DWORD1(v55);
    }

    v13 = icu::UnicodeString::doAppend(v11, &v54, 0, v12);
    if ((v50 & 0x8000u) == 0)
    {
      v14 = v50 >> 5;
    }

    else
    {
      v14 = DWORD1(v50);
    }

    icu::UnicodeString::doAppend(v13, &v49, 0, v14);
    if ((BYTE8(v45) & 0x11) != 0)
    {
      v15 = 0;
    }

    else if ((BYTE8(v45) & 2) != 0)
    {
      v15 = (&v45 | 0xA);
    }

    else
    {
      v15 = *(&v46 + 1);
    }

    if ((SWORD4(v45) & 0x8000u) == 0)
    {
      v16 = WORD4(v45) >> 5;
    }

    else
    {
      v16 = HIDWORD(v45);
    }

    if (uprv_isInvariantUString(v15, v16))
    {
      memset(v44, 0, sizeof(v44));
      v43 = 0u;
      v42 = 0u;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v36 = 0u;
      v35 = 0u;
      strcpy(v34, "%Translit%%");
      *&v34[3] = 0u;
      icu::UnicodeString::extract(&v45, 0, 189, &v34[2] + 3, 189);
      memset(v33, 0, 64);
      icu::ResourceBundle::getStringEx(v28, v34, &v29, v33);
      if (v29 <= U_ZERO_ERROR)
      {
        v24 = LOWORD(v33[1]) >> 5;
        if (SLOWORD(v33[1]) < 0)
        {
          v24 = HIDWORD(v33[1]);
        }

        if (v24)
        {
          a3 = icu::UnicodeString::operator=(a3, v33);
          icu::UnicodeString::~UnicodeString(v26, v33);
          goto LABEL_35;
        }
      }

      v29 = U_ZERO_ERROR;
      icu::ResourceBundle::getStringEx(v28, "TransliteratorNamePattern", &v29, v32);
      icu::UnicodeString::operator=(v33, v32);
      icu::UnicodeString::~UnicodeString(v17, v32);
      v18 = v29;
      if (v29 <= U_ZERO_ERROR)
      {
        LODWORD(v18) = LOWORD(v33[1]) >> 5;
        if (SLOWORD(v33[1]) >= 0)
        {
          v18 = v18;
        }

        else
        {
          v18 = HIDWORD(v33[1]);
        }

        if (v18)
        {
          bzero(v32, 0x330uLL);
          icu::MessageFormat::MessageFormat(v32, v33, a2, &v29);
          v25 = 0;
          memset(v31, 0, sizeof(v31));
          memset(v30, 0, sizeof(v30));
          do
          {
            icu::Formattable::Formattable(&v30[v25]);
            v25 += 112;
          }

          while (v25 != 336);
          icu::Formattable::setLong(v30, 2);
          icu::Formattable::setString(v31, &v59);
        }
      }

      icu::UnicodeString::~UnicodeString(v18, v33);
    }

    icu::UnicodeString::operator=(a3, &v45);
LABEL_35:
    icu::UnicodeString::~UnicodeString(v19, &v45);
  }

  icu::UnicodeString::~UnicodeString(v9, &v49);
  icu::UnicodeString::~UnicodeString(v20, &v54);
  icu::UnicodeString::~UnicodeString(v21, &v59);
  icu::ResourceBundle::~ResourceBundle(v28);
  v22 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t icu::Transliterator::orphanFilter(icu::Transliterator *this)
{
  v1 = *(this + 9);
  *(this + 9) = 0;
  return v1;
}

uint64_t icu::Transliterator::createInverse(icu::Transliterator *this, UErrorCode *a2)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  return icu::Transliterator::createInstance(this + 8, 1, v3, a2);
}

uint64_t icu::Transliterator::createInstance(uint64_t a1, uint64_t a2, int a3, UErrorCode *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v23 = 0u;
    v24 = 0u;
    v26 = 0;
    v25 = 0u;
    v22 = &unk_1F0935D00;
    LOWORD(v23) = 2;
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    icu::UVector::UVector(v19, a4);
    v4 = 0;
    if (*a4 > 0)
    {
LABEL_34:
      icu::UVector::~UVector(v19);
      icu::UnicodeString::~UnicodeString(v14, &v22);
      goto LABEL_35;
    }

    v18 = 0;
    if (!sub_1953E95C8(a1, a2, &v22, v19, &v18))
    {
      *a4 = U_INVALID_ID;
      if (v18)
      {
        icu::UnicodeSet::~UnicodeSet(v18);
        MEMORY[0x19A8B2600]();
      }

      v4 = 0;
      goto LABEL_34;
    }

    v17 = v18;
    sub_1953E995C(v19, a4);
    if (*a4 > 0)
    {
      goto LABEL_6;
    }

    if (SDWORD2(v19[0]) > 1 || ((v23 & 0x8000u) == 0 ? (v8 = v23 >> 5) : (v8 = DWORD1(v23)), (icu::UnicodeString::doIndexOf(&v22, 0x3Bu, 0, v8) & 0x80000000) == 0))
    {
      operator new();
    }

    v4 = icu::UVector::elementAt(v19, 0);
    if (v4)
    {
      icu::UnicodeString::operator=((v4 + 8), &v22);
      v21 = 0;
      icu::UnicodeString::doAppend(v4 + 8, &v21, 0, 1);
      v9 = *(v4 + 16);
      if (*(v4 + 16) < 0)
      {
        v10 = *(v4 + 20);
      }

      else
      {
        v10 = v9 >> 5;
      }

      v11 = v10 - 1;
      if ((v9 & 1) != 0 && v10 == 1)
      {
        icu::UnicodeString::unBogus(v4 + 8);
      }

      else if (v10 > v11)
      {
        if (v11 > 1023)
        {
          *(v4 + 16) = v9 | 0xFFE0;
          *(v4 + 20) = v11;
        }

        else
        {
          *(v4 + 16) = *(v4 + 16) & 0x1F | (32 * v11);
        }
      }

      v12 = v17;
      if (v17)
      {
        v17 = 0;
        v13 = *(v4 + 72);
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }

        *(v4 + 72) = v12;
      }

      goto LABEL_33;
    }

    if (*a4 > 0)
    {
LABEL_6:
      v4 = 0;
    }

    else
    {
      v4 = 0;
      *a4 = U_MEMORY_ALLOCATION_ERROR;
    }

LABEL_33:
    sub_1951D18E4(&v17);
    goto LABEL_34;
  }

  v4 = 0;
LABEL_35:
  v15 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t icu::Transliterator::createInstance(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  return icu::Transliterator::createInstance(a1, a2, v4, a3);
}

uint64_t icu::Transliterator::createBasicInstance(icu::Transliterator *this, UChar **a2, const icu::UnicodeString *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v20 = U_ZERO_ERROR;
  *v19 = 0;
  umtx_lock(&unk_1EAECA228);
  v6 = qword_1EAECA220;
  if (qword_1EAECA220)
  {
    goto LABEL_4;
  }

  if (icu::Transliterator::initializeRegistry(&v20, v5))
  {
    v6 = qword_1EAECA220;
LABEL_4:
    v7 = sub_1953E5AEC(v6, this, v19, &v20);
    goto LABEL_5;
  }

  v7 = 0;
LABEL_5:
  umtx_unlock(&unk_1EAECA228);
  if (v20 > U_ZERO_ERROR)
  {
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *v19;
    if (*v19)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  do
  {
    if (!*v19)
    {
      goto LABEL_29;
    }

    if (!sub_1953E518C(*v19))
    {
      v7 = sub_1953E4CC4(*v19, v21, &v20);
      if (*v19)
      {
        v15 = sub_1953E4CC0(*v19);
        MEMORY[0x19A8B2600](v15, 0x10F2C4080B5AC0ELL);
      }

      *v19 = 0;
LABEL_29:
      if (a2 && v7)
      {
        icu::UnicodeString::operator=((v7 + 8), a2);
        LOWORD(v23[0]) = 0;
        icu::UnicodeString::doAppend(v7 + 8, v23, 0, 1);
        v16 = *(v7 + 16);
        if (*(v7 + 16) < 0)
        {
          v17 = *(v7 + 20);
        }

        else
        {
          v17 = v16 >> 5;
        }

        v18 = v17 - 1;
        if ((v16 & 1) != 0 && v17 == 1)
        {
          icu::UnicodeString::unBogus(v7 + 8);
        }

        else if (v17 > v18)
        {
          if (v18 > 1023)
          {
            *(v7 + 16) = v16 | 0xFFE0;
            *(v7 + 20) = v18;
          }

          else
          {
            *(v7 + 16) = *(v7 + 16) & 0x1F | (32 * v18);
          }
        }
      }

      goto LABEL_11;
    }

    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_1953A05F4(v23, &v20);
    sub_1953E519C(*v19, v23, v21, &v20);
    if (*v19)
    {
      v12 = sub_1953E4CC0(*v19);
      MEMORY[0x19A8B2600](v12, 0x10F2C4080B5AC0ELL);
    }

    *v19 = 0;
    umtx_lock(&unk_1EAECA228);
    v14 = qword_1EAECA220;
    if (!qword_1EAECA220)
    {
      if (!icu::Transliterator::initializeRegistry(&v20, v13))
      {
        goto LABEL_20;
      }

      v14 = qword_1EAECA220;
    }

    v7 = sub_1953E60F4(v14, this, v23, v19, &v20);
LABEL_20:
    umtx_unlock(&unk_1EAECA228);
    sub_1953A0720(v23);
  }

  while (v20 < U_ILLEGAL_ARGUMENT_ERROR);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *v19;
  if (!*v19)
  {
    goto LABEL_10;
  }

LABEL_9:
  v9 = sub_1953E4CC0(v8);
  MEMORY[0x19A8B2600](v9, 0x10F2C4080B5AC0ELL);
LABEL_10:
  v7 = 0;
LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t icu::Transliterator::initializeRegistry(icu::Transliterator *this, UErrorCode *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (!qword_1EAECA220)
  {
    operator new();
  }

  v2 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t icu::Transliterator::createFromRules(UChar **a1, uint64_t a2, int a3, uint64_t a4, int *a5)
{
  v67 = *MEMORY[0x1E69E9840];
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *v40 = 0u;
  v41 = 0u;
  memset(v39, 0, sizeof(v39));
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  sub_1953A05F4(&v36, a5);
  sub_1953A0724(&v36, a2, a3, a4, a5);
  if (*a5 > 0)
  {
    goto LABEL_2;
  }

  if (DWORD2(v39[0]) != 1)
  {
    if (!DWORD2(v39[0]))
    {
      if (v37 == 1)
      {
        operator new();
      }

      if (!v37)
      {
        operator new();
      }
    }

    goto LABEL_10;
  }

  if (!v37)
  {
    if (v40[1])
    {
      v32 = 0u;
      v35 = 0;
      v34 = 0u;
      v33 = 0u;
      v31 = &unk_1F0935D00;
      LOWORD(v32) = 2;
      icu::UnicodeSet::toPattern(v40[1], &v31, 0);
      icu::UnicodeString::UnicodeString(v27, 59);
      icu::operator+(&v31, v27, v29);
      v18 = icu::UVector::elementAt(v39, 0);
      icu::operator+(v29, v18, v30);
      Instance = icu::Transliterator::createInstance(v30, 0, a4, a5);
      icu::UnicodeString::~UnicodeString(v19, v30);
      icu::UnicodeString::~UnicodeString(v20, v29);
      icu::UnicodeString::~UnicodeString(v21, v27);
      icu::UnicodeString::~UnicodeString(v22, &v31);
      if (Instance)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v25 = icu::UVector::elementAt(v39, 0);
      Instance = icu::Transliterator::createInstance(v25, 0, a4, a5);
      if (Instance)
      {
LABEL_28:
        icu::UnicodeString::operator=((Instance + 8), a1);
        LOWORD(v31) = 0;
        icu::UnicodeString::doAppend(Instance + 8, &v31, 0, 1);
        v23 = *(Instance + 16);
        if (*(Instance + 16) < 0)
        {
          v24 = *(Instance + 20);
        }

        else
        {
          v24 = v23 >> 5;
        }

        v26 = v24 - 1;
        if ((v23 & 1) != 0 && v24 == 1)
        {
          icu::UnicodeString::unBogus(Instance + 8);
        }

        else if (v24 > v26)
        {
          if (v26 > 1023)
          {
            *(Instance + 16) = v23 | 0xFFE0;
            *(Instance + 20) = v26;
          }

          else
          {
            *(Instance + 16) = *(Instance + 16) & 0x1F | (32 * v26);
          }
        }

        goto LABEL_3;
      }
    }

    if (*a5 > 0)
    {
      goto LABEL_2;
    }

    Instance = 0;
    *a5 = 7;
    goto LABEL_3;
  }

LABEL_10:
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  icu::UVector::UVector(v27, a5);
  if (v37 <= SDWORD2(v39[0]))
  {
    v13 = DWORD2(v39[0]);
  }

  else
  {
    v13 = v37;
  }

  if (v13 < 1)
  {
LABEL_25:
    operator new();
  }

  v14 = 0;
  while (1)
  {
    if (v14 < SDWORD2(v39[0]))
    {
      v15 = icu::UVector::elementAt(v39, v14);
      if (*(v15 + 8) >= 0x20u)
      {
        break;
      }
    }

LABEL_22:
    if (v37)
    {
      icu::UVector::orphanElementAt((&v36 + 8), 0);
      operator new();
    }

    if (v13 == ++v14)
    {
      goto LABEL_25;
    }
  }

  v16 = icu::Transliterator::createInstance(v15, 0, a4, a5);
  v17 = v16;
  if (*a5 < 1)
  {
    if (v16)
    {
      if (sub_19520B9EC(*(*v16 - 8), &unk_1F093EBD8))
      {
        (*(*v17 + 8))(v17);
      }

      else
      {
        icu::UVector::addElement(v27, v17, a5);
        if (*a5 >= 1)
        {
          goto LABEL_32;
        }
      }
    }

    goto LABEL_22;
  }

  if (v16)
  {
LABEL_32:
    (*(*v17 + 8))(v17);
  }

  icu::UVector::~UVector(v27);
LABEL_2:
  Instance = 0;
LABEL_3:
  sub_1953A0720(&v36);
  v11 = *MEMORY[0x1E69E9840];
  return Instance;
}

icu::UnicodeString *icu::Transliterator::toRules(icu::Transliterator *this, icu::UnicodeString *a2, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *(a2 + 4);
    if (v5)
    {
      icu::UnicodeString::unBogus(a2);
    }

    else
    {
      if ((v5 & 0x8000u) == 0)
      {
        v6 = v5 >> 5;
      }

      else
      {
        v6 = *(a2 + 3);
      }

      if (v6)
      {
        *(a2 + 4) &= 0x1Eu;
      }
    }

    memset(v19, 0, sizeof(v19));
    v8 = (*(*this + 104))(this);
    icu::UnicodeString::UnicodeString(v19, v8);
    LODWORD(v9) = WORD4(v19[0]) >> 5;
    if ((SWORD4(v19[0]) & 0x8000u) == 0)
    {
      v9 = v9;
    }

    else
    {
      v9 = HIDWORD(v19[0]);
    }

    if (v9 >= 1)
    {
      v10 = 0;
      do
      {
        v11 = icu::UnicodeString::char32At(v9, v19, v10);
        v12 = v11;
        if (!icu::ICU_Utility::escapeUnprintable(a2, v11))
        {
          icu::UnicodeString::append(a2, v12);
        }

        if (v12 < 0x10000)
        {
          v13 = 1;
        }

        else
        {
          v13 = 2;
        }

        v10 += v13;
        LODWORD(v9) = WORD4(v19[0]) >> 5;
        if ((SWORD4(v19[0]) & 0x8000u) == 0)
        {
          v9 = v9;
        }

        else
        {
          v9 = HIDWORD(v19[0]);
        }
      }

      while (v10 < v9);
    }

    icu::UnicodeString::~UnicodeString(v9, v19);
  }

  else
  {
    v7 = (*(*this + 104))(this);
    icu::UnicodeString::operator=(a2, v7);
  }

  v18 = L"::";
  icu::UnicodeString::UnicodeString(v19, 1, &v18);
  if ((SWORD4(v19[0]) & 0x8000u) == 0)
  {
    v14 = WORD4(v19[0]) >> 5;
  }

  else
  {
    v14 = HIDWORD(v19[0]);
  }

  icu::UnicodeString::doReplace(a2, 0, 0, v19, 0, v14);
  icu::UnicodeString::~UnicodeString(v15, v19);
  LOWORD(v19[0]) = 59;
  icu::UnicodeString::doAppend(a2, v19, 0, 1);
  v16 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t icu::Transliterator::countElements(char **this)
{
  if (!this)
  {
    return 0;
  }

  v1 = **this;
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 136);

  return v3();
}

icu::Transliterator *icu::Transliterator::getElement(char **this, uint64_t a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return this;
  }

  if (this)
  {
    v6 = **this;
    v8 = v7;
    if (v7)
    {
      v9 = (*(*v7 + 136))(v7);
      if ((a2 & 0x80000000) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = 1;
  if ((a2 & 0x80000000) != 0)
  {
LABEL_13:
    *a3 = U_INDEX_OUTOFBOUNDS_ERROR;
    return this;
  }

LABEL_8:
  if (v9 <= a2)
  {
    goto LABEL_13;
  }

  if (v9 == 1)
  {
    return this;
  }

  v10 = *(*v8 + 144);

  return v10(v8, a2);
}

icu::UVector **icu::Transliterator::getSourceSet(char ***this, icu::UVector **a2)
{
  ((*this)[15])(this);
  v4 = this[9];
  if (v4)
  {
    v5 = **v4;
    if (!v6)
    {
      operator new();
    }

    icu::UnicodeSet::retainAll(a2, v6);
  }

  return a2;
}

void icu::Transliterator::registerFactory()
{
  umtx_lock(&unk_1EAECA228);
  v1[0] = 0;
  if (qword_1EAECA220 || icu::Transliterator::initializeRegistry(v1, v0))
  {
    v1[1] = 0;
    sub_1953E660C();
  }

  umtx_unlock(&unk_1EAECA228);
}

void icu::Transliterator::registerInstance(icu::Transliterator *this, icu::Transliterator *a2)
{
  umtx_lock(&unk_1EAECA228);
  v3[0] = 0;
  if (qword_1EAECA220 || icu::Transliterator::initializeRegistry(v3, v2))
  {
    v3[1] = 0;
    sub_1953E6394();
  }

  umtx_unlock(&unk_1EAECA228);
}

void icu::Transliterator::registerAlias(icu::Transliterator *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3)
{
  umtx_lock(&unk_1EAECA228);
  v4[0] = 0;
  if (qword_1EAECA220 || icu::Transliterator::initializeRegistry(v4, v3))
  {
    v4[1] = 0;
    sub_1953E67D0();
  }

  umtx_unlock(&unk_1EAECA228);
}

void icu::Transliterator::unregister(icu::Transliterator *this, const icu::UnicodeString *a2)
{
  umtx_lock(&unk_1EAECA228);
  v5 = 0;
  v4 = qword_1EAECA220;
  if (qword_1EAECA220)
  {
    goto LABEL_4;
  }

  if (icu::Transliterator::initializeRegistry(&v5, v3))
  {
    v4 = qword_1EAECA220;
LABEL_4:
    sub_1953E68D4(v4, this);
  }

  umtx_unlock(&unk_1EAECA228);
}

uint64_t icu::Transliterator::countAvailableIDs(icu::Transliterator *this)
{
  umtx_lock(&unk_1EAECA228);
  v5 = 0;
  v2 = qword_1EAECA220;
  if (!qword_1EAECA220)
  {
    if (!icu::Transliterator::initializeRegistry(&v5, v1))
    {
      v3 = 0;
      goto LABEL_5;
    }

    v2 = qword_1EAECA220;
  }

  v3 = sub_1953E6B98(v2);
LABEL_5:
  umtx_unlock(&unk_1EAECA228);
  return v3;
}

uint64_t *icu::Transliterator::getAvailableID(icu::Transliterator *this)
{
  v1 = this;
  umtx_lock(&unk_1EAECA228);
  v6 = 0;
  v3 = qword_1EAECA220;
  if (!qword_1EAECA220)
  {
    if (!icu::Transliterator::initializeRegistry(&v6, v2))
    {
      v4 = 0;
      goto LABEL_5;
    }

    v3 = qword_1EAECA220;
  }

  v4 = sub_1953E6BA0(v3, v1);
LABEL_5:
  umtx_unlock(&unk_1EAECA228);
  return v4;
}

uint64_t icu::Transliterator::getAvailableIDs(icu::Transliterator *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    umtx_lock(&unk_1EAECA228);
    if (qword_1EAECA220 || icu::Transliterator::initializeRegistry(this, v3))
    {
      sub_1953E6C38();
    }

    umtx_unlock(&unk_1EAECA228);
    *this = 65568;
  }

  return 0;
}

uint64_t icu::Transliterator::countAvailableSources(icu::Transliterator *this)
{
  umtx_lock(&unk_1EAECA228);
  v5 = 0;
  v2 = qword_1EAECA220;
  if (!qword_1EAECA220)
  {
    if (!icu::Transliterator::initializeRegistry(&v5, v1))
    {
      v3 = 0;
      goto LABEL_5;
    }

    v2 = qword_1EAECA220;
  }

  v3 = sub_1953E6CB0(v2);
LABEL_5:
  umtx_unlock(&unk_1EAECA228);
  return v3;
}

UChar **icu::Transliterator::getAvailableSource(icu::Transliterator *this, UChar **a2, icu::UnicodeString *a3)
{
  v4 = this;
  umtx_lock(&unk_1EAECA228);
  v8 = 0;
  v6 = qword_1EAECA220;
  if (qword_1EAECA220)
  {
    goto LABEL_4;
  }

  if (icu::Transliterator::initializeRegistry(&v8, v5))
  {
    v6 = qword_1EAECA220;
LABEL_4:
    sub_1953E6CB8(v6, v4, a2);
  }

  umtx_unlock(&unk_1EAECA228);
  return a2;
}

uint64_t *icu::Transliterator::countAvailableTargets(icu::Transliterator *this, const icu::UnicodeString *a2)
{
  umtx_lock(&unk_1EAECA228);
  v7 = 0;
  v4 = qword_1EAECA220;
  if (!qword_1EAECA220)
  {
    if (!icu::Transliterator::initializeRegistry(&v7, v3))
    {
      v5 = 0;
      goto LABEL_5;
    }

    v4 = qword_1EAECA220;
  }

  v5 = sub_1953E6D60(v4, this);
LABEL_5:
  umtx_unlock(&unk_1EAECA228);
  return v5;
}

const icu::UnicodeString *icu::Transliterator::getAvailableTarget(icu::Transliterator *this, uint64_t a2, const icu::UnicodeString *a3, icu::UnicodeString *a4)
{
  v6 = this;
  umtx_lock(&unk_1EAECA228);
  v10 = 0;
  v8 = qword_1EAECA220;
  if (qword_1EAECA220)
  {
    goto LABEL_4;
  }

  if (icu::Transliterator::initializeRegistry(&v10, v7))
  {
    v8 = qword_1EAECA220;
LABEL_4:
    sub_1953E6D9C(v8, v6, a2, a3);
  }

  umtx_unlock(&unk_1EAECA228);
  return a3;
}

uint64_t icu::Transliterator::countAvailableVariants(icu::Transliterator *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3)
{
  umtx_lock(&unk_1EAECA228);
  v9 = 0;
  v6 = qword_1EAECA220;
  if (!qword_1EAECA220)
  {
    if (!icu::Transliterator::initializeRegistry(&v9, v5))
    {
      v7 = 0;
      goto LABEL_5;
    }

    v6 = qword_1EAECA220;
  }

  v7 = sub_1953E6E58(v6, this, a2);
LABEL_5:
  umtx_unlock(&unk_1EAECA228);
  return v7;
}

const icu::UnicodeString *icu::Transliterator::getAvailableVariant(icu::Transliterator *this, uint64_t a2, const icu::UnicodeString *a3, const icu::UnicodeString *a4, icu::UnicodeString *a5)
{
  v8 = this;
  umtx_lock(&unk_1EAECA228);
  v12 = 0;
  v10 = qword_1EAECA220;
  if (qword_1EAECA220)
  {
    goto LABEL_4;
  }

  if (icu::Transliterator::initializeRegistry(&v12, v9))
  {
    v10 = qword_1EAECA220;
LABEL_4:
    sub_1953E6EB4(v10, v8, a2, a3, a4);
  }

  umtx_unlock(&unk_1EAECA228);
  return a4;
}

uint64_t sub_1953E4C14()
{
  sub_1953EA430();
  if (qword_1EAECA220)
  {
    v0 = sub_1953E5AE8();
    MEMORY[0x19A8B2600](v0, 0x10A0C4097D8DAE3);
    qword_1EAECA220 = 0;
  }

  return 1;
}

void *sub_1953E4C60(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::UnicodeString::~UnicodeString((a1 + 9));
  icu::UnicodeString::~UnicodeString((a1 + 1));
  return a1;
}

uint64_t sub_1953E4CC4(uint64_t a1, int a2, UErrorCode *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    goto LABEL_2;
  }

  v9 = *(a1 + 156);
  if (v9)
  {
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        abort();
      }

      goto LABEL_2;
    }

    v10 = *(*(a1 + 136) + 8);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    icu::UnicodeString::UnicodeString(&v44, 0xFFFF);
    LOWORD(v39) = -1;
    icu::UnicodeString::doAppend(&v44, &v39, 0, 1);
    if ((SWORD4(v44) & 0x8000u) == 0)
    {
      v11 = WORD4(v44) >> 5;
    }

    else
    {
      v11 = HIDWORD(v44);
    }

    if (*(a1 + 80) < 0)
    {
      v12 = *(a1 + 84);
      if (BYTE8(v44))
      {
        goto LABEL_45;
      }
    }

    else
    {
      v12 = *(a1 + 80) >> 5;
      if (BYTE8(v44))
      {
LABEL_45:
        v38 = 0;
        memset(v37, 0, sizeof(v37));
        icu::UVector::UVector(v37, uprv_deleteUObject, 0, a3);
        v40 = 0u;
        v43 = 0;
        v42 = 0u;
        v41 = 0u;
        v39 = &unk_1F0935D00;
        LOWORD(v40) = 2;
        v21 = *(a1 + 80);
        if ((v21 & 0x8000) != 0)
        {
          v22 = *(a1 + 84);
        }

        else
        {
          v22 = v21 >> 5;
        }

        v23 = icu::UnicodeString::doIndexOf(a1 + 72, 0xFFFFu, 0, v22);
        if ((v23 & 0x80000000) == 0)
        {
          v24 = v23;
          do
          {
            if ((v40 & 0x8000u) == 0)
            {
              v25 = v40 >> 5;
            }

            else
            {
              v25 = DWORD1(v40);
            }

            icu::UnicodeString::doReplace(&v39, 0, v25, (a1 + 72), 0, v24);
            if (v24 == 2147483646)
            {
              if (*(a1 + 80))
              {
                v26 = 2;
              }

              else
              {
                v26 = *(a1 + 80) & 0x1E;
              }

              *(a1 + 80) = v26;
            }

            else
            {
              icu::UnicodeString::doReplace(a1 + 72, 0, (v24 + 1), 0, 0, 0);
            }

            if (v40 >= 0x20u)
            {
              Instance = icu::Transliterator::createInstance(&v39, 0, a2, a3);
              icu::UVector::adoptElement(v37, Instance, a3);
            }

            v28 = *(a1 + 136);
            if (*(v28 + 2))
            {
              v29 = icu::UVector::orphanElementAt(v28, 0);
              icu::UVector::adoptElement(v37, v29, a3);
            }

            if (*(a1 + 80) < 0)
            {
              v30 = *(a1 + 84);
            }

            else
            {
              v30 = *(a1 + 80) >> 5;
            }

            v24 = icu::UnicodeString::doIndexOf(a1 + 72, 0xFFFFu, 0, v30);
          }

          while ((v24 & 0x80000000) == 0);
        }

        if (*(a1 + 80) < 0x20u)
        {
          goto LABEL_71;
        }

        for (i = icu::Transliterator::createInstance(a1 + 72, 0, a2, a3); ; i = icu::UVector::orphanElementAt(v32, 0))
        {
          icu::UVector::adoptElement(v37, i, a3);
LABEL_71:
          v32 = *(a1 + 136);
          if (!*(v32 + 2))
          {
            break;
          }
        }

        icu::UVector::setDeleter(v37, 0);
        if (*a3 < 1)
        {
          operator new();
        }

        v33 = DWORD2(v37[0]);
        if (SDWORD2(v37[0]) >= 1)
        {
          v34 = 0;
          do
          {
            v35 = icu::UVector::elementAt(v37, v34);
            if (v35)
            {
              (*(*v35 + 8))(v35);
            }

            ++v34;
            v33 = DWORD2(v37[0]);
          }

          while (v34 < SDWORD2(v37[0]));
        }

        v3 = 0;
        icu::UnicodeString::~UnicodeString(v33, &v39);
        icu::UVector::~UVector(v37);
        icu::UnicodeString::~UnicodeString(v36, &v44);
        goto LABEL_3;
      }
    }

    if (v11 >= 1)
    {
      if ((BYTE8(v44) & 2) != 0)
      {
        v15 = &v44 | 0xA;
      }

      else
      {
        v15 = *(&v45 + 1);
      }

      v16 = a1 + 72;
      v17 = 0;
      while (1)
      {
        v18 = icu::UnicodeString::indexOf(v16, v15, 0, v11, v17, v12);
        if (v18 < 0)
        {
          break;
        }

        if (*(a1 + 80) < 0)
        {
          v19 = *(a1 + 84);
          v20 = BYTE8(v44);
          if ((SWORD4(v44) & 0x8000u) == 0)
          {
            v11 = WORD4(v44) >> 5;
          }

          else
          {
            v11 = HIDWORD(v44);
          }

          if (v19 <= v18)
          {
            v17 = *(a1 + 84);
          }

          else
          {
            v17 = v18 + 1;
          }

          if (BYTE8(v44))
          {
            goto LABEL_45;
          }
        }

        else
        {
          v19 = *(a1 + 80) >> 5;
          v20 = BYTE8(v44);
          if ((SWORD4(v44) & 0x8000u) == 0)
          {
            v11 = WORD4(v44) >> 5;
          }

          else
          {
            v11 = HIDWORD(v44);
          }

          if (v18 >= (*(a1 + 80) >> 5))
          {
            v17 = *(a1 + 80) >> 5;
          }

          else
          {
            v17 = v18 + 1;
          }

          if (BYTE8(v44))
          {
            goto LABEL_45;
          }
        }

        if (v11 < 1)
        {
          goto LABEL_45;
        }

        v12 = v19 - v17;
        if ((v20 & 2) != 0)
        {
          v15 = &v44 | 0xA;
        }

        else
        {
          v15 = *(&v45 + 1);
        }

        v16 = a1 + 72;
      }
    }

    goto LABEL_45;
  }

  v13 = icu::Transliterator::createInstance(a1 + 72, 0, a2, a3);
  if (*a3 > 0)
  {
LABEL_2:
    v3 = 0;
    goto LABEL_3;
  }

  v3 = v13;
  v14 = *(a1 + 144);
  if (v14)
  {
    icu::UnicodeSet::clone(v14);
  }

LABEL_3:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

double sub_1953E519C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 <= 0)
  {
    *&result = sub_1953A0724(a2, a1 + 72, *(a1 + 152), a3, a4).n128_u64[0];
  }

  return result;
}

uint64_t sub_1953E51C8(uint64_t a1, UChar **a2)
{
  v22 = *MEMORY[0x1E69E9840];
  icu::UnicodeString::UnicodeString((a1 + 8), a2);
  *(a1 + 72) = &unk_1F0935D00;
  *(a1 + 80) = 2;
  *(a1 + 136) = &unk_1F0935D00;
  *(a1 + 144) = 2;
  *(a1 + 200) = &unk_1F0935D00;
  *(a1 + 208) = 2;
  *(a1 + 272) = 0;
  v13 = U_ZERO_ERROR;
  v21 = 0u;
  memset(v20, 0, sizeof(v20));
  icu::Locale::Locale(v20, "", 0, 0, 0);
  icu::LocaleUtility::initLocaleFromName(a2, v20, v4);
  if (!BYTE8(v21))
  {
    operator new();
  }

  v13 = U_ZERO_ERROR;
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  value = -1;
  v14[0] = &v14[1] + 5;
  LODWORD(v14[1]) = 40;
  WORD2(v14[1]) = 0;
  LODWORD(v15) = 0;
  appended = icu::CharString::appendInvariantChars(v14, a2, &v13);
  Code = uscript_getCode(*appended, &value, 10, &v13);
  if (BYTE4(v14[1]))
  {
    free(v14[0]);
  }

  if (Code >= 1 && value != -1)
  {
    Name = uscript_getName(value);
    icu::UnicodeString::UnicodeString(v14, Name, 0xFFFFFFFFLL, 0);
    icu::UnicodeString::operator=((a1 + 200), v14);
    icu::UnicodeString::~UnicodeString(v9, v14);
  }

  if (!*(a1 + 272))
  {
    if (*(a1 + 208) < 0)
    {
      if (!*(a1 + 212))
      {
        goto LABEL_15;
      }
    }

    else if (!(*(a1 + 208) >> 5))
    {
      goto LABEL_15;
    }

    icu::UnicodeString::operator=((a1 + 8), (a1 + 200));
    goto LABEL_15;
  }

  memset(&v14[1], 0, 48);
  v15 = 0;
  v14[0] = &unk_1F0935D00;
  LOWORD(v14[1]) = 2;
  icu::LocaleUtility::initNameFromLocale(v20, v14, v6);
  v10 = LOWORD(v14[1]);
  if ((v14[1] & 1) == 0)
  {
    icu::UnicodeString::operator=((a1 + 8), v14);
  }

  icu::UnicodeString::~UnicodeString(v10, v14);
LABEL_15:
  sub_1953E54CC(a1);
  icu::Locale::~Locale(v20);
  v11 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_1953E54CC(uint64_t result)
{
  v1 = result;
  v2 = *(result + 80);
  if (v2)
  {
    if (*(result + 16))
    {
      return result;
    }

    goto LABEL_17;
  }

  if ((v2 & 0x8000) != 0)
  {
    v3 = *(result + 84);
  }

  else
  {
    v3 = v2 >> 5;
  }

  v4 = *(result + 16);
  if ((v4 & 0x8000u) == 0)
  {
    v5 = v4 >> 5;
  }

  else
  {
    v5 = *(result + 20);
  }

  if ((v4 & 1) != 0 || v3 != v5 || ((v4 & 2) != 0 ? (v6 = (result + 18)) : (v6 = *(result + 32)), result = icu::UnicodeString::doEquals(result + 72, v6, v3), !result))
  {
LABEL_17:
    icu::UnicodeString::operator=((v1 + 72), (v1 + 8));
    *(v1 + 264) = *(v1 + 272) != 0;

    return sub_1953E55FC(v1);
  }

  return result;
}

void *sub_1953E558C(void *a1)
{
  v2 = a1[34];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::UnicodeString::~UnicodeString((a1 + 25));
  icu::UnicodeString::~UnicodeString((a1 + 17));
  icu::UnicodeString::~UnicodeString((a1 + 9));
  icu::UnicodeString::~UnicodeString((a1 + 1));
  return a1;
}

uint64_t sub_1953E55FC(uint64_t result)
{
  v1 = result;
  *(result + 265) = 0;
  if (*(result + 264))
  {
    icu::UnicodeString::operator=((result + 136), (result + 72));
    v2 = *(v1 + 144);
    if ((v2 & 0x8000) != 0)
    {
      v3 = *(v1 + 148);
    }

    else
    {
      v3 = v2 >> 5;
    }

    result = icu::UnicodeString::doLastIndexOf(v1 + 136, 0x5Fu, 0, v3);
    if (result < 1)
    {

      return icu::UnicodeString::operator=((v1 + 136), (v1 + 200));
    }

    else
    {
      v5 = *(v1 + 144);
      if (*(v1 + 144) < 0)
      {
        v6 = *(v1 + 148);
      }

      else
      {
        v6 = v5 >> 5;
      }

      if (v6 > result)
      {
        if (result > 0x3FF)
        {
          *(v1 + 144) = v5 | 0xFFE0;
          *(v1 + 148) = result;
        }

        else
        {
          *(v1 + 144) = *(v1 + 144) & 0x1F | (32 * result);
        }
      }

      *(v1 + 265) = 1;
    }
  }

  else
  {
    v4 = *(result + 144);
    if ((v4 & 1) == 0)
    {
      if ((v4 & 0x8000) != 0)
      {
        if (!*(result + 148))
        {
          return result;
        }
      }

      else if (!(v4 >> 5))
      {
        return result;
      }

      *(result + 144) &= 0x1Eu;
      return result;
    }

    v7 = result + 136;

    return icu::UnicodeString::unBogus(v7);
  }

  return result;
}

void *sub_1953E5718(void *a1)
{
  v2 = *a1;
  switch(v2)
  {
    case 3:
      v3 = a1[11];
      if (!v3)
      {
        break;
      }

      goto LABEL_13;
    case 4:
      v6 = a1[11];
      if (v6)
      {
        v7 = sub_19539E9C4(v6);
        MEMORY[0x19A8B2600](v7, 0x10A0C40CAFF8206);
      }

      break;
    case 5:
      v3 = a1[11];
      if (v3)
      {
        while (*(v3 + 2))
        {
          v4 = icu::UVector::orphanElementAt(v3, 0);
          if (v4)
          {
            v5 = sub_19539E9C4(v4);
            MEMORY[0x19A8B2600](v5, 0x10A0C40CAFF8206);
          }

          v3 = a1[11];
          if (!v3)
          {
            goto LABEL_14;
          }
        }

LABEL_13:
        (*(*v3 + 8))(v3);
      }

      break;
  }

LABEL_14:
  v8 = a1[10];
  if (v8)
  {
    v9 = icu::UnicodeSet::~UnicodeSet(v2, v8);
    MEMORY[0x19A8B2600](v9, 0x10B1C403432821BLL);
  }

  icu::UnicodeString::~UnicodeString(v2, (a1 + 1));
  return a1;
}

void sub_1953E5814(uint64_t a1, UErrorCode *a2)
{
  *(a1 + 8) = 0;
  if (*a2 <= 0 && (v4 = a1 + 16, uhash_init((a1 + 16), uhash_hashCaselessUnicodeString, uhash_compareCaselessUnicodeString, 0, a2), *a2 < 1))
  {
    *(a1 + 8) = v4;
    uhash_setKeyDeleter(a1 + 16, uprv_deleteUObject);
    v5 = *a2;
    *(a1 + 96) = 0;
    if (v5 <= 0)
    {
      uhash_initSize((a1 + 104), uhash_hashCaselessUnicodeString, uhash_compareCaselessUnicodeString, 0, 134, a2);
      if (*a2 <= 0)
      {
        *(a1 + 96) = a1 + 104;
        uhash_setKeyDeleter(a1 + 104, uprv_deleteUObject);
      }
    }
  }

  else
  {
    *(a1 + 96) = 0;
  }

  icu::UVector::UVector((a1 + 184), 11, a2);
  *(a1 + 224) = 0;
  if (*a2 <= 0)
  {
    uhash_initSize((a1 + 232), uhash_hashCaselessUnicodeString, uhash_compareCaselessUnicodeString, 0, 493, a2);
    if (*a2 <= 0)
    {
      *(a1 + 224) = a1 + 232;
      uhash_setKeyDeleter(a1 + 232, uprv_deleteUObject);
    }
  }

  uhash_setValueDeleter(*(a1 + 8), sub_1953E5A54);
  icu::UVector::setDeleter((a1 + 184), uprv_deleteUObject);
  icu::UVector::setComparer(a1 + 184, uhash_compareCaselessUnicodeString);
  operator new();
}

void *sub_1953E5A54(void *result)
{
  if (result)
  {
    sub_1953E5718(result);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

void *sub_1953E5A98(void *a1)
{
  v2 = a1[28];
  if (v2)
  {
    uhash_close(v2);
  }

  icu::UVector::~UVector((a1 + 23));
  v3 = a1[12];
  if (v3)
  {
    uhash_close(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    uhash_close(v4);
  }

  return a1;
}

uint64_t sub_1953E5AEC(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  result = sub_1953E5B54(a1, a2);
  if (result)
  {

    return sub_1953E5C94(result, a2, result, a3, a4);
  }

  return result;
}

uint64_t sub_1953E5B54(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v24 = 0;
  v23 = 0u;
  v22 = 0u;
  v20 = &unk_1F0935D00;
  LOWORD(v21) = 2;
  v16 = 0u;
  v17 = 0u;
  v19 = 0;
  v18 = 0u;
  v14 = 0;
  v15 = &unk_1F0935D00;
  LOWORD(v16) = 2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = &unk_1F0935D00;
  LOWORD(v11) = 2;
  v9 = 0;
  sub_1953E9BA8(a2, &v20, &v15, &v10, &v9);
  v3 = sub_1953E7B74(a1, &v20, &v15, &v10);
  icu::UnicodeString::~UnicodeString(v4, &v10);
  icu::UnicodeString::~UnicodeString(v5, &v15);
  icu::UnicodeString::~UnicodeString(v6, &v20);
  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1953E5C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  if (*a3 <= 3)
  {
    if (v7 < 2)
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      sub_1953A05F4(v10, a5);
      memset(v12, 0, sizeof(v12));
      icu::UnicodeString::UnicodeString(v12, (a3 + 8));
      operator new();
    }

    if (v7 == 2)
    {
      operator new();
    }

    if (v7 == 3)
    {
      result = (*(**(a3 + 88) + 24))(*(a3 + 88));
      if (!result)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }

LABEL_19:
    abort();
  }

  if (v7 <= 5)
  {
    if (v7 != 4)
    {
      operator new();
    }

    operator new();
  }

  if (v7 == 6)
  {
    operator new();
  }

  if (v7 != 7)
  {
    goto LABEL_19;
  }

  result = (*(a3 + 88))(a2, *(a3 + 96));
  if (!result)
  {
LABEL_13:
    *a5 = 7;
  }

LABEL_18:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1953E60F4(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4, _DWORD *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  result = sub_1953E5B54(a1, a2);
  if (result)
  {
    v10 = result;
    if (*result > 2u)
    {
LABEL_13:
      result = sub_1953E5C94(result, a2, v10, a4, a5);
      goto LABEL_14;
    }

    v11 = a3[14];
    if (v11 == 1)
    {
      if (a3[4])
      {
        goto LABEL_9;
      }

      v14 = icu::UVector::elementAt((a3 + 12), 0);
      icu::UnicodeString::operator=((v10 + 8), v14);
      result = sub_1953A1254(a3);
      *(v10 + 80) = result;
      v15 = 6;
    }

    else
    {
      if (v11)
      {
        goto LABEL_9;
      }

      v12 = a3[4];
      if (v12 != 1)
      {
        if (!v12)
        {
          result[11] = 0;
          *result = 6;
          v17 = L"Any-nullptr";
          icu::UnicodeString::UnicodeString(v18, 1, &v17);
          icu::UnicodeString::operator=((v10 + 8), v18);
          result = icu::UnicodeString::~UnicodeString(v13, v18);
          goto LABEL_13;
        }

LABEL_9:
        *result = 5;
        result[10] = sub_1953A1254(a3);
        operator new();
      }

      result = icu::UVector::orphanElementAt((a3 + 2), 0);
      *(v10 + 88) = result;
      v15 = 4;
    }

    *v10 = v15;
    goto LABEL_13;
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1953E645C(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v23 = 0;
  v22 = 0u;
  v21 = 0u;
  LOWORD(v20) = 2;
  v15 = 0u;
  v18 = 0;
  v19 = &unk_1F0935D00;
  v17 = 0u;
  v16 = 0u;
  v14 = &unk_1F0935D00;
  LOWORD(v15) = 2;
  v10 = 0u;
  v11 = 0u;
  v13 = 0;
  v12 = 0u;
  v9 = &unk_1F0935D00;
  LOWORD(v10) = 2;
  v3 = 0;
  sub_1953E9BA8(a2, &v19, &v14, &v9, &v3);
  v5 = 0u;
  v6 = 0u;
  v8 = 0;
  v7 = 0u;
  v4 = &unk_1F0935D00;
  LOWORD(v5) = 2;
  sub_1953E9F58(&v19, &v14, &v9, &v4);
  sub_1953E71E4(a1);
}

void *sub_1953E68D4(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v29 = 0;
  v28 = 0u;
  v27 = 0u;
  LOWORD(v26) = 2;
  v21 = 0u;
  v24 = 0;
  v25 = &unk_1F0935D00;
  v23 = 0u;
  v22 = 0u;
  v20 = &unk_1F0935D00;
  LOWORD(v21) = 2;
  v16 = 0u;
  v17 = 0u;
  v19 = 0;
  v18 = 0u;
  v15 = &unk_1F0935D00;
  LOWORD(v16) = 2;
  v9 = 0;
  sub_1953E9BA8(a2, &v25, &v20, &v15, &v9);
  v11 = 0u;
  v12 = 0u;
  v14 = 0;
  v13 = 0u;
  v10 = &unk_1F0935D00;
  LOWORD(v11) = 2;
  sub_1953E9F58(&v25, &v20, &v15, &v10);
  uhash_remove(*(a1 + 8), &v10);
  sub_1953E6A80(a1, &v25, &v20, &v15);
  uhash_remove(*(a1 + 224), &v10);
  icu::UnicodeString::~UnicodeString(v3, &v10);
  icu::UnicodeString::~UnicodeString(v4, &v15);
  icu::UnicodeString::~UnicodeString(v5, &v20);
  result = icu::UnicodeString::~UnicodeString(v6, &v25);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1953E6A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = uhash_get(*(a1 + 96), a2);
  if (result)
  {
    v9 = result;
    result = uhash_geti(*result, a3);
    if (result)
    {
      v10 = result;
      result = icu::UVector::indexOf((a1 + 184), a4, 0);
      if ((result & 0x80000000) == 0)
      {
        v11 = *v9;
        if ((v10 & ~(1 << result)) != 0)
        {
          operator new();
        }

        uhash_remove(*v9, a3);
        result = uhash_count(*v9);
        if (!result)
        {
          v12 = *(a1 + 96);

          return uhash_remove(v12, a2);
        }
      }
    }
  }

  return result;
}

uint64_t *sub_1953E6BA0(uint64_t a1, int a2)
{
  if (a2 < 0 || (v3 = a2, uhash_count(*(a1 + 224)) <= a2))
  {
    v3 = 0;
  }

  v7 = -1;
  v4 = v3 + 1;
  while (1)
  {
    v5 = uhash_nextElement(*(a1 + 224), &v7);
    if (!v5)
    {
      break;
    }

    if (--v4 < 1)
    {
      return *(v5 + 16);
    }
  }

  if (atomic_load_explicit(&qword_1ED443160, memory_order_acquire))
  {
    return &qword_1ED443168;
  }

  sub_19542FF94(&v8);
  return v8;
}

UChar **sub_1953E6CB8(uint64_t a1, int a2, UChar **this)
{
  v10 = -1;
  if ((a2 & 0x80000000) == 0)
  {
    v5 = a2 + 1;
    while (1)
    {
      v6 = uhash_nextElement(*(a1 + 96), &v10);
      if (!v6)
      {
        break;
      }

      if (--v5 < 1)
      {
        icu::UnicodeString::operator=(this, *(v6 + 16));
        return this;
      }
    }
  }

  v7 = *(this + 4);
  if (v7)
  {
    icu::UnicodeString::unBogus(this);
  }

  else
  {
    if ((v7 & 0x8000u) == 0)
    {
      v8 = v7 >> 5;
    }

    else
    {
      v8 = *(this + 3);
    }

    if (v8)
    {
      *(this + 4) &= 0x1Eu;
    }
  }

  return this;
}

uint64_t *sub_1953E6D60(uint64_t a1, uint64_t a2)
{
  result = uhash_get(*(a1 + 96), a2);
  if (result)
  {
    v3 = *result;

    return uhash_count(v3);
  }

  return result;
}

uint64_t sub_1953E6D9C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = uhash_get(*(a1 + 96), a3);
  if (v6)
  {
    v13 = -1;
    if ((a2 & 0x80000000) == 0)
    {
      v7 = v6;
      v8 = a2 + 1;
      while (1)
      {
        v9 = uhash_nextElement(*v7, &v13);
        if (!v9)
        {
          break;
        }

        if (--v8 < 1)
        {
          icu::UnicodeString::operator=(a4, *(v9 + 16));
          return a4;
        }
      }
    }
  }

  v10 = *(a4 + 8);
  if (v10)
  {
    icu::UnicodeString::unBogus(a4);
  }

  else
  {
    if ((v10 & 0x8000u) == 0)
    {
      v11 = v10 >> 5;
    }

    else
    {
      v11 = *(a4 + 12);
    }

    if (v11)
    {
      *(a4 + 8) &= 0x1Eu;
    }
  }

  return a4;
}

uint64_t sub_1953E6E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = uhash_get(*(a1 + 96), a2);
  if (result)
  {
    result = uhash_geti(*result, a3);
    if (result)
    {
      v5 = result;
      LODWORD(result) = 0;
      do
      {
        result = result + (v5 & 1);
        v6 = v5 > 1;
        v5 >>= 1;
      }

      while (v6);
    }
  }

  return result;
}

uint64_t sub_1953E6EB4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = uhash_get(*(a1 + 96), a3);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = uhash_geti(*v9, a4);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = 0;
  v12 = 0;
  while ((v10 & 1) == 0)
  {
LABEL_7:
    ++v11;
    v13 = v10 > 1;
    v10 >>= 1;
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  if (v12 != a2)
  {
    ++v12;
    goto LABEL_7;
  }

  v17 = icu::UVector::elementAt((a1 + 184), v11);
  if (v17)
  {
    icu::UnicodeString::operator=(a5, v17);
    return a5;
  }

LABEL_8:
  v14 = *(a5 + 8);
  if (v14)
  {
    icu::UnicodeString::unBogus(a5);
  }

  else
  {
    if ((v14 & 0x8000u) == 0)
    {
      v15 = v14 >> 5;
    }

    else
    {
      v15 = *(a5 + 12);
    }

    if (v15)
    {
      *(a5 + 8) &= 0x1Eu;
    }
  }

  return a5;
}

void sub_1953E6F8C(icu::StringEnumeration *a1)
{
  icu::StringEnumeration::~StringEnumeration(a1);

  JUMPOUT(0x19A8B2600);
}

UChar **sub_1953E6FCC(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (uhash_count(*(*(a1 + 128) + 224)) != *(a1 + 120))
  {
    v2 = 0;
    *a2 = 25;
    return v2;
  }

  Element = uhash_nextElement(*(*(a1 + 128) + 224), (a1 + 116));
  if (!Element)
  {
    return 0;
  }

  v2 = (a1 + 8);
  icu::UnicodeString::operator=(v2, *(Element + 16));
  return v2;
}

uint64_t sub_1953E7054(uint64_t a1)
{
  *(a1 + 116) = -1;
  result = uhash_count(*(*(a1 + 128) + 224));
  *(a1 + 120) = result;
  return result;
}

void sub_1953E7098(uint64_t a1, UChar **a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v15 = 0;
  v14 = 0u;
  v11 = &unk_1F0935D00;
  LOWORD(v12) = 2;
  memset(v10, 0, sizeof(v10));
  icu::UnicodeString::UnicodeString(v10, a2);
  v8 = WORD4(v10[0]) >> 5;
  if (SWORD4(v10[0]) < 0)
  {
    v8 = HIDWORD(v10[0]);
  }

  if (!v8)
  {
    v9 = "A";
    icu::UnicodeString::setTo(v10, 1, &v9, 3);
  }

  sub_1953E9F58(a2, a3, a4, &v11);
  sub_1953E71E4(a1);
}

void sub_1953E71E4(uint64_t a1)
{
  v2 = 0;
  v1 = *(a1 + 8);
  operator new();
}

uint64_t sub_1953E72F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = uhash_get(*(a1 + 96), a2);
  if (!v8)
  {
    v11 = *(a2 + 8);
    v12 = v11;
    v13 = v11 >> 5;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = *(a2 + 12);
    }

    if (icu::UnicodeString::doCompare(a2, 0, v14, "A", 0, 3))
    {
      v15 = *(a2 + 8);
      v16 = v15;
      v17 = v15 >> 5;
      if (v16 >= 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = *(a2 + 12);
      }

      icu::UnicodeString::doCompare(a2, 0, v18, "L", 0, 3);
    }

    operator new();
  }

  result = icu::UVector::indexOf((a1 + 184), a4, 0);
  if ((result & 0x80000000) == 0)
  {
    uhash_geti(*v8, a3);
    v10 = *v8;
    operator new();
  }

  if (*(a1 + 192) <= 30)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1953E7584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v13 = 0;
  v12 = 0u;
  v9 = &unk_1F0935D00;
  LOWORD(v10) = 2;
  sub_1953E9F58((a2 + 72), a3 + 72, a4, &v9);
  v5 = uhash_get(*(a1 + 8), &v9);
  icu::UnicodeString::~UnicodeString(v6, &v9);
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t sub_1953E7644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (*(a2 + 264))
  {
    v8 = a2;
    a2 = a3;
    v9 = a4;
    v10 = 0;
  }

  else
  {
    if (!*(a3 + 264))
    {
      return 0;
    }

    v8 = a3;
    v9 = a4;
    v10 = 1;
  }

  v11 = sub_1953E76E8(v8, a2, v9, v10);
  if (v11)
  {
    sub_1953E7098(a1, (v6 + 8), a3 + 8, a4);
  }

  return v11;
}

uint64_t sub_1953E76E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v61 = *MEMORY[0x1E69E9840];
  v57 = 0u;
  v60 = 0;
  v59 = 0u;
  v58 = 0u;
  v55 = 0;
  v56 = &unk_1F0935D00;
  LOWORD(v57) = 2;
  v52 = 0u;
  v54 = 0u;
  v53 = 0u;
  if (a4)
  {
    v7 = "T";
  }

  else
  {
    v7 = "T";
  }

  v51 = &unk_1F0935D00;
  LOWORD(v52) = 2;
  v8 = 1;
  do
  {
    v9 = v8;
    if (v57)
    {
      icu::UnicodeString::unBogus(&v56);
    }

    else
    {
      if ((v57 & 0x8000u) == 0)
      {
        v10 = v57 >> 5;
      }

      else
      {
        v10 = DWORD1(v57);
      }

      if (v10)
      {
        LOBYTE(v57) = v57 & 0x1E;
        LOWORD(v57) = v57;
      }
    }

    if (v9)
    {
      icu::UnicodeString::doAppend(&v56, v7, 0, 0xFFFFFFFFLL);
    }

    else
    {
      icu::UnicodeString::doAppend(&v56, "T", 0, 0xFFFFFFFFLL);
    }

    memset(v50, 0, sizeof(v50));
    icu::UnicodeString::UnicodeString(v50, (a2 + 72));
    icu::Locale::Locale(&v46, "", 0, 0, 0);
    v11 = icu::UnicodeString::toUpper(v50, &v46);
    v12 = *(v11 + 4);
    v13 = v12;
    v14 = v12 >> 5;
    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = *(v11 + 3);
    }

    icu::UnicodeString::doAppend(&v56, v11, 0, v15);
    icu::Locale::~Locale(&v46);
    v41 = U_ZERO_ERROR;
    memset(v40, 0, sizeof(v40));
    v16 = *(a1 + 272);
    v46 = &v48 + 1;
    v47 = 40;
    v48 = 0;
    v49 = 0;
    appended = icu::CharString::appendInvariantChars(&v46, &v56, &v41);
    icu::ResourceBundle::get(v16, *appended, &v41, v40);
    if (v48)
    {
      free(v46);
    }

    if (v41 <= U_ZERO_ERROR && v41 != U_USING_DEFAULT_WARNING)
    {
      if (BYTE8(v50[0]))
      {
        icu::UnicodeString::unBogus(v50);
      }

      else
      {
        if ((SWORD4(v50[0]) & 0x8000u) == 0)
        {
          v18 = WORD4(v50[0]) >> 5;
        }

        else
        {
          v18 = HIDWORD(v50[0]);
        }

        if (v18)
        {
          BYTE8(v50[0]) &= 0x1Eu;
          WORD4(v50[0]) = BYTE8(v50[0]);
        }
      }

      Locale = icu::ResourceBundle::getLocale(v40);
      inited = icu::LocaleUtility::initNameFromLocale(Locale, v50, v20);
      v22 = *(a1 + 80);
      if (v22)
      {
        if ((*(inited + 4) & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v23 = v22;
        v24 = v22 >> 5;
        if (v23 >= 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = *(a1 + 84);
        }

        v26 = *(inited + 4);
        if ((v26 & 0x8000u) == 0)
        {
          v27 = v26 >> 5;
        }

        else
        {
          v27 = *(inited + 3);
        }

        if ((v26 & 1) != 0 || v25 != v27)
        {
          goto LABEL_52;
        }

        v28 = (v26 & 2) != 0 ? inited + 10 : *(inited + 3);
        if (!icu::UnicodeString::doEquals(a1 + 72, v28, v25))
        {
          goto LABEL_52;
        }
      }

      v29 = *(a3 + 8);
      v30 = v29;
      v31 = v29 >> 5;
      if (v30 < 0)
      {
        v31 = *(a3 + 12);
      }

      v41 = U_ZERO_ERROR;
      if (v31)
      {
        v42 = &v44 + 1;
        v43 = 40;
        v44 = 0;
        v45 = 0;
        v32 = icu::CharString::appendInvariantChars(&v42, a3, &v41);
        icu::ResourceBundle::getStringEx(v40, *v32, &v41, &v46);
        icu::UnicodeString::operator=(&v51, &v46);
        icu::UnicodeString::~UnicodeString(v33, &v46);
        if (v44)
        {
          free(v42);
        }

        if (v41 <= U_ZERO_ERROR)
        {
LABEL_54:
          icu::ResourceBundle::~ResourceBundle(v40);
          icu::UnicodeString::~UnicodeString(v39, v50);
          operator new();
        }
      }

      else
      {
        icu::ResourceBundle::getStringEx(v40, &v41, 1, &v46);
        icu::UnicodeString::operator=(&v51, &v46);
        icu::UnicodeString::~UnicodeString(v34, &v46);
        if (v41 < U_ILLEGAL_ARGUMENT_ERROR)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_52:
    icu::ResourceBundle::~ResourceBundle(v40);
    icu::UnicodeString::~UnicodeString(v35, v50);
    v8 = 0;
  }

  while ((v9 & 1) != 0);
  icu::UnicodeString::~UnicodeString(0, &v51);
  icu::UnicodeString::~UnicodeString(v36, &v56);
  v37 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1953E7B74(uint64_t a1, UChar **a2, UChar **a3, uint64_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  sub_1953E51C8(v38, a2);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  memset(v27, 0, sizeof(v27));
  sub_1953E51C8(v27, a3);
  v23 = 0u;
  v26 = 0;
  v25 = 0u;
  v24 = 0u;
  v22 = &unk_1F0935D00;
  LOWORD(v23) = 2;
  sub_1953E9F58(a2, a3, a4, &v22);
  v8 = uhash_get(*(a1 + 8), &v22);
  if (v8)
  {
    goto LABEL_2;
  }

  v13 = *(a4 + 8);
  v14 = v13;
  v15 = v13 >> 5;
  if (v14 < 0)
  {
    v15 = *(a4 + 12);
  }

  if (v15 && ((v8 = sub_1953E7584(a1, v38, v27, a4)) != 0 || (v8 = sub_1953E7644(a1, v38, v27, a4)) != 0))
  {
LABEL_2:
    v10 = v8;
  }

  else
  {
    sub_1953E54CC(v38);
    v20 = &unk_1F0935D00;
    v21 = 2;
    v10 = sub_1953E7584(a1, v38, v27, &v20);
    icu::UnicodeString::~UnicodeString(v16, &v20);
    while (!v10)
    {
      v20 = &unk_1F0935D00;
      v21 = 2;
      v10 = sub_1953E7644(a1, v38, v27, &v20);
      icu::UnicodeString::~UnicodeString(v17, &v20);
      if (v10)
      {
        break;
      }

      v18 = v40 >> 5;
      if ((v40 & 0x8000u) != 0)
      {
        v18 = DWORD1(v40);
      }

      if (v18)
      {
        icu::UnicodeString::operator=(&v38[4] + 1, &v39 + 1);
        BYTE8(v47) = BYTE9(v47);
        sub_1953E55FC(v38);
      }

      else
      {
        LODWORD(v9) = v29 >> 5;
        if ((v29 & 0x8000u) == 0)
        {
          v9 = v9;
        }

        else
        {
          v9 = DWORD1(v29);
        }

        if (!v9)
        {
          v10 = 0;
          break;
        }

        icu::UnicodeString::operator=(&v27[4] + 1, &v28 + 1);
        BYTE8(v36) = BYTE9(v36);
        sub_1953E55FC(v27);
        sub_1953E54CC(v38);
      }

      v20 = &unk_1F0935D00;
      v21 = 2;
      v10 = sub_1953E7584(a1, v38, v27, &v20);
      icu::UnicodeString::~UnicodeString(v19, &v20);
    }
  }

  icu::UnicodeString::~UnicodeString(v9, &v22);
  sub_1953E558C(v27);
  sub_1953E558C(v38);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1953E7E80(uint64_t a1, UChar **a2, UChar **a3, UChar **a4, char a5, UChar **a6)
{
  *(a1 + 8) = &unk_1F0935D00;
  *(a1 + 16) = 2;
  *(a1 + 72) = &unk_1F0935D00;
  *(a1 + 80) = 2;
  *(a1 + 136) = &unk_1F0935D00;
  *(a1 + 144) = 2;
  *(a1 + 200) = &unk_1F0935D00;
  *(a1 + 208) = 2;
  icu::UnicodeString::operator=((a1 + 8), a2);
  icu::UnicodeString::operator=((a1 + 72), a3);
  icu::UnicodeString::operator=((a1 + 136), a4);
  *(a1 + 264) = a5;
  icu::UnicodeString::operator=((a1 + 200), a6);
  return a1;
}

uint64_t sub_1953E7F8C(uint64_t a1, UChar **a2, UChar **a3)
{
  *(a1 + 8) = &unk_1F0935D00;
  *(a1 + 16) = 2;
  *(a1 + 72) = &unk_1F0935D00;
  *(a1 + 80) = 2;
  *(a1 + 136) = &unk_1F0935D00;
  *(a1 + 144) = 2;
  icu::UnicodeString::operator=((a1 + 8), a2);
  icu::UnicodeString::operator=((a1 + 72), a3);
  return a1;
}

uint64_t sub_1953E803C(uint64_t a1, uint64_t a2, const icu::UnicodeString *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 80) & 0x80000000) == 0)
  {
    if (*(a1 + 80) >> 5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = "A";
    icu::UnicodeString::UnicodeString(v10, 1, &v9);
    BasicInstance = icu::Transliterator::createBasicInstance(v10, (a1 + 8), v5);
    icu::UnicodeString::~UnicodeString(v6, v10);
    if (!BasicInstance)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (!*(a1 + 84))
  {
    goto LABEL_6;
  }

LABEL_3:
  BasicInstance = icu::Transliterator::createBasicInstance((a1 + 72), (a1 + 8), a3);
  if (!BasicInstance)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((*(a1 + 144) & 0x80000000) == 0)
  {
    if (!(*(a1 + 144) >> 5))
    {
      goto LABEL_12;
    }

LABEL_11:
    v10[0] = U_ZERO_ERROR;
    operator new();
  }

  if (*(a1 + 148))
  {
    goto LABEL_11;
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
  return BasicInstance;
}

uint64_t sub_1953E8194(uint64_t a1, const icu::UnicodeString *a2, int a3, int *a4)
{
  v8 = 0;
  v9 = *a2;
  v10 = 2;
  do
  {
    if (v10 == 1)
    {
      v8 = sub_1953E84B0(a1, a2, 1);
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    if (icu::ICU_Utility::parseChar(a1, a2, 40))
    {
      if (icu::ICU_Utility::parseChar(a1, a2, 41))
      {
        v14 = 0;
      }

      else
      {
        v15 = sub_1953E84B0(a1, a2, 1);
        if (!v15 || (v14 = v15, !icu::ICU_Utility::parseChar(a1, a2, 41)))
        {
          if (v8)
          {
            icu::UnicodeString::~UnicodeString(v16, (v8 + 200));
            icu::UnicodeString::~UnicodeString(v17, (v8 + 136));
            icu::UnicodeString::~UnicodeString(v18, (v8 + 72));
            icu::UnicodeString::~UnicodeString(v19, (v8 + 8));
            MEMORY[0x19A8B2600](v8, 0x1092C4000BCC069);
          }

LABEL_17:
          v12 = 0;
          *a2 = v9;
          return v12;
        }
      }

      if (a3)
      {
        sub_1953E8AC4(v8, 0);
      }

      sub_1953E8AC4(v14, 0);
    }

    --v10;
  }

  while (v10);
  v11 = v8;
  if (!a3)
  {
    v13 = 0;
LABEL_19:
    sub_1953E8AC4(v11, v13);
  }

  v12 = sub_1953E8E28(v8, a4);
  if (!v12)
  {
    v11 = v8;
    v13 = 1;
    goto LABEL_19;
  }

  icu::UnicodeString::operator=((v12 + 136), (v8 + 200));
  if (v8)
  {
    icu::UnicodeString::~UnicodeString(v20, (v8 + 200));
    icu::UnicodeString::~UnicodeString(v21, (v8 + 136));
    icu::UnicodeString::~UnicodeString(v22, (v8 + 72));
    icu::UnicodeString::~UnicodeString(v23, (v8 + 8));
    MEMORY[0x19A8B2600](v8, 0x1092C4000BCC069);
  }

  return v12;
}

uint64_t sub_1953E84B0(uint64_t a1, const icu::UnicodeString *a2, int a3)
{
  v92 = *MEMORY[0x1E69E9840];
  v88 = 0u;
  v91 = 0;
  v90 = 0u;
  v89 = 0u;
  LOWORD(v88) = 2;
  v83 = 0u;
  v86 = 0;
  v87 = &unk_1F0935D00;
  v85 = 0u;
  v84 = 0u;
  LOWORD(v83) = 2;
  v78 = 0u;
  v81 = 0;
  v82 = &unk_1F0935D00;
  v80 = 0u;
  v79 = 0u;
  LOWORD(v78) = 2;
  v73 = 0u;
  v76 = 0;
  v77 = &unk_1F0935D00;
  v75 = 0u;
  v74 = 0u;
  v72 = &unk_1F0935D00;
  LOWORD(v73) = 2;
  v71 = 0;
  v69 = 0u;
  v70 = 0u;
  v68 = 0u;
  v67 = &unk_1F0935D00;
  LOWORD(v68) = 2;
  v49 = *a2;
  icu::ICU_Utility::skipWhitespace(a1, a2, 1);
  v6 = *a2;
  v7 = *(a1 + 8);
  v8 = v7;
  v9 = v7 >> 5;
  if (v8 < 0)
  {
    v9 = *(a1 + 12);
  }

  if (v6 == v9)
  {
    goto LABEL_4;
  }

  v14 = 0;
  do
  {
    v15 = 0;
    while (1)
    {
      if (a3)
      {
        while (1)
        {
          v16 = v68 >> 5;
          if ((v68 & 0x8000u) != 0)
          {
            v16 = DWORD1(v68);
          }

          if (v16 || !icu::UnicodeSet::resemblesPattern(a1, v6))
          {
            goto LABEL_29;
          }

          v17 = *a2;
          v51 = &unk_1F0932C70;
          v52 = v17;
          v53 = -1;
          v50 = U_ZERO_ERROR;
          v66 = 0;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v61 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v54 = 0u;
          icu::UnicodeSet::UnicodeSet(&v54, a1, &v51, 1u, 0, &v50);
          if (v50 > U_ZERO_ERROR)
          {
            break;
          }

          (*(*a1 + 24))(a1, *a2, v52, &v67);
          *a2 = v52;
          icu::UnicodeSet::~UnicodeSet(&v54);
          icu::ParsePosition::~ParsePosition(&v51);
          icu::ICU_Utility::skipWhitespace(a1, a2, 1);
          v6 = *a2;
          v18 = *(a1 + 8);
          v19 = v18;
          v20 = v18 >> 5;
          if (v19 < 0)
          {
            v20 = *(a1 + 12);
          }

          if (v6 == v20)
          {
            goto LABEL_4;
          }
        }

        *a2 = v49;
        icu::UnicodeSet::~UnicodeSet(&v54);
        icu::ParsePosition::~ParsePosition(&v51);
        goto LABEL_79;
      }

LABEL_29:
      if (v15)
      {
        goto LABEL_49;
      }

      v21 = *a2;
      v22 = *(a1 + 8);
      v23 = (v22 & 0x8000u) == 0 ? v22 >> 5 : *(a1 + 12);
      if (v23 <= v21)
      {
        break;
      }

      v24 = (v22 & 2) != 0 ? a1 + 10 : *(a1 + 24);
      v25 = *(v24 + 2 * v21);
      if (v25 == 47)
      {
        v26 = v73;
        v27 = v73 >> 5;
        v28 = DWORD1(v73);
      }

      else
      {
        if (v25 != 45)
        {
          break;
        }

        v26 = v78;
        v27 = v78 >> 5;
        v28 = DWORD1(v78);
      }

      if (v26 < 0)
      {
        v27 = v28;
      }

      if (v27)
      {
        break;
      }

      *a2 = v21 + 1;
      icu::ICU_Utility::skipWhitespace(a1, a2, 1);
      v6 = *a2;
      v29 = *(a1 + 8);
      v30 = v29;
      v31 = v29 >> 5;
      if (v30 < 0)
      {
        v31 = *(a1 + 12);
      }

      v15 = v25;
      if (v6 == v31)
      {
        goto LABEL_4;
      }
    }

    if (v14)
    {
      break;
    }

LABEL_49:
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    icu::ICU_Utility::parseUnicodeIdentifier(a1, a2, &v54);
    LODWORD(v32) = WORD4(v54) >> 5;
    if ((SWORD4(v54) & 0x8000u) == 0)
    {
      v32 = v32;
    }

    else
    {
      v32 = HIDWORD(v54);
    }

    if (!v32)
    {
      icu::UnicodeString::~UnicodeString(v32, &v54);
      break;
    }

    if (v15)
    {
      if (v15 == 47)
      {
        v33 = &v72;
      }

      else
      {
        v33 = &v77;
      }
    }

    else
    {
      v33 = &v87;
    }

    icu::UnicodeString::operator=(v33, &v54);
    ++v14;
    icu::UnicodeString::~UnicodeString(v34, &v54);
    icu::ICU_Utility::skipWhitespace(a1, a2, 1);
    v6 = *a2;
    v35 = *(a1 + 8);
    v36 = v35;
    v37 = v35 >> 5;
    if (v36 < 0)
    {
      v37 = *(a1 + 12);
    }
  }

  while (v6 != v37);
LABEL_4:
  v10 = v88 >> 5;
  if ((v88 & 0x8000u) != 0)
  {
    v10 = DWORD1(v88);
  }

  if (v10)
  {
    v11 = v78 >> 5;
    if ((v78 & 0x8000u) != 0)
    {
      v11 = DWORD1(v78);
    }

    if (v11)
    {
      v12 = &v82;
    }

    else
    {
      v12 = &v77;
    }

    icu::UnicodeString::operator=(v12, &v87);
  }

  v13 = v83 >> 5;
  if ((v83 & 0x8000u) != 0)
  {
    v13 = DWORD1(v83);
  }

  if (v13)
  {
LABEL_69:
    v40 = v78 >> 5;
    if ((v78 & 0x8000u) != 0)
    {
      v40 = DWORD1(v78);
    }

    if (!v40)
    {
      icu::UnicodeString::unBogus(&v77);
      if ((v78 & 0x8000u) == 0)
      {
        v41 = v78 >> 5;
      }

      else
      {
        v41 = DWORD1(v78);
      }

      icu::UnicodeString::doReplace(&v77, 0, v41, L"Any", 0, 3);
    }

    operator new();
  }

  v38 = v78 >> 5;
  if ((v78 & 0x8000u) != 0)
  {
    v38 = DWORD1(v78);
  }

  if (v38)
  {
    icu::UnicodeString::unBogus(&v82);
    if ((v83 & 0x8000u) == 0)
    {
      v39 = v83 >> 5;
    }

    else
    {
      v39 = DWORD1(v83);
    }

    icu::UnicodeString::doReplace(&v82, 0, v39, L"Any", 0, 3);
    goto LABEL_69;
  }

  v42 = v49;
  *a2 = v49;
LABEL_79:
  icu::UnicodeString::~UnicodeString(v42, &v67);
  icu::UnicodeString::~UnicodeString(v43, &v72);
  icu::UnicodeString::~UnicodeString(v44, &v77);
  icu::UnicodeString::~UnicodeString(v45, &v82);
  icu::UnicodeString::~UnicodeString(v46, &v87);
  v47 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1953E8AC4(uint64_t a1, int a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v51 = 0u;
  v54 = 0;
  v53 = 0u;
  v52 = 0u;
  LOWORD(v51) = 2;
  v46 = 0u;
  v49 = 0;
  v50 = &unk_1F0935D00;
  v48 = 0u;
  v47 = 0u;
  v45 = &unk_1F0935D00;
  LOWORD(v46) = 2;
  v41 = 0u;
  v42 = 0u;
  v44 = 0;
  v43 = 0u;
  v40 = &unk_1F0935D00;
  LOWORD(v41) = 2;
  if (!a1)
  {
LABEL_33:
    operator new();
  }

  v36 = 0uLL;
  v37 = 0uLL;
  v39 = 0;
  v38 = 0uLL;
  v35 = &unk_1F0935D00;
  LOWORD(v36) = 2;
  if (a2)
  {
    v3 = *(a1 + 80);
    v4 = v3;
    v5 = v3 >> 5;
    if (v4 >= 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = *(a1 + 84);
    }

    v7 = icu::UnicodeString::doAppend(&v35, (a1 + 72), 0, v6);
    v34 = 45;
    v8 = icu::UnicodeString::doAppend(v7, &v34, 0, 1);
    v9 = 20;
    v10 = 16;
    v11 = 8;
  }

  else
  {
    if (*(a1 + 264))
    {
      v12 = *(a1 + 16);
      v13 = v12;
      v14 = v12 >> 5;
      if (v13 >= 0)
      {
        v15 = v14;
      }

      else
      {
        v15 = *(a1 + 20);
      }

      v8 = &v35;
      v16 = icu::UnicodeString::doAppend(&v35, (a1 + 8), 0, v15);
      v34 = 45;
      icu::UnicodeString::doAppend(v16, &v34, 0, 1);
    }

    else
    {
      icu::UnicodeString::operator=(&v40, (a1 + 8));
      v34 = 45;
      icu::UnicodeString::doAppend(&v40, &v34, 0, 1);
      v8 = &v35;
    }

    v9 = 84;
    v10 = 80;
    v11 = 72;
  }

  v17 = *(a1 + v10);
  v18 = v17;
  v19 = v17 >> 5;
  v20 = *(a1 + v9);
  if (v18 >= 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  icu::UnicodeString::doAppend(v8, (a1 + v11), 0, v21);
  v22 = *(a1 + 144);
  if ((v22 & 0x8000) != 0)
  {
    if (!*(a1 + 148))
    {
      goto LABEL_23;
    }
  }

  else if (!(v22 >> 5))
  {
    goto LABEL_23;
  }

  v34 = 47;
  v23 = icu::UnicodeString::doAppend(&v35, &v34, 0, 1);
  v24 = *(a1 + 144);
  v25 = v24;
  v26 = v24 >> 5;
  if (v25 >= 0)
  {
    v27 = v26;
  }

  else
  {
    v27 = *(a1 + 148);
  }

  icu::UnicodeString::doAppend(v23, (a1 + 136), 0, v27);
LABEL_23:
  icu::UnicodeString::operator=(&v45, &v40);
  if ((v36 & 0x8000u) == 0)
  {
    v28 = v36 >> 5;
  }

  else
  {
    v28 = DWORD1(v36);
  }

  icu::UnicodeString::doAppend(&v45, &v35, 0, v28);
  v29 = *(a1 + 208);
  if ((v29 & 0x8000) != 0)
  {
    if (*(a1 + 212))
    {
      goto LABEL_28;
    }
  }

  else if (v29 >> 5)
  {
LABEL_28:
    v30 = v29;
    v31 = v29 >> 5;
    if (v30 >= 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = *(a1 + 212);
    }

    icu::UnicodeString::doReplace(&v35, 0, 0, (a1 + 200), 0, v32);
  }

  icu::UnicodeString::operator=(&v50, &v35);
  icu::UnicodeString::~UnicodeString(v33, &v35);
  goto LABEL_33;
}

uint64_t sub_1953E8E28(uint64_t a1, int *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = v4;
  v6 = v4 >> 5;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(a1 + 20);
  }

  if (icu::UnicodeString::doCaseCompare(a1 + 8, 0, v7, L"Any", 0, 3, 0))
  {
    v8 = 0;
  }

  else
  {
    v8 = *a2 <= 0;
  }

  if (v8)
  {
    if (atomic_load_explicit(&dword_1EAECA288, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAECA288))
    {
      sub_1953EA33C();
    }

    if (dword_1EAECA28C < 1)
    {
      if (*a2 <= 0)
      {
        umtx_lock(&unk_1ED4431A8);
        v11 = uhash_get(*qword_1EAECA280, a1 + 72);
        umtx_unlock(&unk_1ED4431A8);
        if (v11)
        {
          v43 = 0u;
          v46 = 0;
          v45 = 0u;
          v44 = 0u;
          v42 = &unk_1F0935D00;
          LOWORD(v43) = 2;
          v12 = *(a1 + 208);
          v13 = v12;
          v14 = v12 >> 5;
          if (v13 >= 0)
          {
            v15 = v14;
          }

          else
          {
            v15 = *(a1 + 212);
          }

          if (v15)
          {
            icu::UnicodeString::doAppend(&v42, (a1 + 200), 0, v15);
          }

          if (*(a1 + 264))
          {
            v16 = icu::UnicodeString::doAppend(&v42, L"Any", 0, 3);
            LOWORD(v41[0]) = 45;
            icu::UnicodeString::doAppend(v16, v41, 0, 1);
          }

          v17 = *(v11 + 8);
          v18 = v17;
          v19 = v17 >> 5;
          if (v18 >= 0)
          {
            v20 = v19;
          }

          else
          {
            v20 = *(v11 + 12);
          }

          icu::UnicodeString::doAppend(&v42, v11, 0, v20);
          memset(v41, 0, sizeof(v41));
          v39 = L"Any";
          icu::UnicodeString::UnicodeString(v41, 1, &v39);
          v40 = 45;
          v21 = icu::UnicodeString::doAppend(v41, &v40, 0, 1);
          v22 = *(v11 + 8);
          v23 = v22;
          v24 = v22 >> 5;
          if (v23 >= 0)
          {
            v25 = v24;
          }

          else
          {
            v25 = *(v11 + 12);
          }

          icu::UnicodeString::doAppend(v21, v11, 0, v25);
          v26 = *(a1 + 144);
          v27 = v26;
          v28 = v26 >> 5;
          if (v27 < 0)
          {
            v28 = *(a1 + 148);
          }

          if (v28)
          {
            v40 = 47;
            v29 = icu::UnicodeString::doAppend(&v42, &v40, 0, 1);
            v30 = *(a1 + 144);
            v31 = v30;
            v32 = v30 >> 5;
            if (v31 >= 0)
            {
              v33 = v32;
            }

            else
            {
              v33 = *(a1 + 148);
            }

            icu::UnicodeString::doAppend(v29, (a1 + 136), 0, v33);
            v40 = 47;
            v34 = icu::UnicodeString::doAppend(v41, &v40, 0, 1);
            v35 = *(a1 + 144);
            v36 = v35;
            v37 = v35 >> 5;
            if (v36 >= 0)
            {
              v38 = v37;
            }

            else
            {
              v38 = *(a1 + 148);
            }

            icu::UnicodeString::doAppend(v34, (a1 + 136), 0, v38);
          }

          operator new();
        }
      }
    }

    else
    {
      *a2 = dword_1EAECA28C;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1953E9194(uint64_t a1, const icu::UnicodeString *a2)
{
  v3 = *a2;
  v4 = sub_1953E84B0(a1, a2, 1);
  if (v4)
  {
    sub_1953E8AC4(v4, 0);
  }

  *a2 = v3;
  return 0;
}

uint64_t sub_1953E9230(icu::ICU_Utility *this, icu::UnicodeString *a2, uint64_t a3, _DWORD *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  if (*a4 == 1)
  {
    if (!icu::ICU_Utility::parseChar(this, a2, 40))
    {
      *a2 = v6;
      goto LABEL_7;
    }
  }

  else if (*a4 == -1)
  {
    *a4 = icu::ICU_Utility::parseChar(this, a2, 40);
  }

  icu::ICU_Utility::skipWhitespace(this, a2, 1);
  if (icu::UnicodeSet::resemblesPattern(this, *a2))
  {
    v9 = *a2;
    operator new();
  }

LABEL_7:
  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_1953E95C8(uint64_t a1, uint64_t a2, uint64_t a3, icu::UVector *this, icu::UnicodeSet **a5)
{
  v33 = 0;
  v34 = U_ZERO_ERROR;
  icu::UVector::removeAllElements(this);
  v10 = icu::UVector::setDeleter(this, sub_1953E98F8);
  *a5 = 0;
  v11 = *(a3 + 8);
  if (v11)
  {
    icu::UnicodeString::unBogus(a3);
  }

  else
  {
    if ((v11 & 0x8000u) == 0)
    {
      v12 = v11 >> 5;
    }

    else
    {
      v12 = *(a3 + 12);
    }

    if (v12)
    {
      *(a3 + 8) &= 0x1Eu;
    }
  }

  v32 = 0;
  v13 = sub_1953E9230(a1, &v33, a2, &v32);
  if (v13)
  {
    v14 = v13;
    if (icu::ICU_Utility::parseChar(a1, &v33, 59))
    {
      if (a2)
      {
LABEL_11:
        icu::UnicodeSet::~UnicodeSet(v14);
        MEMORY[0x19A8B2600]();
        goto LABEL_21;
      }
    }

    else
    {
      v15 = *(a3 + 8);
      if (v15)
      {
        icu::UnicodeString::unBogus(a3);
      }

      else
      {
        if ((v15 & 0x8000u) == 0)
        {
          v16 = v15 >> 5;
        }

        else
        {
          v16 = *(a3 + 12);
        }

        if (v16)
        {
          *(a3 + 8) &= 0x1Eu;
        }
      }

      v33 = 0;
      if (a2)
      {
        goto LABEL_11;
      }
    }

    *a5 = v14;
    goto LABEL_21;
  }

  do
  {
LABEL_21:
    v17 = sub_1953E8194(a1, &v33, a2, &v34);
    if (!v17)
    {
      break;
    }

    if (a2)
    {
      icu::UVector::insertElementAt(this, v17, 0, &v34);
    }

    else
    {
      icu::UVector::adoptElement(this, v17, &v34);
    }

    if (v34 > U_ZERO_ERROR)
    {
      goto LABEL_41;
    }
  }

  while (icu::ICU_Utility::parseChar(a1, &v33, 59));
  v18 = *(this + 2);
  if (v18)
  {
    if (v18 >= 1)
    {
      for (i = 0; i < v25; ++i)
      {
        v20 = icu::UVector::elementAt(this, i);
        v21 = *(v20 + 16);
        v22 = v21;
        v23 = v21 >> 5;
        if (v22 >= 0)
        {
          v24 = v23;
        }

        else
        {
          v24 = *(v20 + 20);
        }

        icu::UnicodeString::doAppend(a3, (v20 + 8), 0, v24);
        v25 = *(this + 2);
        if (i != v25 - 1)
        {
          v35 = 59;
          icu::UnicodeString::doAppend(a3, &v35, 0, 1);
          v25 = *(this + 2);
        }
      }
    }

    if (!v17)
    {
      v32 = 1;
      v30 = sub_1953E9230(a1, &v33, a2, &v32);
      if (v30)
      {
        v31 = v30;
        icu::ICU_Utility::parseChar(a1, &v33, 59);
        if (a2 == 1)
        {
          *a5 = v31;
        }

        else
        {
          icu::UnicodeSet::~UnicodeSet(v31);
          MEMORY[0x19A8B2600]();
        }
      }
    }

    icu::ICU_Utility::skipWhitespace(a1, &v33, 1);
    v26 = *(a1 + 8);
    v27 = v26;
    v28 = v26 >> 5;
    if (v27 < 0)
    {
      v28 = *(a1 + 12);
    }

    if (v33 == v28)
    {
      icu::UVector::setDeleter(this, v10);
      return 1;
    }
  }

LABEL_41:
  icu::UVector::removeAllElements(this);
  icu::UVector::setDeleter(this, v10);
  if (*a5)
  {
    icu::UnicodeSet::~UnicodeSet(*a5);
    MEMORY[0x19A8B2600]();
  }

  result = 0;
  *a5 = 0;
  return result;
}

uint64_t sub_1953E98F8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    icu::UnicodeString::~UnicodeString((result + 136));
    icu::UnicodeString::~UnicodeString((v1 + 72));
    icu::UnicodeString::~UnicodeString((v1 + 8));

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

void sub_1953E995C(icu::UVector *a1, UErrorCode *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  icu::UVector::UVector(v17, a2);
  if (*a2 > 0)
  {
    goto LABEL_2;
  }

  icu::UVector::setDeleter(v17, sub_1953E9B7C);
  if (*(a1 + 2) >= 1)
  {
    for (i = 0; i < *(a1 + 2); ++i)
    {
      v8 = icu::UVector::elementAt(a1, i);
      v11 = *(v8 + 80);
      if ((v11 & 0x8000) != 0)
      {
        if (!*(v8 + 84))
        {
          continue;
        }
      }

      else if (!(v11 >> 5))
      {
        continue;
      }

      v12 = sub_1953E803C(v8, v9, v10);
      if (!v12)
      {
        *a2 = U_INVALID_ID;
        goto LABEL_2;
      }

      icu::UVector::adoptElement(v17, v12, a2);
      if (*a2 > 0)
      {
        goto LABEL_2;
      }
    }
  }

  if (!DWORD2(v17[0]))
  {
    v16 = "A";
    icu::UnicodeString::UnicodeString(v19, 1, &v16);
    BasicInstance = icu::Transliterator::createBasicInstance(v19, 0, v13);
    icu::UnicodeString::~UnicodeString(v15, v19);
    if (!BasicInstance)
    {
      *a2 = U_INTERNAL_TRANSLITERATOR_ERROR;
    }

    icu::UVector::adoptElement(v17, BasicInstance, a2);
  }

LABEL_2:
  v4 = icu::UVector::setDeleter(a1, sub_1953E98F8);
  icu::UVector::removeAllElements(a1);
  if (*a2 <= 0)
  {
    icu::UVector::setDeleter(a1, sub_1953E9B7C);
    while (SDWORD2(v17[0]) >= 1)
    {
      v5 = icu::UVector::orphanElementAt(v17, 0);
      icu::UVector::adoptElement(a1, v5, a2);
      if (*a2 >= 1)
      {
        icu::UVector::removeAllElements(a1);
        break;
      }
    }
  }

  icu::UVector::setDeleter(a1, v4);
  icu::UVector::~UVector(v17);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1953E9B7C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1953E9BA8(uint64_t a1, icu::UnicodeString *this, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  icu::UnicodeString::unBogus(this);
  v10 = *(this + 4);
  v11 = v10;
  v12 = v10 >> 5;
  if (v11 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(this + 3);
  }

  icu::UnicodeString::doReplace(this, 0, v13, L"Any", 0, 3);
  v14 = *(a3 + 8);
  if (v14)
  {
    icu::UnicodeString::unBogus(a3);
  }

  else
  {
    if ((v14 & 0x8000u) == 0)
    {
      v15 = v14 >> 5;
    }

    else
    {
      v15 = *(a3 + 12);
    }

    if (v15)
    {
      *(a3 + 8) &= 0x1Eu;
    }
  }

  v16 = *(a4 + 8);
  if (v16)
  {
    icu::UnicodeString::unBogus(a4);
  }

  else
  {
    if ((v16 & 0x8000u) == 0)
    {
      v17 = v16 >> 5;
    }

    else
    {
      v17 = *(a4 + 12);
    }

    if (v17)
    {
      *(a4 + 8) &= 0x1Eu;
    }
  }

  v18 = *(a1 + 8);
  v19 = v18;
  v20 = v18 >> 5;
  if (v19 >= 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = *(a1 + 12);
  }

  v22 = icu::UnicodeString::doIndexOf(a1, 0x2Du, 0, v21);
  v23 = *(a1 + 8);
  v24 = v23;
  v25 = v23 >> 5;
  if (v24 >= 0)
  {
    v26 = v25;
  }

  else
  {
    v26 = *(a1 + 12);
  }

  v27 = icu::UnicodeString::doIndexOf(a1, 0x2Fu, 0, v26);
  if ((v27 & 0x80000000) != 0)
  {
    if (*(a1 + 8) < 0)
    {
      v27 = *(a1 + 12);
    }

    else
    {
      v27 = *(a1 + 8) >> 5;
    }
  }

  *a5 = 0;
  if ((v22 & 0x80000000) != 0)
  {
    (*(*a1 + 24))(a1, 0, v27, a3);
    v28 = *(a1 + 8);
    v29 = v28;
    v30 = v28 >> 5;
    if (v29 >= 0)
    {
      v31 = v30;
    }

    else
    {
      v31 = *(a1 + 12);
    }

    v32 = *(*a1 + 24);
LABEL_42:
    v36 = a1;
    v37 = v27;
    v38 = a4;
    goto LABEL_47;
  }

  if (v22 < v27)
  {
    if (v22)
    {
      (*(*a1 + 24))(a1, 0, v22, this);
      *a5 = 1;
    }

    (*(*a1 + 24))(a1, (v22 + 1), v27, a3);
    v33 = *(a1 + 8);
    v34 = v33;
    v35 = v33 >> 5;
    if (v34 >= 0)
    {
      v31 = v35;
    }

    else
    {
      v31 = *(a1 + 12);
    }

    v32 = *(*a1 + 24);
    goto LABEL_42;
  }

  if (v27 > 0)
  {
    (*(*a1 + 24))(a1, 0, v27, this);
    *a5 = 1;
  }

  (*(*a1 + 24))(a1, v27, v22, a4);
  v39 = *(a1 + 8);
  v40 = v39;
  v41 = v39 >> 5;
  if (v40 >= 0)
  {
    v31 = v41;
  }

  else
  {
    v31 = *(a1 + 12);
  }

  v32 = *(*a1 + 24);
  v37 = (v22 + 1);
  v36 = a1;
  v38 = a3;
LABEL_47:
  result = v32(v36, v37, v31, v38);
  v43 = *(a4 + 8);
  v44 = v43;
  v45 = v43 >> 5;
  if (v44 < 0)
  {
    v45 = *(a4 + 12);
  }

  if (v45 >= 1)
  {

    return icu::UnicodeString::doReplace(a4, 0, 1, 0, 0, 0);
  }

  return result;
}

uint64_t sub_1953E9F58(UChar **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  icu::UnicodeString::operator=(a4, a1);
  v7 = *(a4 + 8);
  v8 = v7;
  v9 = v7 >> 5;
  if (v8 < 0)
  {
    v9 = *(a4 + 12);
  }

  if (!v9)
  {
    icu::UnicodeString::unBogus(a4);
    v10 = *(a4 + 8);
    v11 = v10;
    v12 = v10 >> 5;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = *(a4 + 12);
    }

    icu::UnicodeString::doReplace(a4, 0, v13, L"Any", 0, 3);
  }

  v31 = 45;
  v14 = icu::UnicodeString::doAppend(a4, &v31, 0, 1);
  v15 = *(a2 + 8);
  v16 = v15;
  v17 = v15 >> 5;
  if (v16 >= 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = *(a2 + 12);
  }

  icu::UnicodeString::doAppend(v14, a2, 0, v18);
  v19 = *(a3 + 8);
  v20 = v19;
  v21 = v19 >> 5;
  if (v20 < 0)
  {
    v21 = *(a3 + 12);
  }

  if (v21)
  {
    v32 = 47;
    v22 = icu::UnicodeString::doAppend(a4, &v32, 0, 1);
    v23 = *(a3 + 8);
    v24 = v23;
    v25 = v23 >> 5;
    if (v24 >= 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = *(a3 + 12);
    }

    icu::UnicodeString::doAppend(v22, a3, 0, v26);
  }

  v33 = 0;
  result = icu::UnicodeString::doAppend(a4, &v33, 0, 1);
  v28 = *(a4 + 8);
  if (*(a4 + 8) < 0)
  {
    v29 = *(a4 + 12);
  }

  else
  {
    v29 = v28 >> 5;
  }

  v30 = v29 - 1;
  if ((v28 & 1) != 0 && v29 == 1)
  {
    return icu::UnicodeString::unBogus(a4);
  }

  if (v29 > v30)
  {
    if (v30 > 1023)
    {
      *(a4 + 8) = v28 | 0xFFE0;
      *(a4 + 12) = v30;
    }

    else
    {
      *(a4 + 8) = *(a4 + 8) & 0x1F | (32 * v30);
    }
  }

  return result;
}

uint64_t sub_1953EA100(uint64_t result, uint64_t a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    v7 = result;
    if (atomic_load_explicit(&dword_1EAECA288, memory_order_acquire) != 2)
    {
      result = icu::umtx_initImplPreInit(&dword_1EAECA288);
      if (result)
      {
        sub_1953EA33C();
      }
    }

    if (dword_1EAECA28C < 1)
    {
      if (*a4 <= 0)
      {
        if (a3)
        {
          v8 = *(v7 + 8);
          v9 = *(a2 + 8);
          if ((v9 & 1) == 0)
          {
            v10 = v8;
            v11 = v8 >> 5;
            if (v10 >= 0)
            {
              v12 = v11;
            }

            else
            {
              v12 = *(v7 + 12);
            }

            if ((v9 & 0x8000u) == 0)
            {
              v13 = v9 >> 5;
            }

            else
            {
              v13 = *(a2 + 12);
            }

            if ((v9 & 2) != 0)
            {
              v14 = a2 + 10;
            }

            else
            {
              v14 = *(a2 + 24);
            }

            icu::UnicodeString::doCaseCompare(v7, 0, v12, v14, v13 & (v13 >> 31), v13 & ~(v13 >> 31), 0);
          }

          umtx_lock(qword_1ED4431A8);
          operator new();
        }

        umtx_lock(qword_1ED4431A8);
        operator new();
      }
    }

    else
    {
      *a4 = dword_1EAECA28C;
    }
  }

  return result;
}

void sub_1953EA430()
{
  v0 = qword_1EAECA280;
  if (qword_1EAECA280)
  {
    if (*qword_1EAECA280)
    {
      uhash_close(*qword_1EAECA280);
    }

    MEMORY[0x19A8B2600](v0, 0x10A0C40DD2A5DBALL);
    qword_1EAECA280 = 0;
  }

  atomic_store(0, &dword_1EAECA288);
}

void *sub_1953EA48C(void *a1)
{
  *a1 = &unk_1F0943510;
  v2 = a1[1];
  if (v2)
  {
    free(v2);
  }

  return a1;
}

void sub_1953EA4D8(void *a1)
{
  *a1 = &unk_1F0943510;
  v1 = a1[1];
  if (v1)
  {
    free(v1);
  }

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953EA544(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

icu::TimeZoneFormat *icu::TimeZoneFormat::TimeZoneFormat(icu::TimeZoneFormat *this, char **a2, UErrorCode *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v6 = icu::Format::Format(this);
  *v6 = &unk_1F0943530;
  icu::Locale::Locale((v6 + 41), a2);
  v7 = 0;
  *(this + 35) = 0u;
  *(this + 72) = &unk_1F0935D00;
  *(this + 292) = 2;
  do
  {
    v8 = this + v7;
    *(v8 + 80) = &unk_1F0935D00;
    *(v8 + 324) = 2;
    v7 += 64;
  }

  while (v7 != 384);
  *(this + 133) = &unk_1F0935D00;
  *(this + 536) = 2;
  *(this + 282) = 0;
  *(this + 142) = &unk_1F0935D00;
  *(this + 572) = 2;
  *(this + 150) = &unk_1F0935D00;
  *(this + 604) = 2;
  *(this + 165) = 0;
  *(this + 79) = 0u;
  *(this + 80) = 0u;
  *(this + 81) = 0u;
  v9 = strlen(this + 354);
  if (v9)
  {
    if (v9 > 3)
    {
      *(this + 552) = 0;
    }

    else
    {
      strcpy(this + 552, this + 354);
    }
  }

  else
  {
    v47 = U_ZERO_ERROR;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    ulocimp_addLikelySubtags(*(this + 46), &v47, &v48);
    v11 = this + 552;
    Country = uloc_getCountry(v48, this + 552, 4, &v47);
    if (v47 <= U_ZERO_ERROR)
    {
      v11[Country] = 0;
    }

    else
    {
      *v11 = 0;
    }

    if (BYTE12(v48))
    {
      free(v48);
    }
  }

  *(this + 70) = icu::TimeZoneNames::createInstance(a2, a3, v10);
  if (*a3 <= 0)
  {
    v13 = ures_open("icudt76l-zone", a2[5], a3);
    v14 = ures_getByKeyWithFallback(v13, "zoneStrings", 0, a3);
    v15 = 0;
    v16 = 0;
    if (*a3 <= 0)
    {
      v17 = v14;
      LODWORD(v48) = 0;
      StringByKeyWithFallback = ures_getStringByKeyWithFallback(v14, "gmtFormat", &v48, a3);
      if (v48 <= 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = StringByKeyWithFallback;
      }

      v19 = ures_getStringByKeyWithFallback(v17, "gmtZeroFormat", &v48, a3);
      if (v48 >= 1)
      {
        v46 = v19;
        icu::UnicodeString::setTo((this + 1064), 1, &v46, v48);
      }

      v20 = ures_getStringByKeyWithFallback(v17, "hourFormat", &v48, a3);
      v21 = v48;
      ures_close(v17);
      ures_close(v13);
      if (v21 <= 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = v20;
      }
    }

    v22 = L"GMT{0}";
    if (v16)
    {
      v22 = v16;
    }

    v45 = v22;
    icu::UnicodeString::UnicodeString(&v48, 1, &v45);
    icu::TimeZoneFormat::initGMTPattern(this, &v48, a3);
    icu::UnicodeString::~UnicodeString(v23, &v48);
    if (!v15)
    {
      goto LABEL_27;
    }

    v24 = u_strchr(v15, 0x3Bu);
    if (!v24)
    {
      goto LABEL_27;
    }

    v25 = v24;
    LODWORD(v48) = 0;
    v44 = v15;
    icu::UnicodeString::setTo((this + 640), 0, &v44, (v24 - v15) >> 1);
    v43 = v25 + 1;
    icu::UnicodeString::setTo((this + 768), 1, &v43, -1);
    icu::TimeZoneFormat::expandOffsetPattern((this + 640), (this + 704), &v48, v26);
    icu::TimeZoneFormat::expandOffsetPattern((this + 768), (this + 832), &v48, v27);
    icu::TimeZoneFormat::truncateOffsetPattern((this + 640), (this + 896), &v48, v28);
    icu::TimeZoneFormat::truncateOffsetPattern((this + 768), (this + 960), &v48, v29);
    if (v48 >= 1)
    {
LABEL_27:
      v42 = "+";
      icu::UnicodeString::setTo((this + 896), 1, &v42, -1);
      v41 = L"+H:mm";
      icu::UnicodeString::setTo((this + 640), 1, &v41, -1);
      v40 = L"+H:mm:ss";
      icu::UnicodeString::setTo((this + 704), 1, &v40, -1);
      v39 = "-";
      icu::UnicodeString::setTo((this + 960), 1, &v39, -1);
      v38 = L"-H:mm";
      icu::UnicodeString::setTo((this + 768), 1, &v38, -1);
      v37 = L"-H:mm:ss";
      icu::UnicodeString::setTo((this + 832), 1, &v37, -1);
    }

    icu::TimeZoneFormat::initGMTOffsetPatterns(this, a3);
    Instance = icu::NumberingSystem::createInstance(a2, a3, v30);
    if (Instance)
    {
      v32 = Instance;
      if (icu::NumberingSystem::isAlgorithmic(Instance) || (v50 = 0u, v51 = 0u, v48 = 0u, v49 = 0u, (*(*v32 + 24))(&v48, v32), v33 = icu::TimeZoneFormat::toCodePoints(&v48, (this + 1024), 0xA), icu::UnicodeString::~UnicodeString(v34, &v48), !v33))
      {
        *(this + 132) = 0x3900000038;
        *(this + 64) = *L"0";
        *(this + 65) = *L"4";
      }

      (*(*v32 + 8))(v32);
    }

    else
    {
      *(this + 132) = 0x3900000038;
      *(this + 64) = *L"0";
      *(this + 65) = *L"4";
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return this;
}

uint64_t icu::TimeZoneFormat::initGMTPattern(uint64_t this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v5 = this;
    if (*(a2 + 4) < 0)
    {
      v7 = *(a2 + 3);
      v6 = v7 & (v7 >> 31);
    }

    else
    {
      v6 = 0;
      v7 = *(a2 + 4) >> 5;
    }

    this = icu::UnicodeString::indexOf(a2, L"{0}mm", 0, 3, v6, v7 - v6);
    if ((this & 0x80000000) != 0)
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v8 = this;
      icu::UnicodeString::copyFrom(v5 + 72, a2, 0);
      icu::UnicodeString::tempSubString(a2, 0, v8, v14);
      icu::TimeZoneFormat::unquote(v14, (v5 + 142), v9);
      icu::UnicodeString::~UnicodeString(v10, v14);
      icu::UnicodeString::tempSubString(a2, v8 + 3, 0x7FFFFFFF, v14);
      icu::TimeZoneFormat::unquote(v14, (v5 + 150), v11);
      this = icu::UnicodeString::~UnicodeString(v12, v14);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return this;
}

const icu::UnicodeString *icu::TimeZoneFormat::expandOffsetPattern(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  icu::UnicodeString::setToBogus(a2);
  if (*a3 <= 0)
  {
    if (*(this + 4) < 0)
    {
      v8 = *(this + 3);
      v7 = v8 & (v8 >> 31);
    }

    else
    {
      v7 = 0;
      v8 = *(this + 4) >> 5;
    }

    v9 = icu::UnicodeString::indexOf(this, L"mm", 0, 2, v7, v8 - v7);
    if (v9 < 0)
    {
      *a3 = 1;
    }

    else
    {
      v10 = v9;
      v26 = 0u;
      v27 = 0u;
      v29 = 0;
      v28 = 0u;
      v25 = &unk_1F0935D00;
      LOWORD(v26) = 2;
      icu::UnicodeString::tempSubString(this, 0, v9, &v22);
      if ((v23 & 0x8000u) == 0)
      {
        v11 = v23 >> 5;
      }

      else
      {
        v11 = v24;
      }

      IndexOf = icu::UnicodeString::doLastIndexOf(&v22, 0x48u, 0, v11);
      icu::UnicodeString::~UnicodeString(v13, &v22);
      if ((IndexOf & 0x80000000) == 0)
      {
        icu::UnicodeString::tempSubString(this, IndexOf + 1, v10 - (IndexOf + 1), &v22);
        icu::UnicodeString::operator=(&v25, &v22);
        icu::UnicodeString::~UnicodeString(v14, &v22);
      }

      icu::UnicodeString::tempSubString(this, 0, v10 + 2, &v22);
      icu::UnicodeString::copyFrom(a2, &v22, 0);
      icu::UnicodeString::~UnicodeString(v15, &v22);
      if ((v26 & 0x8000u) == 0)
      {
        v16 = v26 >> 5;
      }

      else
      {
        v16 = DWORD1(v26);
      }

      icu::UnicodeString::doAppend(a2, &v25, 0, v16);
      icu::UnicodeString::doAppend(a2, L"ss", 0, 0xFFFFFFFFLL);
      icu::UnicodeString::tempSubString(this, v10 + 2, 0x7FFFFFFF, &v22);
      if ((v23 & 0x8000u) == 0)
      {
        v17 = v23 >> 5;
      }

      else
      {
        v17 = v24;
      }

      icu::UnicodeString::doAppend(a2, &v22, 0, v17);
      icu::UnicodeString::~UnicodeString(v18, &v22);
      icu::UnicodeString::~UnicodeString(v19, &v25);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
  return a2;
}

icu::UnicodeString *icu::TimeZoneFormat::truncateOffsetPattern(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  v5 = a2;
  v27 = *MEMORY[0x1E69E9840];
  icu::UnicodeString::setToBogus(a2);
  if (*a3 <= 0)
  {
    if (*(this + 4) < 0)
    {
      v8 = *(this + 3);
      v7 = v8 & (v8 >> 31);
    }

    else
    {
      v7 = 0;
      v8 = *(this + 4) >> 5;
    }

    v9 = icu::UnicodeString::indexOf(this, L"mm", 0, 2, v7, v8 - v7);
    if ((v9 & 0x80000000) == 0)
    {
      v10 = v9;
      v23 = 4718664;
      icu::UnicodeString::tempSubString(this, 0, v9, &v24);
      if (v25 < 0)
      {
        v12 = v26;
        v11 = v26 & (v26 >> 31);
      }

      else
      {
        v11 = 0;
        v12 = v25 >> 5;
      }

      IndexOf = icu::UnicodeString::lastIndexOf(&v24, &v23, 0, 2, v11, v12 - v11);
      icu::UnicodeString::~UnicodeString(v14, &v24);
      if ((IndexOf & 0x80000000) == 0)
      {
        v15 = IndexOf + 2;
LABEL_16:
        icu::UnicodeString::tempSubString(this, 0, v15, &v24);
        v5 = icu::UnicodeString::copyFrom(v5, &v24, 0);
        icu::UnicodeString::~UnicodeString(v20, &v24);
        goto LABEL_18;
      }

      icu::UnicodeString::tempSubString(this, 0, v10, &v24);
      if (v25 < 0)
      {
        v17 = v26;
        v16 = v26 & (v26 >> 31);
      }

      else
      {
        v16 = 0;
        v17 = v25 >> 5;
      }

      v18 = icu::UnicodeString::doLastIndexOf(&v24, 0x48u, v16, v17 - v16);
      icu::UnicodeString::~UnicodeString(v19, &v24);
      if ((v18 & 0x80000000) == 0)
      {
        v15 = v18 + 1;
        goto LABEL_16;
      }
    }

    *a3 = 1;
  }

LABEL_18:
  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t icu::TimeZoneFormat::initGMTOffsetPatterns(icu::TimeZoneFormat *this, UErrorCode *a2)
{
  v4 = this + 640;
  v5 = &dword_195493624;
  for (i = 1264; i != 1312; i += 8)
  {
    v7 = *v5++;
    result = icu::TimeZoneFormat::parseOffsetPattern(v4, v7, a2);
    *(this + i) = result;
    v4 += 64;
  }

  if (*a2 < 1)
  {

    return icu::TimeZoneFormat::checkAbuttingHoursAndMinutes(this);
  }

  return result;
}

uint64_t icu::TimeZoneFormat::toCodePoints(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, int *a3)
{
  LODWORD(v3) = a3;
  v7 = 0;
  if (icu::UnicodeString::countChar32(this, 0, 0x7FFFFFFF) == a3)
  {
    if (v3 < 1)
    {
      return 1;
    }

    else
    {
      v8 = 0;
      v3 = v3;
      do
      {
        *a2 = icu::UnicodeString::char32At(v6, this, v8);
        a2 = (a2 + 4);
        v7 = 1;
        v8 = icu::UnicodeString::moveIndex32(this, v8, 1);
        --v3;
      }

      while (v3);
    }
  }

  return v7;
}

uint64_t icu::TimeZoneFormat::TimeZoneFormat(icu::TimeZoneFormat *this, const icu::TimeZoneFormat *a2)
{
  v4 = icu::Format::Format(this, a2);
  *v4 = &unk_1F0943530;
  icu::Locale::Locale((v4 + 41));
  v5 = 0;
  *(this + 35) = 0u;
  *(this + 72) = &unk_1F0935D00;
  *(this + 292) = 2;
  do
  {
    v6 = this + v5;
    *(v6 + 80) = &unk_1F0935D00;
    *(v6 + 324) = 2;
    v5 += 64;
  }

  while (v5 != 384);
  *(this + 133) = &unk_1F0935D00;
  *(this + 536) = 2;
  *(this + 142) = &unk_1F0935D00;
  *(this + 572) = 2;
  *(this + 150) = &unk_1F0935D00;
  *(this + 604) = 2;
  *(this + 165) = 0;
  *(this + 79) = 0u;
  *(this + 80) = 0u;
  *(this + 81) = 0u;

  return icu::TimeZoneFormat::operator=(this, a2);
}

uint64_t icu::TimeZoneFormat::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 560);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a1 + 568);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    *(a1 + 568) = 0;
    v6 = *(a1 + 1320);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(a1 + 1320) = 0;
    icu::Locale::operator=((a1 + 328), a2 + 328);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = (*(**(a2 + 560) + 32))(*(a2 + 560));
    v7 = *(a2 + 568);
    if (v7)
    {
      *(a1 + 568) = (*(*v7 + 32))(v7);
    }

    icu::UnicodeString::operator=((a1 + 576), (a2 + 576));
    icu::UnicodeString::operator=((a1 + 1136), (a2 + 1136));
    icu::UnicodeString::operator=((a1 + 1200), (a2 + 1200));
    v14 = U_ZERO_ERROR;
    v8 = 1264;
    for (i = 640; i != 1024; i += 64)
    {
      icu::UnicodeString::operator=((a1 + i), (a2 + i));
      v10 = *(a1 + v8);
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }

      *(a1 + v8) = 0;
      v8 += 8;
    }

    icu::TimeZoneFormat::initGMTOffsetPatterns(a1, &v14);
    icu::UnicodeString::operator=((a1 + 1064), (a2 + 1064));
    v11 = *(a2 + 1040);
    v12 = *(a2 + 1056);
    *(a1 + 1024) = *(a2 + 1024);
    *(a1 + 1056) = v12;
    *(a1 + 1040) = v11;
    *(a1 + 1128) = *(a2 + 1128);
  }

  return a1;
}

void icu::TimeZoneFormat::~TimeZoneFormat(icu::TimeZoneFormat *this)
{
  *this = &unk_1F0943530;
  v2 = *(this + 70);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 71);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 165);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  for (i = 1264; i != 1312; i += 8)
  {
    v6 = *(this + i);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  icu::UnicodeString::~UnicodeString((this + 1200));
  icu::UnicodeString::~UnicodeString((this + 1136));
  icu::UnicodeString::~UnicodeString((this + 1064));
  for (j = 960; j != 576; j -= 64)
  {
    icu::UnicodeString::~UnicodeString((this + j));
  }

  icu::UnicodeString::~UnicodeString((this + 576));
  icu::Locale::~Locale((this + 328));

  icu::Format::~Format(this);
}

{
  icu::TimeZoneFormat::~TimeZoneFormat(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::TimeZoneFormat::operator==(uint64_t a1, uint64_t a2)
{
  result = icu::Locale::operator==(a1 + 328, a2 + 328);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 584);
  if (v5)
  {
    if ((*(a2 + 584) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((v5 & 0x8000) != 0)
    {
      v6 = *(a1 + 588);
    }

    else
    {
      v6 = v5 >> 5;
    }

    result = 0;
    v7 = *(a2 + 584);
    if ((v7 & 0x8000u) == 0)
    {
      v8 = v7 >> 5;
    }

    else
    {
      v8 = *(a2 + 588);
    }

    if ((v7 & 1) != 0 || v6 != v8)
    {
      return result;
    }

    v9 = (v7 & 2) != 0 ? (a2 + 586) : *(a2 + 600);
    result = icu::UnicodeString::doEquals(a1 + 576, v9, v6);
    if (!result)
    {
      return result;
    }
  }

  v10 = *(a1 + 1072);
  if (v10)
  {
    if ((*(a2 + 1072) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_32;
  }

  if ((v10 & 0x8000) != 0)
  {
    v11 = *(a1 + 1076);
  }

  else
  {
    v11 = v10 >> 5;
  }

  result = 0;
  v12 = *(a2 + 1072);
  if ((v12 & 0x8000u) == 0)
  {
    v13 = v12 >> 5;
  }

  else
  {
    v13 = *(a2 + 1076);
  }

  if ((v12 & 1) == 0 && v11 == v13)
  {
    v14 = (v12 & 2) != 0 ? (a2 + 1074) : *(a2 + 1088);
    result = icu::UnicodeString::doEquals(a1 + 1064, v14, v11);
    if (result)
    {
LABEL_32:
      result = (*(**(a1 + 560) + 24))(*(a1 + 560), *(a2 + 560));
      if (!result)
      {
        return result;
      }

      v15 = 0;
      v16 = 0;
      do
      {
        v17 = *(a1 + v15 + 648);
        if (v17)
        {
          v19 = *(a2 + v15 + 648) & 1;
        }

        else
        {
          if ((v17 & 0x8000) != 0)
          {
            v18 = *(a1 + v15 + 652);
          }

          else
          {
            v18 = v17 >> 5;
          }

          result = 0;
          v20 = *(a2 + v15 + 648);
          v21 = *(a2 + v15 + 652);
          if ((v20 & 0x8000u) == 0)
          {
            v21 = v20 >> 5;
          }

          if ((v20 & 1) != 0 || v18 != v21)
          {
            return result;
          }

          if ((v20 & 2) != 0)
          {
            v22 = (a2 + v15 + 650);
          }

          else
          {
            v22 = *(a2 + v15 + 664);
          }

          v19 = icu::UnicodeString::doEquals(a1 + v15 + 640, v22, v18);
        }

        if (v16 > 4)
        {
          break;
        }

        ++v16;
        v15 += 64;
      }

      while ((v19 & 1) != 0);
      if (v19)
      {
        v23 = 0;
        do
        {
          v24 = *(a1 + 1024 + 4 * v23);
          v25 = *(a2 + 1024 + 4 * v23);
          result = v24 == v25;
          if (v23 > 8)
          {
            break;
          }

          ++v23;
        }

        while (v24 == v25);
        return result;
      }

      return 0;
    }
  }

  return result;
}

uint64_t icu::TimeZoneFormat::adoptTimeZoneNames(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 560);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 560) = a2;
  return result;
}

uint64_t icu::TimeZoneFormat::setTimeZoneNames(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 560);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  result = (*(*a2 + 32))(a2);
  *(a1 + 560) = result;
  return result;
}

uint64_t icu::TimeZoneFormat::setGMTOffsetPattern(uint64_t result, unsigned int a2, uint64_t a3, int *a4)
{
  if (*a4 > 0)
  {
    return result;
  }

  v7 = result;
  v8 = a2;
  v9 = (result + (a2 << 6) + 640);
  v10 = *(a3 + 8);
  if (v10)
  {
    if (*(result + (a2 << 6) + 648))
    {
      return result;
    }
  }

  else
  {
    v11 = v10;
    v12 = v10 >> 5;
    if (v11 >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = *(a3 + 12);
    }

    v14 = *(result + (a2 << 6) + 648);
    if ((v14 & 0x8000u) == 0)
    {
      v15 = v14 >> 5;
    }

    else
    {
      v15 = *(result + (a2 << 6) + 652);
    }

    if ((v14 & 1) == 0 && v13 == v15)
    {
      v16 = (v14 & 2) != 0 ? (result + (a2 << 6) + 650) : *(result + (a2 << 6) + 664);
      result = icu::UnicodeString::doEquals(a3, v16, v13);
      if (result)
      {
        return result;
      }
    }
  }

  if (a2 >= 6)
  {
    abort();
  }

  result = icu::TimeZoneFormat::parseOffsetPattern(a3, dword_195493624[a2], a4);
  if (result)
  {
    v17 = result;
    icu::UnicodeString::copyFrom(v9, a3, 0);
    v18 = *(v7 + 1264 + 8 * v8);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    *(v7 + 1264 + 8 * v8) = v17;

    return icu::TimeZoneFormat::checkAbuttingHoursAndMinutes(v7);
  }

  return result;
}

uint64_t icu::TimeZoneFormat::parseOffsetPattern(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    operator new();
  }

  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t icu::TimeZoneFormat::checkAbuttingHoursAndMinutes(uint64_t this)
{
  v1 = this;
  v2 = 0;
  *(this + 1312) = 0;
  v3 = this + 1264;
  do
  {
    v4 = *(v3 + 8 * v2);
    if (*(v4 + 2) >= 1)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        this = icu::UVector::elementAt(v4, v5);
        v7 = *(this + 16);
        if (v7)
        {
          if (v6)
          {
            *(v1 + 1312) = 1;
            return this;
          }

          v6 = v7 == 1;
        }

        else
        {
          if (v6)
          {
            break;
          }

          v6 = 0;
        }

        ++v5;
      }

      while (v5 < *(v4 + 2));
      if (*(v1 + 1312))
      {
        return this;
      }
    }

    ++v2;
  }

  while (v2 != 6);
  return this;
}

icu::UnicodeString *icu::TimeZoneFormat::getGMTOffsetDigits(icu::TimeZoneFormat *this, icu::UnicodeString *a2)
{
  v3 = 0;
  if (*(a2 + 4))
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a2 + 4) & 0x1E;
  }

  *(a2 + 4) = v4;
  v5 = this + 1024;
  do
  {
    icu::UnicodeString::append(a2, *&v5[v3]);
    v3 += 4;
  }

  while (v3 != 40);
  return a2;
}

uint64_t icu::TimeZoneFormat::setGMTOffsetDigits(uint64_t this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    v4 = this;
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    this = icu::TimeZoneFormat::toCodePoints(a2, &v7, 0xA);
    if (this)
    {
      v5 = v8;
      *(v4 + 1024) = v7;
      *(v4 + 1040) = v5;
      *(v4 + 1056) = v9;
    }

    else
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return this;
}

icu::UnicodeString *icu::TimeZoneFormat::setGMTZeroFormat(icu::UnicodeString *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return this;
  }

  v4 = *(a2 + 4);
  if (v4 <= 0x1F)
  {
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    return this;
  }

  v5 = this;
  if (v4)
  {
    if (*(this + 536))
    {
      return this;
    }

    goto LABEL_20;
  }

  v6 = v4;
  v7 = v4 >> 5;
  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(a2 + 3);
  }

  v9 = *(this + 536);
  if ((v9 & 0x8000u) == 0)
  {
    v10 = v9 >> 5;
  }

  else
  {
    v10 = *(this + 269);
  }

  if ((v9 & 1) != 0 || v8 != v10 || ((v9 & 2) != 0 ? (v11 = this + 1074) : (v11 = *(this + 136)), this = icu::UnicodeString::doEquals(a2, v11, v8), !this))
  {
LABEL_20:

    return icu::UnicodeString::copyFrom((v5 + 1064), a2, 0);
  }

  return this;
}

uint64_t icu::TimeZoneFormat::format(icu::TimeZoneFormat *a1, const icu::TimeZone *a2, uint64_t a3, uint64_t a4, int *a5, double a6)
{
  v10 = a2;
  if (a5)
  {
    *a5 = 0;
  }

  if (a2 > 3)
  {
    if (a2 > 17)
    {
      if (a2 == 18)
      {
        ShortID = icu::ZoneMeta::getShortID(a3, a2);
        if (ShortID)
        {
          v22 = ShortID;
        }

        else
        {
          v22 = L"unk";
        }

        icu::UnicodeString::unBogus(a4);
        v23 = *(a4 + 8);
        v24 = v23;
        v25 = v23 >> 5;
        if (v24 >= 0)
        {
          v26 = v25;
        }

        else
        {
          v26 = *(a4 + 12);
        }

        icu::UnicodeString::doReplace(a4, 0, v26, v22, 0, 0xFFFFFFFFLL);
        return a4;
      }

      if (a2 == 19)
      {
        icu::TimeZoneFormat::formatExemplarLocation(a1, a3, a4);
        return a4;
      }

      goto LABEL_22;
    }

    if (a2 != 4)
    {
      if (a2 == 17)
      {
        icu::UnicodeString::operator=(a4, (a3 + 8));
        return a4;
      }

      goto LABEL_22;
    }

    v14 = a3;
    v15 = 16;
    v16 = 32;
LABEL_19:
    icu::TimeZoneFormat::formatSpecific(a1, v14, v15, v16, a4, a5, a6);
    goto LABEL_22;
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v12 = a3;
      v13 = 4;
      goto LABEL_21;
    }

    v14 = a3;
    v15 = 2;
    v16 = 4;
    goto LABEL_19;
  }

  if (!a2)
  {
    v12 = a3;
    v13 = 1;
    goto LABEL_21;
  }

  if (a2 == 1)
  {
    v12 = a3;
    v13 = 2;
LABEL_21:
    icu::TimeZoneFormat::formatGeneric(a1, v12, v13, a6, a4);
  }

LABEL_22:
  if (*(a4 + 8) <= 0x1Fu)
  {
    *v36 = 0;
    v35 = 0;
    v17 = (*(*a3 + 48))(a3, 0, v36, &v35, &v36[1], a6);
    if (v36[1] <= U_ZERO_ERROR)
    {
      switch(v10)
      {
        case 0:
        case 1:
        case 3:
        case 5:
          v18 = v35 + v36[0];
          v19 = a1;
          v20 = 0;
          goto LABEL_34;
        case 2:
        case 4:
        case 6:
          v18 = v35 + v36[0];
          v19 = a1;
          v20 = 1;
LABEL_34:
          icu::TimeZoneFormat::formatOffsetLocalizedGMT(v19, v18, v20, a4, &v36[1]);
          break;
        case 7:
          v27 = v35 + v36[0];
          v28 = 1;
          v29 = 1;
          goto LABEL_41;
        case 8:
          v27 = v35 + v36[0];
          v28 = 1;
          v29 = 0;
LABEL_41:
          v30 = 1;
          goto LABEL_46;
        case 9:
          v27 = v35 + v36[0];
          v28 = 1;
          v29 = 1;
          v30 = 0;
LABEL_46:
          v31 = a4;
          v32 = 1;
          goto LABEL_53;
        case 10:
          v27 = v35 + v36[0];
          v28 = 1;
          goto LABEL_38;
        case 11:
          v27 = v35 + v36[0];
          v28 = 1;
          goto LABEL_48;
        case 12:
          v27 = v35 + v36[0];
          v28 = 1;
          goto LABEL_44;
        case 13:
          v27 = v35 + v36[0];
          v28 = 0;
          v29 = 1;
          goto LABEL_51;
        case 14:
          v27 = v35 + v36[0];
          v28 = 0;
LABEL_38:
          v29 = 0;
LABEL_51:
          v30 = 0;
          v32 = 1;
          goto LABEL_52;
        case 15:
          v27 = v35 + v36[0];
          v28 = 0;
LABEL_48:
          v29 = 1;
          goto LABEL_49;
        case 16:
          v27 = v35 + v36[0];
          v28 = 0;
LABEL_44:
          v29 = 0;
LABEL_49:
          v30 = 0;
          v32 = 0;
LABEL_52:
          v31 = a4;
LABEL_53:
          icu::TimeZoneFormat::formatOffsetISO8601(v17, v27, v28, v29, v30, v32, v31, &v36[1]);
          break;
        default:
          break;
      }

      if (a5)
      {
        if (v35)
        {
          v33 = 2;
        }

        else
        {
          v33 = 1;
        }

        *a5 = v33;
      }
    }
  }

  return a4;
}

icu::UnicodeString *icu::TimeZoneFormat::formatGeneric(icu::TimeZoneFormat *this, const icu::TimeZone *a2, int a3, double a4, icu::UnicodeString *DisplayName)
{
  v19 = *MEMORY[0x1E69E9840];
  v17 = U_ZERO_ERROR;
  TimeZoneGenericNames = icu::TimeZoneFormat::getTimeZoneGenericNames(this, &v17);
  if (v17 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    goto LABEL_2;
  }

  v11 = TimeZoneGenericNames;
  if (a3 != 1)
  {
    DisplayName = icu::TimeZoneGenericNames::getDisplayName(TimeZoneGenericNames, a2, a3, DisplayName, a4);
    goto LABEL_7;
  }

  CanonicalCLDRID = icu::ZoneMeta::getCanonicalCLDRID(a2, v10);
  if (CanonicalCLDRID)
  {
    v16 = CanonicalCLDRID;
    icu::UnicodeString::UnicodeString(v18, 1, &v16);
    DisplayName = icu::TimeZoneGenericNames::getGenericLocationName(v11, v18, DisplayName);
    icu::UnicodeString::~UnicodeString(v13, v18);
  }

  else
  {
LABEL_2:
    icu::UnicodeString::setToBogus(DisplayName);
  }

LABEL_7:
  v14 = *MEMORY[0x1E69E9840];
  return DisplayName;
}

icu::UnicodeString *icu::TimeZoneFormat::formatSpecific(uint64_t a1, icu::ZoneMeta *a2, uint64_t a3, uint64_t a4, icu::UnicodeString *this, int *a6, double a7)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 560) || ((v26 = 0, v14 = (*(*a2 + 80))(a2, &v26), CanonicalCLDRID = icu::ZoneMeta::getCanonicalCLDRID(a2, v15), v26 <= 0) ? (v17 = CanonicalCLDRID == 0) : (v17 = 1), v17))
  {
    icu::UnicodeString::setToBogus(this);
  }

  else
  {
    v20 = *(a1 + 560);
    if (v14)
    {
      v25 = CanonicalCLDRID;
      icu::UnicodeString::UnicodeString(v27, 1, &v25);
      (*(*v20 + 96))(v20, v27, a4, this, a7);
      icu::UnicodeString::~UnicodeString(v21, v27);
      if (!a6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v24 = CanonicalCLDRID;
      icu::UnicodeString::UnicodeString(v27, 1, &v24);
      (*(*v20 + 96))(v20, v27, a3, this, a7);
      icu::UnicodeString::~UnicodeString(v22, v27);
      if (!a6)
      {
        goto LABEL_8;
      }
    }

    if (*(this + 4) >= 0x20u)
    {
      if (v14)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      *a6 = v23;
    }
  }

LABEL_8:
  v18 = *MEMORY[0x1E69E9840];
  return this;
}

UChar **icu::TimeZoneFormat::formatExemplarLocation(icu::TimeZoneFormat *this, const icu::TimeZone *a2, UChar **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  icu::UnicodeString::UnicodeString(v24, v25, 0, 128);
  CanonicalCLDRID = icu::ZoneMeta::getCanonicalCLDRID(a2, v6);
  if (CanonicalCLDRID)
  {
    v8 = *(this + 70);
    v22 = CanonicalCLDRID;
    icu::UnicodeString::UnicodeString(v23, 1, &v22);
    (*(*v8 + 88))(v8, v23, v24);
    icu::UnicodeString::~UnicodeString(v9, v23);
  }

  v10 = WORD4(v24[0]) >> 5;
  if (SWORD4(v24[0]) < 0)
  {
    v10 = HIDWORD(v24[0]);
  }

  if (v10 >= 1)
  {
    goto LABEL_9;
  }

  v11 = *(this + 70);
  v21 = L"Etc/Unknown";
  icu::UnicodeString::UnicodeString(v23, 1, &v21);
  (*(*v11 + 88))(v11, v23, v24);
  icu::UnicodeString::~UnicodeString(v12, v23);
  v13 = WORD4(v24[0]) >> 5;
  if (SWORD4(v24[0]) < 0)
  {
    v13 = HIDWORD(v24[0]);
  }

  if (v13 < 1)
  {
    icu::UnicodeString::unBogus(a3);
    v17 = *(a3 + 4);
    v18 = v17;
    v19 = v17 >> 5;
    if (v18 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = *(a3 + 3);
    }

    icu::UnicodeString::doReplace(a3, 0, v20, L"Unknown", 0, 0xFFFFFFFFLL);
  }

  else
  {
LABEL_9:
    icu::UnicodeString::copyFrom(a3, v24, 0);
  }

  icu::UnicodeString::~UnicodeString(v14, v24);
  v15 = *MEMORY[0x1E69E9840];
  return a3;
}

icu::UnicodeString *icu::TimeZoneFormat::format(icu::TimeZoneFormat *this, const icu::Formattable *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    icu::Calendar::getNow(this);
    TimeInMillis = v10;
    if (icu::Formattable::getType(a2) == 6)
    {
      Object = icu::Formattable::getObject(a2);
      if (Object)
      {
        v13 = Object;
        v14 = *Object;
        v15 = **Object;
        if (v16)
        {
          TimeZone = v16;
        }

        else
        {
          v18 = *v14;
          if (!v19)
          {
            goto LABEL_18;
          }

          v20 = v19;
          TimeZone = icu::Calendar::getTimeZone(v19);
          TimeInMillis = icu::Calendar::getTimeInMillis(v20, a5);
        }

        v25 = 0;
        (*(*TimeZone + 48))(TimeZone, 0, &v25 + 4, &v25, a5, TimeInMillis);
        memset(v27, 0, sizeof(v27));
        memset(v26, 0, sizeof(v26));
        icu::UnicodeString::UnicodeString(v26, v27, 0, 128);
        icu::TimeZoneFormat::formatOffsetLocalizedGMT(this, v25 + HIDWORD(v25), 0, v26, a5);
        v21 = *a5;
        if (v21 <= 0)
        {
          v22 = (SWORD4(v26[0]) & 0x8000u) == 0 ? WORD4(v26[0]) >> 5 : HIDWORD(v26[0]);
          icu::UnicodeString::doAppend(a3, v26, 0, v22);
          v21 = *(a4 + 2);
          if (v21 == 17)
          {
            LODWORD(v21) = WORD4(v26[0]) >> 5;
            if ((SWORD4(v26[0]) & 0x8000u) == 0)
            {
              v21 = v21;
            }

            else
            {
              v21 = HIDWORD(v26[0]);
            }

            *(a4 + 3) = 0;
            *(a4 + 4) = v21;
          }
        }

        icu::UnicodeString::~UnicodeString(v21, v26);
      }
    }
  }

LABEL_18:
  v23 = *MEMORY[0x1E69E9840];
  return a3;
}

uint64_t icu::TimeZoneFormat::parse(icu::TimeZoneFormat *this, unsigned int a2, icu::UnicodeString *a3, _DWORD *a4, unsigned int a5, int *a6)
{
  v6 = a6;
  v7 = a4;
  v118 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    *a6 = 0;
  }

  v11 = a4[2];
  v12 = *(a3 + 4);
  v13 = v12;
  v14 = v12 >> 5;
  if (v13 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(a3 + 3);
  }

  v17 = a2 == 4 || a2 == 2;
  v108 = &unk_1F0932C70;
  v109 = v11;
  v110 = -1;
  if ((a2 > 3 || ((0xBu >> (a2 & 0xF)) & 1) == 0) && a2 != 4 && a2 != 2)
  {
    v24 = 0;
    LODWORD(v18) = 0x7FFFFFFF;
    v23 = -1;
    goto LABEL_21;
  }

  LOBYTE(v117[0]) = 0;
  v18 = icu::TimeZoneFormat::parseOffsetLocalizedGMT(this, a3, &v108, v17, v117);
  if (v110 != -1)
  {
    LODWORD(v18) = 0x7FFFFFFF;
    v23 = -1;
LABEL_20:
    v24 = 96;
LABEL_21:
    v101 = v24;
    v104 = v18;
    v107 = U_ZERO_ERROR;
    memset(v117, 0, sizeof(v117));
    memset(v116, 0, sizeof(v116));
    BestMatch = icu::UnicodeString::UnicodeString(v116, v117, 0, 32);
    v105 = v15;
    v30 = 1;
    v31 = 6;
    switch(a2)
    {
      case 0u:
        goto LABEL_42;
      case 1u:
        v30 = 3;
        goto LABEL_42;
      case 2u:
        v30 = 5;
LABEL_42:
        *v112 = 0;
        TimeZoneGenericNames = icu::TimeZoneFormat::getTimeZoneGenericNames(this, &v107);
        v34 = v107;
        if (v107 > U_ZERO_ERROR || (BestMatch = icu::TimeZoneGenericNames::findBestMatch(TimeZoneGenericNames, a3, v11, v30, v116, v112, &v107), v34 = v107, v107 >= U_ILLEGAL_ARGUMENT_ERROR))
        {
          v31 = 0;
          v7[3] = v11;
          goto LABEL_176;
        }

        v30 = v105;
        if (BestMatch < 1)
        {
LABEL_71:
          v100 = this;
          goto LABEL_72;
        }

        if (v6)
        {
          *v6 = *v112;
        }

        v39 = BestMatch + v11;
LABEL_54:
        v7[2] = v39;
        TimeZone = icu::TimeZone::createTimeZone(v116, v36);
        goto LABEL_75;
      case 3u:
        goto LABEL_31;
      case 4u:
        v31 = 48;
LABEL_31:
        v97 = v7;
        BestMatch = (*(**(this + 70) + 120))(*(this + 70), a3, v11, v31, &v107);
        v33 = BestMatch;
        v34 = v107;
        v100 = this;
        if (v107 >= U_ILLEGAL_ARGUMENT_ERROR)
        {
          v35 = 0;
          v31 = 0;
          v34 = v97;
          v97[3] = v11;
LABEL_33:
          v30 = v105;
          goto LABEL_34;
        }

        if (!BestMatch)
        {
          goto LABEL_122;
        }

        BestMatch = icu::TimeZoneNames::MatchInfoCollection::size(BestMatch);
        if (BestMatch < 1)
        {
          goto LABEL_122;
        }

        v91 = v6;
        v41 = 0;
        v42 = -1;
        do
        {
          v43 = icu::TimeZoneNames::MatchInfoCollection::getMatchLengthAt(v33, v41) + v11;
          if (v43 > v23)
          {
            v23 = v43;
            v42 = v41;
          }

          ++v41;
          BestMatch = icu::TimeZoneNames::MatchInfoCollection::size(v33);
        }

        while (v41 < BestMatch);
        if ((v42 & 0x80000000) == 0)
        {
          v6 = v91;
          if (!v91)
          {
LABEL_197:
            v97[2] = v43;
            icu::TimeZoneFormat::getTimeZoneID(v100, v33, v42, v116);
            BestMatch = icu::TimeZone::createTimeZone(v116, v84);
            v31 = BestMatch;
            v35 = 0;
            goto LABEL_33;
          }

          NameTypeAt = icu::TimeZoneNames::MatchInfoCollection::getNameTypeAt(v33, v42);
          v45 = 1;
          if (NameTypeAt > 15)
          {
            if (NameTypeAt == 16)
            {
              goto LABEL_196;
            }

            if (NameTypeAt != 32)
            {
              goto LABEL_66;
            }
          }

          else
          {
            if (NameTypeAt == 2)
            {
LABEL_196:
              *v91 = v45;
              goto LABEL_197;
            }

            if (NameTypeAt != 4)
            {
LABEL_66:
              v45 = 0;
              goto LABEL_196;
            }
          }

          v45 = 2;
          goto LABEL_196;
        }

        v6 = v91;
LABEL_122:
        v35 = 1;
        v30 = v105;
        if (a2 != 4)
        {
          goto LABEL_34;
        }

        v34 = a5;
        if ((a5 & 2) == 0)
        {
          goto LABEL_34;
        }

        BestMatch = icu::TimeZoneFormat::getTZDBTimeZoneNames(v100, &v107);
        v34 = v107;
        if (v107 > U_ZERO_ERROR)
        {
          goto LABEL_125;
        }

        BestMatch = (*(*BestMatch + 120))(BestMatch, a3, v11, v31, &v107);
        v31 = BestMatch;
        v34 = v107;
        if (v107 >= U_ILLEGAL_ARGUMENT_ERROR)
        {
          v67 = BestMatch;
          v68 = 0;
          v31 = 0;
          v34 = v97;
          v97[3] = v11;
          if (BestMatch)
          {
LABEL_129:
            v95 = v68;
            goto LABEL_130;
          }

LABEL_228:
          if (!v68)
          {
LABEL_229:
            v35 = 0;
LABEL_34:
            if (v33)
            {
              BestMatch = (*(*v33 + 1))(v33);
            }

            v7 = v97;
            if ((v35 & 1) == 0)
            {
              goto LABEL_176;
            }

LABEL_72:
            if (v23 > v11)
            {
              v7[2] = v23;
              v32 = v104;
LABEL_74:
              TimeZone = icu::TimeZoneFormat::createTimeZoneForOffset(BestMatch, v32, v26, v27, v28, v29);
LABEL_75:
              v31 = TimeZone;
              goto LABEL_176;
            }

            v46 = word_19549351C[a2];
            v115 = 0u;
            v113 = 0u;
            v114 = 0u;
            *v112 = 0u;
            memset(v111, 0, sizeof(v111));
            TZDBTimeZoneNames = icu::UnicodeString::UnicodeString(v111, v112, 0, 32);
            if (v23 < v30 && (v46 & 0x180) != 0x180)
            {
              v53 = v6;
              v109 = v11;
              v110 = -1;
              v106[0] = 0;
              TZDBTimeZoneNames = icu::TimeZoneFormat::parseOffsetISO8601(TZDBTimeZoneNames, a3, &v108, 0, v106);
              if (v110 == -1)
              {
                v63 = TZDBTimeZoneNames;
                LODWORD(v54) = v109;
                if (v109 == v30 || v106[0])
                {
                  goto LABEL_106;
                }

                if (v23 < v109)
                {
                  icu::UnicodeString::setToBogus(v111);
                  v23 = v109;
                  v104 = v63;
                }
              }

              v6 = v53;
            }

            v54 = v101;
            if (v23 < v30 && ((v101 | v46) & 0x20) == 0)
            {
              v55 = v6;
              v109 = v11;
              v110 = -1;
              v106[0] = 0;
              TZDBTimeZoneNames = icu::TimeZoneFormat::parseOffsetLocalizedGMT(v100, a3, &v108, 0, v106);
              v54 = v110;
              if (v110 == -1)
              {
                v63 = TZDBTimeZoneNames;
                v54 = v109;
                if (v109 == v30 || v106[0])
                {
                  goto LABEL_106;
                }

                if (v23 < v109)
                {
                  icu::UnicodeString::setToBogus(v111);
                  v23 = v109;
                  v104 = v63;
                }
              }

              v6 = v55;
            }

            if (v23 >= v30 || ((v101 | v46) & 0x40) != 0)
            {
LABEL_88:
              if ((a5 & 1) == 0)
              {
                v57 = 0;
                v58 = v104;
                goto LABEL_165;
              }

              if (v23 >= v30)
              {
                v102 = 0;
                v62 = v23;
                v64 = v100;
                goto LABEL_140;
              }

              v94 = v46;
              v59 = v6;
              TZDBTimeZoneNames = (*(**(v100 + 70) + 120))(*(v100 + 70), a3, v11, 118, &v107);
              v60 = TZDBTimeZoneNames;
              v61 = v107;
              if (v107 >= U_ILLEGAL_ARGUMENT_ERROR)
              {
                v102 = 0;
                v31 = 0;
                v7[3] = v11;
                v62 = v23;
                goto LABEL_136;
              }

              v98 = v7;
              if (TZDBTimeZoneNames && (TZDBTimeZoneNames = icu::TimeZoneNames::MatchInfoCollection::size(TZDBTimeZoneNames), TZDBTimeZoneNames >= 1))
              {
                v65 = 0;
                v62 = -1;
                v66 = -1;
                do
                {
                  if ((icu::TimeZoneNames::MatchInfoCollection::getMatchLengthAt(v60, v65) + v11) > v62)
                  {
                    v62 = icu::TimeZoneNames::MatchInfoCollection::getMatchLengthAt(v60, v65) + v11;
                    v66 = v65;
                  }

                  ++v65;
                  TZDBTimeZoneNames = icu::TimeZoneNames::MatchInfoCollection::size(v60);
                }

                while (v65 < TZDBTimeZoneNames);
              }

              else
              {
                v66 = -1;
                v62 = -1;
              }

              if (v23 >= v62)
              {
                v102 = 0;
                v62 = v23;
                v7 = v98;
                v30 = v105;
                goto LABEL_136;
              }

              icu::TimeZoneFormat::getTimeZoneID(v100, v60, v66, v111);
              TZDBTimeZoneNames = icu::TimeZoneNames::MatchInfoCollection::getNameTypeAt(v60, v66);
              v102 = 1;
              v54 = 0x7FFFFFFFLL;
              v104 = 0x7FFFFFFF;
              v7 = v98;
              if (TZDBTimeZoneNames > 15)
              {
                v30 = v105;
                if (TZDBTimeZoneNames == 16)
                {
                  goto LABEL_136;
                }

                if (TZDBTimeZoneNames != 32)
                {
                  goto LABEL_119;
                }
              }

              else
              {
                v30 = v105;
                if (TZDBTimeZoneNames == 2)
                {
                  goto LABEL_136;
                }

                if (TZDBTimeZoneNames != 4)
                {
LABEL_119:
                  v102 = 0;
LABEL_135:
                  v104 = 0x7FFFFFFF;
LABEL_136:
                  if (v60)
                  {
                    TZDBTimeZoneNames = (*(*v60 + 1))(v60);
                  }

                  v69 = v61 <= U_ZERO_ERROR;
                  v6 = v59;
                  v64 = v100;
                  v46 = v94;
                  if (!v69)
                  {
                    goto LABEL_175;
                  }

LABEL_140:
                  v54 = a5;
                  if ((a5 & 2) == 0 || v62 >= v30 || (v46 & 0x10) != 0 || (TZDBTimeZoneNames = icu::TimeZoneFormat::getTZDBTimeZoneNames(v64, &v107), v54 = v107, v107 > U_ZERO_ERROR))
                  {
                    v23 = v62;
LABEL_145:
                    if (v23 >= v30)
                    {
                      v72 = v6;
                      v58 = v104;
                    }

                    else
                    {
                      *v106 = 0;
                      v70 = icu::TimeZoneFormat::getTimeZoneGenericNames(v64, &v107);
                      v54 = v107;
                      v58 = v104;
                      if (v107 > U_ZERO_ERROR || (TZDBTimeZoneNames = icu::TimeZoneGenericNames::findBestMatch(v70, a3, v11, 7u, v116, v106, &v107), v54 = v107, v107 > U_ZERO_ERROR))
                      {
LABEL_170:
                        v31 = 0;
                        v7[3] = v11;
                        goto LABEL_175;
                      }

                      if (TZDBTimeZoneNames >= 1)
                      {
                        v71 = TZDBTimeZoneNames + v11;
                        if (v23 < TZDBTimeZoneNames + v11)
                        {
                          TZDBTimeZoneNames = icu::UnicodeString::copyFrom(v111, v116, 0);
                          v58 = 0x7FFFFFFFLL;
                          v54 = *v106;
                          v102 = *v106;
                          v23 = v71;
                        }
                      }

                      v72 = v6;
                    }

                    v73 = v46 & 0x200;
                    if (v23 >= v30)
                    {
                      v57 = v102;
                    }

                    else
                    {
                      v57 = v102;
                      if (!v73)
                      {
                        v109 = v11;
                        v110 = -1;
                        TZDBTimeZoneNames = icu::TimeZoneFormat::parseZoneID(TZDBTimeZoneNames, a3, &v108, v116);
                        v54 = v110;
                        if (v110 == -1)
                        {
                          v74 = v109;
                          if (v23 < v109)
                          {
                            TZDBTimeZoneNames = icu::UnicodeString::copyFrom(v111, v116, 0);
                            v57 = 0;
                            v58 = 0x7FFFFFFFLL;
                            v23 = v74;
                          }
                        }
                      }
                    }

                    if (v23 < v30 && !v73 && (v109 = v11, v110 = -1, TZDBTimeZoneNames = icu::TimeZoneFormat::parseShortZoneID(TZDBTimeZoneNames, a3, &v108, v116), v54 = v110, v110 == -1))
                    {
                      v81 = v109;
                      v6 = v72;
                      if (v23 < v109)
                      {
                        TZDBTimeZoneNames = icu::UnicodeString::copyFrom(v111, v116, 0);
                        v57 = 0;
                        v58 = 0x7FFFFFFFLL;
                        v23 = v81;
                      }
                    }

                    else
                    {
                      v6 = v72;
                    }

LABEL_165:
                    if (v23 > v11)
                    {
                      v77 = WORD4(v111[0]) >> 5;
                      if (SWORD4(v111[0]) < 0)
                      {
                        v77 = HIDWORD(v111[0]);
                      }

                      if (v77 < 1)
                      {
                        TimeZoneForOffset = icu::TimeZoneFormat::createTimeZoneForOffset(TZDBTimeZoneNames, v58, v49, v50, v51, v52);
                      }

                      else
                      {
                        TimeZoneForOffset = icu::TimeZone::createTimeZone(v111, v48);
                      }

                      v31 = TimeZoneForOffset;
                      if (v6)
                      {
                        *v6 = v57;
                      }

                      v7[2] = v23;
                      goto LABEL_175;
                    }

                    goto LABEL_170;
                  }

                  v92 = v6;
                  TZDBTimeZoneNames = (*(*TZDBTimeZoneNames + 120))(TZDBTimeZoneNames, a3, v11, 118, &v107);
                  v75 = TZDBTimeZoneNames;
                  v76 = v107;
                  if (v107 >= U_ILLEGAL_ARGUMENT_ERROR)
                  {
                    v31 = 0;
                    v7[3] = v11;
                    v23 = v62;
                    goto LABEL_215;
                  }

                  v99 = v7;
                  v96 = v46;
                  if (TZDBTimeZoneNames && (TZDBTimeZoneNames = icu::TimeZoneNames::MatchInfoCollection::size(TZDBTimeZoneNames), TZDBTimeZoneNames >= 1))
                  {
                    v82 = 0;
                    v23 = -1;
                    v83 = -1;
                    do
                    {
                      if ((icu::TimeZoneNames::MatchInfoCollection::getMatchLengthAt(v75, v82) + v11) > v23)
                      {
                        v23 = icu::TimeZoneNames::MatchInfoCollection::getMatchLengthAt(v75, v82) + v11;
                        v83 = v82;
                      }

                      ++v82;
                      TZDBTimeZoneNames = icu::TimeZoneNames::MatchInfoCollection::size(v75);
                    }

                    while (v82 < TZDBTimeZoneNames);
                  }

                  else
                  {
                    v83 = -1;
                    v23 = -1;
                  }

                  if (v62 >= v23)
                  {
                    v23 = v62;
                    v7 = v99;
                    v46 = v96;
                    goto LABEL_215;
                  }

                  icu::TimeZoneFormat::getTimeZoneID(v64, v75, v83, v111);
                  TZDBTimeZoneNames = icu::TimeZoneNames::MatchInfoCollection::getNameTypeAt(v75, v83);
                  v102 = 1;
                  v54 = 0x7FFFFFFFLL;
                  v104 = 0x7FFFFFFF;
                  v7 = v99;
                  if (TZDBTimeZoneNames > 15)
                  {
                    v46 = v96;
                    if (TZDBTimeZoneNames == 16)
                    {
                      goto LABEL_215;
                    }

                    if (TZDBTimeZoneNames != 32)
                    {
                      goto LABEL_192;
                    }
                  }

                  else
                  {
                    v46 = v96;
                    if (TZDBTimeZoneNames == 2)
                    {
                      goto LABEL_215;
                    }

                    if (TZDBTimeZoneNames != 4)
                    {
LABEL_192:
                      v102 = 0;
LABEL_214:
                      v104 = 0x7FFFFFFF;
LABEL_215:
                      if (v75)
                      {
                        TZDBTimeZoneNames = (*(*v75 + 1))(v75);
                      }

                      v69 = v76 <= U_ZERO_ERROR;
                      v6 = v92;
                      v30 = v105;
                      if (!v69)
                      {
                        goto LABEL_175;
                      }

                      goto LABEL_145;
                    }
                  }

                  v102 = 2;
                  v54 = 0x7FFFFFFFLL;
                  goto LABEL_214;
                }
              }

              v102 = 2;
              v54 = 0x7FFFFFFFLL;
              goto LABEL_135;
            }

            v56 = v6;
            v109 = v11;
            v110 = -1;
            v106[0] = 0;
            TZDBTimeZoneNames = icu::TimeZoneFormat::parseOffsetLocalizedGMT(v100, a3, &v108, 1, v106);
            v54 = v110;
            if (v110 != -1)
            {
LABEL_87:
              v6 = v56;
              goto LABEL_88;
            }

            v63 = TZDBTimeZoneNames;
            v54 = v109;
            if (v109 != v30 && !v106[0])
            {
              if (v23 < v109)
              {
                icu::UnicodeString::setToBogus(v111);
                v23 = v109;
                v104 = v63;
              }

              goto LABEL_87;
            }

LABEL_106:
            v7[2] = v54;
            v31 = icu::TimeZoneFormat::createTimeZoneForOffset(TZDBTimeZoneNames, v63, v49, v50, v51, v52);
LABEL_175:
            icu::UnicodeString::~UnicodeString(v54, v111);
LABEL_176:
            icu::UnicodeString::~UnicodeString(v34, v116);
            goto LABEL_177;
          }

LABEL_125:
          v35 = 1;
          goto LABEL_34;
        }

        if (!BestMatch)
        {
          goto LABEL_125;
        }

        if (icu::TimeZoneNames::MatchInfoCollection::size(BestMatch) < 1)
        {
          v67 = v31;
          v95 = 1;
LABEL_130:
          BestMatch = (*(*v67 + 8))(v67);
          v34 = v95;
          if ((v95 & 1) == 0)
          {
            goto LABEL_229;
          }

          goto LABEL_125;
        }

        v93 = v6;
        v85 = 0;
        v86 = -1;
        do
        {
          v87 = icu::TimeZoneNames::MatchInfoCollection::getMatchLengthAt(v31, v85) + v11;
          if (v87 > v23)
          {
            v23 = v87;
            v86 = v85;
          }

          ++v85;
          BestMatch = icu::TimeZoneNames::MatchInfoCollection::size(v31);
        }

        while (v85 < BestMatch);
        if ((v86 & 0x80000000) != 0)
        {
          v67 = v31;
          v68 = 1;
          v6 = v93;
          goto LABEL_227;
        }

        v6 = v93;
        if (!v93)
        {
          goto LABEL_226;
        }

        v88 = icu::TimeZoneNames::MatchInfoCollection::getNameTypeAt(v31, v86);
        v89 = 1;
        if (v88 > 15)
        {
          if (v88 == 16)
          {
            goto LABEL_225;
          }

          if (v88 != 32)
          {
            goto LABEL_210;
          }
        }

        else
        {
          if (v88 == 2)
          {
LABEL_225:
            *v93 = v89;
LABEL_226:
            v97[2] = v87;
            v67 = v31;
            icu::TimeZoneFormat::getTimeZoneID(v100, v31, v86, v116);
            BestMatch = icu::TimeZone::createTimeZone(v116, v90);
            v31 = BestMatch;
            v68 = 0;
LABEL_227:
            v30 = v105;
            if (v67)
            {
              goto LABEL_129;
            }

            goto LABEL_228;
          }

          if (v88 != 4)
          {
LABEL_210:
            v89 = 0;
            goto LABEL_225;
          }
        }

        v89 = 2;
        goto LABEL_225;
      case 5u:
        v109 = v11;
        v110 = -1;
        BestMatch = icu::TimeZoneFormat::parseOffsetLocalizedGMT(this, a3, &v108, 0, 0);
        if (v110 == -1)
        {
          goto LABEL_26;
        }

        v100 = this;
        v38 = v101 | 0x40;
        goto LABEL_49;
      case 6u:
        v109 = v11;
        v110 = -1;
        BestMatch = icu::TimeZoneFormat::parseOffsetLocalizedGMT(this, a3, &v108, 1, 0);
        if (v110 == -1)
        {
          goto LABEL_26;
        }

        v100 = this;
        v38 = v101 | 0x20;
LABEL_49:
        v101 = v38;
        goto LABEL_50;
      case 7u:
      case 9u:
      case 0xBu:
      case 0xDu:
      case 0xFu:
        v100 = this;
        v109 = v11;
        v110 = -1;
        BestMatch = icu::TimeZoneFormat::parseOffsetISO8601(BestMatch, a3, &v108, 0, 0);
        v30 = v105;
        if (v110 == -1)
        {
          goto LABEL_26;
        }

        goto LABEL_72;
      case 8u:
      case 0xAu:
      case 0xCu:
      case 0xEu:
      case 0x10u:
        v109 = v11;
        v110 = -1;
        v112[0] = 0;
        BestMatch = icu::TimeZoneFormat::parseOffsetISO8601(BestMatch, a3, &v108, 0, v112);
        if (v110 == -1 && v112[0])
        {
LABEL_26:
          v7[2] = v109;
          v32 = BestMatch;
          goto LABEL_74;
        }

        v100 = this;
LABEL_50:
        v30 = v105;
        goto LABEL_72;
      case 0x11u:
        v100 = this;
        v109 = v11;
        v110 = -1;
        BestMatch = icu::TimeZoneFormat::parseZoneID(BestMatch, a3, &v108, v116);
        goto LABEL_52;
      case 0x12u:
        v100 = this;
        v109 = v11;
        v110 = -1;
        BestMatch = icu::TimeZoneFormat::parseShortZoneID(BestMatch, a3, &v108, v116);
        goto LABEL_52;
      case 0x13u:
        v109 = v11;
        v110 = -1;
        v100 = this;
        BestMatch = icu::TimeZoneFormat::parseExemplarLocation(this, a3, &v108, v116);
LABEL_52:
        v30 = v105;
        if (v110 != -1)
        {
          goto LABEL_72;
        }

        v39 = v109;
        goto LABEL_54;
      default:
        goto LABEL_71;
    }
  }

  v23 = v109;
  if (v109 != v15 && !LOBYTE(v117[0]))
  {
    goto LABEL_20;
  }

  v7[2] = v109;
  v31 = icu::TimeZoneFormat::createTimeZoneForOffset(v18, v18, v19, v20, v21, v22);
LABEL_177:
  icu::ParsePosition::~ParsePosition(&v108);
  v79 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t icu::TimeZoneFormat::parseOffsetLocalizedGMT(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, icu::ParsePosition *a3, signed __int8 a4, signed __int8 *a5)
{
  v8 = *(a3 + 2);
  v20 = 0;
  if (a5)
  {
    *a5 = 0;
    result = icu::TimeZoneFormat::parseOffsetLocalizedGMTPattern(this, a2, v8, 0, &v20);
    v11 = v20;
    if (v20 >= 1 || (result = icu::TimeZoneFormat::parseOffsetDefaultLocalizedGMT(this, a2, v8, &v20), v11 = v20, v20 >= 1))
    {
      *a5 = 1;
LABEL_26:
      v19 = v11 + v8;
      goto LABEL_27;
    }
  }

  else
  {
    result = icu::TimeZoneFormat::parseOffsetLocalizedGMTPattern(this, a2, v8, 0, &v20);
    v11 = v20;
    if (v20 > 0)
    {
      goto LABEL_26;
    }

    result = icu::TimeZoneFormat::parseOffsetDefaultLocalizedGMT(this, a2, v8, &v20);
    v11 = v20;
    if (v20 > 0)
    {
      goto LABEL_26;
    }
  }

  v12 = *(this + 536);
  v13 = v12 >> 5;
  if ((*(this + 536) & 0x80000000) == 0)
  {
    v14 = v12 >> 5;
    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    if ((*(a2 + 8) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_21:
    if (*(this + 536) < 0)
    {
      v11 = *(this + 269);
    }

    else
    {
      v11 = *(this + 536) >> 5;
    }

    result = 0;
    goto LABEL_26;
  }

  v14 = *(this + 269);
  if (v12)
  {
    goto LABEL_20;
  }

LABEL_9:
  if ((v12 & 0x8000u) != 0)
  {
    v13 = *(this + 269);
  }

  if ((v12 & 2) != 0)
  {
    v15 = this + 1074;
  }

  else
  {
    v15 = *(this + 136);
  }

  if (!icu::UnicodeString::doCaseCompare(a2, v8, v14, v15, v13 & (v13 >> 31), v13 & ~(v13 >> 31), 0))
  {
    goto LABEL_21;
  }

LABEL_15:
  v16 = L"GMT";
  v17 = 3;
  while (1)
  {
    v18 = u_strlen(v16);
    result = icu::UnicodeString::doCaseCompare(a2, v8, v18, v16, 0, v18, 0);
    if (!result)
    {
      break;
    }

    v16 += 4;
    if (!--v17)
    {
      result = 0;
      *(a3 + 3) = v8;
      return result;
    }
  }

  v19 = v18 + v8;
LABEL_27:
  *(a3 + 2) = v19;
  return result;
}

uint64_t icu::TimeZoneFormat::createTimeZoneForOffset(icu::TimeZoneFormat *this, icu::ZoneMeta *a2, uint64_t a3, uint64_t a4, uint64_t a5, icu::UnicodeString *a6)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = *MEMORY[0x1E69E9840];

    icu::ZoneMeta::createCustomTimeZone(a2, a2, a3, a4, a5, a6);
  }

  v12 = "E";
  icu::UnicodeString::UnicodeString(v13, 1, &v12);
  TimeZone = icu::TimeZone::createTimeZone(v13, v7);
  icu::UnicodeString::~UnicodeString(v9, v13);
  v10 = *MEMORY[0x1E69E9840];
  return TimeZone;
}

uint64_t icu::TimeZoneFormat::parseOffsetISO8601(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, icu::ParsePosition *a3, int a4, signed __int8 *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v9 = *(a3 + 2);
  v10 = *(a2 + 4);
  if (*(a2 + 4) < 0)
  {
    v11 = *(a2 + 3);
    if (v9 >= v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v9 >= (v10 >> 5))
    {
      goto LABEL_16;
    }

    v11 = v10 >> 5;
  }

  if (v11 <= v9)
  {
    goto LABEL_16;
  }

  if ((v10 & 2) != 0)
  {
    v12 = a2 + 10;
  }

  else
  {
    v12 = *(a2 + 3);
  }

  v13 = *&v12[2 * v9];
  if ((v13 & 0xFFFFFFDF) != 0x5A)
  {
    if (v13 == 43)
    {
      v15 = 1;
      goto LABEL_19;
    }

    if (v13 == 45)
    {
      v15 = -1;
LABEL_19:
      v24 = &unk_1F0932C70;
      v25 = v9 + 1;
      v26 = -1;
      v17 = icu::TimeZoneFormat::parseAsciiOffsetFields(a2, &v24, 58, 0, 2);
      v18 = v26;
      if (!a4 && v26 == -1)
      {
        v19 = v25;
        if (v25 - v9 > 3)
        {
          goto LABEL_28;
        }

        v21 = &unk_1F0932C70;
        v22 = v9 + 1;
        v23 = -1;
        v20 = icu::TimeZoneFormat::parseAbuttingAsciiOffsetFields(a2, &v21, 0, 2, 0);
        if (v23 == -1 && v22 > v19)
        {
          v25 = v22;
          v17 = v20;
        }

        icu::ParsePosition::~ParsePosition(&v21);
        v18 = v26;
      }

      if (v18 != -1)
      {
        v14 = 0;
        *(a3 + 3) = v9;
LABEL_31:
        icu::ParsePosition::~ParsePosition(&v24);
        return v14;
      }

LABEL_28:
      *(a3 + 2) = v25;
      if (a5)
      {
        *a5 = 1;
      }

      v14 = (v17 * v15);
      goto LABEL_31;
    }

LABEL_16:
    v14 = 0;
    *(a3 + 3) = v9;
    return v14;
  }

  v14 = 0;
  *(a3 + 2) = v9 + 1;
  return v14;
}

uint64_t icu::TimeZoneFormat::getTimeType(int a1)
{
  result = 1;
  if (a1 > 15)
  {
    if (a1 == 16)
    {
      return result;
    }

    if (a1 != 32)
    {
      return 0;
    }
  }

  else
  {
    if (a1 == 2)
    {
      return result;
    }

    if (a1 != 4)
    {
      return 0;
    }
  }

  return 2;
}

icu::UnicodeString *icu::TimeZoneFormat::getTimeZoneID(icu::TimeZoneFormat *this, icu::UVector **a2, unsigned int a3, icu::UnicodeString *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!icu::TimeZoneNames::MatchInfoCollection::getTimeZoneIDAt(a2, a3, a4))
  {
    memset(v12, 0, sizeof(v12));
    memset(v11, 0, sizeof(v11));
    icu::UnicodeString::UnicodeString(v11, v12, 0, 32);
    if (icu::TimeZoneNames::MatchInfoCollection::getMetaZoneIDAt(a2, a3, v11))
    {
      (*(**(this + 70) + 64))(*(this + 70), v11, this + 552, a4);
    }

    icu::UnicodeString::~UnicodeString(v8, v11);
  }

  v9 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t icu::TimeZoneFormat::getTZDBTimeZoneNames(icu::TimeZoneFormat *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  umtx_lock(&unk_1EAECA2A8);
  if (!*(this + 165))
  {
    operator new();
  }

  umtx_unlock(&unk_1EAECA2A8);
  return *(this + 165);
}

uint64_t icu::TimeZoneFormat::getTimeZoneGenericNames(icu::TimeZoneFormat *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  umtx_lock(&unk_1EAECA2A8);
  if (!*(this + 71))
  {
    *(this + 71) = icu::TimeZoneGenericNames::createInstance((this + 328), a2, v5);
  }

  umtx_unlock(&unk_1EAECA2A8);
  return *(this + 71);
}

icu::UnicodeString *icu::TimeZoneFormat::parseZoneID(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, icu::ParsePosition *a3, icu::UnicodeString *a4)
{
  v8 = 0;
  if (atomic_load_explicit(&dword_1EAECA2F8, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAECA2F8))
  {
    sub_1953F0758();
  }

  if (dword_1EAECA2FC >= 1)
  {
    v8 = dword_1EAECA2FC;
  }

  v6 = *(a3 + 2);
  icu::UnicodeString::setToBogus(a4);
  if (v8 <= 0)
  {
    operator new();
  }

  *(a3 + 3) = v6;
  return a4;
}

icu::UnicodeString *icu::TimeZoneFormat::parseShortZoneID(icu::TimeZoneFormat *this, const icu::UnicodeString *a2, icu::ParsePosition *a3, icu::UnicodeString *a4)
{
  v8 = 0;
  if (atomic_load_explicit(&dword_1EAECA300, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAECA300))
  {
    if (dword_1EAECA304 >= 1)
    {
      v8 = dword_1EAECA304;
    }
  }

  else
  {
    sub_1953F0870(&v8);
    dword_1EAECA304 = v8;
    icu::umtx_initImplPostInit(&dword_1EAECA300);
  }

  v6 = *(a3 + 2);
  icu::UnicodeString::setToBogus(a4);
  if (v8 <= 0)
  {
    operator new();
  }

  *(a3 + 3) = v6;
  return a4;
}