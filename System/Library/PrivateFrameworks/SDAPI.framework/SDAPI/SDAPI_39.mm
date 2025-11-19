void WordLanguageModel::checkWordListLMAgreement(WordLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(this + 2) + 388);
  v10 = *(this + 32);
  if (!v10)
  {
    v10 = *(this + 36);
    if (!v10)
    {
      if (v9 == *(this + 40))
      {
LABEL_5:
        if (!v9)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_4:
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9191, "lm/wordlm", 49, "%u %u", a7, a8, *(*(this + 2) + 388));
      goto LABEL_5;
    }
  }

  if (v9 != v10)
  {
    goto LABEL_4;
  }

LABEL_6:
  v11 = 0;
  do
  {
    v12 = *(this + 2);
    if (v11 < *(v12 + 388) && *(*(v12 + 104) + v11))
    {
      if (*(this + 32))
      {
        v13 = *(this + 15);
        v14 = *(v13 + 4 * v11);
        v15 = *(*(v12 + 256) + 4 * v11);
        v16 = *(v13 + 4 * v15);
      }

      else
      {
        LODWORD(v15) = *(*(v12 + 256) + 4 * v11);
        if (*(this + 36))
        {
          v17 = *(this + 17);
          if (*(v17 + 2 * v11) == 0xFFFF)
          {
            v14 = -1;
          }

          else
          {
            v14 = *(v17 + 2 * v11);
          }

          v16 = *(v17 + 2 * v15);
          v18 = v16 == 0xFFFF;
        }

        else
        {
          v19 = *(this + 19);
          if (*(v19 + v11) == 255)
          {
            v14 = -1;
          }

          else
          {
            v14 = *(v19 + v11);
          }

          v16 = *(v19 + v15);
          v18 = v16 == 255;
        }

        if (v18)
        {
          v16 = -1;
        }
      }

      if (v14 != v16)
      {
        v20 = *(v12 + 200);
        v21 = *(v12 + 224);
        v32 = v21 + *(v20 + 4 * v15);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9205, "lm/wordlm", 8, "%.500s %u %.500s %u %u %u", a7, a8, v21 + *(v20 + 4 * v11));
      }
    }

    if (*(this + 276) == 1)
    {
      v22 = *(this + 2);
      if (v11 < *(v22 + 388))
      {
        if (*(*(v22 + 104) + v11))
        {
          if (*(this + 72))
          {
            v23 = *(this + 35);
            v24 = *(v23 + 4 * v11);
            v25 = *(*(v22 + 256) + 4 * v11);
            v26 = *(v23 + 4 * v25);
          }

          else
          {
            LODWORD(v25) = *(*(v22 + 256) + 4 * v11);
            if (*(this + 76))
            {
              v27 = *(this + 37);
              if (*(v27 + 2 * v11) == 0xFFFF)
              {
                v24 = -1;
              }

              else
              {
                v24 = *(v27 + 2 * v11);
              }

              v26 = *(v27 + 2 * v25);
              v28 = v26 == 0xFFFF;
            }

            else
            {
              v29 = *(this + 39);
              if (*(v29 + v11) == 255)
              {
                v24 = -1;
              }

              else
              {
                v24 = *(v29 + v11);
              }

              v26 = *(v29 + v25);
              v28 = v26 == 255;
            }

            if (v28)
            {
              v26 = -1;
            }
          }

          if (v24 != v26)
          {
            v30 = *(v22 + 200);
            v31 = *(v22 + 224);
            v33 = v31 + *(v30 + 4 * v25);
            errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9220, "lm/wordlm", 62, "%.500s %u %.500s %u %u %u", a7, a8, v31 + *(v30 + 4 * v11));
          }
        }
      }
    }

    ++v11;
  }

  while (v9 != v11);
}

uint64_t WordLanguageModel::getTotalPreloadableBytes(WordLanguageModel *this)
{
  v1 = *(this + 31);
  v2 = *(this + 29);
  if (v2)
  {
    v1 += (*(*v2 + 32))(v2);
  }

  return v1;
}

uint64_t WordLanguageModel::computeTotalPreloadableBytes(WordLanguageModel *this)
{
  if (*(this + 68))
  {
    v2 = 0;
  }

  else
  {
    v2 = WordLanguageModel::computeLocalPreloadableBytes(this);
  }

  v3 = *(this + 29);
  if (v3)
  {
    v2 += (*(*v3 + 40))(v3);
  }

  return v2;
}

uint64_t WordLanguageModel::computeLocalPreloadableBytes(WordLanguageModel *this)
{
  if (*(this + 16) < 2u)
  {
    return 0;
  }

  v2 = BigramData::computeLocalPreloadableBytes((this + 360));
  if (*(this + 16) >= 3u)
  {
    v2 += TrigramData::computeLocalPreloadableBytes((this + 744));
    if (*(this + 16) >= 4u)
    {
      v2 += QuadgramData::computeLocalPreloadableBytes((this + 1232));
    }
  }

  return v2;
}

uint64_t WordLanguageModel::preloadBigramsAndTrigrams(uint64_t a1, unsigned int a2, uint64_t *a3, unsigned int *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v22[0] = 0;
  v22[1] = 0;
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v11 = *a3;
  do
  {
    v12 = v11 + 16 * v10;
    if (*(v12 + 8))
    {
      v13 = 0;
      do
      {
        v14 = *(*v12 + 4 * v13);
        v15 = v14 & 0xE0000000;
        if ((v14 & 0xE0000000) == 0x80000000)
        {
          WordLanguageModel::preloadTrigramRecord(a1, v14 & 0x1FFFFFFF, v23, v22, v21, v20);
        }

        else if (v15 == 0x40000000)
        {
          WordLanguageModel::preloadBigramRecord(a1, v14 & 0x1FFFFFFF, v23, v22, v21, v20);
        }

        else
        {
          if (v15 == -1610612736)
          {
            goto LABEL_13;
          }

          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4100, "lm/wordlm", 71, "%u", a7, a8, 0);
        }

        ++v13;
        v11 = *a3;
        v12 = *a3 + 16 * v10;
      }

      while (v13 < *(v12 + 8));
    }

    ++v10;
  }

  while (v10 <= a2);
  LODWORD(v13) = 0;
LABEL_13:
  *a4 = v10;
  *a5 = v13;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v22);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
}

void sub_26279709C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  _Unwind_Resume(a1);
}

void WordLanguageModel::preloadBigramRecord(uint64_t a1, unsigned int a2, uint64_t a3, __int16 **a4, void *a5, uint64_t a6)
{
  WordLanguageModel::readBigramRecord(a1, a2, a3, a4, a5, a6);
  BigramData::bi1SetEmpty(a1 + 360, a2);

  BigramData::fillBigramRecordPreload((a1 + 360), a2, a3, a4, a5);
}

uint64_t WordLanguageModel::preloadTrigramRecord(uint64_t a1, unsigned int a2, uint64_t a3, __int16 **a4, void *a5, uint64_t a6)
{
  WordLanguageModel::readTrigramRecord(a1, a2, a3, a4, a5, a6);
  TrigramData::tri2SetUnallocated(a1 + 744, a2);

  return TrigramData::fillTrigramRecordPreload((a1 + 744), a2, a3, a4, a5);
}

uint64_t WordLanguageModel::preloadQuadgrams(uint64_t a1, unsigned int a2, uint64_t *a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26[0] = 0;
  v26[1] = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24[0] = 0;
  v24[1] = 0;
  v23[0] = 0;
  v23[1] = 0;
  v22[0] = 0;
  v22[1] = 0;
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19[0] = 0;
  v19[1] = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17[0] = 0;
  v17[1] = 0;
  if (a4 <= a2)
  {
    v10 = a5;
    v11 = *a3;
    do
    {
      v12 = a4;
      for (i = v11 + 16 * a4; v10 < *(i + 8); i = *a3 + 16 * v12)
      {
        v14 = *(*i + 4 * v10);
        if ((v14 & 0xE0000000) == 0xA0000000)
        {
          WordLanguageModel::preloadQuadgramRecord(a1, v14 & 0x1FFFFFFF, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17);
        }

        else
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4150, "lm/wordlm", 71, "%u", a7, a8, 0);
        }

        ++v10;
        v11 = *a3;
      }

      v10 = 0;
      a4 = v12 + 1;
    }

    while (v12 + 1 <= a2);
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v25);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v26);
}

void sub_26279735C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a20);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v26 - 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v26 - 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v26 - 104);
  _Unwind_Resume(a1);
}

unint64_t WordLanguageModel::preloadQuadgramRecord(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  WordLanguageModel::readQuadgramRecord(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  v19 = a1 + 1232;
  QuadgramData::quad2SetUnallocated(a1 + 1232, a2);
  result = QuadgramData::allocQuad2(a1 + 1232, a2, *(a3 + 8));
  v50 = a4;
  v21 = *(a4 + 8);
  if (*(a1 + 1256))
  {
    if (v21)
    {
      v22 = 0;
      v23 = a2 >> 5;
      v24 = 1 << a2;
      do
      {
        v25 = *(*(a1 + 1480) + 4 * a2);
        if (*(a1 + 1232) && (*(*(a1 + 1344) + 4 * v23) & v24) != 0)
        {
          LODWORD(v25) = *(*(a1 + 1656) + 4 * v25);
          v26 = 440;
        }

        else
        {
          v26 = 264;
        }

        *(*(v19 + v26) + 2 * (v22 + v25)) = *(*v50 + 2 * v22);
        result = QuadgramData::allocScoresForIndex(a1 + 1232, a2, v22, *(*a3 + 2 * v22));
        v27 = *(*(a1 + 1480) + 4 * a2);
        if (*(a1 + 1232) && (*(*(a1 + 1344) + 4 * v23) & v24) != 0)
        {
          LODWORD(v27) = *(*(a1 + 1656) + 4 * v27);
          v28 = 472;
        }

        else
        {
          v28 = 312;
        }

        *(*(v19 + v28) + (v22 + v27)) = *(*a7 + v22);
        ++v22;
        v29 = *(v50 + 8);
      }

      while (v22 < v29);
      goto LABEL_27;
    }

LABEL_26:
    v29 = 0;
    goto LABEL_27;
  }

  if (!v21)
  {
    goto LABEL_26;
  }

  v30 = a6;
  v31 = 0;
  v49 = a2 >> 5;
  v32 = 1 << a2;
  v33 = *(*(a1 + 1480) + 4 * a2);
  v34 = *(a1 + 1232);
  do
  {
    if (v34 && (*(*(a1 + 1344) + 4 * v49) & v32) != 0)
    {
      LODWORD(v33) = *(*(a1 + 1656) + 4 * v33);
      v35 = 440;
    }

    else
    {
      v35 = 264;
    }

    *(*(v19 + v35) + 2 * (v31 + v33)) = *(*v50 + 2 * v31);
    result = QuadgramData::allocScoresForIndex(a1 + 1232, a2, v31, *(*a3 + 2 * v31));
    v33 = *(*(a1 + 1480) + 4 * a2);
    v34 = *(a1 + 1232);
    if (v34 && (*(*(a1 + 1344) + 4 * v49) & v32) != 0)
    {
      v36 = *(*(a1 + 1656) + 4 * v33);
      v37 = 456;
    }

    else
    {
      v37 = 296;
      v36 = *(*(a1 + 1480) + 4 * a2);
    }

    *(*(v19 + v37) + 2 * (v31 + v36)) = *(*v30 + 2 * v31);
    ++v31;
    v29 = *(v50 + 8);
  }

  while (v31 < v29);
LABEL_27:
  if (*(a1 + 1272))
  {
    if (v29)
    {
      v38 = 0;
      v39 = 0;
      v40 = *a3;
      do
      {
        LODWORD(v41) = *(v40 + 2 * v38);
        if (*(v40 + 2 * v38))
        {
          v42 = 0;
          do
          {
            QuadgramData::setQuad3SuccIdForIndex(v19, a2, v38, v42, *(*a5 + 2 * (v39 + v42)));
            result = QuadgramData::setQuantizedScoreForIndex(v19, a2, v38, v42, *(*a9 + (v39 + v42)));
            ++v42;
            v40 = *a3;
            v41 = *(*a3 + 2 * v38);
          }

          while (v42 < v41);
          v29 = *(v50 + 8);
        }

        v39 += v41;
        ++v38;
      }

      while (v38 < v29);
    }
  }

  else if (v29)
  {
    v43 = 0;
    v44 = 0;
    v45 = *a3;
    do
    {
      LODWORD(v46) = *(v45 + 2 * v43);
      if (*(v45 + 2 * v43))
      {
        v47 = 0;
        do
        {
          QuadgramData::setQuad3SuccIdForIndex(v19, a2, v43, v47, *(*a5 + 2 * (v44 + v47)));
          result = QuadgramData::setScoreForIndex(v19, a2, v43, v47, *(*a8 + 2 * (v44 + v47)));
          ++v47;
          v45 = *a3;
          v46 = *(*a3 + 2 * v43);
        }

        while (v47 < v46);
        v29 = *(v50 + 8);
      }

      v44 += v46;
      ++v43;
    }

    while (v43 < v29);
  }

  return result;
}

void WordLanguageModel::finalizeLM(unsigned int *a1, LanguageModel *a2, DFile *a3, DFileChecksums *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, unsigned __int8 a12, unint64_t a13, unint64_t a14)
{
  v14 = a8;
  v35 = a6;
  v36 = a7;
  if (*(a1 + 29))
  {
    v47[0] = 1;
    DFile::pushCurrentSubDirComponent(a3, v47, a3, a4, a5, a6, a7, a8);
    BYTE4(v31) = a10;
    LODWORD(v31) = a9;
    (*(**(a1 + 29) + 48))(*(a1 + 29), a2, a3, a4, a5, v35, v36, v14, v31, a11, a12, a13, a14);
    DFile::popCurrentSubDirComponent(a3);
    v18 = (*(**(a1 + 29) + 696))();
    if (v18 != (*(*a1 + 696))(a1))
    {
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 4216, "lm/wordlm", 68, "%s", v19, v20, &errStr_lm_wordlm_E_BACKOFF_MISMATCHED_ENDLMID);
    }
  }

  if (a14)
  {
    if (!a5)
    {
      if (*(a1 + 31))
      {
        LODWORD(v21) = 1000;
        if ((a14 & 0x8000000000000000) != 0 || a14 > a13 || (v21 = 1000 * a14 / a13, v21))
        {
          v32 = v14;
          (*(**(a1 + 28) + 24))(*(a1 + 28), a1[64]);
          v47[0] = 0;
          v47[1] = 0;
          v46[0] = 0;
          v46[1] = 0;
          v45[0] = 0;
          v45[1] = 0;
          v44[0] = 0;
          v44[1] = 0;
          v43[0] = 0;
          v43[1] = 0;
          v42[0] = 0;
          v42[1] = 0;
          v41[0] = 0;
          v41[1] = 0;
          v40 = 0;
          readObject<unsigned int>(*(a1 + 28), v47, &v40);
          readObject<unsigned int>(*(a1 + 28), v46, &v40);
          readObject<unsigned int>(*(a1 + 28), v45, &v40);
          readObject<unsigned int>(*(a1 + 28), v44, &v40);
          readObject<unsigned int>(*(a1 + 28), v43, &v40);
          readObject<unsigned int>(*(a1 + 28), v42, &v40);
          readObject<unsigned int>(*(a1 + 28), v41, &v40);
          v22 = 0;
          v38 = 0;
          v39 = 0;
          do
          {
            v23 = v39;
            if (v39 == HIDWORD(v39))
            {
              DgnArray<DgnPrimArray<double>>::reallocElts(&v38, 1, 1);
              v23 = v39;
            }

            v24 = (v38 + 16 * v23);
            *v24 = 0;
            v24[1] = 0;
            LODWORD(v39) = v39 + 1;
            readObject<unsigned int>(*(a1 + 28), v38 + 16 * v22++, &v40);
          }

          while (v22 <= v21);
          (*(**(a1 + 28) + 24))(*(a1 + 28), a1[65]);
          BigramData::preAllocateDynamicBigramData((a1 + 90), *(v46[0] + 4 * v21), *(v45[0] + 4 * v21));
          TrigramData::preAllocateDynamicTrigramData((a1 + 186), *(v44[0] + 4 * v21), *(v43[0] + 4 * v21));
          QuadgramData::preAllocateDynamicQuadgramData((a1 + 308), *(v42[0] + 4 * v21), *(v41[0] + 4 * v21));
          v37 = 0;
          WordLanguageModel::preloadBigramsAndTrigrams(a1, v21, &v38, &v37 + 1, &v37, v25, v26, v27);
          v14 = v32;
          BigramData::compact((a1 + 90));
          TrigramData::compact((a1 + 186));
          WordLanguageModel::preloadQuadgrams(a1, v21, &v38, HIDWORD(v37), v37, v28, v29, v30);
          (*(**(a1 + 5) + 64))(*(a1 + 5), 0);
          QuadgramData::compact((a1 + 308));
          DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v38);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v41);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v42);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v43);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v44);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v45);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v46);
          DgnPrimArray<unsigned int>::~DgnPrimArray(v47);
        }
      }
    }
  }

  BYTE4(v31) = a10;
  LODWORD(v31) = a9;
  LanguageModel::finalizeLM(a1, a2, a3, a4, a5, v35, v36, v14, v31, a11, a12);
}

void sub_262797BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28)
{
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&a19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a24);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a26);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a28);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v28 - 136);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v28 - 120);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v28 - 104);
  _Unwind_Resume(a1);
}

void readObject<unsigned int>(RealDFileSubFileStream *a1, uint64_t a2, unsigned int *a3)
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

uint64_t WordLanguageModel::canSaveAsText(WordLanguageModel *this)
{
  v2 = *(this + 29);
  if (!v2)
  {
    return *(this + 5) == 0;
  }

  result = (*(*v2 + 64))(v2);
  if (result)
  {
    return *(this + 5) == 0;
  }

  return result;
}

RecentBuffer *WordLanguageModel::saveLM(RecentBuffer **this, DFile *a2, DFileChecksums *a3, uint64_t a4, DFileChecksums *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 16) < 2u || *(this + 244) == 1 && (v14 = 1, DFile::pushCurrentSubDirComponent(a2, &v14, a3, a4, a5, a6, a7, a8), (*(*this[29] + 72))(this[29], a2, a3, a4, a5), DFile::popCurrentSubDirComponent(a2), *(this + 16) < 2u) || !this[28])
  {
    if (a4)
    {
      WordLanguageModel::saveWns(this, a2, this[5] != 0, a5);
      WordLanguageModel::saveText(this, a2, a5);
    }

    else
    {
      WordLanguageModel::saveBinary(this, a2, a3, a5);
    }
  }

  else
  {
    WordLanguageModel::saveDynamic(this, a2, a3, a5);
  }

  result = this[1];
  if (result)
  {
    return RecentBuffer::saveRecentBuffer(result, a2, a3, a4, a5);
  }

  return result;
}

void (***WordLanguageModel::saveDynamic(WordLanguageModel *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x70u, a4, "LMWNGDYN", 24, 16);
  v11 = 0;
  writeObject(v7, this + 16, &v11);
  writeObject(v7, this + 68, &v11);
  writeObject(v7, this + 18, &v11);
  writeObject(v7, this + 19, &v11);
  writeObject(v7, this + 80, &v11);
  writeObject(v7, this + 25, &v11);
  writeObject(v7, this + 60, &v11);
  writeObject(v7, this + 244, &v11);
  v10 = 1;
  writeObject(v7, &v10, &v11);
  WordLanguageModel::saveUnigramMembersBinary(this, v7, &v11);
  if (*(this + 16) >= 2u)
  {
    WordLanguageModel::saveBigramMembersBinary(this, v7, &v11);
  }

  writeObjectChecksum(v7, &v11);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x70u, v11);
  return DgnDelete<DgnStream>(v7);
}

