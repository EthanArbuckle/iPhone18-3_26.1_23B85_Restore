void TextStateRule::parseStateAllowRightWordBoundary(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v45);
  while (1)
  {
    DgnString::DgnString(&v43);
    DgnString::DgnString(v42);
    DgnString::DgnString(v40);
    DgnString::DgnString(v38);
    DgnString::DgnString(v36);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v42, LineFieldString);
    if (*(this + 32) == 1)
    {
      v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v43, v11);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v5, v6, v7, v8, v9, v10);
    v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v40, v13);
    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v38, v14);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v36, v15);
    v22 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v16, v17, v18, v19, v20, v21);
    if (*(this + 12))
    {
      v23 = *(this + 5);
    }

    else
    {
      v23 = &byte_262899963;
    }

    if (v44)
    {
      v24 = v43;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (strcmp(v23, v24))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1516, "voc/tsr", 29, "%u %500s %500s", v27, v28, *(a2 + 25));
    }

    if (v41 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1518, "voc/tsr", 10, "%u", v27, v28, *(a2 + 25));
    }

    if (v39 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1520, "voc/tsr", 11, "%u", v27, v28, *(a2 + 25));
    }

    if (v37 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1522, "voc/tsr", 12, "%u", v27, v28, *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1525, "voc/tsr", 14, "%u", v27, v28, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1530, "voc/tsr", 17, "%u", v27, v28, *(a2 + 25));
    }

    if (v46 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v45, LineFieldInteger + 1);
    }

    v29 = *(v45 + 4 * (LineFieldInteger >> 5));
    if ((v29 & (1 << LineFieldInteger)) != 0)
    {
      v33 = *this;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1543, "voc/tsr", 4, "%u %.500s %u %u", v27, v28, *(a2 + 25));
    }

    else
    {
      *(v45 + 4 * (LineFieldInteger >> 5)) = v29 | (1 << LineFieldInteger);
    }

    StateMgr::setRightWBAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v22 == 1, 1, v25, v26, v27, v28);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v30 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v34, v30);
    if (v35)
    {
      v31 = v34;
    }

    else
    {
      v31 = &byte_262899963;
    }

    v32 = strcmp(v31, "StateAllowRightWordBoundary");
    DgnString::~DgnString(&v34);
    DgnString::~DgnString(v36);
    DgnString::~DgnString(v38);
    DgnString::~DgnString(v40);
    DgnString::~DgnString(v42);
    DgnString::~DgnString(&v43);
    if (v32)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v36);
  DgnString::~DgnString(v38);
  DgnString::~DgnString(v40);
  DgnString::~DgnString(v42);
  DgnString::~DgnString(&v43);
LABEL_34:
  BitArray::~BitArray(&v45);
}

void sub_26274D1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v13 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateAllowPrecedingNonAcousticWords(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v52);
  v50 = 0;
  v51 = 0;
  while (1)
  {
    DgnString::DgnString(&v48);
    DgnString::DgnString(v47);
    DgnString::DgnString(v45);
    DgnString::DgnString(v43);
    DgnString::DgnString(v41);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v47, LineFieldString);
    if (*(this + 32) == 1)
    {
      v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v48, v11);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v5, v6, v7, v8, v9, v10);
    v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v45, v13);
    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v43, v14);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v41, v15);
    v22 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v16, v17, v18, v19, v20, v21);
    if (*(this + 12))
    {
      v23 = *(this + 5);
    }

    else
    {
      v23 = &byte_262899963;
    }

    if (v49)
    {
      v24 = v48;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (strcmp(v23, v24))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1577, "voc/tsr", 29, "%u %500s %500s", v25, v26, *(a2 + 25));
    }

    if (v46 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1579, "voc/tsr", 10, "%u", v25, v26, *(a2 + 25));
    }

    if (v44 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1581, "voc/tsr", 11, "%u", v25, v26, *(a2 + 25));
    }

    if (v42 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1583, "voc/tsr", 12, "%u", v25, v26, *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1586, "voc/tsr", 14, "%u", v25, v26, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1591, "voc/tsr", 17, "%u", v25, v26, *(a2 + 25));
    }

    if (v53 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v52, LineFieldInteger + 1);
    }

    v27 = *(v52 + 4 * (LineFieldInteger >> 5));
    if ((v27 & (1 << LineFieldInteger)) != 0)
    {
      v38 = *this;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1605, "voc/tsr", 4, "%u %.500s %u %u", v25, v26, *(a2 + 25));
    }

    else
    {
      *(v52 + 4 * (LineFieldInteger >> 5)) = v27 | (1 << LineFieldInteger);
    }

    v28 = v51;
    while (v28 < LineFieldInteger + 1)
    {
      if (v28 == HIDWORD(v51))
      {
        DgnPrimArray<char>::reallocElts(&v50, 1, 1);
        v28 = v51;
      }

      *(v50 + v28) = 0;
      v28 = v51 + 1;
      LODWORD(v51) = v51 + 1;
    }

    *(v50 + LineFieldInteger) = v22;
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v29 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v39, v29);
    if (v40)
    {
      v30 = v39;
    }

    else
    {
      v30 = &byte_262899963;
    }

    v31 = strcmp(v30, "StateAllowPrecedingNonAcousticWords");
    DgnString::~DgnString(&v39);
    DgnString::~DgnString(v41);
    DgnString::~DgnString(v43);
    DgnString::~DgnString(v45);
    DgnString::~DgnString(v47);
    DgnString::~DgnString(&v48);
    if (v31)
    {
      goto LABEL_39;
    }
  }

  DgnString::~DgnString(v41);
  DgnString::~DgnString(v43);
  DgnString::~DgnString(v45);
  DgnString::~DgnString(v47);
  DgnString::~DgnString(&v48);
LABEL_39:
  if (v51)
  {
    StateMgr::upgradePrecedingNonAcousticWordsAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), &v50, v32, v33, v34, v35, v36, v37);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v50);
  BitArray::~BitArray(&v52);
}

void sub_26274D6A4(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 - 120);
  BitArray::~BitArray((v1 - 104));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateAllowPrefiltering(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v45);
  while (1)
  {
    DgnString::DgnString(&v43);
    DgnString::DgnString(v42);
    DgnString::DgnString(v40);
    DgnString::DgnString(v38);
    DgnString::DgnString(v36);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v42, LineFieldString);
    if (*(this + 32) == 1)
    {
      v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v43, v11);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v5, v6, v7, v8, v9, v10);
    v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v40, v13);
    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v38, v14);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v36, v15);
    v22 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v16, v17, v18, v19, v20, v21);
    if (*(this + 12))
    {
      v23 = *(this + 5);
    }

    else
    {
      v23 = &byte_262899963;
    }

    if (v44)
    {
      v24 = v43;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (strcmp(v23, v24))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1650, "voc/tsr", 29, "%u %500s %500s", v27, v28, *(a2 + 25));
    }

    if (v41 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1652, "voc/tsr", 10, "%u", v27, v28, *(a2 + 25));
    }

    if (v39 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1654, "voc/tsr", 11, "%u", v27, v28, *(a2 + 25));
    }

    if (v37 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1656, "voc/tsr", 12, "%u", v27, v28, *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1659, "voc/tsr", 14, "%u", v27, v28, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1664, "voc/tsr", 17, "%u", v27, v28, *(a2 + 25));
    }

    if (v46 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v45, LineFieldInteger + 1);
    }

    v29 = *(v45 + 4 * (LineFieldInteger >> 5));
    if ((v29 & (1 << LineFieldInteger)) != 0)
    {
      v33 = *this;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1677, "voc/tsr", 4, "%u %.500s %u %u", v27, v28, *(a2 + 25));
    }

    else
    {
      *(v45 + 4 * (LineFieldInteger >> 5)) = v29 | (1 << LineFieldInteger);
    }

    StateMgr::setPrefilteringAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v22 == 1, 1, v25, v26, v27, v28);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v30 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v34, v30);
    if (v35)
    {
      v31 = v34;
    }

    else
    {
      v31 = &byte_262899963;
    }

    v32 = strcmp(v31, "StateAllowPrefiltering");
    DgnString::~DgnString(&v34);
    DgnString::~DgnString(v36);
    DgnString::~DgnString(v38);
    DgnString::~DgnString(v40);
    DgnString::~DgnString(v42);
    DgnString::~DgnString(&v43);
    if (v32)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v36);
  DgnString::~DgnString(v38);
  DgnString::~DgnString(v40);
  DgnString::~DgnString(v42);
  DgnString::~DgnString(&v43);
LABEL_34:
  BitArray::~BitArray(&v45);
}

void sub_26274DB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v13 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateAllowEndOfUtt(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v45);
  while (1)
  {
    DgnString::DgnString(&v43);
    DgnString::DgnString(v42);
    DgnString::DgnString(v40);
    DgnString::DgnString(v38);
    DgnString::DgnString(v36);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v42, LineFieldString);
    if (*(this + 32) == 1)
    {
      v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v43, v11);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v5, v6, v7, v8, v9, v10);
    v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v40, v13);
    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v38, v14);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v36, v15);
    v22 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v16, v17, v18, v19, v20, v21);
    if (*(this + 12))
    {
      v23 = *(this + 5);
    }

    else
    {
      v23 = &byte_262899963;
    }

    if (v44)
    {
      v24 = v43;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (strcmp(v23, v24))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1708, "voc/tsr", 29, "%u %500s %500s", v27, v28, *(a2 + 25));
    }

    if (v41 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1710, "voc/tsr", 10, "%u", v27, v28, *(a2 + 25));
    }

    if (v39 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1712, "voc/tsr", 11, "%u", v27, v28, *(a2 + 25));
    }

    if (v37 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1714, "voc/tsr", 12, "%u", v27, v28, *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1717, "voc/tsr", 14, "%u", v27, v28, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1722, "voc/tsr", 17, "%u", v27, v28, *(a2 + 25));
    }

    if (v46 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v45, LineFieldInteger + 1);
    }

    v29 = *(v45 + 4 * (LineFieldInteger >> 5));
    if ((v29 & (1 << LineFieldInteger)) != 0)
    {
      v33 = *this;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1735, "voc/tsr", 4, "%u %.500s %u %u", v27, v28, *(a2 + 25));
    }

    else
    {
      *(v45 + 4 * (LineFieldInteger >> 5)) = v29 | (1 << LineFieldInteger);
    }

    StateMgr::setEndOfUtteranceAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v22 == 1, 1, v25, v26, v27, v28);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v30 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v34, v30);
    if (v35)
    {
      v31 = v34;
    }

    else
    {
      v31 = &byte_262899963;
    }

    v32 = strcmp(v31, "StateAllowEndOfUtt");
    DgnString::~DgnString(&v34);
    DgnString::~DgnString(v36);
    DgnString::~DgnString(v38);
    DgnString::~DgnString(v40);
    DgnString::~DgnString(v42);
    DgnString::~DgnString(&v43);
    if (v32)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v36);
  DgnString::~DgnString(v38);
  DgnString::~DgnString(v40);
  DgnString::~DgnString(v42);
  DgnString::~DgnString(&v43);
LABEL_34:
  BitArray::~BitArray(&v45);
}

void sub_26274DF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v13 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateAliasState(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v45);
  while (1)
  {
    DgnString::DgnString(&v43);
    DgnString::DgnString(v42);
    DgnString::DgnString(v40);
    DgnString::DgnString(v38);
    DgnString::DgnString(v36);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v42, LineFieldString);
    if (*(this + 32) == 1)
    {
      v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v43, v11);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v5, v6, v7, v8, v9, v10);
    v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v40, v13);
    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v38, v14);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v36, v15);
    v22 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v16, v17, v18, v19, v20, v21);
    if (*(this + 12))
    {
      v23 = *(this + 5);
    }

    else
    {
      v23 = &byte_262899963;
    }

    if (v44)
    {
      v24 = v43;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (strcmp(v23, v24))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1767, "voc/tsr", 29, "%u %500s %500s", v27, v28, *(a2 + 25));
    }

    if (v41 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1769, "voc/tsr", 10, "%u", v27, v28, *(a2 + 25));
    }

    if (v39 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1771, "voc/tsr", 11, "%u", v27, v28, *(a2 + 25));
    }

    if (v37 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1773, "voc/tsr", 12, "%u", v27, v28, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1778, "voc/tsr", 17, "%u", v27, v28, *(a2 + 25));
    }

    if (v22 <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1782, "voc/tsr", 18, "%u", v27, v28, *(a2 + 25));
    }

    if (v46 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v45, LineFieldInteger + 1);
    }

    v29 = *(v45 + 4 * (LineFieldInteger >> 5));
    if ((v29 & (1 << LineFieldInteger)) != 0)
    {
      v33 = *this;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1796, "voc/tsr", 4, "%u %.500s %u %u", v27, v28, *(a2 + 25));
    }

    else
    {
      *(v45 + 4 * (LineFieldInteger >> 5)) = v29 | (1 << LineFieldInteger);
    }

    StateMgr::setWordAliasState(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v22, 1, v25, v26, v27, v28);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v30 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v34, v30);
    if (v35)
    {
      v31 = v34;
    }

    else
    {
      v31 = &byte_262899963;
    }

    v32 = strcmp(v31, "StateAliasState");
    DgnString::~DgnString(&v34);
    DgnString::~DgnString(v36);
    DgnString::~DgnString(v38);
    DgnString::~DgnString(v40);
    DgnString::~DgnString(v42);
    DgnString::~DgnString(&v43);
    if (v32)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v36);
  DgnString::~DgnString(v38);
  DgnString::~DgnString(v40);
  DgnString::~DgnString(v42);
  DgnString::~DgnString(&v43);
LABEL_34:
  BitArray::~BitArray(&v45);
}

void sub_26274E3A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  BitArray::~BitArray((v11 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStatePrecedingNonAcousticWordState(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v45);
  while (1)
  {
    DgnString::DgnString(&v43);
    DgnString::DgnString(v42);
    DgnString::DgnString(v40);
    DgnString::DgnString(v38);
    DgnString::DgnString(v36);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v42, LineFieldString);
    if (*(this + 32) == 1)
    {
      v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v43, v11);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v5, v6, v7, v8, v9, v10);
    v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v40, v13);
    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v38, v14);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v36, v15);
    v22 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v16, v17, v18, v19, v20, v21);
    if (*(this + 12))
    {
      v23 = *(this + 5);
    }

    else
    {
      v23 = &byte_262899963;
    }

    if (v44)
    {
      v24 = v43;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (strcmp(v23, v24))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1829, "voc/tsr", 29, "%u %500s %500s", v27, v28, *(a2 + 25));
    }

    if (v41 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1831, "voc/tsr", 10, "%u", v27, v28, *(a2 + 25));
    }

    if (v39 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1833, "voc/tsr", 11, "%u", v27, v28, *(a2 + 25));
    }

    if (v37 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1835, "voc/tsr", 12, "%u", v27, v28, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1840, "voc/tsr", 17, "%u", v27, v28, *(a2 + 25));
    }

    if (v22 <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1844, "voc/tsr", 18, "%u", v27, v28, *(a2 + 25));
    }

    if (v46 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v45, LineFieldInteger + 1);
    }

    v29 = *(v45 + 4 * (LineFieldInteger >> 5));
    if ((v29 & (1 << LineFieldInteger)) != 0)
    {
      v33 = *this;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1860, "voc/tsr", 4, "%u %.500s %u %u", v27, v28, *(a2 + 25));
    }

    else
    {
      *(v45 + 4 * (LineFieldInteger >> 5)) = v29 | (1 << LineFieldInteger);
    }

    StateMgr::setPrecedingNonAcousticWordState(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v22, 1, v25, v26, v27, v28);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v30 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v34, v30);
    if (v35)
    {
      v31 = v34;
    }

    else
    {
      v31 = &byte_262899963;
    }

    v32 = strcmp(v31, "StatePrecedingNonAcousticWordState");
    DgnString::~DgnString(&v34);
    DgnString::~DgnString(v36);
    DgnString::~DgnString(v38);
    DgnString::~DgnString(v40);
    DgnString::~DgnString(v42);
    DgnString::~DgnString(&v43);
    if (v32)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v36);
  DgnString::~DgnString(v38);
  DgnString::~DgnString(v40);
  DgnString::~DgnString(v42);
  DgnString::~DgnString(&v43);
LABEL_34:
  BitArray::~BitArray(&v45);
}

void sub_26274E7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  BitArray::~BitArray((v11 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStatePrecedingNonAcousticWordRequired(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v45);
  while (1)
  {
    DgnString::DgnString(&v43);
    DgnString::DgnString(v42);
    DgnString::DgnString(v40);
    DgnString::DgnString(v38);
    DgnString::DgnString(v36);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v42, LineFieldString);
    if (*(this + 32) == 1)
    {
      v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v43, v11);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v5, v6, v7, v8, v9, v10);
    v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v40, v13);
    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v38, v14);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v36, v15);
    v22 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v16, v17, v18, v19, v20, v21);
    if (*(this + 12))
    {
      v23 = *(this + 5);
    }

    else
    {
      v23 = &byte_262899963;
    }

    if (v44)
    {
      v24 = v43;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (strcmp(v23, v24))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1895, "voc/tsr", 29, "%u %500s %500s", v27, v28, *(a2 + 25));
    }

    if (v41 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1897, "voc/tsr", 10, "%u", v27, v28, *(a2 + 25));
    }

    if (v39 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1899, "voc/tsr", 11, "%u", v27, v28, *(a2 + 25));
    }

    if (v37 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1901, "voc/tsr", 12, "%u", v27, v28, *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1904, "voc/tsr", 14, "%u", v27, v28, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1909, "voc/tsr", 17, "%u", v27, v28, *(a2 + 25));
    }

    if (v46 < LineFieldInteger + 1)
    {
      BitArray::setSize(&v45, LineFieldInteger + 1);
    }

    v29 = *(v45 + 4 * (LineFieldInteger >> 5));
    if ((v29 & (1 << LineFieldInteger)) != 0)
    {
      v33 = *this;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1923, "voc/tsr", 4, "%u %.500s %u %u", v27, v28, *(a2 + 25));
    }

    else
    {
      *(v45 + 4 * (LineFieldInteger >> 5)) = v29 | (1 << LineFieldInteger);
    }

    StateMgr::setPrecedingNonAcousticWordRequired(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), LineFieldInteger, v22 == 1, 1, v25, v26, v27, v28);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v30 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v34, v30);
    if (v35)
    {
      v31 = v34;
    }

    else
    {
      v31 = &byte_262899963;
    }

    v32 = strcmp(v31, "StatePrecedingNonAcousticWordRequired");
    DgnString::~DgnString(&v34);
    DgnString::~DgnString(v36);
    DgnString::~DgnString(v38);
    DgnString::~DgnString(v40);
    DgnString::~DgnString(v42);
    DgnString::~DgnString(&v43);
    if (v32)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v36);
  DgnString::~DgnString(v38);
  DgnString::~DgnString(v40);
  DgnString::~DgnString(v42);
  DgnString::~DgnString(&v43);
LABEL_34:
  BitArray::~BitArray(&v45);
}

void sub_26274EC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v13 - 96));
  _Unwind_Resume(a1);
}

uint64_t TextStateRule::parseStateIncludedWord(TextStateRule *this, DgnTextFileParser *a2)
{
  v70 = 0;
  v71 = 0;
  DgnString::DgnString(&v68);
  v4 = 0;
  LOWORD(v5) = 127;
  do
  {
    DgnString::DgnString(&v66);
    DgnString::DgnString(v65);
    DgnString::DgnString(&v63);
    DgnString::DgnString(v61);
    DgnString::DgnString(v59);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v65, LineFieldString);
    if (*(this + 32) == 1)
    {
      v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v66, v13);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v7, v8, v9, v10, v11, v12);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v63, v15);
    v16 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v61, v16);
    v17 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v59, v17);
    v24 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v18, v19, v20, v21, v22, v23);
    if (*(this + 12))
    {
      v25 = *(this + 5);
    }

    else
    {
      v25 = &byte_262899963;
    }

    if (v67)
    {
      v26 = v66;
    }

    else
    {
      v26 = &byte_262899963;
    }

    if (strcmp(v25, v26))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1959, "voc/tsr", 29, "%u %500s %500s", v27, v28, *(a2 + 25));
    }

    if (v62 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1961, "voc/tsr", 11, "%u", v27, v28, *(a2 + 25));
    }

    if (v60 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1963, "voc/tsr", 12, "%u", v27, v28, *(a2 + 25));
    }

    if (v24)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1965, "voc/tsr", 13, "%u", v27, v28, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1970, "voc/tsr", 17, "%u", v27, v28, *(a2 + 25));
    }

    if (v4 == 0 && v5 == 127)
    {
      LOWORD(v5) = *this;
      v29 = LineFieldInteger;
    }

    else
    {
      v29 = v4;
    }

    if (v64)
    {
      v30 = v63;
    }

    else
    {
      v30 = &byte_262899963;
    }

    WordId = GetWordId(*this, v30, "StateIncludedWord", ".tsr", 0, 0, v27, v28);
    if (LineFieldInteger != v29 || (v38 = v5, *this != v5))
    {
      if (v69 < v29 + 1)
      {
        BitArray::setSize(&v68, v29 + 1);
      }

      v39 = *(v68 + 4 * (v29 >> 5));
      if ((v39 & (1 << v29)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 1994, "voc/tsr", 4, "%u %.500s %u %u", v35, v36, *(a2 + 25));
      }

      else
      {
        *(v68 + 4 * (v29 >> 5)) = v39 | (1 << v29);
      }

      StateMgr::addWordIdArray(*(*(**VocMgr::smpVocMgr + 8 * v5) + 56), v29, &v70, 1, v33, v34, v35, v36);
      LODWORD(v71) = 0;
      v38 = *this;
    }

    v57 = 0;
    v58 = 0;
    v40 = *(*(**VocMgr::smpVocMgr + 8 * v38) + 48);
    WordList::verifyVisible(v40, WordId, v31, v32, v33, v34, v35, v36);
    WordList::lookupAll(v40, WordId, &v57);
    v41 = v58;
    if ((v71 + v58) > HIDWORD(v71))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v70, (v71 + v58 - HIDWORD(v71)), 1);
      v41 = v58;
    }

    if (v41)
    {
      v42 = 0;
      v43 = v57;
      v44 = v70;
      do
      {
        *(v44 + 4 * (v42 + v71)) = *(v43 + 4 * v42);
        ++v42;
        v45 = v58;
      }

      while (v42 < v58);
    }

    else
    {
      v45 = 0;
    }

    LODWORD(v71) = v71 + v45;
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v46 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v55, v46);
      if (v56)
      {
        v47 = v55;
      }

      else
      {
        v47 = &byte_262899963;
      }

      v48 = strcmp(v47, "StateIncludedWord") == 0;
      DgnString::~DgnString(&v55);
    }

    else
    {
      v48 = 0;
    }

    v5 = *this;
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v57);
    DgnString::~DgnString(v59);
    DgnString::~DgnString(v61);
    DgnString::~DgnString(&v63);
    DgnString::~DgnString(v65);
    DgnString::~DgnString(&v66);
    v4 = LineFieldInteger;
  }

  while (v48);
  if (v69 < LineFieldInteger + 1)
  {
    BitArray::setSize(&v68, LineFieldInteger + 1);
  }

  v53 = *(v68 + 4 * (LineFieldInteger >> 5));
  if ((v53 & (1 << LineFieldInteger)) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2035, "voc/tsr", 4, "%u %.500s %u %u", v51, v52, *(a2 + 25));
  }

  else
  {
    *(v68 + 4 * (LineFieldInteger >> 5)) = v53 | (1 << LineFieldInteger);
  }

  StateMgr::addWordIdArray(*(*(**VocMgr::smpVocMgr + 8 * v5) + 56), LineFieldInteger, &v70, 1, v49, v50, v51, v52);
  BitArray::~BitArray(&v68);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v70);
}

