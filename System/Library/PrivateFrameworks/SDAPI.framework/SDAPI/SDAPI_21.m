void sub_26268CC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *__p, uint64_t a11, uint64_t a12, uint64_t a13)
{
  MEMORY[0x26672B1B0](v13, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x420]) == 1 && __p != &a13 && __p != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

TAllocator *TPatternManager::clear(TPatternManager *this)
{
  v2 = *(this + 4);
  v4 = *(v2 + 48);
  result = (v2 + 48);
  if (v4 >= 0x801)
  {
    result = TAllocator::clear(result);
  }

  *(this + 22) = 0;
  return result;
}

uint64_t TPatternManager::addWords(TPatternManager *this, TVertex *a2, TGraph *a3, TSegmenter *a4, uint64_t a5)
{
  *this = a5;
  v9 = *(a2 + 2);
  result = TSegmenter::getSegment(a4, v9);
  if (!result)
  {
    return result;
  }

  v11 = result;
  if (*(result + 24) == 5)
  {
    return result;
  }

  v12 = **result;
  {
    if (result)
    {
      operator new();
    }
  }

  if (v12 > 159)
  {
    v14 = v12 == 12288;
    if (v12 >= 12288)
    {
      v15 = 65279;
    }

    else
    {
      v14 = v12 == 160;
      v15 = 8203;
    }

    if (v14 || v12 == v15)
    {
      return result;
    }
  }

  else if (v12 <= 0x20 && ((1 << v12) & 0x100002600) != 0)
  {
    return result;
  }

  v80 = a3;
  v17 = *(v11 + 8) - v9;
  v84 = v17;
  if (v17 >= 0x32)
  {
    v17 = 50;
  }

  if (v9 >= *(this + 22))
  {
    v18 = 50;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(this + 2);
  v20 = *(*(this + 3) + 56);
  v96[0] = &unk_287528B70;
  v96[1] = v9;
  v96[2] = a4;
  v96[3] = v20;
  v96[4] = v18;
  ActiveConfigHandle = TParam::getActiveConfigHandle((v19 + 21160));
  v22 = *(v19 + 4 * TParam::getValidConfig((v19 + 21160), ActiveConfigHandle) + 21320);
  v23 = *(this + 4);
  v24 = *(v23 + 16);
  *(v23 + 24) = v22;
  (*(v24 + 16))();
  AllProductions = TParser::getAllProductions(*(this + 4), v96);
  TAllocator::TAllocator(v95, 2048);
  if (!AllProductions)
  {
    v56 = 0;
    goto LABEL_103;
  }

  v82 = 0;
  v26 = &v90;
  v27 = AllProductions;
  do
  {
    v28 = **TSegmenter::getPreviousSegment(a4, &v9[v27[2]]);
    {
      operator new();
    }

    if (v28 > 159)
    {
      v30 = v28 == 12288;
      if (v28 >= 12288)
      {
        v31 = 65279;
      }

      else
      {
        v30 = v28 == 160;
        v31 = 8203;
      }

      if (v30 || v28 == v31)
      {
        goto LABEL_43;
      }
    }

    else if (v28 <= 0x20 && ((1 << v28) & 0x100002600) != 0)
    {
      goto LABEL_43;
    }

    if (TGrammarCompiler::getAttributeValue(v27, "s", v95, 0) <= 1)
    {
      if (*v33)
      {
        if (TGrammarCompiler::getAttributeValue(v27, "l", v95, 0) <= 1)
        {
          v35 = v34;
          if (!*v34)
          {
            goto LABEL_91;
          }

          v36 = v26;
          v88 = v26;
          v89 = xmmword_26286B6F0;
          v94 = 1;
          PreviousSegment = TSegmenter::getPreviousSegment(a4, v9);
          v39 = v38;
          while (PreviousSegment && *(PreviousSegment + 24) != 5)
          {
            if (*(&v89 + 1) > 0x31uLL)
            {
              goto LABEL_59;
            }

            v40 = 0;
            v41 = *PreviousSegment;
              ;
            }

            TBuffer<wchar_t>::insert(&v88, 0, v41, v40 - 1);
            PreviousSegment = TSegmenter::getPreviousSegment(a4, v39);
            v39 = v43;
          }

          if (!*(&v89 + 1))
          {
            TBuffer<wchar_t>::insert(&v88, 0, "\n", 1uLL);
          }

LABEL_59:
          TRegExp::TRegExp(&__p, v35, *(this + 1) + 240);
          v26 = v36;
          if (*(&v89 + 1) >= v89)
          {
            if (v94)
            {
              v97[0] = 0;
              TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v97, 1uLL);
              v44 = v88;
              --*(&v89 + 1);
            }

            else
            {
              v44 = v88;
              if (v89)
              {
                v88[v89 - 1] = 0;
              }
            }
          }

          else
          {
            v44 = v88;
            v88[*(&v89 + 1)] = 0;
          }

          v45 = TRegExp::match(&__p, v44, 1);
          TRegExp::~TRegExp(&__p);
          if (v94 == 1 && v88 != v36 && v88)
          {
            MEMORY[0x26672B1B0](v88);
          }

          if (v45)
          {
LABEL_91:
            if (TGrammarCompiler::getAttributeValue(v27, "r", v95, 0) <= 1)
            {
              v47 = v46;
              if (!*v46)
              {
                goto LABEL_92;
              }

              v48 = v26;
              v88 = v26;
              v89 = xmmword_26286B6F0;
              v94 = 1;
              for (i = TSegmenter::getSegment(a4, &v9[v27[2]]); i && *(i + 24) != 5; i = TSegmenter::getSegment(a4, *(i + 8)))
              {
                if (*(&v89 + 1) > 0x31uLL)
                {
                  goto LABEL_81;
                }

                v50 = 0;
                v51 = *i;
                  ;
                }

                TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v51, v50 - 1);
              }

              if (!*(&v89 + 1))
              {
                TBuffer<wchar_t>::insert(&v88, 0, "\n", 1uLL);
              }

LABEL_81:
              TRegExp::TRegExp(&__p, v47, *(this + 1) + 240);
              v26 = v48;
              if (*(&v89 + 1) >= v89)
              {
                if (v94)
                {
                  v97[0] = 0;
                  TBuffer<wchar_t>::insert(&v88, *(&v89 + 1), v97, 1uLL);
                  v53 = v88;
                  --*(&v89 + 1);
                }

                else
                {
                  v53 = v88;
                  if (v89)
                  {
                    v88[v89 - 1] = 0;
                  }
                }
              }

              else
              {
                v53 = v88;
                v88[*(&v89 + 1)] = 0;
              }

              v54 = TRegExp::match(&__p, v53, 2);
              TRegExp::~TRegExp(&__p);
              if (v94 == 1 && v88 != v48 && v88)
              {
                MEMORY[0x26672B1B0](v88);
              }

              if (v54)
              {
LABEL_92:
                v55 = v82;
                if (v27[2] > v82)
                {
                  v55 = v27[2];
                }

                v82 = v55;
              }
            }
          }
        }
      }

      else
      {
        tknPrintString("Error: Top production 'spoken' attribute is an empty string\n");
      }
    }

LABEL_43:
    v27 = *v27;
  }

  while (v27);
  v56 = v82;
  if (v82)
  {
    if (&v9[v82] <= *(this + 22))
    {
      v56 = v84;
    }

    else
    {
      *(this + 22) = &v9[v82];
    }
  }

  else
  {
    AllProductions = 0;
  }

LABEL_103:
  v57 = *(this + 2);
  v58 = TParam::getActiveConfigHandle((v57 + 21512));
  ValidConfig = TParam::getValidConfig((v57 + 21512), v58);
  v60 = MEMORY[0x277D82828];
  if (*(v57 + ValidConfig + 21664) == 1)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v88);
    TParser::logChart(*(this + 4), &v88);
    std::stringbuf::str();
    if (v87 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    tknPrintString(p_p);
    if (v87 < 0)
    {
      operator delete(__p);
    }

    v88 = *v60;
    *(&v88 + *(v88 - 3)) = v60[3];
    *&v89 = MEMORY[0x277D82878] + 16;
    if (v92 < 0)
    {
      operator delete(v91);
    }

    *&v89 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v89 + 1);
    std::ostream::~ostream();
    MEMORY[0x26672B160](v93);
  }

  if (AllProductions)
  {
    v62 = v56;
    v83 = *v60;
    v81 = v60[3];
    do
    {
      v63 = AllProductions[2];
      if (v63 == v62 || v63 == v84)
      {
        v65 = *(this + 2);
        v66 = TParam::getActiveConfigHandle((v65 + 21760));
        if (*(v65 + TParam::getValidConfig((v65 + 21760), v66) + 21912) == 1)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](&v88);
          TParser::logTree(*(this + 4), AllProductions, &v88);
          std::stringbuf::str();
          if (v87 >= 0)
          {
            v67 = &__p;
          }

          else
          {
            v67 = __p;
          }

          tknPrintString(v67);
          if (v87 < 0)
          {
            operator delete(__p);
          }

          v88 = v83;
          *(&v88 + *(v83 - 24)) = v81;
          *&v89 = MEMORY[0x277D82878] + 16;
          if (v92 < 0)
          {
            operator delete(v91);
          }

          *&v89 = MEMORY[0x277D82868] + 16;
          std::locale::~locale(&v89 + 1);
          std::ostream::~ostream();
          MEMORY[0x26672B160](v93);
        }

        __p = TGrammarCompiler::getAttributeValue(AllProductions, "s", v95, 0);
        v86 = v68;
        if (__p <= 1)
        {
          if (*v68)
          {
            v69 = callBackSeqAlt(&__p, 1, "S", *(this + 1), v95);
            v71 = v70;
            __p = v69;
            v86 = v70;
            if (v69 <= 1 && v70 && TGrammarCompiler::getAttributeValue(AllProductions, "n", v95, 0) <= 1)
            {
              v73 = v72;
              v74 = v60;
              v75 = TGraph::addVertex(v80, &v9[AllProductions[2]]);
              v76 = TLexicon::addTempWord(*(this + 1), v73, "p", 0, v71);
              LODWORD(v88) = 5;
              v89 = v76;
              v90 = 0;
              TGraph::addEdge(v80, a2, v75, &v88);
              v60 = v74;
            }
          }
        }
      }

      AllProductions = *AllProductions;
    }

    while (AllProductions);
  }

  v77 = *(this + 4);
  v79 = *(v77 + 48);
  v78 = (v77 + 48);
  if (v79 >= 0x801)
  {
    TAllocator::clear(v78);
  }

  return TAllocator::clear(v95);
}

void sub_26268D7B8(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t addToken(__int32 **a1, TVertex *a2, TVertex *a3, TGraph *a4, TLexicon *a5)
{
  HeadClone = TLexicon::findHeadClone(a5, a1[3]);
  if (HeadClone)
  {
    v11 = 1;
  }

  else
  {
    HeadClone = TLexicon::addTempWord(a5, a1[3], 0, 0, 0);
    v11 = 4;
  }

  v13 = v11;
  v14 = HeadClone;
  v15 = 0;
  v16 = 0;
  return TGraph::addEdge(a4, a2, a3, &v13);
}

const char *addAlt(const TFileObject *a1, TVertex *a2, TVertex *a3, TGraph *a4, TLexicon *a5, const char *a6, const char *a7, const char *a8)
{
  v9 = *(a1 + 3);
  if (v9)
  {
    v15 = a7;
    while (1)
    {
      v16 = *(v9 + 8);
      if (!wcscmp(v16, "T"))
      {
        addToken(v9, a2, a3, a4, a5);
      }

      else
      {
        if (!wcscmp(v16, "A"))
        {
          v17 = addAlt(v9, a2, a3, a4, a5, a6, a7, a8);
LABEL_10:
          if (v17 > a7)
          {
            v15 = v17;
          }

          goto LABEL_14;
        }

        if (!wcscmp(v16, "P"))
        {
          addPattern(v9, a2, a3, a4, a5);
        }

        else if (!wcscmp(v16, "S"))
        {
          v17 = addSequence(v9, a2, a3, a4, a5, a6, a7, a8);
          goto LABEL_10;
        }
      }

LABEL_14:
      v9 = *(v9 + 16);
      if (!v9)
      {
        return v15;
      }
    }
  }

  return a7;
}

uint64_t addPattern(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = 0;
  v9 = *(a1 + 24);
  do
  {
    v10 = v9[1];
    if (!wcscmp(v10, "A"))
    {
      v15 = 0;
      v11 = v9[3];
      {
        operator new();
      }

      v7 = TLocaleInfo::stringToULong(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v11, &v15, 1);
    }

    else if (!wcscmp(v10, "V"))
    {
      v8 = v9[3];
    }

    v9 = v9[2];
  }

  while (v9);
  return (*(*v7 + 24))(v7, v8, a2, a3, a4, a5);
}

void sub_26268DC70(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TPatternManager::expandWord(uint64_t a1, TGraph *a2, uint64_t a3, int a4)
{
  v8 = *(a3 + 16);
  v7 = *(a3 + 24);
  if (a4)
  {
    v27 = v29;
    v28 = xmmword_26286B6F0;
    v30 = 1;
    TWord::getWrittenForm(*(a3 + 56), &v27);
    v22 = v25;
    v23 = 256;
    v26 = 1;
    v24 = 0;
    TBuffer<wchar_t>::insert(&v22, 0, "d", 0xCuLL);
    TBuffer<wchar_t>::operator+=(&v22, &v27);
    v9 = *(a1 + 8);
    if (v24 >= v23)
    {
      if (v26)
      {
        v18 = 0;
        TBuffer<wchar_t>::insert(&v22, v24, &v18, 1uLL);
        v10 = v22;
        --v24;
      }

      else
      {
        v10 = v22;
        if (v23)
        {
          v22[v23 - 1] = 0;
        }
      }
    }

    else
    {
      v10 = v22;
      v22[v24] = 0;
    }

    v13 = TLexicon::addTempWord(v9, 0, v10, 0, 0);
    v12 = TGraph::addVertex(a2, 0);
    v18 = 6;
    v19 = v13;
    v20 = 0;
    v21 = 0;
    TGraph::addEdge(a2, v8, v12, &v18);
    v24 = 0;
    TBuffer<wchar_t>::insert(&v22, 0, "d", 0xAuLL);
    TBuffer<wchar_t>::operator+=(&v22, &v27);
    v14 = *(a1 + 8);
    if (v24 >= v23)
    {
      if (v26)
      {
        v18 = 0;
        TBuffer<wchar_t>::insert(&v22, v24, &v18, 1uLL);
        v15 = v22;
        --v24;
      }

      else
      {
        v15 = v22;
        if (v23)
        {
          v22[v23 - 1] = 0;
        }
      }
    }

    else
    {
      v15 = v22;
      v22[v24] = 0;
    }

    v16 = TLexicon::addTempWord(v14, 0, v15, 0, 0);
    v11 = TGraph::addVertex(a2, 0);
    v18 = 6;
    v19 = v16;
    v20 = 0;
    v21 = 0;
    TGraph::addEdge(a2, v11, v7, &v18);
    if (v26 == 1 && v22 != v25 && v22)
    {
      MEMORY[0x26672B1B0]();
    }

    if (v30 == 1 && v27 != v29 && v27)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  else
  {
    v11 = *(a3 + 24);
    v12 = *(a3 + 16);
  }

  v17 = wcslen(**(a3 + 56));
  TFileObjectParser::TFileObjectParser(&v27, **(a3 + 56) + 4 * v17 + 4, 1, *(a1 + 8) + 240);
  addSequence(v27[3], v12, v11, a2, *(a1 + 8), *(v12 + 2), *(v12 + 2), v11[3]);
  TFileObjectParser::~TFileObjectParser(&v27);
  TGraph::deleteEdge(a2, a3);
}

void sub_26268DFB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != v14 && a13)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x858]) == 1)
  {
    v16 = STACK[0x440];
    if (STACK[0x440] != v13)
    {
      if (v16)
      {
        MEMORY[0x26672B1B0](v16, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void TDigitObject::~TDigitObject(TDigitObject *this)
{
  TDigitObject::~TDigitObject(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287528AA0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_287527FD0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void TRomanObject::~TRomanObject(TRomanObject *this)
{
  TRomanObject::~TRomanObject(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287528A50;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_287527FD0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t TRomanObject::isBuildable(uint64_t a1, signed int *a2)
{
  v5 = 0;
  {
    operator new();
  }

  v3 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2, &v5);
  return (v3 < 0xBB8) & ~v5;
}

void sub_26268E19C(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TCountingObject::~TCountingObject(void **this)
{
  *this = &unk_287527FD0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_287527FD0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x26672B1B0);
}

BOOL TCountingObject::isBuildable(uint64_t a1, __int32 *a2)
{
  do
  {
    v4 = a2;
    v5 = a2[1];
    ++a2;
    if (!v5)
    {
      break;
    }

    v6 = *v4;
    {
      operator new();
    }

    DigitExtended = v6 - 48;
    if (v6 < 48)
    {
      break;
    }

    if (v6 > 0x39)
    {
      if (v6 < 0x660)
      {
        return wcslen(v4) <= *(a1 + 88);
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v6);
    }
  }

  while (!DigitExtended);
  return wcslen(v4) <= *(a1 + 88);
}

void sub_26268E374(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

void TArrayObject::~TArrayObject(TArrayObject *this)
{
  TArrayObject::~TArrayObject(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287528B98;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  *this = &unk_287527FD0;
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

BOOL TArrayObject::isBuildable(uint64_t a1, __int32 *a2)
{
  do
  {
    v4 = a2;
    v5 = a2[1];
    ++a2;
    if (!v5)
    {
      break;
    }

    v6 = *v4;
    {
      operator new();
    }

    DigitExtended = v6 - 48;
    if (v6 < 48)
    {
      break;
    }

    if (v6 > 0x39)
    {
      if (v6 < 0x660)
      {
        break;
      }

      DigitExtended = TLocaleInfo::getDigitExtended(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v6);
    }
  }

  while (!DigitExtended);
  if (wcslen(v4) > 5)
  {
    return 0;
  }

  v11 = 0;
  {
    operator new();
  }

  v8 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v4, &v11);
  if (v11)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  return v8 < ((*(a1 + 40) - v9) >> 3) && *(v9 + 8 * v8) != 0;
}

void sub_26268E570(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

const char *TArrayObject::build(uint64_t a1, signed int *a2, TVertex *a3, TVertex *a4, TGraph *a5, TLexicon *a6)
{
  v14 = 0;
  {
    operator new();
  }

  v12 = TLocaleInfo::stringToUInt(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, a2, &v14);
  return addSequence(*(*(a1 + 32) + 8 * v12), a3, a4, a5, a6, 0, 0, 0);
}

void sub_26268E6B0(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

size_t callBackSeqAltHelper(uint64_t a1, uint64_t a2, __int32 *a3, uint64_t a4, __int32 *a5)
{
  v5 = a5;
  if (a5)
  {
    wcscpy(a5, a3);
    v8 = &v5[wcslen(v5)];
    strcpy(v8, " ");
    v5 = &v8[4 * wcslen(v8)];
  }

  if (a2)
  {
    v9 = 0;
    v10 = 0;
    v11 = a2;
    v12 = 1;
    while (1)
    {
      v13 = (a1 + 16 * v9);
      if (*v13 > 1uLL)
      {
        break;
      }

      v14 = v13[1];
      if (*v14)
      {
        v15 = wcsncmp(v14, "S", 8uLL);
        v16 = v15 == 0;
        if (v15)
        {
LABEL_8:
          if (!wcsncmp(v14, "S", 6uLL) || !wcsncmp(v14, "A", 6uLL) || !wcsncmp(v14, "P", 0xAuLL) || !wcsncmp(v14, "S", 7uLL))
          {
            v19 = wcslen(v14);
            if (v5)
            {
              wcscpy(v5, v14);
              v5 += wcslen(v5);
            }
          }

          else
          {
            if (TLexicon::checkName(a4, v14, 0, 0xFFFFFFFFFFFFFFFFLL))
            {
              loggableUnicode(v14, &__p);
              if (v39 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              tknPrintf("Warning: '%s' : The tokenizer grammar constructed an invalid word name.\n", v26, v27, v28, v29, p_p);
              if (SHIBYTE(v39) < 0)
              {
                operator delete(__p);
              }

              return 0;
            }

            __p = v40;
            v39 = xmmword_26286B6F0;
            v41 = 1;
            slashEscape(v14, &__p);
            v17 = *(&v39 + 1);
            if (v5)
            {
              v33 = v5;
              v34 = *(&v39 + 1) + 11;
              v37 = 0;
              v35 = 0;
              TBuffer<wchar_t>::insert(&v33, 0, "T", 9uLL);
              if (*(&v39 + 1) >= v39)
              {
                if (v41)
                {
                  v42[0] = 0;
                  TBuffer<wchar_t>::insert(&__p, *(&v39 + 1), v42, 1uLL);
                  v18 = __p;
                  --*(&v39 + 1);
                }

                else
                {
                  v18 = __p;
                  if (v39)
                  {
                    *(__p + v39 - 1) = 0;
                  }
                }
              }

              else
              {
                v18 = __p;
                *(__p + *(&v39 + 1)) = 0;
              }

              v22 = 0;
                ;
              }

              TBuffer<wchar_t>::insert(&v33, v35, v18, v22 - 1);
              v42[0] = 34;
              TBuffer<wchar_t>::insert(&v33, v35, v42, 1uLL);
              if (v35 >= v34)
              {
                if (v37)
                {
                  v42[0] = 0;
                  TBuffer<wchar_t>::insert(&v33, v35--, v42, 1uLL);
                }

                else if (v34)
                {
                  v33[v34 - 1] = 0;
                }
              }

              else
              {
                v33[v35] = 0;
              }

              v24 = wcslen(v5);
              if (v37 == 1 && v33 != &v36 && v33)
              {
                MEMORY[0x26672B1B0]();
              }

              v5 += v24;
            }

            if (v41 == 1 && __p != v40 && __p)
            {
              MEMORY[0x26672B1B0]();
            }

            v19 = v17 + 10;
          }

          v10 += v19;
          v12 = v16;
        }

        else if (v10)
        {
          v20 = wcscmp(a3, "A");
          if (!((v20 != 0) | v12 & 1))
          {
            v21 = v11;
            while (--v21)
            {
              if (wcsncmp(v14, "S", 8uLL))
              {
                goto LABEL_8;
              }
            }

            goto LABEL_51;
          }

          v12 |= v20 == 0;
        }
      }

      ++v9;
      --v11;
      if (v9 == a2)
      {
        goto LABEL_51;
      }
    }
  }

  else
  {
    v10 = 0;
LABEL_51:
    if (v5)
    {
      strcpy(v5, "}");
    }

    if (v10)
    {
      return v10 + wcslen(a3) + 6;
    }
  }

  return 0;
}

void sub_26268EB38(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x477]) < 0)
  {
    operator delete(STACK[0x460]);
  }

  _Unwind_Resume(a1);
}

void std::vector<TFileObject *>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_26286B680)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TParam *>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_26286B680)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void std::vector<unsigned long>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_26286B680)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_26286B680)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void std::vector<void const*>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_26286B680)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_26286B680)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void MrecInitModule_timer_mrecutil(void)
{
  if (!gParDiagnosticComputeFullTimingStats)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DiagnosticComputeFullTimingStats", byte_262881FF8, byte_262881FF8, 0, SetShadowDiagnosticComputeFullTimingStats, 0);
    *v2 = &unk_287527EA0;
    gParDiagnosticComputeFullTimingStats = v2;
    gShadowDiagnosticComputeFullTimingStats = 0;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDiagnosticComputeFullTimingStats);
  }
}

