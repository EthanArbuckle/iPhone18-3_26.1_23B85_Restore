uint64_t sub_1953A33B8(uint64_t a1)
{
  *a1 = &unk_1F0941858;
  v2 = *(a1 + 8);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  free(*(a1 + 16));
  return a1;
}

void sub_1953A3430(uint64_t a1)
{
  sub_1953A33B8(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953A3468(uint64_t result, uint64_t a2)
{
  v2 = *(result + 1048);
  if (v2 >= 1)
  {
    v4 = result;
    v5 = 0;
    v6 = 8 * v2;
    do
    {
      result = sub_1953A2EC8(*(*(v4 + 16) + v5), a2);
      v5 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

void sub_1953A34D0(uint64_t a1, void *a2, UErrorCode *a3)
{
  icu::UVector::adoptElement(*(a1 + 8), a2, a3);
  if (*a3 <= 0)
  {
    v6 = (*(*a2 + 16))(a2);
    if (v6 > *(a1 + 1052))
    {
      *(a1 + 1052) = v6;
    }

    free(*(a1 + 16));
    *(a1 + 16) = 0;
  }
}

void sub_1953A3558(uint64_t a1, void *a2, UErrorCode *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = *(*(a1 + 8) + 8);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  icu::UVector::UVector(v35, 2 * v6, a3);
  if (*a3 > 0)
  {
    goto LABEL_36;
  }

  if (v6 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  v8 = malloc_type_malloc((2 * v7), 0x1000040BDFB0063uLL);
  if (!v8)
  {
    goto LABEL_35;
  }

  v9 = v8;
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v11 = icu::UVector::elementAt(*(a1 + 8), i);
      v9[i] = sub_1953A268C(v11);
    }
  }

  v12 = 0;
  v13 = (a1 + 24);
  do
  {
    v13[v12] = DWORD2(v35[0]);
    if (v6 >= 1)
    {
      for (j = 0; v6 != j; ++j)
      {
        v15 = v9[j];
        if (v15 < 0)
        {
          v16 = icu::UVector::elementAt(*(a1 + 8), j);
          if (sub_1953A2700(v16))
          {
            goto LABEL_16;
          }
        }

        else if (v12 == v15)
        {
          v16 = icu::UVector::elementAt(*(a1 + 8), j);
LABEL_16:
          icu::UVector::addElement(v35, v16, a3);
        }
      }
    }

    ++v12;
  }

  while (v12 != 256);
  free(v9);
  *(a1 + 1048) = DWORD2(v35[0]);
  if (*a3 > 0)
  {
    goto LABEL_36;
  }

  free(*(a1 + 16));
  if (!DWORD2(v35[0]))
  {
    *(a1 + 16) = 0;
    goto LABEL_36;
  }

  v17 = malloc_type_malloc(8 * SDWORD2(v35[0]), 0x2004093837F09uLL);
  *(a1 + 16) = v17;
  if (!v17)
  {
LABEL_35:
    *a3 = U_MEMORY_ALLOCATION_ERROR;
    goto LABEL_36;
  }

  if (SDWORD2(v35[0]) >= 1)
  {
    v18 = 0;
    do
    {
      *(*(a1 + 16) + 8 * v18) = icu::UVector::elementAt(v35, v18);
      ++v18;
    }

    while (v18 < SDWORD2(v35[0]));
  }

  v19 = 0;
  v20 = *v13;
  while (1)
  {
    LODWORD(v21) = v13[++v19];
    if (v20 < v21 - 1)
    {
      break;
    }

LABEL_33:
    v20 = v21;
    if (v19 == 256)
    {
      goto LABEL_36;
    }
  }

  v22 = v20;
  while (1)
  {
    v23 = v22++;
    if (v22 < v21)
    {
      break;
    }

LABEL_32:
    if (v22 >= v21 - 1)
    {
      goto LABEL_33;
    }
  }

  v24 = *(*(a1 + 16) + 8 * v23);
  v25 = v22;
  while (1)
  {
    v26 = *(*(a1 + 16) + 8 * v25);
    if ((*(*v24 + 24))(v24, v26))
    {
      break;
    }

    ++v25;
    v21 = v13[v19];
    if (v25 >= v21)
    {
      goto LABEL_32;
    }
  }

  *a3 = U_RULE_MASK_ERROR;
  v38 = 0u;
  v39 = 0u;
  v41 = 0;
  v40 = 0u;
  v37 = &unk_1F0935D00;
  LOWORD(v38) = 2;
  *a2 = -1;
  (*(*v24 + 32))(v24, &v37, 0);
  if ((v38 & 0x8000u) == 0)
  {
    v28 = v38 >> 5;
  }

  else
  {
    v28 = DWORD1(v38);
  }

  v29 = uprv_min(v28, 15);
  icu::UnicodeString::doExtract(&v37, 0, v29, (a2 + 1), 0);
  v34[1] = a2 + 1;
  *(a2 + v29 + 4) = 0;
  if (v38)
  {
    icu::UnicodeString::unBogus(&v37);
  }

  else
  {
    if ((v38 & 0x8000u) == 0)
    {
      v30 = v38 >> 5;
    }

    else
    {
      v30 = DWORD1(v38);
    }

    if (v30)
    {
      LOBYTE(v38) = v38 & 0x1E;
      LOWORD(v38) = v38;
    }
  }

  (*(*v26 + 32))(v26, &v37, 0);
  if ((v38 & 0x8000u) == 0)
  {
    v31 = v38 >> 5;
  }

  else
  {
    v31 = DWORD1(v38);
  }

  v32 = uprv_min(v31, 15);
  v33 = (a2 + 5);
  icu::UnicodeString::doExtract(&v37, 0, v32, v33, 0);
  v34[0] = v33;
  *(v33 + 2 * v32) = 0;
  icu::UnicodeString::~UnicodeString(v34, &v37);
LABEL_36:
  icu::UVector::~UVector(v35);
  v27 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1953A3994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a2 + 80))(a2, *(a3 + 8));
  v9 = *(a1 + 24 + 4 * v8);
  v10 = v8 + 1;
  if (v9 >= *(a1 + 24 + 4 * v10))
  {
LABEL_5:
    v12 = (*(*a2 + 80))(a2, *(a3 + 8)) >= 0x10000;
    result = 1;
    if (v12)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    *(a3 + 8) += v14;
  }

  else
  {
    while (1)
    {
      v11 = sub_1953A288C(*(*(a1 + 16) + 8 * v9), a2, a3, a4);
      if (v11 == 1)
      {
        return 0;
      }

      if (v11 == 2)
      {
        return 1;
      }

      if (++v9 >= *(a1 + 24 + 4 * v10))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

icu::UnicodeString *sub_1953A3AAC(uint64_t a1, icu::UnicodeString *this, uint64_t a3)
{
  v6 = *(*(a1 + 8) + 8);
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

  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if (i)
      {
        v12 = 10;
        icu::UnicodeString::doAppend(this, &v12, 0, 1);
      }

      v10 = icu::UVector::elementAt(*(a1 + 8), i);
      (*(*v10 + 32))(v10, this, a3);
    }
  }

  return this;
}

icu::UnicodeSet *sub_1953A3B9C(uint64_t a1, icu::UnicodeSet *this, int a3)
{
  icu::UnicodeSet::clear(this);
  v6 = *(*(a1 + 8) + 8);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = icu::UVector::elementAt(*(a1 + 8), i);
      if (a3)
      {
        sub_1953A307C(v8);
      }

      else
      {
        sub_1953A2FB8(v8, this);
      }
    }
  }

  return this;
}

icu::TimeZone *icu::RuleBasedTimeZone::RuleBasedTimeZone(icu::RuleBasedTimeZone *this, UChar **a2, icu::InitialTimeZoneRule *a3)
{
  result = icu::BasicTimeZone::BasicTimeZone(this, a2);
  *result = &unk_1F09418B0;
  *(result + 9) = a3;
  *(result + 10) = 0;
  *(result + 11) = 0;
  *(result + 12) = 0;
  *(result + 104) = 0;
  return result;
}

{
  result = icu::BasicTimeZone::BasicTimeZone(this, a2);
  *result = &unk_1F09418B0;
  *(result + 9) = a3;
  *(result + 10) = 0;
  *(result + 11) = 0;
  *(result + 12) = 0;
  *(result + 104) = 0;
  return result;
}

icu::RuleBasedTimeZone *icu::RuleBasedTimeZone::RuleBasedTimeZone(icu::RuleBasedTimeZone *this, const icu::RuleBasedTimeZone *a2)
{
  *icu::BasicTimeZone::BasicTimeZone(this, a2) = &unk_1F09418B0;
  v4 = (*(**(a2 + 9) + 24))(*(a2 + 9));
  *(this + 9) = v4;
  *(this + 12) = 0;
  *(this + 104) = 0;
  v5 = icu::RuleBasedTimeZone::copyRules(v4, *(a2 + 10));
  *(this + 10) = v5;
  *(this + 11) = icu::RuleBasedTimeZone::copyRules(v5, *(a2 + 11));
  if (*(a2 + 104))
  {
    v7 = U_ZERO_ERROR;
    icu::RuleBasedTimeZone::complete(this, &v7);
  }

  return this;
}

uint64_t icu::RuleBasedTimeZone::copyRules(icu::RuleBasedTimeZone *this, icu::UVector *a2)
{
  if (a2)
  {
    v4 = U_ZERO_ERROR;
    v2 = *(a2 + 2);
    operator new();
  }

  return 0;
}

uint64_t icu::RuleBasedTimeZone::complete(uint64_t this, UErrorCode *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    goto LABEL_67;
  }

  v2 = this;
  if (*(this + 104))
  {
    goto LABEL_67;
  }

  v3 = a2;
  this = *(this + 88);
  if (this)
  {
    if (*(this + 8) != 2)
    {
      *a2 = U_INVALID_STATE_ERROR;
      goto LABEL_67;
    }

    v5 = (v2 + 80);
    v4 = *(v2 + 80);
    if (!v4)
    {
      v6 = *(v2 + 72);
      goto LABEL_54;
    }
  }

  else
  {
    v5 = (v2 + 80);
    v4 = *(v2 + 80);
    if (!v4)
    {
LABEL_66:
      *(v2 + 104) = 1;
      goto LABEL_67;
    }
  }

  v6 = *(v2 + 72);
  v7 = *(v4 + 8);
  if (v7 < 1)
  {
    goto LABEL_53;
  }

  v8 = malloc_type_malloc(*(v4 + 8), 0x100004077774924uLL);
  v9 = v8;
  if (!v8)
  {
    *v3 = U_MEMORY_ALLOCATION_ERROR;
    free(0);
    goto LABEL_63;
  }

  bzero(v8, v7);
  v38 = v3;
  RawOffset = icu::TimeZoneRule::getRawOffset(v6);
  DSTSavings = icu::TimeZoneRule::getDSTSavings(v6);
  v50 = 0;
  v49 = 0u;
  v48 = 0u;
  v47 = 0u;
  v46 = &unk_1F0935D00;
  LOWORD(v47) = 2;
  v45 = 0;
  v44 = 0u;
  v43 = 0u;
  v42 = 0u;
  v40 = 0.0;
  v41 = &unk_1F0935D00;
  LOWORD(v42) = 2;
  icu::TimeZoneRule::getName(v6, &v46);
  v12 = 0;
  v39 = 0;
  v13 = 1.83882169e17;
  do
  {
    if (v9[v12])
    {
      goto LABEL_34;
    }

    v14 = icu::UVector::elementAt(*v5, v12);
    if (!(*(*v14 + 9))(v14, RawOffset, DSTSavings, 0, &v40, -1.84303903e17))
    {
      v9[v12] = 1;
      goto LABEL_34;
    }

    icu::TimeZoneRule::getName(v14, &v41);
    if ((*(*v14 + 4))(v14, v6))
    {
      goto LABEL_34;
    }

    if (v42)
    {
      if (v47)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((v42 & 0x8000u) == 0)
      {
        v15 = v42 >> 5;
      }

      else
      {
        v15 = DWORD1(v42);
      }

      if ((v47 & 0x8000u) == 0)
      {
        v16 = v47 >> 5;
      }

      else
      {
        v16 = DWORD1(v47);
      }

      if ((v47 & 1) == 0 && v15 == v16)
      {
        v17 = (v47 & 2) != 0 ? (&v47 + 2) : v48;
        if (icu::UnicodeString::doEquals(&v41, v17, v15))
        {
LABEL_30:
          v18 = icu::TimeZoneRule::getRawOffset(v14);
          if (v18 == icu::TimeZoneRule::getRawOffset(v6))
          {
            v19 = icu::TimeZoneRule::getDSTSavings(v14);
            if (v19 == icu::TimeZoneRule::getDSTSavings(v6))
            {
              goto LABEL_34;
            }
          }
        }
      }
    }

    if (v40 < v13)
    {
      v39 = v14;
      v13 = v40;
    }

LABEL_34:
    ++v12;
  }

  while (v7 != v12);
  v20 = v7;
  v21 = v9;
  v3 = v38;
  if (!v39)
  {
    while (1)
    {
      v22 = *v21++;
      if ((v22 & 1) == 0)
      {
        break;
      }

      if (!--v20)
      {
        goto LABEL_52;
      }
    }
  }

  if (*(v2 + 88))
  {
    v23 = 0;
    v24 = 1;
    do
    {
      v25 = v24;
      v26 = icu::UVector::elementAt(*(v2 + 88), v23);
      if (((*(*v26 + 32))(v26, v6) & 1) == 0)
      {
        v27 = icu::UVector::elementAt(*(v2 + 88), v23);
        if ((*(*v27 + 72))(v27, RawOffset, DSTSavings, 0, &v40, -1.84303903e17))
        {
          if (v40 < v13)
          {
            v39 = v27;
            v13 = v40;
          }
        }
      }

      v24 = 0;
      v23 = 1;
    }

    while ((v25 & 1) != 0);
  }

  v20 = v39;
  if (v39)
  {
    if (!*(v2 + 96))
    {
      operator new();
    }

    operator new();
  }

LABEL_52:
  icu::UnicodeString::~UnicodeString(v20, &v41);
  icu::UnicodeString::~UnicodeString(v28, &v46);
  free(v9);
  this = *(v2 + 88);
LABEL_53:
  if (!this)
  {
    goto LABEL_66;
  }

LABEL_54:
  if (!*(v2 + 96))
  {
    operator new();
  }

  v29 = icu::UVector::elementAt(this, 0);
  v30 = icu::UVector::elementAt(*(v2 + 88), 1u);
  v46 = 0;
  v41 = 0;
  v31 = icu::TimeZoneRule::getRawOffset(v6);
  v32 = icu::TimeZoneRule::getDSTSavings(v6);
  LODWORD(v31) = (*(*v29 + 72))(v29, v31, v32, 0, &v46, -1.84303903e17);
  v33 = icu::TimeZoneRule::getRawOffset(v6);
  v34 = icu::TimeZoneRule::getDSTSavings(v6);
  v35 = (*(*v30 + 72))(v30, v33, v34, 0, &v41, -1.84303903e17);
  if (v31)
  {
    v36 = v35 == 0;
  }

  else
  {
    v36 = 1;
  }

  if (!v36)
  {
    operator new();
  }

  *v3 = U_INVALID_STATE_ERROR;
LABEL_63:
  this = *(v2 + 96);
  if (this)
  {
    this = (*(*this + 8))(this);
  }

  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
LABEL_67:
  v37 = *MEMORY[0x1E69E9840];
  return this;
}

void icu::RuleBasedTimeZone::~RuleBasedTimeZone(icu::RuleBasedTimeZone *this)
{
  *this = &unk_1F09418B0;
  v2 = *(this + 12);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 12) = 0;
  icu::RuleBasedTimeZone::deleteRules(this);

  icu::BasicTimeZone::~BasicTimeZone(this);
}

{
  icu::RuleBasedTimeZone::~RuleBasedTimeZone(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::RuleBasedTimeZone::deleteTransitions(icu::RuleBasedTimeZone *this)
{
  result = *(this + 12);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 12) = 0;
  return result;
}

uint64_t icu::RuleBasedTimeZone::deleteRules(icu::RuleBasedTimeZone *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 9) = 0;
  v3 = *(this + 10);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(this + 10) = 0;
  }

  result = *(this + 11);
  if (result)
  {
    result = (*(*result + 8))(result);
    *(this + 11) = 0;
  }

  return result;
}

uint64_t icu::RuleBasedTimeZone::operator=(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 168))(a1))
  {
    icu::TimeZone::operator=(a1, a2);
    icu::RuleBasedTimeZone::deleteRules(a1);
    v4 = (*(**(a2 + 72) + 24))(*(a2 + 72));
    *(a1 + 72) = v4;
    v5 = icu::RuleBasedTimeZone::copyRules(v4, *(a2 + 80));
    *(a1 + 80) = v5;
    *(a1 + 88) = icu::RuleBasedTimeZone::copyRules(v5, *(a2 + 88));
    v6 = *(a1 + 96);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
  }

  return a1;
}

uint64_t icu::RuleBasedTimeZone::operator==(uint64_t a1, uint64_t a2)
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
    result = icu::TimeZone::operator==(a1, a2);
    if (result)
    {
      return ((*(**(a1 + 72) + 40))(*(a1 + 72), *(a2 + 72)) & 1) == 0 && sub_1953A4A8C(*(a1 + 80), *(a2 + 80)) && sub_1953A4A8C(*(a1 + 88), *(a2 + 88));
    }
  }

  return result;
}

BOOL sub_1953A4A8C(unint64_t this, icu::UVector *a2)
{
  if (!(this | a2))
  {
    return 1;
  }

  result = 0;
  if (this && a2)
  {
    v5 = *(this + 8);
    if (v5 == *(a2 + 2))
    {
      if (v5 < 1)
      {
        return 1;
      }

      else
      {
        v6 = icu::UVector::elementAt(this, 0);
        v7 = icu::UVector::elementAt(a2, 0);
        v8 = (*(*v6 + 40))(v6, v7);
        result = 0;
        if ((v8 & 1) == 0)
        {
          v9 = 1;
          do
          {
            v10 = v9;
            if (v5 == v9)
            {
              break;
            }

            v11 = icu::UVector::elementAt(this, v9);
            v12 = icu::UVector::elementAt(a2, v10);
            v13 = (*(*v11 + 40))(v11, v12);
            v9 = v10 + 1;
          }

          while (!v13);
          return v10 >= v5;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t icu::RuleBasedTimeZone::addTransitionRule(uint64_t this, char **lpsrc, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    if (!lpsrc)
    {
      return this;
    }

    goto LABEL_3;
  }

  v6 = this;
  {
    v9 = *(v6 + 80);
    if (!v9)
    {
      operator new();
    }

    goto LABEL_13;
  }

  v9 = *(v6 + 88);
  if (!v9)
  {
    operator new();
  }

  if (*(v9 + 8) < 2)
  {
LABEL_13:
    this = icu::UVector::adoptElement(v9, lpsrc, a3);
    *(v6 + 104) = 0;
    return this;
  }

  *a3 = U_INVALID_STATE_ERROR;
LABEL_3:
  v4 = *(*lpsrc + 1);

  return v4(lpsrc);
}

void icu::RuleBasedTimeZone::completeConst(icu::RuleBasedTimeZone *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    umtx_lock(&unk_1EAEC9F30);
    if (!*(this + 104))
    {
      icu::RuleBasedTimeZone::complete(this, a2);
    }

    umtx_unlock(&unk_1EAEC9F30);
  }
}

uint64_t sub_1953A4E78(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t icu::RuleBasedTimeZone::getOffset(icu::RuleBasedTimeZone *this, unsigned __int8 a2, int a3, unsigned int a4, int a5, unsigned __int8 a6, int a7, UErrorCode *a8)
{
  if (*a8 > 0)
  {
    return 0;
  }

  if (a4 >= 0xC)
  {
    *a8 = U_ILLEGAL_ARGUMENT_ERROR;
    return 0;
  }

  if ((a3 & 3) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 12;
    HIDWORD(v10) = -1030792151 * a3 + 85899344;
    LODWORD(v10) = HIDWORD(v10);
    if ((v10 >> 2) <= 0x28F5C28)
    {
      HIDWORD(v11) = -1030792151 * a3 + 85899344;
      LODWORD(v11) = HIDWORD(v11);
      if ((v11 >> 4) >= 0xA3D70B)
      {
        v9 = 0;
      }

      else
      {
        v9 = 12;
      }
    }
  }

  v12 = byte_19548DBC2[v9 + a4];
  return (*(*this + 40))(this);
}

uint64_t icu::RuleBasedTimeZone::getOffset(icu::RuleBasedTimeZone *this, int a2, int a3, int a4, int a5, unsigned __int8 a6, int a7, int a8, UErrorCode *a9)
{
  if (*a9 > 0)
  {
    return 0;
  }

  if (a2)
  {
    v12 = a3;
  }

  else
  {
    v12 = 1 - a3;
  }

  *v14 = 0;
  v13 = sub_195328D5C(v12, a4, a5);
  icu::RuleBasedTimeZone::getOffsetInternal(this, a7 + v13 * 86400000.0, 1, 3, 1, &v14[1], v14, a9);
  if (*a9 <= 0)
  {
    return (v14[0] + v14[1]);
  }

  else
  {
    return 0;
  }
}

void icu::RuleBasedTimeZone::getOffsetInternal(icu::RuleBasedTimeZone *this, double a2, int a3, int a4, char a5, int *a6, int *a7, UErrorCode *a8)
{
  *a6 = 0;
  *a7 = 0;
  if (*a8 <= 0)
  {
    if (!*(this + 104))
    {
      *a8 = U_INVALID_STATE_ERROR;
      return;
    }

    v11 = *(this + 12);
    if (v11 && (v16 = icu::UVector::elementAt(v11, 0), icu::RuleBasedTimeZone::getTransitionTime(this, v16, a3, a4, a5) <= a2))
    {
      v18 = *(this + 12);
      v19 = *(v18 + 2);
      v20 = v19 - 1;
      v21 = icu::UVector::elementAt(v18, v19 - 1);
      if (icu::RuleBasedTimeZone::getTransitionTime(this, v21, a3, a4, a5) >= a2)
      {
        if (v19 >= 1)
        {
          while (1)
          {
            v23 = icu::UVector::elementAt(*(this + 12), --v19);
            if (icu::RuleBasedTimeZone::getTransitionTime(this, v23, a3, a4, a5) <= a2)
            {
              break;
            }

            if (v19 <= 0)
            {
              v20 = -1;
              goto LABEL_16;
            }
          }

          v20 = v19;
        }
      }

      else if (*(this + 11))
      {
        RuleInFinal = icu::RuleBasedTimeZone::findRuleInFinal(this, a2, a3, a4, a5);
        if (RuleInFinal)
        {
LABEL_18:
          *a6 = icu::TimeZoneRule::getRawOffset(RuleInFinal);
          *a7 = icu::TimeZoneRule::getDSTSavings(RuleInFinal);
          return;
        }
      }

LABEL_16:
      v17 = (icu::UVector::elementAt(*(this + 12), v20) + 16);
    }

    else
    {
      v17 = (this + 72);
    }

    RuleInFinal = *v17;
    if (!*v17)
    {
      return;
    }

    goto LABEL_18;
  }
}

double icu::RuleBasedTimeZone::getTransitionTime(uint64_t a1, uint64_t a2, int a3, int a4, char a5)
{
  v5 = *a2;
  if (a3)
  {
    RawOffset = icu::TimeZoneRule::getRawOffset(*(a2 + 8));
    DSTSavings = icu::TimeZoneRule::getDSTSavings(*(a2 + 8));
    v11 = icu::TimeZoneRule::getRawOffset(*(a2 + 16));
    v12 = icu::TimeZoneRule::getDSTSavings(*(a2 + 16));
    return v5 + icu::RuleBasedTimeZone::getLocalDelta(v12, RawOffset, DSTSavings, v11, v12, a4, a5);
  }

  return v5;
}

icu::UVector *icu::RuleBasedTimeZone::findRuleInFinal(icu::RuleBasedTimeZone *this, double a2, int a3, int a4, char a5)
{
  result = *(this + 11);
  if (result)
  {
    v11 = icu::UVector::elementAt(result, 0);
    v12 = icu::UVector::elementAt(*(this + 11), 1u);
    if (v11)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }

    else
    {
      v14 = v12;
      v32 = 0.0;
      v33 = 0.0;
      v15 = a2;
      if (a3)
      {
        RawOffset = icu::TimeZoneRule::getRawOffset(v12);
        DSTSavings = icu::TimeZoneRule::getDSTSavings(v14);
        v18 = icu::TimeZoneRule::getRawOffset(v11);
        v19 = icu::TimeZoneRule::getDSTSavings(v11);
        v15 = a2 - icu::RuleBasedTimeZone::getLocalDelta(v19, RawOffset, DSTSavings, v18, v19, a4, a5);
      }

      v20 = icu::TimeZoneRule::getRawOffset(v14);
      v21 = icu::TimeZoneRule::getDSTSavings(v14);
      v22 = (*(*v11 + 80))(v11, v20, v21, 1, &v33, v15);
      if (a3)
      {
        v23 = icu::TimeZoneRule::getRawOffset(v11);
        v24 = icu::TimeZoneRule::getDSTSavings(v11);
        v25 = icu::TimeZoneRule::getRawOffset(v14);
        v26 = icu::TimeZoneRule::getDSTSavings(v14);
        a2 = a2 - icu::RuleBasedTimeZone::getLocalDelta(v26, v23, v24, v25, v26, a4, a5);
      }

      v27 = icu::TimeZoneRule::getRawOffset(v11);
      v28 = icu::TimeZoneRule::getDSTSavings(v11);
      v29 = (*(*v14 + 80))(v14, v27, v28, 1, &v32, a2);
      if (v22)
      {
        v30 = v29 == 0;
      }

      else
      {
        v30 = 1;
      }

      if (v30)
      {
        if (v29)
        {
          v31 = v14;
        }

        else
        {
          v31 = 0;
        }

        if (v22)
        {
          return v11;
        }

        else
        {
          return v31;
        }
      }

      else if (v33 <= v32)
      {
        return v14;
      }

      else
      {
        return v11;
      }
    }
  }

  return result;
}

uint64_t icu::RuleBasedTimeZone::getRawOffset(icu::RuleBasedTimeZone *this)
{
  v5 = 0;
  v4 = 0;
  UTCtime = uprv_getUTCtime();
  (*(*this + 48))(this, 0, &v5, &v4, &v5 + 4, UTCtime);
  return v5;
}

BOOL icu::RuleBasedTimeZone::useDaylightTime(icu::RuleBasedTimeZone *this)
{
  v9 = 0;
  UTCtime = uprv_getUTCtime();
  v7 = 0;
  v8 = 0;
  (*(*this + 48))(this, 0, &v8, &v7, &v9);
  result = 1;
  if (!v7)
  {
    v4 = 0;
    if (!icu::RuleBasedTimeZone::findNext(this, UTCtime, 0, &v6, &v5, &v4) || !icu::TimeZoneRule::getDSTSavings(v4))
    {
      return 0;
    }
  }

  return result;
}

uint64_t icu::RuleBasedTimeZone::findNext(icu::RuleBasedTimeZone *this, double a2, uint64_t a3, double *a4, icu::TimeZoneRule **a5, icu::TimeZoneRule **a6)
{
  result = *(this + 12);
  if (!result)
  {
    return result;
  }

  v13 = icu::UVector::elementAt(result, 0);
  v14 = *v13;
  if (*v13 > a2 || a3 && v14 == a2)
  {
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
  }

  else
  {
    v20 = *(this + 12);
    v21 = *(v20 + 2);
    v22 = icu::UVector::elementAt(v20, v21 - 1);
    v14 = *v22;
    if (!a3 || v14 != a2)
    {
      if (v14 <= a2)
      {
        result = *(this + 11);
        if (!result)
        {
          return result;
        }

        v16 = icu::UVector::elementAt(result, 0);
        v28 = icu::UVector::elementAt(*(this + 11), 1u);
        v36 = 0.0;
        v37 = 0.0;
        RawOffset = icu::TimeZoneRule::getRawOffset(v28);
        DSTSavings = icu::TimeZoneRule::getDSTSavings(v28);
        LOBYTE(RawOffset) = (*(*v16 + 72))(v16, RawOffset, DSTSavings, a3, &v37, a2);
        v31 = icu::TimeZoneRule::getRawOffset(v16);
        v32 = icu::TimeZoneRule::getDSTSavings(v16);
        v33 = (*(*v28 + 72))(v28, v31, v32, a3, &v36, a2);
        if (!(RawOffset | v33))
        {
          return 0;
        }

        v17 = 0;
        v34 = v33 != 0;
        v35 = v37 >= v36;
        if (v34 && v35)
        {
          v15 = v16;
        }

        else
        {
          v15 = v28;
        }

        if (v34 && v35)
        {
          v16 = v28;
          v14 = v36;
        }

        else
        {
          v14 = v37;
        }

        goto LABEL_7;
      }

      v23 = v21 - 3;
      if (v21 >= 3)
      {
        v24 = icu::UVector::elementAt(*(this + 12), v21 - 2);
        v25 = *v24 == a2 && a3 == 0;
        if (*v24 >= a2 && !v25)
        {
          do
          {
            v22 = v24;
            if ((v23 + 1) < 2)
            {
              break;
            }

            v24 = icu::UVector::elementAt(*(this + 12), v23--);
            v26 = *v24 == a2 && a3 == 0;
          }

          while (*v24 >= a2 && !v26);
        }

        v14 = *v22;
      }
    }

    v15 = *(v22 + 8);
    v16 = *(v22 + 16);
  }

  v17 = 1;
LABEL_7:
  v18 = icu::TimeZoneRule::getRawOffset(v15);
  if (v18 == icu::TimeZoneRule::getRawOffset(v16))
  {
    v19 = icu::TimeZoneRule::getDSTSavings(v15);
    if (v19 == icu::TimeZoneRule::getDSTSavings(v16))
    {
      if (v17)
      {
        return icu::RuleBasedTimeZone::findNext(this, v14, 0, a4, a5, a6);
      }

      return 0;
    }
  }

  *a4 = v14;
  *a5 = v15;
  result = 1;
  *a6 = v16;
  return result;
}

BOOL icu::RuleBasedTimeZone::inDaylightTime(icu::RuleBasedTimeZone *this, double a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v8 = v3;
  v9 = v4;
  v7 = 0;
  v6 = 0;
  (*(*this + 48))(this, 0, &v7, &v6, a3, a2);
  return v6 != 0;
}

uint64_t icu::RuleBasedTimeZone::hasSameRules(uint64_t a1, uint64_t a2)
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
    return ((*(**(a1 + 72) + 40))(*(a1 + 72), *(a2 + 72)) & 1) == 0 && sub_1953A4A8C(*(a1 + 80), *(a2 + 80)) && sub_1953A4A8C(*(a1 + 88), *(a2 + 88));
  }

  return result;
}

uint64_t icu::RuleBasedTimeZone::getNextTransition(icu::RuleBasedTimeZone *this, double a2, uint64_t a3, icu::TimeZoneTransition *a4)
{
  v12 = U_ZERO_ERROR;
  icu::RuleBasedTimeZone::completeConst(this, &v12);
  result = 0;
  if (v12 <= U_ZERO_ERROR)
  {
    v10 = 0;
    v11 = 0.0;
    v9 = 0;
    result = icu::RuleBasedTimeZone::findNext(this, a2, a3, &v11, &v10, &v9);
    if (result)
    {
      icu::TimeZoneTransition::setTime(a4, v11);
      icu::TimeZoneTransition::setFrom(a4, v10);
      icu::TimeZoneTransition::setTo(a4, v9);
      return 1;
    }
  }

  return result;
}

uint64_t icu::RuleBasedTimeZone::getPreviousTransition(icu::RuleBasedTimeZone *this, double a2, uint64_t a3, icu::TimeZoneTransition *a4)
{
  v12 = U_ZERO_ERROR;
  icu::RuleBasedTimeZone::completeConst(this, &v12);
  result = 0;
  if (v12 <= U_ZERO_ERROR)
  {
    v10 = 0;
    v11 = 0.0;
    v9 = 0;
    result = icu::RuleBasedTimeZone::findPrev(this, a2, a3, &v11, &v10, &v9);
    if (result)
    {
      icu::TimeZoneTransition::setTime(a4, v11);
      icu::TimeZoneTransition::setFrom(a4, v10);
      icu::TimeZoneTransition::setTo(a4, v9);
      return 1;
    }
  }

  return result;
}

uint64_t icu::RuleBasedTimeZone::findPrev(icu::RuleBasedTimeZone *this, double a2, uint64_t a3, double *a4, icu::TimeZoneRule **a5, icu::TimeZoneRule **a6)
{
  result = *(this + 12);
  if (!result)
  {
    return result;
  }

  v13 = icu::UVector::elementAt(result, 0);
  v14 = *v13;
  if (a3 && v14 == a2)
  {
    goto LABEL_4;
  }

  if (v14 >= a2)
  {
    return 0;
  }

  v19 = *(this + 12);
  v20 = *(v19 + 2);
  v13 = icu::UVector::elementAt(v19, v20 - 1);
  v14 = *v13;
  if (!a3 || v14 != a2)
  {
    if (v14 >= a2)
    {
      v30 = __OFSUB__(v20, 2);
      v31 = v20 - 2;
      if (v31 < 0 == v30)
      {
        do
        {
          v13 = icu::UVector::elementAt(*(this + 12), v31);
          v14 = *v13;
          v33 = *v13 == a2 && a3 != 0;
          v30 = __OFSUB__(v31--, 1);
          if (v31 < 0 != v30)
          {
            break;
          }
        }

        while (v14 >= a2 && !v33);
      }
    }

    else if (*(this + 11))
    {
      v21 = icu::UVector::elementAt(*(this + 11), 0);
      v22 = icu::UVector::elementAt(*(this + 11), 1u);
      v35 = 0.0;
      v36 = 0.0;
      RawOffset = icu::TimeZoneRule::getRawOffset(v22);
      DSTSavings = icu::TimeZoneRule::getDSTSavings(v22);
      LOBYTE(RawOffset) = (*(*v21 + 80))(v21, RawOffset, DSTSavings, a3, &v36, a2);
      v25 = icu::TimeZoneRule::getRawOffset(v21);
      v26 = icu::TimeZoneRule::getDSTSavings(v21);
      v27 = (*(*v22 + 80))(v22, v25, v26, a3, &v35, a2);
      if (RawOffset | v27)
      {
        v28 = v27 != 0;
        v29 = v36 <= v35;
        if (v28 && v29)
        {
          v16 = v22;
        }

        else
        {
          v16 = v21;
        }

        if (v28 && v29)
        {
          v15 = v21;
        }

        else
        {
          v15 = v22;
        }

        if (v28 && v29)
        {
          v14 = v35;
        }

        else
        {
          v14 = v36;
        }

        goto LABEL_5;
      }

      return 0;
    }
  }

LABEL_4:
  v15 = *(v13 + 8);
  v16 = *(v13 + 16);
LABEL_5:
  v17 = icu::TimeZoneRule::getRawOffset(v15);
  if (v17 == icu::TimeZoneRule::getRawOffset(v16))
  {
    v18 = icu::TimeZoneRule::getDSTSavings(v15);
    if (v18 == icu::TimeZoneRule::getDSTSavings(v16))
    {
      return icu::RuleBasedTimeZone::findPrev(this, v14, 0, a4, a5, a6);
    }
  }

  *a4 = v14;
  *a5 = v15;
  result = 1;
  *a6 = v16;
  return result;
}

uint64_t icu::RuleBasedTimeZone::countTransitionRules(icu::RuleBasedTimeZone *this, UErrorCode *a2)
{
  v3 = *(this + 10);
  if (v3)
  {
    result = *(v3 + 8);
  }

  else
  {
    result = 0;
  }

  v5 = *(this + 11);
  if (v5)
  {
    return (*(v5 + 8) + result);
  }

  return result;
}

uint64_t icu::RuleBasedTimeZone::getTimeZoneRules(uint64_t result, void *a2, uint64_t a3, int *a4, int *a5)
{
  if (*a5 <= 0)
  {
    v7 = result;
    *a2 = *(result + 72);
    v8 = *(result + 80);
    LODWORD(v9) = *a4;
    if (v8)
    {
      v10 = v9 < 1;
    }

    else
    {
      v10 = 1;
    }

    if (v10 || (v11 = *(v8 + 8), v11 < 1))
    {
      LODWORD(v12) = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = v12++;
        result = icu::UVector::elementAt(*(v7 + 80), v13);
        *(a3 + 8 * v13) = result;
        v9 = *a4;
      }

      while (v12 < v9 && v11 > v12);
    }

    v15 = *(v7 + 88);
    if (v15)
    {
      v16 = v12 < v9;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v17 = *(v15 + 8);
      if (v17 >= 1)
      {
        v18 = 0;
        v12 = v12;
        do
        {
          v19 = v12;
          v20 = v18 + 1;
          result = icu::UVector::elementAt(*(v7 + 88), v18);
          ++v12;
          *(a3 + 8 * v19) = result;
          v21 = *a4 > v12 && v20 < v17;
          v18 = v20;
        }

        while (v21);
      }
    }

    *a4 = v12;
  }

  return result;
}

