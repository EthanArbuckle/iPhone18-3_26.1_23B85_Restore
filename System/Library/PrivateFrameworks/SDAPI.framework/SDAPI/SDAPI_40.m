uint64_t WordLanguageModel::maybeUncompactWordIdToContextLmIdArray(uint64_t this, int a2)
{
  if ((a2 - 255) > 0xFFFFFEFF)
  {
    return this;
  }

  v3 = this;
  v4 = *(this + 320);
  if (v4)
  {
    v5 = *(this + 308);
    if (v4 <= v5)
    {
      *(this + 304) = v4;
      this = *(this + 312);
    }

    else
    {
      DgnPrimArray<short>::reallocElts(this + 296, v4 - v5, 0);
      v6 = *(v3 + 320);
      *(v3 + 304) = v4;
      this = *(v3 + 312);
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
    v8 = *(v3 + 296);
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
    *(v3 + 312) = 0;
LABEL_12:
    *(v3 + 320) = 0;
  }

  if ((a2 - 0xFFFF) <= 0xFFFEFFFF)
  {
    v10 = *(v3 + 304);
    if (v10)
    {
      v11 = *(v3 + 292);
      if (v10 <= v11)
      {
        *(v3 + 288) = v10;
        this = *(v3 + 296);
      }

      else
      {
        DgnPrimArray<unsigned int>::reallocElts(v3 + 280, v10 - v11, 0);
        v12 = *(v3 + 304);
        *(v3 + 288) = v10;
        this = *(v3 + 296);
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
      v14 = *(v3 + 280);
      do
      {
        v15 = *(this + 2 * v13);
        if (v15 == 0xFFFF)
        {
          v15 = -1;
        }

        *(v14 + 4 * v13++) = v15;
      }

      while (v13 < *(v3 + 304));
LABEL_24:
      this = MemChunkFree(this, 0);
      *(v3 + 296) = 0;
LABEL_25:
      *(v3 + 304) = 0;
    }
  }

  return this;
}

__n128 WordLanguageModel::fillInWordDummySpec(WordLanguageModel *this, __n128 *a2)
{
  a2->n128_u32[2] = *(this + 16);
  a2->n128_u64[0] = 0xBFF0000000000000;
  a2->n128_u8[12] = *(this + 80);
  a2->n128_u8[13] = *(this + 25) != -1;
  result = *(this + 84);
  a2[1] = result;
  return result;
}

void WordLanguageModel::addWord(WordLanguageModel *this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = *(this + 29);
  if (v6)
  {
    (*(*v6 + 360))(v6, a2, a3);
  }

  v7 = *(*(*(this + 2) + 256) + 4 * v4);
  if (v7 == v4)
  {
    if (v3 == 0xFFFFFF || (*(this + 80) & 1) == 0)
    {
      v8 = *(this + 18);
      v10 = *(this + 19);
    }

    else
    {
      if (*(this + 32))
      {
        v8 = *(*(this + 15) + 4 * v3);
      }

      else
      {
        if (*(this + 36))
        {
          v13 = *(*(this + 17) + 2 * v3);
          v14 = v13 == 0xFFFF;
        }

        else
        {
          v13 = *(*(this + 19) + v3);
          v14 = v13 == 255;
        }

        if (v14)
        {
          v8 = -1;
        }

        else
        {
          v8 = v13;
        }
      }

      if (*(this + 276) == 1)
      {
        if (*(this + 72))
        {
          v10 = *(*(this + 35) + 4 * v3);
        }

        else
        {
          if (*(this + 76))
          {
            v18 = *(*(this + 37) + 2 * v3);
            v19 = v18 == 0xFFFF;
          }

          else
          {
            v18 = *(*(this + 39) + v3);
            v19 = v18 == 255;
          }

          if (v19)
          {
            v10 = -1;
          }

          else
          {
            v10 = v18;
          }
        }
      }

      else
      {
        v10 = -1;
      }
    }

    WordLanguageModel::recordWordIdLmIdUsage(this, v4, v8);
    if (*(this + 276) == 1)
    {
      WordLanguageModel::recordWordIdContextLmIdUsage(this, v4, v10);
    }

    if (*(this + 54))
    {
      v20 = 0;
      do
      {
        RecentBuffer::addWordId(*(*(this + 26) + 8 * v20++), v4);
      }

      while (v20 < *(this + 54));
    }
  }

  else
  {
    if (*(this + 32))
    {
      v9 = *(*(this + 15) + 4 * v7);
    }

    else
    {
      if (*(this + 36))
      {
        v11 = *(*(this + 17) + 2 * v7);
        v12 = v11 == 0xFFFF;
      }

      else
      {
        v11 = *(*(this + 19) + v7);
        v12 = v11 == 255;
      }

      if (v12)
      {
        v9 = -1;
      }

      else
      {
        v9 = v11;
      }
    }

    WordLanguageModel::recordWordIdLmIdUsage(this, v4, v9);
    if (*(this + 276) == 1)
    {
      if (*(this + 72))
      {
        v15 = *(*(this + 35) + 4 * v7);
      }

      else
      {
        if (*(this + 76))
        {
          v16 = *(*(this + 37) + 2 * v7);
          v17 = v16 == 0xFFFF;
        }

        else
        {
          v16 = *(*(this + 39) + v7);
          v17 = v16 == 255;
        }

        if (v17)
        {
          v15 = -1;
        }

        else
        {
          v15 = v16;
        }
      }

      WordLanguageModel::recordWordIdContextLmIdUsage(this, v4, v15);
    }
  }
}

_DWORD *WordLanguageModel::addUnmappedWord(WordLanguageModel *this, uint64_t a2)
{
  v2 = a2;
  v4 = *(this + 29);
  if (v4)
  {
    (*(*v4 + 368))(v4, a2);
  }

  result = WordLanguageModel::recordWordIdInvalidLmIdUsage(this, v2);
  if (*(this + 276) == 1)
  {

    return WordLanguageModel::recordWordIdInvalidContextLmIdUsage(this, v2);
  }

  return result;
}

uint64_t WordLanguageModel::deleteWord(WordLanguageModel *this, unsigned int a2, BOOL *a3, BOOL *a4)
{
  if (*(this + 32))
  {
    *(*(this + 15) + 4 * a2) = -1;
  }

  else if (*(this + 36))
  {
    *(*(this + 17) + 2 * a2) = -1;
  }

  else
  {
    *(*(this + 19) + a2) = -1;
  }

  if (*(this + 276))
  {
    if (*(this + 72))
    {
      v8 = a2;
      *(*(this + 35) + 4 * a2) = -1;
    }

    else
    {
      v8 = a2;
      if (*(this + 76))
      {
        *(*(this + 37) + 2 * a2) = -1;
      }

      else
      {
        *(*(this + 39) + a2) = -1;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  if (*(*(*(this + 2) + 256) + 4 * v8) == a2 && *(this + 54))
  {
    v9 = 0;
    do
    {
      RecentBuffer::deleteWordId(*(*(this + 26) + 8 * v9++), a2, a3, a4);
    }

    while (v9 < *(this + 54));
  }

  result = *(this + 29);
  if (result)
  {
    v11 = *(*result + 376);

    return v11();
  }

  return result;
}

uint64_t WordLanguageModel::recomputeRecentBufferHeadClonesAndCommonWords(WordLanguageModel *this)
{
  if (*(this + 54))
  {
    v2 = 0;
    do
    {
      RecentBuffer::recomputeRecentBufferHeadClonesAndCommonWords(*(*(this + 26) + 8 * v2++));
    }

    while (v2 < *(this + 54));
  }

  result = *(this + 29);
  if (result)
  {
    v4 = *(*result + 384);

    return v4();
  }

  return result;
}

uint64_t WordLanguageModel::recomputeRecentBufferRemainders(WordLanguageModel *this)
{
  if (*(this + 54))
  {
    v2 = 0;
    do
    {
      RecentBuffer::recomputeRecentBufferRemainders(*(*(this + 26) + 8 * v2++));
    }

    while (v2 < *(this + 54));
  }

  result = *(this + 29);
  if (result)
  {
    v4 = *(*result + 392);

    return v4();
  }

  return result;
}

void *WordLanguageModel::notifyEmptiedWordList(WordLanguageModel *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 15) = 0;
  }

  *(this + 16) = 0;
  v3 = *(this + 17);
  if (v3)
  {
    MemChunkFree(v3, 0);
    *(this + 17) = 0;
  }

  *(this + 18) = 0;
  v4 = *(this + 19);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  v5 = *(this + 35);
  if (v5)
  {
    MemChunkFree(v5, 0);
    *(this + 35) = 0;
  }

  *(this + 36) = 0;
  v6 = *(this + 37);
  if (v6)
  {
    MemChunkFree(v6, 0);
    *(this + 37) = 0;
  }

  *(this + 38) = 0;
  result = *(this + 39);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 39) = 0;
  }

  *(this + 40) = 0;
  return result;
}

void WordLanguageModel::verifyValidTopicWordLM(WordLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 16) >= 4u)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 10333, "lm/wordlm", 23, "%u %.500s", a7, a8, *(this + 16));
  }

  if (*(this + 5))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 10336, "lm/wordlm", 25, "%.500s", a7, a8, "TopicWord");
  }

  if (*(this + 29))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 10338, "lm/wordlm", 33, "%.500s", a7, a8, "TopicWord");
  }
}

void WordLanguageModel::verifyConsistentWithWordNgramBuildSpec(WordLanguageModel *this, const WordNgramBuildSpec *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 16) != *(a2 + 2))
  {
    v10 = *(a2 + 2);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 10347, "lm/wordlm", 94, "%u %u", a7, a8, *(this + 16));
  }

  if (*(this + 80) != *(a2 + 12))
  {
    v11 = *(a2 + 12);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 10352, "lm/wordlm", 95, "%u %u", a7, a8, *(this + 80));
  }

  if (*(this + 25) == -1 && *(a2 + 13) == 1)
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 10355, "lm/wordlm", 96, "%s", a7, a8, &errStr_lm_wordlm_E_WORDNGRAMBUILDSPEC_MISMATCH_IGNOREINCONTEXTLMID);
  }
}

uint64_t WordLanguageModel::getWordId(WordLanguageModel *this, int a2, int a3)
{
  if (a2 == -1)
  {
    return 0xFFFFFFLL;
  }

  if (a2 == -2)
  {
    return 16777212;
  }

  if (a3 && *(this + 276) == 1)
  {
    for (i = 0; ; ++i)
    {
      v4 = *(this + 32);
      if (!*(this + 32))
      {
        v4 = *(this + 36);
        if (!v4)
        {
          v4 = *(this + 40);
        }
      }

      if (i >= v4)
      {
        break;
      }

      if (*(this + 72))
      {
        v5 = *(*(this + 35) + 4 * i);
      }

      else
      {
        if (*(this + 76))
        {
          v5 = *(*(this + 37) + 2 * i);
          v6 = v5 == 0xFFFF;
        }

        else
        {
          v5 = *(*(this + 39) + i);
          v6 = v5 == 255;
        }

        if (v6)
        {
          v5 = -1;
        }
      }

      if (v5 == a2)
      {
        if (i != 0xFFFFFF)
        {
          return i;
        }

        break;
      }
    }

    if (*(this + 28) == a2)
    {
      return 16777214;
    }

    goto LABEL_46;
  }

  i = 0;
  v7 = *(this + 32);
  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (i >= v7)
  {
    goto LABEL_37;
  }

  v8 = *(*(this + 15) + 4 * i);
  while (v8 != a2)
  {
    ++i;
    if (v7)
    {
      goto LABEL_23;
    }

LABEL_25:
    v9 = *(this + 36);
    if (v9)
    {
      if (i >= v9)
      {
        goto LABEL_37;
      }

      v8 = *(*(this + 17) + 2 * i);
      v10 = v8 == 0xFFFF;
    }

    else
    {
      if (i >= *(this + 40))
      {
        goto LABEL_37;
      }

      v8 = *(*(this + 19) + i);
      v10 = v8 == 255;
    }

    if (v10)
    {
      v8 = -1;
    }
  }

  if (i == 0xFFFFFF)
  {
LABEL_37:
    if (*(this + 28) != a2)
    {
LABEL_46:
      if (*(this + 29) == a2)
      {
        return 16777213;
      }

      else
      {
        return 0xFFFFFFLL;
      }
    }

    if (a3)
    {
      return 16777214;
    }

    if (*(this + 29) == a2)
    {
      return 16777213;
    }

    else
    {
      return 16777214;
    }
  }

  return i;
}

uint64_t WordLanguageModel::languageScore(WordLanguageModel *this, uint64_t a2, unsigned int a3, LMStats *a4, LMContextData *a5, LMScoreDetails *a6, uint64_t a7, uint64_t a8, BOOL *a9)
{
  ++*a4;
  v16 = 0;
  if (a7 && a6 && *(this + 1))
  {
    v16 = *(a6 + 2);
    LMScoreDetails::addDetails(a6, 0, 6, 1);
  }

  LmId = WordLanguageModel::getLmId(this, a2);
  v18 = LmId;
  if (*(*(this + 2) + 388) > a2 || a2 == 16777213 && *(this + 29) < *(this + 26))
  {
    v19 = *(this + 16);
    if (v19 == 1 || *(a5 + 6) == 16777212)
    {
      v20 = *(this + 21);
      LOWORD(v21) = *(v20 + 2 * LmId);
      if (!a6)
      {
LABEL_54:
        v25 = 1;
        goto LABEL_55;
      }

      v22 = a6;
      v23 = *(v20 + 2 * v18);
      v24 = 0;
LABEL_53:
      LMScoreDetails::addDetails(v22, v23, v24, 0);
      goto LABEL_54;
    }

    if (*(this + 27) <= LmId)
    {
      goto LABEL_43;
    }

    if (v19 == 2)
    {
      goto LABEL_31;
    }

    if (v19 != 3)
    {
      if (v19 != 4)
      {
        goto LABEL_43;
      }

      if (*(a5 + 19) != -1)
      {
        QuadgramScoreSearch = WordLanguageModel::findQuadgramScoreSearch(this, LmId, a4, a5);
        if (QuadgramScoreSearch != 20000)
        {
          v24 = 3;
          goto LABEL_42;
        }
      }
    }

    v27 = *(a5 + 15);
    if (v27 == -1)
    {
      goto LABEL_31;
    }

    if (*(a5 + 64) == 1)
    {
      if (v18 > *(*(this + 130) + 2 * v27))
      {
        goto LABEL_31;
      }

      v28 = v18 + *(*(this + 128) + 4 * v27) - 1;
      if (*(this + 196))
      {
        v28 = *(*(this + 134) + v28);
        v29 = *(this + 97);
      }

      else
      {
        v29 = *(this + 132);
      }

      TrigramScoreSearch = *(v29 + 2 * v28);
    }

    else
    {
      TrigramScoreSearch = WordLanguageModel::findTrigramScoreSearch(this, v18, a4, a5);
    }

    if (TrigramScoreSearch != 20000)
    {
      QuadgramScoreSearch = *(a5 + 42) + TrigramScoreSearch;
      v24 = 2;
      goto LABEL_42;
    }

LABEL_31:
    v31 = *(a5 + 4);
    if (v31 == -1)
    {
      goto LABEL_43;
    }

    if (*(a5 + 20) == 1)
    {
      if (v18 > *(*(this + 69) + 2 * v31))
      {
        goto LABEL_43;
      }

      v32 = v18 + *(*(this + 67) + 4 * v31) - 1;
      if (*(this + 94))
      {
        v32 = *(*(this + 73) + v32);
        v33 = *(this + 46);
      }

      else
      {
        v33 = *(this + 71);
      }

      BigramScoreSearch = *(v33 + 2 * v32);
    }

    else
    {
      BigramScoreSearch = WordLanguageModel::findBigramScoreSearch(this, v18, a4, a5);
    }

    if (BigramScoreSearch == 20000)
    {
LABEL_43:
      v35 = *(this + 29);
      if (v35)
      {
        v39 = 0;
        QuadgramScoreSearch = *(a5 + 16) + *(a5 + 33) + *(a5 + 42) + (*(*v35 + 504))(v35, a2, 0xFFFFLL, a4, *(a5 + 14), 0, a7, a8, &v39);
        v24 = 4;
      }

      else
      {
        v24 = 0;
        v36 = 328;
        if (!*(this + 84))
        {
          v36 = 168;
        }

        QuadgramScoreSearch = *(a5 + 16) + *(a5 + 33) + *(a5 + 42) + *(*(this + v36) + 2 * v18);
      }

      goto LABEL_48;
    }

    QuadgramScoreSearch = *(a5 + 33) + BigramScoreSearch + *(a5 + 42);
    v24 = 1;
LABEL_42:
    if (QuadgramScoreSearch != 20000)
    {
LABEL_48:
      if (QuadgramScoreSearch >= 40 * *(this + 8))
      {
        v37 = 40 * *(this + 8);
      }

      else
      {
        v37 = QuadgramScoreSearch;
      }

      v21 = v37 & ~(v37 >> 31);
      if (!a6)
      {
        goto LABEL_54;
      }

      v22 = a6;
      v23 = v37 & ~(v37 >> 31);
      goto LABEL_53;
    }

    goto LABEL_43;
  }

  if (a6)
  {
    LMScoreDetails::addDetails(a6, 0, 7, 0);
  }

  v25 = 0;
  LOWORD(v21) = 0;
LABEL_55:
  *a9 = v25;
  return LanguageModel::languageScoreFinish(this, a2, v21, a6, a7, v16, a5);
}

uint64_t WordLanguageModel::findQuadgramScoreSearch(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = (a1 + 154);
  v8 = *(a4 + 80);
  v9 = *(a1[185] + 4 * v8);
  if (*(a1 + 308) && ((*(a1[168] + ((v8 >> 3) & 0x1FFFFFFC)) >> v8) & 1) != 0)
  {
    v9 = *(a1[207] + 4 * v9);
    v10 = 504;
  }

  else
  {
    v10 = 280;
  }

  v11 = 0;
  v12 = *(*(v7 + v10) + 2 * (v9 + *(a4 + 76)));
  ++*(a3 + 48);
  v13 = v12 - 1;
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = v13;
  }

  v15 = 1;
  while (1)
  {
    v16 = v15;
    v17 = v14 + v11;
    v18 = (v14 + v11) >> 1;
    Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex(v7, *(a4 + 80), *(a4 + 76), v18);
    if (Quad3SuccIdForIndex == a2)
    {
      break;
    }

    if (Quad3SuccIdForIndex > a2)
    {
      if (v17 < 2)
      {
        goto LABEL_15;
      }

      v14 = v18 - 1;
    }

    else
    {
      v11 = v18 + 1;
    }

    v15 = v16 + 1;
    if (v11 > v14)
    {
LABEL_15:
      *(a3 + 52) += v16;
      return 20000;
    }
  }

  *(a3 + 52) += v16;
  v22 = *(a4 + 76);
  v21 = *(a4 + 80);

  return QuadgramData::getScoreForIndex(v7, v21, v22, v17 >> 1);
}

uint64_t WordLanguageModel::findTrigramScoreSearch(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(*(a1 + 1040) + 2 * *(a4 + 60));
  ++*(a3 + 32);
  v10 = v9 - 1;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v10;
  }

  v12 = 1;
  while (1)
  {
    v13 = v12;
    v14 = v11 + v8;
    v15 = (v11 + v8) >> 1;
    SearchSuccIdForIndex = TrigramData::getSearchSuccIdForIndex((a1 + 744), *(a4 + 60), v15);
    if (SearchSuccIdForIndex == a2)
    {
      break;
    }

    if (SearchSuccIdForIndex > a2)
    {
      if (v14 < 2)
      {
        goto LABEL_11;
      }

      v11 = v15 - 1;
    }

    else
    {
      v8 = v15 + 1;
    }

    v12 = v13 + 1;
    if (v8 > v11)
    {
LABEL_11:
      *(a3 + 36) += v13;
      return 20000;
    }
  }

  *(a3 + 36) += v13;
  v18 = *(a4 + 60);

  return TrigramData::getSearchScoreForIndex((a1 + 744), v18, v14 >> 1);
}

uint64_t WordLanguageModel::findBigramScoreSearch(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(*(a1 + 552) + 2 * *(a4 + 16));
  ++*(a3 + 16);
  v10 = v9 - 1;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = v10;
  }

  v12 = 1;
  while (1)
  {
    v13 = v12;
    v14 = v11 + v8;
    v15 = (v11 + v8) >> 1;
    SearchSuccIdForIndex = BigramData::getSearchSuccIdForIndex((a1 + 360), *(a4 + 16), v15);
    if (SearchSuccIdForIndex == a2)
    {
      break;
    }

    if (SearchSuccIdForIndex > a2)
    {
      if (v14 < 2)
      {
        goto LABEL_11;
      }

      v11 = v15 - 1;
    }

    else
    {
      v8 = v15 + 1;
    }

    v12 = v13 + 1;
    if (v8 > v11)
    {
LABEL_11:
      *(a3 + 20) += v13;
      return 20000;
    }
  }

  *(a3 + 20) += v13;
  v18 = *(a4 + 16);

  return BigramData::getSearchScoreForIndex((a1 + 360), v18, v14 >> 1);
}

uint64_t WordLanguageModel::languageScoreForSearch(WordLanguageModel *this, uint64_t a2, unsigned int a3, LMStats *a4, LMContextData *a5, uint64_t a6, BOOL *a7)
{
  ++*a4;
  if (a2 == 16777208)
  {
    v13 = -2;
    goto LABEL_14;
  }

  if (a2 != 16777213)
  {
    if (*(this + 32))
    {
      v13 = *(*(this + 15) + 4 * a2);
    }

    else
    {
      if (*(this + 36))
      {
        v14 = *(*(this + 17) + 2 * a2);
        v15 = v14 == 0xFFFF;
      }

      else
      {
        v14 = *(*(this + 19) + a2);
        v15 = v14 == 255;
      }

      if (v15)
      {
        v13 = -1;
      }

      else
      {
        v13 = v14;
      }
    }

    goto LABEL_14;
  }

  v13 = *(this + 29);
  if (*(this + 29) < *(this + 26))
  {
LABEL_14:
    v16 = *(this + 16);
    if (v16 == 1 || *(a5 + 6) == 16777212)
    {
      LOWORD(v17) = *(*(this + 21) + 2 * v13);
LABEL_54:
      v18 = 1;
      goto LABEL_55;
    }

    if (*(this + 27) <= v13)
    {
      goto LABEL_45;
    }

    if (v16 == 2)
    {
      goto LABEL_33;
    }

    if (v16 != 3)
    {
      if (v16 != 4)
      {
        goto LABEL_45;
      }

      if (*(a5 + 19) != -1)
      {
        QuadgramScoreSearch = WordLanguageModel::findQuadgramScoreSearch(this, v13, a4, a5);
        if (QuadgramScoreSearch != 20000)
        {
          goto LABEL_44;
        }
      }
    }

    v20 = *(a5 + 15);
    if (v20 == -1)
    {
      goto LABEL_33;
    }

    if (*(a5 + 64) == 1)
    {
      if (v13 > *(*(this + 130) + 2 * v20))
      {
        goto LABEL_33;
      }

      v21 = v13 + *(*(this + 128) + 4 * v20) - 1;
      if (*(this + 196))
      {
        v21 = *(*(this + 134) + v21);
        v22 = *(this + 97);
      }

      else
      {
        v22 = *(this + 132);
      }

      TrigramScoreSearch = *(v22 + 2 * v21);
    }

    else
    {
      TrigramScoreSearch = WordLanguageModel::findTrigramScoreSearch(this, v13, a4, a5);
    }

    if (TrigramScoreSearch != 20000)
    {
      QuadgramScoreSearch = *(a5 + 42) + TrigramScoreSearch;
      goto LABEL_44;
    }

LABEL_33:
    v24 = *(a5 + 4);
    if (v24 == -1)
    {
      goto LABEL_45;
    }

    if (*(a5 + 20) == 1)
    {
      if (v13 > *(*(this + 69) + 2 * v24))
      {
        goto LABEL_45;
      }

      v25 = v13 + *(*(this + 67) + 4 * v24) - 1;
      if (*(this + 94))
      {
        v25 = *(*(this + 73) + v25);
        v26 = *(this + 46);
      }

      else
      {
        v26 = *(this + 71);
      }

      BigramScoreSearch = *(v26 + 2 * v25);
    }

    else
    {
      BigramScoreSearch = WordLanguageModel::findBigramScoreSearch(this, v13, a4, a5);
    }

    if (BigramScoreSearch == 20000)
    {
LABEL_45:
      v28 = *(this + 29);
      if (v28)
      {
        v32 = 0;
        QuadgramScoreSearch = *(a5 + 16) + *(a5 + 33) + *(a5 + 42) + (*(*v28 + 512))(v28, a2, 0xFFFFLL, a4, *(a5 + 14), a6, &v32);
      }

      else
      {
        v29 = 328;
        if (!*(this + 84))
        {
          v29 = 168;
        }

        QuadgramScoreSearch = *(a5 + 16) + *(a5 + 33) + *(a5 + 42) + *(*(this + v29) + 2 * v13);
      }

      goto LABEL_50;
    }

    QuadgramScoreSearch = *(a5 + 33) + BigramScoreSearch + *(a5 + 42);
LABEL_44:
    if (QuadgramScoreSearch != 20000)
    {
LABEL_50:
      if (QuadgramScoreSearch >= 40 * *(this + 8))
      {
        v30 = 40 * *(this + 8);
      }

      else
      {
        v30 = QuadgramScoreSearch;
      }

      v17 = v30 & ~(v30 >> 31);
      goto LABEL_54;
    }

    goto LABEL_45;
  }

  v18 = 0;
  LOWORD(v17) = 0;
LABEL_55:
  *a7 = v18;
  return LanguageModel::languageScoreFinishForSearch(this, a2, v17, a5);
}