void WordLanguageModel::saveWns(WordLanguageModel *this, DFile *a2, unsigned int a3, int a4)
{
  DgnTextFileWriter::DgnTextFileWriter(v21);
  DgnTextFileWriter::openDgnTextFileWriter(v21, a2, 0x73u, a4);
  v19 = 0;
  v20 = 0;
  DgnTextFile::legalDgnTextFileVersions(v21, sWNS_Versions, &v19, v8, v9, v10, v11, v12);
  DgnTextFileWriter::setFileType(v21, "WordNGramSpec", (v19 + 8 * (v20 - 1)));
  v18[0] = 0;
  v18[1] = 0;
  v17[0] = 0;
  v17[1] = 0;
  DgnTextFileWriter::setLineFieldFormat(v21, v18, v17);
  DgnTextFileWriter::setHeaderFieldUnsigned(v21, "Depth", *(this + 16));
  DgnTextFileWriter::setHeaderFieldInteger(v21, "AlienWordLmId", *(this + 18));
  DgnTextFileWriter::setHeaderFieldBool(v21, "AllowNewWordCloning", *(this + 80));
  DgnTextFileWriter::setHeaderFieldInteger(v21, "IgnoreInContextLmId", *(this + 25));
  if (*(this + 16) >= 2u)
  {
    DgnTextFileWriter::setHeaderFieldInteger(v21, "UnknownContextLmId", *(this + 60));
    DgnTextFileWriter::setHeaderFieldInteger(v21, "AlienWordContextLmId", *(this + 19));
    if (*(this + 29))
    {
      DgnString::DgnString(&v15);
      v14 = 1;
      SubDirExtension::appendToString(&v14, &v15);
      if (v16)
      {
        v13 = v15;
      }

      else
      {
        v13 = &unk_26288CFB0;
      }

      DgnTextFileWriter::setHeaderField(v21, "BackoffSubDirectory", v13);
      DgnTextFileWriter::setHeaderFieldUnsigned(v21, "BackoffAfterDepth", 2);
      DgnString::~DgnString(&v15);
    }

    DgnTextFileWriter::setHeaderFieldBool(v21, "HasStaticComponentOnDisk", a3);
    DgnTextFileWriter::setHeaderFieldBool(v21, "LoadNgrams", *(this + 68));
  }

  DgnArray<DgnString>::releaseAll(v17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  DgnIArray<Utterance *>::~DgnIArray(&v19);
  DgnTextFileWriter::~DgnTextFileWriter(v21);
}

void sub_262798168(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  va_copy(va4, va3);
  v12 = va_arg(va4, void);
  v14 = va_arg(va4, void);
  DgnString::~DgnString(va);
  DgnArray<DgnString>::releaseAll(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnIArray<Utterance *>::~DgnIArray(va3);
  DgnTextFileWriter::~DgnTextFileWriter(va4);
  _Unwind_Resume(a1);
}

void WordLanguageModel::saveText(WordLanguageModel *this, DFile *a2, int a3)
{
  DgnTextFileWriter::DgnTextFileWriter(v179);
  DgnTextFileWriter::openDgnTextFileWriter(v179, a2, 0x74u, a3);
  v177 = 0;
  v178 = 0;
  DgnTextFile::legalDgnTextFileVersions(v179, sWNT_Versions, &v177, v6, v7, v8, v9, v10);
  DgnTextFileWriter::setFileType(v179, "WordNGramText", (v177 + 8 * (v178 - 1)));
  DgnTextFileWriter::setHeaderFieldUnsigned(v179, "Depth", *(this + 16));
  DgnTextFileWriter::setHeaderFieldUnsigned(v179, "LMScale", *(this + 8));
  DgnTextFileWriter::setHeaderFieldUnsigned(v179, "NumLmIds", *(this + 26));
  DgnTextFileWriter::setHeaderFieldInteger(v179, "BegLmId", *(this + 28));
  DgnTextFileWriter::setHeaderFieldInteger(v179, "EndLmId", *(this + 29));
  if (*(this + 16) >= 2u)
  {
    DgnTextFileWriter::setHeaderFieldUnsigned(v179, "ContextSkipDistance", *(this + 68));
    DgnTextFileWriter::setHeaderFieldBool(v179, "HasWordIdToContextLmId", *(this + 276));
  }

  v175 = 0;
  v176 = 0;
  v173 = 0;
  v174 = 0;
  DgnString::DgnString(&v171, "TableName");
  v11 = v176;
  if (v176 == HIDWORD(v176))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v175, 1, 1);
    v11 = v176;
  }

  DgnString::DgnString((v175 + 16 * v11), &v171);
  LODWORD(v176) = v176 + 1;
  DgnString::~DgnString(&v171);
  v12 = v174;
  if (v174 == HIDWORD(v174))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v173, 1, 1);
    v12 = v174;
  }

  *(v173 + 4 * v12) = 0;
  LODWORD(v174) = v12 + 1;
  v165 = v176;
  DgnString::DgnString(&v171, "Index1");
  v13 = v176;
  if (v176 == HIDWORD(v176))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v175, 1, 1);
    v13 = v176;
  }

  DgnString::DgnString((v175 + 16 * v13), &v171);
  LODWORD(v176) = v176 + 1;
  DgnString::~DgnString(&v171);
  v14 = v174;
  if (v174 == HIDWORD(v174))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v173, 1, 1);
    v14 = v174;
  }

  *(v173 + 4 * v14) = 3;
  LODWORD(v174) = v14 + 1;
  v15 = v176;
  v166 = v176;
  v16 = v176;
  v164 = v176;
  if (*(this + 16) >= 2u)
  {
    DgnString::DgnString(&v171, "Index2");
    v17 = v176;
    if (v176 == HIDWORD(v176))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(&v175, 1, 1);
      v17 = v176;
    }

    DgnString::DgnString((v175 + 16 * v17), &v171);
    LODWORD(v176) = v176 + 1;
    DgnString::~DgnString(&v171);
    v18 = v174;
    if (v174 == HIDWORD(v174))
    {
      DgnPrimArray<unsigned int>::reallocElts(&v173, 1, 1);
      v18 = v174;
    }

    *(v173 + 4 * v18) = 3;
    LODWORD(v174) = v18 + 1;
    v15 = v176;
    if (*(this + 16) < 3u)
    {
      v166 = v176;
      v16 = v176;
    }

    else
    {
      DgnString::DgnString(&v171, "Index3");
      v19 = v176;
      if (v176 == HIDWORD(v176))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v175, 1, 1);
        v19 = v176;
      }

      DgnString::DgnString((v175 + 16 * v19), &v171);
      LODWORD(v176) = v176 + 1;
      DgnString::~DgnString(&v171);
      v20 = v174;
      if (v174 == HIDWORD(v174))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v173, 1, 1);
        v20 = v174;
      }

      *(v173 + 4 * v20) = 3;
      LODWORD(v174) = v20 + 1;
      v16 = v176;
      if (*(this + 16) < 4u)
      {
        v166 = v176;
      }

      else
      {
        DgnString::DgnString(&v171, "Index4");
        v21 = v176;
        if (v176 == HIDWORD(v176))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(&v175, 1, 1);
          v21 = v176;
        }

        DgnString::DgnString((v175 + 16 * v21), &v171);
        LODWORD(v176) = v176 + 1;
        DgnString::~DgnString(&v171);
        v22 = v174;
        if (v174 == HIDWORD(v174))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v173, 1, 1);
          v22 = v174;
        }

        *(v173 + 4 * v22) = 3;
        LODWORD(v174) = v22 + 1;
        v166 = v176;
      }
    }
  }

  DgnString::DgnString(&v171, "EntryValue1");
  v23 = v176;
  if (v176 == HIDWORD(v176))
  {
    DgnArray<DgnPrimArray<double>>::reallocElts(&v175, 1, 1);
    v23 = v176;
  }

  DgnString::DgnString((v175 + 16 * v23), &v171);
  LODWORD(v176) = v176 + 1;
  DgnString::~DgnString(&v171);
  v24 = v174;
  if (v174 == HIDWORD(v174))
  {
    DgnPrimArray<unsigned int>::reallocElts(&v173, 1, 1);
    v24 = v174;
  }

  *(v173 + 4 * v24) = 1;
  LODWORD(v174) = v24 + 1;
  DgnTextFileWriter::setLineFieldFormat(v179, &v173, &v175);
  v25 = *(this + 44);
  if (v25 >= 2)
  {
    for (i = 1; i < v25; ++i)
    {
      v27 = *(*(this + 21) + 2 * i);
      if (v27 != 20000)
      {
        DgnTextFileWriter::setLineFieldValue(v179, 0, "UniSc");
        DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, i);
        if (*(this + 16) >= 2u)
        {
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
          if (*(this + 16) >= 3u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v15, 0);
            if (*(this + 16) >= 4u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v16, 0);
            }
          }
        }

        DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, v27);
        DgnTextFileWriter::writeNextLine(v179);
        v25 = *(this + 44);
      }
    }
  }

  v28 = *(this + 32);
  if (v28)
  {
    for (j = 0; j < v28; ++j)
    {
      v30 = *(*(this + 15) + 4 * j);
      if (v30 != -1)
      {
        DgnTextFileWriter::setLineFieldValue(v179, 0, "WordIdToLmId");
        DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, j);
        if (*(this + 16) >= 2u)
        {
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
          if (*(this + 16) >= 3u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v15, 0);
            if (*(this + 16) >= 4u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v16, 0);
            }
          }
        }

        DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, v30);
        DgnTextFileWriter::writeNextLine(v179);
        v28 = *(this + 32);
      }
    }
  }

  else
  {
    v31 = *(this + 36);
    if (v31)
    {
      for (k = 0; k < v31; ++k)
      {
        v33 = *(*(this + 17) + 2 * k);
        if (v33 != 0xFFFF)
        {
          DgnTextFileWriter::setLineFieldValue(v179, 0, "WordIdToLmId");
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, k);
          if (*(this + 16) >= 2u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
            if (*(this + 16) >= 3u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v15, 0);
              if (*(this + 16) >= 4u)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v179, v16, 0);
              }
            }
          }

          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, v33);
          DgnTextFileWriter::writeNextLine(v179);
          v31 = *(this + 36);
        }
      }
    }

    else
    {
      v34 = *(this + 40);
      if (v34)
      {
        for (m = 0; m < v34; ++m)
        {
          v36 = *(*(this + 19) + m);
          if (v36 != 255)
          {
            DgnTextFileWriter::setLineFieldValue(v179, 0, "WordIdToLmId");
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, m);
            if (*(this + 16) >= 2u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
              if (*(this + 16) >= 3u)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v179, v15, 0);
                if (*(this + 16) >= 4u)
                {
                  DgnTextFileWriter::setLineFieldUnsignedValue(v179, v16, 0);
                }
              }
            }

            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, v36);
            DgnTextFileWriter::writeNextLine(v179);
            v34 = *(this + 40);
          }
        }
      }
    }
  }

  v162 = v16;
  if (*(this + 16) >= 2u)
  {
    if (*(this + 276) == 1)
    {
      v37 = *(this + 72);
      if (v37)
      {
        for (n = 0; n < v37; ++n)
        {
          v39 = *(*(this + 35) + 4 * n);
          if (v39 != -1)
          {
            DgnTextFileWriter::setLineFieldValue(v179, 0, "WordIdToContextLmId");
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, n);
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
            if (*(this + 16) >= 3u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v15, 0);
              if (*(this + 16) >= 4u)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v179, v16, 0);
              }
            }

            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, v39);
            DgnTextFileWriter::writeNextLine(v179);
            v37 = *(this + 72);
          }
        }
      }

      else
      {
        v40 = *(this + 76);
        if (v40)
        {
          for (ii = 0; ii < v40; ++ii)
          {
            v42 = *(*(this + 37) + 2 * ii);
            if (v42 != 0xFFFF)
            {
              DgnTextFileWriter::setLineFieldValue(v179, 0, "WordIdToContextLmId");
              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, ii);
              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
              if (*(this + 16) >= 3u)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v179, v15, 0);
                if (*(this + 16) >= 4u)
                {
                  DgnTextFileWriter::setLineFieldUnsignedValue(v179, v16, 0);
                }
              }

              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, v42);
              DgnTextFileWriter::writeNextLine(v179);
              v40 = *(this + 76);
            }
          }
        }

        else
        {
          v43 = *(this + 80);
          if (v43)
          {
            for (jj = 0; jj < v43; ++jj)
            {
              v45 = *(*(this + 39) + jj);
              if (v45 != 255)
              {
                DgnTextFileWriter::setLineFieldValue(v179, 0, "WordIdToContextLmId");
                DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, jj);
                DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
                if (*(this + 16) >= 3u)
                {
                  DgnTextFileWriter::setLineFieldUnsignedValue(v179, v15, 0);
                  if (*(this + 16) >= 4u)
                  {
                    DgnTextFileWriter::setLineFieldUnsignedValue(v179, v16, 0);
                  }
                }

                DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, v45);
                DgnTextFileWriter::writeNextLine(v179);
                v43 = *(this + 80);
              }
            }
          }
        }
      }
    }

    v46 = *(this + 84);
    if (v46 >= 2)
    {
      for (kk = 1; kk < v46; ++kk)
      {
        v48 = *(*(this + 41) + 2 * kk);
        if (v48 != 20000)
        {
          DgnTextFileWriter::setLineFieldValue(v179, 0, "UniBoSc");
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, kk);
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
          if (*(this + 16) >= 3u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v15, 0);
            if (*(this + 16) >= 4u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v16, 0);
            }
          }

          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, v48);
          DgnTextFileWriter::writeNextLine(v179);
          v46 = *(this + 84);
        }
      }
    }

    v49 = *(this + 88);
    if (v49 >= 2)
    {
      for (mm = 1; mm < v49; ++mm)
      {
        v51 = *(*(this + 43) + 2 * mm);
        if (v51 != 20000)
        {
          DgnTextFileWriter::setLineFieldValue(v179, 0, "BoWt");
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, mm);
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
          if (*(this + 16) >= 3u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v15, 0);
            if (*(this + 16) >= 4u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v16, 0);
            }
          }

          DgnTextFileWriter::setLineFieldIntegerValue(v179, v166, v51);
          DgnTextFileWriter::writeNextLine(v179);
          v49 = *(this + 88);
        }
      }
    }

    if (*(this + 94) >= 2u)
    {
      v52 = 1;
      do
      {
        v53 = *(*(this + 46) + 2 * v52);
        DgnTextFileWriter::setLineFieldValue(v179, 0, "BiScQuant");
        DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, v52);
        DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
        if (*(this + 16) >= 3u)
        {
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v15, 0);
          if (*(this + 16) >= 4u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v16, 0);
          }
        }

        DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, v53);
        DgnTextFileWriter::writeNextLine(v179);
        ++v52;
      }

      while (v52 < *(this + 94));
    }

    v163 = v15;
    v171 = 0;
    v172 = 0;
    v169 = 0;
    v170 = 0;
    v167 = 0;
    v168 = 0;
    if (*(this + 140) >= 2u)
    {
      v54 = 1;
      do
      {
        LODWORD(v172) = 0;
        LODWORD(v170) = 0;
        LODWORD(v168) = 0;
        v55 = *(*(this + 69) + 2 * v54);
        if ((*(*(this + 48) + ((v54 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) >> v54))
        {
          if (*(*(this + 69) + 2 * v54))
          {
            v56 = 1;
            do
            {
              v57 = *(this + 94);
              v58 = v56 - 1;
              v59 = (*(*(this + 67) + 4 * v54) + v58);
              if (v57)
              {
                v59 = *(*(this + 73) + v59);
                v60 = *(this + 46);
              }

              else
              {
                v60 = *(this + 71);
              }

              v61 = *(v60 + 2 * v59);
              if (v61 != 20000)
              {
                v62 = v172;
                if (v172 == HIDWORD(v172))
                {
                  DgnPrimArray<short>::reallocElts(&v171, 1, 1);
                  v62 = v172;
                  v57 = *(this + 94);
                }

                *(v171 + 2 * v62) = v56;
                LODWORD(v172) = v62 + 1;
                if (v57)
                {
                  v63 = *(*(this + 73) + (*(*(this + 67) + 4 * v54) + v58));
                  v64 = v168;
                  if (v168 == HIDWORD(v168))
                  {
                    DgnPrimArray<char>::reallocElts(&v167, 1, 1);
                    v64 = v168;
                  }

                  *(v167 + v64) = v63;
                  v65 = v168;
                  v66 = &v168;
                }

                else
                {
                  v65 = v170;
                  if (v170 == HIDWORD(v170))
                  {
                    DgnPrimArray<short>::reallocElts(&v169, 1, 1);
                    v65 = v170;
                  }

                  *(v169 + 2 * v65) = v61;
                  v66 = &v170;
                }

                *v66 = v65 + 1;
              }

              ++v56;
            }

            while (*(*(this + 69) + 2 * v54) >= v56);
          }
        }

        else if (*(*(this + 69) + 2 * v54))
        {
          v67 = 0;
          do
          {
            SearchSuccIdForIndex = BigramData::getSearchSuccIdForIndex((this + 360), v54, v67);
            SearchScoreForIndex = BigramData::getSearchScoreForIndex((this + 360), v54, v67);
            v70 = SearchScoreForIndex;
            if (SearchScoreForIndex != 20000)
            {
              v71 = v172;
              if (v172 == HIDWORD(v172))
              {
                DgnPrimArray<short>::reallocElts(&v171, 1, 1);
                v71 = v172;
              }

              *(v171 + 2 * v71) = SearchSuccIdForIndex;
              LODWORD(v172) = v71 + 1;
              if (*(this + 94))
              {
                SearchQuantizedScoreForIndex = BigramData::getSearchQuantizedScoreForIndex((this + 360), v54, v67);
                v73 = v168;
                if (v168 == HIDWORD(v168))
                {
                  DgnPrimArray<char>::reallocElts(&v167, 1, 1);
                  v73 = v168;
                }

                *(v167 + v73) = SearchQuantizedScoreForIndex;
                v74 = v168;
                v75 = &v168;
              }

              else
              {
                v74 = v170;
                if (v170 == HIDWORD(v170))
                {
                  DgnPrimArray<short>::reallocElts(&v169, 1, 1);
                  v74 = v170;
                }

                *(v169 + 2 * v74) = v70;
                v75 = &v170;
              }

              *v75 = v74 + 1;
            }

            ++v67;
          }

          while (v67 < *(*(this + 69) + 2 * v54));
        }

        if (v172)
        {
          v76 = 0;
          do
          {
            if (*(this + 94))
            {
              v77 = *(v167 + v76);
            }

            else
            {
              v77 = *(v169 + 2 * v76);
            }

            v78 = *(v171 + 2 * v76);
            DgnTextFileWriter::setLineFieldValue(v179, 0, "BiSc");
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, v54);
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, v78);
            if (*(this + 16) >= 3u)
            {
              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v15, 0);
              if (*(this + 16) >= 4u)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v179, v162, 0);
              }
            }

            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, v77);
            DgnTextFileWriter::writeNextLine(v179);
            ++v76;
          }

          while (v76 < v172);
        }

        ++v54;
      }

      while (v54 < *(this + 140));
    }

    DgnPrimArray<unsigned int>::~DgnPrimArray(&v167);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v169);
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v171);
    if (*(this + 16) >= 3u)
    {
      if (*(this + 192) >= 2u)
      {
        v79 = 1;
        do
        {
          v80 = *(*(this + 95) + 2 * v79);
          DgnTextFileWriter::setLineFieldValue(v179, 0, "TriBoWtQuant");
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, v79);
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v15, 0);
          if (*(this + 16) >= 4u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v162, 0);
          }

          DgnTextFileWriter::setLineFieldIntegerValue(v179, v166, v80);
          DgnTextFileWriter::writeNextLine(v179);
          ++v79;
        }

        while (v79 < *(this + 192));
      }

      if (*(this + 196) >= 2u)
      {
        v81 = 1;
        do
        {
          v82 = *(*(this + 97) + 2 * v81);
          DgnTextFileWriter::setLineFieldValue(v179, 0, "TriScQuant");
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, v81);
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v15, 0);
          if (*(this + 16) >= 4u)
          {
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v162, 0);
          }

          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, v82);
          DgnTextFileWriter::writeNextLine(v179);
          ++v81;
        }

        while (v81 < *(this + 196));
      }

      v83 = *(this + 200);
      if (v83 >= 2)
      {
        for (nn = 1; nn < v83; ++nn)
        {
          v85 = *(this + 99);
          v86 = *(v85 + 2 * nn);
          if (*(v85 + 2 * nn))
          {
            v87 = 0;
            do
            {
              v88 = v87 + *(*(this + 101) + 4 * nn);
              v89 = *(*(this + 103) + 2 * v88);
              DgnTextFileWriter::setLineFieldValue(v179, 0, "TriBoWt");
              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, nn);
              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, v89);
              DgnTextFileWriter::setLineFieldUnsignedValue(v179, v163, 0);
              if (*(this + 16) >= 4u)
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v179, v162, 0);
              }

              if (*(this + 192))
              {
                DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, *(*(this + 107) + v88));
              }

              else
              {
                DgnTextFileWriter::setLineFieldIntegerValue(v179, v166, *(*(this + 105) + 2 * v88));
              }

              DgnTextFileWriter::writeNextLine(v179);
              ++v87;
            }

            while (v86 != v87);
            v83 = *(this + 200);
          }
        }
      }

      v171 = 0;
      v172 = 0;
      v169 = 0;
      v170 = 0;
      v167 = 0;
      v168 = 0;
      if (v83 >= 2)
      {
        for (i1 = 1; i1 < v83; ++i1)
        {
          v156 = *(*(this + 99) + 2 * i1);
          if (*(*(this + 99) + 2 * i1))
          {
            v91 = 0;
            do
            {
              v92 = (*(*(this + 101) + 4 * i1) + v91);
              v93 = *(*(this + 103) + 2 * v92);
              LODWORD(v172) = 0;
              LODWORD(v170) = 0;
              LODWORD(v168) = 0;
              v94 = *(*(this + 130) + 2 * v92);
              if ((*(*(this + 109) + 4 * (v92 >> 5)) >> v92))
              {
                if (*(*(this + 130) + 2 * v92))
                {
                  v95 = 1;
                  do
                  {
                    v96 = *(this + 196);
                    v97 = v95 - 1;
                    v98 = (*(*(this + 128) + 4 * v92) + v97);
                    if (v96)
                    {
                      v98 = *(*(this + 134) + v98);
                      v99 = *(this + 97);
                    }

                    else
                    {
                      v99 = *(this + 132);
                    }

                    v100 = *(v99 + 2 * v98);
                    if (v100 != 20000)
                    {
                      v101 = v172;
                      if (v172 == HIDWORD(v172))
                      {
                        DgnPrimArray<short>::reallocElts(&v171, 1, 1);
                        v101 = v172;
                        v96 = *(this + 196);
                      }

                      *(v171 + 2 * v101) = v95;
                      LODWORD(v172) = v101 + 1;
                      if (v96)
                      {
                        v102 = *(*(this + 134) + (*(*(this + 128) + 4 * v92) + v97));
                        v103 = v168;
                        if (v168 == HIDWORD(v168))
                        {
                          DgnPrimArray<char>::reallocElts(&v167, 1, 1);
                          v103 = v168;
                        }

                        *(v167 + v103) = v102;
                        v104 = v168;
                        v105 = &v168;
                      }

                      else
                      {
                        v104 = v170;
                        if (v170 == HIDWORD(v170))
                        {
                          DgnPrimArray<short>::reallocElts(&v169, 1, 1);
                          v104 = v170;
                        }

                        *(v169 + 2 * v104) = v100;
                        v105 = &v170;
                      }

                      *v105 = v104 + 1;
                    }

                    ++v95;
                  }

                  while (*(*(this + 130) + 2 * v92) >= v95);
                }
              }

              else if (*(*(this + 130) + 2 * v92))
              {
                v106 = 0;
                do
                {
                  v107 = TrigramData::getSearchSuccIdForIndex((this + 744), v92, v106);
                  v108 = TrigramData::getSearchScoreForIndex((this + 744), v92, v106);
                  v109 = v108;
                  if (v108 != 20000)
                  {
                    v110 = v172;
                    if (v172 == HIDWORD(v172))
                    {
                      DgnPrimArray<short>::reallocElts(&v171, 1, 1);
                      v110 = v172;
                    }

                    *(v171 + 2 * v110) = v107;
                    LODWORD(v172) = v110 + 1;
                    if (*(this + 196))
                    {
                      v111 = TrigramData::getSearchQuantizedScoreForIndex((this + 744), v92, v106);
                      v112 = v168;
                      if (v168 == HIDWORD(v168))
                      {
                        DgnPrimArray<char>::reallocElts(&v167, 1, 1);
                        v112 = v168;
                      }

                      *(v167 + v112) = v111;
                      v113 = v168;
                      v114 = &v168;
                    }

                    else
                    {
                      v113 = v170;
                      if (v170 == HIDWORD(v170))
                      {
                        DgnPrimArray<short>::reallocElts(&v169, 1, 1);
                        v113 = v170;
                      }

                      *(v169 + 2 * v113) = v109;
                      v114 = &v170;
                    }

                    *v114 = v113 + 1;
                  }

                  ++v106;
                }

                while (v106 < *(*(this + 130) + 2 * v92));
              }

              if (v172)
              {
                v115 = 0;
                do
                {
                  if (*(this + 196))
                  {
                    v116 = *(v167 + v115);
                  }

                  else
                  {
                    v116 = *(v169 + 2 * v115);
                  }

                  v117 = *(v171 + 2 * v115);
                  DgnTextFileWriter::setLineFieldValue(v179, 0, "TriSc");
                  DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, i1);
                  DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, v93);
                  DgnTextFileWriter::setLineFieldUnsignedValue(v179, v163, v117);
                  if (*(this + 16) >= 4u)
                  {
                    DgnTextFileWriter::setLineFieldUnsignedValue(v179, v162, 0);
                  }

                  DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, v116);
                  DgnTextFileWriter::writeNextLine(v179);
                  ++v115;
                }

                while (v115 < v172);
              }

              ++v91;
            }

            while (v91 != v156);
            v83 = *(this + 200);
          }
        }
      }

      DgnPrimArray<unsigned int>::~DgnPrimArray(&v167);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v169);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v171);
      if (*(this + 16) >= 4u)
      {
        if (*(this + 314) >= 2u)
        {
          v118 = 1;
          do
          {
            v119 = *(*(this + 156) + 2 * v118);
            DgnTextFileWriter::setLineFieldValue(v179, 0, "QuadBoWtQuant");
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, v118);
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v163, 0);
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v162, 0);
            DgnTextFileWriter::setLineFieldIntegerValue(v179, v166, v119);
            DgnTextFileWriter::writeNextLine(v179);
            ++v118;
          }

          while (v118 < *(this + 314));
        }

        if (*(this + 318) >= 2u)
        {
          v120 = 1;
          do
          {
            v121 = *(*(this + 158) + 2 * v120);
            DgnTextFileWriter::setLineFieldValue(v179, 0, "QuadScQuant");
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, v120);
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, 0);
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v163, 0);
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v162, 0);
            DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, v121);
            DgnTextFileWriter::writeNextLine(v179);
            ++v120;
          }

          while (v120 < *(this + 318));
        }

        v122 = *(this + 322);
        if (v122 >= 2)
        {
          v123 = this + 1232;
          for (i2 = 1; i2 < v122; ++i2)
          {
            v158 = *(*(this + 160) + 2 * i2);
            if (*(*(this + 160) + 2 * i2))
            {
              v125 = 0;
              v126 = *(this + 166);
              do
              {
                v127 = (*(*(this + 162) + 4 * i2) + v125);
                if (*(v126 + 2 * v127))
                {
                  v160 = v125;
                  v128 = 0;
                  v129 = *(*(this + 164) + 2 * v127);
                  v130 = v127 >> 5;
                  v131 = 1 << (*(*(this + 162) + 4 * i2) + v125);
                  do
                  {
                    v132 = *(*(this + 185) + 4 * v127);
                    if (*(this + 308) && (*(*(this + 168) + 4 * v130) & v131) != 0)
                    {
                      v132 = *(*(this + 207) + 4 * v132);
                      v133 = 440;
                    }

                    else
                    {
                      v133 = 264;
                    }

                    v134 = *(*&v123[v133] + 2 * (v132 + v128));
                    DgnTextFileWriter::setLineFieldValue(v179, 0, "QuadBoWt");
                    DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, i2);
                    DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, v129);
                    DgnTextFileWriter::setLineFieldUnsignedValue(v179, v163, v134);
                    DgnTextFileWriter::setLineFieldUnsignedValue(v179, v162, 0);
                    if (*(this + 314))
                    {
                      v135 = *(*(this + 185) + 4 * v127);
                      if (*(this + 308) && (*(*(this + 168) + 4 * v130) & v131) != 0)
                      {
                        v135 = *(*(this + 207) + 4 * v135);
                        v136 = 472;
                      }

                      else
                      {
                        v136 = 312;
                      }

                      DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, *(*&v123[v136] + v135 + v128));
                    }

                    else
                    {
                      BackoffWeight = QuadgramData::getBackoffWeight((this + 1232), v127, v128);
                      DgnTextFileWriter::setLineFieldIntegerValue(v179, v166, BackoffWeight);
                    }

                    DgnTextFileWriter::writeNextLine(v179);
                    ++v128;
                    v126 = *(this + 166);
                  }

                  while (v128 < *(v126 + 2 * v127));
                  v125 = v160;
                }

                ++v125;
              }

              while (v125 != v158);
              v122 = *(this + 322);
            }
          }

          if (v122 >= 2)
          {
            for (i3 = 1; i3 < v122; ++i3)
            {
              v155 = *(*(this + 160) + 2 * i3);
              if (*(*(this + 160) + 2 * i3))
              {
                v139 = 0;
                v140 = *(this + 166);
                *v161 = i3;
                do
                {
                  v141 = (*(*(this + 162) + 4 * i3) + v139);
                  if (*(v140 + 2 * v141))
                  {
                    v142 = 0;
                    v157 = v139;
                    v159 = *(*(this + 164) + 2 * v141);
                    v143 = v141 >> 5;
                    v144 = 1 << (*(*(this + 162) + 4 * i3) + v139);
                    v145 = *(*(this + 185) + 4 * v141);
                    v146 = *(this + 308);
                    do
                    {
                      if (v146 && (*(*(this + 168) + 4 * v143) & v144) != 0)
                      {
                        v147 = *(*(this + 207) + 4 * v145);
                        v148 = 440;
                      }

                      else
                      {
                        v148 = 264;
                        v147 = v145;
                      }

                      v149 = 0;
                      v150 = *(*&v123[v148] + 2 * (v147 + v142));
                      if (!v146)
                      {
                        goto LABEL_279;
                      }

LABEL_277:
                      if ((*(*(this + 168) + 4 * v143) & v144) != 0)
                      {
                        v151 = *(*(this + 207) + 4 * v145);
                        v152 = 504;
                        goto LABEL_280;
                      }

LABEL_279:
                      while (1)
                      {
                        v152 = 280;
                        v151 = v145;
LABEL_280:
                        if (v149 >= *(*&v123[v152] + 2 * (v151 + v142)))
                        {
                          break;
                        }

                        Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex((this + 1232), v141, v142, v149);
                        ScoreForIndex = QuadgramData::getScoreForIndex((this + 1232), v141, v142, v149);
                        if (ScoreForIndex != 20000)
                        {
                          if (*(this + 318))
                          {
                            ScoreForIndex = QuadgramData::getQuantizedScoreForIndex((this + 1232), v141, v142, v149);
                          }

                          DgnTextFileWriter::setLineFieldValue(v179, 0, "QuadSc");
                          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v165, v161[0]);
                          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v164, v159);
                          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v163, v150);
                          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v162, Quad3SuccIdForIndex);
                          DgnTextFileWriter::setLineFieldUnsignedValue(v179, v166, ScoreForIndex);
                          DgnTextFileWriter::writeNextLine(v179);
                        }

                        ++v149;
                        v146 = *(this + 308);
                        v145 = *(*(this + 185) + 4 * v141);
                        if (v146)
                        {
                          goto LABEL_277;
                        }
                      }

                      ++v142;
                      v140 = *(this + 166);
                    }

                    while (v142 < *(v140 + 2 * v141));
                    i3 = *v161;
                    v139 = v157;
                  }

                  ++v139;
                }

                while (v139 != v155);
                v122 = *(this + 322);
              }
            }
          }
        }
      }
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v173);
  DgnArray<DgnString>::releaseAll(&v175);
  DgnIArray<Utterance *>::~DgnIArray(&v177);
  DgnTextFileWriter::~DgnTextFileWriter(v179);
}

void sub_262799C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a21);
  DgnArray<DgnString>::releaseAll(&a23);
  DgnIArray<Utterance *>::~DgnIArray(&a25);
  DgnTextFileWriter::~DgnTextFileWriter(&a27);
  _Unwind_Resume(a1);
}

void (***WordLanguageModel::saveBinary(WordLanguageModel *this, DFile *a2, DFileChecksums *a3, int a4))(void)
{
  v7 = OpenAndWriteMrecHeader(a2, 0x6Fu, a4, "LMWNGBIN", 24, 18);
  v10 = 0;
  writeObject(v7, this + 16, &v10);
  writeObject(v7, this + 68, &v10);
  writeObject(v7, this + 18, &v10);
  writeObject(v7, this + 19, &v10);
  writeObject(v7, this + 80, &v10);
  writeObject(v7, this + 25, &v10);
  writeObject(v7, this + 60, &v10);
  writeObject(v7, this + 244, &v10);
  writeObject(v7, this + 245, &v10);
  WordLanguageModel::saveUnigramMembersBinary(this, v7, &v10);
  if (*(this + 16) >= 2u)
  {
    WordLanguageModel::saveBigramMembersBinary(this, v7, &v10);
    BigramData::saveBinary((this + 360), v7, &v10);
    if (*(this + 16) >= 3u)
    {
      TrigramData::saveBinary((this + 744), v7, &v10);
      if (*(this + 16) >= 4u)
      {
        QuadgramData::saveBinary((this + 1232), v7, &v10);
      }
    }
  }

  writeObjectChecksum(v7, &v10);
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(a2);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x6Fu, v10);
  return DgnDelete<DgnStream>(v7);
}

uint64_t WordLanguageModel::saveLMShared(WordLanguageModel *this, DgnSharedMemStream *a2, int a3)
{
  result = WordLanguageModel::saveBinaryShared(this, a2, a3);
  if (*(this + 16) >= 2u && *(this + 244) == 1)
  {
    v5 = *(**(this + 29) + 80);

    return v5();
  }

  return result;
}

