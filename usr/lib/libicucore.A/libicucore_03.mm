void sub_1951F46F8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  if ((*(*a8 + 16))(a8) >= 1)
  {
    v16 = 0;
    do
    {
      *(a8[2] + 4 * v16) = (*(*a4 + 24))(a4, v16);
      ++v16;
    }

    while (v16 < (*(*a8 + 16))(a8));
  }

  if ((*(*a8 + 16))(a8) >= 1)
  {
    v17 = 0;
    do
    {
      if ((*(*a5 + 16))(a5) >= 1)
      {
        v18 = 0;
        do
        {
          v19 = (*(*a5 + 24))(a5, v18);
          *(a8[2] + 4 * v17) = *(a8[2] + 4 * v17) + (v19 * (*(*a2 + 32))(a2, v18, v17));
          v18 = (v18 + 1);
        }

        while (v18 < (*(*a5 + 16))(a5));
      }

      ++v17;
    }

    while (v17 < (*(*a8 + 16))(a8));
  }

  if ((*(*a8 + 16))(a8) >= 1)
  {
    v20 = 0;
    do
    {
      if ((*(*a6 + 16))(a6) >= 1)
      {
        v21 = 0;
        do
        {
          v22 = (*(*a6 + 24))(a6, v21);
          *(a8[2] + 4 * v20) = *(a8[2] + 4 * v20) + (v22 * (*(*a3 + 32))(a3, v21, v20));
          v21 = (v21 + 1);
        }

        while (v21 < (*(*a6 + 16))(a6));
      }

      ++v20;
    }

    while (v20 < (*(*a8 + 16))(a8));
  }

  v23 = a8[2];
  v24 = a1;
  if (a1 >= 1)
  {
    v25 = a8[2];
    v26 = a1;
    do
    {
      *v25 = 1.0 / (expf(-*v25) + 1.0);
      ++v25;
      --v26;
    }

    while (v26);
  }

  if (a1 >= 1)
  {
    v27 = (v23 + 4 * a1);
    v28 = a1;
    do
    {
      *v27 = 1.0 / (expf(-*v27) + 1.0);
      ++v27;
      --v28;
    }

    while (v28);
  }

  v50 = &unk_1F0932550;
  v51 = 0;
  v52 = v23 + 8 * a1;
  v53 = a1;
  if (a1 < 1)
  {
    v31 = 0;
  }

  else
  {
    v29 = 0;
    do
    {
      v30 = v50[3](&v50, v29);
      *(v52 + 4 * v29++) = tanhf(v30);
    }

    while (v29 < v53);
    v31 = v51;
  }

  v50 = &unk_1F0932550;
  free(v31);
  v32 = a8[2];
  if (a1 >= 1)
  {
    v33 = (v32 + 12 * a1);
    do
    {
      *v33 = 1.0 / (expf(-*v33) + 1.0);
      ++v33;
      --v24;
    }

    while (v24);
  }

  v50 = &unk_1F0932550;
  v51 = 0;
  v52 = v32 + 4 * a1;
  v53 = a1;
  if ((*(*a7 + 16))(a7) >= 1)
  {
    v34 = 0;
    do
    {
      *(a7[2] + 4 * v34) = v50[3](&v50, v34) * *(a7[2] + 4 * v34);
      ++v34;
    }

    while (v34 < (*(*a7 + 16))(a7));
  }

  v35 = a8[2];
  v46 = &unk_1F0932550;
  v47 = 0;
  v48 = v35;
  v49 = a1;
  v42 = &unk_1F0932550;
  v43 = 0;
  v44 = v35 + 8 * a1;
  v45 = a1;
  if ((*(*a7 + 16))(a7) >= 1)
  {
    v36 = 0;
    do
    {
      v37 = v46[3](&v46, v36);
      *(a7[2] + 4 * v36) = *(a7[2] + 4 * v36) + (v37 * v42[3](&v42, v36));
      ++v36;
    }

    while (v36 < (*(*a7 + 16))(a7));
  }

  v42 = &unk_1F0932550;
  free(v43);
  v46 = &unk_1F0932550;
  free(v47);
  v50 = &unk_1F0932550;
  free(v51);
  if (*(a6 + 24) >= 1)
  {
    v38 = 0;
    do
    {
      v39 = (*(*a7 + 24))(a7, v38);
      *(*(a6 + 16) + 4 * v38++) = tanhf(v39);
    }

    while (v38 < *(a6 + 24));
  }

  v40 = a8[2] + 12 * a1;
  v50 = &unk_1F0932550;
  v51 = 0;
  v52 = v40;
  v53 = a1;
  if ((*(*a6 + 16))(a6) >= 1)
  {
    v41 = 0;
    do
    {
      *(*(a6 + 16) + 4 * v41) = v50[3](&v50, v41) * *(*(a6 + 16) + 4 * v41);
      ++v41;
    }

    while (v41 < (*(*a6 + 16))(a6));
  }

  v50 = &unk_1F0932550;
  free(v51);
}

uint64_t sub_1951F4F3C(uint64_t a1, UText *ut, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, UErrorCode *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  v13 = *(a5 + 8);
  v14 = a3;
  utext_setNativeIndex(ut, a3);
  utext_moveIndex32(ut, 4);
  if (utext_getNativeIndex(ut) >= a4)
  {
    return 0;
  }

  utext_setNativeIndex(ut, v14);
  v83 = 0u;
  v84 = 0u;
  icu::UVector32::UVector32(&v83, a7);
  v81 = 0u;
  v82 = 0u;
  icu::UVector32::UVector32(&v81, a7);
  if (*a7 > 0 || ((*(**(a1 + 216) + 16))(*(a1 + 216), ut, a3, a4, &v83, &v81, a7), *a7 > 0))
  {
    v15 = 0;
    goto LABEL_6;
  }

  v55 = *(&v84 + 1);
  v57 = *(&v82 + 1);
  v17 = DWORD2(v81);
  v18 = *(*(a1 + 208) + 88);
  memset(v80, 0, sizeof(v80));
  sub_1951F6044(v80, 4 * v18, a7);
  v78 = 0u;
  v79 = 0u;
  sub_1951F6044(&v78, v18, a7);
  *v76 = 0u;
  v77 = 0u;
  sub_1951F6044(v76, 4, a7);
  *v74 = 0u;
  v75 = 0u;
  sub_1951F60DC(v74, v17, v18, a7);
  *v72 = 0u;
  v73 = 0u;
  sub_1951F6044(v72, 2 * v18, a7);
  if (*a7 > 0)
  {
    v15 = 0;
    goto LABEL_64;
  }

  v54 = v13;
  v58 = v18;
  v59 = a1;
  v19 = v18;
  v56 = v17;
  v20 = v57;
  if (v17 >= 1)
  {
    v21 = (v17 - 1);
    v22 = v21;
    do
    {
      v68 = &unk_1F0932550;
      v69 = 0;
      v70 = v75 + 4 * HIDWORD(v75) * v22;
      v71 = HIDWORD(v75);
      if (v22 != v21)
      {
        v64 = &unk_1F0932550;
        v65 = 0;
        v66 = v75 + 4 * (HIDWORD(v75) + HIDWORD(v75) * v22);
        LODWORD(v67) = HIDWORD(v75);
        if (SHIDWORD(v75) < 1)
        {
          v25 = 0;
        }

        else
        {
          v23 = 0;
          do
          {
            v24 = v64[3](&v64, v23);
            *(v70 + 4 * v23++) = v24;
          }

          while (v23 < v68[2](&v68));
          v25 = v65;
          v20 = v57;
        }

        v64 = &unk_1F0932550;
        free(v25);
        v18 = v58;
      }

      v26 = *(v59 + 208);
      v27 = *(v26 + 44);
      v28 = (*(v26 + 32) + 4 * v27 * *(v20 + 4 * v22));
      v64 = &unk_1F0932628;
      v65 = v28;
      LODWORD(v66) = v27;
      sub_1951F46F8(v18, v26 + 120, v26 + 144, v26 + 168, &v64, &v68, &v78, v80);
      v68 = &unk_1F0932550;
      free(v69);
      v53 = v22-- <= 0;
    }

    while (!v53);
  }

  v68 = &unk_1F0932550;
  v69 = 0;
  v70 = v73;
  v71 = v18;
  v64 = &unk_1F0932550;
  v65 = 0;
  v66 = v73 + 4 * v19;
  v67 = v18;
  bzero(v79, 4 * SDWORD2(v79));
  v29 = v59;
  if (v56 < 1)
  {
LABEL_61:
    v15 = (*(a5 + 8) - v54);
    goto LABEL_63;
  }

  v30 = 0;
  while (1)
  {
    v31 = *(v29 + 208);
    v32 = *(v31 + 44);
    v33 = (*(v31 + 32) + 4 * v32 * *(v57 + 4 * v30));
    v60 = &unk_1F0932628;
    v61 = v33;
    LODWORD(v62) = v32;
    sub_1951F46F8(v58, v31 + 48, v31 + 72, v31 + 96, &v60, &v68, &v78, v80);
    v60 = &unk_1F0932550;
    v61 = 0;
    v62 = v75 + 4 * HIDWORD(v75) * v30;
    v63 = HIDWORD(v75);
    if ((v64[2])(&v64) >= 1)
    {
      v34 = 0;
      do
      {
        v35 = v60[3](&v60, v34);
        *(v66 + 4 * v34++) = v35;
      }

      while (v34 < (v64[2])(&v64));
    }

    v60 = &unk_1F0932550;
    free(v61);
    v36 = *(v29 + 208);
    if ((*(v76[0] + 2))(v76) >= 1)
    {
      v37 = 0;
      v38 = v36 + 216;
      do
      {
        v39 = (*(*v38 + 24))(v38, v37);
        *(v77 + 4 * v37++) = v39;
      }

      while (v37 < (*(v76[0] + 2))(v76));
    }

    v40 = *(v29 + 208);
    if ((*(v76[0] + 2))(v76) >= 1)
    {
      v41 = 0;
      v42 = v40 + 192;
      do
      {
        if ((*(v72[0] + 2))(v72) >= 1)
        {
          v43 = 0;
          do
          {
            v44 = (*(v72[0] + 3))(v72, v43);
            v45 = (*(*v42 + 32))(v42, v43, v41);
            *(v77 + 4 * v41) = *(v77 + 4 * v41) + (v44 * v45);
            v43 = (v43 + 1);
          }

          while (v43 < (*(v72[0] + 2))(v72));
        }

        ++v41;
      }

      while (v41 < (*(v76[0] + 2))(v76));
    }

    if (SDWORD2(v77) <= 1)
    {
      v46 = 0;
    }

    else
    {
      v46 = 0;
      v47 = *v77;
      v48 = 1;
      do
      {
        if (*(v77 + 4 * v48) > v47)
        {
          v46 = v48;
          v47 = *(v77 + 4 * v48);
        }

        ++v48;
      }

      while (DWORD2(v77) != v48);
    }

    if (v46)
    {
      v49 = v46 == 3;
    }

    else
    {
      v49 = 1;
    }

    v50 = v49;
    v29 = v59;
    if (!v30 || !v50)
    {
      goto LABEL_60;
    }

    v51 = *(v55 + 4 * v30);
    v52 = *(a5 + 8);
    v53 = v52 < -1 || *(a5 + 12) <= v52;
    if (v53)
    {
      if (!icu::UVector32::expandCapacity(a5, v52 + 1, a7))
      {
        goto LABEL_59;
      }

      v52 = *(a5 + 8);
    }

    *(*(a5 + 24) + 4 * v52) = v51;
    ++*(a5 + 8);
LABEL_59:
    if (*a7 > 0)
    {
      break;
    }

LABEL_60:
    if (++v30 == v56)
    {
      goto LABEL_61;
    }
  }

  v15 = 0;
LABEL_63:
  v64 = &unk_1F0932550;
  free(v65);
  v68 = &unk_1F0932550;
  free(v69);
LABEL_64:
  v72[0] = &unk_1F0932550;
  free(v72[1]);
  v74[0] = &unk_1F0932580;
  free(v74[1]);
  v76[0] = &unk_1F0932550;
  free(v76[1]);
  *&v78 = &unk_1F0932550;
  free(*(&v78 + 1));
  *&v80[0] = &unk_1F0932550;
  free(*(&v80[0] + 1));
LABEL_6:
  icu::UVector32::~UVector32(&v81);
  icu::UVector32::~UVector32(&v83);
  return v15;
}

uint64_t sub_1951F5874(uint64_t a1, int *a2)
{
  if (*a2 <= 0)
  {
    v3 = *(a1 + 8);
    if (v3 != 2)
    {
      if (v3 == 1)
      {
        operator new();
      }

      abort();
    }

    operator new();
  }

  return 0;
}

void *sub_1951F5938(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = sub_1951D3040(a1);
  *v8 = &unk_1F09325B8;
  v8[26] = a2;
  a1[27] = sub_1951F5874(a2, a4);
  if (*a4 < 1)
  {
    (*(*a1 + 40))(a1, a3);
  }

  else
  {
    a1[26] = 0;
  }

  return a1;
}

void sub_1951F59E4(void *a1)
{
  *a1 = &unk_1F09325B8;
  v2 = a1[26];
  if (v2)
  {
    uhash_close(*v2);
    ures_close(*(v2 + 240));
    MEMORY[0x19A8B2600](v2, 0x10F0C40D79375B8);
  }

  v3 = a1[27];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_1951D3088(a1);
}

void sub_1951F5A94(void *a1)
{
  sub_1951F59E4(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1951F5AD8(int32_t a1@<W0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = ures_open("icudt76l-brkitr", "", a2);
  v7 = ures_getByKeyWithFallback(v6, "lstm", v6, a2);
  ShortName = uscript_getShortName(a1);
  *(a3 + 8) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = &unk_1F0935D00;
  *(a3 + 8) = 2;
  v11 = 0;
  StringByKey = ures_getStringByKey(v7, ShortName, &v11, a2);
  if (*a2 <= 0)
  {
    v10 = StringByKey;
    icu::UnicodeString::setTo(a3, 1, &v10, v11);
  }

  else
  {
    icu::UnicodeString::setToBogus(a3);
  }

  ures_close(v7);
}

uint64_t CreateLSTMDataForScript(unsigned int a1, UErrorCode *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 <= 0x26 && ((1 << a1) & 0x4011800000) != 0)
  {
    memset(v9, 0, sizeof(v9));
    sub_1951F5AD8(a1, a2, v9);
    if (*a2 <= 0)
    {
      memset(&v8[1], 0, 56);
      v8[0] = &v8[1] + 5;
      LODWORD(v8[1]) = 40;
      appended = icu::CharString::appendInvariantChars(v8, v9, a2);
      IndexOf = icu::CharString::lastIndexOf(v8, 0x2Eu);
      icu::CharString::truncate(appended, IndexOf);
      v5 = ures_openDirect("icudt76l-brkitr", v8[0], a2);
      if (*a2 <= 0)
      {
        operator new();
      }

      if (v5)
      {
        ures_close(v5);
      }

      if (BYTE4(v8[1]))
      {
        free(v8[0]);
      }
    }

    icu::UnicodeString::~UnicodeString(v9);
  }

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t CreateLSTMBreakEngine(int a1, uint64_t a2, UErrorCode *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v14 = 0;
  v13 = 0u;
  v12 = 0u;
  v10 = &unk_1F0935D00;
  LOWORD(v11) = 2;
  if (a1 == 28)
  {
    v5 = "[";
LABEL_5:
    sub_1951D6EE0(v8, v5);
    icu::UnicodeString::operator=(&v10, v8);
    icu::UnicodeString::~UnicodeString(v8);
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    icu::UnicodeSet::UnicodeSet(v8);
    icu::UnicodeSet::applyPattern(v8, &v10, a3);
    operator new();
  }

  if (a1 == 38)
  {
    v5 = "[";
    goto LABEL_5;
  }

  if (a2)
  {
    uhash_close(*a2);
    ures_close(*(a2 + 240));
    MEMORY[0x19A8B2600](a2, 0x10F0C40D79375B8);
  }

  icu::UnicodeString::~UnicodeString(&v10);
  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

void ***DeleteLSTMData(void ***result)
{
  if (result)
  {
    v1 = result;
    uhash_close(*result);
    ures_close(v1[30]);

    JUMPOUT(0x19A8B2600);
  }

  return result;
}

uint64_t sub_1951F6044(uint64_t a1, int a2, int *a3)
{
  *a1 = &unk_1F0932550;
  v6 = 4 * a2;
  v7 = malloc_type_malloc(v6, 0x100004052888210uLL);
  *(a1 + 8) = v7;
  *(a1 + 16) = v7;
  *(a1 + 24) = a2;
  if (*a3 <= 0)
  {
    if (v7)
    {
      bzero(v7, v6);
    }

    else
    {
      *a3 = 7;
    }
  }

  return a1;
}

uint64_t sub_1951F60DC(uint64_t a1, int a2, int a3, int *a4)
{
  *a1 = &unk_1F0932580;
  v8 = 4 * a3 * a2;
  v9 = malloc_type_malloc(v8, 0x100004052888210uLL);
  *(a1 + 8) = v9;
  *(a1 + 16) = v9;
  *(a1 + 24) = a2;
  *(a1 + 28) = a3;
  if (*a4 <= 0)
  {
    if (v9)
    {
      bzero(v9, v8);
    }

    else
    {
      *a4 = 7;
    }
  }

  return a1;
}

uint64_t icu::MessagePattern::MessagePattern(uint64_t this, UErrorCode *a2)
{
  *this = &unk_1F09327A0;
  *(this + 8) = 0;
  *(this + 16) = &unk_1F0935D00;
  *(this + 24) = 2;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 119) = 0;
  if (*a2 <= 0)
  {
    operator new();
  }

  return this;
}

uint64_t icu::MessagePattern::init(icu::MessagePattern *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t icu::MessagePattern::MessagePattern(uint64_t result, int a2, int *a3)
{
  *result = &unk_1F09327A0;
  *(result + 8) = a2;
  *(result + 16) = &unk_1F0935D00;
  *(result + 24) = 2;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 119) = 0;
  if (*a3 <= 0)
  {
    operator new();
  }

  return result;
}

uint64_t icu::MessagePattern::MessagePattern(uint64_t this, const icu::UnicodeString *a2, UParseError *a3, UErrorCode *a4)
{
  *this = &unk_1F09327A0;
  *(this + 8) = 0;
  *(this + 16) = &unk_1F0935D00;
  *(this + 24) = 2;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 119) = 0;
  if (*a4 <= 0)
  {
    operator new();
  }

  return this;
}

icu::MessagePattern *icu::MessagePattern::parse(icu::MessagePattern *this, UChar **a2, UParseError *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    if (a3)
    {
      *&a3->line = 0;
      a3->preContext[0] = 0;
      a3->postContext[0] = 0;
    }

    icu::UnicodeString::operator=(this + 2, a2);
    *(this + 24) = 0;
    *(this + 30) = 0;
    *(this + 123) = 0;
  }

  icu::MessagePattern::parseMessage(this, 0, 0, 0, 0, a3, a4);
  v7 = *(this + 10);
  if (v7)
  {
    *(this + 11) = *v7;
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = *v8;
  }

  return this;
}

icu::MessagePattern *icu::MessagePattern::MessagePattern(icu::MessagePattern *this, const icu::MessagePattern *a2)
{
  *this = &unk_1F09327A0;
  *(this + 2) = *(a2 + 2);
  icu::UnicodeString::UnicodeString((this + 16), a2 + 2);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 124) = *(a2 + 124);
  *(this + 125) = *(a2 + 125);
  *(this + 126) = *(a2 + 126);
  v6 = U_ZERO_ERROR;
  if (!icu::MessagePattern::copyStorage(this, a2, &v6))
  {
    if (*(this + 12))
    {
      v4 = 2;
    }

    else
    {
      v4 = *(this + 12) & 0x1E;
    }

    *(this + 12) = v4;
    *(this + 24) = 0;
    *(this + 30) = 0;
    *(this + 123) = 0;
  }

  return this;
}

uint64_t icu::MessagePattern::copyStorage(icu::MessagePattern *this, const icu::MessagePattern *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  v7 = *(this + 10);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 24);
  if (v8 >= 1)
  {
    sub_1951F6804(v7, *(a2 + 10), v8, a3);
    if (*a3 > 0)
    {
      return 0;
    }

    *(this + 11) = **(this + 10);
    *(this + 24) = *(a2 + 24);
  }

  v9 = *(a2 + 30);
  if (v9 >= 1)
  {
    v10 = *(this + 13);
    if (!v10)
    {
      operator new();
    }

    sub_1951F68E8(v10, *(a2 + 13), v9, a3);
    if (*a3 > 0)
    {
      return 0;
    }

    *(this + 14) = **(this + 13);
    *(this + 30) = *(a2 + 30);
  }

  return 1;
}

uint64_t icu::MessagePattern::clear(uint64_t this)
{
  if (*(this + 24))
  {
    v1 = 2;
  }

  else
  {
    v1 = *(this + 24) & 0x1E;
  }

  *(this + 24) = v1;
  *(this + 96) = 0;
  *(this + 120) = 0;
  *(this + 123) = 0;
  return this;
}

uint64_t icu::MessagePattern::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    icu::UnicodeString::operator=((a1 + 16), (a2 + 16));
    *(a1 + 124) = *(a2 + 124);
    *(a1 + 125) = *(a2 + 125);
    v6 = U_ZERO_ERROR;
    if (!icu::MessagePattern::copyStorage(a1, a2, &v6))
    {
      if (*(a1 + 24))
      {
        v4 = 2;
      }

      else
      {
        v4 = *(a1 + 24) & 0x1E;
      }

      *(a1 + 24) = v4;
      *(a1 + 96) = 0;
      *(a1 + 120) = 0;
      *(a1 + 123) = 0;
    }
  }

  return a1;
}

void **sub_1951F6804(void **result, const void **a2, int a3, int *a4)
{
  if (a3 >= 1 && *a4 <= 0)
  {
    v7 = result;
    if (*(result + 2) >= a3)
    {
      v9 = *result;
      v8 = 16 * a3;
    }

    else
    {
      v8 = 16 * a3;
      result = malloc_type_malloc(v8, 0x1000040451B5BE8uLL);
      if (!result)
      {
        *a4 = 7;
        return result;
      }

      v9 = result;
      if (*(v7 + 12))
      {
        free(*v7);
      }

      *v7 = v9;
      *(v7 + 2) = a3;
      *(v7 + 12) = 1;
    }

    v10 = *a2;

    return memcpy(v9, v10, v8);
  }

  return result;
}

void **sub_1951F68E8(void **result, const void **a2, int a3, int *a4)
{
  if (a3 >= 1 && *a4 <= 0)
  {
    v7 = result;
    if (*(result + 2) >= a3)
    {
      v9 = *result;
      v8 = 8 * a3;
    }

    else
    {
      v8 = 8 * a3;
      result = malloc_type_malloc(v8, 0x100004000313F17uLL);
      if (!result)
      {
        *a4 = 7;
        return result;
      }

      v9 = result;
      if (*(v7 + 12))
      {
        free(*v7);
      }

      *v7 = v9;
      *(v7 + 2) = a3;
      *(v7 + 12) = 1;
    }

    v10 = *a2;

    return memcpy(v9, v10, v8);
  }

  return result;
}

void icu::MessagePattern::~MessagePattern(icu::MessagePattern *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F09327A0;
  v3 = *(this + 10);
  if (v3)
  {
    if (*(v3 + 12))
    {
      free(*v3);
    }

    MEMORY[0x19A8B2600](v3, 0x1020C409068996CLL);
  }

  v4 = *(this + 13);
  if (v4)
  {
    if (*(v4 + 12))
    {
      free(*v4);
    }

    MEMORY[0x19A8B2600](v4, 0x1080C405EE664BALL);
  }

  icu::UnicodeString::~UnicodeString(a2, (this + 16));

  icu::UObject::~UObject(this);
}

{
  icu::MessagePattern::~MessagePattern(this, a2);

  JUMPOUT(0x19A8B2600);
}

icu::UnicodeString *icu::MessagePattern::preParse(icu::UnicodeString *this, UChar **a2, UParseError *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    v4 = this;
    if (a3)
    {
      *&a3->line = 0;
      a3->preContext[0] = 0;
      a3->postContext[0] = 0;
    }

    this = icu::UnicodeString::operator=(this + 2, a2);
    *(v4 + 24) = 0;
    *(v4 + 30) = 0;
    *(v4 + 123) = 0;
  }

  return this;
}

uint64_t icu::MessagePattern::parseMessage(uint64_t a1, int a2, int a3, int a4, int a5, UParseError *a6, int *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  if (a4 >= 1024)
  {
    v7 = 0;
    v10 = 8;
LABEL_5:
    *a7 = v10;
    return v7;
  }

  v17 = *(a1 + 96);
  icu::MessagePattern::addPart(a1, 0, a2, a3, a4, a7);
  if (*a7 > 0)
  {
    return 0;
  }

  v7 = (a3 + a2);
  v19 = a5 == 3 || a5 == 5;
  while (1)
  {
    v20 = *(a1 + 24);
    if (*(a1 + 24) < 0)
    {
      break;
    }

    if (v7 >= (v20 >> 5))
    {
      goto LABEL_89;
    }

    v21 = v20 >> 5;
LABEL_18:
    v22 = v7 + 1;
    if (v21 > v7)
    {
      v23 = a1 + 26;
      if ((v20 & 2) == 0)
      {
        v23 = *(a1 + 40);
      }

      v24 = *(v23 + 2 * v7);
      if (v24 == 39)
      {
        if ((v20 & 0x8000) != 0)
        {
          v25 = *(a1 + 28);
          if (v22 == v25)
          {
            goto LABEL_86;
          }
        }

        else
        {
          if (v22 == v20 >> 5)
          {
            goto LABEL_86;
          }

          v25 = v20 >> 5;
        }

        if (v25 <= v22)
        {
          v28 = 0xFFFF;
LABEL_38:
          if (*(a1 + 8) == 1 || v28 == 123 || v28 == 125 || (v28 == 35 ? (v40 = v19) : (v40 = 0), v28 == 124 ? (v41 = a5 == 2) : (v41 = 0), v41 || v40))
          {
            while (1)
            {
              icu::MessagePattern::addPart(a1, 2, v7, 1, 0, a7);
              v29 = *(a1 + 24);
              if (v22 >= -1)
              {
                v32 = v22 + 1;
                if ((v29 & 0x8000) != 0)
                {
                  v31 = *(a1 + 28);
                  v30 = v31 >= v32 ? v22 + 1 : *(a1 + 28);
                }

                else
                {
                  v31 = v29 >> 5;
                  v30 = v31 >= v32 ? v22 + 1 : v31;
                }
              }

              else
              {
                v30 = 0;
                v31 = (v29 & 0x8000) != 0 ? *(a1 + 28) : v29 >> 5;
              }

              v33 = icu::UnicodeString::doIndexOf(a1 + 16, 0x27u, v30, v31 - v30);
              if (v33 < 0)
              {
                break;
              }

              v34 = *(a1 + 24);
              if (*(a1 + 24) < 0)
              {
                v35 = *(a1 + 28);
              }

              else
              {
                v35 = v34 >> 5;
              }

              v7 = (v33 + 1);
              if (v35 > v7)
              {
                v36 = a1 + 26;
                if ((v34 & 2) == 0)
                {
                  v36 = *(a1 + 40);
                }

                LODWORD(v22) = v33 + 1;
                if (*(v36 + 2 * v7) == 39)
                {
                  continue;
                }
              }

              icu::MessagePattern::addPart(a1, 2, v33, 1, 0, a7);
              v22 = v7;
              goto LABEL_87;
            }

            if (*(a1 + 24) < 0)
            {
              v22 = *(a1 + 28);
            }

            else
            {
              v22 = *(a1 + 24) >> 5;
            }
          }

LABEL_86:
          icu::MessagePattern::addPart(a1, 3, v22, 0, 39, a7);
          *(a1 + 126) = 1;
          goto LABEL_87;
        }

        v27 = a1 + 26;
        if ((v20 & 2) == 0)
        {
          v27 = *(a1 + 40);
        }

        v28 = *(v27 + 2 * v22);
        if (v28 != 39)
        {
          goto LABEL_38;
        }

        icu::MessagePattern::addPart(a1, 2, v7 + 1, 1, 0, a7);
        v22 = (v7 + 2);
      }

      else
      {
        v26 = !v19;
        if (v24 != 35)
        {
          v26 = 1;
        }

        if (v26)
        {
          if (v24 == 123)
          {
            v22 = icu::MessagePattern::parseArg(a1, v7, 1, a4, a6, a7);
          }

          else
          {
            v38 = a5 == 2 && v24 == 124;
            v39 = v24 != 125 || a4 <= 0;
            if (!v39 || v38)
            {
              if (a5 == 2)
              {
                v43 = v7;
              }

              else
              {
                v43 = v22;
              }

              *(**(a1 + 80) + 16 * v17 + 12) = *(a1 + 96);
              v44 = v24 != 125 || a5 != 2;
              icu::MessagePattern::addPart(a1, 1, v7, v44, a4, a7);
              return v43;
            }
          }
        }

        else
        {
          icu::MessagePattern::addPart(a1, 4, v7, 1, 0, a7);
        }
      }
    }

LABEL_87:
    v7 = v22;
    if (*a7 >= 1)
    {
      return 0;
    }
  }

  v21 = *(a1 + 28);
  if (v7 < v21)
  {
    goto LABEL_18;
  }

LABEL_89:
  if (a4 <= 0)
  {
    v42 = **(a1 + 80);
  }

  else if (a4 != 1 || a5 != 2 || (v42 = **(a1 + 80), !*v42))
  {
    icu::MessagePattern::setParseError(a1, a6, 0);
    v7 = 0;
    v10 = 65801;
    goto LABEL_5;
  }

  v42[4 * v17 + 3] = *(a1 + 96);
  icu::MessagePattern::addPart(a1, 1, v7, 0, a4, a7);
  return v7;
}