void MrecTime::MrecTime(MrecTime *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

double MrecTime::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

DgnString *MrecTime::formatAndAppendToString(MrecTime *this, DgnString *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x64uLL, "%04u-%02u-%02u %02u:%02u:%02u", *(this + 5) + 1900, *(this + 4) + 1, *(this + 3), *(this + 2), *(this + 1), *this);
  result = DgnString::operator+=(a2, __str);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

double MrecTime::setToCurrentLocalTime(MrecTime *this)
{
  v4 = time(0);
  v2 = localtime(&v4);
  if (!v2)
  {
    errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/timer.cpp", 157, "mrecutil/timer", 5, "%s", byte_262881FF8);
  }

  *this = *&v2->tm_sec;
  result = *&v2->tm_mon;
  *(this + 2) = result;
  return result;
}

uint64_t MrecTime::setToPreprocessorStyleDateAndTime(MrecTime *this, const char *a2, const char *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  *__s1 = 0;
  v8 = 0;
  sscanf(a2, "%s %u %u", __s1, this + 12, &v8);
  v5 = 0;
  *(this + 5) = v8 - 1900;
  while (strcmp(__s1, MrecTime::setToPreprocessorStyleDateAndTime(char const*,char const*)::ppMonth[v5]))
  {
    if (++v5 == 12)
    {
      goto LABEL_6;
    }
  }

  *(this + 4) = v5;
LABEL_6:
  result = sscanf(a3, "%u:%u:%u", this + 8, this + 4, this);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

DgnString *MrecTime::appendLocalTimeToString(MrecTime *this, DgnString *a2)
{
  memset(v4, 0, sizeof(v4));
  MrecTime::setToCurrentLocalTime(v4);
  return MrecTime::formatAndAppendToString(v4, this);
}

_DWORD *MrecTime::unpackLittleEndMrecTime(_DWORD *this, const unsigned int *a2)
{
  *this = *a2;
  this[1] = a2[1];
  this[2] = a2[2];
  this[3] = a2[3];
  this[4] = a2[4];
  this[5] = a2[5];
  return this;
}

unsigned int *MrecTime::packLittleEndMrecTime(unsigned int *this, unsigned int *a2)
{
  *a2 = *this;
  a2[1] = this[1];
  a2[2] = this[2];
  a2[3] = this[3];
  a2[4] = this[4];
  a2[5] = this[5];
  return this;
}

__darwin_time_t ClockTimer::getCurrentMicrosec(ClockTimer *this)
{
  if (gettimeofday(&v3, 0))
  {
    v1 = __error();
    errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/timer.cpp", 410, "mrecutil/timer", 6, "%d", *v1);
  }

  return v3.tv_usec + 1000000 * v3.tv_sec;
}

__darwin_time_t ClockTimer::getCurrentTickMicrosec(ClockTimer *this)
{
  if (gettimeofday(&v3, 0))
  {
    v1 = __error();
    errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/timer.cpp", 486, "mrecutil/timer", 6, "%d", *v1);
  }

  return v3.tv_usec + 1000000 * v3.tv_sec;
}

uint64_t ClockTimer::initClockTimer(ClockTimer *this)
{
  *this = 0;
  *(this + 1) = 1;
  *(this + 2) = 0x100000001;
  *(this + 24) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  CurrentMicrosec = ClockTimer::getCurrentMicrosec(this);
  if (!CurrentMicrosec)
  {
    errWarnInternal("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/timer.cpp", 571, "mrecutil/timer", 4, "%s", &warnStr_mrecutil_timer_W_BAD_ELAPSED_MICROSEC);
  }

  *this = 1;
  *(this + 5) = ClockTimer::getCurrentMicrosec(CurrentMicrosec);
  result = getrusage(0, &v4);
  *(this + 6) = v4.ru_stime.tv_usec + v4.ru_utime.tv_usec + 1000000 * (v4.ru_stime.tv_sec + v4.ru_utime.tv_sec);
  return result;
}

double ClockTimer::initCyclesPerSecondAndSpeedFactor(ClockTimer *this)
{
  *(this + 1) = 1;
  *&result = 0x100000001;
  *(this + 2) = 0x100000001;
  *(this + 24) = 1;
  return result;
}

int64x2_t ClockTimer::useFreeTime@<Q0>(int64x2_t *a1@<X8>)
{
  v5 = 0u;
  v6 = 0u;
  SnapTime::recordTime(&v5, 1, 0, 0, 0);
  usleep(0x2710u);
  *a1 = 0u;
  a1[1] = 0u;
  SnapTime::recordTime(a1, 1, 0, 0, 0);
  result = vsubq_s64(*a1, v5);
  v4 = vsubq_s64(a1[1], v6);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void MrecInitModule_trgrm_voc(void)
{
  if (!gParDebugWordFst)
  {
    v0 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v0, "DebugWordFst", byte_262881FFC, byte_262881FFC, 0, 0, 0);
    *v1 = &unk_287527EA0;
    gParDebugWordFst = v1;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordFst);
  }

  if (!gParDebugWordFstSelfLoop)
  {
    v2 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v2, "DebugWordFstSelfLoop", byte_262881FFC, byte_262881FFC, 1, 0, 0);
    *v3 = &unk_287527EA0;
    gParDebugWordFstSelfLoop = v3;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordFstSelfLoop);
  }

  if (!gParDebugWordFstShowPronlessWords)
  {
    v4 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v4, "DebugWordFstShowPronlessWords", byte_262881FFC, byte_262881FFC, 0, 0, 0);
    *v5 = &unk_287527EA0;
    gParDebugWordFstShowPronlessWords = v5;
    GlobalParamMgr::addParam(GlobalParamMgr::smpGlobalParamMgr, &gParDebugWordFstShowPronlessWords);
  }

  if (!gParDebugTransducerGrammarIO)
  {
    v6 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v6, "DebugTransducerGrammarIO", byte_262881FFC, byte_262881FFC, 0, 0, 0);
    *v7 = &unk_287527EA0;
    gParDebugTransducerGrammarIO = v7;
    v8 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v8, &gParDebugTransducerGrammarIO);
  }
}

StateMgr *DgnDelete<StateMgr>(StateMgr *result)
{
  if (result)
  {
    StateMgr::~StateMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

RuleMgr *DgnDelete<RuleMgr>(RuleMgr *result)
{
  if (result)
  {
    RuleMgr::~RuleMgr(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void MrecInitModule_spdebug_sigproc(void)
{
  if (!gParDebugSignalProcessing)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugSignalProcessing", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugSignalProcessing = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugSignalProcessing);
  }
}

void MrecInitModule_dsmset_mrecutil(void)
{
  if (!gParDebugDgnSharedMemSet)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugDgnSharedMemSet", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugDgnSharedMemSet = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugDgnSharedMemSet);
  }
}

uint64_t *DgnSharedMemSet::createSet(DgnSharedMemSet *this, const DgnString *a2, const DgnString *a3)
{
  v5 = MemChunkAlloc(0x130uLL, 0);
  DSMSetData::DSMSetData(v5, this, a2);
  DSMSetData::refMaybeCreateSetRecordBlobEx(v6);
  result = MemChunkAlloc(8uLL, 0);
  *result = v5;
  return result;
}

uint64_t DgnSharedMemSet::getMaybeReserveAndRefDSMIdEx(DSMSetData **this, char **a2, int a3)
{
  v6 = *this;
  v7 = &byte_262899963;
  if (*(a2 + 2))
  {
    v7 = *a2;
  }

  v8 = *v7;
  if (*v7)
  {
    v9 = 0;
    v10 = (v7 + 1);
    do
    {
      HIDWORD(v11) = v9;
      LODWORD(v11) = v9;
      v9 = (v11 >> 19) + v8;
      v12 = *v10++;
      v8 = v12;
    }

    while (v12);
    v13 = (-1640531527 * v9);
  }

  else
  {
    v13 = 0;
  }

  v75 = -1;
  v76 = 0;
  v14 = *(*(v6 + 34) + 48);
  v15 = sysconf(29);
  if (v15 <= 0x10000)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = v15;
  }

  v19 = mmap(0, v16, 3, 1, v14, 0);
  v75 = v19;
  v76 = v16;
  if (v19 == -1)
  {
    if (*(*this + 6))
    {
      v20 = *(*this + 2);
    }

    else
    {
      v20 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 191, "mrecutil/dsmset", 3, "%.500s", v17, v18, v20);
    v19 = v75;
  }

  v74 = v6 + 32;
  pthread_mutex_lock((v6 + 32));
  ++*(v6 + 24);
  *(v6 + 13) = pthread_self();
  v72 = v6 + 112;
  if (DgnSharedLock::acquire(v6 + 14, 0xEA60u))
  {
    if (*(*this + 6))
    {
      v23 = *(*this + 2);
    }

    else
    {
      v23 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 201, "mrecutil/dsmset", 2, "%.500s", v21, v22, v23);
  }

  v66 = a3;
  v24 = 0;
  v65 = v19;
  v25 = v19 + 56;
  v26 = 0xFFFFFFFFLL;
  do
  {
    v27 = &v25[56 * v24];
    v28 = 5 * v24++;
    v29 = 16 * v28;
    while (1)
    {
      v30 = *(v6 + 34);
      v31 = veorq_s8(*v27, v27[1]);
      *v31.i8 = veor_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
      v32 = v27[2].i32[1];
      if ((v27[2].i32[0] ^ v27[2].i32[2] ^ v27[2].i32[3] ^ v32 ^ v31.i32[1] ^ v31.i32[0]) != v27[3].i32[0])
      {
        goto LABEL_41;
      }

      v33 = v27[2].i32[2];
      if (v33 == 1)
      {
        goto LABEL_41;
      }

      if (!v33)
      {
        break;
      }

      if (v32 == v13)
      {
        if (*(v30 + v29 + 120))
        {
          if (*(a2 + 2))
          {
            v34 = *a2;
          }

          else
          {
            v34 = &byte_262899963;
          }

          if (!strcmp(v34, (*(v30 + v29 + 136) + 16)))
          {
            ++*(v30 + v29 + 152);
LABEL_73:
            v26 = v24;
            goto LABEL_69;
          }
        }

        else
        {
          DgnString::DgnString(&v70);
          DSMSetData::getDSMName(*this, v24, v13, v27[2].u32[0], &v70);
          if (v71)
          {
            v35 = v70;
          }

          else
          {
            v35 = &byte_262899963;
          }

          if (*(a2 + 2))
          {
            v36 = *a2;
          }

          else
          {
            v36 = &byte_262899963;
          }

          if (!strcmp(v35, v36))
          {
            v62 = *(v30 + v29 + 152);
            if (!v62)
            {
              v63 = v27[2].i32[3] + 1;
              v27[2].i32[3] = v63;
              v64 = v27->i64[1] ^ v27->i64[0] ^ v27[1].i64[0] ^ v27[1].i64[1];
              v27[3].i32[0] = v27[2].i32[2] ^ v27[2].i32[0] ^ v27[2].i32[1] ^ v63 ^ HIDWORD(v64) ^ v64;
            }

            *(v30 + v29 + 152) = v62 + 1;
            DgnString::~DgnString(&v70);
            goto LABEL_73;
          }

          DgnString::~DgnString(&v70);
        }
      }

LABEL_41:
      ++v24;
      v27 = (v27 + 56);
      v29 += 80;
      if (v24 == 1024)
      {
        goto LABEL_47;
      }
    }

    if (v26 == -1)
    {
      v26 = v24;
    }

    else
    {
      v26 = v26;
    }
  }

  while (v24 != 1023);
LABEL_47:
  if (!v66)
  {
    v26 = 0xFFFFFFFFLL;
    goto LABEL_69;
  }

  if (v26 == -1)
  {
    if (*(*this + 6))
    {
      v37 = *(*this + 2);
    }

    else
    {
      v37 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 326, "mrecutil/dsmset", 4, "%.500s", v21, v22, v37);
  }

  DgnString::DgnString(&v70);
  DSMSetData::getSysReserveName(v6, v13, v26, &v70);
  v38 = *(a2 + 2);
  v39 = v38 != 0;
  v40 = v38 - 1;
  if (v39)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v42 = sysconf(29);
  v43 = (v41 & 0xFFFFFFF0) + 32;
  v44 = ((v42 - 1) + v43) & ~(v42 - 1);
  v69 = -1;
  v45 = DSMHandle::open(&v69, *this, a2, &v70, v44, 1, 1);
  v46 = mmap(0, v44, 3, 1, v69, 0);
  v67 = v46;
  v68 = v44;
  if (v46 == -1 && v45)
  {
    DSMHandle::unlink(*this, &v70, v47);
    goto LABEL_60;
  }

  if (v46 == -1)
  {
LABEL_60:
    if (*(a2 + 2))
    {
      v50 = *a2;
    }

    else
    {
      v50 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 355, "mrecutil/dsmset", 5, "%.500s %.500s %llu", v48, v49, v50);
    v46 = v67;
  }

  DSMHeadData::init(v46, a2, 0);
  v51 = pthread_self();
  v52 = getpid();
  v53 = v52;
  PlatformAbsoluteTime = ClockTimer::getPlatformAbsoluteTime(v52);
  v55 = *(v6 + 34) + 80 * v26;
  *(v55 + 72) = 1;
  *(v55 + 24) = v51;
  v56 = v69;
  v69 = -1;
  v57 = *(v55 + 52);
  if (v57 != -1)
  {
    close(v57);
  }

  *(v55 + 52) = v56;
  v58 = v67;
  v59 = v68;
  v67 = -1;
  if (v58 != -1)
  {
    munmap(*(v55 + 56), *(v55 + 64));
  }

  *(v55 + 56) = v58;
  *(v55 + 64) = v59;
  *(v55 + 8) = 0;
  *(v55 + 16) = v53;
  *v55 = PlatformAbsoluteTime;
  *(v55 + 32) = v43;
  *(v55 + 36) = 2;
  *(v55 + 44) = v13;
  v60 = &v65[56 * v26];
  *v60 = PlatformAbsoluteTime;
  *(v60 + 1) = 0;
  *(v60 + 2) = 0;
  *(v60 + 3) = v53;
  *(v60 + 8) = v43;
  *(v60 + 9) = v13;
  *(v60 + 11) = 1;
  *(v60 + 12) = (v43 | 2) ^ ((PlatformAbsoluteTime ^ v53) >> 32) ^ PlatformAbsoluteTime ^ v53 ^ v13 ^ 1;
  __dmb(0xBu);
  *(v55 + 40) = 1;
  *(v60 + 10) = 2;
  DSMMappedPtr::~DSMMappedPtr(&v67);
  DSMHandle::~DSMHandle(&v69);
  DgnString::~DgnString(&v70);
LABEL_69:
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(&v72);
  Latch<DgnLock,LatchAdapter>::~Latch(&v74);
  DSMMappedPtr::~DSMMappedPtr(&v75);
  return v26;
}

void sub_262690400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(va);
  Latch<DgnLock,LatchAdapter>::~Latch(va1);
  DSMMappedPtr::~DSMMappedPtr((v12 - 96));
  _Unwind_Resume(a1);
}

void DSMHeadData::init(DSMHeadData *this, const DgnString *a2, uint64_t a3)
{
  v4 = *(a2 + 2);
  LODWORD(v5) = v4 - 1;
  if (v4)
  {
    v5 = v5;
  }

  else
  {
    v5 = 0;
  }

  *this = 0;
  *(this + 1) = v5;
  *(this + 1) = a3;
  if (v4 >= 2)
  {
    v6 = 0;
    do
    {
      *(this + v6 + 16) = *(*a2 + v6);
      ++v6;
    }

    while (v6 < v5);
  }

  v7 = v5 & 0xFFFFFFF0;
  v8 = (v5 & 0xFFFFFFF0) + 32;
  if (v5 < (v5 & 0xFFFFFFF0) + 16)
  {
    v9 = this + v5;
    if (v4)
    {
      ++v7;
    }

    bzero(v9 + 16, v7 - v4 + 15 + 1);
  }

  v10 = 0;
  if (v8)
  {
    LODWORD(v11) = v8 >> 2;
    if (v8 >> 2 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v11;
    }

    v12 = this;
    do
    {
      v13 = *v12;
      v12 = (v12 + 4);
      v10 ^= v13;
      --v11;
    }

    while (v11);
  }

  *this = v10;
}

BOOL DgnSharedMemSet::waitTilCreatedAndMapEx(DSMSetData **this, uint64_t a2, const DgnString *a3, unsigned int a4)
{
  v7 = *(*this + 32) + 56 * a2;
  for (i = *(*this + 34); *(v7 + 40) == 2; a4 = v11 - 100)
  {
    isProcessAlive = DSMGlobalRecord::isProcessAlive(*(v7 + 24));
    if (!a4 || !isProcessAlive)
    {
      break;
    }

    __rqtp = xmmword_262882010;
    nanosleep(&__rqtp, 0);
    v11 = a4 <= 0x64 ? 100 : a4;
  }

  v12 = *(v7 + 40);
  if (v12 != 2)
  {
    v13 = *this;
    v51 = (*this + 32);
    pthread_mutex_lock(v51);
    ++*(v13 + 24);
    *(v13 + 13) = pthread_self();
    __rqtp.tv_sec = *this + 112;
    LODWORD(__rqtp.tv_nsec) = 2;
    LODWORD(__rqtp.tv_nsec) = DgnSharedLock::acquire(__rqtp.tv_sec, 0xEA60u);
    if (LODWORD(__rqtp.tv_nsec))
    {
      if (*(*this + 6))
      {
        v16 = *(*this + 2);
      }

      else
      {
        v16 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 496, "mrecutil/dsmset", 2, "%.500s", v14, v15, v16);
    }

    v17 = veorq_s8(*v7, *(v7 + 16));
    *v17.i8 = veor_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
    if ((*(v7 + 32) ^ *(v7 + 40) ^ *(v7 + 36) ^ *(v7 + 44) ^ v17.i32[1] ^ v17.i32[0]) != *(v7 + 48))
    {
      if (*(a3 + 2))
      {
        v18 = *a3;
      }

      if (*(*this + 6))
      {
        v19 = *(*this + 2);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 499, "mrecutil/dsmset", 7, "%d %.500s %.500s", v14, v15, a2);
    }

    v20 = *this;
    if ((*(*(*this + 32) + 56 * a2 + 40) - 3) >= 2)
    {
      if (*(a3 + 2))
      {
        v21 = *a3;
      }

      if (*(v20 + 6))
      {
        v22 = *(v20 + 2);
      }

      v45 = *(v7 + 40);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 503, "mrecutil/dsmset", 8, "%d %.500s %d %.500s", v14, v15, a2);
    }

    v23 = i + 80 * a2;
    if (!*(v23 + 40))
    {
      DgnString::DgnString(&v50);
      DSMSetData::getSysName(*this, *(v7 + 36), a2, &v50);
      v24 = *(v7 + 40);
      v49 = -1;
      DSMHandle::open(&v49, *this, a3, &v50, 0xFFFFFFFFFFFFFFFFLL, v24 == 4, 0);
      v27 = v49;
      if (v49 == -1)
      {
        if (*(a3 + 2))
        {
          v28 = *a3;
        }

        else
        {
          v28 = &byte_262899963;
        }

        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 521, "mrecutil/dsmset", 6, "%.500s %.500s", v25, v26, v28);
        v27 = v49;
      }

      v47 = -1;
      v48 = 0;
      v29 = *(v7 + 8);
      if (v24 == 4)
      {
        v30 = 3;
      }

      else
      {
        v30 = 1;
      }

      v47 = mmap(0, *(v7 + 8), v30, 1, v27, 0);
      v48 = v29;
      if (v47 == -1)
      {
        if (*(a3 + 2))
        {
          v33 = *a3;
        }

        else
        {
          v33 = &byte_262899963;
        }

        v46 = *(v7 + 8);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 528, "mrecutil/dsmset", 5, "%.500s %.500s %llu", v31, v32, v33);
      }

      *v23 = *v7;
      *(v23 + 8) = *(v7 + 16);
      *(v23 + 32) = *(v7 + 32);
      *(v23 + 36) = *(v7 + 40);
      *(v23 + 16) = *(v7 + 24);
      *(v23 + 24) = pthread_self();
      if (v24 == 4)
      {
        v34 = 9;
      }

      else
      {
        v34 = 8;
      }

      v35 = v49;
      v49 = -1;
      v36 = *(v23 + 48);
      if (v36 != -1)
      {
        close(v36);
      }

      *(v23 + 48) = v35;
      v37 = v47;
      v38 = v48;
      v47 = -1;
      if (v37 != -1)
      {
        munmap(*(v23 + 56), *(v23 + 64));
      }

      *(v23 + 56) = v37;
      *(v23 + 64) = v38;
      __dmb(0xBu);
      *(v23 + 40) = v34;
      DSMMappedPtr::~DSMMappedPtr(&v47);
      DSMHandle::~DSMHandle(&v49);
      DgnString::~DgnString(&v50);
    }

    v39 = *(v23 + 56) + 16;
    if (*(a3 + 2))
    {
      v40 = *a3;
    }

    else
    {
      v40 = &byte_262899963;
    }

    if (strcmp(v40, (*(v23 + 56) + 16)))
    {
      if (*(*this + 6))
      {
        v43 = *(*this + 2);
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 561, "mrecutil/dsmset", 9, "%d %.500s %.500s %.500s", v41, v42, a2);
    }

    Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(&__rqtp.tv_sec);
    Latch<DgnLock,LatchAdapter>::~Latch(&v51);
  }

  return v12 != 2;
}

void sub_262690A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va2, a10);
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  DgnString::~DgnString(va);
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(va2);
  Latch<DgnLock,LatchAdapter>::~Latch(va1);
  _Unwind_Resume(a1);
}

char *DgnSharedMemSet::openDSMWithSizeEx(DSMSetData **a1, uint64_t a2, int a3, uint64_t *a4)
{
  v8 = *a1;
  v9 = *(*a1 + 32);
  v10 = *(*a1 + 34) + 80 * a2;
  v42 = (*a1 + 32);
  pthread_mutex_lock(v42);
  ++*(v8 + 24);
  v11 = 0;
  *(v8 + 13) = pthread_self();
  if (a3 > 2)
  {
    if ((a3 - 3) <= 1)
    {
      v11 = (*(v10 + 56) + *(v10 + 32));
      *a4 = *(v10 + 8);
    }
  }

  else
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 == 2)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 622, "mrecutil/dsmset", 1, "%.500s", v12, v13, "eDSMOM_ReadValidate");
          v11 = 0;
        }

        goto LABEL_27;
      }

      v19 = *a4;
      v20 = *(v10 + 32);
      v21 = sysconf(29);
      DgnString::DgnString(&v41);
      DSMSetData::getSysName(*a1, *(v10 + 44), a2, &v41);
      DgnString::DgnString(&v39, (*(v10 + 56) + 16));
      v22 = (v19 + v20 + (v21 - 1)) & ~(v21 - 1);
      v38 = -1;
      LOBYTE(v19) = DSMHandle::open(&v38, *a1, &v39, &v41, v22, 1, 1);
      v23 = mmap(0, v22, 3, 1, v38, 0);
      v36 = v23;
      v37 = v22;
      if (((v23 == -1) & v19) == 1)
      {
        DSMHandle::unlink(*a1, &v41, v24);
      }

      else if (v23 != -1)
      {
LABEL_18:
        DSMHeadData::init(v23, &v39, *a4);
        v28 = v36;
        v29 = *(v10 + 32);
        *(v10 + 8) = *a4;
        DSMHandle::~DSMHandle((v10 + 48));
        v30 = v38;
        v38 = -1;
        v31 = *(v10 + 48);
        if (v31 != -1)
        {
          close(v31);
        }

        *(v10 + 48) = v30;
        DSMMappedPtr::~DSMMappedPtr((v10 + 56));
        v32 = v36;
        v33 = v37;
        v36 = -1;
        if (v32 != -1)
        {
          munmap(*(v10 + 56), *(v10 + 64));
        }

        v11 = v28 + v29;
        *(v10 + 56) = v32;
        *(v10 + 64) = v33;
        *(v10 + 40) = 6;
        DSMMappedPtr::~DSMMappedPtr(&v36);
        DSMHandle::~DSMHandle(&v38);
        DgnString::~DgnString(&v39);
        DgnString::~DgnString(&v41);
        goto LABEL_27;
      }

      if (v40)
      {
        LOBYTE(v27) = v39;
      }

      else
      {
        v27 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 663, "mrecutil/dsmset", 5, "%.500s %.500s %llu", v25, v26, v27);
      v23 = v36;
      goto LABEL_18;
    }

    v14 = v9 + 56 * a2;
    v16 = *(v14 + 40);
    v15 = (v14 + 40);
    if (v16 != 2)
    {
      v17 = *v15;
      if (*(*a1 + 6))
      {
        v18 = *(*a1 + 2);
      }

      v35 = *(v10 + 56) + 16;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 610, "mrecutil/dsmset", 8, "%d %.500s %d %.500s", v12, v13, a2);
    }

    if (a4)
    {
      *a4 = 0;
    }

    v11 = 0;
    *(v10 + 40) = 2;
  }

LABEL_27:
  Latch<DgnLock,LatchAdapter>::~Latch(&v42);
  return v11;
}

void sub_262690DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, __int16 a17, char a18, uint64_t a19, char a20)
{
  DSMHandle::~DSMHandle(&a16);
  DgnString::~DgnString(&a18);
  DgnString::~DgnString(&a20);
  Latch<DgnLock,LatchAdapter>::~Latch((v20 - 72));
  _Unwind_Resume(a1);
}

uint64_t *DgnSharedMemSet::closeDSMEx(DgnSharedMemSet *this, unsigned int a2)
{
  v3 = *this;
  v4 = *(*this + 272);
  v11 = (*this + 32);
  pthread_mutex_lock(v11);
  ++*(v3 + 96);
  *(v3 + 104) = pthread_self();
  v5 = v4 + 80 * a2;
  v8 = *(v5 + 40);
  v6 = (v5 + 40);
  v7 = v8;
  if ((v8 - 10) <= 0xFFFFFFFD)
  {
    switch(v7)
    {
      case 2:
        v9 = 3;
        goto LABEL_8;
      case 6:
        v9 = 7;
        goto LABEL_8;
      case 4:
        v9 = 5;
LABEL_8:
        *v6 = v9;
        break;
    }
  }

  return Latch<DgnLock,LatchAdapter>::~Latch(&v11);
}

BOOL DgnSharedMemSet::createMaybeRemapDSMEx(DSMSetData **this, uint64_t a2, int a3)
{
  v6 = *(*this + 34);
  v40 = -1;
  v41 = 0;
  v7 = *(v6 + 48);
  v8 = sysconf(29);
  if (v8 <= 0x10000)
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = v8;
  }

  v12 = mmap(0, v9, 3, 1, v7, 0);
  v40 = v12;
  v41 = v9;
  if (v12 == -1)
  {
    if (*(*this + 6))
    {
      v13 = *(*this + 2);
    }

    else
    {
      v13 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 757, "mrecutil/dsmset", 3, "%.500s", v10, v11, v13);
    v12 = v40;
  }

  v14 = *this;
  v39 = (*this + 32);
  pthread_mutex_lock(v39);
  ++*(v14 + 24);
  *(v14 + 13) = pthread_self();
  v37 = (*this + 112);
  v15 = DgnSharedLock::acquire(v37, 0xEA60u);
  v38 = v15;
  if (v15)
  {
    if (*(*this + 6))
    {
      v18 = *(*this + 2);
    }

    else
    {
      v18 = &byte_262899963;
    }

    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 765, "mrecutil/dsmset", 2, "%.500s", v16, v17, v18);
  }

  v19 = v6 + 80 * a2;
  if (a3)
  {
    v20 = 4;
  }

  else
  {
    v20 = 3;
  }

  v36 = 0;
  if ((a3 & 1) == 0)
  {
    v15 = DSMMappedPtr::remap((v19 + 56), *(v19 + 48), 0, &v36);
    if (!v15)
    {
      DgnString::DgnString(&v35);
      DSMSetData::getSysName(*this, *(v19 + 44), a2, &v35);
      v34 = *(v19 + 64);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 795, "mrecutil/dsmset", 5, "%.500s %.500s %llu", v21, v22, *(v19 + 56) + 16);
      DgnString::~DgnString(&v35);
    }
  }

  PlatformAbsoluteTime = ClockTimer::getPlatformAbsoluteTime(v15);
  v24 = &v12[56 * a2];
  *v19 = PlatformAbsoluteTime;
  *(v19 + 36) = v20;
  v25 = *(v19 + 64);
  *(v24 + 1) = v25;
  v26 = *(v19 + 8);
  *(v24 + 2) = v26;
  v27 = *(v19 + 16);
  *(v24 + 3) = v27;
  v28 = *(v19 + 32);
  *(v24 + 8) = v28;
  v29 = *(v19 + 44);
  *(v24 + 9) = v29;
  *v24 = PlatformAbsoluteTime;
  *(v24 + 12) = *(v24 + 11) ^ ((v25 ^ PlatformAbsoluteTime ^ v26 ^ v27) >> 32) ^ v25 ^ PlatformAbsoluteTime ^ v26 ^ v27 ^ v20 ^ v28 ^ v29;
  if (a3)
  {
    v30 = 9;
  }

  else
  {
    v30 = 8;
  }

  __dmb(0xBu);
  *(v24 + 10) = v20;
  *(v19 + 40) = v30;
  DSMHandle::~DSMHandle((v19 + 52));
  DgnString::DgnString(&v35);
  DSMSetData::getSysReserveName(*this, *(v19 + 44), a2, &v35);
  DSMHandle::unlink(*this, &v35, v31);
  v32 = v36;
  DgnString::~DgnString(&v35);
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(&v37);
  Latch<DgnLock,LatchAdapter>::~Latch(&v39);
  DSMMappedPtr::~DSMMappedPtr(&v40);
  return v32;
}

