uint64_t icu::number::NumberFormatter::with@<X0>(_OWORD *a1@<X8>)
{
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return sub_19535F640(a1);
}

void icu::number::NumberFormatter::withLocale(icu::number::NumberFormatter *this@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  sub_19535F640(&v6);
  icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a2, &v6, this);
  icu::Locale::~Locale((&v9[2] + 8));
  icu::number::impl::StringProp::~StringProp(v9);
  icu::number::impl::StringProp::~StringProp(&v8);
  icu::number::Scale::~Scale((&v7[9] + 8));
  icu::number::impl::SymbolsWrapper::~SymbolsWrapper((&v7[7] + 8));
  icu::MeasureUnit::~MeasureUnit((&v7[1] + 8));
  icu::MeasureUnit::~MeasureUnit(v7);
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t icu::number::UnlocalizedNumberFormatter::locale@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1, a2);
}

{
  return icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(a3, a1, a2);
}

uint64_t icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 4) = v4;
  icu::MeasureUnit::MeasureUnit(a1 + 16, a2 + 16);
  icu::MeasureUnit::MeasureUnit(a1 + 40, a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = v5;
  icu::number::impl::SymbolsWrapper::SymbolsWrapper((a1 + 136), (a2 + 136));
  *(a1 + 152) = *(a2 + 152);
  icu::number::Scale::Scale((a1 + 168), (a2 + 168));
  icu::number::impl::StringProp::StringProp(a1 + 192, a2 + 192);
  icu::number::impl::StringProp::StringProp(a1 + 208, a2 + 208);
  v8 = *(a2 + 224);
  *(a1 + 238) = *(a2 + 238);
  *(a1 + 224) = v8;
  icu::Locale::Locale((a1 + 248), a2 + 248);
  return a1;
}

{
  v4 = sub_19535F640(a1);
  v5 = *(a2 + 4);
  *(v4 + 12) = *(a2 + 12);
  *(v4 + 4) = v5;
  icu::MeasureUnit::operator=(v4 + 16, a2 + 16);
  icu::MeasureUnit::operator=(a1 + 40, a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 96);
  v6 = *(a2 + 112);
  v8 = *(a2 + 80);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v7;
  *(a1 + 112) = v6;
  *(a1 + 80) = v8;
  icu::number::impl::SymbolsWrapper::operator=((a1 + 136), (a2 + 136));
  *(a1 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a1 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(a1 + 192, a2 + 192);
  icu::number::impl::StringProp::operator=(a1 + 208, a2 + 208);
  v9 = *(a2 + 238);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 238) = v9;
  icu::Locale::operator=((a1 + 248), a2 + 248);
  return a1;
}

{
  v4 = sub_19535F640(a1);
  v5 = *(a2 + 4);
  *(v4 + 12) = *(a2 + 12);
  *(v4 + 4) = v5;
  icu::MeasureUnit::operator=(v4 + 16, a2 + 16);
  icu::MeasureUnit::operator=(a1 + 40, a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 96);
  v6 = *(a2 + 112);
  v8 = *(a2 + 80);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v7;
  *(a1 + 112) = v6;
  *(a1 + 80) = v8;
  icu::number::impl::SymbolsWrapper::operator=((a1 + 136), (a2 + 136));
  *(a1 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a1 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(a1 + 192, a2 + 192);
  icu::number::impl::StringProp::operator=(a1 + 208, a2 + 208);
  v9 = *(a2 + 238);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 238) = v9;
  icu::Locale::operator=((a1 + 248), a2 + 248);
  return a1;
}

{
  v4 = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 4) = v4;
  icu::MeasureUnit::MeasureUnit(a1 + 16, a2 + 16);
  icu::MeasureUnit::MeasureUnit(a1 + 40, a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = v5;
  icu::number::impl::SymbolsWrapper::SymbolsWrapper(a1 + 136, (a2 + 136));
  *(a1 + 152) = *(a2 + 152);
  icu::number::Scale::Scale(a1 + 168, a2 + 168);
  icu::number::impl::StringProp::StringProp(a1 + 192, a2 + 192);
  icu::number::impl::StringProp::StringProp(a1 + 208, a2 + 208);
  v8 = *(a2 + 224);
  *(a1 + 238) = *(a2 + 238);
  *(a1 + 224) = v8;
  icu::Locale::Locale(a1 + 248, a2 + 248);
  return a1;
}

uint64_t sub_19535F640(uint64_t a1)
{
  *(a1 + 4) = 2;
  *(a1 + 8) = 0;
  icu::MeasureUnit::MeasureUnit(a1 + 16);
  icu::MeasureUnit::MeasureUnit(a1 + 40);
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 4;
  *(a1 + 100) = -3;
  *(a1 + 112) = -2;
  *(a1 + 132) = 0;
  *(a1 + 124) = -1;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x900000007;
  *(a1 + 160) = 0;
  *(a1 + 164) = 2;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 204) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 228) = 0;
  *(a1 + 220) = 0;
  *(a1 + 236) = 0x300000000;
  *(a1 + 244) = 0;
  icu::Locale::Locale((a1 + 248));
  return a1;
}

uint64_t icu::number::UnlocalizedNumberFormatter::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 4) = v4;
  icu::MeasureUnit::operator=(a1 + 16, a2 + 16);
  icu::MeasureUnit::operator=(a1 + 40, a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 96);
  v5 = *(a2 + 112);
  v7 = *(a2 + 80);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v5;
  *(a1 + 80) = v7;
  icu::number::impl::SymbolsWrapper::operator=((a1 + 136), (a2 + 136));
  *(a1 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a1 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(a1 + 192, a2 + 192);
  icu::number::impl::StringProp::operator=(a1 + 208, a2 + 208);
  v8 = *(a2 + 238);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 238) = v8;
  icu::Locale::operator=((a1 + 248), a2 + 248);
  return a1;
}

{
  v4 = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 4) = v4;
  icu::MeasureUnit::operator=(a1 + 16, a2 + 16);
  icu::MeasureUnit::operator=(a1 + 40, a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 96);
  v5 = *(a2 + 112);
  v7 = *(a2 + 80);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v5;
  *(a1 + 80) = v7;
  icu::number::impl::SymbolsWrapper::operator=((a1 + 136), (a2 + 136));
  *(a1 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a1 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(a1 + 192, a2 + 192);
  icu::number::impl::StringProp::operator=(a1 + 208, a2 + 208);
  v8 = *(a2 + 238);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 238) = v8;
  icu::Locale::operator=(a1 + 248, a2 + 248);
  return a1;
}

uint64_t icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 4) = v4;
  icu::MeasureUnit::MeasureUnit(a1 + 16, a2 + 16);
  icu::MeasureUnit::MeasureUnit(a1 + 40, a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = v5;
  icu::number::impl::SymbolsWrapper::SymbolsWrapper((a1 + 136), (a2 + 136));
  *(a1 + 152) = *(a2 + 152);
  icu::number::Scale::Scale((a1 + 168), (a2 + 168));
  icu::number::impl::StringProp::StringProp(a1 + 192, a2 + 192);
  icu::number::impl::StringProp::StringProp(a1 + 208, a2 + 208);
  v8 = *(a2 + 224);
  *(a1 + 238) = *(a2 + 238);
  *(a1 + 224) = v8;
  icu::Locale::Locale((a1 + 248), a2 + 248);
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  v11 = U_ZERO_ERROR;
  icu::number::LocalizedNumberFormatter::lnfCopyHelper(a1, v9, &v11);
  return a1;
}

{
  v4 = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 4) = v4;
  icu::MeasureUnit::MeasureUnit(a1 + 16, a2 + 16);
  icu::MeasureUnit::MeasureUnit(a1 + 40, a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = v5;
  icu::number::impl::SymbolsWrapper::SymbolsWrapper(a1 + 136, (a2 + 136));
  *(a1 + 152) = *(a2 + 152);
  icu::number::Scale::Scale(a1 + 168, a2 + 168);
  icu::number::impl::StringProp::StringProp(a1 + 192, a2 + 192);
  icu::number::impl::StringProp::StringProp(a1 + 208, a2 + 208);
  v8 = *(a2 + 224);
  *(a1 + 238) = *(a2 + 238);
  *(a1 + 224) = v8;
  icu::Locale::Locale(a1 + 248, a2 + 248);
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0;
  icu::number::LocalizedNumberFormatter::lnfMoveHelper(a1, a2);
  return a1;
}

void *icu::number::LocalizedNumberFormatter::lnfCopyHelper(icu::number::LocalizedNumberFormatter *this, const icu::number::LocalizedNumberFormatter *a2, UErrorCode *a3)
{
  result = *(this + 59);
  if (result)
  {
    v5 = sub_195360F0C(result);
    result = MEMORY[0x19A8B2600](v5, 0x10F2C4062D501E6);
  }

  atomic_store(0, this + 120);
  *(this + 59) = 0;
  v6 = *(this + 61);
  if (v6)
  {
    v7 = *(v6 + 2472);
    if (v7)
    {
      (*(*v7 + 8))(v7, a2, a3);
    }

    sub_1952FDC0C((v6 + 8));
    result = MEMORY[0x19A8B2600](v6, 0x10B2C4019CE56E4);
  }

  if (*(this + 28) || *(this + 29))
  {
    operator new();
  }

  *(this + 61) = 0;
  return result;
}

void *icu::number::LocalizedNumberFormatter::lnfMoveHelper(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 472);
  if (result)
  {
    v5 = sub_195360F0C(result);
    result = MEMORY[0x19A8B2600](v5, 0x10F2C4062D501E6);
  }

  v6 = (a1 + 472);
  v7 = (a1 + 480);
  if (*(a2 + 472))
  {
    atomic_store(0x80000000, v7);
    *v6 = *(a2 + 472);
    v6 = (a2 + 472);
    v7 = (a2 + 480);
  }

  atomic_store(0, v7);
  *v6 = 0;
  v8 = *(a1 + 488);
  if (v8)
  {
    v9 = *(v8 + 2472);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    sub_1952FDC0C((v8 + 8));
    result = MEMORY[0x19A8B2600](v8, 0x10B2C4019CE56E4);
  }

  *(a1 + 488) = *(a2 + 488);
  *(a2 + 488) = 0;
  return result;
}

uint64_t icu::number::LocalizedNumberFormatter::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 4);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 4) = v4;
    icu::MeasureUnit::operator=(a1 + 16, a2 + 16);
    icu::MeasureUnit::operator=(a1 + 40, a2 + 40);
    *(a1 + 64) = *(a2 + 64);
    v6 = *(a2 + 96);
    v5 = *(a2 + 112);
    v7 = *(a2 + 80);
    *(a1 + 125) = *(a2 + 125);
    *(a1 + 96) = v6;
    *(a1 + 112) = v5;
    *(a1 + 80) = v7;
    icu::number::impl::SymbolsWrapper::operator=((a1 + 136), (a2 + 136));
    *(a1 + 152) = *(a2 + 152);
    icu::number::Scale::operator=(a1 + 168, a2 + 168);
    icu::number::impl::StringProp::operator=(a1 + 192, a2 + 192);
    icu::number::impl::StringProp::operator=(a1 + 208, a2 + 208);
    v8 = *(a2 + 238);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 238) = v8;
    icu::Locale::operator=((a1 + 248), a2 + 248);
    v11 = U_ZERO_ERROR;
    icu::number::LocalizedNumberFormatter::lnfCopyHelper(a1, v9, &v11);
  }

  return a1;
}

{
  v4 = *(a2 + 4);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 4) = v4;
  icu::MeasureUnit::operator=(a1 + 16, a2 + 16);
  icu::MeasureUnit::operator=(a1 + 40, a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  v6 = *(a2 + 96);
  v5 = *(a2 + 112);
  v7 = *(a2 + 80);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v6;
  *(a1 + 112) = v5;
  *(a1 + 80) = v7;
  icu::number::impl::SymbolsWrapper::operator=((a1 + 136), (a2 + 136));
  *(a1 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a1 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(a1 + 192, a2 + 192);
  icu::number::impl::StringProp::operator=(a1 + 208, a2 + 208);
  v8 = *(a2 + 238);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 238) = v8;
  icu::Locale::operator=(a1 + 248, a2 + 248);
  icu::number::LocalizedNumberFormatter::lnfMoveHelper(a1, a2);
  return a1;
}

uint64_t icu::number::LocalizedNumberFormatter::resetCompiled(uint64_t this)
{
  atomic_store(0, (this + 480));
  *(this + 472) = 0;
  return this;
}

void *sub_1953600EC(void *result, char **lpsrc, _DWORD *a3)
{
  if (!lpsrc)
  {
    goto LABEL_8;
  }

  v5 = result;
  v6 = *lpsrc;
  v7 = **lpsrc;
  if (v8)
  {
    v9 = v8;
    icu::UnicodeString::operator=((v5 + 8), v8 + 1);
    icu::UnicodeString::operator=((v5 + 72), v9 + 9);
    icu::UnicodeString::operator=((v5 + 136), v9 + 17);
    result = icu::UnicodeString::operator=((v5 + 200), v9 + 25);
    v10 = *(v9 + 266);
    *(v5 + 264) = *(v9 + 132);
    *(v5 + 266) = v10;
    return result;
  }

  v11 = *v6;
  if (result)
  {
    v12 = result;
    for (i = 0; i != 2176; i += 272)
    {
      v14 = v5 + i;
      icu::UnicodeString::operator=((v5 + i + 288), (v12 + i + 16));
      icu::UnicodeString::operator=((v5 + i + 352), (v12 + i + 80));
      icu::UnicodeString::operator=((v5 + i + 416), (v12 + i + 144));
      result = icu::UnicodeString::operator=((v5 + i + 480), (v12 + i + 208));
      v15 = *(v12 + i + 274);
      *(v14 + 544) = *(v12 + i + 272);
      *(v14 + 546) = v15;
    }

    *(v5 + 2456) = *(v12 + 2184);
  }

  else
  {
LABEL_8:
    *a3 = 5;
  }

  return result;
}

void icu::number::LocalizedNumberFormatter::~LocalizedNumberFormatter(icu::number::LocalizedNumberFormatter *this)
{
  v2 = *(this + 59);
  if (v2)
  {
    v3 = sub_195360F0C(v2);
    MEMORY[0x19A8B2600](v3, 0x10F2C4062D501E6);
  }

  v4 = *(this + 61);
  if (v4)
  {
    v5 = *(v4 + 2472);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    sub_1952FDC0C((v4 + 8));
    MEMORY[0x19A8B2600](v4, 0x10B2C4019CE56E4);
  }

  icu::Locale::~Locale((this + 248));
  icu::number::impl::StringProp::~StringProp(this + 26);
  icu::number::impl::StringProp::~StringProp(this + 24);
  icu::number::Scale::~Scale((this + 168));
  icu::number::impl::SymbolsWrapper::~SymbolsWrapper((this + 136));
  icu::MeasureUnit::~MeasureUnit((this + 40));
  icu::MeasureUnit::~MeasureUnit((this + 16));
}

uint64_t icu::number::LocalizedNumberFormatter::LocalizedNumberFormatter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19535F640(a1);
  *(v6 + 472) = 0;
  *(v6 + 480) = 0;
  *(v6 + 488) = 0;
  v7 = *(a2 + 4);
  *(v6 + 12) = *(a2 + 12);
  *(v6 + 4) = v7;
  icu::MeasureUnit::operator=(v6 + 16, a2 + 16);
  icu::MeasureUnit::operator=(a1 + 40, a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  v9 = *(a2 + 96);
  v8 = *(a2 + 112);
  v10 = *(a2 + 80);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 80) = v10;
  icu::number::impl::SymbolsWrapper::operator=((a1 + 136), (a2 + 136));
  *(a1 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a1 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(a1 + 192, a2 + 192);
  icu::number::impl::StringProp::operator=(a1 + 208, a2 + 208);
  v11 = *(a2 + 238);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 238) = v11;
  icu::Locale::operator=((a1 + 248), a2 + 248);
  icu::Locale::operator=((a1 + 248), a3);
  return a1;
}

{
  v6 = sub_19535F640(a1);
  *(v6 + 472) = 0;
  *(v6 + 480) = 0;
  *(v6 + 488) = 0;
  v7 = *(a2 + 4);
  *(v6 + 12) = *(a2 + 12);
  *(v6 + 4) = v7;
  icu::MeasureUnit::operator=(v6 + 16, a2 + 16);
  icu::MeasureUnit::operator=(a1 + 40, a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  v9 = *(a2 + 96);
  v8 = *(a2 + 112);
  v10 = *(a2 + 80);
  *(a1 + 125) = *(a2 + 125);
  *(a1 + 96) = v9;
  *(a1 + 112) = v8;
  *(a1 + 80) = v10;
  icu::number::impl::SymbolsWrapper::operator=((a1 + 136), (a2 + 136));
  *(a1 + 152) = *(a2 + 152);
  icu::number::Scale::operator=(a1 + 168, a2 + 168);
  icu::number::impl::StringProp::operator=(a1 + 192, a2 + 192);
  icu::number::impl::StringProp::operator=(a1 + 208, a2 + 208);
  v11 = *(a2 + 238);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 238) = v11;
  icu::Locale::operator=(a1 + 248, a2 + 248);
  icu::Locale::operator=((a1 + 248), a3);
  return a1;
}

void icu::number::LocalizedNumberFormatter::formatInt(UErrorCode *a1@<X2>, uint64_t a2@<X8>)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  *a2 = &unk_1F093F640;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

uint64_t icu::number::LocalizedNumberFormatter::formatImpl(icu::number::LocalizedNumberFormatter *this, icu::number::impl::UFormattedNumberData *a2, UErrorCode *a3)
{
  if (*(this + 244) == 1)
  {
    v8 = 0;
    Magnitude = icu::number::impl::DecimalQuantity::getMagnitude((a2 + 304));
    icu::number::impl::DecimalQuantity::roundToMagnitude(a2 + 304, Magnitude - 14, 4u, &v8);
  }

  if (icu::number::LocalizedNumberFormatter::computeCompiled(this, a3))
  {
    result = sub_195361BE0(*(this + 59), a2, a3);
  }

  else
  {
    result = sub_195361514(this, a2, a3);
  }

  if (*a3 <= 0)
  {
    return icu::FormattedStringBuilder::writeTerminator((a2 + 8), a3);
  }

  return result;
}

void icu::number::LocalizedNumberFormatter::formatDouble(UErrorCode *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  *a2 = &unk_1F093F640;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

void icu::number::LocalizedNumberFormatter::formatDecimal(int *a1@<X3>, uint64_t a2@<X8>)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  *a2 = &unk_1F093F640;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

void icu::number::LocalizedNumberFormatter::formatDecimalQuantity(UErrorCode *a1@<X2>, uint64_t a2@<X8>)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  *a2 = &unk_1F093F640;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

uint64_t icu::number::LocalizedNumberFormatter::computeCompiled(atomic_uint *this, UErrorCode *a2)
{
  explicit = atomic_load_explicit(this + 120, memory_order_acquire);
  if ((explicit & 0x80000000) == 0)
  {
    v3 = this[60];
    if (explicit <= v3 && v3 >= 1)
    {
      explicit = atomic_fetch_add(this + 120, 1u) + 1;
    }
  }

  v5 = this[60];
  if (explicit == v5 && v5 >= 1)
  {
    operator new();
  }

  return explicit >> 31;
}

void icu::number::LocalizedNumberFormatter::getAffixImpl(icu::number::LocalizedNumberFormatter *this, int a2, int a3, icu::UnicodeString *a4, UErrorCode *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  icu::FormattedStringBuilder::FormattedStringBuilder(v24);
  if (a3)
  {
    v10 = 0;
  }

  else
  {
    v10 = 3;
  }

  if (icu::number::LocalizedNumberFormatter::computeCompiled(this, a5))
  {
    v11 = sub_195361DC0(*(this + 59), v10, 5, v24, a5);
  }

  else
  {
    v11 = sub_195361A28(this, v10, 5, v24, a5);
  }

  v12 = v11;
  if (*(a4 + 4))
  {
    v13 = 2;
  }

  else
  {
    v13 = *(a4 + 4) & 0x1E;
  }

  *(a4 + 4) = v13;
  icu::FormattedStringBuilder::toTempUnicodeString(v24, v20);
  if (a2)
  {
    v14 = 0;
    v15 = v12;
  }

  else
  {
    v15 = icu::FormattedStringBuilder::length(v24) - v12;
    v14 = v12;
  }

  icu::UnicodeString::tempSubString(v20, v14, v15, v21);
  if ((v22 & 0x8000u) == 0)
  {
    v16 = v22 >> 5;
  }

  else
  {
    v16 = v23;
  }

  icu::UnicodeString::doAppend(a4, v21, 0, v16);
  icu::UnicodeString::~UnicodeString(v17, v21);
  icu::UnicodeString::~UnicodeString(v18, v20);
  icu::FormattedStringBuilder::~FormattedStringBuilder(v24);
  v19 = *MEMORY[0x1E69E9840];
}

void icu::number::LocalizedNumberFormatter::withoutLocale(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  *(&v8 + 4) = *(a1 + 4);
  HIDWORD(v8) = *(a1 + 12);
  icu::MeasureUnit::MeasureUnit(v9, a1 + 16);
  icu::MeasureUnit::MeasureUnit(&v9[1] + 8, a1 + 40);
  v4 = *(a1 + 112);
  v12 = *(a1 + 96);
  v13[0] = v4;
  *(v13 + 13) = *(a1 + 125);
  v5 = *(a1 + 80);
  v10 = *(a1 + 64);
  v11 = v5;
  icu::number::impl::SymbolsWrapper::SymbolsWrapper((&v13[1] + 8), (a1 + 136));
  *(&v13[2] + 8) = *(a1 + 152);
  icu::number::Scale::Scale((&v13[3] + 8), (a1 + 168));
  icu::number::impl::StringProp::StringProp(&v14, a1 + 192);
  icu::number::impl::StringProp::StringProp(v15, a1 + 208);
  v15[1] = *(a1 + 224);
  *(&v15[1] + 14) = *(a1 + 238);
  icu::Locale::Locale((&v15[2] + 8), a1 + 248);
  icu::Locale::Locale(v7);
  icu::Locale::operator=(&v15[2] + 8, v7);
  icu::Locale::~Locale(v7);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a2, &v8);
  icu::Locale::~Locale((&v15[2] + 8));
  icu::number::impl::StringProp::~StringProp(v15);
  icu::number::impl::StringProp::~StringProp(&v14);
  icu::number::Scale::~Scale((&v13[3] + 8));
  icu::number::impl::SymbolsWrapper::~SymbolsWrapper((&v13[1] + 8));
  icu::MeasureUnit::~MeasureUnit((&v9[1] + 8));
  icu::MeasureUnit::~MeasureUnit(v9);
  v6 = *MEMORY[0x1E69E9840];
}

{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v8 = 0u;
  *(&v8 + 4) = *(a1 + 4);
  HIDWORD(v8) = *(a1 + 12);
  icu::MeasureUnit::MeasureUnit(v9, a1 + 16);
  icu::MeasureUnit::MeasureUnit(&v9[1] + 8, a1 + 40);
  v4 = *(a1 + 112);
  v12 = *(a1 + 96);
  v13[0] = v4;
  *(v13 + 13) = *(a1 + 125);
  v5 = *(a1 + 80);
  v10 = *(a1 + 64);
  v11 = v5;
  icu::number::impl::SymbolsWrapper::SymbolsWrapper(&v13[1] + 8, (a1 + 136));
  *(&v13[2] + 8) = *(a1 + 152);
  icu::number::Scale::Scale(&v13[3] + 8, a1 + 168);
  icu::number::impl::StringProp::StringProp(&v14, a1 + 192);
  icu::number::impl::StringProp::StringProp(v15, a1 + 208);
  v15[1] = *(a1 + 224);
  *(&v15[1] + 14) = *(a1 + 238);
  icu::Locale::Locale(&v15[2] + 8, a1 + 248);
  icu::Locale::Locale(v7);
  icu::Locale::operator=(&v15[2] + 8, v7);
  icu::Locale::~Locale(v7);
  icu::number::UnlocalizedNumberFormatter::UnlocalizedNumberFormatter(a2, &v8);
  icu::Locale::~Locale((&v15[2] + 8));
  icu::number::impl::StringProp::~StringProp(v15);
  icu::number::impl::StringProp::~StringProp(&v14);
  icu::number::Scale::~Scale((&v13[3] + 8));
  icu::number::impl::SymbolsWrapper::~SymbolsWrapper((&v13[1] + 8));
  icu::MeasureUnit::~MeasureUnit((&v9[1] + 8));
  icu::MeasureUnit::~MeasureUnit(v9);
  v6 = *MEMORY[0x1E69E9840];
}

void *sub_195360F0C(void *a1)
{
  v2 = a1[74];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[73];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[72];
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[71];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[70];
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = a1[69];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a1[68];
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = a1[67];
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = a1[66];
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = a1[65];
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = a1[64];
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = a1[63];
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  sub_195361148((a1 + 1));
  return a1;
}

uint64_t sub_195361148(uint64_t a1)
{
  *a1 = &unk_1F093EE70;
  if (*(a1 + 452))
  {
    free(*(a1 + 440));
  }

  icu::MeasureUnit::~MeasureUnit((a1 + 416));
  *(a1 + 312) = &unk_1F093F328;
  icu::UnicodeString::~UnicodeString(v2, (a1 + 320));
  icu::number::impl::Modifier::~Modifier((a1 + 312));
  *(a1 + 272) = &unk_1F093F5E0;
  icu::number::Scale::~Scale((a1 + 280));
  icu::number::impl::Modifier::~Modifier((a1 + 256));
  icu::number::impl::Modifier::~Modifier((a1 + 240));
  icu::number::impl::Modifier::~Modifier((a1 + 216));
  icu::UnicodeString::~UnicodeString(v3, (a1 + 32));
  return a1;
}

void sub_195361218(uint64_t a1)
{
  sub_195361148(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195361250(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a3)
  {
    return sub_195361270(a3, result);
  }

  *(a3 + 488) = 1;
  return result;
}

uint64_t sub_195361270(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 12) = v4;
  icu::UnicodeString::operator=((a1 + 32), (a2 + 32));
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a2 + 152);
  v6 = *(a2 + 168);
  v7 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v7;
  *(a1 + 168) = v6;
  *(a1 + 152) = v5;
  v8 = *(a2 + 120);
  v9 = *(a2 + 104);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 104) = v9;
  *(a1 + 120) = v8;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  icu::number::Scale::operator=(a1 + 280, a2 + 280);
  *(a1 + 304) = *(a2 + 304);
  icu::UnicodeString::operator=((a1 + 320), (a2 + 320));
  v10 = *(a2 + 400);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = v10;
  icu::MeasureUnit::operator=(a1 + 416, a2 + 416);
  if (a1 != a2)
  {
    sub_195361368((a1 + 440), a2 + 440, (a1 + 472));
  }

  v11 = *(a2 + 480);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 480) = v11;
  return a1;
}

void *sub_195361368(void *result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v5 = *(a2 + 8);
    if (v5 >= 1 && (v6 = result, (result = malloc_type_malloc(8 * v5, 0x100004000313F17uLL)) != 0))
    {
      v7 = result;
      if (*(v6 + 12))
      {
        free(*v6);
      }

      *v6 = v7;
      *(v6 + 2) = v5;
      *(v6 + 12) = 1;
      v8 = *a2;

      return memcpy(v7, v8, 8 * v5);
    }

    else
    {
      *a3 = 7;
    }
  }

  return result;
}

uint64_t *sub_195361434(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 2472);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    sub_1952FDC0C((v2 + 8));
    MEMORY[0x19A8B2600](v2, 0x10B2C4019CE56E4);
  }

  return a1;
}

uint64_t sub_1953614AC(uint64_t a1, _DWORD *a2, UErrorCode *a3)
{
  *a1 = 0;
  sub_195362FE4(a1 + 8);
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *a1 = sub_195361E8C(a1, a2, 1, a3);
  return a1;
}