unint64_t WordLanguageModel::languageScoreForPrefilterer(unint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a2 + 8);
  v7 = *(a3 + 12);
  LODWORD(v8) = v6;
  if (v6 > v7)
  {
    result = DgnPrimArray<short>::reallocElts(a3, v6 - v7, 0);
    LODWORD(v8) = *(a2 + 8);
  }

  *(a3 + 8) = v6;
  if (v8)
  {
    v9 = *a2;
    v10 = *(v5 + 128);
    v11 = *(v5 + 168);
    v8 = v8;
    v12 = *a3;
    do
    {
      v14 = *v9++;
      v13 = v14;
      if (v10)
      {
        v15 = *(*(v5 + 120) + 4 * v13);
      }

      else
      {
        if (*(v5 + 144))
        {
          v15 = *(*(v5 + 136) + 2 * v13);
          v16 = v15 == 0xFFFF;
        }

        else
        {
          v15 = *(*(v5 + 152) + v13);
          v16 = v15 == 255;
        }

        if (v16)
        {
          v15 = -1;
        }
      }

      *v12++ = *(v11 + 2 * v15);
      --v8;
    }

    while (v8);
  }

  return result;
}

BOOL WordLanguageModel::tri1HasTrigrams(WordLanguageModel *this, unsigned int a2)
{
  v3 = *(this + 16);
  if (v3 == 2)
  {
    v4 = *(this + 68);
    return v4 != 0;
  }

  if (v3 >= 3)
  {
    if (a2 < 0xFFFFF4)
    {
      MaybeContextLmId = WordLanguageModel::getMaybeContextLmId(this, a2);
      if (*(this + 200) > MaybeContextLmId)
      {
        v4 = *(*(this + 99) + 2 * MaybeContextLmId);
        return v4 != 0;
      }
    }

    else if (a2 == 16777214)
    {
      v6 = *(this + 28);
      if (v6 < *(this + 26) && *(this + 200) > v6)
      {
        v4 = *(*(this + 99) + 2 * v6);
        return v4 != 0;
      }
    }
  }

  return 0;
}

BOOL WordLanguageModel::quad1quad2HasQuadgrams(WordLanguageModel *this, unsigned int a2, unsigned int a3)
{
  v4 = *(this + 16);
  if (v4 == 2)
  {
    return *(this + 68) > 1u;
  }

  if (v4 < 4)
  {
    return 0;
  }

  if (a2 <= 0xFFFFF3)
  {
    MaybeContextLmId = WordLanguageModel::getMaybeContextLmId(this, a2);
  }

  else
  {
    if (a2 != 16777214)
    {
      return 0;
    }

    MaybeContextLmId = *(this + 28);
    if (MaybeContextLmId >= *(this + 26))
    {
      return 0;
    }
  }

  if (*(this + 322) > MaybeContextLmId && *(*(this + 160) + 2 * MaybeContextLmId))
  {
    if (a3 <= 0xFFFFF3)
    {
      v8 = WordLanguageModel::getMaybeContextLmId(this, a3);
    }

    else
    {
      if (a3 != 16777214)
      {
        return 0;
      }

      v8 = *(this + 28);
      if (v8 >= *(this + 26))
      {
        return 0;
      }
    }

    if (*(this + 27) > v8)
    {
      return WordLanguageModel::findQuad2Index(this, MaybeContextLmId, v8) != -1;
    }
  }

  return 0;
}

uint64_t WordLanguageModel::findQuad2Index(WordLanguageModel *this, unsigned int a2, unsigned int a3)
{
  v3 = 0;
  if (*(*(this + 160) + 2 * a2) - 1 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(*(this + 160) + 2 * a2) - 1;
  }

  v5 = *(*(this + 162) + 4 * a2);
  v6 = *(this + 164);
  while (1)
  {
    v7 = v4 + v3;
    result = v5 + ((v4 + v3) >> 1);
    v9 = *(v6 + 2 * result);
    v10 = v9 > a3;
    if (v9 == a3)
    {
      break;
    }

    v11 = v7 >> 1;
    if (v10)
    {
      if (v7 < 2)
      {
        return 0xFFFFFFFFLL;
      }

      v4 = v11 - 1;
    }

    else
    {
      v3 = v11 + 1;
    }

    if (v3 > v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t WordLanguageModel::createContextData(WordLanguageModel *this)
{
  v2 = MemChunkAlloc(0x78uLL, 0);
  v3 = *(this + 29);

  return WordLMContextData::WordLMContextData(v2, v3);
}

uint64_t WordLanguageModel::setContext(WordLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  v12 = *(this + 16);
  if (v12 <= 1)
  {
    goto LABEL_67;
  }

  *(a6 + 12) = 1;
  v13 = *(a2 + 8);
  if (v12 == 2)
  {
    v14 = *(this + 68);
    if (v14)
    {
      if (v14 < v13)
      {
        v15 = (a6 + 40);
        if (!*(a6 + 52))
        {
          DgnPrimArray<unsigned int>::reallocElts(a6 + 40, 1, 0);
          v14 = *(this + 68);
        }

        v13 = 1;
        *(a6 + 48) = 1;
        **(a6 + 40) = *(*a2 + 4 * v14);
        goto LABEL_19;
      }

      v13 = 0;
LABEL_18:
      v15 = a2;
      goto LABEL_19;
    }
  }

  if (*(this + 25) == -1)
  {
    goto LABEL_18;
  }

  v15 = (a6 + 96);
  *(a6 + 104) = 0;
  v13 = *(a2 + 8);
  if (v13)
  {
    v16 = 0;
    do
    {
      if (WordLanguageModel::getMaybeContextLmId(this, *(*a2 + 4 * v16)) != *(this + 25))
      {
        v17 = *(*a2 + 4 * v16);
        v18 = *(a6 + 104);
        if (v18 == *(a6 + 108))
        {
          DgnPrimArray<unsigned int>::reallocElts(a6 + 96, 1, 1);
          v18 = *(a6 + 104);
        }

        *(*(a6 + 96) + 4 * v18) = v17;
        ++*(a6 + 104);
      }

      ++v16;
    }

    while (v16 < *(a2 + 8));
    v13 = *(a6 + 104);
  }

LABEL_19:
  if (v13 >= *(this + 16) - 1)
  {
    v13 = *(this + 16) - 1;
  }

  *(a6 + 56) = v13;
  v19 = 16777212;
  *(a6 + 88) = 16777212;
  *(a6 + 68) = 16777212;
  *(a6 + 24) = 16777212;
  if (v13 == 3)
  {
    v20 = *v15;
    *(a6 + 88) = (*v15)[2];
    goto LABEL_27;
  }

  if (v13 == 2)
  {
    v20 = *v15;
LABEL_27:
    *(a6 + 68) = v20[1];
    goto LABEL_28;
  }

  if (v13 != 1)
  {
    goto LABEL_29;
  }

  v20 = *v15;
LABEL_28:
  v19 = *v20;
  *(a6 + 24) = *v20;
LABEL_29:
  v21 = *(this + 29);
  if (v21)
  {
    (*(*v21 + 472))(v21, a2, 0, a4, a5, *(a6 + 112));
    v19 = *(a6 + 24);
  }

  *(a6 + 16) = -1;
  *(a6 + 20) = 0;
  *(a6 + 60) = -1;
  *(a6 + 64) = 0;
  *(a6 + 76) = -1;
  *(a6 + 32) = 0;
  *(a6 + 66) = 0;
  *(a6 + 28) = -2;
  *(a6 + 72) = -2;
  *(a6 + 92) = -2;
  *(a6 + 84) = 0;
  if (v19 <= 16777213)
  {
    if (v19 != 16777208)
    {
      if (v19 != 16777212)
      {
        goto LABEL_41;
      }

LABEL_40:
      *(a6 + 13) = 1;
      goto LABEL_67;
    }

LABEL_39:
    MaybeContextLmId = *(this + 28);
    if (MaybeContextLmId < *(this + 26))
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  if (v19 == 16777214)
  {
    goto LABEL_39;
  }

  if (v19 == 0xFFFFFF)
  {
    MaybeContextLmId = *(this + 60);
    if (MaybeContextLmId != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

LABEL_41:
  MaybeContextLmId = WordLanguageModel::getMaybeContextLmId(this, v19);
LABEL_42:
  *(a6 + 28) = MaybeContextLmId;
  *(a6 + 13) = 0;
  v23 = *(this + 16);
  if (v23 < 3)
  {
    goto LABEL_64;
  }

  v24 = *(a6 + 68);
  if (v24 > 16777213)
  {
    if (v24 != 16777214)
    {
      if (v24 != 0xFFFFFF)
      {
LABEL_53:
        *(a6 + 72) = WordLanguageModel::getMaybeContextLmId(this, v24);
        v23 = *(this + 16);
        goto LABEL_54;
      }

      v25 = *(this + 60);
      if (v25 == -1)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

LABEL_51:
    v25 = *(this + 28);
    if (v25 >= *(this + 26))
    {
      goto LABEL_54;
    }

LABEL_52:
    *(a6 + 72) = v25;
    goto LABEL_54;
  }

  if (v24 == 16777208)
  {
    goto LABEL_51;
  }

  if (v24 != 16777212)
  {
    goto LABEL_53;
  }

LABEL_54:
  if (v23 >= 4)
  {
    v26 = *(a6 + 88);
    if (v26 != 16777212)
    {
      if (v26 == 16777214)
      {
        v27 = *(this + 28);
        if (v27 >= *(this + 26))
        {
          goto LABEL_64;
        }
      }

      else if (v26 == 0xFFFFFF)
      {
        v27 = *(this + 60);
        if (v27 == -1)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v27 = WordLanguageModel::getMaybeContextLmId(this, v26);
      }

      *(a6 + 92) = v27;
    }
  }

LABEL_64:
  WordLanguageModel::setBigramContext(this, a4, a5, a6);
  if (*(this + 16) >= 3u)
  {
    WordLanguageModel::setTrigramContext(this, a4, a5, a6);
    if (*(this + 16) >= 4u)
    {
      WordLanguageModel::setQuadgramContext(this, a4, a5, a6);
    }
  }

LABEL_67:

  return LanguageModel::setContext(this, a2, a3, a4, a5, a6);
}

void WordLanguageModel::setBigramContext(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v7 = *(a4 + 28);
  if (v7 <= 0xFFFFF0)
  {
    *(a4 + 32) = *(*(a1 + 344) + 2 * v7);
    if (*(a1 + 560) > v7)
    {
      if (*(*(a1 + 552) + 2 * v7))
      {
        *(a4 + 16) = v7;
        if (*(a1 + 360) && (*(*(a1 + 400) + 4 * (v7 >> 5)) & (1 << v7)) != 0 && (*(*(a1 + 416) + 4 * (v7 >> 5)) & (1 << v7)) == 0)
        {
          WordLanguageModel::loadBigramRecord(a1, v7, a2, a3);
          LODWORD(v7) = *(a4 + 28);
        }

        *(a4 + 20) = (*(*(a1 + 384) + 4 * (v7 >> 5)) >> v7) & 1;
      }
    }
  }
}

void WordLanguageModel::setTrigramContext(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  if (*(a1 + 108) > v6)
  {
    v7 = *(a4 + 72);
    if (*(a1 + 800) > v7)
    {
      v8 = *(a1 + 792);
      v9 = *(v8 + 2 * v7);
      if (*(v8 + 2 * v7))
      {
        v10 = 0;
        v11 = v9 - 1;
        if (v11 >= v6)
        {
          v12 = *(a4 + 28);
        }

        else
        {
          v12 = v11;
        }

        v13 = *(*(a1 + 808) + 4 * v7);
        while (1)
        {
          v14 = v12 + v10;
          v15 = v13 + ((v12 + v10) >> 1);
          v16 = *(*(a1 + 824) + 2 * v15);
          if (v6 == v16)
          {
            break;
          }

          v17 = v14 >> 1;
          if (v6 >= v16)
          {
            v10 = v17 + 1;
          }

          else
          {
            if (v14 < 2)
            {
              goto LABEL_16;
            }

            v12 = v17 - 1;
          }

          if (v10 > v12)
          {
            goto LABEL_16;
          }
        }

        *(a4 + 60) = v15;
      }
    }
  }

LABEL_16:
  v18 = *(a4 + 60);
  if (v18 != -1)
  {
    if (*(a1 + 768))
    {
      v19 = (*(a1 + 760) + 2 * *(*(a1 + 856) + v18));
    }

    else
    {
      v19 = (*(a1 + 840) + 2 * v18);
    }

    *(a4 + 66) = *v19;
    if (*(a1 + 744) && (*(*(a1 + 888) + 4 * (v18 >> 5)) & (1 << v18)) != 0 && (*(*(a1 + 904) + 4 * (v18 >> 5)) & (1 << v18)) == 0)
    {
      WordLanguageModel::loadTrigramRecord(a1, a2, a3, v18, a2, a3);
      LODWORD(v18) = *(a4 + 60);
    }

    *(a4 + 64) = (*(*(a1 + 872) + 4 * (v18 >> 5)) >> v18) & 1;
  }
}

void WordLanguageModel::setQuadgramContext(WordLanguageModel *this, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = *(this + 27);
  if (v7 > v6)
  {
    v9 = *(a4 + 72);
    if (v7 > v9)
    {
      v11 = *(a4 + 92);
      if (*(this + 322) > v11)
      {
        if (*(*(this + 160) + 2 * v11))
        {
          Quad2Index = WordLanguageModel::findQuad2Index(this, v11, v9);
          *(a4 + 80) = Quad2Index;
          if (Quad2Index != -1)
          {
            v15 = Quad2Index;
            if (*(this + 308))
            {
              if ((*(*(this + 168) + 4 * (Quad2Index >> 5)) & (1 << Quad2Index)) != 0 && (*(*(this + 170) + 4 * (Quad2Index >> 5)) & (1 << Quad2Index)) == 0)
              {
                WordLanguageModel::loadQuadgramRecord(this, v13, v14, Quad2Index, a2, a3);
                v15 = *(a4 + 80);
                v6 = *(a4 + 28);
                v16 = *(this + 308) == 0;
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v16 = 1;
            }

            v17 = 0;
            if (*(*(this + 166) + 2 * v15) - 1 >= v6)
            {
              v18 = v6;
            }

            else
            {
              v18 = *(*(this + 166) + 2 * v15) - 1;
            }

            while (1)
            {
              if (v16 || (*(*(this + 168) + 4 * (v15 >> 5)) & (1 << v15)) == 0)
              {
                v20 = 264;
                v19 = *(*(this + 185) + 4 * v15);
              }

              else
              {
                v19 = *(*(this + 207) + 4 * *(*(this + 185) + 4 * v15));
                v20 = 440;
              }

              v21 = (v17 + v18) >> 1;
              v22 = *(*(this + v20 + 1232) + 2 * (v19 + v21));
              if (v6 == v22)
              {
                break;
              }

              if (v6 >= v22)
              {
                v17 = v21 + 1;
              }

              else
              {
                if (v17 + v18 < 2)
                {
                  goto LABEL_27;
                }

                v18 = v21 - 1;
              }

              if (v17 > v18)
              {
                goto LABEL_27;
              }
            }

            *(a4 + 76) = v21;
          }
        }
      }
    }
  }

LABEL_27:
  v23 = *(a4 + 76);
  if (v23 != -1)
  {
    *(a4 + 84) = QuadgramData::getBackoffWeight((this + 1232), *(a4 + 80), v23);
  }
}

void WordLanguageModel::unsetContext(WordLanguageModel *this, LMContextData *a2)
{
  if (*(this + 16) >= 2u)
  {
    v4 = *(this + 29);
    if (v4)
    {
      (*(*v4 + 480))(v4, *(a2 + 14));
    }

    *(a2 + 12) = 0;
  }

  LanguageModel::unsetContext(this, a2);
}

void WordLanguageModel::readBigramRecord(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = 0;
  v12 = BigramData::isOnDiskCompressed((a1 + 360), a2);
  v13 = *(*(a1 + 552) + 2 * a2);
  if (v12)
  {
    v25 = 0;
    readObject(*(a1 + 224), &v25, &v26);
    v14 = v25;
    v15 = *(a6 + 12);
    if (v25 > v15)
    {
      DgnPrimArray<unsigned int>::reallocElts(a6, v25 - v15, 0);
    }

    *(a6 + 8) = v14;
    readObjectArray(*(a1 + 224), *a6, v14, &v26);
  }

  else
  {
    v16 = *(a3 + 12);
    if (v13 > v16)
    {
      DgnPrimArray<short>::reallocElts(a3, v13 - v16, 0);
    }

    *(a3 + 8) = v13;
    readObjectArray(*(a1 + 224), *a3, v13, &v26);
  }

  if (*(a1 + 376))
  {
    v17 = *a5;
    if (*(a5 + 12) < v13)
    {
      v27 = 0;
      *(a5 + 12) = realloc_array(v17, &v27, v13, *(a5 + 8), *(a5 + 8), 1);
      v17 = v27;
      *a5 = v27;
    }

    *(a5 + 8) = v13;
    readObjectArray(*(a1 + 224), v17, v13, &v26);
    if (!v12)
    {
      return;
    }

LABEL_16:
    v24 = *(a3 + 12);
    if (v13 > v24)
    {
      DgnPrimArray<short>::reallocElts(a3, v13 - v24, 0);
    }

    *(a3 + 8) = v13;
    HuffmanDecoder<unsigned short,unsigned int>::decodeSuccessors(a1 + 448, a6, a3, v18, v19, v20, v21, v22);
    return;
  }

  v23 = *(a4 + 12);
  if (v13 > v23)
  {
    DgnPrimArray<short>::reallocElts(a4, v13 - v23, 0);
  }

  *(a4 + 8) = v13;
  readObjectArray(*(a1 + 224), *a4, v13, &v26);
  if (v12)
  {
    goto LABEL_16;
  }
}

void HuffmanDecoder<unsigned short,unsigned int>::decodeSuccessors(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  HuffmanDecoder<unsigned short,unsigned int>::decodeValues(a1, a2, a3, a4, a5, a6, a7, a8);
  v17 = *(a3 + 8);
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = *a3;
    do
    {
      v21 = v19;
      v22 = v18;
      v23 = *(v20 + 2 * v18);
      if ((v19 ^ 0xFFFFu) < v23)
      {
        throwDecodeSuccessorOverflow(v9, v10, v11, v12, v13, v14, v15, v16);
        v20 = *a3;
        v17 = *(a3 + 8);
        LOWORD(v23) = *(*a3 + 2 * v22);
      }

      v19 = v21 + v23;
      *(v20 + 2 * v22) = v21 + v23;
      v18 = v22 + 1;
    }

    while (v17 > (v22 + 1));
  }
}

void WordLanguageModel::readTrigramRecord(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = 0;
  v12 = TrigramData::isOnDiskCompressed((a1 + 744), a2);
  v13 = *(*(a1 + 1040) + 2 * a2);
  if (v12)
  {
    v25 = 0;
    readObject(*(a1 + 224), &v25, &v26);
    v14 = v25;
    v15 = *(a6 + 12);
    if (v25 > v15)
    {
      DgnPrimArray<unsigned int>::reallocElts(a6, v25 - v15, 0);
    }

    *(a6 + 8) = v14;
    readObjectArray(*(a1 + 224), *a6, v14, &v26);
  }

  else
  {
    v16 = *(a3 + 12);
    if (v13 > v16)
    {
      DgnPrimArray<short>::reallocElts(a3, v13 - v16, 0);
    }

    *(a3 + 8) = v13;
    readObjectArray(*(a1 + 224), *a3, v13, &v26);
  }

  if (*(a1 + 784))
  {
    v17 = *a5;
    if (*(a5 + 12) < v13)
    {
      v27 = 0;
      *(a5 + 12) = realloc_array(v17, &v27, v13, *(a5 + 8), *(a5 + 8), 1);
      v17 = v27;
      *a5 = v27;
    }

    *(a5 + 8) = v13;
    readObjectArray(*(a1 + 224), v17, v13, &v26);
    if (!v12)
    {
      return;
    }

LABEL_16:
    v24 = *(a3 + 12);
    if (v13 > v24)
    {
      DgnPrimArray<short>::reallocElts(a3, v13 - v24, 0);
    }

    *(a3 + 8) = v13;
    HuffmanDecoder<unsigned short,unsigned int>::decodeSuccessors(a1 + 936, a6, a3, v18, v19, v20, v21, v22);
    return;
  }

  v23 = *(a4 + 12);
  if (v13 > v23)
  {
    DgnPrimArray<short>::reallocElts(a4, v13 - v23, 0);
  }

  *(a4 + 8) = v13;
  readObjectArray(*(a1 + 224), *a4, v13, &v26);
  if (v12)
  {
    goto LABEL_16;
  }
}

uint64_t TrigramData::tri2SetUnallocated(uint64_t this, unsigned int a2)
{
  v2 = a2 >> 5;
  *(*(this + 128) + 4 * (a2 >> 5)) &= ~(1 << a2);
  if (*this)
  {
    v3 = ~(1 << a2);
    *(*(this + 144) + 4 * v2) &= v3;
    *(*(this + 160) + 4 * v2) &= v3;
    if (*(this + 200))
    {
      *(*(this + 176) + 4 * v2) &= v3;
    }
  }

  *(*(this + 280) + 4 * a2) = -1;
  *(*(this + 296) + 2 * a2) = 0;
  return this;
}

void WordLanguageModel::readCompressedQuad3Data(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v15 = 0;
  readObject(*(a1 + 224), &v15, a4);
  v8 = v15;
  v9 = *(a2 + 12);
  v10 = v15;
  if (v15 > v9)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v15 - v9, 0);
    v10 = v15;
  }

  *(a2 + 8) = v8;
  readObjectArray(*(a1 + 224), *a2, v10, a4);
  v14 = 0;
  readObject(*(a1 + 224), &v14, a4);
  v11 = v14;
  v12 = *(a3 + 12);
  v13 = v14;
  if (v14 > v12)
  {
    DgnPrimArray<unsigned int>::reallocElts(a3, v14 - v12, 0);
    v13 = v14;
  }

  *(a3 + 8) = v11;
  readObjectArray(*(a1 + 224), *a3, v13, a4);
}

void WordLanguageModel::readUncompressedQuad3Data(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  readObjectArray(*(a1 + 224), *a2, *(a2 + 8), a4);
  v7 = *(a1 + 224);
  v8 = *a3;
  v9 = *(a3 + 8);

  readObjectArray(v7, v8, v9, a4);
}

void WordLanguageModel::readQuadgramRecord(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v48 = 0;
  v20 = QuadgramData::isOnDiskCompressed((a1 + 1232), a2);
  v21 = *(*(a1 + 1328) + 2 * a2);
  v22 = *(a3 + 12);
  if (v21 > v22)
  {
    DgnPrimArray<short>::reallocElts(a3, v21 - v22, 0);
  }

  *(a3 + 8) = v21;
  v23 = *(a4 + 12);
  if (v21 > v23)
  {
    DgnPrimArray<short>::reallocElts(a4, v21 - v23, 0);
  }

  *(a4 + 8) = v21;
  if (v20)
  {
    WordLanguageModel::readCompressedQuad3Data(a1, a10, a11, &v48);
  }

  else
  {
    WordLanguageModel::readUncompressedQuad3Data(a1, a3, a4, &v48);
  }

  if (*(a1 + 1256))
  {
    v24 = *a7;
    if (*(a7 + 12) < v21)
    {
      v49 = 0;
      *(a7 + 12) = realloc_array(v24, &v49, v21, *(a7 + 8), *(a7 + 8), 1);
      v24 = v49;
      *a7 = v49;
    }

    *(a7 + 8) = v21;
    readObjectArray(*(a1 + 224), v24, v21, &v48);
  }

  else
  {
    v25 = *(a6 + 12);
    if (v21 > v25)
    {
      DgnPrimArray<short>::reallocElts(a6, v21 - v25, 0);
    }

    *(a6 + 8) = v21;
    readObjectArray(*(a1 + 224), *a6, v21, &v48);
  }

  v47 = 0;
  v26 = *(a1 + 224);
  if (v20)
  {
    readObject(v26, &v47, &v48);
    readObject<unsigned int>(*(a1 + 224), a12, &v48);
  }

  else
  {
    readObject<unsigned short>(v26, a5, &v48);
    v47 = *(a5 + 8);
  }

  v27 = v47;
  if (*(a1 + 1272))
  {
    v28 = *a9;
    if (*(a9 + 12) < v47)
    {
      v49 = 0;
      *(a9 + 12) = realloc_array(v28, &v49, v47, *(a9 + 8), *(a9 + 8), 1);
      v28 = v49;
      *a9 = v49;
    }

    *(a9 + 8) = v27;
    readObjectArray(*(a1 + 224), v28, v27, &v48);
    if (!v20)
    {
      return;
    }

LABEL_26:
    HuffmanDecoder<unsigned short,unsigned int>::decodeValues(a1 + 1392, a10, a3, v29, v30, v31, v32, v33);
    HuffmanDecoder<unsigned short,unsigned int>::decodeSuccessors(a1 + 1392, a11, a4, v35, v36, v37, v38, v39);
    v45 = v47;
    v46 = *(a5 + 12);
    if (v47 > v46)
    {
      DgnPrimArray<short>::reallocElts(a5, v47 - v46, 0);
    }

    *(a5 + 8) = v45;
    HuffmanDecoder<unsigned short,unsigned int>::decodeValues(a1 + 1392, a12, a5, v40, v41, v42, v43, v44);
    return;
  }

  v34 = *(a8 + 12);
  if (v47 > v34)
  {
    DgnPrimArray<short>::reallocElts(a8, v47 - v34, 0);
  }

  *(a8 + 8) = v27;
  readObjectArray(*(a1 + 224), *a8, v27, &v48);
  if (v20)
  {
    goto LABEL_26;
  }
}

void readObject<unsigned short>(RealDFileSubFileStream *a1, uint64_t a2, unsigned int *a3)
{
  v8 = 0;
  readObject(a1, &v8, a3);
  v6 = v8;
  v7 = *(a2 + 12);
  if (v8 > v7)
  {
    DgnPrimArray<short>::reallocElts(a2, v8 - v7, 0);
  }

  *(a2 + 8) = v6;
  readObjectArray(a1, *a2, v6, a3);
}

void HuffmanDecoder<unsigned short,unsigned int>::decodeValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 8);
  v11 = *a2;
  v12 = **a2;
  v13 = *(a3 + 8);
  if (v13)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
    do
    {
      v12 = (v17 >> -v15) | (v12 << v15);
      if (v15 >= v16)
      {
        if (v18 >= v10)
        {
          goto LABEL_17;
        }

        v17 = v11[v18++];
        v19 = v15;
        v20 = v15 - v16;
        v21 = (v17 >> -v20) | v12;
        v22 = 32 - v20;
        v23 = v17 << v20;
        if (v19 == v16)
        {
          v16 = 32;
        }

        else
        {
          v17 = v23;
          v12 = v21;
          v16 = v22;
        }
      }

      else
      {
        v16 -= v15;
        v17 <<= v15;
      }

      if (v12 >= *(a1 + 64))
      {
        v27 = *(*(a1 + 72) + 4 * (v12 >> 21));
        v26 = *(*a1 + 4 * v27);
      }

      else
      {
        v24 = *(a1 + 68);
        do
        {
          v25 = v24;
          v26 = *(*a1 + 4 * v24--);
        }

        while (v12 < v26);
        v27 = v25;
      }

      v15 = *(*(a1 + 16) + v27);
      *(*a3 + 2 * v14++) = *(*(a1 + 48) + 2 * (((v12 - v26) >> -v15) + *(*(a1 + 32) + 4 * v27)));
    }

    while (v14 != v13);
  }

  else
  {
    LODWORD(v14) = 0;
    v16 = 0;
    v15 = 0;
    v18 = 1;
LABEL_17:
    if (v14 < v13)
    {
      v28 = v10 + 2;
      v29 = v14;
      v30 = v15;
      do
      {
        if (v30 >= v16)
        {
          if (v18 >= v28)
          {
            throwDecodeEndOfData(a1, a2, a3, a4, a5, a6, a7, a8);
          }

          ++v18;
          v16 += 32;
        }

        if (v12 >= *(a1 + 64))
        {
          v34 = *(*(a1 + 72) + 4 * (v12 >> 21));
          v33 = *(*a1 + 4 * v34);
        }

        else
        {
          v31 = *(a1 + 68);
          do
          {
            v32 = v31;
            v33 = *(*a1 + 4 * v31--);
          }

          while (v12 < v33);
          v34 = v32;
        }

        v16 -= v30;
        v30 = *(*(a1 + 16) + v34);
        *(*a3 + 2 * v29++) = *(*(a1 + 48) + 2 * (((v12 - v33) >> -v30) + *(*(a1 + 32) + 4 * v34)));
        v12 <<= v30;
      }

      while (v29 < *(a3 + 8));
    }
  }
}

uint64_t QuadgramData::quad2SetUnallocated(uint64_t this, unsigned int a2)
{
  if (*this)
  {
    v2 = a2 >> 5;
    *(*(this + 112) + 4 * v2) &= ~(1 << a2);
    *(*(this + 128) + 4 * v2) &= ~(1 << a2);
    if (*(this + 168))
    {
      *(*(this + 144) + 4 * v2) &= ~(1 << a2);
    }
  }

  *(*(this + 248) + 4 * a2) = -1;
  *(*(this + 96) + 2 * a2) = 0;
  return this;
}

uint64_t WordLanguageModel::beginLMSyncRecog(WordLanguageModel *this, int a2, LMContextData *a3)
{
  (*(*this + 480))(this, a3);
  result = *(this + 5);
  if (result)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(*result + 64);

    return v7();
  }

  return result;
}

uint64_t WordLanguageModel::beginRescoringInLMSyncRecog(WordLanguageModel *this, LMContextData *a2)
{
  (*(*this + 480))(this, a2);
  result = *(this + 5);
  if (result)
  {
    v4 = *(*result + 64);

    return v4();
  }

  return result;
}

uint64_t WordLanguageModel::endLMSyncRecog(WordLanguageModel *this, int a2, LMContextData *a3)
{
  (*(*this + 480))(this, a3);
  result = *(this + 5);
  if (result)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(*result + 64);

    return v7();
  }

  return result;
}