uint64_t TextStateRule::parseStateTransitionState(TextStateRule *this, DgnTextFileParser *a2)
{
  v93 = 0;
  v94 = 0;
  DgnString::DgnString(&v91);
  v4 = 0;
  v5 = 127;
  v6 = "StateTransitionState";
  do
  {
    DgnString::DgnString(&v89);
    DgnString::DgnString(v88);
    DgnString::DgnString(&v86);
    DgnString::DgnString(v84);
    DgnString::DgnString(v82);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v88, LineFieldString);
    if (*(this + 32) == 1)
    {
      v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v89, v14);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v8, v9, v10, v11, v12, v13);
    v16 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v86, v16);
    v17 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v84, v17);
    v18 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v82, v18);
    v25 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v19, v20, v21, v22, v23, v24);
    if (*(this + 12))
    {
      v26 = *(this + 5);
    }

    else
    {
      v26 = &byte_262899963;
    }

    if (v90)
    {
      v27 = v89;
    }

    else
    {
      v27 = &byte_262899963;
    }

    if (strcmp(v26, v27))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2062, "voc/tsr", 29, "%u %500s %500s", v31, v32, *(a2 + 25));
    }

    if (v85 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2064, "voc/tsr", 11, "%u", v31, v32, *(a2 + 25));
    }

    if (v83 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2066, "voc/tsr", 12, "%u", v31, v32, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2071, "voc/tsr", 17, "%u", v31, v32, *(a2 + 25));
    }

    if (v25 <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2075, "voc/tsr", 18, "%u", v31, v32, *(a2 + 25));
    }

    if (!v4 && v5 == 127)
    {
      v5 = *this;
      v4 = LineFieldInteger;
    }

    if ((*(this + 32) & 1) == 0)
    {
      v33 = v87 ? v86 : &byte_262899963;
      if (*v33)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2088, "voc/tsr", 10, "%u", v31, v32, *(a2 + 25));
      }
    }

    if (v4 == LineFieldInteger && v5 == *this)
    {
      v34 = v94;
    }

    else
    {
      if (v92 < v4 + 1)
      {
        BitArray::setSize(&v91, v4 + 1);
      }

      v35 = *(v91 + 4 * (v4 >> 5));
      if ((v35 & (1 << v4)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2105, "voc/tsr", 4, "%u %.500s %u %u", v31, v32, *(a2 + 25));
      }

      else
      {
        *(v91 + 4 * (v4 >> 5)) = v35 | (1 << v4);
      }

      v79 = v25;
      v36 = v6;
      v37 = LineFieldInteger;
      v38 = *(*(**VocMgr::smpVocMgr + 8 * v5) + 56);
      RightWBAllowed = StateMgr::getRightWBAllowed(v38, v4, 1, v28, v29, v30, v31, v32);
      if (StateMgr::getSkipAllowed(v38, v4, 1, v40, v41, v42, v43, v44) && RightWBAllowed != StateMgr::getLeftWBAllowed(v38, v4, 1, v45, v46, v47, v48, v49))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2122, "voc/tsr", 9, "%u %u", v48, v49, *(a2 + 25));
      }

      if (v94)
      {
        v50 = 0;
        do
        {
          v51 = *(*(**VocMgr::smpVocMgr + 8 * *this) + 56);
          if (RightWBAllowed != StateMgr::getLeftWBAllowed(v51, *(v93 + 4 * v50), 1, v45, v46, v47, v48, v49))
          {
            v77 = *(v93 + 4 * v50);
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2132, "voc/tsr", 6, "%u %u %u", v55, v56, *(a2 + 25));
          }

          if (StateMgr::getSkipAllowed(v51, *(v93 + 4 * v50), 1, v52, v53, v54, v55, v56) && RightWBAllowed != StateMgr::getRightWBAllowed(v51, *(v93 + 4 * v50), 1, v45, v46, v47, v48, v49))
          {
            v76 = *(v93 + 4 * v50);
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2139, "voc/tsr", 9, "%u %u", v48, v49, *(a2 + 25));
          }

          ++v50;
        }

        while (v50 < v94);
      }

      StateMgr::addStateTransition(v38, v4, &v93, 1, 0, 0, v48, v49);
      v34 = 0;
      LODWORD(v94) = 0;
      LineFieldInteger = v37;
      v6 = v36;
      v25 = v79;
    }

    if (v34 == HIDWORD(v94))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v93, 1, 1);
      v34 = v94;
    }

    *(v93 + 4 * v34) = v25;
    LODWORD(v94) = v94 + 1;
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v57 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v80, v57);
      if (v81)
      {
        v58 = v80;
      }

      else
      {
        v58 = &byte_262899963;
      }

      v59 = strcmp(v58, v6) == 0;
      DgnString::~DgnString(&v80);
    }

    else
    {
      v59 = 0;
    }

    v5 = *this;
    DgnString::~DgnString(v82);
    DgnString::~DgnString(v84);
    DgnString::~DgnString(&v86);
    DgnString::~DgnString(v88);
    DgnString::~DgnString(&v89);
    v4 = LineFieldInteger;
  }

  while (v59);
  if (v92 < LineFieldInteger + 1)
  {
    BitArray::setSize(&v91, LineFieldInteger + 1);
  }

  v65 = *(v91 + 4 * (LineFieldInteger >> 5));
  if ((v65 & (1 << LineFieldInteger)) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2171, "voc/tsr", 4, "%u %.500s %u %u", v63, v64, *(a2 + 25));
  }

  else
  {
    *(v91 + 4 * (LineFieldInteger >> 5)) = v65 | (1 << LineFieldInteger);
  }

  v66 = *(*(**VocMgr::smpVocMgr + 8 * v5) + 56);
  v67 = StateMgr::getRightWBAllowed(v66, LineFieldInteger, 1, v60, v61, v62, v63, v64);
  if (v94)
  {
    v73 = v67;
    v74 = 0;
    do
    {
      if (v73 != StateMgr::getLeftWBAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 56), *(v93 + 4 * v74), 1, v68, v69, v70, v71, v72))
      {
        v78 = *(v93 + 4 * v74);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2188, "voc/tsr", 6, "%u %u %u", v71, v72, *(a2 + 25));
      }

      ++v74;
    }

    while (v74 < v94);
  }

  StateMgr::addStateTransition(v66, LineFieldInteger, &v93, 1, 0, 0, v71, v72);
  BitArray::~BitArray(&v91);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v93);
}

uint64_t TextStateRule::parseStateAllowedCollations(TextStateRule *this, DgnTextFileParser *a2)
{
  v60 = 0;
  v61 = 0;
  DgnString::DgnString(&v58);
  v4 = 0;
  v5 = 127;
  do
  {
    DgnString::DgnString(&v56);
    DgnString::DgnString(v55);
    DgnString::DgnString(&v53);
    DgnString::DgnString(v51);
    DgnString::DgnString(v50);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v55, LineFieldString);
    if (*(this + 32) == 1)
    {
      v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v56, v13);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v7, v8, v9, v10, v11, v12);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v53, v15);
    v16 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v51, v16);
    v17 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v50, v17);
    v24 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v18, v19, v20, v21, v22, v23);
    if (*(this + 12))
    {
      v25 = *(this + 5);
    }

    else
    {
      v25 = &byte_262899963;
    }

    if (v57)
    {
      v26 = v56;
    }

    else
    {
      v26 = &byte_262899963;
    }

    if (strcmp(v25, v26))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2210, "voc/tsr", 29, "%u %500s %500s", v27, v28, *(a2 + 25));
    }

    if (v52 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2212, "voc/tsr", 11, "%u", v27, v28, *(a2 + 25));
    }

    if (v24)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2214, "voc/tsr", 13, "%u", v27, v28, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2219, "voc/tsr", 17, "%u", v27, v28, *(a2 + 25));
    }

    if (!v4 && v5 == 127)
    {
      v5 = *this;
      v4 = LineFieldInteger;
    }

    if (v54)
    {
      v29 = v53;
    }

    else
    {
      v29 = &byte_262899963;
    }

    if (!strcmp(v29, "_IDENTITY"))
    {
      v36 = -2;
    }

    else
    {
      v36 = CollMgr::lookupCollation(*(*(**VocMgr::smpVocMgr + 8 * *this) + 16), v29, v30, v31, v32, v33, v34, v35);
    }

    if (v4 == LineFieldInteger && v5 == *this)
    {
      v37 = v61;
    }

    else
    {
      if (v59 < v4 + 1)
      {
        BitArray::setSize(&v58, v4 + 1);
      }

      v38 = *(v58 + 4 * (v4 >> 5));
      if ((v38 & (1 << v4)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2246, "voc/tsr", 4, "%u %.500s %u %u", v34, v35, *(a2 + 25));
      }

      else
      {
        *(v58 + 4 * (v4 >> 5)) = v38 | (1 << v4);
      }

      StateMgr::setColls(*(*(**VocMgr::smpVocMgr + 8 * v5) + 56), v4, &v60, 1, v32, v33, v34, v35);
      v37 = 0;
      LODWORD(v61) = 0;
    }

    if (v37 == HIDWORD(v61))
    {
      DgnPrimArray<short>::reallocElts(&v60, 1, 1);
      v37 = v61;
    }

    *(v60 + 2 * v37) = v36;
    LODWORD(v61) = v37 + 1;
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v39 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v48, v39);
      if (v49)
      {
        v40 = v48;
      }

      else
      {
        v40 = &byte_262899963;
      }

      v41 = strcmp(v40, "StateAllowedCollations") == 0;
      DgnString::~DgnString(&v48);
    }

    else
    {
      v41 = 0;
    }

    v5 = *this;
    DgnString::~DgnString(v50);
    DgnString::~DgnString(v51);
    DgnString::~DgnString(&v53);
    DgnString::~DgnString(v55);
    DgnString::~DgnString(&v56);
    v4 = LineFieldInteger;
  }

  while (v41);
  if (v59 < LineFieldInteger + 1)
  {
    BitArray::setSize(&v58, LineFieldInteger + 1);
  }

  v46 = *(v58 + 4 * (LineFieldInteger >> 5));
  if ((v46 & (1 << LineFieldInteger)) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2282, "voc/tsr", 4, "%u %.500s %u %u", v44, v45, *(a2 + 25));
  }

  else
  {
    *(v58 + 4 * (LineFieldInteger >> 5)) = v46 | (1 << LineFieldInteger);
  }

  StateMgr::setColls(*(*(**VocMgr::smpVocMgr + 8 * v5) + 56), LineFieldInteger, &v60, 1, v42, v43, v44, v45);
  BitArray::~BitArray(&v58);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v60);
}

void TextStateRule::parseStateEnv(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v68);
  v4 = 0;
  v66 = 0;
  v67 = 0;
  v5 = 127;
  do
  {
    DgnString::DgnString(&v64);
    DgnString::DgnString(v63);
    DgnString::DgnString(&v61);
    DgnString::DgnString(v59);
    DgnString::DgnString(v57);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v63, LineFieldString);
    if (*(this + 32) == 1)
    {
      v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v64, v13);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v7, v8, v9, v10, v11, v12);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v61, v15);
    v16 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v59, v16);
    v17 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v57, v17);
    v24 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v18, v19, v20, v21, v22, v23);
    if (*(this + 12))
    {
      v25 = *(this + 5);
    }

    else
    {
      v25 = &byte_262899963;
    }

    if (v65)
    {
      v26 = v64;
    }

    else
    {
      v26 = &byte_262899963;
    }

    if (strcmp(v25, v26))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2307, "voc/tsr", 29, "%u %500s %500s", v31, v32, *(a2 + 25));
    }

    if (v58 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2309, "voc/tsr", 12, "%u", v31, v32, *(a2 + 25));
    }

    if (v24)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2311, "voc/tsr", 13, "%u", v31, v32, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2316, "voc/tsr", 17, "%u", v31, v32, *(a2 + 25));
    }

    if ((v4 || v5 != 127) && (LineFieldInteger != v4 || *this != v5))
    {
      if (v69 < v4 + 1)
      {
        BitArray::setSize(&v68, v4 + 1);
      }

      v33 = *(v68 + 4 * (v4 >> 5));
      if ((v33 & (1 << v4)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2338, "voc/tsr", 4, "%u %.500s %u %u", v31, v32, *(a2 + 25));
      }

      else
      {
        *(v68 + 4 * (v4 >> 5)) = v33 | (1 << v4);
      }
    }

    v34 = *(*(**VocMgr::smpVocMgr + 8 * *this) + 56);
    StateMgr::verifyVisible(v34, LineFieldInteger, v27, v28, v29, v30, v31, v32);
    v35 = *(v34 + 94);
    ItemEnvIdMaybeNew = EnvMgr::getItemEnvIdMaybeNew(v35, LineFieldInteger, 1, v36, v37, v38, v39, v40);
    if (v62 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2353, "voc/tsr", 15, "%u", v41, v42, *(a2 + 25));
    }

    if (v60 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2355, "voc/tsr", 16, "%u", v41, v42, *(a2 + 25));
    }

    if (*(a2 + 10))
    {
      v44 = *(a2 + 4);
    }

    v45 = *(a2 + 25);
    DgnTextFile::convertFromEnvValueFormat(v59, &v66);
    if (v62)
    {
      v48 = v61;
    }

    else
    {
      v48 = &byte_262899963;
    }

    EnvMgr::setData(v35, ItemEnvIdMaybeNew, v48, v66, v67, 1, v46, v47);
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v49 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v55, v49);
      if (v56)
      {
        v50 = v55;
      }

      else
      {
        v50 = &byte_262899963;
      }

      v51 = strcmp(v50, "StateEnv") == 0;
      DgnString::~DgnString(&v55);
    }

    else
    {
      v51 = 0;
    }

    v5 = *this;
    DgnString::~DgnString(v57);
    DgnString::~DgnString(v59);
    DgnString::~DgnString(&v61);
    DgnString::~DgnString(v63);
    DgnString::~DgnString(&v64);
    v4 = LineFieldInteger;
  }

  while (v51);
  if (v69 < LineFieldInteger + 1)
  {
    BitArray::setSize(&v68, LineFieldInteger + 1);
  }

  v54 = *(v68 + 4 * (LineFieldInteger >> 5));
  if ((v54 & (1 << LineFieldInteger)) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2383, "voc/tsr", 4, "%u %.500s %u %u", v52, v53, *(a2 + 25));
  }

  else
  {
    *(v68 + 4 * (LineFieldInteger >> 5)) = v54 | (1 << LineFieldInteger);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v66);
  BitArray::~BitArray(&v68);
}

void sub_2627504FC(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1 - 120);
  BitArray::~BitArray((v1 - 104));
  _Unwind_Resume(a1);
}

void TextStateRule::parseStateIncludedWordEnv(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v79);
  v4 = 0;
  v77 = 0;
  v78 = 0;
  v5 = 127;
  do
  {
    DgnString::DgnString(&v75);
    DgnString::DgnString(v74);
    DgnString::DgnString(&v72);
    DgnString::DgnString(&v70);
    DgnString::DgnString(v68);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v74, LineFieldString);
    if (*(this + 32) == 1)
    {
      v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v75, v13);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v7, v8, v9, v10, v11, v12);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v72, v15);
    v16 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(&v70, v16);
    v17 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v68, v17);
    v24 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v18, v19, v20, v21, v22, v23);
    if (*(this + 12))
    {
      v25 = *(this + 5);
    }

    else
    {
      v25 = &byte_262899963;
    }

    if (v76)
    {
      v26 = v75;
    }

    else
    {
      v26 = &byte_262899963;
    }

    if (strcmp(v25, v26))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2407, "voc/tsr", 29, "%u %500s %500s", v27, v28, *(a2 + 25));
    }

    if (v24)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2409, "voc/tsr", 13, "%u", v27, v28, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2414, "voc/tsr", 17, "%u", v27, v28, *(a2 + 25));
    }

    if ((v4 || v5 != 127) && (LineFieldInteger != v4 || *this != v5))
    {
      if (v80 < v4 + 1)
      {
        BitArray::setSize(&v79, v4 + 1);
      }

      v29 = *(v79 + 4 * (v4 >> 5));
      if ((v29 & (1 << v4)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2436, "voc/tsr", 4, "%u %.500s %u %u", v27, v28, *(a2 + 25));
      }

      else
      {
        *(v79 + 4 * (v4 >> 5)) = v29 | (1 << v4);
      }
    }

    if (v73)
    {
      v30 = v72;
    }

    else
    {
      v30 = &byte_262899963;
    }

    WordId = GetWordId(*this, v30, "StateIncludedWordEnv word", ".tsr", 0, 0, v27, v28);
    v4 = LineFieldInteger;
    v32 = *(**VocMgr::smpVocMgr + 8 * *this);
    v33 = *(v32 + 48);
    v34 = *(v32 + 56);
    StateMgr::verifyVisible(v34, LineFieldInteger, v35, v36, v37, v38, v39, v40);
    WordList::verifyVisible(v33, WordId, v41, v42, v43, v44, v45, v46);
    v47 = *(v34 + 95);
    ItemPairEnvIdMaybeNew = EnvMgr::getItemPairEnvIdMaybeNew(v47, LineFieldInteger, WordId, 1, v48, v49, v50, v51);
    if (v71 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2456, "voc/tsr", 16, "%u", v52, v53, *(a2 + 25));
    }

    if (v69 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2458, "voc/tsr", 24, "%u", v52, v53, *(a2 + 25));
    }

    if (*(a2 + 10))
    {
      v55 = *(a2 + 4);
    }

    v56 = *(a2 + 25);
    DgnTextFile::convertFromEnvValueFormat(v68, &v77);
    if (v71)
    {
      v59 = v70;
    }

    else
    {
      v59 = &byte_262899963;
    }

    EnvMgr::setData(v47, ItemPairEnvIdMaybeNew, v59, v77, v78, 1, v57, v58);
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v60 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v66, v60);
      if (v67)
      {
        v61 = v66;
      }

      else
      {
        v61 = &byte_262899963;
      }

      v62 = strcmp(v61, "StateIncludedWordEnv") == 0;
      DgnString::~DgnString(&v66);
    }

    else
    {
      v62 = 0;
    }

    v5 = *this;
    DgnString::~DgnString(v68);
    DgnString::~DgnString(&v70);
    DgnString::~DgnString(&v72);
    DgnString::~DgnString(v74);
    DgnString::~DgnString(&v75);
  }

  while (v62);
  if (v80 < LineFieldInteger + 1)
  {
    BitArray::setSize(&v79, LineFieldInteger + 1);
  }

  v65 = *(v79 + 4 * (LineFieldInteger >> 5));
  if ((v65 & (1 << LineFieldInteger)) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2486, "voc/tsr", 4, "%u %.500s %u %u", v63, v64, *(a2 + 25));
  }

  else
  {
    *(v79 + 4 * (LineFieldInteger >> 5)) = v65 | (1 << LineFieldInteger);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v77);
  BitArray::~BitArray(&v79);
}

void sub_262750A68(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1 - 120);
  BitArray::~BitArray((v1 - 104));
  _Unwind_Resume(a1);
}

void TextStateRule::parseRuleDefinition(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v46);
  while (1)
  {
    DgnString::DgnString(&v44);
    DgnString::DgnString(v43);
    DgnString::DgnString(v41);
    DgnString::DgnString(v39);
    DgnString::DgnString(v37);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v43, LineFieldString);
    if (*(this + 32) == 1)
    {
      v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v44, v11);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v5, v6, v7, v8, v9, v10);
    v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v41, v13);
    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v39, v14);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v37, v15);
    v22 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v16, v17, v18, v19, v20, v21);
    if (*(this + 12))
    {
      v23 = *(this + 5);
    }

    else
    {
      v23 = &byte_262899963;
    }

    if (v45)
    {
      v24 = v44;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (strcmp(v23, v24))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2506, "voc/tsr", 29, "%u %500s %500s", v28, v29, *(a2 + 25));
    }

    if (v42 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2508, "voc/tsr", 10, "%u", v28, v29, *(a2 + 25));
    }

    if (v40 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2510, "voc/tsr", 11, "%u", v28, v29, *(a2 + 25));
    }

    if (v38 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2512, "voc/tsr", 12, "%u", v28, v29, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2517, "voc/tsr", 17, "%u", v28, v29, *(a2 + 25));
    }

    if ((v22 & 0x80000000) != 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2522, "voc/tsr", 18, "%u", v28, v29, *(a2 + 25));
    }

    if (v47 <= LineFieldInteger)
    {
      BitArray::setSize(&v46, LineFieldInteger + 1);
    }

    v30 = *(v46 + 4 * (LineFieldInteger >> 5));
    if ((v30 & (1 << LineFieldInteger)) != 0)
    {
      v34 = *this;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2542, "voc/tsr", 5, "%u %.500s %u %u", v28, v29, *(a2 + 25));
    }

    else
    {
      *(v46 + 4 * (LineFieldInteger >> 5)) = v30 | (1 << LineFieldInteger);
    }

    RuleMgr::newRule(*(*(**VocMgr::smpVocMgr + 8 * *this) + 64), v22, LineFieldInteger, v25, v26, v27, v28, v29);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v31 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v35, v31);
    if (v36)
    {
      v32 = v35;
    }

    else
    {
      v32 = &byte_262899963;
    }

    v33 = strcmp(v32, "RuleDefinition");
    DgnString::~DgnString(&v35);
    DgnString::~DgnString(v37);
    DgnString::~DgnString(v39);
    DgnString::~DgnString(v41);
    DgnString::~DgnString(v43);
    DgnString::~DgnString(&v44);
    if (v33)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v37);
  DgnString::~DgnString(v39);
  DgnString::~DgnString(v41);
  DgnString::~DgnString(v43);
  DgnString::~DgnString(&v44);
LABEL_34:
  BitArray::~BitArray(&v46);
}

void sub_262750EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  BitArray::~BitArray((v11 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseRuleName(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v47);
  while (1)
  {
    DgnString::DgnString(&v45);
    DgnString::DgnString(v44);
    DgnString::DgnString(&v42);
    DgnString::DgnString(v40);
    DgnString::DgnString(v38);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v44, LineFieldString);
    if (*(this + 32) == 1)
    {
      v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v45, v11);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v5, v6, v7, v8, v9, v10);
    v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v42, v13);
    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v40, v14);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v38, v15);
    v22 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v16, v17, v18, v19, v20, v21);
    if (*(this + 12))
    {
      v23 = *(this + 5);
    }

    else
    {
      v23 = &byte_262899963;
    }

    if (v46)
    {
      v24 = v45;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (strcmp(v23, v24))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2575, "voc/tsr", 29, "%u %500s %500s", v28, v29, *(a2 + 25));
    }

    if (v41 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2577, "voc/tsr", 11, "%u", v28, v29, *(a2 + 25));
    }

    if (v39 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2579, "voc/tsr", 12, "%u", v28, v29, *(a2 + 25));
    }

    if (v22)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2581, "voc/tsr", 13, "%u", v28, v29, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2586, "voc/tsr", 17, "%u", v28, v29, *(a2 + 25));
    }

    if (v48 <= LineFieldInteger)
    {
      BitArray::setSize(&v47, LineFieldInteger + 1);
    }

    v30 = *(v47 + 4 * (LineFieldInteger >> 5));
    if ((v30 & (1 << LineFieldInteger)) != 0)
    {
      v35 = *this;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2599, "voc/tsr", 5, "%u %.500s %u %u", v28, v29, *(a2 + 25));
    }

    else
    {
      *(v47 + 4 * (LineFieldInteger >> 5)) = v30 | (1 << LineFieldInteger);
    }

    v31 = v43 ? v42 : &byte_262899963;
    RuleMgr::setName(*(*(**VocMgr::smpVocMgr + 8 * *this) + 64), LineFieldInteger, v31, v25, v26, v27, v28, v29);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v32 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v36, v32);
    if (v37)
    {
      v33 = v36;
    }

    else
    {
      v33 = &byte_262899963;
    }

    v34 = strcmp(v33, "RuleName");
    DgnString::~DgnString(&v36);
    DgnString::~DgnString(v38);
    DgnString::~DgnString(v40);
    DgnString::~DgnString(&v42);
    DgnString::~DgnString(v44);
    DgnString::~DgnString(&v45);
    if (v34)
    {
      goto LABEL_35;
    }
  }

  DgnString::~DgnString(v38);
  DgnString::~DgnString(v40);
  DgnString::~DgnString(&v42);
  DgnString::~DgnString(v44);
  DgnString::~DgnString(&v45);
LABEL_35:
  BitArray::~BitArray(&v47);
}

void sub_2627512EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  BitArray::~BitArray((v11 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseRuleAllowLM(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v46);
  while (1)
  {
    DgnString::DgnString(&v44);
    DgnString::DgnString(v43);
    DgnString::DgnString(v41);
    DgnString::DgnString(v39);
    DgnString::DgnString(v37);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v43, LineFieldString);
    if (*(this + 32) == 1)
    {
      v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v44, v11);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v5, v6, v7, v8, v9, v10);
    v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v41, v13);
    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v39, v14);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v37, v15);
    v22 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v16, v17, v18, v19, v20, v21);
    if (*(this + 12))
    {
      v23 = *(this + 5);
    }

    else
    {
      v23 = &byte_262899963;
    }

    if (v45)
    {
      v24 = v44;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (strcmp(v23, v24))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2629, "voc/tsr", 29, "%u %500s %500s", v28, v29, *(a2 + 25));
    }

    if (v42 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2631, "voc/tsr", 10, "%u", v28, v29, *(a2 + 25));
    }

    if (v40 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2633, "voc/tsr", 11, "%u", v28, v29, *(a2 + 25));
    }

    if (v38 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2635, "voc/tsr", 12, "%u", v28, v29, *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2638, "voc/tsr", 14, "%u", v28, v29, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2643, "voc/tsr", 17, "%u", v28, v29, *(a2 + 25));
    }

    if (v47 <= LineFieldInteger)
    {
      BitArray::setSize(&v46, LineFieldInteger + 1);
    }

    v30 = *(v46 + 4 * (LineFieldInteger >> 5));
    if ((v30 & (1 << LineFieldInteger)) != 0)
    {
      v34 = *this;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2656, "voc/tsr", 5, "%u %.500s %u %u", v28, v29, *(a2 + 25));
    }

    else
    {
      *(v46 + 4 * (LineFieldInteger >> 5)) = v30 | (1 << LineFieldInteger);
    }

    RuleMgr::setLMAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 64), LineFieldInteger, v22 == 1, v25, v26, v27, v28, v29);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v31 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v35, v31);
    if (v36)
    {
      v32 = v35;
    }

    else
    {
      v32 = &byte_262899963;
    }

    v33 = strcmp(v32, "RuleAllowLM");
    DgnString::~DgnString(&v35);
    DgnString::~DgnString(v37);
    DgnString::~DgnString(v39);
    DgnString::~DgnString(v41);
    DgnString::~DgnString(v43);
    DgnString::~DgnString(&v44);
    if (v33)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v37);
  DgnString::~DgnString(v39);
  DgnString::~DgnString(v41);
  DgnString::~DgnString(v43);
  DgnString::~DgnString(&v44);
LABEL_34:
  BitArray::~BitArray(&v46);
}

void sub_26275173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v13 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseRuleAllowCoart(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v46);
  while (1)
  {
    DgnString::DgnString(&v44);
    DgnString::DgnString(v43);
    DgnString::DgnString(v41);
    DgnString::DgnString(v39);
    DgnString::DgnString(v37);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v43, LineFieldString);
    if (*(this + 32) == 1)
    {
      v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v44, v11);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v5, v6, v7, v8, v9, v10);
    v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v41, v13);
    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v39, v14);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v37, v15);
    v22 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v16, v17, v18, v19, v20, v21);
    if (*(this + 12))
    {
      v23 = *(this + 5);
    }

    else
    {
      v23 = &byte_262899963;
    }

    if (v45)
    {
      v24 = v44;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (strcmp(v23, v24))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2686, "voc/tsr", 29, "%u %500s %500s", v28, v29, *(a2 + 25));
    }

    if (v42 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2688, "voc/tsr", 10, "%u", v28, v29, *(a2 + 25));
    }

    if (v40 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2690, "voc/tsr", 11, "%u", v28, v29, *(a2 + 25));
    }

    if (v38 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2692, "voc/tsr", 12, "%u", v28, v29, *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2695, "voc/tsr", 14, "%u", v28, v29, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2700, "voc/tsr", 17, "%u", v28, v29, *(a2 + 25));
    }

    if (v47 <= LineFieldInteger)
    {
      BitArray::setSize(&v46, LineFieldInteger + 1);
    }

    v30 = *(v46 + 4 * (LineFieldInteger >> 5));
    if ((v30 & (1 << LineFieldInteger)) != 0)
    {
      v34 = *this;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2713, "voc/tsr", 5, "%u %.500s %u %u", v28, v29, *(a2 + 25));
    }

    else
    {
      *(v46 + 4 * (LineFieldInteger >> 5)) = v30 | (1 << LineFieldInteger);
    }

    RuleMgr::setCoartAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 64), LineFieldInteger, v22 == 1, v25, v26, v27, v28, v29);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v31 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v35, v31);
    if (v36)
    {
      v32 = v35;
    }

    else
    {
      v32 = &byte_262899963;
    }

    v33 = strcmp(v32, "RuleAllowCoart");
    DgnString::~DgnString(&v35);
    DgnString::~DgnString(v37);
    DgnString::~DgnString(v39);
    DgnString::~DgnString(v41);
    DgnString::~DgnString(v43);
    DgnString::~DgnString(&v44);
    if (v33)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v37);
  DgnString::~DgnString(v39);
  DgnString::~DgnString(v41);
  DgnString::~DgnString(v43);
  DgnString::~DgnString(&v44);
LABEL_34:
  BitArray::~BitArray(&v46);
}

void sub_262751B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v13 - 96));
  _Unwind_Resume(a1);
}