uint64_t sub_195361514(_DWORD *a1, void *a2, UErrorCode *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  bzero(&v12, 0x258uLL);
  sub_195362FE4(v13);
  memset(&v13[496], 0, 96);
  v12 = sub_195361E8C(&v12, a1, 0, a3);
  v6 = sub_195361640(&v12, (a2 + 38), a3);
  v7 = 0;
  if (*a3 <= 0)
  {
    v8 = v6;
    v9 = sub_1953616DC((v6 + 1), (a2 + 38), (a2 + 1), 0, a3);
    v7 = sub_195361914(v8, (a2 + 1), 0, v9, a3) + v9;
    icu::MeasureUnit::operator=((a2 + 47), v8 + 416);
    a2[50] = *(v8 + 184);
  }

  sub_195360F0C(&v12);
  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t *sub_195361640(uint64_t *a1, icu::number::impl::DecimalQuantity *a2, UErrorCode *a3)
{
  if (*a3 < 1)
  {
    v6 = *a1;
    if (*a1)
    {
      v4 = a1 + 1;
      (*(*v6 + 16))(v6, a2, a1 + 1, a3);
      icu::number::IntegerWidth::apply((a1 + 164), a2, a3);
      return v4;
    }

    *a3 = U_INTERNAL_PROGRAM_ERROR;
  }

  return a1 + 1;
}

uint64_t sub_1953616DC(uint64_t a1, icu::number::impl::DecimalQuantity *a2, icu::FormattedStringBuilder *a3, int a4, UErrorCode *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((*(*a2 + 32))(a2))
  {
    v10 = (*(a1 + 88) + 904);
LABEL_5:
    icu::UnicodeString::UnicodeString(v22, v10);
    v11 = icu::FormattedStringBuilder::insert(a3, a4, v22, 32, 0, a5);
    icu::UnicodeString::~UnicodeString(v12, v22);
    goto LABEL_6;
  }

  if ((*(*a2 + 24))(a2))
  {
    v10 = (*(a1 + 88) + 968);
    goto LABEL_5;
  }

  v15 = sub_195362D7C(a1, a2, a3, a4, a5);
  if ((icu::number::impl::DecimalQuantity::getLowerDisplayMagnitude(a2) & 0x80000000) != 0 || *(a1 + 20) == 1)
  {
    if (*(a1 + 32))
    {
      if (*(a1 + 16) == 1)
      {
        v16 = (*(a1 + 88) + 648);
      }

      else
      {
        v16 = (*(a1 + 88) + 8);
      }

      icu::UnicodeString::UnicodeString(v22, v16);
      v15 += icu::FormattedStringBuilder::insert(a3, v15 + a4, v22, 34, 0, a5);
      icu::UnicodeString::~UnicodeString(v17, v22);
    }

    else
    {
      v15 += icu::FormattedStringBuilder::insert(a3, v15 + a4, a1 + 24, 39, 0, a5);
    }
  }

  v18 = sub_195362EF8(a1, a2, a3, v15 + a4, a5);
  v11 = (v18 + v15);
  if (!(v18 + v15))
  {
    v19 = *(a1 + 88);
    v20 = *(v19 + 1928);
    if (v20 == -1)
    {
      inserted = icu::FormattedStringBuilder::insert(a3, a4, v19 + 264, 32, 0, a5);
    }

    else
    {
      inserted = icu::FormattedStringBuilder::insertCodePoint(a3, a4, v20, 32, a5);
    }

    v11 = inserted;
  }

LABEL_6:
  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_195361914(uint64_t a1, icu::FormattedStringBuilder *a2, uint64_t a3, int a4, UErrorCode *a5)
{
  v10 = (*(**(a1 + 208) + 16))(*(a1 + 208));
  v11 = *(a1 + 200);
  if (*(a1 + 144) < 1)
  {
    v10 += (*(*v11 + 16))(*(a1 + 200), a2, a3, (v10 + a4), a5);
    v12 = (*(**(a1 + 192) + 16))(*(a1 + 192), a2, a3, (v10 + a4), a5);
  }

  else
  {
    v12 = icu::number::impl::Padder::padAndApply((a1 + 144), v11, *(a1 + 192), a2, a3, (v10 + a4), a5);
  }

  return (v12 + v10);
}

uint64_t sub_195361A28(_DWORD *a1, int a2, int a3, uint64_t a4, UErrorCode *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(&v13, 0x258uLL);
  sub_195362FE4(v14);
  memset(&v14[496], 0, 96);
  v13 = sub_195361E8C(&v13, a1, 0, a5);
  v10 = sub_195361B10(&v13, a2, a3, a4, a5);
  sub_195360F0C(&v13);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_195361B10(uint64_t a1, int a2, int a3, uint64_t a4, int *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  icu::number::impl::MutablePatternModifier::setNumberProperties(*(a1 + 552), a2, a3);
  (*(**(a1 + 552) + 24))(*(a1 + 552), a4, 0, 0, a5);
  if (*a5 > 0)
  {
    return 0;
  }

  v9 = *(**(a1 + 552) + 32);

  return v9();
}

uint64_t sub_195361BE0(uint64_t *a1, void *a2, UErrorCode *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  memset(v10, 0, sizeof(v10));
  sub_195362FE4(v10);
  sub_195361D1C(a1, (a2 + 38), v10, a3);
  if (*a3 <= 0)
  {
    v7 = sub_1953616DC(v10 + 8, (a2 + 38), (a2 + 1), 0, a3);
    v6 = sub_195361914(v10, (a2 + 1), 0, v7, a3) + v7;
    icu::MeasureUnit::operator=((a2 + 47), v26);
    a2[50] = *(&v11 + 1);
  }

  else
  {
    v6 = 0;
  }

  sub_195361148(v10);
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_195361D1C(uint64_t *a1, icu::number::impl::DecimalQuantity *a2, uint64_t a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v5 = *a1;
    if (v5)
    {
      (*(*v5 + 16))(v5, a2, a3, a4);

      icu::number::IntegerWidth::apply((a3 + 156), a2, a4);
    }

    else
    {
      *a4 = U_INTERNAL_PROGRAM_ERROR;
    }
  }
}

uint64_t sub_195361DC0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  Modifier = icu::number::impl::ImmutablePatternModifier::getModifier(*(a1 + 560), a2);
  (*(*Modifier + 16))(Modifier, a4, 0, 0, a5);
  if (*a5 > 0)
  {
    return 0;
  }

  v9 = *(*Modifier + 24);

  return v9(Modifier);
}

uint64_t sub_195361E8C(uint64_t a1, _DWORD *a2, uint64_t a3, UErrorCode *a4)
{
  v37[8] = *MEMORY[0x1E69E9840];
  if (*a4 <= 0 && (sub_19535D604(a2, a4) & 1) == 0)
  {
    Type = icu::MeasureUnit::getType((a2 + 4));
    v10 = strcmp("currency", Type);
    v11 = icu::MeasureUnit::getType((a2 + 4));
    v12 = strcmp("none", v11);
    Subtype = icu::MeasureUnit::getSubtype((a2 + 4));
    v14 = strcmp("percent", Subtype);
    v15 = icu::MeasureUnit::getSubtype((a2 + 4));
    v16 = strcmp("permille", v15);
    v31 = a2[1];
    v17 = a2[39] - 3;
    if (v17 > 5)
    {
      v18 = 1;
    }

    else
    {
      v18 = dword_1954909D4[v17];
    }

    v29 = v18;
    memset(v36, 0, sizeof(v36));
    v35 = &word_19549D930;
    icu::CurrencyUnit::CurrencyUnit(v36, &v35, a4);
    v32 = v35;
    v30 = v14;
    if (v10)
    {
      if (a2[38] == 7)
      {
        v19 = 1;
      }

      else
      {
        v19 = a2[38];
      }

      v34 = v19;
      if (v12 && (v14 ? (v20 = v16 == 0) : (v20 = 1), !v20 ? (v21 = 0) : (v21 = 1), v19 == 2 || !v21 || v31 == 1))
      {
        if (!*icu::MeasureUnit::getType((a2 + 4)))
        {
          icu::MeasureUnit::getComplexity((a2 + 4), a4, v23, v24);
        }

        v22 = 1;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      icu::CurrencyUnit::CurrencyUnit(&v32, v37, (a2 + 4), a4);
      icu::CurrencyUnit::operator=(v36, v37);
      icu::CurrencyUnit::~CurrencyUnit(v37);
      v22 = 0;
      if (a2[38] == 7)
      {
        v19 = 1;
      }

      else
      {
        v19 = a2[38];
      }

      v34 = v19;
    }

    if (icu::number::impl::SymbolsWrapper::isNumberingSystem((a2 + 34)))
    {
      NumberingSystem = icu::number::impl::SymbolsWrapper::getNumberingSystem((a2 + 34));
      if (NumberingSystem)
      {
        Name = icu::NumberingSystem::getName(NumberingSystem);
        *(a1 + 192) = "";
        if (!icu::number::impl::SymbolsWrapper::isDecimalFormatSymbols((a2 + 34)))
        {
          operator new();
        }

LABEL_35:
        *(a1 + 104) = icu::number::impl::SymbolsWrapper::getDecimalFormatSymbols((a2 + 34));
        if (!Name)
        {
          if (*a4 > 0)
          {
            goto LABEL_42;
          }

          Name = (*(a1 + 104) + 2874);
        }

        if (*Name)
        {
LABEL_43:
          strncpy((a1 + 180), Name, 8uLL);
          *(a1 + 188) = 0;
          v33 = 0;
          if (v10 || !*(*(a1 + 104) + 2480))
          {
            if (v22)
            {
              v27 = 0;
            }

            else
            {
              v27 = 3;
              if (v30 && v16)
              {
                if (v19 != 2 && v10 == 0)
                {
                  v27 = v29;
                }

                else
                {
                  v27 = 0;
                }
              }
            }

            v33 = sub_19537B84C((a2 + 62), Name, v27, a4);
            if (*a4 > 0)
            {
              icu::CurrencyUnit::~CurrencyUnit(v36);
              goto LABEL_3;
            }
          }

          else
          {
            v33 = *(*(a1 + 104) + 2480);
          }

          operator new();
        }

LABEL_42:
        Name = "latn";
        goto LABEL_43;
      }

      *(a1 + 192) = "";
      if (!icu::number::impl::SymbolsWrapper::isDecimalFormatSymbols((a2 + 34)))
      {
LABEL_38:
        operator new();
      }
    }

    else
    {
      *(a1 + 192) = "";
      if (!icu::number::impl::SymbolsWrapper::isDecimalFormatSymbols((a2 + 34)))
      {
        goto LABEL_38;
      }
    }

    Name = 0;
    goto LABEL_35;
  }

LABEL_3:
  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t sub_195362C48(uint64_t result, uint64_t a2, int *a3)
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

uint64_t sub_195362D08(uint64_t a1, uint64_t a2, icu::PluralRules *a3, const icu::Locale *a4)
{
  v4 = a2;
  if (!a2)
  {
    v4 = *(a1 + 528);
    if (!v4)
    {
      v4 = icu::PluralRules::forLocale(a3, a4, a3);
      v6 = *(a1 + 528);
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      *(a1 + 528) = v4;
    }
  }

  return v4;
}

uint64_t sub_195362D7C(uint64_t a1, icu::number::impl::DecimalQuantity *this, icu::FormattedStringBuilder *a3, int a4, UErrorCode *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  UpperDisplayMagnitude = icu::number::impl::DecimalQuantity::getUpperDisplayMagnitude(this);
  v11 = 0;
  if ((UpperDisplayMagnitude & 0x80000000) == 0)
  {
    v12 = 0;
    v13 = UpperDisplayMagnitude + 1;
    do
    {
      if (icu::number::impl::Grouper::groupAtPosition((a1 + 4), v12, this))
      {
        if (*(a1 + 16))
        {
          v14 = 1096;
        }

        else
        {
          v14 = 72;
        }

        icu::UnicodeString::UnicodeString(v25, (*(a1 + 88) + v14));
        LODWORD(v11) = icu::FormattedStringBuilder::insert(a3, a4, v25, 38, 0, a5) + v11;
        icu::UnicodeString::~UnicodeString(v15, v25);
      }

      Digit = icu::number::impl::DecimalQuantity::getDigit(this, v12);
      v17 = *(a1 + 88);
      v18 = *(v17 + 1928);
      if (v18 == -1)
      {
        v20 = v17 + 264;
        v21 = v17 + ((Digit + 17) << 6) + 8;
        if ((Digit - 10) >= 0xFFFFFFF7)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        inserted = icu::FormattedStringBuilder::insert(a3, a4, v22, 32, 0, a5);
      }

      else
      {
        inserted = icu::FormattedStringBuilder::insertCodePoint(a3, a4, v18 + Digit, 32, a5);
      }

      v11 = (inserted + v11);
      ++v12;
    }

    while (v13 != v12);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_195362EF8(uint64_t a1, icu::number::impl::DecimalQuantity *this, icu::FormattedStringBuilder *a3, int a4, UErrorCode *a5)
{
  LowerDisplayMagnitude = icu::number::impl::DecimalQuantity::getLowerDisplayMagnitude(this);
  v11 = 0;
  if (LowerDisplayMagnitude < 0)
  {
    if (-LowerDisplayMagnitude > 1)
    {
      v12 = -LowerDisplayMagnitude;
    }

    else
    {
      v12 = 1;
    }

    v13 = -1;
    do
    {
      Digit = icu::number::impl::DecimalQuantity::getDigit(this, v13);
      v15 = *(a1 + 88);
      v16 = *(v15 + 1928);
      if (v16 == -1)
      {
        v18 = v15 + 264;
        v19 = v15 + ((Digit + 17) << 6) + 8;
        if ((Digit - 10) >= 0xFFFFFFF7)
        {
          v20 = v19;
        }

        else
        {
          v20 = v18;
        }

        inserted = icu::FormattedStringBuilder::insert(a3, v11 + a4, v20, 33, 0, a5);
      }

      else
      {
        inserted = icu::FormattedStringBuilder::insertCodePoint(a3, v11 + a4, v16 + Digit, 33, a5);
      }

      v11 = (inserted + v11);
      --v13;
      --v12;
    }

    while (v12);
  }

  return v11;
}

uint64_t sub_195362FE4(uint64_t a1)
{
  *a1 = &unk_1F093EE70;
  *(a1 + 12) = -3;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 32) = &unk_1F0935D00;
  *(a1 + 40) = 2;
  icu::UnicodeString::setToBogus((a1 + 32));
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 140) = 1;
  *(a1 + 144) = -2;
  *(a1 + 164) = 0;
  *(a1 + 156) = -1;
  *(a1 + 200) = 0;
  icu::number::impl::ScientificModifier::ScientificModifier(a1 + 216);
  *(a1 + 240) = &unk_1F093EEB0;
  *(a1 + 248) = 0;
  *(a1 + 256) = &unk_1F093EEB0;
  *(a1 + 264) = 1;
  *(a1 + 272) = &unk_1F093F5E0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  icu::number::impl::SimpleModifier::SimpleModifier((a1 + 312));
  icu::MeasureUnit::MeasureUnit(a1 + 416);
  *(a1 + 440) = a1 + 456;
  *(a1 + 448) = 2;
  *(a1 + 452) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0xFFFFFFFFLL;
  *(a1 + 488) = 0;
  return a1;
}

void sub_195363158(icu::number::impl::Modifier *a1)
{
  icu::number::impl::Modifier::~Modifier(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195363204(uint64_t a1)
{
  *a1 = &unk_1F093EFE0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = &unk_1F093F010;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 52) = 2;
  *(a1 + 56) = 0;
  icu::MeasureUnit::MeasureUnit(a1 + 64);
  icu::MeasureUnit::MeasureUnit(a1 + 88);
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 4;
  *(a1 + 148) = -3;
  *(a1 + 160) = -2;
  *(a1 + 180) = 0;
  *(a1 + 172) = -1;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0x900000007;
  *(a1 + 208) = 0;
  *(a1 + 212) = 2;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 252) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 276) = 0;
  *(a1 + 268) = 0;
  *(a1 + 284) = 0x300000000;
  *(a1 + 292) = 0;
  icu::Locale::Locale((a1 + 296));
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  return a1;
}

uint64_t sub_195363330(uint64_t a1)
{
  *a1 = &unk_1F093EF40;
  *(a1 + 8) = &unk_1F093EF70;
  for (i = 16; i != 848; i += 104)
  {
    icu::number::impl::SimpleModifier::SimpleModifier((a1 + i));
  }

  *(a1 + 848) = 0u;
  *(a1 + 864) = "";
  return a1;
}

uint64_t icu::number::impl::Grouper::forStrategy(unsigned int a1)
{
  if (a1 >= 5)
  {
    abort();
  }

  return qword_1954909F0[a1] | (qword_195490A18[a1] << 16) | qword_195490A18[a1];
}

unint64_t icu::number::impl::Grouper::forProperties(icu::number::impl::Grouper *this, const icu::number::impl::DecimalFormatProperties *a2)
{
  if (*(this + 80) != 1)
  {
    return 0xFFFEFFFFFFFFLL;
  }

  v2 = *(this + 38);
  v3 = *(this + 376);
  if (v3 <= 0)
  {
    LOWORD(v3) = *(this + 38);
  }

  if (v2 <= 0)
  {
    LOWORD(v2) = v3;
  }

  v4 = *(this + 27) << 16;
  if (v4 != -196608 && v4 <= 0)
  {
    v6 = 0xFFFE00000000;
  }

  else
  {
    v6 = *(this + 27) << 32;
  }

  return v6 & 0xFFFFFFFF00000000 | (v3 << 16) | v2;
}

uint64_t icu::number::impl::Grouper::setLocaleData(icu::number::impl::Grouper *this, const icu::number::impl::ParsedPatternInfo *a2, const icu::Locale *a3)
{
  result = *(this + 2);
  if (result == 65533)
  {
    v7 = sub_19537BBA8(a3);
    result = uprv_max(2, v7);
    goto LABEL_5;
  }

  if (result == 65534)
  {
    result = sub_19537BBA8(a3);
LABEL_5:
    *(this + 2) = result;
  }

  v8 = *this;
  if (v8 == 65534 || *(this + 1) == -4)
  {
    v9 = *(a2 + 9);
    if (v8 == 65532)
    {
      v10 = 3;
    }

    else
    {
      v10 = -1;
    }

    if (WORD1(v9) != 0xFFFF)
    {
      v10 = *(a2 + 9);
    }

    if ((~v9 & 0xFFFF00000000) != 0)
    {
      v11 = WORD1(*(a2 + 9));
    }

    else
    {
      v11 = v10;
    }

    *this = v10;
    *(this + 1) = v11;
  }

  else if (result == 65534)
  {
    result = sub_19537BBA8(a3);
    *(this + 2) = result;
  }

  return result;
}

BOOL icu::number::impl::Grouper::groupAtPosition(icu::number::impl::Grouper *this, int a2, const icu::number::impl::DecimalQuantity *a3)
{
  v3 = *this;
  if (*this)
  {
    v4 = v3 == 0xFFFF;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 0;
  }

  v6 = a2 - v3;
  if (v6 < 0)
  {
    return 0;
  }

  if (v6 % *(this + 1))
  {
    return 0;
  }

  return (icu::number::impl::DecimalQuantity::getUpperDisplayMagnitude(a3) - *this + 1) >= *(this + 2);
}

uint64_t icu::number::IntegerWidth::IntegerWidth(uint64_t this, __int16 a2, __int16 a3, char a4)
{
  *(this + 8) = 0;
  *this = a2;
  *(this + 2) = a3;
  *(this + 4) = a4;
  return this;
}

{
  *(this + 8) = 0;
  *this = a2;
  *(this + 2) = a3;
  *(this + 4) = a4;
  return this;
}

uint64_t icu::number::IntegerWidth::zeroFillTo(icu::number::IntegerWidth *this)
{
  if (this <= 0x3E7)
  {
    return this | 0xFFFF0000;
  }

  else
  {
    return 65810;
  }
}

unint64_t icu::number::IntegerWidth::truncateAt(icu::number::IntegerWidth *this, uint64_t a2)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    a2 = *this >> 16;
    v3 = *this & 0xFFFFFF0000000000;
    v4 = *(this + 2);
    v5 = *this & 0xFF00000000;
  }

  else
  {
    LOWORD(v2) = *this;
    if (a2 > 0x3E7 || *this > a2)
    {
      v6 = a2 == -1;
      if (a2 == -1)
      {
        LOWORD(a2) = -1;
      }

      else
      {
        LOWORD(a2) = 1;
      }

      if (!v6)
      {
        LOWORD(v2) = 274;
      }

      v3 = 0;
      v5 = 0;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }
  }

  return v5 | v3 | v2 | (a2 << 16);
}

void icu::number::IntegerWidth::apply(icu::number::IntegerWidth *this, icu::number::impl::DecimalQuantity *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (*(this + 8) == 1)
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v6 = *(this + 1);
      if (v6 == -1)
      {
        v8 = *this;

        icu::number::impl::DecimalQuantity::increaseMinIntegerTo(a2, v8);
      }

      else
      {
        if (*(this + 4) == 1 && icu::number::impl::DecimalQuantity::getMagnitude(a2) > v6)
        {
          *a3 = U_ILLEGAL_ARGUMENT_ERROR;
        }

        icu::number::impl::DecimalQuantity::increaseMinIntegerTo(a2, *this);
        v7 = *(this + 1);

        icu::number::impl::DecimalQuantity::applyMaxInteger(a2, v7);
      }
    }
  }
}