double WordLanguageModel::clearLoadedData(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 232);
  if (v4)
  {
    (*(*v4 + 432))(v4, a2);
  }

  if (v2 <= 1 && *(a1 + 64) >= 2u && *(a1 + 360))
  {
    if (*(a1 + 656))
    {
      v6 = 0;
      v7 = *(a1 + 648);
      v8 = *(a1 + 536);
      v9 = *(a1 + 664);
      v10 = *(a1 + 416);
      do
      {
        v11 = *(v7 + 4 * v6);
        *(v8 + 4 * v11) = *(v9 + 4 * *(v8 + 4 * v11));
        *(v10 + ((v11 >> 3) & 0x1FFFFFFC)) &= ~(1 << v11);
        ++v6;
      }

      while (v6 < *(a1 + 656));
    }

    BigramData::freeLoadedData((a1 + 360));
  }

  if (v2)
  {
    if (v2 == 3)
    {
LABEL_20:
      if (*(a1 + 64) >= 4u && *(a1 + 1232))
      {
        if (*(a1 + 1632))
        {
          v18 = 0;
          v19 = *(a1 + 1624);
          v20 = *(a1 + 1480);
          v21 = *(a1 + 1640);
          v22 = *(a1 + 1360);
          do
          {
            v23 = *(v19 + 4 * v18);
            *(v20 + 4 * v23) = *(v21 + 4 * *(v20 + 4 * v23));
            *(v22 + ((v23 >> 3) & 0x1FFFFFFC)) &= ~(1 << v23);
            ++v18;
          }

          while (v18 < *(a1 + 1632));
        }

        return QuadgramData::freeLoadedData((a1 + 1232));
      }

      return result;
    }

    if (v2 != 2)
    {
      return result;
    }
  }

  if (*(a1 + 64) >= 3u && *(a1 + 744))
  {
    if (*(a1 + 1144))
    {
      v12 = 0;
      v13 = *(a1 + 1136);
      v14 = *(a1 + 1024);
      v15 = *(a1 + 1152);
      v16 = *(a1 + 904);
      do
      {
        v17 = *(v13 + 4 * v12);
        *(v14 + 4 * v17) = *(v15 + 4 * *(v14 + 4 * v17));
        *(v16 + ((v17 >> 3) & 0x1FFFFFFC)) &= ~(1 << v17);
        ++v12;
      }

      while (v12 < *(a1 + 1144));
    }

    TrigramData::freeLoadedData((a1 + 744));
  }

  if (!v2)
  {
    goto LABEL_20;
  }

  return result;
}

void *BigramData::freeLoadedData(BigramData *this)
{
  v2 = *(this + 36);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 36) = 0;
  }

  *(this + 37) = 0;
  v3 = *(this + 38);
  if (v3)
  {
    MemChunkFree(v3, 0);
    *(this + 38) = 0;
  }

  *(this + 39) = 0;
  v4 = *(this + 40);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(this + 40) = 0;
  }

  *(this + 41) = 0;
  v5 = *(this + 42);
  if (v5)
  {
    MemChunkFree(v5, 0);
    *(this + 42) = 0;
  }

  *(this + 43) = 0;
  v6 = *(this + 44);
  if (v6)
  {
    MemChunkFree(v6, 0);
    *(this + 44) = 0;
  }

  *(this + 45) = 0;
  result = *(this + 46);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 46) = 0;
  }

  *(this + 47) = 0;
  return result;
}

void *TrigramData::freeLoadedData(TrigramData *this)
{
  v2 = *(this + 49);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 49) = 0;
  }

  *(this + 50) = 0;
  v3 = *(this + 51);
  if (v3)
  {
    MemChunkFree(v3, 0);
    *(this + 51) = 0;
  }

  *(this + 52) = 0;
  v4 = *(this + 53);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(this + 53) = 0;
  }

  *(this + 54) = 0;
  v5 = *(this + 55);
  if (v5)
  {
    MemChunkFree(v5, 0);
    *(this + 55) = 0;
  }

  *(this + 56) = 0;
  v6 = *(this + 57);
  if (v6)
  {
    MemChunkFree(v6, 0);
    *(this + 57) = 0;
  }

  *(this + 58) = 0;
  result = *(this + 59);
  if (result)
  {
    result = MemChunkFree(result, 0);
    *(this + 59) = 0;
  }

  *(this + 60) = 0;
  return result;
}

double QuadgramData::freeLoadedData(QuadgramData *this)
{
  v2 = *(this + 49);
  if (v2)
  {
    MemChunkFree(v2, 0);
    *(this + 49) = 0;
  }

  *(this + 50) = 0;
  v3 = *(this + 51);
  if (v3)
  {
    MemChunkFree(v3, 0);
    *(this + 51) = 0;
  }

  *(this + 52) = 0;
  v4 = *(this + 53);
  if (v4)
  {
    MemChunkFree(v4, 0);
    *(this + 53) = 0;
  }

  *(this + 54) = 0;
  v5 = *(this + 55);
  if (v5)
  {
    MemChunkFree(v5, 0);
    *(this + 55) = 0;
  }

  *(this + 56) = 0;
  v6 = *(this + 57);
  if (v6)
  {
    MemChunkFree(v6, 0);
    *(this + 57) = 0;
  }

  *(this + 58) = 0;
  v7 = *(this + 59);
  if (v7)
  {
    MemChunkFree(v7, 0);
    *(this + 59) = 0;
  }

  *(this + 60) = 0;
  v8 = *(this + 61);
  if (v8)
  {
    MemChunkFree(v8, 0);
    *(this + 61) = 0;
  }

  *(this + 62) = 0;
  v9 = *(this + 63);
  if (v9)
  {
    MemChunkFree(v9, 0);
    *(this + 63) = 0;
  }

  *(this + 64) = 0;
  v10 = *(this + 65);
  if (v10)
  {
    MemChunkFree(v10, 0);
    *(this + 65) = 0;
  }

  *(this + 66) = 0;
  v11 = *(this + 67);
  if (v11)
  {
    MemChunkFree(v11, 0);
    *(this + 67) = 0;
  }

  *(this + 68) = 0;
  v12 = *(this + 69);
  if (v12)
  {
    MemChunkFree(v12, 0);
    *(this + 69) = 0;
  }

  result = 0.0;
  *(this + 70) = 0;
  return result;
}

void WordLanguageModel::initForBuild(WordLanguageModel *this, const WordNgramBuildSpec *x1_0, const WordNgramTemplate *x2_0, double a2, double a3)
{
  *(this + 226) = x1_0;
  *(this + 227) = x2_0;
  *(this + 16) = *(x1_0 + 2);
  *(this + 80) = *(x1_0 + 12);
  WordLanguageModel::initializeScoreToProb(this, a2, a3);
}

void WordLanguageModel::startBuildingNgramLM(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  *(a1 + 184) = a2;
  *(a1 + 192) = a3;
  *(a1 + 200) = a4;
  *(a1 + 1800) = a5;
  if (!*(a5 + 8))
  {
    v10 = *(*(a1 + 16) + 388);
    v11 = *(a2 + 12);
    v12 = v10;
    if (v10 > v11)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a2, v10 - v11, 0);
      v12 = *(*(a1 + 16) + 388);
    }

    *(a2 + 8) = v10;
    if (v12)
    {
      bzero(*a2, 8 * v12);
    }

    *a3 = 0;
    *a4 = 0;
    v13 = *(a1 + 64);
    v14 = *(a5 + 12);
    if (v13 > v14)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a5, v13 - v14, 0);
    }

    v15 = *(a5 + 8);
    if (v15 <= v13)
    {
      if (v15 < v13)
      {
        do
        {
          *(*a5 + 8 * v15++) = 0;
        }

        while (v13 != v15);
      }
    }

    else
    {
      DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::destructAt(a5, v13, v15 - v13);
    }

    *(a5 + 8) = v13;
    **a5 = 0;
    if (*(a1 + 64) >= 2u)
    {
      v16 = 1;
      do
      {
        v17 = MemChunkAlloc(0x70uLL, 0);
        *(*a5 + 8 * v16++) = Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::Hash(v17, 0, *(*(a1 + 16) + 388));
      }

      while (v16 < *(a1 + 64));
    }
  }
}

uint64_t WordLanguageModel::addBuildNgramLM(uint64_t result, uint64_t a2, void *a3, void *a4)
{
  if (*(a2 + 8))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = WordLanguageModel::addBuildOneTranscriptNgramLM(v7, *a2 + v8, *a3 + v8, *(*a4 + 4 * v9++));
      v8 += 16;
    }

    while (v9 < *(a2 + 8));
  }

  return result;
}

uint64_t WordLanguageModel::addBuildOneTranscriptNgramLM(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v53 = a4;
  v45 = *(a2 + 8);
  v42 = *(a1 + 192);
  v43 = *(a1 + 184);
  v46 = *(a1 + 200);
  v6 = *(a1 + 1800);
  v51 = 0;
  v52 = 0;
  v7 = *(a1 + 64);
  if (v7 >= 2)
  {
    v49 = 0;
    v9 = realloc_array(0, &v49, 4 * v7, 0, 0, 1);
    v10 = v49;
    v51 = v49;
    LODWORD(v52) = v7;
    HIDWORD(v52) = v9 >> 2;
    LODWORD(v7) = *(a1 + 64);
    if (v7 >= 2)
    {
      v11 = -1;
      v12 = 1;
      do
      {
        v13 = *(a3 + 8);
        if (v12 <= v13)
        {
          HeadCloneForBuildWordId = WordNgramTemplate::getHeadCloneForBuildWordId(*(a1 + 1816), *(*a3 + 4 * (v11 + v13)));
          v10 = v51;
        }

        else
        {
          HeadCloneForBuildWordId = 16777212;
        }

        v10[v12++] = HeadCloneForBuildWordId;
        --v11;
      }

      while (v12 < *(a1 + 64));
      LODWORD(v7) = *(a1 + 64);
    }
  }

  v49 = 0;
  v50 = 0;
  if (v7)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 4;
    do
    {
      if (v18 != 4)
      {
        memset_pattern16(v48, &unk_26288CFA0, v18 - 4);
      }

      *&v47[v18] = 0xFFFFFF;
      if (v16 == HIDWORD(v50))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v49, 1, 1);
        v16 = v50;
        v15 = v49;
      }

      ++v17;
      v19 = &v15[16 * v16];
      *v19 = v17;
      memcpy(v19 + 4, v48, v18);
      v16 = v50 + 1;
      LODWORD(v50) = v50 + 1;
      v18 += 4;
    }

    while (v17 < *(a1 + 64));
  }

  v20 = v45;
  if (v45)
  {
    v21 = 0;
    v44 = *(*(a1 + 1816) + 4);
    do
    {
      v22 = *(*a2 + 4 * v21);
      v23 = WordNgramTemplate::getHeadCloneForBuildWordId(*(a1 + 1816), v22);
      v25 = v23;
      v26 = v46;
      if (v23 != 16777213)
      {
        if (v23 == 0xFFFFFF)
        {
          v26 = v42;
        }

        else
        {
          v26 = (*v43 + 8 * v23);
        }
      }

      LODWORD(v24) = v53;
      *v26 = *v26 + v24;
      if (*(a1 + 64) >= 2u)
      {
        v27 = 24;
        v28 = 1;
        do
        {
          v29 = 0;
          v30 = v49;
          v31 = (v49 + 16 * v28);
          v31[1] = v25;
          v32 = v51 + 4;
          v33 = &v30[v27];
          do
          {
            *&v33[4 * v29] = *&v32[4 * v29];
            ++v29;
          }

          while (v28 != v29);
          v34 = *Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(*(*v6 + 8 * v28), v31);
          if (v34)
          {
            *(v34 + 28) += v53;
          }

          else
          {
            Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::add(*(*v6 + 8 * v28), v49 + 4 * v28, &v53);
          }

          ++v28;
          v35 = *(a1 + 64);
          v27 += 16;
        }

        while (v28 < v35);
        v36 = (v35 - 1);
        v37 = v51;
        if (v22 == 16777213)
        {
          v25 = v44;
          if (v36 >= 2)
          {
            memset_pattern16(&v51[4 * (v36 - (v35 - 3))], &unk_26288CFA0, 4 * (v35 - 2));
            v25 = v44;
          }
        }

        else if (v36 >= 2)
        {
          v38 = &v51[4 * v36];
          v39 = v36 - 1;
          do
          {
            *v38 = *&v37[4 * v39];
            v38 -= 4;
          }

          while ((v39-- & 0xFFFFFFFE));
        }

        *(v37 + 1) = v25;
        v20 = v45;
      }

      ++v21;
    }

    while (v21 != v20);
  }

  DgnIArray<Utterance *>::~DgnIArray(&v49);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v51);
}

void sub_2627A6AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::add(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v6);
  }

  v7 = *a2;
  if (v7)
  {
    v8 = 0;
    v9 = v7;
    do
    {
      HIDWORD(v10) = v8;
      LODWORD(v10) = v8;
      v8 = a2[v9--] + (v10 >> 19);
    }

    while (v9 * 4);
  }

  else
  {
    v8 = 0;
  }

  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = (-1640531527 * v8) >> -v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v5 + 80);
  v14 = *(v5 + 32);
  if (!v14)
  {
    result = DgnPool::addChunk((v5 + 24));
    v14 = *(v5 + 32);
    LODWORD(v7) = *a2;
  }

  *(v5 + 32) = *v14;
  *(v14 + 8) = 0;
  *(v14 + 12) = v7;
  if (v7)
  {
    v15 = a2 + 1;
    v16 = (v14 + 16);
    v7 = v7;
    do
    {
      v17 = *v15++;
      *v16++ = v17;
      --v7;
    }

    while (v7);
  }

  v18 = (v13 + 8 * v12);
  *(v14 + 28) = *a3;
  *(v14 + 8) = v8;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v14 = *v18;
  }

  else
  {
    *v14 = 0;
    v19 = *v18;
    if (*v18)
    {
      do
      {
        v18 = v19;
        v19 = *v19;
      }

      while (v19);
    }
  }

  *v18 = v14;
  return result;
}

BOOL WordLanguageModel::endBuildingNgramLM(WordLanguageModel *this)
{
  WordLanguageModel::assignBuildLmIds(this);
  v8[0] = 0;
  v8[1] = 0;
  v7 = 0.0;
  v2 = WordLanguageModel::buildUnigramData(this, v8, &v7);
  if (v2)
  {
    v6[0] = 0;
    v6[1] = 0;
    v5[0] = 0;
    v5[1] = 0;
    if (*(this + 16) >= 2u)
    {
      v3 = v7;
      WordLanguageModel::buildNgramProbs(this, 2, v8, v6, v5, v7);
      WordLanguageModel::buildBigramDataFromProbsAndWeights(this, *v6[0], *v5[0]);
      if (*(this + 16) >= 3u)
      {
        WordLanguageModel::buildNgramProbs(this, 3, v8, v6, v5, v3);
        WordLanguageModel::buildTrigramDataFromProbsAndWeights(this, *(v6[0] + 8), *(v5[0] + 8));
      }
    }

    DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll(v5);
    DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll(v6);
  }

  *(this + 23) = 0;
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 225) = 0;
  *(this + 227) = 0;
  *(this + 226) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(v8);
  return v2;
}

void sub_2627A6D4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll(va);
  DgnIOwnArray<HashKEV<unsigned int,unsigned int,StateIdScope> *>::releaseAll(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  _Unwind_Resume(a1);
}