void TextStateRule::parseRuleAllowPrefiltering(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v46);
  while (1)
  {
    DgnString::DgnString(&v44);
    DgnString::DgnString(v43);
    DgnString::DgnString(v41);
    DgnString::DgnString(v39);
    DgnString::DgnString(v37);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v43, LineFieldString);
    if (*(this + 32) == 1)
    {
      v11 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v44, v11);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v5, v6, v7, v8, v9, v10);
    v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(v41, v13);
    v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v39, v14);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v37, v15);
    v22 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v16, v17, v18, v19, v20, v21);
    if (*(this + 12))
    {
      v23 = *(this + 5);
    }

    else
    {
      v23 = &byte_262899963;
    }

    if (v45)
    {
      v24 = v44;
    }

    else
    {
      v24 = &byte_262899963;
    }

    if (strcmp(v23, v24))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2744, "voc/tsr", 29, "%u %500s %500s", v28, v29, *(a2 + 25));
    }

    if (v42 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2746, "voc/tsr", 10, "%u", v28, v29, *(a2 + 25));
    }

    if (v40 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2748, "voc/tsr", 11, "%u", v28, v29, *(a2 + 25));
    }

    if (v38 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2750, "voc/tsr", 12, "%u", v28, v29, *(a2 + 25));
    }

    if (v22 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2753, "voc/tsr", 14, "%u", v28, v29, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2758, "voc/tsr", 17, "%u", v28, v29, *(a2 + 25));
    }

    if (v47 <= LineFieldInteger)
    {
      BitArray::setSize(&v46, LineFieldInteger + 1);
    }

    v30 = *(v46 + 4 * (LineFieldInteger >> 5));
    if ((v30 & (1 << LineFieldInteger)) != 0)
    {
      v34 = *this;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2771, "voc/tsr", 5, "%u %.500s %u %u", v28, v29, *(a2 + 25));
    }

    else
    {
      *(v46 + 4 * (LineFieldInteger >> 5)) = v30 | (1 << LineFieldInteger);
    }

    RuleMgr::setPrefilteringAllowed(*(*(**VocMgr::smpVocMgr + 8 * *this) + 64), LineFieldInteger, v22 == 1, v25, v26, v27, v28, v29);
    if (!DgnTextFileParser::parseNextLine(a2))
    {
      break;
    }

    v31 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::DgnString(&v35, v31);
    if (v36)
    {
      v32 = v35;
    }

    else
    {
      v32 = &byte_262899963;
    }

    v33 = strcmp(v32, "RuleAllowPrefiltering");
    DgnString::~DgnString(&v35);
    DgnString::~DgnString(v37);
    DgnString::~DgnString(v39);
    DgnString::~DgnString(v41);
    DgnString::~DgnString(v43);
    DgnString::~DgnString(&v44);
    if (v33)
    {
      goto LABEL_34;
    }
  }

  DgnString::~DgnString(v37);
  DgnString::~DgnString(v39);
  DgnString::~DgnString(v41);
  DgnString::~DgnString(v43);
  DgnString::~DgnString(&v44);
LABEL_34:
  BitArray::~BitArray(&v46);
}

void sub_262751FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  BitArray::~BitArray((v13 - 96));
  _Unwind_Resume(a1);
}

uint64_t TextStateRule::parseRuleDescription(TextStateRule *this, DgnTextFileParser *a2)
{
  v72 = 0;
  v73 = 0;
  DgnString::DgnString(&v70);
  v5 = 0;
  v6 = 127;
  do
  {
    DgnString::DgnString(&v68);
    DgnString::DgnString(v67);
    DgnString::DgnString(&v65);
    DgnString::DgnString(&v63);
    DgnString::DgnString(&v61);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v67, LineFieldString);
    if (*(this + 32) == 1)
    {
      v14 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v68, v14);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v8, v9, v10, v11, v12, v13);
    v16 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v65, v16);
    v17 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(&v63, v17);
    v18 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(&v61, v18);
    v25 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v19, v20, v21, v22, v23, v24);
    if (*(this + 12))
    {
      v26 = *(this + 5);
    }

    else
    {
      v26 = &byte_262899963;
    }

    if (v69)
    {
      v27 = v68;
    }

    else
    {
      v27 = &byte_262899963;
    }

    if (strcmp(v26, v27))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2805, "voc/tsr", 29, "%u %500s %500s", v28, v29, *(a2 + 25));
    }

    if (v62 >= 2)
    {
      v30 = v66 ? v65 : &byte_262899963;
      if (strcmp(v30, "Word"))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2809, "voc/tsr", 12, "%u", v28, v29, *(a2 + 25));
      }
    }

    if (v25)
    {
      v31 = v66 ? v65 : &byte_262899963;
      if (strcmp(v31, "State") && strcmp(v31, "Rule") && strcmp(v31, "Word"))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2815, "voc/tsr", 13, "%u", v28, v29, *(a2 + 25));
      }
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2820, "voc/tsr", 17, "%u", v28, v29, *(a2 + 25));
    }

    if (v6 == 127 && !v5)
    {
      v6 = *this;
      v5 = LineFieldInteger;
    }

    if (v66)
    {
      v32 = v65;
    }

    else
    {
      v32 = &byte_262899963;
    }

    if (!strcmp(v32, "StartOperation"))
    {
      v40 = 3;
    }

    else
    {
      if (strcmp(v32, "EndOperation"))
      {
        if (!strcmp(v32, "Word"))
        {
          if ((v25 - 1001) <= 0xFFFFF82E)
          {
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2871, "voc/tsr", 26, "%u %500s %d", v33, v34, *(a2 + 25));
          }

          if ((*(this + 32) & 1) == 0)
          {
            v42 = v64 ? v63 : &byte_262899963;
            if (*v42)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2878, "voc/tsr", 10, "%u", v33, v34, *(a2 + 25));
            }
          }

          if (v62)
          {
            v43 = v61;
          }

          else
          {
            v43 = &byte_262899963;
          }

          WordId = GetWordId(*this, v43, "RuleDescription word", ".tsr", 0, 0, v33, v34);
          v40 = 4;
        }

        else
        {
          if (!strcmp(v32, "State"))
          {
            if ((*(this + 32) & 1) == 0)
            {
              v44 = v64 ? v63 : &byte_262899963;
              if (*v44)
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2894, "voc/tsr", 10, "%u", v38, v39, *(a2 + 25));
              }
            }

            if (v25 <= 0)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2900, "voc/tsr", 18, "%u", v38, v39, *(a2 + 25));
            }

            v40 = 1;
            WordId = v25;
            goto LABEL_83;
          }

          if (!strcmp(v32, "Rule"))
          {
            if ((*(this + 32) & 1) == 0)
            {
              v45 = v64 ? v63 : &byte_262899963;
              if (*v45)
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2910, "voc/tsr", 10, "%u", v38, v39, *(a2 + 25));
              }
            }

            if (v25 <= 0)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2916, "voc/tsr", 18, "%u", v38, v39, *(a2 + 25));
            }

            WordId = WordId & 0xFFFF0000 | v25;
            v40 = 2;
            goto LABEL_83;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2923, "voc/tsr", 15, "%u", v38, v39, *(a2 + 25));
          v25 = 0;
          v40 = 3;
        }

        goto LABEL_84;
      }

      v40 = 0;
    }

    if (v64)
    {
      v41 = v63;
    }

    else
    {
      v41 = &byte_262899963;
    }

    if (!strcmp(v41, "Sequence"))
    {
      goto LABEL_50;
    }

    if (strcmp(v41, "Alternative"))
    {
      if (!strcmp(v41, "Repeat"))
      {
        v25 = 0;
        WordId = 2;
        goto LABEL_84;
      }

      if (!strcmp(v41, "Optional"))
      {
        v25 = 0;
        WordId = 3;
        goto LABEL_84;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2862, "voc/tsr", 16, "%u", v38, v39, *(a2 + 25));
LABEL_50:
      WordId = 0;
LABEL_83:
      v25 = 0;
      goto LABEL_84;
    }

    v25 = 0;
    WordId = 1;
LABEL_84:
    if (*this == v6 && v5 == LineFieldInteger)
    {
      v46 = v73;
    }

    else
    {
      if (v71 <= v5)
      {
        BitArray::setSize(&v70, v5 + 1);
      }

      v47 = *(v70 + 4 * (v5 >> 5));
      if ((v47 & (1 << v5)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2938, "voc/tsr", 5, "%u %.500s %u %u", v38, v39, *(a2 + 25));
      }

      else
      {
        *(v70 + 4 * (v5 >> 5)) = v47 | (1 << v5);
      }

      RuleMgr::setDesc(*(*(**VocMgr::smpVocMgr + 8 * v6) + 64), v5, &v72, v35, v36, v37, v38, v39);
      v46 = 0;
      LODWORD(v73) = 0;
    }

    if (v46 == HIDWORD(v73))
    {
      DgnArray<RuleDesc>::reallocElts(&v72, 1, 1);
      LODWORD(v46) = v73;
    }

    v48 = (v72 + 12 * v46);
    *v48 = v40;
    v48[1] = v25;
    v48[2] = WordId;
    LODWORD(v73) = v73 + 1;
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v49 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v59, v49);
      if (v60)
      {
        v50 = v59;
      }

      else
      {
        v50 = &byte_262899963;
      }

      v51 = strcmp(v50, "RuleDescription") == 0;
      DgnString::~DgnString(&v59);
    }

    else
    {
      v51 = 0;
    }

    v6 = *this;
    DgnString::~DgnString(&v61);
    DgnString::~DgnString(&v63);
    DgnString::~DgnString(&v65);
    DgnString::~DgnString(v67);
    DgnString::~DgnString(&v68);
    v5 = LineFieldInteger;
  }

  while (v51);
  if (v71 <= LineFieldInteger)
  {
    BitArray::setSize(&v70, LineFieldInteger + 1);
  }

  v57 = *(v70 + 4 * (LineFieldInteger >> 5));
  if ((v57 & (1 << LineFieldInteger)) != 0)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2973, "voc/tsr", 5, "%u %.500s %u %u", v55, v56, *(a2 + 25));
  }

  else
  {
    *(v70 + 4 * (LineFieldInteger >> 5)) = v57 | (1 << LineFieldInteger);
  }

  RuleMgr::setDesc(*(*(**VocMgr::smpVocMgr + 8 * v6) + 64), LineFieldInteger, &v72, v52, v53, v54, v55, v56);
  BitArray::~BitArray(&v70);
  return DgnIArray<Utterance *>::~DgnIArray(&v72);
}

void sub_2627528E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va4, a8);
  va_start(va3, a8);
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  v13 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  va_copy(va4, va3);
  v19 = va_arg(va4, void);
  v21 = va_arg(va4, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnString::~DgnString(va2);
  DgnString::~DgnString(va3);
  DgnString::~DgnString(va4);
  BitArray::~BitArray((v8 - 120));
  DgnIArray<Utterance *>::~DgnIArray(v8 - 104);
  _Unwind_Resume(a1);
}

void TextStateRule::parseRuleEnv(TextStateRule *this, DgnTextFileParser *a2)
{
  DgnString::DgnString(&v66);
  v4 = 0;
  v64 = 0;
  v65 = 0;
  v5 = 127;
  do
  {
    DgnString::DgnString(&v62);
    DgnString::DgnString(v61);
    DgnString::DgnString(&v59);
    DgnString::DgnString(v57);
    DgnString::DgnString(v55);
    LineFieldString = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
    DgnString::operator=(v61, LineFieldString);
    if (*(this + 32) == 1)
    {
      v13 = DgnTextFileParser::getLineFieldString(a2, *(this + 2));
      DgnString::operator=(&v62, v13);
    }

    LineFieldInteger = DgnTextFileParser::getLineFieldInteger(a2, *(this + 3), v7, v8, v9, v10, v11, v12);
    v15 = DgnTextFileParser::getLineFieldString(a2, *(this + 4));
    DgnString::operator=(&v59, v15);
    v16 = DgnTextFileParser::getLineFieldString(a2, *(this + 5));
    DgnString::operator=(v57, v16);
    v17 = DgnTextFileParser::getLineFieldString(a2, *(this + 6));
    DgnString::operator=(v55, v17);
    v24 = DgnTextFileParser::getLineFieldInteger(a2, *(this + 7), v18, v19, v20, v21, v22, v23);
    if (*(this + 12))
    {
      v25 = *(this + 5);
    }

    else
    {
      v25 = &byte_262899963;
    }

    if (v63)
    {
      v26 = v62;
    }

    else
    {
      v26 = &byte_262899963;
    }

    if (strcmp(v25, v26))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 2998, "voc/tsr", 29, "%u %500s %500s", v30, v31, *(a2 + 25));
    }

    if (v56 >= 2)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3000, "voc/tsr", 12, "%u", v30, v31, *(a2 + 25));
    }

    if (v24)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3002, "voc/tsr", 13, "%u", v30, v31, *(a2 + 25));
    }

    if (LineFieldInteger <= 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3007, "voc/tsr", 17, "%u", v30, v31, *(a2 + 25));
    }

    if (!v4 && v5 == 127)
    {
      v5 = *this;
      v4 = LineFieldInteger;
    }

    if (LineFieldInteger != v4 || *this != v5)
    {
      if (v67 <= v4)
      {
        BitArray::setSize(&v66, v4 + 1);
      }

      v32 = *(v66 + 4 * (v4 >> 5));
      if ((v32 & (1 << v4)) != 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3028, "voc/tsr", 5, "%u %.500s %u %u", v30, v31, *(a2 + 25));
      }

      else
      {
        *(v66 + 4 * (v4 >> 5)) = v32 | (1 << v4);
      }
    }

    v33 = *(*(**VocMgr::smpVocMgr + 8 * *this) + 64);
    RuleMgr::verifyRule(v33, LineFieldInteger, 1, v27, v28, v29, v30, v31);
    v34 = *(v33 + 10);
    ItemEnvIdMaybeNew = EnvMgr::getItemEnvIdMaybeNew(v34, LineFieldInteger, 1, v35, v36, v37, v38, v39);
    if (v60 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3043, "voc/tsr", 15, "%u", v40, v41, *(a2 + 25));
    }

    if (v58 <= 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3045, "voc/tsr", 16, "%u", v40, v41, *(a2 + 25));
    }

    if (*(a2 + 10))
    {
      v43 = *(a2 + 4);
    }

    v44 = *(a2 + 25);
    DgnTextFile::convertFromEnvValueFormat(v57, &v64);
    if (v60)
    {
      v47 = v59;
    }

    else
    {
      v47 = &byte_262899963;
    }

    EnvMgr::setData(v34, ItemEnvIdMaybeNew, v47, v64, v65, 1, v45, v46);
    if (DgnTextFileParser::parseNextLine(a2))
    {
      v48 = DgnTextFileParser::getLineFieldString(a2, *(this + 1));
      DgnString::DgnString(&v53, v48);
      if (v54)
      {
        v49 = v53;
      }

      else
      {
        v49 = &byte_262899963;
      }

      v50 = strcmp(v49, "RuleEnv") == 0;
      DgnString::~DgnString(&v53);
    }

    else
    {
      v50 = 0;
    }

    v5 = *this;
    DgnString::~DgnString(v55);
    DgnString::~DgnString(v57);
    DgnString::~DgnString(&v59);
    DgnString::~DgnString(v61);
    DgnString::~DgnString(&v62);
    v4 = LineFieldInteger;
  }

  while (v50);
  if (v67 <= LineFieldInteger)
  {
    BitArray::setSize(&v66, LineFieldInteger + 1);
  }

  if ((*(v66 + 4 * (LineFieldInteger >> 5)) >> LineFieldInteger))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3071, "voc/tsr", 5, "%u %.500s %u %u", v51, v52, *(a2 + 25));
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(&v64);
  BitArray::~BitArray(&v66);
}

void sub_262752E54(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v1 - 120);
  BitArray::~BitArray((v1 - 104));
  _Unwind_Resume(a1);
}

void TextStateRule::loadStatesAndRules(TextStateRule *this, DFile *a2, __int16 a3)
{
  DgnTextFileParser::DgnTextFileParser(v9);
  DgnTextFileParser::openDgnTextFileParser(v9, a2, 0x61u, 1);
  *this = a3;
  DgnString::DgnString(v8);
  TextStateRule::parseHeader(this, v9);
  TextStateRule::parseBody(this, v9);
  if (DgnTextFileParser::parseNextLine(v9))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/tsr.cpp", 3084, "voc/tsr", 23, "%u", v6, v7, v9[100]);
  }

  DgnString::~DgnString(v8);
  DgnTextFileParser::~DgnTextFileParser(v9);
}

void sub_262752F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  DgnTextFileParser::~DgnTextFileParser(va);
  _Unwind_Resume(a1);
}