uint64_t icu::RuleBasedTimeZone::getLocalDelta(icu::RuleBasedTimeZone *this, int a2, int a3, int a4, int a5, int a6, char a7)
{
  v7 = a3 != 0;
  v8 = a3 == 0;
  if (a5)
  {
    v7 = 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = a7 & 3;
  v10 = v9 == 1 && v7;
  v11 = v9 == 3 && v8;
  v12 = v9 == 1 && v8;
  v13 = v9 == 3 && v7;
  if ((a7 & 0xC) == 4)
  {
    v14 = a3 + a2;
  }

  else
  {
    v14 = a5 + a4;
  }

  if (v13)
  {
    v15 = a3 + a2;
  }

  else
  {
    v15 = v14;
  }

  if (v12)
  {
    v15 = a3 + a2;
  }

  if (v11)
  {
    v15 = a5 + a4;
  }

  if (v10)
  {
    v15 = a5 + a4;
  }

  v16 = a6 & 3;
  v17 = v16 == 1 && v7;
  v18 = v16 == 3 && v8;
  if (v16 != 1)
  {
    v8 = 0;
  }

  if (v16 != 3)
  {
    v7 = 0;
  }

  if ((~a6 & 0xC) != 0)
  {
    v19 = a5 + a4;
  }

  else
  {
    v19 = a3 + a2;
  }

  if (v7)
  {
    v20 = a5 + a4;
  }

  else
  {
    v20 = v19;
  }

  if (v8)
  {
    v20 = a5 + a4;
  }

  if (v18)
  {
    v20 = a3 + a2;
  }

  if (v17)
  {
    v20 = a3 + a2;
  }

  if (a5 + a4 >= a3 + a2)
  {
    return v20;
  }

  else
  {
    return v15;
  }
}

icu::RegexCompile *icu::RegexCompile::RegexCompile(icu::RegexCompile *this, icu::RegexPattern *a2, UErrorCode *a3)
{
  *this = &unk_1F0941988;
  *(this + 37) = &unk_1F0935D00;
  *(this + 152) = 2;
  icu::UVector32::UVector32((this + 368), a3);
  icu::UStack::UStack(this + 416, uprv_deleteUObject, 0, a3);
  icu::UStack::UStack((this + 456), a3);
  sub_1953AD024(a3);
  *(this + 1) = a3;
  *(this + 2) = a2;
  *(this + 4) = 0;
  *(this + 8) = -1;
  *(this + 3) = xmmword_195491CA0;
  *(this + 20) = 0;
  *(this + 71) = *(a2 + 6) | 0x80000000;
  *(this + 42) = 1;
  *(this + 50) = -1;
  *(this + 63) = 0;
  *(this + 124) = -1;
  if (*a3 <= 0)
  {
    v6 = *(a2 + 30);
    if (v6 >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      *a3 = v6;
    }
  }

  return this;
}

void icu::RegexCompile::~RegexCompile(icu::RegexCompile *this)
{
  *this = &unk_1F0941988;
  v2 = *(this + 63);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::UStack::~UStack((this + 456));
  icu::UStack::~UStack((this + 416));
  icu::UVector32::~UVector32(this + 46);
  icu::UnicodeString::~UnicodeString(v3, (this + 296));
}

{
  icu::RegexCompile::~RegexCompile(this);

  JUMPOUT(0x19A8B2600);
}

void icu::RegexCompile::compile(icu::RegexCompile *this, UText *a2, UParseError *a3, UErrorCode *status)
{
  *(this + 40) = 0;
  v4 = this + 80;
  *(this + 1) = status;
  *(this + 3) = a3;
  *(this + 70) = 0;
  if (*status <= 0)
  {
    v7 = utext_clone(*(*(this + 2) + 8), a2, 0, 1, status);
    v8 = *(this + 1);
    *(*(this + 2) + 8) = v7;
    if (*v8 <= 0)
    {
      *(this + 45) = utext_nativeLength(a2);
      if ((*(this + 284) & 0x10) != 0)
      {
        *(this + 40) = 1;
      }

      icu::RegexCompile::nextChar(this, this + 18);
      if (**(this + 1) <= 0)
      {
        LOWORD(v9) = 1;
        while (1)
        {
          for (i = &unk_195491CB0 + 8 * v9 + 7; ; i += 8)
          {
            v11 = *(i - 3);
            if (v11 <= 0x7E && !*(this + 76) && *(this + 18) == v11)
            {
              break;
            }

            switch(v11)
            {
              case 0xFDu:
                if (*(this + 18) == -1)
                {
                  goto LABEL_23;
                }

                break;
              case 0xFEu:
                if (*(this + 76))
                {
                  goto LABEL_23;
                }

                break;
              case 0xFFu:
                goto LABEL_23;
              default:
                if (v11 <= -17 && !*(this + 76))
                {
                  v12 = *(this + 18);
                  if (v12 != -1)
                  {
                    if (icu::UnicodeSet::contains((qword_1ED443488 + 200 * (v11 & 0x7F) + 3024), v12))
                    {
                      goto LABEL_23;
                    }
                  }
                }

                break;
            }
          }

LABEL_23:
          if (!icu::RegexCompile::doParseActions(this, *(i - 7)))
          {
            break;
          }

          v13 = *(i - 1);
          if (*(i - 1))
          {
            v14 = *(this + 70);
            v15 = v14 + 1;
            *(this + 70) = v14 + 1;
            if (v14 >= 99)
            {
              icu::RegexCompile::error(this, 66304);
              v15 = *(this + 70) - 1;
              *(this + 70) = v15;
            }

            *&v4[2 * v15] = v13;
          }

          if (*i)
          {
            icu::RegexCompile::nextChar(this, this + 18);
          }

          v9 = *(i - 2);
          if (v9 == 255)
          {
            v16 = *(this + 70);
            LOWORD(v9) = *&v4[2 * v16];
            *(this + 70) = v16 - 1;
            if (v16 <= 0)
            {
              *(this + 70) = v16;
              icu::RegexCompile::error(this, 66310);
            }
          }

          if (**(this + 1) >= 1)
          {
            return;
          }
        }

        if (**(this + 1) <= 0)
        {
          icu::RegexCompile::allocateStackData(this, 2);
          icu::RegexCompile::stripNOPs(this);
          *(*(this + 2) + 124) = icu::RegexCompile::minMatchLength(this, 3u, *(*(*(this + 2) + 32) + 8) - 1);
          icu::RegexCompile::matchStartType(this);
          *(*(*(this + 2) + 104) + 8);
          operator new[]();
        }
      }
    }
  }
}

void icu::RegexCompile::nextChar(uint64_t a1, UChar32 *a2)
{
  while (1)
  {
    v4 = *(*(a1 + 16) + 8);
    v5 = *(v4 + 40);
    if (v5 <= *(v4 + 28))
    {
      v6 = *(v4 + 32) + v5;
    }

    else
    {
      v6 = (*(*(v4 + 56) + 64))();
    }

    *(a1 + 32) = v6;
    CharLL = icu::RegexCompile::nextCharLL(a1);
    *a2 = CharLL;
    *(a2 + 4) = 0;
    if (*(a1 + 40))
    {
      *(a2 + 4) = 1;
      if (CharLL == 92 && ((v8 = *(a1 + 68), v8 == -1) ? (v8 = icu::RegexCompile::nextCharLL(a1), *(a1 + 68) = v8, LODWORD(CharLL) = *a2) : (LODWORD(CharLL) = 92), v8 == 69))
      {
        v17 = 0;
        if ((*(a1 + 284) & 0x10) != 0 && CharLL != -1)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (CharLL != -1)
        {
          goto LABEL_86;
        }

        v17 = 0;
      }

      goto LABEL_49;
    }

    if (*(a1 + 41))
    {
      *(a1 + 41) = 0;
      goto LABEL_86;
    }

    if ((*(a1 + 284) & 4) != 0)
    {
      while (1)
      {
        if (CharLL == 35)
        {
          if (*(a1 + 42))
          {
            do
            {
              CharLL = icu::RegexCompile::nextCharLL(a1);
              *a2 = CharLL;
              v10 = (CharLL + 1) <= 0xE && ((1 << (CharLL + 1)) & 0x4801) != 0 || CharLL == 8232;
            }

            while (!v10 && CharLL != 133);
          }

          else
          {
            CharLL = 35;
          }
        }

        else if (CharLL == -1)
        {
          goto LABEL_86;
        }

        if (!icu::PatternProps::isWhiteSpace(CharLL))
        {
          break;
        }

        CharLL = icu::RegexCompile::nextCharLL(a1);
        *a2 = CharLL;
      }

      LODWORD(CharLL) = *a2;
    }

    if (CharLL != 92)
    {
      goto LABEL_86;
    }

    v11 = *(*(a1 + 16) + 8);
    v12 = *(v11 + 40);
    if (v12 <= *(v11 + 28))
    {
      v13 = *(v11 + 32) + v12;
    }

    else
    {
      v13 = (*(*(v11 + 56) + 64))();
    }

    v14 = qword_1ED443488;
    v15 = *(a1 + 68);
    if (v15 == -1)
    {
      v15 = icu::RegexCompile::nextCharLL(a1);
      *(a1 + 68) = v15;
    }

    if (icu::UnicodeSet::contains((v14 + 3624), v15))
    {
      icu::RegexCompile::nextCharLL(a1);
      *(a2 + 4) = 1;
      v18 = *(*(a1 + 16) + 8);
      chunkNativeStart = v18->chunkNativeStart;
      if (!chunkNativeStart && (v20 = *(a1 + 360), v20 == v18->chunkNativeLimit) && v20 == v18->nativeIndexingLimit)
      {
        offset[0] = v13;
        *a2 = u_unescapeAt(sub_1953AD304, offset, v20, v18->chunkContents);
        v21 = offset[0];
        if (v13 == offset[0])
        {
          icu::RegexCompile::error(a1, 66307);
          v21 = offset[0];
        }

        *(a1 + 56) += v21 - v13;
        v22 = *(*(a1 + 16) + 8);
        v23 = v21 - v22->chunkNativeStart;
        if (v23 < 0 || v23 >= v22->nativeIndexingLimit || v22->chunkContents[v23] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v22, v21);
        }

        else
        {
          v22->chunkOffset = v23;
        }
      }

      else
      {
        v33 = 0;
        *offset = v18;
        v32 = 0xFFFFFFFFLL;
        v24 = v13 - chunkNativeStart;
        if (v24 < 0 || v24 >= v18->nativeIndexingLimit || v18->chunkContents[v24] >> 10 > 0x36u)
        {
          utext_setNativeIndex(v18, v13);
        }

        else
        {
          v18->chunkOffset = v24;
        }

        *a2 = u_unescapeAt(sub_1953AD1AC, &v33, 0x7FFFFFFF, offset);
        if (v33)
        {
          if (v32 == v33)
          {
            v25 = *(*(a1 + 16) + 8);
            chunkOffset = v25->chunkOffset;
            if (chunkOffset < 1 || v25->chunkContents[chunkOffset - 1] >> 11 > 0x1Au)
            {
              utext_previous32(v25);
            }

            else
            {
              v25->chunkOffset = chunkOffset - 1;
            }
          }

          else if (v32 != v33 - 1)
          {
            utext_moveIndex32(*(*(a1 + 16) + 8), v33 + ~v32);
          }
        }

        else
        {
          icu::RegexCompile::error(a1, 66307);
        }

        *(a1 + 56) += v33;
      }

      goto LABEL_86;
    }

    v16 = *(a1 + 68);
    if (v16 == -1)
    {
      v16 = icu::RegexCompile::nextCharLL(a1);
      *(a1 + 68) = v16;
    }

    if (v16 != -1)
    {
      break;
    }

    v16 = icu::RegexCompile::nextCharLL(a1);
    *(a1 + 68) = v16;
LABEL_40:
    v17 = 1;
    if (v16 != 81)
    {
      *(a1 + 41) = 1;
      goto LABEL_86;
    }

LABEL_49:
    *(a1 + 40) = v17;
    icu::RegexCompile::nextCharLL(a1);
  }

  if (v16 != 48)
  {
    goto LABEL_40;
  }

  *a2 = 0;
  icu::RegexCompile::nextCharLL(a1);
  v27 = 0;
  while (1)
  {
    v28 = *(a1 + 68);
    if (v28 == -1)
    {
      v28 = icu::RegexCompile::nextCharLL(a1);
      *(a1 + 68) = v28;
    }

    if ((v28 - 56) <= 0xFFFFFFF7)
    {
      break;
    }

    v29 = *a2;
    v30 = v28 & 7 | (8 * *a2);
    *a2 = v30;
    if (v30 > 255)
    {
      *a2 = v29 & 0x1FFFFFFF;
    }

    else
    {
      icu::RegexCompile::nextCharLL(a1);
    }

    if (--v27 == -3)
    {
      goto LABEL_83;
    }
  }

  if (!v27)
  {
    icu::RegexCompile::error(a1, 66307);
  }

LABEL_83:
  *(a2 + 4) = 1;
LABEL_86:
  *(a1 + 42) = 1;
}