void *sub_1953637A0(void *a1, icu::MeasureUnit *this, _DWORD *a3, const char *a4, uint64_t a5, uint64_t a6, void *a7, UErrorCode *a8)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*icu::MeasureUnit::getType(this))
  {
    bzero(v24, 0x2C0uLL);
    for (i = 0; i != 704; i += 64)
    {
      v17 = &v24[i];
      *v17 = &unk_1F0935D00;
      *(v17 + 4) = 2;
    }

    sub_195363954(a1, this, a3, a4, v24, a8);
    sub_1953640B4(a1, this, v24, a8);
    v18 = *a8;
    if (v18 <= 0)
    {
      a7[106] = a5;
      a7[107] = a6;
      sub_195364558(a7, v24, 43, a8);
      v18 = v26;
      if ((v26 & 1) == 0)
      {
        icu::UnicodeString::UnicodeString(v23, &v25);
        a7[108] = sub_195364720(v23, *a8);
        icu::UnicodeString::~UnicodeString(v19, v23);
      }
    }

    for (j = 640; j != -64; j -= 64)
    {
      result = icu::UnicodeString::~UnicodeString(v18, &v24[j]);
    }
  }

  else
  {
    result = sub_19536486C(a1, this, a3, a4, a7, a8);
    a7[106] = a5;
    a7[107] = a6;
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195363954(uint64_t a1, icu::MeasureUnit *a2, _DWORD *a3, const char *a4, icu::UnicodeString *this, UErrorCode *a6)
{
  v62 = *MEMORY[0x1E69E9840];
  v30[0] = &unk_1F093F0E0;
  v30[1] = this;
  v12 = 11;
  v13 = this;
  do
  {
    icu::UnicodeString::setToBogus(v13);
    v13 = (v13 + 64);
    --v12;
  }

  while (v12);
  v14 = ures_open("icudt76l-unit", *(a1 + 40), a6);
  if (*a6 > 0)
  {
    goto LABEL_41;
  }

  v61 = 0;
  memset(&v60[1], 0, 48);
  v60[0] = &v60[1] + 5;
  LODWORD(v60[1]) = 40;
  icu::StringPiece::StringPiece(&v51, "/");
  icu::CharString::append(v60, v51, SDWORD2(v51), a6);
  Type = icu::MeasureUnit::getType(a2);
  icu::StringPiece::StringPiece(&v51, Type);
  icu::CharString::append(v60, v51, SDWORD2(v51), a6);
  icu::StringPiece::StringPiece(&v51, "/");
  icu::CharString::append(v60, v51, SDWORD2(v51), a6);
  v16 = ures_open("ICUDATA", "metadata", a6);
  v29 = *a6;
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  icu::StackUResourceBundle::StackUResourceBundle(&v51);
  memset(&v50[1], 0, 56);
  v50[0] = &v50[1] + 5;
  LODWORD(v50[1]) = 40;
  icu::StringPiece::StringPiece(v38, "alias/unit/");
  icu::CharString::append(v50, v38[0], v38[1], &v29);
  Subtype = icu::MeasureUnit::getSubtype(a2);
  icu::StringPiece::StringPiece(v38, Subtype);
  icu::CharString::append(v50, v38[0], v38[1], &v29);
  icu::StringPiece::StringPiece(v38, "/replacement");
  icu::CharString::append(v50, v38[0], v38[1], &v29);
  ures_getByKeyWithFallback(v16, v50[0], &v51, &v29);
  memset(&__s[1], 0, 56);
  __s[0] = &__s[1] + 5;
  LODWORD(__s[1]) = 40;
  if (v29 <= U_ZERO_ERROR)
  {
    memset(&v38[1], 0, 56);
    v38[0] = &unk_1F0935D00;
    LOWORD(v38[1]) = 2;
    LODWORD(v33) = 0;
    String = ures_getString(&v51, &v33, a6);
    if (*a6 <= 0)
    {
      v44 = String;
      icu::UnicodeString::setTo(v38, 1, &v44, v33);
    }

    else
    {
      icu::UnicodeString::setToBogus(v38);
    }

    icu::CharString::appendInvariantChars(__s, v38, a6);
    icu::UnicodeString::~UnicodeString(v20, v38);
  }

  else
  {
    v18 = icu::MeasureUnit::getSubtype(a2);
    icu::StringPiece::StringPiece(v38, v18);
    icu::CharString::append(__s, v38[0], v38[1], a6);
  }

  v21 = __s[0];
  v22 = strlen(__s[0]);
  v23 = v22;
  if (v22 >= 8 && !strcmp(&__s[0][(v22 & 0x7FFFFFFF) - 7], "-person"))
  {
    v23 -= 7;
  }

  icu::CharString::append(v60, v21, v23, a6);
  if (*a3 != 2)
  {
    v28 = *a6;
    v45 = 0u;
    v47 = 0u;
    v46 = 0u;
    v44 = &v45 + 5;
    LODWORD(v45) = 40;
    v48 = 0;
    icu::StringPiece::StringPiece(v38, "units");
    icu::CharString::append(&v44, v38[0], v38[1], &v28);
    icu::CharString::append(&v44, v60[0], v61, &v28);
    icu::StringPiece::StringPiece(v38, "/gender");
    icu::CharString::append(&v44, v38[0], v38[1], &v28);
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    memset(v38, 0, sizeof(v38));
    icu::StackUResourceBundle::StackUResourceBundle(v38);
    ures_getByKeyWithFallback(v14, v44, v38, &v28);
    *v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
    v33 = &unk_1F0935D00;
    LOWORD(v34[0]) = 2;
    v32 = 0;
    v24 = ures_getString(v38, &v32, &v28);
    if (v28 <= U_ZERO_ERROR)
    {
      v31 = v24;
      icu::UnicodeString::setTo(&v33, 1, &v31, v32);
    }

    else
    {
      icu::UnicodeString::setToBogus(&v33);
    }

    icu::UnicodeString::operator=((this + 640), &v33);
    icu::UnicodeString::~UnicodeString(v25, &v33);
    icu::StackUResourceBundle::~StackUResourceBundle(v38);
    if (BYTE4(v45))
    {
      free(v44);
    }
  }

  memset(&v38[1], 0, 56);
  v38[0] = &v38[1] + 5;
  LODWORD(v38[1]) = 40;
  icu::StringPiece::StringPiece(&v44, "units");
  icu::CharString::append(v38, v44, v45, a6);
  if (*a3 == 1)
  {
    v26 = "Short";
  }

  else
  {
    if (*a3)
    {
      goto LABEL_24;
    }

    v26 = "Narrow";
  }

  icu::StringPiece::StringPiece(&v44, v26);
  icu::CharString::append(v38, v44, v45, a6);
LABEL_24:
  icu::CharString::append(v38, v60[0], v61, a6);
  if (*a3 == 2)
  {
    if (*a4)
    {
      v45 = 0u;
      v47 = 0u;
      v46 = 0u;
      v44 = &v45 + 5;
      LODWORD(v45) = 40;
      v48 = 0;
      icu::CharString::append(&v44, v38[0], v38[7], a6);
      icu::StringPiece::StringPiece(&v33, "/case/");
      icu::CharString::append(&v44, v33, v34[0], a6);
      icu::StringPiece::StringPiece(&v33, a4);
      icu::CharString::append(&v44, v33, v34[0], a6);
      LODWORD(v33) = 0;
      ures_getAllChildrenWithFallback(v14, v44, v30, &v33);
      if (BYTE4(v45))
      {
        free(v44);
      }
    }
  }

  LODWORD(v44) = 0;
  ures_getAllChildrenWithFallback(v14, v38[0], v30, &v44);
  if (*a3 == 1 && v44 >= 1)
  {
    *a6 = v44;
  }

  if (BYTE4(v38[1]))
  {
    free(v38[0]);
  }

  if (BYTE4(__s[1]))
  {
    free(__s[0]);
  }

  if (BYTE4(v50[1]))
  {
    free(v50[0]);
  }

  icu::StackUResourceBundle::~StackUResourceBundle(&v51);
  if (v16)
  {
    ures_close(v16);
  }

  if (BYTE4(v60[1]))
  {
    free(v60[0]);
  }

LABEL_41:
  if (v14)
  {
    ures_close(v14);
  }

  icu::ResourceSink::~ResourceSink(v30);
  v27 = *MEMORY[0x1E69E9840];
}

void *sub_1953640B4(void *result, icu::MeasureUnitImpl *a2, uint64_t a3, UErrorCode *a4)
{
  v45[17] = *MEMORY[0x1E69E9840];
  if (*(a3 + 648))
  {
    v7 = result;
    memset(v35, 0, sizeof(v35));
    icu::MeasureUnit::getMeter(v42);
    sub_195367030(v7, v42, a4, v35);
    icu::MeasureUnit::~MeasureUnit(v42);
    v9 = WORD4(v35[0]);
    if (WORD4(v35[0]) < 0x20u)
    {
LABEL_56:
      result = icu::UnicodeString::~UnicodeString(v9, v35);
      goto LABEL_57;
    }

    memset(&v45[8], 0, 64);
    v44 = 0u;
    memset(v45, 0, 64);
    v43 = 0u;
    *&v44 = v45;
    DWORD2(v44) = 8;
    v45[8] = &v45[9] + 5;
    LODWORD(v45[9]) = 40;
    v10 = icu::MeasureUnitImpl::forMeasureUnit(a2, &v43, a4, v8);
    if (*v10 == 2)
    {
      *a4 = U_INTERNAL_PROGRAM_ERROR;
      *&v31 = &unk_1F0935D00;
      WORD4(v31) = 2;
      goto LABEL_53;
    }

    v11 = v10;
    if (*v10 != 1)
    {
      v14 = 0;
      goto LABEL_13;
    }

    v12 = *(v10 + 2);
    v13 = v12 - 1;
    if ((*(*(*(v10 + 2) + 8 * (v12 - 1)) + 8) & 0x80000000) == 0)
    {
      v14 = 0;
      goto LABEL_7;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    icu::Locale::Locale(v42, v7);
    sub_1953672B4(v42, "per", a4, &v38);
    icu::Locale::~Locale(v42);
    if (SWORD4(v38) < 0)
    {
      if (HIDWORD(v38) == 1)
      {
        goto LABEL_31;
      }
    }

    else if ((WORD4(v38) & 0x7FE0) == 0x20)
    {
LABEL_31:
      if ((BYTE8(v38) & 2) != 0)
      {
        v21 = (&v38 | 0xA);
      }

      else
      {
        v21 = *(&v39 + 1);
      }

      if (*v21 == 49)
      {
        v22 = *(v11 + 2);
        v14 = -1;
        do
        {
          v23 = *v22++;
          ++v14;
        }

        while ((*(v23 + 8) & 0x80000000) == 0);
LABEL_59:
        icu::UnicodeString::~UnicodeString(v22, &v38);
LABEL_7:
        if (v13 > v14)
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          icu::Locale::Locale(&v38, v7);
          sub_1953672B4(&v38, "times", a4, &v31);
          icu::Locale::~Locale(&v38);
          if (SWORD4(v31) < 0)
          {
            if (HIDWORD(v31) != 1)
            {
              goto LABEL_53;
            }
          }

          else if ((WORD4(v31) & 0x7FE0) != 0x20)
          {
            goto LABEL_53;
          }

          if ((BYTE8(v31) & 2) != 0)
          {
            v25 = (&v31 | 0xA);
          }

          else
          {
            v25 = *(&v32 + 1);
          }

          v26 = *v25;
          if (v26 != 48)
          {
            v14 = v13;
          }

          icu::UnicodeString::~UnicodeString(v26, &v31);
        }

LABEL_13:
        v15 = *(*(v11 + 2) + 8 * v14);
        v16 = *(v15 + 2);
        if (v16 < 0)
        {
          v16 = -v16;
        }

        if (v16 == 1)
        {
          goto LABEL_16;
        }

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        icu::Locale::Locale(v37, v7);
        sub_1953672B4(v37, "power", a4, &v31);
        icu::Locale::~Locale(v37);
        LODWORD(v18) = WORD4(v31) >> 5;
        if ((SWORD4(v31) & 0x8000u) == 0)
        {
          v18 = v18;
        }

        else
        {
          v18 = HIDWORD(v31);
        }

        if (v18 == 1)
        {
          icu::UnicodeString::~UnicodeString(v18, &v31);
          v19 = *(v15 + 2);
          if (v19 < 0)
          {
            v19 = -v19;
          }

          if (v19 == 1)
          {
            goto LABEL_16;
          }

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          icu::Locale::Locale(v36, v7);
          sub_1953672B4(v36, "prefix", a4, &v31);
          icu::Locale::~Locale(v36);
          LODWORD(v20) = WORD4(v31) >> 5;
          if ((SWORD4(v31) & 0x8000u) == 0)
          {
            v20 = v20;
          }

          else
          {
            v20 = HIDWORD(v31);
          }

          if (v20 == 1)
          {
            icu::UnicodeString::~UnicodeString(v20, &v31);
LABEL_16:
            SimpleUnitID = icu::SingleUnitImpl::getSimpleUnitID(v15);
            icu::StringPiece::StringPiece(v29, SimpleUnitID);
            icu::MeasureUnit::forIdentifier(v29[0], v29[1], a4, v30);
            sub_195367030(v7, v30, a4, &v31);
            icu::MeasureUnit::~MeasureUnit(v30);
          }
        }

LABEL_53:
        if (BYTE4(v45[9]))
        {
          free(v45[8]);
        }

        sub_195342340(&v43 + 8);
        icu::UnicodeString::operator=((a3 + 640), &v31);
        icu::UnicodeString::~UnicodeString(v27, &v31);
        goto LABEL_56;
      }

      if (v12 >= 1)
      {
        v22 = *(v11 + 2);
        while ((*(v22[--v12] + 8) & 0x80000000) != 0)
        {
          if (v12 <= 0)
          {
            goto LABEL_51;
          }
        }

        v14 = 0;
        v13 = v12;
        goto LABEL_59;
      }

LABEL_51:
      *&v31 = &unk_1F0935D00;
      v24 = 2;
      WORD4(v31) = 2;
LABEL_52:
      icu::UnicodeString::~UnicodeString(v24, &v38);
      goto LABEL_53;
    }

    icu::UnicodeString::UnicodeString(&v31, &v38);
    goto LABEL_52;
  }

LABEL_57:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_195364558(uint64_t a1, uint64_t a2, char a3, UErrorCode *a4)
{
  v8 = 0;
  v26 = *MEMORY[0x1E69E9840];
  v9 = (a1 + 88);
  v10 = 0uLL;
  while (1)
  {
    v25[2] = v10;
    v25[3] = v10;
    v25[0] = v10;
    v25[1] = v10;
    sub_195366A48(a2, v8, a4, v25);
    v11 = *a4;
    if (v11 > 0)
    {
      break;
    }

    v20[0] = 0;
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    v20[1] = &unk_1F0935D00;
    LOWORD(v21) = 2;
    icu::SimpleFormatter::applyPatternMinMaxArguments(v20, v25, 0, 1, 0, a4);
    if (*a4 > 0)
    {
      icu::SimpleFormatter::~SimpleFormatter(v20);
      break;
    }

    icu::number::impl::Modifier::Parameters::Parameters(v17, a1 + 8, 2, v8);
    icu::number::impl::SimpleModifier::SimpleModifier(&v18, v20, a3, 0, v17[0], v17[1]);
    icu::UnicodeString::operator=((v9 - 4), v19);
    v12 = v19[5];
    *v9 = v19[4];
    v9[1] = v12;
    v18 = &unk_1F093F328;
    icu::UnicodeString::~UnicodeString(v13, v19);
    icu::number::impl::Modifier::~Modifier(&v18);
    icu::SimpleFormatter::~SimpleFormatter(v20);
    result = icu::UnicodeString::~UnicodeString(v14, v25);
    ++v8;
    v9 = (v9 + 104);
    v10 = 0uLL;
    if (v8 == 8)
    {
      goto LABEL_8;
    }
  }

  result = icu::UnicodeString::~UnicodeString(v11, v25);
LABEL_8:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

const char *sub_195364720(icu::UnicodeString *a1, UErrorCode a2)
{
  __s1[8] = *MEMORY[0x1E69E9840];
  v12 = a2;
  v2 = *(a1 + 4);
  if ((v2 & 0x8000) != 0)
  {
    if (*(a1 + 3))
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = "";
    goto LABEL_16;
  }

  if (!(v2 >> 5))
  {
    goto LABEL_6;
  }

LABEL_3:
  memset(&__s1[1], 0, 56);
  __s1[0] = &__s1[1] + 5;
  LODWORD(__s1[1]) = 40;
  icu::CharString::appendInvariantChars(__s1, a1, &v12);
  if (v12 <= U_ZERO_ERROR)
  {
    v4 = 0;
    v5 = 7;
    v6 = __s1[0];
    v3 = "";
    while (v4 < v5)
    {
      v7 = (v5 + v4) / 2;
      v8 = off_1E740FFF8[v7];
      v9 = strcmp(v6, v8);
      if (v9 <= 0)
      {
        v5 = (v5 + v4) / 2;
      }

      else
      {
        v4 = v7 + 1;
      }

      if (!v9)
      {
        v3 = v8;
        break;
      }
    }
  }

  else
  {
    v3 = "";
  }

  if (BYTE4(__s1[1]))
  {
    free(__s1[0]);
  }

LABEL_16:
  v10 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_19536486C(uint64_t result, icu::MeasureUnitImpl *this, _DWORD *a3, const char *a4, uint64_t a5, UErrorCode *a6)
{
  v107 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    goto LABEL_51;
  }

  if (!a5)
  {
    *a6 = U_INTERNAL_PROGRAM_ERROR;
    goto LABEL_51;
  }

  v10 = result;
  v101 = 0u;
  v103 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  memset(v102, 0, sizeof(v102));
  v100 = 0u;
  *&v101 = v102;
  DWORD2(v101) = 8;
  *&v103 = &v103 + 13;
  DWORD2(v103) = 40;
  DWORD2(v106) = 0;
  v94 = 0u;
  v96 = 0u;
  v99 = 0u;
  v98 = 0u;
  v97 = 0u;
  memset(v95, 0, sizeof(v95));
  v93 = 0u;
  *&v94 = v95;
  DWORD2(v94) = 8;
  *&v96 = &v96 + 13;
  DWORD2(v96) = 40;
  DWORD2(v99) = 0;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  icu::MeasureUnitImpl::forMeasureUnitMaybeCopy(this, a6, &v74);
  if (*a6 <= 0)
  {
    if (SDWORD2(v74) >= 1)
    {
      v11 = 0;
      do
      {
        v12 = *(v75 + 8 * v11);
        v13 = *(v12 + 2);
        if (v13 <= 0)
        {
          *(v12 + 2) = -v13;
          v14 = &v93;
        }

        else
        {
          v14 = &v100;
        }

        icu::MeasureUnitImpl::appendSingleUnit(v14, v12, a6);
        ++v11;
      }

      while (v11 < SDWORD2(v74));
    }

    if (BYTE12(v80))
    {
      free(v80);
    }

    sub_195342340(&v74 + 8);
    v92 = 0;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    sub_195364FA0(&v84, v10, "case", "per");
    bzero(&v74, 0x2C0uLL);
    for (i = 0; i != 704; i += 64)
    {
      v16 = &v74 + i;
      *v16 = &unk_1F0935D00;
      *(v16 + 4) = 2;
    }

    icu::Locale::Locale(v73, v10);
    if (BYTE4(v84))
    {
      v17 = a4;
    }

    else
    {
      v17 = *(&v84 + 1);
    }

    sub_195365420(&v100, v73, a3, v17, &v74, a6);
    icu::Locale::~Locale(v73);
    bzero(v70, 0x2C0uLL);
    for (j = 0; j != 704; j += 64)
    {
      v19 = &v70[j];
      *v19 = &unk_1F0935D00;
      *(v19 + 4) = 2;
    }

    icu::Locale::Locale(v69, v10);
    if (BYTE5(v84))
    {
      v20 = a4;
    }

    else
    {
      v20 = *(&v88 + 1);
    }

    sub_195365420(&v93, v69, a3, v20, v70, a6);
    icu::Locale::~Locale(v69);
    v65 = 0u;
    v68 = 0;
    v67 = 0u;
    v66 = 0u;
    v64 = &unk_1F0935D00;
    LOWORD(v65) = 2;
    if ((v72 & 1) == 0)
    {
      icu::UnicodeString::operator=(&v64, &v71);
LABEL_28:
      v21 = v65 >> 5;
      if ((v65 & 0x8000u) != 0)
      {
        v21 = DWORD1(v65);
      }

      if (v21)
      {
        icu::UnicodeString::UnicodeString(v44, &v64);
        sub_195366BD0(a5, &v74, v44, 43, a6);
        icu::UnicodeString::~UnicodeString(v22, v44);
      }

      else
      {
        sub_195364558(a5, &v74, 43, a6);
      }

      icu::Locale::Locale(v42, v10);
      sub_195366E98(v42, "per", &v74, v70, a6, v43);
      *(a5 + 864) = sub_195364720(v43, *a6);
      icu::UnicodeString::~UnicodeString(v26, v43);
      icu::Locale::~Locale(v42);
      goto LABEL_38;
    }

    memset(v63, 0, sizeof(v63));
    icu::StringPiece::StringPiece(&v57, "per");
    sub_1953667CC(v57, v58, v10, a3, a6, v63);
    v57 = 0;
    v59 = 0u;
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = &unk_1F0935D00;
    LOWORD(v59) = 2;
    icu::SimpleFormatter::applyPatternMinMaxArguments(&v57, v63, 2, 2, 0, a6);
    if (*a6 <= 0)
    {
      memset(v56, 0, sizeof(v56));
      sub_195366A48(v70, 1u, a6, v56);
      v51[0] = 0;
      v52 = 0u;
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v51[1] = &unk_1F0935D00;
      LOWORD(v52) = 2;
      icu::SimpleFormatter::applyPatternMinMaxArguments(v51, v56, 0, 1, 0, a6);
      if (*a6 <= 0)
      {
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        sub_195366AB8(v51, &v47);
        if ((SWORD4(v47) & 0x8000u) == 0)
        {
          v31 = WORD4(v47) >> 5;
        }

        else
        {
          v31 = HIDWORD(v47);
        }

        v41 = v31;
        if ((BYTE8(v47) & 0x11) != 0)
        {
          v32 = 0;
        }

        else if ((BYTE8(v47) & 2) != 0)
        {
          v32 = (&v47 | 0xA);
        }

        else
        {
          v32 = *(&v48 + 1);
        }

        v33 = sub_195366B04(v32, &v41);
        memset(v46, 0, sizeof(v46));
        v40 = v33;
        icu::UnicodeString::UnicodeString(v46, 0, &v40);
        sub_1951D6EE0(v45, "{");
        icu::SimpleFormatter::format(&v57, v45, v46, &v64, a6);
        icu::UnicodeString::~UnicodeString(v34, v45);
        v35 = *a6;
        icu::UnicodeString::~UnicodeString(v36, v46);
        icu::UnicodeString::~UnicodeString(v37, &v47);
        icu::SimpleFormatter::~SimpleFormatter(v51);
        icu::UnicodeString::~UnicodeString(v38, v56);
        icu::SimpleFormatter::~SimpleFormatter(&v57);
        icu::UnicodeString::~UnicodeString(v39, v63);
        if (v35 <= U_ZERO_ERROR)
        {
          goto LABEL_28;
        }

LABEL_38:
        icu::UnicodeString::~UnicodeString(v25, &v64);
        for (k = 640; k != -64; k -= 64)
        {
          icu::UnicodeString::~UnicodeString(v27, &v70[k]);
        }

        for (m = 640; m != -64; m -= 64)
        {
          icu::UnicodeString::~UnicodeString(v27, (&v74 + m));
        }

        if (BYTE4(v89))
        {
          free(*(&v88 + 1));
        }

        if (BYTE4(v85))
        {
          free(*(&v84 + 1));
        }

        goto LABEL_46;
      }

      icu::SimpleFormatter::~SimpleFormatter(v51);
      icu::UnicodeString::~UnicodeString(v23, v56);
    }

    icu::SimpleFormatter::~SimpleFormatter(&v57);
    icu::UnicodeString::~UnicodeString(v24, v63);
    goto LABEL_38;
  }

  if (BYTE12(v80))
  {
    free(v80);
  }

  sub_195342340(&v74 + 8);
LABEL_46:
  if (BYTE12(v96))
  {
    free(v96);
  }

  sub_195342340(&v93 + 8);
  if (BYTE12(v103))
  {
    free(v103);
  }

  result = sub_195342340(&v100 + 8);
LABEL_51:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned int *sub_195364FA0(unsigned int *a1, uint64_t a2, const char *a3, const char *a4)
{
  v45[17] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 1) = a1 + 21;
  v8 = (a1 + 2);
  a1[4] = 40;
  *(a1 + 10) = 0;
  a1[16] = 0;
  *(a1 + 9) = a1 + 85;
  v9 = (a1 + 18);
  a1[20] = 40;
  *(a1 + 42) = 0;
  a1[32] = 0;
  memset(v45, 0, 136);
  icu::StackUResourceBundle::StackUResourceBundle(v45);
  v44 = 0;
  memset(v43, 0, sizeof(v43));
  icu::StackUResourceBundle::StackUResourceBundle(v43);
  ures_openDirectFillIn(v45, 0, "grammaticalFeatures", a1);
  ures_getByKey(v45, "grammaticalData", v45, a1);
  ures_getByKey(v45, "derivations", v45, a1);
  if (*a1 <= 0)
  {
    v26 = 0;
    ures_getByKey(v45, (a2 + 8), v43, &v26);
    if (v26 == 2)
    {
      ures_getByKey(v45, "root", v43, a1);
    }

    else
    {
      *a1 = v26;
    }

    ures_getByKey(v43, "component", v43, a1);
    ures_getByKey(v43, a3, v43, a1);
    ures_getByKey(v43, a4, v43, a1);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    v38 = &unk_1F0935D00;
    LOWORD(v39) = 2;
    LODWORD(v28) = 0;
    StringByIndex = ures_getStringByIndex(v43, 0, &v28, a1);
    if (*a1 <= 0)
    {
      v33 = StringByIndex;
      icu::UnicodeString::setTo(&v38, 1, &v33, v28);
    }

    else
    {
      icu::UnicodeString::setToBogus(&v38);
    }

    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
    v33 = &unk_1F0935D00;
    LOWORD(v34) = 2;
    v27 = 0;
    v11 = ures_getStringByIndex(v43, 1, &v27, a1);
    if (*a1 <= 0)
    {
      v28 = v11;
      icu::UnicodeString::setTo(&v33, 1, &v28, v27);
    }

    else
    {
      icu::UnicodeString::setToBogus(&v33);
    }

    v12 = *a1;
    if (v12 <= 0)
    {
      sub_1951D6EE0(&v28, L"compound");
      if (v29)
      {
        v16 = 1;
        v17 = (v39 & 1) == 0;
      }

      else
      {
        if ((v39 & 0x8000u) == 0)
        {
          v13 = v39 >> 5;
        }

        else
        {
          v13 = DWORD1(v39);
        }

        if ((v29 & 0x8000u) == 0)
        {
          v14 = v29 >> 5;
        }

        else
        {
          v14 = v31;
        }

        if ((v29 & 2) != 0)
        {
          v15 = v30;
        }

        else
        {
          v15 = v32;
        }

        v17 = icu::UnicodeString::doCompare(&v38, 0, v13, v15, v14 & (v14 >> 31), v14 & ~(v14 >> 31));
      }

      icu::UnicodeString::~UnicodeString(v16, &v28);
      if (v17)
      {
        *(a1 + 4) = 0;
        icu::CharString::appendInvariantChars(v8, &v38, a1);
      }

      else
      {
        *(a1 + 4) = 1;
      }

      sub_1951D6EE0(&v28, L"compound");
      if (v29)
      {
        v21 = 1;
        v22 = (v34 & 1) == 0;
      }

      else
      {
        if ((v34 & 0x8000u) == 0)
        {
          v18 = v34 >> 5;
        }

        else
        {
          v18 = DWORD1(v34);
        }

        if ((v29 & 0x8000u) == 0)
        {
          v19 = v29 >> 5;
        }

        else
        {
          v19 = v31;
        }

        if ((v29 & 2) != 0)
        {
          v20 = v30;
        }

        else
        {
          v20 = v32;
        }

        v22 = icu::UnicodeString::doCompare(&v33, 0, v18, v20, v19 & (v19 >> 31), v19 & ~(v19 >> 31));
      }

      icu::UnicodeString::~UnicodeString(v21, &v28);
      if (v22)
      {
        *(a1 + 5) = 0;
        icu::CharString::appendInvariantChars(v9, &v33, a1);
      }

      else
      {
        v12 = 1;
        *(a1 + 5) = 1;
      }
    }

    icu::UnicodeString::~UnicodeString(v12, &v33);
    icu::UnicodeString::~UnicodeString(v23, &v38);
  }

  icu::StackUResourceBundle::~StackUResourceBundle(v43);
  icu::StackUResourceBundle::~StackUResourceBundle(v45);
  v24 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_195365420(icu::MeasureUnitImpl *this, icu::Locale *a2, _DWORD *a3, const char *a4, uint64_t a5, UErrorCode *a6)
{
  v173 = *MEMORY[0x1E69E9840];
  v6 = *a6;
  if (*a6 <= 0)
  {
    if (*this == 2)
    {
      *a6 = U_UNSUPPORTED_ERROR;
      goto LABEL_217;
    }

    if (*(this + 38))
    {
      v13 = 0;
    }

    else
    {
      icu::MeasureUnitImpl::serialize(this, a6);
      v6 = *a6;
      v13 = *(this + 38) == 0;
    }

    if (v6 <= U_ZERO_ERROR && !v13)
    {
      memset(v123, 0, sizeof(v123));
      icu::MeasureUnit::MeasureUnit(v123);
      v116 = a2;
      if (icu::MeasureUnit::findBySubType(*(this + 12), *(this + 38), v123))
      {
        icu::MeasureUnit::MeasureUnit(&v147);
        v14 = (*(v123[0] + 32))(v123, &v147);
        icu::MeasureUnit::~MeasureUnit(&v147);
        if ((v14 & 1) == 0)
        {
          sub_195363954(a2, v123, a3, a4, a5, a6);
          sub_1953640B4(a2, v123, a5, a6);
        }

        goto LABEL_216;
      }

      memset(v172, 0, 64);
      icu::StringPiece::StringPiece(&v147, "times");
      sub_1953667CC(v147, v148, a2, a3, a6, v172);
      v167[0] = 0;
      v168 = 0u;
      v171 = 0;
      v169 = 0u;
      v170 = 0u;
      v167[1] = &unk_1F0935D00;
      LOWORD(v168) = 2;
      icu::SimpleFormatter::applyPatternMinMaxArguments(v167, v172, 2, 2, 0, a6);
      if (*a6 > 0)
      {
LABEL_215:
        icu::SimpleFormatter::~SimpleFormatter(v167);
        icu::UnicodeString::~UnicodeString(v106, v172);
LABEL_216:
        icu::MeasureUnit::~MeasureUnit(v123);
        goto LABEL_217;
      }

      v109 = this;
      v111 = a4;
      v15 = 0;
      v16 = a5;
      memset(v166, 0, 44);
      do
      {
        if (v15 == 20)
        {
          if (*(a5 + 328))
          {
            v17 = 2;
          }

          else
          {
            v17 = *(a5 + 328) & 0x1E;
          }

          *(a5 + 328) = v17;
        }

        else
        {
          icu::UnicodeString::setToBogus(v16);
        }

        *&v166[v15] = 0;
        v15 += 4;
        v16 = (v16 + 64);
      }

      while (v15 != 44);
      v165 = 0;
      v164 = 0u;
      v163 = 0u;
      v162 = 0u;
      v161 = 0u;
      memset(v160, 0, sizeof(v160));
      v18 = a2;
      sub_195364FA0(v160, a2, "plural", "times");
      v159 = 0;
      v158 = 0u;
      v157 = 0u;
      v156 = 0u;
      v155 = 0u;
      memset(v154, 0, sizeof(v154));
      sub_195364FA0(v154, a2, "case", "times");
      memset(v153, 0, 136);
      sub_195364FA0(v153, a2, "case", "power");
      v19 = v109;
      LODWORD(v20) = *(v109 + 2);
      if (v20 < 1)
      {
        v114 = 0;
        v98 = 0uLL;
        goto LABEL_198;
      }

      v21 = 0;
      v114 = 0;
      v110 = "";
      v115 = a3;
      while (1)
      {
        if (v21 >= v20 - 1)
        {
          if (BYTE5(v160[0]))
          {
            v24 = v110;
          }

          else
          {
            v24 = *(&v161 + 1);
          }

          v26 = v111;
          if (!BYTE5(v154[0]))
          {
            v26 = *(&v155 + 1);
          }

          v119 = v26;
        }

        else
        {
          v23 = v110;
          v22 = v111;
          if (BYTE4(v160[0]))
          {
            v24 = v110;
          }

          else
          {
            v24 = v160[1];
          }

          v25 = v154[1];
          if (BYTE4(v154[0]))
          {
            v25 = v111;
          }

          v119 = v25;
          if (!BYTE5(v160[0]))
          {
            v23 = *(&v161 + 1);
          }

          if (!BYTE5(v154[0]))
          {
            v22 = *(&v155 + 1);
          }

          v110 = v23;
          v111 = v22;
        }

        v112 = v21;
        v27 = *(*(v19 + 2) + 8 * v21);
        memset(v122, 0, sizeof(v122));
        icu::MeasureUnit::MeasureUnit(v122);
        SimpleUnitID = icu::SingleUnitImpl::getSimpleUnitID(v27);
        icu::StringPiece::StringPiece(&v147, SimpleUnitID);
        if (!icu::MeasureUnit::findBySubType(v147, v148, v122))
        {
          *a6 = U_UNSUPPORTED_ERROR;
          icu::MeasureUnit::~MeasureUnit(v122);
LABEL_214:
          sub_195366FEC(v153);
          sub_195366FEC(v154);
          sub_195366FEC(v160);
          goto LABEL_215;
        }

        sub_195367030(v18, v122, a6, v152);
        v29 = sub_195364720(v152, *a6);
        icu::UnicodeString::~UnicodeString(v30, v152);
        v121 = *(v27 + 2);
        bzero(&v147, 0x2C0uLL);
        for (i = 0; i != 88; i += 8)
        {
          v32 = &(&v147)[i];
          *v32 = &unk_1F0935D00;
          *(v32 + 4) = 2;
        }

        v33 = 0uLL;
        if (v121 == 1)
        {
          v19 = v109;
          goto LABEL_70;
        }

        v117 = v24;
        memset(v129, 0, sizeof(v129));
        icu::StringPiece::StringPiece(&v135, "compound/power");
        v129[0] = &v129[1] + 5;
        LODWORD(v129[1]) = 40;
        WORD2(v129[1]) = 0;
        LODWORD(v129[7]) = 0;
        icu::CharString::append(v129, v135, v136, a6);
        icu::CharString::appendNumber(v129, v121, a6);
        v34 = v129[0];
        v35 = v129[7];
        v142 = &unk_1F093F128;
        *&v143 = v29;
        v36 = &v147;
        *(&v143 + 1) = v119;
        *&v144 = &v147;
        v37 = 11;
        do
        {
          icu::UnicodeString::setToBogus(v36);
          v36 = (v36 + 64);
          --v37;
        }

        while (v37);
        v38 = ures_open("icudt76l-unit", *(v18 + 40), a6);
        if (*a6 <= 0)
        {
          break;
        }

LABEL_57:
        if (v38)
        {
          ures_close(v38);
        }

        icu::ResourceSink::~ResourceSink(&v142);
        v40 = *a6;
        a3 = v115;
        if (*a6 < 1)
        {
          v41 = v119;
          if (!BYTE4(v153[0]))
          {
            v41 = v153[1];
          }

          v119 = v41;
          *(v27 + 2) = 1;
          v19 = v109;
        }

        else
        {
          v19 = v109;
          if (v40 == U_RESOURCE_TYPE_MISMATCH && v121 >= 4)
          {
            *a6 = U_UNSUPPORTED_ERROR;
          }
        }

        v42 = BYTE4(v129[1]);
        if (BYTE4(v129[1]))
        {
          free(v129[0]);
        }

        v43 = v40 <= U_ZERO_ERROR;
        v33 = 0uLL;
        v24 = v117;
        if (!v43)
        {
          v44 = 0;
          goto LABEL_191;
        }

LABEL_70:
        v45 = *(v27 + 1);
        v146 = 0;
        v145 = v33;
        v144 = v33;
        v143 = v33;
        v142 = &unk_1F0935D00;
        LOWORD(v143) = 2;
        if (v45 != 30)
        {
          v137 = v33;
          v138 = v33;
          v136 = v33;
          v135 = &v136 + 5;
          LODWORD(v136) = 40;
          v139 = 0;
          PrefixBase = umeas_getPrefixBase(v45);
          icu::CharString::appendNumber(&v135, PrefixBase, a6);
          icu::CharString::append(&v135, 112, a6);
          PrefixPower = umeas_getPrefixPower(v45);
          icu::CharString::appendNumber(&v135, PrefixPower, a6);
          v108 = v108 & 0xFFFFFFFF00000000 | v139;
          sub_1953667CC(v135, v139, v18, a3, a6, v129);
          icu::UnicodeString::operator=(&v142, v129);
          icu::UnicodeString::~UnicodeString(v48, v129);
          *(v27 + 1) = 30;
          if (BYTE4(v136))
          {
            free(v135);
          }
        }

        bzero(&v135, 0x2C0uLL);
        for (j = 0; j != 88; j += 8)
        {
          v50 = &(&v135)[j];
          *v50 = &unk_1F0935D00;
          *(v50 + 4) = 2;
        }

        icu::SingleUnitImpl::build(v27, a6, v129);
        sub_195363954(v18, v129, a3, v119, &v135, a6);
        icu::MeasureUnit::~MeasureUnit(v129);
        v52 = *a6;
        if (v52 > 0)
        {
          v44 = 0;
          goto LABEL_188;
        }

        if ((v141[8] & 1) == 0)
        {
          v53 = 0uLL;
          memset(&v129[1], 0, 56);
          v129[0] = &unk_1F0935D00;
          LOWORD(v129[1]) = 2;
          if (v45 != 30)
          {
            icu::Locale::Locale(v133, v18);
            sub_195366E98(v133, "prefix", &v135, 0, a6, v134);
            icu::UnicodeString::operator=(v141, v134);
            icu::UnicodeString::~UnicodeString(v54, v134);
            icu::Locale::~Locale(v133);
            v53 = 0uLL;
          }

          if (v121 != 1)
          {
            icu::Locale::Locale(v132, v18);
            sub_195366E98(v132, "power", &v135, 0, a6, v134);
            icu::UnicodeString::operator=(v141, v134);
            icu::UnicodeString::~UnicodeString(v55, v134);
            icu::Locale::~Locale(v132);
            v53 = 0uLL;
          }

          *&v134[32] = v53;
          *&v134[48] = v53;
          *v134 = v53;
          *&v134[16] = v53;
          icu::Locale::Locale(v131, v18);
          sub_1953672B4(v131, "times", a6, v134);
          icu::Locale::~Locale(v131);
          if ((*&v134[8] & 0x80000000) == 0)
          {
            if ((*&v134[8] & 0x7FE0) == 0x20)
            {
              goto LABEL_84;
            }

LABEL_91:
            v57 = *(a5 + 648);
            if (v57)
            {
              v58 = v134;
              goto LABEL_94;
            }

LABEL_95:
            icu::UnicodeString::~UnicodeString(v57, v134);
            icu::UnicodeString::~UnicodeString(v59, v129);
            goto LABEL_96;
          }

          if (*&v134[12] != 1)
          {
            goto LABEL_91;
          }

LABEL_84:
          v56 = &v134[10];
          if ((v134[8] & 2) == 0)
          {
            v56 = *&v134[24];
          }

          v57 = *v56;
          if (v57 == 49)
          {
            v57 = (*(v19 + 2) - 1);
            v58 = v141;
            if (v112 != v57)
            {
              goto LABEL_95;
            }
          }

          else
          {
            if (v57 != 48)
            {
              goto LABEL_95;
            }

            v58 = v141;
            v57 = v112;
            if (v112)
            {
              goto LABEL_95;
            }
          }

LABEL_94:
          icu::UnicodeString::operator=((a5 + 640), v58);
          goto LABEL_95;
        }

LABEL_96:
        v113 = v45;
        v60 = 0;
        v61 = -512;
        v62 = 0uLL;
        v118 = v24;
        while (1)
        {
          v63 = a5 + v61;
          if ((*(a5 + v61 + 520) & 1) == 0)
          {
            v64 = v60;
            goto LABEL_101;
          }

          v52 = *&v140[v61];
          if ((v52 & 1) == 0)
          {
            break;
          }

LABEL_181:
          ++v60;
          v61 += 64;
          if (!v61)
          {
            v44 = 1;
            goto LABEL_187;
          }
        }

        sub_195366A48(a5, v60, a6, v129);
        icu::UnicodeString::operator=((v63 + 512), v129);
        icu::UnicodeString::~UnicodeString(v65, v129);
        v62 = 0uLL;
        v52 = *a6;
        v64 = v60;
        if (v52 > 0)
        {
          goto LABEL_186;
        }

LABEL_101:
        if (*v24)
        {
          v66 = sub_195367508(v24, a6, v51);
          v62 = 0uLL;
          v64 = v66;
        }

        *&v134[56] = 0;
        *&v134[40] = v62;
        *&v134[24] = v62;
        *&v134[8] = v62;
        *v134 = &unk_1F0935D00;
        *&v134[8] = 2;
        v120 = v64;
        sub_195366A48(&v135, v64, a6, v129);
        if (SLOWORD(v129[1]) >= 0)
        {
          v67 = LOWORD(v129[1]) >> 5;
        }

        else
        {
          v67 = HIDWORD(v129[1]);
        }

        v68 = icu::UnicodeString::doEqualsSubstring(v129, 0, 3, "{", 0, 3);
        if (SLOWORD(v129[1]) >= 0)
        {
          v69 = LOWORD(v129[1]) >> 5;
        }

        else
        {
          v69 = HIDWORD(v129[1]);
        }

        if (v68)
        {
          if (v69 < 4)
          {
            v71 = 0xFFFF;
          }

          else
          {
            v70 = &v129[2];
            if ((v129[1] & 2) == 0)
            {
              v70 = (v129[3] + 6);
            }

            v71 = *v70;
          }

          if (!u_isJavaSpaceChar(v71))
          {
            icu::UnicodeString::unBogus(v134);
            if (*&v134[8] >= 0)
            {
              v79 = *&v134[8] >> 5;
            }

            else
            {
              v79 = *&v134[12];
            }

            a3 = v115;
            icu::UnicodeString::doReplace(v134, 0, v79, v129, 3, (v67 - 3));
            v78 = 0;
            v81 = 2;
LABEL_161:
            icu::UnicodeString::~UnicodeString(v80, v129);
            if (!*&v166[4 * v60])
            {
              *&v166[4 * v60] = v81;
              v114 = v78;
            }

            v88 = 0uLL;
            v24 = v118;
            if (v113 != 30)
            {
              v129[0] = 0;
              memset(&v129[2], 0, 48);
              v130 = 0;
              v129[1] = &unk_1F0935D00;
              LOWORD(v129[2]) = 2;
              icu::SimpleFormatter::applyPatternMinMaxArguments(v129, &v142, 1, 1, 0, a6);
              if (*a6 > 0)
              {
                goto LABEL_184;
              }

              v128 = 0;
              v127 = 0u;
              v126 = 0u;
              v125 = 0u;
              v124 = &unk_1F0935D00;
              LOWORD(v125) = 2;
              if (*a3 == 2)
              {
                icu::UnicodeString::toLower(v134, v116);
              }

              icu::SimpleFormatter::format(v129, v134, &v124, a6);
              v89 = *a6;
              if (v89 > 0)
              {
                goto LABEL_183;
              }

              icu::UnicodeString::operator=(v134, &v124);
              icu::UnicodeString::~UnicodeString(v90, &v124);
              icu::SimpleFormatter::~SimpleFormatter(v129);
              v88 = 0uLL;
            }

            if (v121 != 1)
            {
              v130 = 0;
              *&v129[4] = v88;
              *&v129[6] = v88;
              *v129 = v88;
              *&v129[2] = v88;
              sub_195366A48(&v147, v120, a6, &v124);
              v129[1] = &unk_1F0935D00;
              LOWORD(v129[2]) = 2;
              icu::SimpleFormatter::applyPatternMinMaxArguments(v129, &v124, 1, 1, 0, a6);
              icu::UnicodeString::~UnicodeString(v91, &v124);
              if (*a6 > 0)
              {
                goto LABEL_184;
              }

              v128 = 0;
              v127 = 0u;
              v126 = 0u;
              v125 = 0u;
              v124 = &unk_1F0935D00;
              LOWORD(v125) = 2;
              if (*a3 == 2)
              {
                icu::UnicodeString::toLower(v134, v116);
              }

              icu::SimpleFormatter::format(v129, v134, &v124, a6);
              v89 = *a6;
              if (v89 > 0)
              {
LABEL_183:
                icu::UnicodeString::~UnicodeString(v89, &v124);
LABEL_184:
                icu::SimpleFormatter::~SimpleFormatter(v129);
                goto LABEL_185;
              }

              icu::UnicodeString::operator=(v134, &v124);
              icu::UnicodeString::~UnicodeString(v92, &v124);
              icu::SimpleFormatter::~SimpleFormatter(v129);
              v88 = 0uLL;
            }

            if (*(v63 + 520) < 0)
            {
              if (*(a5 + v61 + 524))
              {
                goto LABEL_177;
              }
            }

            else if (*(v63 + 520) >> 5)
            {
LABEL_177:
              v129[7] = 0;
              *&v129[3] = v88;
              *&v129[5] = v88;
              *&v129[1] = v88;
              v129[0] = &unk_1F0935D00;
              LOWORD(v129[1]) = 2;
              icu::SimpleFormatter::format(v167, (v63 + 512), v134, v129, a6);
              icu::UnicodeString::operator=((v63 + 512), v129);
              icu::UnicodeString::~UnicodeString(v93, v129);
LABEL_180:
              icu::UnicodeString::~UnicodeString(v94, v134);
              v62 = 0uLL;
              goto LABEL_181;
            }

            icu::UnicodeString::operator=((v63 + 512), v134);
            goto LABEL_180;
          }

          if (SLOWORD(v129[1]) >= 0)
          {
            v76 = LOWORD(v129[1]) >> 5;
          }

          else
          {
            v76 = HIDWORD(v129[1]);
          }

          if (v76 < 4)
          {
            v78 = 0xFFFF;
          }

          else
          {
            v77 = &v129[2];
            if ((v129[1] & 2) == 0)
            {
              v77 = (v129[3] + 6);
            }

            v78 = *v77;
          }

          icu::UnicodeString::unBogus(v134);
          if (*&v134[8] >= 0)
          {
            v82 = *&v134[8] >> 5;
          }

          else
          {
            v82 = *&v134[12];
          }

          icu::UnicodeString::doReplace(v134, 0, v82, v129, 4, (v67 - 4));
          v81 = 2;
          goto LABEL_160;
        }

        if (icu::UnicodeString::doEqualsSubstring(v129, v69 - 3, 3, "{", 0, 3))
        {
          v72 = v67 - 4;
          if (SLOWORD(v129[1]) >= 0)
          {
            v73 = LOWORD(v129[1]) >> 5;
          }

          else
          {
            v73 = HIDWORD(v129[1]);
          }

          if (v73 <= v72)
          {
            v75 = 0xFFFF;
          }

          else
          {
            v74 = &v129[1] + 2;
            if ((v129[1] & 2) == 0)
            {
              v74 = v129[3];
            }

            v75 = *&v74[2 * v72];
          }

          if (u_isJavaSpaceChar(v75))
          {
            icu::UnicodeString::unBogus(v134);
            if (*&v134[8] >= 0)
            {
              v85 = *&v134[8] >> 5;
            }

            else
            {
              v85 = *&v134[12];
            }

            icu::UnicodeString::doReplace(v134, 0, v85, v129, 0, v67 - 4);
            v80 = LOWORD(v129[1]);
            if (SLOWORD(v129[1]) >= 0)
            {
              v86 = LOWORD(v129[1]) >> 5;
            }

            else
            {
              v86 = HIDWORD(v129[1]);
            }

            if (v86 <= v72)
            {
              v81 = 4;
              v78 = 0xFFFF;
              goto LABEL_160;
            }

            v80 = &v129[1] + 2;
            if ((v129[1] & 2) == 0)
            {
              v80 = v129[3];
            }

            v78 = *&v80[2 * v72];
          }

          else
          {
            icu::UnicodeString::unBogus(v134);
            if (*&v134[8] >= 0)
            {
              v87 = *&v134[8] >> 5;
            }

            else
            {
              v87 = *&v134[12];
            }

            icu::UnicodeString::doReplace(v134, 0, v87, v129, 0, (v67 - 3));
            v78 = 0;
          }

          v81 = 4;
LABEL_160:
          a3 = v115;
          goto LABEL_161;
        }

        v83 = v67 - 2;
        v81 = 1;
        v84 = icu::UnicodeString::indexOf(v129, "{", 0, 3, 1, v83);
        icu::UnicodeString::operator=(v134, v129);
        if (v84 == -1)
        {
          v78 = 0;
          goto LABEL_160;
        }

        icu::UnicodeString::~UnicodeString(v80, v129);
        v95 = 16;
        *a6 = U_UNSUPPORTED_ERROR;
        a3 = v115;
LABEL_185:
        icu::UnicodeString::~UnicodeString(v95, v134);
LABEL_186:
        v44 = 0;
LABEL_187:
        v19 = v109;
LABEL_188:
        for (k = 80; k != -8; k -= 8)
        {
          icu::UnicodeString::~UnicodeString(v52, &(&v135)[k]);
        }

        icu::UnicodeString::~UnicodeString(v52, &v142);
LABEL_191:
        for (m = 80; m != -8; m -= 8)
        {
          icu::UnicodeString::~UnicodeString(v42, &(&v147)[m]);
        }

        icu::MeasureUnit::~MeasureUnit(v122);
        v18 = v116;
        v98 = 0uLL;
        if ((v44 & 1) == 0)
        {
          goto LABEL_214;
        }

        v21 = (v112 + 1);
        v20 = *(v19 + 2);
        if ((v112 + 1) >= v20)
        {
LABEL_198:
          v99 = 0;
          while (1)
          {
            v100 = *&v166[v99];
            if (v100 == 4)
            {
              break;
            }

            if (v100 == 2)
            {
              v151 = 0;
              v150 = v98;
              v149 = v98;
              v148 = v98;
              v147 = &unk_1F0935D00;
              LOWORD(v148) = 2;
              icu::UnicodeString::doAppend(&v147, "{", 0, 3);
              if (v114)
              {
                LOWORD(v135) = v114;
                icu::UnicodeString::doAppend(&v147, &v135, 0, 1);
              }

              v101 = *(a5 + 8);
              v102 = v101;
              v103 = v101 >> 5;
              if (v102 >= 0)
              {
                v104 = v103;
              }

              else
              {
                v104 = *(a5 + 12);
              }

              icu::UnicodeString::doAppend(&v147, a5, 0, v104);
              icu::UnicodeString::operator=(a5, &v147);
              icu::UnicodeString::~UnicodeString(v105, &v147);
LABEL_210:
              v98 = 0uLL;
            }

            v99 += 4;
            a5 += 64;
            if (v99 == 32)
            {
              goto LABEL_214;
            }
          }

          if (v114)
          {
            LOWORD(v147) = v114;
            icu::UnicodeString::doAppend(a5, &v147, 0, 1);
          }

          icu::UnicodeString::doAppend(a5, "{", 0, 3);
          goto LABEL_210;
        }
      }

      v139 = 0;
      v137 = 0u;
      v138 = 0u;
      v136 = 0u;
      v135 = &v136 + 5;
      LODWORD(v136) = 40;
      icu::StringPiece::StringPiece(v134, "units");
      icu::CharString::append(&v135, *v134, *&v134[8], a6);
      if (*v115 == 1)
      {
        v39 = "Short";
      }

      else
      {
        if (*v115)
        {
LABEL_53:
          icu::StringPiece::StringPiece(v134, "/");
          icu::CharString::append(&v135, *v134, *&v134[8], a6);
          icu::CharString::append(&v135, v34, v35, a6);
          *v134 = *a6;
          ures_getAllChildrenWithFallback(v38, v135, &v142, v134);
          if (*v115 == 1)
          {
            *a6 = *v134;
          }

          if (BYTE4(v136))
          {
            free(v135);
          }

          goto LABEL_57;
        }

        v39 = "Narrow";
      }

      icu::StringPiece::StringPiece(v134, v39);
      icu::CharString::append(&v135, *v134, *&v134[8], a6);
      goto LABEL_53;
    }
  }

LABEL_217:
  v107 = *MEMORY[0x1E69E9840];
}

void sub_1953667CC(const char *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _DWORD *a4@<X3>, UErrorCode *a5@<X4>, uint64_t a6@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v11 = ures_open("icudt76l-unit", *(a3 + 40), a5);
  if (*a5 >= 1)
  {
    *a6 = &unk_1F0935D00;
    *(a6 + 8) = 2;
    goto LABEL_17;
  }

  memset(&v21[1], 0, 48);
  v22 = 0;
  v21[0] = &v21[1] + 5;
  LODWORD(v21[1]) = 40;
  icu::StringPiece::StringPiece(&v19, "units");
  icu::CharString::append(v21, v19, v20, a5);
  if (*a4 == 1)
  {
    v12 = "Short";
    goto LABEL_7;
  }

  if (!*a4)
  {
    v12 = "Narrow";
LABEL_7:
    icu::StringPiece::StringPiece(&v19, v12);
    icu::CharString::append(v21, v19, v20, a5);
  }

  icu::StringPiece::StringPiece(&v19, "/compound/");
  icu::CharString::append(v21, v19, v20, a5);
  icu::CharString::append(v21, a1, a2, a5);
  v13 = *a5;
  v17 = 0;
  v18 = v13;
  StringByKeyWithFallback = ures_getStringByKeyWithFallback(v11, v21[0], &v17, &v18);
  v15 = v18;
  if (v18 < 1 || *a4 == 1)
  {
    *a5 = v18;
  }

  else
  {
    LODWORD(v22) = 0;
    *v21[0] = 0;
    icu::StringPiece::StringPiece(&v19, "unitsShort/compound/");
    icu::CharString::append(v21, v19, v20, a5);
    icu::CharString::append(v21, a1, a2, a5);
    StringByKeyWithFallback = ures_getStringByKeyWithFallback(v11, v21[0], &v17, a5);
    v15 = *a5;
  }

  if (v15 < U_ILLEGAL_ARGUMENT_ERROR)
  {
    icu::UnicodeString::UnicodeString(a6, StringByKeyWithFallback, v17);
  }

  else
  {
    *a6 = &unk_1F0935D00;
    *(a6 + 8) = 2;
  }

  if (BYTE4(v21[1]))
  {
    free(v21[0]);
  }

LABEL_17:
  if (v11)
  {
    ures_close(v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

icu::UnicodeString *sub_195366A48@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  result = icu::UnicodeString::UnicodeString(a4, (a1 + (a2 << 6)));
  if (*(a4 + 8))
  {
    result = icu::UnicodeString::operator=(a4, (a1 + 320));
    if (*(a4 + 8))
    {
      *a3 = 5;
    }
  }

  return result;
}

uint64_t sub_195366AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x11) == 0)
  {
    if ((v2 & 2) != 0)
    {
      v3 = (a1 + 18);
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = *(a1 + 32);
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v4 = *(a1 + 20);
    return icu::SimpleFormatter::getTextWithNoArguments(0, v3, v4, 0, a2);
  }

  v3 = 0;
  if ((v2 & 0x8000) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v4 = v2 >> 5;
  return icu::SimpleFormatter::getTextWithNoArguments(0, v3, v4, 0, a2);
}

unsigned __int16 *sub_195366B04(unsigned __int16 *a1, int *a2)
{
  v2 = a1;
  if (*a2 >= 1 && (u_isJavaSpaceChar(*a1) || u_isJavaSpaceChar(v2[*a2 - 1])))
  {
    v4 = *a2;
    if (v4 <= 0)
    {
      v6 = *a2;
      LODWORD(v4) = 0;
    }

    else
    {
      v5 = 0;
      while (u_isJavaSpaceChar(v2[v5]))
      {
        if (v4 == ++v5)
        {
          v6 = v4;
          goto LABEL_13;
        }
      }

      v6 = v4 + 1;
      v7 = &v2[v4 - 1];
      do
      {
        v8 = *v7--;
        --v6;
      }

      while (u_isJavaSpaceChar(v8));
      LODWORD(v4) = v5;
    }

LABEL_13:
    *a2 = v6 - v4;
    v2 += v4;
  }

  return v2;
}

void sub_195366BD0(uint64_t a1, uint64_t a2, icu::UnicodeString *a3, char a4, UErrorCode *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v34[0] = 0;
  v35 = 0u;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34[1] = &unk_1F0935D00;
  LOWORD(v35) = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments(v34, a3, 1, 1, 0, a5);
  if (*a5 <= 0)
  {
    v8 = 0;
    v9 = (a1 + 88);
    while (1)
    {
      memset(v33, 0, sizeof(v33));
      sub_195366A48(a2, v8, a5, v33);
      v10 = *a5;
      if (v10 > 0)
      {
        break;
      }

      v32 = 0;
      v31 = 0u;
      v30 = 0u;
      v29 = 0u;
      v28 = &unk_1F0935D00;
      LOWORD(v29) = 2;
      v11 = LOWORD(v33[2]) >> 5;
      if (SLOWORD(v33[2]) < 0)
      {
        v11 = v33[3];
      }

      if (v11)
      {
        icu::SimpleFormatter::format(v34, v33, &v28, a5);
        v12 = *a5;
        if (v12 > 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        icu::UnicodeString::operator=(&v28, a3);
      }

      v23[0] = 0;
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      v23[1] = &unk_1F0935D00;
      LOWORD(v24) = 2;
      icu::SimpleFormatter::applyPatternMinMaxArguments(v23, &v28, 0, 1, 0, a5);
      if (*a5 > 0)
      {
        icu::SimpleFormatter::~SimpleFormatter(v23);
LABEL_14:
        icu::UnicodeString::~UnicodeString(v12, &v28);
        break;
      }

      icu::number::impl::Modifier::Parameters::Parameters(v20, a1 + 8, 2, v8);
      icu::number::impl::SimpleModifier::SimpleModifier(&v21, v23, a4, 0, v20[0], v20[1]);
      icu::UnicodeString::operator=((v9 - 4), v22);
      v13 = v22[5];
      *v9 = v22[4];
      v9[1] = v13;
      v21 = &unk_1F093F328;
      icu::UnicodeString::~UnicodeString(v14, v22);
      icu::number::impl::Modifier::~Modifier(&v21);
      icu::SimpleFormatter::~SimpleFormatter(v23);
      icu::UnicodeString::~UnicodeString(v15, &v28);
      icu::UnicodeString::~UnicodeString(v16, v33);
      ++v8;
      v9 = (v9 + 104);
      if (v8 == 8)
      {
        goto LABEL_16;
      }
    }

    icu::UnicodeString::~UnicodeString(v10, v33);
  }

LABEL_16:
  icu::SimpleFormatter::~SimpleFormatter(v34);
  v17 = *MEMORY[0x1E69E9840];
}

void *sub_195366E98@<X0>(icu::Locale *a1@<X0>, const char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, UErrorCode *a5@<X4>, icu::UnicodeString *a6@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  icu::Locale::Locale(v17, a1);
  sub_1953672B4(v17, a2, a5, &v18);
  icu::Locale::~Locale(v17);
  if (SWORD4(v18) < 0)
  {
    if (HIDWORD(v18) != 1)
    {
      goto LABEL_11;
    }
  }

  else if ((WORD4(v18) & 0x7FE0) != 0x20)
  {
    goto LABEL_11;
  }

  if ((BYTE8(v18) & 2) != 0)
  {
    v11 = (&v18 | 0xA);
  }

  else
  {
    v11 = *(&v19 + 1);
  }

  v12 = *v11;
  if (v12 == 49)
  {
    if (!a4)
    {
      *a6 = &unk_1F0935D00;
      v14 = 2;
      *(a6 + 4) = 2;
      goto LABEL_15;
    }

    v13 = (a4 + 640);
    goto LABEL_14;
  }

  if (v12 == 48)
  {
    v13 = (a3 + 640);
LABEL_14:
    icu::UnicodeString::UnicodeString(a6, v13);
    goto LABEL_15;
  }

LABEL_11:
  icu::UnicodeString::UnicodeString(a6, &v18);
LABEL_15:
  result = icu::UnicodeString::~UnicodeString(v14, &v18);
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_195366FEC(uint64_t a1)
{
  if (*(a1 + 84))
  {
    free(*(a1 + 72));
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

void sub_195367030(uint64_t a1@<X0>, icu::MeasureUnit *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v22[8] = *MEMORY[0x1E69E9840];
  v7 = ures_open("icudt76l-unit", *(a1 + 40), a3);
  if (*a3 < 1)
  {
    Subtype = icu::MeasureUnit::getSubtype(a2);
    v9 = strlen(Subtype);
    if (v9 >= 8 && (v10 = icu::MeasureUnit::getSubtype(a2), !strcmp(&v10[(v9 & 0x7FFFFFFF) - 7], "-person")))
    {
      v12 = icu::MeasureUnit::getSubtype(a2);
      v13 = v9 - 7;
    }

    else
    {
      v11 = icu::MeasureUnit::getSubtype(a2);
      icu::StringPiece::StringPiece(v22, v11);
      v12 = v22[0];
      v13 = v22[1];
    }

    memset(&v22[1], 0, 56);
    v22[0] = &v22[1] + 5;
    LODWORD(v22[1]) = 40;
    icu::StringPiece::StringPiece(&v20, "units/");
    icu::CharString::append(v22, v20, v21, a3);
    Type = icu::MeasureUnit::getType(a2);
    icu::StringPiece::StringPiece(&v20, Type);
    icu::CharString::append(v22, v20, v21, a3);
    icu::StringPiece::StringPiece(&v20, "/");
    icu::CharString::append(v22, v20, v21, a3);
    icu::CharString::append(v22, v12, v13, a3);
    icu::StringPiece::StringPiece(&v20, "/gender");
    icu::CharString::append(v22, v20, v21, a3);
    v15 = *a3;
    v19 = 0;
    LODWORD(v20) = v15;
    StringByKeyWithFallback = ures_getStringByKeyWithFallback(v7, v22[0], &v19, &v20);
    if (v20 <= 0)
    {
      *a3 = v20;
      v18 = StringByKeyWithFallback;
      icu::UnicodeString::UnicodeString(a4, 1, &v18);
    }

    else
    {
      *a4 = &unk_1F0935D00;
      *(a4 + 8) = 2;
    }

    if (BYTE4(v22[1]))
    {
      free(v22[0]);
    }
  }

  else
  {
    *a4 = &unk_1F0935D00;
    *(a4 + 8) = 2;
  }

  if (v7)
  {
    ures_close(v7);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1953672B4(uint64_t a1@<X0>, const char *a2@<X1>, UErrorCode *a3@<X2>, icu::UnicodeString *a4@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  icu::StackUResourceBundle::StackUResourceBundle(v20);
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  icu::StackUResourceBundle::StackUResourceBundle(v18);
  ures_openDirectFillIn(v20, 0, "grammaticalFeatures", a3);
  ures_getByKey(v20, "grammaticalData", v20, a3);
  ures_getByKey(v20, "derivations", v20, a3);
  ures_getByKey(v20, (a1 + 8), v18, a3);
  if (*a3 == U_MISSING_RESOURCE_ERROR)
  {
    *a3 = U_ZERO_ERROR;
    ures_getByKey(v20, "root", v18, a3);
  }

  ures_getByKey(v18, "compound", v18, a3);
  ures_getByKey(v18, "gender", v18, a3);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0;
  v13 = &unk_1F0935D00;
  LOWORD(v14) = 2;
  v12 = 0;
  StringByKey = ures_getStringByKey(v18, a2, &v12, a3);
  if (*a3 <= 0)
  {
    v11 = StringByKey;
    icu::UnicodeString::setTo(&v13, 1, &v11, v12);
  }

  else
  {
    icu::UnicodeString::setToBogus(&v13);
  }

  if (*a3 < 1)
  {
    icu::UnicodeString::UnicodeString(a4, &v13);
  }

  else
  {
    *a4 = &unk_1F0935D00;
    v9 = 2;
    *(a4 + 4) = 2;
  }

  icu::UnicodeString::~UnicodeString(v9, &v13);
  icu::StackUResourceBundle::~StackUResourceBundle(v18);
  icu::StackUResourceBundle::~StackUResourceBundle(v20);
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195367508(icu::StandardPlural *this, char *a2, UErrorCode *a3)
{
  v5 = *this;
  if (v5 == 112)
  {
    if (*(this + 1) == 101 && *(this + 2) == 114 && !*(this + 3))
    {
      return 9;
    }
  }

  else if (v5 == 103)
  {
    if (!strcmp(this + 1, "ender"))
    {
      return 10;
    }
  }

  else if (v5 == 100 && !strcmp(this + 1, "nam"))
  {
    return 8;
  }

  return icu::StandardPlural::indexFromString(this, a2, a3);
}

void sub_1953675C8(uint64_t a1@<X0>, icu::MeasureUnit *a2@<X1>, int a3@<W2>, UErrorCode *a4@<X3>, uint64_t a5@<X8>)
{
  v17[24] = *MEMORY[0x1E69E9840];
  v15 = a3;
  if (*a4 < 1)
  {
    bzero(v16, 0x2C0uLL);
    for (i = 0; i != 704; i += 64)
    {
      v11 = &v16[i];
      *v11 = &unk_1F0935D00;
      *(v11 + 4) = 2;
    }

    sub_195363954(a1, a2, &v15, "", v16, a4);
    icu::UnicodeString::UnicodeString(a5, v17);
    for (j = 640; j != -64; j -= 64)
    {
      icu::UnicodeString::~UnicodeString(v12, &v16[j]);
    }

    v14 = *MEMORY[0x1E69E9840];
  }

  else
  {
    *(a5 + 8) = 0u;
    *(a5 + 56) = 0;
    *(a5 + 40) = 0u;
    *(a5 + 24) = 0u;
    *a5 = &unk_1F0935D00;
    *(a5 + 8) = 2;
    v6 = *MEMORY[0x1E69E9840];

    icu::UnicodeString::setToBogus(a5);
  }
}

void sub_195367754(uint64_t a1@<X0>, icu::MeasureUnit *a2@<X1>, int a3@<W2>, unsigned int a4@<W3>, UErrorCode *a5@<X4>, uint64_t a6@<X8>)
{
  v20[48] = *MEMORY[0x1E69E9840];
  v18 = a3;
  if (*a5 < 1)
  {
    bzero(v19, 0x2C0uLL);
    for (i = 0; i != 704; i += 64)
    {
      v13 = &v19[i];
      *v13 = &unk_1F0935D00;
      *(v13 + 4) = 2;
    }

    sub_195363954(a1, a2, &v18, "", v19, a5);
    if (*a5 < 1)
    {
      if (*&v19[64 * a4 + 8])
      {
        v15 = v20;
      }

      else
      {
        v15 = &v19[64 * a4];
      }

      icu::UnicodeString::UnicodeString(a6, v15);
    }

    else
    {
      *(a6 + 8) = 0u;
      *(a6 + 56) = 0;
      *(a6 + 40) = 0u;
      *(a6 + 24) = 0u;
      *a6 = &unk_1F0935D00;
      *(a6 + 8) = 2;
      icu::UnicodeString::setToBogus(a6);
    }

    for (j = 640; j != -64; j -= 64)
    {
      icu::UnicodeString::~UnicodeString(v14, &v19[j]);
    }

    v17 = *MEMORY[0x1E69E9840];
  }

  else
  {
    *(a6 + 8) = 0u;
    *(a6 + 56) = 0;
    *(a6 + 40) = 0u;
    *(a6 + 24) = 0u;
    *a6 = &unk_1F0935D00;
    *(a6 + 8) = 2;
    v7 = *MEMORY[0x1E69E9840];

    icu::UnicodeString::setToBogus(a6);
  }
}

void sub_195367DC0(void *a1, icu::number::impl::DecimalQuantity *a2, uint64_t a3, int *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v8 = a1[107];
  if (v8)
  {
    (*(*v8 + 16))(v8, a2, a3, a4);
  }

  v9 = a1[106];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  icu::number::impl::DecimalQuantity::DecimalQuantity(v14, a2);
  sub_195374000(a3 + 104, v14, a4);
  v10 = 5;
  if (v9 && *a4 <= 0)
  {
    memset(v16, 0, sizeof(v16));
    icu::PluralRules::select(v9, v14, v16);
    v12 = icu::StandardPlural::indexOrNegativeFromString(v16, v11);
    if (v12 < 0)
    {
      v10 = 5;
    }

    else
    {
      v10 = v12;
    }

    icu::UnicodeString::~UnicodeString(5, v16);
  }

  icu::number::impl::DecimalQuantity::~DecimalQuantity(v14);
  *(a3 + 184) = a1[108];
  *(a3 + 192) = &a1[13 * v10 + 2];
  v13 = *MEMORY[0x1E69E9840];
}

void sub_195367F20(int a1, icu::MeasureUnitImpl *this, int a3, UErrorCode *a4, int a5, int a6, uint64_t a7, UErrorCode *a8)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a8 <= 0)
  {
    v15 = 0u;
    memset(&v14[4], 0, 48);
    memset(v14, 0, 64);
    v12 = 0u;
    v13 = 0u;
    *&v13 = v14;
    DWORD2(v13) = 8;
    *&v14[4] = &v14[4] + 13;
    DWORD2(v14[4]) = 40;
    DWORD2(v15) = 0;
    v10 = icu::MeasureUnitImpl::forMeasureUnit(this, &v12, a8, a4);
    if (*v10 == 2)
    {
      *(a7 + 32) = *(v10 + 2);
      operator new[]();
    }

    *a8 = U_UNSUPPORTED_ERROR;
    if (BYTE12(v14[4]))
    {
      free(*&v14[4]);
    }

    sub_195342340(&v12 + 8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void *sub_195368198(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (*result)
  {
    v5 = v4 - 16;
    v6 = *(v4 - 8);
    if (v6)
    {
      v7 = (v4 + (v6 << 6) - 64);
      v8 = -64 * v6;
      do
      {
        icu::UnicodeString::~UnicodeString(v7);
        v7 = (v9 - 64);
        v8 += 64;
      }

      while (v8);
    }

    result = MEMORY[0x19A8B25E0](v5, 0x1093C808E78F3FDLL);
  }

  *v3 = a2;
  return result;
}

uint64_t sub_195368210(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = *(a1 + 24);
  if (v8)
  {
    (*(*v8 + 16))(v8, a2, a3, a4);
  }

  result = sub_195368294(a1, a2, a3, a4);
  *(a3 + 192) = result;
  return result;
}

uint64_t sub_195368294(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a3 + 484))
  {
    *(a1 + 32);
    operator new[]();
  }

  *a4 = 16;
  v4 = *MEMORY[0x1E69E9840];
  return a3 + 240;
}

void *sub_195368B80(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *result;
  if (*result)
  {
    v5 = v4 - 16;
    v6 = *(v4 - 8);
    if (v6)
    {
      v7 = (v4 + 24 * v6 - 24);
      v8 = -24 * v6;
      do
      {
        icu::MeasureUnit::~MeasureUnit(v7);
        v7 = (v9 - 24);
        v8 += 24;
      }

      while (v8);
    }

    result = MEMORY[0x19A8B25E0](v5, 0x10A1C8022337C91);
  }

  *v3 = a2;
  return result;
}

uint64_t sub_195368C00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  result = (*(**(a1 + 272) + 16))(*(a1 + 272));
  if (*(a1 + 192) < 1)
  {
LABEL_5:
    if (*a4 <= 0)
    {
      *a4 = 5;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      result = (*(*(*(a1 + 264) + v8) + 32))(*(a1 + 264) + v8, a3 + 416);
      if (result)
      {
        break;
      }

      ++v9;
      v8 += 24;
      if (v9 >= *(a1 + 192))
      {
        goto LABEL_5;
      }
    }

    v10 = *(**(*(a1 + 184) + 8 * v9) + 16);

    return v10();
  }

  return result;
}

void *sub_195368D2C(void *a1)
{
  v2 = 0;
  *a1 = &unk_1F093EF40;
  v3 = (a1 + 1);
  a1[1] = &unk_1F093EF70;
  do
  {
    a1[v2 + 93] = &unk_1F093F328;
    icu::UnicodeString::~UnicodeString(&a1[v2 + 94]);
    icu::number::impl::Modifier::~Modifier(&a1[v2 + 93]);
    v2 -= 13;
  }

  while (v2 != -104);
  icu::number::impl::ModifierStore::~ModifierStore(v3);
  return a1;
}

void sub_195368DEC(void *a1)
{
  v2 = 0;
  *a1 = &unk_1F093EF40;
  v3 = (a1 + 1);
  a1[1] = &unk_1F093EF70;
  do
  {
    a1[v2 + 93] = &unk_1F093F328;
    icu::UnicodeString::~UnicodeString(&a1[v2 + 94]);
    icu::number::impl::Modifier::~Modifier(&a1[v2 + 93]);
    v2 -= 13;
  }

  while (v2 != -104);
  icu::number::impl::ModifierStore::~ModifierStore(v3);

  JUMPOUT(0x19A8B2600);
}

void sub_195368ECC(icu::number::impl::ModifierStore *a1)
{
  *(a1 - 1) = &unk_1F093EF40;
  *a1 = &unk_1F093EF70;
  v2 = a1 + 736;
  v3 = -832;
  v4 = a1 + 736;
  v5 = a1 + 736;
  do
  {
    *v5 = &unk_1F093F328;
    v5 -= 104;
    icu::UnicodeString::~UnicodeString((v4 + 8));
    icu::number::impl::Modifier::~Modifier(v4);
    v2 -= 104;
    v4 = v5;
    v3 += 104;
  }

  while (v3);

  icu::number::impl::ModifierStore::~ModifierStore(a1);
}

void sub_195368F98(icu::number::impl::ModifierStore *a1)
{
  *(a1 - 1) = &unk_1F093EF40;
  *a1 = &unk_1F093EF70;
  v2 = a1 + 736;
  v3 = -832;
  v4 = a1 + 736;
  v5 = a1 + 736;
  do
  {
    *v5 = &unk_1F093F328;
    v5 -= 104;
    icu::UnicodeString::~UnicodeString((v4 + 8));
    icu::number::impl::Modifier::~Modifier(v4);
    v2 -= 104;
    v4 = v5;
    v3 += 104;
  }

  while (v3);
  icu::number::impl::ModifierStore::~ModifierStore(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t *sub_19536907C(uint64_t *a1)
{
  *a1 = &unk_1F093EFE0;
  v2 = (a1 + 1);
  a1[1] = &unk_1F093F010;
  v3 = a1[68];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::number::LocalizedNumberFormatter::~LocalizedNumberFormatter((a1 + 6));
  sub_1951DB10C(a1 + 5);
  icu::number::impl::ModifierStore::~ModifierStore(v2);
  return a1;
}

void sub_195369120(uint64_t *a1)
{
  *a1 = &unk_1F093EFE0;
  v2 = (a1 + 1);
  a1[1] = &unk_1F093F010;
  v3 = a1[68];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::number::LocalizedNumberFormatter::~LocalizedNumberFormatter((a1 + 6));
  sub_1951DB10C(a1 + 5);
  icu::number::impl::ModifierStore::~ModifierStore(v2);

  JUMPOUT(0x19A8B2600);
}

void sub_1953691E4(uint64_t *a1)
{
  *(a1 - 1) = &unk_1F093EFE0;
  *a1 = &unk_1F093F010;
  v2 = a1[67];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::number::LocalizedNumberFormatter::~LocalizedNumberFormatter((a1 + 5));
  sub_1951DB10C(a1 + 4);

  icu::number::impl::ModifierStore::~ModifierStore(a1);
}

void sub_195369290(uint64_t *a1)
{
  *(a1 - 1) = &unk_1F093EFE0;
  *a1 = &unk_1F093F010;
  v2 = a1[67];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::number::LocalizedNumberFormatter::~LocalizedNumberFormatter((a1 + 5));
  sub_1951DB10C(a1 + 4);
  icu::number::impl::ModifierStore::~ModifierStore(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195369354(uint64_t a1)
{
  *a1 = &unk_1F093F080;
  sub_1953423C0((a1 + 264));
  if (*(a1 + 196))
  {
    free(*(a1 + 184));
  }

  sub_19536993C(a1 + 96);
  sub_19536993C(a1 + 8);
  return a1;
}

void sub_1953693BC(uint64_t a1)
{
  *a1 = &unk_1F093F080;
  sub_1953423C0((a1 + 264));
  if (*(a1 + 196))
  {
    free(*(a1 + 184));
  }

  sub_19536993C(a1 + 96);
  sub_19536993C(a1 + 8);

  JUMPOUT(0x19A8B2600);
}

void sub_195369448(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195369480(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4, char *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  result = strcmp(__s1, "case");
  if (result)
  {
    result = sub_195367508(__s1, a5, v10);
    if (*a5 <= 0)
    {
      v11 = result;
      if (*(*(a1 + 8) + (result << 6) + 8))
      {
        v15 = 0;
        v14 = (*(*a3 + 32))(a3, &v15, a5);
        icu::UnicodeString::UnicodeString(v16, 1, &v14);
        icu::UnicodeString::operator=((*(a1 + 8) + (v11 << 6)), v16);
        result = icu::UnicodeString::~UnicodeString(v12, v16);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19536959C(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_1953695D4(uint64_t a1, icu::StandardPlural *this, UErrorCode *a3, int a4, char *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  result = sub_195367508(this, a5, a3);
  if (*a5 <= 0)
  {
    v9 = result;
    if (*(*(a1 + 24) + (result << 6) + 8))
    {
      if (v16 = 0, memset(v15, 0, sizeof(v15)), (*(*a3 + 88))(v15, a3, a5), v14 = 0, memset(v13, 0, sizeof(v13)), v10 = *(a1 + 8), *v10) && ((sub_1953697A0(a1, v15, v10, v13, a3, a5) & 1) != 0 || strcmp(*(a1 + 8), "neuter") && (sub_1953697A0(a1, v15, "neuter", v13, a3, a5)) || (result = sub_1953697A0(a1, v15, "_", v13, a3, a5), result))
      {
        v18 = 0;
        v17 = (*(*a3 + 32))(a3, &v18, a5);
        icu::UnicodeString::UnicodeString(v19, 1, &v17);
        icu::UnicodeString::operator=((*(a1 + 24) + (v9 << 6)), v19);
        result = icu::UnicodeString::~UnicodeString(v11, v19);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1953697A0(uint64_t a1, icu::ResourceTable *this, char *__s1, uint64_t a4, icu::ResourceValue *a5, uint64_t a6)
{
  result = icu::ResourceTable::findValue(this, __s1, a5);
  if (result)
  {
    (*(*a5 + 88))(&v13, a5, a6);
    v11 = *v14;
    *a4 = v13;
    *(a4 + 16) = v11;
    *(a4 + 29) = *&v14[13];
    v12 = *(a1 + 16);
    return *v12 && (icu::ResourceTable::findValue(a4, v12, a5) || strcmp(*(a1 + 16), "nominative") && icu::ResourceTable::findValue(a4, "nominative", a5)) || icu::ResourceTable::findValue(a4, "_", a5) != 0;
  }

  return result;
}

void *sub_1953698A0(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F093EF40;
  a1[1] = &unk_1F093EF70;
  for (i = 2; i != 106; i += 13)
  {
    icu::number::impl::SimpleModifier::SimpleModifier(&a1[i]);
  }

  a1[106] = a2;
  a1[107] = a3;
  a1[108] = "";
  return a1;
}

uint64_t sub_19536993C(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

void *sub_1953699C0(uint64_t a1)
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

void *sub_195369AB4(uint64_t a1)
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

void sub_195369BA8(const icu::DecimalFormatSymbols *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  *(a2 + 464) = 0;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 64) = 0u;
  v4 = (a2 + 64);
  *(a2 + 16) = 0u;
  *(a2 + 4) = 2;
  icu::MeasureUnit::MeasureUnit(a2 + 16);
  icu::MeasureUnit::MeasureUnit(a2 + 40);
  *v4 = 0;
  *(a2 + 136) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 4;
  *(a2 + 100) = -3;
  *(a2 + 112) = -2;
  *(a2 + 124) = -1;
  *(a2 + 132) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0x900000007;
  *(a2 + 160) = 0;
  *(a2 + 164) = 2;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 204) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  *(a2 + 228) = 0;
  *(a2 + 220) = 0;
  *(a2 + 236) = 0x300000000;
  *(a2 + 244) = 0;
  icu::Locale::Locale((a2 + 248));
  memset(v5, 0, sizeof(v5));
  icu::Locale::Locale(v5, a1 + 1936);
  icu::number::impl::SymbolsWrapper::setTo((a2 + 136), a1);
}

void sub_19536A580(uint64_t a1, const icu::DecimalFormatSymbols *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  icu::number::NumberFormatter::with(v4);
  sub_195369BA8(a2, &v3);
}

void *sub_19536A6B4(uint64_t a1, uint64_t a2, const icu::UnicodeString *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  *(a1 + 266) = 0;
  memset(v36, 0, sizeof(v36));
  icu::number::impl::AffixUtils::escape(a2 + 480, v36);
  memset(v35, 0, sizeof(v35));
  icu::number::impl::AffixUtils::escape(a2 + 608, v35);
  memset(v34, 0, sizeof(v34));
  icu::number::impl::AffixUtils::escape(a2 + 128, v34);
  memset(v33, 0, sizeof(v33));
  icu::number::impl::AffixUtils::escape(a2 + 256, v33);
  if ((*(a2 + 488) & 1) == 0)
  {
    v6 = (a1 + 8);
    v7 = v36;
LABEL_5:
    icu::UnicodeString::operator=(v6, v7);
    goto LABEL_10;
  }

  if ((*(a2 + 552) & 1) == 0)
  {
    v6 = (a1 + 8);
    v7 = (a2 + 544);
    goto LABEL_5;
  }

  icu::UnicodeString::unBogus(a1 + 8);
  if (*(a1 + 16) < 0)
  {
    v8 = *(a1 + 20);
  }

  else
  {
    v8 = *(a1 + 16) >> 5;
  }

  icu::UnicodeString::doReplace((a1 + 8), 0, v8, &word_19549D930, 0);
LABEL_10:
  if ((*(a2 + 616) & 1) == 0)
  {
    v9 = (a1 + 72);
    v10 = v35;
LABEL_14:
    icu::UnicodeString::operator=(v9, v10);
    goto LABEL_19;
  }

  if ((*(a2 + 680) & 1) == 0)
  {
    v9 = (a1 + 72);
    v10 = (a2 + 672);
    goto LABEL_14;
  }

  icu::UnicodeString::unBogus(a1 + 72);
  if (*(a1 + 80) < 0)
  {
    v11 = *(a1 + 84);
  }

  else
  {
    v11 = *(a1 + 80) >> 5;
  }

  icu::UnicodeString::doReplace((a1 + 72), 0, v11, &word_19549D930, 0);
LABEL_19:
  if ((*(a2 + 136) & 1) == 0)
  {
    v12 = (a1 + 136);
    v13 = v34;
LABEL_23:
    icu::UnicodeString::operator=(v12, v13);
    goto LABEL_24;
  }

  if ((*(a2 + 200) & 1) == 0)
  {
    v12 = (a1 + 136);
    v13 = (a2 + 192);
    goto LABEL_23;
  }

  v17 = *(a2 + 552);
  if (v17)
  {
    sub_1951D6EE0(v32, "-");
  }

  else
  {
    sub_1951D6EE0(v31, "-");
    icu::operator+(v31, a2 + 544, v32);
  }

  icu::UnicodeString::operator=((a1 + 136), v32);
  icu::UnicodeString::~UnicodeString(v18, v32);
  if ((v17 & 1) == 0)
  {
    icu::UnicodeString::~UnicodeString(v19, v31);
  }

LABEL_24:
  if (*(a2 + 264))
  {
    if (*(a2 + 328))
    {
      if (*(a2 + 680))
      {
        sub_1951D6EE0(v32, &word_19549D930);
      }

      else
      {
        icu::UnicodeString::UnicodeString(v32, (a2 + 672));
      }

      icu::UnicodeString::operator=((a1 + 200), v32);
      icu::UnicodeString::~UnicodeString(v20, v32);
      goto LABEL_38;
    }

    v14 = (a1 + 200);
    v15 = (a2 + 320);
  }

  else
  {
    v14 = (a1 + 200);
    v15 = v33;
  }

  icu::UnicodeString::operator=(v14, v15);
LABEL_38:
  if (icu::number::impl::AffixUtils::hasCurrencySymbols((a2 + 544), a3, v16) & 1) != 0 || (icu::number::impl::AffixUtils::hasCurrencySymbols((a2 + 672), a3, v21) & 1) != 0 || (icu::number::impl::AffixUtils::hasCurrencySymbols((a2 + 192), a3, v22) & 1) != 0 || (icu::number::impl::AffixUtils::hasCurrencySymbols((a2 + 320), a3, v23))
  {
    v24 = 1;
  }

  else
  {
    v24 = *(a2 + 67);
  }

  *(a1 + 264) = v24 & 1;
  v25 = *(a2 + 67);
  *(a1 + 265) = v25;
  icu::UnicodeString::~UnicodeString(v25, v33);
  icu::UnicodeString::~UnicodeString(v26, v34);
  icu::UnicodeString::~UnicodeString(v27, v35);
  result = icu::UnicodeString::~UnicodeString(v28, v36);
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_19536A9B8(uint64_t a1, int a2, unsigned int a3)
{
  v3 = 200;
  if ((a2 & 0x200) == 0)
  {
    v3 = 72;
  }

  if ((a2 & 0x100) != 0)
  {
    v3 = 8;
  }

  if ((~a2 & 0x300) == 0)
  {
    v3 = 136;
  }

  v4 = a1 + v3;
  v5 = *(v4 + 8);
  if (*(v4 + 8) < 0)
  {
    v6 = *(v4 + 12);
  }

  else
  {
    v6 = v5 >> 5;
  }

  if (v6 <= a3)
  {
    return 0xFFFFLL;
  }

  if ((v5 & 2) != 0)
  {
    v7 = v4 + 10;
  }

  else
  {
    v7 = *(v4 + 24);
  }

  return *(v7 + 2 * a3);
}

uint64_t sub_19536AA28(uint64_t a1, int a2)
{
  v2 = 200;
  if ((a2 & 0x200) == 0)
  {
    v2 = 72;
  }

  if ((a2 & 0x100) != 0)
  {
    v2 = 8;
  }

  if ((~a2 & 0x300) == 0)
  {
    v2 = 136;
  }

  v3 = a1 + v2;
  if (*(v3 + 8) < 0)
  {
    return *(v3 + 12);
  }

  else
  {
    return *(v3 + 8) >> 5;
  }
}

icu::UnicodeString *sub_19536AA74@<X0>(uint64_t a1@<X0>, int a2@<W1>, icu::UnicodeString *a3@<X8>)
{
  v3 = 200;
  if ((a2 & 0x200) == 0)
  {
    v3 = 72;
  }

  if ((a2 & 0x100) != 0)
  {
    v3 = 8;
  }

  if ((~a2 & 0x300) == 0)
  {
    v3 = 136;
  }

  return icu::UnicodeString::UnicodeString(a3, (a1 + v3));
}

uint64_t sub_19536AAAC(uint64_t a1)
{
  v4 = &unk_1F0931CC0;
  v5 = 0;
  if (icu::number::impl::AffixUtils::containsType(a1 + 8, -2, &v5))
  {
    v2 = 1;
  }

  else
  {
    v2 = icu::number::impl::AffixUtils::containsType(a1 + 72, -2, &v5);
  }

  icu::ErrorCode::~ErrorCode(&v4);
  return v2;
}

BOOL sub_19536AB30(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 208);
  if (v2)
  {
    if (*(a1 + 80))
    {
      goto LABEL_16;
    }

    v4 = 1;
  }

  else
  {
    if ((v2 & 0x8000) != 0)
    {
      v3 = *(a1 + 212);
    }

    else
    {
      v3 = v2 >> 5;
    }

    v5 = *(a1 + 80);
    if ((v5 & 0x8000u) == 0)
    {
      v6 = v5 >> 5;
    }

    else
    {
      v6 = *(a1 + 84);
    }

    v4 = 1;
    if ((v5 & 1) == 0 && v3 == v6)
    {
      v7 = (v5 & 2) != 0 ? (a1 + 82) : *(a1 + 96);
      if (icu::UnicodeString::doEquals(a1 + 200, v7, v3))
      {
LABEL_16:
        icu::UnicodeString::tempSubString((a1 + 136), 1, 0x7FFFFFFF, v15);
        if (v16)
        {
          v9 = *(a1 + 16);
          if ((v9 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if ((v16 & 0x8000u) == 0)
          {
            v8 = v16 >> 5;
          }

          else
          {
            v8 = v17;
          }

          v9 = *(a1 + 16);
          if (v9 >= 0)
          {
            v10 = v9 >> 5;
          }

          else
          {
            v10 = *(a1 + 20);
          }

          v4 = 1;
          if ((v9 & 1) != 0 || v8 != v10)
          {
            goto LABEL_39;
          }

          v11 = (v9 & 2) != 0 ? (a1 + 18) : *(a1 + 32);
          if (!icu::UnicodeString::doEquals(v15, v11, v8))
          {
            goto LABEL_39;
          }
        }

        v9 = *(a1 + 144);
        if (*(a1 + 144) < 0)
        {
          if (*(a1 + 148))
          {
            goto LABEL_33;
          }
        }

        else if (v9 >> 5)
        {
LABEL_33:
          if ((v9 & 2) != 0)
          {
            v12 = (a1 + 146);
          }

          else
          {
            v12 = *(a1 + 160);
          }

          v9 = *v12;
          v4 = v9 != 45;
          goto LABEL_39;
        }

LABEL_36:
        v4 = 1;
LABEL_39:
        icu::UnicodeString::~UnicodeString(v9, v15);
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_19536ACBC(uint64_t a1)
{
  v4 = &unk_1F0931CC0;
  v5 = 0;
  if (icu::number::impl::AffixUtils::containsType(a1 + 136, -1, &v5))
  {
    v2 = 1;
  }

  else
  {
    v2 = icu::number::impl::AffixUtils::containsType(a1 + 200, -1, &v5);
  }

  icu::ErrorCode::~ErrorCode(&v4);
  return v2;
}

uint64_t sub_19536AD48(uint64_t a1, int a2, int *a3)
{
  if (icu::number::impl::AffixUtils::containsType(a1 + 8, a2, a3) & 1) != 0 || (icu::number::impl::AffixUtils::containsType(a1 + 72, a2, a3) & 1) != 0 || (icu::number::impl::AffixUtils::containsType(a1 + 136, a2, a3))
  {
    return 1;
  }

  return icu::number::impl::AffixUtils::containsType(a1 + 200, a2, a3);
}

void *sub_19536ADEC(uint64_t a1, icu::CurrencyPluralInfo *a2, uint64_t *a3, const icu::UnicodeString *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  *(a1 + 2184) = 0;
  bzero(v23, 0x2F0uLL);
  v22 = *a3;
  v23[0] = *(a3 + 8);
  icu::CurrencyUnit::CurrencyUnit(&v24, a3 + 8);
  sub_1952FE014(&v25, a3 + 6);
  v27 = *(a3 + 9);
  v28 = *(a3 + 11);
  v29 = *(a3 + 13);
  v30 = a3[15];
  v26 = *(a3 + 7);
  icu::UnicodeString::UnicodeString(&v31, a3 + 16);
  icu::UnicodeString::UnicodeString(&v32, a3 + 24);
  icu::UnicodeString::UnicodeString(&v33, a3 + 32);
  icu::UnicodeString::UnicodeString(v34, a3 + 40);
  v34[8] = a3[48];
  icu::UnicodeString::UnicodeString(v35, a3 + 49);
  v35[4] = *(a3 + 57);
  v36 = *(a3 + 118);
  icu::UnicodeString::UnicodeString(&v37, a3 + 60);
  icu::UnicodeString::UnicodeString(&v38, a3 + 68);
  icu::UnicodeString::UnicodeString(&v39, a3 + 76);
  icu::UnicodeString::UnicodeString(&v40, a3 + 84);
  v8 = 0;
  *&v41[14] = *(a3 + 750);
  *v41 = *(a3 + 46);
  v9 = a1 + 8;
  do
  {
    Keyword = icu::StandardPlural::getKeyword(v8);
    v21 = 0;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = &unk_1F0935D00;
    LOWORD(v18) = 2;
    icu::UnicodeString::UnicodeString(v16, Keyword);
    CurrencyPluralPattern = icu::CurrencyPluralInfo::getCurrencyPluralPattern(a2, v16, &v17);
    icu::UnicodeString::operator=(&v17, CurrencyPluralPattern);
    icu::UnicodeString::~UnicodeString(v12, v16);
    icu::number::impl::PatternParser::parseToExistingProperties(&v17, &v22);
    sub_19536A6B4(v9, &v22, a4);
    icu::UnicodeString::~UnicodeString(v13, &v17);
    ++v8;
    v9 += 272;
  }

  while (v8 != 8);
  result = sub_1952FE0A4(&v22);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_19536B1F0(uint64_t a1)
{
  *a1 = &unk_1F093F170;
  v2 = (a1 + 8);
  icu::UnicodeString::~UnicodeString((a1 + 200));
  icu::UnicodeString::~UnicodeString((a1 + 136));
  icu::UnicodeString::~UnicodeString((a1 + 72));
  icu::UnicodeString::~UnicodeString(v2);

  icu::number::impl::AffixPatternProvider::~AffixPatternProvider(a1);
}

void sub_19536B264(uint64_t a1)
{
  *a1 = &unk_1F093F170;
  v2 = (a1 + 8);
  icu::UnicodeString::~UnicodeString((a1 + 200));
  icu::UnicodeString::~UnicodeString((a1 + 136));
  icu::UnicodeString::~UnicodeString((a1 + 72));
  icu::UnicodeString::~UnicodeString(v2);
  icu::number::impl::AffixPatternProvider::~AffixPatternProvider(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_19536B2EC(icu::number::impl::AffixPatternProvider *a1)
{
  v2 = 0;
  *a1 = &unk_1F093F218;
  do
  {
    *(a1 + v2 + 1912) = &unk_1F093F170;
    icu::UnicodeString::~UnicodeString((a1 + v2 + 2112));
    icu::UnicodeString::~UnicodeString((a1 + v2 + 2048));
    icu::UnicodeString::~UnicodeString((a1 + v2 + 1984));
    icu::UnicodeString::~UnicodeString((a1 + v2 + 1920));
    icu::number::impl::AffixPatternProvider::~AffixPatternProvider((a1 + v2 + 1912));
    v2 -= 272;
  }

  while (v2 != -2176);

  icu::number::impl::AffixPatternProvider::~AffixPatternProvider(a1);
}

void sub_19536B3A4(icu::number::impl::AffixPatternProvider *a1)
{
  v2 = 0;
  *a1 = &unk_1F093F218;
  do
  {
    *(a1 + v2 + 1912) = &unk_1F093F170;
    icu::UnicodeString::~UnicodeString((a1 + v2 + 2112));
    icu::UnicodeString::~UnicodeString((a1 + v2 + 2048));
    icu::UnicodeString::~UnicodeString((a1 + v2 + 1984));
    icu::UnicodeString::~UnicodeString((a1 + v2 + 1920));
    icu::number::impl::AffixPatternProvider::~AffixPatternProvider((a1 + v2 + 1912));
    v2 -= 272;
  }

  while (v2 != -2176);
  icu::number::impl::AffixPatternProvider::~AffixPatternProvider(a1);

  JUMPOUT(0x19A8B2600);
}

void *icu::number::impl::Modifier::Parameters::Parameters(void *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

uint64_t icu::number::impl::Modifier::Parameters::Parameters(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  return result;
}

{
  *result = a2;
  *(result + 8) = a3;
  *(result + 12) = a4;
  return result;
}

uint64_t icu::number::impl::Modifier::semanticallyEquivalent(icu::number::impl::Modifier *this, const icu::number::impl::Modifier *a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  (*(*this + 56))(this, v12);
  (*(*a2 + 56))(a2, v11);
  if (!(v12[0] | v11[0]))
  {
    return (*(*this + 64))(this, a2);
  }

  if (v12[0])
  {
    v5 = v11[0] == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  for (i = 0; i != 4; ++i)
  {
    for (j = 0; j != 8; ++j)
    {
      v8 = (*(*v12[0] + 16))(v12[0], i, j);
      v9 = (*(*v11[0] + 16))(v11[0], i, j);
      if (v8 != v9)
      {
        if (v8)
        {
          v10 = v9 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          return 0;
        }

        result = (*(*v8 + 64))(v8, v9);
        if (!result)
        {
          return result;
        }
      }
    }

    result = 1;
  }

  return result;
}

void icu::number::impl::AdoptingSignumModifierStore::~AdoptingSignumModifierStore(icu::number::impl::AdoptingSignumModifierStore *this)
{
  *this = &unk_1F093F2C0;
  for (i = 8; i != 40; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }
}

{
  *this = &unk_1F093F2C0;
  for (i = 8; i != 40; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }
}

{
  *this = &unk_1F093F2C0;
  v2 = 8;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v2 += 8;
    if (v2 == 40)
    {

      JUMPOUT(0x19A8B2600);
    }
  }
}

uint64_t icu::number::impl::AdoptingSignumModifierStore::operator=(uint64_t result, uint64_t a2)
{
  for (i = 8; i != 40; i += 8)
  {
    *(result + i) = *(a2 + i);
    *(a2 + i) = 0;
  }

  return result;
}

uint64_t icu::number::impl::ConstantAffixModifier::getPrefixLength(icu::number::impl::ConstantAffixModifier *this)
{
  if (*(this + 12) < 0)
  {
    return *(this + 7);
  }

  else
  {
    return *(this + 12) >> 5;
  }
}

uint64_t icu::number::impl::ConstantAffixModifier::strictEquals(icu::number::impl::ConstantAffixModifier *this, char **lpsrc)
{
  v3 = **lpsrc;
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(this + 12);
  if (v6)
  {
    if ((*(result + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((v6 & 0x8000) != 0)
    {
      v7 = *(this + 7);
    }

    else
    {
      v7 = v6 >> 5;
    }

    result = 0;
    v8 = *(v5 + 24);
    if ((v8 & 0x8000u) == 0)
    {
      v9 = v8 >> 5;
    }

    else
    {
      v9 = *(v5 + 28);
    }

    if ((v8 & 1) != 0 || v7 != v9)
    {
      return result;
    }

    v10 = (v8 & 2) != 0 ? (v5 + 26) : *(v5 + 40);
    result = icu::UnicodeString::doEquals(this + 16, v10, v7);
    if (!result)
    {
      return result;
    }
  }

  v11 = *(this + 44);
  if (v11)
  {
    if (*(v5 + 88))
    {
      goto LABEL_32;
    }

    return 0;
  }

  if ((v11 & 0x8000) != 0)
  {
    v12 = *(this + 23);
  }

  else
  {
    v12 = v11 >> 5;
  }

  result = 0;
  v13 = *(v5 + 88);
  if ((v13 & 0x8000u) == 0)
  {
    v14 = v13 >> 5;
  }

  else
  {
    v14 = *(v5 + 92);
  }

  if ((v13 & 1) == 0 && v12 == v14)
  {
    v15 = (v13 & 2) != 0 ? (v5 + 90) : *(v5 + 104);
    result = icu::UnicodeString::doEquals(this + 80, v15, v12);
    if (result)
    {
LABEL_32:
      if (*(this + 144) == *(v5 + 144))
      {
        return *(this + 145) == *(v5 + 145);
      }

      return 0;
    }
  }

  return result;
}

uint64_t icu::number::impl::SimpleModifier::SimpleModifier(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  return icu::number::impl::SimpleModifier::SimpleModifier(a1, a2, a3, a4, 0, a6);
}

{
  *a1 = &unk_1F093F328;
  icu::UnicodeString::UnicodeString((a1 + 8), (a2 + 8));
  *(a1 + 72) = a3;
  *(a1 + 73) = a4;
  *(a1 + 88) = a5;
  *(a1 + 96) = a6;
  v11 = *(a1 + 16);
  if ((v11 & 0x11) != 0)
  {
    v12 = 0;
  }

  else if ((v11 & 2) != 0)
  {
    v12 = (a1 + 18);
  }

  else
  {
    v12 = *(a1 + 32);
  }

  v13 = v11 >> 5;
  if ((v11 & 0x8000) != 0)
  {
    if (!*(a1 + 20))
    {
      goto LABEL_13;
    }
  }

  else if (!v13)
  {
    goto LABEL_13;
  }

  if (*v12)
  {
    if ((v11 & 0x8000) != 0)
    {
      v14 = *(a1 + 20);
    }

    else
    {
      v14 = v11 >> 5;
    }

    if (v14 < 2 || ((v11 & 2) != 0 ? (v18 = a1 + 18) : (v18 = *(a1 + 32)), *(v18 + 2)))
    {
      if ((v11 & 0x8000) != 0)
      {
        v19 = *(a1 + 20);
      }

      else
      {
        v19 = v11 >> 5;
      }

      if (v19 < 2)
      {
        v21 = 0xFFFF;
      }

      else
      {
        if ((v11 & 2) != 0)
        {
          v20 = a1 + 18;
        }

        else
        {
          v20 = *(a1 + 32);
        }

        v21 = *(v20 + 2);
      }

      *(a1 + 76) = v21 - 256;
      v22 = v21 - 253;
      v23 = v21 - 253;
    }

    else
    {
      *(a1 + 76) = 0;
      v23 = 2;
      v22 = 3;
    }

    *(a1 + 80) = v23;
    if ((v11 & 0x8000) != 0)
    {
      v13 = *(a1 + 20);
      if (v22 < v13)
      {
LABEL_40:
        if (v13 <= v23)
        {
          v17 = 65279;
        }

        else
        {
          if ((v11 & 2) != 0)
          {
            v24 = a1 + 18;
          }

          else
          {
            v24 = *(a1 + 32);
          }

          v17 = *(v24 + 2 * v23) - 256;
        }

        goto LABEL_49;
      }
    }

    else if (v22 < (v11 >> 5))
    {
      goto LABEL_40;
    }

    v17 = 0;
    goto LABEL_49;
  }

LABEL_13:
  if ((v11 & 0x8000) != 0)
  {
    v13 = *(a1 + 20);
  }

  if (v13 < 2)
  {
    v16 = 65279;
  }

  else
  {
    if ((v11 & 2) != 0)
    {
      v15 = a1 + 18;
    }

    else
    {
      v15 = *(a1 + 32);
    }

    v16 = *(v15 + 2) - 256;
  }

  v17 = 0;
  *(a1 + 76) = v16;
  *(a1 + 80) = -1;
LABEL_49:
  *(a1 + 84) = v17;
  return a1;
}

{
  return icu::number::impl::SimpleModifier::SimpleModifier(a1, a2, a3, a4, 0, a6);
}

{
  return icu::number::impl::SimpleModifier::SimpleModifier(a1, a2, a3, a4, a5, a6);
}

double icu::number::impl::SimpleModifier::SimpleModifier(icu::number::impl::SimpleModifier *this)
{
  *this = &unk_1F093F328;
  *(this + 1) = &unk_1F0935D00;
  *(this + 8) = 2;
  *(this + 36) = 0;
  result = NAN;
  *(this + 76) = 0xFFFFFFFF00000000;
  *(this + 21) = 0;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F093F328;
  *(this + 1) = &unk_1F0935D00;
  *(this + 8) = 2;
  *(this + 36) = 0;
  result = NAN;
  *(this + 76) = 0xFFFFFFFF00000000;
  *(this + 21) = 0;
  *(this + 11) = 0;
  return result;
}

uint64_t icu::number::impl::SimpleModifier::formatAsPrefixSuffix(icu::number::impl::SimpleModifier *this, icu::FormattedStringBuilder *a2, int a3, int a4, UErrorCode *a5)
{
  v9 = *(this + 19);
  if (*(this + 20) == -1 && *(this + 21) + v9 >= 1)
  {
    v12 = *(this + 72);

    return icu::FormattedStringBuilder::splice(a2, a3, a4, this + 8, 2u, v9 + 2, v12, a5);
  }

  else
  {
    if (v9 >= 1)
    {
      icu::FormattedStringBuilder::insert(a2, a3, this + 8, 2u, v9 + 2, *(this + 72), 0, a5);
      v9 = *(this + 19);
    }

    v10 = *(this + 21);
    if (v10 >= 1)
    {
      icu::FormattedStringBuilder::insert(a2, v9 + a4, this + 8, *(this + 20) + 1, *(this + 20) + 1 + v10, *(this + 72), 0, a5);
      v9 = *(this + 19);
      v10 = *(this + 21);
    }

    return (v10 + v9);
  }
}

uint64_t icu::number::impl::SimpleModifier::getCodePointCount(icu::number::impl::SimpleModifier *this)
{
  v2 = *(this + 19);
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = icu::UnicodeString::countChar32((this + 8), 2, v2);
  }

  v4 = *(this + 21);
  if (v4 >= 1)
  {
    return icu::UnicodeString::countChar32((this + 8), *(this + 20) + 1, v4) + v3;
  }

  return v3;
}

__n128 icu::number::impl::SimpleModifier::getParameters(icu::number::impl::SimpleModifier *this, __n128 *a2)
{
  result = *(this + 88);
  *a2 = result;
  return result;
}

uint64_t icu::number::impl::SimpleModifier::strictEquals(icu::number::impl::SimpleModifier *this, char **lpsrc)
{
  v3 = **lpsrc;
  if (result)
  {
    v5 = result;
    v6 = *(this + 8);
    if (v6)
    {
      if ((*(result + 16) & 1) == 0)
      {
        return 0;
      }

LABEL_17:
      if (*(this + 72) == *(v5 + 72))
      {
        return *(this + 73) == *(v5 + 73);
      }

      return 0;
    }

    if ((v6 & 0x8000) != 0)
    {
      v7 = *(this + 5);
    }

    else
    {
      v7 = v6 >> 5;
    }

    result = 0;
    v8 = *(v5 + 16);
    if ((v8 & 0x8000u) == 0)
    {
      v9 = v8 >> 5;
    }

    else
    {
      v9 = *(v5 + 20);
    }

    if ((v8 & 1) == 0 && v7 == v9)
    {
      v10 = (v8 & 2) != 0 ? (v5 + 18) : *(v5 + 32);
      result = icu::UnicodeString::doEquals(this + 8, v10, v7);
      if (result)
      {
        goto LABEL_17;
      }
    }
  }

  return result;
}

uint64_t icu::number::impl::SimpleModifier::formatTwoArgPattern(uint64_t a1, icu::FormattedStringBuilder *a2, int a3, _DWORD *a4, int *a5, char a6, UErrorCode *a7)
{
  v14 = *(a1 + 16);
  if ((v14 & 0x11) != 0)
  {
    v15 = 0;
  }

  else if ((v14 & 2) != 0)
  {
    v15 = (a1 + 18);
  }

  else
  {
    v15 = *(a1 + 32);
  }

  v16 = v14 >> 5;
  v17 = *(a1 + 20);
  if ((v14 & 0x8000u) == 0)
  {
    v18 = v14 >> 5;
  }

  else
  {
    v18 = *(a1 + 20);
  }

  if (v18 && *v15 == 2)
  {
    if (v18 == 1)
    {
      v19 = 0xFFFF;
    }

    else
    {
      v21 = a1 + 18;
      if ((v14 & 2) == 0)
      {
        v21 = *(a1 + 32);
      }

      v19 = *(v21 + 2);
      if (v19 < 0x100)
      {
        v22 = 0;
        v23 = 2;
        goto LABEL_19;
      }
    }

    v22 = v19 - 256;
    icu::FormattedStringBuilder::insert(a2, a3, a1 + 8, 2u, v19 - 254, a6, 0, a7);
    v23 = v19 - 253;
    v14 = *(a1 + 16);
    v17 = *(a1 + 20);
    v16 = v14 >> 5;
LABEL_19:
    if ((v14 & 0x8000u) == 0)
    {
      v17 = v16;
    }

    if (v17 <= v23)
    {
      v26 = v23 + 1;
      v25 = 0xFFFF;
    }

    else
    {
      v24 = a1 + 18;
      if ((v14 & 2) == 0)
      {
        v24 = *(a1 + 32);
      }

      v25 = *(v24 + 2 * v23);
      v26 = v23 + 1;
      v20 = v22;
      if (v25 < 0x100)
      {
        if ((v14 & 0x8000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_30;
      }
    }

    v28 = v25 - 256;
    v29 = v25 - 256 + v26;
    icu::FormattedStringBuilder::insert(a2, v22 + a3, a1 + 8, v26, v29, a6, 0, a7);
    v20 = v28 + v22;
    v26 = v29 + 1;
    v14 = *(a1 + 16);
    if ((v14 & 0x8000) == 0)
    {
LABEL_26:
      if (v26 != v14 >> 5)
      {
        v27 = v14 >> 5;
LABEL_32:
        if (v27 <= v26)
        {
          v30 = 65279;
        }

        else
        {
          if ((v14 & 2) != 0)
          {
            v31 = a1 + 18;
          }

          else
          {
            v31 = *(a1 + 32);
          }

          v30 = *(v31 + 2 * v26) - 256;
        }

        icu::FormattedStringBuilder::insert(a2, v20 + a3, a1 + 8, v26 + 1, v30 + v26 + 1, a6, 0, a7);
        v20 = (v30 + v20);
        goto LABEL_39;
      }

LABEL_31:
      v30 = 0;
LABEL_39:
      *a4 = v22;
      *a5 = v30;
      return v20;
    }

LABEL_30:
    v27 = *(a1 + 20);
    if (v26 != v27)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v20 = 0;
  *a7 = U_INTERNAL_PROGRAM_ERROR;
  return v20;
}

uint64_t icu::number::impl::ConstantMultiFieldModifier::apply(icu::number::impl::ConstantMultiFieldModifier *this, icu::FormattedStringBuilder *a2, int a3, int a4, UErrorCode *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = icu::FormattedStringBuilder::insert(a2, a3, (this + 8), a5);
  v11 = v10;
  if (*(this + 280) == 1)
  {
    v16 = &unk_1F0935D00;
    v17 = 2;
    v11 = icu::FormattedStringBuilder::splice(a2, v10 + a3, v10 + a4, &v16, 0, 0, 0, a5) + v10;
    icu::UnicodeString::~UnicodeString(v12, &v16);
  }

  v13 = icu::FormattedStringBuilder::insert(a2, v11 + a4, (this + 144), a5);
  v14 = *MEMORY[0x1E69E9840];
  return (v13 + v11);
}

BOOL icu::number::impl::ConstantMultiFieldModifier::containsField(uint64_t a1, unsigned __int8 a2)
{
  if (icu::FormattedStringBuilder::containsField(a1 + 8, a2))
  {
    return 1;
  }

  return icu::FormattedStringBuilder::containsField(a1 + 144, a2);
}

__n128 icu::number::impl::ConstantMultiFieldModifier::getParameters(__n128 *this, __n128 *a2)
{
  result = this[18];
  *a2 = result;
  return result;
}

unsigned __int8 *icu::number::impl::ConstantMultiFieldModifier::strictEquals(icu::number::impl::ConstantMultiFieldModifier *this, char **lpsrc)
{
  v3 = **lpsrc;
  if (result)
  {
    v5 = result;
    result = icu::FormattedStringBuilder::contentEquals((this + 8), (result + 8));
    if (result)
    {
      result = icu::FormattedStringBuilder::contentEquals((this + 144), (v5 + 144));
      if (result)
      {
        if (*(this + 280) == v5[280])
        {
          return (*(this + 281) == v5[281]);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

icu::number::impl::CurrencySpacingEnabledModifier *icu::number::impl::CurrencySpacingEnabledModifier::CurrencySpacingEnabledModifier(icu::number::impl::CurrencySpacingEnabledModifier *this, const icu::FormattedStringBuilder *a2, const icu::FormattedStringBuilder *a3, char a4, char a5, const icu::DecimalFormatSymbols *a6, UErrorCode *a7)
{
  v43 = *MEMORY[0x1E69E9840];
  *this = &unk_1F093F520;
  icu::FormattedStringBuilder::FormattedStringBuilder(this + 8, a2);
  icu::FormattedStringBuilder::FormattedStringBuilder(this + 144, a3);
  *(this + 280) = a4;
  *(this + 281) = a5;
  *(this + 36) = 0;
  *this = &unk_1F093F3F0;
  icu::UnicodeSet::UnicodeSet((this + 304));
  *(this + 63) = &unk_1F0935D00;
  *(this + 256) = 2;
  icu::UnicodeSet::UnicodeSet((this + 568));
  *(this + 96) = &unk_1F0935D00;
  *(this + 388) = 2;
  if (icu::FormattedStringBuilder::length(a2) < 1)
  {
    goto LABEL_7;
  }

  v14 = icu::FormattedStringBuilder::length(a2);
  v15 = a2 + 88;
  if (*a2)
  {
    v15 = *(a2 + 11);
  }

  if (v15[*(a2 + 32) - 1 + v14] == 39)
  {
    LastCodePoint = icu::FormattedStringBuilder::getLastCodePoint(a2);
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    icu::number::impl::CurrencySpacingEnabledModifier::getUnicodeSet(a6, 0, 0, a7, &v29);
    if (icu::UnicodeSet::contains(&v29, LastCodePoint))
    {
      icu::number::impl::CurrencySpacingEnabledModifier::getUnicodeSet(a6, 1, 0, a7, v42);
      icu::UnicodeSet::operator=((this + 304), v42);
      icu::UnicodeSet::~UnicodeSet(v17, v42);
      icu::UnicodeSet::freeze((this + 304));
      PatternForCurrencySpacing = icu::DecimalFormatSymbols::getPatternForCurrencySpacing(a6, 2, 0, a7);
      icu::UnicodeString::UnicodeString(v42, PatternForCurrencySpacing);
      icu::UnicodeString::operator=((this + 504), v42);
      icu::UnicodeString::~UnicodeString(v19, v42);
    }

    else
    {
      icu::UnicodeSet::setToBogus((this + 304));
      icu::UnicodeString::setToBogus((this + 504));
    }

    icu::UnicodeSet::~UnicodeSet(v20, &v29);
  }

  else
  {
LABEL_7:
    icu::UnicodeSet::setToBogus((this + 304));
    icu::UnicodeString::setToBogus((this + 504));
  }

  if (icu::FormattedStringBuilder::length(a3) >= 1 && (!*a3 ? (v21 = a3 + 88) : (v21 = *(a3 + 11)), v21[*(a3 + 32)] == 39))
  {
    FirstCodePoint = icu::FormattedStringBuilder::getFirstCodePoint(a3);
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    icu::number::impl::CurrencySpacingEnabledModifier::getUnicodeSet(a6, 0, 1, a7, &v29);
    if (icu::UnicodeSet::contains(&v29, FirstCodePoint))
    {
      icu::number::impl::CurrencySpacingEnabledModifier::getUnicodeSet(a6, 1, 1, a7, v42);
      icu::UnicodeSet::operator=((this + 568), v42);
      icu::UnicodeSet::~UnicodeSet(v23, v42);
      icu::UnicodeSet::freeze((this + 568));
      v24 = icu::DecimalFormatSymbols::getPatternForCurrencySpacing(a6, 2, 1, a7);
      icu::UnicodeString::UnicodeString(v42, v24);
      icu::UnicodeString::operator=((this + 768), v42);
      icu::UnicodeString::~UnicodeString(v25, v42);
    }

    else
    {
      icu::UnicodeSet::setToBogus((this + 568));
      icu::UnicodeString::setToBogus((this + 768));
    }

    icu::UnicodeSet::~UnicodeSet(v26, &v29);
  }

  else
  {
    icu::UnicodeSet::setToBogus((this + 568));
    icu::UnicodeString::setToBogus((this + 768));
  }

  v27 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::number::impl::CurrencySpacingEnabledModifier::getUnicodeSet(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int *a4@<X3>, icu::UnicodeSet *a5@<X8>)
{
  if (*a4 > 0)
  {
LABEL_8:

    icu::UnicodeSet::UnicodeSet(a5);
    return;
  }

  if (atomic_load_explicit(&dword_1EAEC9E90, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9E90))
  {
    sub_19536CDF4();
  }

  if (dword_1EAEC9E94 >= 1)
  {
    *a4 = dword_1EAEC9E94;
    goto LABEL_8;
  }

  if (*a4 >= 1)
  {
    goto LABEL_8;
  }

  PatternForCurrencySpacing = icu::DecimalFormatSymbols::getPatternForCurrencySpacing(a1, a2 != 0, a3 == 1, a4);
  v11 = PatternForCurrencySpacing;
  v12 = *(PatternForCurrencySpacing + 8);
  v13 = v12;
  v14 = v12 >> 5;
  if (v13 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(PatternForCurrencySpacing + 12);
  }

  if (icu::UnicodeString::doCompare(PatternForCurrencySpacing, 0, v15, L"[:digit:]", 0, -1))
  {
    v16 = *(v11 + 8);
    v17 = v16;
    v18 = v16 >> 5;
    if (v17 >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = *(v11 + 12);
    }

    if (icu::UnicodeString::doCompare(v11, 0, v19, "[", 0, -1))
    {

      icu::UnicodeSet::UnicodeSet(a5, v11, a4);
      return;
    }

    v20 = qword_1EAEC9E88;
  }

  else
  {
    v20 = qword_1EAEC9E80;
  }

  icu::UnicodeSet::UnicodeSet(a5, v20);
}

icu::UnicodeString *icu::number::impl::CurrencySpacingEnabledModifier::getInsertString@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, icu::UnicodeString *a4@<X8>)
{
  PatternForCurrencySpacing = icu::DecimalFormatSymbols::getPatternForCurrencySpacing(a1, 2, a2 == 1, a3);

  return icu::UnicodeString::UnicodeString(a4, PatternForCurrencySpacing);
}

uint64_t icu::number::impl::CurrencySpacingEnabledModifier::apply(icu::number::impl::CurrencySpacingEnabledModifier *this, icu::FormattedStringBuilder *a2, int a3, int a4, UErrorCode *a5)
{
  if (a4 <= a3)
  {
    v11 = 0;
  }

  else
  {
    if ((*(this + 336) & 1) != 0 || (v10 = icu::FormattedStringBuilder::codePointAt(a2, a3), !icu::UnicodeSet::contains((this + 304), v10)))
    {
      v11 = 0;
    }

    else
    {
      v11 = icu::FormattedStringBuilder::insert(a2, a3, this + 504, 0, 0, a5);
    }

    if ((*(this + 600) & 1) == 0)
    {
      v12 = icu::FormattedStringBuilder::codePointBefore(a2, a4);
      if (icu::UnicodeSet::contains((this + 568), v12))
      {
        v11 += icu::FormattedStringBuilder::insert(a2, v11 + a4, this + 768, 0, 0, a5);
      }
    }
  }

  return icu::number::impl::ConstantMultiFieldModifier::apply(this, a2, a3, v11 + a4, a5) + v11;
}

uint64_t icu::number::impl::CurrencySpacingEnabledModifier::applyCurrencySpacing(icu::number::impl::CurrencySpacingEnabledModifier *this, icu::FormattedStringBuilder *a2, int a3, int a4, int a5, uint64_t a6, const icu::DecimalFormatSymbols *a7, UErrorCode *a8)
{
  v13 = 0;
  v14 = a3 + a2;
  v15 = a4 - v14;
  if (a3 >= 1 && v15 >= 1)
  {
    v13 = icu::number::impl::CurrencySpacingEnabledModifier::applyCurrencySpacingAffix(this, v14, 0, a6, a7);
  }

  if (a5 >= 1 && v15 >= 1)
  {
    return icu::number::impl::CurrencySpacingEnabledModifier::applyCurrencySpacingAffix(this, v13 + a4, 1, a6, a7) + v13;
  }

  return v13;
}

uint64_t icu::number::impl::CurrencySpacingEnabledModifier::applyCurrencySpacingAffix(icu::FormattedStringBuilder *this, int a2, int a3, uint64_t a4, int *a5)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v12 = this + 88;
    if (*this)
    {
      v12 = *(this + 11);
    }

    if (v12[*(this + 32) - 1 + a2] == 39)
    {
      v11 = icu::FormattedStringBuilder::codePointBefore(this, a2);
      goto LABEL_11;
    }

LABEL_14:
    v16 = 0;
    goto LABEL_22;
  }

  if (*this)
  {
    v10 = *(this + 11);
  }

  else
  {
    v10 = this + 88;
  }

  if (v10[*(this + 32) + a2] != 39)
  {
    goto LABEL_14;
  }

  v11 = icu::FormattedStringBuilder::codePointAt(this, a2);
LABEL_11:
  v13 = v11;
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  icu::number::impl::CurrencySpacingEnabledModifier::getUnicodeSet(a4, 0, a3, a5, v25);
  if (icu::UnicodeSet::contains(v25, v13))
  {
    if (a3)
    {
      v15 = icu::FormattedStringBuilder::codePointBefore(this, a2);
    }

    else
    {
      v15 = icu::FormattedStringBuilder::codePointAt(this, a2);
    }

    v17 = v15;
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    icu::number::impl::CurrencySpacingEnabledModifier::getUnicodeSet(a4, 1, a3, a5, v23);
    if (icu::UnicodeSet::contains(v23, v17))
    {
      memset(v27, 0, sizeof(v27));
      PatternForCurrencySpacing = icu::DecimalFormatSymbols::getPatternForCurrencySpacing(a4, 2, a3 == 1, a5);
      icu::UnicodeString::UnicodeString(v27, PatternForCurrencySpacing);
      v16 = icu::FormattedStringBuilder::insert(this, a2, v27, 0, 0, a5);
      icu::UnicodeString::~UnicodeString(v20, v27);
    }

    else
    {
      v16 = 0;
    }

    icu::UnicodeSet::~UnicodeSet(v18, v23);
  }

  else
  {
    v16 = 0;
  }

  icu::UnicodeSet::~UnicodeSet(v14, v25);
LABEL_22:
  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_19536CDF4()
{
  v0 = *MEMORY[0x1E69E9840];
  sub_195400588(2u, sub_19536D408);
  operator new();
}

void *sub_19536CF20(void *a1)
{
  *a1 = &unk_1F093F4A0;
  v2 = (a1 + 1);
  a1[1] = &unk_1F093F4F8;
  icu::UnicodeString::~UnicodeString((a1 + 10));
  icu::UnicodeString::~UnicodeString((a1 + 2));
  icu::UObject::~UObject(v2);
  return a1;
}

void sub_19536CF98(void *a1)
{
  *a1 = &unk_1F093F4A0;
  v2 = (a1 + 1);
  a1[1] = &unk_1F093F4F8;
  icu::UnicodeString::~UnicodeString((a1 + 10));
  icu::UnicodeString::~UnicodeString((a1 + 2));
  icu::UObject::~UObject(v2);

  JUMPOUT(0x19A8B2600);
}

void sub_19536D030(uint64_t a1)
{
  *(a1 - 8) = &unk_1F093F4A0;
  *a1 = &unk_1F093F4F8;
  icu::UnicodeString::~UnicodeString((a1 + 72));
  icu::UnicodeString::~UnicodeString((a1 + 8));

  icu::UObject::~UObject(a1);
}

void sub_19536D0AC(uint64_t a1)
{
  *(a1 - 8) = &unk_1F093F4A0;
  *a1 = &unk_1F093F4F8;
  icu::UnicodeString::~UnicodeString((a1 + 72));
  icu::UnicodeString::~UnicodeString((a1 + 8));
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_19536D140(void *a1)
{
  *a1 = &unk_1F093F520;
  v2 = (a1 + 1);
  icu::FormattedStringBuilder::~FormattedStringBuilder((a1 + 18));
  icu::FormattedStringBuilder::~FormattedStringBuilder(v2);
  return a1;
}

void sub_19536D194(void *a1)
{
  *a1 = &unk_1F093F520;
  v1 = (a1 + 1);
  icu::FormattedStringBuilder::~FormattedStringBuilder((a1 + 18));
  icu::FormattedStringBuilder::~FormattedStringBuilder(v1);

  JUMPOUT(0x19A8B2600);
}

void *sub_19536D208(void *a1)
{
  *a1 = &unk_1F093F328;
  icu::UnicodeString::~UnicodeString((a1 + 1));
  return a1;
}

void sub_19536D24C(void *a1)
{
  *a1 = &unk_1F093F328;
  icu::UnicodeString::~UnicodeString((a1 + 1));

  JUMPOUT(0x19A8B2600);
}

void *sub_19536D2B0(void *a1)
{
  *a1 = &unk_1F093F3F0;
  v2 = (a1 + 18);
  icu::UnicodeString::~UnicodeString((a1 + 96));
  icu::UnicodeSet::~UnicodeSet((a1 + 71));
  icu::UnicodeString::~UnicodeString((a1 + 63));
  icu::UnicodeSet::~UnicodeSet((a1 + 38));
  *a1 = &unk_1F093F520;
  icu::FormattedStringBuilder::~FormattedStringBuilder(v2);
  icu::FormattedStringBuilder::~FormattedStringBuilder((a1 + 1));
  return a1;
}

void sub_19536D34C(void *a1)
{
  *a1 = &unk_1F093F3F0;
  v2 = (a1 + 18);
  icu::UnicodeString::~UnicodeString((a1 + 96));
  icu::UnicodeSet::~UnicodeSet((a1 + 71));
  icu::UnicodeString::~UnicodeString((a1 + 63));
  icu::UnicodeSet::~UnicodeSet((a1 + 38));
  *a1 = &unk_1F093F520;
  icu::FormattedStringBuilder::~FormattedStringBuilder(v2);
  icu::FormattedStringBuilder::~FormattedStringBuilder((a1 + 1));

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19536D408()
{
  if (qword_1EAEC9E80)
  {
    icu::UnicodeSet::~UnicodeSet(qword_1EAEC9E80);
    MEMORY[0x19A8B2600]();
  }

  qword_1EAEC9E80 = 0;
  if (qword_1EAEC9E88)
  {
    icu::UnicodeSet::~UnicodeSet(qword_1EAEC9E88);
    MEMORY[0x19A8B2600]();
  }

  qword_1EAEC9E88 = 0;
  atomic_store(0, &dword_1EAEC9E90);
  return 1;
}

icu::number::Scale *icu::number::Scale::Scale(icu::number::Scale *this, int a2, icu::number::impl::DecNum *a3)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 4) = 0;
  if (a3)
  {
    icu::number::impl::DecNum::normalize(a3);
    v4 = *(this + 1);
    if (**v4 == 1 && *(*v4 + 9) == 1 && (icu::number::impl::DecNum::isNegative(v4) & 1) == 0)
    {
      v5 = *(this + 1);
      v6 = *v5;
      *this += *(*v5 + 4);
      if (v5[12])
      {
        free(v6);
      }

      MEMORY[0x19A8B2600](v5, 0x1020C403A82AE04);
      *(this + 1) = 0;
    }
  }

  return this;
}

uint64_t icu::number::Scale::Scale(uint64_t this, const icu::number::Scale *a2)
{
  *this = *a2;
  *(this + 8) = 0;
  *(this + 16) = *(a2 + 4);
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t icu::number::Scale::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *result = *a2;
    if (*(a2 + 8))
    {
      operator new();
    }

    *(result + 8) = 0;
    *(result + 16) = *(a2 + 16);
  }

  return result;
}

uint64_t icu::number::Scale::Scale(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  return result;
}

{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  return result;
}

uint64_t icu::number::Scale::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    if (*(v4 + 12))
    {
      free(*v4);
    }

    MEMORY[0x19A8B2600](v4, 0x1020C403A82AE04);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  return a1;
}

void icu::number::Scale::~Scale(icu::number::Scale *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    if (*(v1 + 12))
    {
      free(*v1);
    }

    MEMORY[0x19A8B2600](v1, 0x1020C403A82AE04);
  }
}

void icu::number::Scale::none(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t icu::number::Scale::powerOfTen@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = this;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return this;
}

void icu::number::Scale::applyTo(icu::number::Scale *this, icu::number::impl::DecimalQuantity *a2)
{
  icu::number::impl::DecimalQuantity::adjustMagnitude(a2, *this);
  v4 = *(this + 1);
  if (v4)
  {
    v5 = U_ZERO_ERROR;
    icu::number::impl::DecimalQuantity::multiplyBy(a2, v4, &v5);
  }
}

void icu::number::Scale::applyReciprocalTo(icu::number::Scale *this, icu::number::impl::DecimalQuantity *a2)
{
  icu::number::impl::DecimalQuantity::adjustMagnitude(a2, -*this);
  v4 = *(this + 1);
  if (v4)
  {
    v5 = U_ZERO_ERROR;
    icu::number::impl::DecimalQuantity::divideBy(a2, v4, &v5);
  }
}

uint64_t icu::number::impl::MultiplierFormatHandler::setAndChain(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = icu::number::Scale::operator=(a1 + 8, a2);
  *(a1 + 32) = a3;
  return result;
}

void icu::number::impl::MultiplierFormatHandler::processQuantity(uint64_t a1, icu::number::impl::DecimalQuantity *a2)
{
  (*(**(a1 + 32) + 16))(*(a1 + 32));

  icu::number::Scale::applyTo((a1 + 8), a2);
}

void *sub_19536DA84(void *a1)
{
  *a1 = &unk_1F093F5E0;
  icu::number::Scale::~Scale((a1 + 1));
  return a1;
}

void sub_19536DAC8(void *a1)
{
  *a1 = &unk_1F093F5E0;
  icu::number::Scale::~Scale((a1 + 1));

  JUMPOUT(0x19A8B2600);
}

uint64_t *sub_19536DB2C(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if (*(v2 + 12))
    {
      free(*v2);
    }

    MEMORY[0x19A8B2600](v2, 0x1020C403A82AE04);
  }

  return a1;
}

uint64_t icu::number::ScientificNotation::ScientificNotation(uint64_t result, unsigned __int8 a2, int a3, unsigned __int16 a4, uint64_t a5)
{
  v5 = 256;
  if (!a3)
  {
    v5 = 0;
  }

  *result = 0;
  *(result + 4) = (a4 << 16) | (a5 << 32) | v5 & 0xFFFFFFFFFFFFFF00 | a2;
  return result;
}

{
  v5 = 256;
  if (!a3)
  {
    v5 = 0;
  }

  *result = 0;
  *(result + 4) = (a4 << 16) | (a5 << 32) | v5 & 0xFFFFFFFFFFFFFF00 | a2;
  return result;
}

uint64_t icu::number::ScientificNotation::withMinExponentDigits(icu::number::ScientificNotation *this, int a2)
{
  if ((a2 - 1) > 0x3E6)
  {
    HIDWORD(v4) = 65810;
    v2 = 3;
  }

  else
  {
    v2 = 0;
    *(this + 2);
    HIDWORD(v4) = (a2 << 16) | *(this + 2);
  }

  LODWORD(v4) = v2;
  return v4;
}

uint64_t icu::number::FormattedNumber::FormattedNumber(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = &unk_1F093F640;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 27;
  return result;
}

{
  v2 = *(a2 + 8);
  *result = &unk_1F093F640;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 27;
  return result;
}

void icu::number::FormattedNumber::~FormattedNumber(icu::number::FormattedNumber *this)
{
  *this = &unk_1F093F640;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  icu::FormattedValue::~FormattedValue(this);
}

{
  icu::number::FormattedNumber::~FormattedNumber(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::number::FormattedNumber::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 27;
  return a1;
}

void icu::number::FormattedNumber::toString(icu::number::FormattedNumber *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 >= 1)
  {
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
LABEL_3:
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;
    icu::UnicodeString::setToBogus(a3);
    return;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    *a2 = *(this + 4);
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
    goto LABEL_3;
  }

  (*(*v3 + 16))(*(this + 1));
}

void icu::number::FormattedNumber::toTempString(icu::number::FormattedNumber *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 >= 1)
  {
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
LABEL_3:
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;
    icu::UnicodeString::setToBogus(a3);
    return;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    *a2 = *(this + 4);
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
    goto LABEL_3;
  }

  (*(*v3 + 24))(*(this + 1));
}

icu::Appendable *icu::number::FormattedNumber::appendTo(icu::number::FormattedNumber *this, icu::Appendable *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return a2;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    *a3 = *(this + 4);
    return a2;
  }

  return (*(*v4 + 32))(*(this + 1), a2);
}

uint64_t icu::number::FormattedNumber::nextPosition(icu::number::FormattedNumber *this, icu::ConstrainedFieldPosition *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    *a3 = *(this + 4);
    return 0;
  }

  return (*(*v4 + 40))(*(this + 1), a2);
}

void icu::number::FormattedNumber::toDecimalNumber(icu::number::FormattedNumber *this, icu::ByteSink *a2, UErrorCode *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a3 <= 0)
  {
    if (*(this + 1))
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      *v7 = 0u;
      v8 = 0u;
      icu::number::impl::DecNum::DecNum(v7);
      icu::number::impl::DecimalQuantity::toDecNum((*(this + 1) + 304), v7, a3);
      icu::number::impl::DecNum::toString(v7, a2, a3);
      if (BYTE4(v7[1]))
      {
        free(v7[0]);
      }
    }

    else
    {
      *a3 = *(this + 4);
    }
  }

  v3 = *MEMORY[0x1E69E9840];
}

void icu::number::FormattedNumber::getAllFieldPositionsImpl(icu::FormattedValueStringBuilderImpl **this, icu::FieldPositionIteratorHandler *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    if (this[1])
    {
      icu::FormattedValueStringBuilderImpl::getAllFieldPositions(this[1], a2, a3);
    }

    else
    {
      *a3 = *(this + 4);
    }
  }
}

uint64_t icu::number::FormattedNumber::getOutputUnit@<X0>(icu::number::FormattedNumber *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 >= 1)
  {
    return icu::MeasureUnit::MeasureUnit(a3);
  }

  v6 = *(this + 1);
  if (!v6)
  {
    *a2 = *(this + 4);
    return icu::MeasureUnit::MeasureUnit(a3);
  }

  return icu::MeasureUnit::MeasureUnit(a3, v6 + 376);
}

uint64_t icu::number::FormattedNumber::getNounClass(icu::number::FormattedNumber *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    *a2 = *(this + 4);
    return 0;
  }

  return udispopt_fromNounClassIdentifier(*(v3 + 400));
}

icu::number::impl::DecimalQuantity *icu::number::FormattedNumber::getDecimalQuantity(icu::number::impl::DecimalQuantity *this, icu::number::impl::DecimalQuantity *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v3 = *(this + 1);
    if (v3)
    {
      return icu::number::impl::DecimalQuantity::operator=(a2, v3 + 304);
    }

    else
    {
      *a3 = *(this + 4);
    }
  }

  return this;
}

void icu::number::impl::UFormattedNumberData::~UFormattedNumberData(void **this)
{
  *this = &unk_1F093F680;
  icu::MeasureUnit::~MeasureUnit((this + 47));
  icu::number::impl::DecimalQuantity::~DecimalQuantity(this + 38);

  icu::FormattedValueStringBuilderImpl::~FormattedValueStringBuilderImpl(this);
}

{
  icu::number::impl::UFormattedNumberData::~UFormattedNumberData(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::number::FormattedNumberRange::FormattedNumberRange(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = &unk_1F093F6C0;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 27;
  return result;
}

{
  v2 = *(a2 + 8);
  *result = &unk_1F093F6C0;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 27;
  return result;
}

void icu::number::FormattedNumberRange::~FormattedNumberRange(icu::number::FormattedNumberRange *this)
{
  *this = &unk_1F093F6C0;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  icu::FormattedValue::~FormattedValue(this);
}

{
  icu::number::FormattedNumberRange::~FormattedNumberRange(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::number::FormattedNumberRange::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 27;
  return a1;
}

void icu::number::FormattedNumberRange::toString(icu::number::FormattedNumberRange *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 >= 1)
  {
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
LABEL_3:
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;
    icu::UnicodeString::setToBogus(a3);
    return;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    *a2 = *(this + 4);
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
    goto LABEL_3;
  }

  (*(*v3 + 16))(*(this + 1));
}

void icu::number::FormattedNumberRange::toTempString(icu::number::FormattedNumberRange *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 >= 1)
  {
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
LABEL_3:
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;
    icu::UnicodeString::setToBogus(a3);
    return;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    *a2 = *(this + 4);
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
    goto LABEL_3;
  }

  (*(*v3 + 24))(*(this + 1));
}

icu::Appendable *icu::number::FormattedNumberRange::appendTo(icu::number::FormattedNumberRange *this, icu::Appendable *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return a2;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    *a3 = *(this + 4);
    return a2;
  }

  return (*(*v4 + 32))(*(this + 1), a2);
}

uint64_t icu::number::FormattedNumberRange::nextPosition(icu::number::FormattedNumberRange *this, icu::ConstrainedFieldPosition *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    *a3 = *(this + 4);
    return 0;
  }

  return (*(*v4 + 40))(*(this + 1), a2);
}

void icu::number::FormattedNumberRange::getDecimalNumbers(icu::number::FormattedNumberRange *this, icu::ByteSink *a2, icu::ByteSink *a3, UErrorCode *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (*(this + 1))
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      *v17 = 0u;
      v18 = 0u;
      icu::number::impl::DecNum::DecNum(v17);
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      *v11 = 0u;
      v12 = 0u;
      icu::number::impl::DecNum::DecNum(v11);
      v9 = icu::number::impl::DecimalQuantity::toDecNum((*(this + 1) + 304), v17, a4);
      icu::number::impl::DecNum::toString(v9, a2, a4);
      v10 = icu::number::impl::DecimalQuantity::toDecNum((*(this + 1) + 376), v11, a4);
      icu::number::impl::DecNum::toString(v10, a3, a4);
      if (BYTE4(v11[1]))
      {
        free(v11[0]);
      }

      if (BYTE4(v17[1]))
      {
        free(v17[0]);
      }
    }

    else
    {
      *a4 = *(this + 4);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t icu::number::FormattedNumberRange::getIdentityResult(icu::number::FormattedNumberRange *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 2;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    *a2 = *(this + 4);
    return 2;
  }

  return *(v3 + 448);
}

uint64_t icu::number::FormattedNumberRange::getData(icu::number::FormattedNumberRange *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  result = *(this + 1);
  if (!result)
  {
    *a2 = *(this + 4);
  }

  return result;
}

void sub_19536E764(void **a1)
{
  *a1 = &unk_1F093F700;
  icu::number::impl::DecimalQuantity::~DecimalQuantity(a1 + 47);
  icu::number::impl::DecimalQuantity::~DecimalQuantity(a1 + 38);

  icu::FormattedValueStringBuilderImpl::~FormattedValueStringBuilderImpl(a1);
}

void sub_19536E7C8(void **a1)
{
  sub_19536E764(a1);

  JUMPOUT(0x19A8B2600);
}

_DWORD *icu::number::impl::Padder::Padder(_DWORD *result, int a2, int a3, int a4)
{
  *result = a3;
  result[1] = a2;
  result[2] = a4;
  return result;
}

{
  *result = a3;
  result[1] = a2;
  result[2] = a4;
  return result;
}

_DWORD *icu::number::impl::Padder::Padder(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  *this = a2;
  return this;
}

uint64_t icu::number::impl::Padder::codePoints(unsigned int a1, int a2)
{
  if (a2 < 0)
  {
    v2 = 65810;
  }

  else
  {
    v2 = a1;
  }

  if (a2 < 0)
  {
    v3 = 4294967293;
  }

  else
  {
    v3 = a2;
  }

  return v3 | (v2 << 32);
}

uint64_t icu::number::impl::Padder::forProperties(icu::number::impl::Padder *this, const icu::number::impl::DecimalFormatProperties *a2)
{
  v3 = *(this + 200);
  v4 = v3;
  LODWORD(v5) = v3 >> 5;
  if (v4 >= 0)
  {
    v5 = v5;
  }

  else
  {
    v5 = *(this + 101);
  }

  if (v5 < 1)
  {
    v6 = 0x2000000000;
  }

  else
  {
    v6 = icu::UnicodeString::char32At(v5, (this + 392), 0) << 32;
  }

  if (!*(this + 384))
  {
    v7 = *(this + 97);
  }

  return v6 | *(this + 18);
}

uint64_t icu::number::impl::Padder::padAndApply(icu::number::impl::Padder *this, const icu::number::impl::Modifier *a2, const icu::number::impl::Modifier *a3, icu::FormattedStringBuilder *a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  v14 = (*(*a2 + 32))(a2);
  v15 = (*(*a3 + 32))(a3);
  v16 = *this;
  v17 = v15 + v14 + icu::FormattedStringBuilder::codePointCount(a4);
  v18 = v16 - v17;
  if (v16 - v17 <= 0)
  {
    v23 = (*(*a2 + 16))(a2, a4, a5, a6, a7);
    return (*(*a3 + 16))(a3, a4, a5, (v23 + a6), a7) + v23;
  }

  v31 = v17;
  v32 = v16;
  v21 = this + 4;
  v19 = *(this + 1);
  v20 = *(v21 + 1);
  if (v20 == 1)
  {
    v25 = v18;
    do
    {
      icu::FormattedStringBuilder::insertCodePoint(a4, a5, v19, 0, a7);
      --v25;
    }

    while (v25);
  }

  else
  {
    if (v20 != 2)
    {
      v26 = 0;
      goto LABEL_12;
    }

    v22 = v18;
    do
    {
      icu::FormattedStringBuilder::insertCodePoint(a4, a6, v19, 0, a7);
      --v22;
    }

    while (v22);
  }

  v26 = v18 << ((v19 & 0xFFFF0000) != 0);
LABEL_12:
  v27 = (*(*a2 + 16))(a2, a4, a5, (v26 + a6), a7) + v26;
  v24 = (*(*a3 + 16))(a3, a4, a5, (v27 + a6), a7) + v27;
  if (v20 == 3)
  {
    v29 = v18;
    do
    {
      icu::FormattedStringBuilder::insertCodePoint(a4, v24 + a6, v19, 0, a7);
      --v29;
    }

    while (v29);
    return (v24 + (v18 << ((v19 & 0xFFFF0000) != 0)));
  }

  if (!v20)
  {
    v28 = v32 - v31;
    do
    {
      icu::FormattedStringBuilder::insertCodePoint(a4, a5, v19, 0, a7);
      --v28;
    }

    while (v28);
    return (v24 + (v18 << ((v19 & 0xFFFF0000) != 0)));
  }

  return v24;
}

icu::number::impl::MutablePatternModifier *icu::number::impl::MutablePatternModifier::MutablePatternModifier(icu::number::impl::MutablePatternModifier *this, char a2)
{
  *this = &unk_1F093F7E0;
  *(this + 1) = &unk_1F093F848;
  *(this + 2) = &unk_1F093F8A0;
  *(this + 24) = a2;
  icu::CurrencyUnit::CurrencyUnit((this + 80));
  *(this + 14) = this + 125;
  *(this + 30) = 40;
  *(this + 62) = 0;
  *(this + 42) = 0;
  *(this + 22) = &unk_1F0935D00;
  *(this + 92) = 2;
  *(this + 30) = &unk_1F0935D00;
  *(this + 124) = 2;
  *(this + 41) = &unk_1F0935D00;
  *(this + 168) = 2;
  return this;
}

uint64_t icu::number::impl::MutablePatternModifier::setPatternInfo(uint64_t result, uint64_t a2, char a3)
{
  *(result + 32) = a2;
  *(result + 40) = a3;
  return result;
}

uint64_t icu::number::impl::MutablePatternModifier::setPatternAttributes(uint64_t result, int a2, char a3, char a4)
{
  *(result + 44) = a2;
  *(result + 48) = a3;
  *(result + 49) = a4;
  return result;
}

void icu::number::impl::MutablePatternModifier::setSymbols(uint64_t a1, uint64_t a2, const UChar *a3, int a4, uint64_t a5, UErrorCode *a6)
{
  v21[8] = *MEMORY[0x1E69E9840];
  *(a1 + 56) = a2;
  icu::CurrencyUnit::CurrencyUnit(v14, a3);
  icu::Locale::Locale(v15, a2 + 1936);
  icu::number::impl::CurrencySymbols::CurrencySymbols(v16, v14, v15, a2, a6);
  icu::CurrencyUnit::operator=(a1 + 80, v17);
  icu::CharString::operator=(a1 + 112, &v18);
  icu::UnicodeString::operator=((a1 + 176), v20);
  icu::UnicodeString::operator=((a1 + 240), v21);
  icu::UnicodeString::~UnicodeString(v11, v21);
  icu::UnicodeString::~UnicodeString(v12, v20);
  if (v19)
  {
    free(v18);
  }

  icu::CurrencyUnit::~CurrencyUnit(v17);
  icu::Locale::~Locale(v15);
  icu::CurrencyUnit::~CurrencyUnit(v14);
  *(a1 + 64) = a4;
  *(a1 + 304) = a5;
  v13 = *MEMORY[0x1E69E9840];
}

uint64_t icu::number::impl::MutablePatternModifier::setNumberProperties(uint64_t result, int a2, int a3)
{
  *(result + 312) = a2;
  *(result + 316) = a3;
  return result;
}

void icu::number::impl::MutablePatternModifier::createImmutableForPlural(icu::number::impl::MutablePatternModifier *a1@<X0>, int a2@<W1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = &unk_1F093F2C0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a1 + 78) = 3;
  *(a1 + 79) = a2;
  icu::number::impl::MutablePatternModifier::createConstantModifier(a1, a3);
}

void icu::number::impl::MutablePatternModifier::createConstantModifier(icu::number::impl::MutablePatternModifier *this, UErrorCode *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  icu::FormattedStringBuilder::FormattedStringBuilder(v6);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  icu::FormattedStringBuilder::FormattedStringBuilder(v4);
  icu::number::impl::MutablePatternModifier::prepareAffix(this, 1);
  icu::number::impl::AffixUtils::unescape((this + 328), v6, 0, this + 16, *(this + 40), a2);
  icu::number::impl::MutablePatternModifier::prepareAffix(this, 0);
  icu::number::impl::AffixUtils::unescape((this + 328), v4, 0, this + 16, *(this + 40), a2);
  if ((*(**(this + 4) + 40))(*(this + 4)))
  {
    operator new();
  }

  operator new();
}

void *icu::number::impl::ImmutablePatternModifier::ImmutablePatternModifier(void *result, uint64_t a2, uint64_t a3)
{
  *result = &unk_1F093F8C8;
  result[1] = a2;
  result[2] = a3;
  result[3] = 0;
  return result;
}

{
  *result = &unk_1F093F8C8;
  result[1] = a2;
  result[2] = a3;
  result[3] = 0;
  return result;
}

uint64_t icu::number::impl::MutablePatternModifier::insertPrefix(icu::number::impl::MutablePatternModifier *this, icu::FormattedStringBuilder *a2, int a3, UErrorCode *a4)
{
  icu::number::impl::MutablePatternModifier::prepareAffix(this, 1);
  v8 = *(this + 40);

  return icu::number::impl::AffixUtils::unescape((this + 328), a2, a3, this + 16, v8, a4);
}

uint64_t icu::number::impl::MutablePatternModifier::insertSuffix(icu::number::impl::MutablePatternModifier *this, icu::FormattedStringBuilder *a2, int a3, UErrorCode *a4)
{
  icu::number::impl::MutablePatternModifier::prepareAffix(this, 0);
  v8 = *(this + 40);

  return icu::number::impl::AffixUtils::unescape((this + 328), a2, a3, this + 16, v8, a4);
}

void icu::number::impl::ImmutablePatternModifier::processQuantity(uint64_t a1, icu::number::impl::DecimalQuantity *a2, uint64_t a3, int *a4)
{
  (*(**(a1 + 24) + 16))(*(a1 + 24));
  sub_195374000(a3 + 104, a2, a4);
  if (!*(a3 + 200))
  {

    icu::number::impl::ImmutablePatternModifier::applyToMicros(a1, a3, a2, a4);
  }
}

uint64_t icu::number::impl::ImmutablePatternModifier::applyToMicros(uint64_t a1, uint64_t a2, icu::number::impl::DecimalQuantity *a3, int *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 16);
  if (v7)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    icu::number::impl::DecimalQuantity::DecimalQuantity(v19, a3);
    sub_195374000(a2 + 104, v19, a4);
    v9 = *a4;
    v10 = 5;
    if (v9 <= 0)
    {
      memset(v21, 0, sizeof(v21));
      icu::PluralRules::select(v7, v19, v21);
      v12 = icu::StandardPlural::indexOrNegativeFromString(v21, v11);
      if (v12 < 0)
      {
        v10 = 5;
      }

      else
      {
        v10 = v12;
      }

      icu::UnicodeString::~UnicodeString(v13, v21);
    }

    icu::number::impl::DecimalQuantity::~DecimalQuantity(v19);
    v14 = *(a1 + 8);
    v15 = icu::number::impl::DecimalQuantity::signum(a3);
    result = (*(*v14 + 16))(v14, v15, v10);
  }

  else
  {
    v17 = *(a1 + 8);
    result = *(v17 + 8 * icu::number::impl::DecimalQuantity::signum(a3) + 216);
  }

  *(a2 + 200) = result;
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::number::impl::ImmutablePatternModifier::getModifier(uint64_t a1, unsigned int a2)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  if (*(v3 + 8))
  {
    return (*(*v2 + 16))();
  }

  else
  {
    return *(v2 + 8 * a2 + 216);
  }
}

void icu::number::impl::MutablePatternModifier::processQuantity(uint64_t a1, icu::number::impl::DecimalQuantity *a2, uint64_t a3, int *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 320) + 16))(*(a1 + 320));
  sub_195374000(a3 + 104, a2, a4);
  if (!*(a3 + 200))
  {
    LODWORD(v13[0]) = 0;
    if ((*(**(a1 + 32) + 72))(*(a1 + 32), 4294967288, v13))
    {
      v8 = *(a1 + 304);
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      icu::number::impl::DecimalQuantity::DecimalQuantity(v13, a2);
      sub_195374000(a3 + 104, v13, a4);
      v9 = 5;
      if (v8 && *a4 <= 0)
      {
        memset(v15, 0, sizeof(v15));
        icu::PluralRules::select(v8, v13, v15);
        v11 = icu::StandardPlural::indexOrNegativeFromString(v15, v10);
        if (v11 < 0)
        {
          v9 = 5;
        }

        else
        {
          v9 = v11;
        }

        icu::UnicodeString::~UnicodeString(5, v15);
      }

      icu::number::impl::DecimalQuantity::~DecimalQuantity(v13);
    }

    else
    {
      v9 = 8;
    }

    *(a1 + 312) = icu::number::impl::DecimalQuantity::signum(a2);
    *(a1 + 316) = v9;
    *(a3 + 200) = a1 + 8;
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t icu::number::impl::MutablePatternModifier::apply(icu::number::impl::MutablePatternModifier *this, icu::FormattedStringBuilder *a2, icu::FormattedStringBuilder *a3, int a4, UErrorCode *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  icu::number::impl::MutablePatternModifier::prepareAffix(this, 1);
  v10 = icu::number::impl::AffixUtils::unescape((this + 328), a2, a3, this + 16, *(this + 40), a5);
  v11 = v10 + a4;
  icu::number::impl::MutablePatternModifier::prepareAffix(this, 0);
  v12 = icu::number::impl::AffixUtils::unescape((this + 328), a2, v11, this + 16, *(this + 40), a5);
  v14 = 0;
  if (((*(**(this + 4) + 80))(*(this + 4)) & 1) == 0)
  {
    v18 = &unk_1F0935D00;
    v19 = 2;
    v14 = icu::FormattedStringBuilder::splice(a2, v10 + a3, v11, &v18, 0, 0, 0, a5);
    icu::UnicodeString::~UnicodeString(v15, &v18);
  }

  icu::number::impl::CurrencySpacingEnabledModifier::applyCurrencySpacing(a2, a3, v10, v11 + v14, v12, *(this + 7), a5, v13);
  v16 = *MEMORY[0x1E69E9840];
  return (v12 + v10 + v14);
}

uint64_t icu::number::impl::MutablePatternModifier::getPrefixLength(icu::number::impl::MutablePatternModifier *this)
{
  v4 = 0;
  icu::number::impl::MutablePatternModifier::prepareAffix(this, 1);
  return icu::number::impl::AffixUtils::unescapedCodePointCount((this + 328), (this + 16), &v4, v2);
}

uint64_t icu::number::impl::MutablePatternModifier::prepareAffix(icu::number::impl::MutablePatternModifier *this, int a2)
{
  v4 = *(this + 4);
  v5 = icu::number::impl::PatternStringUtils::resolveSignDisplay(*(this + 11), *(this + 78));
  v6 = *(this + 49);
  v7 = *(this + 79);
  v8 = *(this + 48);

  return icu::number::impl::PatternStringUtils::patternInfoToStringBuilder(v4, a2, v5, v6, v7, v8, 0, this + 328);
}

uint64_t non-virtual thunk toicu::number::impl::MutablePatternModifier::getPrefixLength(icu::number::impl::MutablePatternModifier *this)
{
  v4 = 0;
  icu::number::impl::MutablePatternModifier::prepareAffix((this - 8), 1);
  return icu::number::impl::AffixUtils::unescapedCodePointCount((this + 320), (this + 8), &v4, v2);
}

uint64_t icu::number::impl::MutablePatternModifier::getCodePointCount(icu::number::impl::MutablePatternModifier *this)
{
  v6 = 0;
  icu::number::impl::MutablePatternModifier::prepareAffix(this, 1);
  v3 = icu::number::impl::AffixUtils::unescapedCodePointCount((this + 328), (this + 16), &v6, v2);
  icu::number::impl::MutablePatternModifier::prepareAffix(this, 0);
  return icu::number::impl::AffixUtils::unescapedCodePointCount((this + 328), (this + 16), &v6, v4) + v3;
}

icu::UnicodeString *icu::number::impl::MutablePatternModifier::getSymbol@<X0>(uint64_t a1@<X0>, int a2@<W1>, icu::UnicodeString *a3@<X8>)
{
  v5 = U_ZERO_ERROR;
  if (a2 <= -6)
  {
    if (a2 > -9)
    {
      if (a2 == -8)
      {
        return icu::number::impl::CurrencySymbols::getPluralName(a1 + 72, *(a1 + 316), &v5, a3);
      }

      if (a2 == -7)
      {
        return icu::number::impl::CurrencySymbols::getIntlCurrencySymbol((a1 + 72), a3);
      }

      return icu::number::impl::MutablePatternModifier::getCurrencySymbolForUnitWidth(a1, &v5, a3);
    }

    if (a2 == -10 || a2 == -9)
    {

      return sub_1951D6EE0(a3, word_19549E636);
    }

LABEL_26:
    abort();
  }

  if (a2 <= -4)
  {
    if (a2 == -5)
    {
      v4 = (*(a1 + 56) + 776);
    }

    else
    {
      v4 = (*(a1 + 56) + 200);
    }
  }

  else
  {
    switch(a2)
    {
      case -3:
        v4 = (*(a1 + 56) + 1800);
        break;
      case -2:
        v4 = (*(a1 + 56) + 456);
        break;
      case -1:
        v4 = (*(a1 + 56) + 392);
        break;
      default:
        goto LABEL_26;
    }
  }

  return icu::UnicodeString::UnicodeString(a3, v4);
}

icu::UnicodeString *icu::number::impl::MutablePatternModifier::getCurrencySymbolForUnitWidth@<X0>(icu::UnicodeString *this@<X0>, UErrorCode *a2@<X1>, icu::UnicodeString *a3@<X8>)
{
  v3 = *(this + 16);
  if (v3 > 3)
  {
    switch(v3)
    {
      case 4:
        return icu::number::impl::CurrencySymbols::getFormalCurrencySymbol((this + 72), a2, a3);
      case 5:
        return icu::number::impl::CurrencySymbols::getVariantCurrencySymbol((this + 72), a2, a3);
      case 6:
        *a3 = &unk_1F0935D00;
        *(a3 + 4) = 2;
        return this;
      default:
        return icu::number::impl::CurrencySymbols::getCurrencySymbol(this + 9, a2, a3);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 3)
      {
        return icu::number::impl::CurrencySymbols::getIntlCurrencySymbol(this + 9, a3);
      }

      return icu::number::impl::CurrencySymbols::getCurrencySymbol(this + 9, a2, a3);
    }

    return icu::number::impl::CurrencySymbols::getNarrowCurrencySymbol((this + 72), a2, a3);
  }
}

void sub_19536FD5C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_19537009C(a1, a2);

  JUMPOUT(0x19A8B2600);
}

void sub_19536FD9C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_19537009C(a1 - 8, a2);

  JUMPOUT(0x19A8B2600);
}

void sub_19536FDE0(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_19537009C(a1 - 16, a2);

  JUMPOUT(0x19A8B2600);
}

void *sub_19536FE1C(void *a1)
{
  *a1 = &unk_1F093F8C8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_19536FE88(void *a1)
{
  *a1 = &unk_1F093F8C8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x19A8B2600);
}

void sub_19536FF14(icu::number::impl::ModifierStore *a1)
{
  *a1 = &unk_1F093FA00;
  for (i = 288; i != -32; i -= 40)
  {
    icu::number::impl::AdoptingSignumModifierStore::~AdoptingSignumModifierStore((a1 + i));
  }

  icu::number::impl::ModifierStore::~ModifierStore(a1);
}

void sub_19536FF7C(icu::number::impl::ModifierStore *a1)
{
  *a1 = &unk_1F093FA00;
  for (i = 288; i != -32; i -= 40)
  {
    icu::number::impl::AdoptingSignumModifierStore::~AdoptingSignumModifierStore((a1 + i));
  }

  icu::number::impl::ModifierStore::~ModifierStore(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19536FFF8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = *(a1 + 40 * a3 + 8 * a2 + 16);
  if (a3 != 5 && !result)
  {
    return *(a1 + 8 * a2 + 216);
  }

  return result;
}

uint64_t sub_195370028(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *a1 = &unk_1F093F520;
  icu::FormattedStringBuilder::FormattedStringBuilder((a1 + 8), a2);
  icu::FormattedStringBuilder::FormattedStringBuilder((a1 + 144), a3);
  *(a1 + 280) = a4;
  *(a1 + 281) = a5;
  icu::number::impl::Modifier::Parameters::Parameters((a1 + 288));
  return a1;
}

uint64_t sub_19537009C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F093F7E0;
  v3 = (a1 + 8);
  *(a1 + 8) = &unk_1F093F848;
  v4 = (a1 + 16);
  *(a1 + 16) = &unk_1F093F8A0;
  icu::UnicodeString::~UnicodeString(a2, (a1 + 328));
  icu::UnicodeString::~UnicodeString(v5, (a1 + 240));
  icu::UnicodeString::~UnicodeString(v6, (a1 + 176));
  if (*(a1 + 124))
  {
    free(*(a1 + 112));
  }

  icu::CurrencyUnit::~CurrencyUnit((a1 + 80));
  icu::number::impl::SymbolProvider::~SymbolProvider(v4);
  icu::number::impl::Modifier::~Modifier(v3);
  return a1;
}

uint64_t *icu::number::impl::ParsedPatternInfo::consumePattern(uint64_t *this, UChar **a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v4 = this;
    icu::UnicodeString::operator=(this + 1, a2);
    *(v4 + 424) = v4 + 72;
    this = icu::number::impl::ParsedPatternInfo::consumeSubpattern(v4, a3);
    if (*a3 <= 0)
    {
      if (icu::number::impl::ParsedPatternInfo::ParserState::peek((v4 + 408)) != 59 || (icu::number::impl::ParsedPatternInfo::ParserState::peek((v4 + 408)) < 0x10000 ? (v5 = 1) : (v5 = 2), (*(v4 + 416) += v5, icu::number::impl::ParsedPatternInfo::ParserState::peek((v4 + 408)) == -1) || (*(v4 + 432) = 1, *(v4 + 424) = v4 + 240, this = icu::number::impl::ParsedPatternInfo::consumeSubpattern(v4, a3), *a3 <= 0)))
      {
        this = icu::number::impl::ParsedPatternInfo::ParserState::peek((v4 + 408));
        if (this != -1)
        {
          *a3 = U_UNQUOTED_SPECIAL;
        }
      }
    }
  }

  return this;
}

void icu::number::impl::PatternParser::parseToProperties(uint64_t a1@<X0>, int a2@<W1>, UErrorCode *a3@<X2>, void *a4@<X8>)
{
  bzero(a4, 0x2F8uLL);
  icu::number::impl::DecimalFormatProperties::DecimalFormatProperties(a4);

  icu::number::impl::PatternParser::parseToExistingPropertiesImpl(a1, a4, a2, a3);
}

void icu::number::impl::PatternParser::parseToExistingPropertiesImpl(uint64_t a1, icu::number::impl::DecimalFormatProperties *this, int a3, UErrorCode *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  v6 = v5;
  v7 = v5 >> 5;
  if (v6 < 0)
  {
    v7 = *(a1 + 12);
  }

  if (v7)
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_195356DD8(v20);
    v11 = *(a1 + 8);
    v12 = v11;
    v13 = v11 >> 5;
    if (v12 >= 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = *(a1 + 12);
    }

    if (icu::UnicodeString::doCompare(a1, 0, v14, &unk_19549E63A, 0, 18))
    {
      icu::number::impl::ParsedPatternInfo::consumePattern(v20, a1, a4);
    }

    else
    {
      memset(v19, 0, sizeof(v19));
      v18 = L"0.##E+00";
      icu::UnicodeString::UnicodeString(v19, 1, &v18);
      icu::number::impl::ParsedPatternInfo::consumePattern(v20, v19, a4);
      icu::UnicodeString::~UnicodeString(v16, v19);
    }

    if (*a4 <= 0)
    {
      icu::number::impl::PatternParser::patternInfoToProperties(this, v20, a3, a4);
    }

    sub_195356ED0(v20);
    v17 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v15 = *MEMORY[0x1E69E9840];

    icu::number::impl::DecimalFormatProperties::clear(this);
  }
}

void icu::number::impl::PatternParser::parseToProperties(icu::number::impl::PatternParser *this@<X0>, UErrorCode *a2@<X1>, void *a3@<X8>)
{
  bzero(a3, 0x2F8uLL);
  icu::number::impl::DecimalFormatProperties::DecimalFormatProperties(a3);

  icu::number::impl::PatternParser::parseToExistingPropertiesImpl(this, a3, 0, a2);
}

uint64_t icu::number::impl::ParsedPatternInfo::charAt(icu::number::impl::ParsedPatternInfo *this, int a2, int a3)
{
  v3 = 232;
  v4 = 392;
  if ((a2 & 0x200) == 0)
  {
    v4 = 224;
  }

  if ((a2 & 0x100) != 0)
  {
    v4 = 216;
  }

  v5 = 384;
  if ((~a2 & 0x300) != 0)
  {
    v5 = v4;
  }

  if ((a2 & 0x400) == 0)
  {
    v3 = v5;
  }

  v6 = 400;
  if ((~a2 & 0x600) != 0)
  {
    v6 = v3;
  }

  if (a3 < 0 || (v8 = this + v6, v7 = *(this + v6), *(v8 + 1) - v7 <= a3))
  {
    abort();
  }

  v9 = v7 + a3;
  v10 = *(this + 8);
  if (*(this + 8) < 0)
  {
    v11 = *(this + 5);
  }

  else
  {
    v11 = v10 >> 5;
  }

  if (v11 <= v9)
  {
    return 0xFFFFLL;
  }

  if ((v10 & 2) != 0)
  {
    v12 = this + 18;
  }

  else
  {
    v12 = *(this + 4);
  }

  return *&v12[2 * v9];
}

uint64_t icu::number::impl::ParsedPatternInfo::getEndpoints(icu::number::impl::ParsedPatternInfo *this, int a2)
{
  v2 = 232;
  v3 = 392;
  if ((a2 & 0x200) == 0)
  {
    v3 = 224;
  }

  if ((a2 & 0x100) != 0)
  {
    v3 = 216;
  }

  v4 = 384;
  if ((~a2 & 0x300) != 0)
  {
    v4 = v3;
  }

  if ((a2 & 0x400) == 0)
  {
    v2 = v4;
  }

  v5 = 400;
  if ((~a2 & 0x600) != 0)
  {
    v5 = v2;
  }

  return this + v5;
}

uint64_t icu::number::impl::ParsedPatternInfo::length(icu::number::impl::ParsedPatternInfo *this, int a2)
{
  v2 = 232;
  v3 = 392;
  if ((a2 & 0x200) == 0)
  {
    v3 = 224;
  }

  if ((a2 & 0x100) != 0)
  {
    v3 = 216;
  }

  v4 = 384;
  if ((~a2 & 0x300) != 0)
  {
    v4 = v3;
  }

  if ((a2 & 0x400) == 0)
  {
    v2 = v4;
  }

  v5 = 400;
  if ((~a2 & 0x600) != 0)
  {
    v5 = v2;
  }

  return (*(this + v5 + 4) - *(this + v5));
}

icu::UnicodeString *icu::number::impl::ParsedPatternInfo::getString@<X0>(icu::UnicodeString *this@<X0>, int a2@<W1>, icu::UnicodeString *a3@<X8>)
{
  v3 = 232;
  v4 = 392;
  if ((a2 & 0x200) == 0)
  {
    v4 = 224;
  }

  if ((a2 & 0x100) != 0)
  {
    v4 = 216;
  }

  v5 = 384;
  if ((~a2 & 0x300) != 0)
  {
    v5 = v4;
  }

  if ((a2 & 0x400) == 0)
  {
    v3 = v5;
  }

  v6 = 400;
  if ((~a2 & 0x600) != 0)
  {
    v6 = v3;
  }

  v7 = (this + v6);
  v8 = *v7;
  v9 = v7[1];
  if (v9 != v8)
  {
    return icu::UnicodeString::UnicodeString(a3, (this + 8), v8, (v9 - v8));
  }

  *a3 = &unk_1F0935D00;
  *(a3 + 4) = 2;
  return this;
}

uint64_t icu::number::impl::ParsedPatternInfo::hasCurrencySign(icu::number::impl::ParsedPatternInfo *this)
{
  if (*(this + 210))
  {
    v1 = 1;
  }

  else if (*(this + 432) == 1)
  {
    v1 = *(this + 378);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t *icu::number::impl::ParsedPatternInfo::ParserState::peek(icu::number::impl::ParsedPatternInfo::ParserState *this)
{
  v1 = *(this + 2);
  v2 = *this;
  if (*(v2 + 8) < 0)
  {
    v3 = *(v2 + 12);
  }

  else
  {
    v3 = (*(v2 + 8) >> 5);
  }

  if (v1 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return icu::UnicodeString::char32At(v3, v2, v1);
  }
}

uint64_t icu::number::impl::ParsedPatternInfo::ParserState::peek2(icu::number::impl::ParsedPatternInfo::ParserState *this)
{
  v2 = *(this + 2);
  v3 = *this;
  if (*(v3 + 8) < 0)
  {
    v4 = *(v3 + 12);
  }

  else
  {
    v4 = (*(v3 + 8) >> 5);
  }

  if (v2 == v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = icu::UnicodeString::char32At(v4, v3, v2) < 0x10000 ? 1 : 2;
  v6 = v5 + *(this + 2);
  v7 = *this;
  v8 = *(*this + 8);
  v9 = (v8 & 0x8000) != 0 ? v7[3] : (v8 >> 5);
  if (v6 == v9)
  {
    return 0xFFFFFFFFLL;
  }

  return icu::UnicodeString::char32At(v9, v7, v6);
}

uint64_t *icu::number::impl::ParsedPatternInfo::ParserState::next(icu::number::impl::ParsedPatternInfo::ParserState *this)
{
  result = icu::number::impl::ParsedPatternInfo::ParserState::peek(this);
  if (result < 0x10000)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  *(this + 2) += v3;
  return result;
}

uint64_t *icu::number::impl::ParsedPatternInfo::consumeSubpattern(icu::number::impl::ParsedPatternInfo *this, UErrorCode *a2)
{
  result = icu::number::impl::ParsedPatternInfo::consumePadding(this, 0, a2);
  if (*a2 <= 0)
  {
    result = icu::number::impl::ParsedPatternInfo::consumeAffix(this, (*(this + 53) + 144), a2);
    if (*a2 <= 0)
    {
      result = icu::number::impl::ParsedPatternInfo::consumePadding(this, 1, a2);
      if (*a2 <= 0)
      {
        result = icu::number::impl::ParsedPatternInfo::consumeFormat(this, a2);
        if (*a2 <= 0)
        {
          result = icu::number::impl::ParsedPatternInfo::consumeExponent(this, a2);
          if (*a2 <= 0)
          {
            result = icu::number::impl::ParsedPatternInfo::consumePadding(this, 2, a2);
            if (*a2 <= 0)
            {
              result = icu::number::impl::ParsedPatternInfo::consumeAffix(this, (*(this + 53) + 152), a2);
              if (*a2 <= 0)
              {

                return icu::number::impl::ParsedPatternInfo::consumePadding(this, 3, a2);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t *icu::number::impl::ParsedPatternInfo::consumePadding(uint64_t a1, int a2, UErrorCode *a3)
{
  result = icu::number::impl::ParsedPatternInfo::ParserState::peek((a1 + 408));
  if (result == 42)
  {
    v7 = *(a1 + 424);
    if (*(v7 + 48) == 1)
    {
      *a3 = U_MULTIPLE_PAD_SPECIFIERS;
    }

    else
    {
      *(v7 + 52) = a2;
      *(v7 + 48) = 1;
      if (icu::number::impl::ParsedPatternInfo::ParserState::peek((a1 + 408)) < 0x10000)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      v9 = v8 + *(a1 + 416);
      *(a1 + 416) = v9;
      *(*(a1 + 424) + 160) = v9;
      result = icu::number::impl::ParsedPatternInfo::consumeLiteral(a1, a3);
      *(*(a1 + 424) + 164) = *(a1 + 416);
    }
  }

  return result;
}

uint64_t *icu::number::impl::ParsedPatternInfo::consumeAffix(uint64_t a1, _DWORD *a2, UErrorCode *a3)
{
  *a2 = *(a1 + 416);
  while (1)
  {
    result = icu::number::impl::ParsedPatternInfo::ParserState::peek((a1 + 408));
    if (result <= 41)
    {
      break;
    }

    if ((result - 42) > 0x16)
    {
      goto LABEL_14;
    }

    if (result == 43)
    {
      *(*(a1 + 424) + 141) = 1;
    }

    else
    {
      if (result != 45)
      {
        if (((1 << (result - 42)) & 0x42FFD5) != 0)
        {
          goto LABEL_20;
        }

LABEL_14:
        if (result == 164)
        {
          *(*(a1 + 424) + 138) = 1;
        }

        else if (result == 8240)
        {
          *(*(a1 + 424) + 137) = 1;
        }

        goto LABEL_18;
      }

      *(*(a1 + 424) + 140) = 1;
    }

LABEL_18:
    result = icu::number::impl::ParsedPatternInfo::consumeLiteral(a1, a3);
    if (*a3 >= 1)
    {
      return result;
    }
  }

  if (result == 37)
  {
    *(*(a1 + 424) + 136) = 1;
    goto LABEL_18;
  }

  if (result != -1 && result != 35)
  {
    goto LABEL_18;
  }

LABEL_20:
  a2[1] = *(a1 + 416);
  return result;
}

uint64_t *icu::number::impl::ParsedPatternInfo::consumeFormat(icu::number::impl::ParsedPatternInfo *this, UErrorCode *a2)
{
  result = icu::number::impl::ParsedPatternInfo::consumeIntegerFormat(this, a2);
  if (*a2 <= 0)
  {
    v5 = icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408));
    result = icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408));
    if (v5 == 46)
    {
      if (result < 0x10000)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      *(this + 104) += v6;
      v7 = *(this + 53);
      *(v7 + 40) = 1;
      ++*(v7 + 44);
    }

    else
    {
      if (result != 164)
      {
        return result;
      }

      result = icu::number::impl::ParsedPatternInfo::ParserState::peek2((this + 408));
      if ((result - 48) >= 0xA && result != 35)
      {
        return result;
      }

      v8 = *(this + 53);
      *(v8 + 138) = 257;
      *(v8 + 40) = 1;
      ++*(v8 + 44);
      if (icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408)) < 0x10000)
      {
        v9 = 1;
      }

      else
      {
        v9 = 2;
      }

      *(this + 104) += v9;
    }

    return icu::number::impl::ParsedPatternInfo::consumeFractionFormat(this, a2);
  }

  return result;
}

uint64_t *icu::number::impl::ParsedPatternInfo::consumeExponent(icu::number::impl::ParsedPatternInfo *this, UErrorCode *a2)
{
  v4 = *(this + 53);
  result = icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408));
  if (result == 69)
  {
    if ((~*v4 & 0xFFFF0000) != 0)
    {
      *a2 = U_MALFORMED_EXPONENTIAL_PATTERN;
    }

    else
    {
      if (icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408)) < 0x10000)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      *(this + 104) += v6;
      ++*(v4 + 44);
      if (icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408)) != 43)
      {
        goto LABEL_17;
      }

      if (icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408)) < 0x10000)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      *(this + 104) += v7;
      *(v4 + 128) = 1;
      while (1)
      {
        ++*(v4 + 44);
LABEL_17:
        result = icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408));
        if (result != 48)
        {
          break;
        }

        if (icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408)) < 0x10000)
        {
          v8 = 1;
        }

        else
        {
          v8 = 2;
        }

        *(this + 104) += v8;
        ++*(v4 + 132);
      }
    }
  }

  return result;
}

uint64_t *icu::number::impl::ParsedPatternInfo::consumeLiteral(icu::number::impl::ParsedPatternInfo *this, UErrorCode *a2)
{
  result = icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408));
  if (result == -1)
  {
LABEL_16:
    *a2 = U_PATTERN_SYNTAX_ERROR;
    return result;
  }

  v5 = icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408));
  result = icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408));
  if (result < 0x10000)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  *(this + 104) += v6;
  if (v5 == 39)
  {
    for (; icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408)) != 39; *(this + 104) += v7)
    {
      result = icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408));
      if (result == -1)
      {
        goto LABEL_16;
      }

      if (icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408)) < 0x10000)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }
    }

    result = icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408));
    if (result < 0x10000)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    *(this + 104) += v8;
  }

  return result;
}