void TextStateRule::saveStatesAndRules(TextStateRule *this, DFile *a2, unsigned int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v634);
  DgnTextFileWriter::openDgnTextFileWriter(v634, a2, 0x61u, 1);
  v632 = 0;
  v633 = 0;
  DgnTextFile::legalDgnTextFileVersions(v634, sTSR_Versions, &v632, v5, v6, v7, v8, v9);
  DgnTextFileWriter::setFileType(v634, "TSR", (v632 + 8 * (v633 - 1)));
  *(this + 1) = 0;
  *(this + 12) = xmmword_26288C7F0;
  *(this + 7) = 5;
  v630 = 0;
  v631 = 0;
  v623 = 0;
  v10 = realloc_array(0, &v623, 0x18uLL, 0, 0, 1);
  v629 = 0;
  v630 = v623;
  LODWORD(v631) = 6;
  HIDWORD(v631) = v10 >> 2;
  v628 = 0;
  v623 = 0;
  HIDWORD(v629) = realloc_array(0, &v623, 0x60uLL, 0, 0, 1) >> 4;
  v628 = v623;
  v11 = v629;
  if (v629 <= 6)
  {
    if (v629 != 6)
    {
      v13 = v629 + 1;
      v14 = 16 * v629;
      do
      {
        DgnString::DgnString(&v628[v14]);
        v14 += 16;
        v15 = v13++ == 6;
      }

      while (!v15);
    }
  }

  else if (v629 >= 7)
  {
    v12 = 16 * v629 - 16;
    do
    {
      --v11;
      DgnString::~DgnString(&v628[v12]);
      v12 -= 16;
    }

    while (v11 > 6);
  }

  LODWORD(v629) = 6;
  DgnString::operator=(&v628[16 * *(this + 1)], "Type");
  v630[*(this + 1)] = 0;
  DgnString::operator=(&v628[16 * *(this + 3)], "IntValue1");
  v630[*(this + 3)] = 1;
  DgnString::operator=(&v628[16 * *(this + 4)], "StrValue1");
  v630[*(this + 4)] = 0;
  DgnString::operator=(&v628[16 * *(this + 5)], "StrValue2");
  v630[*(this + 5)] = 0;
  DgnString::operator=(&v628[16 * *(this + 6)], "StrValue3");
  v630[*(this + 6)] = 0;
  DgnString::operator=(&v628[16 * *(this + 7)], "IntValue2");
  v630[*(this + 7)] = 1;
  DgnTextFileWriter::setLineFieldFormat(v634, &v630, &v628);
  v16 = *(**VocMgr::smpVocMgr + 8 * a3);
  v17 = *(*(v16 + 8) + 32);
  DgnTextFileWriter::setHeaderFieldUnsigned(v634, "MaxStateId", *(*(v16 + 7) + 720));
  DgnTextFileWriter::setHeaderFieldUnsigned(v634, "MaxRuleId", v17);
  v18 = *(v16 + 7);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v25 = v626;
    v26 = v624;
    v27 = *(v624 + 4 * v626);
    if (v27)
    {
      Parent = StateMgr::getParent(v18, *(v624 + 4 * v626), v19, v20, v21, v22, v23, v24);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateDefinition");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v27);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      if (Parent)
      {
        v29 = Parent;
      }

      else
      {
        v29 = -1;
      }

      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), v29);
      DgnTextFileWriter::writeNextLine(v634);
      v25 = v626;
      v26 = v624;
      v30 = *(v624 + 4 * v626);
    }

    else
    {
      v30 = 0;
    }

    *(v26 + 4 * v25) = 0;
    v31 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v31 >= v625;
      v33 = v31 - v625;
      if (v32)
      {
        LODWORD(v626) = v33;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v30, v19, v20, v21, v22, v23, v24);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v40 = v626;
    v41 = v624;
    v42 = *(v624 + 4 * v626);
    if (v42)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateName");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v42);
      v43 = *(this + 4);
      Name = StateMgr::getName(v18, v42, v44, v45, v46, v47, v48, v49);
      DgnTextFileWriter::setLineFieldValue(v634, v43, Name);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), 0);
      DgnTextFileWriter::writeNextLine(v634);
      v40 = v626;
      v41 = v624;
      v51 = *(v624 + 4 * v626);
    }

    else
    {
      v51 = 0;
    }

    *(v41 + 4 * v40) = 0;
    v52 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v52 >= v625;
      v53 = v52 - v625;
      if (v32)
      {
        LODWORD(v626) = v53;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v51, v34, v35, v36, v37, v38, v39);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v60 = v626;
    v61 = v624;
    v62 = *(v624 + 4 * v626);
    if (v62)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateAllowLM");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v62);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      v63 = *(this + 7);
      LMAllowed = StateMgr::getLMAllowed(v18, v62, 1, v64, v65, v66, v67, v68);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, v63, LMAllowed);
      DgnTextFileWriter::writeNextLine(v634);
      v60 = v626;
      v61 = v624;
      v70 = *(v624 + 4 * v626);
    }

    else
    {
      v70 = 0;
    }

    *(v61 + 4 * v60) = 0;
    v71 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v71 >= v625;
      v72 = v71 - v625;
      if (v32)
      {
        LODWORD(v626) = v72;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v70, v54, v55, v56, v57, v58, v59);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  v73 = *(v16 + 9);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v80 = v626;
    v81 = v624;
    v82 = *(v624 + 4 * v626);
    if (v82)
    {
      if (StateMgr::getWeights(v18, *(v624 + 4 * v626), 1, v75, v76, v77, v78, v79) == 0xFFFF)
      {
        v83 = 0;
      }

      else
      {
        v83 = (*(*v73 + 672))(v73);
      }

      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateWeightsName");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v82);
      if (v83 && *(v83 + 8))
      {
        v85 = *v83;
      }

      else
      {
        v85 = &byte_262899963;
      }

      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), v85);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), 0);
      DgnTextFileWriter::writeNextLine(v634);
      v80 = v626;
      v81 = v624;
      v84 = *(v624 + 4 * v626);
    }

    else
    {
      v84 = 0;
    }

    *(v81 + 4 * v80) = 0;
    v86 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v86 >= v625;
      v87 = v86 - v625;
      if (v32)
      {
        LODWORD(v626) = v87;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v84, v74, v75, v76, v77, v78, v79);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v94 = v626;
    v95 = v624;
    v96 = *(v624 + 4 * v626);
    if (v96)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateWordPenalty");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v96);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      v97 = *(this + 7);
      WordPenalty = StateMgr::getWordPenalty(v18, v96, 1, v98, v99, v100, v101, v102);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, v97, WordPenalty);
      DgnTextFileWriter::writeNextLine(v634);
      v94 = v626;
      v95 = v624;
      v104 = *(v624 + 4 * v626);
    }

    else
    {
      v104 = 0;
    }

    *(v95 + 4 * v94) = 0;
    v105 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v105 >= v625;
      v106 = v105 - v625;
      if (v32)
      {
        LODWORD(v626) = v106;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v104, v88, v89, v90, v91, v92, v93);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v113 = v626;
    v114 = v624;
    v115 = *(v624 + 4 * v626);
    if (v115)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateMinStartTime");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v115);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), *(*(v18 + 50) + 4 * v115));
      DgnTextFileWriter::writeNextLine(v634);
      v113 = v626;
      v114 = v624;
      v116 = *(v624 + 4 * v626);
    }

    else
    {
      v116 = 0;
    }

    *(v114 + 4 * v113) = 0;
    v117 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v117 >= v625;
      v118 = v117 - v625;
      if (v32)
      {
        LODWORD(v626) = v118;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v116, v107, v108, v109, v110, v111, v112);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v125 = v626;
    v126 = v624;
    v127 = *(v624 + 4 * v626);
    if (v127)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateMaxStartTime");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v127);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), *(*(v18 + 52) + 4 * v127));
      DgnTextFileWriter::writeNextLine(v634);
      v125 = v626;
      v126 = v624;
      v128 = *(v624 + 4 * v626);
    }

    else
    {
      v128 = 0;
    }

    *(v126 + 4 * v125) = 0;
    v129 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v129 >= v625;
      v130 = v129 - v625;
      if (v32)
      {
        LODWORD(v626) = v130;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v128, v119, v120, v121, v122, v123, v124);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v137 = v626;
    v138 = v624;
    v139 = *(v624 + 4 * v626);
    if (v139)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateMinEndTime");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v139);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), *(*(v18 + 54) + 4 * v139));
      DgnTextFileWriter::writeNextLine(v634);
      v137 = v626;
      v138 = v624;
      v140 = *(v624 + 4 * v626);
    }

    else
    {
      v140 = 0;
    }

    *(v138 + 4 * v137) = 0;
    v141 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v141 >= v625;
      v142 = v141 - v625;
      if (v32)
      {
        LODWORD(v626) = v142;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v140, v131, v132, v133, v134, v135, v136);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v149 = v626;
    v150 = v624;
    v151 = *(v624 + 4 * v626);
    if (v151)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateMaxEndTime");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v151);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), *(*(v18 + 56) + 4 * v151));
      DgnTextFileWriter::writeNextLine(v634);
      v149 = v626;
      v150 = v624;
      v152 = *(v624 + 4 * v626);
    }

    else
    {
      v152 = 0;
    }

    *(v150 + 4 * v149) = 0;
    v153 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v153 >= v625;
      v154 = v153 - v625;
      if (v32)
      {
        LODWORD(v626) = v154;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v152, v143, v144, v145, v146, v147, v148);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v161 = v626;
    v162 = v624;
    v163 = *(v624 + 4 * v626);
    if (v163)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateCollapsible");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v163);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      v164 = *(this + 7);
      Collapsible = StateMgr::getCollapsible(v18, v163, v165, v166, v167, v168, v169, v170);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, v164, Collapsible);
      DgnTextFileWriter::writeNextLine(v634);
      v161 = v626;
      v162 = v624;
      v172 = *(v624 + 4 * v626);
    }

    else
    {
      v172 = 0;
    }

    *(v162 + 4 * v161) = 0;
    v173 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v173 >= v625;
      v174 = v173 - v625;
      if (v32)
      {
        LODWORD(v626) = v174;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v172, v155, v156, v157, v158, v159, v160);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v181 = v626;
    v182 = v624;
    v183 = *(v624 + 4 * v626);
    if (v183)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateAllowCoart");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v183);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      v184 = *(this + 7);
      CoartAllowed = StateMgr::getCoartAllowed(v18, v183, 1, v185, v186, v187, v188, v189);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, v184, CoartAllowed);
      DgnTextFileWriter::writeNextLine(v634);
      v181 = v626;
      v182 = v624;
      v191 = *(v624 + 4 * v626);
    }

    else
    {
      v191 = 0;
    }

    *(v182 + 4 * v181) = 0;
    v192 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v192 >= v625;
      v193 = v192 - v625;
      if (v32)
      {
        LODWORD(v626) = v193;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v191, v175, v176, v177, v178, v179, v180);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v200 = v626;
    v201 = v624;
    v202 = *(v624 + 4 * v626);
    if (v202)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateAllowSkip");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v202);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      v203 = *(this + 7);
      SkipAllowed = StateMgr::getSkipAllowed(v18, v202, 1, v204, v205, v206, v207, v208);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, v203, SkipAllowed);
      DgnTextFileWriter::writeNextLine(v634);
      v200 = v626;
      v201 = v624;
      v210 = *(v624 + 4 * v626);
    }

    else
    {
      v210 = 0;
    }

    *(v201 + 4 * v200) = 0;
    v211 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v211 >= v625;
      v212 = v211 - v625;
      if (v32)
      {
        LODWORD(v626) = v212;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v210, v194, v195, v196, v197, v198, v199);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v219 = v626;
    v220 = v624;
    v221 = *(v624 + 4 * v626);
    if (v221)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateAllowLeftWordBoundary");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v221);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      v222 = *(this + 7);
      LeftWBAllowed = StateMgr::getLeftWBAllowed(v18, v221, 1, v223, v224, v225, v226, v227);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, v222, LeftWBAllowed);
      DgnTextFileWriter::writeNextLine(v634);
      v219 = v626;
      v220 = v624;
      v229 = *(v624 + 4 * v626);
    }

    else
    {
      v229 = 0;
    }

    *(v220 + 4 * v219) = 0;
    v230 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v230 >= v625;
      v231 = v230 - v625;
      if (v32)
      {
        LODWORD(v626) = v231;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v229, v213, v214, v215, v216, v217, v218);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v238 = v626;
    v239 = v624;
    v240 = *(v624 + 4 * v626);
    if (v240)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateAllowRightWordBoundary");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v240);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      v241 = *(this + 7);
      RightWBAllowed = StateMgr::getRightWBAllowed(v18, v240, 1, v242, v243, v244, v245, v246);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, v241, RightWBAllowed);
      DgnTextFileWriter::writeNextLine(v634);
      v238 = v626;
      v239 = v624;
      v248 = *(v624 + 4 * v626);
    }

    else
    {
      v248 = 0;
    }

    *(v239 + 4 * v238) = 0;
    v249 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v249 >= v625;
      v250 = v249 - v625;
      if (v32)
      {
        LODWORD(v626) = v250;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v248, v232, v233, v234, v235, v236, v237);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v257 = v626;
    v258 = v624;
    v259 = *(v624 + 4 * v626);
    if (v259)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateAllowPrefiltering");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v259);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      v260 = *(this + 7);
      PrefilteringAllowed = StateMgr::getPrefilteringAllowed(v18, v259, v261, v262, v263, v264, v265, v266);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, v260, PrefilteringAllowed);
      DgnTextFileWriter::writeNextLine(v634);
      v257 = v626;
      v258 = v624;
      v268 = *(v624 + 4 * v626);
    }

    else
    {
      v268 = 0;
    }

    *(v258 + 4 * v257) = 0;
    v269 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v269 >= v625;
      v270 = v269 - v625;
      if (v32)
      {
        LODWORD(v626) = v270;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v268, v251, v252, v253, v254, v255, v256);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v277 = v626;
    v278 = v624;
    v279 = *(v624 + 4 * v626);
    if (v279)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateAllowEndOfUtt");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v279);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      v280 = *(this + 7);
      EndOfUtteranceAllowed = StateMgr::getEndOfUtteranceAllowed(v18, v279, v281, v282, v283, v284, v285, v286);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, v280, EndOfUtteranceAllowed);
      DgnTextFileWriter::writeNextLine(v634);
      v277 = v626;
      v278 = v624;
      v288 = *(v624 + 4 * v626);
    }

    else
    {
      v288 = 0;
    }

    *(v278 + 4 * v277) = 0;
    v289 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v289 >= v625;
      v290 = v289 - v625;
      if (v32)
      {
        LODWORD(v626) = v290;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v288, v271, v272, v273, v274, v275, v276);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v297 = *(v624 + 4 * v626);
    if (v297)
    {
      WordAliasState = StateMgr::getWordAliasState(v18, *(v624 + 4 * v626), 1, v292, v293, v294, v295, v296);
      if (WordAliasState)
      {
        DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateAliasState");
        DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v297);
        DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
        DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
        DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
        DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), WordAliasState);
        DgnTextFileWriter::writeNextLine(v634);
      }
    }

    v299 = *(v624 + 4 * v626);
    *(v624 + 4 * v626) = 0;
    v300 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v300 >= v625;
      v301 = v300 - v625;
      if (v32)
      {
        LODWORD(v626) = v301;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v299, v291, v292, v293, v294, v295, v296);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v308 = *(v624 + 4 * v626);
    if (v308)
    {
      PrecedingNonAcousticWordState = StateMgr::getPrecedingNonAcousticWordState(v18, *(v624 + 4 * v626), v302, v303, v304, v305, v306, v307);
      if (PrecedingNonAcousticWordState)
      {
        DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StatePrecedingNonAcousticWordState");
        DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v308);
        DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
        DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
        DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
        DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), PrecedingNonAcousticWordState);
        DgnTextFileWriter::writeNextLine(v634);
      }
    }

    v310 = *(v624 + 4 * v626);
    *(v624 + 4 * v626) = 0;
    v311 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v311 >= v625;
      v312 = v311 - v625;
      if (v32)
      {
        LODWORD(v626) = v312;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v310, v302, v303, v304, v305, v306, v307);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v319 = v626;
    v320 = v624;
    v321 = *(v624 + 4 * v626);
    if (v321)
    {
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StatePrecedingNonAcousticWordRequired");
      DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v321);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
      DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
      v322 = *(this + 7);
      PrecedingNonAcousticWordRequired = StateMgr::getPrecedingNonAcousticWordRequired(v18, v321, v323, v324, v325, v326, v327, v328);
      DgnTextFileWriter::setLineFieldIntegerValue(v634, v322, PrecedingNonAcousticWordRequired);
      DgnTextFileWriter::writeNextLine(v634);
      v319 = v626;
      v320 = v624;
      v330 = *(v624 + 4 * v626);
    }

    else
    {
      v330 = 0;
    }

    *(v320 + 4 * v319) = 0;
    v331 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v331 >= v625;
      v332 = v331 - v625;
      if (v32)
      {
        LODWORD(v626) = v332;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v330, v313, v314, v315, v316, v317, v318);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v339 = *(v624 + 4 * v626);
    if (v339)
    {
      CollWords = StateMgr::getCollWords(v18, *(v624 + 4 * v626), 0xFFFFu, 1, v335, v336, v337, v338);
      v341 = *(CollWords + 8);
      if (v341)
      {
        for (i = 0; i < v341; ++i)
        {
          v343 = *(*CollWords + 4 * i);
          v344 = *(v16 + 6);
          if (*(v344 + 388) > v343 && *(*(v344 + 104) + v343) && *(*(v344 + 256) + 4 * v343) == v343)
          {
            WordName = GetWordName(a3, v343, 0, 0, v335, v336, v337, v338);
            DgnString::DgnString(&v621, WordName);
            DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateIncludedWord");
            DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v339);
            if (v622)
            {
              v346 = v621;
            }

            else
            {
              v346 = &byte_262899963;
            }

            DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), v346);
            DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
            DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
            DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), 0);
            DgnTextFileWriter::writeNextLine(v634);
            DgnString::~DgnString(&v621);
            v341 = *(CollWords + 8);
          }
        }
      }
    }

    v347 = *(v624 + 4 * v626);
    *(v624 + 4 * v626) = 0;
    v348 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v348 >= v625;
      v349 = v348 - v625;
      if (v32)
      {
        LODWORD(v626) = v349;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v347, v333, v334, v335, v336, v337, v338);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v356 = *(v624 + 4 * v626);
    if (v356)
    {
      StateTransition = StateMgr::getStateTransition(v18, *(v624 + 4 * v626), 1, v351, v352, v353, v354, v355);
      if (*(StateTransition + 8))
      {
        v358 = 0;
        do
        {
          v359 = *(*StateTransition + 4 * v358);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateTransitionState");
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v356);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), v359);
          DgnTextFileWriter::writeNextLine(v634);
          ++v358;
        }

        while (v358 < *(StateTransition + 8));
      }
    }

    v360 = *(v624 + 4 * v626);
    *(v624 + 4 * v626) = 0;
    v361 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v361 >= v625;
      v362 = v361 - v625;
      if (v32)
      {
        LODWORD(v626) = v362;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v360, v350, v351, v352, v353, v354, v355);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  v363 = *(v16 + 2);
  ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
  while (v627)
  {
    v370 = v626;
    v371 = v624;
    v372 = *(v624 + 4 * v626);
    if (v372)
    {
      Colls = StateMgr::getColls(v18, *(v624 + 4 * v626), 1, v365, v366, v367, v368, v369);
      v621 = 0;
      v622 = 0;
      DgnPrimArray<unsigned short>::copyArraySlice(&v621, Colls, 0, *(Colls + 8));
      if (v622)
      {
        v379 = 0;
        do
        {
          v380 = *(v621 + v379);
          CollationName = "_IDENTITY";
          if (v380 != 65534)
          {
            CollationName = CollMgr::getCollationName(v363, v380, "_IDENTITY", v374, v375, v376, v377, v378);
          }

          DgnString::DgnString(&v619, CollationName);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateAllowedCollations");
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v372);
          if (v620)
          {
            v382 = v619;
          }

          else
          {
            v382 = &byte_262899963;
          }

          DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), v382);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), 0);
          DgnTextFileWriter::writeNextLine(v634);
          DgnString::~DgnString(&v619);
          ++v379;
        }

        while (v379 < v622);
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v621);
      v370 = v626;
      v371 = v624;
      v383 = *(v624 + 4 * v626);
    }

    else
    {
      v383 = 0;
    }

    *(v371 + 4 * v370) = 0;
    v384 = v626 + 1;
    v15 = v627 == 1;
    LODWORD(v626) = v626 + 1;
    --v627;
    if (v15)
    {
      v626 = 0;
    }

    else
    {
      v32 = v384 >= v625;
      v385 = v384 - v625;
      if (v32)
      {
        LODWORD(v626) = v385;
      }
    }

    ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v383, v364, v365, v366, v367, v368, v369);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  v386 = *(v18 + 94);
  v621 = 0;
  v622 = 0;
  EnvMgr::getItemsWithEnv(v386, &v621);
  DgnString::DgnString(&v619);
  v611 = v18;
  v614 = v16;
  if (v622)
  {
    v387 = 0;
    do
    {
      v388 = *(v621 + v387);
      ItemEnvId = EnvMgr::getItemEnvId(v386, v388);
      NameIds = EnvMgr::getNameIds(v386, ItemEnvId, v390, v391, v392, v393, v394, v395);
      Values = EnvMgr::getValues(v386, ItemEnvId, v397, v398, v399, v400, v401, v402);
      if (*(NameIds + 8))
      {
        v404 = Values;
        v405 = 0;
        v406 = 0;
        do
        {
          v407 = EnvMgr::getName(v386, *(*NameIds + 2 * v406));
          DgnTextFile::convertToEnvValueFormat(*v404 + v405, &v619);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateEnv");
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v388);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), v407);
          if (v620)
          {
            v408 = v619;
          }

          else
          {
            v408 = &byte_262899963;
          }

          DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), v408);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), 0);
          DgnTextFileWriter::writeNextLine(v634);
          ++v406;
          v405 += 16;
        }

        while (v406 < *(NameIds + 8));
      }

      ++v387;
      v18 = v611;
      v16 = v614;
    }

    while (v387 < v622);
  }

  if (v621)
  {
    MemChunkFree(v621, 0);
    v621 = 0;
  }

  v622 = 0;
  v618[0] = 0;
  v618[1] = 0;
  EnvMgr::getItemPairsWithEnv(v386, &v621, v618);
  if (v622)
  {
    v413 = 0;
    do
    {
      v414 = *(v621 + v413);
      v415 = GetWordName(a3, *(v618[0] + 4 * v413), 0, 0, v409, v410, v411, v412);
      DgnString::DgnString(&v623, v415);
      ItemPairEnvId = EnvMgr::getItemPairEnvId(v386, *(v621 + v413), *(v618[0] + 4 * v413));
      v423 = EnvMgr::getNameIds(v386, ItemPairEnvId, v417, v418, v419, v420, v421, v422);
      v430 = EnvMgr::getValues(v386, ItemPairEnvId, v424, v425, v426, v427, v428, v429);
      if (*(v423 + 8))
      {
        v431 = v430;
        v432 = 0;
        v433 = 0;
        do
        {
          v434 = EnvMgr::getName(v386, *(*v423 + 2 * v433));
          DgnTextFile::convertToEnvValueFormat(*v431 + v432, &v619);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "StateIncludedWordEnv");
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v414);
          if (v624)
          {
            v435 = v623;
          }

          else
          {
            v435 = &byte_262899963;
          }

          DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), v435);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), v434);
          if (v620)
          {
            v436 = v619;
          }

          else
          {
            v436 = &byte_262899963;
          }

          DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), v436);
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), 0);
          DgnTextFileWriter::writeNextLine(v634);
          ++v433;
          v432 += 16;
        }

        while (v433 < *(v423 + 8));
      }

      DgnString::~DgnString(&v623);
      ++v413;
      v18 = v611;
      v16 = v614;
    }

    while (v413 < v622);
  }

  v615 = *(v16 + 8);
  if (!RuleMgr::isEmpty(v615))
  {
    ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
    while (v627)
    {
      v443 = *(v624 + 4 * v626);
      ChildRules = StateMgr::getChildRules(v18, v443, v437, v438, v439, v440, v441, v442);
      if (*(ChildRules + 8))
      {
        v451 = 0;
        do
        {
          v452 = *(*ChildRules + 2 * v451);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "RuleDefinition");
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v452);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), v443);
          DgnTextFileWriter::writeNextLine(v634);
          ++v451;
        }

        while (v451 < *(ChildRules + 8));
      }

      v453 = *(v624 + 4 * v626);
      *(v624 + 4 * v626) = 0;
      v454 = v626 + 1;
      v15 = v627 == 1;
      LODWORD(v626) = v626 + 1;
      --v627;
      if (v15)
      {
        v626 = 0;
      }

      else
      {
        v32 = v454 >= v625;
        v455 = v454 - v625;
        if (v32)
        {
          LODWORD(v626) = v455;
        }
      }

      ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v453, v444, v445, v446, v447, v448, v449);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  }

  if (!RuleMgr::isEmpty(v615))
  {
    ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
    while (v627)
    {
      v468 = StateMgr::getChildRules(v18, *(v624 + 4 * v626), v456, v457, v458, v459, v460, v461);
      if (*(v468 + 8))
      {
        v469 = 0;
        do
        {
          v470 = *(*v468 + 2 * v469);
          v471 = RuleMgr::getName(v615, v470, v462, v463, v464, v465, v466, v467);
          DgnString::DgnString(&v616, v471);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "RuleName");
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v470);
          if (v617)
          {
            v472 = v616;
          }

          else
          {
            v472 = &byte_262899963;
          }

          DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), v472);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), 0);
          DgnTextFileWriter::writeNextLine(v634);
          DgnString::~DgnString(&v616);
          ++v469;
        }

        while (v469 < *(v468 + 8));
      }

      v473 = *(v624 + 4 * v626);
      *(v624 + 4 * v626) = 0;
      v474 = v626 + 1;
      v15 = v627 == 1;
      LODWORD(v626) = v626 + 1;
      --v627;
      if (v15)
      {
        v626 = 0;
      }

      else
      {
        v32 = v474 >= v625;
        v475 = v474 - v625;
        if (v32)
        {
          LODWORD(v626) = v475;
        }
      }

      ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v473, v462, v463, v464, v465, v466, v467);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  }

  if (!RuleMgr::isEmpty(v615))
  {
    ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
    while (v627)
    {
      v488 = StateMgr::getChildRules(v18, *(v624 + 4 * v626), v476, v477, v478, v479, v480, v481);
      if (*(v488 + 8))
      {
        v489 = 0;
        do
        {
          v490 = *(*v488 + 2 * v489);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "RuleAllowLM");
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v490);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
          v491 = *(this + 7);
          v498 = RuleMgr::getLMAllowed(v615, v490, v492, v493, v494, v495, v496, v497);
          DgnTextFileWriter::setLineFieldIntegerValue(v634, v491, v498);
          DgnTextFileWriter::writeNextLine(v634);
          ++v489;
        }

        while (v489 < *(v488 + 8));
      }

      v499 = *(v624 + 4 * v626);
      *(v624 + 4 * v626) = 0;
      v500 = v626 + 1;
      v15 = v627 == 1;
      LODWORD(v626) = v626 + 1;
      --v627;
      if (v15)
      {
        v626 = 0;
      }

      else
      {
        v32 = v500 >= v625;
        v501 = v500 - v625;
        if (v32)
        {
          LODWORD(v626) = v501;
        }
      }

      ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v499, v482, v483, v484, v485, v486, v487);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  }

  if (!RuleMgr::isEmpty(v615))
  {
    ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
    while (v627)
    {
      v514 = StateMgr::getChildRules(v18, *(v624 + 4 * v626), v502, v503, v504, v505, v506, v507);
      if (*(v514 + 8))
      {
        v515 = 0;
        do
        {
          v516 = *(*v514 + 2 * v515);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "RuleAllowCoart");
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v516);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
          v517 = *(this + 7);
          v524 = RuleMgr::getCoartAllowed(v615, v516, v518, v519, v520, v521, v522, v523);
          DgnTextFileWriter::setLineFieldIntegerValue(v634, v517, v524);
          DgnTextFileWriter::writeNextLine(v634);
          ++v515;
        }

        while (v515 < *(v514 + 8));
      }

      v525 = *(v624 + 4 * v626);
      *(v624 + 4 * v626) = 0;
      v526 = v626 + 1;
      v15 = v627 == 1;
      LODWORD(v626) = v626 + 1;
      --v627;
      if (v15)
      {
        v626 = 0;
      }

      else
      {
        v32 = v526 >= v625;
        v527 = v526 - v625;
        if (v32)
        {
          LODWORD(v626) = v527;
        }
      }

      ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v525, v508, v509, v510, v511, v512, v513);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  }

  if (!RuleMgr::isEmpty(v615))
  {
    ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
    while (v627)
    {
      v540 = StateMgr::getChildRules(v18, *(v624 + 4 * v626), v528, v529, v530, v531, v532, v533);
      if (*(v540 + 8))
      {
        v541 = 0;
        do
        {
          v542 = *(*v540 + 2 * v541);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "RuleAllowPrefiltering");
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v542);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
          v543 = *(this + 7);
          v550 = RuleMgr::getPrefilteringAllowed(v615, v542, v544, v545, v546, v547, v548, v549);
          DgnTextFileWriter::setLineFieldIntegerValue(v634, v543, v550);
          DgnTextFileWriter::writeNextLine(v634);
          ++v541;
        }

        while (v541 < *(v540 + 8));
      }

      v551 = *(v624 + 4 * v626);
      *(v624 + 4 * v626) = 0;
      v552 = v626 + 1;
      v15 = v627 == 1;
      LODWORD(v626) = v626 + 1;
      --v627;
      if (v15)
      {
        v626 = 0;
      }

      else
      {
        v32 = v552 >= v625;
        v553 = v552 - v625;
        if (v32)
        {
          LODWORD(v626) = v553;
        }
      }

      ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v551, v534, v535, v536, v537, v538, v539);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  }

  if (!RuleMgr::isEmpty(v615))
  {
    ParentFirstStateIdIterator::ParentFirstStateIdIterator(&v623, v18);
    while (v627)
    {
      v560 = StateMgr::getChildRules(v611, *(v624 + 4 * v626), v554, v555, v556, v557, v558, v559);
      v567 = v560;
      if (*(v560 + 8))
      {
        v568 = 0;
        v612 = v560;
        while (1)
        {
          v569 = *(*v567 + 2 * v568);
          Desc = RuleMgr::getDesc(v615, v569, v561, v562, v563, v564, v565, v566);
          if (*(Desc + 8))
          {
            break;
          }

LABEL_393:
          ++v568;
          v567 = v612;
          if (v568 >= *(v612 + 8))
          {
            goto LABEL_394;
          }
        }

        v571 = 0;
        v572 = 0;
        while (2)
        {
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "RuleDescription");
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v569);
          v573 = *Desc;
          v574 = *(*Desc + v571);
          if (v574 <= 1)
          {
            if (v574)
            {
              if (v574 != 1)
              {
                goto LABEL_392;
              }

              DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), "State");
              DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
              DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
              v578 = *(v573 + v571 + 8);
            }

            else
            {
              DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), "EndOperation");
              v575 = *(this + 5);
              v576 = *(v573 + v571 + 8);
              if (v576 <= 2)
              {
                goto LABEL_389;
              }

LABEL_382:
              v577 = "Optional";
LABEL_390:
              DgnTextFileWriter::setLineFieldValue(v634, v575, v577);
              DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
              v578 = 0;
            }
          }

          else
          {
            switch(v574)
            {
              case 2:
                DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), "Rule");
                DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
                DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
                v578 = *(v573 + v571 + 8);
                break;
              case 4:
                DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), "Word");
                DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), &byte_262899963);
                v579 = *(this + 6);
                v584 = GetWordName(a3, *(v573 + v571 + 8), 0, 0, v580, v581, v582, v583);
                DgnTextFileWriter::setLineFieldValue(v634, v579, v584);
                v578 = *(v573 + v571 + 4);
                break;
              case 3:
                DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), "StartOperation");
                v575 = *(this + 5);
                v576 = *(v573 + v571 + 8);
                if (v576 >= 3)
                {
                  goto LABEL_382;
                }

LABEL_389:
                v577 = off_279B3F868[v576];
                goto LABEL_390;
              default:
LABEL_392:
                DgnTextFileWriter::writeNextLine(v634);
                ++v572;
                v571 += 12;
                if (v572 >= *(Desc + 8))
                {
                  goto LABEL_393;
                }

                continue;
            }
          }

          break;
        }

        DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), v578);
        goto LABEL_392;
      }

LABEL_394:
      v585 = *(v624 + 4 * v626);
      *(v624 + 4 * v626) = 0;
      v586 = v626 + 1;
      v15 = v627 == 1;
      LODWORD(v626) = v626 + 1;
      --v627;
      if (v15)
      {
        v626 = 0;
      }

      else
      {
        v32 = v586 >= v625;
        v587 = v586 - v625;
        if (v32)
        {
          LODWORD(v626) = v587;
        }
      }

      ParentFirstStateIdIterator::addChildStatesToQueue(&v623, v585, v561, v562, v563, v564, v565, v566);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v624);
  }

  v588 = *(v615 + 10);
  v623 = 0;
  v624 = 0;
  EnvMgr::getItemsWithEnv(v588, &v623);
  if (v624)
  {
    v589 = 0;
    do
    {
      v590 = *(v623 + v589);
      v591 = EnvMgr::getItemEnvId(v588, v590);
      v598 = EnvMgr::getNameIds(v588, v591, v592, v593, v594, v595, v596, v597);
      v605 = EnvMgr::getValues(v588, v591, v599, v600, v601, v602, v603, v604);
      if (*(v598 + 8))
      {
        v606 = v605;
        v607 = 0;
        v608 = 0;
        do
        {
          v609 = EnvMgr::getName(v588, *(*v598 + 2 * v608));
          DgnTextFile::convertToEnvValueFormat(*v606 + v607, &v619);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 1), "RuleEnv");
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 3), v590);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 4), v609);
          if (v620)
          {
            v610 = v619;
          }

          else
          {
            v610 = &byte_262899963;
          }

          DgnTextFileWriter::setLineFieldValue(v634, *(this + 5), v610);
          DgnTextFileWriter::setLineFieldValue(v634, *(this + 6), &byte_262899963);
          DgnTextFileWriter::setLineFieldIntegerValue(v634, *(this + 7), 0);
          DgnTextFileWriter::writeNextLine(v634);
          ++v608;
          v607 += 16;
        }

        while (v608 < *(v598 + 8));
      }

      ++v589;
    }

    while (v589 < v624);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v623);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v618);
  DgnString::~DgnString(&v619);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v621);
  DgnArray<DgnString>::releaseAll(&v628);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v630);
  DgnIArray<Utterance *>::~DgnIArray(&v632);
  DgnTextFileWriter::~DgnTextFileWriter(v634);
}

void sub_26275590C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a16);
  DgnString::~DgnString(&a18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a20);
  DgnArray<DgnString>::releaseAll(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a29);
  DgnIArray<Utterance *>::~DgnIArray(&a31);
  DgnTextFileWriter::~DgnTextFileWriter(&a33);
  _Unwind_Resume(a1);
}

uint64_t *UserMgr::startupUserMgr(uint64_t a1)
{
  result = MemChunkAlloc(8uLL, 0);
  *result = a1;
  UserMgr::smpUserMgr = result;
  return result;
}

void UserMgr::printSize(UserMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/usermgr.cpp", 61, &v32);
  if (v33)
  {
    v15 = v32;
  }

  else
  {
    v15 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &byte_262899963, a3, &byte_262899963, v15);
  DgnString::~DgnString(&v32);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &byte_262899963);
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v20 = 4;
  }

  else
  {
    v20 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/usermgr.cpp", 62, &v32);
  if (v33)
  {
    v25 = v32;
  }

  else
  {
    v25 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v21, v22, v23, v24, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v25, v20, v20, 0);
  DgnString::~DgnString(&v32);
  *a4 += v20;
  *a5 += v20;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/user/usermgr.cpp", 63, &v32);
  if (v33)
  {
    v30 = v32;
  }

  else
  {
    v30 = &byte_262899963;
  }

  v31 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v26, v27, v28, v29, a3, &byte_262899963, (35 - a3), (35 - a3), v30, *a4, *a5, *a6);
  DgnString::~DgnString(&v32);
}

void sub_262755DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void MrecInitModule_btlat_kernel(void)
{
  if (!gParDebugLatticeConstruction)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugLatticeConstruction", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugLatticeConstruction = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugLatticeConstruction);
  }

  if (!gParDebugLatticeWatchTheseWords)
  {
    v2 = MemChunkAlloc(0x48uLL, 0);
    StringGlobalParamBase::StringGlobalParamBase(v2, "DebugLatticeWatchTheseWords", &byte_262899963, &byte_262899963, &byte_262899963, 0, 0);
    *v3 = &unk_287526E40;
    gParDebugLatticeWatchTheseWords = v3;
    v4 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v4, &gParDebugLatticeWatchTheseWords);
  }
}