void *icu::MessagePattern::postParse(void *this)
{
  v1 = this[10];
  if (v1)
  {
    this[11] = *v1;
  }

  v2 = this[13];
  if (v2)
  {
    this[14] = *v2;
  }

  return this;
}

icu::MessagePattern *icu::MessagePattern::parseChoiceStyle(icu::MessagePattern *this, UChar **a2, UParseError *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    if (a3)
    {
      *&a3->line = 0;
      a3->preContext[0] = 0;
      a3->postContext[0] = 0;
    }

    icu::UnicodeString::operator=(this + 2, a2);
    *(this + 24) = 0;
    *(this + 30) = 0;
    *(this + 123) = 0;
  }

  icu::MessagePattern::parseChoiceStyle(this, 0, 0, a3, a4);
  v7 = *(this + 10);
  if (v7)
  {
    *(this + 11) = *v7;
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = *v8;
  }

  return this;
}

uint64_t icu::MessagePattern::parseChoiceStyle(icu::MessagePattern *this, int a2, int a3, UParseError *a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return 0;
  }

  v11 = icu::MessagePattern::skipWhiteSpace(this, a2);
  v12 = v11;
  v13 = *(this + 12);
  if ((v13 & 0x8000) != 0)
  {
    v14 = *(this + 7);
    if (v11 != v14)
    {
      goto LABEL_7;
    }

LABEL_12:
    v16 = this;
    v17 = a4;
    v18 = 0;
    goto LABEL_15;
  }

  if (v11 == v13 >> 5)
  {
    goto LABEL_12;
  }

  v14 = v13 >> 5;
LABEL_7:
  if (v14 > v11)
  {
    v15 = (v13 & 2) != 0 ? (this + 26) : *(this + 5);
    if (*(v15 + v11) == 125)
    {
      goto LABEL_12;
    }
  }

  v19 = icu::MessagePattern::skipDouble(this, v11);
  if (v19 == v12)
  {
    goto LABEL_14;
  }

  v21 = v19;
  while (1)
  {
    if (v21 - v12 >= 0x10000)
    {
      icu::MessagePattern::setParseError(this, a4, v12);
      v20 = U_INDEX_OUTOFBOUNDS_ERROR;
      goto LABEL_16;
    }

    icu::MessagePattern::parseDouble(this, v12, v21, 1, a4, a5);
    if (*a5 > 0)
    {
      return 0;
    }

    v22 = icu::MessagePattern::skipWhiteSpace(this, v21);
    v23 = v22;
    v24 = *(this + 12);
    if ((v24 & 0x8000) != 0)
    {
      v25 = *(this + 7);
      if (v22 == v25)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v22 == v24 >> 5)
      {
        goto LABEL_14;
      }

      v25 = v24 >> 5;
    }

    if (v25 <= v22)
    {
      goto LABEL_14;
    }

    v26 = this + 26;
    if ((v24 & 2) == 0)
    {
      v26 = *(this + 5);
    }

    v27 = *&v26[2 * v22];
    if (v27 != 35 && v27 != 60 && v27 != 8804)
    {
      goto LABEL_14;
    }

    icu::MessagePattern::addPart(this, 11, v22, 1, 0, a5);
    result = icu::MessagePattern::parseMessage(this, (v23 + 1), 0, (a3 + 1), 2, a4, a5);
    if (*a5 > 0)
    {
      return 0;
    }

    v28 = *(this + 12);
    if (*(this + 12) < 0)
    {
      v29 = *(this + 7);
      if (result == v29)
      {
        return result;
      }
    }

    else
    {
      if (result == v28 >> 5)
      {
        return result;
      }

      v29 = v28 >> 5;
    }

    if (v29 > result)
    {
      v30 = this + 26;
      if ((v28 & 2) == 0)
      {
        v30 = *(this + 5);
      }

      if (*&v30[2 * result] == 125)
      {
        break;
      }
    }

    v31 = icu::MessagePattern::skipWhiteSpace(this, result + 1);
    v12 = v31;
    v21 = icu::MessagePattern::skipDouble(this, v31);
    if (v21 == v12)
    {
      goto LABEL_14;
    }
  }

  if (a3 <= 0 && ***(this + 10))
  {
LABEL_14:
    v16 = this;
    v17 = a4;
    v18 = a2;
LABEL_15:
    icu::MessagePattern::setParseError(v16, v17, v18);
    v20 = U_PATTERN_SYNTAX_ERROR;
LABEL_16:
    result = 0;
    *a5 = v20;
  }

  return result;
}

icu::MessagePattern *icu::MessagePattern::parsePluralStyle(icu::MessagePattern *this, UChar **a2, UParseError *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    if (a3)
    {
      *&a3->line = 0;
      a3->preContext[0] = 0;
      a3->postContext[0] = 0;
    }

    icu::UnicodeString::operator=(this + 2, a2);
    *(this + 24) = 0;
    *(this + 30) = 0;
    *(this + 123) = 0;
  }

  icu::MessagePattern::parsePluralOrSelectStyle(this, 3, 0, 0, a3, a4);
  v7 = *(this + 10);
  if (v7)
  {
    *(this + 11) = *v7;
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = *v8;
  }

  return this;
}

unint64_t icu::MessagePattern::parsePluralOrSelectStyle(icu::MessagePattern *this, uint64_t a2, int32_t a3, int a4, UParseError *a5, int *a6)
{
  if (*a6 > 0)
  {
    return 0;
  }

  v41 = 0;
  v11 = 0;
  v12 = this + 26;
  v14 = a2 == 3 || a2 == 5;
  v42 = a3;
  v15 = a3;
  while (1)
  {
    v16 = icu::MessagePattern::skipWhiteSpace(this, v15);
    v6 = v16;
    v17 = *(this + 12);
    v18 = v17 >> 5;
    if ((v17 & 0x8000) != 0)
    {
      v19 = *(this + 7);
      if (v16 == v19)
      {
LABEL_59:
        v37 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v19 = v17 >> 5;
      if (v16 == v17 >> 5)
      {
        goto LABEL_59;
      }
    }

    if (v19 > v16)
    {
      v20 = v12;
      if ((v17 & 2) == 0)
      {
        v20 = *(this + 5);
      }

      if (*&v20[2 * v16] == 125)
      {
        break;
      }
    }

    if (a2 != 5 && a2 != 3)
    {
      goto LABEL_26;
    }

    if ((v17 & 0x8000) != 0)
    {
      v18 = *(this + 7);
    }

    if (v18 <= v16)
    {
      goto LABEL_26;
    }

    v21 = v12;
    if ((v17 & 2) == 0)
    {
      v21 = *(this + 5);
    }

    if (*&v21[2 * v16] == 61)
    {
      v35 = icu::MessagePattern::skipDouble(this, (v16 + 1));
      v36 = v35 - v6;
      if (v35 - v6 == 1)
      {
        goto LABEL_69;
      }

      if (v36 >= 0x10000)
      {
LABEL_60:
        v38 = 8;
        icu::MessagePattern::setParseError(this, a5, v6);
        goto LABEL_71;
      }

      v24 = v35;
      icu::MessagePattern::addPart(this, 11, v6, v36, 0, a6);
      icu::MessagePattern::parseDouble(this, v6 + 1, v24, 0, a5, a6);
LABEL_45:
      if (*a6 > 0)
      {
        return 0;
      }

      v31 = icu::MessagePattern::skipWhiteSpace(this, v24);
      v32 = *(this + 12);
      if ((v32 & 0x8000) != 0)
      {
        v33 = *(this + 7);
        if (v31 == v33)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v31 == v32 >> 5)
        {
          goto LABEL_68;
        }

        v33 = v32 >> 5;
      }

      if (v33 <= v31)
      {
        goto LABEL_68;
      }

      v34 = v12;
      if ((v32 & 2) == 0)
      {
        v34 = *(this + 5);
      }

      if (*&v34[2 * v31] != 123)
      {
LABEL_68:
        v42 = v6;
LABEL_69:
        v38 = 65799;
LABEL_70:
        icu::MessagePattern::setParseError(this, a5, v42);
        goto LABEL_71;
      }

      v11 = 1;
      v15 = icu::MessagePattern::parseMessage(this, v31, 1, (a4 + 1), a2, a5, a6);
      v6 = 0;
      if (*a6 >= 1)
      {
        return v6;
      }
    }

    else
    {
LABEL_26:
      v22 = icu::MessagePattern::skipIdentifier(this, v16);
      v23 = v22 - v6;
      if (v22 == v6)
      {
        goto LABEL_69;
      }

      v24 = v22;
      if (v23 != 6 || !v14)
      {
        if (v23 >= 0x10000)
        {
          goto LABEL_60;
        }

LABEL_42:
        icu::MessagePattern::addPart(this, 11, v6, v23, 0, a6);
        v29 = icu::UnicodeString::doCompare(this + 16, v6, v23, &aOffsetOther[7], 0, 5);
        v30 = v41;
        if (!v29)
        {
          v30 = 1;
        }

        v41 = v30;
        goto LABEL_45;
      }

      if (*(this + 12) < 0)
      {
        v26 = *(this + 7);
      }

      else
      {
        v26 = *(this + 12) >> 5;
      }

      if (v22 >= v26 || icu::UnicodeString::doCompare(this + 16, v6, 7, aOffsetOther, 0, 7))
      {
        goto LABEL_42;
      }

      if (v11)
      {
        goto LABEL_69;
      }

      v27 = icu::MessagePattern::skipWhiteSpace(this, v24 + 1);
      LODWORD(v6) = v27;
      v28 = icu::MessagePattern::skipDouble(this, v27);
      if (v28 == v6)
      {
        goto LABEL_69;
      }

      if (v28 - v6 >= 0x10000)
      {
        goto LABEL_60;
      }

      v15 = v28;
      icu::MessagePattern::parseDouble(this, v6, v28, 0, a5, a6);
      v11 = 1;
      if (*a6 >= 1)
      {
        return 0;
      }
    }
  }

  v37 = 1;
LABEL_62:
  v38 = 65799;
  if (a4 < 1)
  {
    if ((v37 ^ (***(this + 10) == 0)))
    {
      goto LABEL_70;
    }
  }

  else if ((v37 & 1) == 0)
  {
    goto LABEL_70;
  }

  if (v41)
  {
    return v6;
  }

  v38 = 65807;
  icu::MessagePattern::setParseError(this, a5, 0);
LABEL_71:
  v6 = 0;
  *a6 = v38;
  return v6;
}

icu::MessagePattern *icu::MessagePattern::parseSelectStyle(icu::MessagePattern *this, UChar **a2, UParseError *a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    if (a3)
    {
      *&a3->line = 0;
      a3->preContext[0] = 0;
      a3->postContext[0] = 0;
    }

    icu::UnicodeString::operator=(this + 2, a2);
    *(this + 24) = 0;
    *(this + 30) = 0;
    *(this + 123) = 0;
  }

  icu::MessagePattern::parsePluralOrSelectStyle(this, 4, 0, 0, a3, a4);
  v7 = *(this + 10);
  if (v7)
  {
    *(this + 11) = *v7;
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = *v8;
  }

  return this;
}

BOOL icu::MessagePattern::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((v4 & 0x8000) != 0)
    {
      v5 = *(a1 + 28);
    }

    else
    {
      v5 = v4 >> 5;
    }

    result = 0;
    v7 = *(a2 + 24);
    if ((v7 & 0x8000u) == 0)
    {
      v8 = v7 >> 5;
    }

    else
    {
      v8 = *(a2 + 28);
    }

    if ((v7 & 1) != 0 || v5 != v8)
    {
      return result;
    }

    v9 = (v7 & 2) != 0 ? (a2 + 26) : *(a2 + 40);
    result = icu::UnicodeString::doEquals(a1 + 16, v9, v5);
    if (!result)
    {
      return result;
    }
  }

  v10 = *(a1 + 96);
  if (v10 != *(a2 + 96))
  {
    return 0;
  }

  if (v10 < 1)
  {
    return 1;
  }

  v11 = **(a1 + 80);
  v12 = **(a2 + 80);
  result = icu::MessagePattern::Part::operator==(v11, v12);
  if (result)
  {
    v13 = v11 + 16;
    v14 = v12 + 16;
    v15 = 1;
    do
    {
      v16 = v15;
      if (v10 == v15)
      {
        break;
      }

      v17 = icu::MessagePattern::Part::operator==(v13, v14);
      v15 = v16 + 1;
      v13 += 16;
      v14 += 16;
    }

    while (v17);
    return v16 >= v10;
  }

  return result;
}

uint64_t icu::MessagePattern::hashCode(icu::MessagePattern *this)
{
  v2 = *(this + 2);
  v3 = icu::UnicodeString::doHashCode((this + 16));
  v4 = *(this + 24);
  result = (v4 + 37 * (v3 + 37 * v2));
  if (v4 >= 1)
  {
    v6 = (*(this + 11) + 8);
    do
    {
      result = v6[1] + 37 * (result + *v6 + 37 * (*(v6 - 1) + 37 * *(v6 - 2)));
      v6 += 8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t icu::MessagePattern::validateArgumentName(icu::MessagePattern *this, const icu::UnicodeString *a2)
{
  v3 = *(this + 4);
  if ((v3 & 0x11) != 0)
  {
    v4 = 0;
  }

  else if ((v3 & 2) != 0)
  {
    v4 = (this + 10);
  }

  else
  {
    v4 = *(this + 3);
  }

  v5 = v3;
  v6 = v3 >> 5;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(this + 3);
  }

  if (!icu::PatternProps::isIdentifier(v4, v7))
  {
    return 4294967294;
  }

  v8 = *(this + 4);
  v9 = v8;
  v10 = v8 >> 5;
  if (v9 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(this + 3);
  }

  return icu::MessagePattern::parseArgNumber(this, 0, v11);
}

uint64_t icu::MessagePattern::parseArgNumber(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 >= a3)
  {
    return 4294967294;
  }

  v3 = *(a1 + 8);
  if ((v3 & 0x8000u) == 0)
  {
    v4 = v3 >> 5;
  }

  else
  {
    v4 = *(a1 + 12);
  }

  if (v4 <= a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a2 + 1;
  v6 = a1 + 10;
  if ((v3 & 2) == 0)
  {
    v6 = *(a1 + 24);
  }

  v7 = *(v6 + 2 * a2);
  result = (v7 - 48);
  if (v7 == 48)
  {
    if (v5 == a3)
    {
      return result;
    }

    v9 = 1;
    goto LABEL_15;
  }

  if ((v7 - 49) > 8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0;
LABEL_15:
  if (v5 < a3)
  {
    v10 = (v6 + 2 * v5);
    while (v4 > v5)
    {
      v11 = *v10;
      if ((v11 - 48) > 9)
      {
        break;
      }

      if (result > 214748363)
      {
        v9 = 1;
      }

      LODWORD(result) = v11 + 10 * result - 48;
      ++v5;
      ++v10;
      if (a3 == v5)
      {
        goto LABEL_22;
      }
    }

    return 0xFFFFFFFFLL;
  }

LABEL_22:
  if (v9)
  {
    return 4294967294;
  }

  else
  {
    return result;
  }
}

icu::UnicodeString *icu::MessagePattern::autoQuoteApostropheDeep@<X0>(UChar **this@<X0>, icu::UnicodeString *a2@<X8>)
{
  if (*(this + 126))
  {
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    result = icu::UnicodeString::UnicodeString(a2, this + 2);
    v5 = *(this + 24);
    if (v5 >= 1)
    {
      v6 = v5 + 1;
      v7 = 8 * v5;
      do
      {
        v8 = &this[11][v7];
        if (*(v8 - 4) == 3)
        {
          v9 = *(v8 - 3);
          v10 = *(v8 - 3);
          result = icu::UnicodeString::doReplace(a2, v9, 0, &v10, 0, 1);
        }

        --v6;
        v7 -= 8;
      }

      while (v6 > 1);
    }
  }

  else
  {

    return icu::UnicodeString::UnicodeString(a2, this + 2);
  }

  return result;
}

double icu::MessagePattern::getNumericValue(uint64_t a1, uint64_t a2)
{
  if (*a2 == 13)
  {
    return *(*(a1 + 112) + 8 * *(a2 + 10));
  }

  if (*a2 == 12)
  {
    return *(a2 + 10);
  }

  return -123456789.0;
}

double icu::MessagePattern::getPluralOffset(icu::MessagePattern *this, int a2)
{
  v2 = *(this + 11) + 16 * a2;
  result = 0.0;
  if ((*v2 & 0xFFFFFFFE) == 0xC)
  {
    if (*v2 == 12)
    {
      return *(v2 + 10);
    }

    else
    {
      return *(*(this + 14) + 8 * *(v2 + 10));
    }
  }

  return result;
}

BOOL icu::MessagePattern::Part::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*a1 == *a2 && *(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 10) == *(a2 + 10))
  {
    return *(a1 + 12) == *(a2 + 12);
  }

  return 0;
}

uint64_t icu::MessagePattern::addPart(uint64_t a1, int a2, int a3, __int16 a4, __int16 a5, int *a6)
{
  result = sub_1951F9184(*(a1 + 80), *(a1 + 96), a6);
  if (result)
  {
    v12 = *(a1 + 80);
    v13 = *(a1 + 96);
    *(a1 + 96) = v13 + 1;
    v14 = *v12 + 16 * v13;
    *v14 = a2;
    *(v14 + 4) = a3;
    *(v14 + 8) = a4;
    *(v14 + 10) = a5;
    *(v14 + 12) = 0;
  }

  return result;
}

uint64_t icu::MessagePattern::parseArg(icu::MessagePattern *this, int a2, int a3, int a4, UParseError *a5, UErrorCode *a6)
{
  v12 = *(this + 24);
  icu::MessagePattern::addPart(this, 5, a2, a3, 0, a6);
  result = 0;
  if (*a6 <= 0)
  {
    v14 = icu::MessagePattern::skipWhiteSpace(this, a3 + a2);
    v15 = v14;
    v16 = *(this + 12);
    if ((v16 & 0x8000) != 0)
    {
      v17 = *(this + 7);
    }

    else
    {
      v17 = v16 >> 5;
    }

    if (v14 == v17)
    {
      goto LABEL_6;
    }

    v19 = icu::MessagePattern::skipIdentifier(this, v14);
    v20 = icu::MessagePattern::parseArgNumber(this + 16, v15, v19);
    v21 = v20;
    if ((v20 & 0x80000000) != 0)
    {
      if (v20 != -1)
      {
        goto LABEL_69;
      }

      v22 = v19 - v15;
      if ((v19 - v15) >= 0x10000)
      {
        goto LABEL_49;
      }

      *(this + 124) = 1;
      v23 = this;
      v24 = 8;
      v25 = v15;
      v21 = 0;
    }

    else
    {
      v22 = v19 - v15;
      if ((v19 - v15) >= 0x10000 || v20 >> 15)
      {
        goto LABEL_49;
      }

      *(this + 125) = 1;
      v23 = this;
      v24 = 7;
      v25 = v15;
    }

    icu::MessagePattern::addPart(v23, v24, v25, v22, v21, a6);
    v26 = icu::MessagePattern::skipWhiteSpace(this, v19);
    v27 = v26;
    v28 = *(this + 12);
    if ((v28 & 0x8000) != 0)
    {
      v29 = *(this + 7);
      if (v26 != v29)
      {
LABEL_18:
        if (v29 <= v26)
        {
          goto LABEL_69;
        }

        if ((v28 & 2) != 0)
        {
          v30 = this + 26;
        }

        else
        {
          v30 = *(this + 5);
        }

        v31 = *&v30[2 * v26];
        if (v31 != 44)
        {
          if (v31 == 125)
          {
            v32 = 0;
LABEL_25:
            *(**(this + 10) + 16 * v12 + 12) = *(this + 24);
            icu::MessagePattern::addPart(this, 6, v27, 1, v32, a6);
            return (v27 + 1);
          }

          goto LABEL_69;
        }

        v33 = icu::MessagePattern::skipWhiteSpace(this, v26 + 1);
        v34 = 0;
        v35 = *(this + 12);
        v36 = this + 26;
        v37 = v33;
        v38 = v33;
        do
        {
          v39 = v34;
          if ((v35 & 0x8000) != 0)
          {
            v40 = *(this + 7);
            if (v38 >= v40)
            {
              break;
            }
          }

          else
          {
            v40 = v35 >> 5;
            if (v38 >= (v35 >> 5))
            {
              break;
            }
          }

          if (v40 <= v33 + v39)
          {
            break;
          }

          v41 = this + 26;
          if ((v35 & 2) == 0)
          {
            v41 = *(this + 5);
          }

          v42 = (*&v41[2 * v38++] & 0xFFDF) - 91;
          v34 = v39 + 1;
        }

        while (v42 > 0xFFFFFFE5);
        v43 = icu::MessagePattern::skipWhiteSpace(this, v33 + v39);
        v27 = v43;
        v44 = *(this + 12);
        if ((v44 & 0x8000) != 0)
        {
          v45 = *(this + 7);
        }

        else
        {
          v45 = v44 >> 5;
        }

        if (v43 == v45)
        {
          goto LABEL_6;
        }

        if (!v39)
        {
          goto LABEL_69;
        }

        v46 = (v44 & 0x8000) != 0 ? *(this + 7) : v44 >> 5;
        if (v46 <= v43)
        {
          goto LABEL_69;
        }

        if ((v44 & 2) == 0)
        {
          v36 = *(this + 5);
        }

        v47 = *&v36[2 * v43];
        if (v47 != 44 && v47 != 125)
        {
          goto LABEL_69;
        }

        if (v39 >= 0x10000)
        {
LABEL_49:
          icu::MessagePattern::setParseError(this, a5, v15);
          result = 0;
          v18 = U_INDEX_OUTOFBOUNDS_ERROR;
          goto LABEL_70;
        }

        if (v39 == 13)
        {
          if (icu::MessagePattern::isSelect(this, v37))
          {
            isOrdinal = icu::MessagePattern::isOrdinal(this, v37 + 6);
            v49 = !isOrdinal;
            v50 = 5;
            v51 = 5;
LABEL_57:
            if (v49)
            {
              v50 = 1;
            }

            *(**(this + 10) + 16 * v12 + 10) = v50;
            if (isOrdinal)
            {
LABEL_68:
              if (v47 != 125)
              {
                v32 = v51;
                v27 = icu::MessagePattern::parsePluralOrSelectStyle(this, v51, v27 + 1, a4, a5, a6);
                goto LABEL_25;
              }

              goto LABEL_69;
            }

LABEL_63:
            icu::MessagePattern::addPart(this, 9, v37, v39, 0, a6);
            if (v47 != 125)
            {
              v27 = icu::MessagePattern::parseSimpleStyle(this, (v27 + 1), a5, a6);
            }

            v32 = 1;
            goto LABEL_25;
          }
        }

        else if (v39 == 6)
        {
          if (icu::MessagePattern::isChoice(this, v37))
          {
            *(**(this + 10) + 16 * v12 + 10) = 2;
            if (v47 != 125)
            {
              v27 = icu::MessagePattern::parseChoiceStyle(this, v27 + 1, a4, a5, a6);
              v32 = 2;
              goto LABEL_25;
            }

LABEL_69:
            icu::MessagePattern::setParseError(this, a5, v15);
            result = 0;
            v18 = U_PATTERN_SYNTAX_ERROR;
            goto LABEL_70;
          }

          if (icu::MessagePattern::isPlural(this, v37))
          {
            v51 = 3;
            *(**(this + 10) + 16 * v12 + 10) = 3;
            goto LABEL_68;
          }

          isOrdinal = icu::MessagePattern::isSelect(this, v37);
          v49 = !isOrdinal;
          v50 = 4;
          v51 = 4;
          goto LABEL_57;
        }

        *(**(this + 10) + 16 * v12 + 10) = 1;
        goto LABEL_63;
      }
    }

    else if (v26 != v28 >> 5)
    {
      v29 = v28 >> 5;
      goto LABEL_18;
    }

LABEL_6:
    icu::MessagePattern::setParseError(this, a5, 0);
    result = 0;
    v18 = U_UNMATCHED_BRACES;
LABEL_70:
    *a6 = v18;
  }

  return result;
}

BOOL icu::MessagePattern::inTopLevelChoiceMessage(uint64_t a1, int a2, int a3)
{
  result = 0;
  if (a2 == 1 && a3 == 2)
  {
    return ***(a1 + 80) != 0;
  }

  return result;
}

char *icu::MessagePattern::setParseError(char *this, UParseError *a2, int32_t a3)
{
  if (a2)
  {
    v5 = this;
    a2->offset = a3;
    v6 = a3;
    if (a3 >= 16)
    {
      v7 = a3 - 15;
      v8 = *(this + 12);
      if (*(this + 12) < 0)
      {
        v9 = *(this + 7);
      }

      else
      {
        v9 = v8 >> 5;
      }

      if (v9 <= v7)
      {
        v6 = 15;
      }

      else
      {
        if ((v8 & 2) != 0)
        {
          v10 = this + 26;
        }

        else
        {
          v10 = *(this + 5);
        }

        if ((*&v10[2 * v7] & 0xFC00) == 0xDC00)
        {
          v6 = 14;
        }

        else
        {
          v6 = 15;
        }
      }
    }

    icu::UnicodeString::doExtract(this + 16, a3 - v6, v6, a2->preContext, 0);
    a2->preContext[v6] = 0;
    v11 = *(v5 + 12);
    if (*(v5 + 12) < 0)
    {
      v12 = *(v5 + 7);
      v13 = v12 - a3;
      if ((v12 - a3) <= 15)
      {
LABEL_26:
        postContext = a2->postContext;
        this = icu::UnicodeString::doExtract(v5 + 16, a3, v13, postContext, 0);
        postContext[v13] = 0;
        return this;
      }
    }

    else
    {
      v12 = v11 >> 5;
      v13 = (v11 >> 5) - a3;
      if (v13 < 16)
      {
        goto LABEL_26;
      }
    }

    if (v12 <= a3 + 14)
    {
      v13 = 15;
    }

    else
    {
      if ((v11 & 2) != 0)
      {
        v14 = v5 + 26;
      }

      else
      {
        v14 = *(v5 + 5);
      }

      if ((*&v14[2 * a3 + 28] & 0xFC00) == 0xD800)
      {
        v13 = 14;
      }

      else
      {
        v13 = 15;
      }
    }

    goto LABEL_26;
  }

  return this;
}

unint64_t icu::MessagePattern::skipWhiteSpace(icu::MessagePattern *this, int a2)
{
  v2 = *(this + 12);
  if ((v2 & 0x11) == 0)
  {
    if ((v2 & 2) != 0)
    {
      v3 = this + 26;
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = *(this + 5);
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v4 = *(this + 7);
    return (icu::PatternProps::skipWhiteSpace(&v3[2 * a2], v4 - a2) - v3) >> 1;
  }

  v3 = 0;
  if ((v2 & 0x8000) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v4 = v2 >> 5;
  return (icu::PatternProps::skipWhiteSpace(&v3[2 * a2], v4 - a2) - v3) >> 1;
}

unint64_t icu::MessagePattern::skipIdentifier(icu::MessagePattern *this, int a2)
{
  v2 = *(this + 12);
  if ((v2 & 0x11) == 0)
  {
    if ((v2 & 2) != 0)
    {
      v3 = this + 26;
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v3 = *(this + 5);
      if ((v2 & 0x8000) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v4 = *(this + 7);
    return (icu::PatternProps::skipIdentifier(&v3[2 * a2], v4 - a2) - v3) >> 1;
  }

  v3 = 0;
  if ((v2 & 0x8000) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v4 = v2 >> 5;
  return (icu::PatternProps::skipIdentifier(&v3[2 * a2], v4 - a2) - v3) >> 1;
}

BOOL icu::MessagePattern::isChoice(icu::MessagePattern *this, unsigned int a2)
{
  v2 = *(this + 12);
  if (*(this + 12) < 0)
  {
    v3 = *(this + 7);
  }

  else
  {
    v3 = v2 >> 5;
  }

  if (v3 <= a2)
  {
    return 0;
  }

  v4 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v4 + a2) & 0xFFDF) != 0x43)
  {
    return 0;
  }

  v5 = a2 + 1;
  v6 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v6 <= v5)
  {
    return 0;
  }

  v7 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v7 + v5) & 0xFFDF) != 0x48)
  {
    return 0;
  }

  v8 = a2 + 2;
  v9 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v9 <= v8)
  {
    return 0;
  }

  v10 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v10 + v8) & 0xFFDF) != 0x4F)
  {
    return 0;
  }

  v11 = a2 + 3;
  v12 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v12 <= v11)
  {
    return 0;
  }

  v13 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v13 + v11) & 0xFFDF) != 0x49)
  {
    return 0;
  }

  v14 = a2 + 4;
  v15 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v15 <= v14)
  {
    return 0;
  }

  v16 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v16 + v14) & 0xFFDF) != 0x43)
  {
    return 0;
  }

  v17 = a2 + 5;
  v18 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v18 <= v17)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    v19 = this + 26;
  }

  else
  {
    v19 = *(this + 5);
  }

  return (*&v19[2 * v17] & 0xFFDF) == 69;
}