uint64_t icu::RegexCompile::doParseActions(icu::RegexCompile *this, int a2)
{
  v2 = this;
  v3 = 1;
  switch(a2)
  {
    case 0:
      v13 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      v186 = 0;
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      icu::UnicodeSet::UnicodeSet(&v174);
      icu::UnicodeSet::applyIntPropertyValue(&v174, 0x2000, 0x200u, *(v2 + 1));
      goto LABEL_120;
    case 1:
      icu::RegexCompile::fixLiterals(this, 0);
      v41 = **(v2 + 1) <= 0;
      v23 = 939524096;
      goto LABEL_310;
    case 2:
      icu::RegexCompile::fixLiterals(this, 0);
      v41 = **(v2 + 1) <= 0;
      v23 = 939524097;
      goto LABEL_310;
    case 3:
      if ((*(this + 285) & 2) != 0 && (*(this + 18) & 0xFFFFFFDF) - 65 <= 0x19)
      {
        icu::RegexCompile::error(this, 66307);
      }

      goto LABEL_148;
    case 4:
      icu::RegexCompile::fixLiterals(this, 0);
      Data = icu::RegexCompile::allocateData(v2, 4);
      v83 = icu::RegexCompile::buildOp(v2, 0x25u, Data);
      icu::RegexCompile::appendOp(v2, v83);
      if (**(v2 + 1) <= 0)
      {
        v84 = 100663296;
      }

      else
      {
        v84 = 0;
      }

      icu::RegexCompile::appendOp(v2, v84);
      if (**(v2 + 1) <= 0)
      {
        v85 = 117440512;
      }

      else
      {
        v85 = 0;
      }

      icu::RegexCompile::appendOp(v2, v85);
      sub_1953AA398((v2 + 368), *(v2 + 71), *(v2 + 1));
      v29 = *(v2 + 1);
      v30 = (v2 + 368);
      v31 = 4294967291;
      goto LABEL_202;
    case 5:
      v68 = *(*(this + 2) + 192);
      if (v68 && (v69 = uhash_geti(v68, *(v2 + 63))) != 0)
      {
        v70 = v69;
        icu::RegexCompile::fixLiterals(v2, 0);
        if ((*(v2 + 284) & 2) != 0)
        {
          v71 = 41;
        }

        else
        {
          v71 = 34;
        }

        v170 = icu::RegexCompile::buildOp(v2, v71, v70);
        icu::RegexCompile::appendOp(v2, v170);
      }

      else
      {
        icu::RegexCompile::error(v2, 66325);
      }

      v171 = *(v2 + 63);
      if (v171)
      {
        (*(*v171 + 8))(v171);
      }

      *(v2 + 63) = 0;
      goto LABEL_335;
    case 6:
      if (**(this + 1) <= 0)
      {
        v89 = 100663298;
      }

      else
      {
        v89 = 0;
      }

      icu::RegexCompile::appendOp(this, v89);
      if (**(v2 + 1) <= 0)
      {
        v90 = 218103811;
      }

      else
      {
        v90 = 0;
      }

      icu::RegexCompile::appendOp(v2, v90);
      if (**(v2 + 1) <= 0)
      {
        v91 = 234881024;
      }

      else
      {
        v91 = 0;
      }

      icu::RegexCompile::appendOp(v2, v91);
      icu::RegexCompile::doParseActions(v2, 31);
      goto LABEL_335;
    case 7:
      icu::RegexCompile::fixLiterals(this, 0);
      v7 = **(v2 + 1);
      v8 = 822083585;
      goto LABEL_167;
    case 8:
      icu::RegexCompile::fixLiterals(this, 0);
      v41 = **(v2 + 1) <= 0;
      v23 = 369098753;
      goto LABEL_310;
    case 9:
      v108 = icu::RegexCompile::blockTopLoc(this, 1);
      v109 = icu::RegexCompile::buildOp(v2, 0xDu, *(*(*(v2 + 2) + 32) + 8));
      icu::UVector64::setElementAt(*(*(v2 + 2) + 32), v109, v108);
      goto LABEL_215;
    case 10:
      goto LABEL_335;
    case 11:
      icu::RegexCompile::fixLiterals(this, 0);
      v41 = **(v2 + 1) <= 0;
      v23 = 318767104;
      goto LABEL_310;
    case 12:
LABEL_148:
      icu::RegexCompile::setEval(v2, 262150);
      v88 = icu::UVector::elementAt((v2 + 416), *(v2 + 106) - 1);
      icu::UnicodeSet::add(v88, *(v2 + 18));
      *(v2 + 124) = *(v2 + 18);
      goto LABEL_335;
    case 13:
    case 30:
      v5 = *(this + 63);
      v6 = *(v2 + 18);
      goto LABEL_48;
    case 14:
      icu::RegexCompile::fixLiterals(this, 0);
      v41 = **(v2 + 1) <= 0;
      v23 = 285212672;
      goto LABEL_310;
    case 15:
      icu::RegexCompile::fixLiterals(this, 0);
      v41 = **(v2 + 1) <= 0;
      v23 = 956301312;
      goto LABEL_310;
    case 16:
      icu::RegexCompile::fixLiterals(this, 0);
      operator new();
    case 17:
      v107 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      icu::UnicodeSet::add(v107, 0xAu, 0xDu);
      icu::UnicodeSet::add(v107, 0x85u);
      v102 = v107;
      v103 = 8232;
      v104 = 8233;
      goto LABEL_171;
    case 18:
      v64 = icu::RegexCompile::blockTopLoc(this, 1);
      v10 = icu::RegexCompile::allocateData(v2, 1);
      v65 = icu::RegexCompile::buildOp(v2, 0x20u, v10);
      icu::UVector64::setElementAt(*(*(v2 + 2) + 32), v65, v64);
      v66 = icu::RegexCompile::buildOp(v2, 6u, *(*(*(v2 + 2) + 32) + 8) + 2);
      icu::RegexCompile::appendOp(v2, v66);
      v67 = icu::RegexCompile::buildOp(v2, 0xDu, v64 + 1);
      icu::RegexCompile::appendOp(v2, v67);
      goto LABEL_99;
    case 19:
    case 35:
      v4 = 66309;
      goto LABEL_193;
    case 20:
      icu::RegexCompile::fixLiterals(this, 0);
      v111 = **(v2 + 1);
      goto LABEL_178;
    case 21:
      v43 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      v44 = 38;
      goto LABEL_188;
    case 22:
      v63 = 262151;
      goto LABEL_237;
    case 23:
      v4 = 66312;
      goto LABEL_193;
    case 24:
      if (icu::UVector::elementAti((this + 456), *(this + 116) - 1) == 131081)
      {
        icu::UStack::popi((v2 + 456));
        icu::UVector::addElement((v2 + 456), 131075, *(v2 + 1));
        v146 = *(v2 + 1);
        v147 = (v2 + 456);
        v148 = 131081;
      }

      else
      {
        v146 = *(v2 + 1);
        v148 = 131075;
        v147 = (v2 + 456);
      }

      icu::UVector::addElement(v147, v148, v146);
      goto LABEL_335;
    case 25:
      *(this + 51) = 0xFFFFFFFF00000000;
      goto LABEL_335;
    case 26:
      v14 = 196613;
      goto LABEL_144;
    case 27:
      v92 = icu::RegexCompile::blockTopLoc(this, 0);
      icu::RegexCompile::compileInterval(v2, 0x19u, 0x1Cu);
      icu::RegexCompile::insertOp(v2, v92);
      v93 = 1;
      i = icu::RegexCompile::allocateData(v2, 1);
      v95 = icu::RegexCompile::buildOp(v2, 0x20u, i);
      icu::UVector64::setElementAt(*(*(v2 + 2) + 32), v95, v92);
      v96 = *(*(v2 + 2) + 32);
      v97 = *(v96 + 8);
      v52 = __OFSUB__(v97, 1);
      v98 = v97 - 1;
      if (v98 < 0 == v52)
      {
        *(v96 + 8) = v98;
        v93 = (*(*(v96 + 24) + 8 * v98) + 1);
      }

      sub_1953AB504(v96, v93, *(v2 + 1));
      v99 = v2;
      v100 = 33;
      goto LABEL_266;
    case 28:
    case 37:
    case 81:
      v4 = 66305;
      goto LABEL_193;
    case 29:
      icu::RegexCompile::fixLiterals(this, 0);
      v41 = **(v2 + 1) <= 0;
      v23 = 822083585;
      goto LABEL_310;
    case 31:
      icu::RegexCompile::fixLiterals(this, 0);
      if (**(v2 + 1) <= 0)
      {
        v60 = 117440512;
      }

      else
      {
        v60 = 0;
      }

      icu::RegexCompile::appendOp(v2, v60);
      if (**(v2 + 1) <= 0)
      {
        v61 = 117440512;
      }

      else
      {
        v61 = 0;
      }

      icu::RegexCompile::appendOp(v2, v61);
      sub_1953AA398((v2 + 368), *(v2 + 71), *(v2 + 1));
      v29 = *(v2 + 1);
      v30 = (v2 + 368);
      v31 = 0xFFFFFFFFLL;
      goto LABEL_202;
    case 32:
      icu::RegexCompile::fixLiterals(this, 0);
      goto LABEL_79;
    case 33:
      v56 = icu::RegexCompile::scanNamedChar(this);
      icu::RegexCompile::setEval(v2, 262150);
      v62 = icu::UVector::elementAt((v2 + 416), *(v2 + 106) - 1);
      icu::UnicodeSet::add(v62, v56);
      goto LABEL_88;
    case 34:
      v13 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      v186 = 0;
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      icu::UnicodeSet::UnicodeSet(&v174);
      icu::UnicodeSet::add(&v174, 0xAu, 0xDu);
      icu::UnicodeSet::add(&v174, 0x85u);
      icu::UnicodeSet::add(&v174, 0x2028u, 0x2029u);
      goto LABEL_120;
    case 36:
      v4 = 66307;
      goto LABEL_194;
    case 38:
      v32 = icu::RegexCompile::blockTopLoc(this, 1);
      icu::RegexCompile::insertOp(v2, v32);
      v33 = icu::RegexCompile::allocateData(v2, 1);
      v34 = icu::RegexCompile::buildOp(v2, 0x20u, v33);
      icu::UVector64::setElementAt(*(*(v2 + 2) + 32), v34, v32);
      v35 = icu::RegexCompile::buildOp(v2, 6u, *(*(*(v2 + 2) + 32) + 8) + 1);
      icu::UVector64::setElementAt(*(*(v2 + 2) + 32), v35, v32 + 1);
      v36 = icu::RegexCompile::buildOp(v2, 0xDu, v32 + 1);
      icu::RegexCompile::appendOp(v2, v36);
      v37 = v2;
      v38 = 33;
      goto LABEL_212;
    case 39:
      v43 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      v44 = 45;
LABEL_188:
      icu::UnicodeSet::add(v43, v44);
      goto LABEL_335;
    case 40:
      if ((*(this + 285) & 2) != 0 && (*(this + 18) & 0xFFFFFFDF) - 65 <= 0x19)
      {
        icu::RegexCompile::error(this, 66307);
      }

      goto LABEL_46;
    case 41:
      v80 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      v81 = (qword_1ED443488 + 208);
      goto LABEL_186;
    case 42:
      if ((*(this + 103) & 0x80000000) != 0)
      {
        *(this + 103) = 0;
      }

      v115 = 10 * *(this + 103) + u_charDigitValue(*(this + 18));
      if (v115 >= 0x80000000)
      {
        goto LABEL_192;
      }

      *(v2 + 103) = v115;
      goto LABEL_335;
    case 43:
      icu::RegexCompile::fixLiterals(this, 0);
      v41 = **(v2 + 1) <= 0;
      v23 = 973078528;
      goto LABEL_310;
    case 44:
      v13 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      v186 = 0;
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      icu::UnicodeSet::UnicodeSet(&v174);
      v21 = (qword_1ED443488 + 808);
      goto LABEL_109;
    case 45:
      v4 = 66319;
      goto LABEL_193;
    case 46:
      v131 = icu::RegexCompile::scanProp(this);
      if (!v131)
      {
        goto LABEL_335;
      }

      goto LABEL_239;
    case 47:
      icu::RegexCompile::fixLiterals(this, 0);
      v22 = **(v2 + 1);
      if ((*(v2 + 71) & 0x100) != 0)
      {
        v23 = 889192449;
      }

      else
      {
        v23 = 268435457;
      }

      goto LABEL_93;
    case 48:
      icu::RegexCompile::setEval(this, 65538);
      icu::UStack::popi((v2 + 456));
      goto LABEL_335;
    case 49:
      v101 = *(this + 124);
      if (v101 == -1 || v101 > *(this + 18))
      {
        icu::RegexCompile::error(this, 66320);
      }

      v102 = icu::UVector::elementAt((v2 + 416), *(v2 + 106) - 1);
      v103 = *(v2 + 124);
      v104 = *(v2 + 18);
LABEL_171:
      icu::UnicodeSet::add(v102, v103, v104);
      goto LABEL_335;
    case 50:
      icu::RegexCompile::fixLiterals(this, 0);
      if (**(v2 + 1) <= 0)
      {
        v86 = 117440512;
      }

      else
      {
        v86 = 0;
      }

      icu::RegexCompile::appendOp(v2, v86);
      if (**(v2 + 1) <= 0)
      {
        v87 = 117440512;
      }

      else
      {
        v87 = 0;
      }

      icu::RegexCompile::appendOp(v2, v87);
      sub_1953AA398((v2 + 368), *(v2 + 71), *(v2 + 1));
      sub_1953AA398((v2 + 368), 4294967290, *(v2 + 1));
      sub_1953AA398((v2 + 368), (*(*(*(v2 + 2) + 32) + 8) - 2), *(v2 + 1));
      sub_1953AA398((v2 + 368), (*(*(*(v2 + 2) + 32) + 8) - 1), *(v2 + 1));
      goto LABEL_142;
    case 51:
      v123 = icu::RegexCompile::blockTopLoc(this, 0);
      v33 = v123;
      v124 = *(*(v2 + 2) + 32);
      v125 = *(v124 + 8) - 1;
      if ((v123 & 0x80000000) != 0 || v123 != v125)
      {
        goto LABEL_210;
      }

      v126 = *(*(v124 + 24) + 8 * v123);
      v127 = BYTE3(v126);
      if (BYTE3(v126) > 0x14u)
      {
        if (BYTE3(v126) != 21 && BYTE3(v126) != 27)
        {
LABEL_210:
          if (icu::RegexCompile::minMatchLength(v2, v123, v125))
          {
            v37 = v2;
            v38 = 15;
LABEL_212:
            v42 = v33;
          }

          else
          {
            icu::RegexCompile::insertOp(v2, v33);
            StackData = icu::RegexCompile::allocateStackData(v2, 1);
            v169 = icu::RegexCompile::buildOp(v2, 0x23u, StackData);
            icu::UVector64::setElementAt(*(*(v2 + 2) + 32), v169, v33);
            v42 = v33 + 1;
            v37 = v2;
            v38 = 18;
          }

          goto LABEL_332;
        }
      }

      else
      {
        if (BYTE3(v126) == 11)
        {
          v163 = icu::RegexCompile::buildOp(v2, 0x32u, v126 & 0xFFFFFF);
LABEL_328:
          icu::RegexCompile::appendOp(v2, v163);
          goto LABEL_331;
        }

        if (BYTE3(v126) != 12)
        {
          goto LABEL_210;
        }
      }

      if (**(v2 + 1) <= 0)
      {
        v161 = 872415232;
      }

      else
      {
        v161 = 0;
      }

      if (v127 == 21)
      {
        v162 = v161 + 1;
      }

      else
      {
        v162 = v161;
      }

      v163 = v162 & 0xFFFFFFFD | (2 * (*(v2 + 71) & 1));
      goto LABEL_328;
    case 52:
      icu::RegexCompile::fixLiterals(this, 0);
      v41 = **(v2 + 1) <= 0;
      v23 = 973078529;
      goto LABEL_310;
    case 53:
      icu::RegexCompile::fixLiterals(this, 0);
LABEL_142:
      *(v2 + 71) = *(v2 + 72);
      goto LABEL_335;
    case 54:
      icu::RegexCompile::fixLiterals(this, 0);
      v41 = **(v2 + 1) <= 0;
      v23 = 335544320;
      goto LABEL_310;
    case 55:
      v55 = icu::RegexCompile::scanNamedChar(this);
      v56 = v55;
      if (**(v2 + 1) <= 0)
      {
        v57 = *(v2 + 124);
        if (v57 == -1 || v57 > v55)
        {
          icu::RegexCompile::error(v2, 66320);
        }
      }

      v59 = icu::UVector::elementAt((v2 + 416), *(v2 + 106) - 1);
      icu::UnicodeSet::add(v59, *(v2 + 124), v56);
LABEL_88:
      *(v2 + 124) = v56;
      goto LABEL_335;
    case 56:
      icu::RegexCompile::fixLiterals(this, 0);
      v24 = icu::RegexCompile::allocateData(v2, 5);
      v25 = icu::RegexCompile::buildOp(v2, 0x2Cu, v24);
      icu::RegexCompile::appendOp(v2, v25);
      v26 = icu::RegexCompile::buildOp(v2, 0x2Fu, v24);
      icu::RegexCompile::appendOp(v2, v26);
      icu::RegexCompile::appendOp(v2, 0);
      icu::RegexCompile::appendOp(v2, 0);
      icu::RegexCompile::appendOp(v2, 0);
      if (**(v2 + 1) <= 0)
      {
        v27 = 117440512;
      }

      else
      {
        v27 = 0;
      }

      icu::RegexCompile::appendOp(v2, v27);
      if (**(v2 + 1) <= 0)
      {
        v28 = 117440512;
      }

      else
      {
        v28 = 0;
      }

      icu::RegexCompile::appendOp(v2, v28);
      sub_1953AA398((v2 + 368), *(v2 + 71), *(v2 + 1));
      v29 = *(v2 + 1);
      v30 = (v2 + 368);
      v31 = 4294967288;
      goto LABEL_202;
    case 57:
      if (icu::RegexCompile::compileInlineInterval(this))
      {
        goto LABEL_335;
      }

      this = v2;
      v39 = 25;
      v40 = 28;
      goto LABEL_77;
    case 58:
      goto LABEL_20;
    case 59:
      *(this + 72) = *(this + 71);
      *(this + 292) = 1;
      goto LABEL_335;
    case 60:
      icu::RegexCompile::fixLiterals(this, 0);
      v41 = **(v2 + 1) <= 0;
      v23 = 369098752;
      goto LABEL_310;
    case 61:
      icu::RegexCompile::handleCloseParen(this);
      if (*(v2 + 94) >= 1)
      {
        icu::RegexCompile::error(v2, 66310);
      }

      icu::RegexCompile::appendOp(v2, (**(v2 + 1) < 1) << 25);
LABEL_79:
      v3 = 0;
      goto LABEL_335;
    case 62:
      v6 = icu::RegexCompile::scanNamedChar(this);
      goto LABEL_47;
    case 63:
      v42 = icu::RegexCompile::blockTopLoc(this, 0);
      goto LABEL_216;
    case 64:
      v14 = 196612;
LABEL_144:
      icu::RegexCompile::setPushOp(this, v14);
    case 65:
      v13 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      v186 = 0;
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      icu::UnicodeSet::UnicodeSet(&v174);
      icu::UnicodeSet::applyIntPropertyValue(&v174, 0x2000, 0x1000u, *(v2 + 1));
      icu::UnicodeSet::add(&v174, 9u);
LABEL_120:
      v72 = &v174;
      goto LABEL_121;
    case 66:
      icu::RegexCompile::handleCloseParen(this);
      if (*(v2 + 94) <= 0)
      {
        goto LABEL_24;
      }

      goto LABEL_335;
    case 67:
      icu::RegexCompile::fixLiterals(this, 0);
      v132 = *(v2 + 71);
      if ((v132 & 0x20) != 0)
      {
        v41 = **(v2 + 1) <= 0;
        v23 = 352321536;
      }

      else
      {
        v41 = **(v2 + 1) <= 0;
        if (v132)
        {
          v23 = 452984832;
        }

        else
        {
          v23 = 201326592;
        }
      }

      goto LABEL_310;
    case 68:
      icu::RegexCompile::fixLiterals(this, 0);
      if (**(v2 + 1) <= 0)
      {
        v15 = 117440512;
      }

      else
      {
        v15 = 0;
      }

      icu::RegexCompile::appendOp(v2, v15);
      v16 = icu::RegexCompile::allocateStackData(v2, 3);
      v17 = icu::RegexCompile::buildOp(v2, 8u, v16);
      icu::RegexCompile::appendOp(v2, v17);
      if (**(v2 + 1) <= 0)
      {
        v18 = 117440512;
      }

      else
      {
        v18 = 0;
      }

      icu::RegexCompile::appendOp(v2, v18);
      sub_1953AA398((v2 + 368), *(v2 + 71), *(v2 + 1));
      sub_1953AA398((v2 + 368), 4294967294, *(v2 + 1));
      sub_1953AA398((v2 + 368), (*(*(*(v2 + 2) + 32) + 8) - 3), *(v2 + 1));
      sub_1953AA398((v2 + 368), (*(*(*(v2 + 2) + 32) + 8) - 1), *(v2 + 1));
      sub_1951D6BD0(*(*(v2 + 2) + 136), v16, *(v2 + 1));
      if (!*(v2 + 63))
      {
        goto LABEL_335;
      }

      if (icu::RegexPattern::initNamedCaptureMap(*(v2 + 2)))
      {
        v19 = uhash_puti(*(*(v2 + 2) + 192), *(v2 + 63), *(*(*(v2 + 2) + 136) + 8), *(v2 + 1));
        *(v2 + 63) = 0;
        if (v19 >= 1 && **(v2 + 1) <= 0)
        {
LABEL_20:
          v4 = 66325;
          goto LABEL_193;
        }

        goto LABEL_335;
      }

      if (**(v2 + 1) > 0)
      {
        goto LABEL_335;
      }

      v4 = *(*(v2 + 2) + 120);
      goto LABEL_193;
    case 70:
      icu::RegexCompile::fixLiterals(this, 0);
      if (**(v2 + 1) <= 0)
      {
        v73 = 117440512;
      }

      else
      {
        v73 = 0;
      }

      icu::RegexCompile::appendOp(v2, v73);
      v74 = icu::RegexCompile::allocateData(v2, 1);
      v75 = icu::RegexCompile::buildOp(v2, 0x20u, v74);
      icu::RegexCompile::appendOp(v2, v75);
      if (**(v2 + 1) <= 0)
      {
        v76 = 117440512;
      }

      else
      {
        v76 = 0;
      }

      icu::RegexCompile::appendOp(v2, v76);
      sub_1953AA398((v2 + 368), *(v2 + 71), *(v2 + 1));
      sub_1953AA398((v2 + 368), 4294967293, *(v2 + 1));
      v77 = *(v2 + 1);
      v78 = (*(*(*(v2 + 2) + 32) + 8) - 3);
      goto LABEL_203;
    case 71:
      v4 = 66315;
      goto LABEL_193;
    case 72:
      v110 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      sub_1953AAFA4(v110, 0x200u, *(v2 + 1));
      goto LABEL_335;
    case 73:
      v20 = icu::UStack::pop((this + 416));
      goto LABEL_54;
    case 74:
      icu::RegexCompile::fixLiterals(this, 0);
      v20 = icu::RegexCompile::scanProp(v2);
LABEL_54:
      icu::RegexCompile::compileSet(v2, v20);
      goto LABEL_335;
    case 75:
    case 79:
      operator new();
    case 76:
      v154 = *(*(*(this + 2) + 136) + 8);
      for (i = u_charDigitValue(*(this + 18)); i < v154; i = u_charDigitValue(CharLL) + 10 * i)
      {
        CharLL = *(v2 + 17);
        if (CharLL == -1)
        {
          CharLL = icu::RegexCompile::nextCharLL(v2);
          *(v2 + 17) = CharLL;
        }

        if (!icu::UnicodeSet::contains(*(qword_1ED443488 + 3824), CharLL))
        {
          break;
        }

        icu::RegexCompile::nextCharLL(v2);
      }

      icu::RegexCompile::fixLiterals(v2, 0);
      v99 = v2;
      if ((*(v2 + 284) & 2) != 0)
      {
        v100 = 41;
      }

      else
      {
        v100 = 34;
      }

LABEL_266:
      v156 = icu::RegexCompile::buildOp(v99, v100, i);
      icu::RegexCompile::appendOp(v2, v156);
      v3 = 1;
      goto LABEL_335;
    case 77:
      v112 = icu::RegexCompile::blockTopLoc(this, 1);
      v113 = icu::RegexCompile::buildOp(v2, 6u, *(*(*(v2 + 2) + 32) + 8));
      icu::UVector64::setElementAt(*(*(v2 + 2) + 32), v113, v112);
      goto LABEL_335;
    case 78:
      icu::RegexCompile::fixLiterals(this, 0);
      v153 = *(v2 + 71) & 9;
      v111 = **(v2 + 1);
      if (v153 > 7)
      {
        v41 = v111 <= 0;
        if (v153 == 8)
        {
          v23 = 704643072;
        }

        else
        {
          v23 = 922746880;
        }
      }

      else if (v153)
      {
        v41 = v111 <= 0;
        v23 = 905969664;
      }

      else
      {
LABEL_178:
        v41 = v111 <= 0;
        v23 = 402653184;
      }

      goto LABEL_310;
    case 80:
      v39 = 26;
      v40 = 29;
LABEL_77:
      icu::RegexCompile::compileInterval(this, v39, v40);
      goto LABEL_335;
    case 82:
      v131 = icu::RegexCompile::scanPosixProp(this);
      if (v131)
      {
LABEL_239:
        v149 = v131;
        v150 = icu::UVector::elementAt((v2 + 416), *(v2 + 106) - 1);
        icu::UnicodeSet::addAll(v150, v149);
        v152 = icu::UnicodeSet::~UnicodeSet(v151, v149);
        MEMORY[0x19A8B2600](v152, 0x10B1C403432821BLL);
      }

      goto LABEL_335;
    case 83:
      v63 = 262152;
      goto LABEL_237;
    case 84:
      icu::RegexCompile::fixLiterals(this, 0);
      if ((*(v2 + 71) & 0x100) != 0)
      {
        v23 = 889192448;
      }

      else
      {
        v23 = 0x10000000;
      }

      v22 = **(v2 + 1);
LABEL_93:
      v41 = v22 <= 0;
      goto LABEL_310;
    case 85:
      v63 = 262150;
LABEL_237:
      icu::RegexCompile::setPushOp(this, v63);
    case 86:
      v114 = 10 * *(this + 102) + u_charDigitValue(*(this + 18));
      if (v114 >= 0x80000000)
      {
LABEL_192:
        v4 = 66311;
LABEL_193:
        this = v2;
LABEL_194:
        icu::RegexCompile::error(this, v4);
      }

      else
      {
        *(v2 + 102) = v114;
      }

      goto LABEL_335;
    case 87:
      v13 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      v186 = 0;
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      icu::UnicodeSet::UnicodeSet(&v174);
      icu::UnicodeSet::applyIntPropertyValue(&v174, 0x2000, 0x1000u, *(v2 + 1));
      icu::UnicodeSet::add(&v174, 9u);
      goto LABEL_122;
    case 88:
      v135 = icu::RegexCompile::blockTopLoc(this, 0);
      if ((v135 & 0x80000000) != 0)
      {
        goto LABEL_233;
      }

      v136 = v135;
      v137 = *(*(v2 + 2) + 32);
      if (v136 != *(v137 + 8) - 1)
      {
        goto LABEL_233;
      }

      v138 = *(*(v137 + 24) + 8 * v136);
      v139 = BYTE3(v138);
      if (BYTE3(v138) > 0x14u)
      {
        if (BYTE3(v138) != 21 && BYTE3(v138) != 27)
        {
          goto LABEL_233;
        }
      }

      else
      {
        if (BYTE3(v138) == 11)
        {
          v167 = icu::RegexCompile::buildOp(v2, 0x32u, v138 & 0xFFFFFF);
          v137 = *(*(v2 + 2) + 32);
          goto LABEL_330;
        }

        if (BYTE3(v138) != 12)
        {
LABEL_233:
          v140 = icu::RegexCompile::blockTopLoc(v2, 1);
          v141 = icu::RegexCompile::buildOp(v2, 0xFu, v140 + 1);
          if (!icu::RegexCompile::minMatchLength(v2, v140, *(*(*(v2 + 2) + 32) + 8) - 1))
          {
            icu::RegexCompile::insertOp(v2, v140);
            v142 = icu::RegexCompile::allocateStackData(v2, 1);
            v143 = icu::RegexCompile::buildOp(v2, 0x23u, v142);
            icu::UVector64::setElementAt(*(*(v2 + 2) + 32), v143, v140 + 1);
            v141 = icu::RegexCompile::buildOp(v2, 0x12u, v140 + 2);
          }

          v144 = icu::RegexCompile::buildOp(v2, 6u, *(*(*(v2 + 2) + 32) + 8) + 1);
          icu::UVector64::setElementAt(*(*(v2 + 2) + 32), v144, v140);
          v145 = v2;
          v106 = v141;
          goto LABEL_334;
        }
      }

      if (**(v2 + 1) <= 0)
      {
        v165 = 872415232;
      }

      else
      {
        v165 = 0;
      }

      if (v139 == 21)
      {
        v166 = v165 + 1;
      }

      else
      {
        v166 = v165;
      }

      v167 = v166 & 0xFFFFFFFD | (2 * (*(v2 + 71) & 1));
LABEL_330:
      icu::UVector64::setElementAt(v137, v167, v136);
LABEL_331:
      v42 = icu::RegexCompile::allocateStackData(v2, 1);
      v37 = v2;
      v38 = 51;
LABEL_332:
      v106 = icu::RegexCompile::buildOp(v37, v38, v42);
LABEL_333:
      v145 = v2;
LABEL_334:
      icu::RegexCompile::appendOp(v145, v106);
LABEL_335:
      if (**(v2 + 1) >= 1)
      {
        return 0;
      }

      else
      {
        return v3;
      }

    case 89:
      v133 = *(this + 18);
      if (v133 > 114)
      {
        if (v133 > 118)
        {
          if (v133 == 119)
          {
            v134 = 256;
            goto LABEL_323;
          }

          if (v133 == 120)
          {
            v134 = 4;
            goto LABEL_323;
          }
        }

        else
        {
          if (v133 == 115)
          {
            v134 = 32;
            goto LABEL_323;
          }

          if (v133 == 117)
          {
            v134 = 0;
            goto LABEL_323;
          }
        }
      }

      else if (v133 > 104)
      {
        if (v133 == 105)
        {
          v134 = 2;
          goto LABEL_323;
        }

        if (v133 == 109)
        {
          v134 = 8;
          goto LABEL_323;
        }
      }

      else
      {
        if (v133 == 45)
        {
          v134 = 0;
          *(this + 292) = 0;
          goto LABEL_323;
        }

        if (v133 == 100)
        {
          v134 = 1;
LABEL_323:
          if (*(this + 292))
          {
            v172 = *(this + 72) | v134;
          }

          else
          {
            v172 = *(this + 72) & ~v134;
          }

          *(this + 72) = v172;
          goto LABEL_335;
        }
      }

LABEL_338:
      abort();
    case 90:
      icu::RegexCompile::fixLiterals(this, 0);
      v50 = **(v2 + 1);
      goto LABEL_253;
    case 91:
      icu::RegexCompile::fixLiterals(this, 0);
      v45 = icu::RegexCompile::allocateData(v2, 5);
      v46 = icu::RegexCompile::buildOp(v2, 0x2Cu, v45);
      icu::RegexCompile::appendOp(v2, v46);
      v47 = icu::RegexCompile::buildOp(v2, 0x2Du, v45);
      icu::RegexCompile::appendOp(v2, v47);
      icu::RegexCompile::appendOp(v2, 0);
      icu::RegexCompile::appendOp(v2, 0);
      if (**(v2 + 1) <= 0)
      {
        v48 = 117440512;
      }

      else
      {
        v48 = 0;
      }

      icu::RegexCompile::appendOp(v2, v48);
      if (**(v2 + 1) <= 0)
      {
        v49 = 117440512;
      }

      else
      {
        v49 = 0;
      }

      icu::RegexCompile::appendOp(v2, v49);
      sub_1953AA398((v2 + 368), *(v2 + 71), *(v2 + 1));
      v29 = *(v2 + 1);
      v30 = (v2 + 368);
      v31 = 4294967289;
      goto LABEL_202;
    case 92:
      v9 = icu::RegexCompile::blockTopLoc(this, 1);
      icu::RegexCompile::insertOp(v2, v9);
      v10 = icu::RegexCompile::allocateData(v2, 1);
      v11 = icu::RegexCompile::buildOp(v2, 0x20u, v10);
      icu::UVector64::setElementAt(*(*(v2 + 2) + 32), v11, v9);
      v12 = icu::RegexCompile::buildOp(v2, 6u, *(*(*(v2 + 2) + 32) + 8) + 1);
      icu::UVector64::setElementAt(*(*(v2 + 2) + 32), v12, v9 + 1);
LABEL_99:
      v37 = v2;
      v38 = 33;
      v42 = v10;
      goto LABEL_332;
    case 93:
      icu::RegexCompile::fixLiterals(this, 0);
      v51 = *(v2 + 94);
      v52 = __OFSUB__(v51, 1);
      v53 = v51 - 1;
      if (v53 < 0 != v52)
      {
        v54 = 0;
      }

      else
      {
        *(v2 + 94) = v53;
        v54 = *(*(v2 + 49) + 4 * v53);
      }

      v157 = icu::RegexCompile::buildOp(v2, 6u, *(*(*(v2 + 2) + 32) + 8) + 1);
      icu::UVector64::setElementAt(*(*(v2 + 2) + 32), v157, v54);
      if (**(v2 + 1) <= 0)
      {
        v158 = 218103808;
      }

      else
      {
        v158 = 0;
      }

      icu::RegexCompile::appendOp(v2, v158);
      sub_1953AA398((v2 + 368), (*(*(*(v2 + 2) + 32) + 8) - 1), *(v2 + 1));
      if (**(v2 + 1) <= 0)
      {
        v159 = 117440512;
      }

      else
      {
        v159 = 0;
      }

      icu::RegexCompile::appendOp(v2, v159);
      goto LABEL_204;
    case 94:
      icu::RegexCompile::fixLiterals(this, 0);
      v41 = **(v2 + 1) <= 0;
      v23 = 167772161;
      goto LABEL_310;
    case 95:
      icu::RegexCompile::fixLiterals(this, 0);
      v7 = **(v2 + 1);
      v8 = 167772161;
LABEL_167:
      v105 = v8 + 3;
      if (v7 <= 0)
      {
        v106 = v105;
      }

      else
      {
        v106 = 0;
      }

      goto LABEL_333;
    case 96:
LABEL_46:
      v6 = *(v2 + 18);
LABEL_47:
      v5 = v2 + 296;
LABEL_48:
      icu::UnicodeString::append(v5, v6);
      goto LABEL_335;
    case 97:
      *(this + 42) = 0;
      goto LABEL_335;
    case 98:
      icu::RegexCompile::fixLiterals(this, 0);
      v50 = **(v2 + 1);
      if ((*(v2 + 71) & 9u) <= 7)
      {
LABEL_253:
        v41 = v50 <= 0;
        v23 = 385875968;
      }

      else
      {
        v41 = v50 <= 0;
        if ((*(v2 + 71) & 9) == 8)
        {
          v23 = 721420288;
        }

        else
        {
          v23 = 503316480;
        }
      }

LABEL_310:
      if (v41)
      {
        v106 = v23;
      }

      else
      {
        v106 = 0;
      }

      goto LABEL_333;
    case 99:
      *(this + 103) = *(this + 102);
      goto LABEL_335;
    case 100:
      v108 = icu::RegexCompile::blockTopLoc(this, 1);
      v128 = *(*(*(v2 + 2) + 32) + 8);
      v129 = icu::RegexCompile::buildOp(v2, 0xDu, v128 + 1);
      icu::UVector64::setElementAt(*(*(v2 + 2) + 32), v129, v108);
      v130 = icu::RegexCompile::buildOp(v2, 0xDu, v128 + 2);
      icu::RegexCompile::appendOp(v2, v130);
LABEL_215:
      v42 = v108 + 1;
LABEL_216:
      v37 = v2;
      v38 = 6;
      goto LABEL_332;
    case 101:
      icu::RegexCompile::fixLiterals(this, 0);
      v116 = icu::RegexCompile::allocateData(v2, 4);
      v117 = icu::RegexCompile::buildOp(v2, 0x25u, v116);
      icu::RegexCompile::appendOp(v2, v117);
      v118 = icu::RegexCompile::buildOp(v2, 6u, *(*(*(v2 + 2) + 32) + 8) + 2);
      icu::RegexCompile::appendOp(v2, v118);
      v119 = icu::RegexCompile::buildOp(v2, 0xDu, *(*(*(v2 + 2) + 32) + 8) + 3);
      icu::RegexCompile::appendOp(v2, v119);
      v120 = icu::RegexCompile::buildOp(v2, 0x26u, v116);
      icu::RegexCompile::appendOp(v2, v120);
      icu::RegexCompile::appendOp(v2, (**(v2 + 1) < 1) << 24);
      if (**(v2 + 1) <= 0)
      {
        v121 = 117440512;
      }

      else
      {
        v121 = 0;
      }

      icu::RegexCompile::appendOp(v2, v121);
      if (**(v2 + 1) <= 0)
      {
        v122 = 117440512;
      }

      else
      {
        v122 = 0;
      }

      icu::RegexCompile::appendOp(v2, v122);
      sub_1953AA398((v2 + 368), *(v2 + 71), *(v2 + 1));
      v29 = *(v2 + 1);
      v30 = (v2 + 368);
      v31 = 4294967292;
LABEL_202:
      sub_1953AA398(v30, v31, v29);
      v77 = *(v2 + 1);
      v78 = (*(*(*(v2 + 2) + 32) + 8) - 2);
LABEL_203:
      sub_1953AA398((v2 + 368), v78, v77);
LABEL_204:
      sub_1953AA398((v2 + 368), (*(*(*(v2 + 2) + 32) + 8) - 1), *(v2 + 1));
      goto LABEL_335;
    case 102:
      v13 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      v186 = 0;
      v184 = 0u;
      v185 = 0u;
      v182 = 0u;
      v183 = 0u;
      v180 = 0u;
      v181 = 0u;
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v174 = 0u;
      v175 = 0u;
      icu::UnicodeSet::UnicodeSet(&v174);
      v21 = (qword_1ED443488 + 208);
LABEL_109:
      v72 = icu::UnicodeSet::addAll(&v174, v21);
LABEL_121:
      icu::UnicodeSet::complement(v72);
LABEL_122:
      icu::UnicodeSet::addAll(v13, &v174);
      icu::UnicodeSet::~UnicodeSet(v79, &v174);
      goto LABEL_335;
    case 103:
LABEL_24:
      v4 = 66310;
      goto LABEL_193;
    case 104:
      v80 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      v81 = (qword_1ED443488 + 808);
LABEL_186:
      icu::UnicodeSet::addAll(v80, v81);
      goto LABEL_335;
    default:
      goto LABEL_338;
  }
}