uint64_t WordLanguageModel::assignBuildLmIds(WordLanguageModel *this)
{
  v2 = *(this + 227);
  v3 = *(v2 + 4);
  v4 = *(v2 + 8);
  v5 = *(this + 23);
  v15 = 0;
  v16 = 0;
  WordLanguageModel::createBuildWordIdAndCountArray(this, v5, v3, v4, &v15);
  v6 = v16;
  *(this + 18) = v16 + 1;
  *(this + 26) = v6 + 2;
  v7 = *(*(this + 227) + 12);
  if (v7 == 16777212)
  {
    v8 = 0;
    *(this + 25) = -1;
    v9 = (this + 100);
  }

  else
  {
    *(this + 25) = -1;
    v9 = (this + 100);
    if (*(*(this + 226) + 13) == 1)
    {
      if (*(*v5 + 8 * v7) == 0.0)
      {
        *(this + 25) = v6 + 2;
        *(this + 26) = v6 + 3;
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  WordLanguageModel::maybeAddBuildBegAndEndLmId(this);
  v10 = *(this + 26);
  if (v10 >= 0xFFFF)
  {
    v10 = 0xFFFF;
  }

  *(this + 27) = v10;
  WordLanguageModel::createBuildWordIdToLmIdArray(this, &v15);
  if (v8 && *v9 == -1)
  {
    v11 = *(*(this + 227) + 12);
    if (*(this + 32))
    {
      v12 = *(*(this + 15) + 4 * v11);
    }

    else
    {
      if (*(this + 36))
      {
        v12 = *(*(this + 17) + 2 * v11);
        v13 = v12 == 0xFFFF;
      }

      else
      {
        v12 = *(*(this + 19) + v11);
        v13 = v12 == 255;
      }

      if (v13)
      {
        v12 = -1;
      }
    }

    *v9 = v12;
  }

  return DgnIArray<Utterance *>::~DgnIArray(&v15);
}

BOOL WordLanguageModel::buildUnigramData(uint64_t a1, uint64_t a2, double *a3)
{
  v8 = *(a1 + 184);
  v7 = *(a1 + 192);
  v9 = *(a1 + 200);
  if (*(v8 + 8))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0.0;
    do
    {
      if (WordNgramTemplate::isHeadCloneWordId(*(a1 + 1816), v10))
      {
        v14 = *(*v8 + 8 * v10);
        if (v14 <= 0.0)
        {
          ++v11;
        }

        else
        {
          v13 = v13 + v14;
          ++v12;
        }
      }

      ++v10;
    }

    while (v10 < *(v8 + 8));
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v13 = 0.0;
  }

  if (*(*(a1 + 1816) + 8) == 16777213)
  {
    if (*v9 <= 0.0)
    {
      ++v11;
    }

    else
    {
      v13 = v13 + *v9;
      ++v12;
    }
  }

  v15 = v13 + *v7;
  v16 = **(a1 + 1808);
  v19 = DgnExp(-20.0);
  v20 = (v12 + v11 + 1);
  v21 = v15 * v19 / (1.0 - v20 * v19);
  if (v16 >= v21)
  {
    v22 = v16;
  }

  else
  {
    v22 = v21;
  }

  v23 = v15 + v20 * v22;
  v24 = (v23 + 0.5);
  if (v24)
  {
    if (vabdd_f64(v23, v24) > 1.0)
    {
      v48 = v15 + v20 * v22;
      errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 14124, "lm/wordlm", 28, "%f", v17, v18, SLOBYTE(v48));
    }

    v25 = *(a1 + 104);
    v50 = 0;
    v51 = 0;
    v26 = realloc_array(0, &v51, 8 * v25, 0, 0, 1);
    v27 = v51;
    v49 = v51;
    v28 = *(a1 + 104);
    LODWORD(v50) = v25;
    HIDWORD(v50) = v26 >> 3;
    *v51 = 0;
    if (v28 >= 2)
    {
      bzero(v27 + 8, 8 * (v28 - 1));
    }

    if (*(v8 + 8))
    {
      v29 = 0;
      do
      {
        LmId = WordLanguageModel::getLmId(a1, v29);
        if (LmId != -1)
        {
          v49[LmId] = *(*v8 + 8 * v29) + v49[LmId];
        }

        ++v29;
      }

      while (v29 < *(v8 + 8));
    }

    if (*(*(a1 + 1816) + 8) == 16777213)
    {
      v49[*(a1 + 116)] = *v9;
    }

    v31 = *(a1 + 104);
    if (v31 >= 2)
    {
      v32 = v49 + 1;
      v33 = v31 - 1;
      do
      {
        *v32 = v22 + *v32;
        ++v32;
        --v33;
      }

      while (v33);
    }

    v34 = *v7;
    v35 = *(a1 + 180);
    if (v31 > v35)
    {
      DgnPrimArray<short>::reallocElts(a1 + 168, v31 - v35, 0);
    }

    *(a1 + 176) = v31;
    **(a1 + 168) = 20000;
    v36 = DgnLog(v22 / v23);
    LODWORD(v3) = *(a1 + 32);
    v37 = *(a1 + 104);
    v38 = *(a2 + 12);
    v39 = v37;
    if (v37 > v38)
    {
      DgnPrimArray<unsigned long long>::reallocElts(a2, v37 - v38, 0);
      v39 = *(a1 + 104);
    }

    *(a2 + 8) = v37;
    v40 = *a2;
    **a2 = 0;
    if (v39 >= 2)
    {
      v41 = (0.5 - v36 * v3);
      for (i = 1; i < v39; *&v40[i++] = v44)
      {
        v43 = v49[i];
        if (v43 == v22)
        {
          *(*(a1 + 168) + 2 * i) = v41;
          v44 = v22 / v23;
        }

        else
        {
          v44 = v43 / v23;
          v45 = DgnLog(v43 / v23);
          LODWORD(v46) = *(a1 + 32);
          *(*(a1 + 168) + 2 * i) = (0.5 - v45 * v46);
          v40 = *a2;
          v39 = *(a1 + 104);
        }
      }
    }

    *a3 = (v22 + v34) / v23;
    DgnPrimArray<unsigned int>::~DgnPrimArray(&v49);
  }

  return v24 != 0;
}

void sub_2627A727C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  _Unwind_Resume(a1);
}

uint64_t WordLanguageModel::buildNgramProbs(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  v102 = (a2 - 1);
  v10 = *(**(a1 + 1800) + 8 * v102);
  v117 = 0;
  v118 = 0;
  v11 = WordLanguageModel::computeCountHistogram(a1, a2, v10, &v117);
  v16 = *(a1 + 1808);
  v17 = 24;
  if (a2 == 2)
  {
    v17 = 16;
  }

  v18 = *(v16 + v17);
  if (v18)
  {
    v19 = WordLanguageModel::computeLOODiscount(v11, *(v16 + v17), &v117, v12, v13, v14, v15);
  }

  else
  {
    v19 = 0.0;
  }

  v101 = a2 - 2;
  if (a2 == 2)
  {
    v20 = *(v16 + 20);
    v115 = 2;
LABEL_9:
    memset(v116, 255, 4 * a2);
    v21 = 0;
    goto LABEL_10;
  }

  v20 = *(v16 + 28);
  v115 = a2;
  if (a2)
  {
    goto LABEL_9;
  }

  v21 = 1;
LABEL_10:
  v114[0] = 0;
  v114[1] = 0;
  DgnPrimArray<int>::copyArraySlice(v114, &v117, 0, v118);
  v22 = WordLanguageModel::computeMinCountNotToPrune(a1, v114, a2, v10, v20, &v115);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v114);
  v111 = a2;
  if ((v21 & 1) == 0)
  {
    memset(&v112, 255, 4 * a2);
  }

  v109 = v102;
  if (v102)
  {
    memset(v110, 255, 4 * v102);
  }

  v23 = MemChunkAlloc(0x70uLL, 0);
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::Hash(v23, 0, 2 * *(v10 + 8) + 2);
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::Hash(v108, 0, 2 * *(v10 + 8) + 2);
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,unsigned int>::Hash(v107, 0, 2 * *(v10 + 8) + 2);
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,unsigned int>::Hash(v106, 0, 2 * *(v10 + 8) + 2);
  v24 = *(v10 + 12);
  if (v24)
  {
    v25 = *(v10 + 80);
    v26 = *v25;
    if (*v25)
    {
      LODWORD(v27) = 0;
    }

    else
    {
      v27 = 0;
      v28 = v25 + 1;
      do
      {
        if (v24 - 1 == v27)
        {
          goto LABEL_74;
        }

        v26 = v28[v27++];
      }

      while (!v26);
    }
  }

  else
  {
    LODWORD(v27) = 0;
    v26 = 0;
  }

  if (v27 < v24)
  {
    v29 = -1.0;
    v98 = v23;
    v103 = a4;
    do
    {
      v30 = v10;
      v105 = *(v26 + 7);
      if (v111)
      {
        for (i = 0; i < v111; ++i)
        {
          *(&v111 + i + 1) = WordLanguageModel::getLmId(a1, *(v26 + i + 4));
          v32 = v111;
        }
      }

      else
      {
        v32 = 0;
      }

      if (v109)
      {
        memcpy(v110, v113, 4 * v109);
      }

      v33 = *(a1 + 108);
      v10 = v30;
      if (v33 > v112)
      {
        if (v32 == 2)
        {
          if (v113[0] >= 0xFFFFF1u)
          {
            goto LABEL_62;
          }
        }

        else if (v33 <= v113[0] || v113[1] >= 0xFFFFF1u)
        {
          goto LABEL_62;
        }

        LODWORD(v29) = v105;
        v34 = v29;
        if (v22 > v34)
        {
          if (v22 + -1.0 != v34)
          {
            goto LABEL_62;
          }

          v35 = v32 - 1;
          while ((v35 & 0x80000000) == 0)
          {
            v36 = v35 & 0x7FFFFFFF;
            v37 = v113[v36 - 1];
            v38 = *&v116[v36 * 4];
            --v35;
            if (v37 != v38)
            {
              if (v37 >= v38)
              {
                goto LABEL_62;
              }

              break;
            }
          }
        }

        v121 = v34;
        Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::add(v23, &v111, &v121);
        v39 = 1.0;
        if (v102)
        {
          LODWORD(v121) = v102;
          memcpy(&v121 + 4, &v112, 4 * v102);
          if ((v101 & 0x80000000) == 0)
          {
            if (v101)
            {
              v40 = v102 - 2;
              v41 = 4 * v101;
              v42 = v101;
              while (1)
              {
                v43 = *Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(*(*v103 + 8 * v40), &v121);
                if (v43)
                {
                  break;
                }

                v44 = *(*a5 + 8 * v40);
                v119 = v42;
                memcpy(&v120, &v122, v41);
                Bucket = Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(v44, &v119);
                if (*Bucket)
                {
                  v39 = v39 * *(*Bucket + 32);
                }

                LODWORD(v121) = v42--;
                --v40;
                v41 -= 4;
                if (!v41)
                {
                  goto LABEL_50;
                }
              }

              v39 = v39 * *(v43 + 32);
              a4 = v103;
              v23 = v98;
              v10 = v30;
            }

            else
            {
LABEL_50:
              v46 = a6;
              v10 = v30;
              if (HIDWORD(v121) != -1)
              {
                v46 = *(*a3 + 8 * HIDWORD(v121));
              }

              v39 = v39 * v46;
              a4 = v103;
              v23 = v98;
            }
          }
        }

        v104 = v39;
        v47 = *Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(v108, &v109);
        if (v47)
        {
          *(v47 + 32) = v104 + *(v47 + 32);
        }

        else
        {
          Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::add(v108, &v109, &v104);
        }

        if ((v18 & 0x80000000) == 0 && v105 > v18)
        {
          v48 = *Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(v106, &v109);
          if (v48)
          {
            *(v48 + 28) += v105;
          }

          else
          {
            Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::add(v106, &v109, &v105);
          }
        }
      }

LABEL_62:
      v49 = *Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(v107, &v109);
      if (v49)
      {
        *(v49 + 28) += v105;
      }

      else
      {
        Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::add(v107, &v109, &v105);
      }

      v50 = *v26;
      v51 = *(v10 + 12);
      if (!*v26)
      {
        v27 = (v27 + 1);
        if (v27 >= v51)
        {
          v50 = v26;
        }

        else
        {
          v52 = *(v10 + 80);
          v50 = *(v52 + 8 * v27);
          if (!v50)
          {
            v53 = (v52 + 8 * v27 + 8);
            v54 = ~v27 + v51;
            while (v54)
            {
              v55 = *v53++;
              v50 = v55;
              LODWORD(v27) = v27 + 1;
              --v54;
              if (v55)
              {
                goto LABEL_73;
              }
            }

            break;
          }
        }
      }

LABEL_73:
      v26 = v50;
    }

    while (v27 < v51);
  }

LABEL_74:
  v56 = MemChunkAlloc(0x70uLL, 0);
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::Hash(v56, 0, 2 * *(v23 + 2) + 2);
  v57 = *(v23 + 3);
  if (!v57)
  {
    v59 = 0;
    goto LABEL_81;
  }

  v58 = v23[10];
  v59 = *v58;
  if (*v58)
  {
LABEL_81:
    LODWORD(v60) = 0;
    goto LABEL_82;
  }

  v60 = 0;
  v61 = v58 + 1;
  do
  {
    if (v57 - 1 == v60)
    {
      goto LABEL_112;
    }

    v59 = v61[v60++];
  }

  while (!v59);
LABEL_82:
  if (v60 >= v57)
  {
    goto LABEL_112;
  }

  while (1)
  {
    if (v59)
    {
      v62 = (v59 + 4);
    }

    else
    {
      v62 = 0;
    }

    v63 = v109;
    if (v109)
    {
      v64 = v59 + 12;
      if (!v59)
      {
        v64 = 0;
      }

      v65 = (v64 + 8);
      v66 = v110;
      do
      {
        v67 = *v65++;
        *v66++ = v67;
        --v63;
      }

      while (v63);
    }

    v68 = Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(v107, &v109);
    if (*v68)
    {
      v69 = (*v68 + 28);
    }

    else
    {
      v69 = 0;
    }

    v70 = *v62;
    if (v18 < 0 || v18 >= v70)
    {
      *v62 = v70 - v19;
    }

    LODWORD(v22) = *v69;
    v71 = Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(v106, &v109);
    v72 = *&v22;
    if (*v71 && *(*v71 + 28) == *v69)
    {
      v72 = v72 + 1.0;
    }

    v121 = *v62 / v72;
    *v62 = v121;
    v73 = *Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(v56, &v109);
    if (v73)
    {
      *(v73 + 32) = v121 + *(v73 + 32);
    }

    else
    {
      Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::add(v56, &v109, &v121);
    }

    v74 = *v59;
    v75 = *(v23 + 3);
    if (*v59)
    {
      goto LABEL_111;
    }

    v60 = (v60 + 1);
    if (v60 >= v75)
    {
      v74 = v59;
      goto LABEL_111;
    }

    v76 = v23[10];
    v74 = *(v76 + 8 * v60);
    if (!v74)
    {
      break;
    }

LABEL_111:
    v59 = v74;
    if (v60 >= v75)
    {
      goto LABEL_112;
    }
  }

  v77 = (v76 + 8 * v60 + 8);
  v78 = ~v60 + v75;
  while (v78)
  {
    v79 = *v77++;
    v74 = v79;
    LODWORD(v60) = v60 + 1;
    --v78;
    if (v79)
    {
      goto LABEL_111;
    }
  }

LABEL_112:
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,unsigned int>::~Hash(v106);
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,unsigned int>::~Hash(v107);
  v80 = MemChunkAlloc(0x70uLL, 0);
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::Hash(v80, 0, 2 * *(v56 + 2) + 2);
  v81 = *(v56 + 3);
  if (v81)
  {
    v82 = v56[10];
    v83 = *v82;
    if (!*v82)
    {
      v84 = 0;
      v85 = v82 + 1;
      do
      {
        if (v81 - 1 == v84)
        {
          goto LABEL_136;
        }

        v83 = v85[v84++];
      }

      while (!v83);
      goto LABEL_120;
    }
  }

  else
  {
    v83 = 0;
  }

  LODWORD(v84) = 0;
LABEL_120:
  if (v84 >= v81)
  {
    goto LABEL_136;
  }

  while (2)
  {
    if (v83)
    {
      v86 = v83 + 3;
    }

    else
    {
      v86 = 0;
    }

    v87 = *Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(v108, v86);
    if (v87)
    {
      v88 = *(v87 + 32);
    }

    else
    {
      v88 = 0.0;
    }

    v107[0] = (1.0 - *(v83 + 4)) / (1.0 - v88);
    Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::add(v80, v83 + 3, v107);
    v89 = *v83;
    v90 = *(v56 + 3);
    if (*v83)
    {
LABEL_135:
      v83 = v89;
      if (v84 >= v90)
      {
        goto LABEL_136;
      }

      continue;
    }

    break;
  }

  v84 = (v84 + 1);
  if (v84 >= v90)
  {
    v89 = v83;
    goto LABEL_135;
  }

  v91 = v56[10];
  v89 = *(v91 + 8 * v84);
  if (v89)
  {
    goto LABEL_135;
  }

  v92 = (v91 + 8 * v84 + 8);
  v93 = ~v84 + v90;
  while (v93)
  {
    v94 = *v92++;
    v89 = v94;
    LODWORD(v84) = v84 + 1;
    --v93;
    if (v94)
    {
      goto LABEL_135;
    }
  }

LABEL_136:
  (**v56)(v56);
  MemChunkFree(v56, 0);
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::~Hash(v108);
  v95 = *(a4 + 8);
  if (v95 == *(a4 + 12))
  {
    DgnPrimArray<unsigned long long>::reallocElts(a4, 1, 1);
    v95 = *(a4 + 8);
  }

  *(*a4 + 8 * v95) = v23;
  *(a4 + 8) = v95 + 1;
  v96 = *(a5 + 8);
  if (v96 == *(a5 + 12))
  {
    DgnPrimArray<unsigned long long>::reallocElts(a5, 1, 1);
    v96 = *(a5 + 8);
  }

  *(*a5 + 8 * v96) = v80;
  *(a5 + 8) = v96 + 1;
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v117);
}

void sub_2627A7BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,unsigned int>::~Hash(&a24);
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,unsigned int>::~Hash(&a38);
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::~Hash(&a52);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v52 - 184);
  _Unwind_Resume(a1);
}

uint64_t WordLanguageModel::buildBigramDataFromProbsAndWeights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 56);
  v55 = 0;
  v56 = 0;
  v53 = 0;
  v54 = 0;
  v7 = *(a1 + 104);
  v8 = *(a1 + 356);
  v9 = v7;
  if (v7 > v8)
  {
    DgnPrimArray<short>::reallocElts(a1 + 344, v7 - v8, 0);
    v9 = *(a1 + 104);
  }

  *(a1 + 352) = v7;
  v10 = *(a1 + 344);
  *v10 = 20000;
  v52 = 0xFFFFFFFF00000001;
  if (v9 >= 2)
  {
    v11 = 1;
    do
    {
      if (*(*(a1 + 168) + 2 * v11) == 20000)
      {
        v10[v11] = 20000;
      }

      else
      {
        HIDWORD(v52) = v11;
        v12 = *Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(a3, &v52);
        if (v12)
        {
          v13 = DgnLog(*(v12 + 32));
          LODWORD(v14) = *(a1 + 32);
          v15 = -(v13 * v14);
          v10 = *(a1 + 344);
          if (v15 <= 0.0)
          {
            v16 = (v15 + -0.5);
            if ((1 - v6) > v16)
            {
              LOWORD(v16) = 1 - v6;
            }
          }

          else
          {
            v16 = (v15 + 0.5);
            if ((v6 - 1) < v16)
            {
              LOWORD(v16) = v6 - 1;
            }
          }

          v10[v11] = v16;
        }

        else
        {
          v10 = *(a1 + 344);
          v10[v11] = 0;
        }
      }

      ++v11;
    }

    while (v11 < *(a1 + 104));
  }

  if (!*(a2 + 8))
  {
    goto LABEL_63;
  }

  v50 = 0;
  v51 = 0;
  v17 = *(a2 + 12);
  if (v17)
  {
    v18 = *(a2 + 80);
    v19 = *v18;
    if (!*v18)
    {
      v20 = 0;
      v21 = v18 + 1;
      while (v17 - 1 != v20)
      {
        v19 = v21[v20++];
        if (v19)
        {
          goto LABEL_26;
        }
      }

      goto LABEL_47;
    }
  }

  else
  {
    v19 = 0;
  }

  LODWORD(v20) = 0;
LABEL_26:
  if (v20 >= v17)
  {
LABEL_47:
    v23 = 0;
    v22 = 0;
    goto LABEL_48;
  }

  v22 = 0;
  LODWORD(v23) = 0;
  while (1)
  {
    if (v19)
    {
      v24 = v19 + 3;
    }

    else
    {
      v24 = 0;
    }

    if (v23 == HIDWORD(v51))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(&v50, 1, 1);
      LODWORD(v23) = v51;
      v22 = v50;
    }

    v25 = &v22[16 * v23];
    v26 = *v24;
    *v25 = v26;
    if (v26)
    {
      v27 = (v24 + 1);
      v28 = v25 + 4;
      do
      {
        v29 = *v27++;
        *v28++ = v29;
        --v26;
      }

      while (v26);
      LODWORD(v23) = v51;
    }

    v23 = (v23 + 1);
    LODWORD(v51) = v23;
    v30 = *v19;
    v31 = *(a2 + 12);
    if (*v19)
    {
      goto LABEL_45;
    }

    v20 = (v20 + 1);
    if (v20 >= v31)
    {
      v30 = v19;
      goto LABEL_45;
    }

    v32 = *(a2 + 80);
    v30 = *(v32 + 8 * v20);
    if (!v30)
    {
      break;
    }

LABEL_45:
    v19 = v30;
    if (v20 >= v31)
    {
      goto LABEL_48;
    }
  }

  v33 = (v32 + 8 * v20 + 8);
  v34 = ~v20 + v31;
  while (v34)
  {
    v35 = *v33++;
    v30 = v35;
    LODWORD(v20) = v20 + 1;
    --v34;
    if (v35)
    {
      goto LABEL_45;
    }
  }

LABEL_48:
  mrec_qsort_r<BuildWordIdNgramCmp>(v22, v23, 16);
  v36 = 0;
  v49[0] = 0;
  v49[1] = 0;
  v37 = *(v50 + 8);
  v38 = v51;
  do
  {
    if (v36 == v38 || (v39 = v50, v40 = v50 + 16 * v36, v37 != *(v40 + 8)))
    {
      BigramData::fillBigramRecord((a1 + 360), v37, &v55, &v53, v49);
      v38 = v51;
      if (v36 == v51)
      {
        break;
      }

      LODWORD(v56) = 0;
      LODWORD(v54) = 0;
      v37 = *(v50 + 16 * v36 + 8);
    }

    else
    {
      v41 = *(v40 + 4);
      v42 = v56;
      if (v56 == HIDWORD(v56))
      {
        DgnPrimArray<short>::reallocElts(&v55, 1, 1);
        v42 = v56;
        v39 = v50;
      }

      *(v55 + 2 * v42) = v41;
      LODWORD(v56) = v42 + 1;
      Bucket = Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(a2, (v39 + 16 * v36));
      v44 = DgnLog(*(*Bucket + 32));
      LODWORD(v45) = *(a1 + 32);
      if ((v6 - 1) >= (0.5 - v44 * v45))
      {
        v46 = (0.5 - v44 * v45);
      }

      else
      {
        v46 = v6 - 1;
      }

      v47 = v54;
      if (v54 == HIDWORD(v54))
      {
        DgnPrimArray<short>::reallocElts(&v53, 1, 1);
        v47 = v54;
      }

      v53[v47] = v46;
      LODWORD(v54) = v47 + 1;
      ++v36;
      v38 = v51;
    }
  }

  while (v36 <= v38);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v49);
  DgnIArray<Utterance *>::~DgnIArray(&v50);
LABEL_63:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v53);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v55);
}

void sub_2627A8038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  _Unwind_Resume(a1);
}