uint64_t *icu::number::impl::ParsedPatternInfo::consumeIntegerFormat(icu::number::impl::ParsedPatternInfo *this, UErrorCode *a2)
{
  v4 = *(this + 53);
  while (1)
  {
    result = icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408));
    if ((result - 48) < 0xA)
    {
      if (*(v4 + 5) > 0)
      {
        goto LABEL_23;
      }

      ++*(v4 + 11);
      ++*v4;
      ++*(v4 + 4);
      ++*(v4 + 6);
      if (!icu::number::impl::DecimalQuantity::isZeroish((v4 + 7)) || icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408)) != 48)
      {
        v6 = icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408));
        icu::number::impl::DecimalQuantity::appendDigit((v4 + 7), (v6 - 48), 0, 1);
      }

      goto LABEL_7;
    }

    if (result == 35)
    {
      if (*(v4 + 4) > 0)
      {
        goto LABEL_23;
      }

      ++*(v4 + 11);
      ++*v4;
      if (*(v4 + 5) < 1)
      {
        ++*(v4 + 2);
      }

      else
      {
        ++*(v4 + 3);
      }

      ++*(v4 + 6);
      goto LABEL_7;
    }

    if (result != 64)
    {
      break;
    }

    if (*(v4 + 4) > 0 || *(v4 + 3) > 0)
    {
LABEL_23:
      v8 = U_UNEXPECTED_TOKEN;
LABEL_24:
      *a2 = v8;
      return result;
    }

    ++*(v4 + 11);
    ++*v4;
    *(v4 + 20) = vadd_s32(*(v4 + 20), 0x100000001);