void *icu::RegexCompile::error(void *this, int a2)
{
  v2 = this;
  v3 = this[1];
  if (a2 == 7 || *v3 <= 0)
  {
    *v3 = a2;
    v4 = this[6];
    if (v4 < 0x80000000)
    {
      v7 = this[7];
      v5 = this[3];
      *v5 = v4;
      if (v7 > 0x7FFFFFFF)
      {
        v6 = -1;
      }

      else
      {
        v6 = v7;
      }
    }

    else
    {
      v5 = this[3];
      *v5 = 0;
      v6 = -1;
    }

    *(v5 + 4) = v6;
    status = U_ZERO_ERROR;
    *(v5 + 8) = 0u;
    *(v5 + 24) = 0u;
    v8 = this[3];
    *(v8 + 40) = 0u;
    *(v8 + 56) = 0u;
    utext_extract(*(this[2] + 8), this[4] - 15, this[4], (this[3] + 8), 16, &status);
    return utext_extract(*(v2[2] + 8), v2[4], v2[4] + 15, (v2[3] + 40), 16, &status);
  }

  return this;
}

uint64_t icu::RegexCompile::allocateStackData(icu::RegexCompile *this, int a2)
{
  if (**(this + 1) <= 0)
  {
    v4 = 66304;
    if ((a2 - 257) < 0xFFFFFF00 || (v5 = *(this + 2), v2 = *(v5 + 128), (v2 & 0x80000000) != 0))
    {
      v2 = 0;
    }

    else
    {
      v6 = v2 + a2;
      *(v5 + 128) = v6;
      if (v6 < 0xFFFFF0)
      {
        return v2;
      }

      v4 = 66324;
    }

    icu::RegexCompile::error(this, v4);
    return v2;
  }

  return 0;
}

void icu::RegexCompile::stripNOPs(icu::RegexCompile *this)
{
  v33 = *MEMORY[0x1E69E9840];
  v1 = *(this + 1);
  if (*v1 > 0)
  {
    goto LABEL_38;
  }

  v3 = *(*(*(this + 2) + 32) + 8);
  v26 = 0u;
  v27 = 0u;
  icu::UVector32::UVector32(&v26, v3, v1);
  if (v3 < 1)
  {
    v11 = 0;
    v29 = 0u;
    v30 = 0u;
    v32 = 0;
    v31 = 0u;
    v28 = &unk_1F0935D00;
    LOWORD(v29) = 2;
    goto LABEL_37;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = DWORD2(v26);
    if (SDWORD2(v26) < -1 || SHIDWORD(v26) <= SDWORD2(v26))
    {
      if (!icu::UVector32::expandCapacity(&v26, DWORD2(v26) + 1, *(this + 1)))
      {
        goto LABEL_12;
      }

      v6 = DWORD2(v26);
    }

    *(*(&v27 + 1) + 4 * v6) = v5;
    ++DWORD2(v26);
LABEL_12:
    v8 = *(*(this + 2) + 32);
    v9 = v4 < *(v8 + 8) && *(*(v8 + 24) + 8 * v4 + 3) << 24 == 117440512;
    v5 += v9;
    ++v4;
  }

  while (v3 != v4);
  v10 = 0;
  v11 = 0;
  v29 = 0u;
  v30 = 0u;
  v32 = 0;
  v31 = 0u;
  v28 = &unk_1F0935D00;
  LOWORD(v29) = 2;
  do
  {
    v12 = *(this + 2);
    v13 = *(v12 + 32);
    if (v10 >= *(v13 + 8))
    {
      LODWORD(v14) = 0;
LABEL_22:
      v18 = v14;
LABEL_23:
      icu::UVector64::setElementAt(v13, v18, v11++);
    }

    else
    {
      v14 = *(*(v13 + 24) + 8 * v10);
      v15 = BYTE3(v14);
      switch(BYTE3(v14))
      {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xE:
        case 0x10:
        case 0x11:
        case 0x13:
        case 0x14:
        case 0x15:
        case 0x16:
        case 0x17:
        case 0x18:
        case 0x19:
        case 0x1A:
        case 0x1B:
        case 0x1E:
        case 0x20:
        case 0x21:
        case 0x23:
        case 0x25:
        case 0x26:
        case 0x27:
        case 0x28:
        case 0x2A:
        case 0x2B:
        case 0x2C:
        case 0x2D:
        case 0x2E:
        case 0x2F:
        case 0x30:
        case 0x31:
        case 0x32:
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
        case 0x37:
        case 0x38:
        case 0x39:
        case 0x3A:
          goto LABEL_22;
        case 6:
        case 0xD:
        case 0xF:
        case 0x12:
        case 0x1C:
        case 0x1D:
        case 0x1F:
        case 0x24:
          v16 = v14 & 0xFFFFFF;
          if (SDWORD2(v26) <= (v14 & 0xFFFFFF))
          {
            v17 = 0;
          }

          else
          {
            v17 = *(*(&v27 + 1) + 4 * (v14 & 0xFFFFFF));
          }

          v18 = icu::RegexCompile::buildOp(this, v15, v16 - v17);
          v13 = *(*(this + 2) + 32);
          goto LABEL_23;
        case 7:
          break;
        case 0x22:
        case 0x29:
          v19 = v14 & 0xFFFFFF;
          v20 = *(v12 + 136);
          v21 = *(v20 + 8);
          if (v19 <= v21)
          {
            if (v21 <= v19 - 1)
            {
              v22 = 0;
            }

            else
            {
              v22 = *(*(v20 + 24) + 4 * (v19 - 1));
            }

            v23 = icu::RegexCompile::buildOp(this, v15, v22);
            icu::UVector64::setElementAt(*(*(this + 2) + 32), v23, v11++);
            *(*(this + 2) + 184) = 1;
          }

          else
          {
            icu::RegexCompile::error(this, 66314);
          }

          break;
        default:
          if (BYTE3(v14) != 255)
          {
            abort();
          }

          goto LABEL_22;
      }
    }

    ++v10;
  }

  while (v3 != v10);
LABEL_37:
  icu::UVector64::setSize(*(*(this + 2) + 32), v11);
  icu::UnicodeString::~UnicodeString(v24, &v28);
  icu::UVector32::~UVector32(&v26);
LABEL_38:
  v25 = *MEMORY[0x1E69E9840];
}

uint64_t icu::RegexCompile::minMatchLength(icu::RegexCompile *this, unsigned int a2, int a3)
{
  v4 = *(this + 1);
  if (*v4 > 0)
  {
    return 0;
  }

  v29 = 0u;
  v30 = 0u;
  icu::UVector32::UVector32(&v29, a3 + 2, v4);
  icu::UVector32::setSize(&v29, a3 + 2);
  v8 = a3 + 1;
  if (a3 + 1 >= a2)
  {
    v9 = a2;
    do
    {
      icu::UVector32::setElementAt(&v29, 0x7FFFFFFF, v9);
      v10 = v9++ <= a3;
    }

    while (v10);
  }

  if (a2 > a3)
  {
    v11 = 0;
    goto LABEL_8;
  }

  v11 = 0;
  do
  {
    if ((a2 & 0x80000000) != 0)
    {
      v11 &= v11 >> 31;
      goto LABEL_31;
    }

    v14 = *(*(this + 2) + 32);
    v15 = *(v14 + 8);
    if (v15 <= a2)
    {
      LODWORD(v16) = 0;
    }

    else
    {
      v16 = *(*(v14 + 24) + 8 * a2);
    }

    if (SDWORD2(v29) <= a2)
    {
      v11 &= v11 >> 31;
    }

    else if (*(*(&v30 + 1) + 4 * a2) < v11)
    {
      v11 = *(*(&v30 + 1) + 4 * a2);
    }

    switch(BYTE3(v16))
    {
      case 0u:
      case 2u:
      case 5u:
      case 7u:
      case 8u:
      case 9u:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x14u:
      case 0x17u:
      case 0x18u:
      case 0x1Cu:
      case 0x1Du:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x26u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x32u:
      case 0x33u:
      case 0x34u:
      case 0x35u:
      case 0x36u:
      case 0x37u:
        goto LABEL_31;
      case 1u:
        goto LABEL_71;
      case 3u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0x13u:
      case 0x15u:
      case 0x16u:
      case 0x1Bu:
      case 0x27u:
      case 0x31u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
        goto LABEL_28;
      case 4u:
        if (v15 <= ++a2)
        {
          LODWORD(v25) = 0;
        }

        else
        {
          v25 = *(*(v14 + 24) + 8 * a2) & 0xFFFFFFLL;
        }

        if ((v11 ^ 0x7FFFFFFFu) <= v25)
        {
          v11 = 0x7FFFFFFF;
        }

        else
        {
          v11 += v25;
        }

        goto LABEL_31;
      case 6u:
        v26 = v16 & 0xFFFFFF;
        if ((v16 & 0xFFFFFF) > a2)
        {
          v28 = SDWORD2(v29) <= v26 ? 0 : *(*(&v30 + 1) + 4 * v26);
          if (v11 < v28)
          {
            goto LABEL_88;
          }
        }

        goto LABEL_31;
      case 0xDu:
        goto LABEL_70;
      case 0x19u:
      case 0x1Au:
        if (v15 <= (a2 + 1))
        {
          LODWORD(v17) = 0;
        }

        else
        {
          v17 = *(*(v14 + 24) + 8 * (a2 + 1)) & 0xFFFFFFLL;
        }

        if (v15 > (a2 + 2) && *(*(v14 + 24) + 8 * (a2 + 2)))
        {
          a2 += 3;
        }

        else
        {
          a2 = v17;
        }

        goto LABEL_31;
      case 0x24u:
        ++a2;
LABEL_70:
        v26 = v16 & 0xFFFFFF;
        if ((v16 & 0xFFFFFF) >= a2)
        {
          if (SDWORD2(v29) <= v26)
          {
            v27 = 0;
          }

          else
          {
            v27 = *(*(&v30 + 1) + 4 * v26);
          }

          if (v27 > v11)
          {
LABEL_88:
            icu::UVector32::setElementAt(&v29, v11, v26);
          }
        }

        else
        {
LABEL_71:
          if (SDWORD2(v29) <= (a2 + 1))
          {
            v11 = 0;
          }

          else
          {
            v11 = *(*(&v30 + 1) + 4 * (a2 + 1));
          }
        }

        goto LABEL_31;
      case 0x25u:
      case 0x2Cu:
        if (BYTE3(v16) == 37)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        v19 = a2;
        break;
      case 0x28u:
        ++a2;
LABEL_28:
        if (v11 >> 1 == 0x3FFFFFFF)
        {
          v11 = 0x7FFFFFFF;
        }

        else
        {
          ++v11;
        }

        goto LABEL_31;
      default:
        abort();
    }

    while (1)
    {
      v20 = v19 + 1;
      if (v19 <= -2 || v20 >= *(v14 + 8))
      {
        goto LABEL_59;
      }

      v21 = *(*(v14 + 24) + 8 * v19 + 8);
      v22 = v18 + 2;
      if (BYTE3(v21) != 37)
      {
        v22 = v18;
      }

      if (BYTE3(v21) == 44)
      {
        v18 = v22 + 1;
      }

      else
      {
        v18 = v22;
      }

      if (BYTE3(v21) == 6)
      {
        v23 = v21 & 0xFFFFFF;
        if ((v21 & 0xFFFFFF) > v19 + 1)
        {
          v24 = SDWORD2(v29) <= v23 ? 0 : *(*(&v30 + 1) + 4 * (v21 & 0xFFFFFF));
          if (v11 < v24)
          {
            icu::UVector32::setElementAt(&v29, v11, v23);
            v14 = *(*(this + 2) + 32);
          }
        }

        goto LABEL_59;
      }

      if (BYTE3(v21) != 48)
      {
        break;
      }

      if (!--v18)
      {
        goto LABEL_60;
      }

LABEL_59:
      v19 = v20;
    }

    if (BYTE3(v21) != 38)
    {
      goto LABEL_59;
    }

    v18 = v22 - 1;
    if (v22 != 1)
    {
      goto LABEL_59;
    }

LABEL_60:
    a2 = v19 + 1;
LABEL_31:
    v10 = a2++ < a3;
  }

  while (v10);
LABEL_8:
  if (a3 < -1 || SDWORD2(v29) <= v8)
  {
    v5 = v11 & (v11 >> 31);
  }

  else
  {
    v12 = *(*(&v30 + 1) + 4 * v8);
    if (v12 >= v11)
    {
      v5 = v11;
    }

    else
    {
      v5 = v12;
    }
  }

  icu::UVector32::~UVector32(&v29);
  return v5;
}

void icu::RegexCompile::matchStartType(icu::RegexCompile *this)
{
  v1 = *(this + 1);
  if (*v1 <= 0)
  {
    v3 = *(*(*(this + 2) + 32) + 8);
    v64 = 0u;
    v65 = 0u;
    v4 = icu::UVector32::UVector32(&v64, v3 + 1, v1);
    icu::UVector32::setSize(v4, v3 + 1);
    if (v3 < 4)
    {
      v40 = 0;
    }

    else
    {
      for (i = 3; i != v3; ++i)
      {
        icu::UVector32::setElementAt(&v64, 0x7FFFFFFF, i);
      }

      v6 = 0;
      v7 = 0;
      v8 = 1;
      for (j = 3; j < v3; ++j)
      {
        if ((j & 0x80000000) != 0)
        {
          v6 &= v6 >> 31;
        }

        else
        {
          v10 = *(this + 2);
          v11 = *(v10 + 32);
          v12 = *(v11 + 8);
          if (v12 <= j)
          {
            LODWORD(v13) = 0;
          }

          else
          {
            v13 = *(*(v11 + 24) + 8 * j);
          }

          if (SDWORD2(v64) <= j)
          {
            v6 &= v6 >> 31;
          }

          else if (*(*(&v65 + 1) + 4 * j) < v6)
          {
            v6 = *(*(&v65 + 1) + 4 * j);
          }

          switch(BYTE3(v13))
          {
            case 0u:
            case 2u:
            case 5u:
            case 7u:
            case 8u:
            case 9u:
            case 0xEu:
            case 0x10u:
            case 0x11u:
            case 0x14u:
            case 0x18u:
            case 0x1Fu:
            case 0x20u:
            case 0x21u:
            case 0x22u:
            case 0x23u:
            case 0x29u:
            case 0x2Au:
            case 0x35u:
            case 0x36u:
            case 0x37u:
              continue;
            case 1u:
              goto LABEL_69;
            case 3u:
              if (v6)
              {
                goto LABEL_117;
              }

              v33 = *(v10 + 160);
              goto LABEL_115;
            case 4u:
              if (v12 <= ++j)
              {
                v30 = 0;
              }

              else
              {
                v11 = *(*(v11 + 24) + 8 * j);
                v30 = v11 & 0xFFFFFF;
              }

              if (!v6)
              {
                v35 = icu::UnicodeString::char32At(v11, (v10 + 40), v13 & 0xFFFFFF);
                icu::UnicodeSet::add(*(*(this + 2) + 160), v35);
                ++v7;
                v36 = *(this + 2);
                *(v36 + 148) = v13 & 0xFFFFFF;
                *(v36 + 152) = v30;
              }

              goto LABEL_108;
            case 6u:
              v26 = v13 & 0xFFFFFF;
              if ((v13 & 0xFFFFFF) > j)
              {
                v27 = SDWORD2(v64) <= v26 ? 0 : *(*(&v65 + 1) + 4 * (v13 & 0xFFFFFF));
                if (v6 < v27)
                {
                  goto LABEL_113;
                }
              }

              goto LABEL_17;
            case 0xAu:
              if (v6)
              {
                goto LABEL_117;
              }

              v29 = *(v10 + 160);
              v28 = (qword_1ED443488 + 200 * (v13 & 0xFFFFFF) + 8);
              goto LABEL_66;
            case 0xBu:
              if (v6)
              {
                goto LABEL_117;
              }

              v28 = icu::UVector::elementAt(*(v10 + 104), v13 & 0xFFFFFF);
              v29 = *(*(this + 2) + 160);
LABEL_66:
              icu::UnicodeSet::addAll(v29, v28);
              goto LABEL_116;
            case 0xCu:
            case 0x13u:
            case 0x15u:
            case 0x1Bu:
              if (v6)
              {
                goto LABEL_117;
              }

              icu::UnicodeSet::clear(*(v10 + 160));
              icu::UnicodeSet::complement(*(*(this + 2) + 160));
              goto LABEL_116;
            case 0xDu:
              goto LABEL_68;
            case 0xFu:
            case 0x12u:
            case 0x1Cu:
            case 0x1Du:
            case 0x33u:
              goto LABEL_17;
            case 0x16u:
              if (v6)
              {
                goto LABEL_117;
              }

              v63 = 0;
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              icu::UnicodeSet::UnicodeSet(&v51);
              icu::UnicodeSet::applyIntPropertyValue(&v51, 0x2000, 0x200u, *(this + 1));
              goto LABEL_85;
            case 0x17u:
              if (!v8)
              {
                continue;
              }

              v14 = 3;
              goto LABEL_91;
            case 0x19u:
            case 0x1Au:
              if (v12 <= (j + 1))
              {
                LODWORD(v22) = 0;
              }

              else
              {
                v22 = *(*(v11 + 24) + 8 * (j + 1)) & 0xFFFFFFLL;
              }

              if (v12 <= (j + 2) || !*(*(v11 + 24) + 8 * (j + 2)))
              {
                v32 = SDWORD2(v64) <= v22 ? 0 : *(*(&v65 + 1) + 4 * v22);
                if (v32 > v6)
                {
                  icu::UVector32::setElementAt(&v64, v6, v22);
                }
              }

              v8 = 0;
              j += 3;
              continue;
            case 0x1Eu:
            case 0x2Bu:
              if (!v8)
              {
                continue;
              }

              v14 = 4;
LABEL_91:
              *(v10 + 144) = v14;
              v8 = 1;
              continue;
            case 0x24u:
              ++j;
LABEL_68:
              v26 = v13 & 0xFFFFFF;
              if ((v13 & 0xFFFFFF) >= j)
              {
                if (SDWORD2(v64) <= v26)
                {
                  v31 = 0;
                }

                else
                {
                  v31 = *(*(&v65 + 1) + 4 * (v13 & 0xFFFFFF));
                }

                if (v31 > v6)
                {
LABEL_113:
                  icu::UVector32::setElementAt(&v64, v6, v26);
                }

LABEL_17:
                v8 = 0;
              }

              else
              {
LABEL_69:
                v8 = 0;
                if (SDWORD2(v64) <= (j + 1))
                {
                  v6 = 0;
                }

                else
                {
                  v6 = *(*(&v65 + 1) + 4 * (j + 1));
                }
              }

              continue;
            case 0x25u:
            case 0x2Cu:
              if (BYTE3(v13) == 37)
              {
                v15 = 2;
              }

              else
              {
                v15 = 1;
              }

              v16 = j;
              do
              {
                while (1)
                {
                  do
                  {
                    do
                    {
                      v17 = v16++;
                    }

                    while (v17 <= -2);
                  }

                  while (v16 >= *(v11 + 8));
                  v18 = *(*(v11 + 24) + 8 + 8 * v17);
                  v19 = v15 + 2;
                  if (BYTE3(v18) != 37)
                  {
                    v19 = v15;
                  }

                  v15 = BYTE3(v18) == 44 ? v19 + 1 : v19;
                  v16 = v17 + 1;
                  if (BYTE3(v18) != 6)
                  {
                    break;
                  }

                  if ((v18 & 0xFFFFFFuLL) > v16)
                  {
                    v20 = v18 & 0xFFFFFF;
                    v21 = SDWORD2(v64) <= (v18 & 0xFFFFFF) ? 0 : *(*(&v65 + 1) + 4 * (v18 & 0xFFFFFF));
                    if (v6 < v21)
                    {
                      icu::UVector32::setElementAt(&v64, v6, v20);
                      v11 = *(*(this + 2) + 32);
                      v16 = v17 + 1;
                    }
                  }
                }
              }

              while (BYTE3(v18) != 48 && BYTE3(v18) != 38 || --v15);
              j = v17 + 1;
              continue;
            case 0x27u:
              if (!v6)
              {
                if (u_hasBinaryProperty(v13 & 0xFFFFFF, UCHAR_CASE_SENSITIVE))
                {
                  v63 = 0;
                  v61 = 0u;
                  v62 = 0u;
                  v59 = 0u;
                  v60 = 0u;
                  v57 = 0u;
                  v58 = 0u;
                  v55 = 0u;
                  v56 = 0u;
                  v53 = 0u;
                  v54 = 0u;
                  v51 = 0u;
                  v52 = 0u;
                  icu::UnicodeSet::UnicodeSet(&v51, v13 & 0xFFFFFF, v13 & 0xFFFFFF);
                  icu::UnicodeSet::closeOver(&v51, 2);
                  icu::UnicodeSet::addAll(*(*(this + 2) + 160), &v51);
                  icu::UnicodeSet::~UnicodeSet(v24, &v51);
                }

                else
                {
                  v33 = *(*(this + 2) + 160);
LABEL_115:
                  icu::UnicodeSet::add(v33, v13 & 0xFFFFFF);
                }

LABEL_116:
                v7 += 2;
              }

              goto LABEL_117;
            case 0x28u:
              if (v12 <= ++j)
              {
                v30 = 0;
              }

              else
              {
                v11 = *(*(v11 + 24) + 8 * j);
                v30 = v11 & 0xFFFFFF;
              }

              if (!v6)
              {
                v37 = icu::UnicodeString::char32At(v11, (v10 + 40), v13 & 0xFFFFFF);
                v63 = 0;
                v61 = 0u;
                v62 = 0u;
                v59 = 0u;
                v60 = 0u;
                v57 = 0u;
                v58 = 0u;
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                v51 = 0u;
                v52 = 0u;
                icu::UnicodeSet::UnicodeSet(&v51);
                icu::RegexCompile::findCaseInsensitiveStarters(v37, &v51, v38);
                icu::UnicodeSet::addAll(*(*(this + 2) + 160), &v51);
                v7 += 2;
                icu::UnicodeSet::~UnicodeSet(v39, &v51);
              }

LABEL_108:
              v8 = 0;
              if ((v6 ^ 0x7FFFFFFFu) <= v30)
              {
                v6 = 0x7FFFFFFF;
              }

              else
              {
                v6 += v30;
              }

              continue;
            case 0x31u:
              if (v6)
              {
                goto LABEL_117;
              }

              v63 = 0;
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              icu::UnicodeSet::UnicodeSet(&v51);
              v23 = icu::UnicodeSet::addAll(&v51, (qword_1ED443488 + 200 * (v13 & 0xFFFFFF) + 8));
              goto LABEL_87;
            case 0x32u:
              if (v6)
              {
                goto LABEL_17;
              }

              v25 = icu::UVector::elementAt(*(v10 + 104), v13 & 0xFFFFFF);
              icu::UnicodeSet::addAll(*(*(this + 2) + 160), v25);
              goto LABEL_94;
            case 0x34u:
              if (v6)
              {
                goto LABEL_17;
              }

              icu::UnicodeSet::clear(*(v10 + 160));
              icu::UnicodeSet::complement(*(*(this + 2) + 160));
LABEL_94:
              v8 = 0;
              v7 += 2;
              continue;
            case 0x38u:
              if (v6)
              {
                goto LABEL_117;
              }

              v63 = 0;
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              icu::UnicodeSet::UnicodeSet(&v51);
              icu::UnicodeSet::applyIntPropertyValue(&v51, 0x2000, 0x1000u, *(this + 1));
              icu::UnicodeSet::add(&v51, 9u);
              goto LABEL_85;
            case 0x39u:
            case 0x3Au:
              if (v6)
              {
                goto LABEL_117;
              }

              v63 = 0;
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v53 = 0u;
              v54 = 0u;
              v51 = 0u;
              v52 = 0u;
              icu::UnicodeSet::UnicodeSet(&v51);
              icu::UnicodeSet::add(&v51, 0xAu, 0xDu);
              icu::UnicodeSet::add(&v51, 0x85u);
              icu::UnicodeSet::add(&v51, 0x2028u, 0x2029u);
LABEL_85:
              if ((v13 & 0xFFFFFF) != 0)
              {
                v23 = &v51;
LABEL_87:
                icu::UnicodeSet::complement(v23);
              }

              icu::UnicodeSet::addAll(*(*(this + 2) + 160), &v51);
              v7 += 2;
              icu::UnicodeSet::~UnicodeSet(v34, &v51);
LABEL_117:
              v8 = 0;
              if (v6 >> 1 == 0x3FFFFFFF)
              {
                v6 = 0x7FFFFFFF;
              }

              else
              {
                ++v6;
              }

              break;
            default:
              abort();
          }
        }
      }

      v40 = v7 == 1;
    }

    v41 = *(this + 2);
    v42 = *(v41 + 160);
    if (v42)
    {
      v43 = 0;
      v44 = *(v41 + 176);
      do
      {
        if (icu::UnicodeSet::contains(v42, v43))
        {
          *(v44 + (v43 >> 3)) |= 1 << (v43 & 7);
        }

        ++v43;
      }

      while (v43 != 256);
      v41 = *(this + 2);
    }

    v45 = *(v41 + 144);
    if (v45 == 3)
    {
      goto LABEL_140;
    }

    if (v40 && *(v41 + 124) >= 1)
    {
      v46 = icu::UnicodeString::char32At(v41, (v41 + 40), *(v41 + 148));
      v47 = *(this + 2);
      *(v47 + 144) = 5;
LABEL_137:
      *(v47 + 168) = v46;
      goto LABEL_140;
    }

    if (v45 == 4)
    {
LABEL_140:
      icu::UVector32::~UVector32(&v64);
      return;
    }

    if (*(v41 + 124))
    {
      v48 = icu::UnicodeSet::size(*(v41 + 160));
      v49 = *(this + 2);
      if (v48 == 1)
      {
        *(v49 + 144) = 1;
        v46 = icu::UnicodeSet::charAt(*(v49 + 160), 0);
        v47 = *(this + 2);
        goto LABEL_137;
      }

      v50 = icu::UnicodeSet::contains(*(v49 + 160), 0, 1114111);
      v41 = *(this + 2);
      if (!v50 && *(v41 + 124) >= 1)
      {
        *(v41 + 144) = 2;
        goto LABEL_140;
      }
    }

    *(v41 + 144) = 0;
    goto LABEL_140;
  }
}