void sub_2626911E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(va);
  Latch<DgnLock,LatchAdapter>::~Latch(va1);
  DSMMappedPtr::~DSMMappedPtr((v8 - 64));
  _Unwind_Resume(a1);
}

BOOL DgnSharedMemSet::isCurThreadDSMOwner(DgnSharedMemSet *this, unsigned int a2)
{
  v2 = *(*this + 272) + 80 * a2;
  if (!*(v2 + 40))
  {
    return 0;
  }

  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = getpid();
  v6 = pthread_self();
  return v3 == v5 && v4 == v6;
}

uint64_t *DgnSharedMemSet::unrefDSMEx(DSMSetData **this, uint64_t a2)
{
  v4 = *this;
  v5 = *(*this + 34) + 80 * a2;
  v34 = (*this + 32);
  pthread_mutex_lock(v34);
  ++*(v4 + 24);
  *(v4 + 13) = pthread_self();
  v6 = *(v5 + 72) - 1;
  *(v5 + 72) = v6;
  if (!v6)
  {
    v32 = -1;
    v33 = 0;
    v7 = *(*(*this + 34) + 48);
    v8 = sysconf(29);
    if (v8 <= 0x10000)
    {
      v9 = 0x10000;
    }

    else
    {
      v9 = v8;
    }

    v32 = mmap(0, v9, 3, 1, v7, 0);
    v33 = v9;
    if (v32 == -1)
    {
      if (*(*this + 6))
      {
        v12 = *(*this + 2);
      }

      else
      {
        v12 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 1024, "mrecutil/dsmset", 3, "%.500s", v10, v11, v12);
    }

    v30 = (*this + 112);
    if (DgnSharedLock::acquire(v30, 0xEA60u))
    {
      if (*(*this + 6))
      {
        v15 = *(*this + 2);
      }

      else
      {
        v15 = &byte_262899963;
      }

      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 1029, "mrecutil/dsmset", 2, "%.500s", v13, v14, v15);
    }

    v16 = (v32 + 56 * a2);
    v17 = veorq_s8(*v16, v16[1]);
    v18 = veor_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
    v19 = v16[2].i32[0];
    v20 = v16[2].i32[1];
    v21 = v16[2].i32[3];
    if ((v19 ^ v16[2].i32[2] ^ v20 ^ v21 ^ v18.i32[1] ^ v18.i32[0]) != v16[3].i32[0] || v16[2].i32[2] == 1)
    {
      if (v16[2].i32[2] != 1)
      {
        DSMGlobalRecord::reset((v32 + 56 * a2));
        v16[2].i32[2] = 1;
        v22 = veorq_s8(*v16, v16[1]);
        *v22.i8 = veor_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
        v16[3].i32[0] = v16[2].i32[0] ^ v16[2].i32[2] ^ v16[2].i32[1] ^ v16[2].i32[3] ^ v22.i32[1] ^ v22.i32[0];
      }

      goto LABEL_26;
    }

    if (v16[2].i32[2] == 2)
    {
      DgnString::DgnString(v29);
      DSMSetData::getSysReserveName(*this, v16[2].u32[1], a2, v29);
      DSMHandle::unlink(*this, v29, v23);
      if (v16[2].i32[3] < 2u)
      {
        DSMGlobalRecord::reset(v16);
      }

      else
      {
        DSMGlobalRecord::reset(v16);
        v16[2].i32[2] = 1;
        v24 = veorq_s8(*v16, v16[1]);
        *v24.i8 = veor_s8(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
        v16[3].i32[0] = v16[2].i32[0] ^ v16[2].i32[2] ^ v16[2].i32[1] ^ v16[2].i32[3] ^ v24.i32[1] ^ v24.i32[0];
      }
    }

    else
    {
      v25 = v21 - 1;
      v26 = v19 ^ v16[2].i32[2] ^ v20 ^ v25 ^ v18.i32[1] ^ v18.i32[0];
      v16[2].i32[3] = v25;
      v16[3].i32[0] = v26;
      if (v25)
      {
LABEL_26:
        DSMHandle::~DSMHandle((v5 + 48));
        DSMHandle::~DSMHandle((v5 + 52));
        DSMMappedPtr::~DSMMappedPtr((v5 + 56));
        *(v5 + 40) = 0;
        __dmb(0xBu);
        *v5 = 0u;
        *(v5 + 16) = -1;
        *(v5 + 24) = -1;
        *(v5 + 32) = 0;
        *(v5 + 44) = 0;
        *(v5 + 72) = 0;
        Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(&v30);
        DSMMappedPtr::~DSMMappedPtr(&v32);
        return Latch<DgnLock,LatchAdapter>::~Latch(&v34);
      }

      DgnString::DgnString(v29);
      DSMSetData::getSysName(*this, v16[2].u32[1], a2, v29);
      DSMHandle::unlink(*this, v29, v27);
      DSMGlobalRecord::reset(v16);
    }

    DgnString::~DgnString(v29);
    goto LABEL_26;
  }

  return Latch<DgnLock,LatchAdapter>::~Latch(&v34);
}

void sub_262691640(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  Latch<DgnSharedLock,TimeoutLatchAdapter>::~Latch(va);
  DSMMappedPtr::~DSMMappedPtr(va1);
  Latch<DgnLock,LatchAdapter>::~Latch(va2);
  _Unwind_Resume(a1);
}

void DgnSharedMemSet::printSize(DSMSetData **this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 1116, &v37);
  if (v38)
  {
    v16 = v37;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v37);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v21 = *this;
  if (*this)
  {
    v36 = 0;
    v37 = 0;
    v22 = (a3 + 1);
    v35 = 0;
    DSMSetData::printSize(v21, 0xFFFFFFFFLL, v22, &v37, &v36, &v35);
    *a4 += v37;
    *a5 += v36;
    *a6 += v35;
  }

  else
  {
    v22 = (a3 + 1);
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v23 = 4;
  }

  else
  {
    v23 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 1119, &v37);
  if (v38)
  {
    v28 = v37;
  }

  else
  {
    v28 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v24, v25, v26, v27, v22, &byte_262899963, (34 - a3), (34 - a3), v28, v23, v23, 0);
  DgnString::~DgnString(&v37);
  *a4 += v23;
  *a5 += v23;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/dsmset.cpp", 1121, &v37);
  if (v38)
  {
    v33 = v37;
  }

  else
  {
    v33 = &byte_262899963;
  }

  v34 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v29, v30, v31, v32, a3, &byte_262899963, (35 - a3), (35 - a3), v33, *a4, *a5, *a6);
  DgnString::~DgnString(&v37);
}

void sub_2626918CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DSMSetData::DSMSetData(DSMSetData *this, const DgnString *a2, const DgnString *a3)
{
  v5 = DgnString::DgnString(this, a2);
  DgnString::DgnString((v5 + 16), a3);
  recursive_mutex_init((this + 32));
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = -1;
  *(this + 15) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 36) = -1;
  *(this + 74) = -1;
}

void sub_26269194C(_Unwind_Exception *a1)
{
  DgnString::~DgnString((v1 + 16));
  DgnString::~DgnString(v1);
  _Unwind_Resume(a1);
}

void UttFile::printSize(UttFile *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 148, &v86);
  if (v87)
  {
    v16 = v86;
  }

  else
  {
    v16 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26288209A, a3, &unk_26288209A, v16);
  DgnString::~DgnString(&v86);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26288209A);
  v21 = (a3 + 1);
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 150, &v86);
  if (v87)
  {
    v27 = v86;
  }

  else
  {
    v27 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, (a3 + 1), &unk_26288209A, (34 - a3), (34 - a3), v27, 1, 1, 0);
  v83 = a3;
  DgnString::~DgnString(&v86);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 152, &v86);
  if (v87)
  {
    v32 = v86;
  }

  else
  {
    v32 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v28, v29, v30, v31, (a3 + 1), &unk_26288209A, (34 - a3), (34 - a3), v32, 4, 4, 0);
  DgnString::~DgnString(&v86);
  *a4 += 4;
  *a5 += 4;
  v33 = sizeObject(this + 8, 0);
  v34 = sizeObject(this + 8, 1);
  v35 = sizeObject(this + 8, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 154, &v86);
  if (v87)
  {
    v40 = v86;
  }

  else
  {
    v40 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v37, v38, v39, v21, &unk_26288209A, v22, v22, v40, v33, v34, v35);
  DgnString::~DgnString(&v86);
  *a4 += v33;
  *a5 += v34;
  *a6 += v35;
  v41 = FileSpec::sizeObject(this + 48);
  v42 = FileSpec::sizeObject(this + 48);
  v43 = FileSpec::sizeObject(this + 48);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 155, &v86);
  if (v87)
  {
    v48 = v86;
  }

  else
  {
    v48 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v45, v46, v47, v21, &unk_26288209A, v22, v22, v48, v41, v42, v43);
  DgnString::~DgnString(&v86);
  *a4 += v41;
  *a5 += v42;
  *a6 += v43;
  v49 = *(this + 8);
  if (v49)
  {
    v85 = 0;
    v86 = 0;
    v84 = 0;
    (*(*v49 + 16))(v49, 0xFFFFFFFFLL, v21, &v86, &v85, &v84);
    *a4 += v86;
    *a5 += v85;
    *a6 += v84;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v50 = 4;
  }

  else
  {
    v50 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 156, &v86);
  if (v87)
  {
    v55 = v86;
  }

  else
  {
    v55 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v51, v52, v53, v54, v21, &unk_26288209A, v22, v22, v55, v50, v50, 0);
  DgnString::~DgnString(&v86);
  *a4 += v50;
  *a5 += v50;
  v56 = *(this + 9);
  if (v56)
  {
    v85 = 0;
    v86 = 0;
    v84 = 0;
    (*(*v56 + 16))(v56, 0xFFFFFFFFLL, v21, &v86, &v85, &v84);
    *a4 += v86;
    *a5 += v85;
    *a6 += v84;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v57 = 4;
  }

  else
  {
    v57 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 158, &v86);
  if (v87)
  {
    v62 = v86;
  }

  else
  {
    v62 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v58, v59, v60, v61, v21, &unk_26288209A, v22, v22, v62, v57, v57, 0);
  DgnString::~DgnString(&v86);
  *a4 += v57;
  *a5 += v57;
  v63 = *(this + 10);
  if (v63)
  {
    v85 = 0;
    v86 = 0;
    v84 = 0;
    (*(*v63 + 16))(v63, 0xFFFFFFFFLL, v21, &v86, &v85, &v84);
    *a4 += v86;
    *a5 += v85;
    *a6 += v84;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v64 = 4;
  }

  else
  {
    v64 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 159, &v86);
  if (v87)
  {
    v69 = v86;
  }

  else
  {
    v69 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v66, v67, v68, v21, &unk_26288209A, v22, v22, v69, v64, v64, 0);
  DgnString::~DgnString(&v86);
  *a4 += v64;
  *a5 += v64;
  v70 = *(this + 11);
  if (v70)
  {
    v85 = 0;
    v86 = 0;
    v84 = 0;
    (*(*v70 + 16))(v70, 0xFFFFFFFFLL, v21, &v86, &v85, &v84);
    *a4 += v86;
    *a5 += v85;
    *a6 += v84;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v71 = 4;
  }

  else
  {
    v71 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 160, &v86);
  if (v87)
  {
    v76 = v86;
  }

  else
  {
    v76 = &unk_26288209A;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v72, v73, v74, v75, v21, &unk_26288209A, v22, v22, v76, v71, v71, 0);
  DgnString::~DgnString(&v86);
  *a4 += v71;
  *a5 += v71;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/channel/uttfile.cpp", 161, &v86);
  if (v87)
  {
    v81 = v86;
  }

  else
  {
    v81 = &unk_26288209A;
  }

  v82 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v77, v78, v79, v80, v83, &unk_26288209A, (35 - v83), (35 - v83), v81, *a4, *a5, *a6);
  DgnString::~DgnString(&v86);
}

void sub_26269207C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

size_t xprintStringFancy(size_t result, int a2, int a3, const char *a4, int a5)
{
  v7 = result;
  v8 = DgnPrinterMgr::smpDgnPrinterMgr;
  if (DgnPrinterMgr::smpDgnPrinterMgr)
  {
    if (*DgnPrinterMgr::smpDgnPrinterMgr == -1 || (v11 = pthread_getspecific(*DgnPrinterMgr::smpDgnPrinterMgr)) == 0)
    {
      v11 = (v8 + 8);
    }

    return DgnPrinter::xprint(v11, v7, a2, a3, a4, a5);
  }

  else
  {
    if (a3)
    {
      result = MrecInitModule_sdpres_sdapi();
    }

    if (a2)
    {

      return xalogString(v7);
    }
  }

  return result;
}

size_t DgnPrinter::xprint(size_t this, const char *a2, int a3, int a4, const char *a5, int a6)
{
  v11 = this;
  if (a5)
  {
    this = strlen(a5);
    v12 = this;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  if (a4)
  {
LABEL_3:
    this = MrecInitModule_sdpres_sdapi();
  }

LABEL_4:
  if (a3)
  {
    v13 = v11 + 212;
    this = strlen((v11 + 212));
    v19 = this;
    v14 = *a2;
    if (*a2)
    {
      v15 = a2 + 1;
      do
      {
        if (*(v11 + 8404) & 1) != 0 || v14 != 10 && this == 8190 && (*(v11 + 8402) = 0, DgnPrinter::xprint(v11, "\n[forced newline for overly long log line]\n", 1, 0, a5, 0), LODWORD(this) = 0, v19 = 0, (*(v11 + 8404)))
        {
          DgnPrinter::addLinePrefix(v11, (v11 + 212), 0x1FFEu, &v19, a5, v12, a6);
          *(v11 + 8404) = 0;
          LODWORD(this) = v19;
        }

        v16 = *(v15 - 1);
        v17 = (this + 1);
        v19 = this + 1;
        *(v13 + this) = v16;
        if (v16 == 10)
        {
          *(v13 + v17) = 0;
          xalogString((v11 + 212));
          v17 = 0;
          v19 = 0;
          *(v11 + 8404) = 1;
        }

        v18 = *v15++;
        v14 = v18;
        this = v17;
      }

      while (v18);
    }

    else
    {
      LODWORD(v17) = this;
    }

    *(v13 + v17) = 0;
  }

  return this;
}

void xprintf(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v17 = *MEMORY[0x277D85DE8];
  DgnString::DgnString(&v15);
  v12[0] = 0;
  __size = 0x2000;
  __size_4 = 0;
  Buffer = DgnBuffer::getBuffer(v12, 0);
  for (i = __size; ; i = __size)
  {
    v8 = vsnprintf(Buffer, i, v5, va);
    if ((v8 & 0x80000000) == 0 && v8 < i)
    {
      break;
    }

    Buffer = DgnBuffer::getBuffer(v12, 1);
  }

  if (v16)
  {
    v9 = v15;
  }

  else
  {
    v9 = &byte_262899963;
  }

  if (__size_4)
  {
    v10 = v9;
  }

  else
  {
    v10 = v12;
  }

  xprintStringFancy(v10, 1, 1, 0, 0);
  DgnString::~DgnString(&v15);
  v11 = *MEMORY[0x277D85DE8];
}

void xlprintf(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v17 = *MEMORY[0x277D85DE8];
  DgnString::DgnString(&v15);
  v12[0] = 0;
  __size = 0x2000;
  __size_4 = 0;
  Buffer = DgnBuffer::getBuffer(v12, 0);
  for (i = __size; ; i = __size)
  {
    v8 = vsnprintf(Buffer, i, v5, va);
    if ((v8 & 0x80000000) == 0 && v8 < i)
    {
      break;
    }

    Buffer = DgnBuffer::getBuffer(v12, 1);
  }

  if (v16)
  {
    v9 = v15;
  }

  else
  {
    v9 = &byte_262899963;
  }

  if (__size_4)
  {
    v10 = v9;
  }

  else
  {
    v10 = v12;
  }

  xprintStringFancy(v10, 1, 0, 0, 0);
  DgnString::~DgnString(&v15);
  v11 = *MEMORY[0x277D85DE8];
}

void xgenprintf(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v22 = *MEMORY[0x277D85DE8];
  DgnString::DgnString(&v20);
  v17[0] = 0;
  __size = 0x2000;
  __size_4 = 0;
  Buffer = DgnBuffer::getBuffer(v17, 0);
  for (i = __size; ; i = __size)
  {
    v13 = vsnprintf(Buffer, i, v7, va);
    if ((v13 & 0x80000000) == 0 && v13 < i)
    {
      break;
    }

    Buffer = DgnBuffer::getBuffer(v17, 1);
  }

  if (v21)
  {
    v14 = v20;
  }

  else
  {
    v14 = &byte_262899963;
  }

  if (__size_4)
  {
    v15 = v14;
  }

  else
  {
    v15 = v17;
  }

  xprintStringFancy(v15, v10, v9, 0, 0);
  DgnString::~DgnString(&v20);
  v16 = *MEMORY[0x277D85DE8];
}

void DgnPrinterMgr::DgnPrinterMgr(DgnPrinterMgr *this)
{
  *(this + 1) = ClockTimer::getCurrentMicrosec(&ClockTimer::smClockTimer);
  *(this + 16) = 0;
  *(this + 116) = 0;
  *(this + 54) = 0;
  *(this + 220) = 0;
  *(this + 8412) = 1;
  DgnReadWriteLock::DgnReadWriteLock((this + 8416));
  recursive_mutex_init((this + 8848));
  *(this + 2228) = 0;
  *(this + 1115) = 0;
  v4 = 0;
  v2 = pthread_key_create(&v4, 0);
  v3 = v4;
  if (v2)
  {
    v3 = -1;
  }

  *this = v3;
  *(this + 8744) = 0;
  *(this + 2211) = 0;
  *(this + 558) = 0u;
  *(this + 8944) = 0;
}

void sub_262692820(_Unwind_Exception *a1)
{
  DgnLock::~DgnLock((v2 + v4));
  DgnReadWriteLock::~DgnReadWriteLock((v1 + v3));
  DgnPrinter::~DgnPrinter(v1);
  _Unwind_Resume(a1);
}

void DgnPrinter::DgnPrinter(DgnPrinter *this)
{
  *this = ClockTimer::getCurrentMicrosec(&ClockTimer::smClockTimer);
  *(this + 8) = 0;
  *(this + 108) = 0;
  *(this + 52) = 0;
  *(this + 212) = 0;
  *(this + 8404) = 1;
}

void DgnPrinterMgr::startupDgnPrinterMgr(DgnPrinterMgr *this)
{
  v1 = MemChunkAlloc(0x22F8uLL, 0);
  DgnPrinterMgr::DgnPrinterMgr(v1);
  DgnPrinterMgr::smpDgnPrinterMgr = v2;
}

uint64_t DgnPrinterMgr::setAsCurrentPrinter(DgnPrinterMgr *this, DgnPrinter *a2)
{
  v3 = pthread_getspecific(*DgnPrinterMgr::smpDgnPrinterMgr);
  if (v3)
  {
    v4 = v3 == this;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = pthread_self();
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 173, "mrecutil/xprhelp", 2, "%llu", v6, v7, v5);
  }

  v8 = *DgnPrinterMgr::smpDgnPrinterMgr;

  return pthread_setspecific(v8, this);
}

void DgnPrinterMgr::printSize(DgnPrinterMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 183, &v74);
  if (v75)
  {
    v16 = v74;
  }

  else
  {
    v16 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &byte_262899963, a3, &byte_262899963, v16);
  DgnString::~DgnString(&v74);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &byte_262899963);
  v73 = 0;
  v74 = 0;
  v21 = (a3 + 1);
  v72 = 0;
  DgnPrinter::printSize(v22, 0xFFFFFFFFLL, v21, &v74, &v73, &v72);
  *a4 += v74;
  *a5 += v73;
  *a6 += v72;
  v23 = sizeObject(this + 8416, 0);
  v24 = sizeObject(this + 8416, 1);
  v25 = sizeObject(this + 8416, 3);
  v71 = a3;
  v26 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 186, &v74);
  if (v75)
  {
    v31 = v74;
  }

  else
  {
    v31 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v27, v28, v29, v30, v21, &byte_262899963, v26, v26, v31, v23, v24, v25);
  DgnString::~DgnString(&v74);
  *a4 += v23;
  *a5 += v24;
  *a6 += v25;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 188, &v74);
  if (v75)
  {
    v36 = v74;
  }

  else
  {
    v36 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, v21, &byte_262899963, v26, v26, v36, 100, 100, 0);
  DgnString::~DgnString(&v74);
  *a4 += 100;
  *a5 += 100;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 190, &v74);
  if (v75)
  {
    v41 = v74;
  }

  else
  {
    v41 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v37, v38, v39, v40, v21, &byte_262899963, v26, v26, v41, 4, 4, 0);
  DgnString::~DgnString(&v74);
  *a4 += 4;
  *a5 += 4;
  v42 = sizeObject(this + 8848, 0);
  v43 = sizeObject(this + 8848, 1);
  v44 = sizeObject(this + 8848, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 191, &v74);
  if (v75)
  {
    v49 = v74;
  }

  else
  {
    v49 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, v21, &byte_262899963, v26, v26, v49, v42, v43, v44);
  DgnString::~DgnString(&v74);
  *a4 += v42;
  *a5 += v43;
  *a6 += v44;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 193, &v74);
  if (v75)
  {
    v54 = v74;
  }

  else
  {
    v54 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, v21, &byte_262899963, v26, v26, v54, 8, 8, 0);
  DgnString::~DgnString(&v74);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 195, &v74);
  if (v75)
  {
    v59 = v74;
  }

  else
  {
    v59 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v55, v56, v57, v58, v21, &byte_262899963, v26, v26, v59, 8, 8, 0);
  DgnString::~DgnString(&v74);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 197, &v74);
  if (v75)
  {
    v64 = v74;
  }

  else
  {
    v64 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v60, v61, v62, v63, v21, &byte_262899963, v26, v26, v64, 1, 1, 0);
  DgnString::~DgnString(&v74);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 198, &v74);
  if (v75)
  {
    v69 = v74;
  }

  else
  {
    v69 = &byte_262899963;
  }

  v70 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v65, v66, v67, v68, v71, &byte_262899963, (35 - v71), (35 - v71), v69, *a4, *a5, *a6);
  DgnString::~DgnString(&v74);
}

void sub_262692E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

void DgnPrinter::printSize(DgnPrinter *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 386, &v56);
  if (v57)
  {
    v15 = v56;
  }

  else
  {
    v15 = &byte_262899963;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v11, v12, v13, v14, a3, &byte_262899963, a3, &byte_262899963, v15);
  DgnString::~DgnString(&v56);
  if (a2 != -1)
  {
    xlprintf("%d ", v16, v17, v18, v19, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v16, v17, v18, v19, a3, &byte_262899963);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 388, &v56);
  if (v57)
  {
    v24 = v56;
  }

  else
  {
    v24 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v20, v21, v22, v23, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v24, 1, 1, 0);
  DgnString::~DgnString(&v56);
  ++*a4;
  ++*a5;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 390, &v56);
  if (v57)
  {
    v29 = v56;
  }

  else
  {
    v29 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v26, v27, v28, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v29, 8, 8, 0);
  DgnString::~DgnString(&v56);
  *a4 += 8;
  *a5 += 8;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 392, &v56);
  if (v57)
  {
    v34 = v56;
  }

  else
  {
    v34 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v30, v31, v32, v33, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v34, 100, 100, 0);
  DgnString::~DgnString(&v56);
  *a4 += 100;
  *a5 += 100;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 394, &v56);
  if (v57)
  {
    v39 = v56;
  }

  else
  {
    v39 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v35, v36, v37, v38, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v39, 100, 100, 0);
  DgnString::~DgnString(&v56);
  *a4 += 100;
  *a5 += 100;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 396, &v56);
  if (v57)
  {
    v44 = v56;
  }

  else
  {
    v44 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v40, v41, v42, v43, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v44, 4, 4, 0);
  DgnString::~DgnString(&v56);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 398, &v56);
  if (v57)
  {
    v49 = v56;
  }

  else
  {
    v49 = &byte_262899963;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v45, v46, v47, v48, (a3 + 1), &byte_262899963, (34 - a3), (34 - a3), v49, 0x2000, 0x2000, 0);
  DgnString::~DgnString(&v56);
  *a4 += 0x2000;
  *a5 += 0x2000;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 415, &v56);
  if (v57)
  {
    v54 = v56;
  }

  else
  {
    v54 = &byte_262899963;
  }

  v55 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v50, v51, v52, v53, a3, &byte_262899963, (35 - a3), (35 - a3), v54, *a4, *a5, *a6);
  DgnString::~DgnString(&v56);
}

void sub_262693204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

pthread_rwlock_t **DgnPrinterMgr::setLogLinePrefix(DgnPrinterMgr *this, const char *a2)
{
  v7 = (this + 8416);
  DgnReadWriteLock::acquireWrite((this + 8416));
  if (strlen(a2) >= 0x64)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/mrecutil/xprhelp.cpp", 217, "mrecutil/xprhelp", 1, "%d", v4, v5, 100);
  }

  strcpy(this + 8744, a2);
  *(this + 2211) = strlen(this + 8744);
  return Latch<DgnReadWriteLock,WriteLatchAdapter>::~Latch(&v7);
}

void sub_2626932DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<DgnReadWriteLock,WriteLatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