uint64_t WordLanguageModel::saveBinaryShared(WordLanguageModel *this, DgnSharedMemStream *a2, int a3)
{
  v7 = 0;
  if (a3)
  {
    writeObject(a2, this + 16, &v7);
    writeObject(a2, this + 68, &v7);
    writeObject(a2, this + 18, &v7);
    writeObject(a2, this + 19, &v7);
    writeObject(a2, this + 80, &v7);
    writeObject(a2, this + 25, &v7);
    writeObject(a2, this + 60, &v7);
    writeObject(a2, this + 244, &v7);
    writeObject(a2, this + 245, &v7);
    WordLanguageModel::saveUnigramMembersBinary(this, a2, &v7);
    if (*(this + 16) <= 1u)
    {
LABEL_9:
      writeObject(a2, this + 456, &v7);
      return writeObjectChecksum(a2, &v7);
    }

    WordLanguageModel::saveBigramMembersBinary(this, a2, &v7);
  }

  else if (*(this + 16) <= 1u)
  {
    return writeObjectChecksum(a2, &v7);
  }

  BigramData::saveBinaryShared((this + 360), a2, a3, &v7);
  if (*(this + 16) >= 3u)
  {
    TrigramData::saveBinaryShared((this + 744), a2, a3, &v7);
    if (*(this + 16) >= 4u)
    {
      QuadgramData::saveBinaryShared((this + 1232), a2, a3, &v7);
    }
  }

  if (a3)
  {
    goto LABEL_9;
  }

  return writeObjectChecksum(a2, &v7);
}

void WordLanguageModel::reloadLMShared(WordLanguageModel *this, DgnSharedMemStream *a2, int a3)
{
  WordLanguageModel::loadBinaryShared(this, a2, 0, 0, 0x6Fu, a3);
  if (*(this + 16) >= 2u && *(this + 244) == 1)
  {
    v4 = *(**(this + 29) + 88);

    v4();
  }
}

RecentBuffer *WordLanguageModel::saveVocAndSvc(unint64_t a1, DFile *a2, DFile *a3, DFileChecksums *a4, uint64_t a5, DFileChecksums *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 64) == 1)
  {
    v13 = *(*a1 + 72);

    return v13();
  }

  else
  {
    if (*(a1 + 244) == 1)
    {
      v25 = 1;
      DFile::pushCurrentSubDirComponent(a2, &v25, a3, a4, a5, a6, a7, a8);
      v25 = 1;
      DFile::pushCurrentSubDirComponent(a3, &v25, v19, v20, v21, v22, v23, v24);
      (*(**(a1 + 232) + 96))(*(a1 + 232), a2, a3, a4, a5, a6, a7, a8, a9);
      DFile::popCurrentSubDirComponent(a2);
      DFile::popCurrentSubDirComponent(a3);
    }

    WordLanguageModel::savePersistentAndIndex(a1, a3, a5, a6, a7, a8, a9, SHIDWORD(a9));
    WordLanguageModel::saveDynamic(a1, a2, a4, a6);
    result = *(a1 + 8);
    if (result)
    {
      return RecentBuffer::saveRecentBuffer(result, a2, a4, 0, a6);
    }
  }

  return result;
}

void WordLanguageModel::savePersistentAndIndex(unint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v11 = a2;
  v208 = *MEMORY[0x277D85DE8];
  v13 = OpenAndWriteMrecHeader(a2, 0x72u, 0, "LMWNGPER", 23, 7);
  v14 = OpenAndWriteMrecHeader(v11, 0x71u, a4, "LMWNGIND", 23, 11);
  v200 = 0;
  v199 = 0;
  v15 = (*(*v13 + 40))(v13);
  LODWORD(v190[0]) = 0;
  (*(*v13 + 80))(v13, v190, 4);
  LODWORD(v190[0]) = 0;
  (*(*v13 + 80))(v13, v190, 4);
  LODWORD(v190[0]) = 0;
  (*(*v13 + 80))(v13, v190, 4);
  (*(*v13 + 48))(v13);
  v16 = (*(*v14 + 40))(v14);
  LODWORD(v190[0]) = 0;
  (*(*v14 + 80))(v14, v190, 4);
  LODWORD(v190[0]) = 0;
  (*(*v14 + 80))(v14, v190, 4);
  LODWORD(v190[0]) = 0;
  (*(*v14 + 80))(v14, v190, 4);
  if (*(a1 + 68) == 1)
  {
    v190[0] = 0;
    writeObject(v14, v190, &v199);
    BigramData::saveBinary((a1 + 360), v14, &v199);
    if (*(a1 + 64) >= 3u)
    {
      TrigramData::saveBinary((a1 + 744), v14, &v199);
      if (*(a1 + 64) >= 4u)
      {
        QuadgramData::saveBinary((a1 + 1232), v14, &v199);
      }
    }

    v17 = 0;
    goto LABEL_142;
  }

  BigramData::BigramData(v198);
  v195 = 0;
  v196 = 0;
  Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::Hash(v197, 0, 16);
  v197[15] = 0;
  v197[14] = 0;
  TrigramData::TrigramData(v194);
  v191 = 0;
  v192 = 0;
  Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::Hash(v193, 0, 16);
  v193[15] = 0;
  v193[14] = 0;
  QuadgramData::QuadgramData(v190);
  v131 = v15;
  v132 = v11;
  v187 = 0;
  v188 = 0;
  Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::Hash(v189, 0, 16);
  v189[15] = 0;
  v189[14] = 0;
  v18 = (*(*a1 + 464))(a1);
  v207 = 0u;
  v206 = 0u;
  v205 = 0u;
  memset(v204, 0, sizeof(v204));
  memset(v203, 0, sizeof(v203));
  memset(v202, 0, sizeof(v202));
  v185 = 0;
  v186 = 0;
  v183 = 0;
  v184 = 0;
  WordLanguageModel::constructLmIdToWordIdMapping(a1, &v185, &v183);
  v130 = a3;
  v181 = 0;
  v182 = 0;
  v180 = 0u;
  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  LMStats::resetStats(v174);
  v171 = xmmword_262888C00;
  v172 = 1;
  v173 = 1;
  v19 = *(a1 + 104);
  v169 = 0;
  v170 = 0;
  v133 = v16;
  if (!v19)
  {
    v167 = 0;
    v168 = 0;
    goto LABEL_18;
  }

  v167 = 0;
  v20 = realloc_array(0, &v167, 2 * v19, 0, 0, 1);
  v168 = 0;
  v169 = v167;
  v21 = *(a1 + 104);
  HIDWORD(v170) = v20 >> 1;
  LODWORD(v170) = v19;
  v167 = 0;
  if (!v21)
  {
LABEL_18:
    LODWORD(v168) = 0;
    goto LABEL_19;
  }

  v164 = 0;
  v22 = realloc_array(0, &v164, 8 * v21, 0, 0, 1);
  v23 = v164;
  v167 = v164;
  v24 = *(a1 + 104);
  HIDWORD(v168) = v22 >> 3;
  LODWORD(v168) = v21;
  if (v24 >= 2)
  {
    for (i = 1; i < v24; ++i)
    {
      if (*(*(a1 + 168) + 2 * i) == 20000)
      {
        v169[i] = 20000;
        v23[i] = 0;
      }

      else
      {
        LODWORD(v182) = 0;
        (*(*a1 + 472))(a1, &v181, 0, v174, &v171, v18);
        LOBYTE(v164) = 0;
        WordIdWithMapping = WordLanguageModel::getWordIdWithMapping(a1, i, 0, &v185, 0);
        v27 = (*(*a1 + 504))(a1, WordIdWithMapping, 0xFFFFLL, v174, v18, 0, 0, 0, &v164);
        (*(*a1 + 480))(a1, v18);
        v169[i] = v27;
        v28 = 0;
        if (*(a1 + 56) > v27)
        {
          v28 = *(*(a1 + 48) + 8 * v27);
        }

        v23 = v167;
        *(v167 + i) = v28;
        v24 = *(a1 + 104);
      }
    }
  }

LABEL_19:
  BigramData::initNewBigramData(a1 + 360, v198, &v195, &v205, v203);
  v134 = v14;
  v29 = DWORD2(v205);
  if (DWORD2(v205))
  {
    v30 = v169;
    v31 = v167;
    v32 = (v205 + 32);
    do
    {
      v33 = *(v32 - 2);
      v34 = v31[v33];
      *v32 = v30[v33];
      *&v34 = v34;
      *(v32 - 8) = LODWORD(v34);
      *(v32 - 7) = LODWORD(v34);
      v32 += 28;
      --v29;
    }

    while (v29);
  }

  v143 = a1;
  if (*(a1 + 64) > 2u)
  {
    TrigramData::initNewTrigramData(a1 + 744, v194, &v191, &v206, v203, &v167, a7 == 2);
    v35 = DWORD2(v206);
    if (DWORD2(v206))
    {
      v36 = 0;
      v37 = 0;
      do
      {
        LODWORD(v182) = 0;
        (*(*a1 + 472))(a1, &v181, 0, v174, &v171, v18);
        LOBYTE(v164) = 0;
        v38 = WordLanguageModel::getWordIdWithMapping(a1, *(v206 + v36 + 24), 0, &v185, 0);
        v39 = (*(*a1 + 504))(a1, v38, 0xFFFFLL, v174, v18, 0, 0, 0, &v164);
        (*(*a1 + 480))(a1, v18);
        v40 = WordLanguageModel::getWordIdWithMapping(a1, *(v206 + v36 + 24), 1, &v185, &v183);
        v41 = v182;
        if (v182 == HIDWORD(v182))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v181, 1, 1);
          v41 = v182;
        }

        *(v181 + 4 * v41) = v40;
        LODWORD(v182) = v182 + 1;
        (*(*a1 + 472))(a1, &v181, 0, v174, &v171, v18);
        v42 = WordLanguageModel::getWordIdWithMapping(a1, *(v206 + v36 + 28), 0, &v185, 0);
        v43 = (*(*a1 + 504))(a1, v42, 0xFFFFLL, v174, v18, 0, 0, 0, &v164);
        (*(*a1 + 480))(a1, v18);
        v44 = v43 + v39;
        v45 = 0.0;
        if (*(a1 + 56) > (v43 + v39))
        {
          v45 = *(*(a1 + 48) + 8 * v44);
        }

        v46 = v206 + v36;
        *(v46 + 32) = v44;
        *v46 = v45;
        ++v37;
        v35 = DWORD2(v206);
        v36 += 56;
      }

      while (v37 < DWORD2(v206));
    }

    if ((DWORD2(v205) + v35) > HIDWORD(v205))
    {
      DgnArray<DiskNgramContext>::reallocElts(&v205, (DWORD2(v205) + v35 - HIDWORD(v205)), 1);
      v35 = DWORD2(v206);
    }

    if (v35)
    {
      v47 = 0;
      v48 = 0;
      do
      {
        DiskNgramContext::operator=(v205 + 56 * (v48++ + DWORD2(v205)), v206 + v47);
        v35 = DWORD2(v206);
        v47 += 56;
      }

      while (v48 < DWORD2(v206));
    }

    DWORD2(v205) += v35;
    if (v206)
    {
      MemChunkFree(v206, 0);
      *&v206 = 0;
    }

    *(&v206 + 1) = 0;
    if (*(a1 + 64) >= 4u)
    {
      QuadgramData::initNewQuadgramData(a1 + 1232, v190, &v187, &v207, &v167);
      if (DWORD2(v207))
      {
        v49 = 0;
        v50 = 0;
        do
        {
          LODWORD(v182) = 0;
          (*(*a1 + 472))(a1, &v181, 0, v174, &v171, v18);
          LOBYTE(v164) = 0;
          v51 = WordLanguageModel::getWordIdWithMapping(a1, *(v207 + v49 + 24), 0, &v185, 0);
          v52 = (*(*a1 + 504))(a1, v51, 0xFFFFLL, v174, v18, 0, 0, 0, &v164);
          (*(*a1 + 480))(a1, v18);
          v53 = WordLanguageModel::getWordIdWithMapping(a1, *(v207 + v49 + 24), 1, &v185, &v183);
          v54 = v182;
          if (v182 == HIDWORD(v182))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v181, 1, 1);
            v54 = v182;
          }

          *(v181 + 4 * v54) = v53;
          LODWORD(v182) = v182 + 1;
          (*(*a1 + 472))(a1, &v181, 0, v174, &v171, v18);
          v55 = WordLanguageModel::getWordIdWithMapping(a1, *(v207 + v49 + 28), 0, &v185, 0);
          v56 = (*(*a1 + 504))(a1, v55, 0xFFFFLL, v174, v18, 0, 0, 0, &v164);
          (*(*a1 + 480))(a1, v18);
          v57 = v56 + v52;
          v58 = 0.0;
          if (*(a1 + 56) > (v56 + v52))
          {
            v58 = *(*(a1 + 48) + 8 * v57);
          }

          v59 = v207 + v49;
          *(v59 + 32) = v57;
          *v59 = v58;
          ++v50;
          v49 += 56;
        }

        while (v50 < DWORD2(v207));
      }
    }
  }

  DgnDelete<LMContextData>(v18);
  v60 = 0;
  v166 = 0;
  for (j = 2; j != 5; ++j)
  {
    v62 = &v204[16 * j];
    v63 = *(v62 + 2);
    if (v63)
    {
      v64 = (*v62 + 8);
      do
      {
        v65 = *v64;
        v64 += 7;
        v60 += v65;
        --v63;
      }

      while (v63);
      v166 = v60;
    }
  }

  mrec_qsort_r<DiskNgramContextBiTriIsolatedCmp>(v205, DWORD2(v205), 0x38uLL, 0);
  mrec_qsort_r<DiskNgramContextQuadIsolatedCmp>(v207, DWORD2(v207), 0x38uLL, 0);
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = (a6 * v60 / a5);
  for (k = 2; k != 5; ++k)
  {
    v72 = &v204[16 * k];
    v73 = *(v72 + 2);
    if (v73)
    {
      v74 = 0;
      v75 = (*v72 + 8);
      do
      {
        if (!(v66 & 1 | (v69 < v70)))
        {
          v68 = k;
          v67 = v74;
        }

        v66 |= (v66 | (v69 < v70)) ^ 1;
        v76 = *v75;
        v75 += 7;
        v69 += v76;
        ++v74;
      }

      while (v73 != v74);
    }
  }

  if ((v66 & 1) == 0)
  {
    goto LABEL_70;
  }

  if (v68 == 2)
  {
    if (a7 == 2)
    {
      mrec_qsort_r<DiskNgramContextBiTriGroupTrigramsWithBigramsCmp>(v205 + 56 * v67, DWORD2(v205) - v67, 0x38uLL, 0);
    }

    else if (a7 == 1)
    {
      mrec_qsort_r<DiskNgramContextBiTriGroupTrigramsCmp>(v205 + 56 * v67, DWORD2(v205) - v67, 0x38uLL, 0);
    }

    if (a8 != 1)
    {
      goto LABEL_70;
    }

    v77 = v207;
    v78 = DWORD2(v207);
  }

  else
  {
    if (a8 != 1 || v68 != 4)
    {
      goto LABEL_70;
    }

    v77 = v207 + 56 * v67;
    v78 = DWORD2(v207) - v67;
  }

  mrec_qsort_r<DiskNgramContextQuadGroupCmp>(v77, v78, 0x38uLL, 0);
LABEL_70:
  if (v185)
  {
    MemChunkFree(v185, 0);
    v185 = 0;
  }

  v186 = 0;
  if (v183)
  {
    MemChunkFree(v183, 0);
    v183 = 0;
  }

  v184 = 0;
  writeObject(v134, &v166, &v199);
  v164 = 0;
  v165 = 0;
  v162 = 0;
  HIDWORD(v165) = realloc_array(0, &v162, 0xFA0uLL, 0, 0, 1) >> 2;
  v163 = 0;
  v164 = v162;
  v162 = 0;
  v160 = 0;
  HIDWORD(v163) = realloc_array(0, &v160, 0xFA0uLL, 0, 0, 1) >> 2;
  v161 = 0;
  v162 = v160;
  v160 = 0;
  v158 = 0;
  HIDWORD(v161) = realloc_array(0, &v158, 0xFA0uLL, 0, 0, 1) >> 2;
  v159 = 0;
  v160 = v158;
  v158 = 0;
  v156 = 0;
  HIDWORD(v159) = realloc_array(0, &v156, 0xFA0uLL, 0, 0, 1) >> 2;
  v157 = 0;
  v158 = v156;
  v156 = 0;
  v154 = 0;
  HIDWORD(v157) = realloc_array(0, &v154, 0xFA0uLL, 0, 0, 1) >> 2;
  v155 = 0;
  v156 = v154;
  v154 = 0;
  v152 = 0;
  HIDWORD(v155) = realloc_array(0, &v152, 0xFA0uLL, 0, 0, 1) >> 2;
  v153 = 0;
  v154 = v152;
  v152 = 0;
  v150 = 0;
  HIDWORD(v153) = realloc_array(0, &v150, 0xFA0uLL, 0, 0, 1) >> 2;
  v151 = 0;
  v152 = v150;
  v150 = 0;
  v148 = 0;
  v79 = realloc_array(0, &v148, 0x3E80uLL, 0, 0, 1);
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  HIDWORD(v151) = v79 >> 4;
  v149 = 0;
  v150 = v148;
  v89 = 2;
  v148 = 0;
  do
  {
    v135 = v89;
    v147 = &v204[16 * v89];
    if (*(v147 + 2))
    {
      v90 = 0;
      do
      {
        v145 = v88;
        v91 = 1000 * v88;
        while (v91 >= v166 * v165)
        {
          v92 = (*(*v13 + 48))(v13);
          v93 = v165;
          if (v165 == HIDWORD(v165))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v164, 1, 1);
            v93 = v165;
          }

          *(v164 + v93) = v92;
          LODWORD(v165) = v165 + 1;
          v94 = v163;
          if (v163 == HIDWORD(v163))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v162, 1, 1);
            v94 = v163;
          }

          *(v162 + v94) = v87;
          LODWORD(v163) = v163 + 1;
          v95 = v161;
          if (v161 == HIDWORD(v161))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v160, 1, 1);
            v95 = v161;
          }

          *(v160 + v95) = v86;
          LODWORD(v161) = v161 + 1;
          v96 = v159;
          if (v159 == HIDWORD(v159))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v158, 1, 1);
            v96 = v159;
          }

          *(v158 + v96) = v85;
          LODWORD(v159) = v159 + 1;
          v97 = v157;
          if (v157 == HIDWORD(v157))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v156, 1, 1);
            v97 = v157;
          }

          *(v156 + v97) = v84;
          LODWORD(v157) = v157 + 1;
          v98 = v155;
          if (v155 == HIDWORD(v155))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v154, 1, 1);
            v98 = v155;
          }

          *(v154 + v98) = v83;
          LODWORD(v155) = v155 + 1;
          v99 = v153;
          if (v153 == HIDWORD(v153))
          {
            DgnPrimArray<unsigned int>::reallocElts(&v152, 1, 1);
            v99 = v153;
          }

          *(v152 + v99) = v82;
          LODWORD(v153) = v153 + 1;
          v100 = v151;
          if (v151 == HIDWORD(v151))
          {
            DgnArray<DgnPrimArray<double>>::reallocElts(&v150, 1, 1);
            v100 = v151;
          }

          v101 = v150 + 16 * v100;
          *v101 = 0;
          v101[1] = 0;
          DgnPrimArray<int>::copyArraySlice(v101, &v148, 0, v149);
          LODWORD(v151) = v151 + 1;
          LODWORD(v149) = 0;
        }

        v102 = *v147;
        v103 = *v147 + 56 * v90;
        v104 = *(v103 + 8);
        v105 = *(v103 + 34);
        switch(v105)
        {
          case 2:
            v138 = *(v103 + 40);
            v142 = *(v103 + 44);
            v111 = *(v103 + 36);
            if (v111 >> 29)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8344, "lm/wordlm", 86, "%.500s %u", v80, v81, "Bi1Id");
              v102 = *v147;
            }

            BigramData::savePersistentAndFillInNewBigramData((v143 + 90), v13, &v200, v198, &v195, *(v102 + 56 * v90 + 36));
            v87 += v138;
            v86 += v142;
            v108 = v111 | 0x40000000;
            break;
          case 3:
            v137 = *(v103 + 44);
            v141 = *(v103 + 48);
            v109 = *(v103 + 40);
            v110 = v109;
            if (v109 >> 29)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8362, "lm/wordlm", 86, "%.500s %u", v109, v81, "Tri2Index");
              v102 = *v147;
              v110 = *(*v147 + 56 * v90 + 40);
            }

            TrigramData::savePersistentAndFillInNewTrigramData((v143 + 186), v13, &v200, v194, &v191, *(v102 + 56 * v90 + 36), v110);
            v85 += v137;
            v84 += v141;
            v108 = v109 | 0x80000000;
            break;
          case 4:
            v136 = *(v103 + 44);
            v140 = *(v103 + 48);
            v106 = *(v103 + 40);
            v107 = v106;
            if (v106 >> 29)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8381, "lm/wordlm", 86, "%.500s %u", v106, v81, "Quad2Index");
              v102 = *v147;
              v107 = *(*v147 + 56 * v90 + 40);
            }

            QuadgramData::savePersistentAndFillInNewQuadgramData((v143 + 308), v13, &v200, v190, &v187, *(v102 + 56 * v90 + 36), v107);
            v83 += v136;
            v82 += v140;
            v108 = v106 | 0xA0000000;
            break;
          default:
            v108 = 0;
            break;
        }

        v112 = v149;
        if (v149 == HIDWORD(v149))
        {
          DgnPrimArray<unsigned int>::reallocElts(&v148, 1, 1);
          v112 = v149;
        }

        *(v148 + v112) = v108;
        v88 = v104 + v145;
        LODWORD(v149) = v149 + 1;
        ++v90;
      }

      while (v90 < *(v147 + 2));
    }

    v89 = v135 + 1;
  }

  while (v135 != 4);
  v16 = v133;
  if (v165 <= 0x3E8)
  {
    do
    {
      v113 = (*(*v13 + 48))(v13);
      v114 = v165;
      if (v165 == HIDWORD(v165))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v164, 1, 1);
        v114 = v165;
      }

      *(v164 + v114) = v113;
      LODWORD(v165) = v165 + 1;
      v115 = v163;
      if (v163 == HIDWORD(v163))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v162, 1, 1);
        v115 = v163;
      }

      *(v162 + v115) = v87;
      LODWORD(v163) = v163 + 1;
      v116 = v161;
      if (v161 == HIDWORD(v161))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v160, 1, 1);
        v116 = v161;
      }

      *(v160 + v116) = v86;
      LODWORD(v161) = v161 + 1;
      v117 = v159;
      if (v159 == HIDWORD(v159))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v158, 1, 1);
        v117 = v159;
      }

      *(v158 + v117) = v85;
      LODWORD(v159) = v159 + 1;
      v118 = v157;
      if (v157 == HIDWORD(v157))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v156, 1, 1);
        v118 = v157;
      }

      *(v156 + v118) = v84;
      LODWORD(v157) = v157 + 1;
      v119 = v155;
      if (v155 == HIDWORD(v155))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v154, 1, 1);
        v119 = v155;
      }

      *(v154 + v119) = v83;
      LODWORD(v155) = v155 + 1;
      v120 = v153;
      if (v153 == HIDWORD(v153))
      {
        DgnPrimArray<unsigned int>::reallocElts(&v152, 1, 1);
        v120 = v153;
      }

      *(v152 + v120) = v82;
      LODWORD(v153) = v153 + 1;
      v121 = v151;
      if (v151 == HIDWORD(v151))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v150, 1, 1);
        v121 = v151;
      }

      v122 = v150 + 16 * v121;
      *v122 = 0;
      v122[1] = 0;
      DgnPrimArray<int>::copyArraySlice(v122, &v148, 0, v149);
      LODWORD(v151) = v151 + 1;
      LODWORD(v149) = 0;
    }

    while (v165 < 0x3E9);
  }

  v15 = v131;
  v11 = v132;
  a1 = v143;
  v14 = v134;
  v17 = (*(*v13 + 48))(v13);
  v201 = v165;
  writeObject(v13, &v201, &v200);
  writeObjectArray(v13, v164, v165, &v200);
  v201 = v163;
  writeObject(v13, &v201, &v200);
  writeObjectArray(v13, v162, v163, &v200);
  v201 = v161;
  writeObject(v13, &v201, &v200);
  writeObjectArray(v13, v160, v161, &v200);
  v201 = v159;
  writeObject(v13, &v201, &v200);
  writeObjectArray(v13, v158, v159, &v200);
  v201 = v157;
  writeObject(v13, &v201, &v200);
  writeObjectArray(v13, v156, v157, &v200);
  v201 = v155;
  writeObject(v13, &v201, &v200);
  writeObjectArray(v13, v154, v155, &v200);
  v201 = v153;
  writeObject(v13, &v201, &v200);
  writeObjectArray(v13, v152, v153, &v200);
  if (v151)
  {
    v123 = 0;
    v124 = 0;
    do
    {
      writeObject<unsigned int>(v13, v150 + v123, &v200);
      ++v124;
      v123 += 16;
    }

    while (v124 < v151);
  }

  BigramData::saveBinary(v198, v134, &v199);
  if (v143[16] >= 3u)
  {
    TrigramData::saveBinary(v194, v134, &v199);
    if (v143[16] >= 4u)
    {
      QuadgramData::saveBinary(v190, v134, &v199);
    }
  }

  DgnPrimArray<unsigned int>::~DgnPrimArray(&v148);
  DgnArray<DgnPrimArray<unsigned char>>::releaseAll(&v150);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v152);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v154);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v156);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v158);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v162);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v164);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v167);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v169);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v181);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v183);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v185);
  for (m = 64; m != -16; m -= 16)
  {
    DgnIArray<Utterance *>::~DgnIArray(&v202[m]);
  }

  for (n = 64; n != -16; n -= 16)
  {
    DgnIArray<Utterance *>::~DgnIArray(&v204[n]);
  }

  HuffmanEncoder<unsigned short,unsigned int>::~HuffmanEncoder(&v187);
  QuadgramData::~QuadgramData(v190);
  HuffmanEncoder<unsigned short,unsigned int>::~HuffmanEncoder(&v191);
  TrigramData::~TrigramData(v194);
  HuffmanEncoder<unsigned short,unsigned int>::~HuffmanEncoder(&v195);
  BigramData::~BigramData(v198);
  a3 = v130;
LABEL_142:
  writeObjectChecksum(v13, &v200);
  (*(*v13 + 24))(v13, v15);
  LODWORD(v190[0]) = v200;
  (*(*v13 + 80))(v13, v190, 4);
  LODWORD(v190[0]) = v199;
  (*(*v13 + 80))(v13, v190, 4);
  LODWORD(v190[0]) = v17;
  (*(*v13 + 80))(v13, v190, 4);
  writeObjectChecksum(v14, &v199);
  (*(*v14 + 24))(v14, v16);
  LODWORD(v190[0]) = v200;
  (*(*v14 + 80))(v14, v190, 4);
  LODWORD(v190[0]) = v199;
  (*(*v14 + 80))(v14, v190, 4);
  LODWORD(v190[0]) = v17;
  (*(*v14 + 80))(v14, v190, 4);
  (**v13)(v13);
  MemChunkFree(v13, 0);
  (**v14)(v14);
  MemChunkFree(v14, 0);
  *(a1 + 264) = v200;
  *(a1 + 268) = v199;
  CurrentSubDirComponents = DFile::getCurrentSubDirComponents(v11);
  DFileChecksums::addChecksum(a3, CurrentSubDirComponents, 0x72u, v200);
  v128 = DFile::getCurrentSubDirComponents(v11);
  DFileChecksums::addChecksum(a3, v128, 0x71u, v199);
  v129 = *MEMORY[0x277D85DE8];
}