LABEL_7:
    if (icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408)) < 0x10000)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    *(this + 104) += v7;
  }

  if (result == 44)
  {
    ++*(v4 + 11);
    *v4 <<= 16;
    goto LABEL_7;
  }

  v8 = U_UNEXPECTED_TOKEN;
  v9 = *v4;
  if (!*v4 && v9 < 0xFFFF0000)
  {
    goto LABEL_24;
  }

  if (!WORD1(v9) && (v9 & 0xFFFF00000000) != 0xFFFF00000000)
  {
    v8 = U_PATTERN_SYNTAX_ERROR;
    goto LABEL_24;
  }

  return result;
}

uint64_t *icu::number::impl::ParsedPatternInfo::consumeFractionFormat(icu::number::impl::ParsedPatternInfo *this, UErrorCode *a2)
{
  v4 = 0;
  v5 = *(this + 53);
  while (1)
  {
    result = icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408));
    if ((result - 48) >= 0xA)
    {
      if (result != 35)
      {
        return result;
      }

      ++v5[5].i32[1];
      v5[4] = vadd_s32(v5[4], 0x100000001);
LABEL_5:
      ++v4;
      goto LABEL_7;
    }

    if (v5[4].i32[0] >= 1)
    {
      break;
    }

    ++v5[5].i32[1];
    ++v5[3].i32[1];
    ++v5[4].i32[1];
    if (icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408)) == 48)
    {
      goto LABEL_5;
    }

    v7 = icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408));
    icu::number::impl::DecimalQuantity::appendDigit(&v5[7], (v7 - 48), v4, 0);
    v4 = 0;