uint64_t *DgnPrinterMgr::setShowLogLineTimeStamps(DgnPrinterMgr *this, char a2)
{
  v5 = this + 8848;
  pthread_mutex_lock((this + 8848));
  ++*(this + 2228);
  *(this + 1115) = pthread_self();
  *(this + 8944) = a2;
  return Latch<DgnLock,LatchAdapter>::~Latch(&v5);
}

pthread_rwlock_t **DgnPrinterMgr::addLinePrefix(DgnPrinterMgr *this, char *a2, unsigned int a3, unsigned int *a4)
{
  v8 = (this + 8416);
  DgnReadWriteLock::acquireRead((this + 8416));
  if (*(this + 2211))
  {
    strcpy(&a2[*a4], this + 8744);
    *a4 += *(this + 2211);
  }

  return Latch<DgnReadWriteLock,ReadLatchAdapter>::~Latch(&v8);
}

uint64_t *DgnPrinterMgr::maybeSetTimeStampingBase(uint64_t *this, uint64_t a2)
{
  if (!this[1116])
  {
    v6[3] = v2;
    v6[4] = v3;
    v5 = this;
    v6[0] = (this + 1106);
    pthread_mutex_lock((this + 1106));
    ++*(v5 + 2228);
    v5[1115] = pthread_self();
    v5[1116] = a2;
    v5[1117] = a2;
    return Latch<DgnLock,LatchAdapter>::~Latch(v6);
  }

  return this;
}

uint64_t *DgnPrinterMgr::getDeltasAndResetLast(DgnPrinterMgr *this, unint64_t *a2, unint64_t *a3, unint64_t *a4, __darwin_time_t *a5)
{
  v12 = this + 8848;
  pthread_mutex_lock((this + 8848));
  ++*(this + 2228);
  *(this + 1115) = pthread_self();
  CurrentMicrosec = ClockTimer::getCurrentMicrosec(&ClockTimer::smClockTimer);
  DgnPrinterMgr::maybeSetTimeStampingBase(DgnPrinterMgr::smpDgnPrinterMgr, CurrentMicrosec);
  *a2 = CurrentMicrosec - *(this + 1116);
  *a3 = CurrentMicrosec - *(this + 1117);
  *a4 = CurrentMicrosec - *a5;
  *(this + 1117) = CurrentMicrosec;
  *a5 = CurrentMicrosec;
  return Latch<DgnLock,LatchAdapter>::~Latch(&v12);
}

void sub_2626934FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Latch<DgnLock,LatchAdapter>::~Latch(va);
  _Unwind_Resume(a1);
}

char *DgnPrinter::addLinePrefix(DgnPrinter *this, char *a2, unsigned int a3, unsigned int *a4, const char *a5, int a6, int a7)
{
  DgnPrinterMgr::addLinePrefix(DgnPrinterMgr::smpDgnPrinterMgr, a2, a3, a4);
  if (*(this + 52))
  {
    strcpy(&a2[*a4], this + 108);
    *a4 += *(this + 52);
  }

  result = DgnPrinterMgr::smpDgnPrinterMgr;
  if (*(DgnPrinterMgr::smpDgnPrinterMgr + 8944))
  {
    v18 = 0;
    v19 = 0;
    v17 = 0;
    DgnPrinterMgr::getDeltasAndResetLast(DgnPrinterMgr::smpDgnPrinterMgr, &v19, &v18, &v17, this);
    snprintf(this + 8, 0x64uLL, "[%llu.%06llu (mrinc %llu.%06llu) (thinc %llu.%06llu)] ", v19 / 0xF4240, v19 % 0xF4240, v18 / 0xF4240, v18 % 0xF4240, v17 / 0xF4240, v17 % 0xF4240);
    v15 = strlen(this + 8);
    result = strcpy(&a2[*a4], this + 8);
    v16 = *a4 + v15;
    *a4 = v16;
    if (!a6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = *a4;
  if (a6)
  {
LABEL_7:
    result = strcpy(&a2[v16], a5);
    v16 = *a4 + a6;
    *a4 = v16;
  }

LABEL_8:
  if (a7 && a3 - v16 >= a7 + 2)
  {
    do
    {
      a2[v16] = 32;
      v16 = *a4 + 1;
      *a4 = v16;
      --a7;
    }

    while (a7);
  }

  a2[v16] = 0;
  return result;
}

void DgnPrinter::~DgnPrinter(DgnPrinter *this)
{
  if ((*(this + 8404) & 1) == 0)
  {
    DgnPrinter::xprint(this, "\n[flushed previous partial line]\n", 1, 0, 0, 0);
  }

  *(this + 212) = 0;
}

char *DgnPrinter::setInstancePrefix(DgnPrinter *this, const char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x63)
  {
    v5 = 99;
  }

  else
  {
    v5 = v4;
  }

  *(this + 52) = v5;

  return strcpy(this + 108, __s);
}

pthread_rwlock_t **Latch<DgnReadWriteLock,WriteLatchAdapter>::~Latch(pthread_rwlock_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    DgnReadWriteLock::releaseRead(v2);
    *a1 = 0;
  }

  return a1;
}

pthread_rwlock_t **Latch<DgnReadWriteLock,ReadLatchAdapter>::~Latch(pthread_rwlock_t **a1)
{
  v2 = *a1;
  if (v2)
  {
    DgnReadWriteLock::releaseRead(v2);
    *a1 = 0;
  }

  return a1;
}

void TLattProcParamManager::TLattProcParamManager(TLattProcParamManager *this, TLocaleInfo *a2)
{
  TParamManager::TParamManager(this, 0, a2);
  *v3 = &unk_287525670;
  v4 = (v3 + 18);
  TIntParam::TIntParam((v3 + 18), "C", "I", 256, 0, 0x7FFFFFFF, 0, "1", &unk_2628823A4);
  TParamManager::add(this, v4);
}

void sub_2626938A4(_Unwind_Exception *a1)
{
  TParam::~TParam(v2);
  TParamManager::~TParamManager(v1);
  _Unwind_Resume(a1);
}

uint64_t TLatticeProcessor::TLatticeProcessor(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_287526DE8;
  *(result + 8) = -1;
  *(result + 48) = 0;
  *(result + 40) = 0;
  *(result + 32) = result + 40;
  *(result + 16) = a2;
  *(result + 24) = a3;
  if (a3)
  {
    ++*(a2 + 360);
  }

  return result;
}

void *TRegisterable<TLatticeProcessor>::~TRegisterable(void *a1)
{
  *a1 = &unk_287528230;
  if (a1[1] != -1)
  {
    Registry = TRegisterable<TLatticeProcessor>::getRegistry();
    v3 = *Registry;
    *(Registry[1] + 8 * a1[1] - 8) = 0;
    *Registry = v3 - 1;
  }

  return a1;
}

void TLatticeProcessor::~TLatticeProcessor(TLatticeProcessor *this)
{
  *this = &unk_287526DE8;
  v2 = *(this + 2);
  if (v2 && *(this + 24) == 1)
  {
    --*(v2 + 360);
  }

  std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(this + 32, *(this + 5));

  TRegisterable<TLatticeProcessor>::~TRegisterable(this);
}

void TLatticeProcessor::clearLoadedLmData(TLatticeProcessor *this, uint64_t a2)
{
  v4 = *(this + 4);
  v5 = this + 40;
  if (v4 == this + 40)
  {
    v8 = 0;
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      SDVoc_GetInfo(*(v4 + 4), v24);
      v9 = *(v4 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v4 + 2);
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v6 += v27;
      v7 += v26;
      v8 += v25;
      v4 = v10;
    }

    while (v10 != v5);
  }

  v12 = v7 + v8;
  if (v12 + v6 > a2 << 20)
  {
    v13 = a2 << 20;
    v14 = *(this + 4);
    if (v14 != v5)
    {
      do
      {
        SDLm_ClearLoadedData(*(v14 + 4), 4uLL);
        v15 = *(v14 + 1);
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = *(v14 + 2);
            v11 = *v16 == v14;
            v14 = v16;
          }

          while (!v11);
        }

        v14 = v16;
      }

      while (v16 != v5);
    }

    if (v12 > v13 >> 1)
    {
      v17 = v13 >> 1;
      v18 = *(this + 4);
      if (v18 != v5)
      {
        do
        {
          SDLm_ClearLoadedData(*(v18 + 4), 3uLL);
          v19 = *(v18 + 1);
          if (v19)
          {
            do
            {
              v20 = v19;
              v19 = *v19;
            }

            while (v19);
          }

          else
          {
            do
            {
              v20 = *(v18 + 2);
              v11 = *v20 == v18;
              v18 = v20;
            }

            while (!v11);
          }

          v18 = v20;
        }

        while (v20 != v5);
      }

      if (v8 > v17)
      {
        v21 = *(this + 4);
        if (v21 != v5)
        {
          do
          {
            SDLm_ClearLoadedData(*(v21 + 4), 2uLL);
            v22 = *(v21 + 1);
            if (v22)
            {
              do
              {
                v23 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v23 = *(v21 + 2);
                v11 = *v23 == v21;
                v21 = v23;
              }

              while (!v11);
            }

            v21 = v23;
          }

          while (v23 != v5);
        }
      }
    }
  }
}

uint64_t TLatticeProcessor::combineMrecData(uint64_t result, uint64_t a2, int a3)
{
  *(result + 24) = *(a2 + 24);
  *(result + 36) += *(a2 + 36);
  v3 = *(a2 + 44);
  v4 = *(a2 + 52);
  v3.i32[1] = *(a2 + 48) - a3;
  v3.i64[1] = *(a2 + 52);
  *(result + 44) = vaddq_s32(v3, *(result + 44));
  *(result + 60) += *(a2 + 60);
  *(result + 64) = 0xBFF0000000000000;
  v5 = *(result + 76);
  if (!v5)
  {
    v7 = *(a2 + 76);
    *(result + 72) = *(a2 + 72);
    goto LABEL_6;
  }

  v6 = *(a2 + 76);
  if (v6 && *(result + 72) + v5 == *(a2 + 72))
  {
    v7 = v6 + v5;
LABEL_6:
    *(result + 76) = v7;
  }

  if (*(result + 80) && *(a2 + 80))
  {
    v8 = *(a2 + 88);
    *(result + 84) += *(a2 + 84);
    *(result + 88) = v8;
    *(result + 92) += *(a2 + 92) - a3;
  }

  else
  {
    *(result + 80) = 0;
    *(result + 88) = 0;
  }

  return result;
}

void TRegisterable<TLatticeProcessor>::~TRegisterable(void *a1)
{
  TRegisterable<TLatticeProcessor>::~TRegisterable(a1);

  JUMPOUT(0x26672B1B0);
}

void CTFTMgr::~CTFTMgr(CTFTMgr *this)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 240);
  DgnArray<LinearTransform>::releaseAll(this + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 200);
  DgnArray<LinearTransform>::releaseAll(this + 184);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 160);
  DgnArray<LinearTransform>::releaseAll(this + 144);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 120);
  DgnArray<LinearTransform>::releaseAll(this + 104);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 80);
  DgnArray<LinearTransform>::releaseAll(this + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 40);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 24);
}

void CTFTMgr::printSize(CTFTMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 342, &v193);
  if (v194)
  {
    v16 = v193;
  }

  else
  {
    v16 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_2628823E4, a3, &unk_2628823E4, v16);
  DgnString::~DgnString(&v193);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_2628823E4);
  v21 = (a3 + 1);
  v192 = a3;
  v22 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v27 = v193;
  }

  else
  {
    v27 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v23, v24, v25, v26, v21, &unk_2628823E4, v22, v22, v27, 4, 4, 0);
  DgnString::~DgnString(&v193);
  *a4 += 4;
  *a5 += 4;
  v28 = sizeObject(this + 4, 0);
  v29 = sizeObject(this + 4, 1);
  v30 = sizeObject(this + 4, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v35 = v193;
  }

  else
  {
    v35 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v31, v32, v33, v34, v21, &unk_2628823E4, v22, v22, v35, v28, v29, v30);
  DgnString::~DgnString(&v193);
  *a4 += v28;
  *a5 += v29;
  *a6 += v30;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v40 = v193;
  }

  else
  {
    v40 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v36, v37, v38, v39, v21, &unk_2628823E4, v22, v22, v40, 4, 4, 0);
  DgnString::~DgnString(&v193);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v45 = v193;
  }

  else
  {
    v45 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v41, v42, v43, v44, v21, &unk_2628823E4, v22, v22, v45, 4, 4, 0);
  DgnString::~DgnString(&v193);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v50 = v193;
  }

  else
  {
    v50 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v46, v47, v48, v49, v21, &unk_2628823E4, v22, v22, v50, 4, 4, 0);
  DgnString::~DgnString(&v193);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v51 = 12;
  }

  else
  {
    v51 = 16;
  }

  v52 = *(this + 8);
  v53 = *(this + 9);
  if (v53 >= v52)
  {
    v54 = 0;
    if (v52 > 0)
    {
      v51 += 4 * (v52 - 1) + 4;
    }

    v55 = v51 + 4 * (v53 - v52);
  }

  else
  {
    v54 = 4 * v52;
    v55 = v51;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v60 = v193;
  }

  else
  {
    v60 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v56, v57, v58, v59, v21, &unk_2628823E4, v22, v22, v60, v55, v51, v54);
  DgnString::~DgnString(&v193);
  *a4 += v55;
  *a5 += v51;
  *a6 += v54;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v61 = 12;
  }

  else
  {
    v61 = 16;
  }

  v62 = *(this + 12);
  v63 = *(this + 13);
  if (v63 >= v62)
  {
    v64 = 0;
    if (v62 > 0)
    {
      v61 += 4 * (v62 - 1) + 4;
    }

    v65 = v61 + 4 * (v63 - v62);
  }

  else
  {
    v64 = 4 * v62;
    v65 = v61;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v70 = v193;
  }

  else
  {
    v70 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v66, v67, v68, v69, v21, &unk_2628823E4, v22, v22, v70, v65, v61, v64);
  DgnString::~DgnString(&v193);
  *a4 += v65;
  *a5 += v61;
  *a6 += v64;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v75 = v193;
  }

  else
  {
    v75 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v72, v73, v74, v21, &unk_2628823E4, v22, v22, v75, 4, 4, 0);
  DgnString::~DgnString(&v193);
  *a4 += 4;
  *a5 += 4;
  v76 = sizeObject<LinearTransform>(this + 64, 0);
  v77 = sizeObject<LinearTransform>(this + 64, 1);
  v78 = sizeObject<LinearTransform>(this + 64, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v83 = v193;
  }

  else
  {
    v83 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v80, v81, v82, v21, &unk_2628823E4, v22, v22, v83, v76, v77, v78);
  DgnString::~DgnString(&v193);
  *a4 += v76;
  *a5 += v77;
  *a6 += v78;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v84 = 12;
  }

  else
  {
    v84 = 16;
  }

  v85 = *(this + 22);
  v86 = *(this + 23);
  if (v86 >= v85)
  {
    v87 = 0;
    if (v85 > 0)
    {
      v84 += 4 * (v85 - 1) + 4;
    }

    v88 = v84 + 4 * (v86 - v85);
  }

  else
  {
    v87 = 4 * v85;
    v88 = v84;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v93 = v193;
  }

  else
  {
    v93 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v90, v91, v92, v21, &unk_2628823E4, v22, v22, v93, v88, v84, v87);
  DgnString::~DgnString(&v193);
  *a4 += v88;
  *a5 += v84;
  *a6 += v87;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v98 = v193;
  }

  else
  {
    v98 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v94, v95, v96, v97, v21, &unk_2628823E4, v22, v22, v98, 4, 4, 0);
  DgnString::~DgnString(&v193);
  *a4 += 4;
  *a5 += 4;
  v99 = sizeObject<LinearTransform>(this + 104, 0);
  v100 = sizeObject<LinearTransform>(this + 104, 1);
  v101 = sizeObject<LinearTransform>(this + 104, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v106 = v193;
  }

  else
  {
    v106 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v102, v103, v104, v105, v21, &unk_2628823E4, v22, v22, v106, v99, v100, v101);
  DgnString::~DgnString(&v193);
  *a4 += v99;
  *a5 += v100;
  *a6 += v101;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v107 = 12;
  }

  else
  {
    v107 = 16;
  }

  v108 = *(this + 32);
  v109 = *(this + 33);
  if (v109 >= v108)
  {
    v110 = 0;
    if (v108 > 0)
    {
      v107 += 4 * (v108 - 1) + 4;
    }

    v111 = v107 + 4 * (v109 - v108);
  }

  else
  {
    v110 = 4 * v108;
    v111 = v107;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v116 = v193;
  }

  else
  {
    v116 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v112, v113, v114, v115, v21, &unk_2628823E4, v22, v22, v116, v111, v107, v110);
  DgnString::~DgnString(&v193);
  *a4 += v111;
  *a5 += v107;
  *a6 += v110;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v121 = v193;
  }

  else
  {
    v121 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v117, v118, v119, v120, v21, &unk_2628823E4, v22, v22, v121, 4, 4, 0);
  DgnString::~DgnString(&v193);
  *a4 += 4;
  *a5 += 4;
  v122 = sizeObject<LinearTransform>(this + 144, 0);
  v123 = sizeObject<LinearTransform>(this + 144, 1);
  v124 = sizeObject<LinearTransform>(this + 144, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v129 = v193;
  }

  else
  {
    v129 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v125, v126, v127, v128, v21, &unk_2628823E4, v22, v22, v129, v122, v123, v124);
  DgnString::~DgnString(&v193);
  *a4 += v122;
  *a5 += v123;
  *a6 += v124;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v130 = 12;
  }

  else
  {
    v130 = 16;
  }

  v131 = *(this + 42);
  v132 = *(this + 43);
  if (v132 >= v131)
  {
    v133 = 0;
    if (v131 > 0)
    {
      v130 += 4 * (v131 - 1) + 4;
    }

    v134 = v130 + 4 * (v132 - v131);
  }

  else
  {
    v133 = 4 * v131;
    v134 = v130;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v139 = v193;
  }

  else
  {
    v139 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v135, v136, v137, v138, v21, &unk_2628823E4, v22, v22, v139, v134, v130, v133);
  DgnString::~DgnString(&v193);
  *a4 += v134;
  *a5 += v130;
  *a6 += v133;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v144 = v193;
  }

  else
  {
    v144 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v140, v141, v142, v143, v21, &unk_2628823E4, v22, v22, v144, 4, 4, 0);
  DgnString::~DgnString(&v193);
  *a4 += 4;
  *a5 += 4;
  v145 = sizeObject<LinearTransform>(this + 184, 0);
  v146 = sizeObject<LinearTransform>(this + 184, 1);
  v147 = sizeObject<LinearTransform>(this + 184, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v152 = v193;
  }

  else
  {
    v152 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v148, v149, v150, v151, v21, &unk_2628823E4, v22, v22, v152, v145, v146, v147);
  DgnString::~DgnString(&v193);
  *a4 += v145;
  *a5 += v146;
  *a6 += v147;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v153 = 12;
  }

  else
  {
    v153 = 16;
  }

  v154 = *(this + 52);
  v155 = *(this + 53);
  if (v155 >= v154)
  {
    v156 = 0;
    if (v154 > 0)
    {
      v153 += 4 * (v154 - 1) + 4;
    }

    v157 = v153 + 4 * (v155 - v154);
  }

  else
  {
    v156 = 4 * v154;
    v157 = v153;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v162 = v193;
  }

  else
  {
    v162 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v158, v159, v160, v161, v21, &unk_2628823E4, v22, v22, v162, v157, v153, v156);
  DgnString::~DgnString(&v193);
  *a4 += v157;
  *a5 += v153;
  *a6 += v156;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v167 = v193;
  }

  else
  {
    v167 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v163, v164, v165, v166, v21, &unk_2628823E4, v22, v22, v167, 4, 4, 0);
  DgnString::~DgnString(&v193);
  *a4 += 4;
  *a5 += 4;
  v168 = sizeObject<LinearTransform>(this + 224, 0);
  v169 = sizeObject<LinearTransform>(this + 224, 1);
  v170 = sizeObject<LinearTransform>(this + 224, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v175 = v193;
  }

  else
  {
    v175 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v171, v172, v173, v174, v21, &unk_2628823E4, v22, v22, v175, v168, v169, v170);
  DgnString::~DgnString(&v193);
  *a4 += v168;
  *a5 += v169;
  *a6 += v170;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v176 = 12;
  }

  else
  {
    v176 = 16;
  }

  v177 = *(this + 62);
  v178 = *(this + 63);
  if (v178 >= v177)
  {
    v179 = 0;
    if (v177 > 0)
    {
      v176 += 4 * (v177 - 1) + 4;
    }

    v180 = v176 + 4 * (v178 - v177);
  }

  else
  {
    v179 = 4 * v177;
    v180 = v176;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 344, &v193);
  if (v194)
  {
    v185 = v193;
  }

  else
  {
    v185 = &unk_2628823E4;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v181, v182, v183, v184, v21, &unk_2628823E4, v22, v22, v185, v180, v176, v179);
  DgnString::~DgnString(&v193);
  *a4 += v180;
  *a5 += v176;
  *a6 += v179;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 345, &v193);
  if (v194)
  {
    v190 = v193;
  }

  else
  {
    v190 = &unk_2628823E4;
  }

  v191 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v186, v187, v188, v189, v192, &unk_2628823E4, (35 - v192), (35 - v192), v190, *a4, *a5, *a6);
  DgnString::~DgnString(&v193);
}

void sub_262694B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  DgnString::~DgnString(va);
  _Unwind_Resume(a1);
}

uint64_t sizeObject<LinearTransform>(uint64_t a1, int a2)
{
  LinearTransform::LinearTransform(v11);
  v4 = LinearTransform::sizeObject(v11, 2);
  if (a2 == 3)
  {
    v5 = 0;
  }

  else
  {
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
        v9 = 72 * v7 - 72;
        do
        {
          v5 += LinearTransform::sizeObject(*a1 + v9, a2);
          --v8;
          v9 -= 72;
        }

        while (v8 > 1);
      }

      if (!a2)
      {
        v5 += v6 * (*(a1 + 12) - *(a1 + 8));
      }
    }
  }

  LinearTransform::~LinearTransform(v11);
  return v5;
}

void sub_262694CA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  LinearTransform::~LinearTransform(va);
  _Unwind_Resume(a1);
}

void CTFTMgr::saveCTFT(CTFTMgr *this, DFile *a2, DFileChecksums *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = (this + 56);
  if ((*(this + 14) == 0) != (*(this + 8) == 0))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 408, "sigproc/ctftmgr", 20, "%s", a7, a8, &errStr_sigproc_ctftmgr_E_CTFT_SAVE);
  }

  if ((*(this + 34) == 0) != (*(this + 12) == 0))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/sigproc/ctftmgr.cpp", 411, "sigproc/ctftmgr", 20, "%s", a7, a8, &errStr_sigproc_ctftmgr_E_CTFT_SAVE);
  }

  if (a4)
  {

    CTFTMgr::saveCTFTText(this, a2, a5);
  }

  else
  {
    v14 = OpenAndWriteMrecHeader(a2, 0x23u, a5, "MRCTFTM!", 22, 7);
    v16 = 0;
    writeObject(v14, this, &v16);
    writeObject(v14, this + 1, &v16);
    writeObject(v14, this + 2, &v16);
    writeObject(v14, this + 3, &v16);
    writeObject<unsigned int>(v14, this + 24, &v16);
    writeObject<unsigned int>(v14, this + 40, &v16);
    writeObject(v14, v13, &v16);
    writeObject<LinearTransform>(v14, this + 64, &v16);
    writeObject<unsigned int>(v14, this + 80, &v16);
    writeObject(v14, this + 24, &v16);
    writeObject<LinearTransform>(v14, this + 104, &v16);
    writeObject<unsigned int>(v14, this + 120, &v16);
    writeObject(v14, this + 34, &v16);
    writeObject<LinearTransform>(v14, this + 144, &v16);
    writeObject<unsigned int>(v14, this + 160, &v16);
    writeObject(v14, this + 44, &v16);
    writeObject<LinearTransform>(v14, this + 184, &v16);
    writeObject<unsigned int>(v14, this + 200, &v16);
    writeObjectChecksum(v14, &v16);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x23u, v16);
    DgnDelete<DgnStream>(v14);
  }
}