void sub_26279BFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a43);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a68);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a70);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a72);
  for (i = 64; i != -16; i -= 16)
  {
    DgnIArray<Utterance *>::~DgnIArray(&STACK[0x950] + i);
  }

  for (j = 64; j != -16; j -= 16)
  {
    DgnIArray<Utterance *>::~DgnIArray(v72 - 192 + j);
  }

  HuffmanEncoder<unsigned short,unsigned int>::~HuffmanEncoder(&STACK[0x208]);
  QuadgramData::~QuadgramData(&STACK[0x290]);
  HuffmanEncoder<unsigned short,unsigned int>::~HuffmanEncoder(&STACK[0x4C8]);
  TrigramData::~TrigramData(&STACK[0x550]);
  HuffmanEncoder<unsigned short,unsigned int>::~HuffmanEncoder(&STACK[0x738]);
  BigramData::~BigramData(&STACK[0x7C0]);
  _Unwind_Resume(a1);
}

BOOL SubDirExtension::isString(SubDirExtension *this, const char **a2)
{
  DgnString::DgnString(&v8);
  SubDirExtension::appendToString(this, &v8);
  if (v9)
  {
    v4 = v8;
  }

  else
  {
    v4 = &unk_26288CFB0;
  }

  if (*(a2 + 2))
  {
    v5 = *a2;
  }

  else
  {
    v5 = &unk_26288CFB0;
  }

  v6 = strcmp(v4, v5) == 0;
  DgnString::~DgnString(&v8);
  return v6;
}

uint64_t WordLanguageModel::loadUnigramMembersBinary(WordLanguageModel *this, DgnStream *a2, unsigned int *a3, int a4, unint64_t *a5)
{
  v10 = (this + 32);
  v11 = *(this + 8);
  v18[0] = 0;
  v18[1] = 0;
  DgnString::DgnString(v17);
  v16 = 0;
  v15 = 0;
  readObject(a2, v10, a3);
  readObject(a2, this + 26, a3);
  if (a4)
  {
    readObject(a2, &v15, a3);
  }

  readObject(a2, this + 28, a3);
  readObject(a2, this + 29, a3);
  if (a4)
  {
    readObject(a2, a5, a3);
    readObject(a2, &v16, a3);
    readObject<unsigned int>(a2, v18, a3);
    readObject(a2, v17, a3);
  }

  readObject<unsigned int>(a2, this + 120, a3);
  readObject<unsigned short>(a2, this + 136, a3);
  readObject<unsigned char>(a2, this + 152, a3);
  readObject<unsigned short>(a2, this + 168, a3);
  if (*v10 != v11)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 5130, "lm/wordlm", 34, "%u %u", v12, v13, *v10);
  }

  BitArray::~BitArray(v17);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
}

void sub_26279C3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t WordLanguageModel::saveUnigramMembersBinary(WordLanguageModel *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this + 8, a3);
  writeObject(a2, this + 26, a3);
  writeObject(a2, this + 28, a3);
  writeObject(a2, this + 29, a3);
  writeObject<unsigned int>(a2, this + 120, a3);
  writeObject<unsigned short>(a2, this + 136, a3);
  writeObject<unsigned char>(a2, this + 152, a3);

  return writeObject<unsigned short>(a2, this + 168, a3);
}

void WordLanguageModel::loadBigramMembersBinary(WordLanguageModel *this, DgnStream *a2, unsigned int *a3, int a4, unint64_t *a5)
{
  v11 = 0;
  v10 = 0.0;
  readObject(a2, this + 66, a3);
  readObject(a2, this + 67, a3);
  if (a4)
  {
    readObject(a2, a5, a3);
    readObject(a2, &v11, a3);
    readObject(a2, this + 68, a3);
    readObject(a2, &v10, a3);
  }

  else
  {
    readObject(a2, this + 68, a3);
  }

  readObject(a2, this + 276, a3);
  readObject<unsigned int>(a2, this + 280, a3);
  readObject<unsigned short>(a2, this + 296, a3);
  readObject<unsigned char>(a2, this + 312, a3);
  readObject<unsigned short>(a2, this + 328, a3);
  readObject<short>(a2, this + 344, a3);
}

void WordLanguageModel::verifyBoWtForBiSc(WordLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 140);
  if (v8 >= 2)
  {
    for (i = 1; i < v8; ++i)
    {
      if (*(*(this + 69) + 2 * i) && (i >= *(this + 88) || *(*(this + 43) + 2 * i) == 20000))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6805, "lm/wordlm", 42, "%u", a7, a8, i);
        v8 = *(this + 140);
      }
    }
  }
}

void WordLanguageModel::throwOnBadBoWt(WordLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(this + 88);
  if (v8 >= 2)
  {
    for (i = 1; i < v8; ++i)
    {
      if (*(*(this + 43) + 2 * i))
      {
        v11 = *(*(this + 43) + 2 * i) == 20000;
      }

      else
      {
        v11 = 1;
      }

      if (!v11 && (i >= *(this + 140) || !*(*(this + 69) + 2 * i)))
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6819, "lm/wordlm", 87, "%u %d", a7, a8, i);
        v8 = *(this + 88);
      }
    }
  }
}

void WordLanguageModel::verifyUniScForBiSc(WordLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 140) >= 2u)
  {
    v9 = *(this + 69);
    v10 = 1;
    do
    {
      if (*(v9 + 2 * v10))
      {
        if (*(*(this + 21) + 2 * v10) == 20000)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6831, "lm/wordlm", 89, "%u", a7, a8, v10);
        }

        v9 = *(this + 69);
        v11 = *(v9 + 2 * v10);
        if ((*(*(this + 48) + 4 * (v10 >> 5)) >> v10))
        {
          if (*(v9 + 2 * v10))
          {
            v12 = 1;
            v13 = 1;
            do
            {
              v14 = (v12 + *(*(this + 67) + 4 * v10) - 1);
              if (*(this + 94))
              {
                v14 = *(*(this + 73) + v14);
                v15 = *(this + 46);
              }

              else
              {
                v15 = *(this + 71);
              }

              if (*(v15 + 2 * v14) != 20000 && *(*(this + 21) + 2 * v13) == 20000)
              {
                errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6842, "lm/wordlm", 89, "%u", a7, a8, v12);
                v9 = *(this + 69);
              }

              v12 = ++v13;
            }

            while (v13 <= *(v9 + 2 * v10));
          }
        }

        else if (*(v9 + 2 * v10))
        {
          v16 = 0;
          do
          {
            SearchSuccIdForIndex = BigramData::getSearchSuccIdForIndex((this + 360), v10, v16);
            if (BigramData::getSearchScoreForIndex((this + 360), v10, v16) != 20000 && *(*(this + 21) + 2 * SearchSuccIdForIndex) == 20000)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6857, "lm/wordlm", 89, "%u", a7, a8, SearchSuccIdForIndex);
            }

            ++v16;
            v9 = *(this + 69);
          }

          while (v16 < *(v9 + 2 * v10));
        }
      }

      ++v10;
    }

    while (v10 < *(this + 140));
  }
}

uint64_t WordLanguageModel::throwOnBadTriBoWt(WordLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = 0;
  v24[1] = 0;
  v23[0] = 0;
  v23[1] = 0;
  v22[0] = 0;
  v22[1] = 0;
  v8 = *(this + 200);
  if (v8 < 2)
  {
    goto LABEL_22;
  }

  for (i = 1; i < v8; ++i)
  {
    v11 = *(this + 99);
    v12 = *(v11 + 2 * i);
    if (!*(v11 + 2 * i))
    {
      continue;
    }

    v13 = 0;
    do
    {
      v14 = (*(*(this + 101) + 4 * i) + v13);
      v15 = *(*(this + 103) + 2 * v14);
      if (((*(*(this + 109) + 4 * (v14 >> 5)) >> v14) & 1) == 0)
      {
        if (*(*(this + 130) + 2 * v14))
        {
          goto LABEL_19;
        }

LABEL_15:
        if (*(this + 192))
        {
          v14 = *(*(this + 107) + v14);
          v19 = *(this + 95);
        }

        else
        {
          v19 = *(this + 105);
        }

        v21 = *(v19 + 2 * v14);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6909, "lm/wordlm", 88, "%u %u %d", a7, a8, i);
        goto LABEL_19;
      }

      if (!*(*(this + 130) + 2 * v14))
      {
        goto LABEL_15;
      }

      v16 = 1;
      while (1)
      {
        v17 = *(*(this + 128) + 4 * v14) + v16 - 1;
        if (*(this + 196))
        {
          v17 = *(*(this + 134) + v17);
          v18 = *(this + 97);
        }

        else
        {
          v18 = *(this + 132);
        }

        if (*(v18 + 2 * v17) != 20000)
        {
          break;
        }

        if (*(*(this + 130) + 2 * v14) < ++v16)
        {
          goto LABEL_15;
        }
      }

LABEL_19:
      ++v13;
    }

    while (v13 != v12);
    v8 = *(this + 200);
  }

LABEL_22:
  DgnPrimArray<unsigned int>::~DgnPrimArray(v22);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v23);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(v24);
}

void sub_26279CAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

void WordLanguageModel::verifyUniScForTriSc(WordLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 200) >= 2u)
  {
    v9 = 1;
    do
    {
      v19 = *(*(this + 99) + 2 * v9);
      if (*(*(this + 99) + 2 * v9))
      {
        if (*(*(this + 21) + 2 * v9) != 20000 || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6923, "lm/wordlm", 89, "%u", a7, a8, v9), v19 = *(*(this + 99) + 2 * v9), *(*(this + 99) + 2 * v9)))
        {
          v10 = 0;
          do
          {
            v11 = (*(*(this + 101) + 4 * v9) + v10);
            if (*(*(this + 21) + 2 * *(*(this + 103) + 2 * v11)) == 20000)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6935, "lm/wordlm", 89, "%u", a7, a8, *(*(this + 103) + 2 * v11));
            }

            v12 = *(*(this + 130) + 2 * v11);
            if ((*(*(this + 109) + 4 * (v11 >> 5)) >> v11))
            {
              if (*(*(this + 130) + 2 * v11))
              {
                v13 = 1;
                v14 = 1;
                do
                {
                  v15 = (v13 + *(*(this + 128) + 4 * v11) - 1);
                  if (*(this + 196))
                  {
                    v15 = *(*(this + 134) + v15);
                    v16 = *(this + 97);
                  }

                  else
                  {
                    v16 = *(this + 132);
                  }

                  if (*(v16 + 2 * v15) != 20000 && *(*(this + 21) + 2 * v14) == 20000)
                  {
                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6950, "lm/wordlm", 89, "%u", a7, a8, v13);
                  }

                  v13 = ++v14;
                }

                while (v14 <= v12);
              }
            }

            else if (*(*(this + 130) + 2 * v11))
            {
              v17 = 0;
              do
              {
                SearchSuccIdForIndex = TrigramData::getSearchSuccIdForIndex((this + 744), v11, v17);
                if (*(*(this + 21) + 2 * SearchSuccIdForIndex) == 20000)
                {
                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6964, "lm/wordlm", 89, "%u", a7, a8, SearchSuccIdForIndex);
                }

                ++v17;
              }

              while (v12 != v17);
            }

            ++v10;
          }

          while (v10 != v19);
        }
      }

      ++v9;
    }

    while (v9 < *(this + 200));
  }
}

void WordLanguageModel::verifyUniScForQuadSc(WordLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 322) >= 2u)
  {
    v9 = (this + 1232);
    v10 = 1;
    do
    {
      v26 = *(*(this + 160) + 2 * v10);
      if (*(*(this + 160) + 2 * v10))
      {
        if (*(*(this + 21) + 2 * v10) != 20000 || (errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6980, "lm/wordlm", 89, "%u", a7, a8, v10), v26 = *(*(this + 160) + 2 * v10), *(*(this + 160) + 2 * v10)))
        {
          v11 = 0;
          v25 = v10;
          do
          {
            v27 = v11;
            v12 = (*(*(this + 162) + 4 * v10) + v11);
            if (*(*(this + 21) + 2 * *(*(this + 164) + 2 * v12)) == 20000)
            {
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6991, "lm/wordlm", 89, "%u", a7, a8, *(*(this + 164) + 2 * v12));
            }

            v28 = *(*(this + 166) + 2 * v12);
            if (*(*(this + 166) + 2 * v12))
            {
              v13 = 0;
              v30 = v12 >> 5;
              v29 = 1 << v12;
              do
              {
                v14 = *(*(this + 185) + 4 * v12);
                v15 = *(this + 308);
                if (v15 && (*(*(this + 168) + 4 * v30) & v29) != 0)
                {
                  v16 = *(*(this + 207) + 4 * v14);
                  v17 = 440;
                }

                else
                {
                  v17 = 264;
                  v16 = *(*(this + 185) + 4 * v12);
                }

                v18 = *(*(v9 + v17) + 2 * (v16 + v13));
                if (*(*(this + 21) + 2 * v18) == 20000)
                {
                  errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 6999, "lm/wordlm", 89, "%u", a7, a8, v18);
                  v14 = *(*(this + 185) + 4 * v12);
                  v15 = *(this + 308);
                }

                if (v15 && (*(*(this + 168) + 4 * v30) & v29) != 0)
                {
                  v14 = *(*(this + 207) + 4 * v14);
                  v19 = 504;
                }

                else
                {
                  v19 = 280;
                }

                v20 = v14 + v13;
                v21 = *(v9 + v19);
                v22 = *(v21 + 2 * v20);
                if (*(v21 + 2 * v20))
                {
                  v23 = 0;
                  do
                  {
                    if (QuadgramData::getScoreForIndex(v9, v12, v13, v23) != 20000)
                    {
                      Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex(v9, v12, v13, v23);
                      if (*(*(this + 21) + 2 * Quad3SuccIdForIndex) == 20000)
                      {
                        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 7015, "lm/wordlm", 89, "%u", a7, a8, Quad3SuccIdForIndex);
                      }
                    }

                    ++v23;
                  }

                  while (v22 != v23);
                }

                ++v13;
              }

              while (v13 != v28);
            }

            v11 = v27 + 1;
            v10 = v25;
          }

          while (v27 + 1 != v26);
        }
      }

      ++v10;
    }

    while (v10 < *(this + 322));
  }
}

void WordLanguageModel::maybeRepairOutOfRangeWordIdsOrThrow(WordLanguageModel *this, int a2, int a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4 != 0xFFFFFF && a5 != 0xFFFFFF)
  {
    v10 = *(*(this + 2) + 388);
    if (v10)
    {
      v13 = 0;
      v14 = a5;
      v15 = a4;
      while (1)
      {
        v16 = *(this + 2);
        if (v13 >= *(v16 + 388) || !*(*(v16 + 104) + v13))
        {
          goto LABEL_16;
        }

        v17 = v13 < v15 || v13 > v14;
        v18 = v17;
        if (v18 != a3)
        {
          goto LABEL_16;
        }

        if (a2)
        {
          WordLanguageModel::recordWordIdInvalidLmIdUsage(this, v13);
          if (*(this + 276) == 1)
          {
            WordLanguageModel::recordWordIdInvalidContextLmIdUsage(this, v13);
          }

          goto LABEL_16;
        }

        if (*(this + 32))
        {
          break;
        }

        if (*(this + 36))
        {
          v19 = *(*(this + 17) + 2 * v13);
LABEL_25:
          if (v19 == -1)
          {
            goto LABEL_27;
          }

LABEL_26:
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 10027, "lm/wordlm", 90, "%u", a7, a8, v13);
          goto LABEL_27;
        }

        if (*(*(this + 19) + v13) != 255)
        {
          goto LABEL_26;
        }

LABEL_27:
        if (*(this + 276) == 1)
        {
          if (*(this + 72))
          {
            v20 = *(*(this + 35) + 4 * v13);
          }

          else
          {
            if (!*(this + 76))
            {
              if (*(*(this + 39) + v13) == 255)
              {
                goto LABEL_16;
              }

LABEL_33:
              errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 10034, "lm/wordlm", 90, "%u", a7, a8, v13);
              goto LABEL_16;
            }

            v20 = *(*(this + 37) + 2 * v13);
          }

          if (v20 != -1)
          {
            goto LABEL_33;
          }
        }

LABEL_16:
        if (v10 == ++v13)
        {
          return;
        }
      }

      v19 = *(*(this + 15) + 4 * v13);
      goto LABEL_25;
    }
  }
}

uint64_t WordLanguageModel::saveBigramMembersBinary(WordLanguageModel *this, DgnStream *a2, unsigned int *a3)
{
  writeObject(a2, this + 66, a3);
  writeObject(a2, this + 67, a3);
  writeObject(a2, this + 68, a3);
  writeObject(a2, this + 276, a3);
  writeObject<unsigned int>(a2, this + 280, a3);
  writeObject<unsigned short>(a2, this + 296, a3);
  writeObject<unsigned char>(a2, this + 312, a3);
  writeObject<unsigned short>(a2, this + 328, a3);

  return writeObject<short>(a2, this + 344, a3);
}

uint64_t WordLanguageModel::recordWordIdLmIdUsage(WordLanguageModel *this, unsigned int a2, int a3)
{
  if (!*(this + 32) && !*(this + 36) && !*(this + 40))
  {
    if (*(this + 41))
    {
      v6 = 0;
    }

    else
    {
      DgnPrimArray<char>::reallocElts(this + 152, 1, 1);
      v6 = *(this + 40);
    }

    *(*(this + 19) + v6) = -1;
    ++*(this + 40);
  }

  result = WordLanguageModel::maybeUncompactWordIdToLmIdArray(this, a3);
  v8 = *(this + 32);
  if (v8)
  {
    if (v8 <= a2)
    {
      do
      {
        if (v8 == *(this + 33))
        {
          result = DgnPrimArray<unsigned int>::reallocElts(this + 120, 1, 1);
          v8 = *(this + 32);
        }

        v9 = *(this + 15);
        *(v9 + 4 * v8) = -1;
        v8 = *(this + 32) + 1;
        *(this + 32) = v8;
      }

      while (v8 <= a2);
    }

    else
    {
      v9 = *(this + 15);
    }

    *(v9 + 4 * a2) = a3;
  }

  else
  {
    v10 = *(this + 36);
    if (v10)
    {
      if (v10 <= a2)
      {
        do
        {
          if (v10 == *(this + 37))
          {
            result = DgnPrimArray<short>::reallocElts(this + 136, 1, 1);
            v10 = *(this + 36);
          }

          v11 = *(this + 17);
          *(v11 + 2 * v10++) = -1;
          *(this + 36) = v10;
        }

        while (v10 <= a2);
      }

      else
      {
        v11 = *(this + 17);
      }

      *(v11 + 2 * a2) = a3;
    }

    else
    {
      for (i = *(this + 40); i <= a2; *(this + 40) = i)
      {
        if (i == *(this + 41))
        {
          result = DgnPrimArray<char>::reallocElts(this + 152, 1, 1);
          i = *(this + 40);
        }

        *(*(this + 19) + i) = -1;
        i = *(this + 40) + 1;
      }

      *(*(this + 19) + a2) = a3;
    }
  }

  return result;
}

uint64_t WordLanguageModel::recordWordIdContextLmIdUsage(WordLanguageModel *this, unsigned int a2, int a3)
{
  if (!*(this + 72) && !*(this + 76) && !*(this + 80))
  {
    if (*(this + 81))
    {
      v6 = 0;
    }

    else
    {
      DgnPrimArray<char>::reallocElts(this + 312, 1, 1);
      v6 = *(this + 80);
    }

    *(*(this + 39) + v6) = -1;
    ++*(this + 80);
  }

  result = WordLanguageModel::maybeUncompactWordIdToContextLmIdArray(this, a3);
  v8 = *(this + 72);
  if (v8)
  {
    if (v8 <= a2)
    {
      do
      {
        if (v8 == *(this + 73))
        {
          result = DgnPrimArray<unsigned int>::reallocElts(this + 280, 1, 1);
          v8 = *(this + 72);
        }

        v9 = *(this + 35);
        *(v9 + 4 * v8) = -1;
        v8 = *(this + 72) + 1;
        *(this + 72) = v8;
      }

      while (v8 <= a2);
    }

    else
    {
      v9 = *(this + 35);
    }

    *(v9 + 4 * a2) = a3;
  }

  else
  {
    v10 = *(this + 76);
    if (v10)
    {
      if (v10 <= a2)
      {
        do
        {
          if (v10 == *(this + 77))
          {
            result = DgnPrimArray<short>::reallocElts(this + 296, 1, 1);
            v10 = *(this + 76);
          }

          v11 = *(this + 37);
          *(v11 + 2 * v10++) = -1;
          *(this + 76) = v10;
        }

        while (v10 <= a2);
      }

      else
      {
        v11 = *(this + 37);
      }

      *(v11 + 2 * a2) = a3;
    }

    else
    {
      for (i = *(this + 80); i <= a2; *(this + 80) = i)
      {
        if (i == *(this + 81))
        {
          result = DgnPrimArray<char>::reallocElts(this + 312, 1, 1);
          i = *(this + 80);
        }

        *(*(this + 39) + i) = -1;
        i = *(this + 80) + 1;
      }

      *(*(this + 39) + a2) = a3;
    }
  }

  return result;
}

_DWORD *WordLanguageModel::recordWordIdInvalidLmIdUsage(_DWORD *this, unsigned int a2)
{
  v3 = this;
  v4 = this[32];
  if (v4)
  {
LABEL_2:
    if (v4 <= a2)
    {
      do
      {
        if (v4 == *(v3 + 132))
        {
          this = DgnPrimArray<unsigned int>::reallocElts(v3 + 120, 1, 1);
          v4 = *(v3 + 128);
        }

        v5 = *(v3 + 120);
        *(v5 + 4 * v4) = -1;
        v4 = *(v3 + 128) + 1;
        *(v3 + 128) = v4;
      }

      while (v4 <= a2);
    }

    else
    {
      v5 = *(v3 + 120);
    }

    *(v5 + 4 * a2) = -1;
    return this;
  }

  v6 = this[36];
  if (v6)
  {
    goto LABEL_7;
  }

  if (!this[40])
  {
    if (this[41])
    {
      v8 = 0;
    }

    else
    {
      this = DgnPrimArray<char>::reallocElts((this + 38), 1, 1);
      v8 = *(v3 + 160);
    }

    *(*(v3 + 152) + v8) = -1;
    ++*(v3 + 160);
    v4 = *(v3 + 128);
    if (v4)
    {
      goto LABEL_2;
    }
  }

  v6 = *(v3 + 144);
  if (v6)
  {
LABEL_7:
    if (v6 <= a2)
    {
      do
      {
        if (v6 == *(v3 + 148))
        {
          this = DgnPrimArray<short>::reallocElts(v3 + 136, 1, 1);
          v6 = *(v3 + 144);
        }

        v7 = *(v3 + 136);
        *(v7 + 2 * v6++) = -1;
        *(v3 + 144) = v6;
      }

      while (v6 <= a2);
    }

    else
    {
      v7 = *(v3 + 136);
    }

    *(v7 + 2 * a2) = -1;
  }

  else
  {
    for (i = *(v3 + 160); i <= a2; *(v3 + 160) = i)
    {
      if (i == *(v3 + 164))
      {
        this = DgnPrimArray<char>::reallocElts(v3 + 152, 1, 1);
        i = *(v3 + 160);
      }

      *(*(v3 + 152) + i) = -1;
      i = *(v3 + 160) + 1;
    }

    *(*(v3 + 152) + a2) = -1;
  }

  return this;
}

_DWORD *WordLanguageModel::recordWordIdInvalidContextLmIdUsage(_DWORD *this, unsigned int a2)
{
  v3 = this;
  v4 = this[72];
  if (v4)
  {
LABEL_2:
    if (v4 <= a2)
    {
      do
      {
        if (v4 == *(v3 + 292))
        {
          this = DgnPrimArray<unsigned int>::reallocElts(v3 + 280, 1, 1);
          v4 = *(v3 + 288);
        }

        v5 = *(v3 + 280);
        *(v5 + 4 * v4) = -1;
        v4 = *(v3 + 288) + 1;
        *(v3 + 288) = v4;
      }

      while (v4 <= a2);
    }

    else
    {
      v5 = *(v3 + 280);
    }

    *(v5 + 4 * a2) = -1;
    return this;
  }

  v6 = this[76];
  if (v6)
  {
    goto LABEL_7;
  }

  if (!this[80])
  {
    if (this[81])
    {
      v8 = 0;
    }

    else
    {
      this = DgnPrimArray<char>::reallocElts((this + 78), 1, 1);
      v8 = *(v3 + 320);
    }

    *(*(v3 + 312) + v8) = -1;
    ++*(v3 + 320);
    v4 = *(v3 + 288);
    if (v4)
    {
      goto LABEL_2;
    }
  }

  v6 = *(v3 + 304);
  if (v6)
  {
LABEL_7:
    if (v6 <= a2)
    {
      do
      {
        if (v6 == *(v3 + 308))
        {
          this = DgnPrimArray<short>::reallocElts(v3 + 296, 1, 1);
          v6 = *(v3 + 304);
        }

        v7 = *(v3 + 296);
        *(v7 + 2 * v6++) = -1;
        *(v3 + 304) = v6;
      }

      while (v6 <= a2);
    }

    else
    {
      v7 = *(v3 + 296);
    }

    *(v7 + 2 * a2) = -1;
  }

  else
  {
    for (i = *(v3 + 320); i <= a2; *(v3 + 320) = i)
    {
      if (i == *(v3 + 324))
      {
        this = DgnPrimArray<char>::reallocElts(v3 + 312, 1, 1);
        i = *(v3 + 320);
      }

      *(*(v3 + 312) + i) = -1;
      i = *(v3 + 320) + 1;
    }

    *(*(v3 + 312) + a2) = -1;
  }

  return this;
}