uint64_t BackTraceItem::computeHash(_DWORD *a1)
{
  HIDWORD(v2) = CWIDAC::computeHash(a1);
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[6];
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[7];
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[8];
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[9];
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[10];
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[11];
  LODWORD(v2) = HIDWORD(v2);
  HIDWORD(v2) = (v2 >> 19) + a1[13];
  LODWORD(v2) = HIDWORD(v2);
  return (v2 >> 19) + a1[14];
}

uint64_t BackTraceNodeCache::sizeObject(uint64_t a1, int a2)
{
  v3 = sizeObject<unsigned int>(a1 + 8, a2);
  v4 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 4;
  }

  if (a2 == 3)
  {
    v4 = 0;
    v5 = v3;
  }

  else
  {
    v5 = v3 + 1;
  }

  return v5 + v4;
}

uint64_t BackTraceNodeCache::createNodeCache(int a1, uint64_t a2, char a3, char a4)
{
  result = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v10 = MemChunkAlloc(0x98uLL, 0);
        return BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<false,true>>::BtNodeCacheType(v10, a2, a3, a4);
      }
    }

    else
    {
      v13 = MemChunkAlloc(0x98uLL, 0);
      return BtNodeCacheType<BtTrigramNodeHashKey,BtTrigramNodeHashKey>::BtNodeCacheType(v13, a2, a3, a4);
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        v11 = MemChunkAlloc(0x98uLL, 0);
        return BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,true>>::BtNodeCacheType(v11, a2, a3, a4);
      case 3:
        v12 = MemChunkAlloc(0x98uLL, 0);
        return BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,false>>::BtNodeCacheType(v12, a2, a3, a4);
      case 4:
        v9 = MemChunkAlloc(0x98uLL, 0);
        return BtNodeCacheType<BtUnigramNodeHashKey,BtUnigramNodeHashKey>::BtNodeCacheType(v9, a2, a3, 0);
    }
  }

  return result;
}

uint64_t BtNBestResult::init(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1)
  {
    DgnPrimArray<unsigned int>::~DgnPrimArray((v6 + 17));
    DgnPrimArray<unsigned int>::~DgnPrimArray((v6 + 13));
    DgnPriorityQueue<NBestQueueItem>::~DgnPriorityQueue((v6 + 4));
    BitArray::~BitArray((v6 + 2));
    MemChunkFree(v6, 0);
  }

  v7 = MemChunkAlloc(0x98uLL, 0);
  result = NetNBestAlg::NetNBestAlg(v7, a2, a3);
  *a1 = result;
  return result;
}

NetNBestAlg *DgnDelete<NetNBestAlg>(NetNBestAlg *result)
{
  if (result)
  {
    NetNBestAlg::~NetNBestAlg(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void BtNBestResult::prepare(uint64_t a1, uint64_t a2, unsigned int *a3, int a4)
{
  if (*(a1 + 93) == 1)
  {
    v5 = *a3;
    *(a1 + 8) = v5;
    *(a1 + 12) = a3[1];
    *(a1 + 16) = *(a3 + 2);
    if ((*(a1 + 94) & 1) == 0 && v5 != -50331650)
    {
      v8 = *(*(**VocMgr::smpVocMgr + ((v5 >> 22) & 0x3F8)) + 184);
      BitArray::setSizeNoGrow((a1 + 40), 0);
      BitArray::setSize((a1 + 40), v8);
      *(a1 + 92) = 0;
      *(a1 + 32) = a2;
      *(a1 + 88) = a4;
      v9 = *(a1 + 64);
      if (v9 >= 1)
      {
        v10 = (v9 + 3) & 0xFFFFFFFC;
        v11 = vdupq_n_s64(v9 - 1);
        v12 = xmmword_26286BF80;
        v13 = xmmword_26286B680;
        v14 = (*(a1 + 56) + 40);
        v15 = vdupq_n_s64(4uLL);
        do
        {
          v16 = vmovn_s64(vcgeq_u64(v11, v13));
          if (vuzp1_s16(v16, *v11.i8).u8[0])
          {
            *(v14 - 8) = 0;
          }

          if (vuzp1_s16(v16, *&v11).i8[2])
          {
            *(v14 - 4) = 0;
          }

          if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, *&v12))).i32[1])
          {
            *v14 = 0;
            v14[4] = 0;
          }

          v12 = vaddq_s64(v12, v15);
          v13 = vaddq_s64(v13, v15);
          v14 += 16;
          v10 -= 4;
        }

        while (v10);
      }

      while (v9 < v8)
      {
        if (v9 == *(a1 + 68))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(a1 + 56, 1, 1);
          LODWORD(v9) = *(a1 + 64);
        }

        v9 = *(a1 + 56) + 16 * v9;
        *v9 = 0;
        *(v9 + 8) = 0;
        LODWORD(v9) = *(a1 + 64) + 1;
        *(a1 + 64) = v9;
      }

      *(a1 + 80) = 0;
    }
  }
}

uint64_t sizeObject<HistoryAndBigScore>(uint64_t a1, int a2)
{
  v11 = 0x70000000FFFFFFFELL;
  v12 = 1879048192;
  v4 = sizeObject(&v11, 2);
  if (a2 == 3)
  {
    return 0;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 12;
  }

  else
  {
    v5 = 16;
  }

  if ((a2 & 0xFFFFFFFE) != 2)
  {
    v6 = v4;
    v7 = *(a1 + 8);
    if (v7 >= 1)
    {
      v8 = v7 + 1;
      v9 = 12 * v7 - 12;
      do
      {
        v5 += sizeObject(*a1 + v9, a2);
        --v8;
        v9 -= 12;
      }

      while (v8 > 1);
    }

    if (!a2)
    {
      v5 += v6 * (*(a1 + 12) - *(a1 + 8));
    }
  }

  return v5;
}

uint64_t BackTraceLatticeBuilder::BackTraceLatticeBuilder(uint64_t a1, Constraint *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, int a7, int a8, double a9, int a10, int a11, int a12, unsigned int a13, int a14, int a15, int a16, char a17, char a18, char a19, int a20, int a21, char a22, char a23, char a24, uint64_t a25, int a26)
{
  *a1 = a19;
  *(a1 + 4) = 0x7000000000000000;
  v31 = *(a3 + 32);
  *(a1 + 16) = a3;
  *(a1 + 24) = v31;
  *(a1 + 32) = a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = a5;
  *(a1 + 64) = a6;
  Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::Hash(a1 + 72, 0, 128);
  *(a1 + 184) = 0;
  *(a1 + 196) = 0x3FFF;
  *(a1 + 200) = xmmword_26286CC40;
  *(a1 + 216) = 0;
  DgnString::DgnString((a1 + 224));
  v32 = a13;
  *(a1 + 277) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = -16;
  *(a1 + 340) = 0x3FFFFCFFFFFDLL;
  *(a1 + 348) = xmmword_26286CC40;
  *(a1 + 364) = 0;
  *(a1 + 366) = 1310720000;
  *(a1 + 370) = 0;
  *(a1 + 372) = -2;
  *(a1 + 376) = 1879048192;
  *(a1 + 384) = a9;
  *(a1 + 392) = a8;
  *(a1 + 396) = a10;
  *(a1 + 400) = a11;
  *(a1 + 404) = a12;
  *(a1 + 408) = a13;
  *(a1 + 412) = a14;
  *(a1 + 416) = a15;
  *(a1 + 420) = a16;
  *(a1 + 424) = a17;
  *(a1 + 425) = a18;
  *(a1 + 432) = a20;
  *(a1 + 436) = a21;
  *(a1 + 440) = a22;
  *(a1 + 441) = a23;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 512) = a24;
  *(a1 + 520) = a25;
  *(a1 + 528) = a26;
  *(a1 + 532) = a7;
  *(a1 + 536) = 0u;
  *(a1 + 560) = 0;
  if (MemChunkRegion::smTlsID != -1)
  {
    v33 = pthread_getspecific(MemChunkRegion::smTlsID);
    if (v33)
    {
      v34 = *v33;
      if (*v33)
      {
        goto LABEL_6;
      }

      pthread_setspecific(MemChunkRegion::smTlsID, 0);
    }
  }

  v34 = &gGlobalMemChunkRegion;
LABEL_6:
  if (v34 == MemChunkRegion::getBlockRegion(a2, v32))
  {
    v37 = *(a1 + 48);
  }

  else
  {
    Constraint::cloneConstraint(a2, v35);
    v37 = v36;
    *(a1 + 40) = v36;
    *(a1 + 48) = v36;
  }

  *(a1 + 280) = BackTraceNodeCache::createNodeCache(*(a1 + 532), v37, *(a1 + 64), a23);
  if (*(a1 + 425) == 1)
  {
    v38 = MemChunkAlloc(0x70uLL, 0);
    *(a1 + 560) = Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::Hash(v38, 0, 128);
  }

  v39 = MemChunkAlloc(0x68uLL, 0);
  *(a1 + 288) = HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::HashKEV(v39, 0, 128);
  if (*(a1 + 512) == 1)
  {
    *(*(a1 + 56) + 50) = 0;
  }

  return a1;
}

{

  return BackTraceLatticeBuilder::BackTraceLatticeBuilder(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void BackTraceLatticeBuilder::~BackTraceLatticeBuilder(Constraint **this)
{
  DgnDelete<Constraint>(this[5]);
  this[5] = 0;
  DgnDelete<BackTraceNodeCache>(this[35]);
  this[35] = 0;
  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(this[70]);
  this[70] = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 67));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 62));
  DgnIArray<Utterance *>::~DgnIArray((this + 60));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 58));
  DgnIArray<Utterance *>::~DgnIArray((this + 56));
  DgnIArray<Utterance *>::~DgnIArray((this + 39));
  DgnArray<DgnArray<ParseToken>>::releaseAll((this + 37));
  DgnDelete<Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>>(this[36]);
  BtNBestResult::~BtNBestResult(this + 23);
  Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::~Hash((this + 9));
}

void (***DgnDelete<BackTraceNodeCache>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

uint64_t BackTraceLatticeBuilder::getLatticeType(BackTraceLatticeBuilder *this, int a2, int a3, int a4, BOOL a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = this;
  if (a3 == 2)
  {
    if (this)
    {
      if ((a2 & 1) == 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/btlat.cpp", 501, "kernel/btlat", 2, "%.500s", a7, a8, "Bigram lattice, node creation use right word, with no coarticulation");
      }

      return 0;
    }

    else if (a2)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else if (a3 == 3)
  {
    if ((a2 & 1) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/btlat.cpp", 481, "kernel/btlat", 2, "%.500s", a7, a8, "Trigram lattice with no coarticulation");
    }

    return v8 ^ 1u;
  }

  else
  {
    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/btlat.cpp", 519, "kernel/btlat", 2, "%.500s", a7, a8, "Unigram lattice does not work with SearchLatticeComputeOnlyBestTimes set to True");
    }

    return 4;
  }
}

uint64_t BackTraceLatticeBuilder::getLMScore(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, LMStats *a5)
{
  if (*(a1 + 512) == 1)
  {
    *(*(a1 + 56) + 50) = 1;
  }

  v10 = *(a2 + 4);
  v42[0] = *a2;
  v42[1] = v10;
  v43 = *(a2 + 8);
  v11 = *(a3 + 4);
  v44 = *a3;
  v45 = v11;
  v46 = *(a3 + 8);
  v12 = *Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::findBucket(a1 + 72, v42);
  if (v12)
  {
    if (a4)
    {
      *a4 = *(v12 + 64);
    }

    if (*(a1 + 512) == 1)
    {
      *(*(a1 + 56) + 50) = 0;
    }

    v13 = *(v12 + 60);
    goto LABEL_45;
  }

  v40 = 0;
  v41 = 0;
  if (*a3 == -50331651)
  {
    v14 = a2;
  }

  else
  {
    v14 = a3;
  }

  v15 = *(a1 + 48);
  if ((*(v15 + 68) & 0xFFFFFFFD) != 0)
  {
    v16 = 0;
  }

  else
  {
    WeightsForState = Constraint::getWeightsForState(v15, v14);
    v17 = WeightsForState;
    if ((*(*(a1 + 48) + 68) & 0xFFFFFFFD) != 0)
    {
      v16 = 0;
      goto LABEL_32;
    }

    if (WeightsForState != 0xFFFF)
    {
      v19 = *v14 >> 25;
      v20 = v19 + 1;
      if (HIDWORD(v41) <= v19)
      {
        v38 = 0;
        HIDWORD(v41) = realloc_array(v40, &v38, 16 * v20, 16 * v41, 16 * v41, 1) >> 4;
        v40 = v38;
      }

      v21 = v41;
      v36 = v19 + 1;
      v37 = v19;
      if (v41 <= v20)
      {
        if (v41 <= v19)
        {
          v23 = v19 - v41 + 1;
          v24 = 16 * v41;
          do
          {
            v25 = v40 + v24;
            *v25 = 0;
            v25[1] = 0;
            v24 += 16;
            --v23;
          }

          while (v23);
        }
      }

      else if (v41 > v20)
      {
        v22 = 16 * v41 - 16;
        do
        {
          --v21;
          DgnPrimArray<unsigned int>::~DgnPrimArray(v40 + v22);
          v22 -= 16;
        }

        while (v21 > v36);
      }

      LODWORD(v41) = v36;
      v26 = v40 + 16 * v37;
      v27 = *(v26 + 2);
      if (v27 == *(v26 + 3))
      {
        DgnPrimArray<unsigned int>::reallocElts(v40 + 16 * v37, 1, 1);
        v27 = *(v26 + 2);
      }

      *(*v26 + 4 * v27) = v17;
      ++*(v26 + 2);
      v16 = &v40;
      goto LABEL_32;
    }

    v16 = &v40;
  }

  v17 = 0xFFFFLL;
LABEL_32:
  if (*(a3 + 20) == -83886084)
  {
    v28 = *(a1 + 56);
    v38 = v28;
    v39 = 1;
    SearchLMScorer::setContext(v28, 0xFAFFFFFC, a2, 0, 1, v16, a5, 0, 0xFAFFFFFC, 0xFAFFFFFC);
    if (*a3 == -50331651)
    {
      v13 = SearchLMScorer::lmScoreFinalSilence(*(a1 + 56), a5);
    }

    else if ((*a3 & 0xFFFFFF) == 0xFFFFF8)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(a1 + 432) + SearchLMScorer::lmScoreNonSilCwidac(*(a1 + 56), a3, a5);
    }

    SearchLMScorer::unsetContext(v28);
    v30 = 0;
  }

  else
  {
    v29 = *(a1 + 56);
    v38 = v29;
    v39 = 1;
    SearchLMScorer::setContext(v29, 0xFAFFFFFC, a2, 0, 1, v16, a5, 0, 0xFAFFFFFC, 0xFAFFFFFC);
    v30 = SearchLMScorer::lmScoreNonAcousticWord(*(a1 + 56), *(a3 + 20), v17, a5);
    SearchLMScorer::unsetContext(v29);
    v31 = *(a1 + 56);
    v32 = *(a3 + 20);
    v38 = v31;
    v39 = 1;
    SearchLMScorer::setContext(v31, 0xFAFFFFFC, a2, 0, 1, v16, a5, 1, v32, 0xFAFFFFFC);
    v33 = SearchLMScorer::lmScoreNonSilCwidac(*(a1 + 56), a3, a5);
    v34 = *(a1 + 432);
    SearchLMScorer::unsetContext(v31);
    v13 = v33 + v30 + v34;
  }

  v38 = __PAIR64__(v30, v13);
  Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::add(a1 + 72, v42, &v38);
  if (a4)
  {
    *a4 = v30;
  }

  if (*(a1 + 512) == 1)
  {
    *(*(a1 + 56) + 50) = 0;
  }

  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v40);
LABEL_45:
  MrecInitModule_sdpres_sdapi();
  return v13;
}

void sub_262756DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(va);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::add(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v6);
  }

  v7 = CWIDACPair::computeHash(a2);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (-1640531527 * v7) >> -v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 80);
  v11 = *(a1 + 32);
  if (!v11)
  {
    DgnPool::addChunk((a1 + 24));
    v11 = *(a1 + 32);
  }

  v12 = (v10 + 8 * v9);
  *(a1 + 32) = *v11;
  *(v11 + 8) = 0;
  CWIDACPair::CWIDACPair(v11 + 12, a2);
  *(v11 + 60) = *a3;
  *(v11 + 8) = v7;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v11 = *v12;
  }

  else
  {
    *v11 = 0;
    v13 = *v12;
    if (*v12)
    {
      do
      {
        v12 = v13;
        v13 = *v13;
      }

      while (v13);
    }
  }

  *v12 = v11;
}

uint64_t BackTraceLatticeBuilder::bootStrap(BackTraceLatticeBuilder *this, WordLattice *a2, PelScorer *a3, BOOL a4, LMStats *a5)
{
  v6 = *(this + 35);
  result = Lattice<WordLatticeLC>::createNode(a2);
  v26 = result;
  v8 = *(v6 + 16);
  if (v8 == *(v6 + 20))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v6 + 8, 1, 1);
    v8 = *(v6 + 16);
  }

  *(*(v6 + 8) + 4 * v8) = 0;
  v9 = *(this + 1);
  v10 = v9 - 1;
  if (!*(*(this + 2) + 48))
  {
    v10 = *(this + 1);
  }

  v24 = v10;
  ++*(v6 + 16);
  *(this + 82) = v9 - 1;
  if (v9 >= 1)
  {
    v11 = 0;
    v12 = 16 * v9;
    do
    {
      v13 = v9 - 1;
      result = CWIDCrumbBank::hasRightSilenceCrumb(*(this + 2), v9 - 1);
      if (!result)
      {
        break;
      }

      FinalSilFrameScore = CWIDCrumbBank::getFinalSilFrameScore(*(this + 2), v9 - 1);
      *v27 = 0;
      result = CWIDCrumbBank::getRightSilenceInfo(*(this + 2), v9 - 1, &v27[1], v27);
      v15 = *(*(this + 3) + 8);
      v16 = *(v15 + 36 * v27[1] + 32);
      v17 = *(v15 + 36 * v16 + 28);
      v11 += FinalSilFrameScore;
      v18 = *(this + 424);
      if (v18 == 1 && v13 != v17)
      {
        goto LABEL_16;
      }

      v19 = *(*(a2 + 10) + 24 * v26);
      v20 = *(this + 512) ? v27[1] : v16;
      v21 = *(this + 37) + v12;
      v22 = *(v21 - 8);
      if (v22 == *(v21 - 4))
      {
        result = DgnArray<BackTraceItem>::reallocElts(v21 - 16, 1, 1);
        v22 = *(v21 - 8);
        LOBYTE(v18) = *(this + 424);
      }

      v23 = *(v21 - 16) + (v22 << 6);
      *v23 = 0x3FFFFCFFFFFDLL;
      *(v23 + 8) = xmmword_26286CC40;
      *(v23 + 24) = v24;
      *(v23 + 28) = v24;
      *(v23 + 32) = 0;
      *(v23 + 36) = v11;
      *(v23 + 40) = 0x7000000070000000;
      *(v23 + 48) = v26;
      *(v23 + 52) = v19;
      *(v23 + 56) = v20;
      *(v23 + 60) = 0;
      *(v21 - 8) = v22 + 1;
      ++*(this + 83);
      if (v18)
      {
LABEL_16:
        if (v13 == v17)
        {
          *(this + 82) = v9 - 1;
          return result;
        }
      }

      v12 -= 16;
      --v9;
    }

    while ((v13 + 1) > 1);
  }

  return result;
}

double BackTraceLatticeBuilder::assembleRightGerms(BackTraceLatticeBuilder *this, __n128 a2)
{
  *(this + 84) = -2;
  v2 = *(this + 82);
  v3 = *(this + 37);
  v4 = v3 + 16 * v2;
  if (*(v4 + 8))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1879048192;
    v10 = -2;
    do
    {
      v11 = (*v4 + v6);
      v12 = *v11;
      v13 = v11[9];
      v14 = v11[14];
      if (*v11 == -50331651)
      {
        *(this + 84) = v11[12];
        v9 = v13;
        v10 = v14;
      }

      else
      {
        v15 = *(v11 + 2);
        v16 = *(v11 + 3);
        a2 = *(v11 + 2);
        v17 = *(v11 + 60);
        v18 = *(this + 80);
        if (v18 == *(this + 81))
        {
          v21 = v16;
          v22 = v15;
          v23 = a2;
          DgnArray<RecogGerm>::reallocElts(this + 312, 1, 1);
          v16 = v21;
          v15 = v22;
          a2 = v23;
          v18 = *(this + 80);
          v2 = *(this + 82);
          v3 = *(this + 37);
        }

        v19 = *(this + 39) + 44 * v18;
        *v19 = v12;
        *(v19 + 4) = v15;
        *(v19 + 6) = v16;
        *(v19 + 8) = a2;
        *(v19 + 24) = v17;
        *(v19 + 26) = 1310720000;
        *(v19 + 30) = 0;
        *(v19 + 32) = v14;
        *(v19 + 36) = v13;
        *(v19 + 40) = v8;
        *(this + 80) = v18 + 1;
        ++v8;
      }

      ++v7;
      v4 = v3 + 16 * v2;
      v6 += 64;
    }

    while (v7 < *(v4 + 8));
    if (*(this + 84) != -2)
    {
      *(this + 85) = -50331651;
      *(this + 86) = 0x3FFF;
      a2.n128_u64[0] = 0xFFFFFFFE00000000;
      *(this + 348) = xmmword_26286CC40;
      *(this + 364) = 0;
      *(this + 366) = 1310720000;
      *(this + 185) = 0;
      *(this + 95) = v8;
      *(this + 94) = v9;
      *(this + 93) = v10;
    }
  }

  return a2.n128_f64[0];
}