void CTFTMgr::saveCTFTText(CTFTMgr *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v115);
  DgnTextFileWriter::openDgnTextFileWriter(v115, a2, 0x24u, a3);
  v113 = 0;
  v114 = 0;
  DgnTextFile::legalDgnTextFileVersions(v115, sLTF_Versions, &v113, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v115, "LinearTransformFeatures", (v113 + 8 * (v114 - 1)));
  v111 = 0;
  v112 = 0;
  v109 = 0;
  v11 = realloc_array(0, &v109, 0x14uLL, 0, 0, 1);
  v110 = 0;
  v111 = v109;
  LODWORD(v112) = 5;
  HIDWORD(v112) = v11 >> 2;
  v109 = 0;
  v107 = 0;
  HIDWORD(v110) = realloc_array(0, &v107, 0x50uLL, 0, 0, 1) >> 4;
  v109 = v107;
  v12 = v110;
  if (v110 <= 5)
  {
    if (v110 != 5)
    {
      v14 = v110 + 1;
      v15 = 16 * v110;
      do
      {
        DgnString::DgnString((v109 + v15));
        v15 += 16;
        v23 = v14++ == 5;
      }

      while (!v23);
    }
  }

  else if (v110 >= 6)
  {
    v13 = 16 * v110 - 16;
    do
    {
      --v12;
      DgnString::~DgnString((v109 + v13));
      v13 -= 16;
    }

    while (v12 > 5);
  }

  LODWORD(v110) = 5;
  DgnString::operator=(v109, "TableName");
  *v111 = 0;
  DgnString::operator=((v109 + 16), "UnsValue1");
  v111[1] = 3;
  DgnString::operator=((v109 + 32), "IntValue1");
  v111[2] = 1;
  DgnString::operator=((v109 + 48), "IntValue2");
  v111[3] = 1;
  DgnString::operator=((v109 + 64), "IntValue3");
  v111[4] = 1;
  DgnTextFileWriter::setLineFieldFormat(v115, &v111, &v109);
  DgnTextFileWriter::setHeaderFieldUnsigned(v115, "ModelFeatureDim", *this);
  DgnTextFileWriter::setHeaderFieldUnsigned(v115, "TransformIntScale", 1 << *(this + 1));
  DgnTextFileWriter::setHeaderFieldUnsigned(v115, "NumberOfSpeakerTransforms", *(this + 14));
  DgnTextFileWriter::setHeaderFieldUnsigned(v115, "NumberOfChannelTransforms", *(this + 34));
  if (*(this + 14))
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v115, "NumberOfHierScorerSpeakerTransforms", *(this + 24));
  }

  if (*(this + 34))
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v115, "NumberOfHierScorerChannelTransforms", *(this + 44));
  }

  DgnString::DgnString(&v107, "None");
  if (*(this + 14))
  {
    v16 = *(this + 8);
    if (v16)
    {
      LODWORD(v17) = 0;
      v18 = *(this + 3);
      do
      {
        v19 = *v18++;
        if (v19 == -1)
        {
          v17 = v17;
        }

        else
        {
          v17 = (v17 + 1);
        }

        --v16;
      }

      while (v16);
    }

    else
    {
      v17 = 0;
    }

    DgnTextFileWriter::setHeaderFieldUnsigned(v115, "NumberOfSpeakerTransformationClasses", v17);
    DgnTextFileWriter::setHeaderFieldUnsigned(v115, "SpeakerTransformDim", *(this + 2));
    v21 = *(this + 8);
    v22 = *(v21 + 32);
    if (v22)
    {
      v23 = *(*(v21 + 24) + 8) != 1 || v22 == 1;
      if (v23)
      {
        v24 = "Full";
      }

      else
      {
        v24 = "Diagonal";
      }

      DgnString::operator=(&v107, v24);
    }

    if (v108)
    {
      v25 = v107;
    }

    else
    {
      v25 = &unk_2628823E4;
    }

    DgnTextFileWriter::setHeaderField(v115, "SpeakerTransformMatrixType", v25);
    v26 = *(this + 8);
    v105 = 0;
    v106 = 0;
    DgnPrimArray<int>::copyArraySlice(&v105, (v26 + 8), 0, *(v26 + 16));
    v20 = v106 != 0;
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v105);
    DgnTextFileWriter::setHeaderFieldBool(v115, "HasSpeakerTransformOffsets", v20);
  }

  else
  {
    v20 = 0;
  }

  DgnString::DgnString(&v105, "None");
  if (*(this + 34))
  {
    v27 = *(this + 12);
    if (v27)
    {
      LODWORD(v28) = 0;
      v29 = *(this + 5);
      do
      {
        v30 = *v29++;
        if (v30 == -1)
        {
          v28 = v28;
        }

        else
        {
          v28 = (v28 + 1);
        }

        --v27;
      }

      while (v27);
    }

    else
    {
      v28 = 0;
    }

    DgnTextFileWriter::setHeaderFieldUnsigned(v115, "NumberOfChannelTransformationClasses", v28);
    DgnTextFileWriter::setHeaderFieldUnsigned(v115, "ChannelTransformDim", *(this + 3));
    v32 = *(this + 18);
    v33 = *(v32 + 32);
    if (v33)
    {
      if (*(*(v32 + 24) + 8) != 1 || v33 == 1)
      {
        v35 = "Full";
      }

      else
      {
        v35 = "Diagonal";
      }

      DgnString::operator=(&v105, v35);
    }

    if (v106)
    {
      v36 = v105;
    }

    else
    {
      v36 = &unk_2628823E4;
    }

    DgnTextFileWriter::setHeaderField(v115, "ChannelTransformMatrixType", v36);
    v37 = *(this + 18);
    v103 = 0;
    v104 = 0;
    DgnPrimArray<int>::copyArraySlice(&v103, (v37 + 8), 0, *(v37 + 16));
    v31 = v104 != 0;
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v103);
    DgnTextFileWriter::setHeaderFieldBool(v115, "HasChannelTransformOffsets", v31);
  }

  else
  {
    v31 = 0;
  }

  if (v108)
  {
    v38 = v107;
  }

  else
  {
    v38 = &unk_2628823E4;
  }

  v39 = strcmp(v38, "None");
  LODWORD(v44) = *(this + 14);
  if (v39)
  {
    v45 = strcmp(v38, "Diagonal");
    if (!v44)
    {
      goto LABEL_72;
    }

    v46 = v45;
    v47 = 0;
    v48 = 24;
    do
    {
      writeIntMatrix(v115, "SpeakerTransAccMatrix", v46 == 0, (*(this + 8) + v48), v47++, *(this + 2), *(this + 2));
      v44 = *(this + 14);
      v48 += 72;
    }

    while (v47 < v44);
  }

  if (v20)
  {
    if (!v44)
    {
      goto LABEL_72;
    }

    v49 = 0;
    v50 = 16;
    do
    {
      v51 = *(this + 8);
      v103 = 0;
      v104 = 0;
      DgnPrimArray<int>::copyArraySlice(&v103, (v51 + v50 - 8), 0, *(v51 + v50));
      writeIntOffset(v115, "SpeakerTransAccOffset", &v103, v49, *(this + 2));
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v103);
      ++v49;
      v44 = *(this + 14);
      v50 += 72;
    }

    while (v49 < v44);
  }

  if (v44)
  {
    v52 = 0;
    do
    {
      writeLogDeterminant(v115, "SpeakerTransAccLogDeterminant", *(*(this + 10) + 4 * v52), v52, v40, v41, v42, v43, v102);
      ++v52;
    }

    while (v52 < *(this + 14));
  }

LABEL_72:
  v53 = *(this + 8);
  if (v53)
  {
    v54 = 0;
    v55 = 0;
    do
    {
      if (*(*(this + 3) + 4 * v54) != -1)
      {
        DgnTextFileWriter::setLineFieldValue(v115, 0, "SpeakerClassNodeIdToTransformMap");
        DgnTextFileWriter::setLineFieldUnsignedValue(v115, 1u, v55);
        DgnTextFileWriter::setLineFieldIntegerValue(v115, 2u, v54);
        DgnTextFileWriter::setLineFieldIntegerValue(v115, 3u, *(*(this + 3) + 4 * v54));
        DgnTextFileWriter::setLineFieldIntegerValue(v115, 4u, 0);
        DgnTextFileWriter::writeNextLine(v115);
        ++v55;
        v53 = *(this + 8);
      }

      ++v54;
    }

    while (v54 < v53);
  }

  if (v108)
  {
    v56 = v107;
  }

  else
  {
    v56 = &unk_2628823E4;
  }

  if (strcmp(v56, "None"))
  {
    v61 = strcmp(v56, "Diagonal");
    if (*(this + 24))
    {
      v62 = v61;
      v63 = 0;
      v64 = 24;
      do
      {
        writeIntMatrix(v115, "HierScorerSpeakerTransAccMatrix", v62 == 0, (*(this + 13) + v64), v63++, *(this + 2), *(this + 2));
        v64 += 72;
      }

      while (v63 < *(this + 24));
    }
  }

  LODWORD(v65) = *(this + 24);
  if (v20)
  {
    if (!v65)
    {
      goto LABEL_91;
    }

    v66 = 0;
    v67 = 16;
    do
    {
      v68 = *(this + 13);
      v103 = 0;
      v104 = 0;
      DgnPrimArray<int>::copyArraySlice(&v103, (v68 + v67 - 8), 0, *(v68 + v67));
      writeIntOffset(v115, "HierScorerSpeakerTransAccOffset", &v103, v66, *(this + 2));
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v103);
      ++v66;
      v65 = *(this + 24);
      v67 += 72;
    }

    while (v66 < v65);
  }

  if (v65)
  {
    v69 = 0;
    do
    {
      writeLogDeterminant(v115, "HierScorerSpeakerTransAccLogDeterminant", *(*(this + 15) + 4 * v69), v69, v57, v58, v59, v60, v102);
      ++v69;
    }

    while (v69 < *(this + 24));
  }

LABEL_91:
  if (v106)
  {
    v70 = v105;
  }

  else
  {
    v70 = &unk_2628823E4;
  }

  v71 = strcmp(v70, "None");
  LODWORD(v76) = *(this + 34);
  if (v71)
  {
    v77 = strcmp(v70, "Diagonal");
    if (!v76)
    {
      goto LABEL_105;
    }

    v78 = v77;
    v79 = 0;
    v80 = 24;
    do
    {
      writeIntMatrix(v115, "ChannelTransAccMatrix", v78 == 0, (*(this + 18) + v80), v79++, *(this + 3), *(this + 3));
      v76 = *(this + 34);
      v80 += 72;
    }

    while (v79 < v76);
  }

  if (v31)
  {
    if (!v76)
    {
      goto LABEL_105;
    }

    v81 = 0;
    v82 = 16;
    do
    {
      v83 = *(this + 18);
      v103 = 0;
      v104 = 0;
      DgnPrimArray<int>::copyArraySlice(&v103, (v83 + v82 - 8), 0, *(v83 + v82));
      writeIntOffset(v115, "ChannelTransAccOffset", &v103, v81, *(this + 3));
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v103);
      ++v81;
      v76 = *(this + 34);
      v82 += 72;
    }

    while (v81 < v76);
  }

  if (v76)
  {
    v84 = 0;
    do
    {
      writeLogDeterminant(v115, "ChannelTransAccLogDeterminant", *(*(this + 20) + 4 * v84), v84, v72, v73, v74, v75, v102);
      ++v84;
    }

    while (v84 < *(this + 34));
  }

LABEL_105:
  v85 = *(this + 12);
  if (v85)
  {
    v86 = 0;
    v87 = 0;
    do
    {
      if (*(*(this + 5) + 4 * v86) != -1)
      {
        DgnTextFileWriter::setLineFieldValue(v115, 0, "ChannelClassNodeIdToTransformMap");
        DgnTextFileWriter::setLineFieldUnsignedValue(v115, 1u, v87);
        DgnTextFileWriter::setLineFieldIntegerValue(v115, 2u, v86);
        DgnTextFileWriter::setLineFieldIntegerValue(v115, 3u, *(*(this + 5) + 4 * v86));
        DgnTextFileWriter::setLineFieldIntegerValue(v115, 4u, 0);
        DgnTextFileWriter::writeNextLine(v115);
        ++v87;
        v85 = *(this + 12);
      }

      ++v86;
    }

    while (v86 < v85);
  }

  if (v106)
  {
    v88 = v105;
  }

  else
  {
    v88 = &unk_2628823E4;
  }

  if (strcmp(v88, "None"))
  {
    v93 = strcmp(v88, "Diagonal");
    if (*(this + 44))
    {
      v94 = v93;
      v95 = 0;
      v96 = 24;
      do
      {
        writeIntMatrix(v115, "HierScorerChannelTransAccMatrix", v94 == 0, (*(this + 23) + v96), v95++, *(this + 3), *(this + 3));
        v96 += 72;
      }

      while (v95 < *(this + 44));
    }
  }

  LODWORD(v97) = *(this + 44);
  if (v31)
  {
    if (!v97)
    {
      goto LABEL_124;
    }

    v98 = 0;
    v99 = 16;
    do
    {
      v100 = *(this + 23);
      v103 = 0;
      v104 = 0;
      DgnPrimArray<int>::copyArraySlice(&v103, (v100 + v99 - 8), 0, *(v100 + v99));
      writeIntOffset(v115, "HierScorerChannelTransAccOffset", &v103, v98, *(this + 3));
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v103);
      ++v98;
      v97 = *(this + 44);
      v99 += 72;
    }

    while (v98 < v97);
  }

  if (v97)
  {
    v101 = 0;
    do
    {
      writeLogDeterminant(v115, "HierScorerChannelTransAccLogDeterminant", *(*(this + 25) + 4 * v101), v101, v89, v90, v91, v92, v102);
      ++v101;
    }

    while (v101 < *(this + 44));
  }

LABEL_124:
  DgnString::~DgnString(&v105);
  DgnString::~DgnString(&v107);
  DgnArray<DgnString>::releaseAll(&v109);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v111);
  DgnIArray<Utterance *>::~DgnIArray(&v113);
  DgnTextFileWriter::~DgnTextFileWriter(v115);
}

void sub_262695A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va5, a4);
  va_start(va4, a4);
  va_start(va3, a4);
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  va_copy(va3, va2);
  v11 = va_arg(va3, void);
  v13 = va_arg(va3, void);
  va_copy(va4, va3);
  v14 = va_arg(va4, void);
  v16 = va_arg(va4, void);
  va_copy(va5, va4);
  v17 = va_arg(va5, void);
  v19 = va_arg(va5, void);
  DgnString::~DgnString(va);
  DgnString::~DgnString(va1);
  DgnArray<DgnString>::releaseAll(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  DgnIArray<Utterance *>::~DgnIArray(va4);
  DgnTextFileWriter::~DgnTextFileWriter(va5);
  _Unwind_Resume(a1);
}

uint64_t writeObject<LinearTransform>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = LinearTransform::writeObject((*a2 + v7), a1, a3);
      ++v8;
      v7 += 72;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void writeIntMatrix(DgnTextFileWriter *this, char *a2, int a3, void *a4, int a5, unsigned int a6, int a7)
{
  if (a6)
  {
    for (i = 0; i < a6; ++i)
    {
      if (a7)
      {
        v14 = 0;
        do
        {
          DgnTextFileWriter::setLineFieldValue(this, 0, a2);
          DgnTextFileWriter::setLineFieldUnsignedValue(this, 1u, a5);
          if (a3)
          {
            i = v14;
            v15 = 0;
          }

          else
          {
            v15 = v14;
          }

          DgnTextFileWriter::setLineFieldUnsignedValue(this, 2u, i);
          DgnTextFileWriter::setLineFieldUnsignedValue(this, 3u, v14);
          DgnTextFileWriter::setLineFieldIntegerValue(this, 4u, *(*(*a4 + 16 * i) + 4 * v15));
          DgnTextFileWriter::writeNextLine(this);
          ++v14;
        }

        while (a7 != v14);
      }
    }
  }
}

void writeIntOffset(DgnTextFileWriter *this, char *a2, void *a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v9 = 0;
    v10 = a5;
    do
    {
      DgnTextFileWriter::setLineFieldValue(this, 0, a2);
      DgnTextFileWriter::setLineFieldUnsignedValue(this, 1u, a4);
      DgnTextFileWriter::setLineFieldUnsignedValue(this, 2u, v9);
      DgnTextFileWriter::setLineFieldUnsignedValue(this, 3u, 0);
      DgnTextFileWriter::setLineFieldIntegerValue(this, 4u, *(*a3 + 4 * v9));
      DgnTextFileWriter::writeNextLine(this);
      ++v9;
    }

    while (v10 != v9);
  }
}

void writeLogDeterminant(DgnTextFileWriter *a1, char *a2, int a3, int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9)
{
  DgnTextFileWriter::setLineFieldValue(a1, 0, a2);
  DgnTextFileWriter::setLineFieldUnsignedValue(a1, 1u, a4);
  DgnTextFileWriter::setLineFieldIntegerValue(a1, 2u, 0);
  DgnTextFileWriter::setLineFieldIntegerValue(a1, 3u, 0);
  DgnTextFileWriter::setLineFieldIntegerValue(a1, 4u, a3);

  DgnTextFileWriter::writeNextLine(a1);
}

void MrecInitModule_recoggrm_recogctl(void)
{
  if (!gParDebugPronGuesser)
  {
    v1 = MemChunkAlloc(0x30uLL, 0);
    BoolGlobalParamBase::BoolGlobalParamBase(v1, "DebugPronGuesser", &byte_262899963, &byte_262899963, 0, 0, 0);
    *v2 = &unk_287527EA0;
    gParDebugPronGuesser = v2;
    v3 = GlobalParamMgr::smpGlobalParamMgr;

    GlobalParamMgr::addParam(v3, &gParDebugPronGuesser);
  }
}

void dismantleRecogGrammarIArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 8))
  {
    v9 = 0;
    do
    {
      RecogGrammar::unlinkStates(*(*a1 + 8 * v9++), a2, a3, a4, a5, a6, a7, a8);
      v10 = *(a1 + 8);
    }

    while (v9 < v10);
    if (v10)
    {
      v11 = 0;
      do
      {
        RecogGrammar::killStates(*(*a1 + 8 * v11), a2, a3, a4, a5, a6, a7, a8);
        DgnDelete<RecogGrammar>(*(*a1 + 8 * v11++));
      }

      while (v11 < *(a1 + 8));
    }
  }

  *(a1 + 8) = 0;
}

void RecogGrammar::unlinkStates(RecogGrammar *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 6))
  {
    v9 = 0;
    v10 = *(*(*(ModelMgr::smpModelMgr + 264) + 8 * *(this + 4)) + 56);
    do
    {
      StateMgr::setEmptyStateTransition(v10, *(*(this + 2) + 4 * v9), 1, a4, a5, a6, a7, a8);
      StateMgr::setWordAliasState(v10, *(*(this + 2) + 4 * v9++), 0, 1, v11, v12, v13, v14);
    }

    while (v9 < *(this + 6));
  }
}

void *RecogGrammar::killStates(RecogGrammar *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 4);
  if (v9)
  {
    MemChunkFree(v9, 0);
    *(this + 4) = 0;
  }

  *(this + 5) = 0;
  v10 = *(this + 6);
  if (v10)
  {
    MemChunkFree(v10, 0);
    *(this + 6) = 0;
  }

  *(this + 7) = 0;
  v11 = *(this + 6);
  if (v11)
  {
    v12 = ModelMgr::smpModelMgr;
    do
    {
      v13 = v11 - 1;
      v14 = *(*(this + 2) + 4 * v13);
      *(this + 6) = v13;
      StateMgr::killState(*(*(*(v12 + 264) + 8 * *(this + 4)) + 56), v14, 1, a4, a5, a6, a7, a8);
      v11 = *(this + 6);
    }

    while (v11);
  }

  result = *(this + 2);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 2) = 0;
  }

  *(this + 3) = 0;
  *(this + 4) = 127;
  *(this + 10) = 0;
  return result;
}

void (***DgnDelete<RecogGrammar>(void (***result)(void)))(void)
{
  if (result)
  {
    v1 = result;
    (**result)(result);

    return MemChunkFree(v1, 0);
  }

  return result;
}

void PronGenerator::PronGenerator(PronGenerator *this, unsigned int a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, PronGuessParamSet *a7, uint64_t a8)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 1) = a4;
  *(this + 2) = a5;
  *(this + 3) = a7;
  v8 = *(a7 + 14);
  *(this + 3) = a6;
  *(this + 4) = v8;
  StateMgr::getColls(*(*(*(ModelMgr::smpModelMgr + 264) + 8 * a2) + 56), a4, 1, a4, a5, a6, a7, a8);
}

uint64_t *RecogGrammar::newEndOfUtteranceRecogGrammar(RecogGrammar *this)
{
  v1 = this;
  v2 = MemChunkAlloc(0x40uLL, 0);
  *v2 = &unk_287528BC8;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = v1;
  *(v2 + 10) = 0;
  RecogGrammar::setupEndOfUtteranceGrammar(v2, v3, v4, v5, v6, v7, v8, v9);
  return v2;
}

void RecogGrammar::setupEndOfUtteranceGrammar(RecogGrammar *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  NewState = RecogGrammar::getNewState(this, a2, a3, a4, a5, a6, a7, a8);
  v14 = *(this + 10);
  if (v14 == *(this + 11))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 32, 1, 1);
    v14 = *(this + 10);
  }

  *(*(this + 4) + 4 * v14) = NewState;
  ++*(this + 10);
  v15 = *(this + 14);
  if (v15 == *(this + 15))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 48, 1, 1);
    v15 = *(this + 14);
  }

  *(*(this + 6) + 4 * v15) = NewState;
  v16 = *(*(ModelMgr::smpModelMgr + 264) + 8 * *(this + 4));
  ++*(this + 14);
  v17 = *(v16 + 56);

  StateMgr::setEndOfUtteranceAllowed(v17, NewState, 1, 1, v9, v10, v11, v12);
}

uint64_t *RecogGrammar::newPronGuessRecogGrammar(RecogGrammar *this, const PronGenerator *a2, CharInfo **a3, const DgnString *a4)
{
  v7 = MemChunkAlloc(0xA8uLL, 0);
  WordStatesRecogGrammar::WordStatesRecogGrammar(v7, *this);
  WordStatesRecogGrammar::setupPronGuessGrammar(v8, this, a2, a3, v9, v10, v11, v12);
  return v7;
}