unint64_t WordLanguageModel::constructLmIdToWordIdMapping(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 104);
  v7 = *(a2 + 12);
  v8 = v6;
  if (v6 > v7)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(a2, v6 - v7, 0);
    v8 = *(v5 + 104);
  }

  *(a2 + 8) = v6;
  if (*(v5 + 276) == 1)
  {
    v9 = *(a3 + 12);
    v10 = v8;
    if (v8 > v9)
    {
      result = DgnPrimArray<unsigned int>::reallocElts(a3, v8 - v9, 0);
      v10 = *(v5 + 104);
    }

    *(a3 + 8) = v8;
    v8 = v10;
  }

  if (v8)
  {
    v11 = 0;
    v12 = *a2;
    v13 = *(v5 + 276);
    do
    {
      *(v12 + 4 * v11) = 0xFFFFFF;
      if (v13)
      {
        *(*a3 + 4 * v11) = 0xFFFFFF;
      }

      ++v11;
    }

    while (v11 < *(v5 + 104));
  }

  v14 = *(v5 + 128);
  if (v14 || (v14 = *(v5 + 144)) != 0 || (v14 = *(v5 + 160)) != 0)
  {
    v15 = 0;
    v16 = *(v5 + 16);
    do
    {
      if (v15 < *(v16 + 388) && *(*(v16 + 104) + v15) && v15 == *(*(v16 + 256) + 4 * v15))
      {
        if (*(v5 + 128))
        {
          v17 = *(*(v5 + 120) + 4 * v15);
        }

        else
        {
          if (*(v5 + 144))
          {
            v17 = *(*(v5 + 136) + 2 * v15);
            v18 = v17 == 0xFFFF;
          }

          else
          {
            v17 = *(*(v5 + 152) + v15);
            v18 = v17 == 255;
          }

          if (v18)
          {
            v17 = -1;
          }
        }

        if (v17 < *(v5 + 104) && *(*a2 + 4 * v17) == 0xFFFFFF)
        {
          *(*a2 + 4 * v17) = v15;
        }

        if (*(v5 + 276) == 1)
        {
          if (*(v5 + 288))
          {
            v19 = *(*(v5 + 280) + 4 * v15);
          }

          else
          {
            if (*(v5 + 304))
            {
              v19 = *(*(v5 + 296) + 2 * v15);
              v20 = v19 == 0xFFFF;
            }

            else
            {
              v19 = *(*(v5 + 312) + v15);
              v20 = v19 == 255;
            }

            if (v20)
            {
              v19 = -1;
            }
          }

          if (v19 < *(v5 + 104) && *(*a3 + 4 * v19) == 0xFFFFFF)
          {
            *(*a3 + 4 * v19) = v15;
          }
        }
      }

      ++v15;
    }

    while (v14 != v15);
  }

  v21 = *(v5 + 112);
  if (v21 != -1 && *(*a2 + 4 * v21) == 0xFFFFFF)
  {
    *(*a2 + 4 * v21) = 16777214;
    if (*(v5 + 276) == 1)
    {
      *(*a3 + 4 * *(v5 + 112)) = 16777214;
    }
  }

  v22 = *(v5 + 116);
  if (v22 != -1 && *(*a2 + 4 * v22) == 0xFFFFFF)
  {
    *(*a2 + 4 * v22) = 16777213;
    if (*(v5 + 276) == 1)
    {
      *(*a3 + 4 * *(v5 + 116)) = 16777213;
    }
  }

  return result;
}

uint64_t WordLanguageModel::getWordIdWithMapping(uint64_t a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 == -1)
  {
    return 0xFFFFFFLL;
  }

  if (a2 == -2)
  {
    return 16777212;
  }

  if (a3 && *(a1 + 276) == 1)
  {
    if (*(a5 + 8) > a2)
    {
      return *(*a5 + 4 * a2);
    }

    a3 = 1;
  }

  else if (*(a4 + 8) > a2)
  {
    v5 = *(*a4 + 4 * a2);
    if (v5 == 16777214 && (a3 & 1) == 0)
    {
      if (*(a1 + 112) == *(a1 + 116))
      {
        return 16777213;
      }

      else
      {
        return 16777214;
      }
    }

    return v5;
  }

  return WordLanguageModel::getWordId(a1, a2, a3);
}

uint64_t mrec_qsort_r<DiskNgramContextBiTriIsolatedCmp>(uint64_t result, unint64_t a2, unint64_t a3, const void *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v107 = a3 != 8;
  v108 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v109 = v8;
  if (a2 < 7)
  {
LABEL_118:
    if ((v5 * a3) > a3)
    {
      v79 = &v6[v5 * a3];
      v80 = &v6[a3];
      v81 = v6;
      do
      {
        if (v80 > v6)
        {
          v82 = v81;
          v83 = v80;
          do
          {
            v84 = v83;
            v83 = (v83 + v7);
            result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v83, v84, a4);
            if (result < 1)
            {
              break;
            }

            if (v109)
            {
              if (v108)
              {
                v85 = 0;
                v86 = v83;
                do
                {
                  v87 = v84[v85];
                  v84[v85] = *v86;
                  *v86++ = v87;
                  ++v85;
                }

                while (a3 >> 3 != v85);
              }

              else
              {
                v89 = 0;
                v90 = a3;
                do
                {
                  v91 = *(v84 + v89);
                  *(v84 + v89) = *(v82 + v89);
                  *(v82 + v89++) = v91;
                  --v90;
                }

                while (v90);
              }
            }

            else
            {
              v88 = *v84;
              *v84 = *v83;
              *v83 = v88;
            }

            v82 = (v82 + v7);
          }

          while (v83 > v6);
        }

        v80 += a3;
        v81 = (v81 + a3);
      }

      while (v80 < v79);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = &v6[(v5 >> 1) * a3];
    if (v5 == 7)
    {
      goto LABEL_45;
    }

    v11 = &v6[(v5 - 1) * a3];
    if (v5 >= 0x29)
    {
      v106 = &v6[(v5 - 1) * a3];
      v12 = (v5 >> 3) * a3;
      v13 = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v6, &v6[v12], a4);
      v14 = v13;
      v104 = &v6[v12];
      v16 = DiskNgramContextBiTriIsolatedCmp::compareElements(v13, &v6[v12], &v6[2 * v12], v15);
      if (v14 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          v16 = DiskNgramContextBiTriIsolatedCmp::compareElements(v16, v6, &v6[2 * v12], v17);
          if (v16 >= 0)
          {
            v18 = v6;
          }

          else
          {
            v18 = &v6[2 * v12];
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        v16 = DiskNgramContextBiTriIsolatedCmp::compareElements(v16, v6, &v6[2 * v12], v17);
        if (v16 >= 0)
        {
          v18 = &v6[2 * v12];
        }

        else
        {
          v18 = v6;
        }

LABEL_18:
        v104 = v18;
      }

      v20 = DiskNgramContextBiTriIsolatedCmp::compareElements(v16, &v10[-v12], &v6[(v5 >> 1) * a3], v17);
      v21 = v20;
      v23 = DiskNgramContextBiTriIsolatedCmp::compareElements(v20, &v6[(v5 >> 1) * a3], &v10[v12], v22);
      if (v21 < 0)
      {
        if ((v23 & 0x80000000) == 0)
        {
          v23 = DiskNgramContextBiTriIsolatedCmp::compareElements(v23, &v10[-v12], &v10[v12], v24);
          if (v23 >= 0)
          {
            v10 -= v12;
          }

          else
          {
            v10 += v12;
          }
        }
      }

      else if (v23 <= 0)
      {
        v23 = DiskNgramContextBiTriIsolatedCmp::compareElements(v23, &v10[-v12], &v10[v12], v24);
        if (v23 >= 0)
        {
          v10 += v12;
        }

        else
        {
          v10 -= v12;
        }
      }

      v25 = &v106[-2 * v12];
      v11 = &v106[-v12];
      v26 = DiskNgramContextBiTriIsolatedCmp::compareElements(v23, v25, &v106[-v12], v24);
      v27 = v26;
      result = DiskNgramContextBiTriIsolatedCmp::compareElements(v26, &v106[-v12], v106, v28);
      if (v27 < 0)
      {
        v19 = v104;
        if ((result & 0x80000000) == 0)
        {
          v11 = &v6[(v5 - 1) * a3];
          result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v25, v106, a4);
          if (result >= 0)
          {
            v11 = v25;
          }
        }
      }

      else
      {
        v19 = v104;
        if (result <= 0)
        {
          v11 = &v6[(v5 - 1) * a3];
          result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v25, v106, a4);
          if (result < 0)
          {
            v11 = v25;
          }
        }
      }

      goto LABEL_36;
    }

    v19 = v6;
LABEL_36:
    v29 = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v19, v10, a4);
    v30 = v29;
    result = DiskNgramContextBiTriIsolatedCmp::compareElements(v29, v10, v11, v31);
    if (v30 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v19, v11, a4);
        if (result >= 0)
        {
          v10 = v19;
        }

        else
        {
          v10 = v11;
        }
      }
    }

    else if (result <= 0)
    {
      result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v19, v11, a4);
      if (result >= 0)
      {
        v10 = v11;
      }

      else
      {
        v10 = v19;
      }
    }

LABEL_45:
    if (v109)
    {
      if (v108)
      {
        v32 = v6;
        v33 = a3 >> 3;
        do
        {
          v34 = *v32;
          *v32 = *v10;
          v32 += 8;
          *v10 = v34;
          v10 += 8;
          --v33;
        }

        while (v33);
      }

      else
      {
        v36 = a3;
        v37 = v6;
        do
        {
          v38 = *v37;
          *v37++ = *v10;
          *v10++ = v38;
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      v35 = *v6;
      *v6 = *v10;
      *v10 = v35;
    }

    v39 = 0;
    v40 = &v6[a3];
    v41 = &v6[(v5 - 1) * a3];
    v42 = v41;
    v43 = &v6[a3];
LABEL_54:
    while (v43 <= v42)
    {
      result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v43, v6, a4);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v44 = 0;
            do
            {
              v45 = *&v40[8 * v44];
              *&v40[8 * v44] = *&v43[8 * v44];
              *&v43[8 * v44++] = v45;
            }

            while (v9 != v44);
          }

          else
          {
            v54 = 0;
            do
            {
              v55 = v40[v54];
              v40[v54] = v43[v54];
              v43[v54++] = v55;
            }

            while (a3 != v54);
          }
        }

        else
        {
          v53 = *v40;
          *v40 = *v43;
          *v43 = v53;
        }

        v40 += a3;
        v39 = 1;
      }

      v43 += a3;
    }

    while (v43 <= v42)
    {
      result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v42, v6, a4);
      if ((result & 0x80000000) != 0)
      {
        if (v109)
        {
          if (v108)
          {
            v51 = 0;
            do
            {
              v52 = *&v43[8 * v51];
              *&v43[8 * v51] = *&v42[8 * v51];
              *&v42[8 * v51++] = v52;
            }

            while (v9 != v51);
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = v43[v57];
              v43[v57] = v42[v57];
              v42[v57++] = v58;
            }

            while (a3 != v57);
          }
        }

        else
        {
          v56 = *v43;
          *v43 = *v42;
          *v42 = v56;
        }

        v43 += a3;
        v42 += v7;
        v39 = 1;
        goto LABEL_54;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v46 = 0;
            do
            {
              v47 = *&v42[8 * v46];
              *&v42[8 * v46] = *&v41[8 * v46];
              *&v41[8 * v46++] = v47;
            }

            while (v9 != v46);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = v42[v49];
              v42[v49] = v41[v49];
              v41[v49++] = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v42;
          *v42 = *v41;
          *v41 = v48;
        }

        v41 += v7;
        v39 = 1;
      }

      v42 += v7;
    }

    v59 = v5 * a3;
    v60 = &v6[v5 * a3];
    if (!v39)
    {
      break;
    }

    v61 = v43 - v40;
    if (v40 - v6 >= v43 - v40)
    {
      v62 = v43 - v40;
    }

    else
    {
      v62 = v40 - v6;
    }

    if (v62)
    {
      if (v108)
      {
        v63 = &v43[-v62];
        v64 = v62 >> 3;
        v65 = v6;
        do
        {
          v66 = *v65;
          *v65 = *v63;
          v65 += 8;
          *v63 = v66;
          v63 += 8;
          --v64;
        }

        while (v64);
      }

      else
      {
        v67 = -v62;
        v68 = v6;
        do
        {
          v69 = *v68;
          *v68++ = v43[v67];
          v43[v67] = v69;
          v70 = __CFADD__(v67++, 1);
        }

        while (!v70);
      }
    }

    v71 = v41 - v42;
    if (v41 - v42 >= v60 - &v41[a3])
    {
      v72 = v60 - &v41[a3];
    }

    else
    {
      v72 = v41 - v42;
    }

    if (v72)
    {
      if (v108)
      {
        v73 = &v60[-v72];
        v74 = v72 >> 3;
        do
        {
          v75 = *v43;
          *v43 = *v73;
          v43 += 8;
          *v73 = v75;
          v73 += 8;
          --v74;
        }

        while (v74);
      }

      else
      {
        v76 = -v72;
        do
        {
          v77 = *v43;
          *v43++ = v60[v76];
          v60[v76] = v77;
          v70 = __CFADD__(v76++, 1);
        }

        while (!v70);
      }
    }

    if (v61 > a3)
    {
      result = mrec_qsort_r<DiskNgramContextBiTriIsolatedCmp>(v6, v61 / a3, a3, a4);
    }

    if (v71 <= a3)
    {
      return result;
    }

    v6 = &v60[-v71];
    v5 = v71 / a3;
    v78 = v107;
    if (((v6 | a3) & 7) != 0)
    {
      v78 = 2;
    }

    v108 = ((v6 | a3) & 7) == 0;
    v109 = v78;
    if (v5 < 7)
    {
      goto LABEL_118;
    }
  }

  v92 = &v6[a3];
  if (v59 > a3)
  {
    v93 = v6;
    do
    {
      if (v92 > v6)
      {
        v94 = v93;
        v95 = v92;
        do
        {
          v96 = v95;
          v95 = (v95 + v7);
          result = DiskNgramContextBiTriIsolatedCmp::compareElements(result, v95, v96, a4);
          if (result < 1)
          {
            break;
          }

          if (v109)
          {
            if (v108)
            {
              v97 = 0;
              v98 = v95;
              do
              {
                v99 = v96[v97];
                v96[v97] = *v98;
                *v98++ = v99;
                ++v97;
              }

              while (v9 != v97);
            }

            else
            {
              v101 = 0;
              v102 = a3;
              do
              {
                v103 = *(v96 + v101);
                *(v96 + v101) = *(v94 + v101);
                *(v94 + v101++) = v103;
                --v102;
              }

              while (v102);
            }
          }

          else
          {
            v100 = *v96;
            *v96 = *v95;
            *v95 = v100;
          }

          v94 = (v94 + v7);
        }

        while (v95 > v6);
      }

      v92 += a3;
      v93 = (v93 + a3);
    }

    while (v92 < v60);
  }

  return result;
}

uint64_t mrec_qsort_r<DiskNgramContextQuadIsolatedCmp>(uint64_t result, unint64_t a2, unint64_t a3, const void *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v107 = a3 != 8;
  v108 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v109 = v8;
  if (a2 < 7)
  {
LABEL_118:
    if ((v5 * a3) > a3)
    {
      v79 = &v6[v5 * a3];
      v80 = &v6[a3];
      v81 = v6;
      do
      {
        if (v80 > v6)
        {
          v82 = v81;
          v83 = v80;
          do
          {
            v84 = v83;
            v83 = (v83 + v7);
            result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v83, v84, a4);
            if (result < 1)
            {
              break;
            }

            if (v109)
            {
              if (v108)
              {
                v85 = 0;
                v86 = v83;
                do
                {
                  v87 = v84[v85];
                  v84[v85] = *v86;
                  *v86++ = v87;
                  ++v85;
                }

                while (a3 >> 3 != v85);
              }

              else
              {
                v89 = 0;
                v90 = a3;
                do
                {
                  v91 = *(v84 + v89);
                  *(v84 + v89) = *(v82 + v89);
                  *(v82 + v89++) = v91;
                  --v90;
                }

                while (v90);
              }
            }

            else
            {
              v88 = *v84;
              *v84 = *v83;
              *v83 = v88;
            }

            v82 = (v82 + v7);
          }

          while (v83 > v6);
        }

        v80 += a3;
        v81 = (v81 + a3);
      }

      while (v80 < v79);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = &v6[(v5 >> 1) * a3];
    if (v5 == 7)
    {
      goto LABEL_45;
    }

    v11 = &v6[(v5 - 1) * a3];
    if (v5 >= 0x29)
    {
      v106 = &v6[(v5 - 1) * a3];
      v12 = (v5 >> 3) * a3;
      v13 = DiskNgramContextQuadIsolatedCmp::compareElements(result, v6, &v6[v12], a4);
      v14 = v13;
      v104 = &v6[v12];
      v16 = DiskNgramContextQuadIsolatedCmp::compareElements(v13, &v6[v12], &v6[2 * v12], v15);
      if (v14 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          v16 = DiskNgramContextQuadIsolatedCmp::compareElements(v16, v6, &v6[2 * v12], v17);
          if (v16 >= 0)
          {
            v18 = v6;
          }

          else
          {
            v18 = &v6[2 * v12];
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        v16 = DiskNgramContextQuadIsolatedCmp::compareElements(v16, v6, &v6[2 * v12], v17);
        if (v16 >= 0)
        {
          v18 = &v6[2 * v12];
        }

        else
        {
          v18 = v6;
        }

LABEL_18:
        v104 = v18;
      }

      v20 = DiskNgramContextQuadIsolatedCmp::compareElements(v16, &v10[-v12], &v6[(v5 >> 1) * a3], v17);
      v21 = v20;
      v23 = DiskNgramContextQuadIsolatedCmp::compareElements(v20, &v6[(v5 >> 1) * a3], &v10[v12], v22);
      if (v21 < 0)
      {
        if ((v23 & 0x80000000) == 0)
        {
          v23 = DiskNgramContextQuadIsolatedCmp::compareElements(v23, &v10[-v12], &v10[v12], v24);
          if (v23 >= 0)
          {
            v10 -= v12;
          }

          else
          {
            v10 += v12;
          }
        }
      }

      else if (v23 <= 0)
      {
        v23 = DiskNgramContextQuadIsolatedCmp::compareElements(v23, &v10[-v12], &v10[v12], v24);
        if (v23 >= 0)
        {
          v10 += v12;
        }

        else
        {
          v10 -= v12;
        }
      }

      v25 = &v106[-2 * v12];
      v11 = &v106[-v12];
      v26 = DiskNgramContextQuadIsolatedCmp::compareElements(v23, v25, &v106[-v12], v24);
      v27 = v26;
      result = DiskNgramContextQuadIsolatedCmp::compareElements(v26, &v106[-v12], v106, v28);
      if (v27 < 0)
      {
        v19 = v104;
        if ((result & 0x80000000) == 0)
        {
          v11 = &v6[(v5 - 1) * a3];
          result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v25, v106, a4);
          if (result >= 0)
          {
            v11 = v25;
          }
        }
      }

      else
      {
        v19 = v104;
        if (result <= 0)
        {
          v11 = &v6[(v5 - 1) * a3];
          result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v25, v106, a4);
          if (result < 0)
          {
            v11 = v25;
          }
        }
      }

      goto LABEL_36;
    }

    v19 = v6;
LABEL_36:
    v29 = DiskNgramContextQuadIsolatedCmp::compareElements(result, v19, v10, a4);
    v30 = v29;
    result = DiskNgramContextQuadIsolatedCmp::compareElements(v29, v10, v11, v31);
    if (v30 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v19, v11, a4);
        if (result >= 0)
        {
          v10 = v19;
        }

        else
        {
          v10 = v11;
        }
      }
    }

    else if (result <= 0)
    {
      result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v19, v11, a4);
      if (result >= 0)
      {
        v10 = v11;
      }

      else
      {
        v10 = v19;
      }
    }

LABEL_45:
    if (v109)
    {
      if (v108)
      {
        v32 = v6;
        v33 = a3 >> 3;
        do
        {
          v34 = *v32;
          *v32 = *v10;
          v32 += 8;
          *v10 = v34;
          v10 += 8;
          --v33;
        }

        while (v33);
      }

      else
      {
        v36 = a3;
        v37 = v6;
        do
        {
          v38 = *v37;
          *v37++ = *v10;
          *v10++ = v38;
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      v35 = *v6;
      *v6 = *v10;
      *v10 = v35;
    }

    v39 = 0;
    v40 = &v6[a3];
    v41 = &v6[(v5 - 1) * a3];
    v42 = v41;
    v43 = &v6[a3];
LABEL_54:
    while (v43 <= v42)
    {
      result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v43, v6, a4);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v44 = 0;
            do
            {
              v45 = *&v40[8 * v44];
              *&v40[8 * v44] = *&v43[8 * v44];
              *&v43[8 * v44++] = v45;
            }

            while (v9 != v44);
          }

          else
          {
            v54 = 0;
            do
            {
              v55 = v40[v54];
              v40[v54] = v43[v54];
              v43[v54++] = v55;
            }

            while (a3 != v54);
          }
        }

        else
        {
          v53 = *v40;
          *v40 = *v43;
          *v43 = v53;
        }

        v40 += a3;
        v39 = 1;
      }

      v43 += a3;
    }

    while (v43 <= v42)
    {
      result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v42, v6, a4);
      if ((result & 0x80000000) != 0)
      {
        if (v109)
        {
          if (v108)
          {
            v51 = 0;
            do
            {
              v52 = *&v43[8 * v51];
              *&v43[8 * v51] = *&v42[8 * v51];
              *&v42[8 * v51++] = v52;
            }

            while (v9 != v51);
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = v43[v57];
              v43[v57] = v42[v57];
              v42[v57++] = v58;
            }

            while (a3 != v57);
          }
        }

        else
        {
          v56 = *v43;
          *v43 = *v42;
          *v42 = v56;
        }

        v43 += a3;
        v42 += v7;
        v39 = 1;
        goto LABEL_54;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v46 = 0;
            do
            {
              v47 = *&v42[8 * v46];
              *&v42[8 * v46] = *&v41[8 * v46];
              *&v41[8 * v46++] = v47;
            }

            while (v9 != v46);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = v42[v49];
              v42[v49] = v41[v49];
              v41[v49++] = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v42;
          *v42 = *v41;
          *v41 = v48;
        }

        v41 += v7;
        v39 = 1;
      }

      v42 += v7;
    }

    v59 = v5 * a3;
    v60 = &v6[v5 * a3];
    if (!v39)
    {
      break;
    }

    v61 = v43 - v40;
    if (v40 - v6 >= v43 - v40)
    {
      v62 = v43 - v40;
    }

    else
    {
      v62 = v40 - v6;
    }

    if (v62)
    {
      if (v108)
      {
        v63 = &v43[-v62];
        v64 = v62 >> 3;
        v65 = v6;
        do
        {
          v66 = *v65;
          *v65 = *v63;
          v65 += 8;
          *v63 = v66;
          v63 += 8;
          --v64;
        }

        while (v64);
      }

      else
      {
        v67 = -v62;
        v68 = v6;
        do
        {
          v69 = *v68;
          *v68++ = v43[v67];
          v43[v67] = v69;
          v70 = __CFADD__(v67++, 1);
        }

        while (!v70);
      }
    }

    v71 = v41 - v42;
    if (v41 - v42 >= v60 - &v41[a3])
    {
      v72 = v60 - &v41[a3];
    }

    else
    {
      v72 = v41 - v42;
    }

    if (v72)
    {
      if (v108)
      {
        v73 = &v60[-v72];
        v74 = v72 >> 3;
        do
        {
          v75 = *v43;
          *v43 = *v73;
          v43 += 8;
          *v73 = v75;
          v73 += 8;
          --v74;
        }

        while (v74);
      }

      else
      {
        v76 = -v72;
        do
        {
          v77 = *v43;
          *v43++ = v60[v76];
          v60[v76] = v77;
          v70 = __CFADD__(v76++, 1);
        }

        while (!v70);
      }
    }

    if (v61 > a3)
    {
      result = mrec_qsort_r<DiskNgramContextQuadIsolatedCmp>(v6, v61 / a3, a3, a4);
    }

    if (v71 <= a3)
    {
      return result;
    }

    v6 = &v60[-v71];
    v5 = v71 / a3;
    v78 = v107;
    if (((v6 | a3) & 7) != 0)
    {
      v78 = 2;
    }

    v108 = ((v6 | a3) & 7) == 0;
    v109 = v78;
    if (v5 < 7)
    {
      goto LABEL_118;
    }
  }

  v92 = &v6[a3];
  if (v59 > a3)
  {
    v93 = v6;
    do
    {
      if (v92 > v6)
      {
        v94 = v93;
        v95 = v92;
        do
        {
          v96 = v95;
          v95 = (v95 + v7);
          result = DiskNgramContextQuadIsolatedCmp::compareElements(result, v95, v96, a4);
          if (result < 1)
          {
            break;
          }

          if (v109)
          {
            if (v108)
            {
              v97 = 0;
              v98 = v95;
              do
              {
                v99 = v96[v97];
                v96[v97] = *v98;
                *v98++ = v99;
                ++v97;
              }

              while (v9 != v97);
            }

            else
            {
              v101 = 0;
              v102 = a3;
              do
              {
                v103 = *(v96 + v101);
                *(v96 + v101) = *(v94 + v101);
                *(v94 + v101++) = v103;
                --v102;
              }

              while (v102);
            }
          }

          else
          {
            v100 = *v96;
            *v96 = *v95;
            *v95 = v100;
          }

          v94 = (v94 + v7);
        }

        while (v95 > v6);
      }

      v92 += a3;
      v93 = (v93 + a3);
    }

    while (v92 < v60);
  }

  return result;
}

uint64_t mrec_qsort_r<DiskNgramContextBiTriGroupTrigramsCmp>(uint64_t result, unint64_t a2, unint64_t a3, const void *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v107 = a3 != 8;
  v108 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v109 = v8;
  if (a2 < 7)
  {
LABEL_118:
    if ((v5 * a3) > a3)
    {
      v79 = (v6 + v5 * a3);
      v80 = (v6 + a3);
      v81 = v6;
      do
      {
        if (v80 > v6)
        {
          v82 = v81;
          v83 = v80;
          do
          {
            v84 = v83;
            v83 = (v83 + v7);
            result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v83, v84, a4);
            if (result < 1)
            {
              break;
            }

            if (v109)
            {
              if (v108)
              {
                v85 = 0;
                v86 = v83;
                do
                {
                  v87 = *&v84[2 * v85];
                  *&v84[2 * v85] = *v86;
                  *v86 = v87;
                  v86 += 2;
                  ++v85;
                }

                while (a3 >> 3 != v85);
              }

              else
              {
                v89 = 0;
                v90 = a3;
                do
                {
                  v91 = *(v84 + v89);
                  *(v84 + v89) = *(v82 + v89);
                  *(v82 + v89++) = v91;
                  --v90;
                }

                while (v90);
              }
            }

            else
            {
              v88 = *v84;
              *v84 = *v83;
              *v83 = v88;
            }

            v82 = (v82 + v7);
          }

          while (v83 > v6);
        }

        v80 = (v80 + a3);
        v81 = (v81 + a3);
      }

      while (v80 < v79);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = (v6 + (v5 >> 1) * a3);
    if (v5 == 7)
    {
      goto LABEL_45;
    }

    v11 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v106 = (v6 + (v5 - 1) * a3);
      v12 = (v5 >> 3) * a3;
      v13 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v6, (v6 + v12), a4);
      v14 = v13;
      v104 = (v6 + v12);
      v16 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v13, (v6 + v12), (v6 + 2 * v12), v15);
      if (v14 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          v16 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v16, v6, (v6 + 2 * v12), v17);
          if (v16 >= 0)
          {
            v18 = v6;
          }

          else
          {
            v18 = (v6 + 2 * v12);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        v16 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v16, v6, (v6 + 2 * v12), v17);
        if (v16 >= 0)
        {
          v18 = (v6 + 2 * v12);
        }

        else
        {
          v18 = v6;
        }