uint64_t WordLanguageModel::buildTrigramDataFromProbsAndWeights(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v6 = v5 - 1;
  v88 = 0;
  v89 = 0;
  v86 = 0;
  v87 = 0;
  v84 = 0;
  v85 = 0;
  v82 = 0;
  v83 = 0;
  if (*(a3 + 8))
  {
    v80 = 0;
    v81 = 0;
    v8 = *(a3 + 12);
    if (v8)
    {
      v9 = *(a3 + 80);
      v10 = *v9;
      if (!*v9)
      {
        v11 = 0;
        v12 = v9 + 1;
        while (v8 - 1 != v11)
        {
          v10 = v12[v11++];
          if (v10)
          {
            goto LABEL_9;
          }
        }

LABEL_30:
        v14 = 0;
        v13 = 0;
        goto LABEL_31;
      }

      LODWORD(v11) = 0;
    }

    else
    {
      LODWORD(v11) = 0;
      v10 = 0;
    }

LABEL_9:
    if (v11 < v8)
    {
      v13 = 0;
      LODWORD(v14) = 0;
      while (1)
      {
        if (v10)
        {
          v15 = v10 + 3;
        }

        else
        {
          v15 = 0;
        }

        if (v14 == HIDWORD(v81))
        {
          DgnArray<DgnPrimArray<double>>::reallocElts(&v80, 1, 1);
          LODWORD(v14) = v81;
          v13 = v80;
        }

        v16 = &v13[16 * v14];
        v17 = *v15;
        *v16 = v17;
        if (v17)
        {
          v18 = (v15 + 1);
          v19 = v16 + 4;
          do
          {
            v20 = *v18++;
            *v19++ = v20;
            --v17;
          }

          while (v17);
          LODWORD(v14) = v81;
        }

        v14 = (v14 + 1);
        LODWORD(v81) = v14;
        v21 = *v10;
        v22 = *(a3 + 12);
        if (!*v10)
        {
          v11 = (v11 + 1);
          if (v11 >= v22)
          {
            v21 = v10;
          }

          else
          {
            v23 = *(a3 + 80);
            v21 = *(v23 + 8 * v11);
            if (!v21)
            {
              v24 = (v23 + 8 * v11 + 8);
              v25 = ~v11 + v22;
              while (v25)
              {
                v26 = *v24++;
                v21 = v26;
                LODWORD(v11) = v11 + 1;
                --v25;
                if (v26)
                {
                  goto LABEL_28;
                }
              }

LABEL_31:
              mrec_qsort_r<BuildWordIdNgramCmp>(v13, v14, 16);
              v27 = 0;
              v28 = *(v80 + 8);
              v29 = v81;
              while (2)
              {
                if (v27 == v29)
                {
                  LOWORD(v30) = v89;
                  goto LABEL_43;
                }

                v31 = v80;
                v32 = v80 + 16 * v27;
                v30 = v89;
                if (v28 == *(v32 + 8))
                {
                  v33 = *(v32 + 4);
                  if (v89 == HIDWORD(v89))
                  {
                    DgnPrimArray<short>::reallocElts(&v88, 1, 1);
                    v30 = v89;
                    v31 = v80;
                  }

                  *(v88 + 2 * v30) = v33;
                  LODWORD(v89) = v30 + 1;
                  Bucket = Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(a3, (v31 + 16 * v27));
                  v35 = DgnLog(*(*Bucket + 32));
                  LODWORD(v36) = *(a1 + 32);
                  v37 = -(v35 * v36);
                  v38 = v87;
                  if (v37 <= 0.0)
                  {
                    if ((1 - v5) <= (v37 + -0.5))
                    {
                      v39 = (v37 + -0.5);
                    }

                    else
                    {
                      v39 = 1 - v5;
                    }

                    if (v87 == HIDWORD(v87))
                    {
LABEL_55:
                      DgnPrimArray<short>::reallocElts(&v86, 1, 1);
                      v38 = v87;
                    }
                  }

                  else
                  {
                    if (v6 >= (v37 + 0.5))
                    {
                      v39 = (v37 + 0.5);
                    }

                    else
                    {
                      v39 = v5 - 1;
                    }

                    if (v87 == HIDWORD(v87))
                    {
                      goto LABEL_55;
                    }
                  }

                  *(v86 + 2 * v38) = v39;
                  LODWORD(v87) = v38 + 1;
                  ++v27;
                  v29 = v81;
                }

                else
                {
LABEL_43:
                  TrigramData::allocTri1((a1 + 744), v28, v30);
                  if (v89)
                  {
                    v40 = 0;
                    v41 = *(a1 + 824);
                    do
                    {
                      v42 = v40 + *(*(a1 + 808) + 4 * v28);
                      v43 = v42;
                      *(v41 + 2 * v42) = 0;
                      if (*(a1 + 748))
                      {
                        *(*(a1 + 856) + v42) = 0;
                      }

                      else
                      {
                        *(*(a1 + 840) + 2 * v42) = 20000;
                      }

                      TrigramData::tri2SetUnallocated(a1 + 744, v42);
                      v41 = *(a1 + 824);
                      *(v41 + 2 * v43) = *(v88 + 2 * v40);
                      *(*(a1 + 840) + 2 * v43) = *(v86 + 2 * v40++);
                    }

                    while (v40 < v89);
                  }

                  v29 = v81;
                  if (v27 == v81)
                  {
LABEL_58:
                    DgnIArray<Utterance *>::~DgnIArray(&v80);
                    goto LABEL_59;
                  }

                  LODWORD(v89) = 0;
                  LODWORD(v87) = 0;
                  v28 = *(v80 + 16 * v27 + 8);
                }

                if (v27 > v29)
                {
                  goto LABEL_58;
                }

                continue;
              }
            }
          }
        }

LABEL_28:
        v10 = v21;
        if (v11 >= v22)
        {
          goto LABEL_31;
        }
      }
    }

    goto LABEL_30;
  }

LABEL_59:
  if (!*(a2 + 8))
  {
    goto LABEL_109;
  }

  v80 = 0;
  v81 = 0;
  v44 = *(a2 + 12);
  if (v44)
  {
    v45 = *(a2 + 80);
    v46 = *v45;
    if (!*v45)
    {
      v47 = 0;
      v48 = v45 + 1;
      while (v44 - 1 != v47)
      {
        v46 = v48[v47++];
        if (v46)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_89;
    }
  }

  else
  {
    v46 = 0;
  }

  LODWORD(v47) = 0;
LABEL_68:
  if (v47 >= v44)
  {
LABEL_89:
    v50 = 0;
    v49 = 0;
    goto LABEL_90;
  }

  v49 = 0;
  LODWORD(v50) = 0;
  while (1)
  {
    if (v46)
    {
      v51 = v46 + 3;
    }

    else
    {
      v51 = 0;
    }

    if (v50 == HIDWORD(v81))
    {
      DgnArray<DgnPrimArray<double>>::reallocElts(&v80, 1, 1);
      LODWORD(v50) = v81;
      v49 = v80;
    }

    v52 = &v49[16 * v50];
    v53 = *v51;
    *v52 = v53;
    if (v53)
    {
      v54 = (v51 + 1);
      v55 = v52 + 4;
      do
      {
        v56 = *v54++;
        *v55++ = v56;
        --v53;
      }

      while (v53);
      LODWORD(v50) = v81;
    }

    v50 = (v50 + 1);
    LODWORD(v81) = v50;
    v57 = *v46;
    v58 = *(a2 + 12);
    if (*v46)
    {
      goto LABEL_87;
    }

    v47 = (v47 + 1);
    if (v47 >= v58)
    {
      v57 = v46;
      goto LABEL_87;
    }

    v59 = *(a2 + 80);
    v57 = *(v59 + 8 * v47);
    if (!v57)
    {
      break;
    }

LABEL_87:
    v46 = v57;
    if (v47 >= v58)
    {
      goto LABEL_90;
    }
  }

  v60 = (v59 + 8 * v47 + 8);
  v61 = ~v47 + v58;
  while (v61)
  {
    v62 = *v60++;
    v57 = v62;
    LODWORD(v47) = v47 + 1;
    --v61;
    if (v62)
    {
      goto LABEL_87;
    }
  }

LABEL_90:
  mrec_qsort_r<BuildWordIdNgramCmp>(v49, v50, 16);
  v63 = 0;
  v64 = 0;
  v79[0] = 0;
  v79[1] = 0;
  v66 = *(v80 + 8);
  v65 = *(v80 + 12);
  v67 = v81;
  do
  {
    if (v63 != v67 && (v68 = v80, v69 = (v80 + 16 * v63), v65 == v69[3]) && v66 == v69[2])
    {
      v70 = v69[1];
      v71 = v85;
      if (v85 == HIDWORD(v85))
      {
        DgnPrimArray<short>::reallocElts(&v84, 1, 1);
        v71 = v85;
        v68 = v80;
      }

      *(v84 + 2 * v71) = v70;
      LODWORD(v85) = v71 + 1;
      v72 = Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(a2, (v68 + 16 * v63));
      v73 = DgnLog(*(*v72 + 32));
      LODWORD(v74) = *(a1 + 32);
      if (v6 >= (0.5 - v73 * v74))
      {
        v75 = (0.5 - v73 * v74);
      }

      else
      {
        v75 = v6;
      }

      v76 = v83;
      if (v83 == HIDWORD(v83))
      {
        DgnPrimArray<short>::reallocElts(&v82, 1, 1);
        v76 = v83;
      }

      v82[v76] = v75;
      LODWORD(v83) = v76 + 1;
      ++v63;
      v67 = v81;
    }

    else
    {
      TrigramData::fillTrigramRecord(a1 + 744, *(*(a1 + 808) + 4 * v65) + v64, &v84, &v82, v79);
      v67 = v81;
      if (v63 == v81)
      {
        break;
      }

      v77 = v80 + 16 * v63;
      if (v65 == *(v77 + 12))
      {
        ++v64;
      }

      else
      {
        v64 = 0;
      }

      LODWORD(v85) = 0;
      LODWORD(v83) = 0;
      v66 = *(v77 + 8);
      v65 = *(v77 + 12);
    }
  }

  while (v63 <= v67);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v79);
  DgnIArray<Utterance *>::~DgnIArray(&v80);
LABEL_109:
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v82);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v84);
  DgnPrimArray<unsigned int>::~DgnPrimArray(&v86);
  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v88);
}

void sub_2627A86D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va4, a3);
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  va_copy(va3, va2);
  v10 = va_arg(va3, void);
  v12 = va_arg(va3, void);
  va_copy(va4, va3);
  v13 = va_arg(va4, void);
  v15 = va_arg(va4, void);
  DgnIArray<Utterance *>::~DgnIArray(va);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va1);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va3);
  DgnPrimArray<unsigned int>::~DgnPrimArray(va4);
  _Unwind_Resume(a1);
}

uint64_t WordLanguageModel::addWordDuringBuild(WordNgramTemplate **this, unsigned int a2)
{
  result = WordNgramTemplate::isHeadCloneWordId(this[227], a2);
  if (result)
  {
    v5 = this[23];
    for (i = *(v5 + 8); i <= a2; *(v5 + 8) = i)
    {
      if (i == *(v5 + 12))
      {
        result = DgnPrimArray<unsigned long long>::reallocElts(v5, 1, 1);
        i = *(v5 + 8);
      }

      *(*v5 + 8 * i++) = 0;
    }
  }

  return result;
}

double WordLanguageModel::computeLOOLogLikelihoodDerivative(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t *a6, int a7)
{
  if (*(a6 + 2) - 1 > a7)
  {
    v7 = a7 + 1;
  }

  else
  {
    v7 = *(a6 + 2) - 1;
  }

  if (a7 < 0)
  {
    v7 = *(a6 + 2) - 1;
  }

  v8 = *a6;
  v9 = 0.0;
  if (v7 >= 2)
  {
    if (v7 + 1 > 3)
    {
      v10 = v7 + 1;
    }

    else
    {
      v10 = 3;
    }

    v11 = 2;
    a3 = -1.0;
    do
    {
      LODWORD(a4) = *(v8 + 4 * v11);
      a4 = v11 * *&a4 / (v11 + -1.0 - a1);
      v9 = v9 + a4;
      ++v11;
    }

    while (v10 != v11);
  }

  LODWORD(a3) = *(v8 + 4);
  return *&a3 / a1 - v9;
}