void *icu::RegexCompile::appendOp(int **this, unsigned int a2, int a3)
{
  v4 = icu::RegexCompile::buildOp(this, a2, a3);

  return icu::RegexCompile::appendOp(this, v4);
}

void *icu::RegexCompile::handleCloseParen(icu::RegexCompile *this)
{
  if (*(this + 94) <= 0)
  {

    return icu::RegexCompile::error(this, 66310);
  }

  result = icu::RegexCompile::fixLiterals(this, 0);
  while (1)
  {
    v3 = *(this + 94);
    v4 = v3 - 1;
    if (v3 >= 1)
    {
      break;
    }

    v6 = 0;
LABEL_7:
    v7 = *(*(this + 2) + 32);
    v8 = *(v7 + 8);
    if (v8 <= v6)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      v9 = *(*(v7 + 24) + 8 * v6);
    }

    result = icu::UVector64::setElementAt(v7, (v8 | v9), v6);
    *(this + 100) = v6;
  }

  *(this + 94) = v4;
  v5 = *(this + 49);
  v6 = *(v5 + 4 * v4);
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  if (v3 == 1)
  {
    v10 = 0;
  }

  else
  {
    v11 = v3 - 2;
    *(this + 94) = v11;
    v10 = *(v5 + 4 * v11);
  }

  *(this + 71) = v10;
  if (v6 > -5)
  {
    if (v6 > -3)
    {
      if (v6 == -1)
      {
        goto LABEL_68;
      }

      if (v6 != -2)
      {
LABEL_69:
        abort();
      }

      v24 = *(this + 100);
      if (v24 < -1 || (v25 = *(*(this + 2) + 32), v26 = v24 + 1, *(v25 + 8) <= v26))
      {
        LODWORD(v20) = 0;
      }

      else
      {
        v20 = *(*(v25 + 24) + 8 * v26) & 0xFFFFFFLL;
      }

      v44 = this;
      v45 = 9;
    }

    else if (v6 == -4)
    {
      v31 = *(this + 100);
      v13 = __OFSUB__(v31, 5);
      v32 = v31 - 5;
      if (v32 < 0 != v13 || (v33 = *(*(this + 2) + 32), *(v33 + 8) <= v32))
      {
        LODWORD(v20) = 0;
      }

      else
      {
        v20 = *(*(v33 + 24) + 8 * v32) & 0xFFFFFFLL;
      }

      v44 = this;
      v45 = 38;
    }

    else
    {
      v17 = *(this + 100);
      if (v17 < -1 || (v18 = *(*(this + 2) + 32), v19 = v17 + 1, *(v18 + 8) <= v19))
      {
        LODWORD(v20) = 0;
      }

      else
      {
        v20 = *(*(v18 + 24) + 8 * v19) & 0xFFFFFFLL;
      }

      v44 = this;
      v45 = 33;
    }

    v54 = icu::RegexCompile::buildOp(v44, v45, v20);
    result = icu::RegexCompile::appendOp(this, v54);
    goto LABEL_68;
  }

  if (v6 > -7)
  {
    if (v6 == -6)
    {
      goto LABEL_68;
    }

    v21 = *(this + 100);
    if (v21 >= 1 && (v22 = *(*(this + 2) + 32), *(v22 + 8) >= v21))
    {
      v23 = *(*(v22 + 24) + 8 * v21 - 8) & 0xFFFFFF;
    }

    else
    {
      v23 = 0;
    }

    v55 = icu::RegexCompile::buildOp(this, 0x26u, v23);
    icu::RegexCompile::appendOp(this, v55);
    icu::RegexCompile::appendOp(this, (**(this + 1) < 1) << 24);
    v56 = icu::RegexCompile::buildOp(this, 0x26u, v23);
    icu::RegexCompile::appendOp(this, v56);
    v57 = icu::RegexCompile::buildOp(this, 6u, *(*(*(this + 2) + 32) + 8) - 1);
    v41 = *(*(this + 2) + 32);
    v42 = v57;
    v43 = *(this + 100);
    goto LABEL_66;
  }

  if (v6 == -8)
  {
    v27 = *(this + 100);
    v13 = __OFSUB__(v27, 5);
    v28 = v27 - 5;
    if (v28 < 0 != v13 || (v29 = *(*(this + 2) + 32), *(v29 + 8) <= v28))
    {
      LODWORD(v30) = 0;
    }

    else
    {
      v30 = *(*(v29 + 24) + 8 * v28) & 0xFFFFFFLL;
    }

    v34 = icu::RegexCompile::buildOp(this, 0x30u, v30);
    icu::RegexCompile::appendOp(this, v34);
    v35 = *(*(*(this + 2) + 32) + 8) - 1;
    matched = icu::RegexCompile::minMatchLength(this, *(this + 100), v35);
    v37 = icu::RegexCompile::maxMatchLength(this, *(this + 100), v35);
    if (HIBYTE(v37))
    {
      goto LABEL_58;
    }

    v38 = v37;
    if (matched == 0x7FFFFFFF)
    {
      v39 = 0;
    }

    else
    {
      v39 = matched;
    }

    icu::UVector64::setElementAt(*(*(this + 2) + 32), v39, *(this + 100) - 3);
    icu::UVector64::setElementAt(*(*(this + 2) + 32), v38, *(this + 100) - 2);
    v40 = icu::RegexCompile::buildOp(this, 0x1Fu, *(*(*(this + 2) + 32) + 8));
    v41 = *(*(this + 2) + 32);
    v42 = v40;
    v43 = *(this + 100) - 1;
LABEL_66:
    v53 = v41;
    goto LABEL_67;
  }

  if (v6 != -7)
  {
    goto LABEL_69;
  }

  v12 = *(this + 100);
  v13 = __OFSUB__(v12, 4);
  v14 = v12 - 4;
  if (v14 < 0 != v13 || (v15 = *(*(this + 2) + 32), *(v15 + 8) <= v14))
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = *(*(v15 + 24) + 8 * v14) & 0xFFFFFFLL;
  }

  v46 = icu::RegexCompile::buildOp(this, 0x2Eu, v16);
  icu::RegexCompile::appendOp(this, v46);
  v47 = icu::RegexCompile::buildOp(this, 0x26u, v16);
  icu::RegexCompile::appendOp(this, v47);
  v48 = *(*(*(this + 2) + 32) + 8) - 1;
  v49 = icu::RegexCompile::minMatchLength(this, *(this + 100), v48);
  v50 = icu::RegexCompile::maxMatchLength(this, *(this + 100), v48);
  if (HIBYTE(v50))
  {
LABEL_58:
    result = icu::RegexCompile::error(this, 66316);
    goto LABEL_68;
  }

  v51 = v50;
  if (v49 == 0x7FFFFFFF)
  {
    v52 = 0;
  }

  else
  {
    v52 = v49;
  }

  icu::UVector64::setElementAt(*(*(this + 2) + 32), v52, *(this + 100) - 2);
  v53 = *(*(this + 2) + 32);
  v42 = v51;
  v43 = *(this + 100) - 1;
LABEL_67:
  result = icu::UVector64::setElementAt(v53, v42, v43);
LABEL_68:
  *(this + 101) = *(*(*(this + 2) + 32) + 8);
  return result;
}

uint64_t icu::RegexCompile::fixLiterals(uint64_t this, int a2)
{
  v2 = this;
  for (i = a2 == 0; ; i = 1)
  {
    if (*(v2 + 304) < 0)
    {
      v5 = *(v2 + 308);
      if (!v5)
      {
        return this;
      }
    }

    else
    {
      v4 = *(v2 + 304);
      if (v4 < 0x20)
      {
        return this;
      }

      v5 = v4 >> 5;
    }

    v6 = icu::UnicodeString::moveIndex32((v2 + 296), v5, -1);
    v8 = icu::UnicodeString::char32At(v7, (v2 + 296), v6);
    if (i)
    {
      break;
    }

    v9 = *(v2 + 304);
    if (v6 || (v9 & 1) == 0)
    {
      if ((v9 & 0x8000) != 0)
      {
        v10 = *(v2 + 308);
      }

      else
      {
        v10 = v9 >> 5;
      }

      if (v10 > v6)
      {
        if (v6 > 1023)
        {
          *(v2 + 304) = v9 | 0xFFE0;
          *(v2 + 308) = v6;
        }

        else
        {
          *(v2 + 304) = *(v2 + 304) & 0x1F | (32 * v6);
        }
      }
    }

    else
    {
      icu::UnicodeString::unBogus(v2 + 296);
    }

    icu::RegexCompile::fixLiterals(v2, 0);
    this = icu::UnicodeString::append(v2 + 296, v8);
  }

  if ((*(v2 + 284) & 2) != 0)
  {
    icu::UnicodeString::foldCase((v2 + 296), 0);
    v11 = *(v2 + 304);
    if ((v11 & 0x8000) != 0)
    {
      v12 = *(v2 + 308);
    }

    else
    {
      v12 = v11 >> 5;
    }

    v6 = icu::UnicodeString::moveIndex32((v2 + 296), v12, -1);
    v8 = icu::UnicodeString::char32At(v13, (v2 + 296), v6);
  }

  if (v6)
  {
    if (*(v2 + 304) < 0 && *(v2 + 308) > 0xFFFFFF || (v14 = *(v2 + 16), *(v14 + 48) < 0) && *(v14 + 52) >= 0x1000000)
    {
      icu::RegexCompile::error(v2, 66324);
    }

    v15 = *(v2 + 16);
    v16 = *(v15 + 48);
    if ((*(v2 + 284) & 2) != 0)
    {
      if ((v16 & 0x8000) != 0)
      {
        v17 = *(v15 + 52);
      }

      else
      {
        v17 = v16 >> 5;
      }

      v21 = v2;
      v22 = 40;
    }

    else
    {
      if ((v16 & 0x8000) != 0)
      {
        v17 = *(v15 + 52);
      }

      else
      {
        v17 = v16 >> 5;
      }

      v21 = v2;
      v22 = 4;
    }

    v23 = icu::RegexCompile::buildOp(v21, v22, v17);
    icu::RegexCompile::appendOp(v2, v23);
    if (*(v2 + 304) < 0)
    {
      v24 = *(v2 + 308);
    }

    else
    {
      v24 = *(v2 + 304) >> 5;
    }

    v25 = icu::RegexCompile::buildOp(v2, 5u, v24);
    icu::RegexCompile::appendOp(v2, v25);
    v26 = *(v2 + 304);
    v27 = v26;
    v28 = v26 >> 5;
    if (v27 >= 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = *(v2 + 308);
    }

    this = icu::UnicodeString::doAppend(*(v2 + 16) + 40, (v2 + 296), 0, v29);
  }

  else
  {
    if ((*(v2 + 284) & 2) != 0 && u_hasBinaryProperty(v8, UCHAR_CASE_SENSITIVE))
    {
      v18 = v2;
      v19 = 39;
    }

    else
    {
      v18 = v2;
      v19 = 3;
    }

    v20 = icu::RegexCompile::buildOp(v18, v19, v8);
    this = icu::RegexCompile::appendOp(v2, v20);
  }

  if (*(v2 + 304))
  {
    v30 = 2;
  }

  else
  {
    v30 = *(v2 + 304) & 0x1E;
  }

  *(v2 + 304) = v30;
  return this;
}

uint64_t icu::RegexCompile::buildOp(int **this, unsigned int a2, int a3)
{
  if (*this[1] > 0)
  {
    return 0;
  }

  if (a2 >= 0x100 || a3 >= 0x1000000)
  {
    goto LABEL_11;
  }

  if (a3 < 0)
  {
    if ((!a2 || a2 == 255) && HIBYTE(a3) == 255)
    {
      a2 = 255;
      return a3 | (a2 << 24);
    }

LABEL_11:
    abort();
  }

  return a3 | (a2 << 24);
}

uint64_t sub_1953AA398(icu::UVector32 *this, uint64_t a2, UErrorCode *a3)
{
  v5 = *(this + 2);
  if (v5 >= -1 && *(this + 3) > v5)
  {
    goto LABEL_5;
  }

  if (icu::UVector32::expandCapacity(this, v5 + 1, a3))
  {
    v5 = *(this + 2);
LABEL_5:
    *(*(this + 3) + 4 * v5) = a2;
    ++*(this + 2);
  }

  return a2;
}

uint64_t icu::RegexCompile::allocateData(int **this, int a2)
{
  if (*this[1] > 0)
  {
    return 0;
  }

  if ((a2 - 257) < 0xFFFFFF00 || (v3 = this[2], v2 = v3[33], (v2 & 0x80000000) != 0))
  {
    v2 = 0;
  }

  else
  {
    v3[33] = v2 + a2;
    if ((v2 + a2) < 0xFFFFF0)
    {
      return v2;
    }
  }

  icu::RegexCompile::error(this, 66304);
  return v2;
}

uint64_t icu::RegexCompile::blockTopLoc(icu::RegexCompile *this, int a2)
{
  icu::RegexCompile::fixLiterals(this, 1);
  v4 = *(*(this + 2) + 32);
  v5 = *(v4 + 8);
  if (v5 == *(this + 101))
  {
    return *(this + 100);
  }

  v6 = (v5 - 1);
  if (v5 >= 1)
  {
    v7 = v5 - 2;
    if ((*(*(v4 + 24) + 8 * v6) & 0xFF000000) == 0x5000000)
    {
      v6 = v7;
    }

    else
    {
      v6 = v6;
    }
  }

  if (a2)
  {
    v8 = *(this + 1);
    if (*v8 <= 0)
    {
      v9 = 117440512;
    }

    else
    {
      v9 = 0;
    }

    icu::UVector64::insertElementAt(v4, v9, v6, v8);
  }

  return v6;
}

void *icu::RegexCompile::appendOp(void *this, int a2)
{
  v2 = this[1];
  if (*v2 > 0)
  {
    return this;
  }

  v4 = this;
  v5 = *(this[2] + 32);
  v6 = *(v5 + 8);
  v7 = v6 + 1;
  if (v6 >= -1 && *(v5 + 12) > v6)
  {
    goto LABEL_6;
  }

  this = icu::UVector64::expandCapacity(*(this[2] + 32), v7, v2);
  if (this)
  {
    v6 = *(v5 + 8);
    v7 = v6 + 1;
LABEL_6:
    *(*(v5 + 24) + 8 * v6) = a2;
    *(v5 + 8) = v7;
  }

  if (*(*(*(v4 + 16) + 32) + 8) >= 16777201 && **(v4 + 8) <= 0)
  {

    return icu::RegexCompile::error(v4, 66324);
  }

  return this;
}

uint64_t icu::RegexCompile::insertOp(icu::RegexCompile *this, signed int a2)
{
  v4 = *(this + 1);
  v5 = *(*(this + 2) + 32);
  if (*v4 <= 0)
  {
    v6 = 117440512;
  }

  else
  {
    v6 = 0;
  }

  result = icu::UVector64::insertElementAt(*(*(this + 2) + 32), v6, a2, v4);
  v8 = *(v5 + 8);
  if (v8 >= 1)
  {
    for (i = 0; i < v8; ++i)
    {
      v10 = *(*(v5 + 24) + 8 * i);
      if (v10 >> 25 != 14 && (BYTE3(v10) > 0x24u || ((1 << SBYTE3(v10)) & 0x108004A040) == 0))
      {
        continue;
      }

      if ((v10 & 0xFFFFFF) > a2)
      {
        v12 = icu::RegexCompile::buildOp(this, BYTE3(v10), (v10 & 0xFFFFFF) + 1);
        result = icu::UVector64::setElementAt(v5, v12, i);
        v8 = *(v5 + 8);
      }
    }
  }

  v13 = *(this + 94);
  if (v13 >= 1)
  {
    for (j = 0; j < v13; ++j)
    {
      v15 = *(*(this + 49) + 4 * j);
      if (v15 > a2)
      {
        result = icu::UVector32::setElementAt(this + 368, v15 + 1, j);
        v13 = *(this + 94);
      }
    }
  }

  v16 = *(this + 101);
  if (v16 > a2)
  {
    *(this + 101) = v16 + 1;
  }

  v17 = *(this + 100);
  if (v17 > a2)
  {
    *(this + 100) = v17 + 1;
  }

  return result;
}

uint64_t icu::RegexCompile::compileInlineInterval(icu::RegexCompile *this)
{
  v1 = *(this + 103);
  if (v1 > 10)
  {
    return 0;
  }

  if (v1 < *(this + 102))
  {
    return 0;
  }

  v4 = icu::RegexCompile::blockTopLoc(this, 0);
  v5 = *(this + 103);
  v6 = *(*(this + 2) + 32);
  if (v5)
  {
    v7 = *(v6 + 8);
    v8 = v7 - 1;
    if (v5 != 1 && v4 != v8)
    {
      return 0;
    }

    LODWORD(v9) = 0;
    if ((v4 & 0x80000000) == 0 && v7 > v4)
    {
      v9 = *(*(v6 + 24) + 8 * v4);
    }

    v10 = icu::RegexCompile::buildOp(this, 6u, v8 + 2 * v5 - *(this + 102));
    if (!*(this + 102))
    {
      icu::RegexCompile::insertOp(this, v4);
      icu::UVector64::setElementAt(*(*(this + 2) + 32), v10, v4);
    }

    if (*(this + 103) >= 2)
    {
      v11 = 1;
      do
      {
        if (v11 >= *(this + 102))
        {
          icu::RegexCompile::appendOp(this, v10);
        }

        icu::RegexCompile::appendOp(this, v9);
        ++v11;
      }

      while (v11 < *(this + 103));
    }
  }

  else
  {
    icu::UVector64::setSize(v6, v4);
    if (*(this + 100) >= v4)
    {
      *(this + 100) = -1;
    }

    if (*(this + 101) >= v4)
    {
      *(this + 101) = -1;
    }
  }

  return 1;
}