BOOL icu::MessagePattern::isPlural(icu::MessagePattern *this, unsigned int a2)
{
  v2 = *(this + 12);
  if (*(this + 12) < 0)
  {
    v3 = *(this + 7);
  }

  else
  {
    v3 = v2 >> 5;
  }

  if (v3 <= a2)
  {
    return 0;
  }

  v4 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v4 + a2) & 0xFFDF) != 0x50)
  {
    return 0;
  }

  v5 = a2 + 1;
  v6 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v6 <= v5)
  {
    return 0;
  }

  v7 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v7 + v5) & 0xFFDF) != 0x4C)
  {
    return 0;
  }

  v8 = a2 + 2;
  v9 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v9 <= v8)
  {
    return 0;
  }

  v10 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v10 + v8) & 0xFFDF) != 0x55)
  {
    return 0;
  }

  v11 = a2 + 3;
  v12 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v12 <= v11)
  {
    return 0;
  }

  v13 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v13 + v11) & 0xFFDF) != 0x52)
  {
    return 0;
  }

  v14 = a2 + 4;
  v15 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v15 <= v14)
  {
    return 0;
  }

  v16 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v16 + v14) & 0xFFDF) != 0x41)
  {
    return 0;
  }

  v17 = a2 + 5;
  v18 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v18 <= v17)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    v19 = this + 26;
  }

  else
  {
    v19 = *(this + 5);
  }

  return (*&v19[2 * v17] & 0xFFDF) == 76;
}

BOOL icu::MessagePattern::isSelect(icu::MessagePattern *this, unsigned int a2)
{
  v2 = *(this + 12);
  if (*(this + 12) < 0)
  {
    v3 = *(this + 7);
  }

  else
  {
    v3 = v2 >> 5;
  }

  if (v3 <= a2)
  {
    return 0;
  }

  v4 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v4 + a2) & 0xFFDF) != 0x53)
  {
    return 0;
  }

  v5 = a2 + 1;
  v6 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v6 <= v5)
  {
    return 0;
  }

  v7 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v7 + v5) & 0xFFDF) != 0x45)
  {
    return 0;
  }

  v8 = a2 + 2;
  v9 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v9 <= v8)
  {
    return 0;
  }

  v10 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v10 + v8) & 0xFFDF) != 0x4C)
  {
    return 0;
  }

  v11 = a2 + 3;
  v12 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v12 <= v11)
  {
    return 0;
  }

  v13 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v13 + v11) & 0xFFDF) != 0x45)
  {
    return 0;
  }

  v14 = a2 + 4;
  v15 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v15 <= v14)
  {
    return 0;
  }

  v16 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v16 + v14) & 0xFFDF) != 0x43)
  {
    return 0;
  }

  v17 = a2 + 5;
  v18 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v18 <= v17)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    v19 = this + 26;
  }

  else
  {
    v19 = *(this + 5);
  }

  return (*&v19[2 * v17] & 0xFFDF) == 84;
}

BOOL icu::MessagePattern::isOrdinal(icu::MessagePattern *this, unsigned int a2)
{
  v2 = *(this + 12);
  if (*(this + 12) < 0)
  {
    v3 = *(this + 7);
  }

  else
  {
    v3 = v2 >> 5;
  }

  if (v3 <= a2)
  {
    return 0;
  }

  v4 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v4 + a2) & 0xFFDF) != 0x4F)
  {
    return 0;
  }

  v5 = a2 + 1;
  v6 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v6 <= v5)
  {
    return 0;
  }

  v7 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v7 + v5) & 0xFFDF) != 0x52)
  {
    return 0;
  }

  v8 = a2 + 2;
  v9 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v9 <= v8)
  {
    return 0;
  }

  v10 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v10 + v8) & 0xFFDF) != 0x44)
  {
    return 0;
  }

  v11 = a2 + 3;
  v12 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v12 <= v11)
  {
    return 0;
  }

  v13 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v13 + v11) & 0xFFDF) != 0x49)
  {
    return 0;
  }

  v14 = a2 + 4;
  v15 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v15 <= v14)
  {
    return 0;
  }

  v16 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v16 + v14) & 0xFFDF) != 0x4E)
  {
    return 0;
  }

  v17 = a2 + 5;
  v18 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v18 <= v17)
  {
    return 0;
  }

  v19 = (v2 & 2) != 0 ? (this + 26) : *(this + 5);
  if ((*(v19 + v17) & 0xFFDF) != 0x41)
  {
    return 0;
  }

  v20 = a2 + 6;
  v21 = (v2 & 0x8000) != 0 ? *(this + 7) : v2 >> 5;
  if (v21 <= v20)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    v22 = this + 26;
  }

  else
  {
    v22 = *(this + 5);
  }

  return (*&v22[2 * v20] & 0xFFDF) == 76;
}

uint64_t icu::MessagePattern::parseSimpleStyle(icu::MessagePattern *this, uint64_t a2, UParseError *a3, UErrorCode *a4)
{
  if (*a4 > 0)
  {
    return 0;
  }

  v7 = a2;
  v9 = 0;
  v10 = this + 26;
  v11 = a2;
  do
  {
    while (1)
    {
      while (1)
      {
        do
        {
          v4 = v11;
          v12 = *(this + 12);
          if (*(this + 12) < 0)
          {
            v13 = *(this + 7);
            if (v11 >= v13)
            {
LABEL_31:
              icu::MessagePattern::setParseError(this, a3, 0);
              v4 = 0;
              v20 = U_UNMATCHED_BRACES;
LABEL_32:
              *a4 = v20;
              return v4;
            }
          }

          else
          {
            if (v11 >= (v12 >> 5))
            {
              goto LABEL_31;
            }

            v13 = v12 >> 5;
          }

          v11 = (v11 + 1);
        }

        while (v13 <= v4);
        v14 = v10;
        if ((v12 & 2) == 0)
        {
          v14 = *(this + 5);
        }

        v15 = *&v14[2 * v4];
        if (v15 != 39)
        {
          break;
        }

        if (v4 >= -1)
        {
          if ((v12 & 0x8000) != 0)
          {
            v18 = *(this + 7);
            if (v18 >= v11)
            {
              v17 = v11;
            }

            else
            {
              v17 = *(this + 7);
            }
          }

          else
          {
            v18 = v12 >> 5;
            if (v18 >= v11)
            {
              v17 = v11;
            }

            else
            {
              v17 = v18;
            }
          }
        }

        else
        {
          v17 = 0;
          if ((v12 & 0x8000) != 0)
          {
            v18 = *(this + 7);
          }

          else
          {
            v18 = v12 >> 5;
          }
        }

        v19 = icu::UnicodeString::doIndexOf(this + 16, 0x27u, v17, v18 - v17);
        if (v19 < 0)
        {
          icu::MessagePattern::setParseError(this, a3, v7);
          v4 = 0;
          v20 = U_PATTERN_SYNTAX_ERROR;
          goto LABEL_32;
        }

        v11 = (v19 + 1);
      }

      if (v15 != 123)
      {
        break;
      }

      v16 = 1;
LABEL_30:
      v9 += v16;
    }
  }

  while (v15 != 125);
  if (v9 > 0)
  {
    v16 = -1;
    goto LABEL_30;
  }

  if (v4 - v7 >= 0x10000)
  {
    icu::MessagePattern::setParseError(this, a3, v7);
    v4 = 0;
    v20 = U_INDEX_OUTOFBOUNDS_ERROR;
    goto LABEL_32;
  }

  icu::MessagePattern::addPart(this, 10, v7, v4 - v7, 0, a4);
  return v4;
}

uint64_t icu::MessagePattern::skipDouble(icu::MessagePattern *this, uint64_t a2)
{
  v2 = *(this + 12);
  if (*(this + 12) < 0)
  {
    v3 = *(this + 7);
  }

  else
  {
    v3 = v2 >> 5;
  }

  if (v3 > a2)
  {
    v4 = 2 * a2;
    a2 = a2;
    while (1)
    {
      v5 = v2 >> 5;
      if ((v2 & 0x8000) != 0)
      {
        v5 = *(this + 7);
      }

      if (v5 <= a2)
      {
        break;
      }

      v6 = this + 26;
      if ((v2 & 2) == 0)
      {
        v6 = *(this + 5);
      }

      v7 = *&v6[v4];
      v8 = v7;
      if (v7 > 0x2Fu)
      {
        if (v7 >= 0x3Au)
        {
          v11 = v7 == 69 || v7 == 8734;
          if (!v11 && v7 != 101)
          {
            return a2;
          }
        }
      }

      else
      {
        v9 = (1 << v7) & 0x680000000000;
        if (v8 > 0x2E || v9 == 0)
        {
          return a2;
        }
      }

      ++a2;
      v4 += 2;
      if (v3 == a2)
      {
        return v3;
      }
    }
  }

  return a2;
}

uint64_t icu::MessagePattern::parseDouble(uint64_t this, int a2, int a3, int a4, UParseError *a5, UErrorCode *a6)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    goto LABEL_53;
  }

  v8 = a3;
  v10 = this;
  v11 = *(this + 24);
  if (*(this + 24) < 0)
  {
    v12 = *(this + 28);
  }

  else
  {
    v12 = v11 >> 5;
  }

  if (v12 <= a2)
  {
    goto LABEL_49;
  }

  v13 = a2 + 1;
  if ((v11 & 2) != 0)
  {
    v14 = this + 26;
  }

  else
  {
    v14 = *(this + 40);
  }

  v15 = *(v14 + 2 * a2);
  if (v15 == 43)
  {
    if (v13 == a3)
    {
      goto LABEL_52;
    }

    if ((v11 & 0x8000) != 0)
    {
      v17 = *(this + 28);
    }

    else
    {
      v17 = v11 >> 5;
    }

    if (v17 <= v13)
    {
      goto LABEL_49;
    }

    v18 = 0;
    if ((v11 & 2) != 0)
    {
      v20 = this + 26;
    }

    else
    {
      v20 = *(this + 40);
    }

    v19 = 0x7FFF;
    goto LABEL_30;
  }

  if (v15 != 45)
  {
    v18 = 0;
    v19 = 0x7FFF;
    goto LABEL_31;
  }

  if (v13 == a3)
  {
    goto LABEL_52;
  }

  v16 = (v11 & 0x8000) != 0 ? *(this + 28) : v11 >> 5;
  if (v16 <= v13)
  {
LABEL_49:
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v27 = a3 - a2;
    *__s = 0u;
    v34 = 0u;
    if (v27 <= 127)
    {
      icu::UnicodeString::extract(this + 16, a2, a3 - a2, __s, 128);
      if (v27 <= strlen(__s))
      {
        v32 = 0;
        v28 = strtod(__s, &v32);
        if (v32 == &__s[v27])
        {
          this = icu::MessagePattern::addArgDoublePart(v10, v28, a2, v27, a6);
          goto LABEL_53;
        }
      }
    }

LABEL_52:
    this = icu::MessagePattern::setParseError(v10, a5, a2);
    *a6 = U_PATTERN_SYNTAX_ERROR;
LABEL_53:
    v29 = *MEMORY[0x1E69E9840];
    return this;
  }

  if ((v11 & 2) != 0)
  {
    v20 = this + 26;
  }

  else
  {
    v20 = *(this + 40);
  }

  v19 = 0x8000;
  v18 = 1;
LABEL_30:
  v15 = *(v20 + 2 * v13);
  LODWORD(v13) = a2 + 2;
LABEL_31:
  if (v15 != 8734)
  {
    if ((v15 - 48) <= 9)
    {
      v23 = 0;
      v24 = v13;
      while (1)
      {
        v23 = v15 + 10 * v23 - 48;
        if (v23 > v19)
        {
          break;
        }

        if (a3 == v24)
        {
          if (v18)
          {
            v30 = -v23;
          }

          else
          {
            LOWORD(v30) = v23;
          }

          v31 = *MEMORY[0x1E69E9840];

          return icu::MessagePattern::addPart(this, 12, a2, a3 - a2, v30, a6);
        }

        v25 = v11 >> 5;
        if ((v11 & 0x8000) != 0)
        {
          v25 = *(this + 28);
        }

        if (v25 > v13)
        {
          v26 = this + 26;
          if ((v11 & 2) == 0)
          {
            v26 = *(this + 40);
          }

          v15 = *(v26 + 2 * v24);
          LODWORD(v13) = v13 + 1;
          ++v24;
          if ((v15 - 48) < 0xA)
          {
            continue;
          }
        }

        goto LABEL_49;
      }
    }

    goto LABEL_49;
  }

  if (!a4 || v13 != a3)
  {
    goto LABEL_52;
  }

  Infinity = uprv_getInfinity();
  if (v18)
  {
    Infinity = -Infinity;
  }

  v22 = *MEMORY[0x1E69E9840];

  return icu::MessagePattern::addArgDoublePart(v10, Infinity, a2, v8 - a2, a6);
}

uint64_t icu::MessagePattern::addArgDoublePart(uint64_t this, double a2, int a3, __int16 a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v9 = this;
    v10 = *(this + 120);
    v11 = *(this + 104);
    if (!v11)
    {
      operator new();
    }

    this = sub_1951F9264(v11, v10, a5);
    if (this)
    {
      if (v10 < 0x8000)
      {
        v12 = **(v9 + 104);
        v13 = *(v9 + 120);
        *(v9 + 120) = v13 + 1;
        *(v12 + 8 * v13) = a2;

        return icu::MessagePattern::addPart(v9, 13, a3, a4, v10, a5);
      }

      else
      {
        *a5 = U_INDEX_OUTOFBOUNDS_ERROR;
      }
    }
  }

  return this;
}

uint64_t sub_1951F9184(uint64_t a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (*(a1 + 8) > a2)
  {
    return 1;
  }

  if (a2 >= 1 && (v7 = 2 * a2, (v8 = malloc_type_malloc(16 * (2 * a2), 0x1000040451B5BE8uLL)) != 0))
  {
    v9 = v8;
    v10 = *(a1 + 8);
    if (v10 >= a2)
    {
      v10 = a2;
    }

    if (v10 >= v7)
    {
      v10 = v7;
    }

    memcpy(v8, *a1, 16 * v10);
    if (*(a1 + 12))
    {
      free(*a1);
    }

    *a1 = v9;
    *(a1 + 8) = v7;
    result = 1;
    *(a1 + 12) = 1;
  }

  else
  {
    result = 0;
    *a3 = 7;
  }

  return result;
}

uint64_t sub_1951F9264(uint64_t a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (*(a1 + 8) > a2)
  {
    return 1;
  }

  if (a2 >= 1 && (v7 = 2 * a2, (v8 = malloc_type_malloc(8 * (2 * a2), 0x100004000313F17uLL)) != 0))
  {
    v9 = v8;
    v10 = *(a1 + 8);
    if (v10 >= a2)
    {
      v10 = a2;
    }

    if (v10 >= v7)
    {
      v10 = v7;
    }

    memcpy(v8, *a1, 8 * v10);
    if (*(a1 + 12))
    {
      free(*a1);
    }

    *a1 = v9;
    *(a1 + 8) = v7;
    result = 1;
    *(a1 + 12) = 1;
  }

  else
  {
    result = 0;
    *a3 = 7;
  }

  return result;
}

uint64_t icu::MessageImpl::appendReducedApostrophes(icu::MessageImpl *this, const icu::UnicodeString *a2, int a3, uint64_t a4, icu::UnicodeString *a5)
{
  v7 = a2;
  v9 = -1;
  while (1)
  {
    v10 = *(this + 4);
    if (v7 < 0)
    {
      v12 = 0;
      v11 = (v10 & 0x8000) != 0 ? *(this + 3) : v10 >> 5;
    }

    else if ((v10 & 0x8000) != 0)
    {
      v11 = *(this + 3);
      v12 = v11 >= v7 ? v7 : *(this + 3);
    }

    else
    {
      v11 = v10 >> 5;
      v12 = v11 >= v7 ? v7 : v11;
    }

    v13 = icu::UnicodeString::doIndexOf(this, 0x27u, v12, v11 - v12);
    if (v13 < 0)
    {
      break;
    }

    v14 = v13;
    if (v13 >= a3)
    {
      break;
    }

    if (v13 == v9)
    {
      v16 = 39;
      icu::UnicodeString::doAppend(a4, &v16, 0, 1);
      ++v7;
      v9 = -1;
    }

    else
    {
      icu::UnicodeString::doAppend(a4, this, v7, (v13 - v7));
      v9 = v14 + 1;
      v7 = v14 + 1;
    }
  }

  return icu::UnicodeString::doAppend(a4, this, v7, (a3 - v7));
}

uint64_t icu::MessageImpl::appendSubMessageWithoutSkipSyntax(icu::MessageImpl *this, const icu::MessagePattern *a2, icu::UnicodeString *a3, icu::UnicodeString *a4)
{
  v6 = *(this + 11);
  v7 = *(v6 + 16 * a2 + 4) + *(v6 + 16 * a2 + 8);
  while (1)
  {
    v8 = a2 + 1;
    v9 = (v6 + 16 * v8);
    v10 = *v9;
    v11 = v9[1];
    if (*v9 == 2)
    {
      icu::UnicodeString::doAppend(a3, (this + 16), v7, (v11 - v7));
      v7 = v9[1] + *(v9 + 4);
      goto LABEL_10;
    }

    if (v10 != 5)
    {
      break;
    }

    icu::UnicodeString::doAppend(a3, (this + 16), v7, (v11 - v7));
    v13 = *(this + 11);
    if (*(v13 + 16 * v8 + 12) > v8)
    {
      LODWORD(v8) = *(v13 + 16 * v8 + 12);
    }

    v7 = *(v13 + 16 * v8 + 4) + *(v13 + 16 * v8 + 8);
    icu::MessageImpl::appendReducedApostrophes((this + 16), v11, v7, a3, v12);
LABEL_10:
    v6 = *(this + 11);
    LODWORD(a2) = v8;
  }

  if (v10 != 1)
  {
    goto LABEL_10;
  }

  return icu::UnicodeString::doAppend(a3, (this + 16), v7, (v11 - v7));
}

