uint64_t TLexicon::checkName(uint64_t a1, int *a2, char a3, unint64_t a4)
{
  v4 = a4;
  v54 = *MEMORY[0x277D85DE8];
  if (a4 == -1)
  {
    v8 = *(a1 + 336);
    ActiveConfigHandle = TParam::getActiveConfigHandle((v8 + 144));
    v4 = *(v8 + 4 * TParam::getValidConfig((v8 + 144), ActiveConfigHandle) + 304);
  }

  __s = v47;
  v46 = xmmword_26286B6F0;
  v48 = 1;
  TBuffer<wchar_t>::assign(&__s, a2);
  v11 = *(&v46 + 1);
  v10 = v46;
  if (*(&v46 + 1) >= v46)
  {
    if (v48)
    {
      LODWORD(v50) = 0;
      TBuffer<wchar_t>::insert(&__s, *(&v46 + 1), &v50, 1uLL);
      v10 = v46;
      v11 = --*(&v46 + 1);
      v12 = __s;
    }

    else
    {
      v12 = __s;
      if (!v46)
      {
LABEL_15:
        v13 = v12;
        goto LABEL_16;
      }

      __s[v46 - 1] = 0;
    }
  }

  else
  {
    v12 = __s;
    __s[*(&v46 + 1)] = 0;
  }

  if (v11 < v10)
  {
    v12[v11] = 0;
    goto LABEL_15;
  }

  if ((v48 & 1) == 0)
  {
    if (v10)
    {
      v12[v10 - 1] = 0;
    }

    goto LABEL_15;
  }

  LODWORD(v50) = 0;
  TBuffer<wchar_t>::insert(&__s, v11, &v50, 1uLL);
  v13 = __s;
  v11 = --*(&v46 + 1);
LABEL_16:
  v14 = wcschr(v13, 92);
  if (!v14)
  {
    goto LABEL_160;
  }

  v15 = v14;
  if (v11 >= v46)
  {
    if (v48)
    {
      LODWORD(v50) = 0;
      TBuffer<wchar_t>::insert(&__s, v11, &v50, 1uLL);
      v13 = __s;
      v11 = --*(&v46 + 1);
    }

    else if (v46)
    {
      v13[v46 - 1] = 0;
    }
  }

  else
  {
    v13[v11] = 0;
  }

  if (v15 == v13)
  {
    v16 = v13[1];
    if (v16 == 92 || !v16)
    {
      ++v15;
    }
  }

  if (!*v15)
  {
LABEL_160:
    if (*v12)
    {
      LODWORD(v17) = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_32;
    }

    goto LABEL_117;
  }

  if (v11 >= v46)
  {
    if (v48)
    {
      LODWORD(v50) = 0;
      TBuffer<wchar_t>::insert(&__s, v11, &v50, 1uLL);
      v13 = __s;
      v11 = --*(&v46 + 1);
    }

    else if (v46)
    {
      v13[v46 - 1] = 0;
    }
  }

  else
  {
    v13[v11] = 0;
  }

  *v15 = 0;
  v19 = v15 + 1;
  v21 = wcschr(v19, 92);
  v20 = v21 != 0;
  if (!v21)
  {
    if (*v19)
    {
      v18 = 0;
LABEL_120:
      if (*v12)
      {
        LODWORD(v17) = 1;
      }

      else
      {
        v17 = 1;
        if (!*v19)
        {
          goto LABEL_153;
        }
      }

LABEL_32:
      v42 = v20;
      v50 = v52;
      v51 = xmmword_26286B6F0;
      v53 = 1;
      if (TLocaleInfo::unicodeToMultiByte(a1 + 240, v12, &v50))
      {
        v17 = 2;
LABEL_149:
        if (v53 == 1 && v50 != v52 && v50)
        {
          MEMORY[0x26672B1B0]();
        }

        goto LABEL_153;
      }

      if (*(&v51 + 1) >= v51)
      {
        if (v53)
        {
          v44[0] = 0;
          TBuffer<char>::insert(&v50, *(&v51 + 1), v44, 1uLL);
          --*(&v51 + 1);
        }

        else if (v51)
        {
          v50[v51 - 1] = 0;
        }
      }

      else
      {
        v50[*(&v51 + 1)] = 0;
      }

      v23 = v50;
      TSegmenter::TSegmenter(v44, v50, a1 + 240, 0);
      for (; *v23; v23 = *(v25 + 8))
      {
        Segment = TSegmenter::getSegment(v44, v23);
        v25 = Segment;
        v26 = *(Segment + 24);
        if (v26 == 5 || v4 >= 3 && *(Segment + 16))
        {
LABEL_113:
          v17 = 2;
          goto LABEL_148;
        }

        if (!v26)
        {
          v27 = **Segment;
          {
            operator new();
          }

          if (v27 <= 8202)
          {
            if (v27 != 32 && v27 != 160)
            {
              continue;
            }
          }

          else
          {
            v28 = v27 == 8203 || v27 == 65279;
            if (!v28 && v27 != 12288)
            {
              continue;
            }
          }

          if (*(&v51 + 1) >= v51)
          {
            if (v53)
            {
              v43[0] = 0;
              TBuffer<char>::insert(&v50, *(&v51 + 1), v43, 1uLL);
              --*(&v51 + 1);
            }

            else if (v51)
            {
              v50[v51 - 1] = 0;
            }
          }

          else
          {
            v50[*(&v51 + 1)] = 0;
          }

          if (v23 != v50 || **(v25 + 8))
          {
            if (*(&v51 + 1) >= v51)
            {
              if (v53)
              {
                v43[0] = 0;
                TBuffer<char>::insert(&v50, *(&v51 + 1), v43, 1uLL);
                --*(&v51 + 1);
              }

              else if (v51)
              {
                v50[v51 - 1] = 0;
              }
            }

            else
            {
              v50[*(&v51 + 1)] = 0;
            }

            if (v23 == v50 || !**(v25 + 8))
            {
              goto LABEL_113;
            }
          }
        }
      }

      if (v17)
      {
        TBuffer<char>::resize(&v50, 0);
        if (TLocaleInfo::unicodeToMultiByte(a1 + 240, v19, &v50))
        {
LABEL_112:
          v17 = 5;
          goto LABEL_148;
        }

        v29 = TBuffer<char>::c_str(&v50);
        TSegmenter::TSegmenter(v43, v29, a1 + 240, 0);
        if (*v29)
        {
          while (1)
          {
            v30 = TSegmenter::getSegment(v43, v29);
            v31 = v30;
            v32 = *(v30 + 24);
            if (v32 == 5 || v4 >= 3 && *(v30 + 16))
            {
              break;
            }

            if (!v32)
            {
              if (*(&v51 + 1) >= v51)
              {
                if (v53)
                {
                  v49 = 0;
                  v30 = TBuffer<char>::insert(&v50, *(&v51 + 1), &v49, 1uLL);
                  --*(&v51 + 1);
                }

                else if (v51)
                {
                  v50[v51 - 1] = 0;
                }
              }

              else
              {
                v50[*(&v51 + 1)] = 0;
              }

              if (v29 == v50 || !*v31[1] || (*v31)[1])
              {
                break;
              }

              v33 = **v31;
              TLocaleInfo::getGlobalLocaleInfo(v30);
              if (v33 <= 8202)
              {
                if (v33 != 32 && v33 != 160)
                {
                  break;
                }
              }

              else if (v33 != 8203 && v33 != 65279 && v33 != 12288)
              {
                break;
              }
            }

            v29 = v31[1];
            if (!*v29)
            {
              goto LABEL_124;
            }
          }

          TSegmenter::~TSegmenter(v43);
          goto LABEL_112;
        }

LABEL_124:
        TSegmenter::~TSegmenter(v43);
      }

      if (v42)
      {
        TBuffer<char>::resize(&v50, 0);
        if (TLocaleInfo::unicodeToMultiByte(a1 + 240, v18, &v50))
        {
LABEL_145:
          v17 = 3;
LABEL_148:
          TSegmenter::~TSegmenter(v44);
          goto LABEL_149;
        }

        v34 = TBuffer<char>::c_str(&v50);
        TSegmenter::TSegmenter(v43, v34, a1 + 240, 0);
        if (*v34)
        {
          while (1)
          {
            v35 = TSegmenter::getSegment(v43, v34);
            v36 = v35;
            v37 = *(v35 + 24);
            if (v37 == 5 || v4 >= 3 && (*(v35 + 16) & 0xFFFFFFFFFFFFFFFBLL) != 0)
            {
              break;
            }

            if (!v37)
            {
              v38 = TBuffer<char>::c_str(&v50);
              if (v34 == v38 || !*v36[1] || (*v36)[1])
              {
                break;
              }

              v39 = **v36;
              TLocaleInfo::getGlobalLocaleInfo(v38);
              if (v39 <= 8202)
              {
                if (v39 != 32 && v39 != 160)
                {
                  break;
                }
              }

              else if (v39 != 8203 && v39 != 65279 && v39 != 12288)
              {
                break;
              }
            }

            v34 = v36[1];
            if (!*v34)
            {
              goto LABEL_146;
            }
          }

          TSegmenter::~TSegmenter(v43);
          goto LABEL_145;
        }

LABEL_146:
        TSegmenter::~TSegmenter(v43);
      }

      v17 = 0;
      goto LABEL_148;
    }

LABEL_117:
    v17 = 1;
    goto LABEL_153;
  }

  v22 = v21;
  if (v11 >= v46)
  {
    if (v48)
    {
      LODWORD(v50) = 0;
      TBuffer<wchar_t>::insert(&__s, v11, &v50, 1uLL);
      --*(&v46 + 1);
    }

    else if (v46)
    {
      v13[v46 - 1] = 0;
    }
  }

  else
  {
    v13[v11] = 0;
  }

  *v22 = 0;
  v18 = (v22 + 1);
  if (wcschr(v22 + 1, 92))
  {
    goto LABEL_117;
  }

  v17 = 1;
  if (*v18 && (a3 & 1) == 0)
  {
    goto LABEL_120;
  }

LABEL_153:
  if (v48 == 1 && __s != v47 && __s)
  {
    MEMORY[0x26672B1B0]();
  }

  v40 = *MEMORY[0x277D85DE8];
  return v17;
}

void sub_2625ECAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  MEMORY[0x26672B1B0](a11, 0x1070C40ADD13FEBLL);
  TSegmenter::~TSegmenter(&a28);
  if (LOBYTE(STACK[0x648]) == 1)
  {
    v44 = STACK[0x530];
    if (STACK[0x530] != a9)
    {
      if (v44)
      {
        MEMORY[0x26672B1B0](v44, 0x1000C4077774924);
      }
    }
  }

  if (LOBYTE(STACK[0x520]) == 1 && a42 != v42)
  {
    if (a42)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TBuffer<char>::c_str(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 >= v3)
  {
    if (*(a1 + 280))
    {
      v5 = 0;
      TBuffer<char>::insert(a1, v2, &v5, 1uLL);
      --*(a1 + 16);
    }

    else if (v3)
    {
      *(*a1 + v3 - 1) = 0;
    }
  }

  else
  {
    *(*a1 + v2) = 0;
  }

  return *a1;
}