void *icu::RegexCompile::compileInterval(icu::RegexCompile *this, unsigned int a2, unsigned int a3)
{
  v6 = icu::RegexCompile::blockTopLoc(this, 1);
  icu::RegexCompile::insertOp(this, v6);
  icu::RegexCompile::insertOp(this, v6);
  icu::RegexCompile::insertOp(this, v6);
  if (*(this + 103) >= 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  StackData = icu::RegexCompile::allocateStackData(this, v7);
  v9 = icu::RegexCompile::buildOp(this, a2, StackData);
  icu::UVector64::setElementAt(*(*(this + 2) + 32), v9, v6);
  v10 = icu::RegexCompile::buildOp(this, 0x1Fu, *(*(*(this + 2) + 32) + 8));
  icu::UVector64::setElementAt(*(*(this + 2) + 32), v10, v6 + 1);
  icu::UVector64::setElementAt(*(*(this + 2) + 32), *(this + 102), v6 + 2);
  icu::UVector64::setElementAt(*(*(this + 2) + 32), *(this + 103), v6 + 3);
  v11 = icu::RegexCompile::buildOp(this, a3, v6);
  result = icu::RegexCompile::appendOp(this, v11);
  v13 = *(this + 102);
  if (HIBYTE(v13) || (v14 = *(this + 103), v14 >= 0x1000000))
  {
    result = icu::RegexCompile::error(this, 66311);
    v13 = *(this + 102);
    v14 = *(this + 103);
  }

  if (v13 > v14 && v14 != -1)
  {

    return icu::RegexCompile::error(this, 66313);
  }

  return result;
}

uint64_t icu::RegexCompile::scanProp(UChar32 *this)
{
  v14 = *MEMORY[0x1E69E9840];
  if (**(this + 1) <= 0)
  {
    v4 = this + 18;
    v3 = this[18];
    v10 = 0u;
    v11 = 0u;
    v13 = 0;
    v12 = 0u;
    v9 = &unk_1F0935D00;
    LOWORD(v10) = 2;
    icu::RegexCompile::nextChar(this, this + 18);
    if (*v4 == 123)
    {
      while (1)
      {
        icu::RegexCompile::nextChar(this, v4);
        v5 = this[18];
        if (v5 == 125)
        {
          break;
        }

        if (v5 == -1)
        {
          goto LABEL_7;
        }

        icu::UnicodeString::append(&v9, v5);
      }

      SetForProperty = icu::RegexCompile::createSetForProperty(this, &v9);
      icu::RegexCompile::nextChar(this, v4);
    }

    else
    {
LABEL_7:
      icu::RegexCompile::error(this, 66308);
      SetForProperty = 0;
    }

    icu::UnicodeString::~UnicodeString(v6, &v9);
  }

  else
  {
    SetForProperty = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return SetForProperty;
}

void *icu::RegexCompile::compileSet(void *this, icu::UnicodeSet *a2)
{
  if (a2)
  {
    v3 = this;
    icu::UnicodeSet::removeAllStrings(a2);
    v4 = icu::UnicodeSet::size(a2);
    if (v4 == 1)
    {
      v6 = icu::UnicodeSet::charAt(a2, 0);
      icu::UnicodeString::append(v3 + 296, v6);
      goto LABEL_8;
    }

    if (!v4)
    {
      icu::RegexCompile::appendOp(v3, (**(v3 + 8) < 1) << 24);
      goto LABEL_8;
    }

    icu::UnicodeSet::freeze(a2);
    v7 = *(*(v3 + 16) + 104);
    v8 = *(v7 + 2);
    icu::UVector::addElement(v7, a2, *(v3 + 8));
    v5 = **(v3 + 8);
    if (v5 > 0)
    {
LABEL_8:
      icu::UnicodeSet::~UnicodeSet(v5, a2);

      JUMPOUT(0x19A8B2600);
    }

    v9 = icu::RegexCompile::buildOp(v3, 0xBu, v8);

    return icu::RegexCompile::appendOp(v3, v9);
  }

  return this;
}

uint64_t icu::RegexCompile::scanNamedChar(icu::RegexCompile *this)
{
  v17 = *MEMORY[0x1E69E9840];
  if (**(this + 1) > 0)
  {
    goto LABEL_8;
  }

  icu::RegexCompile::nextChar(this, this + 18);
  if (*(this + 18) != 123)
  {
    icu::RegexCompile::error(this, 66308);
LABEL_8:
    v3 = 0;
    goto LABEL_9;
  }

  v13 = 0u;
  v16 = 0;
  v15 = 0u;
  v14 = 0u;
  v12 = &unk_1F0935D00;
  LOWORD(v13) = 2;
  while (1)
  {
    icu::RegexCompile::nextChar(this, this + 18);
    v2 = *(this + 18);
    if (v2 == 125)
    {
      break;
    }

    if (v2 == -1)
    {
      goto LABEL_23;
    }

    icu::UnicodeString::append(&v12, v2);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  if ((v13 & 0x11) != 0)
  {
    v6 = 0;
  }

  else if ((v13 & 2) != 0)
  {
    v6 = &v13 + 1;
  }

  else
  {
    v6 = v14;
  }

  if ((v13 & 0x8000u) == 0)
  {
    v7 = v13 >> 5;
  }

  else
  {
    v7 = DWORD1(v13);
  }

  if (!uprv_isInvariantUString(v6, v7))
  {
    goto LABEL_23;
  }

  if ((v13 & 0x80000000) == 0)
  {
    if (v13 < 0xC80u)
    {
      v8 = v13 >> 5;
      goto LABEL_25;
    }

LABEL_23:
    icu::RegexCompile::error(this, 66308);
    v3 = 0;
    goto LABEL_24;
  }

  v8 = DWORD1(v13);
  if (DWORD1(v13) > 0x63)
  {
    goto LABEL_23;
  }

LABEL_25:
  icu::UnicodeString::extract(&v12, 0, v8, v10, 100);
  v3 = u_charFromName(U_UNICODE_CHAR_NAME, v10, *(this + 1));
  if (**(this + 1) >= 1)
  {
    icu::RegexCompile::error(this, 66308);
  }

  icu::RegexCompile::nextChar(this, this + 18);
LABEL_24:
  icu::UnicodeString::~UnicodeString(v9, &v12);
LABEL_9:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t icu::RegexCompile::peekCharLL(icu::RegexCompile *this)
{
  result = *(this + 17);
  if (result == -1)
  {
    result = icu::RegexCompile::nextCharLL(this);
    *(this + 17) = result;
  }

  return result;
}

uint64_t icu::RegexCompile::nextCharLL(icu::RegexCompile *this)
{
  result = *(this + 17);
  if (result != -1)
  {
    *(this + 17) = -1;
    return result;
  }

  v3 = *(*(this + 2) + 8);
  v4 = *(v3 + 40);
  if (v4 >= *(v3 + 44) || (result = *(*(v3 + 48) + 2 * v4), result >> 11 > 0x1A))
  {
    result = utext_next32(*(*(this + 2) + 8));
  }

  else
  {
    *(v3 + 40) = v4 + 1;
  }

  if (result <= 12)
  {
    if (result == -1)
    {
      return result;
    }

    if (result != 10)
    {
      goto LABEL_19;
    }

    if (*(this + 16) == 13)
    {
      goto LABEL_20;
    }
  }

  else if (result != 13 && result != 133 && result != 8232)
  {
LABEL_19:
    ++*(this + 7);
    goto LABEL_20;
  }

  ++*(this + 6);
  *(this + 7) = 0;
LABEL_20:
  *(this + 16) = result;
  return result;
}

void *sub_1953AAFA4(icu::UVector **a1, unsigned int a2, UErrorCode *a3)
{
  icu::UnicodeSet::UnicodeSet(v9);
  v6 = icu::UnicodeSet::applyIntPropertyValue(v9, 0x2000, a2, a3);
  icu::UnicodeSet::addAll(a1, v6);
  return icu::UnicodeSet::~UnicodeSet(v7, v9);
}

void *sub_1953AB00C(uint64_t a1, void *a2, UErrorCode *a3)
{
  v4 = a2;
  if (*(a1 + 24))
  {
    icu::UVector::adoptElement(a1, a2, a3);
    if (*a3 > 0)
    {
      return 0;
    }
  }

  else
  {
    icu::UVector::addElement(a1, a2, a3);
  }

  return v4;
}

void icu::RegexCompile::setPushOp(UErrorCode **this, int a2)
{
  icu::RegexCompile::setEval(this, a2);
  icu::UVector::addElement((this + 57), a2, this[1]);
  operator new();
}

uint64_t icu::RegexCompile::setEval(icu::RegexCompile *this, int a2)
{
  result = icu::UVector::elementAti((this + 456), *(this + 116) - 1);
  if ((result & 0xFFFF0000) >= (a2 & 0xFFFF0000))
  {
    v5 = result;
    while (1)
    {
      icu::UStack::popi((this + 456));
      v6 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      v7 = v6;
      if (v5 <= 196612)
      {
        break;
      }

      if (v5 > 262150)
      {
        if (v5 == 262151)
        {
          goto LABEL_15;
        }

        if (v5 != 262152)
        {
LABEL_21:
          abort();
        }
      }

      else if (v5 != 196613)
      {
        if (v5 != 262150)
        {
          goto LABEL_21;
        }

        icu::UStack::pop((this + 416));
        v8 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
        icu::UnicodeSet::addAll(v8, v7);
        goto LABEL_16;
      }

      icu::UStack::pop((this + 416));
      v10 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
      icu::UnicodeSet::retainAll(v10, v7);
LABEL_16:
      v12 = icu::UnicodeSet::~UnicodeSet(v9, v7);
      MEMORY[0x19A8B2600](v12, 0x10B1C403432821BLL);
LABEL_17:
      result = icu::UVector::elementAti((this + 456), *(this + 116) - 1);
      v5 = result;
      if ((result & 0xFFFF0000) < (a2 & 0xFFFF0000))
      {
        return result;
      }
    }

    if (v5 == 131075)
    {
      icu::UnicodeSet::complement(v6);
      goto LABEL_17;
    }

    if (v5 == 131081)
    {
      icu::UnicodeSet::closeOver(v6, 2);
      icu::UnicodeSet::removeAllStrings(v7);
      goto LABEL_17;
    }

    if (v5 != 196612)
    {
      goto LABEL_21;
    }

LABEL_15:
    icu::UStack::pop((this + 416));
    v11 = icu::UVector::elementAt((this + 416), *(this + 106) - 1);
    icu::UnicodeSet::removeAll(v11, v7);
    goto LABEL_16;
  }

  return result;
}

uint64_t icu::RegexCompile::scanPosixProp(icu::RegexCompile *this)
{
  v25 = *MEMORY[0x1E69E9840];
  if (**(this + 1) <= 0)
  {
    v19 = *(this + 4);
    v3 = *(*(this + 2) + 8);
    v4 = *(v3 + 40);
    if (v4 <= *(v3 + 28))
    {
      v5 = *(v3 + 32) + v4;
    }

    else
    {
      v5 = (*(*(v3 + 56) + 64))();
    }

    v6 = *(this + 40);
    v7 = *(this + 41);
    v8 = *(this + 42);
    v9 = *(this + 6);
    v10 = *(this + 7);
    v11 = (this + 72);
    v12 = *(this + 9);
    v13 = *(this + 8);
    v21 = 0u;
    v22 = 0u;
    v24 = 0;
    v23 = 0u;
    v20 = &unk_1F0935D00;
    LOWORD(v21) = 2;
    icu::RegexCompile::nextChar(this, this + 18);
    v14 = *(this + 18);
    if (v14 == 94)
    {
      icu::RegexCompile::nextChar(this, this + 18);
      v14 = *(this + 18);
    }

    while (1)
    {
      icu::UnicodeString::append(&v20, v14);
      icu::RegexCompile::nextChar(this, this + 18);
      if (*(this + 76))
      {
        break;
      }

      v14 = *v11;
      if (*v11 == -1)
      {
        break;
      }

      if (v14 == 58)
      {
        icu::RegexCompile::nextChar(this, this + 18);
        if (*(this + 18) == 93)
        {
          SetForProperty = icu::RegexCompile::createSetForProperty(this, &v20);
          goto LABEL_18;
        }

        break;
      }
    }

    *(this + 4) = v19;
    *(this + 40) = v6;
    *(this + 41) = v7;
    *(this + 42) = v8;
    *(this + 6) = v9;
    *(this + 7) = v10;
    *(this + 8) = v13;
    *(this + 9) = v12;
    v16 = *(*(this + 2) + 8);
    v15 = v5 - v16->chunkNativeStart;
    if (v15 < 0 || v15 >= v16->nativeIndexingLimit || v16->chunkContents[v15] >> 10 > 0x36u)
    {
      utext_setNativeIndex(v16, v5);
      SetForProperty = 0;
    }

    else
    {
      SetForProperty = 0;
      v16->chunkOffset = v15;
    }

LABEL_18:
    icu::UnicodeString::~UnicodeString(v15, &v20);
  }

  else
  {
    SetForProperty = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return SetForProperty;
}

_DWORD *sub_1953AB504(_DWORD *this, uint64_t a2, UErrorCode *a3)
{
  v4 = this;
  v5 = this[2];
  v6 = v5 + 1;
  if (v5 < -1 || this[3] <= v5)
  {
    this = icu::UVector64::expandCapacity(this, v6, a3);
    if (!this)
    {
      return this;
    }

    v5 = v4[2];
    v6 = v5 + 1;
  }

  *(*(v4 + 3) + 8 * v5) = a2;
  v4[2] = v6;
  return this;
}

uint64_t icu::RegexCompile::maxMatchLength(icu::RegexCompile *this, int a2, int a3)
{
  v4 = *(this + 1);
  if (*v4 > 0)
  {
    return 0;
  }

  LODWORD(v6) = a2;
  v27 = 0u;
  v28 = 0u;
  icu::UVector32::UVector32(&v27, a3 + 1, v4);
  icu::UVector32::setSize(&v27, a3 + 1);
  if (v6 > a3)
  {
    goto LABEL_7;
  }

  v8 = v6;
  do
  {
    icu::UVector32::setElementAt(&v27, 0, v8++);
  }

  while (a3 + 1 != v8);
  if (v6 > a3)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  LODWORD(v10) = 0;
  while ((v6 & 0x80000000) != 0)
  {
    v10 = v10 & ~(v10 >> 31);
LABEL_25:
    v5 = v10;
    v15 = v6 < a3;
    LODWORD(v6) = v6 + 1;
    if (!v15)
    {
      goto LABEL_8;
    }
  }

  v11 = *(*(this + 2) + 32);
  v12 = *(v11 + 8);
  if (v12 <= v6)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = *(*(v11 + 24) + 8 * v6);
  }

  if (SDWORD2(v27) <= v6)
  {
    v10 = v10 & ~(v10 >> 31);
  }

  else
  {
    v14 = *(*(&v28 + 1) + 4 * v6);
    if (v14 <= v10)
    {
      v10 = v10;
    }

    else
    {
      v10 = v14;
    }
  }

  v5 = 0x7FFFFFFFLL;
  switch(BYTE3(v13))
  {
    case 0:
    case 2:
    case 5:
    case 7:
    case 8:
    case 9:
    case 0x10:
    case 0x11:
    case 0x14:
    case 0x17:
    case 0x18:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x23:
    case 0x25:
    case 0x26:
    case 0x2A:
    case 0x2B:
    case 0x2D:
    case 0x2E:
    case 0x2F:
    case 0x30:
    case 0x35:
    case 0x36:
    case 0x37:
      goto LABEL_24;
    case 1:
      if (SDWORD2(v27) <= v6 + 1)
      {
        goto LABEL_47;
      }

      v10 = *(*(&v28 + 1) + 4 * (v6 + 1));
      goto LABEL_24;
    case 3:
      if (v10 >> 1 == 0x3FFFFFFF)
      {
        v10 = 0x7FFFFFFFLL;
      }

      else
      {
        v10 = (v10 + 1);
      }

      if ((v13 & 0xFFFFFF) <= 0x10000)
      {
        goto LABEL_24;
      }

      if (v10 >> 1 == 0x3FFFFFFF)
      {
        goto LABEL_8;
      }

      v10 = (v10 + 1);
      goto LABEL_24;
    case 4:
    case 0x28:
      LODWORD(v6) = v6 + 1;
      if (v12 <= v6)
      {
        LODWORD(v21) = 0;
      }

      else
      {
        v21 = *(*(v11 + 24) + 8 * v6) & 0xFFFFFFLL;
      }

      if ((v10 ^ 0x7FFFFFFF) <= v21)
      {
        goto LABEL_8;
      }

      v10 = (v21 + v10);
      goto LABEL_24;
    case 6:
      v22 = v13 & 0xFFFFFF;
      if ((v13 & 0xFFFFFF) <= v6)
      {
        goto LABEL_8;
      }

      if (SDWORD2(v27) <= v22)
      {
        v23 = 0;
      }

      else
      {
        v23 = *(*(&v28 + 1) + 4 * (v13 & 0xFFFFFF));
      }

      if (v10 > v23)
      {
        icu::UVector32::setElementAt(&v27, v10, v22);
      }

      goto LABEL_24;
    case 0xA:
    case 0xB:
    case 0xC:
    case 0x15:
    case 0x16:
    case 0x1B:
    case 0x27:
    case 0x31:
    case 0x38:
    case 0x39:
    case 0x3A:
      if ((v10 | 0x80000000) >= 0xFFFFFFFD)
      {
        goto LABEL_8;
      }

      v10 = (v10 + 2);
      goto LABEL_24;
    case 0xD:
    case 0xF:
    case 0x12:
    case 0x24:
      v16 = v13 & 0xFFFFFF;
      if ((v13 & 0xFFFFFF) < v6)
      {
        goto LABEL_8;
      }

      if (SDWORD2(v27) <= v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(*(&v28 + 1) + 4 * (v13 & 0xFFFFFF));
      }

      if (v17 < v10)
      {
        icu::UVector32::setElementAt(&v27, v10, v16);
      }

LABEL_47:
      v10 = 0;
      goto LABEL_25;
    case 0x13:
    case 0x22:
    case 0x29:
    case 0x32:
    case 0x33:
    case 0x34:
      goto LABEL_8;
    case 0x19:
    case 0x1A:
      v18 = v6 + 1;
      if (v12 <= v6 + 1)
      {
        LODWORD(v19) = 0;
        v20 = v6 + 4;
      }

      else
      {
        v19 = *(*(v11 + 24) + 8 * v18) & 0xFFFFFFLL;
        v20 = v6 + 4;
        if (v19 == v6 + 4)
        {
          v6 = *(*(v11 + 24) + 8 * v18) & 0xFFFFFFLL;
LABEL_24:
          v5 = 0x7FFFFFFFLL;
          if (v10 == 0x7FFFFFFF)
          {
            goto LABEL_8;
          }

          goto LABEL_25;
        }
      }

      if (v12 <= v6 + 3)
      {
        LODWORD(v6) = 0;
      }

      else
      {
        v6 = *(*(v11 + 24) + 8 * (v6 + 3));
        if (v6 == 0xFFFFFFFFLL)
        {
          goto LABEL_74;
        }
      }

      v10 = v10 + v6 * icu::RegexCompile::maxMatchLength(this, v20, v19 - 1);
      LODWORD(v6) = v19;
      if (v10 <= 2147483646)
      {
        goto LABEL_24;
      }

LABEL_74:
      v5 = 0x7FFFFFFFLL;
LABEL_8:
      icu::UVector32::~UVector32(&v27);
      return v5;
    case 0x2C:
      if (v6 >= a3)
      {
        LODWORD(v6) = v6 + 1;
      }

      else
      {
        v24 = 8 * (v6 + 1);
        while (1)
        {
          v25 = v6 + 1;
          if (v6 >= -1 && v12 > v25)
          {
            v26 = *(*(v11 + 24) + v24);
            if ((BYTE3(v26) == 48 || BYTE3(v26) == 38) && ((v26 ^ v13) & 0xFFFFFF) == 0)
            {
              break;
            }
          }

          v24 += 8;
          LODWORD(v6) = v6 + 1;
          if (v25 >= a3)
          {
            LODWORD(v6) = a3 + 1;
            goto LABEL_24;
          }
        }

        LODWORD(v6) = v6 + 1;
      }

      goto LABEL_24;
    default:
      abort();
  }
}

icu::UnicodeSet *icu::RegexCompile::findCaseInsensitiveStarters(icu::RegexCompile *this, icu::UnicodeSet *a2, icu::UnicodeSet *a3)
{
  if (this >= 0x110000)
  {
    abort();
  }

  v4 = this;
  if (u_hasBinaryProperty(this, UCHAR_CASE_SENSITIVE))
  {
    v5 = u_foldCase(v4, 0);
    icu::UnicodeSet::set(a2, v5, v5);
    v6 = 0;
    do
    {
      v7 = dword_195492328[v6++];
    }

    while (v7 < v4);
    if (v7 == v4 && v6 != 50)
    {
      v8 = word_1954923F0[v6 - 1];
      if (word_19549F242[v6 - 1] <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = word_19549F242[v6 - 1];
      }

      do
      {
        v10 = v8 + 1;
        v11 = word_19549F2A6[v8];
        if ((v11 & 0xFC00) == 0xD800)
        {
          v8 += 2;
          v11 = word_19549F2A6[v10] + (v11 << 10) - 56613888;
        }

        else
        {
          ++v8;
        }

        icu::UnicodeSet::add(a2, v11);
        --v9;
      }

      while (v9);
    }

    icu::UnicodeSet::closeOver(a2, 2);

    return icu::UnicodeSet::removeAllStrings(a2);
  }

  else
  {

    return icu::UnicodeSet::set(a2, v4, v4);
  }
}

uint64_t icu::RegexCompile::createSetForProperty(icu::RegexCompile *this, const icu::UnicodeString *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (**(this + 1) <= 0)
  {
    v12 = 0u;
    v15 = 0;
    v14 = 0u;
    v13 = 0u;
    v11 = &unk_1F0935D00;
    LOWORD(v12) = 2;
    icu::UnicodeString::doAppend(&v11, L"[\\p{", 0, 0xFFFFFFFFLL);
    v4 = *(a2 + 4);
    v5 = v4;
    v6 = v4 >> 5;
    if (v5 >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *(a2 + 3);
    }

    icu::UnicodeString::doAppend(&v11, a2, 0, v7);
    icu::UnicodeString::doAppend(&v11, "}", 0, 0xFFFFFFFFLL);
    v8 = *(this + 71) & 2;
    operator new();
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

icu::UnicodeSet *sub_1953AC6CC(icu::UnicodeSet *result, icu::UnicodeSet *this, int *a3)
{
  if (*a3 <= 0)
  {
    v5 = result;
    result = *result;
    if (result)
    {
      icu::UnicodeSet::~UnicodeSet(result);
      result = MEMORY[0x19A8B2600]();
    }

    *v5 = this;
    if (!this)
    {
      *a3 = 7;
    }
  }

  else if (this)
  {
    icu::UnicodeSet::~UnicodeSet(this);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t sub_1953AC774(uint64_t a1, uint64_t *a2, int32_t a3, __int16 a4)
{
  if (*(a1 + 8) < 0)
  {
    v5 = *(a1 + 12);
  }

  else
  {
    v5 = *(a1 + 8) >> 5;
  }

  return icu::UnicodeString::doCaseCompare(a1, 0, v5, *a2, 0, a3, a4);
}

void *sub_1953AC7A4(icu::UnicodeSet *a1, UErrorCode *a2)
{
  v4 = icu::UnicodeSet::add(a1, 0, 8u);
  v5 = icu::UnicodeSet::add(v4, 0xEu, 0x1Bu);
  icu::UnicodeSet::add(v5, 0x7Fu, 0x9Fu);
  icu::UnicodeSet::UnicodeSet(v9);
  v6 = icu::UnicodeSet::applyIntPropertyValue(v9, 0x2000, 0x10000u, a2);
  icu::UnicodeSet::addAll(a1, v6);
  return icu::UnicodeSet::~UnicodeSet(v7, v9);
}

uint64_t sub_1953AC824(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1953AC830(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2)
  {
    v4 = *(a1 + 20);
  }

  else
  {
    v9 = *a1;
    v10 = *(*a1 + 40);
    if (v10 >= *(*a1 + 44) || (v11 = v9->chunkContents[v10], v11 >> 11 > 0x1A))
    {
      result = utext_next32(v9);
      v11 = result;
      if (result == -1)
      {
        return result;
      }
    }

    else
    {
      v9->chunkOffset = v10 + 1;
    }

    result = ucase_toFullFolding(v11, v3, 0);
    *(a1 + 16) = result;
    if (result >= 0x1F)
    {
      if ((result & 0x80000000) != 0)
      {
        result = ~result;
        *(a1 + 16) = result;
      }

      goto LABEL_16;
    }

    v4 = 0;
    v2 = *v3;
  }

  v5 = v4 + 1;
  *(a1 + 20) = v5;
  result = *(v2 + 2 * v4);
  v7 = *(a1 + 16);
  if ((result & 0xFC00) != 0xD800)
  {
    goto LABEL_7;
  }

  if (v5 != v7)
  {
    v8 = *(v2 + 2 * v5);
    if ((v8 & 0xFC00) == 0xDC00)
    {
      LODWORD(v5) = v4 + 2;
      *(a1 + 20) = v4 + 2;
      result = (v8 + (result << 10) - 56613888);
    }

LABEL_7:
    if (v5 < v7)
    {
      return result;
    }
  }

LABEL_16:
  *v3 = 0;
  return result;
}

uint64_t sub_1953AC940(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_1953AC950(uint64_t *a1)
{
  v3 = a1 + 3;
  v2 = a1[3];
  if (v2)
  {
    v4 = *(a1 + 9);
  }

  else
  {
    v9 = a1[1];
    v10 = a1[2];
    if (v9 >= v10)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = *a1;
    v12 = v9 + 1;
    a1[1] = v9 + 1;
    v13 = *(v11 + 2 * v9);
    if ((v13 & 0xFC00) == 0xD800 && v12 != v10)
    {
      v15 = *(v11 + 2 * v12);
      if ((v15 & 0xFC00) == 0xDC00)
      {
        a1[1] = v9 + 2;
        v13 = v15 + (v13 << 10) - 56613888;
      }
    }

    result = ucase_toFullFolding(v13, v3, 0);
    *(a1 + 8) = result;
    if (result >= 0x1F)
    {
      if ((result & 0x80000000) != 0)
      {
        result = ~result;
        *(a1 + 8) = result;
      }

      goto LABEL_8;
    }

    v4 = 0;
    v2 = *v3;
  }

  v5 = v4 + 1;
  *(a1 + 9) = v5;
  result = *(v2 + 2 * v4);
  v7 = *(a1 + 8);
  if ((result & 0xFC00) == 0xD800)
  {
    if (v5 == v7)
    {
LABEL_8:
      *v3 = 0;
      return result;
    }

    v8 = *(v2 + 2 * v5);
    if ((v8 & 0xFC00) == 0xDC00)
    {
      LODWORD(v5) = v4 + 2;
      *(a1 + 9) = v4 + 2;
      result = (v8 + (result << 10) - 56613888);
    }
  }

  if (v5 >= v7)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1953ACA94(uint64_t a1, UErrorCode *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  for (i = 8; i != 2608; i += 200)
  {
    icu::UnicodeSet::UnicodeSet((a1 + i));
  }

  *(a1 + 3008) = 0u;
  *(a1 + 2992) = 0u;
  *(a1 + 2976) = 0u;
  *(a1 + 2960) = 0u;
  *(a1 + 2944) = 0u;
  *(a1 + 2928) = 0u;
  *(a1 + 2912) = 0u;
  *(a1 + 2896) = 0u;
  *(a1 + 2880) = 0u;
  *(a1 + 2864) = 0u;
  *(a1 + 2848) = 0u;
  *(a1 + 2832) = 0u;
  *(a1 + 2816) = 0u;
  *(a1 + 2800) = 0u;
  *(a1 + 2784) = 0u;
  *(a1 + 2768) = 0u;
  *(a1 + 2752) = 0u;
  *(a1 + 2736) = 0u;
  *(a1 + 2720) = 0u;
  *(a1 + 2704) = 0u;
  *(a1 + 2688) = 0u;
  *(a1 + 2672) = 0u;
  *(a1 + 2656) = 0u;
  *(a1 + 2640) = 0u;
  *(a1 + 2624) = 0u;
  v5 = 3024;
  *(a1 + 2608) = 0u;
  do
  {
    icu::UnicodeSet::UnicodeSet((a1 + v5));
    v5 += 200;
  }

  while (v5 != 3624);
  icu::UnicodeSet::UnicodeSet((a1 + 3624));
  *(a1 + 3824) = 0u;
  v45 = "a";
  icu::UnicodeString::UnicodeString(v46, 1, &v45);
  v6 = icu::UnicodeSet::addAll((a1 + 3624), v46);
  icu::UnicodeSet::freeze(v6);
  icu::UnicodeString::~UnicodeString(v7, v46);
  v44 = L"[\\p{Alphabetic}\\p{M}\\p{Nd}\\p{Pc}\\u200c\\u200d]";
  icu::UnicodeString::UnicodeString(v46, 1, &v44);
  v8 = icu::UnicodeSet::applyPattern((a1 + 208), v46, a2);
  icu::UnicodeSet::freeze(v8);
  icu::UnicodeString::~UnicodeString(v9, v46);
  v43 = L"[\\p{WhiteSpace}]";
  icu::UnicodeString::UnicodeString(v46, 1, &v43);
  v10 = icu::UnicodeSet::applyPattern((a1 + 808), v46, a2);
  icu::UnicodeSet::freeze(v10);
  icu::UnicodeString::~UnicodeString(v11, v46);
  v42 = "[";
  icu::UnicodeString::UnicodeString(v46, 1, &v42);
  v12 = icu::UnicodeSet::applyPattern((a1 + 1208), v46, a2);
  icu::UnicodeSet::freeze(v12);
  icu::UnicodeString::~UnicodeString(v13, v46);
  v41 = "[";
  icu::UnicodeString::UnicodeString(v46, 1, &v41);
  v14 = icu::UnicodeSet::applyPattern((a1 + 1408), v46, a2);
  icu::UnicodeSet::freeze(v14);
  icu::UnicodeString::~UnicodeString(v15, v46);
  v40 = L"[\\p{Hangul_Syllable_Type=L}]";
  icu::UnicodeString::UnicodeString(v46, 1, &v40);
  v16 = icu::UnicodeSet::applyPattern((a1 + 1608), v46, a2);
  icu::UnicodeSet::freeze(v16);
  icu::UnicodeString::~UnicodeString(v17, v46);
  v39 = "[";
  icu::UnicodeString::UnicodeString(v46, 1, &v39);
  v18 = icu::UnicodeSet::applyPattern((a1 + 2208), v46, a2);
  icu::UnicodeSet::freeze(v18);
  icu::UnicodeString::~UnicodeString(v19, v46);
  v38 = L"[\\p{Hangul_Syllable_Type=T}]";
  icu::UnicodeString::UnicodeString(v46, 1, &v38);
  v20 = icu::UnicodeSet::applyPattern((a1 + 2408), v46, a2);
  icu::UnicodeSet::freeze(v20);
  icu::UnicodeString::~UnicodeString(v21, v46);
  v37 = "[";
  icu::UnicodeString::UnicodeString(v46, 1, &v37);
  v22 = icu::UnicodeSet::applyPattern((a1 + 1808), v46, a2);
  icu::UnicodeSet::freeze(v22);
  icu::UnicodeString::~UnicodeString(v23, v46);
  v36 = "[";
  icu::UnicodeString::UnicodeString(v46, 1, &v36);
  v24 = icu::UnicodeSet::applyPattern((a1 + 2008), v46, a2);
  icu::UnicodeSet::freeze(v24);
  icu::UnicodeString::~UnicodeString(v25, v46);
  icu::UnicodeSet::complement((a1 + 1008));
  icu::UnicodeSet::remove((a1 + 1008), 0xAC00u, 0xD7A4u);
  icu::UnicodeSet::removeAll((a1 + 1008), (a1 + 1408));
  icu::UnicodeSet::removeAll((a1 + 1008), (a1 + 1608));
  icu::UnicodeSet::removeAll((a1 + 1008), (a1 + 2208));
  icu::UnicodeSet::removeAll((a1 + 1008), (a1 + 2408));
  icu::UnicodeSet::freeze((a1 + 1008));
  for (j = 0; j != 13; ++j)
  {
    for (k = 0; k != 256; ++k)
    {
      if (icu::UnicodeSet::contains((a1 + 8 + 200 * j), k))
      {
        *(a1 + 2608 + 32 * j + (k >> 3)) |= 1 << (k & 7);
      }
    }
  }

  sub_1951F3478(v46, &off_1E7410050);
  v28 = icu::UnicodeSet::addAll((a1 + 3424), v46);
  v29 = icu::UnicodeSet::complement(v28);
  icu::UnicodeSet::freeze(v29);
  icu::UnicodeString::~UnicodeString(v30, v46);
  v31 = icu::UnicodeSet::add((a1 + 3024), 0x30u, 0x39u);
  icu::UnicodeSet::freeze(v31);
  v32 = icu::UnicodeSet::add((a1 + 3224), 0x41u, 0x5Au);
  v33 = icu::UnicodeSet::add(v32, 0x61u, 0x7Au);
  icu::UnicodeSet::freeze(v33);
  *(a1 + 3824) = a1 + 3024;
  *(a1 + 3832) = utext_openUChars(0, 0, 0, a2);
  v34 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_1953ACFBC(uint64_t a1)
{
  *(a1 + 3824) = 0;
  utext_close(*(a1 + 3832));
  icu::UnicodeSet::~UnicodeSet(v2, (a1 + 3624));
  for (i = 3424; i != 2824; i -= 200)
  {
    icu::UnicodeSet::~UnicodeSet(v3, (a1 + i));
  }

  for (j = 2408; j != -192; j -= 200)
  {
    icu::UnicodeSet::~UnicodeSet(v3, (a1 + j));
  }

  return a1;
}

int *sub_1953AD024(int *result)
{
  if (*result <= 0)
  {
    v1 = result;
    if (atomic_load_explicit(&dword_1ED443490, memory_order_acquire) != 2)
    {
      result = icu::umtx_initImplPreInit(&dword_1ED443490);
      if (result)
      {
        sub_1953AD0BC();
      }
    }

    if (dword_1ED443494 >= 1)
    {
      *v1 = dword_1ED443494;
    }
  }

  return result;
}

uint64_t sub_1953AD158()
{
  if (qword_1ED443488)
  {
    v0 = sub_1953ACFBC(qword_1ED443488);
    MEMORY[0x19A8B2600](v0, 0x10B0C40FAC127CALL);
  }

  qword_1ED443488 = 0;
  atomic_store(0, &dword_1ED443490);
  return 1;
}

uint64_t sub_1953AD1AC(int a1, _DWORD *a2)
{
  v3 = a1;
  v4 = a2[2];
  if (v4 + 1 == a1)
  {
    v5 = *a2;
    v6 = *(*a2 + 40);
    if (v6 >= *(*a2 + 44) || (v7 = v5->chunkContents[v6], v7 >> 11 > 0x1A))
    {
      v7 = utext_next32(v5);
      v3 = a2[2] + 1;
LABEL_13:
      a2[2] = v3;
      goto LABEL_14;
    }

LABEL_11:
    v5->chunkOffset = v6 + 1;
    goto LABEL_13;
  }

  v8 = *a2;
  if (v4 != v3)
  {
    utext_moveIndex32(v8, ~v4 + v3);
    v5 = *a2;
    v6 = *(*a2 + 40);
    if (v6 >= *(*a2 + 44) || (v7 = v5->chunkContents[v6], v7 >> 11 > 0x1A))
    {
      v7 = utext_next32(v5);
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  chunkOffset = v8->chunkOffset;
  if (chunkOffset < 1 || (chunkContents = v8->chunkContents, chunkContents[chunkOffset - 1] >> 11 > 0x1Au))
  {
    v7 = utext_previous32(v8);
    v8 = *a2;
    v11 = *(*a2 + 40);
  }

  else
  {
    v11 = chunkOffset - 1;
    v8->chunkOffset = v11;
    v7 = chunkContents[v11];
  }

  if (v11 >= v8->chunkLength || v8->chunkContents[v11] >> 11 > 0x1Au)
  {
    utext_next32(v8);
  }

  else
  {
    v8->chunkOffset = v11 + 1;
  }

LABEL_14:
  if (v7 >= 0x10000)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

void icu::Region::loadRegionData(icu::Region *this, UErrorCode *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  uhash_open(uhash_hashUnicodeString, uhash_compareUnicodeString, 0, this);
  uhash_open(uhash_hashLong, uhash_compareLong, 0, this);
  uhash_open(uhash_hashUnicodeString, uhash_compareUnicodeString, 0, this);
  operator new();
}

uint64_t icu::Region::Region(uint64_t this)
{
  *this = &unk_1F09419C0;
  *(this + 16) = &unk_1F0935D00;
  *(this + 24) = 2;
  *(this + 80) = -1;
  *(this + 8) = 0;
  *(this + 84) = 0;
  *(this + 100) = 0;
  *(this + 92) = 0;
  *(this + 108) = 0;
  return this;
}

{
  *this = &unk_1F09419C0;
  *(this + 16) = &unk_1F0935D00;
  *(this + 24) = 2;
  *(this + 80) = -1;
  *(this + 8) = 0;
  *(this + 84) = 0;
  *(this + 100) = 0;
  *(this + 92) = 0;
  *(this + 108) = 0;
  return this;
}

uint64_t icu::Region::cleanupRegionData(icu::Region *this)
{
  for (i = 0; i != 7; ++i)
  {
    v2 = qword_1EAEC9F90[i];
    if (v2)
    {
      (*(*v2 + 8))(v2);
      qword_1EAEC9F90[i] = 0;
    }
  }

  if (qword_1EAEC9FD8)
  {
    uhash_close(qword_1EAEC9FD8);
  }

  if (qword_1EAEC9FC8)
  {
    uhash_close(qword_1EAEC9FC8);
  }

  if (qword_1EAEC9FD0)
  {
    uhash_close(qword_1EAEC9FD0);
  }

  result = qword_1EAEC9F88;
  if (qword_1EAEC9F88)
  {
    result = (*(*qword_1EAEC9F88 + 8))(qword_1EAEC9F88);
    qword_1EAEC9F88 = 0;
  }

  qword_1EAEC9FD0 = 0;
  qword_1EAEC9FC8 = 0;
  qword_1EAEC9FD8 = 0;
  atomic_store(0, &dword_1EAEC9FE0);
  return result;
}

void icu::Region::~Region(icu::Region *this)
{
  *this = &unk_1F09419C0;
  v2 = *(this + 12);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::UnicodeString::~UnicodeString((this + 16));

  icu::UObject::~UObject(this);
}

{
  icu::Region::~Region(this);

  JUMPOUT(0x19A8B2600);
}

BOOL icu::Region::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    return *(a2 + 24) & 1;
  }

  if ((v2 & 0x8000) != 0)
  {
    v3 = *(a1 + 28);
  }

  else
  {
    v3 = v2 >> 5;
  }

  v4 = 0;
  v5 = *(a2 + 24);
  if ((v5 & 0x8000u) == 0)
  {
    v6 = v5 >> 5;
  }

  else
  {
    v6 = *(a2 + 28);
  }

  if ((v5 & 1) == 0 && v3 == v6)
  {
    if ((v5 & 2) != 0)
    {
      v7 = (a2 + 26);
    }

    else
    {
      v7 = *(a2 + 40);
    }

    return icu::UnicodeString::doEquals(a1 + 16, v7, v3);
  }

  return v4;
}

uint64_t icu::Region::operator!=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = *(a2 + 24) & 1;
  }

  else
  {
    if ((v2 & 0x8000) != 0)
    {
      v3 = *(a1 + 28);
    }

    else
    {
      v3 = v2 >> 5;
    }

    v4 = 0;
    v5 = *(a2 + 24);
    if ((v5 & 0x8000u) == 0)
    {
      v6 = v5 >> 5;
    }

    else
    {
      v6 = *(a2 + 28);
    }

    if ((v5 & 1) == 0 && v3 == v6)
    {
      if ((v5 & 2) != 0)
      {
        v7 = (a2 + 26);
      }

      else
      {
        v7 = *(a2 + 40);
      }

      v4 = icu::UnicodeString::doEquals(a1 + 16, v7, v3);
    }
  }

  return v4 ^ 1u;
}

icu::Region *icu::Region::getInstance(icu::Region *this, icu::Region *a2, UErrorCode *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
    goto LABEL_2;
  }

  v3 = this;
  if (atomic_load_explicit(&dword_1EAEC9FE0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9FE0))
  {
    icu::Region::loadRegionData(a2, v5);
  }

  v6 = dword_1EAEC9FE4;
  if (dword_1EAEC9FE4 >= 1)
  {
    v3 = 0;
LABEL_8:
    *a2 = v6;
    goto LABEL_20;
  }

  if (*a2 <= 0)
  {
    if (!v3)
    {
      v6 = 1;
      goto LABEL_8;
    }

    memset(v13, 0, sizeof(v13));
    icu::UnicodeString::UnicodeString(v13, v3, 0xFFFFFFFFLL, 0);
    v7 = uhash_get(qword_1EAEC9FD0, v13);
    if (v7)
    {
      v3 = v7;
    }

    else
    {
      v3 = uhash_get(qword_1EAEC9FD8, v13);
      if (!v3)
      {
        v8 = 1;
        *a2 = 1;
LABEL_19:
        icu::UnicodeString::~UnicodeString(v8, v13);
        goto LABEL_20;
      }
    }

    v8 = *(v3 + 21);
    if (v8 == 6)
    {
      v8 = *(*(v3 + 13) + 8);
      if (v8 == 1)
      {
        PreferredValues = icu::Region::getPreferredValues(v3, a2);
        (*(*PreferredValues + 64))(PreferredValues, a2);
        v10 = (*(*PreferredValues + 56))(PreferredValues, a2);
        v3 = uhash_get(qword_1EAEC9FD0, v10);
        (*(*PreferredValues + 8))(PreferredValues);
      }
    }

    goto LABEL_19;
  }

LABEL_2:
  v3 = 0;
LABEL_20:
  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t icu::Region::getPreferredValues(icu::Region *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9FE0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9FE0))
  {
    icu::Region::loadRegionData(a2, v5);
  }

  if (dword_1EAEC9FE4 < 1)
  {
    if (*a2 <= 0 && *(this + 21) == 6)
    {
      operator new();
    }

    return 0;
  }

  else
  {
    result = 0;
    *a2 = dword_1EAEC9FE4;
  }

  return result;
}

uint64_t icu::Region::getInstance(icu::Region *this, icu::Region *a2, UErrorCode *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*a2 > 0)
  {
LABEL_2:
    v3 = 0;
    goto LABEL_3;
  }

  if (atomic_load_explicit(&dword_1EAEC9FE0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9FE0))
  {
    icu::Region::loadRegionData(a2, v8);
  }

  v9 = dword_1EAEC9FE4;
  if (dword_1EAEC9FE4 >= 1)
  {
    v3 = 0;
LABEL_9:
    *a2 = v9;
    goto LABEL_3;
  }

  if (*a2 > 0)
  {
    goto LABEL_2;
  }

  v3 = uhash_iget(qword_1EAEC9FC8, this);
  if (!v3)
  {
    v14 = 0u;
    v15 = 0u;
    v17 = 0;
    v16 = 0u;
    v13 = &unk_1F0935D00;
    LOWORD(v14) = 2;
    icu::ICU_Utility::appendNumber(&v13, this, 0xAu, 1);
    v3 = uhash_get(qword_1EAEC9FD8, &v13);
    icu::UnicodeString::~UnicodeString(v10, &v13);
  }

  if (*a2 > 0)
  {
    goto LABEL_2;
  }

  if (!v3)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (*(v3 + 84) == 6 && *(*(v3 + 104) + 8) == 1)
  {
    PreferredValues = icu::Region::getPreferredValues(v3, a2);
    (*(*PreferredValues + 64))(PreferredValues, a2);
    v12 = (*(*PreferredValues + 56))(PreferredValues, a2);
    v3 = uhash_get(qword_1EAEC9FD0, v12);
    (*(*PreferredValues + 8))(PreferredValues);
  }

LABEL_3:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t icu::Region::getAvailable(uint64_t a1, icu::Region *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9FE0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9FE0))
  {
    icu::Region::loadRegionData(a2, v4);
  }

  if (dword_1EAEC9FE4 < 1)
  {
    if (*a2 <= 0)
    {
      operator new();
    }

    return 0;
  }

  else
  {
    result = 0;
    *a2 = dword_1EAEC9FE4;
  }

  return result;
}

uint64_t icu::Region::getContainingRegion(icu::Region *this)
{
  v4 = 0;
  if (atomic_load_explicit(&dword_1EAEC9FE0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9FE0))
  {
    icu::Region::loadRegionData(&v4, v2);
  }

  return *(this + 11);
}

uint64_t icu::Region::getContainingRegion(uint64_t a1, int a2)
{
  v6 = 0;
  if (atomic_load_explicit(&dword_1EAEC9FE0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9FE0))
  {
    icu::Region::loadRegionData(&v6, v4);
  }

  if (dword_1EAEC9FE4 >= 1)
  {
    v6 = dword_1EAEC9FE4;
  }

  result = *(a1 + 88);
  if (result)
  {
    if (*(result + 84) != a2)
    {
      return icu::Region::getContainingRegion();
    }
  }

  return result;
}

uint64_t icu::Region::getContainedRegions(icu::Region *this, UErrorCode *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC9FE0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9FE0))
  {
    icu::Region::loadRegionData(a2, v4);
  }

  if (dword_1EAEC9FE4 < 1)
  {
    if (*a2 <= 0)
    {
      operator new();
    }

    return 0;
  }

  else
  {
    result = 0;
    *a2 = dword_1EAEC9FE4;
  }

  return result;
}

uint64_t icu::Region::getContainedRegions(icu::Region *a1, uint64_t a2, icu::Region *a3)
{
  if (*a3 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAEC9FE0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9FE0))
    {
      icu::Region::loadRegionData(a3, v6);
    }

    if (dword_1EAEC9FE4 >= 1)
    {
      *a3 = dword_1EAEC9FE4;
    }
  }

  v22 = 0;
  memset(v21, 0, sizeof(v21));
  icu::UVector::UVector(v21, 0, uhash_compareChars, a3);
  ContainedRegions = icu::Region::getContainedRegions(a1, a3);
  v8 = ContainedRegions;
  v9 = *a3;
  if (!ContainedRegions && v9 < 1)
  {
    *a3 = 7;
    goto LABEL_31;
  }

  if (v9 <= 0)
  {
    v10 = (*(*ContainedRegions + 40))(ContainedRegions, 0, a3);
    if (v10)
    {
      v12 = *a3 <= 0;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
LABEL_30:
      operator new();
    }

    while (1)
    {
      Instance = icu::Region::getInstance(v10, a3, v11);
      if (*(Instance + 21) == a2)
      {
        icu::UVector::addElement(v21, Instance + 16, a3);
      }

      else
      {
        v14 = icu::Region::getContainedRegions(Instance, a2, a3);
        v15 = v14;
        if (*a3 <= 0)
        {
          do
          {
            v16 = (*(*v15 + 40))(v15, 0, a3);
            if (!v16)
            {
              break;
            }

            v18 = icu::Region::getInstance(v16, a3, v17);
            icu::UVector::addElement(v21, v18 + 16, a3);
          }

          while (*a3 <= 0);
        }

        else if (!v14)
        {
          goto LABEL_26;
        }

        (*(*v15 + 8))(v15);
      }

LABEL_26:
      v10 = (*(*v8 + 40))(v8, 0, a3);
      if (v10)
      {
        v19 = *a3 < 1;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
        goto LABEL_30;
      }
    }
  }

  if (ContainedRegions)
  {
    (*(*ContainedRegions + 8))(ContainedRegions);
  }

LABEL_31:
  icu::UVector::~UVector(v21);
  return 0;
}

uint64_t icu::Region::contains(icu::Region *this, const icu::Region *a2)
{
  v10 = 0;
  if (atomic_load_explicit(&dword_1EAEC9FE0, memory_order_acquire) != 2 && icu::umtx_initImplPreInit(&dword_1EAEC9FE0))
  {
    icu::Region::loadRegionData(&v10, v4);
  }

  if (dword_1EAEC9FE4 >= 1)
  {
    v10 = dword_1EAEC9FE4;
  }

  result = *(this + 12);
  if (result)
  {
    if ((icu::UVector::indexOf(result, a2 + 16, 0) & 0x80000000) == 0)
    {
      return 1;
    }

    v6 = *(this + 12);
    if (*(v6 + 2) >= 1)
    {
      v7 = 0;
      while (1)
      {
        v8 = icu::UVector::elementAt(v6, v7);
        v9 = uhash_get(qword_1EAEC9FD0, v8);
        if (v9)
        {
          if (icu::Region::contains(v9, a2))
          {
            break;
          }
        }

        ++v7;
        v6 = *(this + 12);
        if (v7 >= *(v6 + 2))
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1953AFFA0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = icu::StringEnumeration::StringEnumeration(a1);
  *v6 = &unk_1F09419E8;
  *(v6 + 116) = 0;
  *(v6 + 120) = 0;
  if (a2 && *a3 <= 0)
  {
    operator new();
  }

  return a1;
}

icu::UVector *sub_1953B0108(uint64_t a1, int *a2)
{
  if (*a2 > 0)
  {
    return 0;
  }

  result = *(a1 + 120);
  if (result)
  {
    result = icu::UVector::elementAt(result, *(a1 + 116));
    if (result)
    {
      ++*(a1 + 116);
    }
  }

  return result;
}

uint64_t sub_1953B0168(uint64_t a1)
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

void sub_1953B0180(icu::StringEnumeration *this)
{
  *this = &unk_1F09419E8;
  v2 = *(this + 15);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::StringEnumeration::~StringEnumeration(this);
}

void sub_1953B0200(icu::StringEnumeration *a1)
{
  sub_1953B0180(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953B0238(icu::SimpleFormatter **a1)
{
  v2 = 0;
  *a1 = &unk_1F0941A80;
  v3 = a1 + 2171;
  do
  {
    v4 = 0;
    v5 = v3;
    do
    {
      v6 = 8;
      v7 = v5;
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          icu::SimpleFormatter::~SimpleFormatter(v8);
          MEMORY[0x19A8B2600]();
        }

        if (*v7)
        {
          icu::SimpleFormatter::~SimpleFormatter(*v7);
          MEMORY[0x19A8B2600]();
        }

        ++v7;
        --v6;
      }

      while (v6);
      ++v4;
      v5 += 16;
    }

    while (v4 != 15);
    ++v2;
    v3 += 240;
  }

  while (v2 != 3);
  v9 = a1[2893];
  if (v9)
  {
    icu::SimpleFormatter::~SimpleFormatter(v9);
    MEMORY[0x19A8B2600]();
  }

  icu::UnicodeString::~UnicodeString(0x5A18, (a1 + 2883));
  v10 = 17240;
  v11 = (a1 + 2155);
  v12 = -17280;
  do
  {
    v11 = (icu::UnicodeString::~UnicodeString(v10, v11) - 64);
    v12 += 64;
  }

  while (v12);

  icu::SharedObject::~SharedObject(a1);
}

void sub_1953B0360(icu::SimpleFormatter **a1)
{
  sub_1953B0238(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953B0398(uint64_t a1, int a2, unsigned int a3, int a4, int a5)
{
  if (a3 > 6)
  {
    return 0;
  }

  v5 = a1 + 17304;
  v6 = a1 + 23128;
LABEL_3:
  v7 = a5;
  v8 = a2;
  while (1)
  {
    result = *(v5 + 1920 * v8 + (qword_195492610[a3] << 7) + (a4 << 6) + 8 * a5);
    if (result)
    {
      return result;
    }

    v8 = *(v6 + 4 * v8);
    if (v8 == -1)
    {
      result = 0;
      a5 = 5;
      if (v7 != 5)
      {
        goto LABEL_3;
      }

      return result;
    }
  }
}

uint64_t sub_1953B0408(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = ures_open(0, *(a1 + 56), a3);
  if (*a3 <= 0)
  {
    operator new();
  }

  if (v4)
  {
    ures_close(v4);
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

icu::SimpleFormatter *sub_1953B0A24(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 23144);
  if (result)
  {
    icu::SimpleFormatter::~SimpleFormatter(result);
    result = MEMORY[0x19A8B2600]();
  }

  *(a1 + 23144) = a2;
  return result;
}

void sub_1953B0A70(void **a1)
{
  icu::FormattedValueStringBuilderImpl::~FormattedValueStringBuilderImpl(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::FormattedRelativeDateTime::FormattedRelativeDateTime(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = &unk_1F0941AA8;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 27;
  return result;
}

{
  v2 = *(a2 + 8);
  *result = &unk_1F0941AA8;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 27;
  return result;
}

void icu::FormattedRelativeDateTime::~FormattedRelativeDateTime(icu::FormattedRelativeDateTime *this)
{
  *this = &unk_1F0941AA8;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  icu::FormattedValue::~FormattedValue(this);
}

{
  icu::FormattedRelativeDateTime::~FormattedRelativeDateTime(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::FormattedRelativeDateTime::operator=(uint64_t a1, uint64_t a2)
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

void icu::FormattedRelativeDateTime::toString(icu::FormattedRelativeDateTime *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
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

void icu::FormattedRelativeDateTime::toTempString(icu::FormattedRelativeDateTime *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
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

icu::Appendable *icu::FormattedRelativeDateTime::appendTo(icu::FormattedRelativeDateTime *this, icu::Appendable *a2, UErrorCode *a3)
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

uint64_t icu::FormattedRelativeDateTime::nextPosition(icu::FormattedRelativeDateTime *this, icu::ConstrainedFieldPosition *a2, UErrorCode *a3)
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

icu::RelativeDateTimeFormatter *icu::RelativeDateTimeFormatter::RelativeDateTimeFormatter(icu::RelativeDateTimeFormatter *this, UErrorCode *a2)
{
  *this = &unk_1F0941AE8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0x10000000000;
  *(this + 5) = 0;
  icu::Locale::Locale((this + 48));
  icu::RelativeDateTimeFormatter::init(this, 0, 0, a2);
  return this;
}

void icu::RelativeDateTimeFormatter::init(icu::RelativeDateTimeFormatter *this, icu::NumberFormat *a2, icu::BreakIterator *a3, UErrorCode *a4)
{
  sub_1953B26D8(this + 48, this + 2, a4);
  if (*a4 > 0)
  {
    goto LABEL_3;
  }

  SharedInstance = icu::PluralRules::createSharedInstance(this + 48, 0, a4);
  if (*a4 > 0)
  {
    goto LABEL_3;
  }

  v10 = SharedInstance;
  sub_1952769E4(SharedInstance, this + 3);
  icu::SharedObject::removeRef(v10);
  if (a2)
  {
    operator new();
  }

  v11 = icu::NumberFormat::createSharedInstance(this + 48, 1, a4);
  if (*a4 > 0)
  {
LABEL_3:
    if (a3)
    {
      (*(*a3 + 8))(a3);
    }

    if (a2)
    {
      v9 = *(*a2 + 8);

      v9(a2);
    }
  }

  else
  {
    v12 = v11;
    sub_1952769E4(v11, this + 2);
    icu::SharedObject::removeRef(v12);
    if (a3)
    {
      operator new();
    }

    v13 = *(this + 5);
    if (v13)
    {
      icu::SharedObject::removeRef(v13);
      *(this + 5) = 0;
    }
  }
}

icu::RelativeDateTimeFormatter *icu::RelativeDateTimeFormatter::RelativeDateTimeFormatter(icu::RelativeDateTimeFormatter *this, const icu::Locale *a2, UErrorCode *a3)
{
  *this = &unk_1F0941AE8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0x10000000000;
  *(this + 5) = 0;
  icu::Locale::Locale((this + 48), a2);
  icu::RelativeDateTimeFormatter::init(this, 0, 0, a3);
  return this;
}

icu::RelativeDateTimeFormatter *icu::RelativeDateTimeFormatter::RelativeDateTimeFormatter(icu::RelativeDateTimeFormatter *this, const icu::Locale *a2, icu::NumberFormat *a3, UErrorCode *a4)
{
  *this = &unk_1F0941AE8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0x10000000000;
  *(this + 5) = 0;
  icu::Locale::Locale((this + 48), a2);
  icu::RelativeDateTimeFormatter::init(this, a3, 0, a4);
  return this;
}

{
  *this = &unk_1F0941AE8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0x10000000000;
  *(this + 5) = 0;
  icu::Locale::Locale((this + 48), a2);
  icu::RelativeDateTimeFormatter::init(this, a3, 0, a4);
  return this;
}

uint64_t icu::RelativeDateTimeFormatter::RelativeDateTimeFormatter(uint64_t a1, char **a2, icu::NumberFormat *a3, unsigned int a4, int a5, UErrorCode *a6)
{
  *a1 = &unk_1F0941AE8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a4;
  *(a1 + 36) = a5;
  *(a1 + 40) = 0;
  icu::Locale::Locale((a1 + 48), a2);
  if (*a6 <= 0)
  {
    if (a4 < 3 && (a5 & 0xFFFFFF00) == 0x100)
    {
      if (a5 != 258)
      {
        v16 = a1;
        v17 = a3;
        v15 = 0;
        goto LABEL_10;
      }

      SentenceInstance = icu::BreakIterator::createSentenceInstance(a2, a6, v12, v13);
      if (*a6 <= 0)
      {
        v15 = SentenceInstance;
        v16 = a1;
        v17 = a3;
LABEL_10:
        icu::RelativeDateTimeFormatter::init(v16, v17, v15, a6);
      }
    }

    else
    {
      *a6 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return a1;
}

void *icu::RelativeDateTimeFormatter::RelativeDateTimeFormatter(void *a1, uint64_t a2)
{
  *a1 = &unk_1F0941AE8;
  *(a1 + 1) = *(a2 + 8);
  a1[3] = *(a2 + 24);
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  icu::Locale::Locale((a1 + 6), a2 + 48);
  icu::SharedObject::addRef(a1[1]);
  icu::SharedObject::addRef(a1[2]);
  icu::SharedObject::addRef(a1[3]);
  v3 = a1[5];
  if (v3)
  {
    icu::SharedObject::addRef(v3);
  }

  return a1;
}

uint64_t icu::RelativeDateTimeFormatter::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1952769E4(*(a2 + 8), (a1 + 8));
    sub_1952769E4(*(a2 + 16), (a1 + 16));
    sub_1952769E4(*(a2 + 24), (a1 + 24));
    sub_1952769E4(*(a2 + 40), (a1 + 40));
    *(a1 + 32) = *(a2 + 32);
    icu::Locale::operator=((a1 + 48), a2 + 48);
  }

  return a1;
}

void icu::RelativeDateTimeFormatter::~RelativeDateTimeFormatter(icu::RelativeDateTimeFormatter *this)
{
  *this = &unk_1F0941AE8;
  v2 = *(this + 1);
  if (v2)
  {
    icu::SharedObject::removeRef(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    icu::SharedObject::removeRef(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    icu::SharedObject::removeRef(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    icu::SharedObject::removeRef(v5);
  }

  icu::Locale::~Locale((this + 48));

  icu::UObject::~UObject(this);
}

{
  icu::RelativeDateTimeFormatter::~RelativeDateTimeFormatter(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_1953B14B4(icu::RelativeDateTimeFormatter *a1, void (*a2)(void *, uint64_t, uint64_t, _OWORD *, int *, double), uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7, double a8)
{
  v23 = *MEMORY[0x1E69E9840];
  memset(v22, 0, sizeof(v22));
  icu::FormattedValueStringBuilderImpl::FormattedValueStringBuilderImpl(v22, 65);
  *&v22[0] = &unk_1F0941B60;
  v16 = (a1 + (a3 >> 1));
  if (a3)
  {
    a2 = *(*v16 + a2);
  }

  a2(v16, a6, a7, v22, a5, a8);
  if (*a5 <= 0)
  {
    memset(v21, 0, sizeof(v21));
    icu::FormattedStringBuilder::toUnicodeString((v22 + 8), v21);
    icu::RelativeDateTimeFormatter::adjustForContext(a1, v21);
    if ((SWORD4(v21[0]) & 0x8000u) == 0)
    {
      v17 = WORD4(v21[0]) >> 5;
    }

    else
    {
      v17 = HIDWORD(v21[0]);
    }

    a4 = icu::UnicodeString::doAppend(a4, v21, 0, v17);
    icu::UnicodeString::~UnicodeString(v18, v21);
  }

  icu::FormattedValueStringBuilderImpl::~FormattedValueStringBuilderImpl(v22);
  v19 = *MEMORY[0x1E69E9840];
  return a4;
}

void icu::RelativeDateTimeFormatter::formatImpl(uint64_t a1, int a2, unsigned int a3, uint64_t a4, UErrorCode *a5, double a6)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    if ((a2 & 0xFFFFFFFD) != 1)
    {
      v16 = 1;
      goto LABEL_7;
    }

    v18 = 0;
    icu::QuantityFormatter::formatAndSelect(*(*(a1 + 16) + 24), *(*(a1 + 24) + 24), a4 + 8, &v18, a5, a6);
    if (*a5 <= 0)
    {
      v11 = sub_1953B0398(*(a1 + 8), *(a1 + 32), a3, a2 == 3, v18);
      if (v11)
      {
        v20 = 0;
        memset(v19, 0, sizeof(v19));
        icu::number::impl::SimpleModifier::SimpleModifier(v19, v11, 64, 0, v12, v13);
        v14 = icu::FormattedStringBuilder::length((a4 + 8));
        icu::number::impl::SimpleModifier::formatAsPrefixSuffix(v19, (a4 + 8), 0, v14, a5);
        *&v19[0] = &unk_1F093F328;
        icu::UnicodeString::~UnicodeString(v15, (v19 + 8));
        icu::number::impl::Modifier::~Modifier(v19);
        goto LABEL_8;
      }

      v16 = 3;
LABEL_7:
      *a5 = v16;
    }
  }

LABEL_8:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t icu::RelativeDateTimeFormatter::formatToValue@<X0>(uint64_t result@<X0>, _DWORD *a2@<X3>, uint64_t a3@<X8>)
{
  return sub_1953B17F4(result, a2, a3);
}

{
  return sub_1953B2194(result, a2, a3);
}

uint64_t sub_1953B17F4@<X0>(uint64_t result@<X0>, _DWORD *a2@<X3>, uint64_t a3@<X8>)
{
  if (!*(result + 40))
  {
    operator new();
  }

  *a2 = 16;
  *a3 = &unk_1F0941AA8;
  *(a3 + 8) = 0;
  *(a3 + 16) = 16;
  return result;
}

uint64_t sub_1953B19E0(icu::RelativeDateTimeFormatter *a1, void (*a2)(void *, uint64_t, _OWORD *, int *, double), uint64_t a3, uint64_t a4, int *a5, uint64_t a6, double a7)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  icu::FormattedValueStringBuilderImpl::FormattedValueStringBuilderImpl(v20, 65);
  *&v20[0] = &unk_1F0941B60;
  v14 = (a1 + (a3 >> 1));
  if (a3)
  {
    a2 = *(*v14 + a2);
  }

  a2(v14, a6, v20, a5, a7);
  if (*a5 <= 0)
  {
    memset(v19, 0, sizeof(v19));
    icu::FormattedStringBuilder::toUnicodeString((v20 + 8), v19);
    icu::RelativeDateTimeFormatter::adjustForContext(a1, v19);
    if ((SWORD4(v19[0]) & 0x8000u) == 0)
    {
      v15 = WORD4(v19[0]) >> 5;
    }

    else
    {
      v15 = HIDWORD(v19[0]);
    }

    a4 = icu::UnicodeString::doAppend(a4, v19, 0, v15);
    icu::UnicodeString::~UnicodeString(v16, v19);
  }

  icu::FormattedValueStringBuilderImpl::~FormattedValueStringBuilderImpl(v20);
  v17 = *MEMORY[0x1E69E9840];
  return a4;
}

void icu::RelativeDateTimeFormatter::formatNumericImpl(uint64_t a1, unsigned int a2, uint64_t a3, UErrorCode *a4, double a5)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (a2 < 0xF)
    {
      v24 = 0;
      icu::QuantityFormatter::formatAndSelect(*(*(a1 + 16) + 24), *(*(a1 + 24) + 24), a3 + 8, &v24, a4, fabs(a5));
      if (*a4 > 0)
      {
        goto LABEL_13;
      }

      v13 = *(a1 + 8);
      v14 = *(a1 + 32);
      v15 = v24;
      v16 = v13 + 17304;
      v17 = v13 + 23128;
      while (2)
      {
        v18 = v15;
        v19 = *(a1 + 32);
        do
        {
          v20 = *(v16 + 1920 * v19 + (a2 << 7) + ((a5 >= 0.0) << 6) + 8 * v18);
          if (v20)
          {
            v26 = 0;
            memset(v25, 0, sizeof(v25));
            icu::number::impl::SimpleModifier::SimpleModifier(v25, v20, 64, 0, v11, v12);
            v21 = icu::FormattedStringBuilder::length((a3 + 8));
            icu::number::impl::SimpleModifier::formatAsPrefixSuffix(v25, (a3 + 8), 0, v21, a4);
            *&v25[0] = &unk_1F093F328;
            icu::UnicodeString::~UnicodeString(v22, (v25 + 8));
            icu::number::impl::Modifier::~Modifier(v25);
            goto LABEL_13;
          }

          v19 = *(v17 + 4 * v19);
        }

        while (v19 != -1);
        v15 = 5;
        if (v18 != 5)
        {
          continue;
        }

        break;
      }

      v7 = 3;
    }

    else
    {
      v7 = 1;
    }

    *a4 = v7;
  }

LABEL_13:
  v23 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1953B1D50@<X0>(uint64_t result@<X0>, _DWORD *a2@<X3>, uint64_t a3@<X8>)
{
  if (!*(result + 40))
  {
    operator new();
  }

  *a2 = 16;
  *a3 = &unk_1F0941AA8;
  *(a3 + 8) = 0;
  *(a3 + 16) = 16;
  return result;
}

uint64_t sub_1953B1F24(icu::RelativeDateTimeFormatter *a1, void (*a2)(void *, uint64_t, uint64_t, _OWORD *, int *), uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v21 = *MEMORY[0x1E69E9840];
  memset(v20, 0, sizeof(v20));
  icu::FormattedValueStringBuilderImpl::FormattedValueStringBuilderImpl(v20, 65);
  *&v20[0] = &unk_1F0941B60;
  v14 = (a1 + (a3 >> 1));
  if (a3)
  {
    a2 = *(*v14 + a2);
  }

  a2(v14, a6, a7, v20, a5);
  if (*a5 <= 0)
  {
    memset(v19, 0, sizeof(v19));
    icu::FormattedStringBuilder::toUnicodeString((v20 + 8), v19);
    icu::RelativeDateTimeFormatter::adjustForContext(a1, v19);
    if ((SWORD4(v19[0]) & 0x8000u) == 0)
    {
      v15 = WORD4(v19[0]) >> 5;
    }

    else
    {
      v15 = HIDWORD(v19[0]);
    }

    a4 = icu::UnicodeString::doAppend(a4, v19, 0, v15);
    icu::UnicodeString::~UnicodeString(v16, v19);
  }

  icu::FormattedValueStringBuilderImpl::~FormattedValueStringBuilderImpl(v20);
  v17 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t icu::RelativeDateTimeFormatter::formatAbsoluteImpl(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    if (a2 <= 5 && a3 <= 0xE && (a2 == 5 || a3 != 11))
    {
      v5 = *(result + 8);
      v6 = *(result + 32);
      while (1)
      {
        v8 = v5 + 24 + 5760 * v6 + 384 * a3 + (a2 << 6);
        if (*(v8 + 8) > 0x1Fu)
        {
          break;
        }

        v6 = *(v5 + 23128 + 4 * v6);
        if (v6 == -1)
        {
          v8 = v5 + 23064;
          return icu::FormattedStringBuilder::insert((a4 + 8), *(a4 + 140), v8, 64, 0, a5);
        }
      }

      return icu::FormattedStringBuilder::insert((a4 + 8), *(a4 + 140), v8, 64, 0, a5);
    }

    else
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return result;
}

uint64_t sub_1953B2194@<X0>(uint64_t result@<X0>, _DWORD *a2@<X3>, uint64_t a3@<X8>)
{
  if (!*(result + 40))
  {
    operator new();
  }

  *a2 = 16;
  *a3 = &unk_1F0941AA8;
  *(a3 + 8) = 0;
  *(a3 + 16) = 16;
  return result;
}

void icu::RelativeDateTimeFormatter::formatRelativeImpl(uint64_t a1, unsigned int a2, uint64_t a3, UErrorCode *a4, double a5)
{
  if (*a4 <= 0)
  {
    v10 = 0;
    if (fabs(a5) >= 2.1)
    {
      v13 = 6;
      v14 = 1;
    }

    else
    {
      v11 = 0.5;
      if (a5 * 100.0 < 0.0)
      {
        v11 = -0.5;
      }

      v12 = (a5 * 100.0 + v11);
      v13 = 6;
      v14 = 1;
      if (v12 < 0)
      {
        if (v12 == -200)
        {
          v10 = 0;
          v14 = 0;
          v13 = 0;
        }

        else if (v12 == -100)
        {
          v10 = 0;
          v14 = 0;
          v13 = 1;
        }
      }

      else if (v12)
      {
        if (v12 == 100)
        {
          v10 = 0;
          v14 = 0;
          v13 = 3;
        }

        else if (v12 == 200)
        {
          v10 = 0;
          v14 = 0;
          v13 = 4;
        }
      }

      else
      {
        v14 = 0;
        v13 = 2;
        v10 = 1;
      }
    }

    v15 = 10;
    switch(a2)
    {
      case 0u:
        goto LABEL_44;
      case 1u:
        v15 = 12;
        if (v14)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 2u:
        v15 = 9;
        if (v14)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 3u:
        v15 = 8;
        if (v14)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 4u:
        v15 = 7;
        if (v14)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 5u:
        v15 = 13;
        if (v14)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 6u:
        v15 = 14;
        if (v14)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 7u:
        if ((v10 & 1) == 0)
        {
          goto LABEL_46;
        }

        v13 = 5;
        v15 = 11;
LABEL_45:
        icu::RelativeDateTimeFormatter::formatAbsoluteImpl(a1, v13, v15, a3, a4);
        if (!icu::FormattedStringBuilder::length((a3 + 8)))
        {
LABEL_46:

          icu::RelativeDateTimeFormatter::formatNumericImpl(a1, a2, a3, a4, a5);
        }

        break;
      case 8u:
        v15 = 0;
        if (v14)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 9u:
        v15 = 1;
        if (v14)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 0xAu:
        v15 = 2;
LABEL_44:
        if ((v14 & 1) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      case 0xBu:
        v15 = 3;
        if (v14)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 0xCu:
        v15 = 4;
        if (v14)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 0xDu:
        v15 = 5;
        if (v14)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 0xEu:
        v15 = 6;
        if (v14)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      default:
        goto LABEL_46;
    }
  }
}

icu::UnicodeString *icu::RelativeDateTimeFormatter::adjustForContext(icu::RelativeDateTimeFormatter *this, icu::UnicodeString *a2)
{
  if (*(this + 5))
  {
    v3 = *(a2 + 4);
    v4 = v3;
    LODWORD(v5) = v3 >> 5;
    if (v4 >= 0)
    {
      v5 = v5;
    }

    else
    {
      v5 = *(a2 + 3);
    }

    if (v5)
    {
      v7 = icu::UnicodeString::char32At(v5, a2, 0);
      if (u_islower(v7))
      {
        umtx_lock(&unk_1EAEC9FE8);
        icu::UnicodeString::toTitle(a2, *(*(this + 5) + 24), (this + 48), 768);
        umtx_unlock(&unk_1EAEC9FE8);
      }
    }
  }

  return a2;
}

uint64_t icu::RelativeDateTimeFormatter::checkNoAdjustForContext(icu::RelativeDateTimeFormatter *this, UErrorCode *a2)
{
  if (!*(this + 5))
  {
    return 1;
  }

  result = 0;
  *a2 = U_UNSUPPORTED_ERROR;
  return result;
}

void sub_1953B26D8(uint64_t a1, UErrorCode *a2, icu::UnifiedCache *this)
{
  v12[28] = *MEMORY[0x1E69E9840];
  Instance = icu::UnifiedCache::getInstance(this, a2);
  if (*this <= 0)
  {
    v7 = Instance;
    v10 = 0;
    v11 = 0;
    v9 = &unk_1F0941C18;
    icu::Locale::Locale(v12, a1);
    sub_1952C1AD0(v7, &v9, 0, a2, this);
    v9 = &unk_1F0941C18;
    icu::Locale::~Locale(v12);
    icu::CacheKeyBase::~CacheKeyBase(&v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t ureldatefmt_openResult(int *a1)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t ureldatefmt_resultAsValue(uint64_t result, int *a2)
{
  v2 = *a2;
  if (*a2 > 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if (result)
  {
    if (*(result + 16) == 1179796564)
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

_DWORD *ureldatefmt_closeResult(_DWORD *result)
{
  if (result)
  {
    v1 = result;
    if (result[4] == 1179796564)
    {
      icu::FormattedRelativeDateTime::~FormattedRelativeDateTime((result + 6));
      v1[4] = 0;
      *v1 = 0;

      JUMPOUT(0x19A8B2600);
    }
  }

  return result;
}

uint64_t ureldatefmt_open(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    operator new();
  }

  v5 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t ureldatefmt_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t ureldatefmt_formatNumeric(icu::RelativeDateTimeFormatter *a1, uint64_t a2, char *a3, unsigned int a4, int *a5, double a6)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    v6 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = 0;
    *a5 = 1;
    goto LABEL_13;
  }

  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v19 = 0u;
  v20 = 0u;
  v22 = 0;
  v21 = 0u;
  v18 = &unk_1F0935D00;
  LOWORD(v19) = 2;
  if (a3)
  {
    icu::UnicodeString::setTo(&v18, a3, 0, a4);
  }

  sub_1953B19E0(a1, icu::RelativeDateTimeFormatter::formatNumericImpl, 0, &v18, a5, a2, a6);
  v13 = *a5;
  if (v13 <= 0)
  {
    v17 = a3;
    v6 = icu::UnicodeString::extract(&v18, &v17, a4, a5);
    v16 = v17;
    v13 = &v16;
  }

  else
  {
    v6 = 0;
  }

  icu::UnicodeString::~UnicodeString(v13, &v18);
LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

void ureldatefmt_formatNumericToResult(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 > 0)
  {
    return;
  }

  v12 = v4;
  v13 = v5;
  v6 = a3;
  if (!a3)
  {
    v7 = 1;
    goto LABEL_6;
  }

  if (*(a3 + 16) != 1179796564)
  {
    v7 = 3;
LABEL_6:
    v6 = 0;
    *a4 = v7;
  }

  sub_1953B1D50(a1, a4, v9);
  v8 = *(v6 + 32);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(v6 + 32) = v10;
  v10 = 0;
  *(v6 + 40) = v11;
  v11 = 27;
  icu::FormattedRelativeDateTime::~FormattedRelativeDateTime(v9);
}

uint64_t ureldatefmt_format(icu::RelativeDateTimeFormatter *a1, uint64_t a2, char *a3, unsigned int a4, int *a5, double a6)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    v6 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = 0;
    *a5 = 1;
    goto LABEL_13;
  }

  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v19 = 0u;
  v20 = 0u;
  v22 = 0;
  v21 = 0u;
  v18 = &unk_1F0935D00;
  LOWORD(v19) = 2;
  if (a3)
  {
    icu::UnicodeString::setTo(&v18, a3, 0, a4);
  }

  sub_1953B19E0(a1, icu::RelativeDateTimeFormatter::formatRelativeImpl, 0, &v18, a5, a2, a6);
  v13 = *a5;
  if (v13 <= 0)
  {
    v17 = a3;
    v6 = icu::UnicodeString::extract(&v18, &v17, a4, a5);
    v16 = v17;
    v13 = &v16;
  }

  else
  {
    v6 = 0;
  }

  icu::UnicodeString::~UnicodeString(v13, &v18);
LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

void ureldatefmt_formatToResult(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if (*a4 > 0)
  {
    return;
  }

  v12 = v4;
  v13 = v5;
  v6 = a3;
  if (!a3)
  {
    v7 = 1;
    goto LABEL_6;
  }

  if (*(a3 + 16) != 1179796564)
  {
    v7 = 3;
LABEL_6:
    v6 = 0;
    *a4 = v7;
  }

  sub_1953B1D50(a1, a4, v9);
  v8 = *(v6 + 32);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(v6 + 32) = v10;
  v10 = 0;
  *(v6 + 40) = v11;
  v11 = 27;
  icu::FormattedRelativeDateTime::~FormattedRelativeDateTime(v9);
}

uint64_t ureldatefmt_combineDateAndTime(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, UChar *a6, uint64_t a7, UErrorCode *a8)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*a8 > 0)
  {
    v8 = 0;
    goto LABEL_18;
  }

  if (!a6)
  {
    if (!a7)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if ((a7 & 0x80000000) != 0)
  {
    goto LABEL_17;
  }

  if (a2)
  {
    if (a3 < -1)
    {
      goto LABEL_17;
    }
  }

  else if (a3)
  {
    goto LABEL_17;
  }

  if (!a4)
  {
    if (!a5)
    {
      goto LABEL_13;
    }

LABEL_17:
    v8 = 0;
    *a8 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_18;
  }

  if (a5 <= -2)
  {
    goto LABEL_17;
  }

LABEL_13:
  memset(v26, 0, sizeof(v26));
  v23 = a2;
  icu::UnicodeString::UnicodeString(v26, a3 == -1, &v23);
  v20[2] = v23;
  memset(v25, 0, sizeof(v25));
  v22 = a4;
  icu::UnicodeString::UnicodeString(v25, a5 == -1, &v22);
  v20[1] = v22;
  memset(v24, 0, sizeof(v24));
  icu::UnicodeString::UnicodeString(v24, a6, 0, a7);
  icu::SimpleFormatter::format(*(*(a1 + 8) + 23144), v25, v26, v24, a8);
  v8 = 0;
  v15 = *a8;
  if (v15 <= 0)
  {
    v21 = a6;
    v8 = icu::UnicodeString::extract(v24, &v21, a7, a8);
    v20[0] = v21;
    v15 = v20;
  }

  icu::UnicodeString::~UnicodeString(v15, v24);
  icu::UnicodeString::~UnicodeString(v16, v25);
  icu::UnicodeString::~UnicodeString(v17, v26);
LABEL_18:
  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_1953B30D8(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F0941A80;
  v1 = (result + 32);
  v2 = result + 24;
  v3 = 17280;
  do
  {
    *(v1 - 1) = &unk_1F0935D00;
    *v1 = 2;
    v1 += 32;
    v2 += 64;
    v3 -= 64;
  }

  while (v3);
  v4 = 0;
  *(result + 23064) = &unk_1F0935D00;
  *(result + 23072) = 2;
  *(result + 23144) = 0;
  v5 = (result + 17368);
  do
  {
    v6 = 0;
    v7 = v5;
    do
    {
      v8 = 8;
      v9 = v7;
      do
      {
        *(v9 - 4) = 0uLL;
        *v9++ = 0uLL;
        v8 -= 2;
      }

      while (v8);
      ++v6;
      v7 += 8;
    }

    while (v6 != 15);
    ++v4;
    v5 += 120;
  }

  while (v4 != 3);
  *(result + 23128) = -1;
  *(result + 23136) = -1;
  return result;
}

void sub_1953B31D4(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_1953B320C(uint64_t a1, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v74[9] = *MEMORY[0x1E69E9840];
  v62 = 0;
  v63 = a2;
  memset(v61, 0, sizeof(v61));
  result = (*(*a3 + 88))(v61, a3, a5);
  if (*a5 <= 0)
  {
    result = icu::ResourceTable::getKeyAndValue(v61, 0, &v63, a3);
    if (result)
    {
      v10 = 0;
      do
      {
        v11 = (*(*a3 + 24))(a3);
        v12 = v63;
        if (v11 == 3)
        {
          v13 = sub_1953B3E68(v63);
          memset(v74, 0, 64);
          LODWORD(v67[0]) = 0;
          *&v71 = (*(*a3 + 40))(a3, v67, a5);
          icu::UnicodeString::UnicodeString(v74, 1, &v71);
          v60[1] = v71;
          v14 = *a5;
          if (v14 <= 0)
          {
            icu::UnicodeString::UnicodeString(&v71, v74);
            v15 = WORD4(v71) >> 5;
            if (SWORD4(v71) < 0)
            {
              v15 = HIDWORD(v71);
            }

            v16 = icu::UnicodeString::doEqualsSubstring(&v71, v15 - 7, 7, L"-narrow-short", 0, 7);
            v60[0] = L"-narrow-short";
            v17 = v60;
            if (v16)
            {
              v18 = 2;
            }

            else
            {
              v25 = WORD4(v71) >> 5;
              if (SWORD4(v71) < 0)
              {
                v25 = HIDWORD(v71);
              }

              v18 = icu::UnicodeString::doEqualsSubstring(&v71, v25 - 6, 6, L"-short", 0, 6);
              v59 = L"-short";
              v17 = &v59;
            }

            icu::UnicodeString::~UnicodeString(v17, &v71);
            if (v13 != v18 && ((v14 = *(a1 + 24) + 23128, v26 = *(v14 + 4 * v13), v26 == -1) || v26 == v18))
            {
              *(v14 + 4 * v13) = v18;
            }

            else
            {
              v14 = 3;
              *a5 = 3;
            }
          }

          icu::UnicodeString::~UnicodeString(v14, v74);
          goto LABEL_49;
        }

        v19 = sub_1953B3E68(v63);
        *(a1 + 12) = v19;
        v20 = strlen(v12);
        if (v19 == 1)
        {
          v21 = -6;
        }

        else
        {
          v21 = 0;
        }

        if (v19 == 2)
        {
          v21 = -7;
        }

        v22 = v21 + v20;
        if (v22 <= 4)
        {
          if (v22 == 3)
          {
            v24 = *v12;
            if (v24 > 0x72)
            {
              if (v24 == 115)
              {
                v56 = v12[1];
                if (v56 == 97)
                {
                  if (v12[2] != 116)
                  {
                    goto LABEL_32;
                  }

                  v23 = 14;
                }

                else
                {
                  if (v56 != 117 || v12[2] != 110)
                  {
LABEL_32:
                    *(a1 + 16) = -1;
                    goto LABEL_49;
                  }

                  v23 = 8;
                }
              }

              else if (v24 == 116)
              {
                v57 = v12[1];
                if (v57 == 104)
                {
                  if (v12[2] != 117)
                  {
                    goto LABEL_32;
                  }

                  v23 = 12;
                }

                else
                {
                  if (v57 != 117 || v12[2] != 101)
                  {
                    goto LABEL_32;
                  }

                  v23 = 10;
                }
              }

              else
              {
                if (v24 != 119 || v12[1] != 101 || v12[2] != 100)
                {
                  goto LABEL_32;
                }

                v23 = 11;
              }
            }

            else if (v24 == 100)
            {
              if (v12[1] != 97 || v12[2] != 121)
              {
                goto LABEL_32;
              }

              v23 = 3;
            }

            else if (v24 == 102)
            {
              if (v12[1] != 114 || v12[2] != 105)
              {
                goto LABEL_32;
              }

              v23 = 13;
            }

            else
            {
              if (v24 != 109 || v12[1] != 111 || v12[2] != 110)
              {
                goto LABEL_32;
              }

              v23 = 9;
            }
          }

          else
          {
            if (v22 != 4)
            {
              goto LABEL_32;
            }

            if (!strncmp(v12, "hour", 4uLL))
            {
              v23 = 2;
            }

            else
            {
              v23 = 4;
              if (strncmp(v12, "week", 4uLL))
              {
                if (strncmp(v12, "year", 4uLL))
                {
                  goto LABEL_32;
                }

                v23 = 7;
              }
            }
          }
        }

        else if (v22 == 5)
        {
          v23 = 5;
          if (strncmp(v12, "month", 5uLL))
          {
            goto LABEL_32;
          }
        }

        else if (v22 == 6)
        {
          if (!strncmp(v12, "minute", 6uLL))
          {
            v23 = 1;
          }

          else
          {
            if (strncmp(v12, "second", 6uLL))
            {
              goto LABEL_32;
            }

            v23 = 0;
          }
        }

        else
        {
          if (v22 != 7 || strncmp(v12, "quarter", 7uLL))
          {
            goto LABEL_32;
          }

          v23 = 6;
        }

        *(a1 + 16) = v23;
        v65 = 0;
        __s1 = v12;
        memset(v64, 0, sizeof(v64));
        (*(*a3 + 88))(v64, a3, a5);
        if (*a5 <= 0 && icu::ResourceTable::getKeyAndValue(v64, 0, &__s1, a3))
        {
          v27 = 0;
          while (1)
          {
            if (*__s1 == 100 && __s1[1] == 110 && !__s1[2] && !(*(*a3 + 24))(a3) && *a5 <= 0)
            {
              v29 = sub_1953B3EE8(*(a1 + 16));
              if ((v29 & 0x80000000) == 0)
              {
                v30 = *(a1 + 24) + 5760 * *(a1 + 12) + 384 * v29;
                if (*(v30 + 352) <= 0x1Fu)
                {
                  LODWORD(v67[0]) = 0;
                  *&v71 = (*(*a3 + 32))(a3, v67, a5);
                  icu::UnicodeString::UnicodeString(v74, 1, &v71);
                  v60[5] = v71;
                  icu::UnicodeString::fastCopyFrom((v30 + 344), v74);
                  icu::UnicodeString::~UnicodeString(v31, v74);
                }
              }
            }

            if ((*(*a3 + 24))(a3) != 2)
            {
              goto LABEL_97;
            }

            v32 = __s1;
            if (!strcmp(__s1, "relative"))
            {
              break;
            }

            if (!strcmp(v32, "relativeTime"))
            {
              v68 = v32;
              memset(v67, 0, 40);
              (*(*a3 + 88))(v67, a3, a5);
              if (*a5 <= 0)
              {
                v33 = sub_1953B3F0C(*(a1 + 16));
                if ((v33 & 0x80000000) == 0)
                {
                  v34 = v33;
                  if (icu::ResourceTable::getKeyAndValue(v67, 0, &v68, a3))
                  {
                    v35 = 0;
                    v58 = v34;
                    while (1)
                    {
                      v36 = v68;
                      if (!strcmp(v68, "past"))
                      {
                        break;
                      }

                      if (!strcmp(v36, "future"))
                      {
                        v37 = 1;
LABEL_85:
                        *(a1 + 8) = v37;
                        v69 = v36;
                        v73 = 0;
                        v71 = 0u;
                        v72 = 0u;
                        (*(*a3 + 88))(&v71, a3, a5);
                        if (*a5 <= 0 && icu::ResourceTable::getKeyAndValue(&v71, 0, &v69, a3))
                        {
                          v38 = 1;
                          do
                          {
                            if (!(*(*a3 + 24))(a3))
                            {
                              v41 = icu::StandardPlural::indexOrNegativeFromString(v69, v39);
                              if ((v41 & 0x80000000) == 0 && !*(*(a1 + 24) + 1920 * *(a1 + 12) + (v58 << 7) + (*(a1 + 8) << 6) + 17304 + 8 * v41))
                              {
                                operator new();
                              }
                            }
                          }

                          while (icu::ResourceTable::getKeyAndValue(&v71, v38++, &v69, a3));
                        }
                      }

                      if (!icu::ResourceTable::getKeyAndValue(v67, ++v35, &v68, a3))
                      {
                        goto LABEL_97;
                      }
                    }

                    v37 = 0;
                    goto LABEL_85;
                  }
                }
              }
            }

LABEL_97:
            if (!icu::ResourceTable::getKeyAndValue(v64, ++v27, &__s1, a3))
            {
              goto LABEL_49;
            }
          }

          v70 = v32;
          v73 = 0;
          v71 = 0u;
          v72 = 0u;
          (*(*a3 + 88))(&v71, a3, a5);
          if (*a5 > 0 || !icu::ResourceTable::getKeyAndValue(&v71, 0, &v70, a3))
          {
            goto LABEL_97;
          }

          v42 = 1;
          while (2)
          {
            if (!(*(*a3 + 24))(a3))
            {
              v44 = *v70;
              if (v44 > 0x30)
              {
                if (v44 == 49)
                {
                  if (v70[1])
                  {
                    goto LABEL_102;
                  }

                  v45 = 0;
                  v46 = 3;
                }

                else
                {
                  if (v44 != 50 || v70[1])
                  {
                    goto LABEL_102;
                  }

                  v45 = 0;
                  v46 = 4;
                }
              }

              else if (v44 == 45)
              {
                v47 = v70[1];
                if (v47 == 49)
                {
                  if (v70[2])
                  {
                    goto LABEL_102;
                  }

                  v45 = 1;
                  v46 = 1;
                }

                else
                {
                  if (v47 != 50 || v70[2])
                  {
                    goto LABEL_102;
                  }

                  v46 = 0;
                  v45 = 1;
                }
              }

              else
              {
                if (v44 != 48 || v70[1])
                {
                  goto LABEL_102;
                }

                v45 = 0;
                v46 = 2;
              }

              v48 = *(a1 + 16);
              v49 = sub_1953B3F0C(v48);
              if ((v45 & 1) == 0 && v44 == 48 && v49 == 7)
              {
                v51 = *(a1 + 24) + 5760 * *(a1 + 12);
                if (*(v51 + 4576) <= 0x1Fu)
                {
                  LODWORD(v69) = 0;
                  v67[0] = (*(*a3 + 32))(a3, &v69, a5);
                  icu::UnicodeString::UnicodeString(v74, 1, v67);
                  v60[3] = v67[0];
                  icu::UnicodeString::fastCopyFrom((v51 + 4568), v74);
                  icu::UnicodeString::~UnicodeString(v52, v74);
                  v48 = *(a1 + 16);
                }
              }

              v53 = sub_1953B3EE8(v48);
              if ((v53 & 0x80000000) == 0)
              {
                v54 = *(a1 + 24) + 5760 * *(a1 + 12) + 384 * v53 + (v46 << 6);
                if (*(v54 + 32) <= 0x1Fu)
                {
                  LODWORD(v69) = 0;
                  v67[0] = (*(*a3 + 32))(a3, &v69, a5);
                  icu::UnicodeString::UnicodeString(v74, 1, v67);
                  v60[2] = v67[0];
                  icu::UnicodeString::fastCopyFrom((v54 + 24), v74);
                  icu::UnicodeString::~UnicodeString(v55, v74);
                }
              }
            }

LABEL_102:
            if (!icu::ResourceTable::getKeyAndValue(&v71, v42++, &v70, a3))
            {
              goto LABEL_97;
            }

            continue;
          }
        }

LABEL_49:
        result = icu::ResourceTable::getKeyAndValue(v61, ++v10, &v63, a3);
      }

      while (result);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}