LABEL_18:
        v104 = v18;
      }

      v20 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v16, (v10 - v12), (v6 + (v5 >> 1) * a3), v17);
      v21 = v20;
      v23 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v20, (v6 + (v5 >> 1) * a3), (v10 + v12), v22);
      if (v21 < 0)
      {
        if ((v23 & 0x80000000) == 0)
        {
          v23 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v23, (v10 - v12), (v10 + v12), v24);
          if (v23 >= 0)
          {
            v10 = (v10 - v12);
          }

          else
          {
            v10 = (v10 + v12);
          }
        }
      }

      else if (v23 <= 0)
      {
        v23 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v23, (v10 - v12), (v10 + v12), v24);
        if (v23 >= 0)
        {
          v10 = (v10 + v12);
        }

        else
        {
          v10 = (v10 - v12);
        }
      }

      v25 = (v106 - 2 * v12);
      v11 = (v106 - v12);
      v26 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v23, v25, (v106 - v12), v24);
      v27 = v26;
      result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v26, (v106 - v12), v106, v28);
      if (v27 < 0)
      {
        v19 = v104;
        if ((result & 0x80000000) == 0)
        {
          v11 = (v6 + (v5 - 1) * a3);
          result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v25, v106, a4);
          if (result >= 0)
          {
            v11 = v25;
          }
        }
      }

      else
      {
        v19 = v104;
        if (result <= 0)
        {
          v11 = (v6 + (v5 - 1) * a3);
          result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v25, v106, a4);
          if (result < 0)
          {
            v11 = v25;
          }
        }
      }

      goto LABEL_36;
    }

    v19 = v6;
LABEL_36:
    v29 = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v19, v10, a4);
    v30 = v29;
    result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(v29, v10, v11, v31);
    if (v30 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v19, v11, a4);
        if (result >= 0)
        {
          v10 = v19;
        }

        else
        {
          v10 = v11;
        }
      }
    }

    else if (result <= 0)
    {
      result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v19, v11, a4);
      if (result >= 0)
      {
        v10 = v11;
      }

      else
      {
        v10 = v19;
      }
    }

LABEL_45:
    if (v109)
    {
      if (v108)
      {
        v32 = v6;
        v33 = a3 >> 3;
        do
        {
          v34 = *v32;
          *v32 = *v10;
          v32 += 2;
          *v10 = v34;
          v10 += 2;
          --v33;
        }

        while (v33);
      }

      else
      {
        v36 = a3;
        v37 = v6;
        do
        {
          v38 = *v37;
          *v37 = *v10;
          v37 = (v37 + 1);
          *v10 = v38;
          v10 = (v10 + 1);
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      v35 = *v6;
      *v6 = *v10;
      *v10 = v35;
    }

    v39 = 0;
    v40 = (v6 + a3);
    v41 = (v6 + (v5 - 1) * a3);
    v42 = v41;
    v43 = (v6 + a3);
LABEL_54:
    while (v43 <= v42)
    {
      result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v43, v6, a4);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v44 = 0;
            do
            {
              v45 = v40[v44];
              v40[v44] = *&v43[2 * v44];
              *&v43[2 * v44++] = v45;
            }

            while (v9 != v44);
          }

          else
          {
            v54 = 0;
            do
            {
              v55 = *(v40 + v54);
              *(v40 + v54) = *(v43 + v54);
              *(v43 + v54++) = v55;
            }

            while (a3 != v54);
          }
        }

        else
        {
          v53 = *v40;
          *v40 = *v43;
          *v43 = v53;
        }

        v40 = (v40 + a3);
        v39 = 1;
      }

      v43 = (v43 + a3);
    }

    while (v43 <= v42)
    {
      result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v42, v6, a4);
      if ((result & 0x80000000) != 0)
      {
        if (v109)
        {
          if (v108)
          {
            v51 = 0;
            do
            {
              v52 = *&v43[2 * v51];
              *&v43[2 * v51] = *&v42[2 * v51];
              *&v42[2 * v51++] = v52;
            }

            while (v9 != v51);
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = *(v43 + v57);
              *(v43 + v57) = *(v42 + v57);
              *(v42 + v57++) = v58;
            }

            while (a3 != v57);
          }
        }

        else
        {
          v56 = *v43;
          *v43 = *v42;
          *v42 = v56;
        }

        v43 = (v43 + a3);
        v42 = (v42 + v7);
        v39 = 1;
        goto LABEL_54;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v46 = 0;
            do
            {
              v47 = *&v42[2 * v46];
              *&v42[2 * v46] = *&v41[2 * v46];
              *&v41[2 * v46++] = v47;
            }

            while (v9 != v46);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v42 + v49);
              *(v42 + v49) = *(v41 + v49);
              *(v41 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v42;
          *v42 = *v41;
          *v41 = v48;
        }

        v41 = (v41 + v7);
        v39 = 1;
      }

      v42 = (v42 + v7);
    }

    v59 = v5 * a3;
    v60 = (v6 + v5 * a3);
    if (!v39)
    {
      break;
    }

    v61 = v43 - v40;
    if (v40 - v6 >= v43 - v40)
    {
      v62 = v43 - v40;
    }

    else
    {
      v62 = v40 - v6;
    }

    if (v62)
    {
      if (v108)
      {
        v63 = (v43 - v62);
        v64 = v62 >> 3;
        v65 = v6;
        do
        {
          v66 = *v65;
          *v65 = *v63;
          v65 += 2;
          *v63++ = v66;
          --v64;
        }

        while (v64);
      }

      else
      {
        v67 = -v62;
        v68 = v6;
        do
        {
          v69 = *v68;
          *v68 = *(v43 + v67);
          v68 = (v68 + 1);
          *(v43 + v67) = v69;
          v70 = __CFADD__(v67++, 1);
        }

        while (!v70);
      }
    }

    v71 = v41 - v42;
    if (v41 - v42 >= v60 - (v41 + a3))
    {
      v72 = v60 - (v41 + a3);
    }

    else
    {
      v72 = v41 - v42;
    }

    if (v72)
    {
      if (v108)
      {
        v73 = v60 - v72;
        v74 = v72 >> 3;
        do
        {
          v75 = *v43;
          *v43 = *v73;
          v43 += 2;
          *v73 = v75;
          v73 += 8;
          --v74;
        }

        while (v74);
      }

      else
      {
        v76 = -v72;
        do
        {
          v77 = *v43;
          *v43 = *(v60 + v76);
          v43 = (v43 + 1);
          *(v60 + v76) = v77;
          v70 = __CFADD__(v76++, 1);
        }

        while (!v70);
      }
    }

    if (v61 > a3)
    {
      result = mrec_qsort_r<DiskNgramContextBiTriGroupTrigramsCmp>(v6, v61 / a3, a3, a4);
    }

    if (v71 <= a3)
    {
      return result;
    }

    v6 = (v60 - v71);
    v5 = v71 / a3;
    v78 = v107;
    if (((v6 | a3) & 7) != 0)
    {
      v78 = 2;
    }

    v108 = ((v6 | a3) & 7) == 0;
    v109 = v78;
    if (v5 < 7)
    {
      goto LABEL_118;
    }
  }

  v92 = (v6 + a3);
  if (v59 > a3)
  {
    v93 = v6;
    do
    {
      if (v92 > v6)
      {
        v94 = v93;
        v95 = v92;
        do
        {
          v96 = v95;
          v95 = (v95 + v7);
          result = DiskNgramContextBiTriGroupTrigramsCmp::compareElements(result, v95, v96, a4);
          if (result < 1)
          {
            break;
          }

          if (v109)
          {
            if (v108)
            {
              v97 = 0;
              v98 = v95;
              do
              {
                v99 = *&v96[2 * v97];
                *&v96[2 * v97] = *v98;
                *v98 = v99;
                v98 += 2;
                ++v97;
              }

              while (v9 != v97);
            }

            else
            {
              v101 = 0;
              v102 = a3;
              do
              {
                v103 = *(v96 + v101);
                *(v96 + v101) = *(v94 + v101);
                *(v94 + v101++) = v103;
                --v102;
              }

              while (v102);
            }
          }

          else
          {
            v100 = *v96;
            *v96 = *v95;
            *v95 = v100;
          }

          v94 = (v94 + v7);
        }

        while (v95 > v6);
      }

      v92 = (v92 + a3);
      v93 = (v93 + a3);
    }

    while (v92 < v60);
  }

  return result;
}

uint64_t mrec_qsort_r<DiskNgramContextBiTriGroupTrigramsWithBigramsCmp>(uint64_t result, unint64_t a2, unint64_t a3, const void *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v107 = a3 != 8;
  v108 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v109 = v8;
  if (a2 < 7)
  {
LABEL_118:
    if ((v5 * a3) > a3)
    {
      v79 = (v6 + v5 * a3);
      v80 = (v6 + a3);
      v81 = v6;
      do
      {
        if (v80 > v6)
        {
          v82 = v81;
          v83 = v80;
          do
          {
            v84 = v83;
            v83 = (v83 + v7);
            result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v83, v84, a4);
            if (result < 1)
            {
              break;
            }

            if (v109)
            {
              if (v108)
              {
                v85 = 0;
                v86 = v83;
                do
                {
                  v87 = *&v84[2 * v85];
                  *&v84[2 * v85] = *v86;
                  *v86 = v87;
                  v86 += 2;
                  ++v85;
                }

                while (a3 >> 3 != v85);
              }

              else
              {
                v89 = 0;
                v90 = a3;
                do
                {
                  v91 = *(v84 + v89);
                  *(v84 + v89) = *(v82 + v89);
                  *(v82 + v89++) = v91;
                  --v90;
                }

                while (v90);
              }
            }

            else
            {
              v88 = *v84;
              *v84 = *v83;
              *v83 = v88;
            }

            v82 = (v82 + v7);
          }

          while (v83 > v6);
        }

        v80 = (v80 + a3);
        v81 = (v81 + a3);
      }

      while (v80 < v79);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = (v6 + (v5 >> 1) * a3);
    if (v5 == 7)
    {
      goto LABEL_45;
    }

    v11 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v106 = (v6 + (v5 - 1) * a3);
      v12 = (v5 >> 3) * a3;
      v13 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v6, (v6 + v12), a4);
      v14 = v13;
      v104 = (v6 + v12);
      v16 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v13, (v6 + v12), (v6 + 2 * v12), v15);
      if (v14 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          v16 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v16, v6, (v6 + 2 * v12), v17);
          if (v16 >= 0)
          {
            v18 = v6;
          }

          else
          {
            v18 = (v6 + 2 * v12);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        v16 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v16, v6, (v6 + 2 * v12), v17);
        if (v16 >= 0)
        {
          v18 = (v6 + 2 * v12);
        }

        else
        {
          v18 = v6;
        }

LABEL_18:
        v104 = v18;
      }

      v20 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v16, (v10 - v12), (v6 + (v5 >> 1) * a3), v17);
      v21 = v20;
      v23 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v20, (v6 + (v5 >> 1) * a3), (v10 + v12), v22);
      if (v21 < 0)
      {
        if ((v23 & 0x80000000) == 0)
        {
          v23 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v23, (v10 - v12), (v10 + v12), v24);
          if (v23 >= 0)
          {
            v10 = (v10 - v12);
          }

          else
          {
            v10 = (v10 + v12);
          }
        }
      }

      else if (v23 <= 0)
      {
        v23 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v23, (v10 - v12), (v10 + v12), v24);
        if (v23 >= 0)
        {
          v10 = (v10 + v12);
        }

        else
        {
          v10 = (v10 - v12);
        }
      }

      v25 = (v106 - 2 * v12);
      v11 = (v106 - v12);
      v26 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v23, v25, (v106 - v12), v24);
      v27 = v26;
      result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v26, (v106 - v12), v106, v28);
      if (v27 < 0)
      {
        v19 = v104;
        if ((result & 0x80000000) == 0)
        {
          v11 = (v6 + (v5 - 1) * a3);
          result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v25, v106, a4);
          if (result >= 0)
          {
            v11 = v25;
          }
        }
      }

      else
      {
        v19 = v104;
        if (result <= 0)
        {
          v11 = (v6 + (v5 - 1) * a3);
          result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v25, v106, a4);
          if (result < 0)
          {
            v11 = v25;
          }
        }
      }

      goto LABEL_36;
    }

    v19 = v6;
LABEL_36:
    v29 = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v19, v10, a4);
    v30 = v29;
    result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(v29, v10, v11, v31);
    if (v30 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v19, v11, a4);
        if (result >= 0)
        {
          v10 = v19;
        }

        else
        {
          v10 = v11;
        }
      }
    }

    else if (result <= 0)
    {
      result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v19, v11, a4);
      if (result >= 0)
      {
        v10 = v11;
      }

      else
      {
        v10 = v19;
      }
    }

LABEL_45:
    if (v109)
    {
      if (v108)
      {
        v32 = v6;
        v33 = a3 >> 3;
        do
        {
          v34 = *v32;
          *v32 = *v10;
          v32 += 2;
          *v10 = v34;
          v10 += 2;
          --v33;
        }

        while (v33);
      }

      else
      {
        v36 = a3;
        v37 = v6;
        do
        {
          v38 = *v37;
          *v37 = *v10;
          v37 = (v37 + 1);
          *v10 = v38;
          v10 = (v10 + 1);
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      v35 = *v6;
      *v6 = *v10;
      *v10 = v35;
    }

    v39 = 0;
    v40 = (v6 + a3);
    v41 = (v6 + (v5 - 1) * a3);
    v42 = v41;
    v43 = (v6 + a3);
LABEL_54:
    while (v43 <= v42)
    {
      result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v43, v6, a4);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v44 = 0;
            do
            {
              v45 = v40[v44];
              v40[v44] = *&v43[2 * v44];
              *&v43[2 * v44++] = v45;
            }

            while (v9 != v44);
          }

          else
          {
            v54 = 0;
            do
            {
              v55 = *(v40 + v54);
              *(v40 + v54) = *(v43 + v54);
              *(v43 + v54++) = v55;
            }

            while (a3 != v54);
          }
        }

        else
        {
          v53 = *v40;
          *v40 = *v43;
          *v43 = v53;
        }

        v40 = (v40 + a3);
        v39 = 1;
      }

      v43 = (v43 + a3);
    }

    while (v43 <= v42)
    {
      result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v42, v6, a4);
      if ((result & 0x80000000) != 0)
      {
        if (v109)
        {
          if (v108)
          {
            v51 = 0;
            do
            {
              v52 = *&v43[2 * v51];
              *&v43[2 * v51] = *&v42[2 * v51];
              *&v42[2 * v51++] = v52;
            }

            while (v9 != v51);
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = *(v43 + v57);
              *(v43 + v57) = *(v42 + v57);
              *(v42 + v57++) = v58;
            }

            while (a3 != v57);
          }
        }

        else
        {
          v56 = *v43;
          *v43 = *v42;
          *v42 = v56;
        }

        v43 = (v43 + a3);
        v42 = (v42 + v7);
        v39 = 1;
        goto LABEL_54;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v46 = 0;
            do
            {
              v47 = *&v42[2 * v46];
              *&v42[2 * v46] = *&v41[2 * v46];
              *&v41[2 * v46++] = v47;
            }

            while (v9 != v46);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v42 + v49);
              *(v42 + v49) = *(v41 + v49);
              *(v41 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v42;
          *v42 = *v41;
          *v41 = v48;
        }

        v41 = (v41 + v7);
        v39 = 1;
      }

      v42 = (v42 + v7);
    }

    v59 = v5 * a3;
    v60 = (v6 + v5 * a3);
    if (!v39)
    {
      break;
    }

    v61 = v43 - v40;
    if (v40 - v6 >= v43 - v40)
    {
      v62 = v43 - v40;
    }

    else
    {
      v62 = v40 - v6;
    }

    if (v62)
    {
      if (v108)
      {
        v63 = (v43 - v62);
        v64 = v62 >> 3;
        v65 = v6;
        do
        {
          v66 = *v65;
          *v65 = *v63;
          v65 += 2;
          *v63++ = v66;
          --v64;
        }

        while (v64);
      }

      else
      {
        v67 = -v62;
        v68 = v6;
        do
        {
          v69 = *v68;
          *v68 = *(v43 + v67);
          v68 = (v68 + 1);
          *(v43 + v67) = v69;
          v70 = __CFADD__(v67++, 1);
        }

        while (!v70);
      }
    }

    v71 = v41 - v42;
    if (v41 - v42 >= v60 - (v41 + a3))
    {
      v72 = v60 - (v41 + a3);
    }

    else
    {
      v72 = v41 - v42;
    }

    if (v72)
    {
      if (v108)
      {
        v73 = v60 - v72;
        v74 = v72 >> 3;
        do
        {
          v75 = *v43;
          *v43 = *v73;
          v43 += 2;
          *v73 = v75;
          v73 += 8;
          --v74;
        }

        while (v74);
      }

      else
      {
        v76 = -v72;
        do
        {
          v77 = *v43;
          *v43 = *(v60 + v76);
          v43 = (v43 + 1);
          *(v60 + v76) = v77;
          v70 = __CFADD__(v76++, 1);
        }

        while (!v70);
      }
    }

    if (v61 > a3)
    {
      result = mrec_qsort_r<DiskNgramContextBiTriGroupTrigramsWithBigramsCmp>(v6, v61 / a3, a3, a4);
    }

    if (v71 <= a3)
    {
      return result;
    }

    v6 = (v60 - v71);
    v5 = v71 / a3;
    v78 = v107;
    if (((v6 | a3) & 7) != 0)
    {
      v78 = 2;
    }

    v108 = ((v6 | a3) & 7) == 0;
    v109 = v78;
    if (v5 < 7)
    {
      goto LABEL_118;
    }
  }

  v92 = (v6 + a3);
  if (v59 > a3)
  {
    v93 = v6;
    do
    {
      if (v92 > v6)
      {
        v94 = v93;
        v95 = v92;
        do
        {
          v96 = v95;
          v95 = (v95 + v7);
          result = DiskNgramContextBiTriGroupTrigramsWithBigramsCmp::compareElements(result, v95, v96, a4);
          if (result < 1)
          {
            break;
          }

          if (v109)
          {
            if (v108)
            {
              v97 = 0;
              v98 = v95;
              do
              {
                v99 = *&v96[2 * v97];
                *&v96[2 * v97] = *v98;
                *v98 = v99;
                v98 += 2;
                ++v97;
              }

              while (v9 != v97);
            }

            else
            {
              v101 = 0;
              v102 = a3;
              do
              {
                v103 = *(v96 + v101);
                *(v96 + v101) = *(v94 + v101);
                *(v94 + v101++) = v103;
                --v102;
              }

              while (v102);
            }
          }

          else
          {
            v100 = *v96;
            *v96 = *v95;
            *v95 = v100;
          }

          v94 = (v94 + v7);
        }

        while (v95 > v6);
      }

      v92 = (v92 + a3);
      v93 = (v93 + a3);
    }

    while (v92 < v60);
  }

  return result;
}

uint64_t mrec_qsort_r<DiskNgramContextQuadGroupCmp>(uint64_t result, unint64_t a2, unint64_t a3, const void *a4)
{
  v5 = a2;
  v6 = result;
  v7 = -a3;
  v107 = a3 != 8;
  v108 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = a3 != 8;
  }

  v109 = v8;
  if (a2 < 7)
  {
LABEL_118:
    if ((v5 * a3) > a3)
    {
      v79 = (v6 + v5 * a3);
      v80 = (v6 + a3);
      v81 = v6;
      do
      {
        if (v80 > v6)
        {
          v82 = v81;
          v83 = v80;
          do
          {
            v84 = v83;
            v83 = (v83 + v7);
            result = DiskNgramContextQuadGroupCmp::compareElements(result, v83, v84, a4);
            if (result < 1)
            {
              break;
            }

            if (v109)
            {
              if (v108)
              {
                v85 = 0;
                v86 = v83;
                do
                {
                  v87 = *&v84[2 * v85];
                  *&v84[2 * v85] = *v86;
                  *v86 = v87;
                  v86 += 2;
                  ++v85;
                }

                while (a3 >> 3 != v85);
              }

              else
              {
                v89 = 0;
                v90 = a3;
                do
                {
                  v91 = *(v84 + v89);
                  *(v84 + v89) = *(v82 + v89);
                  *(v82 + v89++) = v91;
                  --v90;
                }

                while (v90);
              }
            }

            else
            {
              v88 = *v84;
              *v84 = *v83;
              *v83 = v88;
            }

            v82 = (v82 + v7);
          }

          while (v83 > v6);
        }

        v80 = (v80 + a3);
        v81 = (v81 + a3);
      }

      while (v80 < v79);
    }

    return result;
  }

  v9 = a3 >> 3;
  while (1)
  {
    v10 = (v6 + (v5 >> 1) * a3);
    if (v5 == 7)
    {
      goto LABEL_45;
    }

    v11 = (v6 + (v5 - 1) * a3);
    if (v5 >= 0x29)
    {
      v106 = (v6 + (v5 - 1) * a3);
      v12 = (v5 >> 3) * a3;
      v13 = DiskNgramContextQuadGroupCmp::compareElements(result, v6, (v6 + v12), a4);
      v14 = v13;
      v104 = (v6 + v12);
      v16 = DiskNgramContextQuadGroupCmp::compareElements(v13, (v6 + v12), (v6 + 2 * v12), v15);
      if (v14 < 0)
      {
        if ((v16 & 0x80000000) == 0)
        {
          v16 = DiskNgramContextQuadGroupCmp::compareElements(v16, v6, (v6 + 2 * v12), v17);
          if (v16 >= 0)
          {
            v18 = v6;
          }

          else
          {
            v18 = (v6 + 2 * v12);
          }

          goto LABEL_18;
        }
      }

      else if (v16 <= 0)
      {
        v16 = DiskNgramContextQuadGroupCmp::compareElements(v16, v6, (v6 + 2 * v12), v17);
        if (v16 >= 0)
        {
          v18 = (v6 + 2 * v12);
        }

        else
        {
          v18 = v6;
        }

LABEL_18:
        v104 = v18;
      }

      v20 = DiskNgramContextQuadGroupCmp::compareElements(v16, (v10 - v12), (v6 + (v5 >> 1) * a3), v17);
      v21 = v20;
      v23 = DiskNgramContextQuadGroupCmp::compareElements(v20, (v6 + (v5 >> 1) * a3), (v10 + v12), v22);
      if (v21 < 0)
      {
        if ((v23 & 0x80000000) == 0)
        {
          v23 = DiskNgramContextQuadGroupCmp::compareElements(v23, (v10 - v12), (v10 + v12), v24);
          if (v23 >= 0)
          {
            v10 = (v10 - v12);
          }

          else
          {
            v10 = (v10 + v12);
          }
        }
      }

      else if (v23 <= 0)
      {
        v23 = DiskNgramContextQuadGroupCmp::compareElements(v23, (v10 - v12), (v10 + v12), v24);
        if (v23 >= 0)
        {
          v10 = (v10 + v12);
        }

        else
        {
          v10 = (v10 - v12);
        }
      }

      v25 = (v106 - 2 * v12);
      v11 = (v106 - v12);
      v26 = DiskNgramContextQuadGroupCmp::compareElements(v23, v25, (v106 - v12), v24);
      v27 = v26;
      result = DiskNgramContextQuadGroupCmp::compareElements(v26, (v106 - v12), v106, v28);
      if (v27 < 0)
      {
        v19 = v104;
        if ((result & 0x80000000) == 0)
        {
          v11 = (v6 + (v5 - 1) * a3);
          result = DiskNgramContextQuadGroupCmp::compareElements(result, v25, v106, a4);
          if (result >= 0)
          {
            v11 = v25;
          }
        }
      }

      else
      {
        v19 = v104;
        if (result <= 0)
        {
          v11 = (v6 + (v5 - 1) * a3);
          result = DiskNgramContextQuadGroupCmp::compareElements(result, v25, v106, a4);
          if (result < 0)
          {
            v11 = v25;
          }
        }
      }

      goto LABEL_36;
    }

    v19 = v6;
LABEL_36:
    v29 = DiskNgramContextQuadGroupCmp::compareElements(result, v19, v10, a4);
    v30 = v29;
    result = DiskNgramContextQuadGroupCmp::compareElements(v29, v10, v11, v31);
    if (v30 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = DiskNgramContextQuadGroupCmp::compareElements(result, v19, v11, a4);
        if (result >= 0)
        {
          v10 = v19;
        }

        else
        {
          v10 = v11;
        }
      }
    }

    else if (result <= 0)
    {
      result = DiskNgramContextQuadGroupCmp::compareElements(result, v19, v11, a4);
      if (result >= 0)
      {
        v10 = v11;
      }

      else
      {
        v10 = v19;
      }
    }

LABEL_45:
    if (v109)
    {
      if (v108)
      {
        v32 = v6;
        v33 = a3 >> 3;
        do
        {
          v34 = *v32;
          *v32 = *v10;
          v32 += 2;
          *v10 = v34;
          v10 += 2;
          --v33;
        }

        while (v33);
      }

      else
      {
        v36 = a3;
        v37 = v6;
        do
        {
          v38 = *v37;
          *v37 = *v10;
          v37 = (v37 + 1);
          *v10 = v38;
          v10 = (v10 + 1);
          --v36;
        }

        while (v36);
      }
    }

    else
    {
      v35 = *v6;
      *v6 = *v10;
      *v10 = v35;
    }

    v39 = 0;
    v40 = (v6 + a3);
    v41 = (v6 + (v5 - 1) * a3);
    v42 = v41;
    v43 = (v6 + a3);