uint64_t TLexicon::findWord(void *a1, __int32 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  ++a1[41];
  ++a1[57];
  v8[0] = a2;
  v8[1] = 0;
  THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::find((a1 + 25), v8, &v9);
  if (*(&v10 + 1) && (v4 = *(*(&v10 + 1) + 16)) != 0)
  {
    *(v4 + 24) = a1[41];
    ++a1[60];
  }

  else
  {
    v9 = v11;
    v10 = xmmword_26286B6F0;
    v12 = 1;
    TLocaleInfo::unicodeToMultiByte((a1 + 30), a2, &v9);
    v5 = a1[13];
    if (*(&v10 + 1) >= v10)
    {
      if (v12)
      {
        LOBYTE(v8[0]) = 0;
        TBuffer<char>::insert(&v9, *(&v10 + 1), v8, 1uLL);
        --*(&v10 + 1);
      }

      else if (v10)
      {
        *(v9 + v10 - 1) = 0;
      }
    }

    else
    {
      *(v9 + *(&v10 + 1)) = 0;
    }

    if (SDWord_GetHandle(v5, v9) != -1)
    {
      wcslen(a2);
      operator new[]();
    }

    v4 = 0;
    if (v12 == 1 && v9 != v11 && v9)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_2625ECE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  MEMORY[0x26672B1B0](v51, 0x10F0C4030D8D1E0);
  if (a51 == 1 && a16 != v52)
  {
    if (a16)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TLexicon::findHeadClonesCollated(void *a1, __int32 *a2, int *a3, size_t a4, size_t a5, uint64_t a6)
{
  v11 = wcslen(a2);
  v26 = v28;
  v27 = xmmword_26286B6F0;
  v29 = 1;
  v12 = TLexicon::collationSearch(a1, a2);
  v13 = v12;
  if (v12[1])
  {
    v14 = (v12 + 3);
    do
    {
      v15 = *v14;
      v16 = TLexicon::applyMask((*v14)[1], (*v14)[2], a3, *v14 + 4);
      if (!v16)
      {
        TLexicon::getWrittenForm(v16, *v15, &v26);
        if (*(&v27 + 1) >= v27)
        {
          if (v29)
          {
            LODWORD(v23) = 0;
            TBuffer<wchar_t>::insert(&v26, *(&v27 + 1), &v23, 1uLL);
            v17 = v26;
            --*(&v27 + 1);
          }

          else
          {
            v17 = v26;
            if (v27)
            {
              v26[v27 - 1] = 0;
            }
          }
        }

        else
        {
          v17 = v26;
          v26[*(&v27 + 1)] = 0;
        }

        TLexiconScore::TLexiconScore(&v23, a2, v17, a4, a5, (a1 + 30));
        v18 = v23;
        v19 = BYTE8(v23);
        *&v23 = v15;
        *(&v23 + 1) = v11;
        v24 = v18;
        v25 = v19;
        std::vector<TLexiconMatch>::push_back[abi:ne200100](a6, &v23);
      }

      ++v14;
    }

    while (v14 != &v13[v13[1] + 3]);
  }

  v20 = *(v13 + 16);
  if (v29 == 1 && v26 != v28 && v26)
  {
    MEMORY[0x26672B1B0]();
  }

  return v20;
}

void sub_2625ED14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (LOBYTE(STACK[0x450]) == 1 && a16 != a10 && a16 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void *TLexicon::collationSearch(void *a1, unsigned int *a2)
{
  ++a1[41];
  ++a1[58];
  v27 = v29;
  v28 = xmmword_26286B6F0;
  v30 = 1;
  TCollation::collate(a1 + 32, a2, &v27);
  v20 = v27;
  *&v21 = 0;
  THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::find((a1 + 17), &v20, &v25);
  if (!v26)
  {
    memset(v24, 0, sizeof(v24));
    if (!wcschr(a2, 92) || !wcscmp(a2, &unk_262873564))
    {
      if (a1[14] == a1[15])
      {
        TLexicon::collationSearchInternal(a1, a2, v24, 0, 0, 0);
      }

      else
      {
        v21 = xmmword_26286B6F0;
        v23 = 1;
        v19 = 100;
        v20 = v22;
        TLexicon::collationSearchRec(a1, a2, v24, &v20, &v19);
        if (!v19)
        {
          loggableUnicode(a2, &__p);
          v14 = v18 >= 0 ? &__p : __p;
          tknPrintf("Warning: '%s' : Ran over 100 voc searches due to mismatched collation tables. Giving up.\n", v10, v11, v12, v13, v14);
          if (v18 < 0)
          {
            operator delete(__p);
          }
        }

        if (v23 == 1 && v20 != v22 && v20)
        {
          MEMORY[0x26672B1B0]();
        }
      }
    }

    operator new[]();
  }

  v4 = *(v26 + 16);
  v5 = a1[41];
  *v4 = v5;
  v6 = v4[1];
  if (v6)
  {
    v7 = 8 * v6;
    v8 = v4 + 3;
    do
    {
      v9 = *v8++;
      *(v9 + 24) = v5;
      v7 -= 8;
    }

    while (v7);
  }

  ++a1[61];
  if (v30 == 1 && v27 != v29 && v27 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  return v4;
}

void sub_2625ED4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (LOBYTE(STACK[0x458]) == 1 && a20 != v21 && a20)
  {
    MEMORY[0x26672B1B0]();
  }

  v23 = STACK[0x460];
  if (STACK[0x460])
  {
    STACK[0x468] = v23;
    operator delete(v23);
  }

  if (LOBYTE(STACK[0x8A8]) == 1 && STACK[0x490] != v20 && STACK[0x490] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void std::vector<TLexiconMatch>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TLexiconMatch>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

uint64_t TLexicon::findHeadClonesCollated(void *a1, __int32 *a2, uint64_t *a3, uint64_t a4, size_t a5, size_t a6, uint64_t a7)
{
  v12 = wcslen(a2);
  v28 = v30;
  v29 = xmmword_26286B6F0;
  v31 = 1;
  v13 = TLexicon::collationSearch(a1, a2);
  v14 = v13;
  if (v13[1])
  {
    v15 = (v13 + 3);
    do
    {
      v16 = *v15;
      v17 = TLexicon::checkBits((*v15)[1], (*v15)[2], a3, a4, *v15 + 4);
      if (v17)
      {
        TLexicon::getWrittenForm(v17, *v16, &v28);
        if (*(&v29 + 1) >= v29)
        {
          if (v31)
          {
            LODWORD(v25) = 0;
            TBuffer<wchar_t>::insert(&v28, *(&v29 + 1), &v25, 1uLL);
            v18 = v28;
            --*(&v29 + 1);
          }

          else
          {
            v18 = v28;
            if (v29)
            {
              v28[v29 - 1] = 0;
            }
          }
        }

        else
        {
          v18 = v28;
          v28[*(&v29 + 1)] = 0;
        }

        TLexiconScore::TLexiconScore(&v25, a2, v18, a5, a6, (a1 + 30));
        v19 = v25;
        v20 = BYTE8(v25);
        *&v25 = v16;
        *(&v25 + 1) = v12;
        v26 = v19;
        v27 = v20;
        std::vector<TLexiconMatch>::push_back[abi:ne200100](a7, &v25);
      }

      ++v15;
    }

    while (v15 != &v14[v14[1] + 3]);
  }

  v21 = *(v14 + 16);
  if (v31 == 1 && v28 != v30 && v28)
  {
    MEMORY[0x26672B1B0]();
  }

  return v21;
}

void sub_2625ED814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (LOBYTE(STACK[0x450]) == 1 && a16 != a9 && a16 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

void TLexicon::findHeadClonesCollatedPrefix(void *a1, char *a2, TSegmenter *this, int *a4, size_t a5, size_t a6, uint64_t a7)
{
  v9 = a2;
  v40 = 0;
  *v51 = v53;
  v52 = xmmword_26286B6F0;
  v54 = 1;
  v47 = v49;
  v48 = xmmword_26286B6F0;
  v50 = 1;
  while (1)
  {
    Segment = TSegmenter::getSegment(this, v9);
    v12 = Segment;
    if (!Segment)
    {
      break;
    }

    v13 = *(Segment + 24);
    if (v13 == 5)
    {
      break;
    }

    v9 = *(Segment + 8);
    if (v13)
    {
      v14 = 0;
      v15 = *Segment;
        ;
      }

      TBuffer<wchar_t>::insert(v51, *(&v52 + 1), v15, v14 - 1);
LABEL_8:
      if (*(&v52 + 1) > 0xFFuLL)
      {
        break;
      }

      if (*(&v52 + 1) >= v52)
      {
        if (v54)
        {
          LODWORD(__p) = 0;
          TBuffer<wchar_t>::insert(v51, *(&v52 + 1), &__p, 1uLL);
          v17 = *v51;
          --*(&v52 + 1);
        }

        else
        {
          v17 = *v51;
          if (v52)
          {
            *(*v51 + 4 * v52 - 4) = 0;
          }
        }
      }

      else
      {
        v17 = *v51;
        *(*v51 + 4 * *(&v52 + 1)) = 0;
      }

      v20 = TLexicon::collationSearch(a1, v17);
      if (!v20[1])
      {
        goto LABEL_72;
      }

      v21 = *(*v51 + 4 * *(&v52 + 1) - 4);
      {
        operator new();
      }

      if (v21 <= 8202)
      {
        if (v21 == 32 || v21 == 160)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v22 = v21 == 8203 || v21 == 65279;
        if (v22 || v21 == 12288)
        {
LABEL_35:
          loggableUnicode(*v20[3], &__p);
          p_p = &__p;
          if (v45 < 0)
          {
            p_p = __p;
          }

          tknPrintf("Warning: '%s' : found a match that ends with a space. Ignored.\n", v23, v24, v25, v26, p_p);
          if (SHIBYTE(v45) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_72;
        }
      }

      if (v20[1])
      {
        v31 = (v20 + 3);
        do
        {
          v32 = *v31;
          v33 = TLexicon::applyMask((*v31)[1], (*v31)[2], a4, *v31 + 4);
          if (!v33)
          {
            TLexicon::getWrittenForm(v33, *v32, &v47);
            if (*(&v52 + 1) >= v52)
            {
              if (v54)
              {
                LODWORD(__p) = 0;
                TBuffer<wchar_t>::insert(v51, *(&v52 + 1), &__p, 1uLL);
                v34 = *v51;
                --*(&v52 + 1);
              }

              else
              {
                v34 = *v51;
                if (v52)
                {
                  *(*v51 + 4 * v52 - 4) = 0;
                }
              }
            }

            else
            {
              v34 = *v51;
              *(*v51 + 4 * *(&v52 + 1)) = 0;
            }

            if (*(&v48 + 1) >= v48)
            {
              if (v50)
              {
                LODWORD(__p) = 0;
                TBuffer<wchar_t>::insert(&v47, *(&v48 + 1), &__p, 1uLL);
                v35 = v47;
                --*(&v48 + 1);
              }

              else
              {
                v35 = v47;
                if (v48)
                {
                  v47[v48 - 1] = 0;
                }
              }
            }

            else
            {
              v35 = v47;
              v47[*(&v48 + 1)] = 0;
            }

            TLexiconScore::TLexiconScore(&__p, v34, v35, a5, a6, (a1 + 30));
            v36 = __p;
            v37 = BYTE8(__p);
            *&__p = v32;
            *(&__p + 1) = v9 - a2;
            v45 = v36;
            v46 = v37;
            std::vector<TLexiconMatch>::push_back[abi:ne200100](a7, &__p);
          }

          ++v31;
        }

        while (v31 != &v20[v20[1] + 3]);
      }

LABEL_72:
      if ((v20[2] & 1) == 0)
      {
        break;
      }
    }

    else
    {
      if (!*(&v52 + 1))
      {
        break;
      }

      v18 = *Segment;
      v19 = **Segment;
      if (v19 == 9)
      {
        break;
      }

      if (*(*v51 + 4 * *(&v52 + 1) - 4) == 32)
      {
        goto LABEL_42;
      }

      {
        operator new();
      }

      if (v19 <= 8202)
      {
        if (v19 == 32 || v19 == 160)
        {
LABEL_41:
          v18 = *v12;
          if (wcslen(*v12) > 2)
          {
            break;
          }

          goto LABEL_42;
        }
      }

      else if (v19 == 8203 || v19 == 12288 || v19 == 65279)
      {
        goto LABEL_41;
      }

      v18 = *v12;
LABEL_42:
      v28 = *v18;
      {
        operator new();
      }

      if (v28 != 13 && v28 != 10)
      {
        goto LABEL_53;
      }

      if (v40)
      {
        break;
      }

      v40 = 1;
      if (*(*v51 + 4 * *(&v52 + 1) - 4) != 45)
      {
        v30 = TSegmenter::getSegment(this, v9);
        if (!v30 || *(v30 + 24) == 5)
        {
          break;
        }

        v40 = 1;
        if (**v30 != 45)
        {
LABEL_53:
          if (*(*v51 + 4 * *(&v52 + 1) - 4) != 32)
          {
            TBuffer<wchar_t>::insert(v51, *(&v52 + 1), &unk_26287355C, 1uLL);
            goto LABEL_8;
          }
        }
      }
    }
  }

  if (v50 == 1 && v47 != v49 && v47 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v54 == 1 && *v51 != v53)
  {
    if (*v51)
    {
      MEMORY[0x26672B1B0]();
    }
  }
}

void sub_2625EDE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  MEMORY[0x26672B1B0](v22, 0x1070C40ADD13FEBLL);
  if (LOBYTE(STACK[0x480]) == 1 && a22 != a12 && a22 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x8A0]) == 1)
  {
    v25 = STACK[0x488];
    if (STACK[0x488] != a13)
    {
      if (v25)
      {
        MEMORY[0x26672B1B0](v25, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

uint64_t TLexicon::getPronCount(void *a1, __int32 *a2)
{
  result = TLexicon::findWord(a1, a2);
  if (result)
  {
    SDWord_GetInfo(a1[13], *(result + 16), v4);
    return (v4[1] + v4[0]);
  }

  return result;
}

void std::vector<std::string>::resize(std::vector<std::wstring> *this, std::vector<std::wstring>::size_type __sz)
{
  end = this->__end_;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
  v5 = __sz >= v4;
  v6 = __sz - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::string>::__append(this, v6);
  }

  else if (!v5)
  {
    v7 = &this->__begin_[__sz];
    while (end != v7)
    {
      v8 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v8 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    this->__end_ = v7;
  }
}

BOOL TLexicon::collationSearchInternal(uint64_t a1, unsigned int *a2, void *a3, int *a4, int a5, unint64_t a6)
{
  v73 = *MEMORY[0x277D85DE8];
  v69 = v71;
  v70 = xmmword_26286B6F0;
  v72 = 1;
  TLocaleInfo::unicodeToMultiByte(a1 + 240, a2, &v69);
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v11 = *(a1 + 96);
  v10 = *(a1 + 104);
  if (*(&v70 + 1) >= v70)
  {
    if (v72)
    {
      LOBYTE(v60) = 0;
      TBuffer<char>::insert(&v69, *(&v70 + 1), &v60, 1uLL);
      --*(&v70 + 1);
    }

    else if (v70)
    {
      v69[v70 - 1] = 0;
    }
  }

  else
  {
    v69[*(&v70 + 1)] = 0;
  }

  if (a5)
  {
    v12 = &byte_262899963;
  }

  else
  {
    v12 = "\";
  }

  SDVoc_GetWords(v10, v11, v69, v12, *(a1 + 440), *(a1 + 428), &v66 + 1, &v65, &v66, callBackMRECArrayReallocator, 0, &v64);
  v60 = v62;
  v61 = xmmword_26286B6F0;
  v63 = 1;
  if (HIDWORD(v66))
  {
    v13 = 0;
    v14 = 0;
    v50 = 0;
    do
    {
      ++*(a1 + 504);
      v15 = v65[v14];
      v16 = TStringParam::get((*(a1 + 336) + 496));
      if (!TLexicon::applyMask(a1, v15, v16, 0) && (!a4 || !TLexicon::applyMask(a1, v15, a4, 0)))
      {
        if (SDWord_GetName(*(a1 + 104), v15, v68, 0x100u) < 0x101)
        {
          __p = v58;
          v57 = xmmword_26286B6F0;
          v59 = 1;
          v21 = TLocaleInfo::multiByteToUnicode(a1 + 240, v68, &__p);
          if (v21)
          {
            tknPrintf("Warning: '%s' : Can't convert to Unicode. Ignored.\n", v22, v23, v24, v25, v68);
          }

          else
          {
            if (!a6)
            {
              goto LABEL_97;
            }

            v52 = v54;
            v53 = xmmword_26286B6F0;
            v55 = 1;
            if (*(&v57 + 1) >= v57)
            {
              if (v59)
              {
                LODWORD(v67[0]) = 0;
                v21 = TBuffer<wchar_t>::insert(&__p, *(&v57 + 1), v67, 1uLL);
                v26 = __p;
                --*(&v57 + 1);
              }

              else
              {
                v26 = __p;
                if (v57)
                {
                  *(__p + v57 - 1) = 0;
                }
              }
            }

            else
            {
              v26 = __p;
              *(__p + *(&v57 + 1)) = 0;
            }

            TLexicon::getWrittenForm(v21, v26, &v52);
            v27 = *(&v53 + 1);
            if (v55 == 1 && v52 != v54 && v52)
            {
              MEMORY[0x26672B1B0]();
            }

            if (v27 <= a6)
            {
LABEL_97:
              v28 = *(&v61 + 1);
              if (!*(&v61 + 1))
              {
                TCollation::collate((a1 + 256), a2, &v60);
                v28 = *(&v61 + 1);
              }

              if (v28 >= v61)
              {
                if (v63)
                {
                  LODWORD(v52) = 0;
                  TBuffer<wchar_t>::insert(&v60, v28, &v52, 1uLL);
                  v29 = v60;
                  --*(&v61 + 1);
                }

                else
                {
                  v29 = v60;
                  if (v61)
                  {
                    v60[v61 - 1] = 0;
                  }
                }
              }

              else
              {
                v29 = v60;
                v60[v28] = 0;
              }

              if (*(&v57 + 1) >= v57)
              {
                if (v59)
                {
                  LODWORD(v52) = 0;
                  TBuffer<wchar_t>::insert(&__p, *(&v57 + 1), &v52, 1uLL);
                  v30 = __p;
                  --*(&v57 + 1);
                }

                else
                {
                  v30 = __p;
                  if (v57)
                  {
                    *(__p + v57 - 1) = 0;
                  }
                }
              }

              else
              {
                v30 = __p;
                *(__p + *(&v57 + 1)) = 0;
              }

              if (!TCollation::collprefixcmp((a1 + 256), v29, v30))
              {
                if (*(&v57 + 1) >= v57)
                {
                  if (v59)
                  {
                    LODWORD(v52) = 0;
                    TBuffer<wchar_t>::insert(&__p, *(&v57 + 1), &v52, 1uLL);
                    v31 = __p;
                    --*(&v57 + 1);
                  }

                  else
                  {
                    v31 = __p;
                    if (v57)
                    {
                      *(__p + v57 - 1) = 0;
                    }
                  }
                }

                else
                {
                  v31 = __p;
                  *(__p + *(&v57 + 1)) = 0;
                }

                v67[0] = v31;
                v67[1] = 0;
                THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::find(a1 + 200, v67, &v52);
                if (!*(&v53 + 1))
                {
                  v51 = 0;
LABEL_56:
                  operator new[]();
                }

                v32 = *(*(&v53 + 1) + 16);
                v51 = v32;
                if (!v32)
                {
                  goto LABEL_56;
                }

                if ((*(v32 + 32) & 2) != 0 || TLexicon::findHeadClone(*(v32 + 8), *v32) == v32)
                {
                  std::vector<TItnRule *>::push_back[abi:ne200100](a3, &v51);
                  ++v13;
                }

                ++v50;
              }
            }
          }

          if (v59 == 1 && __p != v58 && __p)
          {
            MEMORY[0x26672B1B0]();
          }
        }

        else
        {
          tknPrintf("Warning: The voc contains a >= %llu-byte word name, prefix is '%s'. Ignored.\n", v17, v18, v19, v20, 256, v68);
        }
      }

      ++v14;
    }

    while (v14 < HIDWORD(v66));
  }

  else
  {
    v13 = 0;
    v50 = 0;
  }

  if (v65 != *(a1 + 440))
  {
    loggableUnicode(a2, &__p);
    if (v57 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    tknPrintf("Warning: '%s' : Inefficient voc search. Required dynamic allocation of size %llu\n", v33, v34, v35, v36, p_p, v66);
    if (SHIBYTE(v57) < 0)
    {
      operator delete(__p);
    }

    v38 = *(a1 + 440);
    if (v38)
    {
      MEMORY[0x26672B190](v38, 0x80C80B8603338);
    }

    *(a1 + 440) = v65;
    *(a1 + 428) = v66;
  }

  if (v50 == v13)
  {
    v39 = (a3[1] - *a3) >> 3;
    if (v39 - v13 < v39)
    {
      v40 = -v13;
      v41 = *a3 + 8 * v39;
      do
      {
        *(*(v41 + 8 * v40) + 32) |= 1uLL;
      }

      while (!__CFADD__(v40++, 1));
    }
  }

  v43 = v64;
  if (v63 == 1 && v60 != v62 && v60 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (v72 == 1 && v69 != v71 && v69 != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  result = v43 == 1;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2625EE7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  MEMORY[0x26672B1B0](v15, 0x10F0C4030D8D1E0);
  if (LOBYTE(STACK[0x8A0]) == 1)
  {
    v17 = STACK[0x488];
    if (STACK[0x488] != v14)
    {
      if (v17)
      {
        MEMORY[0x26672B1B0](v17, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xCC0]) == 1 && STACK[0x8A8] != a13 && STACK[0x8A8] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0xF08]) == 1 && STACK[0xDF0] != a14 && STACK[0xDF0] != 0)
  {
    MEMORY[0x26672B1B0]();
  }

  _Unwind_Resume(a1);
}

uint64_t TLexicon::collationSearchRec(uint64_t a1, int *a2, void *a3, uint64_t a4, void *a5)
{
  if (!*a5)
  {
    goto LABEL_25;
  }

  v5 = a4;
  v6 = a2;
  v7 = a1;
  v8 = *a2;
  if (*a2)
  {
    while (1)
    {
      v9 = *(v7 + 112);
      v10 = *(v7 + 120) - v9;
      if (v10)
      {
        v11 = 0;
        v12 = 0;
        v13 = v10 >> 4;
        v14 = (v10 >> 4) <= 1 ? 1 : v10 >> 4;
        v37 = v9;
        v15 = v10 >> 4;
        do
        {
          v16 = wcslen(*v9);
          v17 = wcsncmp(*v9, v6, v16);
          if (v17 > 0)
          {
            break;
          }

          if (v17 == 0 && v16 > v12)
          {
            v15 = v11;
            v12 = v16;
          }

          ++v11;
          v9 += 2;
        }

        while (v14 != v11);
        v18 = v15 == v13;
        v5 = a4;
        v7 = a1;
        if (!v18)
        {
          break;
        }
      }

      v38 = v8;
      TBuffer<wchar_t>::insert(v5, *(v5 + 16), &v38, 1uLL);
      v19 = v6[1];
      ++v6;
      v8 = v19;
      if (!v19)
      {
        goto LABEL_15;
      }
    }

    v24 = v37[2 * v15 + 1];
    if (*v24)
    {
      v25 = 0;
      v26 = &v6[v12];
      v27 = *(a4 + 16);
      do
      {
        v28 = 0;
          ;
        }

        TBuffer<wchar_t>::insert(a4, *(a4 + 16), v24, v28 - 1);
        v25 |= TLexicon::collationSearchRec(a1, v26, a3, a4, a5);
        TBuffer<wchar_t>::resize(a4, v27);
        v30 = &v24[wcslen(v24)];
        v31 = v30[1];
        v24 = v30 + 1;
      }

      while (v31);
      return v25 & 1;
    }

LABEL_25:
    LOBYTE(v25) = 0;
    return v25 & 1;
  }

LABEL_15:
  --*a5;
  v21 = *(v5 + 8);
  v20 = *(v5 + 16);
  if (v20 >= v21)
  {
    v23 = a3;
    if (*(v5 + 1048))
    {
      v39 = 0;
      TBuffer<wchar_t>::insert(v5, v20, &v39, 1uLL);
      --*(v5 + 16);
      v22 = *v5;
    }

    else
    {
      v22 = *v5;
      if (v21)
      {
        v22[v21 - 1] = 0;
      }
    }
  }

  else
  {
    v22 = *v5;
    *(*v5 + 4 * v20) = 0;
    v23 = a3;
  }

  LOBYTE(v25) = TLexicon::collationSearchInternal(v7, v22, v23, 0, 0, 0);
  return v25 & 1;
}

uint64_t THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::insert@<X0>(uint64_t a1@<X0>, const __int32 **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a1 + 24);
  if (v8 == *(a1 + 16))
  {
    if (v8)
    {
      if (*(a1 + 34) == 1)
      {
        tknPrintf("Warning: hashtable resizing, size was %llu\n", a2, a3, a4, a5, *(a1 + 24));
        v8 = *(a1 + 16);
      }

      v9 = 2 * v8;
    }

    else
    {
      v9 = 10781;
    }

    THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::resize(a1, v9);
  }

  v10 = *a2;
  v11 = wcslen(*a2);
  v12 = 0;
  v13 = 4 * v11;
  if (4 * v11)
  {
    v14 = v10;
    do
    {
      v15 = *v14;
      v14 = (v14 + 1);
      v12 = 33 * v12 + v15;
      --v13;
    }

    while (v13);
  }

  v17 = *(a1 + 8);
  v16 = *(a1 + 16);
  v18 = (v17 + 8 * (v12 % v16));
  v19 = v18;
  do
  {
    v19 = *v19;
    if (!v19)
    {
      operator new();
    }

    result = wcscmp(v19[1], v10);
  }

  while (result);
  *a6 = v18;
  *(a6 + 8) = v17 + 8 * v16;
  *(a6 + 16) = v19;
  *(a6 + 24) = 0;
  return result;
}

uint64_t TLexicon::addTempWord(uint64_t a1, int *a2, int *a3, int *a4, const __int32 *a5)
{
  v20 = v22;
  v21 = xmmword_26286B6F0;
  v23 = 1;
  if (!a2 || (TBuffer<wchar_t>::assign(&v20, a2), (a2 = *(&v21 + 1)) == 0) || a3 && *a3 || a4 && *a4)
  {
    TBuffer<wchar_t>::insert(&v20, a2, &unk_262873564, 1uLL);
  }

  if (a3)
  {
    v9 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), a3, v9 - 1);
  }

  if (a4 && *a4)
  {
    TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), &unk_262873564, 1uLL);
    v11 = 0;
      ;
    }

    TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), a4, v11 - 1);
  }

  if (a5)
  {
    v13 = wcslen(a5) + 2;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 + *(&v21 + 1);
  if (v14 >> 62)
  {
    v15 = -1;
  }

  else
  {
    v15 = 4 * v14;
  }

  v16 = TAllocator::allocate((a1 + 16), v15);
  if (*(&v21 + 1) >= v21)
  {
    if (v23)
    {
      v24 = 0;
      TBuffer<wchar_t>::insert(&v20, *(&v21 + 1), &v24, 1uLL);
      v17 = v20;
      --*(&v21 + 1);
    }

    else
    {
      v17 = v20;
      if (v21)
      {
        v20[v21 - 1] = 0;
      }
    }
  }

  else
  {
    v17 = v20;
    v20[*(&v21 + 1)] = 0;
  }

  wcscpy(v16, v17);
  if (a5)
  {
    wcscpy(&v16[*(&v21 + 1) + 1], a5);
  }

  v18 = TAllocator::allocate((a1 + 16), 40);
  *v18 = v16;
  *(v18 + 8) = a1;
  *(v18 + 16) = -1;
  *(v18 + 24) = xmmword_262870070;
  if (v23 == 1 && v20 != v22 && v20)
  {
    MEMORY[0x26672B1B0]();
  }

  return v18;
}

void sub_2625EEE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10)
  {
    if (a10)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

uint64_t THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::erase(uint64_t a1, uint64_t a2)
{
  v3 = **a2;
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    do
    {
      v5 = v3;
      v3 = *v3;
    }

    while (v3 != v4);
    *v5 = *v4;
    --*(a1 + 24);
LABEL_5:
    JUMPOUT(0x26672B1B0);
  }

  **a2 = *v4;
  result = *(a2 + 16);
  --*(a1 + 24);
  if (result)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t TLexicon::cleanCache(TLexicon *this)
{
  ++*(this + 65);
  TAllocator::clear((this + 16));
  v2 = *(this + 28);
  v3 = *(this + 42);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v3 + 2576));
  result = TParam::getValidConfig((v3 + 2576), ActiveConfigHandle);
  if (v2 < *(v3 + 4 * result + 2736))
  {
    return result;
  }

  v6 = *(this + 42);
  v7 = TParam::getActiveConfigHandle((v6 + 2928));
  result = TParam::getValidConfig((v6 + 2928), v7);
  v41 = *(v6 + 4 * result + 3088);
  v8 = *(this + 41) - v41;
  v9 = *(this + 19);
  if (v9 >= 1)
  {
    v10 = *(this + 18);
    v11 = &v10[2 * v9];
    v12 = *v10;
    if (*v10)
    {
      goto LABEL_8;
    }

    v13 = v10 + 2;
    while (v13 < v11)
    {
      v14 = *v13;
      v13 += 2;
      v12 = v14;
      if (v14)
      {
        v10 = v13 - 2;
        while (1)
        {
LABEL_8:
          while (1)
          {
            result = v12[2];
            if (*result > v8)
            {
              break;
            }

            if (!v12[1] || (MEMORY[0x26672B190](v12[1], 0x1000C8052888210), v12[2]))
            {
              MEMORY[0x26672B1B0]();
            }

            v44 = v10;
            *&v45 = v11;
            *(&v45 + 1) = v12;
            v12 = *v12;
            if (!v12)
            {
              v17 = v10 + 2;
              while (1)
              {
                v10 = v17;
                if (v17 >= v11)
                {
                  break;
                }

                v17 += 2;
                v12 = *v10;
                if (*v10)
                {
                  goto LABEL_25;
                }
              }

              v12 = 0;
            }

LABEL_25:
            result = THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::erase(this + 136, &v44);
            if (!v12)
            {
              goto LABEL_26;
            }
          }

          *result -= v8;
          v12 = *v12;
          if (!v12)
          {
            break;
          }

LABEL_14:
          if (!v12)
          {
            goto LABEL_26;
          }
        }

        v15 = v10 + 2;
        while (v15 < v11)
        {
          v16 = *v15;
          v15 += 2;
          v12 = v16;
          if (v16)
          {
            v10 = v15 - 2;
            goto LABEL_14;
          }
        }

        break;
      }
    }
  }

LABEL_26:
  v18 = *(this + 27);
  if (v18 < 1)
  {
    goto LABEL_75;
  }

  v19 = *(this + 26);
  v20 = &v19[v18];
  v21 = *v19;
  if (!*v19)
  {
    v22 = v19 + 1;
    do
    {
      if (v22 >= v20)
      {
        goto LABEL_75;
      }

      v23 = *v22++;
      v21 = v23;
    }

    while (!v23);
    v19 = v22 - 1;
  }

  v40 = v8;
  while (1)
  {
    v24 = v21[2];
    v25 = *(v24 + 24);
    v26 = v25 > v8;
    v27 = v25 - v8;
    if (!v26)
    {
      v44 = v46;
      v45 = xmmword_26286B6F0;
      v47 = 1;
      TLexicon::getTokenName(result, *v24, &v44);
      if (*(&v45 + 1) >= v45)
      {
        if (v47)
        {
          v48[0] = 0;
          TBuffer<wchar_t>::insert(&v44, *(&v45 + 1), v48, 1uLL);
          v30 = v44;
          --*(&v45 + 1);
        }

        else
        {
          v30 = v44;
          if (v45)
          {
            v44[v45 - 1] = 0;
          }
        }
      }

      else
      {
        v30 = v44;
        v44[*(&v45 + 1)] = 0;
      }

      std::wstring::basic_string[abi:ne200100]<0>(__p, v30);
      v31 = std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::find<std::wstring>(this + 176, __p);
      if (SHIBYTE(v43) < 0)
      {
        operator delete(__p[0]);
      }

      if ((this + 184) != v31)
      {
        v32 = v31[7];
        if (*(v32 + 8))
        {
          v33 = *(&v45 + 1);
          v34 = (v32 + 24);
          do
          {
            if (v33 >= v45)
            {
              if (v47)
              {
                LODWORD(__p[0]) = 0;
                TBuffer<wchar_t>::insert(&v44, v33, __p, 1uLL);
                v35 = v44;
                v33 = --*(&v45 + 1);
              }

              else
              {
                v35 = v44;
                if (v45)
                {
                  v44[v45 - 1] = 0;
                }
              }
            }

            else
            {
              v35 = v44;
              v44[v33] = 0;
            }

            v36 = *v34++;
            *(v36 + 32) = *(v36 + 32) & 0xFFFFFFFFFFFFFFFCLL | (2 * (wcscmp(v35, *v36) == 0));
          }

          while (v34 != (v32 + 24 + 8 * *(v32 + 8)));
        }

        MEMORY[0x26672B1B0](v32, 0x1000C4057661CB1);
        std::__tree<std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TPItnRuleHandle_fake **>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TPItnRuleHandle_fake **>>>::erase(this + 22, v31);
        v8 = v40;
      }

      v37 = v21[2];
      if (!*v37 || (MEMORY[0x26672B190](*v37, 0x1000C8052888210), v21[2]))
      {
        MEMORY[0x26672B1B0]();
      }

      __p[0] = v19;
      __p[1] = v20;
      v43 = v21;
      v21 = *v21;
      if (!v21)
      {
        v38 = v19 + 1;
        while (1)
        {
          v19 = v38;
          if (v38 >= v20)
          {
            break;
          }

          ++v38;
          v21 = *v19;
          if (*v19)
          {
            goto LABEL_68;
          }
        }

        v21 = 0;
      }

LABEL_68:
      result = THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::erase(this + 200, __p);
      if (v47 == 1)
      {
        result = v44;
        if (v44 != v46 && v44 != 0)
        {
          result = MEMORY[0x26672B1B0]();
        }
      }

      goto LABEL_74;
    }

    *(v24 + 24) = v27;
    v21 = *v21;
    if (!v21)
    {
      break;
    }

LABEL_74:
    if (!v21)
    {
      goto LABEL_75;
    }
  }

  v28 = v19 + 1;
  while (v28 < v20)
  {
    v29 = *v28++;
    v21 = v29;
    if (v29)
    {
      v19 = v28 - 1;
      goto LABEL_74;
    }
  }

LABEL_75:
  *(this + 41) = v41;
  return result;
}

void sub_2625EF3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (LOBYTE(STACK[0x468]) == 1 && a19 != a10)
  {
    if (a19)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

void TLexicon::save(TLexicon *this, TDataManager *a2, FileSpec *a3)
{
  if (a3)
  {
    SDVoc_Save(*(this + 13), a3, 1u, 0, 0);
  }

  if (a2)
  {
    v5 = this + 72;
    if (*(this + 95) < 0)
    {
      v5 = *v5;
    }

    TOutputModel::TOutputModel(v22, 0, a2, v5, *(this + 43));
    TDataManager::setIntVar(a2, "LexVersion", 1);
    if (v23 >= 2)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
      TOutputStream::TOutputStream(v16, &v17, "LexParam", this + 240);
      TParamManager::save(*(this + 42), v16, 1);
      std::stringbuf::str();
      if ((v15 & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if ((v15 & 0x80u) == 0)
      {
        v7 = v15;
      }

      else
      {
        v7 = __p[1];
      }

      (*(*a2 + 48))(a2, "LexParam", v6, v7);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v17 = *MEMORY[0x277D82828];
      *(&v17 + *(v17 - 3)) = *(MEMORY[0x277D82828] + 24);
      v18 = MEMORY[0x277D82878] + 16;
      if (v20 < 0)
      {
        operator delete(v19[7].__locale_);
      }

      v18 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v19);
      std::ostream::~ostream();
      MEMORY[0x26672B160](&v21);
    }

    v17 = 0;
    v18 = 0;
    v19[0].__locale_ = 0;
    if ((*(**(this + 43) + 40))(*(this + 43), "LexCollation", 0, 0))
    {
      TDataManager::getStringVar(*(this + 43));
      if (SHIBYTE(v19[0].__locale_) >= 0)
      {
        v8 = &v17;
      }

      else
      {
        v8 = v17;
      }

      if (SHIBYTE(v19[0].__locale_) >= 0)
      {
        locale_high = HIBYTE(v19[0].__locale_);
      }

      else
      {
        locale_high = v18;
      }

      (*(*a2 + 48))(a2, "LexCollation", v8, locale_high);
    }

    if ((*(**(this + 43) + 40))(*(this + 43), "LexUpgrade", 0, 0))
    {
      TDataManager::getStringVar(*(this + 43));
      if (SHIBYTE(v19[0].__locale_) >= 0)
      {
        v10 = &v17;
      }

      else
      {
        v10 = v17;
      }

      if (SHIBYTE(v19[0].__locale_) >= 0)
      {
        v11 = HIBYTE(v19[0].__locale_);
      }

      else
      {
        v11 = v18;
      }

      (*(*a2 + 48))(a2, "LexUpgrade", v10, v11);
    }

    if ((*(**(this + 43) + 40))(*(this + 43), "LexUpgradeSpelling", 0, 0))
    {
      TDataManager::getStringVar(*(this + 43));
      if (SHIBYTE(v19[0].__locale_) >= 0)
      {
        v12 = &v17;
      }

      else
      {
        v12 = v17;
      }

      if (SHIBYTE(v19[0].__locale_) >= 0)
      {
        v13 = HIBYTE(v19[0].__locale_);
      }

      else
      {
        v13 = v18;
      }

      (*(*a2 + 48))(a2, "LexUpgradeSpelling", v12, v13);
    }

    (*(**(this + 43) + 24))(*(this + 43));
    if (SHIBYTE(v19[0].__locale_) < 0)
    {
      operator delete(v17);
    }
  }
}

void sub_2625EF880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a18, MEMORY[0x277D82828]);
  MEMORY[0x26672B160](&a35);
  _Unwind_Resume(a1);
}

uint64_t TLexicon::loadUpgradeMap(TLexicon *this, int a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 368;
  }

  else
  {
    v3 = 376;
  }

  if (!*(*(this + v3) + 8 * (a3 - *(*(this + 42) + 296))))
  {
    v6 = a3 - *(*(this + 42) + 296);
    operator new();
  }

  v4 = *MEMORY[0x277D85DE8];
  return *(*(this + v3) + 8 * (a3 - *(*(this + 42) + 296)));
}

void sub_2625F07C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, TAllocator *a15, uint64_t a16, uint64_t a17, TFileObjectParser *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  MEMORY[0x26672B1B0](v56, 0x1070C40ADD13FEBLL);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    if (a18)
    {
      TFileObjectParser::~TFileObjectParser(a18);
      MEMORY[0x26672B1B0]();
    }

    std::__tree<std::__value_type<wchar_t const*,unsigned long>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,unsigned long>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,unsigned long>>>::destroy(a19, *(a19 + 8));
    MEMORY[0x26672B1B0](a19, 0x1020C4062D53EE8);
    TAllocator::clear(a15);
    MEMORY[0x26672B1B0](a15, 0x1010C40CCBCF24ELL);
    __cxa_rethrow();
  }

  TInputStream::~TInputStream(&a33);
  std::istringstream::~istringstream(&a56);
  if (*(v57 - 193) < 0)
  {
    operator delete(*(v57 - 216));
  }

  _Unwind_Resume(a1);
}

void sub_2625F0AD4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2625F0AE0);
  }

  __clang_call_terminate(a1);
}

uint64_t TLexicon::getNGramScore(TLexicon *this, const TWord *a2, const TWord *a3, const TWord *a4, const TWord *a5, int a6)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v7 = &v24;
  if (!a2)
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v7 = v26;
  v8 = *(a2 + 2);
  if (v8 == -1)
  {
    v24 = -1;
    v25 = -1;
    if (a6)
    {
      v10 = *(this + 56);
      v24 = *(this + 13);
      v25 = v10;
    }
  }

  else
  {
    v24 = *(*(a2 + 1) + 104);
    v25 = v8;
  }

  v9 = 1;
  if (a3)
  {
LABEL_9:
    v11 = *(a3 + 2);
    if (v11 == -1)
    {
      *v7 = -1;
      v7[1] = -1;
      if (a6)
      {
        v12 = *(this + 56);
        *v7 = *(this + 13);
        v7[1] = v12;
      }
    }

    else
    {
      *v7 = *(*(a3 + 1) + 104);
      v7[1] = v11;
    }

    ++v9;
  }

LABEL_14:
  if (a4)
  {
    v13 = *(a4 + 2);
    if (v13 == -1)
    {
      v15 = &v24 + 2 * v9;
      *v15 = -1;
      v15[1] = -1;
      if (a6)
      {
        v16 = *(this + 56);
        *v15 = *(this + 13);
        v15[1] = v16;
      }
    }

    else
    {
      v14 = &v24 + 2 * v9;
      *v14 = *(*(a4 + 1) + 104);
      v14[1] = v13;
    }

    LODWORD(v9) = v9 + 1;
  }

  v22 = 0;
  v23 = 0;
  v17 = *(a5 + 2);
  if (v17 != -1)
  {
    v18 = *(*(a5 + 1) + 104);
LABEL_24:
    v22 = v18;
    v23 = v17;
    goto LABEL_25;
  }

  v22 = -1;
  v23 = -1;
  if (a6)
  {
    v18 = *(this + 13);
    v17 = *(this + 56);
    goto LABEL_24;
  }