LABEL_7:
    if (icu::number::impl::ParsedPatternInfo::ParserState::peek((this + 408)) < 0x10000)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    *(this + 104) += v8;
  }

  *a2 = U_UNEXPECTED_TOKEN;
  return result;
}

void *icu::number::impl::PatternParser::patternInfoToProperties(uint64_t a1, uint64_t a2, int a3, const icu::UnicodeString *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 == 1)
    {
      v7 = *(a2 + 210);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a2 + 72);
  v9 = v8;
  if (v8 >> 16 == -1)
  {
    v9 = -1;
  }

  *(a1 + 76) = v9;
  *(a1 + 80) = v8 >> 16 != -1;
  if ((~v8 & 0xFFFF00000000) != 0)
  {
    v10 = v8 >> 16;
  }

  else
  {
    v10 = -1;
  }

  *(a1 + 752) = v10;
  if (*(a2 + 96))
  {
    v11 = 1;
  }

  else
  {
    v11 = *(a2 + 108) < 1;
  }

  if (v11)
  {
    v12 = *(a2 + 100);
    if (*(a2 + 88) | v12)
    {
      v13 = *(a2 + 88);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v12 = uprv_max(1, *(a2 + 100));
    v13 = 0;
  }

  v14 = *(a2 + 92);
  if (v14 < 1)
  {
    if (icu::number::impl::DecimalQuantity::isZeroish((a2 + 128)))
    {
      v16 = *(a2 + 108);
      if (v7)
      {
        v17 = -1;
      }

      else
      {
        v17 = v12;
      }

      if (v7)
      {
        v16 = -1;
      }

      *(a1 + 104) = v17;
      *(a1 + 88) = v16;
      *(a1 + 736) = 0;
    }

    else
    {
      if (v7)
      {
        *(a1 + 104) = -1;
        *(a1 + 88) = -1;
        v18 = 0.0;
      }

      else
      {
        *(a1 + 104) = v12;
        *(a1 + 88) = *(a2 + 108);
        v18 = icu::number::impl::DecimalQuantity::toDouble((a2 + 128));
      }

      *(a1 + 736) = v18;
    }

    v15 = -1;
    *(a1 + 116) = -1;
  }

  else
  {
    *(a1 + 104) = -1;
    *(a1 + 88) = -1;
    *(a1 + 736) = 0;
    *(a1 + 116) = v14;
    v15 = *(a2 + 84) + v14;
  }

  *(a1 + 96) = v15;
  v19 = *(a2 + 112);
  if (*(a2 + 108))
  {
    v19 = 0;
  }

  *(a1 + 65) = v19;
  *(a1 + 67) = *(a2 + 211);
  v20 = *(a2 + 204);
  if (v20 < 1)
  {
    *(a1 + 66) = 0;
    v21 = -1;
    *(a1 + 100) = -1;
    *(a1 + 112) = v13;
  }

  else
  {
    *(a1 + 66) = *(a2 + 200);
    *(a1 + 100) = v20;
    if (*(a2 + 92))
    {
      *(a1 + 112) = 1;
      v21 = -1;
    }

    else
    {
      *(a1 + 112) = *(a2 + 88);
      v21 = *(a2 + 96);
    }
  }

  *(a1 + 92) = v21;
  memset(v46, 0, sizeof(v46));
  (*(*a2 + 32))(v46, a2, 256);
  memset(v45, 0, sizeof(v45));
  (*(*a2 + 32))(v45, a2, 0);
  if (*(a2 + 120) != 1)
  {
    *(a1 + 72) = -1;
    icu::UnicodeString::setToBogus((a1 + 392));
    *(a1 + 384) = 1;
    goto LABEL_59;
  }

  v23 = *(a2 + 116);
  v24 = icu::number::impl::AffixUtils::estimateLength(v46, a4, v22);
  *(a1 + 72) = v24 + icu::number::impl::AffixUtils::estimateLength(v45, a4, v25) + v23;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  (*(*a2 + 32))(&v41, a2, 1024);
  if (SWORD4(v41) < 0)
  {
    v26 = HIDWORD(v41);
    if (HIDWORD(v41) == 1)
    {
      goto LABEL_56;
    }

    if (HIDWORD(v41) != 2)
    {
      goto LABEL_57;
    }

LABEL_48:
    if ((BYTE8(v41) & 2) != 0)
    {
      v27 = (&v41 | 0xA);
    }

    else
    {
      v27 = *(&v42 + 1);
    }

    if (*v27 == 39)
    {
      icu::UnicodeString::unBogus(a1 + 392);
      v28 = *(a1 + 400);
      v29 = v28;
      v30 = v28 >> 5;
      if (v29 >= 0)
      {
        v31 = v30;
      }

      else
      {
        v31 = *(a1 + 404);
      }

      icu::UnicodeString::doReplace(a1 + 392, 0, v31, "'", 0, 0xFFFFFFFFLL);
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  if ((WORD4(v41) & 0x7FE0) == 0x40)
  {
    goto LABEL_48;
  }

  if ((WORD4(v41) & 0x7FE0) != 0x20)
  {
    v26 = WORD4(v41) >> 5;
LABEL_57:
    icu::UnicodeString::UnicodeString(v40, &v41, 1, (v26 - 2));
    icu::UnicodeString::operator=((a1 + 392), v40);
    icu::UnicodeString::~UnicodeString(v32, v40);
    goto LABEL_58;
  }

LABEL_56:
  icu::UnicodeString::operator=((a1 + 392), &v41);
LABEL_58:
  v33 = *(a2 + 124);
  *(a1 + 388) = v33;
  *(a1 + 384) = 0;
  icu::UnicodeString::~UnicodeString(v33, &v41);
LABEL_59:
  icu::UnicodeString::operator=((a1 + 544), v46);
  icu::UnicodeString::operator=((a1 + 672), v45);
  if (*(a2 + 432) == 1)
  {
    (*(*a2 + 32))(&v41, a2, 768);
    icu::UnicodeString::operator=((a1 + 192), &v41);
    icu::UnicodeString::~UnicodeString(v34, &v41);
    (*(*a2 + 32))(&v41, a2, 512);
    icu::UnicodeString::operator=((a1 + 320), &v41);
    icu::UnicodeString::~UnicodeString(v35, &v41);
  }

  else
  {
    icu::UnicodeString::setToBogus((a1 + 192));
    icu::UnicodeString::setToBogus((a1 + 320));
  }

  if (*(a2 + 208) == 1)
  {
    v36 = 2;
  }

  else
  {
    v36 = *(a2 + 209);
    if (v36 != 1)
    {
      *(a1 + 84) = 0;
      goto LABEL_68;
    }

    v36 = 3;
  }

  *(a1 + 84) = v36;
LABEL_68:
  icu::UnicodeString::~UnicodeString(v36, v45);
  result = icu::UnicodeString::~UnicodeString(v37, v46);
  v39 = *MEMORY[0x1E69E9840];
  return result;
}