uint64_t WordStatesRecogGrammar::setupPronGuessGrammar(WordStatesRecogGrammar *this, const PronGenerator *a2, uint64_t a3, CharInfo **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v347 = a3;
  v9 = *(*(ModelMgr::smpModelMgr + 264) + 8 * *(this + 4));
  v10 = **(v9 + 8);
  v383 = 0;
  v384 = 0;
  if (*(a4 + 2))
  {
    v11 = *a4;
  }

  else
  {
    v11 = &byte_262899963;
  }

  if (v10)
  {
    CharInfo::getLogicalCharLengthsForEncodedCharString(v11, &v383, a3, a4, a5, a6, a7, a8);
    v12 = v384;
  }

  else if (*v11)
  {
    LODWORD(v12) = 0;
    v13 = v11 + 1;
    do
    {
      if (v12 == HIDWORD(v384))
      {
        DgnPrimArray<char>::reallocElts(&v383, 1, 1);
        LODWORD(v12) = v384;
      }

      *(v383 + v12) = 1;
      v12 = (v384 + 1);
      LODWORD(v384) = v384 + 1;
    }

    while (*v13++);
  }

  else
  {
    v12 = 0;
  }

  v350 = v12;
  v351 = this;
  v15 = *(a2 + 1);
  v16 = *(v9 + 56);
  StateMgr::checkCollIdExposed(v16, *(a2 + 1), v15, a4, a5, a6, a7, a8);
  v17 = *(v9 + 48);
  v18 = *(v9 + 16);
  v381 = 0;
  v382 = 0;
  if (!v350)
  {
    v19 = 0;
LABEL_20:
    if (v19 < v350)
    {
      v22 = v350 - v19;
      v23 = 4 * v19;
      do
      {
        v24 = &v381[v23];
        *v24 = 0;
        v24[1] = 0;
        v23 += 4;
        --v22;
      }

      while (v22);
    }

    goto LABEL_23;
  }

  v379 = 0;
  HIDWORD(v382) = realloc_array(0, &v379, 16 * v350, 0, 0, 1) >> 4;
  v381 = v379;
  v19 = v382;
  if (v382 <= v350)
  {
    goto LABEL_20;
  }

  if (v382 <= v350)
  {
    v25 = v350;
    LODWORD(v382) = v350;
    v379 = 0;
    v380 = 0;
    goto LABEL_26;
  }

  v20 = v382;
  v21 = 16 * v382 - 16;
  do
  {
    --v20;
    DgnPrimArray<unsigned int>::~DgnPrimArray(v381 + v21);
    v21 -= 16;
  }

  while (v20 > v350);
LABEL_23:
  v25 = v350;
  LODWORD(v382) = v350;
  v379 = 0;
  v380 = 0;
  if (!v350)
  {
    v26 = 1;
    goto LABEL_27;
  }

LABEL_26:
  v377 = 0;
  v26 = 0;
  HIDWORD(v380) = realloc_array(0, &v377, 4 * v25, 0, 0, 1) >> 2;
  v379 = v377;
LABEL_27:
  v27 = v350;
  LODWORD(v380) = v350;
  v377 = 0;
  v378 = 0;
  v375 = 0;
  v376 = 0;
  if (v347)
  {
    if (v350)
    {
      v373 = 0;
      HIDWORD(v378) = realloc_array(0, &v373, 4 * v350, 0, 0, 1) >> 2;
      v377 = v373;
      v28 = HIDWORD(v376);
    }

    else
    {
      v28 = 0;
    }

    v27 = v350;
    LODWORD(v378) = v350;
    if (v28 < v350)
    {
      v373 = 0;
      HIDWORD(v376) = realloc_array(v375, &v373, 4 * v350, 4 * v376, 4 * v376, 1) >> 2;
      v375 = v373;
      v27 = v350;
    }

    LODWORD(v376) = v27;
  }

  v373 = 0;
  v374 = 0;
  if (v27)
  {
    v372[0] = 0;
    HIDWORD(v374) = realloc_array(0, v372, 16 * v27, 0, 0, 1) >> 4;
    v373 = v372[0];
    v29 = v374;
    if (v374 > v27)
    {
      if (v374 > v27)
      {
        v30 = v374;
        v31 = 16 * v374 - 16;
        do
        {
          --v30;
          DgnPrimArray<unsigned int>::~DgnPrimArray(v373 + v31);
          v31 -= 16;
        }

        while (v30 > v350);
      }

      goto LABEL_44;
    }
  }

  else
  {
    v29 = 0;
  }

  if (v29 < v350)
  {
    v32 = v350 - v29;
    v33 = 16 * v29;
    do
    {
      v34 = v373 + v33;
      *v34 = 0;
      v34[1] = 0;
      v33 += 16;
      --v32;
    }

    while (v32);
  }

LABEL_44:
  LODWORD(v374) = v350;
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v372, v350);
  v35 = (v350 + 1);
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v371, v35);
  DgnArray<DgnPrimArray<unsigned int>>::DgnArray(v370, v35);
  DgnString::DgnString(v369);
  DgnString::DgnString(&v367);
  v365 = 0;
  v366 = 0;
  v363 = 0;
  v364 = 0;
  v361 = 0;
  v362 = 0;
  v43 = *(a2 + 3);
  v44 = *(v43 + 48);
  v45 = *(v43 + 40);
  if (v44)
  {
    v46 = v45;
  }

  else
  {
    v46 = &byte_262899963;
  }

  v344 = v26;
  if ((v26 & 1) == 0)
  {
    v47 = 0;
    v349 = 0;
    v346 = 1;
    while (1)
    {
      *v352 = v47;
      v345 = v47 + 1;
      if (v47 + 1 < v35)
      {
        break;
      }

LABEL_91:
      v359[0] = RecogGrammar::getNewState(v351, v36, v37, v38, v39, v40, v41, v42);
      HashKEV<unsigned int,unsigned int,CWIDScope>::add(v351 + 64, v359);
      v97 = v359[0];
      *(v379 + *v352) = v359[0];
      StateMgr::setSkipAllowed(v16, v97, 1, 1, v98, v99, v100, v101);
      StateMgr::setLeftWBAllowed(v16, *(v379 + *v352), *v352 == 0, 1, v102, v103, v104, v105);
      StateMgr::setRightWBAllowed(v16, *(v379 + *v352), *v352 == 0, 1, v106, v107, v108, v109);
      if (v347)
      {
        v359[0] = RecogGrammar::getNewState(v351, v36, v37, v38, v39, v40, v41, v42);
        HashKEV<unsigned int,unsigned int,CWIDScope>::add(v351 + 64, v359);
        v110 = v359[0];
        *(v377 + *v352) = v359[0];
        StateMgr::setWordPenalty(v16, v110, *(a2 + 4), 1, v111, v112, v113, v114);
        StateMgr::setWordAliasState(v16, *(v377 + *v352), *(a2 + 3), 1, v115, v116, v117, v118);
        StateMgr::setLeftWBAllowed(v16, *(v377 + *v352), 0, 1, v119, v120, v121, v122);
        StateMgr::setRightWBAllowed(v16, *(v377 + *v352), 0, 1, v123, v124, v125, v126);
        v359[0] = RecogGrammar::getNewState(v351, v127, v128, v129, v130, v131, v132, v133);
        HashKEV<unsigned int,unsigned int,CWIDScope>::add(v351 + 64, v359);
        v134 = v359[0];
        *(v375 + *v352) = v359[0];
        StateMgr::setSkipAllowed(v16, v134, 1, 1, v135, v136, v137, v138);
        StateMgr::setLeftWBAllowed(v16, *(v375 + *v352), 0, 1, v139, v140, v141, v142);
        StateMgr::setRightWBAllowed(v16, *(v375 + *v352), 0, 1, v143, v144, v145, v146);
      }

      v349 += *(v383 + *v352);
      ++v346;
      v47 = v345;
      if (v345 == v350)
      {
        goto LABEL_94;
      }
    }

    v48 = 0;
    v49 = v346;
    while (1)
    {
      v48 += *(v383 + v49 - 1);
      DgnString::setToMid(v369, a4, v349, v48);
      DgnString::operator=(&v367, v369);
      DgnString::operator+=(&v367, v46);
      LODWORD(v366) = 0;
      LOBYTE(v358[0]) = 0;
      v51 = v368 ? v367 : &byte_262899963;
      StateMgr::getWordsWithPrefix(v16, *(a2 + 1), v15, v51, &byte_262899963, &v365, v358, v50);
      if (v366)
      {
        v52 = 0;
        v53 = 0;
        do
        {
          v54 = *(v365 + 4 * v52);
          if (*v46 || (v368 ? (v56 = v367) : (v56 = &byte_262899963), !CollMgr::collStrcmpUns8(v18, v15, v56, (v17[28] + *(v17[25] + 4 * v54)), v39, v40, v41, v42)))
          {
            v53 = v53 || StateMgr::isWordIdInState(v16, *(a2 + 2), v54, 1, v39, v40, v41, v42);
            v55 = v366;
          }

          else
          {
            LODWORD(v366) = v52;
            v55 = v52;
          }

          ++v52;
        }

        while (v52 < v55);
        if (v55)
        {
          break;
        }
      }

LABEL_90:
      ++v49;
      v35 = (v350 + 1);
      if (v350 + 1 == v49)
      {
        goto LABEL_91;
      }
    }

    v57 = v373 + 16 * *v352;
    v58 = *(v57 + 2);
    if (v58 == *(v57 + 3))
    {
      DgnPrimArray<char>::reallocElts(v373 + 16 * *v352, 1, 1);
      v66 = *(v57 + 2);
      v67 = v366;
      *(*v57 + v66) = v53;
      *(v57 + 2) = v66 + 1;
      LODWORD(v362) = 0;
      if (!v67)
      {
LABEL_81:
        v359[0] = RecogGrammar::getNewState(v351, v59, v60, v61, v62, v63, v64, v65);
        HashKEV<unsigned int,unsigned int,CWIDScope>::add(v351 + 64, v359);
        v74 = v359[0];
        StateMgr::addWordIdArray(v16, v359[0], &v361, 1, v75, v76, v77, v78);
        StateMgr::setLeftWBAllowed(v16, v74, *v352 == 0, 1, v79, v80, v81, v82);
        StateMgr::setRightWBAllowed(v16, v74, v49 == v350, 1, v83, v84, v85, v86);
        v87 = v371[0] + 16 * v49;
        v88 = *(v87 + 8);
        if (v88 == *(v87 + 12))
        {
          DgnPrimArray<short>::reallocElts(v371[0] + 16 * v49, 1, 1);
          v88 = *(v87 + 8);
        }

        *(*v87 + 2 * v88) = v352[0];
        *(v87 + 8) = v88 + 1;
        v89 = v370[0] + 16 * v49;
        v90 = v381;
        v91 = v381[4 * *v352 + 2];
        v92 = *(v89 + 8);
        if (v92 == *(v89 + 12))
        {
          DgnPrimArray<short>::reallocElts(v370[0] + 16 * v49, 1, 1);
          v92 = *(v89 + 8);
          v90 = v381;
        }

        *(*v89 + 2 * v92) = v91;
        *(v89 + 8) = v92 + 1;
        v93 = &v90[4 * *v352];
        v94 = *(v93 + 8);
        if (v94 == *(v93 + 12))
        {
          DgnPrimArray<unsigned int>::reallocElts(v93, 1, 1);
          v94 = *(v93 + 8);
        }

        *(*v93 + 4 * v94) = v74;
        ++*(v93 + 8);
        v95 = v372[0] + 16 * *v352;
        v96 = *(v95 + 2);
        if (v96 == *(v95 + 3))
        {
          DgnPrimArray<short>::reallocElts(v372[0] + 16 * *v352, 1, 1);
          v96 = *(v95 + 2);
        }

        *(*v95 + 2 * v96) = v49;
        *(v95 + 2) = v96 + 1;
        goto LABEL_90;
      }
    }

    else
    {
      *(*v57 + v58) = v53;
      *(v57 + 2) = v58 + 1;
      LODWORD(v362) = 0;
    }

    v68 = 0;
    do
    {
      WordList::lookupAll(v17, *(v365 + 4 * v68), &v363);
      v69 = v364;
      v59 = (v362 + v364 - HIDWORD(v362));
      if ((v362 + v364) > HIDWORD(v362))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v361, v59, 1);
        v69 = v364;
      }

      if (v69)
      {
        v70 = 0;
        v71 = v363;
        v72 = v361;
        do
        {
          *(v72 + 4 * (v70 + v362)) = *(v71 + 4 * v70);
          ++v70;
          v73 = v364;
        }

        while (v70 < v364);
      }

      else
      {
        v73 = 0;
      }

      LODWORD(v362) = v362 + v73;
      ++v68;
    }

    while (v68 < v366);
    goto LABEL_81;
  }

LABEL_94:
  *v359 = 0;
  v360 = 0;
  if (v347)
  {
    v147 = v351;
    v148 = v350;
    v149 = v344;
    v358[0] = RecogGrammar::getNewState(v351, v36, v37, v38, v39, v40, v41, v42);
    HashKEV<unsigned int,unsigned int,CWIDScope>::add(v351 + 64, v358);
    v353 = v358[0];
    StateMgr::setWordPenalty(v16, v358[0], *(a2 + 4), 1, v150, v151, v152, v153);
    StateMgr::setWordAliasState(v16, v353, *(a2 + 3), 1, v154, v155, v156, v157);
    StateMgr::setLeftWBAllowed(v16, v353, 1, 1, v158, v159, v160, v161);
    StateMgr::setRightWBAllowed(v16, v353, 0, 1, v162, v163, v164, v165);
    v358[0] = RecogGrammar::getNewState(v351, v166, v167, v168, v169, v170, v171, v172);
    HashKEV<unsigned int,unsigned int,CWIDScope>::add(v351 + 64, v358);
    v173 = v358[0];
    StateMgr::setWordPenalty(v16, v358[0], *(a2 + 4), 1, v174, v175, v176, v177);
    StateMgr::setWordAliasState(v16, v173, *(a2 + 3), 1, v178, v179, v180, v181);
    StateMgr::setLeftWBAllowed(v16, v173, 0, 1, v182, v183, v184, v185);
    StateMgr::setRightWBAllowed(v16, v173, 1, 1, v186, v187, v188, v189);
    v358[0] = RecogGrammar::getNewState(v351, v190, v191, v192, v193, v194, v195, v196);
    HashKEV<unsigned int,unsigned int,CWIDScope>::add(v351 + 64, v358);
    v197 = v358[0];
    StateMgr::setWordPenalty(v16, v358[0], *(a2 + 4), 1, v198, v199, v200, v201);
    StateMgr::setWordAliasState(v16, v197, *(a2 + 3), 1, v202, v203, v204, v205);
    StateMgr::setLeftWBAllowed(v16, v197, 1, 1, v206, v207, v208, v209);
    StateMgr::setRightWBAllowed(v16, v197, 1, 1, v210, v211, v212, v213);
    v214 = *(v351 + 10);
    if (v214 == *(v351 + 11))
    {
      DgnPrimArray<unsigned int>::reallocElts(v351 + 32, 1, 1);
      v214 = *(v351 + 10);
    }

    *(*(v351 + 4) + 4 * v214) = v197;
    ++*(v351 + 10);
    v215 = *(v351 + 14);
    if (v215 == *(v351 + 15))
    {
      DgnPrimArray<unsigned int>::reallocElts(v351 + 48, 1, 1);
      v215 = *(v351 + 14);
    }

    *(*(v351 + 6) + 4 * v215) = v197;
    ++*(v351 + 14);
  }

  else
  {
    v173 = 0;
    v353 = 0;
    v148 = v350;
    v147 = v351;
    v149 = v344;
  }

  v216 = *v379;
  v217 = *(v147 + 10);
  if (v217 == *(v147 + 11))
  {
    DgnPrimArray<unsigned int>::reallocElts(v147 + 32, 1, 1);
    v217 = *(v147 + 10);
  }

  *(*(v147 + 4) + 4 * v217) = v216;
  ++*(v147 + 10);
  BitArray::BitArray(v358, v148);
  BitArray::BitArray(v357, v148);
  if ((v149 & 1) == 0)
  {
    v220 = 0;
    v221 = v148 - 1;
    v222 = v148;
    while (1)
    {
      v223 = &v381[4 * v220];
      if (*(v223 + 2))
      {
        StateMgr::addStateTransition(v16, *(v379 + v220), v223, 1, 0, 0, v218, v219);
        v226 = v381;
        v227 = &v381[4 * v220];
        if (*(v227 + 2))
        {
          break;
        }
      }

LABEL_124:
      v148 = v350;
      v147 = v351;
      if (v347)
      {
        if (!v220)
        {
          LODWORD(v360) = 0;
          if (HIDWORD(v360))
          {
            v236 = 0;
          }

          else
          {
            DgnPrimArray<unsigned int>::reallocElts(v359, 1, 1);
            v236 = v360;
          }

          *(*v359 + 4 * v236) = v353;
          LODWORD(v360) = v360 + 1;
          StateMgr::addStateTransition(v16, *v379, v359, 1, 0, 0, v218, v219);
          LODWORD(v360) = 0;
          v239 = *v377;
          if (HIDWORD(v360))
          {
            v240 = 0;
          }

          else
          {
            DgnPrimArray<unsigned int>::reallocElts(v359, 1, 1);
            v240 = v360;
          }

          v241 = *v359;
          *(*v359 + 4 * v240) = v239;
          v242 = v360 + 1;
          LODWORD(v360) = v360 + 1;
          v243 = v173;
          if (v350 != 1)
          {
            v243 = *(v375 + 1);
          }

          if (v242 == HIDWORD(v360))
          {
            DgnPrimArray<unsigned int>::reallocElts(v359, 1, 1);
            v242 = v360;
            v241 = *v359;
          }

          *(v241 + 4 * v242) = v243;
          LODWORD(v360) = v360 + 1;
          StateMgr::addStateTransition(v16, v353, v359, 1, 0, 0, v237, v238);
          if (v350 != 1)
          {
            StateMgr::addStateTransition(v16, *v377, v359, 1, 0, 0, v218, v219);
          }
        }

        if (v220 == v221)
        {
          LODWORD(v360) = 0;
          v244 = *(v377 + v221);
          if (HIDWORD(v360))
          {
            v245 = 0;
          }

          else
          {
            DgnPrimArray<unsigned int>::reallocElts(v359, 1, 1);
            v245 = v360;
          }

          v246 = *v359;
          *(*v359 + 4 * v245) = v244;
          v247 = v360 + 1;
          LODWORD(v360) = v247;
          if (v247 == HIDWORD(v360))
          {
            DgnPrimArray<unsigned int>::reallocElts(v359, 1, 1);
            v247 = v360;
            v246 = *v359;
          }

          *(v246 + 4 * v247) = v173;
          LODWORD(v360) = v360 + 1;
          StateMgr::addStateTransition(v16, *(v377 + v221), v359, 1, 0, 0, v218, v219);
          v248 = *(v351 + 14);
          if (v248 == *(v351 + 15))
          {
            DgnPrimArray<unsigned int>::reallocElts(v351 + 48, 1, 1);
            v248 = *(v351 + 14);
          }

          *(*(v351 + 6) + 4 * v248) = v173;
          ++*(v351 + 14);
          if (v350 != 1)
          {
            StateMgr::addStateTransition(v16, *(v379 + v221), v359, 1, 0, 0, v218, v219);
            StateMgr::addStateTransition(v16, *(v375 + v221), &v381[4 * v221], 1, 0, 0, v249, v250);
            LODWORD(v360) = 0;
            if (HIDWORD(v360))
            {
              v253 = 0;
            }

            else
            {
              DgnPrimArray<unsigned int>::reallocElts(v359, 1, 1);
              v253 = v360;
            }

            *(*v359 + 4 * v253) = v173;
            LODWORD(v360) = v360 + 1;
            StateMgr::addStateTransition(v16, *(v375 + v221), v359, 1, 0, 0, v251, v252);
          }
        }

        if (v220 && v220 < v221)
        {
          LODWORD(v360) = 0;
          v254 = *(v377 + v220);
          if (HIDWORD(v360))
          {
            v255 = 0;
          }

          else
          {
            DgnPrimArray<unsigned int>::reallocElts(v359, 1, 1);
            v255 = v360;
          }

          *(*v359 + 4 * v255) = v254;
          LODWORD(v360) = v360 + 1;
          StateMgr::addStateTransition(v16, *(v379 + v220), v359, 1, 0, 0, v218, v219);
          v258 = *(v375 + v220 + 1);
          v259 = v360;
          if (v360 == HIDWORD(v360))
          {
            DgnPrimArray<unsigned int>::reallocElts(v359, 1, 1);
            v259 = v360;
          }

          *(*v359 + 4 * v259) = v258;
          LODWORD(v360) = v360 + 1;
          StateMgr::addStateTransition(v16, *(v377 + v220), v359, 1, 0, 0, v256, v257);
          StateMgr::addStateTransition(v16, *(v375 + v220), &v381[4 * v220], 1, 0, 0, v260, v261);
          LODWORD(v360) = 0;
          v264 = v375;
          v265 = *(v375 + v220 + 1);
          if (HIDWORD(v360))
          {
            v266 = 0;
          }

          else
          {
            DgnPrimArray<unsigned int>::reallocElts(v359, 1, 1);
            v266 = v360;
            v264 = v375;
          }

          *(*v359 + 4 * v266) = v265;
          LODWORD(v360) = v360 + 1;
          StateMgr::addStateTransition(v16, *(v264 + v220), v359, 1, 0, 0, v262, v263);
        }
      }

      if (++v220 == v222)
      {
        goto LABEL_163;
      }
    }

    v228 = 0;
    while (1)
    {
      v229 = *(*(v372[0] + 2 * v220) + 2 * v228);
      if (v350 <= v229)
      {
        v232 = *(*v227 + 4 * v228);
        v233 = v351;
        v234 = *(v351 + 14);
        if (v234 == *(v351 + 15))
        {
          DgnPrimArray<unsigned int>::reallocElts(v351 + 48, 1, 1);
          v233 = v351;
          v234 = *(v351 + 14);
        }

        *(*(v233 + 6) + 4 * v234) = v232;
        ++*(v233 + 14);
      }

      else
      {
        LODWORD(v360) = 0;
        v230 = *(v379 + v229);
        if (HIDWORD(v360))
        {
          v231 = 0;
        }

        else
        {
          DgnPrimArray<unsigned int>::reallocElts(v359, 1, 1);
          v231 = v360;
          v226 = v381;
        }

        *(*v359 + 4 * v231) = v230;
        LODWORD(v360) = v360 + 1;
        StateMgr::addStateTransition(v16, *(*&v226[4 * v220] + 4 * v228), v359, 1, 0, 0, v218, v219);
      }

      if (*(*(v373 + 2 * v220) + v228) != 1)
      {
        goto LABEL_123;
      }

      if (v350 == v229)
      {
        break;
      }

      if (!v220)
      {
        v235 = (*v358 + ((v229 >> 3) & 0x1FFC));
        goto LABEL_122;
      }

      StateMgr::setSkipAllowed(v16, *(*&v381[4 * v220] + 4 * v228), 1, 1, v224, v225, v218, v219);
LABEL_123:
      ++v228;
      v226 = v381;
      v227 = &v381[4 * v220];
      if (v228 >= *(v227 + 2))
      {
        goto LABEL_124;
      }
    }

    v235 = (v357[0] + 4 * (v220 >> 5));
    LOBYTE(v229) = v220;
LABEL_122:
    *v235 |= 1 << v229;
    goto LABEL_123;
  }

LABEL_163:
  if (v148 >= 2)
  {
    for (i = 1; i != v148; ++i)
    {
      if ((*(*v358 + 4 * (i >> 5)) >> i))
      {
        LODWORD(v360) = 0;
        v355 = 0;
        v356 = 0;
        v385[0] = 0;
        v268 = realloc_array(0, v385, 4uLL, 0, 0, 1);
        v355 = v385[0];
        LODWORD(v356) = 1;
        HIDWORD(v356) = v268 >> 2;
        if (v381[4 * i + 2])
        {
          v276 = 0;
          do
          {
            v277 = *(*(v372[0] + 2 * i) + 2 * v276);
            if (*(*(v373 + 2 * i) + v276) == 1 && v148 > v277)
            {
              *(*v358 + ((v277 >> 3) & 0x1FFC)) |= 1 << v277;
            }

            LODWORD(v385[0]) = RecogGrammar::getNewState(v147, v269, v270, v271, v272, v273, v274, v275);
            HashKEV<unsigned int,unsigned int,CWIDScope>::add(v147 + 64, v385);
            v279 = v385[0];
            StateMgr::setWordAliasState(v16, v385[0], *(*&v381[4 * i] + 4 * v276), 1, v280, v281, v282, v283);
            StateMgr::setLeftWBAllowed(v16, v279, 1, 1, v284, v285, v286, v287);
            if (v148 <= v277)
            {
              StateMgr::setRightWBAllowed(v16, v279, 1, 1, v288, v289, v290, v291);
              v294 = *(v147 + 14);
              if (v294 == *(v147 + 15))
              {
                DgnPrimArray<unsigned int>::reallocElts(v147 + 48, 1, 1);
                v294 = *(v147 + 14);
              }

              *(*(v147 + 6) + 4 * v294) = v279;
              ++*(v147 + 14);
            }

            else
            {
              StateMgr::setRightWBAllowed(v16, v279, 0, 1, v288, v289, v290, v291);
              *v355 = *(v379 + v277);
              StateMgr::addStateTransition(v16, v279, &v355, 1, 0, 0, v292, v293);
            }

            v295 = v360;
            if (v360 == HIDWORD(v360))
            {
              DgnPrimArray<unsigned int>::reallocElts(v359, 1, 1);
              v295 = v360;
            }

            *(*v359 + 4 * v295) = v279;
            LODWORD(v360) = v360 + 1;
            ++v276;
          }

          while (v276 < v381[4 * i + 2]);
        }

        StateMgr::addStateTransition(v16, *v379, v359, 1, 0, 0, v274, v275);
        DgnPrimArray<unsigned int>::~DgnPrimArray(&v355);
      }
    }
  }

  v296 = v148 - 1;
  if (v148 != 1)
  {
    do
    {
      if ((*(v357[0] + 4 * (v296 >> 5)) >> v296))
      {
        LODWORD(v360) = 0;
        v355 = 0;
        v356 = 0;
        v385[0] = 0;
        v297 = realloc_array(0, v385, 4uLL, 0, 0, 1);
        v355 = v385[0];
        LODWORD(v356) = 1;
        HIDWORD(v356) = v297 >> 2;
        v305 = v371[0] + 16 * v296;
        if (*(v305 + 8))
        {
          v306 = 0;
          while (1)
          {
            v307 = *(*v305 + 2 * v306);
            v308 = *(*(v370[0] + 16 * v296) + 2 * v306);
            if (*(*(v373 + 2 * v307) + v308) == 1)
            {
              *(v357[0] + ((v307 >> 3) & 0x1FFC)) |= 1 << v307;
            }

            LODWORD(v385[0]) = RecogGrammar::getNewState(v147, v298, v299, v300, v301, v302, v303, v304);
            HashKEV<unsigned int,unsigned int,CWIDScope>::add(v147 + 64, v385);
            v309 = v385[0];
            v310 = *(*&v381[4 * v307] + 4 * v308);
            StateMgr::setWordAliasState(v16, v385[0], v310, 1, v311, v312, v313, v314);
            StateMgr::setRightWBAllowed(v16, v309, 1, 1, v315, v316, v317, v318);
            StateMgr::setLeftWBAllowed(v16, v309, v307 == 0, 1, v319, v320, v321, v322);
            v325 = *(v147 + 14);
            if (v325 == *(v147 + 15))
            {
              DgnPrimArray<unsigned int>::reallocElts(v147 + 48, 1, 1);
              v325 = *(v147 + 14);
            }

            *(*(v147 + 6) + 4 * v325) = v309;
            ++*(v147 + 14);
            *v355 = v309;
            StateMgr::addStateTransition(v16, *(v379 + v307), &v355, 1, 0, 0, v323, v324);
            if (v307)
            {
              if (v347)
              {
                break;
              }
            }

            if (v307)
            {
              goto LABEL_196;
            }

LABEL_202:
            ++v306;
            v305 = v371[0] + 16 * v296;
            if (v306 >= *(v305 + 8))
            {
              goto LABEL_203;
            }
          }

          StateMgr::addStateTransition(v16, *(v375 + v307), &v355, 1, 0, 0, v303, v304);
LABEL_196:
          if ((*(*v358 + ((v307 >> 3) & 0x1FFC)) >> v307))
          {
            LODWORD(v385[0]) = RecogGrammar::getNewState(v147, v298, v299, v300, v301, v302, v303, v304);
            HashKEV<unsigned int,unsigned int,CWIDScope>::add(v147 + 64, v385);
            v326 = v385[0];
            StateMgr::setWordAliasState(v16, v385[0], v310, 1, v327, v328, v329, v330);
            StateMgr::setRightWBAllowed(v16, v326, 1, 1, v331, v332, v333, v334);
            StateMgr::setLeftWBAllowed(v16, v326, 1, 1, v335, v336, v337, v338);
            v339 = *(v147 + 14);
            if (v339 == *(v147 + 15))
            {
              DgnPrimArray<unsigned int>::reallocElts(v147 + 48, 1, 1);
              v339 = *(v147 + 14);
            }

            *(*(v147 + 6) + 4 * v339) = v326;
            ++*(v147 + 14);
            v340 = v360;
            if (v360 == HIDWORD(v360))
            {
              DgnPrimArray<unsigned int>::reallocElts(v359, 1, 1);
              v340 = v360;
            }

            *(*v359 + 4 * v340) = v326;
            LODWORD(v360) = v360 + 1;
          }

          goto LABEL_202;
        }

LABEL_203:
        if (v360)
        {
          StateMgr::addStateTransition(v16, *v379, v359, 1, 0, 0, v303, v304);
        }

        DgnPrimArray<unsigned int>::~DgnPrimArray(&v355);
      }

      --v296;
    }

    while (v296);
  }

  if (v347 & 1) != 0 && (*v357[0])
  {
    v341 = *v379;
    v342 = *(v147 + 14);
    if (v342 == *(v147 + 15))
    {
      DgnPrimArray<unsigned int>::reallocElts(v147 + 48, 1, 1);
      v342 = *(v147 + 14);
    }

    *(*(v147 + 6) + 4 * v342) = v341;
    ++*(v147 + 14);
  }

  BitArray::~BitArray(v357);
  BitArray::~BitArray(v358);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v359);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v361);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v363);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v365);
  DgnString::~DgnString(&v367);
  DgnString::~DgnString(v369);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v370);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v371);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v372);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v373);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v375);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v377);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v379);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v381);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v383);
}

void sub_262697A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39)
{
  BitArray::~BitArray(&a23);
  BitArray::~BitArray(&a25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a29);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a31);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a33);
  DgnString::~DgnString(&a35);
  DgnString::~DgnString(&a37);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a39);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v39 - 224);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v39 - 208);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v39 - 192);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v39 - 176);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v39 - 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v39 - 144);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v39 - 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v39 - 112);
  _Unwind_Resume(a1);
}

double RecogGrammar::newSequenceRecogGrammar(RecogGrammar *this)
{
  v1 = this;
  v2 = MemChunkAlloc(0x50uLL, 0);
  result = 0.0;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = v1;
  *(v2 + 10) = 0;
  v2[8] = 0;
  v2[9] = 0;
  *v2 = &unk_287525AA8;
  return result;
}

void RecogGrammar::~RecogGrammar(RecogGrammar *this)
{
  *this = &unk_287528BC8;
  v2 = this + 16;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
}

{
  RecogGrammar::~RecogGrammar(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t RecogGrammar::getNewState(RecogGrammar *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = StateMgr::newState(*(*(*(ModelMgr::smpModelMgr + 264) + 8 * *(this + 4)) + 56), 0, a3, a4, a5, a6, a7, a8);
  v10 = *(this + 6);
  if (v10 == *(this + 7))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 16, 1, 1);
    v10 = *(this + 6);
  }

  *(*(this + 2) + 4 * v10) = v9;
  ++*(this + 6);
  return v9;
}