LABEL_25:
  v21 = 0;
  SDLm_LmScore(0, 0, 0, &v24, v9, &v22, 1u, &v21, 1u, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  result = v21;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void TLexicon::mapWordSequence(void *a1, void *a2, unint64_t a3)
{
  v6 = a1[42];
  ActiveConfigHandle = TParam::getActiveConfigHandle((v6 + 144));
  TParam::getValidConfig((v6 + 144), ActiveConfigHandle);
  if (a3 >= 4)
  {
    v8 = 4;
  }

  else
  {
    v8 = a3;
  }

  *&v16 = 0;
  std::vector<TWord const*>::vector[abi:ne200100](&v14, v8);
  if (v15 != v14)
  {
    v9 = 0;
    v10 = 8 * a3 - 8;
    do
    {
      v11 = *(*a2 + v10);
      Word = TLexicon::findWord(a1, v11);
      if (!Word)
      {
        Word = TLexicon::addTempWord(a1, v11, 0, 0, 0);
      }

      *(v14 + 8 * v9++) = Word;
      v10 -= 8;
    }

    while (v9 < (v15 - v14) >> 3);
  }

  memset(v13, 0, sizeof(v13));
  std::__allocate_at_least[abi:ne200100]<std::allocator<TSegment const*>>(v13, 1uLL);
}

void sub_2625F11C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  THashBase<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THashMapCompare<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,std::equal_to<TDecodeLinkMapWord::THistory>>,THashMapFunction<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THash<TDecodeLinkMapWord::THistory>>>::~THashBase(&a32);
  v34 = *(v32 - 176);
  if (v34)
  {
    *(v32 - 168) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 152);
  if (v35)
  {
    *(v32 - 144) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void TLexicon::mapWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4, a5);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v5;
  v47 = v12;
  std::vector<TWord const*>::resize(v6, 0);
  v15 = *(v14 + 42);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v15 + 144));
  if (*(v15 + 4 * TParam::getValidConfig((v15 + 144), ActiveConfigHandle) + 304) == v11)
  {
    Word = TLexicon::findWord(v14, v13);
    if (!Word)
    {
      Word = TLexicon::addTempWord(v14, v13, 0, 0, 0);
    }

    std::vector<TWord const*>::push_back[abi:ne200100](v7, &Word);
  }

  else
  {
    UpgradeMap = TLexicon::loadUpgradeMap(v14, v9, v11);
    v18 = std::__tree<std::__value_type<wchar_t const*,wchar_t const*>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,wchar_t const*>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,wchar_t const*>>>::__equal_range_multi<wchar_t const*>(UpgradeMap, &v47);
    if (v18 == v19 || (v20 = v18, v21 = v19, LODWORD(v18) = wcscmp(v18[5], dword_2628735C4), !v18))
    {
      Word = v45;
      v44 = xmmword_26286B6F0;
      v46 = 1;
      v39 = v41;
      v40 = xmmword_26286B6F0;
      v42 = 1;
      v35 = v37;
      v36 = xmmword_26286B6F0;
      v38 = 1;
      TLexicon::getWrittenForm(v18, v47, &Word);
      getSecondField(v47, &v39);
      getThirdField(v47, &v35);
      v31 = v33;
      v32 = xmmword_26286B6F0;
      v34 = 1;
      if (*(&v44 + 1) >= v44)
      {
        if (v46)
        {
          LODWORD(v30) = 0;
          TBuffer<wchar_t>::insert(&Word, *(&v44 + 1), &v30, 1uLL);
          v25 = Word;
          --*(&v44 + 1);
        }

        else
        {
          v25 = Word;
          if (v44)
          {
            Word[v44 - 1] = 0;
          }
        }
      }

      else
      {
        v25 = Word;
        Word[*(&v44 + 1)] = 0;
      }

      if (*(&v40 + 1) >= v40)
      {
        if (v42)
        {
          LODWORD(v30) = 0;
          TBuffer<wchar_t>::insert(&v39, *(&v40 + 1), &v30, 1uLL);
          v26 = v39;
          --*(&v40 + 1);
        }

        else
        {
          v26 = v39;
          if (v40)
          {
            v39[v40 - 1] = 0;
          }
        }
      }

      else
      {
        v26 = v39;
        v39[*(&v40 + 1)] = 0;
      }

      if (*(&v36 + 1) >= v36)
      {
        if (v38)
        {
          LODWORD(v30) = 0;
          TBuffer<wchar_t>::insert(&v35, *(&v36 + 1), &v30, 1uLL);
          v27 = v35;
          --*(&v36 + 1);
        }

        else
        {
          v27 = v35;
          if (v36)
          {
            v35[v36 - 1] = 0;
          }
        }
      }

      else
      {
        v27 = v35;
        v35[*(&v36 + 1)] = 0;
      }

      TLexicon::constructWordName(v14, v25, v26, v27, 1, &v31);
      if (*(&v32 + 1) >= v32)
      {
        if (v34)
        {
          v48 = 0;
          TBuffer<wchar_t>::insert(&v31, *(&v32 + 1), &v48, 1uLL);
          v28 = v31;
          --*(&v32 + 1);
        }

        else
        {
          v28 = v31;
          if (v32)
          {
            v31[v32 - 1] = 0;
          }
        }
      }

      else
      {
        v28 = v31;
        v31[*(&v32 + 1)] = 0;
      }

      v30 = TLexicon::findWord(v14, v28);
      if (!v30)
      {
        if (*(&v32 + 1) >= v32)
        {
          if (v34)
          {
            v48 = 0;
            TBuffer<wchar_t>::insert(&v31, *(&v32 + 1), &v48, 1uLL);
            v29 = v31;
            --*(&v32 + 1);
          }

          else
          {
            v29 = v31;
            if (v32)
            {
              v31[v32 - 1] = 0;
            }
          }
        }

        else
        {
          v29 = v31;
          v31[*(&v32 + 1)] = 0;
        }

        v30 = TLexicon::addTempWord(v14, v29, 0, 0, 0);
      }

      std::vector<TWord const*>::push_back[abi:ne200100](v7, &v30);
      if (v34 == 1 && v31 != v33 && v31)
      {
        MEMORY[0x26672B1B0]();
      }

      if (v38 == 1 && v35 != v37 && v35)
      {
        MEMORY[0x26672B1B0]();
      }

      if (v42 == 1 && v39 != v41 && v39)
      {
        MEMORY[0x26672B1B0]();
      }

      if (v46 == 1 && Word != v45 && Word)
      {
        MEMORY[0x26672B1B0]();
      }
    }

    else
    {
      do
      {
        Word = TLexicon::findWord(v14, v20[5]);
        if (!Word)
        {
          Word = TLexicon::addTempWord(v14, v20[5], 0, 0, 0);
        }

        std::vector<TWord const*>::push_back[abi:ne200100](v7, &Word);
        v22 = v20[1];
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
            v23 = v20[2];
            v24 = *v23 == v20;
            v20 = v23;
          }

          while (!v24);
        }

        v20 = v23;
      }

      while (v23 != v21);
    }
  }
}

void sub_2625F1758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (LOBYTE(STACK[0x438]) == 1 && a13 != v17 && a13)
  {
    MEMORY[0x26672B1B0]();
  }

  if (LOBYTE(STACK[0x858]) == 1)
  {
    v19 = STACK[0x440];
    if (STACK[0x440] != v16)
    {
      if (v19)
      {
        MEMORY[0x26672B1B0](v19, 0x1000C4052888210);
      }
    }
  }

  if (LOBYTE(STACK[0xC78]) == 1)
  {
    v20 = STACK[0x860];
    if (STACK[0x860] != v15)
    {
      if (v20)
      {
        MEMORY[0x26672B1B0](v20, 0x1000C4052888210);
      }
    }
  }

  if (*(v14 + 1048) == 1)
  {
    v21 = STACK[0xC80];
    if (STACK[0xC80] != v13)
    {
      if (v21)
      {
        MEMORY[0x26672B1B0](v21, 0x1000C4052888210);
      }
    }
  }

  _Unwind_Resume(a1);
}

void *THashBase<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THashMapCompare<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,std::equal_to<TDecodeLinkMapWord::THistory>>,THashMapFunction<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THash<TDecodeLinkMapWord::THistory>>>::clear(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = v1[1];
      result = *(v4 + 8 * i);
      if (result)
      {
        do
        {
          v5 = *result;
          MEMORY[0x26672B1B0]();
          result = v5;
        }

        while (v5);
        v4 = v1[1];
        v2 = v1[2];
      }

      *(v4 + 8 * i) = 0;
    }
  }

  v1[3] = 0;
  return result;
}

void TDecodeLinkMapWord::computeHistory(void *a1, uint64_t a2, void *a3)
{
  v3 = 0;
  if (!a1)
  {
    goto LABEL_5;
  }

  do
  {
    v4 = v3++;
    *(a2 + 8 * v4) = *a1;
    if (v4 > 2)
    {
      break;
    }

    a1 = a1[1];
  }

  while (a1);
  if (v4 <= 2)
  {
LABEL_5:
    v5 = 0;
    v6 = 32 - 8 * v3;
    v7 = a2 + 8 * v3;
    while (v5 < (a3[1] - *a3) >> 3)
    {
      *(v7 + 8 * v5) = *(*a3 + 8 * v5);
      ++v5;
      v6 -= 8;
      if (v3 + v5 == 4)
      {
        return;
      }
    }

    if (v3 + v5 <= 3)
    {
      bzero((v7 + 8 * v5), v6);
    }
  }
}

void *THashBase<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THashMapCompare<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,std::equal_to<TDecodeLinkMapWord::THistory>>,THashMapFunction<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THash<TDecodeLinkMapWord::THistory>>>::insert@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *(a1 + 24);
  if (v8 == *(a1 + 16))
  {
    if (v8)
    {
      if (*(a1 + 34) == 1)
      {
        tknPrintf("Warning: hashtable resizing, size was %llu\n", a2, a3, a4, a5, *(a1 + 24));
        v8 = *(a1 + 16);
      }

      v9 = 2 * v8;
    }

    else
    {
      v9 = 10781;
    }

    THashBase<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THashMapCompare<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,std::equal_to<TDecodeLinkMapWord::THistory>>,THashMapFunction<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THash<TDecodeLinkMapWord::THistory>>>::resize(a1, v9);
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v11 = 33 * v11 + *(a2 + v10++);
  }

  while (v10 != 32);
  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  v14 = (v13 + 8 * (v11 % v12));
  result = v14;
  do
  {
    result = *result;
    if (!result)
    {
      operator new();
    }
  }

  while (result[1] != *a2 || result[2] != a2[1] || result[3] != a2[2] || result[4] != a2[3]);
  *a6 = v14;
  *(a6 + 8) = v13 + 8 * v12;
  *(a6 + 16) = result;
  *(a6 + 24) = 0;
  return result;
}

__int32 *getSecondField(__int32 *a1, uint64_t a2)
{
  TBuffer<wchar_t>::resize(a2, 0);
  if (*a1 != 92)
  {
LABEL_4:
    result = wcschr(a1, 92);
    a1 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = a1[1];
  if (v4 == 92)
  {
    ++a1;
  }

  else if (!v4)
  {
    goto LABEL_4;
  }

LABEL_7:
  v6 = a1 + 1;
  v7 = wcschr(v6, 92);
  if (v7)
  {
    v8 = v7 - v6;
    TBuffer<wchar_t>::resize(a2, 0);

    return TBuffer<wchar_t>::insert(a2, 0, v6, v8);
  }

  else
  {

    return TBuffer<wchar_t>::assign(a2, v6);
  }
}

__int32 *getThirdField(__int32 *a1, uint64_t a2)
{
  TBuffer<wchar_t>::resize(a2, 0);
  if (*a1 != 92)
  {
LABEL_4:
    result = wcschr(a1, 92);
    a1 = result;
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v4 = a1[1];
  if (v4 == 92)
  {
    ++a1;
  }

  else if (!v4)
  {
    goto LABEL_4;
  }

LABEL_7:
  result = wcschr(a1 + 1, 92);
  if (result)
  {

    return TBuffer<wchar_t>::assign(a2, result + 1);
  }

  return result;
}

BOOL TLexicon::constructWordName(uint64_t a1, unsigned int *a2, unsigned int *a3, int *a4, int a5, uint64_t a6)
{
  v12 = *(a1 + 336);
  ActiveConfigHandle = TParam::getActiveConfigHandle((v12 + 144));
  v14 = *(v12 + 4 * TParam::getValidConfig((v12 + 144), ActiveConfigHandle) + 304);
  TBuffer<wchar_t>::resize(a6, 0);
  if (*a2)
  {
    if (a5)
    {
      addToWordName(a2, a1 + 240, 1, 0, a6);
    }

    else
    {
      v16 = 0;
        ;
      }

      TBuffer<wchar_t>::insert(a6, *(a6 + 16), a2, v16 - 1);
    }

    v15 = 0;
    if (!*a3)
    {
LABEL_10:
      if (!*a4)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v15 = *a3 == 0;
    if (!*a3)
    {
      goto LABEL_10;
    }
  }

  v26 = 92;
  TBuffer<wchar_t>::insert(a6, *(a6 + 16), &v26, 1uLL);
  if (*a3)
  {
    if (a5)
    {
      addToWordName(a3, a1 + 240, 0, 0, a6);
    }

    else
    {
      v18 = 0;
        ;
      }

      TBuffer<wchar_t>::insert(a6, *(a6 + 16), a3, v18 - 1);
    }
  }

  if (*a4)
  {
    v27 = 92;
    TBuffer<wchar_t>::insert(a6, *(a6 + 16), &v27, 1uLL);
    if (!a5)
    {
      v21 = 0;
        ;
      }

      TBuffer<wchar_t>::insert(a6, *(a6 + 16), a4, v21 - 1);
      if (v15)
      {
        return 1;
      }

      goto LABEL_25;
    }

    addToWordName(a4, a1 + 240, 0, 1, a6);
  }

LABEL_20:
  if (v15)
  {
    return 1;
  }

LABEL_25:
  v24 = *(a6 + 8);
  v23 = *(a6 + 16);
  if (v23 >= v24)
  {
    if (*(a6 + 1048))
    {
      v28 = 0;
      TBuffer<wchar_t>::insert(a6, v23, &v28, 1uLL);
      --*(a6 + 16);
      v25 = *a6;
    }

    else
    {
      v25 = *a6;
      if (v24)
      {
        v25[v24 - 1] = 0;
      }
    }
  }

  else
  {
    v25 = *a6;
    *(*a6 + 4 * v23) = 0;
  }

  return TLexicon::checkName(a1, v25, 0, v14) != 0;
}

void addToWordName(unsigned int *a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = a1;
  v9 = *a1;
  {
    operator new();
  }

  if (v9 > 159)
  {
    if (v9 >= 12288)
    {
      if (v9 != 65279 && v9 != 12288)
      {
        goto LABEL_45;
      }
    }

    else if (v9 != 160 && v9 != 8203)
    {
      goto LABEL_45;
    }
  }

  else if (v9 > 0x20 || ((1 << v9) & 0x100002600) == 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    {
      operator new();
    }

    if (v9 <= 8202)
    {
      if (v9 != 32 && v9 != 160)
      {
        goto LABEL_45;
      }
    }

    else if (v9 != 8203 && v9 != 65279 && v9 != 12288)
    {
      goto LABEL_45;
    }
  }

  v12 = v8 + 1;
  v13 = v8[1];
  if (v13)
  {
    do
    {
      {
        operator new();
      }

      if (v13 > 159)
      {
        if (v13 >= 12288)
        {
          if (v13 != 65279 && v13 != 12288)
          {
            goto LABEL_44;
          }
        }

        else if (v13 != 160 && v13 != 8203)
        {
          goto LABEL_44;
        }
      }

      else if (v13 > 0x20 || ((1 << v13) & 0x100002600) == 0)
      {
        goto LABEL_44;
      }

      v14 = v12[1];
      ++v12;
      v13 = v14;
    }

    while (v14);
  }

  if ((a3 & 1) == 0)
  {
    v13 = 0;
LABEL_44:
    v9 = v13;
    v8 = v12;
  }

LABEL_45:
  v24 = *(a2 + 72);
  if (v24 >= 3)
  {
    {
      operator new();
    }

    v9 = TLocaleInfo::normalizeWidth(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v9);
  }

  v22 = *(a5 + 16);
  if (v9)
  {
    v23 = *(a5 + 16);
    while (1)
    {
      v16 = v8[1];
      ++v8;
      v15 = v16;
      if ((a3 & 1) == 0)
      {
        {
          operator new();
        }

        if (v9 > 159)
        {
          if (v9 >= 12288)
          {
            if (v9 == 65279 || v9 == 12288)
            {
LABEL_62:
              if (v15)
              {
                do
                {
                  {
                    operator new();
                  }

                  if (v15 > 159)
                  {
                    if (v15 >= 12288)
                    {
                      if (v15 != 65279 && v15 != 12288)
                      {
                        break;
                      }
                    }

                    else if (v15 != 160 && v15 != 8203)
                    {
                      break;
                    }
                  }

                  else if (v15 > 0x20 || ((1 << v15) & 0x100002600) == 0)
                  {
                    break;
                  }

                  v17 = v8[1];
                  ++v8;
                  v15 = v17;
                }

                while (v17);
              }
            }
          }

          else if (v9 == 160 || v9 == 8203)
          {
            goto LABEL_62;
          }
        }

        else if (v9 <= 0x20 && ((1 << v9) & 0x100002600) != 0)
        {
          goto LABEL_62;
        }
      }

      if (v24 < 3)
      {
        v18 = v9;
      }

      else
      {
        if (v15)
        {
          while (1)
          {
            v18 = v9;
            v19 = TLocaleInfo::composeCharacter(a2, v9, v15);
            if (!v19)
            {
              break;
            }

            v9 = v19;
            if (v15 >= 1611 && a4 && (v15 < 0x660 || (v15 & 0x7FFFFFFB) == 0x670))
            {
              break;
            }

            v20 = v8[1];
            ++v8;
            v15 = v20;
            if (!v20)
            {
              goto LABEL_86;
            }
          }
        }

        else
        {
LABEL_86:
          v18 = v9;
        }

        {
          operator new();
        }

        v15 = TLocaleInfo::normalizeWidth(TLocaleInfo::getGlobalLocaleInfo(void)::s_localeInfo, v15);
      }

      v9 = v15;
      v26 = v18;
      TBuffer<wchar_t>::insert(a5, *(a5 + 16), &v26, 1uLL);
      {
        operator new();
      }

      if (v18 > 159)
      {
        if (v18 >= 12288)
        {
          if (v18 == 12288)
          {
            goto LABEL_101;
          }

          v21 = 65279;
        }

        else
        {
          if (v18 == 160)
          {
            goto LABEL_101;
          }

          v21 = 8203;
        }

        if (v18 == v21)
        {
          goto LABEL_101;
        }

LABEL_103:
        v23 = *(a5 + 16);
        if (!v15)
        {
          goto LABEL_112;
        }
      }

      else
      {
        if (v18 > 0x20 || ((1 << v18) & 0x100002600) == 0)
        {
          goto LABEL_103;
        }

LABEL_101:
        if (!v15)
        {
          goto LABEL_112;
        }
      }
    }
  }

  v23 = *(a5 + 16);
LABEL_112:
  if (!a3 || v23 > v22)
  {
    TBuffer<wchar_t>::resize(a5, v23);
  }
}

void sub_2625F2480(_Unwind_Exception *a1)
{
  MEMORY[0x26672B1B0](v1, 0x1070C40ADD13FEBLL);
  _Unwind_Resume(a1);
}

uint64_t TBuffer<wchar_t>::operator+=(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4 >= v5)
  {
    if (*(a2 + 1048))
    {
      v8 = 0;
      TBuffer<wchar_t>::insert(a2, v4, &v8, 1uLL);
      v4 = *(a2 + 16) - 1;
      *(a2 + 16) = v4;
      v6 = *a2;
    }

    else
    {
      v6 = *a2;
      if (v5)
      {
        v6[v5 - 1] = 0;
      }
    }
  }

  else
  {
    v6 = *a2;
    *(*a2 + 4 * v4) = 0;
  }

  TBuffer<wchar_t>::insert(a1, *(a1 + 16), v6, v4);
  return a1;
}

uint64_t respellRoot(uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 >= v5)
  {
    if (*(a1 + 1048))
    {
      v18 = 0;
      TBuffer<wchar_t>::insert(a1, v4, &v18, 1uLL);
      --*(a1 + 16);
      v6 = *a1;
    }

    else
    {
      v6 = *a1;
      if (v5)
      {
        v6[v5 - 1] = 0;
      }
    }
  }

  else
  {
    v6 = *a1;
    *(*a1 + 4 * v4) = 0;
  }

  if (!wcscmp(v6, dword_2628735F4))
  {
    return 1;
  }

  StressPosition = findStressPosition(a2, 0);
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v8 >= v9)
  {
    if (*(a1 + 1048))
    {
      v19 = 0;
      TBuffer<wchar_t>::insert(a1, v8, &v19, 1uLL);
      --*(a1 + 16);
      v10 = *a1;
    }

    else
    {
      v10 = *a1;
      if (v9)
      {
        v10[v9 - 1] = 0;
      }
    }
  }

  else
  {
    v10 = *a1;
    *(*a1 + 4 * v8) = 0;
  }

  v11 = findStressPosition(v10, 1);
  if (StressPosition >= *(a1 + 16))
  {
    return 0;
  }

  v12 = *a1;
  v13 = *(*a1 + 4 * StressPosition);
  if (StressPosition == v11)
  {
    v14 = s_pszAccentedVowels;
    v15 = wcschr(s_pszAccentedVowels, v13);
    if (v15)
    {
      v16 = s_pszUnaccentedVowels;
LABEL_21:
      v12[StressPosition] = *(v16 + v15 - v14);
    }
  }

  else
  {
    v14 = s_pszUnaccentedVowels;
    v15 = wcschr(s_pszUnaccentedVowels, v13);
    if (v15)
    {
      v16 = s_pszAccentedVowels;
      goto LABEL_21;
    }
  }

  return 1;
}

uint64_t findStressPosition(int *a1, int a2)
{
  v4 = *a1;
  if (!*a1)
  {
    v7 = 0;
LABEL_7:
    v8 = 0;
    v9 = 1;
    goto LABEL_8;
  }

  v5 = 0;
  while (1)
  {
    v6 = wcschr(s_pszAccentedVowels, v4);
    if (v6)
    {
      break;
    }

    v7 = v5 + 1;
    v4 = a1[++v5];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (a2)
  {
    v8 = v6;
    v9 = 0;
    v7 = v5;
LABEL_8:
    v18 = v20;
    v19 = xmmword_26286B6F0;
    v21 = 1;
    TBuffer<wchar_t>::assign(&v18, a1);
    v10 = v18;
    if ((v9 & 1) == 0)
    {
      *&v18[4 * v7] = *(s_pszUnaccentedVowels + v8 - s_pszAccentedVowels);
    }

    v11 = *(&v19 + 1);
    v12 = DWORD2(v19) - 1;
    v13 = wcschr("s", *&v10[4 * DWORD2(v19) - 4]);
    v14 = v19;
    if (v13)
    {
      if (v11 >= v19)
      {
        if (v21)
        {
          v22 = 0;
          TBuffer<wchar_t>::insert(&v18, v11, &v22, 1uLL);
          v14 = v19;
          v11 = --*(&v19 + 1);
          v10 = v18;
        }

        else if (v19)
        {
          *&v10[4 * v19 - 4] = 0;
        }
      }

      else
      {
        *&v10[4 * v11] = 0;
      }

      PreviousVowel = findPreviousVowel(v10, v12);
      if (PreviousVowel >= 0)
      {
        v12 = PreviousVowel;
      }
    }

    if (v11 >= v14)
    {
      if (v21)
      {
        v22 = 0;
        TBuffer<wchar_t>::insert(&v18, v11, &v22, 1uLL);
        v10 = v18;
        --*(&v19 + 1);
      }

      else if (v14)
      {
        *&v10[4 * v14 - 4] = 0;
      }
    }

    else
    {
      *&v10[4 * v11] = 0;
    }

    v16 = findPreviousVowel(v10, v12);
    if (v16 >= 0)
    {
      v5 = v16;
    }

    else
    {
      v5 = v12;
    }

    if (v21 == 1 && v10 != v20 && v10)
    {
      MEMORY[0x26672B1B0](v10, 0x1000C4052888210);
    }
  }

  return v5;
}

void sub_2625F297C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (LOBYTE(STACK[0x420]) == 1 && a10 != v10)
  {
    if (a10)
    {
      MEMORY[0x26672B1B0]();
    }
  }

  _Unwind_Resume(a1);
}

void TLexiconParamManager::~TLexiconParamManager(TLexiconParamManager *this)
{
  TLexiconParamManager::~TLexiconParamManager(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287525A48;
  v2 = (this + 21520);
  *(this + 2690) = &unk_2875295A0;
  v3 = (this + 21744);
  v4 = -48;
  do
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    v3 -= 3;
    v4 += 24;
  }

  while (v4);
  TParam::~TParam(v2);
  TParam::~TParam(this + 2646);
  *(this + 2474) = &unk_287528A10;
  v32 = (this + 21144);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 21120);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 21096);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v5 = (this + 21072);
  v6 = -1152;
  do
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    v5 -= 3;
    v6 += 24;
  }

  while (v6);
  TParam::~TParam(this + 2474);
  *(this + 2302) = &unk_287528A10;
  v32 = (this + 19768);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 19744);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 19720);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v7 = (this + 19696);
  v8 = -1152;
  do
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    v7 -= 3;
    v8 += 24;
  }

  while (v8);
  TParam::~TParam(this + 2302);
  *(this + 2130) = &unk_287528A10;
  v32 = (this + 18392);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 18368);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 18344);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v9 = (this + 18320);
  v10 = -1152;
  do
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    v9 -= 3;
    v10 += 24;
  }

  while (v10);
  TParam::~TParam(this + 2130);
  *(this + 1958) = &unk_287528A10;
  v32 = (this + 17016);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 16992);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 16968);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v11 = (this + 16944);
  v12 = -1152;
  do
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    v11 -= 3;
    v12 += 24;
  }

  while (v12);
  TParam::~TParam(this + 1958);
  *(this + 1786) = &unk_287528A10;
  v32 = (this + 15640);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 15616);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 15592);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v13 = (this + 15568);
  v14 = -1152;
  do
  {
    if (*(v13 + 23) < 0)
    {
      operator delete(*v13);
    }

    v13 -= 3;
    v14 += 24;
  }

  while (v14);
  TParam::~TParam(this + 1786);
  *(this + 1614) = &unk_287528A10;
  v32 = (this + 14264);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 14240);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 14216);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v15 = (this + 14192);
  v16 = -1152;
  do
  {
    if (*(v15 + 23) < 0)
    {
      operator delete(*v15);
    }

    v15 -= 3;
    v16 += 24;
  }

  while (v16);
  TParam::~TParam(this + 1614);
  *(this + 1442) = &unk_287528A10;
  v32 = (this + 12888);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 12864);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 12840);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v17 = (this + 12816);
  v18 = -1152;
  do
  {
    if (*(v17 + 23) < 0)
    {
      operator delete(*v17);
    }

    v17 -= 3;
    v18 += 24;
  }

  while (v18);
  TParam::~TParam(this + 1442);
  *(this + 1270) = &unk_287528A10;
  v32 = (this + 11512);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 11488);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 11464);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v19 = (this + 11440);
  v20 = -1152;
  do
  {
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    v19 -= 3;
    v20 += 24;
  }

  while (v20);
  TParam::~TParam(this + 1270);
  *(this + 1098) = &unk_287528A10;
  v32 = (this + 10136);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 10112);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 10088);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v21 = (this + 10064);
  v22 = -1152;
  do
  {
    if (*(v21 + 23) < 0)
    {
      operator delete(*v21);
    }

    v21 -= 3;
    v22 += 24;
  }

  while (v22);
  TParam::~TParam(this + 1098);
  *(this + 926) = &unk_287528A10;
  v32 = (this + 8760);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 8736);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 8712);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v23 = (this + 8688);
  v24 = -1152;
  do
  {
    if (*(v23 + 23) < 0)
    {
      operator delete(*v23);
    }

    v23 -= 3;
    v24 += 24;
  }

  while (v24);
  TParam::~TParam(this + 926);
  *(this + 754) = &unk_287528A10;
  v32 = (this + 7384);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 7360);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 7336);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v25 = (this + 7312);
  v26 = -1152;
  do
  {
    if (*(v25 + 23) < 0)
    {
      operator delete(*v25);
    }

    v25 -= 3;
    v26 += 24;
  }

  while (v26);
  TParam::~TParam(this + 754);
  *(this + 582) = &unk_287528A10;
  v32 = (this + 6008);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 5984);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 5960);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v27 = (this + 5936);
  v28 = -1152;
  do
  {
    if (*(v27 + 23) < 0)
    {
      operator delete(*v27);
    }

    v27 -= 3;
    v28 += 24;
  }

  while (v28);
  TParam::~TParam(this + 582);
  *(this + 410) = &unk_287528A10;
  v32 = (this + 4632);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 4608);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 4584);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v29 = (this + 4560);
  v30 = -1152;
  do
  {
    if (*(v29 + 23) < 0)
    {
      operator delete(*v29);
    }

    v29 -= 3;
    v30 += 24;
  }

  while (v30);
  TParam::~TParam(this + 410);
  TParam::~TParam(this + 366);
  TParam::~TParam(this + 322);
  TParam::~TParam(this + 278);
  TParam::~TParam(this + 234);
  *(this + 62) = &unk_287528A10;
  v32 = (this + 1848);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 1824);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v32 = (this + 1800);
  std::vector<std::wstring>::__destroy_vector::operator()[abi:ne200100](&v32);
  v31 = 1152;
  do
  {
    if (*(this + v31 + 647) < 0)
    {
      operator delete(*(this + v31 + 624));
    }

    v31 -= 24;
  }

  while (v31);
  TParam::~TParam(this + 62);
  TParam::~TParam(this + 18);
  TParamManager::~TParamManager(this);
}