LABEL_54:
    while (v43 <= v42)
    {
      result = DiskNgramContextQuadGroupCmp::compareElements(result, v43, v6, a4);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v44 = 0;
            do
            {
              v45 = v40[v44];
              v40[v44] = *&v43[2 * v44];
              *&v43[2 * v44++] = v45;
            }

            while (v9 != v44);
          }

          else
          {
            v54 = 0;
            do
            {
              v55 = *(v40 + v54);
              *(v40 + v54) = *(v43 + v54);
              *(v43 + v54++) = v55;
            }

            while (a3 != v54);
          }
        }

        else
        {
          v53 = *v40;
          *v40 = *v43;
          *v43 = v53;
        }

        v40 = (v40 + a3);
        v39 = 1;
      }

      v43 = (v43 + a3);
    }

    while (v43 <= v42)
    {
      result = DiskNgramContextQuadGroupCmp::compareElements(result, v42, v6, a4);
      if ((result & 0x80000000) != 0)
      {
        if (v109)
        {
          if (v108)
          {
            v51 = 0;
            do
            {
              v52 = *&v43[2 * v51];
              *&v43[2 * v51] = *&v42[2 * v51];
              *&v42[2 * v51++] = v52;
            }

            while (v9 != v51);
          }

          else
          {
            v57 = 0;
            do
            {
              v58 = *(v43 + v57);
              *(v43 + v57) = *(v42 + v57);
              *(v42 + v57++) = v58;
            }

            while (a3 != v57);
          }
        }

        else
        {
          v56 = *v43;
          *v43 = *v42;
          *v42 = v56;
        }

        v43 = (v43 + a3);
        v42 = (v42 + v7);
        v39 = 1;
        goto LABEL_54;
      }

      if (!result)
      {
        if (v109)
        {
          if (v108)
          {
            v46 = 0;
            do
            {
              v47 = *&v42[2 * v46];
              *&v42[2 * v46] = *&v41[2 * v46];
              *&v41[2 * v46++] = v47;
            }

            while (v9 != v46);
          }

          else
          {
            v49 = 0;
            do
            {
              v50 = *(v42 + v49);
              *(v42 + v49) = *(v41 + v49);
              *(v41 + v49++) = v50;
            }

            while (a3 != v49);
          }
        }

        else
        {
          v48 = *v42;
          *v42 = *v41;
          *v41 = v48;
        }

        v41 = (v41 + v7);
        v39 = 1;
      }

      v42 = (v42 + v7);
    }

    v59 = v5 * a3;
    v60 = (v6 + v5 * a3);
    if (!v39)
    {
      break;
    }

    v61 = v43 - v40;
    if (v40 - v6 >= v43 - v40)
    {
      v62 = v43 - v40;
    }

    else
    {
      v62 = v40 - v6;
    }

    if (v62)
    {
      if (v108)
      {
        v63 = (v43 - v62);
        v64 = v62 >> 3;
        v65 = v6;
        do
        {
          v66 = *v65;
          *v65 = *v63;
          v65 += 2;
          *v63++ = v66;
          --v64;
        }

        while (v64);
      }

      else
      {
        v67 = -v62;
        v68 = v6;
        do
        {
          v69 = *v68;
          *v68 = *(v43 + v67);
          v68 = (v68 + 1);
          *(v43 + v67) = v69;
          v70 = __CFADD__(v67++, 1);
        }

        while (!v70);
      }
    }

    v71 = v41 - v42;
    if (v41 - v42 >= v60 - (v41 + a3))
    {
      v72 = v60 - (v41 + a3);
    }

    else
    {
      v72 = v41 - v42;
    }

    if (v72)
    {
      if (v108)
      {
        v73 = v60 - v72;
        v74 = v72 >> 3;
        do
        {
          v75 = *v43;
          *v43 = *v73;
          v43 += 2;
          *v73 = v75;
          v73 += 8;
          --v74;
        }

        while (v74);
      }

      else
      {
        v76 = -v72;
        do
        {
          v77 = *v43;
          *v43 = *(v60 + v76);
          v43 = (v43 + 1);
          *(v60 + v76) = v77;
          v70 = __CFADD__(v76++, 1);
        }

        while (!v70);
      }
    }

    if (v61 > a3)
    {
      result = mrec_qsort_r<DiskNgramContextQuadGroupCmp>(v6, v61 / a3, a3, a4);
    }

    if (v71 <= a3)
    {
      return result;
    }

    v6 = (v60 - v71);
    v5 = v71 / a3;
    v78 = v107;
    if (((v6 | a3) & 7) != 0)
    {
      v78 = 2;
    }

    v108 = ((v6 | a3) & 7) == 0;
    v109 = v78;
    if (v5 < 7)
    {
      goto LABEL_118;
    }
  }

  v92 = (v6 + a3);
  if (v59 > a3)
  {
    v93 = v6;
    do
    {
      if (v92 > v6)
      {
        v94 = v93;
        v95 = v92;
        do
        {
          v96 = v95;
          v95 = (v95 + v7);
          result = DiskNgramContextQuadGroupCmp::compareElements(result, v95, v96, a4);
          if (result < 1)
          {
            break;
          }

          if (v109)
          {
            if (v108)
            {
              v97 = 0;
              v98 = v95;
              do
              {
                v99 = *&v96[2 * v97];
                *&v96[2 * v97] = *v98;
                *v98 = v99;
                v98 += 2;
                ++v97;
              }

              while (v9 != v97);
            }

            else
            {
              v101 = 0;
              v102 = a3;
              do
              {
                v103 = *(v96 + v101);
                *(v96 + v101) = *(v94 + v101);
                *(v94 + v101++) = v103;
                --v102;
              }

              while (v102);
            }
          }

          else
          {
            v100 = *v96;
            *v96 = *v95;
            *v95 = v100;
          }

          v94 = (v94 + v7);
        }

        while (v95 > v6);
      }

      v92 = (v92 + a3);
      v93 = (v93 + a3);
    }

    while (v92 < v60);
  }

  return result;
}

uint64_t WordLanguageModel::loadPersistentAndIndex(WordLanguageModel *this)
{
  v54 = 0;
  v55 = 0;
  v2 = OpenAndReadMrecHeader(*(this + 5), 0x72u, 0, "LMWNGPER", &v55, &v54);
  if (v2)
  {
    v5 = **v2;
  }

  *(this + 28) = v2;
  v6 = v55 == 18 && v54 == 6;
  v7 = v6;
  if (v6)
  {
    v8 = 18;
    v9 = 6;
  }

  else
  {
    v10 = *(this + 5);
    if (*(v10 + 24))
    {
      v11 = *(v10 + 16);
    }

    else
    {
      v11 = &unk_26288CFB0;
    }

    MrecHeaderCheckVersions(v11, "LMWNGPER", v55, v54, 0x17u, 7u);
    v9 = v54;
    v8 = v55;
  }

  MrecHeaderCheckLatestVersionIfShared(*(this + 5), "LMWNGPER", v8, v9, 23, 7, v3, v4);
  v12 = *(this + 28);
  v56 = 0;
  (*(*v12 + 72))(v12, &v56, 4, 1);
  v13 = v56;
  v14 = *(this + 28);
  v56 = 0;
  (*(*v14 + 72))(v14, &v56, 4, 1);
  v15 = v56;
  v16 = *(this + 28);
  v56 = 0;
  (*(*v16 + 72))(v16, &v56, 4, 1);
  v17 = v56;
  *(this + 65) = (*(**(this + 28) + 48))(*(this + 28));
  v54 = 0;
  v55 = 0;
  v20 = OpenAndReadMrecHeader(*(this + 5), 0x71u, 1, "LMWNGIND", &v55, &v54);
  v21 = v54;
  if (v55 == 19 && v54 == 10)
  {
    v22 = 19;
  }

  else
  {
    v23 = *(this + 5);
    if (*(v23 + 24))
    {
      v24 = *(v23 + 16);
    }

    else
    {
      v24 = &unk_26288CFB0;
    }

    MrecHeaderCheckVersions(v24, "LMWNGIND", v55, v54, 0x17u, 0xBu);
    v21 = v54;
    v22 = v55;
  }

  MrecHeaderCheckLatestVersionIfShared(*(this + 5), "LMWNGIND", v22, v21, 23, 11, v18, v19);
  v56 = 0;
  (*(*v20 + 72))(v20, &v56, 4, 1);
  v25 = v56;
  v56 = 0;
  (*(*v20 + 72))(v20, &v56, 4, 1);
  v26 = v56;
  v56 = 0;
  (*(*v20 + 72))(v20, &v56, 4, 1);
  *(this + 64) = v56;
  if (v13 != v25 || v15 != v26)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8580, "lm/wordlm", 29, "%u %u %u %u", v27, v28, v13);
  }

  if (v13 != *(this + 66) || v15 != *(this + 67))
  {
    v53 = *(this + 66);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8589, "lm/wordlm", 30, "%.500s %u %u %u %u", v27, v28, "The specified voc and svc are mismatched.  Details:");
  }

  if (v17 != *(this + 64))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8593, "lm/wordlm", 69, "%u %u", v27, v28, v17);
  }

  v56 = 0;
  readObject(v20, this + 31, &v56);
  BigramData::loadBinary((this + 360), v20, &v56);
  WordLanguageModel::verifyBoWtForBiSc(this, v29, v30, v31, v32, v33, v34, v35);
  WordLanguageModel::throwOnBadBoWt(this, v36, v37, v38, v39, v40, v41, v42);
  if (*(this + 16) >= 3u)
  {
    TrigramData::loadBinary((this + 744), v20, &v56);
    WordLanguageModel::throwOnBadTriBoWt(this, v43, v44, v45, v46, v47, v48, v49);
    if (*(this + 16) >= 4u)
    {
      QuadgramData::loadBinary((this + 1232), v20, &v56);
    }
  }

  readObjectChecksumAndVerify(v20, v56);
  if (v26 != v56)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8611, "lm/wordlm", 31, "%u %u", v50, v51, v26);
  }

  DgnDelete<DgnStream>(v20);
  return v7;
}

void (***WordLanguageModel::reabsorbStaticLM(WordLanguageModel *this))(void)
{
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  LMStats::resetStats(v25);
  v22 = xmmword_26288CF80;
  v23 = 3;
  v24 = 1;
  if (*(this + 90))
  {
    v2 = *(this + 140);
    if (v2 >= 2)
    {
      for (i = 1; i < v2; ++i)
      {
        if (*(*(this + 69) + 2 * i) && *(this + 90) && (*(*(this + 50) + 4 * (i >> 5)) & (1 << i)) != 0 && (*(*(this + 52) + 4 * (i >> 5)) & (1 << i)) == 0)
        {
          WordLanguageModel::loadBigramRecord(this, i, v25, &v22);
          v2 = *(this + 140);
        }
      }
    }
  }

  BigramData::BigramData(v21);
  BigramData::fillInFullyLoadedBigramData((this + 360), v21);
  BigramData::copyBigramData(this + 45, v21);
  BigramData::~BigramData(v21);
  BigramData::compact((this + 360));
  if (*(this + 16) >= 3u)
  {
    if (*(this + 186))
    {
      v6 = *(this + 200);
      if (v6 >= 2)
      {
        for (j = 1; j < v6; ++j)
        {
          v8 = *(this + 99);
          v9 = *(v8 + 2 * j);
          if (*(v8 + 2 * j))
          {
            v10 = 0;
            do
            {
              v11 = v10 + *(*(this + 101) + 4 * j);
              if (*(*(this + 130) + 2 * v11) && *(this + 186) && (*(*(this + 111) + 4 * (v11 >> 5)) & (1 << v11)) != 0 && (*(*(this + 113) + 4 * (v11 >> 5)) & (1 << v11)) == 0)
              {
                WordLanguageModel::loadTrigramRecord(this, v4, v5, v11, v25, &v22);
              }

              ++v10;
            }

            while (v9 != v10);
            v6 = *(this + 200);
          }
        }
      }
    }

    TrigramData::TrigramData(v21);
    TrigramData::fillInFullyLoadedTrigramData((this + 744), v21);
    TrigramData::copyTrigramData((this + 744), v21);
    TrigramData::~TrigramData(v21);
    TrigramData::compact((this + 744));
    if (*(this + 16) > 3u)
    {
      if (*(this + 308))
      {
        v14 = *(this + 322);
        if (v14 >= 2)
        {
          for (k = 1; k < v14; ++k)
          {
            v16 = *(this + 160);
            v17 = *(v16 + 2 * k);
            if (*(v16 + 2 * k))
            {
              v18 = 0;
              do
              {
                v19 = v18 + *(*(this + 162) + 4 * k);
                if (*(*(this + 166) + 2 * v19) && *(this + 308) && (*(*(this + 168) + 4 * (v19 >> 5)) & (1 << v19)) != 0 && (*(*(this + 170) + 4 * (v19 >> 5)) & (1 << v19)) == 0)
                {
                  WordLanguageModel::loadQuadgramRecord(this, v12, v13, v19, v25, &v22);
                }

                ++v18;
              }

              while (v17 != v18);
              v14 = *(this + 322);
            }
          }
        }
      }

      QuadgramData::QuadgramData(v21);
      QuadgramData::fillInFullyLoadedQuadgramData((this + 1232), v21);
      QuadgramData::copyQuadgramData((this + 1232), v21);
      QuadgramData::~QuadgramData(v21);
      QuadgramData::compact((this + 1232));
    }
  }

  DgnDelete<DgnStream>(*(this + 28));
  *(this + 28) = 0;
  result = DgnDelete<RealDFile>(*(this + 5));
  *(this + 5) = 0;
  *(this + 33) = 0;
  return result;
}

void WordLanguageModel::loadBigramRecord(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  LoadSaveTracker::LoadSaveTracker(&v21);
  v19 = 0u;
  v20 = 0u;
  SnapTime::recordTime(&v19, 1, 0, 0, 0);
  (*(**(a1 + 224) + 24))(*(a1 + 224), *(*(a1 + 536) + 4 * a2));
  v17 = 0;
  v18 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14[0] = 0;
  v14[1] = 0;
  (*(**(a1 + 224) + 96))(*(a1 + 224), a4[2], *a4, 1);
  WordLanguageModel::readBigramRecord(a1, a2, &v17, v16, v15, v14);
  BigramData::allocLoaded(a1 + 360, a2);
  if (*(a1 + 376))
  {
    if (v18)
    {
      v8 = 0;
      do
      {
        BigramData::setSearchSuccIdForIndex(a1 + 360, a2, v8, *(v17 + 2 * v8));
        BigramData::setSearchQuantizedScoreForIndex(a1 + 360, a2, v8, *(v15[0] + v8));
        ++v8;
      }

      while (v8 < v18);
    }
  }

  else if (v18)
  {
    v9 = 0;
    do
    {
      BigramData::setSearchSuccIdForIndex(a1 + 360, a2, v9, *(v17 + 2 * v9));
      BigramData::setSearchScoreForIndex(a1 + 360, a2, v9, *(v16[0] + 2 * v9));
      ++v9;
    }

    while (v9 < v18);
  }

  (*(**(a1 + 224) + 104))(*(a1 + 224), a4[1]);
  v12 = 0u;
  v13 = 0u;
  SnapTime::recordTime(&v12, 1, 0, 0, 0);
  v10 = v13;
  v11 = v20;
  *(a3 + 56) = vaddq_s64(vsubq_s64(v12, v19), *(a3 + 56));
  *(a3 + 72) = vaddq_s64(vsubq_s64(v10, v11), *(a3 + 72));
  v10.i32[0] = 1;
  v10.i32[1] = *(*(a1 + 552) + 2 * a2);
  *(a3 + 8) = vadd_s32(*(a3 + 8), *v10.i8);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v14);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v15);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v17);
  LoadSaveTracker::~LoadSaveTracker(&v21);
}

void sub_2627A0AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  va_copy(va3, va2);
  v13 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  LoadSaveTracker::~LoadSaveTracker((v5 - 49));
  _Unwind_Resume(a1);
}

void WordLanguageModel::loadTrigramRecord(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int *a6)
{
  LoadSaveTracker::LoadSaveTracker(&v23);
  v21 = 0u;
  v22 = 0u;
  SnapTime::recordTime(&v21, 1, 0, 0, 0);
  (*(**(a1 + 224) + 24))(*(a1 + 224), *(*(a1 + 1024) + 4 * a4));
  v19 = 0;
  v20 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v17[0] = 0;
  v17[1] = 0;
  v16[0] = 0;
  v16[1] = 0;
  (*(**(a1 + 224) + 96))(*(a1 + 224), a6[3], *a6, *(a6 + 20));
  WordLanguageModel::readTrigramRecord(a1, a4, &v19, v18, v17, v16);
  TrigramData::allocLoaded(a1 + 744, a4);
  if (*(a1 + 784))
  {
    if (v20)
    {
      v10 = 0;
      do
      {
        TrigramData::setSearchSuccIdForIndex(a1 + 744, a4, v10, *(v19 + 2 * v10));
        TrigramData::setSearchQuantizedScoreForIndex(a1 + 744, a4, v10, *(v17[0] + v10));
        ++v10;
      }

      while (v10 < v20);
    }
  }

  else if (v20)
  {
    v11 = 0;
    do
    {
      TrigramData::setSearchSuccIdForIndex(a1 + 744, a4, v11, *(v19 + 2 * v11));
      TrigramData::setSearchScoreForIndex(a1 + 744, a4, v11, *(v18[0] + 2 * v11));
      ++v11;
    }

    while (v11 < v20);
  }

  (*(**(a1 + 224) + 104))(*(a1 + 224), a6[1]);
  v14 = 0u;
  v15 = 0u;
  SnapTime::recordTime(&v14, 1, 0, 0, 0);
  v12 = v15;
  v13 = v22;
  *(a5 + 88) = vaddq_s64(vsubq_s64(v14, v21), *(a5 + 88));
  *(a5 + 104) = vaddq_s64(vsubq_s64(v12, v13), *(a5 + 104));
  v12.i32[0] = 1;
  v12.i32[1] = *(*(a1 + 1040) + 2 * a4);
  *(a5 + 24) = vadd_s32(*(a5 + 24), *v12.i8);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v16);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v18);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v19);
  LoadSaveTracker::~LoadSaveTracker(&v23);
}

void sub_2627A0D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  va_copy(va3, va2);
  v13 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  LoadSaveTracker::~LoadSaveTracker((v5 - 49));
  _Unwind_Resume(a1);
}

void WordLanguageModel::loadQuadgramRecord(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int *a6)
{
  LoadSaveTracker::LoadSaveTracker(v47);
  v45 = 0u;
  v46 = 0u;
  SnapTime::recordTime(&v45, 1, 0, 0, 0);
  (*(**(a1 + 224) + 24))(*(a1 + 224), *(*(a1 + 1480) + 4 * a4));
  v44[0] = 0;
  v44[1] = 0;
  v42 = 0;
  v43 = 0;
  v41[0] = 0;
  v41[1] = 0;
  v40[0] = 0;
  v40[1] = 0;
  v39[0] = 0;
  v39[1] = 0;
  v38[0] = 0;
  v38[1] = 0;
  v37[0] = 0;
  v37[1] = 0;
  v36[0] = 0;
  v36[1] = 0;
  v35[0] = 0;
  v35[1] = 0;
  v34[0] = 0;
  v34[1] = 0;
  (*(**(a1 + 224) + 96))(*(a1 + 224), a6[4], *a6, *(a6 + 20));
  WordLanguageModel::readQuadgramRecord(a1, a4, v44, &v42, v41, v40, v39, v38, v37, v36, v35, v34);
  v10 = a1 + 1232;
  QuadgramData::allocLoaded(a1 + 1232, a4, v44);
  v11 = v43;
  if (*(a1 + 1256))
  {
    if (!v43)
    {
      goto LABEL_28;
    }

    v12 = 0;
    do
    {
      v13 = *(v42 + 2 * v12);
      v14 = *(*(a1 + 1480) + 4 * a4);
      if (*(a1 + 1232) && (*(*(a1 + 1344) + 4 * (a4 >> 5)) & (1 << a4)) != 0)
      {
        LODWORD(v14) = *(*(a1 + 1656) + 4 * v14);
        *(*(a1 + 1672) + 2 * (v12 + v14)) = v13;
        v15 = (v39[0] + v12);
        v16 = 472;
      }

      else
      {
        *(*(a1 + 1496) + 2 * (v12 + v14)) = v13;
        v15 = (v39[0] + v12);
        v16 = 312;
      }

      *(*(v10 + v16) + (v14 + v12++)) = *v15;
    }

    while (v12 < v43);
    if (!v43)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (!v43)
    {
      goto LABEL_28;
    }

    v17 = 0;
    v18 = *(*(a1 + 1480) + 4 * a4);
    v19 = v42;
    v20 = *(a1 + 1232);
    v21 = v40[0];
    do
    {
      v22 = *(v19 + 2 * v17);
      if (v20 && (*(*(a1 + 1344) + 4 * (a4 >> 5)) & (1 << a4)) != 0)
      {
        v23 = *(*(a1 + 1656) + 4 * v18);
        *(*(a1 + 1672) + 2 * (v17 + v23)) = v22;
        v24 = 456;
      }

      else
      {
        *(*(a1 + 1496) + 2 * (v18 + v17)) = v22;
        v24 = 296;
        v23 = v18;
      }

      *(*(v10 + v24) + 2 * (v23 + v17)) = *(v21 + 2 * v17);
      ++v17;
    }

    while (v11 != v17);
  }

  v25 = 0;
  v26 = 0;
  do
  {
    LODWORD(v27) = *(v44[0] + 2 * v25);
    if (*(a1 + 1272))
    {
      if (*(v44[0] + 2 * v25))
      {
        v28 = 0;
        do
        {
          QuadgramData::setQuad3SuccIdForIndex(a1 + 1232, a4, v25, v28, *(v41[0] + 2 * (v26 + v28)));
          QuadgramData::setQuantizedScoreForIndex(a1 + 1232, a4, v25, v28, *(v37[0] + (v26 + v28)));
          ++v28;
          v27 = *(v44[0] + 2 * v25);
        }

        while (v28 < v27);
      }
    }

    else if (*(v44[0] + 2 * v25))
    {
      v29 = 0;
      do
      {
        QuadgramData::setQuad3SuccIdForIndex(a1 + 1232, a4, v25, v29, *(v41[0] + 2 * (v26 + v29)));
        QuadgramData::setScoreForIndex(a1 + 1232, a4, v25, v29, *(v38[0] + 2 * (v26 + v29)));
        ++v29;
        v27 = *(v44[0] + 2 * v25);
      }

      while (v29 < v27);
    }

    v26 += v27;
    *(a5 + 44) += v27;
    ++v25;
  }

  while (v25 < v43);
LABEL_28:
  (*(**(a1 + 224) + 104))(*(a1 + 224), a6[1]);
  v32 = 0u;
  v33 = 0u;
  SnapTime::recordTime(&v32, 1, 0, 0, 0);
  v30 = v33;
  v31 = v46;
  *(a5 + 120) = vaddq_s64(vsubq_s64(v32, v45), *(a5 + 120));
  *(a5 + 136) = vaddq_s64(vsubq_s64(v30, v31), *(a5 + 136));
  ++*(a5 + 40);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v34);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v35);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v36);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v37);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v38);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v39);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v40);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v41);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v42);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v44);
  LoadSaveTracker::~LoadSaveTracker(v47);
}

void sub_2627A11FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a17);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a19);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a21);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a23);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a25);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a27);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a29);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&a31);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v31 - 160);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v31 - 144);
  LoadSaveTracker::~LoadSaveTracker((v31 - 89));
  _Unwind_Resume(a1);
}

void WordLanguageModel::setLMScale(WordLanguageModel *this, unsigned int a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(this + 5))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 8946, "lm/wordlm", 21, "%s", a9, a10, &errStr_lm_wordlm_E_LMSCALE_ON_DISK);
  }

  v12 = a2;
  LODWORD(a4) = *(this + 8);
  v13 = *&a4;
  v14 = a2 / v13;
  v15 = *(this + 16);
  if (v15 >= 4)
  {
    v16 = *(this + 318);
    if (v16)
    {
      v74 = 0;
      v75 = 0;
      DgnPrimArray<unsigned short>::copyArraySlice(&v74, this + 158, 0, v16);
      v17 = v75;
      if (v75)
      {
        v18 = v74;
        v19 = v75;
        do
        {
          v20 = *v18;
          if (v20 != 20000)
          {
            *v18 = (v20 * v14 + 0.5);
          }

          ++v18;
          --v19;
        }

        while (v19);
      }

      DgnPrimArray<unsigned short>::copyArraySlice(this + 1264, &v74, 0, v17);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v74);
    }

    else
    {
      v21 = *(this + 400);
      if (v21)
      {
        v22 = *(this + 199);
        v12 = 0.5;
        do
        {
          v23 = *v22;
          if (v23 != 20000)
          {
            v13 = v23 * v14 + 0.5;
            *v22 = v13;
          }

          ++v22;
          --v21;
        }

        while (v21);
      }
    }

    v24 = *(this + 314);
    if (v24)
    {
      v74 = 0;
      v75 = 0;
      DgnPrimArray<unsigned short>::copyArraySlice(&v74, this + 156, 0, v24);
      v25 = v75;
      if (v75)
      {
        v26 = v74;
        v27 = v75;
        do
        {
          v28 = *v26;
          if (v28 != 20000)
          {
            *v26 = (v28 * v14 + 0.5);
          }

          ++v26;
          --v27;
        }

        while (v27);
      }

      DgnPrimArray<unsigned short>::copyArraySlice(this + 1248, &v74, 0, v25);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v74);
    }

    else
    {
      v29 = *(this + 384);
      if (v29)
      {
        v30 = *(this + 191);
        v12 = 0.5;
        do
        {
          v31 = *v30;
          if (v31 != 20000)
          {
            v13 = v31 * v14 + 0.5;
            *v30 = v13;
          }

          ++v30;
          --v29;
        }

        while (v29);
      }
    }

    v15 = *(this + 16);
  }

  if (v15 >= 3)
  {
    v32 = *(this + 196);
    if (v32)
    {
      v74 = 0;
      v75 = 0;
      DgnPrimArray<unsigned short>::copyArraySlice(&v74, this + 97, 0, v32);
      v33 = v75;
      if (v75)
      {
        v34 = v74;
        v35 = v75;
        do
        {
          v36 = *v34;
          if (v36 != 20000)
          {
            *v34 = (v36 * v14 + 0.5);
          }

          ++v34;
          --v35;
        }

        while (v35);
      }

      DgnPrimArray<unsigned short>::copyArraySlice(this + 776, &v74, 0, v33);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v74);
    }

    else
    {
      v37 = *(this + 200);
      if (v37 >= 2)
      {
        v38 = *(this + 99);
        for (i = 1; i < v37; ++i)
        {
          if (*(v38 + 2 * i))
          {
            v40 = *(v38 + 2 * i);
            v41 = 0;
            do
            {
              v42 = v41 + *(*(this + 101) + 4 * i);
              if (*(*(this + 103) + 2 * v42) != -1)
              {
                TrigramData::rescaleScores(this + 93, v42, v14);
                v38 = *(this + 99);
              }

              ++v41;
            }

            while (v41 < *(v38 + 2 * i));
            v37 = *(this + 200);
          }
        }
      }
    }

    v43 = *(this + 192);
    if (v43)
    {
      v74 = 0;
      v75 = 0;
      DgnPrimArray<unsigned short>::copyArraySlice(&v74, this + 95, 0, v43);
      v44 = v75;
      if (v75)
      {
        v45 = v74;
        v46 = v75;
        do
        {
          v47 = *v45;
          if (v47 != 20000)
          {
            *v45 = (v47 * v14 + 0.5);
          }

          ++v45;
          --v46;
        }

        while (v46);
      }

      DgnPrimArray<unsigned short>::copyArraySlice(this + 760, &v74, 0, v44);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v74);
    }

    else
    {
      v48 = *(this + 200);
      if (v48 >= 2)
      {
        v49 = *(this + 99);
        v50 = 1;
        v12 = 0.5;
        do
        {
          v51 = *(v49 + 2 * v50);
          if (v51)
          {
            v52 = 0;
            v53 = *(*(this + 101) + 4 * v50);
            v54 = *(this + 103);
            do
            {
              v55 = v53;
              if (*(v54 + 2 * v53) != -1)
              {
                v56 = *(this + 105);
                v57 = *(v56 + 2 * v55);
                if (v57 != 20000)
                {
                  v13 = v57 * v14 + 0.5;
                  *(v56 + 2 * v55) = v13;
                  v51 = *(v49 + 2 * v50);
                }
              }

              ++v52;
              v53 = v55 + 1;
            }

            while (v52 < v51);
          }

          ++v50;
        }

        while (v50 != v48);
      }
    }
  }

  if (*(this + 16) >= 2u)
  {
    v58 = *(this + 84);
    if (v58)
    {
      v59 = *(this + 41);
      v12 = 0.5;
      do
      {
        v60 = *v59;
        if (v60 != 20000)
        {
          v13 = v60 * v14 + 0.5;
          *v59 = v13;
        }

        ++v59;
        --v58;
      }

      while (v58);
    }

    v61 = *(this + 88);
    if (v61)
    {
      v62 = *(this + 43);
      v12 = 0.5;
      do
      {
        v63 = *v62;
        if (v63 != 20000)
        {
          v13 = v63 * v14 + 0.5;
          *v62 = v13;
        }

        ++v62;
        --v61;
      }

      while (v61);
    }

    v64 = *(this + 94);
    if (v64)
    {
      v74 = 0;
      v75 = 0;
      DgnPrimArray<unsigned short>::copyArraySlice(&v74, this + 46, 0, v64);
      v65 = v75;
      if (v75)
      {
        v66 = v74;
        v67 = v75;
        do
        {
          v68 = *v66;
          if (v68 != 20000)
          {
            *v66 = (v68 * v14 + 0.5);
          }

          ++v66;
          --v67;
        }

        while (v67);
      }

      DgnPrimArray<unsigned short>::copyArraySlice(this + 368, &v74, 0, v65);
      DgnPrimArray<unsigned int>::~DgnPrimArray(&v74);
    }

    else
    {
      v69 = *(this + 140);
      if (v69 >= 2)
      {
        for (j = 1; j < v69; ++j)
        {
          if (*(*(this + 69) + 2 * j))
          {
            BigramData::rescaleScores(this + 45, j, v14);
            v69 = *(this + 140);
          }
        }
      }
    }
  }

  v71 = *(this + 44);
  if (v71)
  {
    v72 = *(this + 21);
    v12 = 0.5;
    do
    {
      v73 = *v72;
      if (v73 != 20000)
      {
        v13 = v73 * v14 + 0.5;
        *v72 = v13;
      }

      ++v72;
      --v71;
    }

    while (v71);
  }

  *(this + 8) = a2;
  WordLanguageModel::initializeScoreToProb(this, v12, v13);
}