WordLanguageModel *WordLanguageModel::computeCountHistogram(WordLanguageModel *this, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v7 = this;
  if (!*(a4 + 12))
  {
    this = DgnPrimArray<unsigned int>::reallocElts(a4, 1, 0);
  }

  *(a4 + 8) = 1;
  **a4 = 0;
  if (a2)
  {
    this = memset(&v30, 255, 4 * a2);
  }

  v8 = *(a3 + 12);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v9 = *(a3 + 80);
  v10 = *v9;
  if (*v9)
  {
LABEL_12:
    LODWORD(v11) = 0;
    goto LABEL_13;
  }

  v11 = 0;
  v12 = v9 + 1;
  do
  {
    if (v8 - 1 == v11)
    {
      return this;
    }

    v10 = v12[v11++];
  }

  while (!v10);
LABEL_13:
  if (v11 >= v8)
  {
    return this;
  }

  while (1)
  {
    v13 = *(v10 + 7);
    if (a2)
    {
      v14 = (v10 + 2);
      v16 = a2;
      v15 = &v30;
      do
      {
        v17 = *v14++;
        this = WordLanguageModel::getLmId(v7, v17);
        *v15++ = this;
        --v16;
      }

      while (v16);
      v18 = *(v7 + 27);
      if (v18 <= v30)
      {
        goto LABEL_33;
      }

      v19 = v31;
      if (a2 == 2)
      {
        if (v31 < 0xFFFFF1)
        {
          goto LABEL_27;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v18 = *(v7 + 27);
      if (v18 <= v30)
      {
        goto LABEL_33;
      }

      v19 = v31;
    }

    if (v18 > v19 && v32 < 0xFFFFF1)
    {
LABEL_27:
      v21 = *(a4 + 8);
      v22 = v21;
      if (v13 >= v21)
      {
        do
        {
          if (v21 == *(a4 + 12))
          {
            this = DgnPrimArray<unsigned int>::reallocElts(a4, 1, 1);
            v21 = *(a4 + 8);
          }

          v23 = *a4;
          *(*a4 + 4 * v21) = 0;
          v21 = *(a4 + 8) + 1;
          *(a4 + 8) = v21;
          ++v22;
        }

        while (v22 <= v13);
      }

      else
      {
        v23 = *a4;
      }

      ++v23[v13];
    }

LABEL_33:
    v24 = *v10;
    v25 = *(a3 + 12);
    if (!*v10)
    {
      v11 = (v11 + 1);
      if (v11 >= v25)
      {
        v24 = v10;
        goto LABEL_41;
      }

      v26 = *(a3 + 80);
      v24 = *(v26 + 8 * v11);
      if (!v24)
      {
        break;
      }
    }

LABEL_41:
    v10 = v24;
    if (v11 >= v25)
    {
      return this;
    }
  }

  v27 = (v26 + 8 * v11 + 8);
  v28 = ~v11 + v25;
  while (v28)
  {
    v29 = *v27++;
    v24 = v29;
    LODWORD(v11) = v11 + 1;
    --v28;
    if (v29)
    {
      goto LABEL_41;
    }
  }

  return this;
}

double WordLanguageModel::computeLOODiscount(uint64_t a1, int a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v7 = 0.5;
  if (*(a3 + 8) >= 3u && *(*a3 + 4))
  {
    v10 = WordLanguageModel::computeLOOLogLikelihoodDerivative(0.000001, a5, a6, a7, a1, a3, a2);
    v16 = WordLanguageModel::computeLOOLogLikelihoodDerivative(0.999999, v12, v13, v14, v11, a3, a2);
    if (v10 >= 0.0 || v16 <= 0.0)
    {
      if (v10 <= 0.0 || v16 >= 0.0)
      {
        return v7;
      }

      v20 = 0.499999;
    }

    else
    {
      v20 = -0.499999;
    }

    v7 = 0.499999;
    if (fabs(v20) > 0.000001)
    {
      do
      {
        v21 = v20 * 0.5;
        v22 = WordLanguageModel::computeLOOLogLikelihoodDerivative(v7, v17, v18, v19, v15, a3, a2);
        v17 = -(v20 * 0.5);
        if (v22 <= 0.0)
        {
          v23 = -(v20 * 0.5);
        }

        else
        {
          v23 = v20 * 0.5;
        }

        v7 = v7 + v23;
        v20 = v20 * 0.5;
      }

      while (fabs(v21) > 0.000001);
    }
  }

  return v7;
}

double WordLanguageModel::computeMinCountNotToPrune(WordLanguageModel *this, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6)
{
  v6 = 1.0;
  if (a5 < 0)
  {
    return v6;
  }

  v10 = a3;
  v12 = 0;
  v13 = *(a2 + 8) - 1;
  do
  {
    if (!v13)
    {
      return v6;
    }

    v14 = v12;
    v12 += *(*a2 + 4 * v13--);
  }

  while (v12 <= a5);
  v53 = 0;
  v54 = 0;
  if (a3)
  {
    memset(&v50, 255, 4 * a3);
  }

  v15 = *(a4 + 12);
  v47 = a6;
  if (v15)
  {
    v16 = *(a4 + 80);
    v17 = *v16;
    if (!*v16)
    {
      v18 = 0;
      v19 = v16 + 1;
      while (v15 - 1 != v18)
      {
        v17 = v19[v18++];
        if (v17)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_46;
    }
  }

  else
  {
    v17 = 0;
  }

  LODWORD(v18) = 0;
LABEL_15:
  if (v18 >= v15)
  {
LABEL_46:
    v39 = 0;
    v40 = 0;
    goto LABEL_48;
  }

  v49 = v10;
  v48 = a4;
  while (1)
  {
    if (v13 - *(v17 + 7) != -1)
    {
      goto LABEL_18;
    }

    if (v10)
    {
      v26 = v10;
      v27 = (v17 + 2);
      v29 = v49;
      v28 = &v50;
      do
      {
        v30 = *v27++;
        *v28++ = WordLanguageModel::getLmId(this, v30);
        --v29;
      }

      while (v29);
      v31 = *(this + 27);
      v10 = v26;
      a4 = v48;
      if (v31 <= v50)
      {
        goto LABEL_18;
      }

      v32 = v51;
      if (v10 == 2)
      {
        if (v51 < 0xFFFFF1)
        {
          goto LABEL_39;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v31 = *(this + 27);
      if (v31 <= v50)
      {
        goto LABEL_18;
      }

      v32 = v51;
    }

    if (v31 > v32 && v52 < 0xFFFFF1)
    {
LABEL_39:
      v33 = v54;
      if (v54 == HIDWORD(v54))
      {
        DgnArray<DgnPrimArray<double>>::reallocElts(&v53, 1, 1);
        v33 = v54;
      }

      v34 = &v53[16 * v33];
      *v34 = v10;
      if (v10)
      {
        v35 = v34 + 4;
        v37 = v49;
        v36 = &v50;
        do
        {
          v38 = *v36++;
          *v35++ = v38;
          --v37;
        }

        while (v37);
        v33 = v54;
      }

      LODWORD(v54) = v33 + 1;
    }

LABEL_18:
    v20 = *v17;
    v21 = *(a4 + 12);
    if (!*v17)
    {
      v18 = (v18 + 1);
      if (v18 >= v21)
      {
        v20 = v17;
        goto LABEL_33;
      }

      v22 = *(a4 + 80);
      v20 = *(v22 + 8 * v18);
      if (!v20)
      {
        break;
      }
    }

LABEL_33:
    v17 = v20;
    if (v18 >= v21)
    {
      goto LABEL_47;
    }
  }

  v23 = (v22 + 8 * v18 + 8);
  v24 = ~v18 + v21;
  while (v24)
  {
    v25 = *v23++;
    v20 = v25;
    LODWORD(v18) = v18 + 1;
    --v24;
    if (v25)
    {
      goto LABEL_33;
    }
  }

LABEL_47:
  v40 = v53;
  v39 = v54;
LABEL_48:
  mrec_qsort_r<BuildWordIdNgramCmp>(v40, v39, 16);
  v41 = &v53[16 * (~v14 + a5)];
  v42 = *v41;
  *v47 = v42;
  if (v42)
  {
    v43 = (v41 + 4);
    v44 = v47 + 1;
    do
    {
      v45 = *v43++;
      *v44++ = v45;
      --v42;
    }

    while (v42);
  }

  v6 = (v13 + 2);
  DgnIArray<Utterance *>::~DgnIArray(&v53);
  return v6;
}

void sub_2627A8E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DgnIArray<Utterance *>::~DgnIArray(va);
  _Unwind_Resume(a1);
}

char *mrec_qsort_r<BuildWordIdNgramCmp>(char *result, unint64_t a2, int64_t a3)
{
  v4 = -a3;
  v5 = a3 != 8;
  v6 = ((result | a3) & 7) == 0;
  if (((result | a3) & 7) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = a3 != 8;
  }

  if (a2 < 7)
  {
LABEL_5:
    if ((a2 * a3) > a3)
    {
      v8 = &result[a2 * a3];
      v9 = &result[a3];
      v10 = result;
      do
      {
        if (v9 > result)
        {
          v11 = v10;
          v12 = v9;
LABEL_9:
          v13 = v12;
          v12 = (v12 + v4);
          v14 = *v12 - 1;
          while ((v14 & 0x80000000) == 0)
          {
            v15 = v14 & 0x7FFFFFFF;
            v16 = v12[v15 + 1];
            v17 = *(v13 + v15 * 4 + 4);
            --v14;
            if (v16 != v17)
            {
              if (v16 >= v17)
              {
                if (v7)
                {
                  v18 = 0;
                  if (v6)
                  {
                    v19 = v12;
                    do
                    {
                      v20 = v13[v18];
                      v13[v18] = *v19;
                      *v19++ = v20;
                      ++v18;
                    }

                    while (a3 >> 3 != v18);
                  }

                  else
                  {
                    v22 = a3;
                    do
                    {
                      v23 = *(v13 + v18);
                      *(v13 + v18) = *(v11 + v18);
                      *(v11 + v18++) = v23;
                      --v22;
                    }

                    while (v22);
                  }
                }

                else
                {
                  v21 = *v13;
                  *v13 = *v12;
                  *v12 = v21;
                }

                v11 = (v11 + v4);
                if (v12 > result)
                {
                  goto LABEL_9;
                }
              }

              break;
            }
          }
        }

        v9 += a3;
        v10 = (v10 + a3);
      }

      while (v9 < v8);
    }

    return result;
  }

  v24 = a3 >> 3;
  while (1)
  {
    v25 = &result[(a2 >> 1) * a3];
    if (a2 != 7)
    {
      v26 = &result[(a2 - 1) * a3];
      if (a2 < 0x29)
      {
        v28 = result;
        goto LABEL_41;
      }

      v27 = (a2 >> 3) * a3;
      v28 = &result[v27];
      v29 = 2 * v27;
      v30 = &result[2 * v27];
      v31 = result + 4;
      v32 = &result[v27 + 4];
      v33 = *result - 1;
      v34 = v33;
      do
      {
        if (v34 < 0)
        {
          goto LABEL_74;
        }

        v35 = v34 & 0x7FFFFFFF;
        v36 = v31[v35];
        v37 = *(v32 + v35 * 4);
        --v34;
      }

      while (v36 == v37);
      if (v36 >= v37)
      {
LABEL_74:
        v76 = v30 + 4;
        v77 = *v28 - 1;
        do
        {
          if (v77 < 0)
          {
            goto LABEL_78;
          }

          v78 = 4 * (v77 & 0x7FFFFFFF);
          v79 = *(v32 + v78);
          v80 = *&v76[v78];
          --v77;
        }

        while (v79 == v80);
        if (v79 < v80)
        {
          do
          {
LABEL_78:
            if (v33 < 0)
            {
              goto LABEL_82;
            }

            v81 = 4 * (v33 & 0x7FFFFFFF);
            v82 = *(v31 + v81);
            LODWORD(v81) = *&v76[v81];
            --v33;
            v83 = v82 >= v81;
          }

          while (v82 == v81);
          v28 = result;
          if (v83)
          {
LABEL_82:
            v28 = &result[2 * v27];
          }
        }
      }

      else
      {
        v38 = v30 + 4;
        v39 = *v28 - 1;
        do
        {
          if (v39 < 0)
          {
            goto LABEL_35;
          }

          v40 = 4 * (v39 & 0x7FFFFFFF);
          v41 = *(v32 + v40);
          v42 = *&v38[v40];
          --v39;
        }

        while (v41 == v42);
        if (v41 >= v42)
        {
LABEL_35:
          while ((v33 & 0x80000000) == 0)
          {
            v43 = v33 & 0x7FFFFFFF;
            v44 = v31[v43];
            v45 = *&v38[v43 * 4];
            --v33;
            if (v44 != v45)
            {
              if (v44 >= v45)
              {
                v28 = result;
              }

              else
              {
                v28 = &result[2 * v27];
              }

              goto LABEL_83;
            }
          }

          v28 = result;
        }
      }

LABEL_83:
      v84 = -v27;
      v85 = &v25[-v27];
      v86 = &v25[v27];
      v87 = v85 + 4;
      v88 = v25 + 4;
      v89 = *v85 - 1;
      v90 = v89;
      do
      {
        if (v90 < 0)
        {
          goto LABEL_96;
        }

        v91 = v90 & 0x7FFFFFFF;
        v92 = v87[v91];
        v93 = v88[v91];
        --v90;
      }

      while (v92 == v93);
      if (v92 >= v93)
      {
LABEL_96:
        v102 = v86 + 4;
        v103 = *v25 - 1;
        do
        {
          if (v103 < 0)
          {
            goto LABEL_100;
          }

          v104 = v103 & 0x7FFFFFFF;
          v105 = v88[v104];
          v106 = v102[v104];
          --v103;
        }

        while (v105 == v106);
        if (v105 < v106)
        {
          do
          {
LABEL_100:
            if (v89 < 0)
            {
              goto LABEL_104;
            }

            v107 = 4 * (v89 & 0x7FFFFFFF);
            v108 = *(v87 + v107);
            LODWORD(v107) = *(v102 + v107);
            --v89;
            v109 = v108 >= v107;
          }

          while (v108 == v107);
          v25 = v85;
          if (v109)
          {
LABEL_104:
            v25 = v86;
          }
        }
      }

      else
      {
        v94 = v86 + 4;
        v95 = *v25 - 1;
        do
        {
          if (v95 < 0)
          {
            goto LABEL_91;
          }

          v96 = v95 & 0x7FFFFFFF;
          v97 = v88[v96];
          v98 = v94[v96];
          --v95;
        }

        while (v97 == v98);
        if (v97 >= v98)
        {
LABEL_91:
          while ((v89 & 0x80000000) == 0)
          {
            v99 = v89 & 0x7FFFFFFF;
            v100 = v87[v99];
            v101 = v94[v99];
            --v89;
            if (v100 != v101)
            {
              if (v100 >= v101)
              {
                v25 = v85;
              }

              else
              {
                v25 = v86;
              }

              goto LABEL_105;
            }
          }

          v25 = v85;
        }
      }

LABEL_105:
      v110 = &v26[-v29];
      v111 = &v26[v84];
      v112 = v110 + 4;
      v113 = &v26[v84 + 4];
      v114 = *v110 - 1;
      v115 = v114;
      do
      {
        if (v115 < 0)
        {
          goto LABEL_117;
        }

        v116 = v115 & 0x7FFFFFFF;
        v117 = v112[v116];
        v118 = *(v113 + v116 * 4);
        --v115;
      }

      while (v117 == v118);
      if (v117 >= v118)
      {
LABEL_117:
        v127 = v26 + 4;
        v128 = *v111 - 1;
        do
        {
          if (v128 < 0)
          {
            goto LABEL_121;
          }

          v129 = v128 & 0x7FFFFFFF;
          v130 = *(v113 + v129 * 4);
          v131 = v127[v129];
          --v128;
        }

        while (v130 == v131);
        if (v130 < v131)
        {
          do
          {
LABEL_121:
            if (v114 < 0)
            {
              goto LABEL_41;
            }

            v132 = v114 & 0x7FFFFFFF;
            v133 = v112[v132];
            v134 = v127[v132];
            --v114;
          }

          while (v133 == v134);
          if (v133 < v134)
          {
LABEL_124:
            v26 = v110;
          }

LABEL_41:
          v46 = v28 + 4;
          v47 = v25 + 4;
          v48 = *v28 - 1;
          v49 = v48;
          while ((v49 & 0x80000000) == 0)
          {
            v50 = 4 * (v49 & 0x7FFFFFFF);
            v51 = *(v46 + v50);
            LODWORD(v50) = *(v47 + v50);
            --v49;
            v52 = v51 >= v50;
            if (v51 != v50)
            {
              v53 = *v25;
              if (!v52)
              {
                v54 = v26 + 4;
                v55 = v53 - 1;
                do
                {
                  if (v55 < 0)
                  {
                    goto LABEL_49;
                  }

                  v56 = v55 & 0x7FFFFFFF;
                  v57 = v47[v56];
                  v58 = v54[v56];
                  --v55;
                }

                while (v57 == v58);
                if (v57 < v58)
                {
                  goto LABEL_66;
                }

                do
                {
LABEL_49:
                  if (v48 < 0)
                  {
                    v25 = v28;
                    if (v7)
                    {
                      goto LABEL_67;
                    }

                    goto LABEL_127;
                  }

                  v59 = v48 & 0x7FFFFFFF;
                  v60 = v46[v59];
                  v61 = v54[v59];
                  --v48;
                }

                while (v60 == v61);
                if (v60 >= v61)
                {
                  v25 = v28;
                }

                else
                {
                  v25 = v26;
                }

                if (v7)
                {
                  goto LABEL_67;
                }

LABEL_127:
                v135 = *result;
                *result = *v25;
                *v25 = v135;
                goto LABEL_128;
              }

LABEL_57:
              v62 = v26 + 4;
              v63 = v53 - 1;
              do
              {
                if (v63 < 0)
                {
                  goto LABEL_61;
                }

                v64 = v63 & 0x7FFFFFFF;
                v65 = v47[v64];
                v66 = v62[v64];
                --v63;
              }

              while (v65 == v66);
              if (v65 < v66)
              {
LABEL_61:
                while ((v48 & 0x80000000) == 0)
                {
                  v67 = 4 * (v48 & 0x7FFFFFFF);
                  v68 = *(v46 + v67);
                  LODWORD(v67) = *(v62 + v67);
                  --v48;
                  v69 = v68 >= v67;
                  if (v68 != v67)
                  {
                    v25 = v28;
                    if (!v69)
                    {
                      goto LABEL_66;
                    }

                    break;
                  }
                }

                v25 = v26;
              }

              goto LABEL_66;
            }
          }

          v53 = *v25;
          goto LABEL_57;
        }
      }

      else
      {
        v119 = v26 + 4;
        v120 = *v111 - 1;
        do
        {
          if (v120 < 0)
          {
            goto LABEL_113;
          }

          v121 = v120 & 0x7FFFFFFF;
          v122 = *(v113 + v121 * 4);
          v123 = v119[v121];
          --v120;
        }

        while (v122 == v123);
        if (v122 >= v123)
        {
          do
          {
LABEL_113:
            if (v114 < 0)
            {
              goto LABEL_124;
            }

            v124 = v114 & 0x7FFFFFFF;
            v125 = v112[v124];
            v126 = v119[v124];
            --v114;
          }

          while (v125 == v126);
          if (v125 >= v126)
          {
            v26 = v110;
          }

          goto LABEL_41;
        }
      }

      v26 = v111;
      goto LABEL_41;
    }

LABEL_66:
    if (!v7)
    {
      goto LABEL_127;
    }

LABEL_67:
    if (v6)
    {
      v70 = result;
      v71 = a3 >> 3;
      do
      {
        v72 = *v70;
        *v70 = *v25;
        v70 += 8;
        *v25 = v72;
        v25 += 8;
        --v71;
      }

      while (v71);
    }

    else
    {
      v73 = a3;
      v74 = result;
      do
      {
        v75 = *v74;
        *v74++ = *v25;
        *v25++ = v75;
        --v73;
      }

      while (v73);
    }

LABEL_128:
    v136 = 0;
    v137 = &result[a3];
    v138 = &result[(a2 - 1) * a3];
    v139 = result + 4;
    v140 = v138;
    v141 = &result[a3];
    v142 = &result[a3];
    while (1)
    {
      while (v141 <= v140)
      {
        v143 = *v141 - 1;
        do
        {
          if (v143 < 0)
          {
            if (v7)
            {
              v157 = 0;
              if (v6)
              {
                do
                {
                  v158 = *&v142[8 * v157];
                  *&v142[8 * v157] = *&v141[8 * v157];
                  *&v141[8 * v157++] = v158;
                }

                while (v24 != v157);
              }

              else
              {
                do
                {
                  v159 = v142[v157];
                  v142[v157] = v141[v157];
                  v141[v157++] = v159;
                }

                while (a3 != v157);
              }
            }

            else
            {
              v161 = *v142;
              *v142 = *v141;
              *v141 = v161;
            }

            v142 += a3;
            v136 = 1;
            goto LABEL_163;
          }

          v144 = v143 & 0x7FFFFFFF;
          v145 = *&v141[v144 * 4 + 4];
          v146 = v139[v144];
          --v143;
        }

        while (v145 == v146);
        if (v145 >= v146)
        {
          break;
        }

LABEL_163:
        v141 += a3;
      }

LABEL_144:
      if (v141 > v140)
      {
        break;
      }

      v151 = *v140 - 1;
      do
      {
        if (v151 < 0)
        {
          if (v7)
          {
            v147 = 0;
            if (v6)
            {
              do
              {
                v148 = *&v140[8 * v147];
                *&v140[8 * v147] = *&v138[8 * v147];
                *&v138[8 * v147++] = v148;
              }

              while (v24 != v147);
            }

            else
            {
              do
              {
                v149 = v140[v147];
                v140[v147] = v138[v147];
                v138[v147++] = v149;
              }

              while (a3 != v147);
            }
          }

          else
          {
            v150 = *v140;
            *v140 = *v138;
            *v138 = v150;
          }

          v138 += v4;
          v136 = 1;
LABEL_143:
          v140 += v4;
          goto LABEL_144;
        }

        v152 = v151 & 0x7FFFFFFF;
        v153 = *&v140[v152 * 4 + 4];
        v154 = v139[v152];
        --v151;
      }

      while (v153 == v154);
      if (v153 >= v154)
      {
        goto LABEL_143;
      }

      if (v7)
      {
        v155 = 0;
        if (v6)
        {
          do
          {
            v156 = *&v141[8 * v155];
            *&v141[8 * v155] = *&v140[8 * v155];
            *&v140[8 * v155++] = v156;
          }

          while (v24 != v155);
        }

        else
        {
          do
          {
            v160 = v141[v155];
            v141[v155] = v140[v155];
            v140[v155++] = v160;
          }

          while (a3 != v155);
        }
      }

      else
      {
        v162 = *v141;
        *v141 = *v140;
        *v140 = v162;
      }

      v141 += a3;
      v140 += v4;
      v136 = 1;
    }

    v163 = &result[a2 * a3];
    if (!v136)
    {
      break;
    }

    v164 = v141 - v142;
    if (v142 - result >= v141 - v142)
    {
      v165 = v141 - v142;
    }

    else
    {
      v165 = v142 - result;
    }

    if (v165)
    {
      if (v6)
      {
        v166 = &v141[-v165];
        v167 = v165 >> 3;
        v168 = result;
        do
        {
          v169 = *v168;
          *v168 = *v166;
          v168 += 8;
          *v166 = v169;
          v166 += 8;
          --v167;
        }

        while (v167);
      }

      else
      {
        v170 = -v165;
        v171 = result;
        do
        {
          v172 = *v171;
          *v171++ = v141[v170];
          v141[v170] = v172;
          v52 = __CFADD__(v170++, 1);
        }

        while (!v52);
      }
    }

    v173 = v138 - v140;
    v174 = v163 - &v138[a3];
    if (v138 - v140 < v174)
    {
      v174 = v138 - v140;
    }

    if (v174)
    {
      if (v6)
      {
        v175 = &v163[-v174];
        v176 = v174 >> 3;
        do
        {
          v177 = *v141;
          *v141 = *v175;
          v141 += 8;
          *v175 = v177;
          v175 += 8;
          --v176;
        }

        while (v176);
      }

      else
      {
        v178 = -v174;
        do
        {
          v179 = *v141;
          *v141++ = v163[v178];
          v163[v178] = v179;
          v52 = __CFADD__(v178++, 1);
        }

        while (!v52);
      }
    }

    if (v164 > a3)
    {
      result = mrec_qsort_r<BuildWordIdNgramCmp>();
    }

    if (v173 <= a3)
    {
      return result;
    }

    result = &v163[-v173];
    a2 = v173 / a3;
    v6 = (((v163 - v173) | a3) & 7) == 0;
    if ((((v163 - v173) | a3) & 7) != 0)
    {
      v7 = 2;
    }

    else
    {
      v7 = v5;
    }

    if (a2 < 7)
    {
      goto LABEL_5;
    }
  }

  if ((a2 * a3) > a3)
  {
    v180 = result;
    do
    {
      if (v137 > result)
      {
        v181 = v180;
        v182 = v137;
LABEL_202:
        v183 = v182;
        v182 = (v182 + v4);
        v184 = *v182 - 1;
        while ((v184 & 0x80000000) == 0)
        {
          v185 = v184 & 0x7FFFFFFF;
          v186 = v182[v185 + 1];
          v187 = *(v183 + v185 * 4 + 4);
          --v184;
          if (v186 != v187)
          {
            if (v186 >= v187)
            {
              if (v7)
              {
                v188 = 0;
                if (v6)
                {
                  v189 = v182;
                  do
                  {
                    v190 = v183[v188];
                    v183[v188] = *v189;
                    *v189++ = v190;
                    ++v188;
                  }

                  while (v24 != v188);
                }

                else
                {
                  v192 = a3;
                  do
                  {
                    v193 = *(v183 + v188);
                    *(v183 + v188) = *(v181 + v188);
                    *(v181 + v188++) = v193;
                    --v192;
                  }

                  while (v192);
                }
              }

              else
              {
                v191 = *v183;
                *v183 = *v182;
                *v182 = v191;
              }

              v181 = (v181 + v4);
              if (v182 > result)
              {
                goto LABEL_202;
              }
            }

            break;
          }
        }
      }

      v137 += a3;
      v180 = (v180 + a3);
    }

    while (v137 < v163);
  }

  return result;
}

uint64_t WordLanguageModel::createBuildWordIdAndCountArray(WordIdAndCountCmp *a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5)
{
  v7 = *(a2 + 8);
  if (v7)
  {
    v9 = 0;
    v10 = a4;
    v11 = a3;
    do
    {
      if (v11 != v9 && v10 != v9)
      {
        v12 = *(*a2 + 8 * v9);
        if (v12 > 0.0)
        {
          v13 = *(a5 + 8);
          if (v13 == *(a5 + 12))
          {
            DgnPrimArray<unsigned long long>::reallocElts(a5, 1, 1);
            v13 = *(a5 + 8);
            v7 = *(a2 + 8);
          }

          v14 = (*a5 + 8 * v13);
          *v14 = v9;
          v14[1] = v12;
          *(a5 + 8) = v13 + 1;
        }
      }

      ++v9;
    }

    while (v9 < v7);
  }

  v15 = *a5;
  v16 = *(a5 + 8);

  return mrec_qsort_r<WordIdAndCountCmp>(v15, v16, 8uLL, a1);
}

uint64_t WordLanguageModel::maybeAddBuildBegAndEndLmId(uint64_t this)
{
  v1 = *(this + 1816);
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  if (v2 == 16777212)
  {
    v4 = -1;
  }

  else
  {
    v4 = *(this + 104);
    *(this + 104) = v4 + 1;
  }

  *(this + 112) = v4;
  if (v3 == 0xFFFFFF)
  {
    *(this + 116) = -1;
  }

  else if (v3 == v2)
  {
    *(this + 116) = v4;
  }

  else
  {
    v5 = *(this + 104);
    *(this + 116) = v5;
    *(this + 104) = v5 + 1;
  }

  return this;
}

uint64_t WordLanguageModel::createBuildWordIdToLmIdArray(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1816);
  v6 = *(v4 + 4);
  v5 = *(v4 + 8);
  v7 = *(result + 104) - 1;
  v8 = *(*(result + 16) + 388);
  if (v7 <= 0xFE)
  {
    if (*(result + 164) >= v8)
    {
      *(result + 160) = v8;
      v9 = (result + 160);
      if (!v8)
      {
LABEL_13:
        v15 = *(a2 + 8);
        if (v15)
        {
          v16 = 0;
          v17 = 0;
          v18 = 1;
          do
          {
            v19 = *(*a2 + v16);
            if (v19 != v6 && v19 != v5)
            {
              *(*(v3 + 152) + v19) = v18++;
              v15 = *(a2 + 8);
            }

            ++v17;
            v16 += 8;
          }

          while (v17 < v15);
        }

        if ((v6 & 0xFFFFFFFD) != 0xFFFFFC)
        {
          *(*(v3 + 152) + v6) = *(v3 + 112);
        }

        if ((v5 & 0xFFFFFFFD) != 0xFFFFFD)
        {
          *(*(v3 + 152) + v5) = *(v3 + 116);
        }

        if (*v9)
        {
          v21 = 0;
          do
          {
            result = WordNgramTemplate::getHeadCloneForWordId(*(v3 + 1816), v21);
            if (result != 0xFFFFFF)
            {
              result = WordNgramTemplate::isHeadCloneWordId(*(v3 + 1816), v21);
              if ((result & 1) == 0)
              {
                result = WordNgramTemplate::getHeadCloneForWordId(*(v3 + 1816), v21);
                *(*(v3 + 152) + v21) = *(*(v3 + 152) + result);
              }
            }

            ++v21;
          }

          while (v21 < *v9);
        }

        return result;
      }
    }

    else
    {
      v45 = 0;
      v9 = (result + 160);
      v10 = realloc_array(*(result + 152), &v45, v8, *(result + 160), *(result + 160), 1);
      *(v3 + 152) = v45;
      *v9 = v8;
      *(v3 + 164) = v10;
    }

    v13 = 0;
    do
    {
      result = WordNgramTemplate::getHeadCloneForWordId(*(v3 + 1816), v13);
      if (result == 0xFFFFFF)
      {
        LOBYTE(v14) = -1;
      }

      else
      {
        v14 = *(v3 + 72);
      }

      *(*(v3 + 152) + v13++) = v14;
    }

    while (v13 < *(v3 + 160));
    goto LABEL_13;
  }

  if (v7 <= 0xFFFE)
  {
    v11 = *(result + 148);
    if (v8 <= v11)
    {
      *(result + 144) = v8;
      v12 = (result + 144);
      if (!v8)
      {
        v27 = 1;
LABEL_41:
        v28 = *(a2 + 8);
        if (v28)
        {
          v29 = *a2;
          v30 = 1;
          do
          {
            v32 = *v29;
            v29 += 2;
            v31 = v32;
            if (v32 != v6 && v31 != v5)
            {
              *(*(v3 + 136) + 2 * v31) = v30++;
            }

            --v28;
          }

          while (v28);
        }

        if ((v6 & 0xFFFFFFFD) != 0xFFFFFC)
        {
          *(*(v3 + 136) + 2 * v6) = *(v3 + 112);
        }

        if ((v5 & 0xFFFFFFFD) != 0xFFFFFD)
        {
          *(*(v3 + 136) + 2 * v5) = *(v3 + 116);
        }

        if (!v27)
        {
          v34 = 0;
          do
          {
            result = WordNgramTemplate::getHeadCloneForWordId(*(v3 + 1816), v34);
            if (result != 0xFFFFFF)
            {
              result = WordNgramTemplate::isHeadCloneWordId(*(v3 + 1816), v34);
              if ((result & 1) == 0)
              {
                result = WordNgramTemplate::getHeadCloneForWordId(*(v3 + 1816), v34);
                *(*(v3 + 136) + 2 * v34) = *(*(v3 + 136) + 2 * result);
              }
            }

            ++v34;
          }

          while (v34 < *v12);
        }

        return result;
      }
    }

    else
    {
      DgnPrimArray<short>::reallocElts(result + 136, v8 - v11, 0);
      *(v3 + 144) = v8;
      v12 = (v3 + 144);
    }

    v24 = 0;
    do
    {
      result = WordNgramTemplate::getHeadCloneForWordId(*(v3 + 1816), v24);
      if (result == 0xFFFFFF)
      {
        LOWORD(v25) = -1;
      }

      else
      {
        v25 = *(v3 + 72);
      }

      *(*(v3 + 136) + 2 * v24++) = v25;
      v26 = *v12;
    }

    while (v24 < v26);
    v27 = v26 == 0;
    goto LABEL_41;
  }

  v22 = *(result + 132);
  if (v8 > v22)
  {
    DgnPrimArray<unsigned int>::reallocElts(result + 120, v8 - v22, 0);
    *(v3 + 128) = v8;
    v23 = (v3 + 128);
    goto LABEL_61;
  }

  *(result + 128) = v8;
  v23 = (result + 128);
  if (v8)
  {
LABEL_61:
    v35 = 0;
    do
    {
      result = WordNgramTemplate::getHeadCloneForWordId(*(v3 + 1816), v35);
      if (result == 0xFFFFFF)
      {
        v36 = -1;
      }

      else
      {
        v36 = *(v3 + 72);
      }

      *(*(v3 + 120) + 4 * v35++) = v36;
    }

    while (v35 < *v23);
  }

  v37 = *(a2 + 8);
  if (v37)
  {
    v38 = 0;
    v39 = *a2;
    v40 = 1;
    do
    {
      v42 = *v39;
      v39 += 2;
      v41 = v42;
      if (v42 != v6 && v41 != v5)
      {
        *(*(v3 + 120) + 4 * v41) = v40++;
        v37 = *(a2 + 8);
      }

      ++v38;
    }

    while (v38 < v37);
  }

  if ((v6 & 0xFFFFFFFD) != 0xFFFFFC)
  {
    *(*(v3 + 120) + 4 * v6) = *(v3 + 112);
  }

  if ((v5 & 0xFFFFFFFD) != 0xFFFFFD)
  {
    *(*(v3 + 120) + 4 * v5) = *(v3 + 116);
  }

  if (*v23)
  {
    v44 = 0;
    do
    {
      result = WordNgramTemplate::getHeadCloneForWordId(*(v3 + 1816), v44);
      if (result != 0xFFFFFF)
      {
        result = WordNgramTemplate::isHeadCloneWordId(*(v3 + 1816), v44);
        if ((result & 1) == 0)
        {
          result = WordNgramTemplate::getHeadCloneForWordId(*(v3 + 1816), v44);
          *(*(v3 + 120) + 4 * v44) = *(*(v3 + 120) + 4 * result);
        }
      }

      ++v44;
    }

    while (v44 < *v23);
  }

  return result;
}

uint64_t mrec_qsort_r<WordIdAndCountCmp>(uint64_t result, unint64_t a2, unint64_t a3, WordIdAndCountCmp *a4)
{
  v4 = a4;
  v6 = a2;
  v7 = result;
  v8 = -a3;
  v108 = a3 != 8;
  if (((result | a3) & 7) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = a3 != 8;
  }

  v113 = ((result | a3) & 7) == 0;
  v114 = v9;
  if (a2 < 7)
  {
LABEL_117:
    if ((v6 * a3) > a3)
    {
      v79 = v4;
      v111 = (v7 + v6 * a3);
      v80 = (v7 + a3);
      v81 = v7;
      do
      {
        if (v80 > v7)
        {
          v82 = v81;
          v83 = v80;
          do
          {
            v84 = v83;
            v83 = (v83 + v8);
            result = WordIdAndCountCmp::compareElements(v79, v83, v84, a4);
            if (result < 1)
            {
              break;
            }

            if (v114)
            {
              if (v113)
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

            v82 = (v82 + v8);
          }

          while (v83 > v7);
        }

        v80 = (v80 + a3);
        v81 = (v81 + a3);
      }

      while (v80 < v111);
    }

    return result;
  }

  v10 = a3 >> 3;
  while (1)
  {
    v11 = (v7 + (v6 >> 1) * a3);
    if (v6 == 7)
    {
      goto LABEL_44;
    }

    v12 = (v7 + (v6 - 1) * a3);
    if (v6 >= 0x29)
    {
      v109 = (v7 + (v6 - 1) * a3);
      v13 = (v6 >> 3) * a3;
      v14 = (v7 + v13);
      v105 = v13;
      v15 = (v7 + 2 * v13);
      v16 = WordIdAndCountCmp::compareElements(v4, v7, (v7 + v13), a4);
      v107 = v14;
      v18 = WordIdAndCountCmp::compareElements(v4, v14, v15, v17);
      if (v16 < 0)
      {
        if ((v18 & 0x80000000) == 0)
        {
          if (WordIdAndCountCmp::compareElements(v4, v7, v15, v19) >= 0)
          {
            v20 = v7;
          }

          else
          {
            v20 = v15;
          }

          goto LABEL_18;
        }
      }

      else if (v18 <= 0)
      {
        if (WordIdAndCountCmp::compareElements(v4, v7, v15, v19) >= 0)
        {
          v20 = v15;
        }

        else
        {
          v20 = v7;
        }

LABEL_18:
        v107 = v20;
      }

      v22 = (v6 >> 3) * a3;
      v23 = (v11 + v105);
      v104 = (v11 - v105);
      v24 = WordIdAndCountCmp::compareElements(v4, (v11 - v105), (v7 + (v6 >> 1) * a3), v19);
      v26 = WordIdAndCountCmp::compareElements(v4, (v7 + (v6 >> 1) * a3), (v11 + v105), v25);
      if (v24 < 0)
      {
        if ((v26 & 0x80000000) == 0)
        {
          v11 = (v11 - v105);
          if (WordIdAndCountCmp::compareElements(v4, v104, v23, v27) < 0)
          {
            v11 = v23;
          }
        }
      }

      else if (v26 <= 0)
      {
        v11 = (v11 - v105);
        if (WordIdAndCountCmp::compareElements(v4, v104, v23, v27) >= 0)
        {
          v11 = v23;
        }
      }

      v12 = (v109 - v105);
      v106 = (v109 - 2 * v105);
      v28 = WordIdAndCountCmp::compareElements(v4, (v109 - 2 * v22), (v109 - v22), v27);
      v30 = WordIdAndCountCmp::compareElements(v4, (v109 - v22), v109, v29);
      if (v28 < 0)
      {
        v21 = v107;
        if ((v30 & 0x80000000) == 0)
        {
          v12 = (v7 + (v6 - 1) * a3);
          if (WordIdAndCountCmp::compareElements(v4, v106, v109, a4) >= 0)
          {
            v12 = v106;
          }
        }
      }

      else
      {
        v21 = v107;
        if (v30 <= 0)
        {
          v12 = (v7 + (v6 - 1) * a3);
          if (WordIdAndCountCmp::compareElements(v4, v106, v109, a4) < 0)
          {
            v12 = v106;
          }
        }
      }

      goto LABEL_35;
    }

    v21 = v7;
LABEL_35:
    v31 = WordIdAndCountCmp::compareElements(v4, v21, v11, a4);
    result = WordIdAndCountCmp::compareElements(v4, v11, v12, v32);
    if (v31 < 0)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WordIdAndCountCmp::compareElements(v4, v21, v12, a4);
        if (result >= 0)
        {
          v11 = v21;
        }

        else
        {
          v11 = v12;
        }
      }
    }

    else if (result <= 0)
    {
      result = WordIdAndCountCmp::compareElements(v4, v21, v12, a4);
      if (result >= 0)
      {
        v11 = v12;
      }

      else
      {
        v11 = v21;
      }
    }

LABEL_44:
    if (v114)
    {
      if (v113)
      {
        v33 = v7;
        v34 = a3 >> 3;
        do
        {
          v35 = *v33;
          *v33 = *v11;
          v33 += 2;
          *v11 = v35;
          v11 += 2;
          --v34;
        }

        while (v34);
      }

      else
      {
        v37 = a3;
        v38 = v7;
        do
        {
          v39 = *v38;
          *v38 = *v11;
          v38 = (v38 + 1);
          *v11 = v39;
          v11 = (v11 + 1);
          --v37;
        }

        while (v37);
      }
    }

    else
    {
      v36 = *v7;
      *v7 = *v11;
      *v11 = v36;
    }

    v40 = 0;
    v41 = (v7 + a3);
    v110 = v6;
    v42 = (v7 + (v6 - 1) * a3);
    v43 = v42;
    v44 = (v7 + a3);
LABEL_53:
    while (v44 <= v43)
    {
      result = WordIdAndCountCmp::compareElements(v4, v44, v7, a4);
      if (result > 0)
      {
        break;
      }

      if (!result)
      {
        if (v114)
        {
          if (v113)
          {
            v45 = 0;
            do
            {
              v46 = v41[v45];
              v41[v45] = *&v44[2 * v45];
              *&v44[2 * v45++] = v46;
            }

            while (v10 != v45);
          }

          else
          {
            v55 = 0;
            do
            {
              v56 = *(v41 + v55);
              *(v41 + v55) = *(v44 + v55);
              *(v44 + v55++) = v56;
            }

            while (a3 != v55);
          }
        }

        else
        {
          v54 = *v41;
          *v41 = *v44;
          *v44 = v54;
        }

        v41 = (v41 + a3);
        v40 = 1;
      }

      v44 = (v44 + a3);
    }

    while (v44 <= v43)
    {
      result = WordIdAndCountCmp::compareElements(v4, v43, v7, a4);
      if ((result & 0x80000000) != 0)
      {
        if (v114)
        {
          if (v113)
          {
            v52 = 0;
            do
            {
              v53 = *&v44[2 * v52];
              *&v44[2 * v52] = *&v43[2 * v52];
              *&v43[2 * v52++] = v53;
            }

            while (v10 != v52);
          }

          else
          {
            v58 = 0;
            do
            {
              v59 = *(v44 + v58);
              *(v44 + v58) = *(v43 + v58);
              *(v43 + v58++) = v59;
            }

            while (a3 != v58);
          }
        }

        else
        {
          v57 = *v44;
          *v44 = *v43;
          *v43 = v57;
        }

        v44 = (v44 + a3);
        v43 = (v43 + v8);
        v40 = 1;
        goto LABEL_53;
      }

      if (!result)
      {
        if (v114)
        {
          if (v113)
          {
            v47 = 0;
            do
            {
              v48 = *&v43[2 * v47];
              *&v43[2 * v47] = *&v42[2 * v47];
              *&v42[2 * v47++] = v48;
            }

            while (v10 != v47);
          }

          else
          {
            v50 = 0;
            do
            {
              v51 = *(v43 + v50);
              *(v43 + v50) = *(v42 + v50);
              *(v42 + v50++) = v51;
            }

            while (a3 != v50);
          }
        }

        else
        {
          v49 = *v43;
          *v43 = *v42;
          *v42 = v49;
        }

        v42 = (v42 + v8);
        v40 = 1;
      }

      v43 = (v43 + v8);
    }

    v60 = (v7 + v110 * a3);
    if (!v40)
    {
      break;
    }

    v61 = v44 - v41;
    if (v41 - v7 >= v44 - v41)
    {
      v62 = v44 - v41;
    }

    else
    {
      v62 = v41 - v7;
    }

    if (v62)
    {
      if (v113)
      {
        v63 = (v44 - v62);
        v64 = v62 >> 3;
        v65 = v7;
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
        v68 = v7;
        do
        {
          v69 = *v68;
          *v68 = *(v44 + v67);
          v68 = (v68 + 1);
          *(v44 + v67) = v69;
          v70 = __CFADD__(v67++, 1);
        }

        while (!v70);
      }
    }

    v71 = v42 - v43;
    if (v42 - v43 >= v60 - (v42 + a3))
    {
      v72 = v60 - (v42 + a3);
    }

    else
    {
      v72 = v42 - v43;
    }

    if (v72)
    {
      if (v113)
      {
        v73 = v60 - v72;
        v74 = v72 >> 3;
        do
        {
          v75 = *v44;
          *v44 = *v73;
          v44 += 2;
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
          v77 = *v44;
          *v44 = *(v60 + v76);
          v44 = (v44 + 1);
          *(v60 + v76) = v77;
          v70 = __CFADD__(v76++, 1);
        }

        while (!v70);
      }
    }

    if (v61 > a3)
    {
      result = mrec_qsort_r<WordIdAndCountCmp>(v7, v61 / a3, a3, a4);
    }

    if (v71 <= a3)
    {
      return result;
    }

    v7 = (v60 - v71);
    v6 = v71 / a3;
    v78 = v108;
    if ((((v60 - v71) | a3) & 7) != 0)
    {
      v78 = 2;
    }

    v113 = (((v60 - v71) | a3) & 7) == 0;
    v114 = v78;
    v4 = a4;
    if (v6 < 7)
    {
      goto LABEL_117;
    }
  }

  v92 = (v7 + a3);
  if ((v110 * a3) > a3)
  {
    v93 = v7;
    do
    {
      if (v92 > v7)
      {
        v94 = v93;
        v95 = v92;
        do
        {
          v96 = v95;
          v95 = (v95 + v8);
          result = WordIdAndCountCmp::compareElements(a4, v95, v96, a4);
          if (result < 1)
          {
            break;
          }

          if (v114)
          {
            if (v113)
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

              while (v10 != v97);
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

          v94 = (v94 + v8);
        }

        while (v95 > v7);
      }

      v92 = (v92 + a3);
      v93 = (v93 + a3);
    }

    while (v92 < v60);
  }

  return result;
}

uint64_t Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::add(uint64_t result, _DWORD *a2, void *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v6);
  }

  v7 = *a2;
  if (v7)
  {
    v8 = 0;
    v9 = v7;
    do
    {
      HIDWORD(v10) = v8;
      LODWORD(v10) = v8;
      v8 = a2[v9--] + (v10 >> 19);
    }

    while (v9 * 4);
  }

  else
  {
    v8 = 0;
  }

  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = (-1640531527 * v8) >> -v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v5 + 80);
  v14 = *(v5 + 32);
  if (!v14)
  {
    result = DgnPool::addChunk((v5 + 24));
    v14 = *(v5 + 32);
    LODWORD(v7) = *a2;
  }

  *(v5 + 32) = *v14;
  *(v14 + 8) = 0;
  *(v14 + 12) = v7;
  if (v7)
  {
    v15 = a2 + 1;
    v16 = (v14 + 16);
    v7 = v7;
    do
    {
      v17 = *v15++;
      *v16++ = v17;
      --v7;
    }

    while (v7);
  }

  v18 = (v13 + 8 * v12);
  *(v14 + 32) = *a3;
  *(v14 + 8) = v8;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v14 = *v18;
  }

  else
  {
    *v14 = 0;
    v19 = *v18;
    if (*v18)
    {
      do
      {
        v18 = v19;
        v19 = *v19;
      }

      while (v19);
    }
  }

  *v18 = v14;
  return result;
}