void TEnvManager::~TEnvManager(void **this)
{
  *this = &unk_287528F50;
  off_287528F68(this);
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  *this = &unk_287528AD0;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

{
  TEnvManager::~TEnvManager(this);

  JUMPOUT(0x26672B1B0);
}

void *THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::~THashBase(void *a1)
{
  *a1 = &unk_287522D48;
  THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::clear(a1);
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x26672B190](v2, 0x20C8093837F09);
  }

  return a1;
}

void *THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::clear(void *result)
{
  v1 = result;
  v2 = result[2];
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = v1[1];
      result = *(v4 + 8 * i);
      if (result)
      {
        do
        {
          v5 = *result;
          MEMORY[0x26672B1B0]();
          result = v5;
        }

        while (v5);
        v4 = v1[1];
        v2 = v1[2];
      }

      *(v4 + 8 * i) = 0;
    }
  }

  v1[3] = 0;
  return result;
}

void THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::~THashBase(void *a1)
{
  THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::~THashBase(a1);

  JUMPOUT(0x26672B1B0);
}

void *THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::~THashBase(void *a1)
{
  *a1 = &unk_287522D08;
  THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::clear(a1);
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x26672B190](v2, 0x20C8093837F09);
  }

  return a1;
}

void THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::~THashBase(void *a1)
{
  THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::~THashBase(a1);

  JUMPOUT(0x26672B1B0);
}

size_t THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::find@<X0>(size_t result@<X0>, const __int32 **a2@<X1>, uint64_t ***a3@<X8>)
{
  v4 = *(result + 16);
  if (v4)
  {
    v5 = result;
    v6 = *a2;
    result = wcslen(*a2);
    v7 = 0;
    v8 = 4 * result;
    if (4 * result)
    {
      v9 = v6;
      do
      {
        v10 = *v9;
        v9 = (v9 + 1);
        v7 = 33 * v7 + v10;
        --v8;
      }

      while (v8);
    }

    v11 = *(v5 + 8);
    v12 = (v11 + 8 * (v7 % v4));
    v13 = v12;
    while (1)
    {
      v13 = *v13;
      if (!v13)
      {
        break;
      }

      result = wcscmp(v13[1], v6);
      if (!result)
      {
        *a3 = v12;
        a3[1] = (v11 + 8 * v4);
        a3[2] = v13;
        return result;
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *THashBase<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THashMapCompare<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,std::equal_to<TDecodeLinkMapWord::THistory>>,THashMapFunction<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THash<TDecodeLinkMapWord::THistory>>>::~THashBase(void *a1)
{
  *a1 = &unk_287522D68;
  THashBase<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THashMapCompare<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,std::equal_to<TDecodeLinkMapWord::THistory>>,THashMapFunction<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THash<TDecodeLinkMapWord::THistory>>>::clear(a1);
  v2 = a1[1];
  if (v2)
  {
    MEMORY[0x26672B190](v2, 0x20C8093837F09);
  }

  return a1;
}

void THashBase<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THashMapCompare<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,std::equal_to<TDecodeLinkMapWord::THistory>>,THashMapFunction<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THash<TDecodeLinkMapWord::THistory>>>::~THashBase(void *a1)
{
  THashBase<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THashMapCompare<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,std::equal_to<TDecodeLinkMapWord::THistory>>,THashMapFunction<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THash<TDecodeLinkMapWord::THistory>>>::~THashBase(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t findPreviousVowel(uint64_t a1, int a2)
{
  v2 = a2;
  if (a2 >= 1)
  {
    v4 = (a1 + 4 * a2);
    if (wcschr("a", *v4))
    {
      v2 -= wcschr("i", *(v4 - 1)) != 0;
    }
  }

  v5 = v2;
  do
  {
    if (v5 < 1)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = v5 - 1;
    v7 = *(a1 - 4 + 4 * v5);
    v8 = wcschr(s_pszUnaccentedVowels, v7);
    v5 = v6;
  }

  while (!v8);
  if (v6 && wcschr("i", v7))
  {
    if (wcschr("a", *(a1 + 4 * ((v6 + 1) & 0x7FFFFFFF) - 8)))
    {
      return (v6 - 1);
    }

    else
    {
      return v6;
    }
  }

  return v6;
}

void *std::vector<std::wstring>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::wstring>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void TRegisterable<TLexicon>::~TRegisterable(void *a1)
{
  TRegisterable<TLexicon>::~TRegisterable(a1);

  JUMPOUT(0x26672B1B0);
}

void THashMap<wchar_t *,TWordBlock *,THash<wchar_t const*>,TWideCharEqualTo>::~THashMap(void *a1)
{
  THashBase<std::pair<wchar_t * const,TWordBlock *>,THashMapCompare<std::pair<wchar_t * const,TWordBlock *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t * const,TWordBlock *>,THash<wchar_t const*>>>::~THashBase(a1);

  JUMPOUT(0x26672B1B0);
}

void THashMap<wchar_t const*,TWord *,THash<wchar_t const*>,TWideCharEqualTo>::~THashMap(void *a1)
{
  THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::~THashBase(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t TRegisterable<TLexicon>::getRegistry()
{
  {
    operator new();
  }

  return TRegisterable<TLexicon>::getRegistry(void)::s_registry;
}

double THashBase<std::pair<wchar_t const* const,TWord *>,THashMapCompare<std::pair<wchar_t const* const,TWord *>,TWideCharEqualTo>,THashMapFunction<std::pair<wchar_t const* const,TWord *>,THash<wchar_t const*>>>::findNextPrime(uint64_t a1)
{
  v1 = a1 | 1;
  result = sqrt(v1);
  v3 = result;
  if (result >= 4)
  {
    do
    {
      v4 = 3;
      while (v1 % v4)
      {
        v4 += 2;
        if (v4 >= v3)
        {
          return result;
        }
      }

      v1 += 2;
      result = sqrt(v1);
      v3 = result;
    }

    while (result > 3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::wstring,TWordBlock *>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,TWordBlock *>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,TWordBlock *>>>::__emplace_unique_key_args<std::wstring,std::piecewise_construct_t const&,std::tuple<std::wstring&&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<std::wstring,unsigned long>,std::__map_value_compare<std::wstring,std::__value_type<std::wstring,unsigned long>,std::less<std::wstring>,true>,std::allocator<std::__value_type<std::wstring,unsigned long>>>::__find_equal<std::wstring>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TLexiconMatch>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string>::__append(std::vector<std::wstring> *this, std::vector<std::wstring>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v10 = 24 * ((24 * __n - 24) / 0x18) + 24;
      bzero(this->__end_, v10);
      end = (end + v10);
    }

    this->__end_ = end;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v7 = v6 + __n;
    if (v6 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::wstring>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18.__end_cap_.__value_ = this;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::wstring>>(this, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * __n - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = (v11 + v12);
    v14 = this->__end_ - this->__begin_;
    v15 = (v11 - v14);
    memcpy((v11 - v14), this->__begin_, v14);
    begin = this->__begin_;
    this->__begin_ = v15;
    this->__end_ = v13;
    v17 = this->__end_cap_.__value_;
    this->__end_cap_.__value_ = 0;
    v18.__end_ = begin;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = begin;
    v18.__begin_ = begin;
    std::__split_buffer<std::wstring>::~__split_buffer(&v18);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<wchar_t const*,wchar_t *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*,false>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 2;
  v93 = a2 - 1;
  v95 = a2 - 6;
  v96 = a2 - 4;
  v9 = v7;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v7 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        result = (*a3)(v8, v9);
        if (result)
        {
          v86 = *v9;
          *v9 = *(a2 - 2);
          *(a2 - 2) = v86;
          v87 = v9[1];
          v9[1] = *(a2 - 1);
          *(a2 - 1) = v87;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      v78 = (*a3)(v9 + 2, v9);
      result = (*a3)(v8, v9 + 2);
      if (v78)
      {
        v80 = v9 + 1;
        v79 = *v9;
        if (result)
        {
          *v9 = *(a2 - 2);
        }

        else
        {
          v91 = *(v9 + 1);
          v9[3] = v9[1];
          v80 = v9 + 3;
          v9[2] = v79;
          *v9 = v91;
          result = (*a3)(v8, v9 + 2);
          if (!result)
          {
            return result;
          }

          v79 = v9[2];
          v9[2] = *(a2 - 2);
        }

        *(a2 - 2) = v79;
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v88 = v9[2];
        v9[2] = *(a2 - 2);
        *(a2 - 2) = v88;
        v89 = v9[3];
        v93 = v9 + 3;
        v9[3] = *(a2 - 1);
        *(a2 - 1) = v89;
        result = (*a3)(v9 + 2, v9);
        if (!result)
        {
          return result;
        }

        v90 = *v9;
        *v9 = v9[2];
        v9[2] = v90;
        v80 = v9 + 1;
      }

      v92 = *v80;
      *v80 = *v93;
      *v93 = v92;
      return result;
    }

    if (v12 == 4)
    {
      break;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*,0>(v9, v9 + 2, v9 + 4, v9 + 6, a3);
      result = (*a3)(v8, v9 + 6);
      if (result)
      {
        v81 = v9[6];
        v9[6] = *(a2 - 2);
        *(a2 - 2) = v81;
        v82 = v9[7];
        v9[7] = *(a2 - 1);
        *(a2 - 1) = v82;
        result = (*a3)(v9 + 6, v9 + 4);
        if (result)
        {
          v83 = *(v9 + 2);
          *(v9 + 2) = *(v9 + 3);
          *(v9 + 3) = v83;
          result = (*a3)(v9 + 4, v9 + 2);
          if (result)
          {
            v84 = *(v9 + 1);
            *(v9 + 1) = *(v9 + 2);
            *(v9 + 2) = v84;
            result = (*a3)(v9 + 2, v9);
            if (result)
            {
              v85 = *v9;
              *v9 = *(v9 + 1);
              *(v9 + 1) = v85;
            }
          }
        }
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(v9, a2, a3);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(v9, a2, a3);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*,std::pair<wchar_t const*,wchar_t *>*>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[2 * (v12 >> 1)];
    v15 = *a3;
    v98 = v11;
    if (v12 >= 0x81)
    {
      v16 = v15(&v9[2 * (v12 >> 1)], v9);
      v17 = (*a3)(v8, v14);
      v94 = v13;
      if (v16)
      {
        v19 = v7 + 1;
        v18 = *v7;
        if (v17)
        {
          *v7 = *v8;
          goto LABEL_28;
        }

        v32 = v7[1];
        *v7 = *v14;
        v14[1] = v32;
        v19 = v14 + 1;
        *v14 = v18;
        if ((*a3)(v8, v14))
        {
          v18 = *v14;
          *v14 = *v8;
LABEL_28:
          *v8 = v18;
          v26 = a2 - 1;
LABEL_29:
          v33 = *v19;
          *v19 = *v26;
          *v26 = v33;
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 2);
        *(a2 - 2) = v24;
        v26 = v14 + 1;
        v25 = v14[1];
        v14[1] = *(a2 - 1);
        *(a2 - 1) = v25;
        if ((*a3)(v14, v7))
        {
          v27 = *v7;
          *v7 = *v14;
          v19 = v7 + 1;
          *v14 = v27;
          goto LABEL_29;
        }
      }

      v34 = v14 - 2;
      v35 = (*a3)(v14 - 2, v7 + 2);
      v36 = (*a3)(v96, v14 - 2);
      if (v35)
      {
        v37 = v7[2];
        v38 = v7 + 3;
        if (v36)
        {
          v7[2] = *v96;
          *v96 = v37;
          v39 = a2 - 3;
          v40 = v94;
          goto LABEL_41;
        }

        v45 = *v38;
        *(v7 + 1) = *v34;
        *(v14 - 1) = v45;
        v38 = v14 - 1;
        *v34 = v37;
        v40 = v94;
        if ((*a3)(v96, v14 - 2))
        {
          v46 = *v34;
          *v34 = *v96;
          *v96 = v46;
          v39 = a2 - 3;
LABEL_41:
          v47 = *v38;
          *v38 = *v39;
          *v39 = v47;
        }
      }

      else
      {
        v40 = v94;
        if (v36)
        {
          v41 = *v34;
          *v34 = *(a2 - 4);
          *(a2 - 4) = v41;
          v39 = v14 - 1;
          v42 = *(v14 - 1);
          *(v14 - 1) = *(a2 - 3);
          *(a2 - 3) = v42;
          if ((*a3)(v14 - 2, v7 + 2))
          {
            v43 = v7[2];
            v7[2] = *v34;
            *v34 = v43;
            v38 = v7 + 3;
            goto LABEL_41;
          }
        }
      }

      v48 = v40 + 1;
      v49 = &v7[2 * v40 + 2];
      v50 = (*a3)(v49, v7 + 4);
      v51 = (*a3)(v95, v49);
      v52 = v8;
      if (v50)
      {
        v53 = v7[4];
        v54 = v7 + 5;
        if (v51)
        {
          v55 = a2 - 6;
          v7[4] = *v95;
          goto LABEL_50;
        }

        v60 = *v54;
        *(v7 + 2) = *v49;
        v49[1] = v60;
        v54 = v49 + 1;
        *v49 = v53;
        if ((*a3)(v95, v49))
        {
          v53 = *v49;
          v55 = a2 - 6;
          *v49 = *v95;
LABEL_50:
          *v55 = v53;
          v58 = a2 - 5;
LABEL_51:
          v61 = *v54;
          *v54 = *v58;
          *v58 = v61;
        }
      }

      else if (v51)
      {
        v56 = *v49;
        *v49 = *(a2 - 6);
        *(a2 - 6) = v56;
        v58 = v49 + 1;
        v57 = v49[1];
        v49[1] = *(a2 - 5);
        *(a2 - 5) = v57;
        if ((*a3)(v49, v7 + 4))
        {
          v59 = v7[4];
          v7[4] = *v49;
          *v49 = v59;
          v54 = v7 + 5;
          goto LABEL_51;
        }
      }

      v62 = (*a3)(v14, v14 - 2);
      v63 = (*a3)(v49, v14);
      if (v62)
      {
        v64 = *v34;
        v8 = v52;
        if (v63)
        {
          *v34 = *v49;
          *v49 = v64;
          v65 = v14 - 1;
          goto LABEL_60;
        }

        v68 = *v14;
        v14[1] = *(v14 - 1);
        *v14 = v64;
        *v34 = v68;
        if ((*a3)(v49, v14))
        {
          v69 = *v14;
          *v14 = *v49;
          *v49 = v69;
          v65 = v14 + 1;
LABEL_60:
          v70 = &v7[2 * v48];
          v71 = *v65;
          *v65 = v70[1];
          v70[1] = v71;
        }
      }

      else
      {
        v8 = v52;
        if (v63)
        {
          v66 = *v14;
          *v14 = *v49;
          *v49 = v66;
          if ((*a3)(v14, v14 - 2))
          {
            v67 = *v34;
            *v34 = *v14;
            v65 = v14 - 1;
            *v14 = v67;
            v48 = v94;
            goto LABEL_60;
          }
        }
      }

      v72 = *v7;
      *v7 = *v14;
      v23 = v7 + 1;
      *v14 = v72;
      v31 = v14 + 1;
LABEL_62:
      v73 = *v23;
      *v23 = *v31;
      *v31 = v73;
      goto LABEL_63;
    }

    v20 = v15(v9, &v9[2 * (v12 >> 1)]);
    v21 = (*a3)(v8, v9);
    if (v20)
    {
      v23 = v14 + 1;
      v22 = *v14;
      if (v21)
      {
        *v14 = *v8;
LABEL_38:
        *v8 = v22;
        v31 = a2 - 1;
        goto LABEL_62;
      }

      v44 = v14[1];
      *v14 = *v9;
      v9[1] = v44;
      v23 = v9 + 1;
      *v9 = v22;
      if ((*a3)(v8, v9))
      {
        v22 = *v9;
        *v9 = *v8;
        goto LABEL_38;
      }
    }

    else if (v21)
    {
      v28 = *v9;
      *v9 = *(a2 - 2);
      *(a2 - 2) = v28;
      v29 = v9[1];
      v9[1] = *(a2 - 1);
      *(a2 - 1) = v29;
      if ((*a3)(v9, v14))
      {
        v30 = *v14;
        *v14 = *v9;
        *v9 = v30;
        v23 = v14 + 1;
        v31 = v9 + 1;
        goto LABEL_62;
      }
    }

LABEL_63:
    if ((a5 & 1) == 0 && ((*a3)(v7 - 2, v7) & 1) == 0)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<wchar_t const*,wchar_t *> *,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&)>(v7, a2, a3);
      v9 = result;
      v75 = v98;
      goto LABEL_70;
    }

    v74 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<wchar_t const*,wchar_t *> *,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&)>(v7, a2, a3);
    v75 = v98;
    if ((v76 & 1) == 0)
    {
      goto LABEL_68;
    }

    v77 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(v7, v74, a3);
    v9 = v74 + 2;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(v74 + 2, a2, a3);
    if (result)
    {
      a4 = -v98;
      a2 = v74;
      if (v77)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v98 + 1;
    if (!v77)
    {
LABEL_68:
      result = std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*,false>(v7, v74, a3, -v98, a5 & 1);
      v9 = v74 + 2;
LABEL_70:
      a5 = 0;
      a4 = -v75;
      goto LABEL_3;
    }
  }

  return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*,0>(v9, v9 + 2, v9 + 4, v8, a3);
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*,0>(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (**a5)(uint64_t *, uint64_t *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    v13 = a1 + 1;
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      v16 = a3 + 1;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v12;
    v13 = a2 + 1;
    v18 = a1[1];
    a1[1] = a2[1];
    a2[1] = v18;
    if ((*a5)(a3, a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    *a3 = v14;
    v16 = a2 + 1;
    v15 = a2[1];
    a2[1] = a3[1];
    a3[1] = v15;
    if ((*a5)(a2, a1))
    {
      v17 = *a1;
      *a1 = *a2;
      v13 = a1 + 1;
      *a2 = v17;
LABEL_10:
      v19 = *v13;
      *v13 = *v16;
      *v16 = v19;
    }
  }

  result = (*a5)(a4, a3);
  if (result)
  {
    v21 = *a3;
    *a3 = *a4;
    *a4 = v21;
    v22 = a3[1];
    a3[1] = a4[1];
    a4[1] = v22;
    result = (*a5)(a3, a2);
    if (result)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v24 = a2[1];
      a2[1] = a3[1];
      a3[1] = v24;
      result = (*a5)(a2, a1);
      if (result)
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
        v26 = a1[1];
        a1[1] = a2[1];
        a2[1] = v26;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void))
{
  if (result != a2)
  {
    v18 = v3;
    v19 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v17 = *v10;
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            v14 = *(v6 + v12 + 8);
            *(v13 + 2) = *(v6 + v12);
            *(v13 + 3) = v14;
            if (!v12)
            {
              break;
            }

            v12 -= 16;
            result = (*a3)(&v17, v6 + v12);
            if ((result & 1) == 0)
            {
              v15 = (v6 + v12 + 16);
              goto LABEL_10;
            }
          }

          v15 = v6;
LABEL_10:
          v16 = *(&v17 + 1);
          *v15 = v17;
          v15[1] = v16;
        }

        v7 = v10 + 1;
        v9 += 16;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(_OWORD *, void *))
{
  if (result != a2)
  {
    v15 = v3;
    v16 = v4;
    v6 = result;
    v7 = (result + 16);
    if ((result + 16) != a2)
    {
      v9 = (result - 16);
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v14 = *v6;
          v11 = v9;
          do
          {
            v12 = v11[3];
            v11[4] = v11[2];
            v11[5] = v12;
            result = (*a3)(&v14, v11);
            v11 -= 2;
          }

          while ((result & 1) != 0);
          v13 = *(&v14 + 1);
          v11[4] = v14;
          v11[5] = v13;
        }

        v7 = v6 + 1;
        v9 += 2;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

void *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<wchar_t const*,wchar_t *> *,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&)>(void *a1, void *a2, uint64_t (**a3)(__int128 *, void *))
{
  v4 = a2;
  v12 = *a1;
  if ((*a3)(&v12, a2 - 2))
  {
    v6 = a1;
    do
    {
      v6 += 2;
    }

    while (((*a3)(&v12, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 2;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v12, v7);
      v7 = v6 + 2;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v12, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *v4 = v9;
    v10 = v6[1];
    v6[1] = v4[1];
    v4[1] = v10;
    do
    {
      v6 += 2;
    }

    while (!(*a3)(&v12, v6));
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v12, v4) & 1) != 0);
  }

  if (v6 - 2 != a1)
  {
    *a1 = *(v6 - 2);
    a1[1] = *(v6 - 1);
  }

  *(v6 - 1) = v12;
  return v6;
}

void *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<wchar_t const*,wchar_t *> *,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&)>(void *a1, void *a2, uint64_t (**a3)(void *, __int128 *))
{
  v6 = 0;
  v13 = *a1;
  do
  {
    v6 += 2;
  }

  while (((*a3)(&a1[v6], &v13) & 1) != 0);
  v7 = &a1[v6];
  if (v6 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 2;
    }

    while (((*a3)(a2, &v13) & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 2;
    }

    while (!(*a3)(a2, &v13));
  }

  v8 = &a1[v6];
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      *v8 = *v9;
      *v9 = v10;
      v11 = v8[1];
      v8[1] = v9[1];
      v9[1] = v11;
      do
      {
        v8 += 2;
      }

      while (((*a3)(v8, &v13) & 1) != 0);
      do
      {
        v9 -= 2;
      }

      while (!(*a3)(v9, &v13));
    }

    while (v8 < v9);
  }

  result = v8 - 2;
  if (v8 - 2 != a1)
  {
    *a1 = *(v8 - 2);
    a1[1] = *(v8 - 1);
  }

  *(v8 - 1) = v13;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v14 = (*a3)(a1 + 2, a1);
      v15 = (*a3)(a2 - 2, a1 + 2);
      if (v14)
      {
        v17 = a1 + 1;
        v16 = *a1;
        if (v15)
        {
          *a1 = *(a2 - 2);
        }

        else
        {
          v30 = *(a1 + 1);
          a1[3] = a1[1];
          v17 = a1 + 3;
          a1[2] = v16;
          *a1 = v30;
          if (!(*a3)(a2 - 2, a1 + 2))
          {
            return 1;
          }

          v16 = a1[2];
          a1[2] = *(a2 - 2);
        }

        *(a2 - 2) = v16;
        v25 = a2 - 1;
      }

      else
      {
        if (!v15)
        {
          return 1;
        }

        v23 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v23;
        v25 = a1 + 3;
        v24 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v24;
        if (!(*a3)(a1 + 2, a1))
        {
          return 1;
        }

        v26 = *a1;
        *a1 = a1[2];
        a1[2] = v26;
        v17 = a1 + 1;
      }

      v31 = *v17;
      *v17 = *v25;
      *v25 = v31;
      return 1;
    }

    if (v6 != 4)
    {
      if (v6 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        if ((*a3)(a2 - 2, a1 + 6))
        {
          v9 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          if ((*a3)(a1 + 6, a1 + 4))
          {
            v11 = *(a1 + 2);
            *(a1 + 2) = *(a1 + 3);
            *(a1 + 3) = v11;
            if ((*a3)(a1 + 4, a1 + 2))
            {
              v12 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 2);
              *(a1 + 2) = v12;
              if ((*a3)(a1 + 2, a1))
              {
                v13 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v13;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 2, a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v7;
      v8 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v8;
    }

    return 1;
  }

LABEL_17:
  v18 = a1 + 4;
  v19 = (*a3)(a1 + 2, a1);
  v20 = (*a3)(a1 + 4, a1 + 2);
  if (v19)
  {
    v22 = a1 + 1;
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[4];
    }

    else
    {
      v32 = *(a1 + 1);
      a1[3] = a1[1];
      v22 = a1 + 3;
      a1[2] = v21;
      *a1 = v32;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_35;
      }

      v21 = a1[2];
      a1[2] = a1[4];
    }

    a1[4] = v21;
    v28 = a1 + 5;
    goto LABEL_34;
  }

  if (v20)
  {
    v27 = *(a1 + 1);
    *(a1 + 1) = *(a1 + 2);
    *(a1 + 2) = v27;
    if ((*a3)(a1 + 2, a1))
    {
      v28 = a1 + 3;
      v29 = *a1;
      *a1 = a1[2];
      a1[2] = v29;
      v22 = a1 + 1;
LABEL_34:
      v33 = *v22;
      *v22 = *v28;
      *v28 = v33;
    }
  }

LABEL_35:
  v34 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v35 = 0;
  v36 = 0;
  while (1)
  {
    if ((*a3)(v34, v18))
    {
      v43 = *v34;
      v37 = v35;
      while (1)
      {
        v38 = (a1 + v37);
        v39 = *(a1 + v37 + 40);
        v38[6] = *(a1 + v37 + 32);
        v38[7] = v39;
        if (v37 == -32)
        {
          break;
        }

        v37 -= 16;
        if (((*a3)(&v43, v38 + 2) & 1) == 0)
        {
          v40 = (a1 + v37 + 48);
          goto LABEL_43;
        }
      }

      v40 = a1;
LABEL_43:
      v41 = *(&v43 + 1);
      *v40 = v43;
      v40[1] = v41;
      if (++v36 == 8)
      {
        return v34 + 2 == a2;
      }
    }

    v18 = v34;
    v35 += 16;
    v34 += 2;
    if (v34 == a2)
    {
      return 1;
    }
  }
}

uint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*,std::pair<wchar_t const*,wchar_t *>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, unsigned int (**a4)(uint64_t, uint64_t))
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        if ((*a4)(v12, a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          v14 = v12[1];
          v12[1] = *(a1 + 8);
          *(a1 + 8) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v15 = a2 - 2;
      do
      {
        v17 = *a1;
        v16 = *(a1 + 8);
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(a1, a4, v8);
        if (v15 == v18)
        {
          *v18 = v17;
          v18[1] = v16;
        }

        else
        {
          *v18 = *v15;
          v18[1] = v15[1];
          *v15 = v17;
          v15[1] = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(a1, (v18 + 2), a4, (v18 - a1 + 16) >> 4);
        }

        v15 -= 2;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(uint64_t result, unsigned int (**a2)(void, void), uint64_t a3, _OWORD *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v20 = v4;
    v21 = v5;
    v7 = a4;
    v8 = result;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - result) >> 4)
    {
      v12 = (a4 - result) >> 3;
      v13 = v12 + 1;
      v14 = (result + 16 * (v12 + 1));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 2))
      {
        v14 += 2;
        v13 = v15;
      }

      result = (*a2)(v14, v7);
      if ((result & 1) == 0)
      {
        v19 = *v7;
        do
        {
          v16 = v14;
          *v7 = *v14;
          *(v7 + 1) = v14[1];
          if (v9 < v13)
          {
            break;
          }

          v17 = (2 * v13) | 1;
          v14 = (v8 + 16 * v17);
          v18 = 2 * v13 + 2;
          if (v18 < a3)
          {
            if ((*a2)(v8 + 16 * v17, v14 + 2))
            {
              v14 += 2;
              v17 = v18;
            }
          }

          result = (*a2)(v14, &v19);
          v7 = v16;
          v13 = v17;
        }

        while (!result);
        *v16 = v19;
      }
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(void *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[2 * v6];
    v9 = v8 + 2;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 4;
      if ((*a2)((v8 + 2), (v8 + 4)))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    *a1 = *v9;
    a1[1] = v9[1];
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(std::pair<wchar_t const*,wchar_t *> const&,std::pair<wchar_t const*,wchar_t *> const&),std::pair<wchar_t const*,wchar_t *>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(void *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v15 = v4;
    v16 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 16 * (v6 >> 1));
    v11 = (a2 - 16);
    if ((*a3)(v10, (a2 - 16)))
    {
      v14 = *v11;
      do
      {
        v13 = v10;
        *v11 = *v10;
        *(v11 + 1) = v10[1];
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 16 * v9);
        v11 = v13;
      }

      while (((*a3)(v10, &v14) & 1) != 0);
      result = *&v14;
      *v13 = v14;
    }
  }

  return result;
}

void *std::__tree<std::__value_type<wchar_t const*,wchar_t const*>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,wchar_t const*>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,wchar_t const*>>>::__find_leaf_high(uint64_t a1, void *a2, const __int32 **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v5 = v4;
        if ((wcscmp(v6, *(v4 + 32)) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_9;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_9:
  *a2 = v5;
  return result;
}

void sub_2625F567C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void THashMap<TDecodeLinkMapWord::THistory,TDecodeLinkMapWord const*,THash<TDecodeLinkMapWord::THistory>,std::equal_to<TDecodeLinkMapWord::THistory>>::~THashMap(void *a1)
{
  THashBase<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THashMapCompare<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,std::equal_to<TDecodeLinkMapWord::THistory>>,THashMapFunction<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THash<TDecodeLinkMapWord::THistory>>>::~THashBase(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t THashBase<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THashMapCompare<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,std::equal_to<TDecodeLinkMapWord::THistory>>,THashMapFunction<std::pair<TDecodeLinkMapWord::THistory const,TDecodeLinkMapWord const*>,THash<TDecodeLinkMapWord::THistory>>>::find@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v5 = 33 * v5 + *(a2 + v4++);
    }

    while (v4 != 32);
    v6 = v5 % v3;
    v7 = *(result + 8);
    v8 = (v7 + 8 * v6);
    v9 = v8;
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      result = v9[4];
      if (v9[1] == *a2 && v9[2] == a2[1] && v9[3] == a2[2] && result == a2[3])
      {
        *a3 = v8;
        a3[1] = v7 + 8 * v3;
        a3[2] = v9;
        return result;
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void *std::__tree<std::__value_type<wchar_t const*,wchar_t const*>,std::__map_value_compare<wchar_t const*,std::__value_type<wchar_t const*,wchar_t const*>,TWideCharCompare,true>,std::allocator<std::__value_type<wchar_t const*,wchar_t const*>>>::__equal_range_multi<wchar_t const*>(uint64_t a1, const __int32 **a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  while (1)
  {
    v5 = v3[4];
    if (wcscmp(v4, v5) < 0)
    {
      v2 = v3;
      goto LABEL_7;
    }

    if ((wcscmp(v5, v4) & 0x80000000) == 0)
    {
      break;
    }

    ++v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  v8 = *v3;
  v6 = v3;
  if (*v3)
  {
    v6 = v3;
    do
    {
      v9 = wcscmp(v8[4], v4);
      if (v9 >= 0)
      {
        v6 = v8;
      }

      v8 = *(v8 + ((v9 >> 28) & 8));
    }

    while (v8);
  }

    ;
  }

  return v6;
}

void OUTLINED_FUNCTION_0_1()
{

  JUMPOUT(0x26672B1B0);
}

uint64_t readObject(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = 0;
  readObject(a1, &v9, a3);
  if (v9 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  *a2 = v6;
  if (*(a1 + 35) == 1)
  {
    v8 = 0;
    readObject(a1, &v8, a3);
  }

  return readObject(a1, (a2 + 2), a3);
}

{
  readObject(a1, a2, a3);

  return readObject(a1, (a2 + 4), a3);
}

uLong StateMgr::computeOneStateIdNameChecksum(StateMgr *this, unsigned int a2)
{
  v10 = a2;
  v4 = computeCRC32(0, 0, 0);
  v5 = *(this + 12) + 16 * a2;
  if (*(v5 + 8))
  {
    v6 = *v5;
  }

  else
  {
    v6 = &unk_26287398E;
  }

  v7 = strlen(v6);
  v8 = computeCRC32(v4, v6, v7);
  return computeCRC32(v8, &v10, 1u);
}

uLong StateMgr::computeStateIdNameChecksum(uLong this)
{
  *(this + 732) = 0;
  v1 = *(this + 720);
  if (v1 >= 2)
  {
    v2 = this;
    for (i = 1; i < v1; ++i)
    {
      if (*(*(v2 + 544) + i))
      {
        if (*(*(v2 + 560) + i))
        {
          this = StateMgr::computeOneStateIdNameChecksum(v2, i);
          *(v2 + 732) ^= this;
          v1 = *(v2 + 720);
        }
      }
    }
  }

  return this;
}

void StateMgr::StateMgr(StateMgr *this, Voc *a2)
{
  v4 = (this + 664);
  *(this + 44) = 0u;
  bzero(this, 0x290uLL);
  *v4 = 0u;
  v4[1] = 0u;
  *(this + 92) = a2;
  *(this + 93) = *(a2 + 6);
  v5 = MemChunkAlloc(0x110uLL, 0);
  *(this + 94) = EnvMgr::EnvMgr(v5, 2u);
  v6 = MemChunkAlloc(0x110uLL, 0);
  *(this + 95) = EnvMgr::EnvMgr(v6, 2u);
  *(this + 45) = 0u;
  *(this + 656) = 1;
  *(this + 696) = 1;
  if (!*(this + 3))
  {
    DgnArray<DSMLocalRecord>::reallocElts(this, 1, 0);
  }

  if (!*(this + 7))
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 16, 1, 0);
  }

  if (!*(this + 11))
  {
    v12 = 0;
    *(this + 11) = realloc_array(*(this + 4), &v12, 1uLL, *(this + 10), *(this + 10), 1);
    *(this + 4) = v12;
  }

  if (!*(this + 15))
  {
    DgnPrimArray<short>::reallocElts(this + 48, 1, 0);
  }

  if (!*(this + 19))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 64, 1, 0);
  }

  if (!*(this + 23))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 80, 1, 0);
  }

  if (!*(this + 27))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 96, 1, 0);
  }

  if (!*(this + 31))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 112, 1, 0);
  }

  if (!*(this + 35))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 128, 1, 0);
  }

  if (!*(this + 39))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 144, 1, 0);
  }

  if (!*(this + 43))
  {
    DgnPrimArray<short>::reallocElts(this + 160, 1, 0);
  }

  if (!*(this + 47))
  {
    DgnPrimArray<short>::reallocElts(this + 176, 1, 0);
  }

  if (!*(this + 51))
  {
    DgnPrimArray<short>::reallocElts(this + 192, 1, 0);
  }

  if (!*(this + 55))
  {
    DgnPrimArray<short>::reallocElts(this + 208, 1, 0);
  }

  if (!*(this + 59))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 224, 1, 0);
  }

  if (!*(this + 63))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 240, 1, 0);
  }

  if (!*(this + 67))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 256, 1, 0);
  }

  if (!*(this + 71))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 272, 1, 0);
  }

  if (!*(this + 75))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 288, 1, 0);
  }

  if (!*(this + 79))
  {
    v12 = 0;
    *(this + 79) = realloc_array(*(this + 38), &v12, 1uLL, *(this + 78), *(this + 78), 1);
    *(this + 38) = v12;
  }

  if (!*(this + 83))
  {
    v12 = 0;
    *(this + 83) = realloc_array(*(this + 40), &v12, 1uLL, *(this + 82), *(this + 82), 1);
    *(this + 40) = v12;
  }

  if (!*(this + 87))
  {
    v12 = 0;
    *(this + 87) = realloc_array(*(this + 42), &v12, 1uLL, *(this + 86), *(this + 86), 1);
    *(this + 42) = v12;
  }

  if (!*(this + 91))
  {
    v12 = 0;
    *(this + 91) = realloc_array(*(this + 44), &v12, 1uLL, *(this + 90), *(this + 90), 1);
    *(this + 44) = v12;
  }

  if (!*(this + 95))
  {
    v12 = 0;
    *(this + 95) = realloc_array(*(this + 46), &v12, 1uLL, *(this + 94), *(this + 94), 1);
    *(this + 46) = v12;
  }

  if (!*(this + 99))
  {
    v12 = 0;
    *(this + 99) = realloc_array(*(this + 48), &v12, 1uLL, *(this + 98), *(this + 98), 1);
    *(this + 48) = v12;
  }

  if (!*(this + 103))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 400, 1, 0);
  }

  if (!*(this + 107))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 416, 1, 0);
  }

  if (!*(this + 111))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 432, 1, 0);
  }

  if (!*(this + 115))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 448, 1, 0);
  }

  if (!*(this + 131))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 512, 1, 0);
  }

  if (!*(this + 123))
  {
    v12 = 0;
    *(this + 123) = realloc_array(*(this + 60), &v12, 1uLL, *(this + 122), *(this + 122), 1);
    *(this + 60) = v12;
  }

  if (!*(this + 151))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 592, 1, 0);
  }

  if (!*(this + 119))
  {
    v12 = 0;
    *(this + 119) = realloc_array(*(this + 58), &v12, 1uLL, *(this + 118), *(this + 118), 1);
    *(this + 58) = v12;
  }

  if (!*(this + 127))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 496, 1, 0);
  }

  if (!*(this + 139))
  {
    v12 = 0;
    *(this + 139) = realloc_array(*(this + 68), &v12, 1uLL, *(this + 138), *(this + 138), 1);
    *(this + 68) = v12;
  }

  if (!*(this + 143))
  {
    v12 = 0;
    *(this + 143) = realloc_array(*(this + 70), &v12, 1uLL, *(this + 142), *(this + 142), 1);
    *(this + 70) = v12;
  }

  if (!*(this + 147))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 576, 1, 0);
  }

  if (!*(this + 155))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 608, 1, 0);
  }

  if (!*(this + 159))
  {
    v12 = 0;
    *(this + 159) = realloc_array(*(this + 78), &v12, 1uLL, *(this + 158), *(this + 158), 1);
    *(this + 78) = v12;
  }

  if (!*(this + 169))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(v4, 1, 0);
  }

  if (!*(this + 135))
  {
    DgnPrimArray<short>::reallocElts(this + 528, 1, 0);
  }

  LOWORD(v12) = 0;
  StateMgr::newState(this, 0, &v12, v7, v8, v9, v10, v11);
  **(this + 68) = 0;
  **(this + 70) = 0;
  *(this + 183) = 0;
}