uint64_t RecogGrammar::setTransitionsTo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = 0;
  v23 = 0;
  if (*(a2 + 8))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(*a2 + 8 * v11);
      v13 = *(v12 + 40);
      v14 = v10 + v13;
      if (v14 > HIDWORD(v23))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v22, v14 - HIDWORD(v23), 1);
        v13 = *(v12 + 40);
      }

      if (v13)
      {
        v15 = 0;
        v16 = *(v12 + 32);
        v17 = v22;
        do
        {
          *(v17 + 4 * (v15 + v23)) = *(v16 + 4 * v15);
          ++v15;
          v18 = *(v12 + 40);
        }

        while (v15 < v18);
      }

      else
      {
        LODWORD(v18) = 0;
      }

      v10 = v23 + v18;
      LODWORD(v23) = v23 + v18;
      ++v11;
    }

    while (v11 < *(a2 + 8));
  }

  if (*(a1 + 56))
  {
    v19 = 0;
    v20 = ModelMgr::smpModelMgr;
    do
    {
      StateMgr::addStateTransition(*(*(*(v20 + 264) + 8 * *(a1 + 8)) + 56), *(*(a1 + 48) + 4 * v19++), &v22, 1, 0, 0, a7, a8);
    }

    while (v19 < *(a1 + 56));
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v22);
}

void WordStatesRecogGrammar::WordStatesRecogGrammar(WordStatesRecogGrammar *this, __int16 a2)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 1) = 0u;
  *(this + 4) = a2;
  *(this + 10) = 0;
  *this = &unk_287525400;
  HashKEV<unsigned int,unsigned int,StateIdScope>::HashKEV(this + 64, 0, 16);
}

void WordStatesRecogGrammar::~WordStatesRecogGrammar(WordStatesRecogGrammar *this)
{
  *this = &unk_287525400;
  HashKEV<unsigned int,unsigned int,StateIdScope>::~HashKEV(this + 64);

  RecogGrammar::~RecogGrammar(this);
}

{
  *this = &unk_287525400;
  HashKEV<unsigned int,unsigned int,StateIdScope>::~HashKEV(this + 64);
  RecogGrammar::~RecogGrammar(this);

  JUMPOUT(0x26672B1B0);
}

void ContainerRecogGrammar::~ContainerRecogGrammar(ContainerRecogGrammar *this)
{
  *this = &unk_287525970;
  DgnIArray<Utterance *>::~DgnIArray(this + 64);

  RecogGrammar::~RecogGrammar(this);
}

{
  *this = &unk_287525970;
  DgnIArray<Utterance *>::~DgnIArray(this + 64);
  RecogGrammar::~RecogGrammar(this);

  JUMPOUT(0x26672B1B0);
}

unint64_t ContainerRecogGrammar::add(unint64_t this, RecogGrammar *a2)
{
  v3 = this;
  v4 = *(this + 72);
  if (v4 == *(this + 76))
  {
    this = DgnPrimArray<unsigned long long>::reallocElts(this + 64, 1, 1);
    v4 = *(v3 + 72);
  }

  *(*(v3 + 64) + 8 * v4) = a2;
  *(v3 + 72) = v4 + 1;
  return this;
}

void SequenceRecogGrammar::~SequenceRecogGrammar(SequenceRecogGrammar *this)
{
  *this = &unk_287525970;
  DgnIArray<Utterance *>::~DgnIArray(this + 64);

  RecogGrammar::~RecogGrammar(this);
}

{
  *this = &unk_287525970;
  DgnIArray<Utterance *>::~DgnIArray(this + 64);
  RecogGrammar::~RecogGrammar(this);

  JUMPOUT(0x26672B1B0);
}

uint64_t SequenceRecogGrammar::hasInStateSet(SequenceRecogGrammar *this, const unsigned int *a2)
{
  if (!*(this + 18))
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = *(*(this + 8) + 8 * v4);
    result = (*(*v5 + 32))(v5, a2);
    if (result)
    {
      break;
    }

    ++v4;
  }

  while (v4 < *(this + 18));
  return result;
}

uint64_t SequenceRecogGrammar::finalize(uint64_t this)
{
  v1 = this;
  if ((*(this + 10) & 1) == 0 && *(this + 72))
  {
    (*(***(this + 64) + 24))(**(this + 64));
    DgnPrimArray<int>::copyArraySlice(v1 + 32, (**(v1 + 64) + 32), 0, *(**(v1 + 64) + 40));
    v16 = 0;
    v2 = realloc_array(0, &v16, 8uLL, 0, 0, 1);
    v3 = 0;
    v13 = v16;
    v14 = 1;
    v15 = v2 >> 3;
    while (1)
    {
      v4 = (*(v1 + 72) - 1);
      if (v3 >= v4)
      {
        break;
      }

      *v13 = *(*(v1 + 64) + 8 * v3 + 8);
      (*(**v13 + 24))();
      v5 = *(*(v1 + 64) + 8 * v3++);
      RecogGrammar::setTransitionsTo(v5, &v13, v6, v7, v8, v9, v10, v11);
    }

    v12 = *(*(v1 + 64) + 8 * v4);
    DgnPrimArray<int>::copyArraySlice(v1 + 48, (v12 + 48), 0, *(v12 + 56));
    this = DgnIArray<Utterance *>::~DgnIArray(&v13);
  }

  *(v1 + 10) = 1;
  return this;
}

void sub_262698360(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

uint64_t **HashKEV<unsigned int,unsigned int,StateIdScope>::findBucket(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (-1640531527 * *a2) >> -v3;
  }

  else
  {
    v4 = 0;
  }

  result = (*(a1 + 80) + 8 * v4);
  v6 = *result;
  if (*result)
  {
    do
    {
      v7 = v6;
      if (*(v6 + 2) == v2 && *(v6 + 3) == v2)
      {
        break;
      }

      v6 = *v6;
      result = v7;
    }

    while (*v7);
  }

  return result;
}

void *std::__tree<SDhVoc_fake **>::__emplace_unique_key_args<SDhVoc_fake **,SDhVoc_fake ** const&>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t TLocaleInfo::composeCharacter(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 < 768)
  {
LABEL_2:
    if (a3 == 3634 && a2 == 3661)
    {
      return 3635;
    }

    else
    {
      return 0;
    }
  }

  if (a3 >= 0x370)
  {
    if (a3 > 0xE30)
    {
      if (a3 > 0xE4E)
      {
        goto LABEL_2;
      }

      if (a3 > 0xE33)
      {
        if (a3 - 3655 >= 0xFFFFFFF4)
        {
          goto LABEL_2;
        }
      }

      else if (a3 != 3633)
      {
        goto LABEL_2;
      }

      return 0;
    }

    if (a3 == 1600)
    {
      return a2;
    }

    if (a3 < 0x64B)
    {
      goto LABEL_2;
    }

    if (a3 < 0x660 || (a3 & 0xFFB) == 0x670)
    {
      if (a3 != 2364)
      {
        if (a3 >= 0x660 && (a3 & 0x7FB) != 0x670)
        {
          return 0;
        }

        return a2;
      }

      v8 = *(a1 + 72) < 4uLL;
    }

    else
    {
      if (a3 != 2364 || *(a1 + 72) <= 3uLL)
      {
        goto LABEL_2;
      }

      v8 = 0;
    }

    result = 0;
    if ((a2 - 2356) >= 0xFFFFFFE1 && !v8)
    {
      return s_szTableNuktaComposition0915to0933[(a2 - 2325)];
    }

    return result;
  }

  if (a3 > 0x345)
  {
    return 0;
  }

  v5 = *(&s_szTableCharacterComposition0300to0345 + a3 - 768);
  if (!v5)
  {
    return 0;
  }

  v6 = *v5 - 1;
  if (*v5 < 1)
  {
    return 0;
  }

  if (*v5 == 1)
  {
    v7 = 0;
LABEL_36:
    if (v5[v7 | 1] == a2)
    {
      return v5[v7 + 2];
    }

    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = (v9 + v6) | 1;
    v11 = v5[v10];
    if (v11 == a2)
    {
      return v5[v10 + 1];
    }

    v12 = (v9 + v6) >> 1;
    if (v11 < a2)
    {
      v9 = v12 + 1;
    }

    else
    {
      v6 = v12 - 1;
    }

    if (v9 >= v6)
    {
      v7 = 2 * v9;
      goto LABEL_36;
    }
  }
}

uint64_t TLocaleInfo::splitDiacritic(uint64_t a1, unsigned int a2)
{
  if (a2 <= 191)
  {
    if (a2 == 105 && (*(a1 + 80) & 1) != 0)
    {
      return 0x30700000131;
    }

    return a2;
  }

  if (a2 <= 0x233)
  {
    return s_szTableBaseCharacter00C0to0233[a2 - 192] | (s_szTableDiacritic00C0to0233[a2 - 192] << 32);
  }

  v3 = a2 - 902;
  if (a2 < 0x386)
  {
    return a2;
  }

  if (a2 <= 0x3D4)
  {
    v4 = &s_szTableBaseCharacter0386to03D4;
    v5 = &s_szTableDiacritic0386to03D4;
    return v4[v3] | (v5[v3] << 32);
  }

  v3 = a2 - 1024;
  if (a2 < 0x400)
  {
    return a2;
  }

  if (a2 <= 0x4F9)
  {
    v4 = &s_szTableBaseCharacter0400to04F9;
    v5 = &s_szTableDiacritic0400to04F9;
    return v4[v3] | (v5[v3] << 32);
  }

  v6 = a2 - 2345;
  if (a2 < 0x929)
  {
    return a2;
  }

  if (a2 > 0x95F)
  {
    v3 = a2 - 7680;
    if (a2 - 7680 <= 0x1FC)
    {
      v4 = &s_szTableBaseCharacter1E00to1FFC;
      v5 = &s_szTableDiacritic1E00to1FFC;
      return v4[v3] | (v5[v3] << 32);
    }

    return a2;
  }

  if (a2 < 0x958)
  {
    if (v6 <= 0xB && ((1 << v6) & 0x901) != 0)
    {
      v7 = a2 - 1;
      return v7 | 0x93C00000000;
    }

    return a2;
  }

  v7 = s_szTableNuktaBaseCharacter0958to095F[a2 - 2392];
  return v7 | 0x93C00000000;
}

unint64_t TLocaleInfo::decomposeCharacter(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a3[2];
  v16 = a2;
  TBuffer<wchar_t>::insert(a3, v6, &v16, 1uLL);
  result = TLocaleInfo::splitDiacritic(a1, v4);
  if (v4)
  {
    v8 = HIDWORD(result);
    if (HIDWORD(result))
    {
      if (HIDWORD(result) != v4)
      {
        LODWORD(v9) = 0;
        do
        {
          v10 = v4;
          v4 = result;
          v17 = v8;
          TBuffer<wchar_t>::insert(a3, a3[2], &v17, 1uLL);
          result = TLocaleInfo::splitDiacritic(a1, v4);
          v9 = (v9 + 1);
          if (v10 == v4)
          {
            break;
          }

          v8 = HIDWORD(result);
          if (!HIDWORD(result))
          {
            break;
          }
        }

        while (v4 != HIDWORD(result));
        if (v9)
        {
          v11 = *a3;
          if (v9 != 1)
          {
            v12 = (v11 + 4 * v6 + 4);
            v13 = v9 >> 1;
            v14 = (v11 + 4 * (v6 + v9));
            do
            {
              v15 = *v12;
              *v12++ = *v14;
              *v14-- = v15;
              --v13;
            }

            while (v13);
          }

          *(v11 + 4 * v6) = v4;
        }
      }
    }
  }

  return result;
}

uint64_t TLocaleInfo::removeDiacritics(uint64_t a1, uint64_t a2)
{
  do
  {
    v3 = a2;
    a2 = TLocaleInfo::splitDiacritic(a1, a2);
  }

  while (v3 != a2);
  return v3;
}

uint64_t TLocaleInfo::katakanaToHiragana(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = a2 + 1;
    do
    {
      if ((v3 - 12449) < 0x56)
      {
        v3 -= 96;
      }

      v8 = v3;
      result = TBuffer<wchar_t>::insert(a3, *(a3 + 16), &v8, 1uLL);
      v7 = *v5++;
      v3 = v7;
    }

    while (v7);
  }

  return result;
}

void TLocaleInfo::katakanaToRomaji(uint64_t a1, int *a2, void *a3)
{
  v4 = a2;
  v5 = *a2;
  if (*a2 == 12540)
  {
    do
    {
      v27 = 45;
      TBuffer<wchar_t>::insert(a3, a3[2], &v27, 1uLL);
      v6 = v4[1];
      ++v4;
      v5 = v6;
    }

    while (v6 == 12540);
  }

  for (; v5; v4 = v11 + 1)
  {
    if ((v5 - 12535) > 0xFFFFFFA9)
    {
      v12 = *(&s_szTableKatakanaToRomaji + (v5 - 12449));
      v11 = v4 + 1;
      v13 = v4[1];
      if (v13 == 12540)
      {
        v14 = 0;
          ;
        }

        TBuffer<wchar_t>::insert(a3, a3[2], *(&s_szTableKatakanaToRomaji + (v5 - 12449)), v14 - 1);
        v16 = a3[2];
        v17 = *(*a3 + 4 * v16 - 4);
        v27 = v17;
        TBuffer<wchar_t>::insert(a3, v16, &v27, 1uLL);
        if (v4[2] != 12540)
        {
          goto LABEL_31;
        }

        v18 = v4 + 3;
        do
        {
          v27 = v17;
          TBuffer<wchar_t>::insert(a3, a3[2], &v27, 1uLL);
          v19 = *v18++;
        }

        while (v19 == 12540);
        goto LABEL_30;
      }

      if ((v5 - 12461) <= 0x3D && ((1 << (v5 + 83)) & 0x200400E040100C03) != 0)
      {
        if ((v13 - 12515) <= 4 && ((1 << (v13 + 29)) & 0x15) != 0)
        {
          v20 = wcslen(*(&s_szTableKatakanaToRomaji + (v5 - 12449)));
          TBuffer<wchar_t>::insert(a3, a3[2], v12, v20 - 1);
          if (v5 != 12472 && v20 == 2)
          {
            v27 = 121;
            TBuffer<wchar_t>::insert(a3, a3[2], &v27, 1uLL);
          }

          if (v13 == 12517)
          {
            v21 = 117;
          }

          else
          {
            v21 = 111;
          }

          if (v13 == 12515)
          {
            v22 = 97;
          }

          else
          {
            v22 = v21;
          }

          v27 = v22;
          TBuffer<wchar_t>::insert(a3, a3[2], &v27, 1uLL);
          if (v4[2] != 12540)
          {
            goto LABEL_31;
          }

          v18 = v4 + 3;
          do
          {
            v27 = v22;
            TBuffer<wchar_t>::insert(a3, a3[2], &v27, 1uLL);
            v23 = *v18++;
          }

          while (v23 == 12540);
LABEL_30:
          v11 = v18 - 2;
          goto LABEL_31;
        }

        v24 = 0;
        v7 = a3[2];
          ;
        }
      }

      else
      {
        v24 = 0;
        v7 = a3[2];
          ;
        }
      }

      v10 = v24 - 1;
      v9 = a3;
      v8 = *(&s_szTableKatakanaToRomaji + (v5 - 12449));
    }

    else
    {
      v27 = v5;
      v7 = a3[2];
      v8 = &v27;
      v9 = a3;
      v10 = 1;
    }

    TBuffer<wchar_t>::insert(v9, v7, v8, v10);
    v11 = v4;
LABEL_31:
    v5 = v11[1];
  }
}

uint64_t TLocaleInfo::isKtivMenukad(uint64_t a1, unsigned int *a2)
{
  while (1)
  {
    v2 = *a2;
    if (*a2 <= 8202)
    {
      if (v2 == 32 || v2 == 160)
      {
        goto LABEL_21;
      }

      if (!v2)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == 8203)
      {
        goto LABEL_21;
      }

      if (v2 == 12288 || v2 == 65279)
      {
        goto LABEL_21;
      }
    }

    if (v2 < 1425)
    {
      return 0;
    }

    if (v2 < 0x5F5)
    {
      break;
    }

    if (v2 - 64285 >= 0x33)
    {
      return 0;
    }

    result = 1;
    if (v2 >> 5 < 0x7D9 || v2 - 64298 < 0x25)
    {
      return result;
    }

LABEL_21:
    ++a2;
  }

  if (v2 >= 0x5AF)
  {
    if (v2 <= 0x5C7)
    {
      result = 1;
      v5 = v2 - 1470;
      if (v5 > 8 || ((1 << v5) & 0x125) == 0)
      {
        return result;
      }
    }

    goto LABEL_21;
  }

  return 1;
}

uint64_t TLocaleInfo::ktivMenukadToKtivMaleh(double a1, int32x4_t a2, uint64_t a3, int *a4, void *a5)
{
  v7 = a5[2];
  v8 = 1;
  v9.i64[1] = 0xFB390000FB30;
  while (1)
  {
    v10 = *a4;
    if (*a4 <= 8202)
    {
      if (v10 == 32 || v10 == 160)
      {
        goto LABEL_11;
      }

      if (!v10)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v11 = v10 == 8203 || v10 == 65279;
      if (v11 || v10 == 12288)
      {
LABEL_11:
        v22 = *a4;
        v8 = 1;
        TBuffer<wchar_t>::insert(a5, a5[2], &v22, 1uLL);
        goto LABEL_12;
      }
    }

    if (v10 < 1425)
    {
      goto LABEL_84;
    }

    if (v10 >= 0x5F5)
    {
      break;
    }

    if (v10 >= 0x5AF)
    {
      if (v10 > 0x5C7)
      {
        goto LABEL_23;
      }

      if ((*a4 & 0x7FE) == 0x5BA)
      {
        v12 = a5[2];
        if (v12 <= v7 || *(*a5 + 4 * v12 - 4) == 1493)
        {
          goto LABEL_80;
        }

LABEL_54:
        v22 = 1493;
LABEL_79:
        TBuffer<wchar_t>::insert(a5, v12, &v22, 1uLL);
        goto LABEL_80;
      }

      v8 = 0;
      if ((v10 - 1460) > 0x12)
      {
        goto LABEL_12;
      }

      if (((1 << (v10 + 76)) & 0x49400) != 0)
      {
        goto LABEL_58;
      }

      if (v10 != 1460)
      {
        goto LABEL_12;
      }

      v12 = a5[2];
      if (v12 > v7 && *(*a5 + 4 * v12 - 4) != 1497)
      {
        v18 = a4[1];
        if (!v18 || v18 != 1456 && a4[2] != 1456)
        {
          goto LABEL_50;
        }
      }
    }

LABEL_80:
    v8 = 0;
LABEL_12:
    ++a4;
  }

  if ((v10 - 64285) < 0x33)
  {
LABEL_23:
    if (v10 > 64284)
    {
      if (v10 <= 64286)
      {
        if (v10 != 64285)
        {
          goto LABEL_80;
        }

        goto LABEL_42;
      }

      if (v10 == 64287)
      {
        goto LABEL_55;
      }

      if (v10 == 64313)
      {
LABEL_42:
        v12 = a5[2];
        if (!(v8 & 1 | (v12 <= v7)))
        {
          v13 = a4[1];
          *v9.i8 = vand_s8(vdup_n_s32(v13), 0xFFFFFFFDFFFFFFFBLL);
          a2.i32[0] = v13;
          v14 = vzip1q_s32(a2, v9);
          v15 = vextq_s8(vextq_s8(v14, v14, 8uLL), v14, 4uLL);
          v14.i32[2] = v14.i32[0];
          if ((vmaxv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(v14, xmmword_262882470), vceqq_s32(v15, xmmword_262882480)))) & 1) == 0)
          {
            v16 = *(*a5 + 4 * v12 - 4);
            if (v16 != 1493 && (v16 & 0xFFFFFFFB) != 0x5D0 && v16 != 1497 && (v16 & 0xFFFFFFFD) != 0xFB21 && v13 - 64304 <= 0xFFFFFFFD)
            {
              v22 = 1497;
              TBuffer<wchar_t>::insert(a5, v12, &v22, 1uLL);
              v12 = a5[2];
            }
          }
        }

LABEL_50:
        v22 = 1497;
        goto LABEL_79;
      }

      if (v10 != 64309)
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v10 > 1519)
      {
        if (v10 == 1520)
        {
LABEL_76:
          v17 = 1493;
          v22 = 1493;
          TBuffer<wchar_t>::insert(a5, a5[2], &v22, 1uLL);
          goto LABEL_77;
        }

        if (v10 == 1521)
        {
          v22 = 1493;
          TBuffer<wchar_t>::insert(a5, a5[2], &v22, 1uLL);
          v22 = 1497;
          goto LABEL_78;
        }

        if (v10 != 1522)
        {
LABEL_39:
          if (v10 < 0xFB2A)
          {
LABEL_58:
            v22 = v10;
LABEL_78:
            v12 = a5[2];
            goto LABEL_79;
          }

          if (v10 <= 0xFB2D)
          {
            v10 = 1513;
            goto LABEL_58;
          }

          if (v10 <= 0xFB30)
          {
            v10 = 1488;
            goto LABEL_58;
          }

          if (v10 <= 0xFB4A)
          {
            v10 -= 62816;
            goto LABEL_58;
          }

          if (v10 > 64332)
          {
            if (v10 == 64333)
            {
              v10 = 1499;
            }

            else if (v10 == 64334)
            {
              v10 = 1492;
            }

            else
            {
              v22 = 1488;
              TBuffer<wchar_t>::insert(a5, a5[2], &v22, 1uLL);
              v10 = 1500;
            }

            goto LABEL_58;
          }

          if (v10 != 64331)
          {
            v10 = 1489;
            goto LABEL_58;
          }

          goto LABEL_76;
        }

LABEL_55:
        v17 = 1497;
        v22 = 1497;
        TBuffer<wchar_t>::insert(a5, a5[2], &v22, 1uLL);
LABEL_77:
        v22 = v17;
        goto LABEL_78;
      }

      if (v10 != 1493)
      {
        if (v10 != 1497)
        {
          goto LABEL_39;
        }

        goto LABEL_42;
      }
    }

    v12 = a5[2];
    if (!(v8 & 1 | (v12 <= v7)) && *(*a5 + 4 * v12 - 4) != 1493)
    {
      v22 = 1493;
      TBuffer<wchar_t>::insert(a5, v12, &v22, 1uLL);
      v12 = a5[2];
    }

    goto LABEL_54;
  }

LABEL_84:
  v19 = 0;
    ;
  }

  return TBuffer<wchar_t>::insert(a5, a5[2], a4, v19 - 1);
}

uint64_t TLocaleInfo::getDigitExtended(uint64_t a1, unsigned int a2)
{
  if (a2 >= 65296)
  {
    v2 = a2 - 65296;
    v3 = a2 >= 0xFF1A;
    goto LABEL_3;
  }

  result = a2 - 1632;
  if (a2 < 1632)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x669)
  {
    return result;
  }

  result = a2 - 1776;
  if (a2 < 0x6F0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x6F9)
  {
    return result;
  }

  result = a2 - 1984;
  if (a2 < 0x7C0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x7C9)
  {
    return result;
  }

  result = a2 - 2406;
  if (a2 < 0x966)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x96F)
  {
    return result;
  }

  result = a2 - 2534;
  if (a2 < 0x9E6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0x9EF)
  {
    return result;
  }

  result = a2 - 2662;
  if (a2 < 0xA66)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA6F)
  {
    return result;
  }

  result = a2 - 2790;
  if (a2 < 0xAE6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xAEF)
  {
    return result;
  }

  result = a2 - 2918;
  if (a2 < 0xB66)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xB6F)
  {
    return result;
  }

  result = a2 - 3046;
  if (a2 < 0xBE6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xBEF)
  {
    return result;
  }

  result = a2 - 3174;
  if (a2 < 0xC66)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xC6F)
  {
    return result;
  }

  result = a2 - 3302;
  if (a2 < 0xCE6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xCEF)
  {
    return result;
  }

  result = a2 - 3430;
  if (a2 < 0xD66)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xD6F)
  {
    return result;
  }

  result = a2 - 3664;
  if (a2 < 0xE50)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xE59)
  {
    return result;
  }

  result = a2 - 3792;
  if (a2 < 0xED0)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xED9)
  {
    return result;
  }

  result = a2 - 3872;
  if (a2 < 0xF20)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xF29)
  {
    return result;
  }

  if (a2 >> 6 < 0x41)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a2 >> 1;
  if (a2 >> 1 <= 0x824)
  {
    v6 = -4160;
    return a2 + v6;
  }

  v7 = a2 >> 4;
  if (a2 >> 4 < 0x109)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0x84C)
  {
    v6 = -4240;
    return a2 + v6;
  }

  if (a2 < 0x1369)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0x9B8)
  {
    v6 = -4968;
    return a2 + v6;
  }

  if (a2 >> 5 < 0xBF)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xBF4)
  {
    v6 = -6112;
    return a2 + v6;
  }

  if (v7 < 0x181)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xC0C)
  {
    v6 = -6160;
    return a2 + v6;
  }

  if (v5 < 0xCA3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v7 <= 0x194)
  {
    v6 = -6470;
    return a2 + v6;
  }

  if (v7 < 0x19D)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xCEC)
  {
    v6 = -6608;
    return a2 + v6;
  }

  if (a2 == 6618)
  {
    return 1;
  }

  if (a2 >> 7 < 0x35)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xD44)
  {
    v6 = -6784;
    return a2 + v6;
  }

  if (v7 < 0x1A9)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xD4C)
  {
    v6 = -6800;
    return a2 + v6;
  }

  if (v7 < 0x1B5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xDAC)
  {
    v6 = -6992;
    return a2 + v6;
  }

  if (v7 < 0x1BB)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xDDC)
  {
    v6 = -7088;
    return a2 + v6;
  }

  if (a2 >> 6 < 0x71)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xE24)
  {
    v6 = -7232;
    return a2 + v6;
  }

  if (v7 < 0x1C5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 <= 0xE2C)
  {
    v6 = -7248;
    return a2 + v6;
  }

  if (a2 >> 5 < 0x531)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA629)
  {
    v6 = -42528;
    return a2 + v6;
  }

  if (v7 < 0xA8D)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA8D9)
  {
    v6 = -43216;
    return a2 + v6;
  }

  if (a2 >> 8 < 0xA9)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA909)
  {
    v6 = -43264;
    return a2 + v6;
  }

  if (v7 < 0xA9D)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xA9D9)
  {
    v6 = -43472;
    return a2 + v6;
  }

  if (v7 < 0xAA5)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 <= 0xAA59)
  {
    v6 = -43600;
    return a2 + v6;
  }

  v2 = a2 - 44016;
  v3 = a2 - 44016 >= 0xA;