void *icu::Normalizer2::normalizeUTF8(void *result, uint64_t a2, const char *a3, int32_t a4, icu::ByteSink *a5, uint64_t a6, int *a7)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    if (a6)
    {
      *a7 = 16;
    }

    else
    {
      v9 = result;
      memset(v18, 0, sizeof(v18));
      icu::UnicodeString::fromUTF8(a3, a4, v18);
      v14 = 0u;
      v17 = 0;
      v16 = 0u;
      v15 = 0u;
      v13 = &unk_1F0935D00;
      LOWORD(v14) = 2;
      (*(*v9 + 24))(v9, v18, &v13, a7);
      icu::UnicodeString::toUTF8(&v13, a5);
      icu::UnicodeString::~UnicodeString(v10, &v13);
      result = icu::UnicodeString::~UnicodeString(v11, v18);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL icu::Normalizer2::isNormalizedUTF8(uint64_t a1, const char *a2, int32_t a3, int *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    icu::UnicodeString::fromUTF8(a2, a3, v10);
    v4 = (*(*a1 + 88))(a1, v10, a4) != 0;
    icu::UnicodeString::~UnicodeString(v7, v10);
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1951F9778(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1951F97B4(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1951F97F0(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

void sub_1951F982C(icu::UObject *a1)
{
  icu::UObject::~UObject(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::Normalizer2Factory::getNoopInstance(icu::Normalizer2Factory *this, UErrorCode *a2)
{
  if (*this > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1EAEC97B0, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1EAEC97B0))
  {
    if (dword_1EAEC97B4 >= 1)
    {
      *this = dword_1EAEC97B4;
    }
  }

  else
  {
    sub_1951F98FC(this);
    dword_1EAEC97B4 = *this;
    icu::umtx_initImplPostInit(&dword_1EAEC97B0);
  }

  return qword_1EAEC97A8;
}

int *sub_1951F98FC(int *result)
{
  if (*result <= 0)
  {
    operator new();
  }

  return result;
}

uint64_t *sub_1951F9988(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  icu::UObject::~UObject((a1 + 8));
  icu::UObject::~UObject((a1 + 6));
  icu::UObject::~UObject((a1 + 4));
  icu::UObject::~UObject((a1 + 1));
  return a1;
}

uint64_t sub_1951F99FC(uint64_t a1, int *a2)
{
  if (*a2 < 1)
  {
    operator new();
  }

  if (a1)
  {
    (*(*a1 + 8))(a1);
  }

  return 0;
}

uint64_t sub_1951F9B04(int *a1)
{
  if (*a1 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_1951F9BB4(int *a1)
{
  if (*a1 > 0)
  {
    return 0;
  }

  if (atomic_load_explicit(&dword_1ED442200, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED442200))
  {
    if (dword_1ED442204 >= 1)
    {
      *a1 = dword_1ED442204;
    }
  }

  else
  {
    qword_1ED4421F8 = sub_1951F9B04(a1);
    sub_1952376A4(0x10u, sub_1951FB8F4);
    dword_1ED442204 = *a1;
    icu::umtx_initImplPostInit(&dword_1ED442200);
  }

  return qword_1ED4421F8;
}

uint64_t icu::Normalizer2::getNFCInstance(icu::Normalizer2 *this, UErrorCode *a2)
{
  v2 = sub_1951F9BB4(this);
  if (v2)
  {
    return v2 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::Normalizer2::getNFDInstance(icu::Normalizer2 *this, UErrorCode *a2)
{
  v2 = sub_1951F9BB4(this);
  if (v2)
  {
    return v2 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::Normalizer2Factory::getFCDInstance(icu::Normalizer2Factory *this, UErrorCode *a2)
{
  v2 = sub_1951F9BB4(this);
  if (v2)
  {
    return v2 + 48;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::Normalizer2Factory::getFCCInstance(icu::Normalizer2Factory *this, UErrorCode *a2)
{
  v2 = sub_1951F9BB4(this);
  if (v2)
  {
    return v2 + 64;
  }

  else
  {
    return 0;
  }
}

uint64_t icu::Normalizer2Factory::getNFCImpl(icu::Normalizer2Factory *this, UErrorCode *a2)
{
  result = sub_1951F9BB4(this);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t unorm2_getNFCInstance(int *a1)
{
  v1 = sub_1951F9BB4(a1);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t unorm2_getNFDInstance(int *a1)
{
  v1 = sub_1951F9BB4(a1);
  if (v1)
  {
    return v1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t unorm2_close(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t unorm2_normalize(char **a1, UChar *a2, int a3, UChar *a4, uint64_t a5, UErrorCode *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a6 > 0)
  {
    v6 = 0;
    goto LABEL_14;
  }

  v8 = a5;
  if (a2)
  {
    if (a3 < -1)
    {
      goto LABEL_13;
    }
  }

  else if (a3)
  {
    goto LABEL_13;
  }

  if (!a4)
  {
    if (!a5)
    {
      goto LABEL_11;
    }

LABEL_13:
    v6 = 0;
    *a6 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_14;
  }

  if ((a5 & 0x80000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if (a2 && a2 == a4)
  {
    goto LABEL_13;
  }

  memset(v27, 0, sizeof(v27));
  icu::UnicodeString::UnicodeString(v27, a4, 0, a5);
  if (a3)
  {
    {
      v17 = v16;
      v26 = 0uLL;
      v23[0] = v16[1];
      v23[1] = v27;
      v25 = 0uLL;
      v24 = 0uLL;
      *(&v25 + 5) = 0;
      if (icu::ReorderingBuffer::init(v23, a3, a6))
      {
        if (a3 < 0)
        {
          v18 = 0;
        }

        else
        {
          v18 = &a2[a3];
        }

        (*(*v17 + 18))(v17, a2, v18, v23, a6);
      }

      if (v24)
      {
        icu::UnicodeString::releaseBuffer(v23[1], (v25 - v24) >> 1);
      }
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      *v23 = 0u;
      v24 = 0u;
      v22 = a2;
      icu::UnicodeString::UnicodeString(v23, a3 >> 31, &v22);
      v20[1] = v22;
      (*(*a1 + 3))(a1, v23, v27, a6);
      icu::UnicodeString::~UnicodeString(v19, v23);
    }
  }

  v21 = a4;
  v6 = icu::UnicodeString::extract(v27, &v21, v8, a6);
  v20[0] = v21;
  icu::UnicodeString::~UnicodeString(v20, v27);
LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1951FA01C(char **a1, UChar *a2, uint64_t a3, uint64_t a4, UChar *a5, int a6, uint64_t a7, UErrorCode *a8)
{
  v41 = *MEMORY[0x1E69E9840];
  if (*a8 <= 0)
  {
    v13 = a4;
    if (a5)
    {
      if (a6 < -1)
      {
        goto LABEL_28;
      }
    }

    else if (a6)
    {
      goto LABEL_28;
    }

    if (a2)
    {
      if (a3 < -1 || (a4 & 0x80000000) != 0 || a2 == a5)
      {
        goto LABEL_28;
      }

LABEL_11:
      memset(v40, 0, 64);
      icu::UnicodeString::UnicodeString(v40, a2, a3, a4);
      if (SLOWORD(v40[2]) >= 0)
      {
        v16 = LOWORD(v40[2]) >> 5;
      }

      else
      {
        v16 = v40[3];
      }

      if (!a6)
      {
        goto LABEL_42;
      }

      if (a1)
      {
        v17 = **a1;
        if (v18)
        {
          v19 = v18;
          memset(v39 + 8, 0, 56);
          v38 = 0;
          *&v39[0] = &unk_1F0935D00;
          WORD4(v39[0]) = 2;
          v37 = 0;
          v32 = v18[1];
          v33 = v40;
          v35 = 0;
          v36 = 0uLL;
          v34 = 0;
          *(&v36 + 5) = 0;
          if (icu::ReorderingBuffer::init(&v32, a6 + v16 + 1, a8))
          {
            if (a6 < 0)
            {
              v20 = 0;
            }

            else
            {
              v20 = &a5[a6];
            }

            (*(*v19 + 152))(v19, a5, v20, a7, v39, &v32, a8);
          }

          if (v34)
          {
            icu::UnicodeString::releaseBuffer(v33, (v36 - v34) >> 1);
          }

          v21 = *a8;
          if (v21 <= 0)
          {
            LODWORD(v21) = LOWORD(v40[2]) >> 5;
            if (SLOWORD(v40[2]) >= 0)
            {
              v21 = v21;
            }

            else
            {
              v21 = v40[3];
            }

            if (!a2 || v21 <= v13)
            {
              goto LABEL_41;
            }
          }

          else if (!a2)
          {
LABEL_41:
            icu::UnicodeString::~UnicodeString(v21, v39);
LABEL_42:
            v30 = a2;
            v8 = icu::UnicodeString::extract(v40, &v30, v13, a8);
            v28[0] = v30;
            icu::UnicodeString::~UnicodeString(v28, v40);
            goto LABEL_43;
          }

          v23 = &a2[v16];
          v24 = WORD4(v39[0]) >> 5;
          if (SWORD4(v39[0]) < 0)
          {
            v24 = HIDWORD(v39[0]);
          }

          v25 = &v23[-v24];
          icu::UnicodeString::doExtract(v39, 0, 0x7FFFFFFF, v25, 0);
          v29 = v25;
          v21 = &v29;
          if (v16 < v13)
          {
            *v23 = 0;
          }

          goto LABEL_41;
        }
      }

      memset(v39, 0, sizeof(v39));
      v31 = a5;
      icu::UnicodeString::UnicodeString(v39, a6 >> 31, &v31);
      v28[1] = v31;
      v22 = *a1;
      if (a7)
      {
        (*(v22 + 5))(a1, v40, v39, a8);
      }

      else
      {
        (*(v22 + 6))(a1, v40, v39, a8);
      }

      goto LABEL_41;
    }

    if (!(a4 | a3))
    {
      goto LABEL_11;
    }

LABEL_28:
    v8 = 0;
    *a8 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_43;
  }

  v8 = 0;
LABEL_43:
  v26 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t unorm2_getDecomposition(uint64_t a1, uint64_t a2, UChar *a3, uint64_t a4, int *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = a4;
  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_5;
    }

LABEL_8:
    v5 = 0;
    *a5 = 1;
    goto LABEL_11;
  }

  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  memset(v16, 0, sizeof(v16));
  icu::UnicodeString::UnicodeString(v16, a3, 0, a4);
  if ((*(*a1 + 56))(a1, a2, v16))
  {
    v15 = a3;
    v5 = icu::UnicodeString::extract(v16, &v15, v7, a5);
    v14 = v15;
    v11 = &v14;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  icu::UnicodeString::~UnicodeString(v11, v16);
LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t unorm2_getRawDecomposition(uint64_t a1, uint64_t a2, UChar *a3, uint64_t a4, int *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*a5 > 0)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = a4;
  if (!a3)
  {
    if (!a4)
    {
      goto LABEL_5;
    }

LABEL_8:
    v5 = 0;
    *a5 = 1;
    goto LABEL_11;
  }

  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  memset(v16, 0, sizeof(v16));
  icu::UnicodeString::UnicodeString(v16, a3, 0, a4);
  if ((*(*a1 + 64))(a1, a2, v16))
  {
    v15 = a3;
    v5 = icu::UnicodeString::extract(v16, &v15, v7, a5);
    v14 = v15;
    v11 = &v14;
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  icu::UnicodeString::~UnicodeString(v11, v16);
LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t unorm2_isNormalized(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (a2)
    {
      v6 = 1;
    }

    else
    {
      v6 = a3 == 0;
    }

    v7 = !v6;
    if (a3 < -1 || v7)
    {
      v5 = 0;
      *a4 = 1;
    }

    else
    {
      memset(v12, 0, sizeof(v12));
      v11 = a2;
      icu::UnicodeString::UnicodeString(v12, a3 >> 31, &v11);
      v5 = (*(*a1 + 88))(a1, v12, a4);
      icu::UnicodeString::~UnicodeString(v12);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t unorm2_quickCheck(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (a2)
    {
      v6 = 1;
    }

    else
    {
      v6 = a3 == 0;
    }

    v7 = !v6;
    if (a3 < -1 || v7)
    {
      v5 = 0;
      *a4 = 1;
    }

    else
    {
      memset(v12, 0, sizeof(v12));
      v11 = a2;
      icu::UnicodeString::UnicodeString(v12, a3 >> 31, &v11);
      v5 = (*(*a1 + 104))(a1, v12, a4);
      icu::UnicodeString::~UnicodeString(v12);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t unorm2_spanQuickCheckYes(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    if (a2)
    {
      v6 = 1;
    }

    else
    {
      v6 = a3 == 0;
    }

    v7 = !v6;
    if (a3 < -1 || v7)
    {
      v5 = 0;
      *a4 = 1;
    }

    else
    {
      memset(v12, 0, sizeof(v12));
      v11 = a2;
      icu::UnicodeString::UnicodeString(v12, a3 >> 31, &v11);
      v5 = (*(*a1 + 112))(a1, v12, a4);
      icu::UnicodeString::~UnicodeString(v12);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

uint8_t u_getCombiningClass(UChar32 c)
{
  v5 = 0;
  v1 = sub_1951F9BB4(&v5);
  if (v5 > 0)
  {
    return 0;
  }

  if (v1)
  {
    v3 = v1 + 32;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(*v3 + 80);

  return v4();
}

uint64_t sub_1951FAA98(unsigned int a1)
{
  v4 = 0;
  v2 = sub_1951F9BB4(&v4);
  if (v2)
  {
    v2 = *v2;
  }

  if (v4 > 0)
  {
    return 0;
  }

  return sub_1951FAB08(v2, a1);
}

uint64_t sub_1951FAB08(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) > a2)
  {
    return 0;
  }

  if (!HIWORD(a2) && (*(*(a1 + 56) + (a2 >> 8)) ? (v3 = ((1 << (a2 >> 5)) & *(*(a1 + 56) + (a2 >> 8))) == 0) : (v3 = 1), v3))
  {
    return 0;
  }

  else
  {
    return icu::Normalizer2Impl::getFCD16FromNormData(a1, a2);
  }
}

icu::UnicodeString *sub_1951FAB54(void *a1, uint64_t a2, icu::UnicodeString *this, UErrorCode *a4)
{
  if (*a4 >= 1)
  {
    goto LABEL_4;
  }

  v7 = *(a2 + 8);
  if ((v7 & 0x11) != 0 || ((v7 & 2) != 0 ? (v9 = a2 + 10) : (v9 = *(a2 + 24)), this == a2 || !v9))
  {
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_4:
    icu::UnicodeString::setToBogus(this);
    return this;
  }

  if (*(this + 4))
  {
    v11 = 2;
  }

  else
  {
    v11 = *(this + 4) & 0x1E;
  }

  *(this + 4) = v11;
  v22 = 0u;
  v23 = 0u;
  v19 = a1[1];
  v20 = this;
  v21 = 0u;
  *(&v22 + 5) = 0;
  v12 = *(a2 + 8);
  v13 = v12;
  v14 = v12 >> 5;
  if (v13 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(a2 + 12);
  }

  if (icu::ReorderingBuffer::init(&v19, v15, a4))
  {
    v16 = *(a2 + 8);
    v17 = v16;
    v18 = v16 >> 5;
    if (v17 < 0)
    {
      v18 = *(a2 + 12);
    }

    (*(*a1 + 144))(a1, v9, v9 + 2 * v18, &v19, a4);
  }

  if (v21)
  {
    icu::UnicodeString::releaseBuffer(v20, (v22 - v21) >> 1);
  }

  return this;
}

uint64_t sub_1951FACC4(uint64_t a1, signed int a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v12 = 0;
  result = icu::Normalizer2Impl::getDecomposition(*(a1 + 8), a2, v13, &v12);
  if (result)
  {
    if (result == v13)
    {
      v5 = v12;
      icu::UnicodeString::unBogus(a3);
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

      icu::UnicodeString::doReplace(a3, 0, v9, v13, 0, v5);
    }

    else
    {
      v11 = result;
      icu::UnicodeString::setTo(a3, 0, &v11, v12);
    }

    result = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int16 *sub_1951FADA8(uint64_t a1, signed int a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v13, 0, 60);
  v12 = 0;
  result = icu::Normalizer2Impl::getRawDecomposition(*(a1 + 8), a2, v13, &v12);
  if (result)
  {
    if (result == v13)
    {
      v5 = v12;
      icu::UnicodeString::unBogus(a3);
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

      icu::UnicodeString::doReplace(a3, 0, v9, v13, 0, v5);
    }

    else
    {
      v11 = result;
      icu::UnicodeString::setTo(a3, 0, &v11, v12);
    }

    result = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1951FAEA0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = sub_1951FBB98(v2, a2);
  if (v3 >> 10 >= 0x3F)
  {
    return (v3 >> 1);
  }

  if (*(v2 + 18) <= v3 && *(v2 + 26) > v3)
  {
    v5 = (*(v2 + 48) + (v3 & 0xFFFE));
    if ((*v5 & 0x80) != 0)
    {
      return *(v5 - 2);
    }
  }

  return 0;
}

BOOL sub_1951FAF14(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if ((v4 & 0x11) != 0)
  {
    goto LABEL_4;
  }

  if ((v4 & 2) != 0)
  {
    v5 = a2 + 10;
  }

  else
  {
    v5 = *(a2 + 24);
    if (!v5)
    {
LABEL_4:
      result = 0;
      *a3 = 1;
      return result;
    }
  }

  v6 = v4;
  v7 = v4 >> 5;
  if (v6 < 0)
  {
    v7 = *(a2 + 12);
  }

  return v5 + 2 * v7 == (*(*a1 + 160))(a1, v5, v5 + 2 * v7, a3);
}

unint64_t sub_1951FAFEC(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  if ((v4 & 0x11) != 0)
  {
    goto LABEL_4;
  }

  if ((v4 & 2) != 0)
  {
    v5 = a2 + 10;
  }

  else
  {
    v5 = *(a2 + 24);
    if (!v5)
    {
LABEL_4:
      result = 0;
      *a3 = 1;
      return result;
    }
  }

  v6 = v4;
  v7 = v4 >> 5;
  if (v6 < 0)
  {
    v7 = *(a2 + 12);
  }

  return ((*(*a1 + 160))(a1, v5, v5 + 2 * v7, a3) - v5) >> 1;
}

uint64_t sub_1951FB0A8(uint64_t result, icu::ByteSink *a2, icu::ByteSinkUtil *a3, int a4, icu::ByteSink *a5, icu::Edits *a6, UErrorCode *a7)
{
  if (*a7 <= 0)
  {
    v14 = result;
    if ((a2 & 0x2000) == 0 && a6)
    {
      icu::Edits::reset(a6);
    }

    icu::Normalizer2Impl::decomposeUTF8(*(v14 + 8), a2, a3, a3 + a4, a5, a6, a7);
    v15 = *(*a5 + 32);

    return v15(a5);
  }

  return result;
}

BOOL sub_1951FB208(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = sub_1951FBB98(v2, a2);
  return *(v2 + 14) > v3 || *(v2 + 34) <= v3;
}

uint64_t sub_1951FB250(uint64_t result, icu::ByteSink *a2, icu::ByteSinkUtil *a3, int a4, icu::ByteSink *a5, icu::Edits *a6, UErrorCode *a7)
{
  if (*a7 <= 0)
  {
    v14 = result;
    if ((a2 & 0x2000) == 0 && a6)
    {
      icu::Edits::reset(a6);
    }

    icu::Normalizer2Impl::composeUTF8(*(v14 + 8), a2, *(v14 + 16), a3, a3 + a4, a5, a6, a7);
    v15 = *(*a5 + 32);

    return v15(a5);
  }

  return result;
}

uint64_t sub_1951FB318(uint64_t a1, uint64_t a2, UErrorCode *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a3 > 0)
  {
    v3 = 0;
    goto LABEL_17;
  }

  v6 = *(a2 + 8);
  if ((v6 & 0x11) != 0)
  {
LABEL_4:
    v3 = 0;
    *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    goto LABEL_17;
  }

  if ((v6 & 2) != 0)
  {
    v8 = (a2 + 10);
  }

  else
  {
    v8 = *(a2 + 24);
    if (!v8)
    {
      goto LABEL_4;
    }
  }

  v21 = 0u;
  v22 = 0u;
  v24 = 0;
  v23 = 0u;
  v20 = &unk_1F0935D00;
  LOWORD(v21) = 2;
  v19 = 0u;
  v15 = *(a1 + 8);
  v16 = &v20;
  v18 = 0u;
  v17 = 0u;
  *(&v18 + 5) = 0;
  if (icu::ReorderingBuffer::init(&v15, 5, a3))
  {
    v9 = *(a2 + 8);
    v10 = v9;
    v11 = v9 >> 5;
    if (v10 < 0)
    {
      v11 = *(a2 + 12);
    }

    v3 = icu::Normalizer2Impl::compose(*(a1 + 8), v8, &v8[v11], *(a1 + 16), 0, &v15, a3);
  }

  else
  {
    v3 = 0;
  }

  v12 = v17;
  if (v17)
  {
    icu::UnicodeString::releaseBuffer(v16, (v18 - v17) >> 1);
  }

  icu::UnicodeString::~UnicodeString(v12, &v20);
LABEL_17:
  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1951FB494(uint64_t a1, icu::ByteSinkUtil *a2, int a3, UErrorCode *a4)
{
  if (*a4 <= 0)
  {
    return icu::Normalizer2Impl::composeUTF8(*(a1 + 8), 0, *(a1 + 16), a2, a2 + a3, 0, 0, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1951FB4D4(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return 2;
  }

  v5 = *(a2 + 8);
  if ((v5 & 0x11) != 0)
  {
LABEL_3:
    *a3 = 1;
    return 2;
  }

  if ((v5 & 2) != 0)
  {
    v7 = (a2 + 10);
  }

  else
  {
    v7 = *(a2 + 24);
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  v11 = v3;
  v12 = v4;
  v8 = v5;
  v10 = 1;
  v9 = v5 >> 5;
  if (v8 < 0)
  {
    v9 = *(a2 + 12);
  }

  icu::Normalizer2Impl::composeQuickCheck(*(a1 + 8), v7, &v7[v9], *(a1 + 16), &v10);
  return v10;
}

uint64_t sub_1951FB5E4(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  v3 = sub_1951FBB98(v2, a2);
  if (v3 > 0xFE01 || *(v2 + 18) > v3)
  {
    return 1;
  }

  else
  {
    return 2 * (*(v2 + 30) <= v3);
  }
}

UChar **sub_1951FB68C(uint64_t a1, UChar **a2, UChar **a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a3 == a2)
    {
      *a4 = 1;
    }

    else
    {
      icu::UnicodeString::operator=(a3, a2);
    }
  }

  return a3;
}

void sub_1951FB6D8(int a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, icu::Edits *this, int *a7)
{
  if (*a7 <= 0)
  {
    if (this)
    {
      if ((a2 & 0x2000) == 0)
      {
        icu::Edits::reset(this);
      }

      icu::Edits::addUnchanged(this, a4);
    }

    if ((a2 & 0x4000) == 0)
    {
      (*(*a5 + 16))(a5, a3, a4);
    }

    v13 = *(*a5 + 32);

    v13(a5);
  }
}

icu::UnicodeString *sub_1951FB7B8(int a1, icu::UnicodeString *this, icu::UnicodeString *a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (this == a3)
    {
      *a4 = 1;
    }

    else
    {
      v5 = *(a3 + 4);
      v6 = v5;
      v7 = v5 >> 5;
      if (v6 >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = *(a3 + 3);
      }

      icu::UnicodeString::doAppend(this, a3, 0, v8);
    }
  }

  return this;
}

icu::UnicodeString *sub_1951FB824(int a1, icu::UnicodeString *this, icu::UnicodeString *a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (this == a3)
    {
      *a4 = 1;
    }

    else
    {
      v5 = *(a3 + 4);
      v6 = v5;
      v7 = v5 >> 5;
      if (v6 >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = *(a3 + 3);
      }

      icu::UnicodeString::doAppend(this, a3, 0, v8);
    }
  }

  return this;
}

uint64_t sub_1951FB8C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2;
  v4 = v2 >> 5;
  if (v3 >= 0)
  {
    return v4;
  }

  else
  {
    return *(a2 + 12);
  }
}

uint64_t sub_1951FB8F4()
{
  if (qword_1EAEC97A8)
  {
    (*(*qword_1EAEC97A8 + 8))(qword_1EAEC97A8);
  }

  qword_1EAEC97A8 = 0;
  atomic_store(0, &dword_1EAEC97B0);
  if (qword_1ED4421F8)
  {
    v0 = sub_1951F9988(qword_1ED4421F8);
    MEMORY[0x19A8B2600](v0, 0x10E0C40F96D9B5DLL);
  }

  qword_1ED4421F8 = 0;
  atomic_store(0, &dword_1ED442200);
  return 1;
}

uint64_t sub_1951FB988(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, UErrorCode *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v7 = *(a2 + 8);
    if ((v7 & 1) != 0 || (v9 = *(a3 + 8), (v9 & 0x11) != 0) || ((v9 & 2) != 0 ? (v12 = a3 + 10) : (v12 = *(a3 + 24)), a2 == a3 || !v12))
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      v15 = *(a2 + 12);
      v16 = v9;
      v32 = 0u;
      v33 = 0u;
      v17 = v7;
      v35 = 0;
      v18 = v7 >> 5;
      if (v17 >= 0)
      {
        v19 = v18;
      }

      else
      {
        v19 = v15;
      }

      v34 = 0uLL;
      v31 = &unk_1F0935D00;
      LOWORD(v32) = 2;
      v30 = 0uLL;
      v26 = a1[1];
      v27 = a2;
      v29 = 0uLL;
      v28 = 0uLL;
      v20 = v9 >> 5;
      if (v16 < 0)
      {
        v20 = *(a3 + 12);
      }

      *(&v29 + 5) = 0;
      if (icu::ReorderingBuffer::init(&v26, v20 + v19, a5))
      {
        v21 = *(a3 + 8);
        v22 = v21;
        v23 = v21 >> 5;
        if (v22 < 0)
        {
          v23 = *(a3 + 12);
        }

        (*(*a1 + 152))(a1, v12, v12 + 2 * v23, a4, &v31, &v26, a5);
      }

      if (v28)
      {
        icu::UnicodeString::releaseBuffer(v27, (v29 - v28) >> 1);
      }

      v24 = *a5;
      if (v24 >= 1)
      {
        if ((v32 & 0x8000u) == 0)
        {
          v25 = v32 >> 5;
        }

        else
        {
          v25 = DWORD1(v32);
        }

        icu::UnicodeString::doReplace(a2, v19 - v25, 0x7FFFFFFFLL, &v31, 0, v25);
      }

      icu::UnicodeString::~UnicodeString(v24, &v31);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t sub_1951FBB98(uint64_t a1, unsigned int a2)
{
  if (a2 >> 10 == 54)
  {
    return 1;
  }

  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  if (HIWORD(a2))
  {
    if (HIWORD(a2) > 0x10u)
    {
      v5 = *(v3 + 20) - 1;
    }

    else if (*(v3 + 24) <= a2)
    {
      v5 = *(v3 + 20) - 2;
    }

    else
    {
      v5 = ucptrie_internalSmallIndex(v3, a2);
    }
  }

  else
  {
    v5 = (a2 & 0x3F) + *(*v3 + 2 * (a2 >> 6));
  }

  return *(v4 + 2 * v5);
}

BOOL sub_1951FBC28(uint64_t a1, unsigned int a2)
{
  v3 = sub_1951FBB98(a1, a2);
  result = 1;
  if (v3 != 65024 && *(a1 + 14) <= v3)
  {
    return v3 < 0xFC01 && *(a1 + 34) <= v3;
  }

  return result;
}

BOOL sub_1951FBC80(unsigned __int16 *a1, signed int a2)
{
  if (a1[5] > a2)
  {
    return 1;
  }

  v4 = sub_1951FBB98(a1, a2);
  if (a1[11] > v4)
  {
    return 1;
  }

  if (a1[13] <= v4)
  {
    return a1[15] > v4;
  }

  return 0;
}

BOOL sub_1951FBCF0(uint64_t a1, unsigned int a2, int a3)
{
  v5 = sub_1951FBB98(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = 1;
  if (a3 && v5 != 1)
  {
    if (*(a1 + 26) > v5 || *(a1 + 30) <= v5)
    {
      v7 = *(*(a1 + 48) + (v5 & 0xFFFE)) >= 0x200u;
    }

    else
    {
      v7 = (v5 & 6) >= 3;
    }

    return !v7;
  }

  return v6;
}

BOOL sub_1951FBD70(uint64_t a1, unsigned int a2, int a3)
{
  v5 = sub_1951FBB98(a1, a2);
  if (*(a1 + 18) <= v5 || (v5 & 1) == 0)
  {
    return 0;
  }

  v7 = 1;
  if (a3 && v5 != 1)
  {
    return *(*(a1 + 48) + (v5 & 0xFFFE)) < 0x200u;
  }

  return v7;
}

icu::ReorderingBuffer *icu::ReorderingBuffer::ReorderingBuffer(icu::ReorderingBuffer *this, const icu::Normalizer2Impl *a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  *this = a2;
  *(this + 1) = a3;
  Buffer = icu::UnicodeString::getBuffer(a3, 8);
  *(this + 2) = Buffer;
  *(this + 3) = Buffer;
  *(this + 4) = Buffer;
  v7 = *(this + 1);
  if ((*(v7 + 8) & 2) != 0)
  {
    v8 = 27;
  }

  else
  {
    v8 = *(v7 + 16);
  }

  *(this + 10) = v8;
  *(this + 44) = 0;
  if (!Buffer && *a4 <= 0)
  {
    *a4 = U_MEMORY_ALLOCATION_ERROR;
  }

  return this;
}

uint64_t icu::ReorderingBuffer::init(icu::ReorderingBuffer *this, int a2, UErrorCode *a3)
{
  v5 = *(this + 1);
  if (*(v5 + 8) < 0)
  {
    v6 = *(v5 + 12);
  }

  else
  {
    v6 = *(v5 + 8) >> 5;
  }

  result = icu::UnicodeString::getBuffer(v5, a2);
  *(this + 2) = result;
  if (result)
  {
    v8 = result + 2 * v6;
    *(this + 4) = v8;
    v9 = *(this + 1);
    if ((*(v9 + 8) & 2) != 0)
    {
      v10 = 27;
    }

    else
    {
      v10 = *(v9 + 16);
    }

    *(this + 10) = v10 - v6;
    *(this + 3) = result;
    if (v6)
    {
      *(this + 6) = v8;
      v11 = icu::ReorderingBuffer::previousCC(this);
      *(this + 44) = v11;
      if (v11 >= 2)
      {
          ;
        }
      }

      *(this + 3) = *(this + 7);
    }

    else
    {
      *(this + 44) = 0;
    }

    return 1;
  }

  else
  {
    *a3 = U_MEMORY_ALLOCATION_ERROR;
  }

  return result;
}

uint64_t icu::ReorderingBuffer::previousCC(icu::ReorderingBuffer *this)
{
  v1 = *(this + 6);
  *(this + 7) = v1;
  if (*(this + 3) >= v1)
  {
    goto LABEL_7;
  }

  v2 = *(v1 - 2);
  *(this + 6) = v1 - 2;
  if ((v2 & 0xFC00) == 0xDC00 && *(this + 2) < v1 - 2)
  {
    v5 = *(v1 - 4);
    v3 = v1 - 4;
    v4 = v5;
    if ((v5 & 0xFC00) == 0xD800)
    {
      *(this + 6) = v3;
      v2 = v2 + (v4 << 10) - 56613888;
    }
  }

  v6 = *this;
  if (v2 >= *(v6 + 10))
  {
    v8 = sub_1951FBB98(v6, v2);
    v7 = v8 >> 1;
    if (v8 >> 10 <= 0x3E)
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
LABEL_7:
    LOBYTE(v7) = 0;
  }

  return v7;
}

BOOL icu::ReorderingBuffer::equals(uint64_t a1, const UChar *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v6 = (v4 - v5) >> 1;
  return v6 == ((a3 - a2) >> 1) && u_memcmp(v5, a2, v6) == 0;
}

BOOL icu::ReorderingBuffer::equals(icu::ReorderingBuffer *this, const unsigned __int8 *a2, const unsigned __int8 *a3)
{
  v3 = *(this + 2);
  v4 = (*(this + 4) - v3) >> 1;
  v5 = a3 - a2;
  if (a3 - a2 < v4 || (a3 - a2) / 3 > v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  while (v7 < v4)
  {
    if (v8 < v5)
    {
      v9 = v7 + 1;
      v10 = *(v3 + 2 * v7);
      if ((v10 & 0xFC00) == 0xD800)
      {
        v7 += 2;
        v10 = *(v3 + 2 * v9) + (v10 << 10) - 56613888;
      }

      else
      {
        ++v7;
      }

      v11 = v8 + 1;
      v12 = &a2[v8];
      v13 = *v12;
      if (*v12 < 0)
      {
        if (v13 > 0xDF)
        {
          if (v13 > 0xEF)
          {
            v13 = ((v13 & 7) << 18) | ((a2[v11] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
            v8 += 4;
          }

          else
          {
            v13 = ((v13 & 0xF) << 12) | ((a2[v11] & 0x3F) << 6) | v12[2] & 0x3F;
            v8 += 3;
          }
        }

        else
        {
          v8 += 2;
          v13 = a2[v11] & 0x3F | ((v13 & 0x1F) << 6);
        }
      }

      else
      {
        ++v8;
      }

      if (v10 == v13)
      {
        continue;
      }
    }

    return 0;
  }

  return v8 >= v5;
}

uint64_t icu::ReorderingBuffer::appendSupplementary(icu::ReorderingBuffer *this, unsigned int a2, unsigned int a3, UErrorCode *a4)
{
  if (*(this + 10) > 1 || (result = icu::ReorderingBuffer::resize(this, 2, a4), result))
  {
    if (a3 && *(this + 44) > a3)
    {
      icu::ReorderingBuffer::insert(this, a2, a3);
    }

    else
    {
      v8 = *(this + 4);
      *v8 = (a2 >> 10) - 10304;
      v8[1] = a2 & 0x3FF | 0xDC00;
      *(this + 4) = v8 + 2;
      *(this + 44) = a3;
      if (a3 <= 1)
      {
        *(this + 3) = v8 + 2;
      }
    }

    *(this + 10) -= 2;
    return 1;
  }

  return result;
}

uint64_t icu::ReorderingBuffer::resize(icu::ReorderingBuffer *this, int a2, UErrorCode *a3)
{
  v6 = *(this + 3);
  v7 = *(this + 2);
  v8 = (*(this + 4) - v7) >> 1;
  icu::UnicodeString::releaseBuffer(*(this + 1), v8);
  v19 = 0;
  if (uprv_add32_overflow(v8, a2, &v19))
  {
    result = 0;
    v10 = U_BUFFER_OVERFLOW_ERROR;
LABEL_3:
    *a3 = v10;
    return result;
  }

  v18 = 0;
  v11 = *(this + 1);
  if ((*(v11 + 8) & 2) != 0)
  {
    v12 = 27;
  }

  else
  {
    v12 = *(v11 + 16);
  }

  if (uprv_mul32_overflow(v12, 2, &v18))
  {
    v13 = 0x7FFFFFFF;
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v18;
  }

  v14 = v19;
  v15 = v19 < v13;
  if (v19 > v13)
  {
    v13 = v19;
  }

  if (v15 || v13 <= 255)
  {
    if (v13 <= 256)
    {
      v14 = 256;
    }

    else
    {
      v14 = v13;
    }

    v19 = v14;
  }

  result = icu::UnicodeString::getBuffer(*(this + 1), v14);
  *(this + 2) = result;
  if (!result)
  {
    v10 = U_MEMORY_ALLOCATION_ERROR;
    goto LABEL_3;
  }

  *(this + 3) = result + 2 * ((v6 - v7) >> 1);
  *(this + 4) = result + 2 * v8;
  v16 = *(this + 1);
  if ((*(v16 + 8) & 2) != 0)
  {
    v17 = 27;
  }

  else
  {
    v17 = *(v16 + 16);
  }

  *(this + 10) = v17 - v8;
  return 1;
}

uint64_t icu::ReorderingBuffer::insert(icu::ReorderingBuffer *this, int a2, unsigned int a3)
{
  v6 = *(this + 4);
  v7 = *(v6 - 2);
  *(this + 6) = v6 - 2;
  *(this + 7) = v6;
  if ((v7 & 0xFC00) == 0xDC00 && *(this + 2) < (v6 - 2))
  {
    v9 = *(v6 - 4);
    v8 = v6 - 4;
    if ((v9 & 0xFC00) == 0xD800)
    {
      *(this + 6) = v8;
    }
  }

  do
  {
    result = icu::ReorderingBuffer::previousCC(this);
  }

  while (result > a3);
  v11 = *(this + 4);
  v12 = 2;
  if (a2 < 0x10000)
  {
    v12 = 1;
  }

  v13 = &v11[v12];
  *(this + 4) = v13;
  v14 = *(this + 7);
  do
  {
    v15 = *--v11;
    *--v13 = v15;
  }

  while (v11 != v14);
  if (a2 >= 0x10000)
  {
    v16 = a2 & 0x3FF | 0xDC00;
    a2 = (a2 >> 10) - 10304;
    v11[1] = v16;
  }

  *v11 = a2;
  if (a3 <= 1)
  {
    *(this + 3) = v13;
  }

  return result;
}

uint64_t icu::ReorderingBuffer::append(icu::ReorderingBuffer *this, unsigned __int16 *a2, int a3, int a4, unsigned int a5, unsigned int a6, UErrorCode *a7)
{
  if (!a3)
  {
    return 1;
  }

  v14 = *(this + 10);
  if (v14 < a3)
  {
    result = icu::ReorderingBuffer::resize(this, a3, a7);
    if (!result)
    {
      return result;
    }

    v14 = *(this + 10);
  }

  *(this + 10) = v14 - a3;
  if (a5 && *(this + 44) > a5)
  {
    v16 = *a2;
    v17 = 1;
    if (a3 != 1 && (v16 & 0xFC00) == 0xD800)
    {
      v18 = a2[1];
      v19 = (v18 & 0xFC00) == 56320;
      v20 = v18 + (v16 << 10) - 56613888;
      v17 = v19 ? 2 : 1;
      if (v19)
      {
        v16 = v20;
      }
    }

    icu::ReorderingBuffer::insert(this, v16, a5);
    if (v17 < a3)
    {
      while (1)
      {
        v21 = v17 + 1;
        v22 = a2[v17];
        if ((v22 & 0xFC00) != 0xD800 || v21 == a3)
        {
          ++v17;
        }

        else
        {
          v24 = a2[v21];
          v25 = (v24 & 0xFC00) == 56320;
          v26 = (v22 << 10) - 56613888 + v24;
          if (v25)
          {
            v17 += 2;
          }

          else
          {
            ++v17;
          }

          if (v25)
          {
            v22 = v26;
          }
        }

        if (v17 >= a3)
        {
          break;
        }

        v27 = *this;
        if (a4)
        {
          v28 = sub_1951FC680(*this, v22);
          LODWORD(v29) = v28 >> 1;
          if (v28 >> 10 <= 0x3E)
          {
            LOBYTE(v29) = 0;
          }
        }

        else
        {
          v30 = sub_1951FBB98(*this, v22);
          if (v30 >> 10 < 0x3F)
          {
            if (*(v27 + 18) <= v30 && *(v27 + 26) > v30 && (v29 = (*(v27 + 48) + (v30 & 0xFFFE)), (*v29 & 0x80) != 0))
            {
              LOBYTE(v29) = *(v29 - 2);
            }

            else
            {
              LOBYTE(v29) = 0;
            }
          }

          else
          {
            LODWORD(v29) = v30 >> 1;
          }
        }

        sub_1951FC6F8(this, v22, v29, a7);
      }

      sub_1951FC6F8(this, v22, a6, a7);
    }

    return 1;
  }

  if (a6 > 1)
  {
    v31 = *(this + 4);
    if (a5 > 1)
    {
      goto LABEL_46;
    }

    v32 = v31 + 1;
  }

  else
  {
    v31 = *(this + 4);
    v32 = &v31[a3];
  }

  *(this + 3) = v32;
LABEL_46:
  v33 = 2 * a3;
  do
  {
    v34 = *a2++;
    *v31++ = v34;
    v33 -= 2;
  }

  while (v33);
  *(this + 4) = v31;
  *(this + 44) = a6;
  return 1;
}

uint64_t sub_1951FC680(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 8);
  if (HIWORD(a2))
  {
    if (HIWORD(a2) > 0x10u)
    {
      v4 = *(v2 + 20) - 1;
    }

    else if (*(v2 + 24) <= a2)
    {
      v4 = *(v2 + 20) - 2;
    }

    else
    {
      v4 = ucptrie_internalSmallIndex(v2, a2);
    }
  }

  else
  {
    v4 = (a2 & 0x3F) + *(*v2 + 2 * (a2 >> 6));
  }

  return *(v3 + 2 * v4);
}

uint64_t sub_1951FC6F8(icu::ReorderingBuffer *a1, signed int a2, unsigned int a3, UErrorCode *a4)
{
  if (a2 >= 0x10000)
  {
    return icu::ReorderingBuffer::appendSupplementary(a1, a2, a3, a4);
  }

  else
  {
    return sub_1951FFDD0(a1, a2, a3, a4);
  }
}

uint64_t icu::ReorderingBuffer::appendZeroCC(icu::ReorderingBuffer *this, unsigned int a2, UErrorCode *a3)
{
  if (a2 < 0x10000)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = *(this + 10);
  if (v6 < v5)
  {
    result = icu::ReorderingBuffer::resize(this, v5, a3);
    if (!result)
    {
      return result;
    }

    v6 = *(this + 10);
  }

  *(this + 10) = v6 - v5;
  if (HIWORD(a2))
  {
    v10 = *(this + 4);
    *v10 = (a2 >> 10) - 10304;
    v10[1] = a2 & 0x3FF | 0xDC00;
    v9 = v10 + 2;
  }

  else
  {
    v8 = *(this + 4);
    *v8 = a2;
    v9 = v8 + 1;
  }

  *(this + 3) = v9;
  *(this + 4) = v9;
  *(this + 44) = 0;
  return 1;
}

uint64_t icu::ReorderingBuffer::appendZeroCC(UChar **this, UChar *src, UChar *a3, UErrorCode *a4)
{
  if (src == a3)
  {
    return 1;
  }

  v6 = (a3 - src) >> 1;
  if (*(this + 10) >= v6 || (result = icu::ReorderingBuffer::resize(this, (a3 - src) >> 1, a4), result))
  {
    u_memcpy(this[4], src, v6);
    v8 = &this[4][v6];
    *(this + 10) -= v6;
    *(this + 44) = 0;
    this[3] = v8;
    this[4] = v8;
    return 1;
  }

  return result;
}

uint64_t icu::ReorderingBuffer::remove(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(this + 16);
  *(this + 24) = v2;
  *(this + 32) = v2;
  if ((*(v1 + 8) & 2) != 0)
  {
    v3 = 27;
  }

  else
  {
    v3 = *(v1 + 16);
  }

  *(this + 40) = v3;
  *(this + 44) = 0;
  return this;
}

uint64_t icu::ReorderingBuffer::removeSuffix(uint64_t this, int a2)
{
  v2 = *(this + 32);
  v3 = *(this + 16);
  if (a2 >= (v2 - v3) >> 1)
  {
    *(this + 32) = v3;
    v5 = *(this + 8);
    if ((*(v5 + 8) & 2) != 0)
    {
      v4 = 27;
    }

    else
    {
      v4 = *(v5 + 16);
    }
  }

  else
  {
    v3 = v2 - 2 * a2;
    *(this + 32) = v3;
    v4 = *(this + 40) + a2;
  }

  *(this + 40) = v4;
  *(this + 44) = 0;
  *(this + 24) = v3;
  return this;
}

void *icu::ReorderingBuffer::skipPrevious(void *this)
{
  v1 = this[6];
  v2 = *(v1 - 2);
  this[6] = v1 - 2;
  this[7] = v1;
  if ((v2 & 0xFC00) == 0xDC00 && this[2] < (v1 - 2))
  {
    v4 = *(v1 - 4);
    v3 = v1 - 4;
    if ((v4 & 0xFC00) == 0xD800)
    {
      this[6] = v3;
    }
  }

  return this;
}

void icu::Normalizer2Impl::~Normalizer2Impl(icu::Normalizer2Impl *this)
{
  *this = &unk_1F0932BF0;
  v2 = *(this + 9);
  if (v2)
  {
    v3 = sub_1952021F8(v2);
    MEMORY[0x19A8B2600](v3, 0x10A0C40E5FED299);
  }

  icu::UObject::~UObject(this);
}

{
  icu::Normalizer2Impl::~Normalizer2Impl(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::Normalizer2Impl::init(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 36);
  *(result + 8) = *(a2 + 32);
  *(result + 10) = v5;
  *(result + 12) = *(a2 + 72);
  v6 = *(a2 + 44);
  *(result + 14) = *(a2 + 40);
  v7 = *(a2 + 60);
  *(result + 16) = *(a2 + 56);
  *(result + 18) = v6;
  *(result + 20) = v7;
  v8 = *(a2 + 68);
  *(result + 22) = *(a2 + 64);
  *(result + 24) = v8;
  v9 = *(a2 + 52);
  *(result + 26) = *(a2 + 48);
  v10 = *(a2 + 80);
  *(result + 30) = v10;
  *(result + 32) = *(a2 + 84);
  *(result + 34) = v9;
  *(result + 28) = (v10 >> 3) - 65;
  *(result + 40) = a3;
  *(result + 48) = a4;
  *(result + 56) = a5;
  return result;
}

uint64_t icu::Normalizer2Impl::addLcccChars(icu::Normalizer2Impl *this, icu::UnicodeSet *a2)
{
  v8 = 0;
  result = ucptrie_getRange(*(this + 5), 0, 1, 1, 0, 0, &v8);
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = v8 < 0xFC01 || v8 == 65024;
      if (!v7 || v8 >= *(this + 11) && v8 < *(this + 13) && sub_1951FAB08(this, v6) >= 0x100)
      {
        icu::UnicodeSet::add(a2, v6, v5);
      }

      v6 = v5 + 1;
      result = ucptrie_getRange(*(this + 5), v5 + 1, 1, 1, 0, 0, &v8);
      v5 = result;
    }

    while ((result & 0x80000000) == 0);
  }

  return result;
}

uint64_t icu::Normalizer2Impl::addPropertyStarts(uint64_t a1, void *a2)
{
  v17 = 0;
  Range = ucptrie_getRange(*(a1 + 40), 0, 1, 1, 0, 0, &v17);
  if ((Range & 0x80000000) == 0)
  {
    v5 = Range;
    v6 = 0;
    do
    {
      (a2[1])(*a2, v6);
      if (v5 != v6 && *(a1 + 26) <= v17 && (v17 & 6u) >= 3 && *(a1 + 30) > v17)
      {
        v8 = sub_1951FAB08(a1, v6);
        v9 = v5 - v6;
        if (v5 > v6)
        {
          v10 = v8;
          v11 = (v6 + 1);
          do
          {
            v12 = sub_1951FAB08(a1, v11);
            if (v12 != v10)
            {
              v13 = v12;
              (a2[1])(*a2, v11);
              v10 = v13;
            }

            v11 = (v11 + 1);
            --v9;
          }

          while (v9);
        }
      }

      v6 = (v5 + 1);
      v5 = ucptrie_getRange(*(a1 + 40), v6, 1, 1, 0, 0, &v17);
    }

    while ((v5 & 0x80000000) == 0);
  }

  v14 = 44032;
  do
  {
    (a2[1])(*a2, v14);
    (a2[1])(*a2, (v14 + 1));
    v15 = v14 >= 0xD788;
    v14 = (v14 + 28);
  }

  while (!v15);
  return (a2[1])(*a2, 55204);
}

void icu::Normalizer2Impl::addCanonIterPropertyStarts(uint64_t a1, uint64_t a2, int *a3)
{
  sub_1951D10A4((a1 + 64), sub_1952027A4, a1, a3);
  if (*a3 <= 0)
  {
    v9 = 0;
    Range = ucptrie_getRange(*(*(a1 + 72) + 8), 0, 0, 0, sub_1951FCDB0, 0, &v9);
    if ((Range & 0x80000000) == 0)
    {
      v7 = Range;
      v8 = 0;
      do
      {
        (*(a2 + 8))(*a2, v8);
        v8 = (v7 + 1);
        v7 = ucptrie_getRange(*(*(a1 + 72) + 8), v8, 0, 0, sub_1951FCDB0, 0, &v9);
      }

      while ((v7 & 0x80000000) == 0);
    }
  }
}

uint64_t icu::Normalizer2Impl::copyLowPrefixFromNulTerminated(int a1, UChar *a2, int a3, UChar **this, UErrorCode *a5)
{
  v5 = 0;
  do
  {
    v6 = a2[v5++];
    if (v6)
    {
      v7 = v6 < a3;
    }

    else
    {
      v7 = 0;
    }
  }

  while (v7);
  v8 = &a2[v5 - 1];
  if (this && v5 != 1)
  {
    icu::ReorderingBuffer::appendZeroCC(this, a2, &a2[v5 - 1], a5);
  }

  return v8;
}

icu::UnicodeString *icu::Normalizer2Impl::decompose(UChar *this, const icu::UnicodeString *a2, icu::UnicodeString *a3, UErrorCode *a4)
{
  if (*a4 >= 1)
  {
    goto LABEL_4;
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x11) != 0)
  {
    goto LABEL_3;
  }

  v7 = (a2 + 10);
  if ((v5 & 2) == 0)
  {
    v7 = *(a2 + 3);
  }

  if (a3 == a2 || !v7)
  {
LABEL_3:
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_4:
    icu::UnicodeString::setToBogus(a3);
    return a3;
  }

  v8 = v5;
  v9 = v5 >> 5;
  v10 = v8 < 0;
  if (v8 >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = *(a2 + 3);
  }

  if (v10)
  {
    v12 = *(a2 + 3);
  }

  else
  {
    v12 = v9;
  }

  icu::Normalizer2Impl::decompose(this, v7, &v7[v11], a3, v12, a4);
  return a3;
}

UChar *icu::Normalizer2Impl::decompose(UChar *a1, UChar *a2, UChar *a3, icu::UnicodeString *a4, int a5, UErrorCode *a6)
{
  if (a5 >= 0 || a3 == 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = (a3 - a2) >> 1;
  }

  v12 = *(a4 + 4) & 0x1E;
  if (*(a4 + 4))
  {
    v12 = 2;
  }

  *(a4 + 4) = v12;
  v17 = 0u;
  v18 = 0u;
  v14 = a1;
  v15 = a4;
  v16 = 0u;
  *(&v17 + 5) = 0;
  result = icu::ReorderingBuffer::init(&v14, v11, a6);
  if (result)
  {
    result = icu::Normalizer2Impl::decompose(a1, a2, a3, &v14, a6);
  }

  if (v16)
  {
    return icu::UnicodeString::releaseBuffer(v15, (v17 - v16) >> 1);
  }

  return result;
}

UChar *icu::Normalizer2Impl::decompose(uint64_t a1, UChar *src, UChar *a3, UChar **this, UErrorCode *a5)
{
  v8 = *(a1 + 8);
  if (a3)
  {
    v9 = a3;
    v10 = src;
  }

  else
  {
    v31 = 0;
    do
    {
      v32 = src[v31++];
      if (v32)
      {
        v33 = v32 >= v8;
      }

      else
      {
        v33 = 1;
      }
    }

    while (!v33);
    v10 = &src[v31 - 1];
    if (this && v31 != 1)
    {
      icu::ReorderingBuffer::appendZeroCC(this, src, &src[v31 - 1], a5);
    }

    if (*a5 > 0)
    {
      return v10;
    }

    v9 = u_strchr(v10, 0);
  }

  LOWORD(v11) = 0;
  v36 = 0;
  v12 = v10;
  v35 = v10;
  v37 = this;
  v38 = a5;
LABEL_4:
  v10 = v12;
  while (2)
  {
    if (v10 == v9)
    {
      return v10;
    }

    v13 = v10;
    while (1)
    {
      v14 = *v13;
      if (v14 < v8 || ((v15 = *(a1 + 40), v16 = *(v15 + 8), v11 = *(v16 + 2 * ((v14 & 0x3F) + *(*v15 + ((v14 >> 5) & 0x7FE)))), v17 = *(a1 + 14), (v11 & 0xFFFFFDFF) != 0xFC00) ? (v18 = v17 > v11) : (v18 = 1), v18))
      {
        v19 = v13 + 1;
        goto LABEL_14;
      }

      if ((v14 & 0xFC00) != 0xD800)
      {
        goto LABEL_28;
      }

      v19 = v13 + 1;
      if (v13 + 1 != v9)
      {
        v20 = *v19;
        if ((v20 & 0xFC00) == 0xDC00)
        {
          break;
        }
      }

LABEL_14:
      v13 = v19;
      if (v19 == v9)
      {
        goto LABEL_29;
      }
    }

    LODWORD(v14) = v20 + (v14 << 10) - 56613888;
    if (v14 >= *(v15 + 24))
    {
      v21 = *(v15 + 20) - 2;
    }

    else
    {
      v21 = ucptrie_internalSmallIndex(v15, v14);
      v17 = *(a1 + 14);
    }

    v11 = *(v16 + 2 * v21);
    if ((v11 & 0xFFFFFDFF) == 0xFC00 || v17 > v11)
    {
      v19 = v13 + 2;
      goto LABEL_14;
    }

LABEL_28:
    v19 = v13;
LABEL_29:
    if (v19 == v10)
    {
      v23 = v37;
      if (v10 == v9)
      {
        return v19;
      }

      v26 = 2;
      if (v14 < 0x10000)
      {
        v26 = 1;
      }

      v10 = &v19[v26];
      if (v37)
      {
LABEL_40:
        if (!icu::Normalizer2Impl::decompose(a1, v14, v11, v23, v38))
        {
          return v10;
        }

        continue;
      }

      v12 = &v19[v26];
      v10 = v35;
      v27 = v36;
LABEL_47:
      if (*(a1 + 14) <= v11 && *(a1 + 34) > v11)
      {
        return v10;
      }

      v29 = v11 >> 1;
      if ((v11 >> 10) <= 0x3Eu)
      {
        LOBYTE(v29) = 0;
      }

      v30 = (v29 & 0xFE) != 0 ? v10 : v12;
      v35 = v30;
      v36 = v29;
      if (v29)
      {
        if (v27 > v29)
        {
          return v10;
        }
      }

      goto LABEL_4;
    }

    break;
  }

  v23 = v37;
  if (!v37)
  {
    if (v19 == v9)
    {
      return v19;
    }

    v27 = 0;
    v28 = 2;
    if (v14 < 0x10000)
    {
      v28 = 1;
    }

    v12 = &v19[v28];
    v10 = v19;
    goto LABEL_47;
  }

  appended = icu::ReorderingBuffer::appendZeroCC(v37, v10, v19, v38);
  if (v19 != v9 && appended)
  {
    v25 = 2;
    if (v14 < 0x10000)
    {
      v25 = 1;
    }

    v10 = &v19[v25];
    goto LABEL_40;
  }

  return v19;
}

uint64_t icu::Normalizer2Impl::decompose(icu::Normalizer2Impl *this, signed int a2, unsigned int a3, UChar **a4, UErrorCode *a5)
{
  v7 = a2;
  if (*(this + 13) <= a3)
  {
    if (*(this + 17) <= a3)
    {
      v14 = a3 >> 1;
      if (a3 >> 10 <= 0x3E)
      {
        LOBYTE(v14) = 0;
      }

      v11 = v14;
      v10 = a4;
      goto LABEL_14;
    }

    if (*(this + 15) > a3)
    {
      v7 = a2 + (a3 >> 3) - *(this + 14);
      a3 = sub_1951FC680(this, v7);
    }
  }

  v9 = *(this + 7);
  if (a3 < v9)
  {
    v10 = a4;
    a2 = v7;
    v11 = 0;
LABEL_14:

    return sub_1951FC6F8(v10, a2, v11, a5);
  }

  if (v9 == a3 || (*(this + 8) | 1) == a3)
  {
    v23 = 0;
    v12 = (v7 - 44032) % 28;
    src[0] = (v7 + 21504) / 588 + 4352;
    src[1] = (v7 - 44032) / 28 % 21 + 4449;
    if (v12)
    {
      v13 = &v24;
      v23 = v12 + 4519;
    }

    else
    {
      v13 = &v23;
    }

    return icu::ReorderingBuffer::appendZeroCC(a4, src, v13, a5);
  }

  else
  {
    v16 = *(this + 15);
    v17 = a3 >= v16;
    v18 = a3 - v16;
    if (v17)
    {
      LOWORD(a3) = v18 + *(this + 13);
    }

    v19 = (*(this + 6) + (a3 & 0xFFFE));
    v20 = *v19;
    if ((v20 & 0x80) != 0)
    {
      v21 = *(v19 - 1);
    }

    else
    {
      v21 = 0;
    }

    return icu::ReorderingBuffer::append(a4, v19 + 1, v20 & 0x1F, 1, v21, v20 >> 8, a5);
  }
}

unsigned __int16 *icu::Normalizer2Impl::decomposeShort(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, int a4, int a5, UChar **a6, UErrorCode *a7)
{
  if (*a7 > 0)
  {
    return 0;
  }

  v7 = a2;
  if (a2 < a3)
  {
    while (1)
    {
      v14 = *v7;
      if (a4)
      {
        if (v14 < *(a1 + 10))
        {
          break;
        }
      }

      v15 = v7 + 1;
      if ((v14 & 0xF800) == 0xD800)
      {
        if ((v14 & 0x400) != 0 || v15 == a3 || (v16 = *v15, (v16 & 0xFC00) != 0xDC00))
        {
          v17 = *(a1 + 40);
          v18 = *(v17 + 20) - 1;
        }

        else
        {
          v15 = v7 + 2;
          LODWORD(v14) = v16 + (v14 << 10) - 56613888;
          v17 = *(a1 + 40);
          if (v14 >= *(v17 + 24))
          {
            v18 = *(v17 + 20) - 2;
          }

          else
          {
            v18 = ucptrie_internalSmallIndex(v17, v14);
            v17 = *(a1 + 40);
          }
        }
      }

      else
      {
        v17 = *(a1 + 40);
        v18 = (v14 & 0x3F) + *(*v17 + ((v14 >> 5) & 0x7FE));
      }

      v19 = *(v17 + 8);
      v20 = *(v19 + 2 * v18);
      if (a4)
      {
        if (*(a1 + 22) > v20 || *(a1 + 26) <= v20 && *(a1 + 30) > v20)
        {
          return v7;
        }

        if (!icu::Normalizer2Impl::decompose(a1, v14, v20, a6, a7))
        {
          return 0;
        }

        v21 = sub_1951FD64C(a1, v20, a5) || v15 >= a3;
        v7 = v15;
        if (v21)
        {
          return v7;
        }
      }

      else
      {
        if (!icu::Normalizer2Impl::decompose(a1, v14, *(v19 + 2 * v18), a6, a7))
        {
          return 0;
        }

        v7 = v15;
        if (v15 >= a3)
        {
          return v7;
        }
      }
    }
  }

  return v7;
}

BOOL sub_1951FD64C(uint64_t a1, unsigned int a2, int a3)
{
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  v3 = 1;
  if (a2 != 1 && a3)
  {
    if (*(a1 + 26) > a2 || *(a1 + 30) <= a2)
    {
      v4 = *(*(a1 + 48) + (a2 & 0xFFFE)) >= 0x200u;
    }

    else
    {
      v4 = (a2 & 6) >= 3;
    }

    return !v4;
  }

  return v3;
}

unsigned __int8 *icu::Normalizer2Impl::decomposeUTF8(icu::Normalizer2Impl *this, icu::ByteSink *a2, icu::ByteSinkUtil *a3, unsigned __int8 *a4, icu::ByteSink *a5, icu::Edits *a6, UErrorCode *a7)
{
  v8 = a3;
  v74 = *MEMORY[0x1E69E9840];
  v10 = 0uLL;
  v70 = 0u;
  v73 = 0;
  v72 = 0u;
  v71 = 0u;
  v69 = &unk_1F0935D00;
  LOWORD(v70) = 2;
  v11 = *(this + 4);
  if (v11 <= 0x7FF)
  {
    v12 = (v11 >> 6) | 0xC0;
  }

  else
  {
    v12 = -32;
  }

  if (v11 <= 0x7F)
  {
    v13 = *(this + 4);
  }

  else
  {
    v13 = v12;
  }

  if (a3 == a4)
  {
    v57 = a3;
    v20 = a3;
    if (a5)
    {
LABEL_101:
      if (v57 != a4)
      {
        icu::ByteSinkUtil::appendUnchanged(v57, a4, a5, a2, a6, a7, a7);
      }
    }

    goto LABEL_103;
  }

  v15 = 0;
  v16 = " 000000000000\x1000";
  v17 = a3;
  while (2)
  {
    v18 = v8;
    while (1)
    {
      v20 = (v18 + 1);
      v19 = *v18;
      if (v19 >= v13)
      {
        break;
      }

LABEL_37:
      v18 = v20;
      if (v20 == a4)
      {
        v57 = v17;
        goto LABEL_98;
      }
    }

    if ((v19 & 0x80) == 0)
    {
      goto LABEL_32;
    }

    if (v20 != a4)
    {
      if (v19 < 0xE0)
      {
        if (v19 >= 0xC2)
        {
          v23 = *v20 ^ 0x80;
          if (v23 <= 0x3F)
          {
            v19 = *(**(this + 5) + 2 * (v19 & 0x1F)) + v23;
            goto LABEL_22;
          }
        }
      }

      else if (v19 > 0xEF)
      {
        if (v19 <= 0xF4)
        {
          v24 = *v20;
          if ((byte_195439E50[v24 >> 4] >> (v19 + 16)))
          {
            v20 = (v18 + 2);
            if (v18 + 2 != a4)
            {
              v25 = *v20 ^ 0x80;
              if (v25 <= 0x3Fu)
              {
                v20 = (v18 + 3);
                if (v18 + 3 != a4 && (*v20 ^ 0x80u) <= 0x3F)
                {
                  v26 = v24 & 0x3F | ((v19 - 240) << 6);
                  v27 = *(this + 5);
                  if (v26 >= *(v27 + 28))
                  {
                    v19 = *(v27 + 20) - 2;
                  }

                  else
                  {
                    v28 = a7;
                    v29 = a6;
                    v64[0] = a2;
                    v30 = a5;
                    v60 = v15;
                    v19 = ucptrie_internalSmallU8Index(v27, v26, v25, *v20 ^ 0x80u);
                    v15 = v60;
                    v16 = " 000000000000\x1000";
                    v10 = 0uLL;
                    a5 = v30;
                    a2 = v64[0];
                    a6 = v29;
                    a7 = v28;
                  }

                  goto LABEL_22;
                }
              }
            }
          }
        }
      }

      else
      {
        v21 = *v20;
        if ((v16[v19 & 0xF] >> (*v20 >> 5)))
        {
          v20 = (v18 + 2);
          if (v18 + 2 != a4)
          {
            v22 = *v20 ^ 0x80;
            if (v22 <= 0x3F)
            {
              v19 = *(**(this + 5) + 2 * (v21 & 0x3F | ((v19 & 0xF) << 6))) + v22;
LABEL_22:
              ++v20;
              goto LABEL_32;
            }
          }
        }
      }
    }

    v19 = *(*(this + 5) + 20) - 1;
LABEL_32:
    v31 = *(*(*(this + 5) + 8) + 2 * v19);
    v11 = *(this + 7);
    if ((v31 & 0xFFFFFDFF) == 0xFC00 || v11 > v31)
    {
      goto LABEL_37;
    }

    v64[0] = a2;
    if (v18 == v8)
    {
      v33 = v17;
    }

    else
    {
      v33 = v18;
    }

    if (v18 != v8)
    {
      v15 = 0;
      if (a5)
      {
        v34 = v16;
        v35 = v17;
        v36 = a5;
        v37 = a6;
        v38 = a7;
        if (!icu::ByteSinkUtil::appendUnchanged(v35, v18, a5, v64[0], a6, a7, a7))
        {
          goto LABEL_103;
        }

        v15 = 0;
        v33 = v18;
        a7 = v38;
        a6 = v37;
        a5 = v36;
        v10 = 0uLL;
        v16 = v34;
      }
    }

    v11 = *(this + 17);
    if (v11 <= v31)
    {
      v11 = (v31 >> 1);
      v39 = v31 >> 10 <= 0x3E ? 0 : v31 >> 1;
      if (!v39 || v15 <= v39)
      {
        if (v39 <= 1u)
        {
          v15 = v39;
        }

        else
        {
          v15 = v31 >> 1;
        }

        if (v39 <= 1u)
        {
          v41 = v20;
        }

        else
        {
          v41 = v33;
        }

        if (v39 > 1u || a5 == 0)
        {
          a2 = v64[0];
        }

        else
        {
          v51 = a5;
          v52 = a6;
          v53 = a7;
          v54 = v16;
          appended = icu::ByteSinkUtil::appendUnchanged(v33, v20, a5, v64[0], a6, a7, a7);
          v16 = v54;
          v10 = 0uLL;
          a5 = v51;
          a2 = v64[0];
          a6 = v52;
          a7 = v53;
          v15 = v39;
          v41 = v20;
          if (!appended)
          {
            goto LABEL_103;
          }
        }

        goto LABEL_86;
      }
    }

    if (!a5)
    {
      v20 = v33;
      goto LABEL_103;
    }

    v61 = v15;
    v62 = a7;
    v63 = a5;
    v40 = a6;
    v41 = v33;
    a2 = v64[0];
    if (v33 != v18)
    {
      if (icu::Normalizer2Impl::norm16HasDecompBoundaryBefore(this, v31))
      {
        v43 = icu::ByteSinkUtil::appendUnchanged(v41, v18, v63, v64[0], v40, v62, v42);
        v41 = v18;
        v10 = 0uLL;
        if (!v43)
        {
          goto LABEL_103;
        }
      }

      else
      {
        v10 = 0uLL;
      }
    }

    v67 = v10;
    v68 = v10;
    v66 = v10;
    *&v64[1] = this;
    v65 = &v69;
    Buffer = icu::UnicodeString::getBuffer(&v69, 8);
    *&v66 = Buffer;
    *(&v66 + 1) = Buffer;
    *&v67 = Buffer;
    if ((*(v65 + 8) & 2) != 0)
    {
      v46 = 27;
    }

    else
    {
      v46 = *(v65 + 4);
    }

    a7 = v62;
    a5 = v63;
    a6 = v40;
    v16 = " 000000000000\x1000";
    v15 = v61;
    DWORD2(v67) = v46;
    BYTE12(v67) = 0;
    v47 = *v62;
    if (!Buffer && v47 <= 0)
    {
      v48 = 0;
      v49 = U_MEMORY_ALLOCATION_ERROR;
      goto LABEL_77;
    }

    if (v47 > 0)
    {
      goto LABEL_82;
    }

    icu::Normalizer2Impl::decomposeShort(this, v41, v20, 0, 0, &v64[1], v62);
    if (BYTE12(v67) >= 2u)
    {
      v20 = icu::Normalizer2Impl::decomposeShort(this, v20, a4, 1, 0, &v64[1], v62);
    }

    a6 = v40;
    a5 = v63;
    a7 = v62;
    v16 = " 000000000000\x1000";
    v15 = v61;
    if (*v62 > 0)
    {
LABEL_82:
      v48 = 0;
      goto LABEL_83;
    }

    if (v20 - v18 < 0x80000000)
    {
      if (*(this + 17) <= v31 && (v56 = icu::ReorderingBuffer::equals(&v64[1], v41, v20), a7 = v62, a5 = v63, a6 = v40, v56))
      {
        if (!icu::ByteSinkUtil::appendUnchanged(v41, v20, v63, v64[0], v40, v62, v62))
        {
LABEL_95:
          v48 = 0;
          a7 = v62;
          a5 = v63;
          a6 = v40;
          v16 = " 000000000000\x1000";
          v15 = v61;
          goto LABEL_83;
        }
      }

      else if (!icu::ByteSinkUtil::appendChange(v41, v20, v66, (v67 - v66) >> 1, a5, a6, a7))
      {
        goto LABEL_95;
      }

      v15 = 0;
      v48 = 1;
      v41 = v20;
      a7 = v62;
      a5 = v63;
      a6 = v40;
      v16 = " 000000000000\x1000";
      goto LABEL_83;
    }

    v48 = 0;
    v49 = U_INDEX_OUTOFBOUNDS_ERROR;
LABEL_77:
    *a7 = v49;
LABEL_83:
    v11 = v66;
    if (v66)
    {
      v50 = v15;
      icu::UnicodeString::releaseBuffer(v65, (v67 - v66) >> 1);
      v15 = v50;
      v16 = " 000000000000\x1000";
      a7 = v62;
      a5 = v63;
      a6 = v40;
    }

    v10 = 0uLL;
    if (!v48)
    {
      goto LABEL_103;
    }

LABEL_86:
    v8 = v20;
    v57 = v41;
    v17 = v41;
    if (v20 != a4)
    {
      continue;
    }

    break;
  }

LABEL_98:
  if (a5)
  {
    goto LABEL_101;
  }

LABEL_103:
  icu::UnicodeString::~UnicodeString(v11, &v69);
  v58 = *MEMORY[0x1E69E9840];
  return v20;
}

BOOL icu::Normalizer2Impl::norm16HasDecompBoundaryBefore(icu::Normalizer2Impl *this, unsigned int a2)
{
  if (*(this + 11) > a2)
  {
    return 1;
  }

  if (*(this + 13) <= a2)
  {
    return a2 < 0xFC01 || a2 == 65024;
  }

  v3 = (*(this + 6) + (a2 & 0xFFFE));
  if ((*v3 & 0x80) == 0)
  {
    return 1;
  }

  return *(v3 - 1) < 0x100u;
}

unsigned __int8 *icu::Normalizer2Impl::decomposeShort(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4, int a5, unsigned __int8 *a6, UErrorCode *a7)
{
  if (*a7 <= 0)
  {
    v7 = a2;
    if (a2 >= a3)
    {
      return v7;
    }

    v40 = a4 != 1;
    while (1)
    {
      v14 = v7 + 1;
      v15 = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      if (v14 != a3)
      {
        if (v15 < 0xE0)
        {
          if (v15 >= 0xC2)
          {
            v19 = *v14 ^ 0x80;
            if (v19 <= 0x3F)
            {
              v15 = *(**(a1 + 40) + 2 * (*v7 & 0x1F)) + v19;
              goto LABEL_16;
            }
          }
        }

        else if (v15 > 0xEF)
        {
          if (v15 <= 0xF4)
          {
            v20 = *v14;
            if ((byte_195439E50[v20 >> 4] >> (v15 + 16)))
            {
              v14 = v7 + 2;
              if (v7 + 2 != a3)
              {
                v21 = *v14 ^ 0x80;
                if (v21 <= 0x3Fu)
                {
                  v14 = v7 + 3;
                  if (v7 + 3 != a3 && (*v14 ^ 0x80u) <= 0x3F)
                  {
                    v22 = v20 & 0x3F | ((v15 - 240) << 6);
                    v23 = *(a1 + 40);
                    if (v22 >= *(v23 + 28))
                    {
                      v15 = *(v23 + 20) - 2;
                    }

                    else
                    {
                      v15 = ucptrie_internalSmallU8Index(v23, v22, v21, *v14 ^ 0x80u);
                    }

                    goto LABEL_16;
                  }
                }
              }
            }
          }
        }

        else
        {
          v16 = *v7 & 0xF;
          v17 = *v14;
          if ((a00000000000000[v16] >> (*v14 >> 5)))
          {
            v14 = v7 + 2;
            if (v7 + 2 != a3)
            {
              v18 = *v14 ^ 0x80;
              if (v18 <= 0x3F)
              {
                v15 = *(**(a1 + 40) + 2 * (v17 & 0x3Fu | (v16 << 6))) + v18;
LABEL_16:
                ++v14;
                goto LABEL_26;
              }
            }
          }
        }
      }

      v15 = *(*(a1 + 40) + 20) - 1;
LABEL_26:
      v24 = *(*(*(a1 + 40) + 8) + 2 * v15);
      if (v24 < *(a1 + 26))
      {
        if (a4 && v24 < *(a1 + 22))
        {
          return v7;
        }

LABEL_34:
        v25 = -1;
        goto LABEL_35;
      }

      if (*(a1 + 34) <= v24)
      {
        if (v24 >> 10 <= 0x3E)
        {
          v29 = 0;
        }

        else
        {
          v29 = v24 >> 1;
        }

        if (a4 == 1 && !v29)
        {
          return v7;
        }

        v30 = sub_1951FE244(v7, v14);
        if (!sub_1951FC6F8(a6, v30, v29, a7))
        {
          return 0;
        }

        v31 = v40;
        if (a6[44] > 1u)
        {
          v31 = 1;
        }

        if (v31 != 1)
        {
          return v14;
        }

LABEL_76:
        v7 = v14;
        if (v14 >= a3)
        {
          return v7;
        }
      }

      else
      {
        if (v24 >= *(a1 + 30))
        {
          goto LABEL_34;
        }

        if (a4)
        {
          return v7;
        }

        v25 = sub_1951FE244(v7, v14) + (v24 >> 3) - *(a1 + 28);
        v24 = sub_1951FC680(a1, v25);
LABEL_35:
        v26 = *(a1 + 14);
        if (v24 >= v26)
        {
          if (v26 == v24 || (*(a1 + 16) | 1) == v24)
          {
            if ((v25 & 0x80000000) != 0)
            {
              v25 = sub_1951FE244(v7, v14);
            }

            v42 = 0;
            v27 = (v25 - 44032) % 28;
            src[0] = (v25 + 21504) / 588 + 4352;
            src[1] = (v25 - 44032) / 28 % 21 + 4449;
            v28 = &v42;
            if (v27)
            {
              v42 = v27 + 4519;
              v28 = &v43;
            }

            if (!icu::ReorderingBuffer::appendZeroCC(a6, src, v28, a7))
            {
              return 0;
            }
          }

          else
          {
            v32 = *(a1 + 30);
            v33 = v24;
            v38 = v24 >= v32;
            v34 = v24 - v32;
            if (v38)
            {
              v33 = v34 + *(a1 + 26);
            }

            v35 = (*(a1 + 48) + (v33 & 0xFFFE));
            v36 = *v35;
            if ((v36 & 0x80) != 0)
            {
              v37 = *(v35 - 1);
            }

            else
            {
              v37 = 0;
            }

            if (a4 == 1 && !v37)
            {
              return v7;
            }

            if (!icu::ReorderingBuffer::append(a6, v35 + 1, v36 & 0x1F, 1, v37, v36 >> 8, a7))
            {
              return 0;
            }
          }
        }

        else
        {
          if ((v25 & 0x80000000) != 0)
          {
            v25 = sub_1951FE244(v7, v14);
          }

          if (!sub_1951FC6F8(a6, v25, 0, a7))
          {
            return 0;
          }
        }

        if (a4 == 1)
        {
          if (a6[44] < 2u)
          {
            return v14;
          }

          goto LABEL_76;
        }

        if (a4 != 2)
        {
          goto LABEL_76;
        }

        v38 = sub_1951FD64C(a1, v24, a5) || v14 >= a3;
        v7 = v14;
        if (v38)
        {
          return v7;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1951FE244(unsigned __int8 *a1, uint64_t a2)
{
  result = *a1;
  v4 = a2 - a1;
  if (a2 - a1 > 2)
  {
    if (v4 == 3)
    {
      v7 = a1[1];
      v6 = a1[2];
      v5 = ((result & 0xF) << 12) | ((v7 & 0x3F) << 6);
    }

    else
    {
      if (v4 != 4)
      {
        goto LABEL_11;
      }

      v5 = ((result & 7) << 18) | ((a1[1] & 0x3F) << 12) | ((a1[2] & 0x3F) << 6);
      v6 = a1[3];
    }

    return v5 & 0xFFFFFFC0 | v6 & 0x3F;
  }

  else if (v4 != 1)
  {
    if (v4 == 2)
    {
      return a1[1] & 0x3F | ((result & 0x1F) << 6);
    }

LABEL_11:
    abort();
  }

  return result;
}

_WORD *icu::Normalizer2Impl::getDecomposition(uint64_t a1, signed int a2, _WORD *a3, int *a4)
{
  if (*(a1 + 8) > a2)
  {
    return 0;
  }

  v7 = a2;
  v9 = sub_1951FBB98(a1, a2);
  if (*(a1 + 34) <= v9)
  {
    return 0;
  }

  if (*(a1 + 26) > v9 || *(a1 + 30) <= v9)
  {
    v4 = 0;
  }

  else
  {
    v7 = v7 + (v9 >> 3) - *(a1 + 28);
    if (HIWORD(v7))
    {
      v11 = (v7 >> 10) - 10304;
      a3[1] = v7 & 0x3FF | 0xDC00;
      v10 = 2;
    }

    else
    {
      v10 = 1;
      LOWORD(v11) = v7;
    }

    *a4 = v10;
    *a3 = v11;
    v9 = sub_1951FC680(a1, v7);
    v4 = a3;
  }

  v12 = *(a1 + 14);
  if (v9 >= v12)
  {
    if (v12 == v9 || (*(a1 + 16) | 1) == v9)
    {
      v13 = (v7 - 44032) % 28;
      *a3 = (v7 + 21504) / 588 + 4352;
      a3[1] = (v7 - 44032) / 28 % 21 + 4449;
      if (v13)
      {
        a3[2] = v13 + 4519;
        v14 = 3;
      }

      else
      {
        v14 = 2;
      }

      *a4 = v14;
      return a3;
    }

    else
    {
      v15 = *(a1 + 30);
      v16 = v9 >= v15;
      v17 = v9 - v15;
      if (v16)
      {
        LOWORD(v9) = v17 + *(a1 + 26);
      }

      v18 = (*(a1 + 48) + (v9 & 0xFFFE));
      v19 = *v18;
      v4 = v18 + 1;
      *a4 = v19 & 0x1F;
    }
  }

  return v4;
}

unsigned __int16 *icu::Normalizer2Impl::getRawDecomposition(uint64_t a1, signed int a2, _WORD *a3, int *a4)
{
  if (*(a1 + 8) > a2)
  {
    return 0;
  }

  v8 = sub_1951FBB98(a1, a2);
  v9 = *(a1 + 14);
  if (v9 > v8 || *(a1 + 34) <= v8)
  {
    return 0;
  }

  if (v9 == v8 || (*(a1 + 16) | 1) == v8)
  {
    v10 = (a2 - 44032) % 28;
    v11 = a2 - v10;
    v12 = (a2 - 44032) / 588 + 4352;
    v13 = (a2 - 44032) / 28 % 21;
    v14 = v10 == 0;
    if (v10)
    {
      LOWORD(v13) = (a2 - 44032) % 28;
      v15 = 4519;
    }

    else
    {
      v15 = 4449;
    }

    if (!v14)
    {
      LOWORD(v12) = v11;
    }

    *a3 = v12;
    a3[1] = v15 + v13;
    v16 = 2;
LABEL_12:
    *a4 = v16;
    return a3;
  }

  v18 = *(a1 + 26);
  v19 = *(a1 + 30);
  if (v18 > v8 || v19 <= v8)
  {
    v21 = v18 + v8 - v19;
    if (v19 <= v8)
    {
      v22 = v21;
    }

    else
    {
      v22 = v8;
    }

    v23 = (*(a1 + 48) + (v22 & 0xFFFE));
    v24 = *v23;
    v25 = v24 & 0x1F;
    if ((v24 & 0x40) == 0)
    {
      *a4 = v25;
      return v23 + 1;
    }

    v26 = &v23[-((v24 >> 7) & 1)];
    v29 = *(v26 - 1);
    v28 = v26 - 1;
    v27 = v29;
    if (v29 <= 0x1FuLL)
    {
      *a4 = v27;
      return &v28[-v27];
    }

    *a3 = v27;
    u_memcpy(a3 + 1, v23 + 3, v25 - 2);
    v16 = v25 - 1;
    goto LABEL_12;
  }

  v20 = a2 + (v8 >> 3) - *(a1 + 28);
  if (HIWORD(v20))
  {
    *a3 = (v20 >> 10) - 10304;
    *a4 = 2;
    a3[1] = v20 & 0x3FF | 0xDC00;
  }

  else
  {
    *a4 = 1;
    *a3 = v20;
  }

  return a3;
}

UChar *icu::Normalizer2Impl::decomposeAndAppend(uint64_t a1, UChar *a2, UChar *a3, int a4, icu::UnicodeString *this, UChar **a6, UErrorCode *a7)
{
  sub_1951FE91C(a6, this);
  if (a4)
  {

    return icu::Normalizer2Impl::decompose(a1, a2, a3, a6, a7);
  }

  v28 = a7;
  if (a2 == a3)
  {
    v15 = 0;
    LOBYTE(v26) = 0;
    v18 = a2;
    if (a3)
    {
      goto LABEL_30;
    }

LABEL_35:
    a3 = u_strchr(v18, 0);
    goto LABEL_30;
  }

  v14 = 0;
  v15 = 0;
  v16 = 1;
  v17 = a2;
  v18 = a2;
  while (1)
  {
    v20 = *v18++;
    v19 = v20;
    if ((v20 & 0xF800) != 0xD800)
    {
      v22 = *(a1 + 40);
      v24 = (v19 & 0x3F) + *(*v22 + ((v19 >> 5) & 0x7FE));
      goto LABEL_16;
    }

    if ((v19 & 0x400) != 0 || v18 == a3)
    {
      v22 = *(a1 + 40);
LABEL_15:
      v24 = *(v22 + 20) - 1;
      goto LABEL_16;
    }

    v21 = *v18;
    v22 = *(a1 + 40);
    if ((v21 & 0xFC00) != 0xDC00)
    {
      goto LABEL_15;
    }

    v18 = v17 + 2;
    v23 = v21 + (v19 << 10) - 56613888;
    if (v23 >= *(v22 + 24))
    {
      v24 = *(v22 + 20) - 2;
    }

    else
    {
      v24 = ucptrie_internalSmallIndex(v22, v23);
      v22 = *(a1 + 40);
    }

LABEL_16:
    v25 = *(*(v22 + 8) + 2 * v24);
    if (v25 >> 10 >= 0x3F)
    {
      v26 = v25 >> 1;
      goto LABEL_22;
    }

    if (*(a1 + 18) > v25)
    {
      break;
    }

    if (*(a1 + 26) <= v25)
    {
      break;
    }

    v27 = (*(a1 + 48) + (v25 & 0xFFFE));
    if ((*v27 & 0x80) == 0)
    {
      break;
    }

    LOWORD(v26) = *(v27 - 1);
LABEL_22:
    if (!v26)
    {
      break;
    }

    if (v16)
    {
      v15 = v26;
    }

    v17 = v18;
    v14 = v26;
    v16 = 0;
    if (v18 == a3)
    {
      goto LABEL_29;
    }
  }

  LOBYTE(v26) = v14;
  v18 = v17;
LABEL_29:
  if (!a3)
  {
    goto LABEL_35;
  }

LABEL_30:
  result = icu::ReorderingBuffer::append(a6, a2, (v18 - a2) >> 1, 0, v15, v26, v28);
  if (result)
  {

    return icu::ReorderingBuffer::appendZeroCC(a6, v18, a3, v28);
  }

  return result;
}

uint64_t sub_1951FE91C(uint64_t a1, icu::UnicodeString *this)
{
  v3 = *(a1 + 24);
  v4 = (*(a1 + 32) - v3) >> 1;
  icu::UnicodeString::unBogus(this);
  v5 = *(this + 4);
  v6 = v5;
  v7 = v5 >> 5;
  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(this + 3);
  }

  return icu::UnicodeString::doReplace(this, 0, v8, v3, 0, v4);
}

BOOL icu::Normalizer2Impl::hasDecompBoundaryBefore(icu::Normalizer2Impl *this, unsigned int a2)
{
  if (*(this + 6) > a2)
  {
    return 1;
  }

  if (HIWORD(a2) || ((v4 = *(*(this + 7) + (a2 >> 8)), result = 1, *(*(this + 7) + (a2 >> 8))) ? (v5 = ((1 << (a2 >> 5)) & v4) == 0) : (v5 = 1), !v5))
  {
    v6 = sub_1951FBB98(this, a2);
    return icu::Normalizer2Impl::norm16HasDecompBoundaryBefore(this, v6);
  }

  return result;
}

BOOL icu::Normalizer2Impl::hasDecompBoundaryAfter(icu::Normalizer2Impl *this, unsigned int a2)
{
  if (*(this + 4) > a2)
  {
    return 1;
  }

  if (!HIWORD(a2) && (!*(*(this + 7) + (a2 >> 8)) || ((1 << (a2 >> 5)) & *(*(this + 7) + (a2 >> 8))) == 0))
  {
    return 1;
  }

  v5 = sub_1951FBB98(this, a2);

  return icu::Normalizer2Impl::norm16HasDecompBoundaryAfter(this, v5);
}

BOOL icu::Normalizer2Impl::norm16HasDecompBoundaryAfter(icu::Normalizer2Impl *this, unsigned int a2)
{
  if (*(this + 7) >= a2 || (*(this + 8) | 1) == a2)
  {
    return 1;
  }

  v3 = *(this + 13);
  if (v3 > a2)
  {
    v4 = *(this + 15);
    goto LABEL_6;
  }

  if (*(this + 17) > a2)
  {
    v4 = *(this + 15);
    if (v4 > a2)
    {
      v8 = (a2 & 6) >= 3;
      return !v8;
    }

LABEL_6:
    v5 = v3 + a2 - v4;
    if (v4 > a2)
    {
      v5 = a2;
    }

    v6 = (*(this + 6) + (v5 & 0xFFFE));
    v7 = *v6;
    if (v7 > 0x1FF)
    {
      return 0;
    }

    if (v7 < 0x100 || (v7 & 0x80) == 0)
    {
      return 1;
    }

    v8 = *(v6 - 1) >= 0x100u;
    return !v8;
  }

  return a2 < 0xFC01 || a2 == 65024;
}

uint64_t icu::Normalizer2Impl::combine(icu::Normalizer2Impl *this, const unsigned __int16 *a2)
{
  if (a2 > 13311)
  {
    v4 = ((a2 >> 9) + 13312) & 0xFFFE;
    v5 = (a2 & 0x3FF) << 6;
    while (1)
    {
      while (1)
      {
        v6 = *this;
        if (v4 <= v6)
        {
          break;
        }

        this = (this + 2 * (v6 & 1) + 4);
      }

      if (v4 != (v6 & 0x7FFE))
      {
        break;
      }

      v7 = *(this + 1);
      if (v5 <= v7)
      {
        if (v5 != (v7 & 0xFFC0))
        {
          return 0xFFFFFFFFLL;
        }

        v9 = (v7 & 0x3F) << 16;
        return v9 | *(this + 2);
      }

      if ((v6 & 0x8000) != 0)
      {
        return 0xFFFFFFFFLL;
      }

      this = (this + 6);
    }

    return 0xFFFFFFFFLL;
  }

  v2 = 2 * (a2 & 0x7FFF);
  while (1)
  {
    v3 = *this;
    if (v2 <= v3)
    {
      break;
    }

    this = (this + 2 * (v3 & 1 | 2));
  }

  if (v2 != (v3 & 0x7FFE))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 1);
  if (v3)
  {
    v9 = v8 << 16;
    return v9 | *(this + 2);
  }

  return v8;
}

icu::UnicodeSet *icu::Normalizer2Impl::addComposites(icu::Normalizer2Impl *this, const unsigned __int16 *a2, icu::UnicodeSet *a3)
{
  do
  {
    v6 = *a2;
    v7 = a2[1];
    if (*a2)
    {
      v8 = 6;
      v7 = a2[2] | ((v7 & 0x3F) << 16);
    }

    else
    {
      v8 = 4;
    }

    v9 = v7 >> 1;
    if (v7)
    {
      v10 = sub_1951FC680(this, v7 >> 1);
      v11 = *(this + 15);
      v12 = v10 >= v11;
      v13 = v10 - v11;
      if (v12)
      {
        LOWORD(v10) = v13 + *(this + 13);
      }

      icu::Normalizer2Impl::addComposites(this, (*(this + 6) + (v10 & 0xFFFE) + 2 * (*(*(this + 6) + (v10 & 0xFFFE)) & 0x1F) + 2), a3);
    }

    a2 = (a2 + v8);
    result = icu::UnicodeSet::add(a3, v9);
  }

  while ((v6 & 0x8000) == 0);
  return result;
}

uint64_t icu::Normalizer2Impl::recompose(uint64_t this, icu::ReorderingBuffer *a2, int a3, int a4)
{
  v4 = (*(a2 + 2) + 2 * a3);
  v5 = *(a2 + 4);
  if (v4 == v5)
  {
    return this;
  }

  v6 = this;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v54 = 0;
LABEL_3:
  __dst = v7 + 1;
  v49 = v7 + 3;
  v50 = v7 + 2;
  v55 = v7;
LABEL_4:
  while (2)
  {
    v10 = v4;
    while (1)
    {
      v12 = *v4++;
      v11 = v12;
      if ((v12 & 0xF800) == 0xD800)
      {
        if ((v11 & 0x400) != 0 || v4 == v5)
        {
          this = *(v6 + 40);
        }

        else
        {
          v13 = *v4;
          this = *(v6 + 40);
          if ((v13 & 0xFC00) == 0xDC00)
          {
            v4 = v10 + 2;
            v11 = (v13 + (v11 << 10) - 56613888);
            if (v11 >= *(this + 24))
            {
              v15 = *(this + 20) - 2;
            }

            else
            {
              v14 = ucptrie_internalSmallIndex(this, v11);
              v7 = v55;
              v15 = v14;
              this = *(v6 + 40);
            }

            goto LABEL_14;
          }
        }

        v15 = *(this + 20) - 1;
      }

      else
      {
        this = *(v6 + 40);
        v15 = (v11 & 0x3F) + *(*this + ((v11 >> 5) & 0x7FE));
      }

LABEL_14:
      v16 = *(*(this + 8) + 2 * v15);
      v17 = v9 == 0;
      v18 = v16 >> 1;
      if (v16 >> 10 <= 0x3E)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 >> 1;
      }

      v20 = *(v6 + 30);
      if (v9 < v19)
      {
        v17 = 1;
      }

      v21 = v16 <= 0xFE00 && v16 >= v20;
      if (!v21 || v8 == 0 || !v17)
      {
LABEL_50:
        if (v4 == v5)
        {
          goto LABEL_87;
        }

        v9 = v19;
        if (v19)
        {
          if (a4)
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 0;
          if ((v16 + 1024) >= 0x402u)
          {
            if (v16 >= v20)
            {
              v18 = (v16 - v20 + *(v6 + 26)) >> 1;
            }

            v8 = 0;
            v37 = *(v6 + 48);
            if (v37)
            {
              v8 = (v37 + 2 * v18);
              v54 = (v11 & 0xFFFF0000) != 0;
              if (v11 >= 0x10000)
              {
                v7 = v4 - 2;
              }

              else
              {
                v7 = v4 - 1;
              }

              goto LABEL_3;
            }
          }
        }

        goto LABEL_4;
      }

      if (v16 != 65024)
      {
        break;
      }

      if (v11 <= 0x11A6)
      {
        v24 = *v7 - 4352;
        if (v24 <= 0x12)
        {
          v25 = 28 * (v11 + 21 * v24) - 15004;
          if (v4 == v5)
          {
            v29 = v4;
          }

          else
          {
            v26 = *v4 - 4519;
            v27 = v26 > 0x1B;
            v28 = v26 + v25;
            if (v27)
            {
              v29 = v4;
            }

            else
            {
              v25 = v28;
              v29 = v4 + 1;
            }
          }

          --v4;
          *v7 = v25;
          if (v29 >= v5)
          {
            v5 = v4;
            goto LABEL_87;
          }

          v30 = v4;
          do
          {
            v31 = *v29++;
            *v30++ = v31;
          }

          while (v29 < v5);
          v5 = v30;
        }
      }

      v8 = 0;
      v10 = v4;
      if (v4 == v5)
      {
        goto LABEL_87;
      }
    }

    this = icu::Normalizer2Impl::combine(v8, v11);
    v7 = v55;
    if ((this & 0x80000000) != 0)
    {
      goto LABEL_50;
    }

    v32 = this;
    v33 = this >> 1;
    v34 = -2;
    if (v11 < 0x10000)
    {
      v34 = -1;
    }

    v35 = &v4[v34];
    v36 = (v33 - 0x10000) >> 20;
    if (v54)
    {
      this = __dst;
      if (!v36)
      {
        *v55 = (v32 >> 11) - 10304;
        v55[1] = (v32 >> 1) & 0x3FF | 0xDC00;
        goto LABEL_65;
      }

      *v55 = v33;
      if (v50 < v35)
      {
        v42 = v49;
        if (v35 > v49)
        {
          v42 = v35;
        }

        v43 = v32;
        this = memmove(__dst, v50, ((v42 - v55 - 5) & 0xFFFFFFFFFFFFFFFELL) + 2);
        LOBYTE(v32) = v43;
        v7 = v55;
      }

      v41 = 0;
      --v35;
    }

    else
    {
      this = __dst;
      if (v36)
      {
        v41 = 0;
        *v55 = v33;
      }

      else
      {
        if (__dst < v35)
        {
          v38 = v35;
          v39 = v35;
          do
          {
            v40 = *--v39;
            *v38 = v40;
            v38 = v39;
          }

          while (__dst < v39);
        }

        ++v35;
        v55[1] = (v32 >> 1) & 0x3FF | 0xDC00;
        *v55 = (v32 >> 11) - 10304;
LABEL_65:
        v41 = 1;
      }
    }

    v54 = v41;
    if (v35 >= v4)
    {
      if (v4 == v5)
      {
        goto LABEL_87;
      }

      goto LABEL_78;
    }

    if (v4 < v5)
    {
      v44 = v35;
      do
      {
        v45 = *v4++;
        *v44++ = v45;
      }

      while (v4 < v5);
      v4 = v35;
      v5 = v44;
LABEL_78:
      v8 = 0;
      if (v32)
      {
        v46 = sub_1951FC680(v6, v33);
        v47 = *(v6 + 30);
        v21 = v46 >= v47;
        v48 = v46 - v47;
        if (v21)
        {
          LOWORD(v46) = v48 + *(v6 + 26);
        }

        v8 = (*(v6 + 48) + (v46 & 0xFFFE) + 2 * (*(*(v6 + 48) + (v46 & 0xFFFE)) & 0x1F) + 2);
        v7 = v55;
      }

      continue;
    }

    break;
  }

  v5 = v35;
LABEL_87:
  *(a2 + 10) += (*(a2 + 4) - v5) >> 1;
  *(a2 + 3) = v5;
  *(a2 + 4) = v5;
  *(a2 + 44) = 0;
  return this;
}

uint64_t icu::Normalizer2Impl::composePair(icu::Normalizer2Impl *this, unsigned int a2, const unsigned __int16 *a3)
{
  v6 = sub_1951FBB98(this, a2);
  if (v6 == 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (v6 < *(this + 8))
  {
    if (v6 == 2)
    {
      if ((a3 - 4449) <= 0x14)
      {
        return 28 * (a3 + 21 * a2) - 2639516;
      }

      return 0xFFFFFFFFLL;
    }

    v10 = *(this + 7);
    if (v10 == v6)
    {
      LODWORD(v7) = a2 + a3 - 4519;
      if ((a3 - 4520) <= 0x1A)
      {
        return v7;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    v9 = (*(this + 6) + (v6 & 0xFFFE));
    if (v6 <= v10)
    {
LABEL_12:
      if (a3 >> 16 <= 0x10)
      {
        return (icu::Normalizer2Impl::combine(v9, a3) >> 1);
      }

      return 0xFFFFFFFFLL;
    }

LABEL_11:
    v9 = (v9 + 2 * (*v9 & 0x1F) + 2);
    goto LABEL_12;
  }

  v7 = 0xFFFFFFFFLL;
  if (v6 >> 10 <= 0x3E && v6 >= *(this + 16))
  {
    v9 = (*(this + 6) + 2 * ((v6 - *(this + 15) + *(this + 13)) >> 1));
    if (v6 >= *(this + 17))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return v7;
}

uint64_t icu::Normalizer2Impl::compose(uint64_t a1, UChar *src, unsigned __int16 *a3, int a4, int a5, UChar **this, UErrorCode *a7)
{
  v9 = a5;
  v10 = src;
  v12 = *(a1 + 10);
  if (a3)
  {
    v13 = a3;
  }

  else
  {
    v61 = 0;
    do
    {
      v62 = src[v61++];
      if (v62)
      {
        v63 = v62 >= v12;
      }

      else
      {
        v63 = 1;
      }
    }

    while (!v63);
    v64 = &src[v61 - 1];
    if (a5 && v61 != 1)
    {
      icu::ReorderingBuffer::appendZeroCC(this, src, &src[v61 - 1], a7);
    }

    if (*a7 > 0)
    {
      return 0;
    }

    v13 = u_strchr(&v10[v61 - 1], 0);
    if (v61 != 1)
    {
      v66 = &v10[v61];
      v67 = *(v66 - 2);
      v10 = v66 - 2;
      v68 = sub_1951FBB98(a1, v67);
      if (sub_1951FD64C(a1, v68, a4))
      {
        v10 = v64;
      }

      else
      {
        icu::ReorderingBuffer::removeSuffix(this, 1);
      }
    }

    v9 = a5;
  }

  v72 = a7;
  v73 = this;
  if (v10 == v13)
  {
    v20 = v10;
    goto LABEL_134;
  }

  v14 = v10;
  do
  {
    while (1)
    {
      v15 = *v10;
      if (v15 >= v12)
      {
        v16 = *(a1 + 40);
        v17 = *(v16 + 8);
        v18 = *(v17 + 2 * ((v15 & 0x3F) + *(*v16 + ((v15 >> 5) & 0x7FE))));
        v19 = *(a1 + 18);
        if (v19 <= v18)
        {
          break;
        }
      }

      v20 = v10 + 1;
LABEL_8:
      v10 = v20;
      if (v20 == v13)
      {
        v20 = v14;
        goto LABEL_134;
      }
    }

    v20 = v10 + 1;
    if ((v15 & 0xFC00) == 0xD800)
    {
      if (v20 == v13)
      {
        goto LABEL_8;
      }

      v21 = *v20;
      if ((v21 & 0xFC00) != 0xDC00)
      {
        goto LABEL_8;
      }

      LODWORD(v15) = (v15 << 10) - 56613888 + v21;
      if (v15 >= *(v16 + 24))
      {
        v22 = *(v16 + 20) - 2;
      }

      else
      {
        v22 = ucptrie_internalSmallIndex(v16, v15);
        v19 = *(a1 + 18);
      }

      v20 = v10 + 2;
      v18 = *(v17 + 2 * v22);
      if (v19 > v18)
      {
        goto LABEL_8;
      }
    }

    if (v18 < *(a1 + 30))
    {
      if (v9)
      {
        if (*(a1 + 26) <= v18)
        {
          if (!sub_1951FD64C(a1, v18, a4) && !icu::Normalizer2Impl::hasCompBoundaryBefore(a1, v20, v13))
          {
            goto LABEL_91;
          }

          v45 = v72;
          if (v14 != v10)
          {
            appended = icu::ReorderingBuffer::appendZeroCC(v73, v14, v10, v72);
            v45 = v72;
            if (!appended)
            {
              return 1;
            }
          }

          v47 = sub_1951FC6F8(v73, v15 + (v18 >> 3) - *(a1 + 28), 0, v45);
        }

        else
        {
          if (v18 >= *(a1 + 20))
          {
            if (v18 < *(a1 + 24) || !icu::Normalizer2Impl::hasCompBoundaryBefore(a1, v20, v13) && !icu::Normalizer2Impl::hasCompBoundaryAfter(a1, v14, v10, a4))
            {
              goto LABEL_91;
            }

            if (v14 == v10)
            {
LABEL_114:
              v10 = v20;
              goto LABEL_120;
            }

            v28 = v72;
            v27 = v73;
            v24 = v14;
            v26 = v10;
          }

          else
          {
            if (!sub_1951FD64C(a1, v18, a4) && !icu::Normalizer2Impl::hasCompBoundaryBefore(a1, v20, v13))
            {
              goto LABEL_91;
            }

            if (v14 != v10 && !icu::ReorderingBuffer::appendZeroCC(v73, v14, v10, v72))
            {
              return 1;
            }

            v23 = (*(a1 + 48) + (v18 & 0xFFFE));
            v25 = *v23;
            v24 = v23 + 1;
            v26 = &v24[v25 & 0x1F];
            v27 = v73;
            v28 = v72;
          }

          v47 = icu::ReorderingBuffer::appendZeroCC(v27, v24, v26, v28);
        }

        goto LABEL_73;
      }

      return 0;
    }

    if (v18 == 65024 && v14 != v10)
    {
      v40 = v10 - 1;
      v41 = *(v10 - 1);
      if (v15 > 0x11A6)
      {
        if ((v41 - 44032) >> 2 > 0xAE8 || (v41 + 21504) != 28 * ((153391690 * (v41 + 21504)) >> 32))
        {
          goto LABEL_91;
        }

        if (v9)
        {
          if (v14 != v40 && !icu::ReorderingBuffer::appendZeroCC(v73, v14, v40, v72))
          {
            return 1;
          }

          v47 = sub_1951FFDD0(v73, (v15 + v41 - 4519), 0, v72);
LABEL_73:
          v10 = v20;
          goto LABEL_74;
        }
      }

      else
      {
        v42 = v41 - 4352;
        if (v42 > 0x12)
        {
          goto LABEL_91;
        }

        if (v9)
        {
          if (v20 == v13 || (v43 = *v20, (v43 - 4520) > 0x1A))
          {
            if (!icu::Normalizer2Impl::hasCompBoundaryBefore(a1, v20, v13))
            {
              goto LABEL_91;
            }

            v70 = v9;
            v44 = 0;
            v40 = v10 - 1;
          }

          else
          {
            v70 = v9;
            v44 = v43 - 4519;
            ++v20;
          }

          if (v14 != v40 && !icu::ReorderingBuffer::appendZeroCC(v73, v14, v40, v72))
          {
            return 1;
          }

          v47 = sub_1951FFDD0(v73, (v44 + 28 * (v15 + 21 * v42) - 15004), 0, v72);
          v10 = v20;
          v9 = v70;
LABEL_74:
          if (v47)
          {
            goto LABEL_120;
          }

          return 1;
        }
      }

      return 0;
    }

    if (v18 < 0xFE01)
    {
      goto LABEL_91;
    }

    v30 = v18 >> 1;
    if (a4 && icu::Normalizer2Impl::getPreviousTrailCC(a1, v14, v10) > v30)
    {
      if (!v9)
      {
        return 0;
      }

LABEL_91:
      if (v14 != v10 && *(a1 + 22) <= v18 && (*(a1 + 26) > v18 || *(a1 + 30) <= v18))
      {
        v49 = v10 - 1;
        v48 = *(v10 - 1);
        if ((v48 & 0xF800) == 0xD800)
        {
          if (v49 == v14 || (v48 & 0x400) == 0)
          {
            v51 = *(a1 + 40);
          }

          else
          {
            v50 = *(v10 - 2);
            v51 = *(a1 + 40);
            if ((v50 & 0xFC00) == 0xD800)
            {
              v52 = v48 - 56613888 + (v50 << 10);
              if (v52 >= *(v51 + 24))
              {
                v53 = *(v51 + 20) - 2;
              }

              else
              {
                v53 = ucptrie_internalSmallIndex(v51, v52);
                v51 = *(a1 + 40);
              }

              v49 = v10 - 2;
              goto LABEL_106;
            }
          }

          v53 = *(v51 + 20) - 1;
        }

        else
        {
          v51 = *(a1 + 40);
          v53 = (v48 & 0x3F) + *(*v51 + ((v48 >> 5) & 0x7FE));
        }

LABEL_106:
        if (!sub_1951FD64C(a1, *(*(v51 + 8) + 2 * v53), a4))
        {
          v10 = v49;
        }
      }

      if (!v9 || v14 == v10 || icu::ReorderingBuffer::appendZeroCC(v73, v14, v10, v72))
      {
        *v69 = *(v73 + 4);
        v54 = *(v73 + 2);
        icu::Normalizer2Impl::decomposeShort(a1, v10, v20, 0, a4, v73, v72);
        v55 = 1;
        v56 = icu::Normalizer2Impl::decomposeShort(a1, v20, v13, 1, a4, v73, v72);
        if (*v72 > 0)
        {
          return v55;
        }

        v20 = v56;
        if (v56 - v10 >= 0xFFFFFFFFLL)
        {
          *v72 = U_INDEX_OUTOFBOUNDS_ERROR;
          return v55;
        }

        icu::Normalizer2Impl::recompose(a1, v73, (*v69 - v54) >> 1, a4);
        if (!v9)
        {
          if (icu::ReorderingBuffer::equals(v73, v10, v20))
          {
            v57 = *(v73 + 1);
            v58 = *(v73 + 2);
            *(v73 + 3) = v58;
            *(v73 + 4) = v58;
            if ((*(v57 + 8) & 2) != 0)
            {
              v59 = 27;
            }

            else
            {
              v59 = *(v57 + 16);
            }

            *(v73 + 10) = v59;
            *(v73 + 44) = 0;
            v10 = v20;
            goto LABEL_120;
          }

          return 0;
        }

        goto LABEL_114;
      }

      return 1;
    }

    do
    {
      if (v20 == v13)
      {
        if (v9)
        {
          icu::ReorderingBuffer::appendZeroCC(v73, v14, v13, v72);
        }

        return 1;
      }

      v31 = v20;
      v33 = *v20++;
      v32 = v33;
      if ((v33 & 0xF800) != 0xD800)
      {
        v35 = *(a1 + 40);
        v37 = (v32 & 0x3F) + *(*v35 + ((v32 >> 5) & 0x7FE));
        goto LABEL_46;
      }

      if ((v32 & 0x400) != 0 || v20 == v13)
      {
        v35 = *(a1 + 40);
LABEL_45:
        v37 = *(v35 + 20) - 1;
        goto LABEL_46;
      }

      v34 = *v20;
      v35 = *(a1 + 40);
      if ((v34 & 0xFC00) != 0xDC00)
      {
        goto LABEL_45;
      }

      v20 = v31 + 2;
      v36 = (v32 << 10) - 56613888 + v34;
      if (v36 >= *(v35 + 24))
      {
        v37 = *(v35 + 20) - 2;
      }

      else
      {
        v37 = ucptrie_internalSmallIndex(v35, v36);
        v35 = *(a1 + 40);
      }

LABEL_46:
      v38 = *(*(v35 + 8) + 2 * v37);
      if (v38 < 0xFE02)
      {
        goto LABEL_83;
      }

      v39 = v30;
      v30 = v38 >> 1;
    }

    while (v39 <= (v38 >> 1));
    if (!v9)
    {
      return 0;
    }

LABEL_83:
    if (*(a1 + 22) <= v38 && (*(a1 + 26) > v38 || *(a1 + 30) <= v38))
    {
      v20 = v31;
      goto LABEL_91;
    }

    if (*(a1 + 18) <= v38)
    {
      v10 = v31;
    }

    else
    {
      v10 = v20;
    }

    v20 = v14;
LABEL_120:
    v14 = v20;
  }

  while (v10 != v13);
LABEL_134:
  v55 = 1;
  if (v9 && v20 != v13)
  {
    icu::ReorderingBuffer::appendZeroCC(v73, v20, v13, v72);
  }

  return v55;
}

BOOL icu::Normalizer2Impl::hasCompBoundaryBefore(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  v4 = *a2;
  if (v4 < *(a1 + 10))
  {
    return 1;
  }

  if ((v4 & 0xF800) == 0xD800)
  {
    if ((v4 & 0x400) != 0 || a2 + 1 == a3 || (v5 = a2[1], (v5 & 0xFC00) != 0xDC00))
    {
      v7 = *(a1 + 40);
      v8 = *(v7 + 20) - 1;
    }

    else
    {
      v6 = v5 + (v4 << 10) - 56613888;
      v7 = *(a1 + 40);
      if (v6 >= *(v7 + 24))
      {
        v8 = *(v7 + 20) - 2;
      }

      else
      {
        v8 = ucptrie_internalSmallIndex(v7, v6);
        v7 = *(a1 + 40);
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = (v4 & 0x3F) + *(*v7 + ((v4 >> 5) & 0x7FE));
  }

  v10 = *(*(v7 + 8) + 2 * v8);
  if (*(a1 + 22) > v10)
  {
    return 1;
  }

  if (*(a1 + 26) <= v10)
  {
    return *(a1 + 30) > v10;
  }

  return 0;
}

BOOL icu::Normalizer2Impl::hasCompBoundaryAfter(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 == a3)
  {
    return 1;
  }

  v7 = *(a3 - 2);
  if ((v7 & 0xF800) == 0xD800)
  {
    if (a3 - 2 != a2 && (v7 & 0x400) != 0 && (v8 = *(a3 - 4), (v8 & 0xFC00) == 0xD800))
    {
      v9 = v7 + (v8 << 10) - 56613888;
      v10 = *(a1 + 40);
      if (v9 >= *(v10 + 24))
      {
        v11 = *(v10 + 20) - 2;
      }

      else
      {
        v11 = ucptrie_internalSmallIndex(v10, v9);
        v10 = *(a1 + 40);
      }
    }

    else
    {
      v10 = *(a1 + 40);
      v11 = *(v10 + 20) - 1;
    }
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = (v7 & 0x3F) + *(*v10 + ((v7 >> 5) & 0x7FE));
  }

  v13 = *(*(v10 + 8) + 2 * v11);

  return sub_1951FD64C(a1, v13, a4);
}

uint64_t sub_1951FFDD0(icu::ReorderingBuffer *this, int a2, unsigned int a3, UErrorCode *a4)
{
  if (*(this + 10) || (result = icu::ReorderingBuffer::resize(this, 1, a4), result))
  {
    if (a3 && *(this + 44) > a3)
    {
      icu::ReorderingBuffer::insert(this, a2, a3);
    }

    else
    {
      v8 = *(this + 4);
      *v8 = a2;
      v9 = v8 + 1;
      *(this + 4) = v9;
      *(this + 44) = a3;
      if (a3 <= 1)
      {
        *(this + 3) = v9;
      }
    }

    --*(this + 10);
    return 1;
  }

  return result;
}

uint64_t icu::Normalizer2Impl::getPreviousTrailCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    LOBYTE(result) = 0;
  }

  else
  {
    v4 = (a3 - a2) >> 1;
    v5 = *(a2 + 2 * ((((a3 - a2) << 31) - 0x100000000) >> 32));
    if ((v5 & 0xFC00) == 0xDC00 && v4 >= 2)
    {
      v7 = *(a2 + 2 * (v4 - 2));
      v8 = (v7 & 0xFC00) == 55296;
      v9 = v5 + (v7 << 10) - 56613888;
      if (v8)
      {
        v5 = v9;
      }
    }

    LOBYTE(result) = sub_1951FAB08(a1, v5);
  }

  return result;
}

UChar *icu::Normalizer2Impl::composeQuickCheck(icu::Normalizer2Impl *this, unsigned __int16 *a2, UChar *a3, int a4, _DWORD *a5)
{
  v5 = a2;
  v7 = *(this + 5);
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = a2[v9++];
      if (v10)
      {
        v11 = v10 >= v7;
      }

      else
      {
        v11 = 1;
      }
    }

    while (!v11);
    v12 = &a2[v9];
    v8 = u_strchr(&a2[v9 - 1], 0);
    if (v9 != 1)
    {
      v14 = *(v12 - 2);
      v13 = v12 - 2;
      v15 = sub_1951FBB98(this, v14);
      if (sub_1951FD64C(this, v15, a4))
      {
        v5 = &v5[v9 - 1];
      }

      else
      {
        v5 = v13;
      }
    }
  }

  v16 = v5;
LABEL_14:
  if (v16 == v8)
  {
    return v16;
  }

  v17 = v16;
  while (1)
  {
    v18 = *v17;
    if (v18 >= v7)
    {
      v19 = *(this + 5);
      v20 = *(v19 + 8);
      v21 = *(v20 + 2 * ((v18 & 0x3F) + *(*v19 + ((v18 >> 5) & 0x7FE))));
      v22 = *(this + 9);
      if (v22 <= v21)
      {
        break;
      }
    }

    v16 = v17 + 1;
LABEL_19:
    v17 = v16;
    if (v16 == v8)
    {
      return v16;
    }
  }

  v16 = v17 + 1;
  if ((v18 & 0xFC00) == 0xD800)
  {
    if (v16 == v8)
    {
      goto LABEL_19;
    }

    v23 = *v16;
    if ((v23 & 0xFC00) != 0xDC00)
    {
      goto LABEL_19;
    }

    v24 = (v18 << 10) - 56613888 + v23;
    if (v24 >= *(v19 + 24))
    {
      v25 = *(v19 + 20) - 2;
    }

    else
    {
      v25 = ucptrie_internalSmallIndex(v19, v24);
      v22 = *(this + 9);
    }

    v16 = v17 + 2;
    v21 = *(v20 + 2 * v25);
    if (v22 > v21)
    {
      goto LABEL_19;
    }
  }

  if (v5 == v17)
  {
    v26 = 1;
    v17 = v5;
    goto LABEL_48;
  }

  if (*(this + 11) > v21 || *(this + 13) <= v21 && *(this + 15) > v21)
  {
    v26 = 1;
    goto LABEL_48;
  }

  v28 = v17 - 1;
  v27 = *(v17 - 1);
  if ((v27 & 0xF800) != 0xD800)
  {
    v30 = *(this + 5);
    v32 = (v27 & 0x3F) + *(*v30 + ((v27 >> 5) & 0x7FE));
    goto LABEL_45;
  }

  if ((v27 & 0x400) == 0 || v28 == v5)
  {
    v30 = *(this + 5);
    goto LABEL_42;
  }

  v29 = *(v17 - 2);
  v30 = *(this + 5);
  if ((v29 & 0xFC00) != 0xD800)
  {
LABEL_42:
    v32 = *(v30 + 20) - 1;
    goto LABEL_45;
  }

  v31 = v27 - 56613888 + (v29 << 10);
  if (v31 >= *(v30 + 24))
  {
    v32 = *(v30 + 20) - 2;
  }

  else
  {
    v32 = ucptrie_internalSmallIndex(v30, v31);
    v30 = *(this + 5);
  }

  v28 = v17 - 2;
LABEL_45:
  v33 = *(*(v30 + 8) + 2 * v32);
  if (sub_1951FD64C(this, v33, a4))
  {
    v26 = 1;
  }

  else
  {
    v17 = v28;
    v26 = v33;
  }

LABEL_48:
  v34 = *(this + 15);
  if (v21 >= v34)
  {
    if ((v35 = icu::Normalizer2Impl::getFCD16FromMaybeOrNonZeroCC(this, v21), !a4) || v35 < 0x100 || (*(this + 7) >= v26 ? (v36 = 0) : (v36 = *(*(this + 6) + (v26 & 0xFFFE) + 1)), v35 >> 8 >= v36))
    {
      v37 = v35;
      while (1)
      {
        v5 = v16;
        if (v21 <= 0xFE01)
        {
          if (!a5)
          {
            return v17;
          }

          *a5 = 2;
        }

        if (v16 == v8)
        {
          return v16;
        }

        ++v16;
        v38 = *v5;
        if ((v38 & 0xF800) != 0xD800)
        {
          v40 = *(this + 5);
          v42 = (v38 & 0x3F) + *(*v40 + ((v38 >> 5) & 0x7FE));
          goto LABEL_69;
        }

        if ((v38 & 0x400) != 0 || v16 == v8)
        {
          break;
        }

        v39 = *v16;
        v40 = *(this + 5);
        if ((v39 & 0xFC00) != 0xDC00)
        {
          goto LABEL_68;
        }

        v16 = v5 + 2;
        v41 = (v38 << 10) - 56613888 + v39;
        if (v41 >= *(v40 + 24))
        {
          v42 = *(v40 + 20) - 2;
        }

        else
        {
          v42 = ucptrie_internalSmallIndex(v40, v41);
          v40 = *(this + 5);
          v34 = *(this + 15);
        }

LABEL_69:
        v21 = *(*(v40 + 8) + 2 * v42);
        if (v21 >= v34)
        {
          FCD16FromMaybeOrNonZeroCC = icu::Normalizer2Impl::getFCD16FromMaybeOrNonZeroCC(this, v21);
          v44 = FCD16FromMaybeOrNonZeroCC < 0x100 || FCD16FromMaybeOrNonZeroCC >> 8 >= v37;
          v37 = FCD16FromMaybeOrNonZeroCC;
          if (v44)
          {
            continue;
          }
        }

        if (*(this + 9) > v21)
        {
          goto LABEL_14;
        }

        goto LABEL_77;
      }

      v40 = *(this + 5);
LABEL_68:
      v42 = *(v40 + 20) - 1;
      goto LABEL_69;
    }
  }

LABEL_77:
  if (a5)
  {
    *a5 = 0;
  }

  return v17;
}

uint64_t icu::Normalizer2Impl::getFCD16FromMaybeOrNonZeroCC(icu::Normalizer2Impl *this, unsigned int a2)
{
  if (a2 >> 10 < 0x3F)
  {
    if (*(this + 17) <= a2)
    {
      LOWORD(v2) = 0;
    }

    else
    {
      LOWORD(v2) = *(*(this + 6) + 2 * ((a2 - *(this + 15) + *(this + 13)) >> 1) + 1);
    }
  }

  else
  {
    return ((a2 >> 1) | (a2 >> 1 << 8));
  }

  return v2;
}

void *icu::Normalizer2Impl::composeAndAppend(uint64_t a1, UChar *src, unsigned __int16 *a3, int a4, int a5, UChar **a6, icu::ReorderingBuffer *this, UErrorCode *a8)
{
  v12 = a3;
  v13 = src;
  v31 = *MEMORY[0x1E69E9840];
  if (*(this + 2) == *(this + 4) || (NextCompBoundary = icu::Normalizer2Impl::findNextCompBoundary(a1, src, a3, a5), v17 = NextCompBoundary - v13, NextCompBoundary == v13))
  {
LABEL_12:
    if (a4)
    {
      result = icu::Normalizer2Impl::compose(a1, v13, v12, a5, 1, this, a8);
    }

    else
    {
      if (!v12)
      {
        v12 = u_strchr(v13, 0);
      }

      result = icu::ReorderingBuffer::appendZeroCC(this, v13, v12, a8);
    }

    goto LABEL_17;
  }

  v26 = NextCompBoundary;
  PreviousCompBoundary = icu::Normalizer2Impl::findPreviousCompBoundary(a1, *(this + 2), *(this + 4), a5);
  v19 = (*(this + 4) - PreviousCompBoundary) >> 1;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  icu::UnicodeString::UnicodeString(&v27, PreviousCompBoundary, v19);
  icu::ReorderingBuffer::removeSuffix(this, v19);
  icu::UnicodeString::operator=(a6, &v27);
  icu::UnicodeString::doAppend(&v27, v13, 0, v17 >> 1);
  if ((BYTE8(v27) & 0x11) != 0)
  {
    v20 = 0;
  }

  else if ((BYTE8(v27) & 2) != 0)
  {
    v20 = (&v27 | 0xA);
  }

  else
  {
    v20 = *(&v28 + 1);
  }

  v21 = WORD4(v27) >> 5;
  if (SWORD4(v27) < 0)
  {
    v21 = HIDWORD(v27);
  }

  icu::Normalizer2Impl::compose(a1, v20, &v20[v21], a5, 1, this, a8);
  v22 = *a8;
  result = icu::UnicodeString::~UnicodeString(v23, &v27);
  if (v22 <= U_ZERO_ERROR)
  {
    v13 = v26;
    goto LABEL_12;
  }

LABEL_17:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int16 *icu::Normalizer2Impl::findNextCompBoundary(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, int a4)
{
  do
  {
    if (a2 == a3)
    {
      break;
    }

    v9 = a2 + 1;
    v8 = *a2;
    if ((v8 & 0xF800) == 0xD800)
    {
      if ((v8 & 0x400) != 0 || v9 == a3 || (v10 = *v9, (v10 & 0xFC00) != 0xDC00))
      {
        v11 = *(a1 + 40);
        v12 = *(v11 + 20) - 1;
      }

      else
      {
        v9 = a2 + 2;
        LODWORD(v8) = v10 + (v8 << 10) - 56613888;
        v11 = *(a1 + 40);
        if (v8 >= *(v11 + 24))
        {
          v12 = *(v11 + 20) - 2;
        }

        else
        {
          v12 = ucptrie_internalSmallIndex(v11, v8);
          v11 = *(a1 + 40);
        }
      }
    }

    else
    {
      v11 = *(a1 + 40);
      v12 = (v8 & 0x3F) + *(*v11 + ((v8 >> 5) & 0x7FE));
    }

    if (v8 < *(a1 + 10))
    {
      break;
    }

    v13 = *(*(v11 + 8) + 2 * v12);
    if (*(a1 + 22) > v13 || *(a1 + 26) <= v13 && *(a1 + 30) > v13)
    {
      break;
    }

    a2 = v9;
  }

  while (!sub_1951FD64C(a1, v13, a4));
  return a2;
}

uint64_t icu::Normalizer2Impl::findPreviousCompBoundary(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a3;
  if (a3 != a2)
  {
    while (1)
    {
      v9 = v4 - 2;
      v8 = *(v4 - 2);
      if ((v8 & 0xF800) == 0xD800)
      {
        if (v9 != a2 && (v8 & 0x400) != 0 && (v10 = *(v4 - 4), (v10 & 0xFC00) == 0xD800))
        {
          LODWORD(v8) = v8 + (v10 << 10) - 56613888;
          v11 = *(a1 + 40);
          if (v8 >= *(v11 + 24))
          {
            v12 = *(v11 + 20) - 2;
          }

          else
          {
            v12 = ucptrie_internalSmallIndex(v11, v8);
            v11 = *(a1 + 40);
          }

          v9 = v4 - 4;
        }

        else
        {
          v11 = *(a1 + 40);
          v12 = *(v11 + 20) - 1;
        }
      }

      else
      {
        v11 = *(a1 + 40);
        v12 = (v8 & 0x3F) + *(*v11 + ((v8 >> 5) & 0x7FE));
      }

      v13 = *(*(v11 + 8) + 2 * v12);
      if (sub_1951FD64C(a1, v13, a4))
      {
        break;
      }

      if (v8 < *(a1 + 10) || *(a1 + 22) > v13)
      {
        return v9;
      }

      if (*(a1 + 26) <= v13)
      {
        v14 = *(a1 + 30) > v13 || v9 == a2;
        v4 = v9;
        if (v14)
        {
          return v4;
        }
      }

      else
      {
        v4 = v9;
        if (v9 == a2)
        {
          return v4;
        }
      }
    }
  }

  return v4;
}

uint64_t icu::Normalizer2Impl::composeUTF8(icu::Normalizer2Impl *this, icu::ByteSink *a2, int a3, icu::ByteSinkUtil *a4, unsigned __int8 *a5, icu::ByteSink *a6, icu::Edits *a7, UErrorCode *a8)
{
  v11 = a2;
  v127 = *MEMORY[0x1E69E9840];
  v12 = 0uLL;
  v123 = 0u;
  v126 = 0;
  v125 = 0u;
  v124 = 0u;
  v122 = &unk_1F0935D00;
  LOWORD(v123) = 2;
  v13 = *(this + 5);
  if (v13 <= 0x7FF)
  {
    v14 = (v13 >> 6) | 0xC0;
  }

  else
  {
    v14 = -32;
  }

  if (v13 <= 0x7F)
  {
    v15 = *(this + 5);
  }

  else
  {
    v15 = v14;
  }

  if (a4 == a5)
  {
    v17 = a4;
    goto LABEL_192;
  }

  v17 = a4;
  v18 = byte_195439E50;
  v115 = a8;
  v116 = a6;
  v114 = a2;
LABEL_9:
  v19 = a4;
  v20 = a4;
  while (1)
  {
    v22 = *v20++;
    v21 = v22;
    if (v22 >= v15)
    {
      break;
    }

LABEL_34:
    v19 = v20;
    if (v20 == a5)
    {
      goto LABEL_192;
    }
  }

  a4 = v20;
  if ((v21 & 0x80) != 0)
  {
    a4 = v20;
    if (v20 != a5)
    {
      if (v21 < 0xE0)
      {
        a4 = v20;
        if (v21 >= 0xC2)
        {
          v24 = *v20 ^ 0x80;
          a4 = v20;
          if (v24 <= 0x3F)
          {
            v21 = *(**(this + 5) + 2 * (v21 & 0x1F)) + v24;
            a4 = v20;
            goto LABEL_22;
          }
        }
      }

      else if (v21 > 0xEF)
      {
        a4 = v20;
        if (v21 <= 0xF4)
        {
          v25 = *v20;
          a4 = v20;
          if ((v18[v25 >> 4] >> (v21 + 16)))
          {
            a4 = (v19 + 2);
            if (v19 + 2 != a5)
            {
              v26 = *a4 ^ 0x80;
              if (v26 <= 0x3Fu)
              {
                a4 = (v19 + 3);
                if (v19 + 3 != a5)
                {
                  v27 = v18;
                  if ((*a4 ^ 0x80u) <= 0x3F)
                  {
                    v28 = v25 & 0x3F | ((v21 - 240) << 6);
                    v29 = *(this + 5);
                    if (v28 >= *(v29 + 28))
                    {
                      v21 = *(v29 + 20) - 2;
                    }

                    else
                    {
                      *v112 = a3;
                      v30 = a7;
                      v21 = ucptrie_internalSmallU8Index(v29, v28, v26, *a4 ^ 0x80u);
                      a8 = v115;
                      a6 = v116;
                      v12 = 0uLL;
                      a3 = *v112;
                      v11 = v114;
                      a7 = v30;
                    }

                    v18 = v27;
                    goto LABEL_22;
                  }
                }
              }
            }
          }
        }
      }

      else
      {
        a4 = v20;
        if ((a00000000000000[v21 & 0xF] >> (*v20 >> 5)))
        {
          a4 = (v19 + 2);
          if (v19 + 2 != a5)
          {
            v23 = *a4 ^ 0x80;
            if (v23 <= 0x3F)
            {
              v21 = *(**(this + 5) + 2 * (*v20 & 0x3F | ((v21 & 0xF) << 6))) + v23;
LABEL_22:
              a4 = (a4 + 1);
              goto LABEL_32;
            }
          }
        }
      }
    }

    v21 = *(*(this + 5) + 20) - 1;
  }

LABEL_32:
  v31 = *(*(*(this + 5) + 8) + 2 * v21);
  v13 = *(this + 9);
  if (v13 > v31)
  {
    v20 = a4;
    goto LABEL_34;
  }

  v13 = *(this + 15);
  v113 = a3;
  if (v31 >= v13)
  {
    if (v31 == 65024)
    {
      if (v19 - v17 >= 3 && (v38 = *(v19 - 3), v38 - 225 <= 0xC) && (v39 = *(v19 - 2) ^ 0x80, v39 <= 0x3F) && (v40 = *(v19 - 1) ^ 0x80, v40 <= 0x3F) && (v38 < 0xED || v39 <= 0x1F))
      {
        v41 = (v39 << 6) | ((v38 & 0xF) << 12) | v40;
      }

      else
      {
        v41 = -1;
      }

      v13 = *v20;
      if (v13 == 133)
      {
        v42 = v41 - 4352;
        if (v42 > 0x12)
        {
          goto LABEL_145;
        }

        if (a6)
        {
          v110 = a7;
          v43 = sub_195201870(a4, a5);
          if (v43 < 0)
          {
            if (!icu::Normalizer2Impl::hasCompBoundaryBefore(this, a4, a5))
            {
              a7 = v110;
              goto LABEL_144;
            }

            v45 = 44032;
          }

          else
          {
            a4 = (a4 + 3);
            v45 = v43 + 44032;
          }

          v84 = v116;
          v85 = v19[2];
          v86 = v110;
          if (v17 == (v19 - 3) || (v87 = v17, v88 = v45, appended = icu::ByteSinkUtil::appendUnchanged(v87, v19 - 3, v116, v114, v110, v115, v44), v45 = v88, v84 = v116, v86 = v110, appended))
          {
            icu::ByteSinkUtil::appendCodePoint((a4 - (v19 - 3)), v45 + 28 * (v85 + 21 * v42) - 4508, v84, v86, v86);
            a6 = v116;
            v11 = v114;
            a7 = v110;
            goto LABEL_139;
          }

          goto LABEL_199;
        }
      }

      else
      {
        if ((v41 - 44032) >> 2 > 0xAE8)
        {
          goto LABEL_145;
        }

        v13 = ((v41 + 21504) - 28 * ((153391690 * (v41 + 21504)) >> 32));
        if (v13)
        {
          goto LABEL_145;
        }

        if (a6)
        {
          v70 = a7;
          v71 = sub_195201870(v19, a4);
          v73 = v116;
          v74 = v70;
          v75 = v71;
          v76 = v19 - 3;
          if (v17 == v76 || (v77 = icu::ByteSinkUtil::appendUnchanged(v17, v76, v116, v114, v70, v115, v72), v73 = v116, v74 = v70, v77))
          {
            icu::ByteSinkUtil::appendCodePoint((a4 - v76), v75 + v41, v73, v74, v74);
            a6 = v116;
            v11 = v114;
            a7 = v70;
            goto LABEL_139;
          }

LABEL_199:
          v8 = 1;
          goto LABEL_195;
        }
      }

LABEL_200:
      v8 = 0;
      goto LABEL_195;
    }

    if (v31 < 0xFE01)
    {
      goto LABEL_145;
    }

    v46 = v31 >> 1;
    if (a3)
    {
      v47 = a7;
      PreviousTrailCC = icu::Normalizer2Impl::getPreviousTrailCC(this, v17, v19);
      v18 = byte_195439E50;
      a8 = v115;
      a6 = v116;
      v12 = 0uLL;
      a3 = v113;
      v11 = v114;
      a7 = v47;
      if (PreviousTrailCC > v46)
      {
        if (v116)
        {
          goto LABEL_145;
        }

        goto LABEL_200;
      }
    }

    while (1)
    {
      if (a4 == a5)
      {
        if (a6)
        {
          icu::ByteSinkUtil::appendUnchanged(v17, a5, a6, v11, a7, a8, a7);
        }

        goto LABEL_199;
      }

      v49 = a4;
      v51 = *a4;
      a4 = (a4 + 1);
      v50 = v51;
      v52 = v51;
      if ((v51 & 0x80000000) == 0)
      {
        goto LABEL_89;
      }

      if (a4 == a5)
      {
        goto LABEL_88;
      }

      if (v52 < 0xE0)
      {
        if (v52 < 0xC2)
        {
          goto LABEL_88;
        }

        v56 = *a4 ^ 0x80;
        if (v56 > 0x3F)
        {
          goto LABEL_88;
        }

        v52 = *(**(this + 5) + 2 * (v50 & 0x1F)) + v56;
      }

      else if (v52 > 0xEF)
      {
        if (v52 > 0xF4)
        {
          goto LABEL_88;
        }

        v57 = *a4;
        if (((v18[v57 >> 4] >> (v52 + 16)) & 1) == 0)
        {
          goto LABEL_88;
        }

        a4 = (v49 + 2);
        if ((v49 + 2) == a5)
        {
          goto LABEL_88;
        }

        v58 = *a4 ^ 0x80;
        if (v58 > 0x3Fu)
        {
          goto LABEL_88;
        }

        a4 = (v49 + 3);
        if ((v49 + 3) == a5)
        {
          goto LABEL_88;
        }

        if ((*a4 ^ 0x80u) > 0x3F)
        {
          v18 = byte_195439E50;
LABEL_88:
          v52 = *(*(this + 5) + 20) - 1;
          goto LABEL_89;
        }

        v59 = v57 & 0x3F | ((v52 - 240) << 6);
        v60 = *(this + 5);
        if (v59 >= *(v60 + 28))
        {
          v52 = *(v60 + 20) - 2;
        }

        else
        {
          v111 = a7;
          v52 = ucptrie_internalSmallU8Index(v60, v59, v58, *a4 ^ 0x80u);
          a8 = v115;
          a6 = v116;
          v12 = 0uLL;
          a3 = v113;
          v11 = v114;
          a7 = v111;
        }

        v18 = byte_195439E50;
      }

      else
      {
        v53 = v50 & 0xF;
        v54 = *a4;
        if (((a00000000000000[v53] >> (*a4 >> 5)) & 1) == 0)
        {
          goto LABEL_88;
        }

        a4 = (v49 + 2);
        if ((v49 + 2) == a5)
        {
          goto LABEL_88;
        }

        v55 = *a4 ^ 0x80;
        if (v55 > 0x3F)
        {
          goto LABEL_88;
        }

        v52 = *(**(this + 5) + 2 * (v54 & 0x3Fu | (v53 << 6))) + v55;
      }

      a4 = (a4 + 1);
LABEL_89:
      v13 = *(*(*(this + 5) + 8) + 2 * v52);
      if (v13 < 0xFE02)
      {
        goto LABEL_124;
      }

      v61 = v46;
      v46 = v13 >> 1;
      if (v61 > (v13 >> 1))
      {
        if (!a6)
        {
          goto LABEL_200;
        }

LABEL_124:
        if (*(this + 11) <= v13 && (*(this + 13) > v13 || *(this + 15) <= v13))
        {
          a4 = v49;
          goto LABEL_145;
        }

        if (*(this + 9) <= v13)
        {
          a4 = v49;
        }

LABEL_183:
        a3 = v113;
        v12 = 0uLL;
        v18 = byte_195439E50;
        if (a4 == a5)
        {
LABEL_192:
          v8 = 1;
          if (a6 && v17 != a5)
          {
            icu::ByteSinkUtil::appendUnchanged(v17, a5, a6, v11, a7, a8, a7);
          }

          goto LABEL_195;
        }

        goto LABEL_9;
      }
    }
  }

  if (!a6)
  {
    goto LABEL_200;
  }

  if (*(this + 13) <= v31)
  {
    v62 = a7;
    if (!sub_1951FD64C(this, v31, a3) && !icu::Normalizer2Impl::hasCompBoundaryBefore(this, a4, a5))
    {
      a7 = v62;
      goto LABEL_144;
    }

    v64 = v116;
    v65 = v62;
    if (v17 != v19)
    {
      v66 = icu::ByteSinkUtil::appendUnchanged(v17, v19, v116, v114, v62, v115, v63);
      v64 = v116;
      v65 = v62;
      if (!v66)
      {
        goto LABEL_199;
      }
    }

    v67 = (v31 >> 3) - *(this + 14);
    LODWORD(__dst) = 0;
    v68 = a4 - v19;
    if (a4 - v19 == 1)
    {
      LOBYTE(__dst) = *v19 + v67;
      v69 = 1;
    }

    else
    {
      v78 = v67 + *(a4 - 1);
      if ((v78 & 0xFFFFFFC0) == 0x80)
      {
        if (a4 - 1 <= (v19 + 1))
        {
          v79 = (v19 + 1);
        }

        else
        {
          v79 = a4 - 1;
        }

        v80 = v79 - v19;
        memcpy(&__dst, v19, v79 - v19);
        v69 = (v79 + ~v19 + 2);
        *(&__dst + v80) = v78;
        v68 = a4 - v19;
      }

      else
      {
        v82 = sub_1951FE244(v19, a4) + v67;
        if (v82 > 0x7F)
        {
          if (v82 > 0x7FF)
          {
            if (HIWORD(v82))
            {
              v90 = (v82 >> 18) | 0xFFFFFFF0;
              BYTE1(__dst) = (v82 >> 12) & 0x3F | 0x80;
              v91 = 2;
            }

            else
            {
              v90 = (v82 >> 12) | 0xFFFFFFE0;
              v91 = 1;
            }

            v65 = v62;
            v64 = v116;
            LOBYTE(__dst) = v90;
            v83 = v91 + 1;
            *(&__dst | v91) = (v82 >> 6) & 0x3F | 0x80;
          }

          else
          {
            LOBYTE(__dst) = (v82 >> 6) | 0xC0;
            v83 = 1;
            v65 = v62;
            v64 = v116;
          }

          v69 = v83 + 1;
          *(&__dst + v83) = v82 & 0x3F | 0x80;
          goto LABEL_180;
        }

        LOBYTE(__dst) = v82;
        v69 = 1;
      }

      v65 = v62;
      v64 = v116;
    }

LABEL_180:
    if (v65)
    {
      icu::Edits::addReplace(v65, v68, v69);
      v64 = v116;
    }

    (*(*v64 + 16))(v64, &__dst, v69);
    a8 = v115;
    a6 = v116;
    v17 = a4;
    a7 = v65;
    v11 = v114;
    goto LABEL_183;
  }

  v32 = a7;
  if (v31 >= *(this + 10))
  {
    if (v31 < *(this + 12))
    {
      goto LABEL_145;
    }

    if (!icu::Normalizer2Impl::hasCompBoundaryBefore(this, a4, a5) && !icu::Normalizer2Impl::hasCompBoundaryAfter(this, v17, v19, v113))
    {
      goto LABEL_131;
    }

    a8 = v115;
    a6 = v116;
    a7 = v32;
    v11 = v114;
    if (v17 == v19 || (v81 = icu::ByteSinkUtil::appendUnchanged(v17, v19, v116, v114, v32, v115, v32), a8 = v115, a6 = v116, v11 = v114, a7 = v32, v81))
    {
      if (!a7)
      {
LABEL_140:
        v17 = a4;
        goto LABEL_183;
      }

      icu::Edits::addReplace(a7, a4 - v19, 0);
      a6 = v116;
      v11 = v114;
      a7 = v32;
LABEL_139:
      a8 = v115;
      goto LABEL_140;
    }

    goto LABEL_199;
  }

  if (sub_1951FD64C(this, v31, a3) || icu::Normalizer2Impl::hasCompBoundaryBefore(this, a4, a5))
  {
    v34 = v115;
    v33 = v116;
    v35 = v32;
    if (v17 == v19 || (v36 = icu::ByteSinkUtil::appendUnchanged(v17, v19, v116, v114, v32, v115, v115), v34 = v115, v33 = v116, v35 = v32, v36))
    {
      v37 = icu::ByteSinkUtil::appendChange(v19, a4, *(this + 6) + (v31 & 0xFFFE) + 2, *(*(this + 6) + (v31 & 0xFFFE)) & 0x1F, v33, v35, v34);
      a8 = v115;
      a6 = v116;
      v11 = v114;
      a7 = v32;
      v17 = a4;
      if (v37)
      {
        goto LABEL_183;
      }
    }

    goto LABEL_199;
  }

LABEL_131:
  a7 = v32;
LABEL_144:
  a3 = v113;
  v12 = 0uLL;
LABEL_145:
  if (v17 == v19 || *(this + 11) > v31 || *(this + 13) <= v31 && *(this + 15) > v31)
  {
    v92 = a7;
  }

  else
  {
    v92 = a7;
    v93 = v19 - 1;
    v94 = *(v19 - 1);
    v95 = *(this + 5);
    if (*(v19 - 1) < 0)
    {
      v96 = a3;
      Index = ucptrie_internalU8PrevIndex(v95, v94, v17, (v19 - 1));
      a3 = v96;
      v93 -= Index & 7;
      v94 = Index >> 3;
      v95 = *(this + 5);
    }

    if (!sub_1951FD64C(this, *(*(v95 + 8) + 2 * v94), a3))
    {
      v19 = v93;
    }

    v12 = 0uLL;
  }

  v120 = v12;
  v121 = v12;
  v119 = v12;
  __dst = this;
  v118 = &v122;
  Buffer = icu::UnicodeString::getBuffer(&v122, 8);
  *&v119 = Buffer;
  *(&v119 + 1) = Buffer;
  *&v120 = Buffer;
  if ((*(v118 + 8) & 2) != 0)
  {
    v99 = 27;
  }

  else
  {
    v99 = *(v118 + 4);
  }

  a8 = v115;
  a6 = v116;
  a7 = v92;
  v11 = v114;
  DWORD2(v120) = v99;
  BYTE12(v120) = 0;
  v100 = *v115;
  if (!Buffer && v100 <= U_ZERO_ERROR)
  {
    *v115 = U_MEMORY_ALLOCATION_ERROR;
    goto LABEL_162;
  }

  if (v100 > U_ZERO_ERROR)
  {
LABEL_162:
    v101 = 2;
    goto LABEL_163;
  }

  v103 = v92;
  icu::Normalizer2Impl::decomposeShort(this, v19, a4, 0, v113, &__dst, v115);
  v101 = 2;
  v104 = icu::Normalizer2Impl::decomposeShort(this, a4, a5, 2, v113, &__dst, v115);
  a8 = v115;
  a4 = v104;
  if (*v115 > 0)
  {
LABEL_170:
    a7 = v103;
    v11 = v114;
    goto LABEL_171;
  }

  if (v104 - v19 >= 0x80000000)
  {
    *v115 = U_INDEX_OUTOFBOUNDS_ERROR;
    v101 = 1;
    v8 = 1;
    goto LABEL_170;
  }

  icu::Normalizer2Impl::recompose(this, &__dst, 0, v113);
  if (icu::ReorderingBuffer::equals(&__dst, v19, a4))
  {
    v105 = v17;
    a7 = v103;
    v11 = v114;
    goto LABEL_174;
  }

  a7 = v103;
  v11 = v114;
  a6 = v116;
  if (v116)
  {
    a8 = v115;
    if (v17 == v19 || (v106 = icu::ByteSinkUtil::appendUnchanged(v17, v19, v116, v114, v103, v115, v103), a8 = v115, a6 = v116, v11 = v114, a7 = v103, v106))
    {
      v107 = icu::ByteSinkUtil::appendChange(v19, a4, v119, (v120 - v119) >> 1, a6, a7, a8);
      v11 = v114;
      a7 = v103;
      v105 = a4;
      if (v107)
      {
LABEL_174:
        v101 = 0;
        v17 = v105;
      }

      a8 = v115;
LABEL_171:
      a6 = v116;
    }
  }

  else
  {
    v8 = 0;
    v101 = 1;
    a8 = v115;
  }

LABEL_163:
  v13 = v119;
  if (v119)
  {
    v102 = a7;
    icu::UnicodeString::releaseBuffer(v118, (v120 - v119) >> 1);
    a8 = v115;
    a6 = v116;
    v11 = v114;
    a7 = v102;
  }

  if (!v101)
  {
    goto LABEL_183;
  }

  if (v101 == 2)
  {
    goto LABEL_199;
  }

LABEL_195:
  icu::UnicodeString::~UnicodeString(v13, &v122);
  v108 = *MEMORY[0x1E69E9840];
  return v8;
}