void sub_2625F61D8(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 704);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 680);
  DgnArray<PhnIndexSet>::releaseAll(v2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 640);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 624);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 608);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 592);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 576);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 560);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 544);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 528);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 512);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 496);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 480);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 464);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 448);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 432);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 416);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 400);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 384);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 368);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 352);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 336);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 320);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 304);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 288);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 272);
  DgnArray<DgnArray<ParseToken>>::releaseAll(v1 + 256);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 240);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 224);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 208);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 192);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 176);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 160);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 144);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 128);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 112);
  DgnArray<DgnString>::releaseAll(v1 + 96);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(v1 + 80);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 64);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1 + 32);
  DgnIOwnArray<BitArray *>::releaseAll(v1 + 16);
  DgnArray<DgnCollArray<unsigned int,WordList>>::releaseAll(v1);
  _Unwind_Resume(a1);
}

uint64_t StateMgr::newState(StateMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  return StateMgr::newState(this, a2, &v9, a4, a5, a6, a7, a8);
}

{
  if (*(this + 182) <= a3)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1552, "voc/statemgr", 22, "%u %u", a7, a8, *(this + 180));
  }

  StateMgr::verifyStateFull(this, a2, 1, 1, a5, a6, a7, a8);
  v13 = *(this + 178);
  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = *(this + 88);
  v15 = 0xFFFFFFFFLL;
  while (1)
  {
    v16 = *v14++;
    if (v16 == a3)
    {
      break;
    }

    --v15;
    if (!--v13)
    {
      goto LABEL_9;
    }
  }

  if (!v15)
  {
LABEL_9:
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1558, "voc/statemgr", 29, "%u", v11, v12, a3);
  }

  PhnIndexSet::PhnIndexSet(v24, *(*(this + 92) + 184));
  *v24[0] |= 1u;
  v17 = *(this + 178);
  if (v17)
  {
    v18 = *(this + 178);
    v19 = *(this + 88);
    while (*v19 != a3)
    {
      ++v19;
      if (!--v18)
      {
        goto LABEL_16;
      }
    }

    v20 = v17 - 1;
    *v19 = *(*(this + 88) + 4 * v20);
    *(this + 178) = v20;
  }

LABEL_16:
  *(*(this + 68) + a3) = 1;
  *(*(this + 70) + a3) = 1;
  BitArray::operator=((*(this + 83) + 16 * a3), v24);
  v21 = *(this + 16) + 16 * a2;
  v22 = *(v21 + 8);
  if (v22 == *(v21 + 12))
  {
    DgnPrimArray<unsigned int>::reallocElts(*(this + 16) + 16 * a2, 1, 1);
    v22 = *(v21 + 8);
  }

  *(*v21 + 4 * v22) = a3;
  ++*(v21 + 8);
  *(*(this + 14) + 4 * a3) = a2;
  *(*(this + 6) + 2 * a3) = 0;
  *(*(this + 8) + 4 * a3) = 0;
  *(this + 183) ^= StateMgr::computeOneStateIdNameChecksum(this, a3);
  BitArray::~BitArray(v24);
  return a3;
}

void StateMgr::~StateMgr(EnvMgr **this)
{
  DgnDelete<EnvMgr>(this[94]);
  this[94] = 0;
  DgnDelete<EnvMgr>(this[95]);
  this[95] = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 88));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 85));
  DgnArray<PhnIndexSet>::releaseAll((this + 83));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 80));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 78));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 76));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 74));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 72));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 70));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 68));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 66));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 64));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 62));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 60));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 58));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 56));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 54));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 52));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 50));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 48));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 46));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 44));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 42));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 40));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 38));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 36));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 34));
  DgnArray<DgnArray<ParseToken>>::releaseAll((this + 32));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 30));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 28));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 26));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 24));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 22));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 20));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 18));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 16));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 14));
  DgnArray<DgnString>::releaseAll((this + 12));
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll((this + 10));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 8));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 6));
  DgnPrimArray<unsigned int>::~DgnPrimArray((this + 4));
  DgnIOwnArray<BitArray *>::releaseAll((this + 2));
  DgnArray<DgnCollArray<unsigned int,WordList>>::releaseAll(this);
}

void StateMgr::addPrimitiveBegPhonesArray(void *a1, unsigned int a2, uint64_t *a3)
{
  PhnIndexSet::PhnIndexSet(v11, *(a1[92] + 184));
  v6 = v11[0];
  *v11[0] |= 1u;
  if (*(a3 + 2))
  {
    v7 = 0;
    v8 = *a3;
    v9 = *(a1[93] + 592);
    do
    {
      v10 = *(v9 + 2 * *(v8 + 4 * v7));
      *(v6 + ((v10 >> 3) & 0x1FFC)) |= 1 << v10;
      ++v7;
    }

    while (v7 < *(a3 + 2));
  }

  BitArray::inplaceOrSameSize((a1[83] + 16 * a2), v11);
  BitArray::~BitArray(v11);
}

void StateMgr::addPrimitiveBegPhones(StateMgr *this, unsigned int a2, unsigned int a3)
{
  PhnIndexSet::PhnIndexSet(v8, *(*(this + 92) + 184));
  v6 = v8[0];
  v7 = *(*(*(this + 93) + 592) + 2 * a3);
  *v8[0] |= 1u;
  *(v6 + ((v7 >> 3) & 0x1FFC)) |= 1 << v7;
  BitArray::inplaceOrSameSize((*(this + 83) + 16 * a2), v8);
  BitArray::~BitArray(v8);
}

void StateMgr::recomputePrimitiveBegPhones(StateMgr *this, unsigned int a2)
{
  PhnIndexSet::PhnIndexSet(v5, *(*(this + 92) + 184));
  BitArray::operator=((*(this + 83) + 16 * a2), v5);
  v4 = *(*(this + 83) + 16 * a2);
  *v4 |= 1u;
  StateMgr::addPrimitiveBegPhonesArray(this, a2, (*this + 80 * a2 + 8));
  BitArray::~BitArray(v5);
}

void StateMgr::recomputeAllPrimitiveBegPhones(StateMgr *this)
{
  v1 = *(this + 180);
  if (v1 >= 2)
  {
    for (i = 1; i < v1; ++i)
    {
      if (*(*(this + 68) + i))
      {
        StateMgr::recomputePrimitiveBegPhones(this, i);
        v1 = *(this + 180);
      }
    }
  }
}

BOOL StateMgr::isPrecedingNonAcousticWordForState(StateMgr *this, int a2, unsigned int a3)
{
  v3 = *(*(this + 64) + 4 * a3);
  if (!v3)
  {
    return 0;
  }

  v4 = *this + 80 * v3;
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = *(v4 + 8);
  for (i = 0xFFFFFFFFLL; ; --i)
  {
    v8 = *v6++;
    if (v8 == a2)
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return i != 0;
}

uint64_t StateMgr::isValidPrecedingNonAcousticWordStateForUpgrade(WordList **this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  StateMgr::verifyState(this, a2, a3, a4, a5, a6, a7, a8);
  if (*(this[64] + a2))
  {
    return 0;
  }

  StateMgr::verifyStateFull(this, a2, 1, 0, v10, v11, v12, v13);
  if (*(this[28] + 4 * a2 + 2))
  {
    return 0;
  }

  StateMgr::verifyStateFull(this, a2, 1, 0, v14, v15, v16, v17);
  if (*(this[76] + 4 * a2 + 2))
  {
    return 0;
  }

  v25 = *this + 80 * a2;
  if (!*(v25 + 16))
  {
    return 0;
  }

  v26 = 0;
  do
  {
    v27 = *(*(v25 + 8) + 4 * v26);
    WordList::verifyVisible(this[93], v27, v18, v19, v20, v21, v22, v23);
    result = WordList::isGuessedWordByOptionalTag(this[93], v27);
    if ((result & 1) == 0)
    {
      break;
    }

    ++v26;
  }

  while (v26 < *(v25 + 16));
  return result;
}

void StateMgr::verifyState(StateMgr *this, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 180) <= a2 || !*(*(this + 68) + a2))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1326, "voc/statemgr", 1, "%u", a7, a8, a2);
  }
}

uint64_t StateMgr::resetPrecedingNonAcousticWordStates(uint64_t this)
{
  v1 = this;
  v2 = *(this + 720);
  v3 = *(this + 524);
  v4 = v2;
  if (v2 > v3)
  {
    this = DgnPrimArray<unsigned int>::reallocElts(this + 512, v2 - v3, 0);
    v4 = *(v1 + 720);
  }

  *(v1 + 520) = v2;
  v5 = v4;
  if (*(v1 + 492) < v4)
  {
    v17 = 0;
    this = realloc_array(*(v1 + 480), &v17, v4, *(v1 + 488), *(v1 + 488), 1);
    *(v1 + 492) = this;
    *(v1 + 480) = v17;
    v5 = *(v1 + 720);
  }

  *(v1 + 488) = v4;
  v6 = (v1 + 592);
  v7 = *(v1 + 604);
  if (v5 > v7)
  {
    this = DgnArray<DgnPrimArray<double>>::reallocElts(v1 + 592, v5 - v7, 0);
  }

  v8 = *(v1 + 600);
  if (v8 <= v5)
  {
    if (v8 < v5)
    {
      v11 = v5 - v8;
      v12 = 16 * v8;
      do
      {
        v13 = (*v6 + v12);
        *v13 = 0;
        v13[1] = 0;
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v5)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      this = DgnPrimArray<unsigned int>::~DgnPrimArray(*v6 + v10);
      v10 -= 16;
    }

    while (v9 > v5);
  }

  *(v1 + 600) = v5;
  if (*(v1 + 720))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      *(*(v1 + 512) + 4 * v15) = 0;
      *(*(v1 + 480) + v15) = 0;
      v16 = *(v1 + 592);
      this = *(v16 + v14);
      if (this)
      {
        this = MemChunkFree(this, 0);
        *(v16 + v14) = 0;
      }

      *(v16 + v14 + 8) = 0;
      ++v15;
      v14 += 16;
    }

    while (v15 < *(v1 + 720));
  }

  return this;
}

StateMgr *StateMgr::upgradePrecedingNonAcousticWordsAllowed(StateMgr *result, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(*(result + 93) + 516) >= 0x3Eu)
  {
    v9 = a2[2];
    if (v9 >= 2)
    {
      v10 = result;
      v11 = (*a2 + 1);
      v12 = v9 - 1;
      while (1)
      {
        v13 = *v11++;
        if (v13 == 1)
        {
          break;
        }

        if (!--v12)
        {
          return result;
        }
      }

      Handle = StateMgr::getHandle(result, "GuessedWords", 0, a4, a5, a6, a7, a8);
      v33 = 0;
      v34 = 0;
      if (!Handle || (v21 = Handle, (StateMgr::isValidPrecedingNonAcousticWordStateForUpgrade(v10, Handle, v15, v16, v17, v18, v19, v20) & 1) == 0))
      {
        WordList::getAllGuessedWordsByOptionalTag(*(v10 + 93), &v33);
        if (!v34)
        {
          return DgnPrimArray<unsigned int>::~DgnPrimArray(&v33);
        }

        v35 = 0;
        v21 = StateMgr::newState(v10, 0, &v35, v22, v23, v24, v25, v26);
        StateMgr::addWordIdArrayNoPhones(v10, v21, &v33, 1, v27, v28, v29, v30);
      }

      v31 = a2[2];
      if (v31 >= 2)
      {
        for (i = 1; i < v31; ++i)
        {
          if (v21 != i && *(*a2 + i) == 1)
          {
            *(*(v10 + 64) + 4 * i) = v21;
            StateMgr::addPrecedingNonAcousticWordStateRef(v10, v21, i);
            v31 = a2[2];
          }
        }
      }

      return DgnPrimArray<unsigned int>::~DgnPrimArray(&v33);
    }
  }

  return result;
}

void sub_2625F6C94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t StateMgr::getHandle(StateMgr *this, const char *__s2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  if (a3)
  {
    StateMgr::verifyVisible(this, a3, a3, a4, a5, a6, a7, a8);
  }

  v11 = *(this + 16) + 16 * v8;
  v12 = *(v11 + 8);
  if (!v12)
  {
    return 0;
  }

  v13 = *v11;
  v14 = *(this + 12);
  while (1)
  {
    v16 = *v13++;
    v15 = v16;
    v17 = v14 + 16 * v16;
    v18 = *(v17 + 8);
    v19 = *v17;
    v20 = (v18 ? v19 : &unk_26287398E);
    if (*v20 && !strcmp(v20, __s2))
    {
      break;
    }

    if (!--v12)
    {
      return 0;
    }
  }

  return v15;
}

uint64_t StateMgr::addWordIdArrayNoPhones(StateMgr *a1, unsigned int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a3 + 8))
  {
    v12 = 0;
    v13 = a2;
    do
    {
      v14 = *(*a3 + 4 * v12);
      if (StateMgr::isWordIdInState(a1, a2, *(*a3 + 4 * v12), a4, a5, a6, a7, a8))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2046, "voc/statemgr", 3, "%u %u", v15, v16, v14);
      }

      WordList::addIncludingStateRef(*(a1 + 93), v14);
      v17 = *(*(a1 + 2) + 8 * a2);
      if (v17)
      {
        v18 = *(v17 + 2);
        if (v18 <= v14)
        {
          BitArray::addSize(v17, v14 + 1 - v18);
          BitArray::clearRange(*(*(a1 + 2) + 8 * a2), v18, v14 + 1);
          v17 = *(*(a1 + 2) + 8 * a2);
        }

        *(*v17 + ((v14 >> 3) & 0x1FFFFFFC)) |= 1 << v14;
      }

      ++v12;
    }

    while (v12 < *(a3 + 8));
  }

  else
  {
    v13 = a2;
  }

  result = DgnCollArray<unsigned int,WordList>::addArray(*a1 + 80 * v13, a3);
  if (!*(*(a1 + 2) + 8 * v13) && *(*a1 + 80 * v13 + 16) >= 0x1F4u)
  {

    return StateMgr::getBitWords(a1, a2);
  }

  return result;
}

unint64_t StateMgr::addPrecedingNonAcousticWordStateRef(unint64_t this, unsigned int a2, int a3)
{
  v4 = *(this + 592) + 16 * a2;
  v5 = *(v4 + 8);
  if (v5 == *(v4 + 12))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(*(this + 592) + 16 * a2, 1, 1);
    v5 = *(v4 + 8);
  }

  *(*v4 + 4 * v5) = a3;
  ++*(v4 + 8);
  return this;
}

