BOOL sub_195334330(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(a1 + 8) < 0)
  {
    v2 = *(a1 + 12);
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    if (v1 < 0x20)
    {
      return 0;
    }

    v2 = v1 >> 5;
  }

  v3 = *(a1 + 24);
  if ((v1 & 2) != 0)
  {
    v4 = (a1 + 10);
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v5 = *v4;
  if (v5 != 104)
  {
    if ((v1 & 0x8000u) == 0)
    {
      v6 = v1 >> 5;
    }

    else
    {
      v6 = *(a1 + 12);
    }

    if (!v6)
    {
      return 0;
    }

    if (v2 < 2 || v5 != 72)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  v6 = *(a1 + 12);
  if (v2 > 1)
  {
    if ((v1 & 0x8000u) == 0)
    {
      v6 = v1 >> 5;
    }

LABEL_18:
    if (v6 >= 2)
    {
      if ((v1 & 2) != 0)
      {
        v7 = a1 + 10;
      }

      else
      {
        v7 = *(a1 + 24);
      }

      if ((*(v7 + 2) | 0x20) == 0x69)
      {
        v8 = 1;
        if (v2 == 2 || v6 == 2)
        {
          return v8;
        }

        v8 = 1;
        if ((((*(v7 + 4) - 65) >> 2) | ((*(v7 + 4) - 65) << 14)) > 9u || ((1 << ((*(v7 + 4) - 65) >> 2)) & 0x303) == 0)
        {
          return v8;
        }
      }

      goto LABEL_33;
    }

LABEL_32:
    if (v6)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if ((v1 & 0x8000) != 0)
  {
    goto LABEL_32;
  }

LABEL_33:
  v10 = *(a1 + 24);
  if ((v1 & 2) != 0)
  {
    v10 = (a1 + 10);
  }

  return (*v10 & 0xFFDF) == 73;
}

uint64_t sub_195334454(uint64_t a1, uint64_t a2, const icu::UnicodeString *a3, const icu::UnicodeString *a4, const icu::UnicodeString *a5, const icu::UnicodeString *a6, UErrorCode *a7)
{
  v12 = sub_195334D3C(a1, a4, a6, a7);
  *v12 = &unk_1F093DF38;
  *(v12 + 152) = a2;
  *(v12 + 168) = &unk_1F0935D00;
  *(v12 + 176) = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments((v12 + 160), a3, 2, 2, 0, a7);
  *(a1 + 240) = &unk_1F0935D00;
  *(a1 + 248) = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments((a1 + 232), a5, 2, 2, 0, a7);
  return a1;
}

BOOL sub_19533454C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(a1 + 8) < 0)
  {
    v2 = *(a1 + 12);
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    if (v1 < 0x20)
    {
      return 0;
    }

    v2 = v1 >> 5;
  }

  v3 = *(a1 + 24);
  if ((v1 & 2) != 0)
  {
    v4 = (a1 + 10);
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v5 = *v4;
  if (v5 == 111)
  {
    return 1;
  }

  v7 = v1 >> 5;
  if ((v1 & 0x8000u) != 0)
  {
    v7 = *(a1 + 12);
  }

  if (!v7)
  {
    return 0;
  }

  v6 = 1;
  if (v5 != 56 && v5 != 79)
  {
    if (v5 == 104)
    {
      if (v2 < 2)
      {
        return 0;
      }
    }

    else if (v2 < 2 || v5 != 72)
    {
      if (v2 < 2)
      {
        return 0;
      }

      goto LABEL_27;
    }

    if (v7 != 1)
    {
      v8 = (v1 & 2) != 0 ? a1 + 10 : *(a1 + 24);
      if ((*(v8 + 2) | 0x20) == 0x6F)
      {
        return 1;
      }
    }

LABEL_27:
    v9 = *(a1 + 24);
    if ((v1 & 2) != 0)
    {
      v9 = (a1 + 10);
    }

    v10 = *v9 != 49 || v7 == 1;
    return !v10 && v9[1] == 49 && (v2 == 2 || v7 >= 3 && v9[2] == 32);
  }

  return v6;
}

BOOL sub_195334660(unsigned __int16 *a1)
{
  v3 = a1[4];
  if (v3 < 0x20)
  {
    return 0;
  }

  v7 = v1;
  v8 = v2;
  v6 = 0;
  v4 = icu::UnicodeString::char32At(v3, a1, 0);
  return uscript_getScript(v4, &v6) != 19;
}

uint64_t sub_1953346B0(uint64_t a1, const icu::UnicodeString *a2, const icu::UnicodeString *a3, UErrorCode *a4)
{
  v56[9] = *MEMORY[0x1E69E9840];
  v8 = sub_195334D3C(a1, a2, a3, a4);
  *v8 = &unk_1F093DFE8;
  v9 = (v8 + 27);
  icu::UnicodeString::UnicodeString((v8 + 19), a2);
  icu::UnicodeString::UnicodeString(v9, a3);
  icu::UnicodeString::UnicodeString(a1 + 288, 0);
  icu::UnicodeString::UnicodeString(a1 + 360, 0);
  icu::UnicodeString::UnicodeString(a1 + 432, 0);
  icu::UnicodeString::UnicodeString(a1 + 504, 0);
  memset(v56, 0, 64);
  icu::UnicodeString::UnicodeString(v56, a2);
  sub_1951D6EE0(v49, L"{0} ");
  if (v50 >= 0)
  {
    v10 = v50 >> 5;
  }

  else
  {
    v10 = HIDWORD(v50);
  }

  if ((v50 & 1) != 0 || v10 <= 0)
  {
    icu::UnicodeString::~UnicodeString(v50, v49);
  }

  else
  {
    if (SLOWORD(v56[1]) >= 0)
    {
      v11 = LOWORD(v56[1]) >> 5;
    }

    else
    {
      v11 = HIDWORD(v56[1]);
    }

    if ((v50 & 2) != 0)
    {
      v12 = &v50 + 2;
    }

    else
    {
      v12 = v52;
    }

    v13 = icu::UnicodeString::indexOf(v56, v12, 0, v10, 0, v11);
    icu::UnicodeString::~UnicodeString(v14, v49);
    v15 = 0;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  sub_1951D6EE0(v49, "{");
  sub_1951D6EE0(v53, L"{0} ");
  if (SLOWORD(v56[1]) >= 0)
  {
    v16 = LOWORD(v56[1]) >> 5;
  }

  else
  {
    v16 = HIDWORD(v56[1]);
  }

  if (v50 >= 0)
  {
    v17 = v50 >> 5;
  }

  else
  {
    v17 = HIDWORD(v50);
  }

  v18 = v54 >> 5;
  if ((v54 & 0x8000u) != 0)
  {
    v18 = v55;
  }

  icu::UnicodeString::findAndReplace(v56, 0, v16, v49, 0, v17, v53, 0, v18);
  icu::UnicodeString::~UnicodeString(v19, v53);
  icu::UnicodeString::~UnicodeString(v20, v49);
  v15 = 1;
LABEL_24:
  v50 = &unk_1F0935D00;
  v51 = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments(v49, v56, 2, 2, 0, a4);
  icu::SimpleFormatter::operator=(a1 + 280, v49);
  icu::SimpleFormatter::~SimpleFormatter(v49);
  sub_1951D6EE0(v49, " ");
  if (v50 >= 0)
  {
    v21 = v50 >> 5;
  }

  else
  {
    v21 = HIDWORD(v50);
  }

  if ((v50 & 1) != 0 || v21 <= 0)
  {
    icu::UnicodeString::~UnicodeString(v50, v49);
  }

  else
  {
    if (SLOWORD(v56[1]) >= 0)
    {
      v22 = LOWORD(v56[1]) >> 5;
    }

    else
    {
      v22 = HIDWORD(v56[1]);
    }

    if ((v50 & 2) != 0)
    {
      v23 = &v50 + 2;
    }

    else
    {
      v23 = v52;
    }

    v24 = icu::UnicodeString::indexOf(v56, v23, 0, v21, 0, v22);
    icu::UnicodeString::~UnicodeString(v25, v49);
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }
  }

  sub_1951D6EE0(v49, L"{1}");
  sub_1951D6EE0(v53, " ");
  if (SLOWORD(v56[1]) >= 0)
  {
    v26 = LOWORD(v56[1]) >> 5;
  }

  else
  {
    v26 = HIDWORD(v56[1]);
  }

  if (v50 >= 0)
  {
    v27 = v50 >> 5;
  }

  else
  {
    v27 = HIDWORD(v50);
  }

  v28 = v54 >> 5;
  if ((v54 & 0x8000u) != 0)
  {
    v28 = v55;
  }

  icu::UnicodeString::findAndReplace(v56, 0, v26, v49, 0, v27, v53, 0, v28);
  icu::UnicodeString::~UnicodeString(v29, v53);
  icu::UnicodeString::~UnicodeString(v30, v49);
LABEL_47:
  v50 = &unk_1F0935D00;
  v51 = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments(v49, v56, 2, 2, 0, a4);
  icu::SimpleFormatter::operator=(a1 + 424, v49);
  icu::SimpleFormatter::~SimpleFormatter(v49);
  if (v15)
  {
    sub_1951D6EE0(v49, L"{0} ");
    sub_1951D6EE0(v53, "{");
    if (SLOWORD(v56[1]) >= 0)
    {
      v31 = LOWORD(v56[1]) >> 5;
    }

    else
    {
      v31 = HIDWORD(v56[1]);
    }

    if (v50 >= 0)
    {
      v32 = v50 >> 5;
    }

    else
    {
      v32 = HIDWORD(v50);
    }

    v33 = v54 >> 5;
    if ((v54 & 0x8000u) != 0)
    {
      v33 = v55;
    }

    icu::UnicodeString::findAndReplace(v56, 0, v31, v49, 0, v32, v53, 0, v33);
    icu::UnicodeString::~UnicodeString(v34, v53);
    icu::UnicodeString::~UnicodeString(v35, v49);
  }

  v50 = &unk_1F0935D00;
  v51 = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments(v49, v56, 2, 2, 0, a4);
  icu::SimpleFormatter::operator=(a1 + 352, v49);
  icu::SimpleFormatter::~SimpleFormatter(v49);
  icu::UnicodeString::operator=(v56, a3);
  sub_1951D6EE0(v49, " ");
  if (v50 >= 0)
  {
    v36 = v50 >> 5;
  }

  else
  {
    v36 = HIDWORD(v50);
  }

  if ((v50 & 1) != 0 || v36 <= 0)
  {
    icu::UnicodeString::~UnicodeString(v50, v49);
LABEL_71:
    sub_1951D6EE0(v49, L"{1}");
    sub_1951D6EE0(v53, " ");
    if (SLOWORD(v56[1]) >= 0)
    {
      v41 = LOWORD(v56[1]) >> 5;
    }

    else
    {
      v41 = HIDWORD(v56[1]);
    }

    if (v50 >= 0)
    {
      v42 = v50 >> 5;
    }

    else
    {
      v42 = HIDWORD(v50);
    }

    v43 = v54 >> 5;
    if ((v54 & 0x8000u) != 0)
    {
      v43 = v55;
    }

    icu::UnicodeString::findAndReplace(v56, 0, v41, v49, 0, v42, v53, 0, v43);
    icu::UnicodeString::~UnicodeString(v44, v53);
    icu::UnicodeString::~UnicodeString(v45, v49);
    goto LABEL_80;
  }

  if (SLOWORD(v56[1]) >= 0)
  {
    v37 = LOWORD(v56[1]) >> 5;
  }

  else
  {
    v37 = HIDWORD(v56[1]);
  }

  if ((v50 & 2) != 0)
  {
    v38 = &v50 + 2;
  }

  else
  {
    v38 = v52;
  }

  v39 = icu::UnicodeString::indexOf(v56, v38, 0, v36, 0, v37);
  icu::UnicodeString::~UnicodeString(v40, v49);
  if (v39 < 0)
  {
    goto LABEL_71;
  }

LABEL_80:
  v50 = &unk_1F0935D00;
  v51 = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments(v49, v56, 2, 2, 0, a4);
  icu::SimpleFormatter::operator=(a1 + 496, v49);
  icu::SimpleFormatter::~SimpleFormatter(v49);
  icu::UnicodeString::~UnicodeString(v46, v56);
  v47 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t sub_195334D3C(uint64_t a1, const icu::UnicodeString *a2, const icu::UnicodeString *a3, UErrorCode *a4)
{
  *a1 = &unk_1F093DFA8;
  *(a1 + 16) = &unk_1F0935D00;
  *(a1 + 24) = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments((a1 + 8), a2, 2, 2, 0, a4);
  *(a1 + 88) = &unk_1F0935D00;
  *(a1 + 96) = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments((a1 + 80), a3, 2, 2, 0, a4);
  return a1;
}

void sub_195334E0C(void *a1)
{
  *a1 = &unk_1F093DF38;
  v2 = (a1 + 20);
  icu::SimpleFormatter::~SimpleFormatter((a1 + 29));
  icu::SimpleFormatter::~SimpleFormatter(v2);

  sub_195335118(a1);
}

void sub_195334E70(void *a1)
{
  sub_195334E0C(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195334FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a1 + 152))(a3);
  v5 = 8;
  if (v4)
  {
    v5 = 160;
  }

  return a1 + v5;
}

uint64_t sub_19533500C(uint64_t a1, uint64_t a2)
{
  v3 = (*(a1 + 152))(a2);
  v4 = 80;
  if (v3)
  {
    v4 = 232;
  }

  return a1 + v4;
}

void sub_195335050(uint64_t a1)
{
  sub_195335118(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195335118(uint64_t a1)
{
  *a1 = &unk_1F093DFA8;
  v2 = (a1 + 8);
  icu::SimpleFormatter::~SimpleFormatter((a1 + 80));
  icu::SimpleFormatter::~SimpleFormatter(v2);

  icu::UObject::~UObject(a1);
}

void sub_19533517C(void *a1)
{
  *a1 = &unk_1F093DFE8;
  v2 = (a1 + 19);
  icu::SimpleFormatter::~SimpleFormatter((a1 + 62));
  icu::SimpleFormatter::~SimpleFormatter((a1 + 53));
  icu::SimpleFormatter::~SimpleFormatter((a1 + 44));
  icu::SimpleFormatter::~SimpleFormatter((a1 + 35));
  icu::UnicodeString::~UnicodeString(v3, (a1 + 27));
  icu::UnicodeString::~UnicodeString(v4, v2);

  sub_195335118(a1);
}

void sub_195335200(void *a1)
{
  sub_19533517C(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19533528C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v18 = 0;
  v6 = *(a2 + 8);
  if (v6 >= 0x20)
  {
    if ((v6 & 0x8000) != 0)
    {
      v7 = *(a2 + 12);
      if (!v7)
      {
        v9 = 0xFFFF;
LABEL_9:
        v5 = uscript_getScript(v9, &v18) != 38;
        goto LABEL_10;
      }
    }

    else
    {
      v7 = v6 >> 5;
    }

    if ((v6 & 2) != 0)
    {
      v8 = a2 + 10;
    }

    else
    {
      v8 = *(a2 + 24);
    }

    v9 = *(v8 + 2 * v7 - 2);
    goto LABEL_9;
  }

LABEL_10:
  v10 = *(a3 + 8);
  if (v10 < 0x20)
  {
    v14 = 8;
    v15 = 280;
  }

  else
  {
    if ((v10 & 0x8000u) == 0)
    {
      v11 = v10 >> 5;
    }

    else
    {
      v11 = *(a3 + 12);
    }

    if (v11)
    {
      if ((v10 & 2) != 0)
      {
        v12 = (a3 + 10);
      }

      else
      {
        v12 = *(a3 + 24);
      }

      v13 = *v12;
    }

    else
    {
      v13 = 0xFFFF;
    }

    Script = uscript_getScript(v13, &v18);
    v15 = 424;
    if (Script == 38)
    {
      v15 = 280;
    }

    v14 = 352;
    if (Script == 38)
    {
      v14 = 8;
    }
  }

  if (!v5)
  {
    v15 = v14;
  }

  return a1 + v15;
}

uint64_t sub_195335394(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v3 = *(a2 + 8);
  if (v3 < 0x20 || ((v3 & 0x8000u) == 0 ? (v4 = v3 >> 5) : (v4 = *(a2 + 12)), !v4 ? (v6 = 0xFFFF) : ((v3 & 2) != 0 ? (v5 = (a2 + 10)) : (v5 = *(a2 + 24)), v6 = *v5), uscript_getScript(v6, &v9) == 38))
  {
    v7 = 80;
  }

  else
  {
    v7 = 496;
  }

  return a1 + v7;
}

uint64_t sub_195335420(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  *(a1 + 16) = &unk_1F0935D00;
  *(a1 + 24) = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments((a1 + 8), (a2 + 72), 0, 0x7FFFFFFF, 0, a3);
  *(a1 + 88) = &unk_1F0935D00;
  *(a1 + 96) = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments((a1 + 80), (a2 + 136), 0, 0x7FFFFFFF, 0, a3);
  sub_195333C80((a2 + 272), a2 + 8, a2 + 200);
  *(a1 + 152) = v6;
  if (!v6 && *a3 <= 0)
  {
    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }

  *(a1 + 160) = uloc_getCharacterOrientation(*(a2 + 304), a3) == 1;
  return a1;
}

uint64_t sub_195335520(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) < 0)
  {
    v5 = *(a2 + 12);
    v4 = v5 & (v5 >> 31);
  }

  else
  {
    v4 = 0;
    v5 = *(a2 + 8) >> 5;
  }

  result = icu::UnicodeString::indexOf(a2, L"listPattern/", 0, 12, v4, v5 - v4);
  if ((result & 0x80000000) == 0)
  {
    v7 = result + 12;
    if (*(a2 + 8) < 0)
    {
      v8 = *(a2 + 12);
      if (v8 >= v7)
      {
        v9 = result + 12;
      }

      else
      {
        v9 = *(a2 + 12);
      }
    }

    else
    {
      v8 = *(a2 + 8) >> 5;
      if (v8 >= v7)
      {
        v9 = result + 12;
      }

      else
      {
        v9 = *(a2 + 8) >> 5;
      }
    }

    v10 = icu::UnicodeString::doIndexOf(a2, 0x2Fu, v9, v8 - v9);
    if (v10 < 0)
    {
      if (*(a2 + 8) < 0)
      {
        v10 = *(a2 + 12);
      }

      else
      {
        v10 = *(a2 + 8) >> 5;
      }
    }

    result = icu::UnicodeString::extract(a2, v7, (v10 - v7), (a1 + 264), 25);
    *(a1 + 288) = 0;
  }

  return result;
}

void *sub_195335604(void *result, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a3[4] <= 0x1Fu)
  {
    v7 = result;
    result = (*(*a2 + 24))(a2);
    if (result != 3)
    {
      v12 = 0;
      v11 = (*(*a2 + 32))(a2, &v12, a4);
      icu::UnicodeString::UnicodeString(v13, 1, &v11);
      icu::UnicodeString::operator=(a3, v13);
      v9 = v13;
      goto LABEL_6;
    }

    if (!*(v7 + 264))
    {
      LODWORD(v11) = 0;
      v13[0] = (*(*a2 + 40))(a2, &v11, a4);
      icu::UnicodeString::UnicodeString(v14, 1, v13);
      sub_195335520(v7, v14);
      v9 = v14;
LABEL_6:
      result = icu::UnicodeString::~UnicodeString(v8, v9);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1953357A0(icu::SharedObject *this)
{
  *this = &unk_1F093E040;
  for (i = 40; i != 64; i += 8)
  {
    v3 = *(this + i);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = *(this + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    icu::UnicodeString::~UnicodeString((v5 + 136));
    icu::UnicodeString::~UnicodeString((v5 + 72));
    icu::UnicodeString::~UnicodeString((v5 + 8));
    MEMORY[0x19A8B2600](v5, 0x1092C40C5D1B5A1);
  }

  icu::SharedObject::~SharedObject(this);
}

void sub_195335894(icu::SharedObject *a1)
{
  sub_1953357A0(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1953358CC(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v3 = *MEMORY[0x1E69E9840];
  ures_open("icudt76l-unit", *(a1 + 56), a3);
  operator new();
}

uint64_t sub_195335CB4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 72);
  if (v4)
  {
    icu::UnicodeString::~UnicodeString((v4 + 136));
    icu::UnicodeString::~UnicodeString((v4 + 72));
    icu::UnicodeString::~UnicodeString((v4 + 8));
    result = MEMORY[0x19A8B2600](v4, 0x1092C40C5D1B5A1);
  }

  *(v3 + 72) = a2;
  return result;
}

uint64_t icu::MeasureFormat::MeasureFormat(uint64_t a1, const char **a2, int a3, UErrorCode *a4)
{
  v8 = icu::Format::Format(a1);
  *v8 = &unk_1F093E068;
  *(v8 + 336) = 0;
  *(v8 + 344) = 0;
  if (a3 == 8)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  *(v8 + 328) = 0;
  *(v8 + 352) = v9;
  *(v8 + 356) = a3 == 8;
  *(v8 + 360) = 0;
  *(v8 + 368) = 0;
  icu::MeasureFormat::initMeasureFormat(v8, a2, v9, 0, a4);
  return a1;
}

void icu::MeasureFormat::initMeasureFormat(uint64_t a1, const char **a2, int a3, icu::NumberFormat *a4, UErrorCode *a5)
{
  if (*a5 <= 0 && (LODWORD(v7) = a3, icu::Format::setLocaleIDs(a1, a2[5], a2[5]), sub_195338448(a2, (a1 + 328), a5), *a5 <= 0) && (v10 = icu::PluralRules::createSharedInstance(a2, 0, a5), *a5 <= 0))
  {
    v12 = v10;
    sub_1952769E4(v10, (a1 + 344));
    icu::SharedObject::removeRef(v12);
    if (a4)
    {
      icu::MeasureFormat::adoptNumberFormat(a1, a4, a5);
      if (*a5 > 0)
      {
        return;
      }
    }

    else
    {
      SharedInstance = icu::NumberFormat::createSharedInstance(a2, 1, a5);
      if (*a5 > 0)
      {
        return;
      }

      v14 = SharedInstance;
      sub_1952769E4(SharedInstance, (a1 + 336));
      icu::SharedObject::removeRef(v14);
    }

    *(a1 + 352) = v7;
    v15 = *(a1 + 356);
    if (v7 >= 2)
    {
      v7 = 2;
    }

    else
    {
      v7 = v7;
    }

    v16 = *(a1 + 360);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = 2;
    if (!v15)
    {
      v17 = v7;
    }

    *(a1 + 360) = icu::ListFormatter::createInstance(a2, 2, dword_19548FEF4[v17], a5);
    v18 = *(a1 + 368);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    *(a1 + 368) = icu::ListFormatter::createInstance(a2, 0, 0, a5);
  }

  else if (a4)
  {
    v11 = *(*a4 + 8);

    v11(a4);
  }
}

uint64_t icu::MeasureFormat::MeasureFormat(uint64_t a1, const char **a2, int a3, icu::NumberFormat *a4, UErrorCode *a5)
{
  v10 = icu::Format::Format(a1);
  *v10 = &unk_1F093E068;
  *(v10 + 336) = 0;
  *(v10 + 344) = 0;
  if (a3 == 8)
  {
    v11 = 1;
  }

  else
  {
    v11 = a3;
  }

  *(v10 + 328) = 0;
  *(v10 + 352) = v11;
  *(v10 + 356) = a3 == 8;
  *(v10 + 360) = 0;
  *(v10 + 368) = 0;
  icu::MeasureFormat::initMeasureFormat(v10, a2, v11, a4, a5);
  return a1;
}

icu::MeasureFormat *icu::MeasureFormat::MeasureFormat(icu::MeasureFormat *this, const icu::MeasureFormat *a2)
{
  v4 = icu::Format::Format(this, a2);
  *v4 = &unk_1F093E068;
  v5 = *(a2 + 328);
  *(v4 + 328) = v5;
  *(v4 + 344) = *(a2 + 43);
  *(v4 + 352) = *(a2 + 88);
  *(v4 + 356) = *(a2 + 356);
  *(v4 + 360) = 0;
  *(v4 + 368) = 0;
  icu::SharedObject::addRef(v5);
  icu::SharedObject::addRef(*(this + 42));
  icu::SharedObject::addRef(*(this + 43));
  if (*(a2 + 45))
  {
    operator new();
  }

  if (*(a2 + 46))
  {
    operator new();
  }

  return this;
}

uint64_t icu::MeasureFormat::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    icu::Format::operator=(a1, a2);
    sub_1952769E4(*(a2 + 328), (a1 + 328));
    sub_1952769E4(*(a2 + 336), (a1 + 336));
    sub_1952769E4(*(a2 + 344), (a1 + 344));
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 356) = *(a2 + 356);
    v4 = *(a1 + 360);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    if (*(a2 + 360))
    {
      operator new();
    }

    *(a1 + 360) = 0;
    v5 = *(a1 + 368);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    if (*(a2 + 368))
    {
      operator new();
    }

    *(a1 + 368) = 0;
  }

  return a1;
}

uint64_t icu::MeasureFormat::MeasureFormat(icu::MeasureFormat *this)
{
  result = icu::Format::Format(this);
  *result = &unk_1F093E068;
  *(result + 336) = 0;
  *(result + 344) = 0;
  *(result + 328) = 0;
  *(result + 352) = 1;
  *(result + 356) = 0;
  *(result + 360) = 0;
  *(result + 368) = 0;
  return result;
}

{
  result = icu::Format::Format(this);
  *result = &unk_1F093E068;
  *(result + 336) = 0;
  *(result + 344) = 0;
  *(result + 328) = 0;
  *(result + 352) = 1;
  *(result + 356) = 0;
  *(result + 360) = 0;
  *(result + 368) = 0;
  return result;
}

void icu::MeasureFormat::~MeasureFormat(icu::MeasureFormat *this)
{
  *this = &unk_1F093E068;
  v2 = *(this + 41);
  if (v2)
  {
    icu::SharedObject::removeRef(v2);
  }

  v3 = *(this + 42);
  if (v3)
  {
    icu::SharedObject::removeRef(v3);
  }

  v4 = *(this + 43);
  if (v4)
  {
    icu::SharedObject::removeRef(v4);
  }

  v5 = *(this + 45);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 46);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  icu::Format::~Format(this);
}

{
  icu::MeasureFormat::~MeasureFormat(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::MeasureFormat::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v12 = v2;
  v13 = v3;
  result = icu::Format::operator==(a1, a2);
  if (result)
  {
    if (*(a1 + 352) == *(a2 + 352) && *(a1 + 356) == *(a2 + 356) && (*(a1 + 328) == *(a2 + 328) || (v11 = 0, LocaleID = icu::Format::getLocaleID(a1, 1, &v11), v8 = icu::Format::getLocaleID(a2, 1, &v11), v11 <= 0) && !strcmp(LocaleID, v8)))
    {
      v9 = *(a1 + 336);
      v10 = *(a2 + 336);
      if (v9 == v10)
      {
        return 1;
      }

      else
      {
        return (*(**(v9 + 24) + 24))(*(v9 + 24), *(v10 + 24));
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

icu::UnicodeString *icu::MeasureFormat::format(icu::MeasureFormat *this, const icu::Formattable *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return a3;
  }

  {
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return a3;
  }

  v13 = *(*(this + 42) + 24);

  return icu::MeasureFormat::formatMeasure(this, v12, v13, a3, a4, a5);
}

icu::UnicodeString *icu::MeasureFormat::formatMeasure(icu::MeasureFormat *this, const icu::Measure *a2, char **a3, icu::UnicodeString *a4, icu::FieldPosition *a5, UErrorCode *a6)
{
  v98 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    goto LABEL_77;
  }

  v12 = *(a2 + 15);
  Type = icu::MeasureUnit::getType(v12);
  if (!strcmp(Type, "currency"))
  {
    *us = 0;
    Subtype = icu::MeasureUnit::getSubtype(v12);
    u_charsToUChars(Subtype, us, 4);
    v25 = *(this + 88);
    if (v25 >= 2)
    {
      v25 = 2;
    }

    v26 = *(*(this + 41) + 8 * v25 + 40);
    operator new();
  }

  v14 = *(a4 + 4);
  v15 = v14;
  LODWORD(v16) = v14 >> 5;
  if (v15 >= 0)
  {
    v16 = v16;
  }

  else
  {
    v16 = *(a4 + 3);
  }

  v69 = v16;
  v17 = *(a5 + 2);
  if (v17 == 0x40000000)
  {
    *(a5 + 2) = -1;
  }

  v18 = **a3;
  if (!v19)
  {
    memset(&us[4], 0, 56);
    *us = &unk_1F0935D00;
    us[4] = 2;
    v27 = icu::QuantityFormatter::selectPlural((a2 + 8), a3, *(*(this + 43) + 24), us, a5, a6, v20);
    if (v17 == 0x40000000)
    {
      *(a5 + 1) = *L"";
      v28 = us[4] >> 5;
      if ((us[4] & 0x8000u) != 0)
      {
        v28 = *&us[6];
      }

      *(a5 + 4) = v28;
    }

    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v29 = 1;
    icu::Format::getLocale(this, 1, a6, &v71);
    v30 = *(this + 88);
    if (v30 <= 3)
    {
      v29 = dword_19548FFB0[v30];
    }

    sub_195367754(&v71, v12, v29, v27, a6, &v77);
    icu::Locale::~Locale(&v71);
    v31 = *a6;
    if (v31 > 0)
    {
      icu::UnicodeString::~UnicodeString(v31, &v77);
LABEL_76:
      icu::UnicodeString::~UnicodeString(v32, us);
      goto LABEL_77;
    }

    v71 = 0;
    v73 = 0u;
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = &unk_1F0935D00;
    LOWORD(v73) = 2;
    icu::SimpleFormatter::applyPatternMinMaxArguments(&v71, &v77, 0, 1, 0, a6);
    icu::QuantityFormatter::format(&v71, us, a4, a5, a6, v66);
    icu::SimpleFormatter::~SimpleFormatter(&v71);
    icu::UnicodeString::~UnicodeString(v67, &v77);
    icu::UnicodeString::~UnicodeString(v68, us);
    goto LABEL_46;
  }

  v21 = v19;
  v97 = 0;
  memset(v96, 0, sizeof(v96));
  v95 = 0u;
  v94 = 0u;
  v93 = 0u;
  v92 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  sub_1952FDFB0(&v77);
  if (icu::DecimalFormat::toNumberFormatter(v21, a6))
  {
    Double = icu::Formattable::getDouble((a2 + 8), a6);
    icu::number::impl::DecimalQuantity::setToDouble(v96, Double);
    icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::unit();
  }

  v33 = *(a4 + 4);
  v34 = v33;
  v35 = v33 >> 5;
  if (v34 >= 0)
  {
    v36 = v35;
  }

  else
  {
    v36 = *(a4 + 3);
  }

  icu::DecimalFormat::fieldPositionHelper(&v77, a5, v36, a6, v22);
  if (v17 == 0x40000000)
  {
    *(a5 + 2) = 0;
    v38 = *(a4 + 4);
    v39 = v38;
    v40 = v38 >> 5;
    if (v39 >= 0)
    {
      v41 = v40;
    }

    else
    {
      v41 = *(a4 + 3);
    }

    icu::DecimalFormat::fieldPositionHelper(&v77, a5, v41, a6, v37);
    v44 = *(a5 + 3);
    v43 = *(a5 + 4);
    *(a5 + 2) = 1;
    v45 = *(a4 + 4);
    v46 = v45;
    v47 = v45 >> 5;
    if (v46 >= 0)
    {
      v48 = v47;
    }

    else
    {
      v48 = *(a4 + 3);
    }

    icu::DecimalFormat::fieldPositionHelper(&v77, a5, v48, a6, v42);
    v49 = *(a5 + 3);
    v50 = *(a5 + 4);
    if (v44 < 0 || v43 <= v44)
    {
      if ((v49 & 0x80000000) == 0 && v50 > v49)
      {
        goto LABEL_41;
      }

      v43 = 0;
      *(a5 + 3) = 0;
    }

    else
    {
      *(a5 + 3) = v44;
      if (v49 >= v43 && v50 > v49)
      {
        goto LABEL_41;
      }
    }

    *(a5 + 4) = v43;
LABEL_41:
    *(a5 + 2) = 0x40000000;
  }

  icu::FormattedValueStringBuilderImpl::toTempString(&v77, &v71);
  if (v72 >= 0)
  {
    v51 = v72 >> 5;
  }

  else
  {
    v51 = HIDWORD(v72);
  }

  icu::UnicodeString::doAppend(a4, &v71, 0, v51);
  icu::UnicodeString::~UnicodeString(v52, &v71);
  icu::number::impl::UFormattedNumberData::~UFormattedNumberData(&v77);
LABEL_46:
  if (*(this + 356))
  {
    memset(us, 0, 64);
    icu::Format::getLocale(this, 1, a6, &v71);
    sub_195367754(&v71, v12, 0, 5u, a6, us);
    icu::Locale::~Locale(&v71);
    v32 = *a6;
    if (v32 <= 0)
    {
      v53 = (us[4] & 0x8000u) == 0 ? us[4] >> 5 : *&us[6];
      if (icu::UnicodeString::doIndexOf(us, 0x20u, 0, v53) == -1)
      {
        v54 = (us[4] & 0x8000u) == 0 ? us[4] >> 5 : *&us[6];
        if (icu::UnicodeString::doIndexOf(us, 0xA0u, 0, v54) == -1)
        {
          v55 = (us[4] & 0x8000u) == 0 ? us[4] >> 5 : *&us[6];
          if (icu::UnicodeString::doIndexOf(us, 0x202Fu, 0, v55) == -1)
          {
            v56 = *(a4 + 4);
            v57 = v56;
            v58 = v56 >> 5;
            v59 = v57 >= 0 ? v58 : *(a4 + 3);
            v32 = v69;
            if (v69 < v59)
            {
              v60 = v69;
              do
              {
                v32 = *(a4 + 4);
                if ((v32 & 0x8000u) == 0)
                {
                  v61 = v32 >> 5;
                }

                else
                {
                  v61 = *(a4 + 3);
                }

                if (v61 > v60)
                {
                  if ((v32 & 2) != 0)
                  {
                    v62 = a4 + 10;
                  }

                  else
                  {
                    v62 = *(a4 + 3);
                  }

                  v32 = *&v62[2 * v60];
                  if (v32 == 32)
                  {
                    icu::UnicodeString::doReplace(a4, v60, 1, 0, 0, 0);
                    v32 = *(a5 + 3);
                    if (v60 < v32)
                    {
                      v32 = (v32 - 1);
                      v63 = *(a5 + 4) - 1;
                      *(a5 + 3) = v32;
                      *(a5 + 4) = v63;
                    }
                  }
                }

                ++v60;
              }

              while (v59 != v60);
            }
          }
        }
      }
    }

    goto LABEL_76;
  }

LABEL_77:
  v64 = *MEMORY[0x1E69E9840];
  return a4;
}

icu::UnicodeString *icu::MeasureFormat::formatMeasurePerUnit(icu::MeasureFormat *this, const icu::Measure *a2, const icu::MeasureUnit *a3, icu::UnicodeString *a4, icu::FieldPosition *a5, UErrorCode *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v10 = *(*(this + 42) + 24);
    v11 = **v10;
    if (v12)
    {
      v13 = v12;
      v30 = 0;
      memset(v29, 0, sizeof(v29));
      memset(v28, 0, sizeof(v28));
      sub_1952FDFB0(v28);
      if (icu::DecimalFormat::toNumberFormatter(v13, a6))
      {
        Double = icu::Formattable::getDouble((a2 + 8), a6);
        icu::number::impl::DecimalQuantity::setToDouble(v29, Double);
        v16 = *(a2 + 15);
        icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::unit();
      }

      v17 = *(a4 + 4);
      v18 = v17;
      v19 = v17 >> 5;
      if (v18 >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = *(a4 + 3);
      }

      icu::DecimalFormat::fieldPositionHelper(v28, a5, v20, a6, v14);
      icu::FormattedValueStringBuilderImpl::toTempString(v28, v25);
      if ((v26 & 0x8000u) == 0)
      {
        v21 = v26 >> 5;
      }

      else
      {
        v21 = v27;
      }

      icu::UnicodeString::doAppend(a4, v25, 0, v21);
      icu::UnicodeString::~UnicodeString(v22, v25);
      icu::number::impl::UFormattedNumberData::~UFormattedNumberData(v28);
    }

    else
    {
      *a6 = U_UNSUPPORTED_ERROR;
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return a4;
}

icu::UnicodeString *icu::MeasureFormat::formatMeasures(icu::MeasureFormat *this, const icu::Measure *a2, int a3, icu::UnicodeString *a4, icu::FieldPosition *a5, UErrorCode *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*a6 > 0 || a3 == 0)
  {
LABEL_6:
    v8 = *MEMORY[0x1E69E9840];
    return a4;
  }

  if (a3 != 1)
  {
    if (*(this + 88) != 3)
    {
      goto LABEL_19;
    }

    v17 = 0;
    memset(v21, 0, sizeof(v21));
    do
    {
      icu::Formattable::Formattable(&v21[v17]);
      v17 += 7;
    }

    while (v17 != 21);
    v19 = sub_19533733C(a2, a3, v21, a6);
    if (v19 >= 1)
    {
      icu::MeasureFormat::formatNumeric(this, v21, v19, a4, a6);
    }

    for (i = 14; i != -7; i -= 7)
    {
      icu::Formattable::~Formattable(v18, &v21[i]);
    }

    if (v19 <= 0)
    {
LABEL_19:
      if (*(a5 + 2) == -1)
      {
        operator new[]();
      }

      icu::MeasureFormat::formatMeasuresSlowTrack(this, a2, a3, a4, a5, a6);
    }

    goto LABEL_6;
  }

  v15 = *(*(this + 42) + 24);
  v16 = *MEMORY[0x1E69E9840];

  return icu::MeasureFormat::formatMeasure(this, a2, v15, a4, a5, a6);
}

uint64_t sub_19533733C(uint64_t a1, int a2, double *a3, int *a4)
{
  if (*a4 > 0 || a2 < 1)
  {
    return 0;
  }

  LODWORD(v7) = 0;
  v8 = a2;
  for (i = (a1 + 120); ; i += 16)
  {
    if (sub_195338BF4(*i, "hour"))
    {
      if (v7 > 0)
      {
        return 0;
      }

      icu::Formattable::operator=(a3, (i - 14));
      if (a3[1] < 0.0)
      {
        return 0;
      }

      v7 = 1;
      goto LABEL_19;
    }

    if (!sub_195338BF4(*i, "minute"))
    {
      break;
    }

    if (v7 > 1)
    {
      return 0;
    }

    icu::Formattable::operator=((a3 + 14), (i - 14));
    if (a3[15] < 0.0)
    {
      return 0;
    }

    v7 = v7 | 2;
LABEL_19:
    result = v7;
    if (!--v8)
    {
      return result;
    }
  }

  v10 = sub_195338BF4(*i, "second");
  result = 0;
  if (!v10 || v7 > 3)
  {
    return result;
  }

  icu::Formattable::operator=((a3 + 28), (i - 14));
  if (a3[29] >= 0.0)
  {
    v7 = v7 | 4;
    goto LABEL_19;
  }

  return 0;
}

icu::UnicodeString *icu::MeasureFormat::formatNumeric(icu::MeasureFormat *this, const icu::Formattable *a2, int a3, icu::UnicodeString *a4, UErrorCode *a5)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v47 = 0u;
    v50 = 0;
    v49 = 0u;
    v48 = 0u;
    v46 = &unk_1F0935D00;
    LOWORD(v47) = 2;
    Double = icu::Formattable::getDouble(a2, a5);
    v11 = icu::Formattable::getDouble((a2 + 112), a5);
    icu::Formattable::getDouble((a2 + 224), a5);
    v12 = *a5;
    if (v12 > 0)
    {
LABEL_16:
      icu::UnicodeString::~UnicodeString(v12, &v46);
      goto LABEL_17;
    }

    if ((a3 & 0xFFFFFFFD) == 5)
    {
      icu::UnicodeString::operator=(&v46, (*(*(this + 41) + 72) + 136));
      uprv_trunc(Double);
    }

    else
    {
      if (a3 != 6)
      {
        if (a3 != 3)
        {
LABEL_14:
          v12 = 5;
          *a5 = U_INTERNAL_PROGRAM_ERROR;
          goto LABEL_16;
        }

        icu::UnicodeString::operator=(&v46, (*(*(this + 41) + 72) + 8));
        uprv_trunc(Double);
LABEL_10:
        v13 = *(*(this + 42) + 24);
        if (v13)
        {
          v14 = **v13;
          if (v15)
          {
            v16 = v15;
            v44 = 0u;
            v45 = 0u;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
            memset(v30, 0, sizeof(v30));
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v21 = 0u;
            memset(v20, 0, sizeof(v20));
            v19 = 0u;
            DWORD1(v19) = 2;
            icu::MeasureUnit::MeasureUnit(v20);
            icu::MeasureUnit::MeasureUnit(&v20[1] + 8);
            LODWORD(v21) = 0;
            DWORD2(v22) = 0;
            LODWORD(v23) = 4;
            WORD2(v23) = -3;
            LODWORD(v24) = -2;
            BYTE4(v25) = 0;
            WORD6(v24) = -1;
            DWORD2(v25) = 0;
            *&v26 = 0;
            *(&v26 + 1) = 0x900000007;
            LOBYTE(v27) = 0;
            *(&v27 + 4) = 2;
            *&v28 = 0;
            DWORD2(v28) = 0;
            *&v29 = 0;
            WORD4(v29) = 0;
            HIDWORD(v29) = 0;
            v30[0] = 0;
            LOWORD(v30[1]) = 0;
            *(&v30[2] + 4) = 0;
            *(&v30[1] + 4) = 0;
            *(&v30[3] + 4) = 0x300000000;
            WORD2(v30[4]) = 0;
            icu::Locale::Locale(&v30[5]);
            v45 = 0uLL;
            *(&v44 + 1) = 0;
            if (icu::DecimalFormat::toNumberFormatter(v16, a5))
            {
              icu::number::IntegerWidth::zeroFillTo(2);
              icu::number::NumberFormatterSettings<icu::number::LocalizedNumberFormatter>::integerWidth();
            }

            icu::number::LocalizedNumberFormatter::~LocalizedNumberFormatter(&v19);
            goto LABEL_16;
          }
        }

        goto LABEL_14;
      }

      icu::UnicodeString::operator=(&v46, (*(*(this + 41) + 72) + 72));
    }

    uprv_trunc(v11);
    goto LABEL_10;
  }

LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return a4;
}

icu::UnicodeString *icu::MeasureFormat::formatMeasuresSlowTrack(icu::MeasureFormat *this, const icu::Measure *a2, int a3, icu::UnicodeString *a4, icu::FieldPosition *a5, UErrorCode *a6)
{
  if (*a6 <= 0)
  {
    v7 = *(a5 + 2);
    operator new[]();
  }

  return a4;
}

icu::UnicodeString *icu::MeasureFormat::formatMeasures(icu::MeasureFormat *this, icu::MeasureUnit **a2, int a3, icu::UnicodeString *a4, icu::FieldPositionIterator *a5, UErrorCode *a6)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*a6 <= 0)
  {
    v28 = 0;
    *v26 = 0u;
    v27 = 0u;
    icu::FieldPositionIteratorHandler::FieldPositionIteratorHandler(v26, a5, a6);
    if (a3)
    {
      if (a3 == 1)
      {
        v11 = *(a4 + 4);
        v12 = v11;
        v13 = v11 >> 5;
        if (v12 >= 0)
        {
          v14 = v13;
        }

        else
        {
          v14 = *(a4 + 3);
        }

        UAMeasureUnit = icu::MeasureUnit::getUAMeasureUnit(a2[15]);
        *&v30 = 0;
        *&v29 = &unk_1F093AD90;
        *(&v29 + 1) = *L"";
        icu::MeasureFormat::formatMeasure(this, a2, *(*(this + 42) + 24), a4, &v29, a6);
        v16 = *(a4 + 4);
        v17 = v16;
        v18 = v16 >> 5;
        if (v17 >= 0)
        {
          v19 = v18;
        }

        else
        {
          v19 = *(a4 + 3);
        }

        icu::FieldPositionIteratorHandler::addAttribute(v26, UAMeasureUnit, v14, v19);
        icu::FieldPositionIteratorHandler::addAttribute(v26, UAMeasureUnit | 0x40000000, SHIDWORD(v29), v30);
        icu::FieldPosition::~FieldPosition(&v29);
      }

      else
      {
        if (*(this + 88) != 3)
        {
          goto LABEL_19;
        }

        v20 = 0;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        do
        {
          icu::Formattable::Formattable((&v29 + v20));
          v20 += 112;
        }

        while (v20 != 336);
        v22 = sub_19533733C(a2, a3, &v29, a6);
        if (v22 >= 1)
        {
          icu::MeasureFormat::formatNumeric(this, &v29, v22, a4, a6);
        }

        for (i = 224; i != -112; i -= 112)
        {
          icu::Formattable::~Formattable(v21, (&v29 + i));
        }

        if (v22 <= 0)
        {
LABEL_19:
          operator new[]();
        }
      }
    }

    icu::FieldPositionIteratorHandler::~FieldPositionIteratorHandler(v26);
  }

  v24 = *MEMORY[0x1E69E9840];
  return a4;
}