uint64_t WordLanguageModel::dumpWordLM(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, DgnStream *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a4;
  v10 = a3;
  if (*(a2 + 8))
  {
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 14939, "lm/wordlm", 91, "%u", a7, a8, **a2);
  }

  if (*(a1 + 64) < v10)
  {
    v24 = *(a1 + 64);
    errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 14940, "lm/wordlm", 92, "%u %u", a7, a8, v10);
  }

  v25 = a1;
  v26 = v10;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = -1;
  v32 = -1;
  v33 = v9;
  NGramIterator::next(&v25, a2, a3, a4, a5, a6, a7, a8);
  while ((v27 & 0x100) == 0)
  {
    if (v29)
    {
      v15 = 0;
      do
      {
        if (v15)
        {
          DgnStream::streamPrintf(a5, " ", v12, v13, v14);
        }

        DgnStream::streamPrintf(a5, "%u", v12, v13, v14, *(v28 + 4 * v15++), v24);
      }

      while (v15 < v29);
    }

    DgnStream::streamPrintf(a5, " %u %d\n", v12, v13, v14, v30, SHIWORD(v30));
    NGramIterator::next(&v25, v16, v17, v18, v19, v20, v21, v22);
  }

  return DgnPrimArray<unsigned int>::~DgnPrimArray(&v28);
}

void NGramIterator::NGramIterator(NGramIterator *this, const WordLanguageModel *a2, __int16 a3, char a4)
{
  *this = a2;
  *(this + 4) = a3;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = -1;
  *(this + 6) = -1;
  *(this + 56) = a4;
}

uint64_t NGramIterator::next(NGramIterator *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 11))
  {
    v8 = 0;
  }

  else
  {
    v10 = *(this + 4);
    if (v10 > 2)
    {
      if (v10 == 3)
      {
        if (*(this + 56) == 1)
        {
          NGramIterator::next3Backoff(this);
        }

        else
        {
          NGramIterator::next3(this);
        }
      }

      else if (v10 == 4)
      {
        if (*(this + 56) == 1)
        {
          NGramIterator::next4Backoff(this);
        }

        else
        {
          NGramIterator::next4(this);
        }
      }
    }

    else if (v10 == 1)
    {
      NGramIterator::next1(this, a2, a3, a4, a5, a6, a7, a8);
    }

    else if (v10 == 2)
    {
      if (*(this + 56) == 1)
      {
        NGramIterator::next2Backoff(this);
      }

      else
      {
        NGramIterator::next2(this);
      }
    }

    v8 = *(this + 11) ^ 1;
  }

  return v8 & 1;
}

void NGramIterator::next1(NGramIterator *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v9) = 1;
  if (*(this + 10) == 1)
  {
    LODWORD(v9) = **(this + 2) + 1;
  }

  *(this + 10) = 1;
  v10 = *this;
  v11 = *(*this + 176);
  v12 = v11 - v9;
  if (v11 > v9)
  {
    v9 = v9;
    while (1)
    {
      v13 = *(v10 + 21);
      v14 = *(v13 + 2 * v9);
      if (v14 != 20000)
      {
        break;
      }

      ++v9;
      if (!--v12)
      {
        goto LABEL_18;
      }
    }

    if (v10[16] < 2u)
    {
      v15 = 20000;
    }

    else
    {
      v15 = *(v13 + 2 * v9);
      if (v10[84])
      {
        v15 = *(*(v10 + 41) + 2 * v9);
      }

      if (v15 < 0)
      {
        errThrowInternal(0, "/Library/Caches/com.apple.xbs/Sources/SDAPI/libtextproc/libmrec/src/lm/wordlm.cpp", 15067, "lm/wordlm", 93, "%d", a7, a8, v15);
      }
    }

    if (!*(this + 7))
    {
      DgnPrimArray<unsigned int>::reallocElts(this + 16, 1, 0);
    }

    *(this + 6) = 1;
    **(this + 2) = v9;
    *(this + 16) = v14;
    *(this + 17) = v15;
    v11 = *(*this + 176);
  }

  if (v9 >= v11)
  {
LABEL_18:
    *(this + 11) = 1;
  }
}

unint64_t NGramIterator::next2Backoff(unint64_t this)
{
  v1 = this;
  if (*(this + 10) == 1)
  {
    v2 = *(this + 40) + 1;
    *(this + 40) = v2;
  }

  else
  {
    *(this + 40) = 0xFFFFFFFF00000001;
    v2 = 1;
  }

  *(this + 10) = 1;
  v3 = *this;
  v4 = *(*this + 560);
  v5 = v4 - v2;
  if (v4 > v2)
  {
    v6 = *(v3 + 552);
    v7 = v2;
    while (!*(v6 + 2 * v7))
    {
      *(this + 40) = ++v7;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    v8 = *(*(v3 + 344) + 2 * v7);
    v9 = *(this + 28);
    if (v9 <= 1)
    {
      this = DgnPrimArray<unsigned int>::reallocElts(this + 16, 2 - v9, 0);
      v3 = *v1;
    }

    *(v1 + 24) = 2;
    v10 = *(v1 + 16);
    *v10 = v7;
    v10[1] = -1;
    *(v1 + 32) = 20000;
    *(v1 + 34) = v8;
    v2 = *(v1 + 40);
    v4 = *(v3 + 560);
  }

  if (v2 >= v4)
  {
LABEL_13:
    *(v1 + 11) = 1;
  }

  return this;
}

uint64_t *NGramIterator::next2(uint64_t *this)
{
  v1 = this;
  if (*(this + 10) == 1)
  {
    v2 = *(this + 10);
    v3 = *(this + 11) + 1;
    *(this + 11) = v3;
    v4 = *this;
  }

  else
  {
    v2 = 1;
    *(this + 10) = 1;
    v4 = *this;
    v3 = (**(*this + 384) >> 1) & 1;
    *(this + 11) = v3;
  }

  *(this + 10) = 1;
  v5 = *(v4 + 560);
  if (v2 >= v5)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v6 = *(v4 + 384);
    if ((*(v6 + 4 * (v2 >> 5)) >> v2))
    {
      if (v3 > *(*(v4 + 552) + 2 * v2))
      {
        goto LABEL_11;
      }

      v7 = v3 + *(*(v4 + 536) + 4 * v2) - 1;
      if (*(v4 + 376))
      {
        v7 = *(*(v4 + 584) + v7);
        v8 = *(v4 + 368);
      }

      else
      {
        v8 = *(v4 + 568);
      }

      v9 = *(v8 + 2 * v7);
    }

    else
    {
      if (v3 >= *(*(v4 + 552) + 2 * v2))
      {
LABEL_11:
        *(v1 + 40) = ++v2;
        if (v2 >= v5)
        {
          v3 = 0;
        }

        else
        {
          v3 = (*(v6 + 4 * (v2 >> 5)) >> v2) & 1;
        }

        *(v1 + 44) = v3;
        goto LABEL_19;
      }

      this = BigramData::getSearchScoreForIndex((v4 + 360), v2, v3);
      v9 = this;
    }

    if (v9 != 20000)
    {
      break;
    }

    v2 = *(v1 + 40);
    v3 = *(v1 + 44) + 1;
    *(v1 + 44) = v3;
    v4 = *v1;
LABEL_19:
    v5 = *(v4 + 560);
    if (v2 >= v5)
    {
      goto LABEL_25;
    }
  }

  v10 = *(v1 + 40);
  v11 = *(*(*v1 + 344) + 2 * v10);
  if ((*(*(*v1 + 384) + ((v10 >> 3) & 0x1FFFFFFC)) >> v10))
  {
    v12 = *(v1 + 44);
  }

  else
  {
    LOWORD(v12) = BigramData::getSearchSuccIdForIndex((*v1 + 360), v10, *(v1 + 44));
    LODWORD(v10) = *(v1 + 40);
  }

  this = NGramIteratorData::set2(v1 + 16, v10, v12, v9, v11);
  v2 = *(v1 + 40);
  v5 = *(*v1 + 560);
LABEL_25:
  if (v2 >= v5)
  {
    *(v1 + 11) = 1;
  }

  return this;
}

unint64_t NGramIterator::next3Backoff(unint64_t this)
{
  v1 = this;
  if (*(this + 10) == 1)
  {
    v2 = *(this + 40);
    v3 = *(this + 44) + 1;
    *(this + 44) = v3;
  }

  else
  {
    v3 = 0;
    *(this + 40) = 1;
    *(this + 48) = -1;
    v2 = 1;
  }

  *(this + 10) = 1;
  v4 = *this;
  v5 = *(*this + 800);
  if (v2 >= v5)
  {
    goto LABEL_19;
  }

  v6 = *(v4 + 792);
  while (!*(v6 + 2 * v2) || v3 >= *(v6 + 2 * v2))
  {
    v3 = 0;
    *(this + 40) = ++v2;
LABEL_13:
    *(this + 44) = v3;
    if (v2 >= v5)
    {
      goto LABEL_19;
    }
  }

  v8 = (*(*(v4 + 808) + 4 * v2) + v3);
  if (!*(*(v4 + 1040) + 2 * v8))
  {
    ++v3;
    goto LABEL_13;
  }

  if (*(v4 + 768))
  {
    v9 = (*(v4 + 760) + 2 * *(*(v4 + 856) + v8));
  }

  else
  {
    v9 = (*(v4 + 840) + 2 * v8);
  }

  this = NGramIteratorData::set3(this + 16, v2, *(*(v4 + 824) + 2 * v8), 0xFFFF, 20000, *v9);
  v5 = *(*v1 + 800);
LABEL_19:
  if (*(v1 + 40) >= v5)
  {
    *(v1 + 11) = 1;
  }

  return this;
}

int *NGramIterator::next3(int *this)
{
  v1 = this;
  if (*(this + 10) == 1)
  {
    ++this[12];
    v2 = this[10];
    v3 = *this;
    v4 = *(*this + 800);
  }

  else
  {
    v3 = *this;
    v4 = *(*this + 800);
    if (v4 < 2)
    {
      v2 = 1;
LABEL_9:
      this[10] = v2;
    }

    else
    {
      v2 = 1;
      while (!*(*(v3 + 792) + 2 * v2))
      {
        if (v4 == ++v2)
        {
          v2 = *(*this + 800);
          goto LABEL_9;
        }
      }

      this[10] = v2;
      this[11] = 0;
      v5 = *(*(v3 + 808) + 4 * v2);
      this[12] = (*(*(v3 + 872) + ((v5 >> 3) & 0x1FFFFFFC)) >> v5) & 1;
      v2 = v2;
    }
  }

  *(this + 10) = 1;
  if (v2 >= v4)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v6 = *(v3 + 792);
    v7 = *(v6 + 2 * v2);
    if (!*(v6 + 2 * v2) || (v8 = v1[11], v8 >= v7))
    {
      v17 = v2 + 1;
      *(v1 + 5) = v17;
      if (v4 <= v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v6 + 2 * v17);
        if (*(v6 + 2 * v17))
        {
          v19 = *(*(v3 + 808) + 4 * v17);
          v20 = *(*(v3 + 872) + ((v19 >> 3) & 0x1FFFFFFC)) >> v19;
          goto LABEL_27;
        }
      }

LABEL_31:
      v1[12] = v18;
      goto LABEL_32;
    }

    v9 = *(v3 + 808);
    v10 = (*(v9 + 4 * v2) + v8);
    v11 = *(v3 + 872);
    v12 = *(v11 + 4 * (v10 >> 5));
    v13 = 1 << (*(v9 + 4 * v2) + v8);
    v14 = v1[12];
    if ((v13 & v12) == 0)
    {
      break;
    }

    if (v1[12] <= *(*(v3 + 1040) + 2 * v10))
    {
      v15 = v1[12] + *(*(v3 + 1024) + 4 * v10) - 1;
      if (*(v3 + 784))
      {
        v15 = *(*(v3 + 1072) + v15);
        v16 = *(v3 + 776);
      }

      else
      {
        v16 = *(v3 + 1056);
      }

      v21 = *(v16 + 2 * v15);
      if (v21 != 20000)
      {
        goto LABEL_37;
      }

      v18 = v14 + 1;
      goto LABEL_31;
    }

LABEL_25:
    v1[11] = v8 + 1;
    if (v8 + 1 < v7)
    {
      v20 = *(v11 + 4 * ((*(v9 + 4 * v2) + v8 + 1) >> 5)) >> (*(v9 + 4 * v2) + v8 + 1);
LABEL_27:
      v18 = v20 & 1;
      goto LABEL_31;
    }

LABEL_32:
    v2 = v1[10];
    v4 = *(v3 + 800);
    if (v2 >= v4)
    {
      goto LABEL_33;
    }
  }

  if (v14 >= *(*(v3 + 1040) + 2 * v10))
  {
    goto LABEL_25;
  }

  this = TrigramData::getSearchScoreForIndex((v3 + 744), *(v9 + 4 * v2) + v8, v14);
  if (this == 20000)
  {
    ++v1[12];
    v3 = *v1;
    goto LABEL_32;
  }

  LOWORD(v21) = this;
  v3 = *v1;
  v12 = *(*(*v1 + 872) + 4 * (v10 >> 5));
LABEL_37:
  v22 = *(*(v3 + 824) + 2 * v10);
  if ((v12 & v13) != 0)
  {
    v23 = v1[12];
  }

  else
  {
    LOWORD(v23) = TrigramData::getSearchSuccIdForIndex((v3 + 744), v10, v1[12]);
    v3 = *v1;
  }

  if (*(v3 + 768))
  {
    v24 = (*(v3 + 760) + 2 * *(*(v3 + 856) + v10));
  }

  else
  {
    v24 = (*(v3 + 840) + 2 * v10);
  }

  this = NGramIteratorData::set3((v1 + 4), v1[10], v22, v23, v21, *v24);
  v4 = *(*v1 + 800);
LABEL_33:
  if (v1[10] >= v4)
  {
    *(v1 + 11) = 1;
  }

  return this;
}

QuadgramData *NGramIterator::next4Backoff(QuadgramData *this)
{
  v1 = this;
  if (*(this + 10) == 1)
  {
    v2 = *(this + 12) + 1;
    *(this + 12) = v2;
    v3 = *this;
    v4 = *(*this + 1288);
    v5 = *(this + 10);
  }

  else
  {
    v3 = *this;
    v4 = *(*this + 1288);
    if (v4 < 2)
    {
      v5 = 1;
    }

    else
    {
      v5 = 1;
      while (!*(v3[160] + 2 * v5))
      {
        if (v4 == ++v5)
        {
          v5 = *(*this + 1288);
          goto LABEL_10;
        }
      }

      v5 = v5;
    }

LABEL_10:
    v2 = 0;
    *(this + 10) = v5;
    *(this + 11) = 0;
    *(this + 12) = 0;
    *(this + 13) = -1;
  }

  *(this + 10) = 1;
  if (v5 >= v4)
  {
    goto LABEL_27;
  }

  this = (v3 + 154);
  v6 = v3[160];
  v7 = 264;
  while (1)
  {
    if (*(v6 + 2 * v5))
    {
      v8 = *(v1 + 11);
      if (v8 < *(v6 + 2 * v5))
      {
        break;
      }
    }

    v2 = 0;
    *(v1 + 5) = ++v5;
LABEL_21:
    *(v1 + 12) = v2;
    if (v5 >= v4)
    {
      goto LABEL_27;
    }
  }

  v9 = (*(v3[162] + 4 * v5) + v8);
  if (v2 >= *(v3[166] + 2 * v9))
  {
    v2 = 0;
    *(v1 + 11) = v8 + 1;
    goto LABEL_21;
  }

  v10 = *(v3[185] + 4 * v9);
  if (!*(v3 + 308) || ((*(v3[168] + 4 * (v9 >> 5)) >> v9) & 1) == 0)
  {
    if (*(v3[189] + 2 * (v10 + v2)))
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v10 = *(v3[207] + 4 * v10);
  if (!*(v3[217] + 2 * (v10 + v2)))
  {
LABEL_25:
    ++v2;
    goto LABEL_21;
  }

  v7 = 440;
LABEL_26:
  v11 = *(v3[164] + 2 * v9);
  v12 = *(*(this + v7) + 2 * (v10 + v2));
  BackoffWeight = QuadgramData::getBackoffWeight(this, v9, v2);
  this = NGramIteratorData::set4(v1 + 16, *(v1 + 10), v11, v12, 0xFFFF, 20000, BackoffWeight);
  v4 = *(*v1 + 1288);
LABEL_27:
  if (*(v1 + 10) >= v4)
  {
    *(v1 + 11) = 1;
  }

  return this;
}

QuadgramData *NGramIterator::next4(QuadgramData *this)
{
  v1 = this;
  if (*(this + 10) == 1)
  {
    v2 = *(this + 13) + 1;
    *(this + 13) = v2;
    v3 = *(this + 10);
    v4 = *this;
    v5 = *(*this + 1288);
  }

  else
  {
    v4 = *this;
    v5 = *(*this + 1288);
    if (v5 < 2)
    {
      v3 = 1;
    }

    else
    {
      v3 = 1;
      while (!*(*(v4 + 1280) + 2 * v3))
      {
        if (v5 == ++v3)
        {
          v3 = *(*this + 1288);
          goto LABEL_10;
        }
      }

      v3 = v3;
    }

LABEL_10:
    v2 = 0;
    *(this + 10) = v3;
    *(this + 11) = 0;
    *(this + 6) = 0;
  }

  *(this + 10) = 1;
  if (v3 >= v5)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v6 = *(v4 + 1280);
    v7 = *(v6 + 2 * v3);
    if (*(v6 + 2 * v3))
    {
      v8 = *(v1 + 11);
      if (v8 < v7)
      {
        break;
      }
    }

    v2 = 0;
    *(v1 + 5) = (v3 + 1);
    *(v1 + 12) = 0;
LABEL_19:
    *(v1 + 13) = 0;
LABEL_20:
    v3 = *(v1 + 10);
    v5 = *(v4 + 1288);
    if (v3 >= v5)
    {
      goto LABEL_33;
    }
  }

  v9 = (*(*(v4 + 1296) + 4 * v3) + v8);
  v10 = *(v1 + 12);
  if (v10 >= *(*(v4 + 1328) + 2 * v9))
  {
    v2 = 0;
    *(v1 + 6) = 0;
    *(v1 + 11) = v8 + 1;
    goto LABEL_20;
  }

  v11 = *(*(v4 + 1480) + 4 * v9);
  if (*(v4 + 1232) && ((*(*(v4 + 1344) + 4 * (v9 >> 5)) >> v9) & 1) != 0)
  {
    v11 = *(*(v4 + 1656) + 4 * v11);
    v12 = 504;
  }

  else
  {
    v12 = 280;
  }

  this = (v4 + 1232);
  if (v2 >= *(*(v4 + 1232 + v12) + 2 * (v11 + v10)))
  {
    v2 = 0;
    *(v1 + 12) = v10 + 1;
    goto LABEL_19;
  }

  this = QuadgramData::getScoreForIndex(this, v9, v10, v2);
  if (this == 20000)
  {
    v2 = *(v1 + 13) + 1;
    *(v1 + 13) = v2;
    v4 = *v1;
    goto LABEL_20;
  }

  v13 = this;
  v14 = *v1;
  v15 = *(*(*v1 + 1312) + 2 * v9);
  v16 = (*v1 + 1232);
  v17 = *(v1 + 12);
  v18 = *(*(*v1 + 1480) + 4 * v9);
  if (*v16 && ((*(*(v14 + 1344) + 4 * (v9 >> 5)) >> v9) & 1) != 0)
  {
    v18 = *(*(v14 + 1656) + 4 * v18);
    v19 = 440;
  }

  else
  {
    v19 = 264;
  }

  v20 = *(*(v16 + v19) + 2 * (v18 + v17));
  Quad3SuccIdForIndex = QuadgramData::getQuad3SuccIdForIndex(v16, v9, v17, *(v1 + 13));
  BackoffWeight = QuadgramData::getBackoffWeight((*v1 + 1232), v9, *(v1 + 12));
  this = NGramIteratorData::set4(v1 + 16, *(v1 + 10), v15, v20, Quad3SuccIdForIndex, v13, BackoffWeight);
  v5 = *(*v1 + 1288);
LABEL_33:
  if (*(v1 + 10) >= v5)
  {
    *(v1 + 11) = 1;
  }

  return this;
}