uint64_t StateMgr::loadStateMgr(StateMgr *this, DFile *a2, DFileChecksums *a3, int a4, unsigned int a5)
{
  *(this + 656) = 0;
  result = DFile::subFileExists(a2, 0x59u);
  if (!result)
  {
    return result;
  }

  *(this + 92) = *(**VocMgr::smpVocMgr + 8 * a5);
  if (a4)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 746, "voc/statemgr", 19, "%s", v11, v12, &unk_26287398E);
  }

  *v193 = 0;
  MrecHeader = OpenAndReadMrecHeader(a2, 0x59u, 1, "MRSTA!? ", &v193[1], v193);
  v16 = MrecHeader;
  *(MrecHeader + 35) = 0;
  v17 = v193[0];
  v18 = v193[1] == 19 && v193[0] == 38;
  v19 = !v18;
  v175 = v19;
  v173 = a3;
  if (v18)
  {
    v174 = 0;
    v20 = 0;
    v172 = 0;
    *(MrecHeader + 35) = 1;
    v21 = 19;
    v17 = 38;
  }

  else if (*v193 == 0x1400000027)
  {
    v174 = 0;
    v20 = 0;
    v172 = 0;
    *(MrecHeader + 35) = 1;
    v21 = 20;
  }

  else if (*v193 == 0x1600000028)
  {
    v20 = 0;
    v172 = 0;
    v174 = 1;
    *(MrecHeader + 35) = 1;
    v21 = 22;
  }

  else if (*v193 == 0x1700000029 || *v193 == 0x170000002ALL)
  {
    v172 = 0;
    v174 = 1;
    *(MrecHeader + 35) = 1;
    v21 = 23;
    v20 = 1;
  }

  else
  {
    if (*v193 == 0x180000002BLL)
    {
      v174 = 1;
      *(MrecHeader + 35) = 1;
      v21 = 24;
    }

    else
    {
      if (*(a2 + 6))
      {
        v171 = *(a2 + 2);
      }

      else
      {
        v171 = &unk_26287398E;
      }

      MrecHeaderCheckVersions(v171, "MRSTA!? ", v193[1], v193[0], 0x18u, 0x2Cu);
      v17 = v193[0];
      v21 = v193[1];
      v174 = 1;
    }

    v20 = 1;
    v172 = 1;
  }

  MrecHeaderCheckLatestVersionIfShared(a2, "MRSTA!? ", v21, v17, 24, 44, v14, v15);
  v192 = 0;
  v191[0] = 0;
  v191[1] = 0;
  v189 = 0;
  v190 = 0;
  v187 = 0;
  v188 = 0;
  v185 = 0;
  v186 = 0;
  v183 = 0;
  v184 = 0;
  readObject<DgnCollArray<unsigned int,WordList>>(v16, this, &v192);
  readObject<unsigned char>(v16, this + 32, &v192);
  if (*(v16 + 35) != 1 || (readObject<RuleSpec>(v16, &v189, &v192), (*(v16 + 35) & 1) == 0))
  {
    readObject<unsigned short>(v16, this + 48, &v192);
  }

  readObject<unsigned int>(v16, this + 64, &v192);
  if (*(v16 + 35) != 1 || (readObject<DgnArray<RuleSpec>>(v16, &v187, &v192), (*(v16 + 35) & 1) == 0))
  {
    readObject<DgnPrimArray<unsigned short>>(v16, this + 80, &v192);
  }

  readObject<DgnString>(v16, this + 96, &v192);
  readObject<unsigned int>(v16, this + 112, &v192);
  readObject<DgnPrimArray<unsigned int>>(v16, this + 128, &v192);
  readObject<DgnPrimArray<unsigned short>>(v16, this + 144, &v192);
  if (*(v16 + 35) != 1 || (readObject<DgnArray<StateSpec>>(v16, &v185, &v192), (*(v16 + 35) & 1) == 0))
  {
    readObject<DgnPrimArray<unsigned int>>(v16, this + 224, &v192);
  }

  readObject<DgnPrimArray<unsigned short>>(v16, this + 240, &v192);
  readObject<DgnArray<ParseToken>>(v16, this + 256, &v192);
  readObject<unsigned int>(v16, this + 272, &v192);
  readObject<int>(v16, this + 288, &v192);
  readObject<unsigned char>(v16, this + 304, &v192);
  readObject<unsigned char>(v16, this + 320, &v192);
  readObject<unsigned char>(v16, this + 336, &v192);
  readObject<unsigned char>(v16, this + 352, &v192);
  readObject<unsigned char>(v16, this + 368, &v192);
  readObject<unsigned char>(v16, this + 384, &v192);
  if (v175)
  {
    readObject<unsigned int>(v16, this + 400, &v192);
    readObject<unsigned int>(v16, this + 416, &v192);
    readObject<unsigned int>(v16, this + 432, &v192);
    readObject<unsigned int>(v16, this + 448, &v192);
  }

  if (v20)
  {
    readObject<unsigned int>(v16, this + 512, &v192);
    readObject<unsigned char>(v16, this + 480, &v192);
    readObject<DgnPrimArray<unsigned int>>(v16, this + 592, &v192);
  }

  else
  {
    readObject<unsigned char>(v16, v191, &v192);
  }

  readObject<unsigned char>(v16, this + 464, &v192);
  readObject<unsigned int>(v16, this + 496, &v192);
  readObject<unsigned char>(v16, this + 544, &v192);
  readObject<unsigned char>(v16, this + 560, &v192);
  readObject<DgnPrimArray<unsigned int>>(v16, this + 576, &v192);
  if (*(v16 + 35) != 1 || (readObject<DgnArray<StateSpec>>(v16, &v183, &v192), (*(v16 + 35) & 1) == 0))
  {
    readObject<DgnPrimArray<unsigned int>>(v16, this + 608, &v192);
  }

  readObject<unsigned int>(v16, this + 704, &v192);
  v22 = (this + 720);
  readObject(v16, this + 180, &v192);
  readObject(v16, this + 181, &v192);
  if (v174)
  {
    readObject(v16, this + 183, &v192);
  }

  if (*(v16 + 35) == 1)
  {
    v182 = 0;
    readObject(v16, &v182, &v192);
    v180 = 0;
    v181 = 0;
    v178 = 0;
    v179 = 0;
    readObject<unsigned int>(v16, &v180, &v192);
    readObject<unsigned int>(v16, &v178, &v192);
    if (v181)
    {
      v27 = 0;
      do
      {
        StateMgr::killStateInternal(this, *(v180 + v27++), 0, 1, v23, v24, v25, v26);
      }

      while (v27 < v181);
    }

    if (*v22)
    {
      v28 = 0;
      do
      {
        v176 = 0;
        v177 = 0;
        v29 = v183;
        v30 = v183 + 16 * v28;
        if (*(v30 + 8))
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          do
          {
            v34 = *(*v30 + v31);
            if (v34 == v182)
            {
              v35 = *(*v30 + v31 + 4);
              if (v32 == HIDWORD(v177))
              {
                DgnPrimArray<unsigned long long>::reallocElts(&v176, 1, 1);
                v32 = v177;
              }

              *(v176 + 8 * v32) = v34 | (v35 << 32);
              v32 = v177 + 1;
              LODWORD(v177) = v177 + 1;
              v29 = v183;
            }

            ++v33;
            v30 = v29 + 16 * v28;
            v31 += 8;
          }

          while (v33 < *(v30 + 8));
        }

        else
        {
          v32 = 0;
        }

        DgnArray<StateSpec>::copyArraySlice(v30, &v176, 0, v32);
        DgnIArray<Utterance *>::~DgnIArray(&v176);
        ++v28;
        v36 = *v22;
      }

      while (v28 < v36);
      if (*v22)
      {
        v37 = 0;
        do
        {
          v38 = v179;
          if (v179)
          {
            v39 = v178;
            v40 = 0xFFFFFFFFLL;
            while (1)
            {
              v41 = *v39++;
              if (v37 == v41)
              {
                break;
              }

              --v40;
              if (!--v38)
              {
                goto LABEL_67;
              }
            }

            if (v40)
            {
              v176 = 0;
              v177 = 0;
              v42 = v187;
              v43 = v187 + 16 * v37;
              if (*(v43 + 8))
              {
                v44 = 0;
                v45 = 0;
                v46 = 0;
                v47 = 0;
                do
                {
                  v48 = *v43;
                  v49 = *(*v43 + v44);
                  if (v49 == v182)
                  {
                    if (v46 == HIDWORD(v177))
                    {
                      DgnPrimArray<unsigned int>::reallocElts(&v176, 1, 1);
                      v46 = v177;
                      v45 = v176;
                      LOWORD(v49) = *(v48 + v44);
                      v42 = v187;
                    }

                    v50 = (v45 + 4 * v46);
                    *v50 = v49;
                    v50[1] = *(v48 + v44 + 2);
                    LODWORD(v177) = ++v46;
                  }

                  ++v47;
                  v43 = v42 + 16 * v37;
                  v44 += 4;
                }

                while (v47 < *(v43 + 8));
              }

              else
              {
                v46 = 0;
              }

              DgnArray<RuleSpec>::copyArraySlice(v43, &v176, 0, v46);
              DgnIArray<Utterance *>::~DgnIArray(&v176);
              v36 = *v22;
            }
          }

LABEL_67:
          ++v37;
        }

        while (v37 < v36);
      }
    }

    v51 = v190;
    v52 = *(this + 15);
    LODWORD(v53) = v190;
    if (v190 > v52)
    {
      DgnPrimArray<short>::reallocElts(this + 48, v190 - v52, 0);
      LODWORD(v53) = v190;
    }

    *(this + 14) = v51;
    if (v53)
    {
      v54 = *(this + 6);
      v53 = v53;
      v55 = (v189 + 2);
      do
      {
        v56 = *v55;
        v55 += 2;
        *v54++ = v56;
        --v53;
      }

      while (v53);
    }

    v57 = v188;
    v58 = *(this + 23);
    if (v188 > v58)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 80, v188 - v58, 0);
    }

    v59 = *(this + 22);
    if (v59 <= v57)
    {
      if (v59 < v57)
      {
        v62 = v57 - v59;
        v63 = 16 * v59;
        do
        {
          v64 = (*(this + 10) + v63);
          *v64 = 0;
          v64[1] = 0;
          v63 += 16;
          --v62;
        }

        while (v62);
      }
    }

    else if (v59 > v57)
    {
      v60 = v59;
      v61 = 16 * v59 - 16;
      do
      {
        --v60;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 10) + v61);
        v61 -= 16;
      }

      while (v60 > v57);
    }

    *(this + 22) = v57;
    if (v188)
    {
      v65 = 0;
      v66 = v187;
      do
      {
        v67 = *(this + 10) + 16 * v65;
        v68 = *(v66 + 16 * v65 + 8);
        v69 = *(v67 + 12);
        if (v68 > v69)
        {
          DgnPrimArray<short>::reallocElts(*(this + 10) + 16 * v65, v68 - v69, 0);
          v66 = v187;
        }

        *(v67 + 8) = v68;
        v70 = (v66 + 16 * v65);
        v71 = *(v70 + 2);
        if (v71)
        {
          v72 = *v70;
          v73 = *(*(this + 10) + 16 * v65);
          v74 = (v72 + 2);
          do
          {
            v75 = *v74;
            v74 += 2;
            *v73++ = v75;
            --v71;
          }

          while (v71);
        }

        ++v65;
      }

      while (v65 < v188);
    }

    v76 = v186;
    v77 = *(this + 59);
    if (v186 > v77)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 224, v186 - v77, 0);
    }

    v78 = *(this + 58);
    if (v78 <= v76)
    {
      if (v78 < v76)
      {
        v81 = v76 - v78;
        v82 = 16 * v78;
        do
        {
          v83 = (*(this + 28) + v82);
          *v83 = 0;
          v83[1] = 0;
          v82 += 16;
          --v81;
        }

        while (v81);
      }
    }

    else if (v78 > v76)
    {
      v79 = v78;
      v80 = 16 * v78 - 16;
      do
      {
        --v79;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*(this + 28) + v80);
        v80 -= 16;
      }

      while (v79 > v76);
    }

    *(this + 58) = v76;
    if (v186)
    {
      v84 = 0;
      v85 = v185;
      do
      {
        v86 = *(this + 28) + 16 * v84;
        v87 = *(v85 + 16 * v84 + 8);
        v88 = *(v86 + 12);
        if (v87 > v88)
        {
          DgnPrimArray<unsigned int>::reallocElts(*(this + 28) + 16 * v84, v87 - v88, 0);
          v85 = v185;
        }

        *(v86 + 8) = v87;
        v89 = (v85 + 16 * v84);
        if (v89[2])
        {
          v90 = 0;
          v91 = *(*(this + 28) + 16 * v84);
          v92 = (*v89 + 4);
          do
          {
            v93 = *v92;
            v92 += 2;
            *(v91 + 4 * v90++) = v93;
          }

          while (v90 < v89[2]);
        }

        ++v84;
      }

      while (v84 < v186);
    }

    v94 = (this + 608);
    v95 = v184;
    v96 = *(this + 155);
    if (v184 > v96)
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(this + 608, v184 - v96, 0);
    }

    v97 = *(this + 154);
    if (v97 <= v95)
    {
      if (v97 < v95)
      {
        v100 = v95 - v97;
        v101 = 16 * v97;
        do
        {
          v102 = (*v94 + v101);
          *v102 = 0;
          v102[1] = 0;
          v101 += 16;
          --v100;
        }

        while (v100);
      }
    }

    else if (v97 > v95)
    {
      v98 = v97;
      v99 = 16 * v97 - 16;
      do
      {
        --v98;
        DgnPrimArray<unsigned int>::~DgnPrimArray(*v94 + v99);
        v99 -= 16;
      }

      while (v98 > v95);
    }

    *(this + 154) = v95;
    if (v184)
    {
      v103 = 0;
      v104 = v183;
      do
      {
        v105 = *v94 + 16 * v103;
        v106 = *(v104 + 16 * v103 + 8);
        v107 = *(v105 + 12);
        if (v106 > v107)
        {
          DgnPrimArray<unsigned int>::reallocElts(*v94 + 16 * v103, v106 - v107, 0);
          v104 = v183;
        }

        *(v105 + 8) = v106;
        v108 = (v104 + 16 * v103);
        if (v108[2])
        {
          v109 = 0;
          v110 = *(*v94 + 16 * v103);
          v111 = (*v108 + 4);
          do
          {
            v112 = *v111;
            v111 += 2;
            *(v110 + 4 * v109++) = v112;
          }

          while (v109 < v108[2]);
        }

        ++v103;
      }

      while (v103 < v184);
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v178);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v180);
  }

  EnvMgr::loadEnvMgrFromStream(*(this + 94), a2, v16, &v192, 0);
  EnvMgr::loadEnvMgrFromStream(*(this + 95), a2, v16, &v192, 0);
  readObjectChecksumAndVerify(v16, v192);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(v173, CurrentSubDirComponents, 0x59u, v192);
  if ((v20 & 1) == 0)
  {
    StateMgr::resetPrecedingNonAcousticWordStates(this);
  }

  LODWORD(v114) = *v22;
  if (v175)
  {
    goto LABEL_144;
  }

  v115 = *(this + 103);
  v116 = *v22;
  if (v114 > v115)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 400, v114 - v115, 0);
    v116 = *v22;
  }

  *(this + 102) = v114;
  v117 = *(this + 107);
  v118 = v116;
  if (v116 > v117)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 416, v116 - v117, 0);
    v118 = *v22;
  }

  *(this + 106) = v116;
  v119 = *(this + 111);
  v120 = v118;
  if (v118 > v119)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 432, v118 - v119, 0);
    v120 = *v22;
  }

  *(this + 110) = v118;
  v121 = *(this + 115);
  v122 = v120;
  if (v120 > v121)
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 448, v120 - v121, 0);
    v122 = *v22;
  }

  *(this + 114) = v120;
  if (v122)
  {
    v123 = 0;
    v124 = *(this + 50);
    v125 = *(this + 52);
    v126 = *(this + 54);
    v127 = *(this + 56);
    do
    {
      *(v124 + 4 * v123) = -1;
      *(v125 + 4 * v123) = -1;
      *(v126 + 4 * v123) = -1;
      *(v127 + 4 * v123++) = -1;
      v114 = *v22;
    }

    while (v123 < v114);
LABEL_144:
    if (*(this + 173) < v114)
    {
      v180 = 0;
      *(this + 173) = realloc_array(*(this + 85), &v180, v114, *(this + 172), *(this + 172), 1);
      *(this + 85) = v180;
    }

    goto LABEL_147;
  }

  LODWORD(v114) = 0;
LABEL_147:
  *(this + 172) = v114;
  if (*(this + 178))
  {
    v128 = 0;
    do
    {
      *(*(this + 85) + *(*(this + 88) + 4 * v128++)) = 1;
    }

    while (v128 < *(this + 178));
  }

  v129 = (this + 664);
  v130 = *(this + 168);
  if (v130 >= 1)
  {
    v131 = 16 * v130 - 16;
    do
    {
      BitArray::~BitArray((*v129 + v131));
      v131 -= 16;
    }

    while (v131 != -16);
  }

  *(this + 168) = 0;
  v132 = *(this + 180);
  v133 = *(this + 169);
  if (v132 > v133)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 664, v132 - v133, 0);
  }

  PhnIndexSet::PhnIndexSet(&v180, *(*(this + 92) + 184));
  if (*v22)
  {
    v134 = 0;
    v135 = *(this + 168);
    do
    {
      PhnIndexSet::PhnIndexSet((*v129 + 16 * v135), &v180);
      v135 = *(this + 168) + 1;
      *(this + 168) = v135;
      ++v134;
    }

    while (v134 < *(this + 180));
  }

  BitArray::~BitArray(&v180);
  v142 = *(this + 180);
  v143 = v142;
  if (*(this + 159) < v142)
  {
    v180 = 0;
    *(this + 159) = realloc_array(*(this + 78), &v180, v142, *(this + 158), *(this + 158), 1);
    *(this + 78) = v180;
    v143 = *(this + 180);
  }

  *(this + 158) = v142;
  if (v143)
  {
    v144 = 0;
    do
    {
      *(*(this + 78) + v144++) = 0;
      v145 = *(this + 180);
    }

    while (v144 < v145);
    if (v145)
    {
      v146 = *(this + 92);
      v147 = *(v146 + 48);
      v148 = *(v146 + 16);
      v149 = (*this + 72);
      v150 = *(this + 180);
      do
      {
        *(v149 - 2) = WordIdCollSearchCmpFromWordId;
        *(v149 - 1) = v147;
        *v149 = v148;
        v149 += 10;
        --v150;
      }

      while (v150);
    }

    v151 = (this + 16);
    v152 = *(this + 7);
    if (v145 > v152)
    {
      DgnPrimArray<unsigned long long>::reallocElts(this + 16, v145 - v152, 0);
    }
  }

  else
  {
    LODWORD(v145) = 0;
    v151 = (this + 16);
  }

  v153 = *(this + 6);
  if (v153 <= v145)
  {
    if (v153 < v145)
    {
      do
      {
        *(*v151 + 8 * v153++) = 0;
      }

      while (v145 != v153);
    }
  }

  else
  {
    DgnIOwnArray<BitArray *>::destructAt(v151, v145, v153 - v145);
  }

  *(this + 6) = v145;
  v154 = *(this + 180);
  if (v154)
  {
    v155 = 0;
    do
    {
      *(*v151 + v155) = 0;
      v155 += 8;
    }

    while (8 * v154 != v155);
  }

  v156 = *(this + 43);
  v157 = v154;
  if (v154 > v156)
  {
    DgnPrimArray<short>::reallocElts(this + 160, v154 - v156, 0);
    v157 = *v22;
  }

  *(this + 42) = v154;
  v158 = *(this + 47);
  v159 = v157;
  if (v157 > v158)
  {
    DgnPrimArray<short>::reallocElts(this + 176, v157 - v158, 0);
    v159 = *v22;
  }

  *(this + 46) = v157;
  v160 = *(this + 51);
  v161 = v159;
  if (v159 > v160)
  {
    DgnPrimArray<short>::reallocElts(this + 192, v159 - v160, 0);
    v161 = *v22;
  }

  *(this + 50) = v159;
  v162 = *(this + 55);
  v163 = v161;
  if (v161 > v162)
  {
    DgnPrimArray<short>::reallocElts(this + 208, v161 - v162, 0);
    v163 = *v22;
  }

  *(this + 54) = v161;
  if (v163)
  {
    v164 = *(this + 20);
    v165 = *(this + 22);
    v166 = *(this + 24);
    v167 = v163;
    v168 = *(this + 26);
    do
    {
      *v164++ = 0;
      *v165++ = 0;
      *v166++ = 0;
      *v168++ = 0;
      --v167;
    }

    while (v167);
  }

  v169 = *(this + 135);
  v170 = v163;
  if (v163 > v169)
  {
    DgnPrimArray<short>::reallocElts(this + 528, v163 - v169, 0);
    v170 = *v22;
  }

  *(this + 134) = v163;
  if (v170)
  {
    memset_pattern16(*(this + 66), &unk_262873A20, 2 * v170);
  }

  if ((v20 & 1) == 0)
  {
    StateMgr::upgradePrecedingNonAcousticWordsAllowed(this, v191, v136, v137, v138, v139, v140, v141);
  }

  DgnDelete<DgnStream>(v16);
  if ((v174 & v172 & 1) == 0)
  {
    StateMgr::computeStateIdNameChecksum(this);
  }

  DgnArray<DgnArray<ParseToken>>::releaseAll(&v183);
  DgnArray<DgnArray<ParseToken>>::releaseAll(&v185);
  DgnArray<DgnArray<ParseToken>>::releaseAll(&v187);
  DgnIArray<Utterance *>::~DgnIArray(&v189);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v191);
}

void sub_2625F7F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  DgnArray<DgnArray<ParseToken>>::releaseAll(&a20);
  DgnArray<DgnArray<ParseToken>>::releaseAll(&a22);
  DgnArray<DgnArray<ParseToken>>::releaseAll(&a24);
  DgnIArray<Utterance *>::~DgnIArray(&a26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v26 - 120);
  _Unwind_Resume(a1);
}

void readObject<DgnCollArray<unsigned int,WordList>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v16 = 0;
  readObject(a1, &v16, a3);
  v6 = v16;
  v7 = *(a2 + 12);
  if (v16 > v7)
  {
    DgnArray<DSMLocalRecord>::reallocElts(a2, v16 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v11 = v6 - v8;
      v12 = 80 * v8;
      do
      {
        v13 = *a2 + v12;
        *v13 = 0;
        *(v13 + 2) = 0;
        *(v13 + 8) = 0uLL;
        *(v13 + 24) = 0uLL;
        *(v13 + 40) = 0uLL;
        *(v13 + 64) = 0;
        *(v13 + 72) = 0;
        v12 += 80;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v9 = v8;
    v10 = 80 * v8 - 80;
    do
    {
      --v9;
      DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(*a2 + v10);
      v10 -= 80;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      DgnCollArray<unsigned int,WordList>::readObject(*a2 + v14, a1, a3);
      ++v15;
      v14 += 80;
    }

    while (v15 < *(a2 + 8));
  }
}

unint64_t readObject<DgnArray<RuleSpec>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v17 = 0;
  result = readObject(a1, &v17, a3);
  v7 = v17;
  v8 = *(a2 + 12);
  if (v17 > v8)
  {
    result = DgnArray<DgnPrimArray<double>>::reallocElts(a2, v17 - v8, 0);
  }

  v9 = *(a2 + 8);
  if (v9 <= v7)
  {
    if (v9 < v7)
    {
      v12 = v7 - v9;
      v13 = 16 * v9;
      do
      {
        v14 = (*a2 + v13);
        *v14 = 0;
        v14[1] = 0;
        v13 += 16;
        --v12;
      }

      while (v12);
    }
  }

  else if (v9 > v7)
  {
    v10 = v9;
    v11 = 16 * v9 - 16;
    do
    {
      --v10;
      result = DgnIArray<Utterance *>::~DgnIArray(*a2 + v11);
      v11 -= 16;
    }

    while (v10 > v7);
  }

  *(a2 + 8) = v7;
  if (v7)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      result = readObject<RuleSpec>(a1, *a2 + v15, a3);
      ++v16;
      v15 += 16;
    }

    while (v16 < *(a2 + 8));
  }

  return result;
}

void readObject<DgnPrimArray<unsigned short>>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v16 = 0;
  readObject(a1, &v16, a3);
  v6 = v16;
  v7 = *(a2 + 12);
  if (v16 > v7)
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(a2, v16 - v7, 0);
  }

  v8 = *(a2 + 8);
  if (v8 <= v6)
  {
    if (v8 < v6)
    {
      v11 = v6 - v8;
      v12 = 16 * v8;
      do
      {
        v13 = (*a2 + v12);
        *v13 = 0;
        v13[1] = 0;
        v12 += 16;
        --v11;
      }

      while (v11);
    }
  }

  else if (v8 > v6)
  {
    v9 = v8;
    v10 = 16 * v8 - 16;
    do
    {
      --v9;
      DgnPrimArray<unsigned int>::~DgnPrimArray(*a2 + v10);
      v10 -= 16;
    }

    while (v9 > v6);
  }

  *(a2 + 8) = v6;
  if (v6)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      readObject<unsigned short>(a1, *a2 + v14, a3);
      ++v15;
      v14 += 16;
    }

    while (v15 < *(a2 + 8));
  }
}

unint64_t readObject<DgnArray<StateSpec>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v17 = 0;
  result = readObject(a1, &v17, a3);
  v7 = v17;
  v8 = *(a2 + 12);
  if (v17 > v8)
  {
    result = DgnArray<DgnPrimArray<double>>::reallocElts(a2, v17 - v8, 0);
  }

  v9 = *(a2 + 8);
  if (v9 <= v7)
  {
    if (v9 < v7)
    {
      v12 = v7 - v9;
      v13 = 16 * v9;
      do
      {
        v14 = (*a2 + v13);
        *v14 = 0;
        v14[1] = 0;
        v13 += 16;
        --v12;
      }

      while (v12);
    }
  }

  else if (v9 > v7)
  {
    v10 = v9;
    v11 = 16 * v9 - 16;
    do
    {
      --v10;
      result = DgnIArray<Utterance *>::~DgnIArray(*a2 + v11);
      v11 -= 16;
    }

    while (v10 > v7);
  }

  *(a2 + 8) = v7;
  if (v7)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      result = readObject<StateSpec>(a1, *a2 + v15, a3);
      ++v16;
      v15 += 16;
    }

    while (v16 < *(a2 + 8));
  }

  return result;
}

void readObject<int>(DgnStream *a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  readObject(a1, &v8, a3);
  v6 = v8;
  v7 = *(a2 + 12);
  if (v8 > v7)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v8 - v7, 0);
  }

  *(a2 + 8) = v6;
  readObjectArray(a1, *a2, v6, a3);
}

uint64_t StateMgr::killStateInternal(EnvMgr **this, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3)
  {
    ItemEnvId = EnvMgr::getItemEnvId(this[94], a2);
    if (ItemEnvId)
    {
      EnvMgr::killEnv(this[94], ItemEnvId, v13, v14, v15, v16, v17, v18);
      EnvMgr::setItemEnvId(this[94], a2, 0, v19, v20, v21, v22, v23);
    }

    v24 = a2;
    v25 = *this + 80 * a2;
    if (*(v25 + 16))
    {
      v26 = 0;
      do
      {
        ItemPairEnvId = EnvMgr::getItemPairEnvId(this[95], a2, *(*(v25 + 8) + 4 * v26));
        if (ItemPairEnvId)
        {
          EnvMgr::killEnv(this[95], ItemPairEnvId, v28, v29, v30, v31, v32, v33);
          EnvMgr::setItemPairEnvId(this[95], a2, *(*(v25 + 8) + 4 * v26), 0, v34, v35, v36, v37);
        }

        ++v26;
      }

      while (v26 < *(v25 + 16));
    }

    *(this + 183) ^= StateMgr::computeOneStateIdNameChecksum(this, a2);
  }

  else
  {
    v24 = a2;
  }

  v38 = this[14];
  v39 = this[16] + 16 * *(v38 + v24);
  v40 = *(v39 + 8);
  if (v40)
  {
    v41 = *(v39 + 8);
    v42 = *v39;
    while (*v42 != a2)
    {
      ++v42;
      if (!--v41)
      {
        goto LABEL_17;
      }
    }

    v43 = v40 - 1;
    *v42 = *(*v39 + 4 * v43);
    *(v39 + 8) = v43;
  }