uint64_t BackTraceLatticeBuilder::seedOneInContext(unint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, int a5, int a6, unsigned int a7, int a8, uint64_t a9, LMStats *a10, uint64_t a11, char a12)
{
  v19 = VocMgr::smpVocMgr;
  v20 = *a3;
  if (*a3 >> 25 == 126)
  {
    v149 = 0;
  }

  else
  {
    v149 = *(*(**VocMgr::smpVocMgr + 8 * (v20 >> 25)) + 56);
  }

  if (!BackTraceLatticeBuilder::canSeedInAcousticContext(a1, a4, a3))
  {
    return 0;
  }

  v142 = v19;
  v21 = a5;
  v150 = a6;
  v148 = a8;
  v22 = *a4;
  if (v22 == -50331650)
  {
    v151 = 0;
    v137 = 0;
    v23 = a4[9];
    v24 = v20;
    v141 = v23;
  }

  else
  {
    v25 = a4[8];
    v26 = *(*(a1 + 24) + 8);
    v27 = (v26 + 36 * v25);
    v28 = v27[8];
    v29 = v26 + 36 * v28;
    v151 = v27[6] != v27[7];
    if ((*(*(a1 + 48) + 68) & 0xFFFFFFFD) != 0)
    {
      v146 = 0;
      LODWORD(v30) = a4[2];
    }

    else
    {
      v30 = a4[2];
      v146 = *(*(*(*(**v142 + ((v22 >> 22) & 0x3F8)) + 56) + 288) + 4 * v30);
    }

    v31 = a4[1];
    v165 = *a4;
    v166 = v31;
    *(&v167 + 4) = *(a4 + 3);
    v32 = a4[5];
    LODWORD(v167) = v30;
    HIDWORD(v167) = v32;
    v153 = *v29;
    v154 = *(v29 + 8);
    if (*(a1 + 512) == 1)
    {
      v33 = *(a1 + 528);
      v34 = v26 + 36 * (v25 - v33);
      v165 = *v34;
      v166 = *(v34 + 4);
      v167 = *(v34 + 8);
      v35 = v26 + 36 * (v28 - v33);
      v153 = *v35;
      v154 = *(v35 + 8);
    }

    LMScore = BackTraceLatticeBuilder::getLMScore(a1, &v153, &v165, 0, a10);
    if (*(a1 + 512) == 1)
    {
      v37 = *(*(a1 + 24) + 8);
      v38 = (v37 + 36 * a4[8]);
      v39 = v38[8];
      v40 = v39 - *(a1 + 528);
      v41 = *(a1 + 520);
      if (*v38 == -50331650)
      {
        v42 = -1;
      }

      else
      {
        v42 = *(v37 + 36 * v39 + 28) - 1;
      }

      v45 = *a4;
      if (v45 >> 25 == 126 || (v45 & 0xFFFFFF) == 0xFFFFF8)
      {
        v46 = 0;
      }

      else
      {
        v46 = *(*(*(*(**VocMgr::smpVocMgr + ((v45 >> 22) & 0x3F8)) + 48) + 592) + 2 * (v45 & 0xFFFFFF));
      }
    }

    else
    {
      v41 = *(a1 + 16);
      v43 = *(*(a1 + 24) + 8);
      v44 = (v43 + 36 * a4[8]);
      v40 = v44[8];
      if (*v44 == -50331650)
      {
        v42 = -1;
      }

      else
      {
        v42 = *(v43 + 36 * v40 + 28) - 1;
      }

      v47 = *a4;
      if (v47 >> 25 == 126 || (v47 & 0xFFFFFF) == 0xFFFFF8)
      {
        v46 = 0;
      }

      else
      {
        v46 = *(*(*(*(**VocMgr::smpVocMgr + ((v47 >> 22) & 0x3F8)) + 48) + 592) + 2 * (v47 & 0xFFFFFF));
      }
    }

    AccumHistScore = CWIDCrumbBank::getAccumHistScore(v41, v42, v40, v46);
    v23 = a4[9];
    v137 = AccumHistScore;
    v141 = v23 - (LMScore + v146) - AccumHistScore;
    v24 = *a3;
  }

  v138 = a7;
  if (v24 >> 25 != 126)
  {
    if ((v24 & 0xFFFFFF) == 0xFFFFF8)
    {
      v145 = 0;
    }

    else
    {
      v145 = *(a1 + 432);
    }

    goto LABEL_34;
  }

  v145 = 0;
  if (v24 != -50331651)
  {
LABEL_34:
    v51 = a6;
    v50 = 0;
    LODWORD(v49) = a3[10];
    if (*(a1 + 336) == -2)
    {
      v49 = v49;
    }

    else
    {
      v49 = (v49 + 1);
    }

    goto LABEL_37;
  }

  v49 = 0;
  v50 = 1;
  v51 = a6;
LABEL_37:
  v52 = *(a1 + 328);
  v53 = (*(*(a1 + 296) + 16 * v52) + (v49 << 6));
  v54 = v53[12];
  v56 = v53[6];
  v55 = v53[7];
  v57 = v55 - v56;
  if (v55 == v56)
  {
    v144 = 0;
  }

  else
  {
    v144 = *(a1 + 436);
  }

  v58 = a3[9];
  v59 = v53[10];
  v60 = (*(a1 + 512) & a12) ^ 1;
  if (((v50 | v60) & 1) == 0)
  {
    v61 = v59 - (v58 + v51 + v53[11]);
    v62 = v61 - v21;
    if (v61 < v21)
    {
      if (a3[5] == -83886084)
      {
        v62 = 0;
      }

      v148 += v62;
      v21 = v59 - (v58 + v51 + v53[11]);
    }
  }

  if (*(a1 + 64) == 1)
  {
    if (((v50 | *(a1 + 440)) & 1) == 0)
    {
      v63 = v59 - (v23 + v51 + v21);
      v64 = v63 == v58;
      if (v63 >= v58)
      {
        v76 = v63 + v60;
        if (!v64)
        {
          v58 = v76;
        }
      }

      else
      {
        ++v58;
      }
    }
  }

  else
  {
    v58 = 0;
  }

  v65 = v53[8];
  v66 = *(a1 + 280);
  v147 = v21;
  v67 = v21 + v51 + v58 + *(v66[1] + 4 * *(*(a9 + 80) + 24 * v54));
  v68 = v67 + v23;
  v181[0] = v68;
  v69 = *(a1 + 8);
  v70 = 1879048192;
  v71 = 1879048192;
  if (v69 != 1879048192)
  {
    if ((a3[6] & 1) != 0 || (v71 = *(a1 + 8), *(a4 + 24) == 1))
    {
      v71 = *(a1 + 404) + v69;
    }

    if (v68 > v71)
    {
      return 0;
    }

    v70 = v71 - v67;
  }

  v72 = *a4;
  v136 = v70;
  v139 = v71;
  v140 = v57;
  if (*(a1 + 425) == 1)
  {
    if (v72 == -50331650)
    {
      v73 = -1;
    }

    else
    {
      v74 = *(*(a1 + 24) + 8);
      v75 = (v74 + 36 * *(v74 + 36 * a4[8] + 32));
      if (*v75 == -50331650)
      {
        v73 = 0;
      }

      else
      {
        v73 = *(v74 + 36 * v75[8] + 28);
      }
    }

    v77 = a4[1];
    v165 = *a4;
    v166 = v77;
    v167 = *(a4 + 2);
    v168 = v151;
    v169 = v24;
    v170 = v73;
    v171 = v54;
    v78 = *Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::findBucket(*(a1 + 560), &v165);
    if (!v78)
    {
      Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::add(*(a1 + 560), &v165, v181);
      goto LABEL_69;
    }

    if (*(v78 + 52) > v181[0])
    {
      *(v78 + 52) = v181[0];
LABEL_69:
      v72 = *a4;
      v24 = *a3;
      v66 = *(a1 + 280);
      v52 = *(a1 + 328);
      goto LABEL_70;
    }

    return 0;
  }

LABEL_70:
  v135 = a4[8];
  v80 = *(*(a1 + 24) + 8) + 36 * v135;
  v81 = a4[1];
  v82 = a4[2];
  v179[0] = v72;
  v179[1] = v81;
  v180 = *(a4 + 2);
  v83 = a3[1];
  v84 = a3[2];
  Root = v24;
  v175 = v83;
  v178 = *(a3 + 4);
  v179[2] = v82;
  v179[3] = -2;
  v176 = v84;
  v177 = -2;
  v173 = 0;
  v143 = v80;
  v152 = (*(*v66 + 40))(v66, a9, v52, v179, *(v80 + 24) != *(v80 + 28), &Root, &v173);
  if (v173 == 1)
  {
    v86 = *(a1 + 420);
    if (v86)
    {
      if (*(a9 + 24) > v86)
      {
        return 1;
      }
    }

    v87 = *(a1 + 412);
    if (v87)
    {
      v88 = *(a1 + 328);
      if (v88 != -16)
      {
        v89 = *(a1 + 4) - v88;
        if (v89 >= 0x32)
        {
          LODWORD(v85) = *(a9 + 24);
          if (v85 / v89 > v87 / 100.0)
          {
            return 1;
          }
        }
      }
    }
  }

  v90 = *(*(a9 + 80) + 24 * v152);
  v91 = *(*(a1 + 280) + 8);
  if (*(v91 + 4 * v90) > v67)
  {
    *(v91 + 4 * v90) = v67;
  }

  if ((*(*(a1 + 48) + 68) & 0xFFFFFFFD) == 0 && Root >> 25 != 126 && v176 && *(*(v149 + 384) + v176))
  {
    Root = v20 & 0xFE000000 | 0xFFFFFB;
    v178 = vdup_n_s32(0xFAFFFFFC);
    LOWORD(v175) = 0x3FFF;
  }

  if (*a1 == 1 && (Root & 0xFFFFFF) != 0xFFFFFB)
  {
    Root = VocMgr::getRoot(v142, Root);
  }

  v172[0] = v147 - (v148 + v145);
  v172[1] = v148;
  v172[2] = v150;
  v172[3] = v145;
  v172[4] = v58 - v144 - v65;
  v172[5] = v65;
  v172[6] = v144;
  if (*(a1 + 532) == 4)
  {
    v178.i32[0] = -83886084;
  }

  WordLatticeLC::WordLatticeLC(&v165, &Root, *(a1 + 328), v56 - *(a1 + 328), v140, v172);
  v164 = 0;
  updated = Lattice<WordLatticeLC>::maybeCreateAndConnectOrUpdateLink(a9, v152, v54, &v165, 0, &v164);
  v94 = v139;
  if (updated >= 1 && ((v95 = *(a1 + 416)) != 0 && *(a9 + 104) > v95 || (v96 = *(a1 + 408)) != 0 && (v97 = *(a1 + 328), v97 != -16) && (v98 = *(a1 + 4) - v97, v98 >= 0x32) && (LODWORD(v93) = *(a9 + 104), v93 / v98 > v96 / 100.0)))
  {
    v79 = 1;
  }

  else
  {
    if (*(a1 + 396))
    {
      BackTraceLatticeBuilder::updateLinkBestPathScore(a1, v181[0], *(*(a9 + 128) + 136 * v164 + 112));
      v94 = v139;
    }

    if (*a4 == -50331650)
    {
      if (v173 == 1)
      {
        v99 = *(a1 + 280);
        v100 = *(v99[1] + 4 * *(*(a9 + 80) + 24 * v152)) + v141;
        if (v100 <= v94)
        {
          v153 = 0x3FFFFAFFFFFFLL;
          v154 = xmmword_26286CC40;
          *v159 = 0x3FFFFCFFFFFELL;
          *&v159[8] = xmmword_26286CC40;
          v101 = (*(*v99 + 40))(v99, a9, 0, &v153, 0, v159, &v173);
          v102 = v143[6];
          v103 = v143[7];
          *v159 = 0u;
          *&v159[20] = 0;
          LODWORD(v160) = 0;
          *&v159[16] = v141;
          WordLatticeLC::WordLatticeLC(&v153, a4, 0, v102, v103 - v102, v159);
          Link = Lattice<WordLatticeLC>::createLink(a9, v101, v152, &v153);
          Lattice<WordLatticeLC>::connectInLinkUnordered(a9, Link);
          Lattice<WordLatticeLC>::connectOutLinkUnordered(a9, Link);
          if (*(a1 + 396))
          {
            BackTraceLatticeBuilder::updateLinkBestPathScore(a1, v100, *(*(a9 + 128) + 136 * Link + 112));
          }

          WordLatticeLC::~WordLatticeLC(&v153);
        }
      }

      else if (*(a1 + 396))
      {
        v115 = *(*(a9 + 80) + 24 * v152 + 16);
        if (v115 != -2)
        {
          v116 = *(a9 + 128);
          do
          {
            v117 = v116 + 136 * v115;
            BackTraceLatticeBuilder::updateLinkBestPathScore(a1, vaddvq_s32(*(v117 + 28)) + *(v117 + 44) + *(v117 + 48) + *(v117 + 52) + *(*(*(a1 + 280) + 8) + 4 * *(*(a9 + 80) + 24 * v152)), *(v117 + 112));
            v116 = *(a9 + 128);
            v115 = *(v116 + 136 * v115 + 124);
          }

          while (v115 != -2);
        }
      }
    }

    else
    {
      v105 = *(a4 + 24) | *(a3 + 24);
      v106 = *(v143 + 3);
      v107 = a4[9];
      v108 = *(*(a9 + 80) + 24 * v152);
      v109 = v135;
      if ((*(a1 + 512) & 1) == 0)
      {
        v109 = v143[8];
      }

      v110 = a4[1];
      LODWORD(v153) = *a4;
      HIDWORD(v153) = v110;
      v154 = *(a4 + 2);
      *&v155 = v106;
      *(&v155 + 1) = __PAIR64__(v141, v138);
      *&v156 = __PAIR64__(v137, v107);
      *(&v156 + 1) = __PAIR64__(v108, v152);
      v157 = v109;
      v158 = v105 & 1;
      if ((v173 & 1) != 0 || BackTraceItemCache::needCreateBTItem((a1 + 288), &v153))
      {
        v111 = (a1 + 296);
        v112 = *(*(a1 + 24) + 8);
        v113 = (v112 + 36 * v135);
        if (*v113 == -50331650)
        {
          v114 = 0;
        }

        else
        {
          v114 = *(v112 + 36 * v113[8] + 28);
        }

        v118 = *v111 + 16 * v114;
        v119 = *(v118 + 8);
        v120 = v119;
        if (v119 == *(v118 + 12))
        {
          DgnArray<BackTraceItem>::reallocElts(*v111 + 16 * v114, 1, 1);
          v120 = *(v118 + 8);
        }

        v121 = *v118 + (v120 << 6);
        *v121 = v153;
        *(v121 + 8) = v154;
        *(v121 + 24) = v155;
        *(v121 + 40) = v156;
        *(v121 + 56) = v157;
        *(v121 + 60) = v158;
        *(v118 + 8) = v120 + 1;
        ++*(a1 + 332);
        v122 = *(a1 + 288);
        if (v122)
        {
          *v159 = a1 + 296;
          *&v159[8] = v114;
          *&v159[12] = v119;
          HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::add(v122, v159);
        }

        if (*(a1 + 277) == 1)
        {
          if (a11)
          {
            if ((*(a1 + 278) & 1) == 0)
            {
              v123 = *(a11 + 8);
              if (v123 >= 1)
              {
                v124 = v123 + 1;
                v125 = *a11 + 8;
                v126 = v125;
                do
                {
                  v128 = *v126;
                  v126 += 3;
                  v127 = v128;
                  if (v128 > v136)
                  {
                    break;
                  }

                  v129 = *(v125 - 8);
                  v130 = *(*(*(a1 + 24) + 8) + 36 * v129 + 28);
                  BackTraceLatticeBuilder::getBackTraceItem(a1, a9, a4, v105 & 1, v143, v129, v127, 0, v159, v152, a10);
                  v131 = *v111 + 16 * v130;
                  v132 = *(v131 + 8);
                  if (v132 == *(v131 + 12))
                  {
                    DgnArray<BackTraceItem>::reallocElts(v131, 1, 1);
                    v132 = *(v131 + 8);
                  }

                  v133 = *v131 + (v132 << 6);
                  *v133 = *v159;
                  *(v133 + 8) = *&v159[8];
                  *(v133 + 24) = v160;
                  *(v133 + 40) = v161;
                  *(v133 + 56) = v162;
                  *(v133 + 60) = v163;
                  *(v131 + 8) = v132 + 1;
                  ++*(a1 + 332);
                  --v124;
                  v125 = v126;
                }

                while (v124 > 1);
              }
            }
          }
        }
      }
    }

    v79 = 0;
  }

  WordLatticeLC::~WordLatticeLC(&v165);
  return v79;
}

void sub_262758080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  WordLatticeLC::~WordLatticeLC(&a22);
  WordLatticeLC::~WordLatticeLC(&a45);
  _Unwind_Resume(a1);
}

BOOL BackTraceLatticeBuilder::canSeedInAcousticContext(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  result = 1;
  if (*(a1 + 440) == 1)
  {
    v3 = *(*(a1 + 24) + 8) + 36 * a2[8];
    if (*(v3 + 24) != *(v3 + 28) || *a3 >> 25 == 126 || (v4 = *a2, v4 >> 25 == 126))
    {
      v5 = 0;
    }

    else
    {
      v5 = *(*(*(*(**VocMgr::smpVocMgr + ((v4 >> 22) & 0x3F8)) + 48) + 608) + 2 * (v4 & 0xFFFFFF));
    }

    if (v5 != *(a3 + 6))
    {
      return 0;
    }
  }

  return result;
}

uint64_t Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::add(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v6);
  }

  result = CWIDAC::computeHash(a2);
  HIDWORD(v8) = result;
  LODWORD(v8) = result;
  v9 = *(a2 + 28);
  HIDWORD(v8) = (v8 >> 19) + v9;
  LODWORD(v8) = HIDWORD(v8);
  v10 = *(a2 + 36);
  HIDWORD(v8) = (v8 >> 19) + HIDWORD(v9);
  LODWORD(v8) = HIDWORD(v8);
  v11 = *(a2 + 24);
  HIDWORD(v8) = (v8 >> 19) + v10;
  LODWORD(v8) = HIDWORD(v8);
  v12 = (v8 >> 19) + v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = (-1640531527 * v12) >> -v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 32);
  if (!v16)
  {
    result = DgnPool::addChunk((a1 + 24));
    v16 = *(a1 + 32);
    LOBYTE(v11) = *(a2 + 24);
    v9 = *(a2 + 28);
    v10 = *(a2 + 36);
  }

  v17 = (v15 + 8 * v14);
  *(a1 + 32) = *v16;
  v18 = *a2;
  *(v16 + 8) = 0;
  *(v16 + 12) = v18;
  *(v16 + 16) = *(a2 + 4);
  *(v16 + 20) = *(a2 + 8);
  *(v16 + 36) = v11;
  *(v16 + 40) = v9;
  *(v16 + 48) = v10;
  *(v16 + 52) = *a3;
  *(v16 + 8) = v12;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v16 = *v17;
  }

  else
  {
    *v16 = 0;
    v19 = *v17;
    if (*v17)
    {
      do
      {
        v17 = v19;
        v19 = *v19;
      }

      while (v19);
    }
  }

  *v17 = v16;
  return result;
}

uint64_t Lattice<WordLatticeLC>::maybeCreateAndConnectOrUpdateLink(uint64_t a1, unsigned int a2, const WordLatticeLC *a3, WordLatticeLC *a4, int a5, _DWORD *a6)
{
  v9 = a3;
  v12 = *(*(a1 + 80) + 24 * a2 + 20);
  if (v12 == -2)
  {
LABEL_6:
    Link = Lattice<WordLatticeLC>::createLink(a1, a2, v9, a4);
    v16 = Link;
    if (a6)
    {
      *a6 = Link;
    }

    if (a5)
    {
      Lattice<WordLatticeLC>::connectInLink(a1, Link);
      Lattice<WordLatticeLC>::connectOutLink(a1, v16);
    }

    else
    {
      Lattice<WordLatticeLC>::connectInLinkUnordered(a1, Link);
      Lattice<WordLatticeLC>::connectOutLinkUnordered(a1, v16);
    }

    return 1;
  }

  else
  {
    v13 = *(a1 + 128);
    while (1)
    {
      if (*(v13 + 136 * v12 + 120) == v9)
      {
        v14 = WordLatticeLC::cmpForDuplicateCheck(a4, (v13 + 136 * v12), a3);
        v13 = *(a1 + 128);
        if (!v14)
        {
          break;
        }
      }

      v12 = *(v13 + 136 * v12 + 128);
      if (v12 == -2)
      {
        goto LABEL_6;
      }
    }

    v18 = WordLatticeLC::cmpForSameLinkWithDifferentScoresCheck(a4, (v13 + 136 * v12), a3);
    if (v18 >= 1)
    {
      v19 = *(a1 + 128) + 136 * v12;
      BaseWordLatticeLC::operator=(v19, a4);
      *(v19 + 88) = *(a4 + 22);
      *(v19 + 92) = *(a4 + 23);
      *(v19 + 96) = *(a4 + 6);
    }

    if (a6)
    {
      *a6 = v12;
    }

    if (v18 <= 0)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }
}

unint64_t BackTraceLatticeBuilder::updateLinkBestPathScore(unint64_t this, int a2, unsigned int a3)
{
  v5 = this;
  v6 = (this + 536);
  v7 = *(this + 544);
  if (v7 <= a3)
  {
    do
    {
      if (v7 == *(v5 + 548))
      {
        this = DgnPrimArray<unsigned int>::reallocElts(v6, 1, 1);
        v7 = *(v5 + 544);
      }

      v8 = *(v5 + 536);
      *(v8 + 4 * v7) = 0x7FFFFFFF;
      v7 = *(v5 + 544) + 1;
      *(v5 + 544) = v7;
    }

    while (v7 <= a3);
  }

  else
  {
    v8 = *v6;
  }

  v9 = a2 - *(v5 + 12);
  if (v9 < *(v8 + 4 * a3))
  {
    *(v8 + 4 * a3) = v9;
    if (*(v5 + 552) < v9)
    {
      *(v5 + 552) = v9;
    }
  }

  return this;
}

uint64_t BackTraceItemCache::needCreateBTItem(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    v4 = *HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::findBucket(result, a2);
    if (v4)
    {
      result = 0;
      if (*(a2 + 60) == 1)
      {
        *(*(**(v4 + 16) + 16 * *(v4 + 24)) + (*(v4 + 28) << 6) + 60) = 1;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

double BackTraceLatticeBuilder::getBackTraceItem@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, unsigned int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, unsigned int a10, LMStats *a11)
{
  v17 = -50331650;
  v18 = *a3;
  if (v18 == -50331650)
  {
    AccumHistScore = 0;
    v20 = a7;
  }

  else
  {
    v22 = *(a1[3] + 8) + 36 * a6;
    if ((*(a1[6] + 68) & 0xFFFFFFFD) != 0)
    {
      v28 = 0;
    }

    else
    {
      v28 = *(*(*(*(**VocMgr::smpVocMgr + ((v18 >> 22) & 0x3F8)) + 56) + 288) + 4 * a3[2]);
    }

    v23 = a1[2];
    v30 = a4;
    v29 = a5;
    if (v18 >> 25 == 126 || (v18 & 0xFFFFFF) == 0xFFFFF8)
    {
      v24 = 0;
    }

    else
    {
      v24 = *(*(*(*(**VocMgr::smpVocMgr + ((v18 >> 22) & 0x3F8)) + 48) + 592) + 2 * (v18 & 0xFFFFFF));
    }

    AccumHistScore = CWIDCrumbBank::getAccumHistScore(v23, *(v22 + 28) - 1, a6, v24);
    v20 = a7 - (v28 + BackTraceLatticeBuilder::getLMScore(a1, v22, a3, 0, a11)) - AccumHistScore;
    v17 = *a3;
    a4 = v30;
    a5 = v29;
  }

  v25 = *(*(a2 + 80) + 24 * a10);
  v26 = a3[1];
  *a9 = v17;
  *(a9 + 4) = v26;
  *(a9 + 8) = *(a3 + 2);
  result = *(a5 + 24);
  *(a9 + 24) = result;
  *(a9 + 32) = a8;
  *(a9 + 36) = v20;
  *(a9 + 40) = a7;
  *(a9 + 44) = AccumHistScore;
  *(a9 + 48) = a10;
  *(a9 + 52) = v25;
  *(a9 + 56) = a6;
  *(a9 + 60) = a4;
  return result;
}

uint64_t BackTraceLatticeBuilder::stackDecode(BackTraceLatticeBuilder *this, WordLattice *a2, int a3, unsigned int *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, LMStats *a8)
{
  if (*(this + 83))
  {
    v13 = this + 448;
    v34 = this + 312;
    v33 = this + 448;
    do
    {
      v14 = *(this + 37);
      v15 = *(this + 82);
      if (!*(v14 + 16 * v15 + 8))
      {
        do
        {
          LODWORD(v15) = v15 - 1;
        }

        while (!*(v14 + 16 * v15 + 8));
        *(this + 82) = v15;
      }

      CWIDCrumbBank::getFrameInfoForBTLat(*(this + 2), *(this + 424), v15 - 1, v13, this + 464, this + 480, this + 62, *(this + 100));
      v16 = *(this + 107);
      v17 = *(CWIDCrumbBank::getCrumbFrame(*(this + 2), *(this + 82) - 1) + 24);
      v18 = *(this + 37) + 16 * *(this + 82);
      *(this + 83) -= *(v18 + 8);
      if (*(this + 114))
      {
        BackTraceItemCache::clearCache(this + 36);
        BackTraceLatticeBuilder::assembleRightGerms(this, v19);
        v20 = MemChunkAlloc(0x30uLL, 0);
        *(v20 + 2) = 0;
        *(v20 + 32) = 0;
        v20[3] = 0;
        *v20 = &unk_287524340;
        v20[5] = v34;
        *(v20 + 3) = *(this + 80);
        Constraint::prunePreList(*(this + 6), v20, 1, v21, v22, v23, v24, v25);
        v26 = MemChunkAlloc(0x30uLL, 0);
        *(v26 + 2) = 0;
        v26[3] = 0;
        *v26 = &unk_2875253D0;
        v26[5] = v13;
        v27 = *(this + 114);
        *(v26 + 3) = v27;
        *a5 += v27;
        v38 = 0x3FFFFAFFFFFFLL;
        v39 = xmmword_26286CC40;
        v40 = 0;
        v41 = 1310720000;
        v42 = 0;
        v43 = 0x70000000FFFFFFFELL;
        *(v26 + 32) = 0;
        *(v26 + 2) = 0;
        if (*(v26 + 3))
        {
          while (1)
          {
            (*(*v26 + 16))(v26, &v38);
            v28 = *(v26 + 2);
            BtNBestResult::prepare(this + 184, *(this + 60) + 24 * v28, &v38, v17 + v16);
            if (BackTraceLatticeBuilder::seedAllRightGerms(this, &v38, v28, a2, 0, a4, a6, a7, a8) & 1) != 0 || (BackTraceLatticeBuilder::seedFinalSilence(this, &v38, v28, a2, a3, a7, a8))
            {
              break;
            }

            v29 = *(v26 + 2) + 1;
            *(v26 + 2) = v29;
            if (*(v26 + 32))
            {
              (*(*v26 + 24))(v26);
              v29 = *(v26 + 2);
            }

            if (v29 == *(v26 + 3))
            {
              v30 = 0;
              goto LABEL_18;
            }
          }

          v30 = 1;
LABEL_18:
          v13 = v33;
        }

        else
        {
          v30 = 0;
        }

        DgnDelete<RecogGermIterator>(v26);
        DgnDelete<RecogGermIterator>(v20);
        v31 = *(this + 37) + 16 * *(this + 82);
        if (*v31)
        {
          MemChunkFree(*v31, 0);
          *v31 = 0;
        }

        *(v31 + 8) = 0;
        *(this + 80) = 0;
      }

      else
      {
        if (*v18)
        {
          MemChunkFree(*v18, 0);
          *v18 = 0;
        }

        v30 = 0;
        *(v18 + 8) = 0;
      }
    }

    while (*(this + 83) && !v30);
    if (v30)
    {
      return 1;
    }
  }

  WordLattice::resortLatticeLinks(a2);
  return 0;
}

uint64_t *BackTraceItemCache::clearCache(uint64_t *this)
{
  v1 = *this;
  if (*this)
  {
    *(v1 + 8) = 0;
    v2 = *(v1 + 88);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        *(*(v1 + 80) + v3) = 0;
        v3 += 8;
      }

      while (v4 != v3);
    }

    return DgnPool::deleteAllWithoutDestroying((v1 + 24));
  }

  return this;
}