void icu::MeasureFormat::getUnitDisplayName(icu::MeasureFormat *this@<X0>, const icu::MeasureUnit *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = 1;
  icu::Format::getLocale(this, 1, a3, v11);
  v9 = *(this + 88);
  if (v9 <= 3)
  {
    v8 = dword_19548FFB0[v9];
  }

  sub_1953675C8(v11, a2, v8, a3, a4);
  icu::Locale::~Locale(v11);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_195338448(uint64_t a1, UErrorCode *a2, icu::UnifiedCache *this)
{
  v12[28] = *MEMORY[0x1E69E9840];
  Instance = icu::UnifiedCache::getInstance(this, a2);
  if (*this <= 0)
  {
    v7 = Instance;
    v10 = 0;
    v11 = 0;
    v9 = &unk_1F093E0E8;
    icu::Locale::Locale(v12, a1);
    sub_1952C1AD0(v7, &v9, 0, a2, this);
    v9 = &unk_1F093E0E8;
    icu::Locale::~Locale(v12);
    icu::CacheKeyBase::~CacheKeyBase(&v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void icu::MeasureFormat::adoptNumberFormat(icu::MeasureFormat *this, icu::NumberFormat *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    operator new();
  }

  if (a2)
  {
    v4 = *(*a2 + 8);
    v5 = *a2 + 8;

    v4(a2);
  }
}

BOOL icu::MeasureFormat::setMeasureFormatLocale(icu::MeasureFormat *this, const char **a2, UErrorCode *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a3 > 0 || (icu::Format::getLocale(this, 1, a3, v9), v6 = icu::Locale::operator==(a2, v9), icu::Locale::~Locale(v9), v6))
  {
    result = 0;
  }

  else
  {
    icu::MeasureFormat::initMeasureFormat(this, a2, *(this + 88), 0, a3);
    result = *a3 < U_ILLEGAL_ARGUMENT_ERROR;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

icu::UnicodeString *icu::MeasureFormat::getUnitName(icu::MeasureFormat *this, const icu::MeasureUnit *a2, icu::UnicodeString *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = U_ZERO_ERROR;
  icu::MeasureFormat::getUnitDisplayName(this, a2, &v7, v8);
  icu::UnicodeString::operator=(a3, v8);
  icu::UnicodeString::~UnicodeString(v4, v8);
  v5 = *MEMORY[0x1E69E9840];
  return a3;
}

icu::UnicodeString *icu::MeasureFormat::getMultipleUnitNames(icu::MeasureFormat *this, const icu::MeasureUnit **a2, int a3, int a4, icu::UnicodeString *a5)
{
  if (a3 == 1)
  {
    icu::MeasureFormat::getUnitName(this, *a2, a5);
  }

  else
  {
    if (a3)
    {
      operator new[]();
    }

    if (*(a5 + 4))
    {
      v6 = 2;
    }

    else
    {
      v6 = *(a5 + 4) & 0x1E;
    }

    *(a5 + 4) = v6;
  }

  return a5;
}

uint64_t icu::MeasureFormat::createCurrencyFormat(icu::MeasureFormat *this, const icu::Locale *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t icu::MeasureFormat::createCurrencyFormat(icu::MeasureFormat *this, UErrorCode *a2)
{
  if (*this > 0)
  {
    return 0;
  }

  Default = icu::Locale::getDefault(this);

  return icu::MeasureFormat::createCurrencyFormat(Default, this, v6);
}

void sub_1953389CC(uint64_t a1@<X0>, const char *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v23[8] = *MEMORY[0x1E69E9840];
  *(a4 + 8) = 0u;
  *(a4 + 56) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *a4 = &unk_1F0935D00;
  *(a4 + 8) = 2;
  if (*a3 <= 0)
  {
    memset(&v23[1], 0, 56);
    v23[0] = &v23[1] + 5;
    LODWORD(v23[1]) = 40;
    icu::StringPiece::StringPiece(&v20, "durationUnits");
    v8 = icu::CharString::append(v23, v20, v21, a3);
    icu::StringPiece::StringPiece(&v20, "/");
    v9 = icu::CharString::append(v8, v20, v21, a3);
    icu::StringPiece::StringPiece(&v20, a2);
    icu::CharString::append(v9, v20, v21, a3);
    v10 = ures_getByKeyWithFallback(a1, v23[0], 0, a3);
    v11 = v10;
    if (*a3 <= 0)
    {
      v22 = 0;
      String = ures_getString(v10, &v22, a3);
      if (*a3 <= 0)
      {
        v20 = String;
        icu::UnicodeString::setTo(a4, 1, &v20, v22);
      }

      v13 = *(a4 + 8);
      v14 = v13;
      v15 = v13 >> 5;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = *(a4 + 12);
      }

      Buffer = icu::UnicodeString::getBuffer(a4, v16);
      if (v16 >= 1)
      {
        v18 = v16;
        do
        {
          if (*Buffer == 104)
          {
            *Buffer = 72;
          }

          ++Buffer;
          --v18;
        }

        while (v18);
      }

      icu::UnicodeString::releaseBuffer(a4, v16);
    }

    if (v11)
    {
      ures_close(v11);
    }

    if (BYTE4(v23[1]))
    {
      free(v23[0]);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

BOOL sub_195338BF4(icu::MeasureUnit *a1, const char *a2)
{
  Type = icu::MeasureUnit::getType(a1);
  if (strcmp(Type, "duration"))
  {
    return 0;
  }

  Subtype = icu::MeasureUnit::getSubtype(a1);
  return strcmp(Subtype, a2) == 0;
}

void sub_195338C4C(uint64_t a1)
{
  *a1 = &unk_1F093E0E8;
  icu::Locale::~Locale((a1 + 16));

  icu::CacheKeyBase::~CacheKeyBase(a1);
}

void sub_195338CA0(uint64_t a1)
{
  *a1 = &unk_1F093E0E8;
  icu::Locale::~Locale((a1 + 16));
  icu::CacheKeyBase::~CacheKeyBase(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_195338D08(uint64_t a1)
{
  v2 = strlen(("N3icu22MeasureFormatCacheDataE" & 0x7FFFFFFFFFFFFFFFLL));
  v3 = ustr_hashCharsN(("N3icu22MeasureFormatCacheDataE" & 0x7FFFFFFFFFFFFFFFLL), v2);
  return icu::Locale::hashCode((a1 + 16)) + 37 * v3;
}

char *sub_195338DD0(uint64_t a1, char *__dst, int a3)
{
  result = strncpy(__dst, *(a1 + 56), a3);
  __dst[a3 - 1] = 0;
  return result;
}

BOOL sub_195338E0C(void *a1, void *a2)
{
  result = sub_1952C1D2C(a1, a2);
  if (result)
  {

    return icu::Locale::operator==((a1 + 2), (a2 + 2));
  }

  return result;
}

uint64_t icu::MeasureUnit::createGForce(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t icu::MeasureUnit::create(icu::MeasureUnit *this, int a2, int *a3, UErrorCode *a4)
{
  if (*a3 <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getGForce(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
}

uint64_t icu::MeasureUnit::MeasureUnit(uint64_t this, char a2, __int16 a3)
{
  *this = &unk_1F093E168;
  *(this + 8) = 0;
  *(this + 16) = a3;
  *(this + 18) = a2;
  return this;
}

{
  *this = &unk_1F093E168;
  *(this + 8) = 0;
  *(this + 16) = a3;
  *(this + 18) = a2;
  return this;
}

uint64_t icu::MeasureUnit::createMeterPerSecondSquared(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMeterPerSecondSquared(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 0;
}

uint64_t icu::MeasureUnit::createArcMinute(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getArcMinute(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 1;
}

uint64_t icu::MeasureUnit::createArcSecond(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getArcSecond(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 1;
}

uint64_t icu::MeasureUnit::createDegree(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDegree(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 1;
}

uint64_t icu::MeasureUnit::createRadian(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getRadian(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 1;
}

uint64_t icu::MeasureUnit::createRevolutionAngle(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getRevolutionAngle(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 18) = 1;
}

uint64_t icu::MeasureUnit::createAcre(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getAcre(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 2;
}

uint64_t icu::MeasureUnit::createDunam(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDunam(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 2;
}

uint64_t icu::MeasureUnit::createHectare(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getHectare(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 2;
}

uint64_t icu::MeasureUnit::createSquareCentimeter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getSquareCentimeter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 2;
}

uint64_t icu::MeasureUnit::createSquareFoot(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getSquareFoot(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 18) = 2;
}

uint64_t icu::MeasureUnit::createSquareInch(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getSquareInch(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  *(a1 + 18) = 2;
}

uint64_t icu::MeasureUnit::createSquareKilometer(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getSquareKilometer(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
  *(a1 + 18) = 2;
}

uint64_t icu::MeasureUnit::createSquareMeter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getSquareMeter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 7;
  *(a1 + 18) = 2;
}

uint64_t icu::MeasureUnit::createSquareMile(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getSquareMile(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 8;
  *(a1 + 18) = 2;
}

uint64_t icu::MeasureUnit::createSquareYard(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getSquareYard(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 9;
  *(a1 + 18) = 2;
}

uint64_t icu::MeasureUnit::createItem(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getItem(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 3;
}

uint64_t icu::MeasureUnit::createKarat(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKarat(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 3;
}

uint64_t icu::MeasureUnit::createMilligramOfglucosePerDeciliter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMilligramOfglucosePerDeciliter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 3;
}

uint64_t icu::MeasureUnit::createMilligramPerDeciliter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMilligramPerDeciliter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 3;
}

uint64_t icu::MeasureUnit::createMillimolePerLiter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMillimolePerLiter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 18) = 3;
}

uint64_t icu::MeasureUnit::createMole(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMole(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  *(a1 + 18) = 3;
}

uint64_t icu::MeasureUnit::createPercent(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPercent(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
  *(a1 + 18) = 3;
}

uint64_t icu::MeasureUnit::createPermille(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPermille(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 7;
  *(a1 + 18) = 3;
}

uint64_t icu::MeasureUnit::createPartPerMillion(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPartPerMillion(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 8;
  *(a1 + 18) = 3;
}

uint64_t icu::MeasureUnit::createPermyriad(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPermyriad(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 9;
  *(a1 + 18) = 3;
}

uint64_t icu::MeasureUnit::createLiterPer100Kilometers(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getLiterPer100Kilometers(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 4;
}

uint64_t icu::MeasureUnit::createLiterPerKilometer(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getLiterPerKilometer(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 4;
}

uint64_t icu::MeasureUnit::createMilePerGallon(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMilePerGallon(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 4;
}

uint64_t icu::MeasureUnit::createMilePerGallonImperial(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMilePerGallonImperial(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 4;
}

uint64_t icu::MeasureUnit::createBit(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getBit(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 6;
}

uint64_t icu::MeasureUnit::createByte(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getByte(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 6;
}

uint64_t icu::MeasureUnit::createGigabit(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getGigabit(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 6;
}

uint64_t icu::MeasureUnit::createGigabyte(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getGigabyte(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 6;
}

uint64_t icu::MeasureUnit::createKilobit(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKilobit(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 18) = 6;
}

uint64_t icu::MeasureUnit::createKilobyte(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKilobyte(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  *(a1 + 18) = 6;
}

uint64_t icu::MeasureUnit::createMegabit(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMegabit(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
  *(a1 + 18) = 6;
}

uint64_t icu::MeasureUnit::createMegabyte(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMegabyte(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 7;
  *(a1 + 18) = 6;
}

uint64_t icu::MeasureUnit::createPetabyte(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPetabyte(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 8;
  *(a1 + 18) = 6;
}

uint64_t icu::MeasureUnit::createTerabit(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getTerabit(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 9;
  *(a1 + 18) = 6;
}

uint64_t icu::MeasureUnit::createTerabyte(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getTerabyte(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 10;
  *(a1 + 18) = 6;
}

uint64_t icu::MeasureUnit::createCentury(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCentury(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createDay(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDay(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createDayPerson(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDayPerson(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createDecade(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDecade(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createHour(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getHour(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createMicrosecond(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMicrosecond(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createMillisecond(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMillisecond(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createMinute(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMinute(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 7;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createMonth(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMonth(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 8;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createMonthPerson(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMonthPerson(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 9;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createNanosecond(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getNanosecond(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 10;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createNight(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getNight(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 11;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createQuarter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getQuarter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 12;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createSecond(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getSecond(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 13;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createWeek(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getWeek(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 14;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createWeekPerson(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getWeekPerson(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 15;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createYear(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getYear(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 16;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createYearPerson(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getYearPerson(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 17;
  *(a1 + 18) = 7;
}

uint64_t icu::MeasureUnit::createAmpere(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getAmpere(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 8;
}

uint64_t icu::MeasureUnit::createMilliampere(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMilliampere(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 8;
}

uint64_t icu::MeasureUnit::createOhm(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getOhm(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 8;
}

uint64_t icu::MeasureUnit::createVolt(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getVolt(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 8;
}

uint64_t icu::MeasureUnit::createBritishThermalUnit(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getBritishThermalUnit(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 9;
}

uint64_t icu::MeasureUnit::createCalorie(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCalorie(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 9;
}

uint64_t icu::MeasureUnit::createElectronvolt(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getElectronvolt(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 9;
}

uint64_t icu::MeasureUnit::createFoodcalorie(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getFoodcalorie(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 9;
}

uint64_t icu::MeasureUnit::createJoule(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getJoule(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 18) = 9;
}

uint64_t icu::MeasureUnit::createKilocalorie(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKilocalorie(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  *(a1 + 18) = 9;
}

uint64_t icu::MeasureUnit::createKilojoule(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKilojoule(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
  *(a1 + 18) = 9;
}

uint64_t icu::MeasureUnit::createKilowattHour(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKilowattHour(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 7;
  *(a1 + 18) = 9;
}

uint64_t icu::MeasureUnit::createThermUs(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getThermUs(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 8;
  *(a1 + 18) = 9;
}

uint64_t icu::MeasureUnit::createKilowattHourPer100Kilometer(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKilowattHourPer100Kilometer(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 10;
}

uint64_t icu::MeasureUnit::createNewton(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getNewton(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 10;
}

uint64_t icu::MeasureUnit::createPoundForce(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPoundForce(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 10;
}

uint64_t icu::MeasureUnit::createGigahertz(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getGigahertz(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 11;
}

uint64_t icu::MeasureUnit::createHertz(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getHertz(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 11;
}

uint64_t icu::MeasureUnit::createKilohertz(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKilohertz(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 11;
}

uint64_t icu::MeasureUnit::createMegahertz(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMegahertz(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 11;
}

uint64_t icu::MeasureUnit::createDot(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDot(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 12;
}

uint64_t icu::MeasureUnit::createDotPerCentimeter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDotPerCentimeter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 12;
}

uint64_t icu::MeasureUnit::createDotPerInch(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDotPerInch(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 12;
}

uint64_t icu::MeasureUnit::createEm(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getEm(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 12;
}

uint64_t icu::MeasureUnit::createMegapixel(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMegapixel(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 18) = 12;
}

uint64_t icu::MeasureUnit::createPixel(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPixel(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  *(a1 + 18) = 12;
}

uint64_t icu::MeasureUnit::createPixelPerCentimeter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPixelPerCentimeter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
  *(a1 + 18) = 12;
}

uint64_t icu::MeasureUnit::createPixelPerInch(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPixelPerInch(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 7;
  *(a1 + 18) = 12;
}

uint64_t icu::MeasureUnit::createAstronomicalUnit(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getAstronomicalUnit(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createCentimeter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCentimeter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createDecimeter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDecimeter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createEarthRadius(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getEarthRadius(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createFathom(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getFathom(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createFoot(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getFoot(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createFurlong(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getFurlong(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createInch(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getInch(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 7;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createKilometer(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKilometer(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 8;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createLightYear(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getLightYear(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 9;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createMeter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMeter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 10;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createMicrometer(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMicrometer(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 11;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createMile(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMile(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 12;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createMileScandinavian(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMileScandinavian(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 13;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createMillimeter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMillimeter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 14;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createNanometer(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getNanometer(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 15;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createNauticalMile(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getNauticalMile(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 16;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createParsec(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getParsec(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 17;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createPicometer(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPicometer(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 18;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createPoint(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPoint(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 19;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createSolarRadius(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getSolarRadius(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 20;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createYard(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getYard(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 21;
  *(a1 + 18) = 13;
}

uint64_t icu::MeasureUnit::createCandela(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCandela(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 14;
}

uint64_t icu::MeasureUnit::createLumen(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getLumen(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 14;
}

uint64_t icu::MeasureUnit::createLux(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getLux(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 14;
}

uint64_t icu::MeasureUnit::createSolarLuminosity(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getSolarLuminosity(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 14;
}

uint64_t icu::MeasureUnit::createCarat(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCarat(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createDalton(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDalton(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createEarthMass(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getEarthMass(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createGrain(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getGrain(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createGram(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getGram(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createKilogram(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKilogram(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createMicrogram(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMicrogram(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createMilligram(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMilligram(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 7;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createOunce(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getOunce(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 8;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createOunceTroy(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getOunceTroy(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 9;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createPound(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPound(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 10;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createSolarMass(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getSolarMass(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 11;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createStone(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getStone(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 12;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createTon(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getTon(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 13;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createTonne(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getTonne(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 14;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createMetricTon(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMetricTon(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 14;
  *(a1 + 18) = 15;
}

uint64_t icu::MeasureUnit::createGigawatt(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getGigawatt(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 17;
}

uint64_t icu::MeasureUnit::createHorsepower(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getHorsepower(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 17;
}

uint64_t icu::MeasureUnit::createKilowatt(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKilowatt(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 17;
}

uint64_t icu::MeasureUnit::createMegawatt(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMegawatt(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 17;
}

uint64_t icu::MeasureUnit::createMilliwatt(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMilliwatt(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 18) = 17;
}

uint64_t icu::MeasureUnit::createWatt(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getWatt(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  *(a1 + 18) = 17;
}

uint64_t icu::MeasureUnit::createAtmosphere(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getAtmosphere(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 18;
}

uint64_t icu::MeasureUnit::createBar(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getBar(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 18;
}

uint64_t icu::MeasureUnit::createGasolineEnergyDensity(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getGasolineEnergyDensity(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 18;
}

uint64_t icu::MeasureUnit::createHectopascal(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getHectopascal(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 18;
}

uint64_t icu::MeasureUnit::createInchHg(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getInchHg(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 18) = 18;
}

uint64_t icu::MeasureUnit::createKilopascal(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKilopascal(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  *(a1 + 18) = 18;
}

uint64_t icu::MeasureUnit::createMegapascal(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMegapascal(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
  *(a1 + 18) = 18;
}

uint64_t icu::MeasureUnit::createMillibar(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMillibar(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 7;
  *(a1 + 18) = 18;
}

uint64_t icu::MeasureUnit::createMillimeterOfMercury(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMillimeterOfMercury(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 8;
  *(a1 + 18) = 18;
}

uint64_t icu::MeasureUnit::createPascal(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPascal(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 9;
  *(a1 + 18) = 18;
}

uint64_t icu::MeasureUnit::createPoundPerSquareInch(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPoundPerSquareInch(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 10;
  *(a1 + 18) = 18;
}

uint64_t icu::MeasureUnit::createBeaufort(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getBeaufort(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 19;
}

uint64_t icu::MeasureUnit::createKilometerPerHour(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKilometerPerHour(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 19;
}

uint64_t icu::MeasureUnit::createKnot(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKnot(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 19;
}

uint64_t icu::MeasureUnit::createLightSpeed(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getLightSpeed(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 19;
}

uint64_t icu::MeasureUnit::createMeterPerSecond(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMeterPerSecond(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 18) = 19;
}

uint64_t icu::MeasureUnit::createMilePerHour(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMilePerHour(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  *(a1 + 18) = 19;
}

uint64_t icu::MeasureUnit::createCelsius(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCelsius(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 20;
}

uint64_t icu::MeasureUnit::createFahrenheit(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getFahrenheit(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 20;
}

uint64_t icu::MeasureUnit::createGenericTemperature(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getGenericTemperature(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 20;
}

uint64_t icu::MeasureUnit::createKelvin(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getKelvin(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 20;
}

uint64_t icu::MeasureUnit::createNewtonMeter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getNewtonMeter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 21;
}

uint64_t icu::MeasureUnit::createPoundFoot(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPoundFoot(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 21;
}

uint64_t icu::MeasureUnit::createAcreFoot(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getAcreFoot(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createBarrel(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getBarrel(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createBushel(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getBushel(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createCentiliter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCentiliter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createCubicCentimeter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCubicCentimeter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createCubicFoot(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCubicFoot(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 5;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createCubicInch(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCubicInch(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 6;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createCubicKilometer(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCubicKilometer(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 7;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createCubicMeter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCubicMeter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 8;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createCubicMile(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCubicMile(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 9;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createCubicYard(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCubicYard(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 10;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createCup(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCup(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 11;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createCupMetric(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getCupMetric(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 12;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createDeciliter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDeciliter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 13;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createDessertSpoon(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDessertSpoon(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 14;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createDessertSpoonImperial(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDessertSpoonImperial(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 15;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createDram(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDram(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 16;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createDrop(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getDrop(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 17;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createFluidOunce(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getFluidOunce(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 18;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createFluidOunceImperial(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getFluidOunceImperial(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 19;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createGallon(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getGallon(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 20;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createGallonImperial(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getGallonImperial(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 21;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createHectoliter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getHectoliter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 22;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createJigger(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getJigger(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 23;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createLiter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getLiter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 24;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createMegaliter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMegaliter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 25;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createMilliliter(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getMilliliter(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 26;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createPinch(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPinch(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 27;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createPint(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPint(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 28;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createPintMetric(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getPintMetric(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 29;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createQuart(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getQuart(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 30;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createQuartImperial(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getQuartImperial(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 31;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createTablespoon(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getTablespoon(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 32;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::createTeaspoon(icu::MeasureUnit *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::MeasureUnit::getTeaspoon(uint64_t a1@<X8>)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = 33;
  *(a1 + 18) = 22;
}

uint64_t icu::MeasureUnit::MeasureUnit(uint64_t this)
{
  *this = &unk_1F093E168;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 18) = 16;
  return this;
}

{
  *this = &unk_1F093E168;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 18) = 16;
  return this;
}

uint64_t icu::MeasureUnit::MeasureUnit(uint64_t this, uint64_t a2)
{
  *this = &unk_1F093E168;
  *(this + 8) = 0;
  return icu::MeasureUnit::operator=(this, a2);
}

{
  *this = &unk_1F093E168;
  *(this + 8) = 0;
  return icu::MeasureUnit::operator=(this, a2);
}

uint64_t icu::MeasureUnit::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      if (*(v4 + 108))
      {
        free(*(v4 + 96));
      }

      sub_195342340(v4 + 8);
      MEMORY[0x19A8B2600](v4, 0x10B0C40ACCAEDCCLL);
    }

    if (*(a2 + 8))
    {
      operator new();
    }

    *(a1 + 8) = 0;
    *(a1 + 18) = *(a2 + 18);
    *(a1 + 16) = *(a2 + 16);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      if (*(v4 + 108))
      {
        free(*(v4 + 96));
      }

      sub_195342340(v4 + 8);
      MEMORY[0x19A8B2600](v4, 0x10B0C40ACCAEDCCLL);
    }

    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a1 + 18) = *(a2 + 18);
    *(a1 + 16) = *(a2 + 16);
  }

  return a1;
}

uint64_t icu::MeasureUnit::MeasureUnit(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = &unk_1F093E168;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(result + 18) = *(a2 + 18);
  *(a2 + 8) = 0;
  return result;
}

{
  v2 = *(a2 + 8);
  *result = &unk_1F093E168;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(result + 18) = *(a2 + 18);
  *(a2 + 8) = 0;
  return result;
}

uint64_t icu::MeasureUnit::MeasureUnit(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F093E168;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  *(a1 + 18) = -1;
  if (!icu::MeasureUnit::findBySubType(*(a2 + 96), *(a2 + 152), a1))
  {
    operator new();
  }

  return a1;
}

BOOL icu::MeasureUnit::findBySubType(const char *a1, int a2, uint64_t a3)
{
  v5 = 0;
  v6 = 1;
  while (v5 == 5)
  {
    v7 = 6;
LABEL_7:
    v6 = v5 < 0x16;
    v5 = v7;
    if (v7 == 23)
    {
      return v6;
    }
  }

  v8 = dword_19548FFC0[v5];
  v7 = v5 + 1;
  v9 = dword_19548FFC0[v5 + 1];
  v10 = sub_195341198(off_1E740ED90, v8, v9, a1, a2);
  if (v10 < 0)
  {
    if (strcmp(a1, "hour-kilowatt"))
    {
      goto LABEL_7;
    }

    icu::StringPiece::StringPiece(&v13, "kilowatt-hour");
    v10 = sub_195341198(off_1E740ED90, v8, v9, v13, v14);
    if (v10 < 0)
    {
      goto LABEL_7;
    }
  }

  icu::MeasureUnit::setTo(a3, v5, v10 - v8);
  return v6;
}

void *icu::MeasureUnitImpl::copy@<X0>(icu::MeasureUnitImpl *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 16) = a3 + 32;
  *(a3 + 24) = 8;
  *(a3 + 96) = a3 + 109;
  *(a3 + 104) = 40;
  *(a3 + 152) = 0;
  *a3 = *this;
  result = icu::CharString::append((a3 + 96), *(this + 12), *(this + 38), a2);
  if (*(this + 2) >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(*(this + 2) + 8 * v7);
      result = sub_19534243C(a3 + 8);
      if (!result)
      {
        break;
      }

      if (++v7 >= *(this + 2))
      {
        return result;
      }
    }

    *a2 = U_MEMORY_ALLOCATION_ERROR;
  }

  return result;
}

void icu::MeasureUnit::~MeasureUnit(icu::MeasureUnit *this)
{
  *this = &unk_1F093E168;
  v2 = *(this + 1);
  if (v2)
  {
    if (*(v2 + 108))
    {
      free(*(v2 + 96));
    }

    sub_195342340(v2 + 8);
    MEMORY[0x19A8B2600](v2, 0x10B0C40ACCAEDCCLL);
    *(this + 1) = 0;
  }

  icu::UObject::~UObject(this);
}

{
  icu::MeasureUnit::~MeasureUnit(this);

  JUMPOUT(0x19A8B2600);
}

const char *icu::MeasureUnit::getType(icu::MeasureUnit *this)
{
  v1 = *(this + 18);
  if (v1 == -1)
  {
    return "";
  }

  else
  {
    return off_1E740ECD8[v1];
  }
}

const char *icu::MeasureUnit::getSubtype(icu::MeasureUnit *this)
{
  v1 = *(this + 18);
  if (v1 == 255)
  {
    return "";
  }

  v2 = *(this + 1);
  if (v2)
  {
    v3 = (v2 + 96);
  }

  else
  {
    if ((v1 & 0x80) != 0 || *(this + 8) < 0)
    {
      v5 = -1;
    }

    else
    {
      v5 = dword_19548FFC0[v1] + *(this + 8);
    }

    v3 = &off_1E740ED90[v5];
  }

  return *v3;
}

char *icu::MeasureUnit::getIdentifier(icu::MeasureUnit *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = (v1 + 96);
  }

  else
  {
    v3 = *(this + 18);
    if (v3 < 0 || *(this + 8) < 0)
    {
      v4 = -1;
    }

    else
    {
      v4 = dword_19548FFC0[v3] + *(this + 8);
    }

    v2 = &off_1E740ED90[v4];
  }

  return *v2;
}

uint64_t icu::MeasureUnit::getOffset(icu::MeasureUnit *this)
{
  v1 = *(this + 18);
  if (v1 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(this + 8);
  if (v2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (dword_19548FFC0[v1] + v2);
  }
}

uint64_t icu::MeasureUnit::operator==(uint64_t a1, uint64_t a2)
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
    v5 = *(a1 + 8);
    if (v5)
    {
      v6 = (v5 + 96);
    }

    else
    {
      v7 = *(a1 + 18);
      if (v7 < 0 || *(a1 + 16) < 0)
      {
        v8 = -1;
      }

      else
      {
        v8 = dword_19548FFC0[v7] + *(a1 + 16);
      }

      v6 = &off_1E740ED90[v8];
    }

    v9 = *v6;
    v10 = *(a2 + 8);
    if (v10)
    {
      v11 = (v10 + 96);
    }

    else
    {
      v12 = *(a2 + 18);
      if (v12 < 0 || *(a2 + 16) < 0)
      {
        v13 = -1;
      }

      else
      {
        v13 = dword_19548FFC0[v12] + *(a2 + 16);
      }

      v11 = &off_1E740ED90[v13];
    }

    return strcmp(v9, *v11) == 0;
  }

  return result;
}

uint64_t icu::MeasureUnit::getAvailable(icu::MeasureUnit *this, icu::MeasureUnit *a2, int *a3, UErrorCode *a4)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 >= 495)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v7 + 1;
      v10 = dword_19548FFC0[v7 + 1];
      v11 = v10 - v6;
      if (v10 - v6 >= 1)
      {
        v12 = 0;
        v13 = this + 24 * v8;
        v8 = v8 + v10 - v6;
        do
        {
          icu::MeasureUnit::setTo(v13, v7, v12++);
          v13 += 24;
        }

        while (v11 != v12);
      }

      v6 = v10;
      ++v7;
    }

    while (v9 != 23);
    return 495;
  }

  else
  {
    *a3 = 15;
    return 495;
  }
}

uint64_t icu::MeasureUnit::setTo(uint64_t this, char a2, __int16 a3)
{
  *(this + 18) = a2;
  *(this + 16) = a3;
  v3 = *(this + 8);
  if (v3)
  {
    v4 = this;
    if (*(v3 + 108))
    {
      free(*(v3 + 96));
    }

    sub_195342340(v3 + 8);
    this = MEMORY[0x19A8B2600](v3, 0x10B0C40ACCAEDCCLL);
    *(v4 + 8) = 0;
  }

  return this;
}

uint64_t icu::MeasureUnit::getAvailable(icu::MeasureUnit *this, const char *a2, icu::MeasureUnit *a3, int *a4, UErrorCode *a5)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v8 = a3;
  icu::StringPiece::StringPiece(&v13, this);
  v10 = sub_195341198(off_1E740ECD8, 0, 23, v13, v14);
  if (v10 == -1)
  {
    return 0;
  }

  v11 = v10;
  v5 = (dword_19548FFC0[v10 + 1] - dword_19548FFC0[v10]);
  if (v5 <= v8)
  {
    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        icu::MeasureUnit::setTo(a2, v11, i);
        a2 += 24;
      }
    }
  }

  else
  {
    *a4 = 15;
  }

  return v5;
}

uint64_t sub_195341198(uint64_t a1, int a2, int a3, uint64_t a4, int a5)
{
  while (a2 < a3)
  {
    v10 = ((a2 + a3) / 2);
    icu::StringPiece::StringPiece(v13, *(a1 + 8 * v10));
    v11 = icu::StringPiece::compare(v13, a4, a5);
    if (v11 < 0)
    {
      a2 = v10 + 1;
    }

    else
    {
      a3 = (a2 + a3) / 2;
      if (!v11)
      {
        return v10;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t icu::MeasureUnit::getAvailableTypes(icu::MeasureUnit *this, UErrorCode *a2)
{
  v3 = uenum_openCharStringsEnumeration(off_1E740ECD8, 23, this);
  if (*this < 1)
  {
    operator new();
  }

  uenum_close(v3);
  return 0;
}

uint64_t icu::MeasureUnit::initTime(icu::MeasureUnit *this, const char *a2)
{
  icu::StringPiece::StringPiece(&v10, "duration");
  v4 = sub_195341198(off_1E740ECD8, 0, 23, v10, v11);
  *(this + 18) = v4;
  v5 = &dword_19548FFC0[v4];
  v6 = *v5;
  v7 = v5[1];
  icu::StringPiece::StringPiece(&v10, a2);
  result = sub_195341198(off_1E740ED90, v6, v7, v10, v11);
  v9 = (result - dword_19548FFC0[*(this + 18)]);
  *(this + 8) = result - LOWORD(dword_19548FFC0[*(this + 18)]);
  return result;
}

uint64_t icu::MeasureUnit::initCurrency(uint64_t a1, uint64_t a2, int a3)
{
  icu::StringPiece::StringPiece(&v8, "currency");
  v6 = sub_195341198(off_1E740ECD8, 0, 23, v8, v9);
  *(a1 + 18) = v6;
  result = sub_195341198(off_1E740ED90, dword_19548FFC0[v6], dword_19548FFC0[v6 + 1], a2, a3);
  if (result == -1)
  {
    operator new();
  }

  *(a1 + 16) = result - LOWORD(dword_19548FFC0[*(a1 + 18)]);
  return result;
}

uint64_t icu::MeasureUnit::createFromUAMeasureUnit(int a1, icu::MeasureUnit *this)
{
  if (a1 > 2561)
  {
    if (a1 > 3330)
    {
      if (a1 <= 4354)
      {
        if (a1 <= 3593)
        {
          if (a1 > 3587)
          {
            if (a1 > 3590)
            {
              if (a1 == 3591)
              {
                return icu::MeasureUnit::createMegabyte(this, this);
              }

              else if (a1 == 3592)
              {
                return icu::MeasureUnit::createTerabit(this, this);
              }

              else
              {
                return icu::MeasureUnit::createTerabyte(this, this);
              }
            }

            else if (a1 == 3588)
            {
              return icu::MeasureUnit::createKilobit(this, this);
            }

            else if (a1 == 3589)
            {
              return icu::MeasureUnit::createKilobyte(this, this);
            }

            else
            {
              return icu::MeasureUnit::createMegabit(this, this);
            }
          }

          if (a1 > 3584)
          {
            if (a1 == 3585)
            {
              return icu::MeasureUnit::createByte(this, this);
            }

            if (a1 == 3586)
            {
              return icu::MeasureUnit::createGigabit(this, this);
            }

            return icu::MeasureUnit::createGigabyte(this, this);
          }

          if (a1 == 3331)
          {
            return icu::MeasureUnit::createMilePerGallonImperial(this, this);
          }

          if (a1 == 3584)
          {
            return icu::MeasureUnit::createBit(this, this);
          }
        }

        else if (a1 > 4096)
        {
          if (a1 > 4351)
          {
            if (a1 == 4352)
            {
              return icu::MeasureUnit::createLux(this, this);
            }

            if (a1 == 4353)
            {
              return icu::MeasureUnit::createSolarLuminosity(this, this);
            }

            return icu::MeasureUnit::createCandela(this, this);
          }

          switch(a1)
          {
            case 4097:
              return icu::MeasureUnit::createKilohertz(this, this);
            case 4098:
              return icu::MeasureUnit::createMegahertz(this, this);
            case 4099:
              return icu::MeasureUnit::createGigahertz(this, this);
          }
        }

        else if (a1 > 3841)
        {
          switch(a1)
          {
            case 3842:
              return icu::MeasureUnit::createOhm(this, this);
            case 3843:
              return icu::MeasureUnit::createVolt(this, this);
            case 4096:
              return icu::MeasureUnit::createHertz(this, this);
          }
        }

        else
        {
          switch(a1)
          {
            case 3594:
              return icu::MeasureUnit::createPetabyte(this, this);
            case 3840:
              return icu::MeasureUnit::createAmpere(this, this);
            case 3841:
              return icu::MeasureUnit::createMilliampere(this, this);
          }
        }
      }

      else
      {
        if (a1 <= 4864)
        {
          if (a1 > 4612)
          {
            if (a1 <= 4615)
            {
              if (a1 == 4613)
              {
                return icu::MeasureUnit::createPermille(this, this);
              }

              if (a1 == 4614)
              {
                return icu::MeasureUnit::createPermyriad(this, this);
              }

              return icu::MeasureUnit::createMole(this, this);
            }

            if (a1 == 4616)
            {
              return icu::MeasureUnit::createItem(this, this);
            }

            if (a1 != 4617)
            {
              if (a1 == 4864)
              {
                return icu::MeasureUnit::createNewton(this, this);
              }

              goto LABEL_177;
            }
          }

          else
          {
            if (a1 > 4609)
            {
              if (a1 == 4610)
              {
                return icu::MeasureUnit::createMillimolePerLiter(this, this);
              }

              if (a1 == 4611)
              {
                return icu::MeasureUnit::createPartPerMillion(this, this);
              }

              return icu::MeasureUnit::createPercent(this, this);
            }

            if (a1 == 4355)
            {
              return icu::MeasureUnit::createLumen(this, this);
            }

            if (a1 == 4608)
            {
              return icu::MeasureUnit::createKarat(this, this);
            }

            if (a1 != 4609)
            {
              goto LABEL_177;
            }
          }

          return icu::MeasureUnit::createMilligramOfglucosePerDeciliter(this, this);
        }

        if (a1 > 5377)
        {
          if (a1 <= 5380)
          {
            if (a1 == 5378)
            {
              return icu::MeasureUnit::createMegapixel(this, this);
            }

            if (a1 == 5379)
            {
              return icu::MeasureUnit::createPixelPerCentimeter(this, this);
            }

            return icu::MeasureUnit::createPixelPerInch(this, this);
          }

          switch(a1)
          {
            case 5381:
              return icu::MeasureUnit::createDotPerCentimeter(this, this);
            case 5382:
              return icu::MeasureUnit::createDotPerInch(this, this);
            case 5383:
              return icu::MeasureUnit::createDot(this, this);
          }
        }

        else if (a1 > 5120)
        {
          switch(a1)
          {
            case 5121:
              return icu::MeasureUnit::createPoundFoot(this, this);
            case 5376:
              return icu::MeasureUnit::createEm(this, this);
            case 5377:
              return icu::MeasureUnit::createPixel(this, this);
          }
        }

        else
        {
          switch(a1)
          {
            case 4865:
              return icu::MeasureUnit::createPoundForce(this, this);
            case 4866:
              return icu::MeasureUnit::createKilowattHourPer100Kilometer(this, this);
            case 5120:
              return icu::MeasureUnit::createNewtonMeter(this, this);
          }
        }
      }

LABEL_177:
      *this = 1;
      return 0;
    }

    if (a1 > 3071)
    {
      if (a1 <= 3077)
      {
        if (a1 > 3074)
        {
          if (a1 == 3075)
          {
            return icu::MeasureUnit::createKilocalorie(this, this);
          }

          else if (a1 == 3076)
          {
            return icu::MeasureUnit::createKilojoule(this, this);
          }

          else
          {
            return icu::MeasureUnit::createKilowattHour(this, this);
          }
        }

        else if (a1 == 3072)
        {
          return icu::MeasureUnit::createCalorie(this, this);
        }

        else if (a1 == 3073)
        {
          return icu::MeasureUnit::createFoodcalorie(this, this);
        }

        else
        {
          return icu::MeasureUnit::createJoule(this, this);
        }
      }

      if (a1 > 3327)
      {
        if (a1 == 3328)
        {
          return icu::MeasureUnit::createLiterPerKilometer(this, this);
        }

        if (a1 == 3329)
        {
          return icu::MeasureUnit::createMilePerGallon(this, this);
        }

        return icu::MeasureUnit::createLiterPer100Kilometers(this, this);
      }

      switch(a1)
      {
        case 3078:
          return icu::MeasureUnit::createElectronvolt(this, this);
        case 3079:
          return icu::MeasureUnit::createBritishThermalUnit(this, this);
        case 3080:
          return icu::MeasureUnit::createThermUs(this, this);
      }

      goto LABEL_177;
    }

    switch(a1)
    {
      case 2816:
        result = icu::MeasureUnit::createLiter(this, this);
        break;
      case 2817:
        result = icu::MeasureUnit::createCubicKilometer(this, this);
        break;
      case 2818:
        result = icu::MeasureUnit::createCubicMile(this, this);
        break;
      case 2819:
        result = icu::MeasureUnit::createMilliliter(this, this);
        break;
      case 2820:
        result = icu::MeasureUnit::createCentiliter(this, this);
        break;
      case 2821:
        result = icu::MeasureUnit::createDeciliter(this, this);
        break;
      case 2822:
        result = icu::MeasureUnit::createHectoliter(this, this);
        break;
      case 2823:
        result = icu::MeasureUnit::createMegaliter(this, this);
        break;
      case 2824:
        result = icu::MeasureUnit::createCubicCentimeter(this, this);
        break;
      case 2825:
        result = icu::MeasureUnit::createCubicMeter(this, this);
        break;
      case 2826:
        result = icu::MeasureUnit::createCubicInch(this, this);
        break;
      case 2827:
        result = icu::MeasureUnit::createCubicFoot(this, this);
        break;
      case 2828:
        result = icu::MeasureUnit::createCubicYard(this, this);
        break;
      case 2829:
        result = icu::MeasureUnit::createAcreFoot(this, this);
        break;
      case 2830:
        result = icu::MeasureUnit::createBushel(this, this);
        break;
      case 2831:
        result = icu::MeasureUnit::createTeaspoon(this, this);
        break;
      case 2832:
        result = icu::MeasureUnit::createTablespoon(this, this);
        break;
      case 2833:
        result = icu::MeasureUnit::createFluidOunce(this, this);
        break;
      case 2834:
        result = icu::MeasureUnit::createCup(this, this);
        break;
      case 2835:
        result = icu::MeasureUnit::createPint(this, this);
        break;
      case 2836:
        result = icu::MeasureUnit::createQuart(this, this);
        break;
      case 2837:
        result = icu::MeasureUnit::createGallon(this, this);
        break;
      case 2838:
        result = icu::MeasureUnit::createCupMetric(this, this);
        break;
      case 2839:
        result = icu::MeasureUnit::createPintMetric(this, this);
        break;
      case 2840:
        result = icu::MeasureUnit::createGallonImperial(this, this);
        break;
      case 2841:
        result = icu::MeasureUnit::createFluidOunceImperial(this, this);
        break;
      case 2842:
        result = icu::MeasureUnit::createBarrel(this, this);
        break;
      case 2843:
        result = icu::MeasureUnit::createDessertSpoon(this, this);
        break;
      case 2844:
        result = icu::MeasureUnit::createDessertSpoonImperial(this, this);
        break;
      case 2845:
        result = icu::MeasureUnit::createDram(this, this);
        break;
      case 2846:
        result = icu::MeasureUnit::createDrop(this, this);
        break;
      case 2847:
        result = icu::MeasureUnit::createJigger(this, this);
        break;
      case 2848:
        result = icu::MeasureUnit::createPinch(this, this);
        break;
      case 2849:
        result = icu::MeasureUnit::createQuartImperial(this, this);
        break;
      default:
        if (a1 == 2562)
        {
          result = icu::MeasureUnit::createKelvin(this, this);
        }

        else
        {
          if (a1 != 2563)
          {
            goto LABEL_177;
          }

          result = icu::MeasureUnit::createGenericTemperature(this, this);
        }

        break;
    }
  }

  else if (a1 > 1535)
  {
    if (a1 > 1795)
    {
      if (a1 > 2055)
      {
        if (a1 > 2306)
        {
          if (a1 <= 2308)
          {
            if (a1 == 2307)
            {
              return icu::MeasureUnit::createKnot(this, this);
            }

            else
            {
              return icu::MeasureUnit::createBeaufort(this, this);
            }
          }

          switch(a1)
          {
            case 2309:
              return icu::MeasureUnit::createLightSpeed(this, this);
            case 2560:
              return icu::MeasureUnit::createCelsius(this, this);
            case 2561:
              return icu::MeasureUnit::createFahrenheit(this, this);
          }
        }

        else
        {
          if (a1 > 2303)
          {
            if (a1 == 2304)
            {
              return icu::MeasureUnit::createMeterPerSecond(this, this);
            }

            if (a1 == 2305)
            {
              return icu::MeasureUnit::createKilometerPerHour(this, this);
            }

            return icu::MeasureUnit::createMilePerHour(this, this);
          }

          if (a1 == 2056)
          {
            return icu::MeasureUnit::createPascal(this, this);
          }

          if (a1 == 2057)
          {
            return icu::MeasureUnit::createBar(this, this);
          }
        }
      }

      else
      {
        if (a1 > 2050)
        {
          if (a1 <= 2052)
          {
            if (a1 == 2051)
            {
              return icu::MeasureUnit::createMillimeterOfMercury(this, this);
            }

            else
            {
              return icu::MeasureUnit::createPoundPerSquareInch(this, this);
            }
          }

          else if (a1 == 2053)
          {
            return icu::MeasureUnit::createAtmosphere(this, this);
          }

          else if (a1 == 2054)
          {
            return icu::MeasureUnit::createKilopascal(this, this);
          }

          else
          {
            return icu::MeasureUnit::createMegapascal(this, this);
          }
        }

        if (a1 > 2047)
        {
          if (a1 == 2048)
          {
            return icu::MeasureUnit::createHectopascal(this, this);
          }

          if (a1 == 2049)
          {
            return icu::MeasureUnit::createInchHg(this, this);
          }

          return icu::MeasureUnit::createMillibar(this, this);
        }

        if (a1 == 1796)
        {
          return icu::MeasureUnit::createMegawatt(this, this);
        }

        if (a1 == 1797)
        {
          return icu::MeasureUnit::createGigawatt(this, this);
        }
      }

      goto LABEL_177;
    }

    if (a1 > 1791)
    {
      if (a1 > 1793)
      {
        if (a1 == 1794)
        {
          return icu::MeasureUnit::createHorsepower(this, this);
        }

        else
        {
          return icu::MeasureUnit::createMilliwatt(this, this);
        }
      }

      else if (a1 == 1792)
      {
        return icu::MeasureUnit::createWatt(this, this);
      }

      else
      {
        return icu::MeasureUnit::createKilowatt(this, this);
      }
    }

    else
    {
      switch(a1)
      {
        case 1536:
          result = icu::MeasureUnit::createGram(this, this);
          break;
        case 1537:
          result = icu::MeasureUnit::createKilogram(this, this);
          break;
        case 1538:
          result = icu::MeasureUnit::createOunce(this, this);
          break;
        case 1539:
          result = icu::MeasureUnit::createPound(this, this);
          break;
        case 1540:
          result = icu::MeasureUnit::createStone(this, this);
          break;
        case 1541:
          result = icu::MeasureUnit::createMicrogram(this, this);
          break;
        case 1542:
          result = icu::MeasureUnit::createMilligram(this, this);
          break;
        case 1543:
          result = icu::MeasureUnit::createTonne(this, this);
          break;
        case 1544:
          result = icu::MeasureUnit::createTon(this, this);
          break;
        case 1545:
          result = icu::MeasureUnit::createCarat(this, this);
          break;
        case 1546:
          result = icu::MeasureUnit::createOunceTroy(this, this);
          break;
        case 1547:
          result = icu::MeasureUnit::createDalton(this, this);
          break;
        case 1548:
          result = icu::MeasureUnit::createEarthMass(this, this);
          break;
        case 1549:
          result = icu::MeasureUnit::createSolarMass(this, this);
          break;
        case 1550:
          result = icu::MeasureUnit::createGrain(this, this);
          break;
        default:
          goto LABEL_177;
      }
    }
  }

  else
  {
    if (a1 <= 1279)
    {
      if (a1 > 519)
      {
        switch(a1)
        {
          case 1024:
            result = icu::MeasureUnit::createYear(this, this);
            break;
          case 1025:
            result = icu::MeasureUnit::createMonth(this, this);
            break;
          case 1026:
            result = icu::MeasureUnit::createWeek(this, this);
            break;
          case 1027:
            result = icu::MeasureUnit::createDay(this, this);
            break;
          case 1028:
            result = icu::MeasureUnit::createHour(this, this);
            break;
          case 1029:
            result = icu::MeasureUnit::createMinute(this, this);
            break;
          case 1030:
            result = icu::MeasureUnit::createSecond(this, this);
            break;
          case 1031:
            result = icu::MeasureUnit::createMillisecond(this, this);
            break;
          case 1032:
            result = icu::MeasureUnit::createMicrosecond(this, this);
            break;
          case 1033:
            result = icu::MeasureUnit::createNanosecond(this, this);
            break;
          case 1034:
            result = icu::MeasureUnit::createCentury(this, this);
            break;
          case 1035:
            result = icu::MeasureUnit::createYearPerson(this, this);
            break;
          case 1036:
            result = icu::MeasureUnit::createMonthPerson(this, this);
            break;
          case 1037:
            result = icu::MeasureUnit::createWeekPerson(this, this);
            break;
          case 1038:
            result = icu::MeasureUnit::createDayPerson(this, this);
            break;
          case 1039:
            result = icu::MeasureUnit::createDecade(this, this);
            break;
          case 1040:
            result = icu::MeasureUnit::createQuarter(this, this);
            break;
          case 1041:
            result = icu::MeasureUnit::createNight(this, this);
            break;
          default:
            if (a1 == 520)
            {
              result = icu::MeasureUnit::createSquareYard(this, this);
            }

            else
            {
              if (a1 != 521)
              {
                goto LABEL_177;
              }

              result = icu::MeasureUnit::createDunam(this, this);
            }

            break;
        }

        return result;
      }

      if (a1 > 511)
      {
        if (a1 > 515)
        {
          if (a1 > 517)
          {
            if (a1 == 518)
            {
              return icu::MeasureUnit::createSquareCentimeter(this, this);
            }

            else
            {
              return icu::MeasureUnit::createSquareInch(this, this);
            }
          }

          else if (a1 == 516)
          {
            return icu::MeasureUnit::createAcre(this, this);
          }

          else
          {
            return icu::MeasureUnit::createHectare(this, this);
          }
        }

        else if (a1 > 513)
        {
          if (a1 == 514)
          {
            return icu::MeasureUnit::createSquareFoot(this, this);
          }

          else
          {
            return icu::MeasureUnit::createSquareMile(this, this);
          }
        }

        else if (a1 == 512)
        {
          return icu::MeasureUnit::createSquareMeter(this, this);
        }

        else
        {
          return icu::MeasureUnit::createSquareKilometer(this, this);
        }
      }

      if (a1 <= 256)
      {
        switch(a1)
        {
          case 0:
            return icu::MeasureUnit::createGForce(this, this);
          case 1:
            return icu::MeasureUnit::createMeterPerSecondSquared(this, this);
          case 256:
            return icu::MeasureUnit::createDegree(this, this);
        }
      }

      else
      {
        if (a1 <= 258)
        {
          if (a1 == 257)
          {
            return icu::MeasureUnit::createArcMinute(this, this);
          }

          else
          {
            return icu::MeasureUnit::createArcSecond(this, this);
          }
        }

        if (a1 == 259)
        {
          return icu::MeasureUnit::createRadian(this, this);
        }

        if (a1 == 260)
        {
          return icu::MeasureUnit::createRevolutionAngle(this, this);
        }
      }

      goto LABEL_177;
    }

    switch(a1)
    {
      case 1280:
        result = icu::MeasureUnit::createMeter(this, this);
        break;
      case 1281:
        result = icu::MeasureUnit::createCentimeter(this, this);
        break;
      case 1282:
        result = icu::MeasureUnit::createKilometer(this, this);
        break;
      case 1283:
        result = icu::MeasureUnit::createMillimeter(this, this);
        break;
      case 1284:
        result = icu::MeasureUnit::createPicometer(this, this);
        break;
      case 1285:
        result = icu::MeasureUnit::createFoot(this, this);
        break;
      case 1286:
        result = icu::MeasureUnit::createInch(this, this);
        break;
      case 1287:
        result = icu::MeasureUnit::createMile(this, this);
        break;
      case 1288:
        result = icu::MeasureUnit::createYard(this, this);
        break;
      case 1289:
        result = icu::MeasureUnit::createLightYear(this, this);
        break;
      case 1290:
        result = icu::MeasureUnit::createDecimeter(this, this);
        break;
      case 1291:
        result = icu::MeasureUnit::createMicrometer(this, this);
        break;
      case 1292:
        result = icu::MeasureUnit::createNanometer(this, this);
        break;
      case 1293:
        result = icu::MeasureUnit::createNauticalMile(this, this);
        break;
      case 1294:
        result = icu::MeasureUnit::createFathom(this, this);
        break;
      case 1295:
        result = icu::MeasureUnit::createFurlong(this, this);
        break;
      case 1296:
        result = icu::MeasureUnit::createAstronomicalUnit(this, this);
        break;
      case 1297:
        result = icu::MeasureUnit::createParsec(this, this);
        break;
      case 1298:
        result = icu::MeasureUnit::createMileScandinavian(this, this);
        break;
      case 1299:
        result = icu::MeasureUnit::createPoint(this, this);
        break;
      case 1300:
        result = icu::MeasureUnit::createSolarRadius(this, this);
        break;
      case 1301:
        result = icu::MeasureUnit::createEarthRadius(this, this);
        break;
      default:
        goto LABEL_177;
    }
  }

  return result;
}

uint64_t icu::MeasureUnit::getUAMeasureUnit(icu::MeasureUnit *this)
{
  v1 = *(this + 18);
  if (v1 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *(this + 8);
  if (v2 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = dword_19548FFC0[v1] + v2;
  if (v3 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v1 <= 5 ? v3 : v3 - 302;
  if (v4 > 192)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_195490020[v4];
  }
}

uint64_t icu::MeasureUnit::getUAMeasureUnits(icu::MeasureUnit *a1, _DWORD *a2, uint64_t a3, UErrorCode *a4)
{
  v5 = a3;
  if (icu::MeasureUnit::getComplexity(a1, a4, a3, a4) == 2)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    icu::MeasureUnit::splitToSingleUnitsImpl(a1, &v12, a4, v8);
  }

  if (v5 >= 1)
  {
    *a2 = icu::MeasureUnit::getUAMeasureUnit(a1);
  }

  return 1;
}

uint64_t sub_1953422B0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  *(a1 + 28) = *(a2 + 28);
  v6 = (a2 + 32);
  if (v4 == v6)
  {
    *(a1 + 16) = a1 + 32;
    memcpy((a1 + 32), v6, 8 * v5);
  }

  else
  {
    *(a2 + 16) = v6;
    *(a2 + 24) = 8;
    *(a2 + 28) = 0;
  }

  *(a2 + 8) = 0;
  icu::CharString::CharString(a1 + 96, a2 + 96);
  return a1;
}

uint64_t sub_195342340(uint64_t a1)
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
        MEMORY[0x19A8B2600](v4, 0x1000C403E1C8BA9);
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

uint64_t *sub_1953423C0(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = (v2 + 24 * v4 - 24);
      v6 = -24 * v4;
      do
      {
        icu::MeasureUnit::~MeasureUnit(v5);
        v5 = (v7 - 24);
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x19A8B25E0](v3, 0x10A1C8022337C91);
  }

  return a1;
}

void *sub_19534243C(uint64_t a1)
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

uint64_t umeas_getPrefixPower(int a1)
{
  if ((a1 + 59) >= 8)
  {
    v1 = -30;
  }

  else
  {
    v1 = 60;
  }

  return (v1 + a1);
}

uint64_t umeas_getPrefixBase(int a1)
{
  if ((a1 + 59) >= 8)
  {
    return 10;
  }

  else
  {
    return 1024;
  }
}

uint64_t icu::getUnitQuantity@<X0>(icu *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  *(a3 + 8) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = a3 + 13;
  *(a3 + 8) = 40;
  *(a3 + 56) = 0;
  v42 = 0u;
  v43 = 0u;
  __s = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  icu::MeasureUnitImpl::copy(this, a2, &v34);
  v23 = 0;
  if (*a2 <= 0)
  {
    if (atomic_load_explicit(&dword_1EAEC9E60, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9E60))
    {
      if (dword_1EAEC9E64 >= 1)
      {
        *a2 = dword_1EAEC9E64;
        goto LABEL_19;
      }
    }

    else
    {
      sub_195342904(a2);
      dword_1EAEC9E64 = *a2;
      icu::umtx_initImplPostInit(&dword_1EAEC9E60);
    }

    if (*a2 <= 0)
    {
      v22[0] = 0;
      v22[1] = qword_1EAEC9E38;
      v22[2] = qword_1EAEC9E38;
      v22[3] = 0xFFFFFFFFLL;
      icu::MeasureUnitImpl::serialize(&v34, a2);
      v20 = 0;
      v21 = 0;
      icu::StringPiece::StringPiece(&v20, __s);
      v7 = sub_195343208(v22, v20, v21, &v23);
      if (*a2 > 0)
      {
        goto LABEL_18;
      }

      if (v23 >= 1)
      {
        v23 = 0;
        DWORD2(v43) = 0;
        *__s = 0;
        v8 = DWORD2(v34);
        if (SDWORD2(v34) >= 1)
        {
          v9 = v35;
          do
          {
            v10 = *v9++;
            *(v10 + 8) = -*(v10 + 8);
            --v8;
          }

          while (v8);
        }

        icu::MeasureUnitImpl::serialize(&v34, a2);
        icu::StringPiece::set(&v20, __s);
        v7 = sub_195343208(v22, v20, v21, &v23);
        if (*a2 > 0)
        {
          goto LABEL_18;
        }
      }

      v11 = v7;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      icu::MeasureUnitImpl::copyAndSimplify(this, a2, &v24);
      if (*a2 > 0)
      {
LABEL_15:
        if (BYTE12(v30))
        {
          free(v30);
        }

        sub_195342340(&v24 + 8);
LABEL_18:
        icu::BytesTrie::~BytesTrie(v22);
        goto LABEL_19;
      }

      if (v23 >= 1)
      {
        v23 = 0;
        icu::MeasureUnitImpl::serialize(&v24, a2);
        icu::StringPiece::set(&v20, v30);
        v14 = sub_195343208(v22, v20, v21, &v23);
        if (*a2 > 0)
        {
          goto LABEL_15;
        }

        if (v23 >= 1)
        {
          v23 = 0;
          DWORD2(v33) = 0;
          *v30 = 0;
          v15 = DWORD2(v24);
          if (SDWORD2(v24) >= 1)
          {
            v16 = v25;
            do
            {
              v17 = *v16++;
              *(v17 + 8) = -*(v17 + 8);
              --v15;
            }

            while (v15);
          }

          icu::MeasureUnitImpl::serialize(&v24, a2);
          icu::StringPiece::set(&v20, v30);
          v14 = sub_195343208(v22, v20, v21, &v23);
          if (*a2 > 0)
          {
            goto LABEL_15;
          }

          if (v23 >= 1)
          {
LABEL_34:
            *a2 = U_INVALID_FORMAT_ERROR;
            goto LABEL_15;
          }
        }

        v11 = v14;
      }

      if ((v11 & 0x80000000) == 0 && v11 < dword_1EAEC9E40)
      {
        v18 = *(qword_1EAEC9E48 + 8 * v11);
        v19 = u_strlen(v18);
        icu::CharString::appendInvariantChars(a3, v18, v19, a2);
        goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

LABEL_19:
  if (BYTE12(__s))
  {
    free(__s);
  }

  result = sub_195342340(&v34 + 8);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195342904(UErrorCode *a1)
{
  sub_195400588(0, sub_1953447E0);
  v2 = ures_openDirect(0, "units", a1);
  v3 = ures_getByKey(v2, "unitQuantities", 0, a1);
  v4 = v3;
  if (*a1 > 0)
  {
    if (!v3)
    {
      goto LABEL_3;
    }

    goto LABEL_30;
  }

  dword_1EAEC9E40 = *(v3 + 128);
  v5 = 8 * dword_1EAEC9E40;
  v6 = malloc_type_malloc(v5, 0x50040EE9192B6uLL);
  qword_1EAEC9E48 = v6;
  if (!v6)
  {
    *a1 = U_MEMORY_ALLOCATION_ERROR;
    goto LABEL_30;
  }

  bzero(v6, v5);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  icu::BytesTrieBuilder::BytesTrieBuilder(v39, a1);
  v38[3] = v39;
  v38[4] = 0;
  v38[0] = &unk_1F093E1B8;
  v38[1] = qword_1EAEC9E48;
  v38[2] = &dword_1EAEC9E40;
  ures_getAllItemsWithFallback(v2, "unitQuantities", v38, a1);
  v7 = icu::BytesTrieBuilder::buildStringPiece(v39, 0, a1);
  if (*a1 <= 0)
  {
    v9 = v7;
    v10 = v8;
    v11 = v8;
    v12 = malloc_type_malloc(v8, 0x100004077774924uLL);
    qword_1EAEC9E38 = v12;
    if (!v12)
    {
      *a1 = U_MEMORY_ALLOCATION_ERROR;
      goto LABEL_29;
    }

    memcpy(v12, v9, v11);
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    icu::BytesTrieBuilder::BytesTrieBuilder(v36, a1);
    if (*a1 > 0)
    {
      goto LABEL_28;
    }

    v13 = v10;
    v14 = &dword_1E740FD10;
    v15 = 512;
    do
    {
      icu::StringPiece::StringPiece(&v28, *(v14 - 1));
      v16 = *v14;
      v14 += 4;
      icu::BytesTrieBuilder::add(v36, v28, v29, v16 + 64, a1);
      v15 -= 16;
    }

    while (v15);
    if (*a1 >= 1)
    {
      goto LABEL_28;
    }

    icu::StringPiece::StringPiece(&v28, "-per-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 128, a1);
    icu::StringPiece::StringPiece(&v28, "-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 129, a1);
    icu::StringPiece::StringPiece(&v28, "-and-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 130, a1);
    icu::StringPiece::StringPiece(&v28, "per-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 192, a1);
    icu::StringPiece::StringPiece(&v28, "square-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 258, a1);
    icu::StringPiece::StringPiece(&v28, "cubic-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 259, a1);
    icu::StringPiece::StringPiece(&v28, "pow2-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 258, a1);
    icu::StringPiece::StringPiece(&v28, "pow3-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 259, a1);
    icu::StringPiece::StringPiece(&v28, "pow4-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 260, a1);
    icu::StringPiece::StringPiece(&v28, "pow5-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 261, a1);
    icu::StringPiece::StringPiece(&v28, "pow6-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 262, a1);
    icu::StringPiece::StringPiece(&v28, "pow7-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 263, a1);
    icu::StringPiece::StringPiece(&v28, "pow8-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 264, a1);
    icu::StringPiece::StringPiece(&v28, "pow9-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 265, a1);
    icu::StringPiece::StringPiece(&v28, "pow10-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 266, a1);
    icu::StringPiece::StringPiece(&v28, "pow11-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 267, a1);
    icu::StringPiece::StringPiece(&v28, "pow12-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 268, a1);
    icu::StringPiece::StringPiece(&v28, "pow13-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 269, a1);
    icu::StringPiece::StringPiece(&v28, "pow14-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 270, a1);
    icu::StringPiece::StringPiece(&v28, "pow15-");
    icu::BytesTrieBuilder::add(v36, v28, v29, 271, a1);
    if (*a1 > 0)
    {
      goto LABEL_28;
    }

    v17 = ures_getByKey(v2, "convertUnits", 0, a1);
    v18 = v17;
    if (*a1 <= 0)
    {
      v19 = *(v17 + 128);
      v20 = malloc_type_malloc((8 * v19), 0x50040EE9192B6uLL);
      qword_1EAEC9E50 = v20;
      if (v20 && (bzero(v20, (8 * v19)), v21 = malloc_type_malloc((4 * v19), 0x100004052888210uLL), (qword_1EAEC9E58 = v21) != 0))
      {
        v22 = v21;
        bzero(v21, (4 * v19));
        v28 = &unk_1F093E200;
        v29 = qword_1EAEC9E50;
        v30 = v22;
        v31 = v19;
        v32 = v36;
        v33 = 512;
        v34 = v9;
        v35 = v13;
        ures_getAllItemsWithFallback(v2, "convertUnits", &v28, a1);
        v23 = icu::BytesTrieBuilder::buildStringPiece(v36, 0, a1);
        if (*a1 <= 0)
        {
          v25 = v23;
          v26 = v24;
          v27 = malloc_type_malloc(v24, 0x100004077774924uLL);
          qword_1EAEC9E68 = v27;
          if (v27)
          {
            memcpy(v27, v25, v26);
          }

          else
          {
            *a1 = U_MEMORY_ALLOCATION_ERROR;
          }
        }

        icu::ResourceSink::~ResourceSink(&v28);
      }

      else
      {
        *a1 = U_MEMORY_ALLOCATION_ERROR;
      }
    }

    else if (!v17)
    {
      goto LABEL_28;
    }

    ures_close(v18);
LABEL_28:
    icu::BytesTrieBuilder::~BytesTrieBuilder(v36);
  }

LABEL_29:
  icu::ResourceSink::~ResourceSink(v38);
  icu::BytesTrieBuilder::~BytesTrieBuilder(v39);
  if (!v4)
  {
LABEL_3:
    if (!v2)
    {
      return;
    }

    goto LABEL_4;
  }

LABEL_30:
  ures_close(v4);
  if (!v2)
  {
    return;
  }

LABEL_4:
  ures_close(v2);
}

void icu::MeasureUnitImpl::serialize(icu::MeasureUnitImpl *this, UErrorCode *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v5 = *(this + 2);
    if (v5)
    {
      if (*this == 1)
      {
        uprv_sortArray(*(this + 2), v5, 8, sub_195344134, 0, 0, a2);
        if (*a2 > 0)
        {
          goto LABEL_2;
        }

        LODWORD(v5) = *(this + 2);
      }

      memset(&v17[1], 0, 48);
      v18 = 0;
      v6 = &v17[1] + 5;
      v17[0] = &v17[1] + 5;
      LODWORD(v17[1]) = 40;
      if (v5 >= 1)
      {
        v7 = 0;
        v8 = 0;
        v9 = 1;
        while (1)
        {
          v10 = *(*(*(this + 2) + 8 * v7) + 8);
          if (v9)
          {
            if (v10 < 0)
            {
              v9 = 0;
              v8 = 1;
            }
          }

          else
          {
            v8 &= v10 >= 0;
          }

          if (*a2 > 0)
          {
            goto LABEL_29;
          }

          if (*this == 2)
          {
            if (v18)
            {
              v11 = "-and-";
LABEL_23:
              icu::StringPiece::StringPiece(&v13, v11);
              icu::CharString::append(v17, v13, v14, a2);
            }
          }

          else
          {
            if (v8)
            {
              if (v18)
              {
                v11 = "-per-";
              }

              else
              {
                v11 = "per-";
              }

              goto LABEL_23;
            }

            if (v18)
            {
              v11 = "-";
              goto LABEL_23;
            }
          }

          icu::SingleUnitImpl::appendNeutralIdentifier(*(*(this + 2) + 8 * v7++), v17, a2);
          if (v7 >= *(this + 2))
          {
            v6 = v17[0];
            v12 = v18;
            goto LABEL_27;
          }
        }
      }

      v12 = 0;
LABEL_27:
      v13 = &v15 + 1;
      v14 = 40;
      v15 = 0;
      v16 = 0;
      icu::CharString::append(&v13, v6, v12, a2);
      icu::CharString::operator=(this + 96, &v13);
      if (v15)
      {
        free(v13);
      }

LABEL_29:
      if (BYTE4(v17[1]))
      {
        free(v17[0]);
      }
    }
  }

LABEL_2:
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195343208(uint64_t a1, const char *a2, unsigned int a3, _DWORD *a4)
{
  *(a1 + 16) = *(a1 + 8);
  *(a1 + 24) = -1;
  if (icu::BytesTrie::next(a1, a2, a3) <= 1)
  {
    *a4 = 16;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v6 = *(a1 + 16);
    v8 = *v6;
    v7 = (v6 + 1);
    v9 = (v8 >> 1);

    return icu::BytesTrie::readValue(v7, v9);
  }
}

uint64_t icu::MeasureUnitImpl::takeReciprocal(uint64_t this, UErrorCode *a2)
{
  *(this + 152) = 0;
  **(this + 96) = 0;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = *(this + 16);
    do
    {
      v4 = *v3++;
      *(v4 + 8) = -*(v4 + 8);
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t icu::MeasureUnitImpl::copyAndSimplify@<X0>(uint64_t this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 16) = a3 + 32;
  *(a3 + 24) = 8;
  *(a3 + 96) = a3 + 109;
  *(a3 + 104) = 40;
  *(a3 + 152) = 0;
  v4 = *(this + 8);
  if (v4 >= 1)
  {
    v5 = this;
    for (i = 0; i < v4; ++i)
    {
      v7 = *(*(v5 + 16) + 8 * i);
      v8 = *(a3 + 8);
      if (v8 < 1)
      {
LABEL_8:
        this = icu::MeasureUnitImpl::appendSingleUnit(a3, v7, a2);
        v4 = *(v5 + 8);
      }

      else
      {
        v9 = *(a3 + 16);
        v10 = qword_1EAEC9E50;
        v11 = *(qword_1EAEC9E50 + 8 * *v7);
        while (1)
        {
          v12 = *v9;
          this = strcmp(*(v10 + 8 * **v9), v11);
          if (!this && *(v12 + 4) == *(v7 + 1))
          {
            break;
          }

          ++v9;
          if (!--v8)
          {
            goto LABEL_8;
          }
        }

        *(v12 + 8) += *(v7 + 2);
      }
    }
  }

  return this;
}

unint64_t icu::SingleUnitImpl::forMeasureUnit(icu::SingleUnitImpl *this, UErrorCode *a2, UErrorCode *a3, UErrorCode *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  v13 = 0u;
  v14 = v16;
  v15 = 8;
  v17[0] = &v17[1] + 5;
  v17[1] = 40;
  DWORD2(v20) = 0;
  v5 = icu::MeasureUnitImpl::forMeasureUnit(this, &v13, a2, a4);
  if (*a2 <= 0 && (v10 = *(v5 + 2)) != 0)
  {
    if (v10 == 1)
    {
      v11 = **(v5 + 2);
      v6 = *v11 & 0xFFFFFFFF00000000;
      v12 = *(v11 + 8);
      v7 = *v11;
    }

    else
    {
      *a2 = U_ILLEGAL_ARGUMENT_ERROR;
      v6 = 0x1E00000000;
      v7 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v6 = 0x1E00000000;
    v7 = 0xFFFFFFFFLL;
  }

  if (BYTE4(v17[1]))
  {
    free(v17[0]);
  }

  sub_195342340(&v13 + 8);
  v8 = *MEMORY[0x1E69E9840];
  return v6 | v7;
}

const icu::MeasureUnit *icu::MeasureUnitImpl::forMeasureUnit(icu::MeasureUnitImpl *this, const icu::MeasureUnit *a2, UErrorCode *a3, UErrorCode *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  result = *(this + 1);
  if (!result)
  {
    Identifier = icu::MeasureUnit::getIdentifier(this);
    icu::StringPiece::StringPiece(&v24, Identifier);
    sub_195343BF4(v24, v25, a3, v19);
    sub_195343CE8(v19, a3, &v24);
    v9 = v25;
    *a2 = v24;
    v10 = *(a2 + 2);
    *(a2 + 2) = v9;
    LODWORD(v25) = v10;
    memset(v22, 0, sizeof(v22));
    v23 = 0;
    v11 = *(a2 + 2);
    v21 = v11;
    v12 = *(a2 + 6);
    LODWORD(v22[0]) = v12;
    v13 = *(a2 + 28);
    BYTE4(v22[0]) = *(a2 + 28);
    if (v11 == a2 + 32)
    {
      v14 = v22 + 8;
      v21 = v22 + 8;
      memcpy(v22 + 8, a2 + 32, 8 * v12);
      if (v13)
      {
        free(v11);
      }
    }

    else
    {
      v14 = v11;
    }

    v15 = v27;
    *(a2 + 6) = v27;
    v16 = v28;
    *(a2 + 28) = v28;
    v17 = v26;
    if (v26 == v29)
    {
      *(a2 + 2) = a2 + 32;
      memcpy(a2 + 32, v29, 8 * v15);
      if (v16)
      {
        free(v17);
        v12 = v22[0];
        v13 = BYTE4(v22[0]);
        v14 = v21;
      }
    }

    else
    {
      *(a2 + 2) = v26;
    }

    v27 = v12;
    v28 = v13;
    if (v14 == v22 + 8)
    {
      v26 = v29;
      memcpy(v29, v22 + 8, 8 * v12);
      if (v13)
      {
        free(v14);
      }
    }

    else
    {
      v26 = v14;
    }

    icu::CharString::operator=(a2 + 96, &v30);
    if (v31)
    {
      free(v30);
    }

    sub_195342340(&v25);
    icu::BytesTrie::~BytesTrie(&v20);
    result = a2;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::SingleUnitImpl::build@<X0>(icu::SingleUnitImpl *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(v10, 0, sizeof(v10));
  v7 = 0u;
  v8 = v10;
  v9 = 8;
  v11[0] = &v11[1] + 5;
  v11[1] = 40;
  DWORD2(v14) = 0;
  icu::MeasureUnitImpl::appendSingleUnit(&v7, this, a2);
  icu::MeasureUnitImpl::serialize(&v7, a2);
  icu::MeasureUnit::MeasureUnit(a3, &v7);
  if (BYTE4(v11[1]))
  {
    free(v11[0]);
  }

  result = sub_195342340(&v7 + 8);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::MeasureUnitImpl::appendSingleUnit(icu::MeasureUnitImpl *this, const icu::SingleUnitImpl *a2, UErrorCode *a3)
{
  *(this + 38) = 0;
  **(this + 12) = 0;
  if (*a2 == -1)
  {
    return 0;
  }

  v6 = (this + 8);
  if (*(this + 2) >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(*(this + 2) + 8 * v7);
      if (!sub_195344E60(v9, a2))
      {
        v8 = v9;
      }

      ++v7;
    }

    while (v7 < *(this + 2));
    if (v8)
    {
      result = 0;
      v8[2] += *(a2 + 2);
      return result;
    }
  }

  if (*a3 > 0)
  {
    return 0;
  }

  result = sub_19534243C(v6);
  if (*a3 <= 0 && !result)
  {
    *a3 = U_MEMORY_ALLOCATION_ERROR;
    return result;
  }

  if (*a3 > 0)
  {
    return 0;
  }

  if (*v6 < 2)
  {
    return 1;
  }

  result = 1;
  if (!*this)
  {
    *this = 1;
  }

  return result;
}

uint64_t icu::MeasureUnitImpl::build@<X0>(icu::MeasureUnitImpl *a1@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  icu::MeasureUnitImpl::serialize(a1, a2);

  return icu::MeasureUnit::MeasureUnit(a3, a1);
}

icu::CharString *icu::SingleUnitImpl::appendNeutralIdentifier(icu::CharString *this, icu::CharString *a2, UErrorCode *a3)
{
  v5 = this;
  v6 = *(this + 2);
  if (v6 >= 0)
  {
    v7 = *(this + 2);
  }

  else
  {
    v7 = -v6;
  }

  if (v7 != 1)
  {
    if (v7 == 3)
    {
      v8 = "cubic-";
    }

    else if (v7 == 2)
    {
      v8 = "square-";
    }

    else
    {
      if (v7 > 0xF)
      {
        v12 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_19:
        *a3 = v12;
        return this;
      }

      icu::StringPiece::StringPiece(&v13, "pow");
      icu::CharString::append(a2, v13, v14, a3);
      icu::CharString::appendNumber(a2, v7, a3);
      v8 = "-";
    }

    icu::StringPiece::StringPiece(&v13, v8);
    this = icu::CharString::append(a2, v13, v14, a3);
  }

  if (*a3 <= 0)
  {
    v9 = *(v5 + 1);
    if (v9 != 30)
    {
      v10 = &dword_1E740FD10;
      v11 = 512;
      while (*v10 != v9)
      {
        v10 += 4;
        v11 -= 16;
        if (!v11)
        {
          v12 = U_UNSUPPORTED_ERROR;
          goto LABEL_19;
        }
      }

      icu::StringPiece::StringPiece(&v13, *(v10 - 1));
      icu::CharString::append(a2, v13, v14, a3);
    }

    icu::StringPiece::StringPiece(&v13, *(qword_1EAEC9E50 + 8 * *v5));
    return icu::CharString::append(a2, v13, v14, a3);
  }

  return this;
}

icu::MeasureUnitImpl *icu::MeasureUnitImpl::MeasureUnitImpl(icu::MeasureUnitImpl *this, const icu::SingleUnitImpl *a2, UErrorCode *a3)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 2) = this + 32;
  *(this + 6) = 8;
  *(this + 28) = 0;
  *(this + 12) = this + 109;
  *(this + 26) = 40;
  *(this + 54) = 0;
  *(this + 38) = 0;
  icu::MeasureUnitImpl::appendSingleUnit(this, a2, a3);
  return this;
}

{
  *this = 0;
  *(this + 2) = 0;
  *(this + 2) = this + 32;
  *(this + 6) = 8;
  *(this + 28) = 0;
  *(this + 12) = this + 109;
  *(this + 26) = 40;
  *(this + 54) = 0;
  *(this + 38) = 0;
  icu::MeasureUnitImpl::appendSingleUnit(this, a2, a3);
  return this;
}

void icu::MeasureUnitImpl::forIdentifier(uint64_t a1@<X0>, uint64_t a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  sub_195343BF4(a1, a2, a3, v6);
  sub_195343CE8(v6, a3, a4);
  icu::BytesTrie::~BytesTrie(&v7);
}

void sub_195343BF4(uint64_t a1@<X0>, uint64_t a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a3 >= 1)
  {
    goto LABEL_8;
  }

  if (atomic_load_explicit(&dword_1EAEC9E60, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC9E60))
  {
    if (dword_1EAEC9E64 >= 1)
    {
      *a3 = dword_1EAEC9E64;
      goto LABEL_8;
    }
  }

  else
  {
    sub_195342904(a3);
    dword_1EAEC9E64 = *a3;
    icu::umtx_initImplPostInit(&dword_1EAEC9E60);
  }

  if (*a3 < 1)
  {
    *a4 = 0;
    *(a4 + 8) = a1;
    *(a4 + 16) = a2;
    v8 = qword_1EAEC9E68;
    goto LABEL_9;
  }

LABEL_8:
  *a4 = 0;
  icu::StringPiece::StringPiece((a4 + 8), "");
  v8 = &word_19549D930;
LABEL_9:
  *(a4 + 24) = 0;
  *(a4 + 32) = v8;
  *(a4 + 40) = v8;
  *(a4 + 48) = -1;
  *(a4 + 56) = 0;
}

uint64_t sub_195343CE8@<X0>(uint64_t result@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 16) = a3 + 32;
  *(a3 + 24) = 8;
  *(a3 + 96) = a3 + 109;
  *(a3 + 104) = 40;
  *(a3 + 152) = 0;
  if (*a2 <= 0)
  {
    v4 = result;
    v5 = *(result + 16);
    if (v5)
    {
      v6 = *result;
      if (*result < v5)
      {
        while (1)
        {
          v16 = 0;
          v15 = 0;
          result = sub_195344DA8(v4, a2);
          if (*a2 > 0)
          {
            return result;
          }

          v8 = result & 0xFFFFFFC0;
          if (v6)
          {
            break;
          }

          if (v8 == 192)
          {
            *(v4 + 56) = 1;
            result = sub_195344DA8(v4, a2);
            if (*a2 >= 1)
            {
              return result;
            }

            v9 = 0;
            v10 = -1;
          }

          else
          {
            v9 = 0;
            v10 = 1;
          }

LABEL_24:
          v11 = 0;
          v12 = 30;
          while (result < 128)
          {
            if (v11 > 1)
            {
              goto LABEL_46;
            }

            v12 = (result - 64);
            v11 = 2;
LABEL_32:
            if (*v4 >= *(v4 + 16))
            {
              goto LABEL_46;
            }

            result = sub_195344DA8(v4, a2);
            if (*a2 >= 1)
            {
              return result;
            }
          }

          if (result < 0x100)
          {
            goto LABEL_46;
          }

          if (result <= 0x1FF)
          {
            if (v11)
            {
              goto LABEL_46;
            }

            v10 *= result;
            v11 = 1;
            goto LABEL_32;
          }

          v15 = (result - 512) | (v12 << 32);
          v16 = v10;
          result = icu::MeasureUnitImpl::appendSingleUnit(a3, &v15, a2);
          if (*a2 > 0)
          {
            return result;
          }

          if ((result | v9 ^ 1) != 1)
          {
            goto LABEL_46;
          }

          v13 = *(a3 + 8);
          if (v13 < 2)
          {
            goto LABEL_44;
          }

          if (v9)
          {
            v14 = 2;
          }

          else
          {
            v14 = 1;
          }

          if (v13 == 2)
          {
            *a3 = v14;
            goto LABEL_44;
          }

          if (*a3 != v14)
          {
LABEL_46:
            *a2 = U_ILLEGAL_ARGUMENT_ERROR;
            return result;
          }

LABEL_44:
          v6 = *v4;
          if (*v4 >= *(v4 + 16))
          {
            return result;
          }
        }

        if (v8 != 128)
        {
          goto LABEL_46;
        }

        switch(result)
        {
          case 0x82u:
            if (*(v4 + 56))
            {
              goto LABEL_46;
            }

            v9 = 1;
            break;
          case 0x81u:
            v9 = 0;
            if (*(v4 + 56))
            {
              v10 = -1;
            }

            else
            {
              v10 = 1;
            }

LABEL_23:
            result = sub_195344DA8(v4, a2);
            if (*a2 > 0)
            {
              return result;
            }

            goto LABEL_24;
          case 0x80u:
            v9 = 0;
            *(v4 + 56) = 1;
            v10 = -1;
            goto LABEL_23;
          default:
            v9 = 0;
            break;
        }

        v10 = 1;
        goto LABEL_23;
      }
    }
  }

  return result;
}

void icu::MeasureUnitImpl::forMeasureUnitMaybeCopy(icu::MeasureUnitImpl *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*(this + 1))
  {
    v6 = *(this + 1);

    icu::MeasureUnitImpl::copy(v6, a2, a3);
  }

  else
  {
    Identifier = icu::MeasureUnit::getIdentifier(this);
    icu::StringPiece::StringPiece(v8, Identifier);
    sub_195343BF4(v8[0], v8[1], a2, v9);
    sub_195343CE8(v9, a2, a3);
    icu::BytesTrie::~BytesTrie(&v10);
  }
}

_DWORD *icu::MeasureUnitImpl::extractIndividualUnitsWithIndices@<X0>(_DWORD *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = this;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 80) = 0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 8) = a3 + 24;
  *(a3 + 16) = 8;
  if (*this == 2)
  {
    v10 = 0;
    if (this[2] >= 1)
    {
      v6 = 0;
      v7 = *a2 < U_ILLEGAL_ARGUMENT_ERROR;
      while (v7)
      {
        v8 = *(*(v4 + 2) + 8 * v6);
        this = sub_195345054(a3);
        if (*a2 <= 0 && this == 0)
        {
          goto LABEL_15;
        }

        if (*a2 <= 0)
        {
          v6 = v10 + 1;
          v10 = v6;
          v7 = 1;
          if (v6 < v4[2])
          {
            continue;
          }
        }

        return this;
      }
    }
  }

  else if (*a2 <= 0)
  {
    this = sub_195344F28(a3);
    if (*a2 <= 0 && !this)
    {
LABEL_15:
      *a2 = U_MEMORY_ALLOCATION_ERROR;
    }
  }

  return this;
}

void icu::MeasureUnit::forIdentifier(uint64_t a1@<X0>, uint64_t a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  sub_195343BF4(a1, a2, a3, v7);
  sub_195343CE8(v7, a3, v9);
  icu::MeasureUnitImpl::serialize(v9, a3);
  icu::MeasureUnit::MeasureUnit(a4, v9);
  if (v12)
  {
    free(v11);
  }

  sub_195342340(&v10);
  icu::BytesTrie::~BytesTrie(&v8);
  v6 = *MEMORY[0x1E69E9840];
}

uint64_t icu::MeasureUnit::getComplexity(icu::MeasureUnit *this, UErrorCode *a2, uint64_t a3, UErrorCode *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(v10, 0, sizeof(v10));
  v7 = 0u;
  v8 = v10;
  v9 = 8;
  v11[0] = &v11[1] + 5;
  v11[1] = 40;
  DWORD2(v14) = 0;
  v4 = *icu::MeasureUnitImpl::forMeasureUnit(this, &v7, a2, a4);
  if (BYTE4(v11[1]))
  {
    free(v11[0]);
  }

  sub_195342340(&v7 + 8);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t icu::MeasureUnit::withPrefix@<X0>(UErrorCode *a1@<X2>, icu::SingleUnitImpl *a2@<X0>, int a3@<W1>, UErrorCode *a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = icu::SingleUnitImpl::forMeasureUnit(a2, a1, a1, a4);
  v10[1] = a3;
  v10[2] = v8;
  return icu::SingleUnitImpl::build(v10, a1, a5);
}

uint64_t icu::MeasureUnit::getDimensionality(icu::MeasureUnit *this, UErrorCode *a2, UErrorCode *a3, UErrorCode *a4)
{
  if (icu::SingleUnitImpl::forMeasureUnit(this, a2, a3, a4) != -1 && *a2 <= U_ZERO_ERROR)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::MeasureUnit::withDimensionality@<X0>(icu::MeasureUnit *this@<X0>, UErrorCode *a2@<X2>, int a3@<W1>, UErrorCode *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = icu::SingleUnitImpl::forMeasureUnit(this, a2, a2, a4);
  v10 = a3;
  return icu::SingleUnitImpl::build(&v9, a2, a5);
}

uint64_t icu::MeasureUnit::reciprocal@<X0>(icu::MeasureUnit *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  icu::MeasureUnitImpl::forMeasureUnitMaybeCopy(this, a2, &v10);
  DWORD2(v19) = 0;
  *v16[0] = 0;
  v5 = DWORD2(v10);
  if (SDWORD2(v10) >= 1)
  {
    v6 = v11;
    do
    {
      v7 = *v6++;
      *(v7 + 8) = -*(v7 + 8);
      --v5;
    }

    while (v5);
  }

  icu::MeasureUnitImpl::serialize(&v10, a2);
  icu::MeasureUnit::MeasureUnit(a3, &v10);
  if (BYTE4(v16[1]))
  {
    free(v16[0]);
  }

  result = sub_195342340(&v10 + 8);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t icu::MeasureUnit::product@<X0>(icu::MeasureUnit *this@<X0>, const icu::MeasureUnit *a2@<X1>, UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  memset(v21, 0, sizeof(v21));
  icu::MeasureUnitImpl::forMeasureUnitMaybeCopy(this, a3, v21);
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  v13 = 0u;
  v14 = v16;
  v15 = 8;
  v17[0] = &v17[1] + 5;
  v17[1] = 40;
  DWORD2(v20) = 0;
  v8 = icu::MeasureUnitImpl::forMeasureUnit(a2, &v13, a3, v7);
  if (LODWORD(v21[0]) == 2 || (v9 = v8, *v8 == 2))
  {
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    icu::MeasureUnit::MeasureUnit(a4);
  }

  else
  {
    if (*(v8 + 2) >= 1)
    {
      v10 = 0;
      do
      {
        icu::MeasureUnitImpl::appendSingleUnit(v21, *(*(v9 + 2) + 8 * v10++), a3);
      }

      while (v10 < *(v9 + 2));
    }

    if (SDWORD2(v21[0]) > 1)
    {
      LODWORD(v21[0]) = 1;
    }

    icu::MeasureUnitImpl::serialize(v21, a3);
    icu::MeasureUnit::MeasureUnit(a4, v21);
  }

  if (BYTE4(v17[1]))
  {
    free(v17[0]);
  }

  sub_195342340(&v13 + 8);
  if (BYTE4(v22[1]))
  {
    free(v22[0]);
  }

  result = sub_195342340(v21 + 8);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void icu::MeasureUnit::splitToSingleUnitsImpl(icu::MeasureUnit *this, int *a2, UErrorCode *a3, UErrorCode *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v9, 0, sizeof(v9));
  v6 = 0u;
  v7 = v9;
  v8 = 8;
  v10[0] = &v10[1] + 5;
  v10[1] = 40;
  DWORD2(v13) = 0;
  v5 = *(icu::MeasureUnitImpl::forMeasureUnit(this, &v6, a3, a4) + 2);
  *a2 = v5;
  is_mul_ok(v5, 0x18uLL);
  operator new[]();
}

uint64_t sub_1953447E0()
{
  free(qword_1EAEC9E38);
  qword_1EAEC9E38 = 0;
  free(qword_1EAEC9E48);
  qword_1EAEC9E48 = 0;
  free(qword_1EAEC9E68);
  qword_1EAEC9E68 = 0;
  free(qword_1EAEC9E58);
  qword_1EAEC9E58 = 0;
  free(qword_1EAEC9E50);
  qword_1EAEC9E50 = 0;
  atomic_store(0, &dword_1EAEC9E60);
  return 1;
}

void sub_195344864(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void *sub_19534489C(uint64_t a1, uint64_t a2, icu::ResourceValue *a3, uint64_t a4, UErrorCode *a5)
{
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  result = (*(*a3 + 80))(v18, a3, a5);
  if (*a5 <= 0)
  {
    if (v19 + *(a1 + 32) <= **(a1 + 16))
    {
      result = icu::ResourceArray::getValue(v18, 0, a3);
      if (result)
      {
        v10 = 1;
        do
        {
          v17 = 0;
          memset(v16, 0, sizeof(v16));
          result = (*(*a3 + 88))(v16, a3, a5);
          if (*a5 > 0)
          {
            break;
          }

          if (v17 != 1)
          {
            v9 = 3;
            goto LABEL_4;
          }

          __s = 0;
          icu::ResourceTable::getKeyAndValue(v16, 0, &__s, a3);
          v14 = 0;
          *(*(a1 + 8) + 8 * *(a1 + 32)) = (*(*a3 + 32))(a3, &v14, a5);
          v11 = *(a1 + 24);
          icu::StringPiece::StringPiece(&v12, __s);
          icu::BytesTrieBuilder::add(v11, v12, v13, *(a1 + 32), a5);
          ++*(a1 + 32);
          result = icu::ResourceArray::getValue(v18, v10++, a3);
        }

        while (result);
      }
    }

    else
    {
      v9 = 8;
LABEL_4:
      *a5 = v9;
    }
  }

  return result;
}

void sub_195344A5C(icu::ResourceSink *a1)
{
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_195344A94(uint64_t a1, uint64_t a2, icu::ResourceValue *a3, uint64_t a4, UErrorCode *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  (*(*a3 + 88))(v24, a3, a5);
  if (*a5 > 0)
  {
    goto LABEL_22;
  }

  if (v25 + *(a1 + 64) > *(a1 + 24))
  {
    *a5 = U_INDEX_OUTOFBOUNDS_ERROR;
    goto LABEL_22;
  }

  v8 = *(a1 + 48);
  v20 = 0;
  v21 = v8;
  v22 = v8;
  v23 = 0xFFFFFFFFLL;
  __s1 = 0;
  if (!icu::ResourceTable::getKeyAndValue(v24, 0, &__s1, a3))
  {
    goto LABEL_21;
  }

  v9 = 1;
  while (1)
  {
    v10 = __s1;
    if (!strcmp(__s1, "kilogram"))
    {
      goto LABEL_16;
    }

    *(*(a1 + 8) + 8 * *(a1 + 64)) = v10;
    v11 = *(a1 + 32);
    icu::StringPiece::StringPiece(v26, __s1);
    icu::BytesTrieBuilder::add(v11, v26[0], v26[1], *(a1 + 64) + *(a1 + 40), a5);
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    (*(*a3 + 88))(v17, a3, a5);
    if (*a5 > 0)
    {
      goto LABEL_21;
    }

    if (!icu::ResourceTable::findValue(v17, "target", a3))
    {
      *a5 = U_INVALID_FORMAT_ERROR;
      goto LABEL_21;
    }

    v16 = 0;
    v12 = (*(*a3 + 32))(a3, &v16, a5);
    v28 = 0;
    memset(&v26[1], 0, 48);
    v26[0] = &v26[1] + 5;
    LODWORD(v26[1]) = 40;
    v27 = 0;
    icu::CharString::appendInvariantChars(v26, v12, v16, a5);
    if (*a5 > 0)
    {
      break;
    }

    v22 = v21;
    LODWORD(v23) = -1;
    v13 = icu::BytesTrie::next(&v20, v26[0], v27);
    if (v13 <= 1)
    {
      *a5 = U_INVALID_FORMAT_ERROR;
    }

    else
    {
      *(*(a1 + 16) + 4 * (*(a1 + 64))++) = icu::BytesTrie::readValue((v22 + 1), (*v22 >> 1));
    }

    if (BYTE4(v26[1]))
    {
      free(v26[0]);
    }

    if (v13 < 2)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (!icu::ResourceTable::getKeyAndValue(v24, v9++, &__s1, a3))
    {
      goto LABEL_21;
    }
  }

  if (BYTE4(v26[1]))
  {
    free(v26[0]);
  }

LABEL_21:
  icu::BytesTrie::~BytesTrie(&v20);
LABEL_22:
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_195344DA8(int *a1, _DWORD *a2)
{
  *(a1 + 5) = *(a1 + 4);
  v4 = -1;
  a1[12] = -1;
  Value = 0xFFFFFFFFLL;
  while (1)
  {
    v6 = *a1;
    if (v6 >= a1[4])
    {
      break;
    }

    v7 = *(a1 + 1);
    *a1 = v6 + 1;
    v8 = icu::BytesTrie::next((a1 + 6), *(v7 + v6));
    if (v8 != 1)
    {
      v9 = v8;
      if (!v8)
      {
        break;
      }

      Value = icu::BytesTrie::readValue((*(a1 + 5) + 1), (**(a1 + 5) >> 1));
      v4 = *a1;
      if (v9 == 2)
      {
        break;
      }
    }
  }

  if ((Value & 0x80000000) != 0)
  {
    *a2 = 1;
  }

  else
  {
    *a1 = v4;
  }

  return Value;
}

uint64_t sub_195344E60(int *a1, int *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (v2 < 0 && v3 > 0)
  {
    return 1;
  }

  if (v2 >= 1 && v3 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a1;
  v6 = *(qword_1EAEC9E58 + 4 * v5);
  v7 = *a2;
  v8 = *(qword_1EAEC9E58 + 4 * v7);
  if (v6 < v8)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 > v8)
  {
    return 1;
  }

  if (v5 < v7)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 > v7)
  {
    return 1;
  }

  v9 = a1[1];
  v10 = v9 + 51;
  v11 = a2[1];
  v12 = v11 + 59;
  v13 = 3 * v9 + 180;
  v14 = v9 - 30;
  if (v10 >= 0xFFFFFFF8)
  {
    v14 = v13;
  }

  v15 = 3 * v11 + 180;
  v16 = v11 - 30;
  if (v12 < 8)
  {
    v16 = v15;
  }

  if (v14 < v16)
  {
    return 1;
  }

  if (v14 > v16)
  {
    return 0xFFFFFFFFLL;
  }

  if (v10 <= 0xFFFFFFF7 && v12 < 8)
  {
    return 1;
  }

  v18 = v10 > 0xFFFFFFF7 && v12 > 7;
  return (v18 << 31 >> 31);
}

void *sub_195344F28(uint64_t a1)
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

  v4 = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  v5 = v4;
  if (v4)
  {
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

      memcpy(v4, *(a1 + 8), 8 * v6);
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

  return v5;
}

void *sub_195345054(uint64_t a1)
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

  v4 = malloc_type_malloc(8 * v3, 0x2004093837F09uLL);
  v5 = v4;
  if (v4)
  {
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

      memcpy(v4, *(a1 + 8), 8 * v6);
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

  return v5;
}

icu::Measure *icu::Measure::Measure(icu::Measure *this)
{
  *this = &unk_1F093E248;
  icu::Formattable::Formattable((this + 8));
  *(this + 15) = 0;
  return this;
}

{
  *this = &unk_1F093E248;
  icu::Formattable::Formattable((this + 8));
  *(this + 15) = 0;
  return this;
}

icu::Measure *icu::Measure::Measure(icu::Measure *this, const icu::Formattable *a2, icu::MeasureUnit *a3, UErrorCode *a4)
{
  *this = &unk_1F093E248;
  icu::Formattable::Formattable((this + 8), a2);
  *(this + 15) = a3;
  if (*a4 <= 0)
  {
    isNumeric = icu::Formattable::isNumeric((this + 8));
    if (!a3 || !isNumeric)
    {
      *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    }
  }

  return this;
}

uint64_t icu::Measure::Measure(icu::Measure *this, const icu::Measure *a2)
{
  *this = &unk_1F093E248;
  icu::Formattable::Formattable((this + 8));
  *(this + 15) = 0;

  return icu::Measure::operator=(this, a2);
}

{
  *this = &unk_1F093E248;
  icu::Formattable::Formattable((this + 8));
  *(this + 15) = 0;

  return icu::Measure::operator=(this, a2);
}

uint64_t icu::Measure::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 120);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    icu::Formattable::operator=(a1 + 8, a2 + 8);
    v5 = *(a2 + 120);
    if (v5)
    {
      v5 = (*(*v5 + 24))(v5);
    }

    *(a1 + 120) = v5;
  }

  return a1;
}

void icu::Measure::~Measure(icu::Measure *this)
{
  *this = &unk_1F093E248;
  v2 = *(this + 15);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::Formattable::~Formattable((this + 8));

  icu::UObject::~UObject(this);
}

{
  icu::Measure::~Measure(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::Measure::operator==(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a1)
  {
    __cxa_bad_typeid();
  }

  if (!sub_19520B9EC(*(*a1 - 8), *(*a2 - 8)) || !icu::Formattable::operator==(a1 + 1, a2 + 1))
  {
    return 0;
  }

  v4 = a1[15];
  v5 = a2[15];
  v6 = (v4 == 0) == (v5 == 0);
  if (!v4 || !v5)
  {
    return v6;
  }

  v7 = *(*v4 + 32);

  return v7();
}

icu::MessageFormat *icu::MessageFormat::MessageFormat(icu::MessageFormat *this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  v6 = icu::Format::Format(this);
  *v6 = &unk_1F093E290;
  Default = icu::Locale::getDefault(v6);
  icu::Locale::Locale((this + 328), Default);
  icu::MessagePattern::MessagePattern((this + 552), a3);
  *(this + 85) = 0;
  *(this + 172) = 0;
  *(this + 696) = 0u;
  *(this + 712) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 94) = &unk_1F093E3E8;
  *(this + 95) = this;
  *(this + 96) = 0;
  *(this + 194) = 0;
  *(this + 98) = &unk_1F093E3E8;
  *(this + 99) = this;
  *(this + 100) = 0;
  *(this + 202) = 1;
  icu::Format::setLocaleIDs(this, *(this + 46), *(this + 46));
  (*(*this + 80))(this, a2, a3);
  return this;
}

uint64_t icu::MessageFormat::PluralSelectorProvider::PluralSelectorProvider(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_1F093E3E8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = a3;
  return result;
}

{
  *result = &unk_1F093E3E8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = a3;
  return result;
}

icu::MessageFormat *icu::MessageFormat::MessageFormat(icu::MessageFormat *this, const icu::UnicodeString *a2, const icu::Locale *a3, UErrorCode *a4)
{
  v8 = icu::Format::Format(this);
  *v8 = &unk_1F093E290;
  icu::Locale::Locale((v8 + 41), a3);
  icu::MessagePattern::MessagePattern((this + 552), a4);
  *(this + 85) = 0;
  *(this + 172) = 0;
  *(this + 696) = 0u;
  *(this + 712) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 94) = &unk_1F093E3E8;
  *(this + 95) = this;
  *(this + 96) = 0;
  *(this + 194) = 0;
  *(this + 98) = &unk_1F093E3E8;
  *(this + 99) = this;
  *(this + 100) = 0;
  *(this + 202) = 1;
  icu::Format::setLocaleIDs(this, *(this + 46), *(this + 46));
  (*(*this + 80))(this, a2, a4);
  return this;
}

icu::MessageFormat *icu::MessageFormat::MessageFormat(icu::MessageFormat *this, const icu::UnicodeString *a2, const icu::Locale *a3, UParseError *a4, UErrorCode *a5)
{
  v10 = icu::Format::Format(this);
  *v10 = &unk_1F093E290;
  icu::Locale::Locale((v10 + 41), a3);
  icu::MessagePattern::MessagePattern((this + 552), a5);
  *(this + 85) = 0;
  *(this + 172) = 0;
  *(this + 696) = 0u;
  *(this + 712) = 0;
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 94) = &unk_1F093E3E8;
  *(this + 95) = this;
  *(this + 96) = 0;
  *(this + 194) = 0;
  *(this + 98) = &unk_1F093E3E8;
  *(this + 99) = this;
  *(this + 100) = 0;
  *(this + 202) = 1;
  icu::Format::setLocaleIDs(this, *(this + 46), *(this + 46));
  (*(*this + 88))(this, a2, a4, a5);
  return this;
}

icu::MessageFormat *icu::MessageFormat::MessageFormat(icu::MessageFormat *this, const icu::MessageFormat *a2)
{
  v4 = icu::Format::Format(this, a2);
  *v4 = &unk_1F093E290;
  icu::Locale::Locale((v4 + 41), a2 + 328);
  icu::MessagePattern::MessagePattern((this + 552), (a2 + 552));
  *(this + 85) = 0;
  *(this + 172) = 0;
  *(this + 696) = 0u;
  *(this + 712) = *(a2 + 712);
  *(this + 45) = 0u;
  *(this + 46) = 0u;
  *(this + 94) = &unk_1F093E3E8;
  *(this + 95) = this;
  *(this + 96) = 0;
  *(this + 194) = 0;
  *(this + 98) = &unk_1F093E3E8;
  *(this + 99) = this;
  *(this + 100) = 0;
  *(this + 202) = 1;
  v6 = U_ZERO_ERROR;
  icu::MessageFormat::copyObjects(this, a2, &v6);
  if (v6 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    icu::MessageFormat::resetPattern(this);
  }

  return this;
}

uint64_t icu::MessageFormat::copyObjects(icu::MessageFormat *this, const icu::MessageFormat *a2, UErrorCode *a3)
{
  v6 = *(a2 + 176);
  *(this + 176) = v6;
  if (v6 >= 1)
  {
    result = icu::MessageFormat::allocateArgTypes(this, v6, a3);
    if (!result)
    {
      return result;
    }

    memcpy(*(this + 87), *(a2 + 87), 4 * *(this + 176));
  }

  v8 = *(this + 92);
  if (v8)
  {
    uhash_removeAll(v8);
  }

  v9 = *(this + 93);
  if (v9)
  {
    uhash_removeAll(v9);
  }

  v10 = *(a2 + 92);
  if (!v10)
  {
    goto LABEL_16;
  }

  if (!*(this + 92))
  {
    result = uhash_open(uhash_hashLong, uhash_compareLong, sub_195346A84, a3);
    *(this + 92) = result;
    if (*a3 > 0)
    {
      return result;
    }

    uhash_setValueDeleter(result, uprv_deleteUObject);
    v10 = *(a2 + 92);
  }

  v11 = uhash_count(v10);
  v19 = -1;
  if (v11 >= 1 && *a3 <= 0)
  {
    v12 = v11;
    v13 = 1;
    while (1)
    {
      v14 = uhash_nextElement(*(a2 + 92), &v19);
      result = (*(**(v14 + 8) + 32))(*(v14 + 8));
      if (!result)
      {
        break;
      }

      uhash_iput(*(this + 92), *(v14 + 16), result, a3);
      if (v13 < v12)
      {
        ++v13;
        if (*a3 < 1)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }

  else
  {
LABEL_16:
    result = *(a2 + 93);
    if (result)
    {
      if (!*(this + 93))
      {
        *(this + 93) = uhash_open(uhash_hashLong, uhash_compareLong, 0, a3);
        result = *(a2 + 93);
      }

      result = uhash_count(result);
      v18 = -1;
      if (result >= 1 && *a3 <= 0)
      {
        v15 = result;
        v16 = 1;
        do
        {
          v17 = uhash_nextElement(*(a2 + 93), &v18);
          result = uhash_iputi(*(this + 93), *(v17 + 16), *(v17 + 8), a3);
          if (v16 >= v15)
          {
            break;
          }

          ++v16;
        }

        while (*a3 < 1);
      }
    }
  }

  return result;
}

void icu::MessageFormat::resetPattern(void ***this)
{
  icu::MessagePattern::clear((this + 69));
  uhash_close(this[92]);
  this[92] = 0;
  uhash_close(this[93]);
  this[93] = 0;
  *(this + 176) = 0;
  *(this + 712) = 0;
}

void icu::MessageFormat::~MessageFormat(icu::MessageFormat *this)
{
  *this = &unk_1F093E290;
  uhash_close(*(this + 92));
  uhash_close(*(this + 93));
  free(*(this + 87));
  free(*(this + 85));
  v2 = *(this + 90);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 91);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  icu::MessageFormat::PluralSelectorProvider::~PluralSelectorProvider((this + 784));
  icu::MessageFormat::PluralSelectorProvider::~PluralSelectorProvider((this + 752));
  icu::MessagePattern::~MessagePattern((this + 552));
  icu::Locale::~Locale((this + 328));

  icu::Format::~Format(this);
}

{
  icu::MessageFormat::~MessageFormat(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::MessageFormat::allocateArgTypes(icu::MessageFormat *this, int a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v5 = *(this + 177);
  if (v5 >= a2)
  {
    return 1;
  }

  v7 = 2 * v5;
  if (v7 <= a2)
  {
    v7 = a2;
  }

  if (a2 >= 10)
  {
    v8 = v7;
  }

  else
  {
    v8 = 10;
  }

  result = malloc_type_realloc(*(this + 87), 4 * v8, 0x100004052888210uLL);
  if (result)
  {
    *(this + 87) = result;
    *(this + 177) = v8;
    return 1;
  }

  *a3 = U_MEMORY_ALLOCATION_ERROR;
  return result;
}

icu::MessageFormat *icu::MessageFormat::operator=(icu::MessageFormat *a1, icu::MessageFormat *a2)
{
  if (a1 != a2)
  {
    icu::Format::operator=(a1, a2);
    (*(*a1 + 64))(a1, a2 + 328);
    icu::MessagePattern::operator=(a1 + 552, a2 + 552);
    *(a1 + 712) = *(a2 + 712);
    v5 = U_ZERO_ERROR;
    icu::MessageFormat::copyObjects(a1, a2, &v5);
    if (v5 >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      icu::MessageFormat::resetPattern(a1);
    }
  }

  return a1;
}

BOOL icu::MessageFormat::operator==(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!icu::Format::operator==(a1, a2) || !icu::MessagePattern::operator==((a1 + 69), (a2 + 69)) || !icu::Locale::operator==((a1 + 41), (a2 + 41)))
  {
    return 0;
  }

  v4 = a1[93];
  v5 = a2[93];
  v6 = (v4 == 0) == (v5 == 0);
  if (!v4 || !v5)
  {
    return v6;
  }

  v7 = uhash_count(v4);
  if (v7 != uhash_count(a2[93]))
  {
    return 0;
  }

  v18 = -1;
  v19 = -1;
  if (v7 < 1)
  {
    return 1;
  }

  v8 = uhash_nextElement(a1[93], &v19);
  v9 = uhash_nextElement(a2[93], &v18);
  v10 = *(v8 + 16);
  v11 = (v9 + 16);
  if (v10 != *(v9 + 16))
  {
    return 0;
  }

  v6 = 0;
  v12 = 1;
  do
  {
    v13 = uhash_iget(a1[92], v10);
    v14 = uhash_iget(a2[92], *v11);
    if (!(*(*v13 + 24))(v13, v14))
    {
      break;
    }

    v6 = v12 >= v7;
    if (v7 == v12)
    {
      break;
    }

    v15 = uhash_nextElement(a1[93], &v19);
    v16 = uhash_nextElement(a2[93], &v18);
    v10 = *(v15 + 16);
    v11 = (v16 + 16);
    ++v12;
  }

  while (v10 == *(v16 + 16));
  return v6;
}