LABEL_17:
  *(v38 + v24) = 0;
  *(this[6] + v24) = 0;
  *(this[8] + v24) = 0;
  v44 = this[10] + 16 * v24;
  if (*v44)
  {
    MemChunkFree(*v44, 0);
    *v44 = 0;
  }

  *(v44 + 8) = 0;
  v45 = this[12] + 16 * v24;
  if (*v45)
  {
    MemChunkFree(*v45, 0);
    *v45 = 0;
  }

  *(v45 + 8) = 0;
  *(this[20] + v24) = 0;
  *(this[22] + v24) = 0;
  *(this[24] + v24) = 0;
  *(this[26] + v24) = 0;
  v46 = this[72] + 16 * v24;
  if (*v46)
  {
    MemChunkFree(*v46, 0);
    *v46 = 0;
  }

  *(v46 + 8) = 0;
  v47 = this[76] + 16 * v24;
  if (*v47)
  {
    MemChunkFree(*v47, 0);
    *v47 = 0;
  }

  *(v47 + 8) = 0;
  v69[0] = 0;
  v69[1] = 0;
  StateMgr::verifyStateFull(this, a2, a3, 0, a5, a6, a7, a8);
  DgnCollArray<unsigned int,WordList>::setColls(*this + 80 * v24, v69);
  while (1)
  {
    v52 = *this + 80 * v24;
    if (!*(v52 + 16))
    {
      break;
    }

    StateMgr::deleteWordIdNoPhones(this, a2, **(v52 + 8), 0, v48, v49, v50, v51);
  }

  DgnDelete<BitArray>(*(this[2] + v24));
  *(this[2] + v24) = 0;
  if (a4)
  {
    v58 = this[28] + 16 * v24;
    if (*v58)
    {
      MemChunkFree(*v58, 0);
      *v58 = 0;
    }

    *(v58 + 8) = 0;
    v59 = this[30] + 16 * v24;
    if (*v59)
    {
      MemChunkFree(*v59, 0);
      *v59 = 0;
    }

    *(v59 + 8) = 0;
    v60 = this[32] + 16 * v24;
    if (*v60)
    {
      MemChunkFree(*v60, 0);
      *v60 = 0;
    }

    *(v60 + 8) = 0;
  }

  else
  {
    StateMgr::setEmptyStateTransition(this, a2, a3, v53, v54, v55, v56, v57);
  }

  *(this[4] + v24) = 0;
  *(this[34] + v24) = 0xFFFF;
  *(this[36] + v24) = 0;
  *(this[38] + v24) = 1;
  *(this[40] + v24) = 1;
  *(this[42] + v24) = 0;
  *(this[44] + v24) = 1;
  *(this[46] + v24) = 1;
  *(this[48] + v24) = 0;
  *(this[50] + v24) = -1;
  *(this[52] + v24) = -1;
  *(this[54] + v24) = -1;
  *(this[56] + v24) = -1;
  *(this[60] + v24) = 0;
  StateMgr::setPrecedingNonAcousticWordState(this, a2, 0, a3, v54, v55, v56, v57);
  v65 = this[74] + 16 * v24;
  if (*v65)
  {
    MemChunkFree(*v65, 0);
    *v65 = 0;
  }

  *(v65 + 8) = 0;
  *(this[58] + v24) = 1;
  *(this[85] + v24) = 1;
  StateMgr::setWordAliasState(this, a2, 0, a3, v61, v62, v63, v64);
  v66 = *(this + 178);
  if (v66 == *(this + 179))
  {
    DgnPrimArray<unsigned int>::reallocElts((this + 88), 1, 1);
    v66 = *(this + 178);
  }

  *(this[88] + v66) = a2;
  ++*(this + 178);
  *(this[68] + v24) = 0;
  *(this[70] + v24) = 0;
  PhnIndexSet::PhnIndexSet(v68, *(this[92] + 46));
  BitArray::operator=(this[83] + 2 * v24, v68);
  BitArray::~BitArray(v68);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v69);
}

void sub_2625F8950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  BitArray::~BitArray(&a9);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a11);
  _Unwind_Resume(a1);
}

BOOL StateMgr::isEmpty(StateMgr *this)
{
  v1 = *(this + 178);
  if (*(this + 181))
  {
    ++v1;
  }

  return *(this + 180) == v1 + 1 && *(*(this + 18) + 8) == 0;
}

void StateMgr::makeSpecialEouStateId(StateMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = -1;
  v9 = StateMgr::newState(this, 0, &v15, a4, a5, a6, a7, a8);
  *(this + 181) = v9;
  *(*(this + 70) + v9) = 0;
  *(*(this + 58) + *(this + 181)) = 0;
  *(*(this + 85) + *(this + 181)) = 0;
  v14 = *(this + 181);

  StateMgr::setEndOfUtteranceAllowed(this, v14, 1, 0, v10, v11, v12, v13);
}

uint64_t StateMgr::newState(StateMgr *this, unsigned int a2, const unsigned __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  StateMgr::verifyStateFull(this, a2, 1, 1, a5, a6, a7, a8);
  PhnIndexSet::PhnIndexSet(v76, *(*(this + 92) + 184));
  *v76[0] |= 1u;
  v13 = *(this + 178);
  if (v13)
  {
    v14 = v13 - 1;
    v15 = *(*(this + 88) + 4 * v14);
    *(this + 178) = v14;
    *(*(this + 68) + v15) = 1;
    *(*(this + 70) + v15) = *a3 == 0;
    BitArray::operator=((*(this + 83) + 16 * v15), v76);
    if (!v15)
    {
      goto LABEL_94;
    }

    goto LABEL_91;
  }

  v15 = *(this + 180);
  if (v15 == -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1391, "voc/statemgr", 16, "%s", v11, v12, &errStr_voc_statemgr_E_TOO_MANY_STATES);
    v15 = *(this + 180);
  }

  *(this + 180) = v15 + 1;
  v16 = *(this + 2);
  if (v16 == *(this + 3))
  {
    DgnArray<DSMLocalRecord>::reallocElts(this, 1, 1);
    v16 = *(this + 2);
  }

  v17 = *this + 80 * v16;
  *v17 = 0;
  *(v17 + 2) = 0;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  ++*(this + 2);
  v18 = (*this + 80 * (*(this + 180) - 1));
  v19 = *(this + 92);
  v20 = *(v19 + 48);
  v21 = *(v19 + 16);
  v18[7] = WordIdCollSearchCmpFromWordId;
  v18[8] = v20;
  v18[9] = v21;
  v22 = *(this + 6);
  if (v22 == *(this + 7))
  {
    DgnPrimArray<unsigned long long>::reallocElts(this + 16, 1, 1);
    v22 = *(this + 6);
  }

  *(*(this + 2) + 8 * v22) = 0;
  *(this + 6) = v22 + 1;
  v23 = *(this + 10);
  if (v23 == *(this + 11))
  {
    DgnPrimArray<char>::reallocElts(this + 32, 1, 1);
    v23 = *(this + 10);
  }

  *(*(this + 4) + v23) = 0;
  ++*(this + 10);
  v24 = *(this + 14);
  if (v24 == *(this + 15))
  {
    DgnPrimArray<short>::reallocElts(this + 48, 1, 1);
    v24 = *(this + 14);
  }

  *(this + 14) = v24 + 1;
  v25 = *(this + 18);
  if (v25 == *(this + 19))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 64, 1, 1);
    v25 = *(this + 18);
  }

  *(this + 18) = v25 + 1;
  v26 = *(this + 22);
  if (v26 == *(this + 23))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 80, 1, 1);
    v26 = *(this + 22);
  }

  v27 = (*(this + 10) + 16 * v26);
  *v27 = 0;
  v27[1] = 0;
  ++*(this + 22);
  v28 = *(this + 26);
  if (v28 == *(this + 27))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 96, 1, 1);
    v28 = *(this + 26);
  }

  DgnString::DgnString((*(this + 12) + 16 * v28));
  ++*(this + 26);
  v29 = *(this + 30);
  if (v29 == *(this + 31))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 112, 1, 1);
    v29 = *(this + 30);
  }

  *(this + 30) = v29 + 1;
  v30 = *(this + 34);
  if (v30 == *(this + 35))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 128, 1, 1);
    v30 = *(this + 34);
  }

  v31 = (*(this + 16) + 16 * v30);
  *v31 = 0;
  v31[1] = 0;
  ++*(this + 34);
  v32 = *(this + 42);
  if (v32 == *(this + 43))
  {
    DgnPrimArray<short>::reallocElts(this + 160, 1, 1);
    v32 = *(this + 42);
  }

  *(*(this + 20) + 2 * v32) = 0;
  *(this + 42) = v32 + 1;
  v33 = *(this + 46);
  if (v33 == *(this + 47))
  {
    DgnPrimArray<short>::reallocElts(this + 176, 1, 1);
    v33 = *(this + 46);
  }

  *(*(this + 22) + 2 * v33) = 0;
  *(this + 46) = v33 + 1;
  v34 = *(this + 50);
  if (v34 == *(this + 51))
  {
    DgnPrimArray<short>::reallocElts(this + 192, 1, 1);
    v34 = *(this + 50);
  }

  *(*(this + 24) + 2 * v34) = 0;
  *(this + 50) = v34 + 1;
  v35 = *(this + 54);
  if (v35 == *(this + 55))
  {
    DgnPrimArray<short>::reallocElts(this + 208, 1, 1);
    v35 = *(this + 54);
  }

  *(*(this + 26) + 2 * v35) = 0;
  *(this + 54) = v35 + 1;
  v36 = *(this + 146);
  if (v36 == *(this + 147))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 576, 1, 1);
    v36 = *(this + 146);
  }

  v37 = (*(this + 72) + 16 * v36);
  *v37 = 0;
  v37[1] = 0;
  ++*(this + 146);
  v38 = *(this + 154);
  if (v38 == *(this + 155))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 608, 1, 1);
    v38 = *(this + 154);
  }

  v39 = (*(this + 76) + 16 * v38);
  *v39 = 0;
  v39[1] = 0;
  ++*(this + 154);
  v40 = *(this + 38);
  if (v40 == *(this + 39))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 144, 1, 1);
    v40 = *(this + 38);
  }

  v41 = (*(this + 18) + 16 * v40);
  *v41 = 0;
  v41[1] = 0;
  ++*(this + 38);
  v42 = *(this + 58);
  if (v42 == *(this + 59))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 224, 1, 1);
    v42 = *(this + 58);
  }

  v43 = (*(this + 28) + 16 * v42);
  *v43 = 0;
  v43[1] = 0;
  ++*(this + 58);
  v44 = *(this + 62);
  if (v44 == *(this + 63))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 240, 1, 1);
    v44 = *(this + 62);
  }

  v45 = (*(this + 30) + 16 * v44);
  *v45 = 0;
  v45[1] = 0;
  ++*(this + 62);
  v46 = *(this + 66);
  if (v46 == *(this + 67))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 256, 1, 1);
    v46 = *(this + 66);
  }

  v47 = (*(this + 32) + 16 * v46);
  *v47 = 0;
  v47[1] = 0;
  ++*(this + 66);
  v48 = *(this + 70);
  if (v48 == *(this + 71))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 272, 1, 1);
    v48 = *(this + 70);
  }

  *(*(this + 34) + 4 * v48) = 0xFFFF;
  ++*(this + 70);
  v49 = *(this + 74);
  if (v49 == *(this + 75))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 288, 1, 1);
    v49 = *(this + 74);
  }

  *(*(this + 36) + 4 * v49) = 0;
  ++*(this + 74);
  v50 = *(this + 78);
  if (v50 == *(this + 79))
  {
    DgnPrimArray<char>::reallocElts(this + 304, 1, 1);
    v50 = *(this + 78);
  }

  *(*(this + 38) + v50) = 1;
  ++*(this + 78);
  v51 = *(this + 82);
  if (v51 == *(this + 83))
  {
    DgnPrimArray<char>::reallocElts(this + 320, 1, 1);
    v51 = *(this + 82);
  }

  *(*(this + 40) + v51) = 1;
  ++*(this + 82);
  v52 = *(this + 86);
  if (v52 == *(this + 87))
  {
    DgnPrimArray<char>::reallocElts(this + 336, 1, 1);
    v52 = *(this + 86);
  }

  *(*(this + 42) + v52) = 0;
  ++*(this + 86);
  v53 = *(this + 90);
  if (v53 == *(this + 91))
  {
    DgnPrimArray<char>::reallocElts(this + 352, 1, 1);
    v53 = *(this + 90);
  }

  *(*(this + 44) + v53) = 1;
  ++*(this + 90);
  v54 = *(this + 94);
  if (v54 == *(this + 95))
  {
    DgnPrimArray<char>::reallocElts(this + 368, 1, 1);
    v54 = *(this + 94);
  }

  *(*(this + 46) + v54) = 1;
  ++*(this + 94);
  v55 = *(this + 98);
  if (v55 == *(this + 99))
  {
    DgnPrimArray<char>::reallocElts(this + 384, 1, 1);
    v55 = *(this + 98);
  }

  *(*(this + 48) + v55) = 0;
  ++*(this + 98);
  v56 = *(this + 102);
  if (v56 == *(this + 103))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 400, 1, 1);
    v56 = *(this + 102);
  }

  *(*(this + 50) + 4 * v56) = -1;
  ++*(this + 102);
  v57 = *(this + 106);
  if (v57 == *(this + 107))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 416, 1, 1);
    v57 = *(this + 106);
  }

  *(*(this + 52) + 4 * v57) = -1;
  ++*(this + 106);
  v58 = *(this + 110);
  if (v58 == *(this + 111))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 432, 1, 1);
    v58 = *(this + 110);
  }

  *(*(this + 54) + 4 * v58) = -1;
  ++*(this + 110);
  v59 = *(this + 114);
  if (v59 == *(this + 115))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 448, 1, 1);
    v59 = *(this + 114);
  }

  *(*(this + 56) + 4 * v59) = -1;
  ++*(this + 114);
  v60 = *(this + 130);
  if (v60 == *(this + 131))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 512, 1, 1);
    v60 = *(this + 130);
  }

  *(*(this + 64) + 4 * v60) = 0;
  ++*(this + 130);
  v61 = *(this + 122);
  if (v61 == *(this + 123))
  {
    DgnPrimArray<char>::reallocElts(this + 480, 1, 1);
    v61 = *(this + 122);
  }

  *(*(this + 60) + v61) = 0;
  ++*(this + 122);
  v62 = *(this + 150);
  if (v62 == *(this + 151))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 592, 1, 1);
    v62 = *(this + 150);
  }

  v63 = (*(this + 74) + 16 * v62);
  *v63 = 0;
  v63[1] = 0;
  ++*(this + 150);
  v64 = *(this + 118);
  if (v64 == *(this + 119))
  {
    DgnPrimArray<char>::reallocElts(this + 464, 1, 1);
    v64 = *(this + 118);
  }

  *(*(this + 58) + v64) = 1;
  ++*(this + 118);
  v65 = *(this + 172);
  if (v65 == *(this + 173))
  {
    DgnPrimArray<char>::reallocElts(this + 680, 1, 1);
    v65 = *(this + 172);
  }

  *(*(this + 85) + v65) = 1;
  ++*(this + 172);
  v66 = *(this + 126);
  if (v66 == *(this + 127))
  {
    DgnPrimArray<unsigned int>::reallocElts(this + 496, 1, 1);
    v66 = *(this + 126);
  }

  *(*(this + 62) + 4 * v66) = 0;
  ++*(this + 126);
  v67 = *(this + 134);
  if (v67 == *(this + 135))
  {
    DgnPrimArray<short>::reallocElts(this + 528, 1, 1);
    v67 = *(this + 134);
  }

  *(*(this + 66) + 2 * v67) = 127;
  *(this + 134) = v67 + 1;
  v68 = *(this + 138);
  if (v68 == *(this + 139))
  {
    DgnPrimArray<char>::reallocElts(this + 544, 1, 1);
    v68 = *(this + 138);
  }

  *(*(this + 68) + v68) = 1;
  ++*(this + 138);
  v69 = *a3 == 0;
  v70 = *(this + 142);
  if (v70 == *(this + 143))
  {
    DgnPrimArray<char>::reallocElts(this + 560, 1, 1);
    v70 = *(this + 142);
  }

  *(*(this + 70) + v70) = v69;
  ++*(this + 142);
  v71 = *(this + 158);
  if (v71 == *(this + 159))
  {
    DgnPrimArray<char>::reallocElts(this + 624, 1, 1);
    v71 = *(this + 158);
  }

  *(*(this + 78) + v71) = 0;
  ++*(this + 158);
  v72 = *(this + 168);
  if (v72 == *(this + 169))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(this + 664, 1, 1);
    v72 = *(this + 168);
  }

  PhnIndexSet::PhnIndexSet((*(this + 83) + 16 * v72), v76);
  ++*(this + 168);
  if (v15)
  {
LABEL_91:
    v73 = *(this + 16) + 16 * a2;
    v74 = *(v73 + 8);
    if (v74 == *(v73 + 12))
    {
      DgnPrimArray<unsigned int>::reallocElts(*(this + 16) + 16 * a2, 1, 1);
      v74 = *(v73 + 8);
    }

    *(*v73 + 4 * v74) = v15;
    ++*(v73 + 8);
  }

LABEL_94:
  *(*(this + 14) + 4 * v15) = a2;
  *(*(this + 6) + 2 * v15) = *a3;
  *(*(this + 8) + 4 * v15) = 0;
  if (*(*(this + 70) + v15))
  {
    *(this + 183) ^= StateMgr::computeOneStateIdNameChecksum(this, v15);
  }

  BitArray::~BitArray(v76);
  return v15;
}

void sub_2625F9524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BitArray::~BitArray(va);
  _Unwind_Resume(a1);
}

void StateMgr::setEndOfUtteranceAllowed(StateMgr *this, unsigned int a2, char a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  StateMgr::verifyStateFull(this, a2, a4, 0, a5, a6, a7, a8);
  if (*(*(this + 20) + 2 * a2))
  {
    v13 = *(*(this + 20) + 2 * a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2230, "voc/statemgr", 13, "%.500s %d %.500s %d", v11, v12, "setEndOfUtteranceAllowed");
  }

  if (*(*(this + 24) + 2 * a2))
  {
    v14 = *(*(this + 24) + 2 * a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2233, "voc/statemgr", 13, "%.500s %d %.500s %d", v11, v12, "setEndOfUtteranceAllowed");
  }

  if (*(*(this + 26) + 2 * a2))
  {
    v15 = *(*(this + 26) + 2 * a2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 2236, "voc/statemgr", 13, "%.500s %d %.500s %d", v11, v12, "setEndOfUtteranceAllowed");
  }

  *(*(this + 4) + a2) = a3;
}

void (***StateMgr::saveStateMgr(void (***this)(void), DFile *a2, DFileChecksums *a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8))(void)
{
  v11 = this;
  v12 = *(this + 178);
  if (*(this + 181))
  {
    ++v12;
  }

  if (*(this + 180) != v12 + 1 || *(this[18] + 2))
  {
    if (a4)
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1115, "voc/statemgr", 18, "%s", a7, a8, &errStr_voc_statemgr_E_MIXED_TEXT_AND_BINARY_SUBFILES);
    }

    v13 = OpenAndWriteMrecHeader(a2, 0x59u, a5, "MRSTA!? ", 24, 44);
    v15 = 0;
    writeObject<DgnCollArray<unsigned int,WordList>>(v13, v11, &v15);
    writeObject<unsigned char>(v13, v11 + 32, &v15);
    writeObject<unsigned short>(v13, v11 + 48, &v15);
    writeObject<unsigned int>(v13, v11 + 64, &v15);
    writeObject<DgnPrimArray<unsigned short>>(v13, v11 + 80, &v15);
    writeObject<DgnString>(v13, v11 + 96, &v15);
    writeObject<unsigned int>(v13, v11 + 112, &v15);
    writeObject<DgnPrimArray<unsigned int>>(v13, v11 + 128, &v15);
    writeObject<DgnPrimArray<unsigned short>>(v13, v11 + 144, &v15);
    writeObject<DgnPrimArray<unsigned int>>(v13, v11 + 224, &v15);
    writeObject<DgnPrimArray<unsigned short>>(v13, v11 + 240, &v15);
    writeObject<DgnArray<ParseToken>>(v13, v11 + 256, &v15);
    writeObject<unsigned int>(v13, v11 + 272, &v15);
    writeObject<unsigned int>(v13, v11 + 288, &v15);
    writeObject<unsigned char>(v13, v11 + 304, &v15);
    writeObject<unsigned char>(v13, v11 + 320, &v15);
    writeObject<unsigned char>(v13, v11 + 336, &v15);
    writeObject<unsigned char>(v13, v11 + 352, &v15);
    writeObject<unsigned char>(v13, v11 + 368, &v15);
    writeObject<unsigned char>(v13, v11 + 384, &v15);
    writeObject<unsigned int>(v13, v11 + 400, &v15);
    writeObject<unsigned int>(v13, v11 + 416, &v15);
    writeObject<unsigned int>(v13, v11 + 432, &v15);
    writeObject<unsigned int>(v13, v11 + 448, &v15);
    writeObject<unsigned int>(v13, v11 + 512, &v15);
    writeObject<unsigned char>(v13, v11 + 480, &v15);
    writeObject<DgnPrimArray<unsigned int>>(v13, v11 + 592, &v15);
    writeObject<unsigned char>(v13, v11 + 464, &v15);
    writeObject<unsigned int>(v13, v11 + 496, &v15);
    writeObject<unsigned char>(v13, v11 + 544, &v15);
    writeObject<unsigned char>(v13, v11 + 560, &v15);
    writeObject<DgnPrimArray<unsigned int>>(v13, v11 + 576, &v15);
    writeObject<DgnPrimArray<unsigned int>>(v13, v11 + 608, &v15);
    writeObject<unsigned int>(v13, v11 + 704, &v15);
    writeObject(v13, (v11 + 720), &v15);
    writeObject(v13, (v11 + 724), &v15);
    writeObject(v13, (v11 + 732), &v15);
    EnvMgr::saveEnvMgrToStream(*(v11 + 752), v13, &v15, 1, 0);
    EnvMgr::saveEnvMgrToStream(*(v11 + 760), v13, &v15, 1, 0);
    writeObjectChecksum(v13, &v15);
    CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
    DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x59u, v15);
    return DgnDelete<DgnStream>(v13);
  }

  return this;
}

uint64_t writeObject<DgnCollArray<unsigned int,WordList>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = DgnCollArray<unsigned int,WordList>::writeObject((*a2 + v7), a1, a3);
      ++v8;
      v7 += 80;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<DgnPrimArray<unsigned short>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<unsigned short>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

uint64_t writeObject<DgnPrimArray<unsigned int>>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v9 = *(a2 + 8);
  result = writeObject(a1, &v9, a3);
  if (*(a2 + 8))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      result = writeObject<unsigned int>(a1, *a2 + v7, a3);
      ++v8;
      v7 += 16;
    }

    while (v8 < *(a2 + 8));
  }

  return result;
}