uint64_t BackTraceLatticeBuilder::seedAllRightGerms(unint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, uint64_t a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, LMStats *a9)
{
  v83[0] = 0;
  v82[0] = 0;
  v82[1] = 0;
  if (*(a1 + 320))
  {
    Legal = Constraint::getLegal(*(a1 + 48), a2, 0, 0, v83, *(a1 + 328), a6, 0, 0, v82, 1);
    v13 = v83[0];
    if (v83[0])
    {
      v61 = (*(a1 + 480) + 24 * a3);
      v14 = *(v61 + 2);
      if (v14 && v14[2] != 1879048192)
      {
        v63 = BtNBestResult::maybeGetNBest<true>(a1 + 184);
        v72 = 1;
        v13 = v83[0];
      }

      else
      {
        v72 = 0;
        v63 = 0;
      }

      *a7 += v13;
      v60 = *(Legal + 8);
      if (*(Legal + 8))
      {
        v15 = 0;
        v69 = a3;
        v65 = v14;
        do
        {
          HistAndScore = AcousticContextScores::getHistAndScore(v61, v15);
          v68 = v15;
          v71 = HistAndScore;
          if (HistAndScore)
          {
            v17 = *(HistAndScore + 8);
            v18 = v72;
            if (v17 != 1879048192)
            {
              v18 = 1;
            }

            if (v18)
            {
              if (v17 == 1879048192)
              {
LABEL_16:
                v62 = 0;
                v19 = v15;
              }

              else
              {
                v19 = v15;
                v62 = BtNBestResult::maybeGetNBest<false>(a1 + 184, v15);
              }

              v20 = *Legal + 16 * v19;
              if (*(v20 + 8))
              {
                v21 = 0;
                v22 = 0;
                v70 = v20;
                do
                {
                  v23 = *v20;
                  v24 = (*v20 + v21);
                  v25 = VocMgr::smpVocMgr;
                  v26 = *v24 >> 25;
                  if (v26 == 126)
                  {
                    v27 = 0;
                  }

                  else
                  {
                    v27 = *(*(**VocMgr::smpVocMgr + 8 * v26) + 56);
                  }

                  v28 = v24[2];
                  if (v28 && *(*(v27 + 528) + 2 * v28) != 127)
                  {
                    *(v23 + v21 + 20) = -83886084;
                  }

                  v29 = *a2;
                  v30 = v29 >> 25 != 126 && a2[2] == v28;
                  if (v30 && *(*(*(*(**v25 + ((v29 >> 22) & 0x3F8)) + 56) + 528) + 2 * v28) != 127 || BackTraceLatticeBuilder::canSeedInLMContext(a1, a2, v24))
                  {
                    if (*(a1 + 512) == 1 && (v31 = *(*(a1 + 24) + 8), v32 = *(v31 + 36 * *(v23 + v21 + 32) + 32), CWIDAC::operator==(v31 + 36 * v32, a2)))
                    {
                      v33 = AcousticContextScores::getHistAndScore((*(a1 + 480) + 24 * v69), v68);
                      if (v33)
                      {
                        v34 = v32 == *v33;
                      }

                      else
                      {
                        v34 = 0;
                      }

                      v36 = v65 && v65[2] != 1879048192 && v32 == *v65;
                      if (v34 || v36)
                      {
                        v73 = 0;
                        v35 = 0;
                      }

                      else
                      {
                        v56 = v32 - *(a1 + 528);
                        v36 = 0;
                        v35 = v56 == CWIDCrumbBank::getHistory(*(a1 + 520), *(a1 + 328) - 1, *(*(a1 + 24) + 8) + 36 * v56, v68);
                        v73 = v56 == CWIDCrumbBank::getSilHistory(*(a1 + 520), *(a1 + 328) - 1, *(*(a1 + 24) + 8) + 36 * v56);
                      }
                    }

                    else
                    {
                      v73 = 0;
                      v35 = 0;
                      v36 = 1;
                    }

                    v74 = *(v23 + v21 + 26);
                    v81 = 0;
                    LMScore = 1879048192;
                    if (v71)
                    {
                      v38 = v71[2];
                      if (v38 != 1879048192)
                      {
                        a2[9] = v38;
                        v39 = *v71;
                        a2[8] = *v71;
                        *(a2 + 24) = *(*(a1 + 496) + v69);
                        if (*(a1 + 277))
                        {
                          v64 = 0;
                        }

                        else
                        {
                          v64 = v71[1];
                        }

                        v40 = a2[1];
                        v78 = *a2;
                        v79 = v40;
                        v80 = *(a2 + 2);
                        v75 = *(v23 + v21);
                        v76 = *(v23 + v21 + 4);
                        v77 = *(v24 + 2);
                        if (*(a1 + 512) == 1)
                        {
                          v41 = *(a1 + 528);
                          v42 = *(*(a1 + 24) + 8);
                          v43 = v42 + 36 * (v39 - v41);
                          v78 = *v43;
                          v79 = *(v43 + 4);
                          v80 = *(v43 + 8);
                          v44 = (v42 + 36 * (*(v23 + v21 + 32) - v41));
                          v75 = *v44;
                          v76 = v44[1];
                          v77 = *(v44 + 2);
                        }

                        LMScore = BackTraceLatticeBuilder::getLMScore(a1, &v78, &v75, &v81, a9);
                        ++*a8;
                        if (BackTraceLatticeBuilder::seedOneInContext(a1, 0, v24, a2, LMScore, v74, v64, v81, a4, a9, v62, v35))
                        {
                          goto LABEL_72;
                        }
                      }
                    }

                    if (v72)
                    {
                      v45 = *v24;
                      if (v45 >> 25 == 126 || (v46 = *(*(**VocMgr::smpVocMgr + ((v45 >> 22) & 0x3F8)) + 48), v47 = v45 & 0xFFFFFF, *(*(v46 + 32) + 2 * v47) != 1) || *(*(v46 + 592) + 2 * v47))
                      {
                        a2[9] = v65[2];
                        v48 = *v65;
                        a2[8] = *v65;
                        *(a2 + 24) = *(*(a1 + 496) + v69);
                        if (*(a1 + 277))
                        {
                          v49 = 0;
                        }

                        else
                        {
                          v49 = v65[1];
                        }

                        v50 = *(a1 + 512);
                        if (LMScore == 1879048192 || (v36 & v50) != 0)
                        {
                          v51 = a2[1];
                          v78 = *a2;
                          v79 = v51;
                          v80 = *(a2 + 2);
                          v75 = *(v23 + v21);
                          v76 = *(v23 + v21 + 4);
                          v77 = *(v24 + 2);
                          if (v50)
                          {
                            v52 = *(a1 + 528);
                            v53 = *(*(a1 + 24) + 8);
                            v54 = v53 + 36 * (v48 - v52);
                            v78 = *v54;
                            v79 = *(v54 + 4);
                            v80 = *(v54 + 8);
                            v55 = (v53 + 36 * (*(v23 + v21 + 32) - v52));
                            v75 = *v55;
                            v76 = v55[1];
                            v77 = *(v55 + 2);
                          }

                          LMScore = BackTraceLatticeBuilder::getLMScore(a1, &v78, &v75, &v81, a9);
                        }

                        ++*a8;
                        if (BackTraceLatticeBuilder::seedOneInContext(a1, 0, v24, a2, LMScore, v74, v49, v81, a4, a9, v63, v73))
                        {
LABEL_72:
                          v57 = 1;
                          goto LABEL_71;
                        }
                      }
                    }

                    v20 = v70;
                  }

                  ++v22;
                  v21 += 44;
                }

                while (v22 < *(v20 + 8));
              }
            }
          }

          else if (v72)
          {
            goto LABEL_16;
          }

          v15 = v68 + 1;
        }

        while (v60 > (v68 + 1));
      }
    }
  }

  v57 = 0;
LABEL_71:
  DgnIArray<Utterance *>::~DgnIArray(v82);
  return v57;
}

uint64_t BackTraceLatticeBuilder::seedFinalSilence(unint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, int a5, _DWORD *a6, LMStats *a7)
{
  v14 = *a2;
  v15 = v14 & 0xFFFFFF;
  v16 = (v14 & 0xFFFFFF) == 0xFFFFF8 || (v14 & 0xFE000000) == -67108864;
  if (v16 || (v17 = *(*(**VocMgr::smpVocMgr + ((v14 >> 22) & 0x3F8)) + 48), *(*(v17 + 32) + 2 * v15) != 1) || *(*(v17 + 592) + 2 * v15))
  {
    CanSeedFinalSilence = Constraint::getCanSeedFinalSilence(*(a1 + 48), a2, *(a1 + 328));
  }

  else
  {
    CanSeedFinalSilence = 0;
  }

  v19 = *(a1 + 480) + 24 * a3;
  v20 = *(v19 + 8);
  if (v20 && *(v20 + 2) && (v21 = **v20, v21 != 255))
  {
    if (v21 == 254)
    {
      v22 = *(v19 + 16);
    }

    else
    {
      v22 = (**v19 + 12 * v21);
    }
  }

  else
  {
    v22 = 0;
  }

  if (*(a1 + 336) == -2)
  {
    return 0;
  }

  if (CanSeedFinalSilence)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (!a5 || !v22)
    {
      return result;
    }
  }

  if (v22[2] == 1879048192)
  {
    return 0;
  }

  v27 = *(a1 + 512) == 1 && (v24 = *(*(a1 + 24) + 8), v25 = *(v24 + 36 * *(a1 + 372) + 32), v26 = v24 + 36 * v25, CWIDAC::operator==(v26, a2)) && *(v26 + 28) == *(a1 + 328) && v25 != *v22;
  v28 = v22[2];
  v29 = *v22;
  a2[8] = *v22;
  a2[9] = v28;
  *(a2 + 24) = *(*(a1 + 496) + a3);
  if (*(a1 + 277))
  {
    v30 = 0;
  }

  else
  {
    v30 = v22[1];
  }

  v31 = a2[1];
  v36 = *a2;
  v37 = v31;
  v38 = *(a2 + 2);
  if (*(a1 + 512) == 1)
  {
    v32 = *(*(a1 + 24) + 8) + 36 * (v29 - *(a1 + 528));
    v36 = *v32;
    v37 = *(v32 + 4);
    v38 = *(v32 + 8);
  }

  LMScore = BackTraceLatticeBuilder::getLMScore(a1, &v36, a1 + 340, 0, a7);
  v34 = *(a1 + 366);
  ++*a6;
  v35 = BtNBestResult::maybeGetNBest<false>(a1 + 184, 0);
  return BackTraceLatticeBuilder::seedOneInContext(a1, 0, (a1 + 340), a2, LMScore, v34, v30, 0, a4, a7, v35, v27);
}

void *BtNBestResult::maybeGetNBest<true>(uint64_t a1)
{
  if (*(a1 + 93) != 1 || *(a1 + 8) == -50331650 || (*(a1 + 94) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 92) == 1)
  {
    return (a1 + 72);
  }

  NBest = NetNBestAlg::getNBest(*a1, **(*(a1 + 32) + 16), *(*(*(a1 + 32) + 16) + 4), *(*(*(a1 + 32) + 16) + 8), *(a1 + 88));
  v2 = (a1 + 72);
  v5 = *(NBest + 8);
  v6 = *(a1 + 84);
  if (v5 > v6)
  {
    DgnArray<RuleDesc>::reallocElts(a1 + 72, v5 - v6, 0);
  }

  v7 = *(a1 + 80);
  if (v7 < v5)
  {
    v8 = v5 - v7;
    v9 = 12 * v7;
    do
    {
      v10 = *v2 + v9;
      *v10 = 0x70000000FFFFFFFELL;
      *(v10 + 8) = 1879048192;
      v9 += 12;
      --v8;
    }

    while (v8);
  }

  *(a1 + 80) = v5;
  if (v5)
  {
    v11 = 0;
    do
    {
      v12 = (*NBest + v11);
      v13 = *v12;
      LODWORD(v12) = v12[2];
      v14 = (*v2 + v11);
      v14[1] = -1;
      v14[2] = v12;
      *v14 = v13;
      v11 += 12;
    }

    while (12 * v5 != v11);
  }

  *(a1 + 92) = 1;
  return v2;
}

uint64_t AcousticContextScores::getHistAndScore(AcousticContextScores *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 8) <= a2)
  {
    return 0;
  }

  v3 = *(*v2 + a2);
  if (v3 == 255)
  {
    return 0;
  }

  if (v3 == 254)
  {
    return *(this + 2);
  }

  return **this + 12 * v3;
}

uint64_t BtNBestResult::maybeGetNBest<false>(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 93) != 1 || *(a1 + 8) == -50331650 || (*(a1 + 94) & 1) != 0)
  {
    return 0;
  }

  v6 = a2 >> 5;
  v7 = 1 << a2;
  if ((*(*(a1 + 40) + 4 * (a2 >> 5)) & (1 << a2)) != 0)
  {
    return *(a1 + 56) + 16 * a2;
  }

  HistAndScore = AcousticContextScores::getHistAndScore(*(a1 + 32), a2);
  NBest = NetNBestAlg::getNBest(*a1, *HistAndScore, HistAndScore[1], HistAndScore[2], *(a1 + 88));
  v3 = *(a1 + 56) + 16 * a2;
  v10 = *(NBest + 8);
  v11 = *(v3 + 12);
  if (v10 > v11)
  {
    DgnArray<RuleDesc>::reallocElts(v3, v10 - v11, 0);
  }

  v12 = *(v3 + 8);
  if (v12 < v10)
  {
    v13 = v10 - v12;
    v14 = 12 * v12;
    do
    {
      v15 = *v3 + v14;
      *v15 = 0x70000000FFFFFFFELL;
      *(v15 + 8) = 1879048192;
      v14 += 12;
      --v13;
    }

    while (v13);
  }

  *(v3 + 8) = v10;
  if (v10)
  {
    v16 = 0;
    do
    {
      v17 = (*NBest + v16);
      v18 = *v17;
      LODWORD(v17) = v17[2];
      v19 = (*v3 + v16);
      v19[1] = -1;
      v19[2] = v17;
      *v19 = v18;
      v16 += 12;
    }

    while (12 * v10 != v16);
  }

  *(*(a1 + 40) + 4 * v6) |= v7;
  return v3;
}

BOOL BackTraceLatticeBuilder::canSeedInLMContext(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = a3[4];
  Root = VocMgr::getRoot(VocMgr::smpVocMgr, *a2);
  if (Root != -50331650 && v6 != -83886084 && v6 != Root)
  {
    return 0;
  }

  v22 = 0;
  v23 = 0;
  v10 = *a3;
  if (v10 >> 25 == 126 || (v10 & 0xFFFFFF) == 0xFFFFF8)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(*(*(*(**VocMgr::smpVocMgr + ((v10 >> 22) & 0x3F8)) + 48) + 592) + 2 * (v10 & 0xFFFFFF));
  }

  v13 = v11 + 1;
  v24 = 0;
  HIDWORD(v23) = realloc_array(0, &v24, (16 * v13), 0, 0, 1) >> 4;
  v22 = v24;
  v14 = v23;
  if (v23 <= v13)
  {
    if (v23 <= v11)
    {
      v16 = v11 - v23 + 1;
      v17 = 2 * v23;
      do
      {
        v18 = &v22[v17];
        *v18 = 0;
        v18[1] = 0;
        v17 += 2;
        --v16;
      }

      while (v16);
    }
  }

  else if (v23 > v13)
  {
    v15 = 16 * v23 - 16;
    do
    {
      --v14;
      DgnIArray<Utterance *>::~DgnIArray(v22 + v15);
      v15 -= 16;
    }

    while (v14 > v13);
  }

  LODWORD(v23) = v11 + 1;
  v19 = &v22[2 * v11];
  v20 = *(v19 + 2);
  if (v20 == *(v19 + 3))
  {
    DgnArray<RecogGerm>::reallocElts(&v22[2 * v11], 1, 1);
    v20 = *(v19 + 2);
  }

  RecogGerm::operator=(*v19 + 44 * v20, a3);
  ++*(v19 + 2);
  SearchLMScorer::setContext(*(a1 + 56), 0xFAFFFFFC, a2, &v22, 0, 0, 0, a3[5] != -83886084, a3[5], 0xFAFFFFFC);
  v12 = RecogGerm::operator==(v22[2 * v11], a3);
  DgnArray<DgnArray<ParseToken>>::releaseAll(&v22);
  return v12;
}

void sub_2627599A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnArray<DgnArray<ParseToken>>::releaseAll(va);
  _Unwind_Resume(a1);
}

void BackTraceLatticeBuilder::maybeEnableNBestGeneration(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 && (*(a2 + 16) || *(a2 + 32)))
  {
    if (*(a1 + 512) == 1)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/btlat.cpp", 2797, "kernel/btlat", 1, "%.500s", a7, a8, "TrigramsWithBigramLattice");
    }

    if ((*(a1 + 400) & 0x80000000) == 0)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/kernel/btlat.cpp", 2800, "kernel/btlat", 1, "%.500s", a7, a8, "LatticeBestCrumbDistancemaxFrames");
    }

    *(a1 + 277) = 1;
    v11 = *(a1 + 424);
    *(a1 + 278) = v11;
    if ((v11 & 1) == 0)
    {

      BtNBestResult::init((a1 + 184), a2, a3);
    }
  }
}

_DWORD *BackTraceLatticeBuilder::pruneLinks(_DWORD *this, WordLattice *a2, int a3, double a4)
{
  LODWORD(a4) = this[99];
  v4 = ((this[1] * a3) / 1000000.0 * *&a4);
  if (*(a2 + 26) > v4)
  {
    v6 = this;
    v7 = this[138];
    v26 = 0;
    v27 = 0;
    v8 = (v7 + 1);
    if (v7 == -1)
    {
      v9 = 0;
      LODWORD(v27) = v8;
    }

    else
    {
      v28 = 0;
      v10 = realloc_array(0, &v28, 4 * (v7 + 1), 0, 0, 1);
      v9 = v28;
      v26 = v28;
      LODWORD(v27) = v8;
      HIDWORD(v27) = v10 >> 2;
      v11 = (v8 + 3) & 0x1FFFFFFFCLL;
      v12 = vdupq_n_s64(v8 - 1);
      v13 = xmmword_26286BF80;
      v14 = xmmword_26286B680;
      v15 = v28 + 8;
      v16 = vdupq_n_s64(4uLL);
      do
      {
        v17 = vmovn_s64(vcgeq_u64(v12, v14));
        if (vuzp1_s16(v17, *v12.i8).u8[0])
        {
          *(v15 - 2) = 0;
        }

        if (vuzp1_s16(v17, *&v12).i8[2])
        {
          *(v15 - 1) = 0;
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
        {
          *v15 = 0;
          v15[1] = 0;
        }

        v13 = vaddq_s64(v13, v16);
        v14 = vaddq_s64(v14, v16);
        v15 += 4;
        v11 -= 4;
      }

      while (v11);
    }

    v18 = (v6 + 134);
    if (v6[136])
    {
      v19 = 0;
      v20 = *v18;
      while (1)
      {
        v21 = *(v20 + 4 * v19);
        v22 = v9;
        if (v21 < 1)
        {
          goto LABEL_17;
        }

        if (v21 != 0x7FFFFFFF)
        {
          break;
        }

LABEL_18:
        if (++v19 >= v6[136])
        {
          goto LABEL_19;
        }
      }

      v22 = &v9[v21];
LABEL_17:
      ++*v22;
      goto LABEL_18;
    }

LABEL_19:
    if (v8)
    {
      v23 = 0;
      v24 = 0;
      while (1)
      {
        v25 = v9[v23];
        if (v25)
        {
          v24 += v25;
          if (v24 >= v4)
          {
            break;
          }
        }

        if (v8 == ++v23)
        {
          return DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
        }
      }

      Lattice<WordLatticeLC>::pruneLinks(a2, v23, v18);
    }

    return DgnPrimArray<unsigned int>::~DgnPrimArray(&v26);
  }

  return this;
}

void sub_262759CA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Lattice<WordLatticeLC>::pruneLinks(unint64_t a1, int a2, void *a3)
{
  v23 = 0;
  v24 = 0;
  v4 = *(a1 + 104);
  if (v4)
  {
    v7 = 0;
    v8 = 0;
    for (i = 0; i < v4; ++i)
    {
      v10 = *(*(a1 + 96) + 4 * i);
      if (*(*a3 + 4 * *(*(a1 + 128) + 136 * v10 + 112)) > a2)
      {
        if (v8 == HIDWORD(v24))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v23, 1, 1);
          v8 = v24;
          v7 = v23;
        }

        *(v7 + 4 * v8) = v10;
        v8 = v24 + 1;
        LODWORD(v24) = v24 + 1;
        v4 = *(a1 + 104);
      }
    }
  }

  while (v24)
  {
    v11 = *(v23 + 4 * (v24 - 1));
    LODWORD(v24) = v24 - 1;
    Lattice<WordLatticeLC>::disconnectAndDestroyLink(a1, v11);
  }

  v21 = 0;
  v22 = 0;
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *(a1 + 56);
    v17 = v16;
    do
    {
      if (v17)
      {
        v18 = 0;
        v19 = *(*(a1 + 32) + 4 * v15);
        do
        {
          if (v19 == *(*(a1 + 48) + 4 * v18))
          {
            if (v14 == HIDWORD(v22))
            {
              DgnPrimArray<unsigned int>::reallocElts(&v21, 1, 1);
              v14 = v22;
              v13 = v21;
            }

            *(v13 + 4 * v14) = v19;
            v14 = v22 + 1;
            LODWORD(v22) = v22 + 1;
            v16 = *(a1 + 56);
          }

          ++v18;
        }

        while (v18 < v16);
        v12 = *(a1 + 40);
        v17 = v16;
      }

      ++v15;
    }

    while (v15 < v12);
    if (v14)
    {
      Lattice<WordLatticeLC>::destroyNodesUsingGcMarks(a1, &v21);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v21);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v23);
}

void sub_262759E58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  _Unwind_Resume(a1);
}

uint64_t *BackTraceLatticeBuilder::makeLattice(BackTraceLatticeBuilder *this, __int16 a2, PelScorer *a3, int a4, char a5, int a6, LatticeStats *a7, int a8, unsigned int a9, unsigned int a10, char a11)
{
  *(this + 107) = a8;
  *(this + 1) = CWIDCrumbBank::getLastFrame(*(this + 2)) + 1;
  BackTraceLatticeBuilder::maybeEnableNBestGeneration(this, *(this + 4), *(this + 3), v16, v17, v18, v19, v20);
  *(this + 83) = 0;
  v21 = *(this + 1);
  v22 = *(this + 77);
  if (v21 > v22)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 296, v21 - v22, 0);
  }

  v23 = *(this + 76);
  if (v23 <= v21)
  {
    if (v23 < v21)
    {
      v26 = v21 - v23;
      v27 = 16 * v23;
      do
      {
        v28 = (*(this + 37) + v27);
        *v28 = 0;
        v28[1] = 0;
        v27 += 16;
        --v26;
      }

      while (v26);
    }
  }

  else if (v23 > v21)
  {
    v24 = v23;
    v25 = 16 * v23 - 16;
    do
    {
      --v24;
      DgnIArray<Utterance *>::~DgnIArray(*(this + 37) + v25);
      v25 -= 16;
    }

    while (v24 > v21);
  }

  *(this + 76) = v21;
  if (v21)
  {
    v29 = (v21 + 3) & 0x1FFFFFFFCLL;
    v30 = vdupq_n_s64(v21 - 1);
    v31 = xmmword_26286BF80;
    v32 = xmmword_26286B680;
    v33 = (*(this + 37) + 40);
    v34 = vdupq_n_s64(4uLL);
    do
    {
      v35 = vmovn_s64(vcgeq_u64(v30, v32));
      if (vuzp1_s16(v35, *v30.i8).u8[0])
      {
        *(v33 - 8) = 0;
      }

      if (vuzp1_s16(v35, *&v30).i8[2])
      {
        *(v33 - 4) = 0;
      }

      if (vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, *&v31))).i32[1])
      {
        *v33 = 0;
        v33[4] = 0;
      }

      v31 = vaddq_s64(v31, v34);
      v32 = vaddq_s64(v32, v34);
      v33 += 16;
      v29 -= 4;
    }

    while (v29);
  }

  v72 = 1879048192;
  v73 = -2;
  CWIDCrumbBank::getRightSilenceInfo(*(this + 2), *(this + 1) - 1, &v73, &v72);
  if (a5)
  {
    v36 = *(*(this + 3) + 8) + 36 * *(*(*(this + 3) + 8) + 36 * v73 + 32);
    v70 = 0x3FFFFCFFFFFDLL;
    v71 = xmmword_26286CC40;
    LMScore = BackTraceLatticeBuilder::getLMScore(this, v36, &v70, 0, (a7 + 48));
    v38 = v72 + LMScore;
    v72 += LMScore;
  }

  else
  {
    v38 = v72;
  }

  *(this + 3) = v38;
  *(this + 138) = 0x80000000;
  if (a6)
  {
    v39 = *(this + 98);
    if (v39 < 0)
    {
      v41 = fround(*(this + 48), 3);
      if (v72 < 0)
      {
        v41 = -v41;
      }

      v40 = ((v41 + *(this + 1)) * v72 / *(this + 1));
    }

    else
    {
      v40 = v39 + v38;
    }
  }

  else
  {
    v40 = 1879048192;
  }

  *(this + 2) = v40;
  v42 = *(this + 1) - *(*(this + 2) + 48);
  v43 = MemChunkAlloc(0x120uLL, 0);
  WordLattice::WordLattice(v43, v42, a9, a10, a2, *(this + 64), a11, 0, *this != 1);
  BackTraceLatticeBuilder::bootStrap(this, v43, v44, 0, v45);
  v46 = BackTraceLatticeBuilder::stackDecode(this, v43, a4, a7, a7 + 1, a7 + 2, a7 + 3, (a7 + 48));
  if (v46)
  {
    DgnDelete<WordLattice>(v43);
    v43 = MemChunkAlloc(0x120uLL, 0);
    WordLattice::WordLattice(v43, v42, a9, a10, a2, *(this + 64), a11, 1, *this != 1);
    if (*(this + 425) == 1)
    {
      Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::removeAll(*(this + 70));
    }

    *(this + 424) = 1;
    *(this + 277) = 0;
    *(this + 51) = 0;
    *(this + 52) = 0;
    v48 = *(this + 76);
    if (v48 >= 1)
    {
      v49 = 16 * v48 - 16;
      do
      {
        DgnIArray<Utterance *>::~DgnIArray(*(this + 37) + v49);
        v49 -= 16;
      }

      while (v49 != -16);
    }

    v50 = 0;
    *(this + 76) = 0;
    *(this + 83) = 0;
    v51 = *(this + 1);
    v52 = *(this + 77);
    if (v51 <= v52 || (DgnArray<DgnPrimArray<double>>::reallocElts(this + 296, v51 - v52, 0), v50 = *(this + 76), v50 <= v51))
    {
      if (v50 < v51)
      {
        v55 = v51 - v50;
        v56 = 16 * v50;
        do
        {
          v57 = (*(this + 37) + v56);
          *v57 = 0;
          v57[1] = 0;
          v56 += 16;
          --v55;
        }

        while (v55);
      }
    }

    else
    {
      if (v50 <= v51)
      {
        *(this + 76) = v51;
        goto LABEL_46;
      }

      v53 = v50;
      v54 = 16 * v50 - 16;
      do
      {
        --v53;
        DgnIArray<Utterance *>::~DgnIArray(*(this + 37) + v54);
        v54 -= 16;
      }

      while (v53 > v51);
    }

    *(this + 76) = v51;
    if (!v51)
    {
LABEL_54:
      (*(**(this + 35) + 24))(*(this + 35));
      *(*(this + 35) + 16) = 0;
      BackTraceItemCache::clearCache(this + 36);
      BackTraceLatticeBuilder::bootStrap(this, v43, v65, 0, v66);
      BackTraceLatticeBuilder::stackDecode(this, v43, a4, a7, a7 + 1, a7 + 2, a7 + 3, (a7 + 48));
      goto LABEL_55;
    }

LABEL_46:
    v58 = (v51 + 3) & 0x1FFFFFFFCLL;
    v59 = vdupq_n_s64(v51 - 1);
    v60 = xmmword_26286BF80;
    v61 = xmmword_26286B680;
    v62 = (*(this + 37) + 40);
    v63 = vdupq_n_s64(4uLL);
    do
    {
      v64 = vmovn_s64(vcgeq_u64(v59, v61));
      if (vuzp1_s16(v64, *v59.i8).u8[0])
      {
        *(v62 - 8) = 0;
      }

      if (vuzp1_s16(v64, *&v59).i8[2])
      {
        *(v62 - 4) = 0;
      }

      if (vuzp1_s16(*&v59, vmovn_s64(vcgeq_u64(v59, *&v60))).i32[1])
      {
        *v62 = 0;
        v62[4] = 0;
      }

      v60 = vaddq_s64(v60, v63);
      v61 = vaddq_s64(v61, v63);
      v62 += 16;
      v58 -= 4;
    }

    while (v58);
    goto LABEL_54;
  }

LABEL_55:
  if (*(this + 99))
  {
    v67 = v46;
  }

  else
  {
    v67 = 1;
  }

  if ((v67 & 1) == 0)
  {
    BackTraceLatticeBuilder::pruneLinks(this, v43, a10, v47);
  }

  WordLattice::getLatticeStats(v43, a7 + 4, a7 + 5, a7 + 3, a7 + 4);
  *(a7 + 10) += *(this + 20);
  Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::removeAll(this + 72);
  (*(**(this + 35) + 24))(*(this + 35));
  Lattice<WordLatticeLC>::gc(v43);
  Lattice<WordLatticeLC>::topSortInternal(v43, 0);
  return v43;
}