unint64_t NGramIteratorData::set2(unint64_t this, int a2, int a3, __int16 a4, __int16 a5)
{
  v9 = this;
  v10 = *(this + 12);
  if (v10 <= 1)
  {
    this = DgnPrimArray<unsigned int>::reallocElts(this, 2 - v10, 0);
  }

  *(v9 + 8) = 2;
  v11 = *v9;
  if (a3 == 0xFFFF)
  {
    v12 = -1;
  }

  else
  {
    v12 = a3;
  }

  *v11 = a2;
  v11[1] = v12;
  *(v9 + 16) = a4;
  *(v9 + 18) = a5;
  return this;
}

unint64_t NGramIteratorData::set3(unint64_t this, int a2, int a3, int a4, __int16 a5, __int16 a6)
{
  v11 = this;
  v12 = *(this + 12);
  if (v12 <= 2)
  {
    this = DgnPrimArray<unsigned int>::reallocElts(this, 3 - v12, 0);
  }

  *(v11 + 8) = 3;
  v13 = *v11;
  if (a3 == 0xFFFF)
  {
    v14 = -1;
  }

  else
  {
    v14 = a3;
  }

  *v13 = a2;
  v13[1] = v14;
  if (a4 == 0xFFFF)
  {
    v15 = -1;
  }

  else
  {
    v15 = a4;
  }

  v13[2] = v15;
  *(v11 + 16) = a5;
  *(v11 + 18) = a6;
  return this;
}

unint64_t NGramIteratorData::set4(unint64_t this, int a2, int a3, int a4, int a5, __int16 a6, __int16 a7)
{
  v13 = this;
  v14 = *(this + 12);
  if (v14 <= 3)
  {
    this = DgnPrimArray<unsigned int>::reallocElts(this, 4 - v14, 0);
  }

  *(v13 + 8) = 4;
  v15 = *v13;
  if (a3 == 0xFFFF)
  {
    v16 = -1;
  }

  else
  {
    v16 = a3;
  }

  *v15 = a2;
  v15[1] = v16;
  if (a4 == 0xFFFF)
  {
    v17 = -1;
  }

  else
  {
    v17 = a4;
  }

  if (a5 == 0xFFFF)
  {
    v18 = -1;
  }

  else
  {
    v18 = a5;
  }

  v15[2] = v17;
  v15[3] = v18;
  *(v13 + 16) = a6;
  *(v13 + 18) = a7;
  return this;
}

uint64_t WordLMContextData::WordLMContextData(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 16777212;
  *a1 = &unk_287526D18;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  if (a2)
  {
    *(a1 + 112) = (*(*a2 + 464))(a2);
  }

  *(a1 + 12) = 0;
  *(a1 + 16) = -1;
  *(a1 + 20) = 0;
  *(a1 + 24) = -4278190084;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0xFFFFFFFF00000000;
  *(a1 + 64) = 0;
  *(a1 + 66) = 0;
  *(a1 + 68) = xmmword_26288CF90;
  *(a1 + 88) = 0xFFFFFFFE00FFFFFCLL;
  *(a1 + 84) = 0;
  return a1;
}

void sub_2627AB770(_Unwind_Exception *a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(v2);
  DgnPrimArray<unsigned int>::~DgnPrimArray(v1);
  _Unwind_Resume(a1);
}

void WordLMContextData::~WordLMContextData(WordLMContextData *this)
{
  WordLMContextData::~WordLMContextData(this);

  JUMPOUT(0x26672B1B0);
}

{
  *this = &unk_287526D18;
  DgnDelete<LMContextData>(*(this + 14));
  *(this + 14) = 0;
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 96);
  DgnPrimArray<unsigned int>::~DgnPrimArray(this + 40);
}

uint64_t WordLMContextData::sizeObject(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 8;
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v4 = 4;
  }

  if (a2 == 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  if (a2 != 2)
  {
    v6 = *(a1 + 112);
    if (v6)
    {
      v5 += (*(*v6 + 16))(v6, a2);
    }
  }

  v7 = sizeObject<unsigned int>(a1 + 40, v2);
  v8 = sizeObject<unsigned int>(a1 + 96, v2);
  v9 = 6;
  if (v2 == 3)
  {
    v9 = 0;
  }

  return v9 + 2 * (v2 != 3) + v7 + v8 + v5 + 2 * (((v2 != 3) | (4 * (v2 != 3))) + 20 * (v2 != 3));
}

uint64_t HuffmanDecoder<unsigned short,unsigned int>::~HuffmanDecoder(uint64_t a1)
{
  DgnPrimArray<unsigned int>::~DgnPrimArray(a1 + 72);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a1 + 48);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a1 + 32);
  DgnPrimArray<unsigned int>::~DgnPrimArray(a1 + 16);

  return DgnPrimArray<unsigned int>::~DgnPrimArray(a1);
}

uint64_t HuffmanDecoder<unsigned short,unsigned int>::sizeObject(uint64_t a1, int a2)
{
  v4 = a2 != 3;
  v5 = sizeObject<unsigned int>(a1, a2);
  v6 = sizeObject<unsigned char>(a1 + 16, a2);
  v7 = sizeObject<unsigned int>(a1 + 32, a2);
  v8 = sizeObject<unsigned short>(a1 + 48, a2);
  return v5 + 8 * v4 + v6 + v7 + v8 + sizeObject<unsigned int>(a1 + 72, a2);
}

uint64_t HuffmanDecoder<unsigned short,unsigned int>::writeObject(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  writeObject<unsigned int>(a2, a1, a3);
  writeObject<unsigned char>(a2, a1 + 16, a3);
  writeObject<unsigned int>(a2, a1 + 32, a3);

  return writeObject<unsigned short>(a2, a1 + 48, a3);
}

unint64_t HuffmanDecoder<unsigned short,unsigned int>::readObject(unint64_t a1, DgnStream *a2, unsigned int *a3)
{
  readObject<unsigned int>(a2, a1, a3);
  readObject<unsigned char>(a2, a1 + 16, a3);
  readObject<unsigned int>(a2, a1 + 32, a3);
  readObject<unsigned short>(a2, a1 + 48, a3);

  return HuffmanDecoder<unsigned short,unsigned int>::configureIndexHelper(a1);
}

unint64_t HuffmanDecoder<unsigned short,unsigned int>::configureIndexHelper(unint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = result;
    if (v1 - 1 >= -1)
    {
      v3 = -1;
    }

    else
    {
      v3 = v1 - 1;
    }

    v4 = v3 + 1;
    v5 = v1 - 1;
    while (1)
    {
      LODWORD(v1) = v1 - 1;
      if (v1 < 0)
      {
        break;
      }

      v6 = *(*result + 4 * (v5-- & 0x7FFFFFFF));
      if ((v6 & 0x1FFFFF) != 0)
      {
        v4 = v1 + 1;
        v3 = v1;
        break;
      }
    }

    v7 = *(result + 84);
    if (v7 <= 0x7FF)
    {
      result = DgnPrimArray<unsigned int>::reallocElts(result + 72, 2048 - v7, 0);
    }

    *(v2 + 80) = 2048;
    if ((v1 & 0x80000000) != 0)
    {
      *(v2 + 64) = 0;
      v11 = *(v2 + 8);
    }

    else
    {
      v8 = *v2;
      v9 = *(*v2 + 4 * v3);
      *(v2 + 64) = (v9 & 0xFFE00000) + 0x200000;
      *(v2 + 68) = v3;
      for (i = (v9 >> 21) + 1; ; ++i)
      {
        v11 = *(v2 + 8);
        v12 = v4 == v11 ? *(v2 + 80) : *(v8 + 4 * v4) >> 21;
        if (i >= v12)
        {
          break;
        }

        *(*(v2 + 72) + 4 * i) = v3;
      }
    }

    v13 = v11 - 1;
    if (v3 < v11 - 1)
    {
      v14 = *v2;
      if (v4 < v13)
      {
        LODWORD(v15) = *(v14 + 4 * v4);
        do
        {
          v16 = v15 >> 21;
          v17 = v4 + 1;
          LODWORD(v15) = *(v14 + 4 * v17);
          if (v16 < v15 >> 21)
          {
            v18 = *(v2 + 72);
            do
            {
              *(v18 + 4 * v16++) = v4;
              v15 = *(v14 + 4 * v17);
            }

            while (v16 < v15 >> 21);
            v11 = *(v2 + 8);
          }

          v13 = v11 - 1;
          ++v4;
        }

        while (v17 < v11 - 1);
      }

      v19 = *(v14 + 4 * v13) >> 21;
      if (v19 < *(v2 + 80))
      {
        v20 = *(v2 + 72);
        do
        {
          *(v20 + 4 * v19++) = *(v2 + 8) - 1;
        }

        while (v19 < *(v2 + 80));
      }
    }
  }

  return result;
}

unint64_t DgnArray<DiskNgramContext>::reallocElts(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = minAddAllocWithExtra(a2, *(a1 + 12));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 12) + v3;
  v8 = 0;
  result = realloc_array(*a1, &v8, 56 * v6, 56 * v5, 56 * v5, 1);
  *(a1 + 12) = result / 0x38;
  *a1 = v8;
  return result;
}

uint64_t Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::add(uint64_t result, unsigned __int16 *a2, void *a3)
{
  v5 = result;
  v6 = *(result + 12);
  if (*(result + 8) >= v6 >> 1)
  {
    result = HashKEV<unsigned int,unsigned int,CWIDScope>::upSize(result, 2 * v6);
  }

  v7 = *a2;
  v8 = *(v5 + 16);
  if (v8)
  {
    v9 = (-1640531527 * v7) >> -v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 32);
  if (!v11)
  {
    result = DgnPool::addChunk((v5 + 24));
    v11 = *(v5 + 32);
  }

  v12 = *a2;
  v13 = (v10 + 8 * v9);
  *(v5 + 32) = *v11;
  *(v11 + 12) = v12;
  *(v11 + 16) = *a3;
  *(v11 + 8) = v7;
  ++*(v5 + 8);
  if (*(v5 + 20))
  {
    *v11 = *v13;
  }

  else
  {
    *v11 = 0;
    v14 = *v13;
    if (*v13)
    {
      do
      {
        v13 = v14;
        v14 = *v14;
      }

      while (v14);
    }
  }

  *v13 = v11;
  return result;
}

uint64_t **Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::findBucket(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (-1640531527 * v2) >> -v3;
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
      if (*(v6 + 2) == v2 && *(v6 + 6) == v2)
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

unint64_t HuffmanDecoder<unsigned short,unsigned int>::initializeTable(unint64_t result, int a2, unsigned int a3)
{
  v4 = result;
  v5 = (a2 + 1);
  v6 = *(result + 12);
  if (v5 > v6)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(result, v5 - v6, 0);
  }

  if (*(v4 + 28) < v5)
  {
    v9 = 0;
    result = realloc_array(*(v4 + 16), &v9, v5, *(v4 + 24), *(v4 + 24), 1);
    *(v4 + 28) = result;
    *(v4 + 16) = v9;
  }

  v7 = *(v4 + 44);
  if (v5 > v7)
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v4 + 32, v5 - v7, 0);
  }

  v8 = *(v4 + 60);
  if (a3 > v8)
  {
    result = DgnPrimArray<short>::reallocElts(v4 + 48, a3 - v8, 0);
  }

  *(v4 + 56) = a3;
  return result;
}

unint64_t HuffmanDecoder<unsigned short,unsigned int>::addCode(unint64_t result, int a2, char a3, int a4)
{
  v7 = result;
  v8 = *(result + 8);
  if (v8 == *(result + 12))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(result, 1, 1);
    v8 = *(v7 + 8);
  }

  *(*v7 + 4 * v8) = a2;
  ++*(v7 + 8);
  v9 = *(v7 + 24);
  if (v9 == *(v7 + 28))
  {
    result = DgnPrimArray<char>::reallocElts(v7 + 16, 1, 1);
    v9 = *(v7 + 24);
  }

  *(*(v7 + 16) + v9) = a3;
  ++*(v7 + 24);
  v10 = *(v7 + 40);
  if (v10 == *(v7 + 44))
  {
    result = DgnPrimArray<unsigned int>::reallocElts(v7 + 32, 1, 1);
    v10 = *(v7 + 40);
  }

  *(*(v7 + 32) + 4 * v10) = a4;
  ++*(v7 + 40);
  return result;
}

uint64_t HuffmanEncoder<unsigned short,unsigned int>::countsToLengths(uint64_t a1, uint64_t a2)
{
  HuffmanEncoder<unsigned short,unsigned int>::sortElements(a1);
  v4 = *(a1 + 128);
  v5 = *(a1 + 120);
  v6 = *v5;
  *(*v5 + 4) += *(v5[1] + 4);
  v7 = v4 - 1;
  if (v7 > 1)
  {
    v8 = v5[2];
    v9 = 3;
    v10 = 1;
    v11 = 1;
    while (1)
    {
      v12 = v5[v10];
      v13 = *(v6 + 4);
      if (v9 < v4 && (v14 = *(v8 + 4), v13 >= v14))
      {
        *(v12 + 4) = v14;
        v8 = v5[v9++];
      }

      else
      {
        *(v12 + 4) = v13;
        *(v6 + 4) = v10;
        v6 = v5[v11++];
      }

      if (v9 >= v4)
      {
        v15 = *(v6 + 4);
      }

      else
      {
        if (v10 <= v11 - 1)
        {
          v16 = *(v8 + 4);
LABEL_14:
          *(v12 + 4) += v16;
          v8 = v5[v9++];
          goto LABEL_15;
        }

        v15 = *(v6 + 4);
        v16 = *(v8 + 4);
        if (v15 >= v16)
        {
          goto LABEL_14;
        }
      }

      *(v12 + 4) += v15;
      *(v6 + 4) = v10;
      v6 = v5[v11++];
LABEL_15:
      if (v7 == ++v10)
      {
        v17 = v4 - 2;
        *(v5[v4 - 2] + 4) = 0;
        if ((v4 - 3) >= 0)
        {
          v18 = v4 - 3;
          do
          {
            *(v5[v18] + 4) = *(v5[*(v5[v18] + 4)] + 4) + 1;
            --v18;
          }

          while (v18 != -1);
        }

        goto LABEL_21;
      }
    }
  }

  v17 = v4 - 2;
  *(v5[v4 - 2] + 4) = 0;
LABEL_21:
  if (*a1 < 3u)
  {
    v21 = 1;
  }

  else
  {
    v19 = 2;
    v20 = 1;
    v21 = 1;
    do
    {
      ++v21;
      v22 = v19 + 1;
      v19 += v20;
      v20 = v22;
    }

    while (*a1 > v19);
  }

  if (v4 >= v21)
  {
    v4 = v21;
  }

  v23 = v4 + 1;
  v24 = *(a2 + 12);
  if (v23 > v24)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v23 - v24, 0);
  }

  v25 = 0;
  *(a2 + 8) = v23;
  v26 = *a2;
  v27 = 1;
  do
  {
    v28 = v25;
    if ((v17 & 0x80000000) != 0)
    {
      v30 = 0;
    }

    else
    {
      v29 = 0;
      v30 = v17 + 1;
      while (*(*(*(a1 + 120) + 8 * v17) + 4) == v25)
      {
        ++v29;
        --v17;
        if (v30 == v29)
        {
          v17 = -1;
          goto LABEL_38;
        }
      }

      v30 = v29;
    }

LABEL_38:
    *(v26 + 4 * v25) = v27 - v30;
    if (v27 > v30)
    {
      v31 = *(a1 + 120);
      do
      {
        *(*(v31 + 8 * v7) + 4) = v25;
        LODWORD(v7) = v7 - 1;
        --v27;
      }

      while (v27 > v30);
    }

    v27 = 2 * v30;
    v25 = (v25 + 1);
  }

  while (2 * v30);
  v32 = *(a2 + 12);
  if (v25 > v32)
  {
    DgnPrimArray<unsigned int>::reallocElts(a2, v25 - v32, 0);
  }

  *(a2 + 8) = v25;
  return v28;
}

uint64_t Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287523F50;
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
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 14;
  }

  else
  {
    v7 = 22;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2627AC304(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::~Hash(uint64_t a1)
{
  Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::~Hash(uint64_t a1)
{
  *a1 = &unk_287523F50;
  if (*(a1 + 8))
  {
    Hash<unsigned int,unsigned int,WordIdScope,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t HuffmanEncoder<unsigned short,unsigned int>::~HuffmanEncoder(uint64_t a1)
{
  DgnIOwnArray<PelSegment *>::releaseAll(a1 + 120);
  Hash<unsigned short,unsigned short,HuffmanSymbol<unsigned short,unsigned int>,HuffmanSymbol<unsigned short,unsigned int>*>::~Hash(a1 + 8);
  return a1;
}

uint64_t DiskNgramContext::operator=(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 34);
  *(result + 34) = v2;
  if ((v2 - 3) >= 2)
  {
    if (v2 != 2)
    {
      return result;
    }

    v3 = 44;
    v4 = 40;
    v5 = 36;
  }

  else
  {
    *(result + 36) = *(a2 + 36);
    v3 = 48;
    v4 = 44;
    v5 = 40;
  }

  *(result + v5) = *(a2 + v5);
  *(result + v4) = *(a2 + v4);
  *(result + v3) = *(a2 + v3);
  return result;
}

uint64_t Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_2875240E0;
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
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 28;
  }

  else
  {
    v7 = 32;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2627AC540(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::~Hash(uint64_t a1)
{
  Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::~Hash(uint64_t a1)
{
  *a1 = &unk_2875240E0;
  if (*(a1 + 8))
  {
    Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::removeAll(uint64_t result)
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
            result = v8(v5 + 28);
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

uint64_t Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::findBucket(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2)
  {
    v3 = 0;
    v4 = v2;
    do
    {
      HIDWORD(v5) = v3;
      LODWORD(v5) = v3;
      v3 = a2[v4--] + (v5 >> 19);
    }

    while (v4 * 4);
  }

  else
  {
    v3 = 0;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (-1640531527 * v3) >> -v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 80) + 8 * v7;
  v9 = *v8;
  if (!*v8)
  {
    return v8;
  }

  while (1)
  {
    result = v8;
    v8 = v9;
    if (*(v9 + 8) == v3)
    {
      v11 = *(v9 + 12);
      if (!v11)
      {
        return result;
      }

      if (*(v8 + 16) == a2[1])
      {
        break;
      }
    }

LABEL_17:
    v9 = *v8;
    result = v8;
    if (!*v8)
    {
      return result;
    }
  }

  v12 = 0;
  while (v11 - 1 != v12)
  {
    v13 = *(v8 + 20 + 4 * v12);
    v14 = a2[v12++ + 2];
    if (v13 != v14)
    {
      if (v12 >= v11)
      {
        return result;
      }

      goto LABEL_17;
    }
  }

  return result;
}

uint64_t Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524130;
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
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 32;
  }

  else
  {
    v7 = 36;
  }

  *(a1 + 24) = 48;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2627AC838(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::~Hash(uint64_t a1)
{
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::~Hash(uint64_t a1)
{
  *a1 = &unk_287524130;
  if (*(a1 + 8))
  {
    Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,double>::removeAll(uint64_t result)
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
            result = v8(v5 + 4);
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

uint64_t Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,unsigned int>::Hash(uint64_t a1, const char *a2, int a3)
{
  HashBase::HashBase(a1, a2);
  *v5 = &unk_287524108;
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
  if (gShadowDiagnosticShowIdealizedObjectSizes)
  {
    v7 = 28;
  }

  else
  {
    v7 = 32;
  }

  *(a1 + 24) = 32;
  *(a1 + 28) = v7;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_2627ACA54(_Unwind_Exception *a1)
{
  DgnPrimFixArray<double>::~DgnPrimFixArray(v2);
  DgnPool::~DgnPool(v1);
  MrecInitModule_sdpres_sdapi();
  _Unwind_Resume(a1);
}

void Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,unsigned int>::~Hash(uint64_t a1)
{
  Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,unsigned int>::~Hash(a1);

  JUMPOUT(0x26672B1B0);
}

uint64_t Hash<BuildLmIdNgram,BuildLmIdNgram,BuildLmIdNgram,unsigned int>::~Hash(uint64_t a1)
{
  *a1 = &unk_287524108;
  if (*(a1 + 8))
  {
    Hash<BuildWordIdNgram,BuildWordIdNgram,BuildWordIdNgram,unsigned int>::removeAll(a1);
  }

  DgnPrimFixArray<double>::~DgnPrimFixArray(a1 + 80);
  DgnPool::~DgnPool((a1 + 24));

  return MrecInitModule_sdpres_sdapi();
}

uint64_t MiniFst::init(uint64_t this, const ArcGraph *a2, PelScoreCache *a3)
{
  v3 = this;
  *(this + 80) = a2;
  *(this + 88) = a3;
  v4 = *(a2 + 40);
  v5 = v4 + 1;
  v6 = *(this + 44);
  if (v4 + 1 > v6)
  {
    this = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(this + 32, v4 + 1 - v6, 0);
  }

  *(v3 + 40) = v5;
  v7 = *(v3 + 60);
  if (v5 > v7)
  {
    this = DgnArray<FstSearchLatticeHashBackoffActiveToken>::reallocElts(v3 + 48, v5 - v7, 0);
  }

  *(v3 + 56) = v5;
  *(v3 + 96) = 1;
  v8 = *(v3 + 76);
  if (v4 > v8)
  {
    DgnPrimArray<unsigned int>::reallocElts(v3 + 64, v4 - v8, 0);
    *(v3 + 72) = v4;
LABEL_8:
    this = memset(*(v3 + 64), 255, 4 * v4);
    goto LABEL_9;
  }

  *(v3 + 72) = v4;
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_9:
  *(v3 + 96) = 0;
  return this;
}