void StateMgr::printSize(StateMgr *this, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1143, &v489);
  if (v490)
  {
    v16 = v489;
  }

  else
  {
    v16 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s*************************************************************\nObSize: %*sBegin %s ", v12, v13, v14, v15, a3, &unk_26287398E, a3, &unk_26287398E, v16);
  DgnString::~DgnString(&v489);
  if (a2 != -1)
  {
    xlprintf("%d ", v17, v18, v19, v20, a2);
  }

  xlprintf("(alloc, used, shared)\nObSize: %*s*************************************************************\n", v17, v18, v19, v20, a3, &unk_26287398E);
  v21 = sizeObject<DgnCollArray<unsigned int,WordList>>(this, 0);
  v22 = sizeObject<DgnCollArray<unsigned int,WordList>>(this, 1);
  LOBYTE(v489) = 0;
  *(&v489 + 2) = 0;
  v490 = 0u;
  v491 = 0u;
  v492 = 0u;
  v493 = 0;
  v494 = 0;
  DgnCollArray<unsigned int,ParamSetIdCollCmpWithTemp>::~DgnCollArray(&v489);
  v23 = (a3 + 1);
  v486 = a3;
  v24 = (34 - a3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v29 = v489;
  }

  else
  {
    v29 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v25, v26, v27, v28, v23, &unk_26287398E, v24, v24, v29, v21, v22, 0);
  DgnString::~DgnString(&v489);
  *a4 += v21;
  *a5 += v22;
  v30 = sizeObject<BitArray *>(this + 16, 0);
  v31 = sizeObject<BitArray *>(this + 16, 1);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v36 = v489;
  }

  else
  {
    v36 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v32, v33, v34, v35, v23, &unk_26287398E, v24, v24, v36, v30, v31, 0);
  DgnString::~DgnString(&v489);
  *a4 += v30;
  *a5 += v31;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v37 = 12;
  }

  else
  {
    v37 = 16;
  }

  v38 = *(this + 10);
  v39 = *(this + 11);
  v40 = v39 >= v38;
  v41 = v39 - v38;
  if (v40)
  {
    if (v38 > 0)
    {
      v42 = (v38 - 1) + v37 + 1;
    }

    else
    {
      v42 = v37;
    }

    v37 = v42 + v41;
    v38 = 0;
  }

  else
  {
    v42 = v37;
  }

  v43 = v38;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v48 = v489;
  }

  else
  {
    v48 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v44, v45, v46, v47, v23, &unk_26287398E, v24, v24, v48, v37, v42, v43);
  DgnString::~DgnString(&v489);
  *a4 += v37;
  *a5 += v42;
  *a6 += v43;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v49 = 12;
  }

  else
  {
    v49 = 16;
  }

  v50 = *(this + 14);
  v51 = *(this + 15);
  if (v51 >= v50)
  {
    v52 = 0;
    if (v50 > 0)
    {
      v49 += 2 * (v50 - 1) + 2;
    }

    v53 = v49 + 2 * (v51 - v50);
  }

  else
  {
    v52 = 2 * v50;
    v53 = v49;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v58 = v489;
  }

  else
  {
    v58 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v54, v55, v56, v57, v23, &unk_26287398E, v24, v24, v58, v53, v49, v52);
  DgnString::~DgnString(&v489);
  *a4 += v53;
  *a5 += v49;
  *a6 += v52;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v59 = 12;
  }

  else
  {
    v59 = 16;
  }

  v60 = *(this + 18);
  v61 = *(this + 19);
  if (v61 >= v60)
  {
    v62 = 0;
    if (v60 > 0)
    {
      v59 += 4 * (v60 - 1) + 4;
    }

    v63 = v59 + 4 * (v61 - v60);
  }

  else
  {
    v62 = 4 * v60;
    v63 = v59;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v68 = v489;
  }

  else
  {
    v68 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v64, v65, v66, v67, v23, &unk_26287398E, v24, v24, v68, v63, v59, v62);
  DgnString::~DgnString(&v489);
  *a4 += v63;
  *a5 += v59;
  *a6 += v62;
  v69 = sizeObject<DgnPrimArray<unsigned short>>(this + 80, 0);
  v70 = sizeObject<DgnPrimArray<unsigned short>>(this + 80, 1);
  v489 = 0;
  *&v490 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v489);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v75 = v489;
  }

  else
  {
    v75 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v71, v72, v73, v74, v23, &unk_26287398E, v24, v24, v75, v69, v70, 0);
  DgnString::~DgnString(&v489);
  *a4 += v69;
  *a5 += v70;
  v76 = sizeObject<DgnString>(this + 96, 0);
  v77 = sizeObject<DgnString>(this + 96, 1);
  v78 = sizeObject<DgnString>(this + 96, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v83 = v489;
  }

  else
  {
    v83 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v79, v80, v81, v82, v23, &unk_26287398E, v24, v24, v83, v76, v77, v78);
  DgnString::~DgnString(&v489);
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

  v85 = *(this + 30);
  v86 = *(this + 31);
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

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v93 = v489;
  }

  else
  {
    v93 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v89, v90, v91, v92, v23, &unk_26287398E, v24, v24, v93, v88, v84, v87);
  DgnString::~DgnString(&v489);
  *a4 += v88;
  *a5 += v84;
  *a6 += v87;
  v94 = sizeObject<DgnPrimArray<unsigned int>>(this + 128, 0);
  v95 = sizeObject<DgnPrimArray<unsigned int>>(this + 128, 1);
  v489 = 0;
  *&v490 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v489);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v100 = v489;
  }

  else
  {
    v100 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v96, v97, v98, v99, v23, &unk_26287398E, v24, v24, v100, v94, v95, 0);
  DgnString::~DgnString(&v489);
  *a4 += v94;
  *a5 += v95;
  v101 = sizeObject<DgnPrimArray<unsigned short>>(this + 144, 0);
  v102 = sizeObject<DgnPrimArray<unsigned short>>(this + 144, 1);
  v489 = 0;
  *&v490 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v489);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v107 = v489;
  }

  else
  {
    v107 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v103, v104, v105, v106, v23, &unk_26287398E, v24, v24, v107, v101, v102, 0);
  DgnString::~DgnString(&v489);
  *a4 += v101;
  *a5 += v102;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v108 = 12;
  }

  else
  {
    v108 = 16;
  }

  v109 = *(this + 42);
  v110 = *(this + 43);
  if (v110 >= v109)
  {
    v111 = 0;
    if (v109 > 0)
    {
      v108 += 2 * (v109 - 1) + 2;
    }

    v112 = v108 + 2 * (v110 - v109);
  }

  else
  {
    v111 = 2 * v109;
    v112 = v108;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v117 = v489;
  }

  else
  {
    v117 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v113, v114, v115, v116, v23, &unk_26287398E, v24, v24, v117, v112, v108, v111);
  DgnString::~DgnString(&v489);
  *a4 += v112;
  *a5 += v108;
  *a6 += v111;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v118 = 12;
  }

  else
  {
    v118 = 16;
  }

  v119 = *(this + 46);
  v120 = *(this + 47);
  if (v120 >= v119)
  {
    v121 = 0;
    if (v119 > 0)
    {
      v118 += 2 * (v119 - 1) + 2;
    }

    v122 = v118 + 2 * (v120 - v119);
  }

  else
  {
    v121 = 2 * v119;
    v122 = v118;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v127 = v489;
  }

  else
  {
    v127 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v123, v124, v125, v126, v23, &unk_26287398E, v24, v24, v127, v122, v118, v121);
  DgnString::~DgnString(&v489);
  *a4 += v122;
  *a5 += v118;
  *a6 += v121;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v128 = 12;
  }

  else
  {
    v128 = 16;
  }

  v129 = *(this + 50);
  v130 = *(this + 51);
  if (v130 >= v129)
  {
    v131 = 0;
    if (v129 > 0)
    {
      v128 += 2 * (v129 - 1) + 2;
    }

    v132 = v128 + 2 * (v130 - v129);
  }

  else
  {
    v131 = 2 * v129;
    v132 = v128;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v137 = v489;
  }

  else
  {
    v137 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v133, v134, v135, v136, v23, &unk_26287398E, v24, v24, v137, v132, v128, v131);
  DgnString::~DgnString(&v489);
  *a4 += v132;
  *a5 += v128;
  *a6 += v131;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v138 = 12;
  }

  else
  {
    v138 = 16;
  }

  v139 = *(this + 54);
  v140 = *(this + 55);
  if (v140 >= v139)
  {
    v141 = 0;
    if (v139 > 0)
    {
      v138 += 2 * (v139 - 1) + 2;
    }

    v142 = v138 + 2 * (v140 - v139);
  }

  else
  {
    v141 = 2 * v139;
    v142 = v138;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v147 = v489;
  }

  else
  {
    v147 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v143, v144, v145, v146, v23, &unk_26287398E, v24, v24, v147, v142, v138, v141);
  DgnString::~DgnString(&v489);
  *a4 += v142;
  *a5 += v138;
  *a6 += v141;
  v148 = sizeObject<DgnPrimArray<unsigned int>>(this + 224, 0);
  v149 = sizeObject<DgnPrimArray<unsigned int>>(this + 224, 1);
  v489 = 0;
  *&v490 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v489);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v154 = v489;
  }

  else
  {
    v154 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v150, v151, v152, v153, v23, &unk_26287398E, v24, v24, v154, v148, v149, 0);
  DgnString::~DgnString(&v489);
  *a4 += v148;
  *a5 += v149;
  v155 = sizeObject<DgnPrimArray<unsigned short>>(this + 240, 0);
  v156 = sizeObject<DgnPrimArray<unsigned short>>(this + 240, 1);
  v489 = 0;
  *&v490 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v489);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v161 = v489;
  }

  else
  {
    v161 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v157, v158, v159, v160, v23, &unk_26287398E, v24, v24, v161, v155, v156, 0);
  DgnString::~DgnString(&v489);
  *a4 += v155;
  *a5 += v156;
  v162 = sizeObject<DgnArray<ParseToken>>(this + 256, 0);
  v163 = sizeObject<DgnArray<ParseToken>>(this + 256, 1);
  v489 = 0;
  *&v490 = 0;
  DgnIArray<Utterance *>::~DgnIArray(&v489);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v168 = v489;
  }

  else
  {
    v168 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v164, v165, v166, v167, v23, &unk_26287398E, v24, v24, v168, v162, v163, 0);
  DgnString::~DgnString(&v489);
  *a4 += v162;
  *a5 += v163;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v169 = 12;
  }

  else
  {
    v169 = 16;
  }

  v170 = *(this + 70);
  v171 = *(this + 71);
  if (v171 >= v170)
  {
    v172 = 0;
    if (v170 > 0)
    {
      v169 += 4 * (v170 - 1) + 4;
    }

    v173 = v169 + 4 * (v171 - v170);
  }

  else
  {
    v172 = 4 * v170;
    v173 = v169;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v178 = v489;
  }

  else
  {
    v178 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v174, v175, v176, v177, v23, &unk_26287398E, v24, v24, v178, v173, v169, v172);
  DgnString::~DgnString(&v489);
  *a4 += v173;
  *a5 += v169;
  *a6 += v172;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v179 = 12;
  }

  else
  {
    v179 = 16;
  }

  v180 = *(this + 74);
  v181 = *(this + 75);
  if (v181 >= v180)
  {
    v182 = 0;
    if (v180 > 0)
    {
      v179 += 4 * (v180 - 1) + 4;
    }

    v183 = v179 + 4 * (v181 - v180);
  }

  else
  {
    v182 = 4 * v180;
    v183 = v179;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v188 = v489;
  }

  else
  {
    v188 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v184, v185, v186, v187, v23, &unk_26287398E, v24, v24, v188, v183, v179, v182);
  DgnString::~DgnString(&v489);
  *a4 += v183;
  *a5 += v179;
  *a6 += v182;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v189 = 12;
  }

  else
  {
    v189 = 16;
  }

  v190 = *(this + 78);
  v191 = *(this + 79);
  v40 = v191 >= v190;
  v192 = v191 - v190;
  if (v40)
  {
    if (v190 > 0)
    {
      v193 = (v190 - 1) + v189 + 1;
    }

    else
    {
      v193 = v189;
    }

    v189 = v193 + v192;
    v190 = 0;
  }

  else
  {
    v193 = v189;
  }

  v194 = v190;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v199 = v489;
  }

  else
  {
    v199 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v195, v196, v197, v198, v23, &unk_26287398E, v24, v24, v199, v189, v193, v194);
  DgnString::~DgnString(&v489);
  *a4 += v189;
  *a5 += v193;
  *a6 += v194;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v200 = 12;
  }

  else
  {
    v200 = 16;
  }

  v201 = *(this + 82);
  v202 = *(this + 83);
  v40 = v202 >= v201;
  v203 = v202 - v201;
  if (v40)
  {
    if (v201 > 0)
    {
      v204 = (v201 - 1) + v200 + 1;
    }

    else
    {
      v204 = v200;
    }

    v200 = v204 + v203;
    v201 = 0;
  }

  else
  {
    v204 = v200;
  }

  v205 = v201;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v210 = v489;
  }

  else
  {
    v210 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v206, v207, v208, v209, v23, &unk_26287398E, v24, v24, v210, v200, v204, v205);
  DgnString::~DgnString(&v489);
  *a4 += v200;
  *a5 += v204;
  *a6 += v205;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v211 = 12;
  }

  else
  {
    v211 = 16;
  }

  v212 = *(this + 86);
  v213 = *(this + 87);
  v40 = v213 >= v212;
  v214 = v213 - v212;
  if (v40)
  {
    if (v212 > 0)
    {
      v215 = (v212 - 1) + v211 + 1;
    }

    else
    {
      v215 = v211;
    }

    v211 = v215 + v214;
    v212 = 0;
  }

  else
  {
    v215 = v211;
  }

  v216 = v212;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v221 = v489;
  }

  else
  {
    v221 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v217, v218, v219, v220, v23, &unk_26287398E, v24, v24, v221, v211, v215, v216);
  DgnString::~DgnString(&v489);
  *a4 += v211;
  *a5 += v215;
  *a6 += v216;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v222 = 12;
  }

  else
  {
    v222 = 16;
  }

  v223 = *(this + 90);
  v224 = *(this + 91);
  v40 = v224 >= v223;
  v225 = v224 - v223;
  if (v40)
  {
    if (v223 > 0)
    {
      v226 = (v223 - 1) + v222 + 1;
    }

    else
    {
      v226 = v222;
    }

    v222 = v226 + v225;
    v223 = 0;
  }

  else
  {
    v226 = v222;
  }

  v227 = v223;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v232 = v489;
  }

  else
  {
    v232 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v228, v229, v230, v231, v23, &unk_26287398E, v24, v24, v232, v222, v226, v227);
  DgnString::~DgnString(&v489);
  *a4 += v222;
  *a5 += v226;
  *a6 += v227;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v233 = 12;
  }

  else
  {
    v233 = 16;
  }

  v234 = *(this + 94);
  v235 = *(this + 95);
  v40 = v235 >= v234;
  v236 = v235 - v234;
  if (v40)
  {
    if (v234 > 0)
    {
      v237 = (v234 - 1) + v233 + 1;
    }

    else
    {
      v237 = v233;
    }

    v233 = v237 + v236;
    v234 = 0;
  }

  else
  {
    v237 = v233;
  }

  v238 = v234;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v243 = v489;
  }

  else
  {
    v243 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v239, v240, v241, v242, v23, &unk_26287398E, v24, v24, v243, v233, v237, v238);
  DgnString::~DgnString(&v489);
  *a4 += v233;
  *a5 += v237;
  *a6 += v238;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v244 = 12;
  }

  else
  {
    v244 = 16;
  }

  v245 = *(this + 98);
  v246 = *(this + 99);
  v40 = v246 >= v245;
  v247 = v246 - v245;
  if (v40)
  {
    if (v245 > 0)
    {
      v248 = (v245 - 1) + v244 + 1;
    }

    else
    {
      v248 = v244;
    }

    v244 = v248 + v247;
    v245 = 0;
  }

  else
  {
    v248 = v244;
  }

  v249 = v245;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v254 = v489;
  }

  else
  {
    v254 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v250, v251, v252, v253, v23, &unk_26287398E, v24, v24, v254, v244, v248, v249);
  DgnString::~DgnString(&v489);
  *a4 += v244;
  *a5 += v248;
  *a6 += v249;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v255 = 12;
  }

  else
  {
    v255 = 16;
  }

  v256 = *(this + 102);
  v257 = *(this + 103);
  if (v257 >= v256)
  {
    v258 = 0;
    if (v256 > 0)
    {
      v255 += 4 * (v256 - 1) + 4;
    }

    v259 = v255 + 4 * (v257 - v256);
  }

  else
  {
    v258 = 4 * v256;
    v259 = v255;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v264 = v489;
  }

  else
  {
    v264 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v260, v261, v262, v263, v23, &unk_26287398E, v24, v24, v264, v259, v255, v258);
  DgnString::~DgnString(&v489);
  *a4 += v259;
  *a5 += v255;
  *a6 += v258;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v265 = 12;
  }

  else
  {
    v265 = 16;
  }

  v266 = *(this + 106);
  v267 = *(this + 107);
  if (v267 >= v266)
  {
    v268 = 0;
    if (v266 > 0)
    {
      v265 += 4 * (v266 - 1) + 4;
    }

    v269 = v265 + 4 * (v267 - v266);
  }

  else
  {
    v268 = 4 * v266;
    v269 = v265;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v274 = v489;
  }

  else
  {
    v274 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v270, v271, v272, v273, v23, &unk_26287398E, v24, v24, v274, v269, v265, v268);
  DgnString::~DgnString(&v489);
  *a4 += v269;
  *a5 += v265;
  *a6 += v268;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v275 = 12;
  }

  else
  {
    v275 = 16;
  }

  v276 = *(this + 110);
  v277 = *(this + 111);
  if (v277 >= v276)
  {
    v278 = 0;
    if (v276 > 0)
    {
      v275 += 4 * (v276 - 1) + 4;
    }

    v279 = v275 + 4 * (v277 - v276);
  }

  else
  {
    v278 = 4 * v276;
    v279 = v275;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v284 = v489;
  }

  else
  {
    v284 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v280, v281, v282, v283, v23, &unk_26287398E, v24, v24, v284, v279, v275, v278);
  DgnString::~DgnString(&v489);
  *a4 += v279;
  *a5 += v275;
  *a6 += v278;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v285 = 12;
  }

  else
  {
    v285 = 16;
  }

  v286 = *(this + 114);
  v287 = *(this + 115);
  if (v287 >= v286)
  {
    v288 = 0;
    if (v286 > 0)
    {
      v285 += 4 * (v286 - 1) + 4;
    }

    v289 = v285 + 4 * (v287 - v286);
  }

  else
  {
    v288 = 4 * v286;
    v289 = v285;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v294 = v489;
  }

  else
  {
    v294 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v290, v291, v292, v293, v23, &unk_26287398E, v24, v24, v294, v289, v285, v288);
  DgnString::~DgnString(&v489);
  *a4 += v289;
  *a5 += v285;
  *a6 += v288;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v295 = 12;
  }

  else
  {
    v295 = 16;
  }

  v296 = *(this + 130);
  v297 = *(this + 131);
  if (v297 >= v296)
  {
    v298 = 0;
    if (v296 > 0)
    {
      v295 += 4 * (v296 - 1) + 4;
    }

    v299 = v295 + 4 * (v297 - v296);
  }

  else
  {
    v298 = 4 * v296;
    v299 = v295;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v304 = v489;
  }

  else
  {
    v304 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v300, v301, v302, v303, v23, &unk_26287398E, v24, v24, v304, v299, v295, v298);
  DgnString::~DgnString(&v489);
  *a4 += v299;
  *a5 += v295;
  *a6 += v298;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v305 = 12;
  }

  else
  {
    v305 = 16;
  }

  v306 = *(this + 122);
  v307 = *(this + 123);
  v40 = v307 >= v306;
  v308 = v307 - v306;
  if (v40)
  {
    if (v306 > 0)
    {
      v309 = (v306 - 1) + v305 + 1;
    }

    else
    {
      v309 = v305;
    }

    v305 = v309 + v308;
    v306 = 0;
  }

  else
  {
    v309 = v305;
  }

  v310 = v306;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v315 = v489;
  }

  else
  {
    v315 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v311, v312, v313, v314, v23, &unk_26287398E, v24, v24, v315, v305, v309, v310);
  DgnString::~DgnString(&v489);
  *a4 += v305;
  *a5 += v309;
  *a6 += v310;
  v316 = sizeObject<DgnPrimArray<unsigned int>>(this + 592, 0);
  v317 = sizeObject<DgnPrimArray<unsigned int>>(this + 592, 1);
  v489 = 0;
  *&v490 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v489);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v322 = v489;
  }

  else
  {
    v322 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v318, v319, v320, v321, v23, &unk_26287398E, v24, v24, v322, v316, v317, 0);
  DgnString::~DgnString(&v489);
  *a4 += v316;
  *a5 += v317;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v323 = 12;
  }

  else
  {
    v323 = 16;
  }

  v324 = *(this + 118);
  v325 = *(this + 119);
  v40 = v325 >= v324;
  v326 = v325 - v324;
  if (v40)
  {
    if (v324 > 0)
    {
      v327 = (v324 - 1) + v323 + 1;
    }

    else
    {
      v327 = v323;
    }

    v323 = v327 + v326;
    v324 = 0;
  }

  else
  {
    v327 = v323;
  }

  v328 = v324;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v333 = v489;
  }

  else
  {
    v333 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v329, v330, v331, v332, v23, &unk_26287398E, v24, v24, v333, v323, v327, v328);
  DgnString::~DgnString(&v489);
  *a4 += v323;
  *a5 += v327;
  *a6 += v328;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v334 = 12;
  }

  else
  {
    v334 = 16;
  }

  v335 = *(this + 126);
  v336 = *(this + 127);
  if (v336 >= v335)
  {
    v337 = 0;
    if (v335 > 0)
    {
      v334 += 4 * (v335 - 1) + 4;
    }

    v338 = v334 + 4 * (v336 - v335);
  }

  else
  {
    v337 = 4 * v335;
    v338 = v334;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v343 = v489;
  }

  else
  {
    v343 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v339, v340, v341, v342, v23, &unk_26287398E, v24, v24, v343, v338, v334, v337);
  DgnString::~DgnString(&v489);
  *a4 += v338;
  *a5 += v334;
  *a6 += v337;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v344 = 12;
  }

  else
  {
    v344 = 16;
  }

  v345 = *(this + 138);
  v346 = *(this + 139);
  v40 = v346 >= v345;
  v347 = v346 - v345;
  if (v40)
  {
    if (v345 > 0)
    {
      v348 = (v345 - 1) + v344 + 1;
    }

    else
    {
      v348 = v344;
    }

    v344 = v348 + v347;
    v345 = 0;
  }

  else
  {
    v348 = v344;
  }

  v349 = v345;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v354 = v489;
  }

  else
  {
    v354 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v350, v351, v352, v353, v23, &unk_26287398E, v24, v24, v354, v344, v348, v349);
  DgnString::~DgnString(&v489);
  *a4 += v344;
  *a5 += v348;
  *a6 += v349;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v355 = 12;
  }

  else
  {
    v355 = 16;
  }

  v356 = *(this + 142);
  v357 = *(this + 143);
  v40 = v357 >= v356;
  v358 = v357 - v356;
  if (v40)
  {
    if (v356 > 0)
    {
      v359 = (v356 - 1) + v355 + 1;
    }

    else
    {
      v359 = v355;
    }

    v355 = v359 + v358;
    v356 = 0;
  }

  else
  {
    v359 = v355;
  }

  v360 = v356;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v365 = v489;
  }

  else
  {
    v365 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v361, v362, v363, v364, v23, &unk_26287398E, v24, v24, v365, v355, v359, v360);
  DgnString::~DgnString(&v489);
  *a4 += v355;
  *a5 += v359;
  *a6 += v360;
  v366 = sizeObject<DgnPrimArray<unsigned int>>(this + 576, 0);
  v367 = sizeObject<DgnPrimArray<unsigned int>>(this + 576, 1);
  v489 = 0;
  *&v490 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v489);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v372 = v489;
  }

  else
  {
    v372 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v368, v369, v370, v371, v23, &unk_26287398E, v24, v24, v372, v366, v367, 0);
  DgnString::~DgnString(&v489);
  *a4 += v366;
  *a5 += v367;
  v373 = sizeObject<DgnPrimArray<unsigned int>>(this + 608, 0);
  v374 = sizeObject<DgnPrimArray<unsigned int>>(this + 608, 1);
  v489 = 0;
  *&v490 = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v489);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v379 = v489;
  }

  else
  {
    v379 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v375, v376, v377, v378, v23, &unk_26287398E, v24, v24, v379, v373, v374, 0);
  DgnString::~DgnString(&v489);
  *a4 += v373;
  *a5 += v374;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v380 = 12;
  }

  else
  {
    v380 = 16;
  }

  v381 = *(this + 158);
  v382 = *(this + 159);
  v40 = v382 >= v381;
  v383 = v382 - v381;
  if (v40)
  {
    if (v381 > 0)
    {
      v384 = (v381 - 1) + v380 + 1;
    }

    else
    {
      v384 = v380;
    }

    v380 = v384 + v383;
    v381 = 0;
  }

  else
  {
    v384 = v380;
  }

  v385 = v381;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v390 = v489;
  }

  else
  {
    v390 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v386, v387, v388, v389, v23, &unk_26287398E, v24, v24, v390, v380, v384, v385);
  DgnString::~DgnString(&v489);
  *a4 += v380;
  *a5 += v384;
  *a6 += v385;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v391 = 12;
  }

  else
  {
    v391 = 16;
  }

  v392 = *(this + 162);
  v393 = *(this + 163);
  if (v393 >= v392)
  {
    v394 = 0;
    if (v392 > 0)
    {
      v391 += 4 * (v392 - 1) + 4;
    }

    v395 = v391 + 4 * (v393 - v392);
  }

  else
  {
    v394 = 4 * v392;
    v395 = v391;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v400 = v489;
  }

  else
  {
    v400 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v396, v397, v398, v399, v23, &unk_26287398E, v24, v24, v400, v395, v391, v394);
  DgnString::~DgnString(&v489);
  *a4 += v395;
  *a5 += v391;
  *a6 += v394;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v405 = v489;
  }

  else
  {
    v405 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v401, v402, v403, v404, v23, &unk_26287398E, v24, v24, v405, 1, 1, 0);
  DgnString::~DgnString(&v489);
  ++*a4;
  ++*a5;
  v406 = sizeObject<PhnIndexSet>(this + 664, 0);
  v407 = sizeObject<PhnIndexSet>(this + 664, 1);
  v408 = sizeObject<PhnIndexSet>(this + 664, 3);
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v413 = v489;
  }

  else
  {
    v413 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v409, v410, v411, v412, v23, &unk_26287398E, v24, v24, v413, v406, v407, v408);
  DgnString::~DgnString(&v489);
  *a4 += v406;
  *a5 += v407;
  *a6 += v408;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v414 = 12;
  }

  else
  {
    v414 = 16;
  }

  v415 = *(this + 178);
  v416 = *(this + 179);
  if (v416 >= v415)
  {
    v417 = 0;
    if (v415 > 0)
    {
      v414 += 4 * (v415 - 1) + 4;
    }

    v418 = v414 + 4 * (v416 - v415);
  }

  else
  {
    v417 = 4 * v415;
    v418 = v414;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v423 = v489;
  }

  else
  {
    v423 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v419, v420, v421, v422, v23, &unk_26287398E, v24, v24, v423, v418, v414, v417);
  DgnString::~DgnString(&v489);
  *a4 += v418;
  *a5 += v414;
  *a6 += v417;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v428 = v489;
  }

  else
  {
    v428 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v424, v425, v426, v427, v23, &unk_26287398E, v24, v24, v428, 4, 4, 0);
  DgnString::~DgnString(&v489);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v433 = v489;
  }

  else
  {
    v433 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v429, v430, v431, v432, v23, &unk_26287398E, v24, v24, v433, 4, 4, 0);
  DgnString::~DgnString(&v489);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v438 = v489;
  }

  else
  {
    v438 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v434, v435, v436, v437, v23, &unk_26287398E, v24, v24, v438, 4, 4, 0);
  DgnString::~DgnString(&v489);
  *a4 += 4;
  *a5 += 4;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v443 = v489;
  }

  else
  {
    v443 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v439, v440, v441, v442, v23, &unk_26287398E, v24, v24, v443, 4, 4, 0);
  DgnString::~DgnString(&v489);
  *a4 += 4;
  *a5 += 4;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v444 = 12;
  }

  else
  {
    v444 = 16;
  }

  v445 = *(this + 134);
  v446 = *(this + 135);
  if (v446 >= v445)
  {
    v447 = 0;
    if (v445 > 0)
    {
      v444 += 2 * (v445 - 1) + 2;
    }

    v448 = v444 + 2 * (v446 - v445);
  }

  else
  {
    v447 = 2 * v445;
    v448 = v444;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1145, &v489);
  if (v490)
  {
    v453 = v489;
  }

  else
  {
    v453 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v449, v450, v451, v452, v23, &unk_26287398E, v24, v24, v453, v448, v444, v447);
  DgnString::~DgnString(&v489);
  *a4 += v448;
  *a5 += v444;
  *a6 += v447;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v454 = 4;
  }

  else
  {
    v454 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1146, &v489);
  if (v490)
  {
    v459 = v489;
  }

  else
  {
    v459 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v455, v456, v457, v458, v23, &unk_26287398E, v24, v24, v459, v454, v454, 0);
  DgnString::~DgnString(&v489);
  *a4 += v454;
  *a5 += v454;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v460 = 4;
  }

  else
  {
    v460 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1147, &v489);
  if (v490)
  {
    v465 = v489;
  }

  else
  {
    v465 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v461, v462, v463, v464, v23, &unk_26287398E, v24, v24, v465, v460, v460, 0);
  DgnString::~DgnString(&v489);
  *a4 += v460;
  *a5 += v460;
  v466 = *(this + 94);
  if (v466)
  {
    v488 = 0;
    v489 = 0;
    v487 = 0;
    EnvMgr::printSize(v466, 0xFFFFFFFFLL, v23, &v489, &v488, &v487);
    *a4 += v489;
    *a5 += v488;
    *a6 += v487;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v467 = 4;
  }

  else
  {
    v467 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1149, &v489);
  if (v490)
  {
    v472 = v489;
  }

  else
  {
    v472 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v468, v469, v470, v471, v23, &unk_26287398E, v24, v24, v472, v467, v467, 0);
  DgnString::~DgnString(&v489);
  *a4 += v467;
  *a5 += v467;
  v473 = *(this + 95);
  if (v473)
  {
    v488 = 0;
    v489 = 0;
    v487 = 0;
    EnvMgr::printSize(v473, 0xFFFFFFFFLL, v23, &v489, &v488, &v487);
    *a4 += v489;
    *a5 += v488;
    *a6 += v487;
  }

  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v474 = 4;
  }

  else
  {
    v474 = 8;
  }

  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1151, &v489);
  if (v490)
  {
    v479 = v489;
  }

  else
  {
    v479 = &unk_26287398E;
  }

  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v475, v476, v477, v478, v23, &unk_26287398E, v24, v24, v479, v474, v474, 0);
  DgnString::~DgnString(&v489);
  *a4 += v474;
  *a5 += v474;
  getShipObjectSizeDescription("/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/voc/statemgr.cpp", 1152, &v489);
  if (v490)
  {
    v484 = v489;
  }

  else
  {
    v484 = &unk_26287398E;
  }

  v485 = *a5;
  xlprintf("ObSize: %*s%-*.*s: %10llu, %10llu, %10llu\n", v480, v481, v482, v483, v486, &unk_26287398E, (35 - v486), (35 - v486), v484, *a4, *a5, *a6);
  DgnString::~DgnString(&v489);
}