uint64_t Hash<BackTraceLinkPair,BackTraceLinkPair,BackTraceLinkPair,int>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 12);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            result = v8(v5 + 52);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t Hash<CWIDACPair,CWIDACPair,CWIDACPair,BigScorePair>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            v7(v5 + 12);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            v8(v5 + 60);
          }

          result = MrecInitModule_sdpres_sdapi();
          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t *BackTraceLatticeBuilder::makeSilentLattice(BackTraceLatticeBuilder *this, int a2, int a3, int a4, int a5, uint64_t a6, LatticeStats *a7)
{
  v7 = a7;
  v9 = a5;
  v12 = this;
  if (a2 == -16)
  {
    v13 = a5;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = a2;
  }

  else
  {
    v14 = 2;
  }

  v15 = MemChunkAlloc(0x120uLL, 0);
  WordLattice::WordLattice(v15, v14, a3, a4, v12, v9, v7, 1, 1);
  Node = Lattice<WordLatticeLC>::createNode(v16);
  v18 = Lattice<WordLatticeLC>::createNode(v15);
  v19 = Lattice<WordLatticeLC>::createNode(v15);
  v25 = 0x3FFFFCFFFFFDLL;
  v20 = v14 > 1;
  v26 = xmmword_26286CC40;
  v21 = v14 - v20;
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  WordLatticeLC::WordLatticeLC(v32, &v25, v14 - v20, v20, 0, v30);
  Link = Lattice<WordLatticeLC>::createLink(v15, v18, Node, v32);
  Lattice<WordLatticeLC>::connectInLinkUnordered(v15, Link);
  Lattice<WordLatticeLC>::connectOutLinkUnordered(v15, Link);
  v28[0] = -50331650;
  v28[1] = 0x3FFF;
  v29 = xmmword_26286CC40;
  v25 = 0;
  v26 = 0uLL;
  v27 = 0;
  WordLatticeLC::WordLatticeLC(v30, v28, 0, v21, 0, &v25);
  v23 = Lattice<WordLatticeLC>::createLink(v15, v19, v18, v30);
  Lattice<WordLatticeLC>::connectInLinkUnordered(v15, v23);
  Lattice<WordLatticeLC>::connectOutLinkUnordered(v15, v23);
  WordLattice::getLatticeStats(v15, (a6 + 16), (a6 + 20), (a6 + 24), (a6 + 32));
  Lattice<WordLatticeLC>::topSortInternal(v15, 0);
  WordLatticeLC::~WordLatticeLC(v30);
  WordLatticeLC::~WordLatticeLC(v32);
  return v15;
}

void StringGlobalParam::~StringGlobalParam(StringGlobalParam *this)
{
  StringGlobalParamBase::~StringGlobalParamBase(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t NetNBestAlg::NetNBestAlg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  DgnString::DgnString((a1 + 16));
  *(a1 + 136) = 0;
  *(a1 + 32) = 0xC00000010;
  *(a1 + 64) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  BitArray::setSize((a1 + 16), *(a3 + 16));
  return a1;
}

void sub_26275A888(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v4);
  DgnPriorityQueue<NBestQueueItem>::~DgnPriorityQueue(v2);
  BitArray::~BitArray((v1 + 16));
  _Unwind_Resume(a1);
}

void DgnPriorityQueue<NBestQueueItem>::~DgnPriorityQueue(uint64_t a1)
{
  for (; *(a1 + 64); *(a1 + 8) = Min)
  {
    Min = DgnHeap<NBestQueueItem>::extractMin(a1 + 56);
    *Min = *(a1 + 8);
  }

  DgnIArray<Utterance *>::~DgnIArray(a1 + 56);

  DgnPool::~DgnPool(a1);
}

uint64_t DgnHeap<NBestQueueItem>::extractMin(uint64_t a1)
{
  v1 = *(a1 + 8) - 1;
  v2 = **a1;
  if (v1 < 1)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    **a1 = *(*a1 + 8 * v1);
    *(a1 + 8) = v1;
    DgnHeap<NBestQueueItem>::heapifyDown(a1, 0);
  }

  return v2;
}

uint64_t DgnHeap<NBestQueueItem>::heapifyDown(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = (2 * a2) | 1u;
    if (v3 >= v2 || *(*(*a1 + 8 * v3) + 8) >= *(*(*a1 + 8 * a2) + 8))
    {
      v3 = a2;
    }

    v4 = (2 * a2 + 2);
    if (v4 >= v2 || *(*(*a1 + 8 * v4) + 8) >= *(*(*a1 + 8 * v3) + 8))
    {
      v4 = v3;
    }

    if (v4 == a2)
    {
      break;
    }

    v5 = *(*a1 + 8 * a2);
    *(*a1 + 8 * a2) = *(*a1 + 8 * v4);
    *(*a1 + 8 * v4) = v5;
    a2 = v4;
  }

  return a2;
}

uint64_t HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::HashKEV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523AF0;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 20;
  }

  else
  {
    v7 = 28;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26275AABC(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::~HashKEV(uint64_t a1)
{
  HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::~HashKEV(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::~HashKEV(uint64_t a1)
{
  *a1 = &unk_287523AF0;
  if (*(a1 + 8))
  {
    HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 2);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

void BtNBestResult::~BtNBestResult(NetNBestAlg **this)
{
  DgnDelete<NetNBestAlg>(*this);
  DgnIArray<Utterance *>::~DgnIArray((this + 9));
  DgnArray<DgnArray<ParseToken>>::releaseAll((this + 7));
  BitArray::~BitArray((this + 5));
}

void SearchLMContext::~SearchLMContext(SearchLMContext *this)
{
  if (*(this + 8) == 1)
  {
    SearchLMScorer::unsetContext(*this);
  }
}

uint64_t *HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::findBucket(uint64_t a1, _DWORD *a2)
{
  v4 = BackTraceItem::computeHash(a2);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (-1640531527 * v4) >> -v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = (*(a1 + 80) + 8 * v6);
  v8 = *v7;
  if (*v7)
  {
    v9 = v4;
    do
    {
      v10 = v8;
      if (*(v8 + 8) == v9 && BackTraceItem::operator==(a2, (*(**(v8 + 16) + 16 * *(v8 + 24)) + (*(v8 + 28) << 6))))
      {
        break;
      }

      v8 = *v10;
      v7 = v10;
    }

    while (*v10);
  }

  return v7;
}

BOOL BackTraceItem::operator==(_DWORD *a1, _DWORD *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = CWIDAC::operator==(a1, a2);
  if (result)
  {
    return a1[6] == a2[6] && a1[7] == a2[7] && a1[8] == a2[8] && a1[9] == a2[9] && a1[10] == a2[10] && a1[11] == a2[11] && a1[12] == a2[12] && a1[13] == a2[13] && a1[14] == a2[14];
  }

  return result;
}

uint64_t HashKEV<BackTraceItemHashKey,BackTraceItem,BackTraceItemHashKey>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 12);
  if (*(a1 + 8) >= v4 >> 1)
  {
    HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(a1, 2 * v4);
  }

  result = BackTraceItem::computeHash((*(**a2 + 16 * *(a2 + 8)) + (*(a2 + 12) << 6)));
  v6 = result;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (-1640531527 * result) >> -v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 80);
  v10 = *(a1 + 32);
  if (!v10)
  {
    result = DgnPool::addChunk((a1 + 24));
    v10 = *(a1 + 32);
  }

  v11 = (v9 + 8 * v8);
  *(a1 + 32) = *v10;
  *(v10 + 8) = 0;
  *(v10 + 16) = *a2;
  *(v10 + 8) = v6;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v10 = *v11;
  }

  else
  {
    *v10 = 0;
    v12 = *v11;
    if (*v11)
    {
      do
      {
        v11 = v12;
        v12 = *v12;
      }

      while (v12);
    }
  }

  *v11 = v10;
  return result;
}

BOOL RecogGerm::operator==(uint64_t a1, uint64_t a2)
{
  result = CWIDAC::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 26) == *(a2 + 26) && *(a1 + 28) == *(a2 + 28) && *(a1 + 30) == *(a2 + 30) && *(a1 + 32) == *(a2 + 32) && *(a1 + 36) == *(a2 + 36) && *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

void NetNBestAlg::~NetNBestAlg(NetNBestAlg *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 104);
  DgnPriorityQueue<NBestQueueItem>::~DgnPriorityQueue(this + 32);
  BitArray::~BitArray((this + 16));
}

uint64_t BtNodeCacheType<BtTrigramNodeHashKey,BtTrigramNodeHashKey>::BtNodeCacheType(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 33) = a4;
  *a1 = &unk_287527DA0;
  HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::HashNCHV(a1 + 40, 0, 128);
  return a1;
}

void sub_26275B05C(_Unwind_Exception *a1)
{
  *v1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void *BtNodeCacheType<BtTrigramNodeHashKey,BtTrigramNodeHashKey>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527DA0;
  HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));
  return a1;
}

void BtNodeCacheType<BtTrigramNodeHashKey,BtTrigramNodeHashKey>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527DA0;
  HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));

  JUMPOUT(0x26672B1B0);
}

uint64_t BtNodeCacheType<BtTrigramNodeHashKey,BtTrigramNodeHashKey>::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<unsigned int>(a1 + 8, a2);
  v5 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 + 1;
  }

  return v7 + Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(a1 + 40, a2) + v6;
}

uint64_t BtNodeCacheType<BtTrigramNodeHashKey,BtTrigramNodeHashKey>::findOrCreateNode(uint64_t a1, uint64_t a2, int a3, unsigned int *a4, char a5, int *a6, char *a7)
{
  v13 = *a4;
  v14 = v13 & 0xFE000000;
  if (*(a1 + 32) != 1 || v14 == -100663296 || v14 == -67108864)
  {
    goto LABEL_9;
  }

  v26 = *(*(**VocMgr::smpVocMgr + ((v13 >> 22) & 0x3F8)) + 48);
  v27 = *(a1 + 24);
  v28 = (*(v27 + 68) & 0xFFFFFFFD) != 0 || Constraint::isCoartAllowedForState(v27, a4);
  v29 = v13 & 0xFFFFFF;
  if ((v13 & 0xFFFFFF) != 0xFFFFF8 && v28 && (*(*(v26 + 592) + 2 * v29) || *(*(v26 + 608) + 2 * v29)))
  {
    if (*(a1 + 33))
    {
      goto LABEL_26;
    }

LABEL_9:
    v17 = 0;
    v18 = -83886084;
    goto LABEL_10;
  }

  if (!v28)
  {
    goto LABEL_9;
  }

LABEL_26:
  v18 = *a6;
  v17 = 1;
LABEL_10:
  v19 = a4[1];
  v31[0] = *a4;
  v31[1] = v19;
  v32 = *(a4 + 2);
  v33 = v18;
  v34 = a3;
  v35 = v17 & a5;
  Bucket = HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::findBucket(a1 + 40, v31);
  if (*Bucket)
  {
    v21 = 0;
    p_Node = (*Bucket + 44);
  }

  else
  {
    Node = Lattice<WordLatticeLC>::createNode(a2);
    v23 = *(a1 + 16);
    if (v23 == *(a1 + 20))
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 8, 1, 1);
      v23 = *(a1 + 16);
    }

    *(*(a1 + 8) + 4 * v23) = 1879048192;
    ++*(a1 + 16);
    p_Node = &Node;
    HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::add(a1 + 40, v31, &Node);
    v21 = 1;
  }

  result = *p_Node;
  *a7 = v21;
  return result;
}

uint64_t HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::HashNCHV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_2875234E0;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v10[1] = 0x3FFF;
  v11 = xmmword_26286CC40;
  v12 = 0xFFFFFFF0FAFFFFFFLL;
  v13 = 0;
  LOBYTE(a3) = gShadowDiagnosticShowIdealizedObjectSizes;
  v7 = sizeObject(v10, 2);
  if (a3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  *(a1 + 24) = 48;
  *(a1 + 28) = v7 + v8 + 13;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26275B4C0(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::~HashNCHV(uint64_t a1)
{
  HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::~HashNCHV(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::~HashNCHV(uint64_t a1)
{
  *a1 = &unk_2875234E0;
  if (*(a1 + 8))
  {
    HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 1);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            result = v8(v5 + 44);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::add(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::upSize(a1, 2 * v6);
  }

  result = CWIDAC::computeHash(a2);
  HIDWORD(v8) = result;
  LODWORD(v8) = result;
  HIDWORD(v8) = (v8 >> 19) + *(a2 + 28);
  LODWORD(v8) = HIDWORD(v8);
  HIDWORD(v8) = (v8 >> 19) + *(a2 + 32);
  LODWORD(v8) = HIDWORD(v8);
  v9 = *(a1 + 16);
  v10 = (-1640531527 * ((v8 >> 19) + *(a2 + 24))) >> -v9;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 32);
  if (!v13)
  {
    result = DgnPool::addChunk((a1 + 24));
    v13 = *(a1 + 32);
  }

  v14 = (v12 + 8 * v11);
  *(a1 + 32) = *v13;
  *(v13 + 8) = *a2;
  *(v13 + 12) = *(a2 + 4);
  *(v13 + 16) = *(a2 + 8);
  v15 = *(a2 + 24);
  *(v13 + 40) = *(a2 + 32);
  *(v13 + 32) = v15;
  *(v13 + 44) = *a3;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v13 = *v14;
  }

  else
  {
    *v13 = 0;
    v16 = *v14;
    if (*v14)
    {
      do
      {
        v14 = v16;
        v16 = *v16;
      }

      while (v16);
    }
  }

  *v14 = v13;
  return result;
}

void *HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::findBucket(uint64_t a1, uint64_t a2)
{
  HIDWORD(v4) = CWIDAC::computeHash(a2);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 28);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 32);
  LODWORD(v4) = HIDWORD(v4);
  v5 = *(a1 + 16);
  v6 = (-1640531527 * ((v4 >> 19) + *(a2 + 24))) >> -v5;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = (*(a1 + 80) + 8 * v6);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 && !BtTrigramNodeHashKey::equalKeys((v7 + 1), a2));
  return v8;
}

BOOL BtTrigramNodeHashKey::equalKeys(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 28) != *(a2 + 28))
  {
    return 0;
  }

  result = CWIDAC::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 32) == *(a2 + 32) && *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

uint64_t HashNCHV<BtTrigramNodeHashKey,BtTrigramNodeHashKey,BtTrigramNodeHashKey,unsigned int>::upSize(uint64_t a1, int a2)
{
  v16 = 0;
  RoundUpToPowerOf2(a2, &v16);
  v14 = 0;
  v15 = 0;
  DgnIFixArray<BucketLinkKEV<unsigned int> *>::copyArraySlice(&v14, (a1 + 80), 0, *(a1 + 88));
  v4 = *(a1 + 80);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 80) = 0;
  }

  *(a1 + 88) = 0;
  v5 = v16;
  *(a1 + 12) = a2;
  *(a1 + 16) = v5;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  v6 = v15;
  if (v15)
  {
    v7 = 0;
    do
    {
      v8 = *(v14 + 8 * v7);
      if (v8)
      {
        do
        {
          v9 = *v8;
          HIDWORD(v10) = CWIDAC::computeHash((v8 + 1));
          LODWORD(v10) = HIDWORD(v10);
          HIDWORD(v10) = *(v8 + 9) + (v10 >> 19);
          LODWORD(v10) = HIDWORD(v10);
          HIDWORD(v10) = (v10 >> 19) + *(v8 + 40);
          LODWORD(v10) = HIDWORD(v10);
          v11 = (-1640531527 * ((v10 >> 19) + *(v8 + 8))) >> -v16;
          if (!v16)
          {
            v11 = 0;
          }

          v12 = *(a1 + 80);
          *v8 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v8;
          v8 = v9;
        }

        while (v9);
        v6 = v15;
      }

      ++v7;
    }

    while (v7 < v6);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v14);
}

void sub_26275B988(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<false,true>>::BtNodeCacheType(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 33) = a4;
  *a1 = &unk_287527E60;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::HashNCHV(a1 + 40, 0, 128);
  return a1;
}

void sub_26275BA08(_Unwind_Exception *a1)
{
  *v1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void *BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<false,true>>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527E60;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));
  return a1;
}

void BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<false,true>>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527E60;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));

  JUMPOUT(0x26672B1B0);
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<false,true>>::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<unsigned int>(a1 + 8, a2);
  v5 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 + 1;
  }

  return v7 + Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(a1 + 40, a2) + v6;
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<false,true>>::findOrCreateNode(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, char a5, unsigned int *a6, char *a7)
{
  if (*(a1 + 32) != 1 || ((v14 = *a4, (v14 & 0xFE000000) != 0xFA000000) ? (v15 = (v14 & 0xFE000000) == -67108864) : (v15 = 1), v15))
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v22 = *(*(**VocMgr::smpVocMgr + ((v14 >> 22) & 0x3F8)) + 48);
    v23 = *(a1 + 24);
    v16 = (*(v23 + 68) & 0xFFFFFFFD) != 0 || Constraint::isCoartAllowedForState(v23, a4);
    v24 = v14 & 0xFFFFFF;
    if ((v14 & 0xFFFFFF) != 0xFFFFF8 && v16)
    {
      if (*(*(v22 + 592) + 2 * v24) || *(*(v22 + 608) + 2 * v24))
      {
        LOBYTE(v16) = *(a1 + 33);
      }

      else
      {
        LOBYTE(v16) = 1;
      }
    }
  }

  BtNodeKeyGenerator<false,true>::getKey(a3, a4, a5, a6, v16 & 1, v26);
  Bucket = HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::findBucket(a1 + 40, v26);
  if (*Bucket)
  {
    v18 = 0;
    p_Node = (*Bucket + 40);
  }

  else
  {
    Node = Lattice<WordLatticeLC>::createNode(a2);
    v20 = *(a1 + 16);
    if (v20 == *(a1 + 20))
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 8, 1, 1);
      v20 = *(a1 + 16);
    }

    *(*(a1 + 8) + 4 * v20) = 1879048192;
    ++*(a1 + 16);
    p_Node = &Node;
    HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::add(a1 + 40, v26, &Node);
    v18 = 1;
  }

  result = *p_Node;
  *a7 = v18;
  return result;
}

uint64_t HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::HashNCHV(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523508;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  v6 = RoundUpToPowerOf2(a3, (v5 + 16));
  *(a1 + 8) = 0;
  *(a1 + 12) = v6;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v10[1] = 0x3FFF;
  v11 = xmmword_26286CC40;
  v12 = -16;
  v13 = 0;
  LOBYTE(a3) = gShadowDiagnosticShowIdealizedObjectSizes;
  v7 = sizeObject(v10, 2);
  if (a3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 8;
  }

  *(a1 + 24) = 48;
  *(a1 + 28) = v7 + v8 + 11;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_26275BE58(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV(uint64_t a1)
{
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV(uint64_t a1)
{
  *a1 = &unk_287523508;
  if (*(a1 + 8))
  {
    HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::removeAll(uint64_t result)
{
  v1 = result;
  v2 = *(result + 88);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(v1 + 80);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        do
        {
          v6 = *v5;
          v7 = *(v1 + 96);
          if (v7)
          {
            result = v7(v5 + 1);
          }

          v8 = *(v1 + 104);
          if (v8)
          {
            result = v8(v5 + 5);
          }

          *v5 = *(v1 + 32);
          *(v1 + 32) = v5;
          v5 = v6;
        }

        while (v6);
        v4 = *(v1 + 80);
        v2 = *(v1 + 88);
      }

      *(v4 + 8 * i) = 0;
    }
  }

  *(v1 + 8) = 0;
  return result;
}

uint64_t BtNodeKeyGenerator<false,true>::getKey@<X0>(uint64_t result@<X0>, int *a2@<X1>, char a3@<W2>, unsigned int *a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 2);
  v10 = 0;
  if (a5)
  {
    if ((a3 & 1) == 0)
    {
      v11 = *a4;
      if ((v6 & 0xFE000000) != 0xFC000000 && (v11 & 0xFE000000) != -67108864)
      {
        v10 = *(*(*(*(**VocMgr::smpVocMgr + ((v11 >> 22) & 0x3F8)) + 48) + 592) + 2 * (v11 & 0xFFFFFF));
      }
    }
  }

  else
  {
    a3 = 0;
  }

  *a6 = v6;
  *(a6 + 4) = v7;
  *(a6 + 6) = v8;
  *(a6 + 8) = v9;
  *(a6 + 24) = result;
  *(a6 + 28) = v10;
  *(a6 + 30) = a3;
  return result;
}

uint64_t HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::add(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 12);
  if (*(a1 + 8) >= v6 >> 1)
  {
    HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::upSize(a1, 2 * v6);
  }

  result = CWIDAC::computeHash(a2);
  HIDWORD(v8) = result;
  LODWORD(v8) = result;
  HIDWORD(v8) = (v8 >> 19) + *(a2 + 24);
  LODWORD(v8) = HIDWORD(v8);
  HIDWORD(v8) = (v8 >> 19) + *(a2 + 30);
  LODWORD(v8) = HIDWORD(v8);
  v9 = *(a1 + 16);
  v10 = (-1640531527 * ((v8 >> 19) + *(a2 + 28))) >> -v9;
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 32);
  if (!v13)
  {
    result = DgnPool::addChunk((a1 + 24));
    v13 = *(a1 + 32);
  }

  v14 = (v12 + 8 * v11);
  *(a1 + 32) = *v13;
  *(v13 + 8) = *a2;
  *(v13 + 12) = *(a2 + 4);
  *(v13 + 16) = *(a2 + 8);
  v15 = *(a2 + 24);
  *(v13 + 35) = *(a2 + 27);
  *(v13 + 32) = v15;
  *(v13 + 40) = *a3;
  ++*(a1 + 8);
  if (*(a1 + 20))
  {
    *v13 = *v14;
  }

  else
  {
    *v13 = 0;
    v16 = *v14;
    if (*v14)
    {
      do
      {
        v14 = v16;
        v16 = *v16;
      }

      while (v16);
    }
  }

  *v14 = v13;
  return result;
}

void *HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::findBucket(uint64_t a1, uint64_t a2)
{
  HIDWORD(v4) = CWIDAC::computeHash(a2);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 24);
  LODWORD(v4) = HIDWORD(v4);
  HIDWORD(v4) = (v4 >> 19) + *(a2 + 30);
  LODWORD(v4) = HIDWORD(v4);
  v5 = *(a1 + 16);
  v6 = (-1640531527 * ((v4 >> 19) + *(a2 + 28))) >> -v5;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = (*(a1 + 80) + 8 * v6);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 && !BtNodeHashKey::equalKeys((v7 + 1), a2));
  return v8;
}

BOOL BtNodeHashKey::equalKeys(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  result = CWIDAC::operator==(a1, a2);
  if (result)
  {
    return *(a1 + 30) == *(a2 + 30) && *(a1 + 28) == *(a2 + 28);
  }

  return result;
}

uint64_t HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::upSize(uint64_t a1, int a2)
{
  v16 = 0;
  RoundUpToPowerOf2(a2, &v16);
  v14 = 0;
  v15 = 0;
  DgnIFixArray<BucketLinkKEV<unsigned int> *>::copyArraySlice(&v14, (a1 + 80), 0, *(a1 + 88));
  v4 = *(a1 + 80);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(a1 + 80) = 0;
  }

  *(a1 + 88) = 0;
  v5 = v16;
  *(a1 + 12) = a2;
  *(a1 + 16) = v5;
  HashKEV<unsigned int,unsigned int,CWIDScope>::initBuckets(a1);
  v6 = v15;
  if (v15)
  {
    v7 = 0;
    do
    {
      v8 = *(v14 + 8 * v7);
      if (v8)
      {
        do
        {
          v9 = *v8;
          HIDWORD(v10) = CWIDAC::computeHash((v8 + 1));
          LODWORD(v10) = HIDWORD(v10);
          HIDWORD(v10) = *(v8 + 8) + (v10 >> 19);
          LODWORD(v10) = HIDWORD(v10);
          HIDWORD(v10) = (v10 >> 19) + *(v8 + 38);
          LODWORD(v10) = HIDWORD(v10);
          v11 = (-1640531527 * ((v10 >> 19) + *(v8 + 18))) >> -v16;
          if (!v16)
          {
            v11 = 0;
          }

          v12 = *(a1 + 80);
          *v8 = *(v12 + 8 * v11);
          *(v12 + 8 * v11) = v8;
          v8 = v9;
        }

        while (v9);
        v6 = v15;
      }

      ++v7;
    }

    while (v7 < v6);
  }

  return DgnPrimFixArray<double>::~DgnPrimFixArray(&v14);
}

void sub_26275C3BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimFixArray<double>::~DgnPrimFixArray(va);
  _Unwind_Resume(a1);
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,false>>::BtNodeCacheType(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 33) = a4;
  *a1 = &unk_287527E20;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::HashNCHV(a1 + 40, 0, 128);
  return a1;
}

void sub_26275C43C(_Unwind_Exception *a1)
{
  *v1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  _Unwind_Resume(a1);
}

void *BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,false>>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527E20;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));
  return a1;
}

void BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,false>>::~BtNodeCacheType(void *a1)
{
  *a1 = &unk_287527E20;
  HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::~HashNCHV((a1 + 5));
  *a1 = &unk_287526A00;
  DgnPrimArray<unsigned int>::~DgnPrimArray((a1 + 1));

  JUMPOUT(0x26672B1B0);
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,false>>::sizeObject(uint64_t a1, int a2)
{
  v4 = sizeObject<unsigned int>(a1 + 8, a2);
  v5 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v5 = 4;
  }

  if (a2 == 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  if (a2 == 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = v4 + 1;
  }

  return v7 + Hash<CWIDAtFrame,CWIDAtFrame,CWIDAtFrame,unsigned int>::sizeObject(a1 + 40, a2) + v6;
}

uint64_t BtNodeCacheType<BtNodeHashKey,BtNodeKeyGenerator<true,false>>::findOrCreateNode(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v12 = *a4;
  v13 = *a4 & 0xFE000000;
  if (*(a1 + 32) == 1 && v13 != -100663296 && v13 != -67108864)
  {
    v22 = *(a1 + 24);
    if ((*(v22 + 68) & 0xFFFFFFFD) == 0)
    {
      Constraint::isCoartAllowedForState(v22, a4);
      v12 = *a4;
    }
  }

  v16 = *(a4 + 4);
  v24[0] = v12;
  v24[1] = v16;
  v25 = *(a4 + 8);
  v26 = vdup_n_s32(0xFAFFFFFC);
  v27 = a3;
  v28 = 0;
  v29 = 0;
  Bucket = HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::findBucket(a1 + 40, v24);
  if (*Bucket)
  {
    v18 = 0;
    p_Node = (*Bucket + 40);
  }

  else
  {
    Node = Lattice<WordLatticeLC>::createNode(a2);
    v20 = *(a1 + 16);
    if (v20 == *(a1 + 20))
    {
      DgnPrimArray<unsigned int>::reallocElts(a1 + 8, 1, 1);
      v20 = *(a1 + 16);
    }

    *(*(a1 + 8) + 4 * v20) = 1879048192;
    ++*(a1 + 16);
    p_Node = &Node;
    HashNCHV<BtNodeHashKey,BtNodeHashKey,BtNodeHashKey,unsigned int>::add(a1 + 40, v24, &Node);
    v18 = 1;
  }

  result = *p_Node;
  *a7 = v18;
  return result;
}