void sub_2627A1800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

void *TrigramData::rescaleScores(void *this, unsigned int a2, double a3)
{
  v3 = *(this[37] + 2 * a2);
  if (*(this[37] + 2 * a2))
  {
    if ((*(this[16] + 4 * (a2 >> 5)) >> a2))
    {
      v4 = *(this[35] + 4 * a2);
      v5 = (v4 + v3);
      if (v5 > v4)
      {
        v6 = v5 - v4;
        v7 = (this[39] + 2 * v4);
        do
        {
          v8 = *v7;
          if (v8 != 20000)
          {
            *v7 = (v8 * a3 + 0.5);
          }

          ++v7;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v9 = this[35];
      v10 = *(v9 + 4 * a2);
      if (v3 == 1)
      {
        v11 = v10 & 0xFFFF0000;
        if (*(v9 + 4 * a2) == 20000)
        {
          v12 = 20000;
        }

        else
        {
          v12 = (*(v9 + 4 * a2) * a3 + 0.5);
        }

        *(v9 + 4 * a2) = v12 | v11;
      }

      else
      {
        v13 = (v10 + v3);
        if (v13 > v10)
        {
          v14 = v13 - v10;
          v15 = (this[45] + 2 * v10);
          do
          {
            v16 = *v15;
            if (v16 != 20000)
            {
              *v15 = (v16 * a3 + 0.5);
            }

            ++v15;
            --v14;
          }

          while (v14);
        }
      }
    }
  }

  return this;
}

void *BigramData::rescaleScores(void *this, unsigned int a2, double a3)
{
  v3 = *(this[24] + 2 * a2);
  if (*(this[24] + 2 * a2))
  {
    if ((*(this[3] + 4 * (a2 >> 5)) >> a2))
    {
      v4 = *(this[22] + 4 * a2);
      v5 = (v4 + v3);
      if (v5 > v4)
      {
        v6 = v5 - v4;
        v7 = (this[26] + 2 * v4);
        do
        {
          v8 = *v7;
          if (v8 != 20000)
          {
            *v7 = (v8 * a3 + 0.5);
          }

          ++v7;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      v9 = this[22];
      v10 = *(v9 + 4 * a2);
      if (v3 == 1)
      {
        v11 = v10 & 0xFFFF0000;
        if (*(v9 + 4 * a2) == 20000)
        {
          v12 = 20000;
        }

        else
        {
          v12 = (*(v9 + 4 * a2) * a3 + 0.5);
        }

        *(v9 + 4 * a2) = v12 | v11;
      }

      else
      {
        v13 = (v10 + v3);
        if (v13 > v10)
        {
          v14 = v13 - v10;
          v15 = (this[32] + 2 * v10);
          do
          {
            v16 = *v15;
            if (v16 != 20000)
            {
              *v15 = (v16 * a3 + 0.5);
            }

            ++v15;
            --v14;
          }

          while (v14);
        }
      }
    }
  }

  return this;
}

BOOL WordLanguageModel::hasRecentBuffer(WordLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2 && ((*(*v2 + 120))(v2) & 1) != 0)
  {
    return 1;
  }

  return LanguageModel::hasRecentBuffer(this);
}

uint64_t WordLanguageModel::getRecentBufferLength(WordLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    v3 = (*(*v2 + 128))(v2);
  }

  else
  {
    v3 = 0;
  }

  LODWORD(result) = LanguageModel::getRecentBufferLength(this);
  if (v3 <= result)
  {
    return result;
  }

  else
  {
    return v3;
  }
}

WordLanguageModel ***WordLanguageModel::addToRecent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 232);
  if (v6)
  {
    (*(*v6 + 136))(v6, a2, a3);
  }

  return LanguageModel::addToRecent(a1, a2, a3);
}

void WordLanguageModel::clearRecent(WordLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    (*(*v2 + 144))(v2);
  }

  LanguageModel::clearRecent(this);
}

uint64_t WordLanguageModel::checkWordIdLmIdValidityAgreement(WordLanguageModel *this, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 32))
  {
    v11 = *(*(this + 15) + 4 * a2);
    if (a3)
    {
LABEL_3:
      if (v11 == -1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9154, "lm/wordlm", 50, "%u %u", a7, a8, a2);
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (*(this + 36))
    {
      v11 = *(*(this + 17) + 2 * a2);
      v12 = v11 == 0xFFFF;
    }

    else
    {
      v11 = *(*(this + 19) + a2);
      v12 = v11 == 255;
    }

    if (v12)
    {
      v11 = -1;
    }

    if (a3)
    {
      goto LABEL_3;
    }
  }

  if (v11 != -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9159, "lm/wordlm", 51, "%u %u", a7, a8, a2);
  }

LABEL_14:
  if (*(this + 276) != 1)
  {
    goto LABEL_28;
  }

  if (*(this + 72))
  {
    v13 = *(*(this + 35) + 4 * a2);
    if (a3)
    {
LABEL_17:
      if (v13 == -1)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9169, "lm/wordlm", 63, "%u %u", a7, a8, a2);
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (*(this + 76))
    {
      v13 = *(*(this + 37) + 2 * a2);
      v14 = v13 == 0xFFFF;
    }

    else
    {
      v13 = *(*(this + 39) + a2);
      v14 = v13 == 255;
    }

    if (v14)
    {
      v13 = -1;
    }

    if (a3)
    {
      goto LABEL_17;
    }
  }

  if (v13 != -1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9175, "lm/wordlm", 64, "%u %u", a7, a8, a2);
  }

LABEL_28:
  result = *(this + 29);
  if (result)
  {
    v16 = *(*result + 208);

    return v16();
  }

  return result;
}

void WordLanguageModel::verifyUnigrams(WordLanguageModel *this, const char *a2)
{
  v2 = *(this + 26);
  if (v2 >= 2)
  {
    v3 = a2;
    v5 = *(this + 14) - 1;
    for (i = 1; i < v2; ++i)
    {
      v7 = *(*(this + 21) + 2 * i);
      if (v7 != 20000 && v5 < v7)
      {
        WordLanguageModel::getLmIdWordName(this, i, 0);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9242, "lm/wordlm", 74, "%.500s %u %d %d %.500s", v9, v10, v3);
        v2 = *(this + 26);
      }
    }
  }
}

const char *WordLanguageModel::getLmIdWordName(WordLanguageModel *this, int a2, int a3)
{
  WordId = WordLanguageModel::getWordId(this, a2, a3);
  v6 = *(this + 2);
  if (*(v6 + 388) > WordId && *(*(v6 + 104) + WordId))
  {
    return (*(v6 + 224) + *(*(v6 + 200) + 4 * WordId));
  }

  if (a2 == -1)
  {
    return "INVALID_LMID";
  }

  v8 = "END_CONTEXT";
  v9 = "UNKNOWN";
  if (!a2)
  {
    v9 = "ZERO_LMID";
  }

  v10 = *(this + 29);
  if (a2 == -2)
  {
    v9 = "NO_CONTEXT_LMID";
  }

  if (v10 != a2)
  {
    v8 = v9;
  }

  v11 = "STARTEND_CONTEXT";
  if (v10 != a2)
  {
    v11 = "START_CONTEXT";
  }

  if (*(this + 28) == a2)
  {
    return v11;
  }

  else
  {
    return v8;
  }
}

uint64_t WordLanguageModel::verifyLM(WordLanguageModel *this, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v11 = *(*(this + 2) + 388);
    if (v11)
    {
      for (i = 0; i != v11; ++i)
      {
        v13 = *(this + 2);
        v14 = i < *(v13 + 388) && *(*(v13 + 104) + i) != 0;
        (*(*this + 208))(this, i, v14);
      }
    }
  }

  WordLanguageModel::checkWordListLMAgreement(this, a2, a3, a4, a5, a6, a7, a8);
  WordLanguageModel::verifyUnigrams(this, a3);
  if (*(this + 16) >= 2u)
  {
    v21 = *(this + 29);
    if (v21)
    {
      (*(*v21 + 216))(v21, a2, a3);
    }

    WordLanguageModel::verifyBackoffUnigrams(this, a3, v15, v16, v17, v18, v19, v20);
    WordLanguageModel::verifyBigrams(this, a3, v22, v23, v24, v25, v26, v27);
    if (*(this + 16) >= 3u)
    {
      WordLanguageModel::verifyTrigrams(this, a3, v28, v29, v30, v31, v32, v33);
      if (*(this + 16) >= 4u)
      {
        WordLanguageModel::verifyQuadgrams(this, a3, v34, v35, v36, v37, v38, v39);
      }
    }
  }

  result = *(this + 1);
  if (result)
  {

    return MrecInitModule_sdpres_sdapi();
  }

  return result;
}

void WordLanguageModel::verifyBackoffUnigrams(WordLanguageModel *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 26) >= 2u)
  {
    v8 = a2;
    v10 = *(this + 14);
    v11 = v10 - 1;
    v12 = 1;
    v31 = 1 - v10;
    while (1)
    {
      v13 = 328;
      if (!*(this + 84))
      {
        v13 = 168;
      }

      v14 = *(*(this + v13) + 2 * v12);
      v15 = *(*(this + 21) + 2 * v12);
      v16 = *(*(this + 43) + 2 * v12);
      v17 = v16;
      if (v14 != 20000 && v15 != 20000 && v16 != 20000)
      {
        goto LABEL_18;
      }

      if (v14 != 20000 || v15 != 20000)
      {
        break;
      }

LABEL_30:
      if (v17 != 20000 && (v31 > v17 || v11 < v17))
      {
        WordLanguageModel::getLmIdWordName(this, v12, 0);
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9333, "lm/wordlm", 75, "%.500s %u %d %d %.500s", v28, v29, v8);
      }

      if (++v12 >= *(this + 26))
      {
        return;
      }
    }

    v30 = *(*(this + 21) + 2 * v12);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9312, "lm/wordlm", 72, "%.500s %u %d %d %d", a7, a8, v8);
LABEL_18:
    if (v14 != 20000 && v11 < v14)
    {
      WordLanguageModel::getLmIdWordName(this, v12, 0);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9320, "lm/wordlm", 73, "%.500s %u %d %d %.500s", v22, v23, v8);
    }

    if (v15 != 20000 && v11 < v15)
    {
      WordLanguageModel::getLmIdWordName(this, v12, 0);
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9326, "lm/wordlm", 74, "%.500s %u %d %d %.500s", v25, v26, v8);
    }

    goto LABEL_30;
  }
}

void WordLanguageModel::verifyBigrams(WordLanguageModel *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a2;
  if (*(this + 140) >= 2u)
  {
    v40 = *(this + 14) - 1;
    v9 = (this + 360);
    for (i = 1; i < *(this + 140); ++i)
    {
      if (*(*(this + 69) + 2 * i))
      {
        if (*(*(this + 43) + 2 * i) == 20000)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9353, "lm/wordlm", 81, "%.500s %u", a7, a8, v39);
        }

        v11 = i >> 5;
        if (!*v9)
        {
          v12 = 1 << i;
LABEL_11:
          v13 = i;
LABEL_12:
          v14 = *(*(this + 48) + 4 * v11);
          v15 = *(*(this + 69) + 2 * i);
          if ((v14 & v12) != 0)
          {
            v16 = *(this + 26);
            if (v16 > v15)
            {
              v17 = v15 + 1;
            }

            else
            {
              v17 = v16;
            }

            if (v17 >= 2)
            {
              for (j = 1; j != v17; ++j)
              {
                v19 = 328;
                if (!*(this + 84))
                {
                  v19 = 168;
                }

                v20 = *(*(this + v19) + 2 * j);
                if (v20 != 20000)
                {
                  v21 = *(*(this + 67) + 4 * i) + j - 1;
                  if (*(this + 94))
                  {
                    v21 = *(*(this + 73) + v21);
                    v22 = *(this + 46);
                  }

                  else
                  {
                    v22 = *(this + 71);
                  }

                  v23 = *(v22 + 2 * v21);
                  if (v23 != 20000 && *(*(this + 43) + 2 * i) + v20 != v23 && v40 < v23)
                  {
                    WordLanguageModel::getLmIdWordName(this, v13, 1);
                    WordLanguageModel::getLmIdWordName(this, j, 0);
                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9394, "lm/wordlm", 79, "%.500s %u %u %d %.500s %.500s", v25, v26, v39);
                  }
                }
              }
            }
          }

          else
          {
            v27 = v15 - 1;
            while (1)
            {
              v28 = v27;
              if (!v27)
              {
                break;
              }

              SearchSuccIdForIndex = BigramData::getSearchSuccIdForIndex(v9, v13, v27);
              v27 = v28 - 1;
              if (*(this + 26) > SearchSuccIdForIndex)
              {
                goto LABEL_38;
              }
            }

            if (*(this + 26) <= BigramData::getSearchSuccIdForIndex(v9, v13, 0))
            {
              continue;
            }

LABEL_38:
            v30 = 0;
            do
            {
              v31 = BigramData::getSearchSuccIdForIndex(v9, v13, v30);
              v32 = 328;
              if (!*(this + 84))
              {
                v32 = 168;
              }

              if (*(*(this + v32) + 2 * v31) != 20000)
              {
                v33 = v31;
                SearchScoreForIndex = BigramData::getSearchScoreForIndex(v9, v13, v30);
                if (SearchScoreForIndex != 20000)
                {
                  v35 = 328;
                  if (!*(this + 84))
                  {
                    v35 = 168;
                  }

                  if (*(*(this + 43) + 2 * i) + *(*(this + v35) + 2 * v33) != SearchScoreForIndex && v40 < SearchScoreForIndex)
                  {
                    WordLanguageModel::getLmIdWordName(this, v13, 1);
                    WordLanguageModel::getLmIdWordName(this, v33, 0);
                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9449, "lm/wordlm", 80, "%.500s %u %u %d %.500s %.500s", v37, v38, v39);
                  }
                }
              }

              ++v30;
            }

            while (v30 <= v28);
          }

          continue;
        }

        v12 = 1 << i;
        if ((*(*(this + 50) + 4 * v11) & (1 << i)) == 0)
        {
          goto LABEL_11;
        }

        v13 = i;
        if ((*(*(this + 52) + 4 * v11) & v12) != 0)
        {
          goto LABEL_12;
        }
      }
    }
  }
}

void WordLanguageModel::verifyTrigrams(WordLanguageModel *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a2;
  if (*(this + 200) >= 2u)
  {
    v40 = *(this + 14) - 1;
    v9 = *(this + 99);
    v10 = 1;
    do
    {
      if (*(v9 + 2 * v10))
      {
        if (*(*(this + 43) + 2 * v10) == 20000)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9470, "lm/wordlm", 82, "%.500s %u", a7, a8, v38);
          v9 = *(this + 99);
        }

        if (*(v9 + 2 * v10))
        {
          v11 = 0;
          *v39 = v10;
          do
          {
            v12 = *(*(this + 101) + 4 * v10) + v11;
            v13 = v12 >> 5;
            if ((!*(this + 186) || (*(*(this + 111) + 4 * v13) & (1 << (*(*(this + 101) + 4 * v10) + v11))) == 0 || (*(*(this + 113) + 4 * v13) & (1 << (*(*(this + 101) + 4 * v10) + v11))) != 0) && *(*(this + 103) + 2 * v12) != -1)
            {
              v14 = *(*(this + 109) + 4 * v13);
              v15 = *(this + 130);
              v16 = *(v15 + 2 * v12);
              if ((v14 >> (*(*(this + 101) + 4 * v10) + v11)))
              {
                if (*(v15 + 2 * v12))
                {
                  v17 = 1;
                  v18 = 1;
                  do
                  {
                    if (*(*(this + 21) + 2 * v18) != 20000)
                    {
                      v19 = (v17 + *(*(this + 128) + 4 * v12) - 1);
                      if (*(this + 196))
                      {
                        v19 = *(*(this + 134) + v19);
                        v20 = *(this + 97);
                      }

                      else
                      {
                        v20 = *(this + 132);
                      }

                      v21 = *(v20 + 2 * v19);
                      if (v21 != 20000 && v40 < v21)
                      {
                        v23 = *(*(this + 103) + 2 * v12);
                        WordLanguageModel::getLmIdWordName(this, v39[0], 1);
                        WordLanguageModel::getLmIdWordName(this, v23, 1);
                        WordLanguageModel::getLmIdWordName(this, v17, 0);
                        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9505, "lm/wordlm", 76, "%.500s %u %u %u %d %.500s %.500s %.500s", v24, v25, v38);
                        v15 = *(this + 130);
                      }
                    }

                    v17 = ++v18;
                  }

                  while (v18 <= *(v15 + 2 * v12));
                }
              }

              else if (*(v15 + 2 * v12))
              {
                v26 = 0;
                do
                {
                  SearchSuccIdForIndex = TrigramData::getSearchSuccIdForIndex((this + 744), v12, v26);
                  if (*(*(this + 21) + 2 * SearchSuccIdForIndex) != 20000)
                  {
                    v28 = SearchSuccIdForIndex;
                    if (*(this + 192))
                    {
                      v29 = (*(this + 95) + 2 * *(*(this + 107) + v12));
                    }

                    else
                    {
                      v29 = (*(this + 105) + 2 * v12);
                    }

                    v30 = *(*(this + 103) + 2 * v12);
                    v31 = *(*(this + 43) + 2 * v30) + *v29;
                    v32 = 328;
                    if (!*(this + 84))
                    {
                      v32 = 168;
                    }

                    v33 = v31 + *(*(this + v32) + 2 * SearchSuccIdForIndex);
                    SearchScoreForIndex = TrigramData::getSearchScoreForIndex((this + 744), v12, v26);
                    if (v33 != SearchScoreForIndex && v40 < SearchScoreForIndex)
                    {
                      WordLanguageModel::getLmIdWordName(this, v39[0], 1);
                      WordLanguageModel::getLmIdWordName(this, v30, 1);
                      WordLanguageModel::getLmIdWordName(this, v28, 0);
                      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9539, "lm/wordlm", 77, "%.500s %u %u %u %d %.500s %.500s %.500s", v36, v37, v38);
                    }
                  }

                  ++v26;
                }

                while (v26 < *(*(this + 130) + 2 * v12));
              }
            }

            ++v11;
            v9 = *(this + 99);
            v10 = *v39;
          }

          while (v11 < *(v9 + 2 * *v39));
        }
      }

      ++v10;
    }

    while (v10 < *(this + 200));
  }
}

void WordLanguageModel::verifyQuadgrams(WordLanguageModel *this, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a2;
  if (*(this + 322) >= 2u)
  {
    v9 = *(this + 14) - 1;
    v10 = (this + 1232);
    v11 = *(this + 160);
    v35 = 1;
    while (1)
    {
      if (*(v11 + 2 * v35))
      {
        if (*(*(this + 43) + 2 * v35) == 20000)
        {
          errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9561, "lm/wordlm", 83, "%.500s %u", a7, a8, v29);
          v11 = *(this + 160);
        }

        if (*(v11 + 2 * v35))
        {
          break;
        }
      }

LABEL_36:
      if (++v35 >= *(this + 322))
      {
        return;
      }
    }

    v12 = 0;
    v13 = *v10;
    while (1)
    {
      v14 = (*(*(this + 162) + 4 * v35) + v12);
      v32 = *(*(this + 164) + 2 * v14);
      if (v13 && (*(*(this + 168) + 4 * (v14 >> 5)) & (1 << v14)) != 0)
      {
        if ((*(*(this + 170) + 4 * (v14 >> 5)) & (1 << v14)) != 0 && v32 != 0xFFFF)
        {
LABEL_17:
          if (*(*(this + 166) + 2 * v14))
          {
            v28 = v12;
            v16 = 0;
            v17 = v14 >> 5;
            v36 = 1 << (*(*(this + 162) + 4 * v35) + v12);
            v18 = *(*(this + 185) + 4 * v14);
            v30 = v14 >> 5;
            v31 = (*(*(this + 162) + 4 * v35) + v12);
            do
            {
              if (v13 && (*(*(this + 168) + 4 * v17) & v36) != 0)
              {
                v19 = *(*(this + 207) + 4 * v18);
                v20 = 440;
              }

              else
              {
                v20 = 264;
                v19 = v18;
              }

              v21 = 0;
              v34 = *(*(v10 + v20) + 2 * (v19 + v16));
              v33 = v16;
              if (!v13)
              {
                goto LABEL_26;
              }

LABEL_24:
              if ((*(*(this + 168) + 4 * v17) & v36) != 0)
              {
                v22 = *(*(this + 207) + 4 * v18);
                v23 = 504;
                goto LABEL_27;
              }

LABEL_26:
              while (1)
              {
                v23 = 280;
                v22 = v18;
LABEL_27:
                if (v21 >= *(*(v10 + v23) + 2 * (v22 + v16)))
                {
                  break;
                }

                Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex(v10, v14, v16, v21);
                if (*(*(this + 21) + 2 * Quad3SuccIdForIndex) != 20000)
                {
                  v25 = Quad3SuccIdForIndex;
                  if (v9 < QuadgramData::getScoreForIndex(v10, v14, v16, v21))
                  {
                    WordLanguageModel::getLmIdWordName(this, v35, 1);
                    WordLanguageModel::getLmIdWordName(this, v32, 1);
                    WordLanguageModel::getLmIdWordName(this, v34, 1);
                    WordLanguageModel::getLmIdWordName(this, v25, 0);
                    v16 = v33;
                    v17 = v30;
                    v14 = v31;
                    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 9602, "lm/wordlm", 78, "%.500s %u %u %u %u %d %.500s %.500s %.500s %.500s", v26, v27, v29);
                  }
                }

                ++v21;
                v13 = *(this + 308);
                v18 = *(*(this + 185) + 4 * v14);
                if (v13)
                {
                  goto LABEL_24;
                }
              }

              ++v16;
            }

            while (v16 < *(*(this + 166) + 2 * v14));
            v11 = *(this + 160);
            v12 = v28;
          }
        }
      }

      else if (v32 != 0xFFFF)
      {
        goto LABEL_17;
      }

      if (++v12 >= *(v11 + 2 * v35))
      {
        goto LABEL_36;
      }
    }
  }
}

uint64_t WordLanguageModel::getNumLoadedBigramBytes(WordLanguageModel *this)
{
  result = *(this + 29);
  if (result)
  {
    result = (*(*result + 240))(result);
  }

  if (*(this + 16) >= 2u)
  {
    if (*(this + 90))
    {
      result += 4 * (*(this + 168) + *(this + 164) + *(this + 172)) + *(this + 184) + 2 * (*(this + 180) + *(this + 176));
    }
  }

  return result;
}

uint64_t WordLanguageModel::getNumLoadedTrigramBytes(WordLanguageModel *this)
{
  result = *(this + 29);
  if (result)
  {
    result = (*(*result + 248))(result);
  }

  if (*(this + 16) >= 3u)
  {
    if (*(this + 186))
    {
      result += 4 * (*(this + 290) + *(this + 286) + *(this + 294)) + *(this + 306) + 2 * (*(this + 302) + *(this + 298));
    }
  }

  return result;
}

uint64_t WordLanguageModel::getNumLoadedQuadgramBytes(WordLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    v3 = (*(*v2 + 256))(v2);
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 16) >= 4u && *(this + 308))
  {
    v3 += QuadgramData::sizeLoadedData((this + 1232));
  }

  return v3;
}

uint64_t WordLanguageModel::getNumInterpolatedLms(WordLanguageModel *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    return (*(*v2 + 568))();
  }

  else
  {
    return LanguageModel::getNumInterpolatedLms(this);
  }
}

uint64_t WordLanguageModel::setInterpolatedLmWeights(uint64_t a1)
{
  v1 = *(a1 + 232);
  if (v1)
  {
    return (*(*v1 + 576))();
  }

  else
  {
    return LanguageModel::setInterpolatedLmWeights();
  }
}

uint64_t WordLanguageModel::getInterpolatedLmWeights(WordLanguageModel *this, unsigned int *a2)
{
  v3 = *(this + 29);
  if (v3)
  {
    return (*(*v3 + 584))(v3, a2);
  }

  else
  {
    return LanguageModel::getInterpolatedLmWeights(this, a2);
  }
}

uint64_t WordLanguageModel::maybeUncompactWordIdToLmIdArray(uint64_t this, int a2)
{
  if ((a2 - 255) > 0xFFFFFEFF)
  {
    return this;
  }

  v3 = this;
  v4 = *(this + 160);
  if (v4)
  {
    v5 = *(this + 148);
    if (v4 <= v5)
    {
      *(this + 144) = v4;
      this = *(this + 152);
    }

    else
    {
      DgnPrimArray<short>::reallocElts(this + 136, v4 - v5, 0);
      v6 = *(v3 + 160);
      *(v3 + 144) = v4;
      this = *(v3 + 152);
      if (!v6)
      {
        if (!this)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v4 = v6;
    }

    v7 = 0;
    v8 = *(v3 + 136);
    do
    {
      v9 = *(this + v7);
      if (v9 == 255)
      {
        LOWORD(v9) = -1;
      }

      *(v8 + 2 * v7++) = v9;
    }

    while (v4 != v7);
LABEL_11:
    this = MemChunkFree(this, 0);
    *(v3 + 152) = 0;
LABEL_12:
    *(v3 + 160) = 0;
  }

  if ((a2 - 0xFFFF) <= 0xFFFEFFFF)
  {
    v10 = *(v3 + 144);
    if (v10)
    {
      v11 = *(v3 + 132);
      if (v10 <= v11)
      {
        *(v3 + 128) = v10;
        this = *(v3 + 136);
      }

      else
      {
        DgnPrimArray<unsigned int>::reallocElts(v3 + 120, v10 - v11, 0);
        v12 = *(v3 + 144);
        *(v3 + 128) = v10;
        this = *(v3 + 136);
        if (!v12)
        {
          if (!this)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }
      }

      v13 = 0;
      v14 = *(v3 + 120);
      do
      {
        v15 = *(this + 2 * v13);
        if (v15 == 0xFFFF)
        {
          v15 = -1;
        }

        *(v14 + 4 * v13++) = v15;
      }

      while (v13 < *(v3 + 144));
LABEL_24:
      this = MemChunkFree(this, 0);
      *(v3 + 136) = 0;
LABEL_25:
      *(v3 + 144) = 0;
    }
  }

  return this;
}