LABEL_3:
  if (v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v2;
  }
}

uint64_t TLocaleInfo::stringToUInt(uint64_t DigitExtended, unsigned int *a2, unsigned int **a3)
{
  v4 = a2;
  for (i = a2 + 1; ; ++i)
  {
    v6 = *(i - 1);
    if (v6 > 159)
    {
      break;
    }

    if (v6 > 0x20 || ((1 << v6) & 0x100002600) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    ;
  }

  if (v6 >= 12288)
  {
    if (v6 != 65279 && v6 != 12288)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v6 == 160 || v6 == 8203)
  {
    goto LABEL_17;
  }

LABEL_18:
  v9 = (v6 - 48);
  if (v6 < 48 || v6 > 0x39 && (v6 < 0x660 || (DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v6), v9 = DigitExtended, DigitExtended == -1)))
  {
    v9 = 0;
  }

  else
  {
    v10 = *i;
    if (*i >= 48)
    {
      v4 = i;
      while (1)
      {
        if (v10 > 0x39)
        {
          if (v10 < 0x660)
          {
            goto LABEL_31;
          }

          DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v10);
          if (DigitExtended == -1)
          {
            goto LABEL_31;
          }
        }

        else
        {
          DigitExtended = v10 - 48;
        }

        v9 = (DigitExtended + 10 * v9);
        v11 = v4[1];
        ++v4;
        v10 = v11;
        if (v11 <= 47)
        {
          goto LABEL_31;
        }
      }
    }

    v4 = i;
  }

LABEL_31:
  *a3 = v4;
  return v9;
}

uint64_t TLocaleInfo::stringToUInt(uint64_t a1, signed int *a2, BOOL *a3)
{
  v10 = 0;
  LODWORD(result) = TLocaleInfo::stringToInt(a1, a2, &v10);
  v6 = v10;
  if (v10 == a2)
  {
    result = 0;
    *a3 = 1;
    return result;
  }

  while (1)
  {
    v7 = *v6;
    if (*v6 > 159)
    {
      break;
    }

    if (v7 > 0x20 || ((1 << v7) & 0x100002600) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    ++v6;
  }

  if (v7 >= 12288)
  {
    if (v7 != 65279 && v7 != 12288)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v7 == 160 || v7 == 8203)
  {
    goto LABEL_17;
  }

LABEL_18:
  *a3 = v7 != 0;
  if (v7)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t TLocaleInfo::stringToInt(uint64_t DigitExtended, signed int *a2, signed int **a3)
{
  for (i = a2 + 1; ; ++i)
  {
    v6 = *(i - 1);
    if (v6 <= 159)
    {
      break;
    }

    if (v6 >= 12288)
    {
      if (v6 != 65279 && v6 != 12288)
      {
        goto LABEL_17;
      }
    }

    else if (v6 != 160 && v6 != 8203)
    {
      goto LABEL_17;
    }

LABEL_14:
    ;
  }

  if (v6 > 0x2D)
  {
    goto LABEL_17;
  }

  if (((1 << v6) & 0x100002600) != 0)
  {
    goto LABEL_14;
  }

  if (((1 << v6) & 0x280000000000) != 0)
  {
    v8 = v6 == 45;
    v6 = *i;
    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  --i;
LABEL_18:
  v9 = v6 - 48;
  if (v6 < 48 || v6 > 0x39 && (v6 < 0x660 || (DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v6), v9 = DigitExtended, DigitExtended == -1)))
  {
    result = 0;
    *a3 = a2;
  }

  else
  {
    v12 = i[1];
    v11 = i + 1;
    v10 = v12;
    if (v12 >= 48)
    {
      do
      {
        if (v10 > 0x39)
        {
          if (v10 < 0x660)
          {
            break;
          }

          DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v10);
          if (DigitExtended == -1)
          {
            break;
          }
        }

        else
        {
          DigitExtended = v10 - 48;
        }

        v9 = DigitExtended + 10 * v9;
        v13 = v11[1];
        ++v11;
        v10 = v13;
      }

      while (v13 > 47);
    }

    *a3 = v11;
    if (v8)
    {
      return -v9;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

BOOL TLocaleInfo::stringToBool(uint64_t DigitExtended, uint64_t a2, void *a3)
{
  for (i = (a2 + 4); ; ++i)
  {
    v6 = *(i - 1);
    if (v6 > 159)
    {
      break;
    }

    if (v6 > 0x20 || ((1 << v6) & 0x100002600) == 0)
    {
      goto LABEL_18;
    }

LABEL_17:
    ;
  }

  if (v6 >= 12288)
  {
    if (v6 != 65279 && v6 != 12288)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v6 == 160 || v6 == 8203)
  {
    goto LABEL_17;
  }

LABEL_18:
  *a3 = i - 1;
  v9 = v6 - 48;
  if (v6 < 48 || v6 > 0x39 && (v6 < 0x660 || (DigitExtended = TLocaleInfo::getDigitExtended(DigitExtended, v6), v9 = DigitExtended, DigitExtended == -1)))
  {
    v12 = wcsncasecmp(i - 1, dword_262884B3C, 4uLL);
    v13 = *a3;
    if (v12 || (TLocaleInfo::isAlpha(v12, *(v13 + 16)) & 1) != 0)
    {
      v14 = wcsncasecmp(v13, dword_262884B50, 5uLL);
      if (v14)
      {
        goto LABEL_32;
      }

      v15 = (*a3 + 20);
      if (TLocaleInfo::isAlpha(v14, *v15))
      {
        goto LABEL_32;
      }

      result = 0;
      *a3 = v15;
    }

    else
    {
      *a3 = v13 + 16;
      return 1;
    }
  }

  else
  {
    if (v9 <= 1)
    {
      v10 = *i;
      if (*i < 48 || v10 >= 0x3A && (v10 < 0x660 || TLocaleInfo::getDigitExtended(DigitExtended, v10) == -1))
      {
        *a3 = i;
        return v9 != 0;
      }
    }

LABEL_32:
    result = 0;
    *a3 = a2;
  }

  return result;
}

uint64_t TLocaleInfo::isAlpha(uint64_t a1, signed int a2)
{
  LOBYTE(v2) = 0;
  if (BYTE1(a2) > 0x1Eu)
  {
    if (BYTE1(a2) <= 0x2Cu)
    {
      if (BYTE1(a2) == 31)
      {
        if (a2 <= 8188)
        {
          v3 = a2 - 7936;
          if (s_szTableLowercase1F00to1FFC[v3] != a2)
          {
            goto LABEL_101;
          }

          if (a2 <= 8179)
          {
            v4 = &s_szTableUppercase1F00to1FF3;
            goto LABEL_7;
          }
        }

        goto LABEL_85;
      }

      if (BYTE1(a2) != 33)
      {
        if (BYTE1(a2) != 44)
        {
          return v2 & 1;
        }

        if (a2 >> 5 != 355)
        {
          v17 = a2 != 11311 && (a2 - 11264) < 0x5F;
          v18 = (a2 - 11499) < 4 || v17;
          if ((a2 - 11392) >= 0xF)
          {
            LOBYTE(v2) = v18;
          }

          else
          {
            LOBYTE(v2) = 1;
          }

          return v2 & 1;
        }

        v9 = a2 - 11360;
        if (s_szTableLowercase2C60to2C7F[a2 - 11360] != a2)
        {
          goto LABEL_101;
        }

        v10 = &s_szTableUppercase2C60to2C76;
LABEL_49:
        v2 = v10[v9];
        goto LABEL_50;
      }

      LOBYTE(v2) = 1;
      if ((a2 - 8526) <= 0x36 && ((1 << (a2 - 78)) & 0x60000000000001) != 0)
      {
        return v2 & 1;
      }

      v12 = a2 == 8498;
    }

    else
    {
      if (BYTE1(a2) <= 0xA6u)
      {
        LOBYTE(v2) = a2 < 11558;
        v5 = (a2 - 42560) < 0x2E || (a2 - 42624) < 0x18;
        if (BYTE1(a2) != 166)
        {
          v5 = 0;
        }

        v6 = BYTE1(a2) == 45;
        goto LABEL_29;
      }

      if (BYTE1(a2) == 167)
      {
        if (vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_2628824A0, vaddq_s32(vdupq_n_s32(a2), xmmword_262882490)))))
        {
          goto LABEL_101;
        }

        v2 = 0xC001u >> (a2 - 125);
        if ((a2 - 42877) >= 0x10)
        {
          LOBYTE(v2) = 0;
        }

        return v2 & 1;
      }

      LOBYTE(v2) = (a2 - 65313) < 0x1A || (a2 - 65345) < 0x1A;
      v12 = BYTE1(a2) == 255;
    }

    if (!v12)
    {
      LOBYTE(v2) = 0;
    }

    return v2 & 1;
  }

  if (BYTE1(a2) > 3u)
  {
    if (BYTE1(a2) - 4 < 2)
    {
      LOBYTE(v2) = 1;
      if ((vmaxv_u16(vmovn_s32(vcgtq_u32(xmmword_2628824C0, vaddq_s32(vdupq_n_s32(a2), xmmword_2628824B0)))) & 1) == 0)
      {
        v13 = (a2 - 1329) < 0x26 || (a2 - 1377) < 0x26;
        if (a2 == 1231)
        {
          v13 = 1;
        }

        v14 = a2 == 1216 || v13;
        if ((a2 - 1024) >= 0x60)
        {
          LOBYTE(v2) = v14;
        }

        else
        {
          LOBYTE(v2) = 1;
        }
      }

      return v2 & 1;
    }

    LOBYTE(v2) = (a2 - 4256) < 0x26;
    v8 = a2 == 7838 || a2 == 7835;
    v5 = (a2 - 7840) < 0xFFFFFFF6 || v8;
    if (BYTE1(a2) != 30)
    {
      v5 = 0;
    }

    v6 = BYTE1(a2) == 16;
LABEL_29:
    if (!v6)
    {
      LOBYTE(v2) = v5;
    }

    return v2 & 1;
  }

  if (BYTE1(a2) > 1u)
  {
    if (BYTE1(a2) == 2)
    {
      if (a2 <= 658)
      {
        v3 = a2 - 256;
        if (s_szTableUppercase0100to0292[v3] != a2)
        {
          goto LABEL_101;
        }

        if (a2 <= 591)
        {
          v4 = s_szTableLowercase0100to024F;
          goto LABEL_7;
        }
      }
    }

    else
    {
      v9 = a2 - 880;
      if (a2 >= 880)
      {
        if (s_szTableLowercase0370to03FF[v9] != a2)
        {
          goto LABEL_101;
        }

        v10 = &s_szTableUppercase0370to03FF;
        goto LABEL_49;
      }
    }

LABEL_85:
    LOBYTE(v2) = 0;
    return v2 & 1;
  }

  if (BYTE1(a2))
  {
    v3 = a2 - 256;
    if (s_szTableLowercase0100to024F[v3] == a2)
    {
      v4 = s_szTableUppercase0100to0292;
LABEL_7:
      v2 = v4[v3];
LABEL_50:
      LOBYTE(v2) = v2 != a2;
      return v2 & 1;
    }

LABEL_101:
    LOBYTE(v2) = 1;
    return v2 & 1;
  }

  LOBYTE(v2) = (a2 & 0xFFFFFFC0) == 0xC0 && (a2 & 0xFFFFFFDF) != 215;
  if ((a2 & 0xFFFFFFDF) - 65 < 0x1A)
  {
    LOBYTE(v2) = 1;
  }

  return v2 & 1;
}

uint64_t TLocaleInfo::stringToBool(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v11 = 0;
  v5 = TLocaleInfo::stringToBool(a1, a2, &v11);
  v6 = v11;
  if (v11 != a2)
  {
    while (1)
    {
      v7 = *v6;
      if (*v6 > 159)
      {
        if (v7 >= 12288)
        {
          if (v7 != 65279 && v7 != 12288)
          {
            goto LABEL_18;
          }
        }

        else if (v7 != 160 && v7 != 8203)
        {
LABEL_18:
          *a3 = v7 != 0;
          return (v7 == 0) & v5;
        }
      }

      else if (v7 > 0x20 || ((1 << v7) & 0x100002600) == 0)
      {
        goto LABEL_18;
      }

      ++v6;
    }
  }

  result = 0;
  *a3 = 1;
  return result;
}

uint64_t TLocaleInfo::toNarrow(uint64_t a1, uint64_t a2)
{
  if (a2 == 12288)
  {
    return 32;
  }

  result = a2;
  if (a2 >= 65281)
  {
    if (a2 > 0xFF5E)
    {
      if (a2 <= 65505)
      {
        if (a2 > 65503)
        {
          if (a2 == 65504)
          {
            return 162;
          }

          else
          {
            return 163;
          }
        }

        else if (a2 == 65375)
        {
          return 10629;
        }

        else if (a2 == 65376)
        {
          return 10630;
        }
      }

      else if (a2 <= 65507)
      {
        if (a2 == 65506)
        {
          return 172;
        }

        else
        {
          return 175;
        }
      }

      else
      {
        switch(a2)
        {
          case 0xFFE4:
            return 166;
          case 0xFFE5:
            return 165;
          case 0xFFE6:
            return 8361;
        }
      }
    }

    else
    {
      return (a2 - 65248);
    }
  }

  return result;
}

uint64_t TLocaleInfo::normalizeWidth(uint64_t a1, uint64_t a2)
{
  if ((a2 - 65377) > 0x7B)
  {
    return TLocaleInfo::toNarrow(a1, a2);
  }

  else
  {
    return s_szTableNormalizeWidthFF61toFFDC[(a2 - 65377)];
  }
}

uint64_t TLocaleInfo::toWide(uint64_t a1, uint64_t a2)
{
  result = a2;
  if ((a2 - 33) <= 0x5D)
  {
    return (a2 + 65248);
  }

  if (a2 > 10628)
  {
    if (a2 == 10630)
    {
      return 65376;
    }

    if (a2 == 10629)
    {
      return 65375;
    }
  }

  else
  {
    if (a2 == 32)
    {
      return 12288;
    }

    if (a2 == 8361)
    {
      return 65510;
    }
  }

  if (a2 - 176) >= 0xFFFFFFF2 && (a2 + 94) <= 0xDu && ((0x241Bu >> (a2 + 94)))
  {
    return dword_262888258[(a2 + 94)];
  }

  return result;
}

uint64_t TLocaleInfo::isUpper(uint64_t a1, int a2)
{
  if (BYTE1(a2) > 0x1Du)
  {
    if (BYTE1(a2) <= 0x2Bu)
    {
      if (BYTE1(a2) == 30)
      {
        if (a2 >> 5 >= 0xF5)
        {
          v12 = (a2 & 1) == 0;
        }

        else
        {
          v12 = a2 == 7838;
        }

        if (a2 <= 7829)
        {
          return (a2 & 1) == 0;
        }

        else
        {
          return v12;
        }
      }

      if (BYTE1(a2) == 31)
      {
        if (a2 <= 8188)
        {
          v2 = s_szTableLowercase1F00to1FFC[a2 - 7936];
          return v2 != a2;
        }

        return 0;
      }

      v4 = a2 == 8498 || a2 == 8579;
      v5 = BYTE1(a2) == 33;
    }

    else
    {
      if (BYTE1(a2) <= 0xA6u)
      {
        if (BYTE1(a2) != 44)
        {
          v3 = (a2 - 42624) <= 0x17 && (a2 & 1) == 0;
          if ((a2 - 42560) <= 0x2D)
          {
            v4 = (a2 & 1) == 0;
          }

          else
          {
            v4 = v3;
          }

          v5 = BYTE1(a2) == 166;
          return v5 && v4;
        }

        if (a2 >> 5 != 355)
        {
          if ((a2 - 11499) <= 3)
          {
            v13 = (a2 & 1) == 0;
          }

          else
          {
            v13 = (a2 - 11264) < 0x2F;
          }

          if ((a2 - 11392) <= 0xE)
          {
            return (a2 & 1) == 0;
          }

          else
          {
            return v13;
          }
        }

        v10 = a2 - 11360;
        v11 = s_szTableLowercase2C60to2C7F;
        goto LABEL_66;
      }

      if (BYTE1(a2) == 167)
      {
        if ((a2 - 42786) > 0xD && (a2 - 42802) > 0x3D)
        {
          if ((a2 - 42873) <= 3)
          {
            return (a2 & 1) == 0;
          }

          if ((a2 - 42878) > 9)
          {
            return a2 == 42877 || a2 == 42891;
          }
        }

        return a2 & 1;
      }

      v4 = (a2 - 65313) < 0x1A;
      v5 = BYTE1(a2) == 255;
    }

    return v5 && v4;
  }

  if (BYTE1(a2) > 2u)
  {
    if (BYTE1(a2) - 4 >= 2)
    {
      if (BYTE1(a2) != 3)
      {
        v4 = (a2 - 4256) < 0x26;
        v5 = BYTE1(a2) == 16;
        return v5 && v4;
      }

      v10 = a2 - 880;
      if (a2 < 880)
      {
        return 0;
      }

      v11 = s_szTableLowercase0370to03FF;
LABEL_66:
      v2 = v11[v10];
      return v2 != a2;
    }

    if ((a2 - 1120) <= 0x21 || (a2 - 1162) <= 0x35)
    {
      return (a2 & 1) == 0;
    }

    if ((a2 - 1217) > 0xD)
    {
      if ((a2 - 1232) > 0x55)
      {
        result = 1;
        if (a2 != 1216)
        {
          return (a2 - 1024) < 0x30 || (a2 - 1329) < 0x26;
        }

        return result;
      }

      return (a2 & 1) == 0;
    }

    return a2 & 1;
  }

  if (BYTE1(a2))
  {
    if (BYTE1(a2) == 1 || a2 <= 591)
    {
      v2 = s_szTableLowercase0100to024F[a2 - 256];
      return v2 != a2;
    }

    return 0;
  }

  v9 = a2 != 215 && (a2 - 192) < 0x1F;
  return (a2 - 65) < 0x1A || v9;
}

uint64_t TLocaleInfo::isLower(uint64_t a1, int a2)
{
  result = 0;
  if (BYTE1(a2) > 0x1Eu)
  {
    if (BYTE1(a2) <= 0x2Cu)
    {
      if (BYTE1(a2) == 31)
      {
        if (a2 <= 8179)
        {
          v3 = s_szTableUppercase1F00to1FF3[a2 - 7936];
          return v3 != a2;
        }

        return 0;
      }

      if (BYTE1(a2) == 33)
      {
        return a2 == 8526 || a2 == 8580;
      }

      if (BYTE1(a2) != 44)
      {
        return result;
      }

      v9 = a2 - 11360;
      if ((a2 - 11360) <= 0x16)
      {
        v10 = &s_szTableUppercase2C60to2C76;
        goto LABEL_71;
      }

      if ((a2 - 11392) > 0xE && (a2 - 11499) > 3)
      {
        return (a2 - 11312) < 0x2F;
      }
    }

    else
    {
      if (BYTE1(a2) <= 0xA6u)
      {
        if ((a2 - 42624) <= 0x17)
        {
          v4 = a2 & 1;
        }

        else
        {
          v4 = 0;
        }

        if ((a2 - 42560) <= 0x2D)
        {
          v5 = a2 & 1;
        }

        else
        {
          v5 = v4;
        }

        if (BYTE1(a2) != 166)
        {
          v5 = 0;
        }

        if (BYTE1(a2) == 45)
        {
          return a2 < 11558;
        }

        else
        {
          return v5;
        }
      }

      if (BYTE1(a2) != 167)
      {
        v7 = (a2 - 65345) < 0x1A;
        v8 = BYTE1(a2) == 255;
LABEL_36:
        if (v8)
        {
          return v7;
        }

        else
        {
          return 0;
        }
      }

      if ((a2 - 42786) > 0xD && (a2 - 42802) > 0x3D)
      {
        if ((a2 - 42873) > 3)
        {
          if ((a2 - 42878) <= 9)
          {
            return a2 & 1;
          }

          return a2 == 42892;
        }

        return (a2 & 1) == 0;
      }
    }

    return a2 & 1;
  }

  if (BYTE1(a2) > 2u)
  {
    if (BYTE1(a2) - 4 >= 2)
    {
      if (BYTE1(a2) != 3)
      {
        if (a2 >> 5 >= 0xF5)
        {
          v6 = a2 & 1;
        }

        else
        {
          v6 = a2 == 7835;
        }

        if (a2 <= 7829)
        {
          v7 = a2 & 1;
        }

        else
        {
          v7 = v6;
        }

        v8 = BYTE1(a2) == 30;
        goto LABEL_36;
      }

      v9 = a2 - 880;
      if (a2 < 880)
      {
        return 0;
      }

      v10 = &s_szTableUppercase0370to03FF;
LABEL_71:
      v3 = v10[v9];
      return v3 != a2;
    }

    if ((a2 - 1120) > 0x21 && (a2 - 1162) > 0x35)
    {
      if ((a2 - 1217) > 0xD)
      {
        if ((a2 - 1232) > 0x55)
        {
          result = 1;
          if (a2 != 1231)
          {
            return (a2 - 1072) < 0x30 || (a2 - 1377) < 0x26;
          }

          return result;
        }

        return a2 & 1;
      }

      return (a2 & 1) == 0;
    }

    return a2 & 1;
  }

  if (BYTE1(a2))
  {
    if (BYTE1(a2) == 1 || a2 <= 658)
    {
      v3 = s_szTableUppercase0100to0292[a2 - 256];
      return v3 != a2;
    }

    return 0;
  }

  v12 = a2 != 247 && (a2 - 223) < 0x21;
  return (a2 - 97) < 0x1A || v12;
}

uint64_t TLocaleInfo::toUpper(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 <= 127)
  {
    if (a2 == 105 && (*(a1 + 80) & 1) != 0)
    {
      return 304;
    }

    else
    {
      return __toupper(a2);
    }
  }

  if (!TLocaleInfo::isLower(a1, a2))
  {
    return v2;
  }

  if (BYTE1(v2) > 0x1Eu)
  {
    if (BYTE1(v2) <= 0x2Cu)
    {
      if (BYTE1(v2) == 31)
      {
        if (v2 >> 2 <= 0x7FC)
        {
          return s_szTableUppercase1F00to1FF3[v2 - 7936];
        }

        return v2;
      }

      if (BYTE1(v2) == 33)
      {
        if (v2 == 8526)
        {
          return 8498;
        }

        if (v2 == 8580)
        {
          return 8579;
        }

        return v2;
      }

      if (BYTE1(v2) != 44)
      {
        return v2;
      }

      v5 = v2 - 11360;
      if ((v2 - 11360) <= 0x16)
      {
        v6 = &s_szTableUppercase2C60to2C76;
        return v6[v5];
      }

      if ((v2 - 11392) <= 0xE)
      {
        v4 = 11406;
        return v2 & v4;
      }

      if ((v2 - 11499) <= 3)
      {
        v4 = 11502;
        return v2 & v4;
      }

      if ((v2 - 11312) > 0x2E)
      {
        return v2;
      }

      return (v2 - 48);
    }

    if (BYTE1(v2) > 0xA6u)
    {
      if (BYTE1(v2) != 167)
      {
        if (BYTE1(v2) != 255 || (v2 - 65345) > 0x19)
        {
          return v2;
        }

        return (v2 - 32);
      }

      if ((v2 - 42786) <= 0xD)
      {
        v4 = 42798;
        return v2 & v4;
      }

      if ((v2 - 42802) <= 0x3D)
      {
        v4 = 42878;
        return v2 & v4;
      }

      if ((v2 - 42873) <= 3)
      {
        return v2 + (v2 & 1) - 1;
      }

      if ((v2 - 42878) > 9)
      {
        if (v2 == 42892)
        {
          return 42891;
        }

        return v2;
      }

      v4 = 43006;
    }

    else
    {
      if (BYTE1(v2) == 45)
      {
        if ((v2 - 11520) <= 0x25)
        {
          return (v2 - 7264);
        }

        return v2;
      }

      if (BYTE1(v2) != 166)
      {
        return v2;
      }

      if ((v2 - 42560) > 0x2D)
      {
        if ((v2 - 42624) > 0x17)
        {
          return v2;
        }

        v4 = 42654;
      }

      else
      {
        v4 = 42622;
      }
    }

    return v2 & v4;
  }

  if (BYTE1(v2) > 2u)
  {
    if (BYTE1(v2) - 4 >= 2)
    {
      if (BYTE1(v2) != 3)
      {
        if (BYTE1(v2) == 30)
        {
          if (v2 >> 1 > 0xF4A)
          {
            if (v2 == 7835)
            {
              return 7776;
            }

            else if (v2 >> 5 >= 0xF5)
            {
              return v2 & 0x7FFFFFFE;
            }
          }

          else
          {
            return v2 & 0x1FFE;
          }
        }

        return v2;
      }

      v5 = v2 - 880;
      if (v2 < 0x370)
      {
        return v2;
      }

      v6 = &s_szTableUppercase0370to03FF;
      return v6[v5];
    }

    if ((v2 - 1120) <= 0x21)
    {
      v4 = 1278;
      return v2 & v4;
    }

    if ((v2 - 1162) <= 0x35)
    {
      v4 = 1214;
      return v2 & v4;
    }

    if ((v2 - 1217) > 0xD)
    {
      if ((v2 - 1232) <= 0x55)
      {
        v4 = 1534;
        return v2 & v4;
      }

      if ((v2 - 1072) <= 0x1F)
      {
        return (v2 - 32);
      }

      if ((v2 & 0x7FFFFFF0) == 0x450)
      {
        return (v2 - 80);
      }

      if (v2 == 1231)
      {
        return 1216;
      }

      if ((v2 - 1377) > 0x25)
      {
        return v2;
      }

      return (v2 - 48);
    }

    return v2 + (v2 & 1) - 1;
  }

  if (BYTE1(v2))
  {
    if (BYTE1(v2) == 1 || v2 <= 0x292)
    {
      return s_szTableUppercase0100to0292[v2 - 256];
    }

    return v2;
  }

  if (v2 != 247 && (v2 - 224) <= 0x1E)
  {
    return (v2 - 32);
  }

  if (v2 == 255)
  {
    return 376;
  }

  return v2;
}