uint64_t InsertSilWord(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9)
{
  v9 = a6;
  if (a6 >= a8)
  {
    v21 = "::ldbrec:: in FillProsWords trying to allocate for %d-th prosodic (silence) word while expecting %d max";
LABEL_13:
    NNFX_logMsg(a1, 0, v21, a4, a5, a6, a7, a8);
    return 0;
  }

  v11 = a5;
  v12 = a4;
  v15 = *(**(a2 + 8 * a4) + 8 * a5);
  SilWord = MakeSilWord(a1, a7, *(v15 + 8), *(v15 + 16), 35, a9, a7, a8);
  *(a3 + 8 * (v9 + 1)) = SilWord;
  if (!SilWord)
  {
    v21 = "::ldbrec:: in FillProsWords while creating silence word after phone %d.\n";
    goto LABEL_13;
  }

  v17 = *(a3 + 8 * v9);
  v18 = *(*(a2 + 8 * v12) + 8) - 1;
  if (*(v17 + 144))
  {
    v19 = v18 == v11;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    *(v17 + 196) = 0;
  }

  v20 = 1;
  if (v18 == v11)
  {
    *(SilWord + 49) = 1;
  }

  return v20;
}

void *freepWRI(uint64_t a1, void *a2)
{
  v4 = a2[16];
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
  }

  v5 = a2[17];
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
  }

  v6 = a2[4];
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
  }

  v7 = a2[5];
  if (v7)
  {
    heap_Free(*(a1 + 8), v7);
  }

  v8 = a2[6];
  if (v8)
  {
    heap_Free(*(a1 + 8), v8);
  }

  v9 = a2[7];
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
  }

  v10 = a2[8];
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
  }

  v11 = a2[9];
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
  }

  v12 = a2[10];
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
  }

  v13 = a2[12];
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
  }

  v14 = a2[11];
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
  }

  v15 = a2[13];
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
  }

  v16 = a2[14];
  if (v16)
  {
    heap_Free(*(a1 + 8), v16);
  }

  v17 = *(a1 + 8);

  return heap_Free(v17, a2);
}

void *freepSRI(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*a2 + 8 * i);
      if (v6)
      {
        freepWRI(a1, v6);
        *(*a2 + 8 * i) = 0;
        v4 = *(a2 + 8);
      }
    }
  }

  if (*a2)
  {
    heap_Free(*(a1 + 8), *a2);
    *a2 = 0;
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    for (j = 0; j < v7; ++j)
    {
      v9 = *(*(a2 + 16) + 8 * j);
      if (v9)
      {
        freepWRI(a1, v9);
        *(*(a2 + 16) + 8 * j) = 0;
        v7 = *(a2 + 24);
      }
    }
  }

  v10 = *(a2 + 16);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a2 + 16) = 0;
  }

  v11 = *(a2 + 40);
  if (v11)
  {
    for (k = 0; k < v11; ++k)
    {
      v13 = *(*(a2 + 32) + 8 * k);
      if (v13)
      {
        freepWRI(a1, v13);
        *(*(a2 + 32) + 8 * k) = 0;
        v11 = *(a2 + 40);
      }
    }
  }

  v14 = *(a2 + 32);
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    *(a2 + 32) = 0;
  }

  v15 = *(a2 + 56);
  if (v15)
  {
    for (m = 0; m < v15; ++m)
    {
      v17 = *(*(a2 + 48) + 8 * m);
      if (v17)
      {
        freepWRI(a1, v17);
        *(*(a2 + 48) + 8 * m) = 0;
        v15 = *(a2 + 56);
      }
    }
  }

  v18 = *(a2 + 48);
  if (v18)
  {
    heap_Free(*(a1 + 8), v18);
    *(a2 + 48) = 0;
  }

  v19 = *(a2 + 72);
  if (v19)
  {
    for (n = 0; n < v19; ++n)
    {
      v21 = *(*(a2 + 64) + 8 * n);
      if (v21)
      {
        freepWRI(a1, v21);
        *(*(a2 + 64) + 8 * n) = 0;
        v19 = *(a2 + 72);
      }
    }
  }

  v22 = *(a2 + 64);
  if (v22)
  {
    heap_Free(*(a1 + 8), v22);
    *(a2 + 64) = 0;
  }

  v23 = *(a1 + 8);

  return heap_Free(v23, a2);
}

void *freepPWRI(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    *(a2 + 32) = 0;
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
    *(a2 + 40) = 0;
  }

  v6 = *(a2 + 48);
  if (v6)
  {
    heap_Free(*(a1 + 8), v6);
    *(a2 + 48) = 0;
  }

  v7 = *(a2 + 56);
  if (v7)
  {
    heap_Free(*(a1 + 8), v7);
    *(a2 + 56) = 0;
  }

  v8 = *(a2 + 64);
  if (v8)
  {
    heap_Free(*(a1 + 8), v8);
    *(a2 + 64) = 0;
  }

  v9 = *(a2 + 72);
  if (v9)
  {
    heap_Free(*(a1 + 8), v9);
    *(a2 + 72) = 0;
  }

  v10 = *(a2 + 88);
  if (v10)
  {
    heap_Free(*(a1 + 8), v10);
    *(a2 + 88) = 0;
  }

  v11 = *(a2 + 80);
  if (v11)
  {
    heap_Free(*(a1 + 8), v11);
    *(a2 + 80) = 0;
  }

  v12 = *(a2 + 96);
  if (v12)
  {
    heap_Free(*(a1 + 8), v12);
    *(a2 + 96) = 0;
  }

  v13 = *(a2 + 112);
  if (v13)
  {
    heap_Free(*(a1 + 8), v13);
    *(a2 + 112) = 0;
  }

  v14 = *(a2 + 104);
  if (v14)
  {
    heap_Free(*(a1 + 8), v14);
    *(a2 + 104) = 0;
  }

  v15 = *(a2 + 120);
  if (v15)
  {
    heap_Free(*(a1 + 8), v15);
    *(a2 + 120) = 0;
  }

  v16 = *(a2 + 128);
  if (v16)
  {
    heap_Free(*(a1 + 8), v16);
    *(a2 + 128) = 0;
  }

  v17 = *(a2 + 152);
  if (v17)
  {
    heap_Free(*(a1 + 8), v17);
    *(a2 + 152) = 0;
  }

  v18 = *(a2 + 160);
  if (v18)
  {
    heap_Free(*(a1 + 8), v18);
    *(a2 + 160) = 0;
  }

  v19 = *(a2 + 176);
  if (v19)
  {
    heap_Free(*(a1 + 8), v19);
    *(a2 + 176) = 0;
  }

  v20 = *(a2 + 184);
  if (v20)
  {
    heap_Free(*(a1 + 8), v20);
    *(a2 + 184) = 0;
  }

  v21 = *(a2 + 144);
  if (v21)
  {
    for (i = 0; i < v21; ++i)
    {
      v23 = *(*(a2 + 168) + 8 * i);
      if (v23)
      {
        heap_Free(*(a1 + 8), v23);
        *(*(a2 + 168) + 8 * i) = 0;
        v21 = *(a2 + 144);
      }
    }
  }

  v24 = *(a2 + 168);
  if (v24)
  {
    heap_Free(*(a1 + 8), v24);
    *(a2 + 168) = 0;
  }

  v25 = *(a1 + 8);

  return heap_Free(v25, a2);
}

void *freeppSRI(void *result, uint64_t a2, int a3)
{
  if (a2)
  {
    v4 = result;
    if (a3 >= 1)
    {
      v5 = a3;
      v6 = a2;
      do
      {
        if (*v6)
        {
          freepSRI(v4, *v6);
          *v6 = 0;
        }

        ++v6;
        --v5;
      }

      while (v5);
    }

    v7 = *(v4 + 8);

    return heap_Free(v7, a2);
  }

  return result;
}

uint64_t ParseWnluStr(const char *a1, char **a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = cstdlib_strlen(a1);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = a1[v9];
      if (!a1[v9])
      {
        goto LABEL_6;
      }

      if (v10 != 58)
      {
        break;
      }

      if (v9 <= v8)
      {
        v22 = 0;
      }

      else
      {
        memcpy(__dst, &a1[v8], v9 + ~v8 + 1);
        v22 = v9 - v8;
      }

      v6 = __dst;
      __dst[v22] = 0;
      ++v9;
      if (__dst[1] == 95)
      {
        v23 = cstdlib_strchr("SsEeIi", __dst[0]);
        v6 = &__dst[2 * (v23 != 0)];
        if (v23)
        {
          v5 = __dst[0];
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }

LABEL_22:
      v8 = v9;
LABEL_26:
      if (v9 > v4)
      {
        return v7;
      }
    }

    if (v10 != 59)
    {
      ++v9;
      goto LABEL_26;
    }

LABEL_6:
    if (v5)
    {
      __src[0] = v5;
      __src[1] = 95;
      v5 = 2;
    }

    if (v9 > v8)
    {
      v11 = &a1[v8];
      v12 = v9 - v8;
      do
      {
        v13 = *v11++;
        __src[v5++] = v13;
        --v12;
      }

      while (v12);
    }

    __src[v5] = 0;
    if (v6)
    {
      v14 = cstdlib_strcmp(v6, "POS");
      v15 = a2 + 8;
      if (!v14 || (v16 = cstdlib_strcmp(v6, "PHR"), v15 = a2 + 9, !v16) || (v17 = cstdlib_strcmp(v6, "CLASS"), v15 = a2 + 10, !v17) || (v18 = cstdlib_strcmp(v6, "PUNC"), v15 = a2 + 12, !v18) || (v19 = cstdlib_strcmp(v6, "COMP"), v15 = a2 + 11, !v19) || (v20 = cstdlib_strcmp(v6, "BNDSHAPE"), v15 = a2 + 13, !v20) || (v21 = cstdlib_strcmp(v6, "COMPPOS"), v15 = a2 + 14, !v21))
      {
        cstdlib_strcpy(*v15, __src);
      }

      ++v7;
    }

    v5 = 0;
    ++v9;
    goto LABEL_22;
  }

  return 0;
}

uint64_t DupWrdRecField(uint64_t a1, char **a2, uint64_t a3, const char *a4)
{
  v8 = heap_Alloc(*(a1 + 8), a3);
  v14 = v8;
  if (v8)
  {
    cstdlib_strncpy(v8, a4, a3 - 1);
    result = 0;
    v14[a3 - 1] = 0;
  }

  else
  {
    NNFX_logMsg(a1, 0, "::ldbrec::memory allocation", v9, v10, v11, v12, v13);
    result = 2364547082;
  }

  *a2 = v14;
  return result;
}

uint64_t nnextract_Allocate(uint64_t a1, uint64_t **a2, _DWORD *a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
  v12 = heap_Alloc(*(a1 + 8), 8);
  *a2 = v12;
  if (v12)
  {
    if ((Compile_SntWrdRec(a1, a3, a4, a5, a6, v12) & 0x80000000) == 0)
    {
      return 0;
    }

    v19 = "::nnfeatextract::CompileSntWrdRecord";
  }

  else
  {
    v19 = "::nnfeatextract::memory allocation";
  }

  NNFX_logMsg(a1, 0, v19, v13, v14, v15, v16, v17);
  return 1;
}

uint64_t nnextract_Process2Buff(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, char *a9, uint64_t a10, uint64_t *a11, _DWORD *a12)
{
  v13 = *(a6 + 8);
  if (!v13)
  {
    v37 = "::nnfeatextract::Missing NN lingtab data.";
LABEL_13:
    NNFX_logMsg(a1, 0, v37, a4, a5, a6, a7, a8);
    return 1;
  }

  v17 = a5;
  v18 = a4;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  GetLingTabIndex(v13, v40);
  if (SLOWORD(v40[0]) == -1)
  {
    NNFX_logMsg(a1, 1, "::nnfeatextract::NN - GetLingTabIndex - missing VOWELS entry.", v21, v22, v23, v24, v25);
  }

  if (SWORD1(v40[0]) == -1)
  {
    NNFX_logMsg(a1, 1, "::nnfeatextract::NN - GetLingTabIndex - missing VOICEDPHONES entry.", v21, v22, v23, v24, v25);
  }

  NnFeatures = extractNnFeatures(a1, *(a6 + 8), v40, a9, a10, a2, a3, v18, v17, a8);
  *a7 = NnFeatures;
  if (!NnFeatures)
  {
    v37 = "in ";
    goto LABEL_13;
  }

  v27 = heap_Calloc(*(a1 + 8), 1, 16);
  if (!v27)
  {
    v37 = "::nnfeatextract::Memory allocation.";
    goto LABEL_13;
  }

  v28 = v27;
  SymTabInit(v27);
  Buf = SymTabReadBuf(a1, v28, *(a6 + 16), *(a6 + 24), a7);
  if (Buf)
  {
    v35 = Buf;
    v36 = "::nnfeatextract::NN - SymTabRead.";
  }

  else
  {
    v38 = SymTabToIntInplaceActive(a1, v28, a7, 0, 0x2Du);
    if (v38)
    {
      v35 = v38;
      v36 = "::nnfeatextract:: Symbol table does not seem to be correct.";
    }

    else
    {
      v35 = unrollNnFeatures(a1, a7, v28, a11, a12);
      if (!v35)
      {
        NNFX_logMsg(a1, 2, "::nnfeatextract:: N. unrolled features: %4d   N. steps: %4d", v30, v31, v32, v33, v34);
        SymTabFree(a1, v28);
        heap_Free(*(a1 + 8), v28);
        return v35;
      }

      v36 = "::nnfeatextract:: features unroll failed.";
    }
  }

  NNFX_logMsg(a1, 0, v36, v30, v31, v32, v33, v34);
  return v35;
}

uint64_t GetLingTabIndex(const char **a1, _WORD *a2)
{
  v4 = 0;
  v5 = a2 + 1;
  v6 = a2 + 2;
  v7 = a2 + 3;
  v39 = a2 + 5;
  v40 = a2 + 4;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(a2 + 1) = v8;
  v9 = a2 + 8;
  v37 = a2 + 7;
  v38 = a2 + 6;
  v35 = a2 + 10;
  v36 = a2 + 9;
  v33 = a2 + 12;
  v34 = a2 + 11;
  v31 = a2 + 14;
  v32 = a2 + 13;
  *a2 = v8;
  v30 = a2 + 15;
  a2[16] = -1;
  v29 = a2 + 16;
  do
  {
    if (!*a1)
    {
      break;
    }

    v10 = cstdlib_strcmp(*a1, "VOWELS");
    v11 = a2;
    if (v10)
    {
      v12 = cstdlib_strcmp(*a1, "VOICEDPHONES");
      v11 = v5;
      if (v12)
      {
        v13 = cstdlib_strcmp(*a1, "BC_MONOVOWELS");
        v11 = v6;
        if (v13)
        {
          v14 = cstdlib_strcmp(*a1, "BC_DIPTHVOWELS");
          v11 = v7;
          if (v14)
          {
            v15 = cstdlib_strcmp(*a1, "BC_AFFRICATES");
            v11 = v40;
            if (v15)
            {
              v16 = cstdlib_strcmp(*a1, "BC_FRICATIVES");
              v11 = v39;
              if (v16)
              {
                v17 = cstdlib_strcmp(*a1, "BC_STOPS");
                v11 = v38;
                if (v17)
                {
                  v18 = cstdlib_strcmp(*a1, "BC_LIQUIDS_TAP");
                  v11 = v37;
                  if (v18)
                  {
                    v19 = cstdlib_strcmp(*a1, "BC_NASALS");
                    v11 = v9;
                    if (v19)
                    {
                      v20 = cstdlib_strcmp(*a1, "BC_GLIDES");
                      v11 = v36;
                      if (v20)
                      {
                        v21 = cstdlib_strcmp(*a1, "COMMON_WORDLIST");
                        v11 = v35;
                        if (v21)
                        {
                          v22 = cstdlib_strcmp(*a1, "FXN_WORDLIST");
                          v11 = v34;
                          if (v22)
                          {
                            v23 = cstdlib_strcmp(*a1, "WH_WORDLIST");
                            v11 = v33;
                            if (v23)
                            {
                              v24 = cstdlib_strcmp(*a1, "CONJ_WORDLIST");
                              v11 = v32;
                              if (v24)
                              {
                                v25 = cstdlib_strcmp(*a1, "AUXV_WORDLIST");
                                v11 = v31;
                                if (v25)
                                {
                                  v26 = cstdlib_strcmp(*a1, "ADPOS_WORDLIST");
                                  v11 = v30;
                                  if (v26)
                                  {
                                    v27 = cstdlib_strcmp(*a1, "EXCL_FEATLIST");
                                    v11 = v29;
                                    if (v27)
                                    {
                                      continue;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    *v11 = v4++;
    a1 += 2;
  }

  while (v4 != 17);
  return v4;
}

uint64_t extractNnFeatures(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, unsigned int a7, unsigned int a8, unsigned __int8 a9, uint64_t a10)
{
  v346[13] = *MEMORY[0x277D85DE8];
  v343[1] = 0;
  v344 = 0;
  v343[0] = 0;
  v346[0] = fExtGetPhoneFeats;
  v346[1] = fExtGetLexicalFeats;
  v346[2] = fExtGetParseFeats;
  v346[3] = fExtGetPhraseFeats;
  v346[4] = fExtGetPunctFeats;
  v346[5] = fExtGetPhone2BdryFeats;
  v346[6] = fExtGetSyll2BdryFeats;
  v346[7] = fExtGetStrGrp2BdryFeats;
  v346[8] = fExtGetWord2BdryFeats;
  v346[9] = fExtGetParse2BdryFeats;
  v346[10] = fExtGetPhrase2BdryFeats;
  v346[11] = fExtGetPunct2BdryFeats;
  v346[12] = fExtGetVPhone2BdryFeats;
  TrieIntInit(v343);
  v17 = TrieIntAdd(a1, v343, "Phone", a9);
  v18 = TrieIntAdd(a1, v343, "Voicing", a9) | v17;
  v19 = TrieIntAdd(a1, v343, "ConsVow", a9);
  v20 = v18 | v19 | TrieIntAdd(a1, v343, "BroadClass", a9);
  v21 = TrieIntAdd(a1, v343, "LexStress", a9);
  v22 = v21 | TrieIntAdd(a1, v343, "PhoneTag", a9);
  v23 = v20 | v22 | TrieIntAdd(a1, v343, "PhoneDiff", a9);
  v24 = TrieIntAdd(a1, v343, "Prominence", a9);
  v25 = v24 | TrieIntAdd(a1, v343, "POS", a9);
  v26 = v25 | TrieIntAdd(a1, v343, "nluPOS", a9);
  v27 = v23 | v26 | TrieIntAdd(a1, v343, "nluCLS", a9);
  v28 = TrieIntAdd(a1, v343, "nluPNC", a9);
  v29 = v28 | TrieIntAdd(a1, v343, "nluCMP", a9);
  v30 = v29 | TrieIntAdd(a1, v343, "nluBDS", a9);
  v31 = v30 | TrieIntAdd(a1, v343, "nluCPS", a9);
  v32 = v27 | v31 | TrieIntAdd(a1, v343, "IsFxnWord", a9);
  v33 = TrieIntAdd(a1, v343, "IsWHWord", a9);
  v34 = v33 | TrieIntAdd(a1, v343, "IsAuxWord", a9);
  v35 = v34 | TrieIntAdd(a1, v343, "IsConjWord", a9);
  v36 = v35 | TrieIntAdd(a1, v343, "IsAdposWord", a9);
  if (v32 | v36 | TrieIntAdd(a1, v343, "CommonWord", a9))
  {
    v42 = " in extractFeatures while calling TrieAdd.";
    goto LABEL_57;
  }

  v338 = a8;
  if (a10)
  {
    v43 = 14;
  }

  else
  {
    v43 = 13;
  }

  v44 = TrieIntSize(v343);
  v45 = FillProsWords(a1, a6, a7, &v344 + 4, &v344, "-", a4, a5);
  if (!v45)
  {
    v42 = " in extractFeatures while calling FillProsWords.";
    goto LABEL_57;
  }

  v46 = v45;
  v47 = v344;
  v48 = HIDWORD(v344);
  v49 = heap_Alloc(a1[1], 72);
  if (!v49)
  {
    v64 = " allocating memory in BuildPhoneTiers().";
    goto LABEL_56;
  }

  v55 = v49;
  v336 = v44;
  *(v49 + 64) = 0;
  *(v49 + 32) = 0u;
  *(v49 + 48) = 0u;
  *v49 = 0u;
  *(v49 + 16) = 0u;
  v56 = heap_Alloc(a1[1], 24);
  if (!v56)
  {
    v63 = " allocating memory in BuildPhonePhT.";
    goto LABEL_14;
  }

  v62 = v56;
  if (TierInit(a1, v56, v47, "Phone-level PHONE tier"))
  {
    v63 = " in BuildPhonePhT initializing tier.";
LABEL_14:
    NNFX_logMsg(a1, 0, v63, v57, v58, v59, v60, v61);
    *v55 = 0;
    v64 = " building phone tier in BuildPhoneTiers().";
    goto LABEL_56;
  }

  v331 = v43;
  v333 = v55;
  v334 = v47;
  v340 = v48;
  if (v48)
  {
    v65 = 0;
    v66 = 0;
    do
    {
      v67 = *(v46 + 8 * v65);
      if (*(v67 + 144))
      {
        v68 = 0;
        v69 = 2 * v66;
        do
        {
          v70 = *(a3 + 2);
          if (v70 == -1 || v70 > 499)
          {
            *(*(v62 + 1) + v69 + 2 * v68) = 1;
          }

          else
          {
            if (cstdlib_strchr(**(a2 + 16 * *(a3 + 2) + 8), *(*(v67 + 152) + v68)))
            {
              v71 = 2;
            }

            else
            {
              v71 = 1;
            }

            *(*(v62 + 1) + v69 + 2 * v68) = v71;
            v67 = *(v46 + 8 * v65);
          }

          ++v68;
        }

        while (v68 < *(v67 + 144));
        v66 += v68;
        v48 = v340;
      }

      ++v65;
    }

    while (v65 != v48);
  }

  v72 = v334;
  v62[1] = v334;
  *v333 = v62;
  v73 = heap_Alloc(a1[1], 24);
  if (!v73)
  {
    v80 = " allocating memory in BuildSyllablePhT.";
    goto LABEL_55;
  }

  v79 = v73;
  if (TierInit(a1, v73, v334, "Phone-level SYLLABLE tier"))
  {
    v80 = " in BuildSyllablePhT initializing tier.";
    goto LABEL_55;
  }

  if (v48)
  {
    v81 = 0;
    v82 = 0;
    while (1)
    {
      v83 = *(v46 + 8 * v81);
      v84 = *(v83 + 144);
      if (v84)
      {
        break;
      }

LABEL_41:
      if (++v81 == v48)
      {
        goto LABEL_45;
      }
    }

    v85 = 0;
    v86 = v334 - v82;
    v87 = 4 * v84;
    if (v334 < v82)
    {
      v86 = 0;
    }

    v88 = 4 * v86;
    v89 = 2 * v82;
    while (v88 != v85)
    {
      *(*(v79 + 1) + v89) = *(*(v83 + 184) + v85);
      v85 += 4;
      ++v82;
      v89 += 2;
      if (v87 == v85)
      {
        goto LABEL_41;
      }
    }

    v80 = " in BuildSyllablePhT attempting to write at index %d in a buffer of size %d.";
LABEL_55:
    NNFX_logMsg(a1, 0, v80, v74, v75, v76, v77, v78);
    v333[1] = 0;
    v64 = " building syllable tier in BuildPhoneTiers().";
    goto LABEL_56;
  }

  v82 = 0;
LABEL_45:
  if (v82 != v334)
  {
    v80 = ": %d phones processed, but total %d phones expected in BuildSyllablePhT.";
    goto LABEL_55;
  }

  v90 = 0;
  if (v334)
  {
    v91 = *(v79 + 1);
    v92 = v334;
    do
    {
      if (*v91++)
      {
        ++v90;
      }

      --v92;
    }

    while (v92);
  }

  v79[1] = v90;
  v333[1] = v79;
  v94 = heap_Alloc(a1[1], 24);
  if (!v94)
  {
    v101 = " allocating memory in BuildSyllablePhT.";
    goto LABEL_60;
  }

  v100 = v94;
  if (TierInit(a1, v94, v334, "Phone-level WORD tier"))
  {
    v101 = " in BuildWordPhT initializing tier.";
    goto LABEL_60;
  }

  if (v48)
  {
    v104 = 0;
    v105 = 0;
    while (v105 < v334)
    {
      v106 = *(v100 + 1);
      v107 = *(*(v46 + 8 * v104) + 144) - 1;
      if (*(*(v46 + 8 * v104) + 144) != 1)
      {
        v108 = v107 + v105;
        do
        {
          *(v106 + 2 * v105++) = 0;
          --v107;
        }

        while (v107);
        v105 = v108;
      }

      v109 = v105 + 1;
      *(v106 + 2 * v105) = 1;
      ++v104;
      ++v105;
      if (v104 == v48)
      {
        goto LABEL_71;
      }
    }

    v101 = " in BuildWordPhT attempting to write at index %d in a buffer of size %d.";
LABEL_60:
    NNFX_logMsg(a1, 0, v101, v95, v96, v97, v98, v99);
    v333[2] = 0;
    v64 = " building word tier in BuildPhoneTiers().";
    goto LABEL_56;
  }

  v109 = 0;
LABEL_71:
  if (v109 != v334)
  {
    v101 = ": %d phones processed, but total %d phones expected in BuildWordPhT.";
    goto LABEL_60;
  }

  v110 = 0;
  if (v334)
  {
    v111 = *(v100 + 1);
    do
    {
      if (*v111++)
      {
        ++v110;
      }

      --v72;
    }

    while (v72);
  }

  v100[1] = v110;
  if (v110 != v48)
  {
    v101 = ": %d word-boundaries created, but total %d prosodic words in BuildWordPhT.";
    goto LABEL_60;
  }

  v333[2] = v100;
  v113 = heap_Alloc(a1[1], 24);
  if (!v113)
  {
    v120 = " allocating memory in BuildSyllablePhT.";
    goto LABEL_144;
  }

  v119 = v113;
  if (TierInit(a1, v113, v334, "Phone-level PHRASE tier"))
  {
    v120 = " in BuildPrasePhT initializing tier.";
LABEL_144:
    NNFX_logMsg(a1, 0, v120, v114, v115, v116, v117, v118);
    v333[3] = 0;
    v64 = " building phrase tier in BuildPhoneTiers().";
    goto LABEL_56;
  }

  if (!v340)
  {
    v129 = 0;
    goto LABEL_103;
  }

  v121 = 0;
  for (i = 0; ; ++i)
  {
    v123 = *(v46 + 8 * v121);
    v124 = *(v123 + 144) - 1;
    if (*(v123 + 144) != 1)
    {
      v125 = v334 - i;
      if (v334 < i)
      {
        v125 = 0;
      }

      v126 = 2 * i;
      while (v125)
      {
        *(*(v119 + 1) + v126) = 0;
        ++i;
        v126 += 2;
        --v125;
        if (!--v124)
        {
          goto LABEL_93;
        }
      }

      goto LABEL_143;
    }

LABEL_93:
    if (v121 == v340 - 1)
    {
      break;
    }

    if (*(v123 + 192) == 1)
    {
      if (i >= v334)
      {
        goto LABEL_143;
      }

      v127 = *(v119 + 1);
    }

    else
    {
      if (i >= v334)
      {
        goto LABEL_143;
      }

      v128 = *(v123 + 136) & 0xFB;
      v127 = *(v119 + 1);
      if (v128 == 83)
      {
        *(v127 + 2 * i) = 1;
        goto LABEL_101;
      }
    }

    *(v127 + 2 * i) = 0;
LABEL_101:
    ++v121;
  }

  if (i >= v334)
  {
LABEL_143:
    v120 = " in BuildPhrasePhT attempting to write at index %d in a buffer of size %d.";
    goto LABEL_144;
  }

  v129 = i + 1;
  *(*(v119 + 1) + 2 * i) = 1;
LABEL_103:
  if (v129 != v334)
  {
    v120 = ": %d phones processed, but total %d phones expected in BuildWordPhT.";
    goto LABEL_144;
  }

  v130 = v334;
  if (v334)
  {
    v130 = 0;
    v131 = *(v119 + 1);
    v132 = v334;
    do
    {
      if (*v131++)
      {
        ++v130;
      }

      --v132;
    }

    while (v132);
  }

  v119[1] = v130;
  v333[3] = v119;
  v134 = heap_Alloc(a1[1], 24);
  if (!v134)
  {
    v141 = " allocating memory in BuildSyllablePhT.";
    goto LABEL_157;
  }

  v140 = v134;
  if (TierInit(a1, v134, v334, "Phone-level PUNCTUATION tier"))
  {
    v141 = " in BuildPunctPhT initializing tier.";
    goto LABEL_157;
  }

  if (v340)
  {
    v142 = 0;
    v143 = 0;
    v144 = (v340 - 1);
    while (1)
    {
      v145 = *(v46 + 8 * v142);
      v146 = *(v145 + 144) - 1;
      if (*(v145 + 144) != 1)
      {
        break;
      }

LABEL_122:
      if (v142 == v144)
      {
        if (v143 >= v334)
        {
          goto LABEL_145;
        }

        v149 = 1;
      }

      else
      {
        if (*(v145 + 192) || (v150 = cstdlib_strlen(*(v145 + 32))) == 0 || ((v151 = *(v46 + 8 * v142), v152 = *(*(v151 + 32) + (v150 - 1)), v153 = v152 > 0x3F, v154 = (1 << v152) & 0x8C00500200000000, !v153) ? (v155 = v154 == 0) : (v155 = 1), v155))
        {
          v149 = 0;
        }

        else
        {
          v149 = 1;
          if (*(v151 + 136) == 78)
          {
            NNFX_logMsg(a1, 1, "::nnfeatextract, BOD=%c on punctuated word '%s'", v135, v136, v137, v138, v139);
          }
        }

        if (v143 >= v334)
        {
          goto LABEL_145;
        }

        if (v142 == v340 - 2 && *(*(v46 + 8 * v144) + 192))
        {
          v149 = 1;
        }
      }

      *(*(v140 + 1) + 2 * v143++) = v149;
      if (++v142 == v340)
      {
        goto LABEL_147;
      }
    }

    v147 = v334 - v143;
    if (v334 < v143)
    {
      v147 = 0;
    }

    v148 = 2 * v143;
    while (v147)
    {
      *(*(v140 + 1) + v148) = 0;
      ++v143;
      v148 += 2;
      --v147;
      if (!--v146)
      {
        goto LABEL_122;
      }
    }

LABEL_145:
    v141 = " in BuildPunctPhT attempting to write at index %d in a buffer of size %d.";
LABEL_157:
    NNFX_logMsg(a1, 0, v141, v135, v136, v137, v138, v139);
    v333[4] = 0;
    v64 = " building punctuation tier in BuildPhoneTiers().";
LABEL_56:
    NNFX_logMsg(a1, 0, v64, v50, v51, v52, v53, v54);
    v42 = " building Phone Tiers in extratFeatures().";
    goto LABEL_57;
  }

  v143 = 0;
LABEL_147:
  if (v143 != v334)
  {
    v141 = ": Only %d phones were processed while a total of %d phones were expected in BuildWordPhT.";
    goto LABEL_157;
  }

  v156 = v334;
  if (v334)
  {
    v156 = 0;
    v157 = *(v140 + 1);
    v158 = v334;
    do
    {
      if (*v157++)
      {
        ++v156;
      }

      --v158;
    }

    while (v158);
  }

  v140[1] = v156;
  v333[4] = v140;
  v160 = heap_Alloc(a1[1], 24);
  if (!v160)
  {
    v167 = " allocating memory in BuildSentencePhT.";
    goto LABEL_181;
  }

  v166 = v160;
  if (TierInit(a1, v160, v334, "Phone-level SENTENCE tier"))
  {
    v167 = " allocating mem in BuildSentencePhT to hold boundaries.";
    goto LABEL_181;
  }

  v168 = heap_Calloc(a1[1], v340, 2);
  v169 = v168;
  if (!v168)
  {
    v167 = " allocating memory in BuildSentencePh().";
    v177 = a1;
LABEL_182:
    NNFX_logMsg(v177, v169, v167, v161, v162, v163, v164, v165);
    v333[7] = 0;
    v64 = " building sentence tier in BuildPhoneTiers().";
    goto LABEL_56;
  }

  v170 = v340;
  v171 = (v340 - 1);
  if (v340 == 1)
  {
    v176 = 0;
LABEL_168:
    *(v168 + 2 * v176) = v170;
    goto LABEL_170;
  }

  v172 = v46;
  v173 = v168;
  v174 = (v340 - 1);
  do
  {
    v175 = *v172++;
    *v173++ = *(v175 + 196) == 1;
    --v174;
  }

  while (v174);
  *(v168 + 2 * v171) = 1;
  if (v340 >= 2 && *(*(v46 + 8 * v171) + 192))
  {
    v170 = 0;
    v176 = (v340 - 2);
    goto LABEL_168;
  }

  if (v340)
  {
LABEL_170:
    v178 = 0;
    v179 = 0;
    while (1)
    {
      v180 = *(*(v46 + 8 * v178) + 144) - 1;
      if (*(*(v46 + 8 * v178) + 144) != 1)
      {
        break;
      }

LABEL_177:
      if (v179 >= v334)
      {
        v167 = " in BuildPunctPhT attempting to write at index %d in a buffer of size %d.";
        goto LABEL_181;
      }

      v183 = v179 + 1;
      *(*(v166 + 1) + 2 * v179++) = *(v168 + 2 * v178++);
      if (v178 == v340)
      {
        goto LABEL_184;
      }
    }

    v181 = v334 - v179;
    if (v334 < v179)
    {
      v181 = 0;
    }

    v182 = 2 * v179;
    while (v181)
    {
      *(*(v166 + 1) + v182) = 0;
      ++v179;
      v182 += 2;
      --v181;
      if (!--v180)
      {
        goto LABEL_177;
      }
    }

    v167 = " in BuildSentencePhT attempting to write at index %d in a buffer of size %d.";
LABEL_181:
    v177 = a1;
    v169 = 0;
    goto LABEL_182;
  }

  v183 = 0;
LABEL_184:
  heap_Free(a1[1], v168);
  if (v183 != v334)
  {
    v167 = ": Only %d phones were processed while a total of %d phones were expected in BuildSentencePhT.";
    goto LABEL_181;
  }

  v184 = v334;
  if (v334)
  {
    v184 = 0;
    v185 = *(v166 + 1);
    v186 = v334;
    do
    {
      if (*v185++)
      {
        ++v184;
      }

      --v186;
    }

    while (v186);
  }

  v166[1] = v184;
  v333[7] = v166;
  v188 = heap_Alloc(a1[1], 24);
  if (!v188)
  {
    v195 = " allocating memory in BuildSentencePhT.";
    goto LABEL_228;
  }

  v194 = v188;
  if (TierInit(a1, v188, v334, "Phone-level PARSE tier") || (v329 = heap_Calloc(a1[1], v340, 2)) == 0)
  {
    v195 = " allocating memory in BuildParsePhT.";
    goto LABEL_228;
  }

  if (v340 == 1)
  {
    *(v329 + 2 * v171) = 1;
    goto LABEL_217;
  }

  v196 = v46 + 8;
  v197 = (v340 - 1);
  v198 = v329;
  do
  {
    v199 = *(v196 - 8);
    *v198++ = *(v199 + 192) == 1 || cstdlib_strcmp(*(v199 + 88), *(*v196 + 88));
    v196 += 8;
    --v197;
  }

  while (v197);
  *(v329 + 2 * v171) = 1;
  if (v340)
  {
LABEL_217:
    v213 = 0;
    v214 = 0;
    while (1)
    {
      v215 = *(*(v46 + 8 * v213) + 144) - 1;
      if (*(*(v46 + 8 * v213) + 144) != 1)
      {
        break;
      }

LABEL_224:
      if (v214 >= v334)
      {
        v195 = " in BuildPunctPhT attempting to write at index %d in a buffer of size %d.";
        goto LABEL_228;
      }

      v200 = v214 + 1;
      *(*(v194 + 1) + 2 * v214++) = *(v329 + 2 * v213++);
      if (v213 == v340)
      {
        goto LABEL_207;
      }
    }

    v216 = v334 - v214;
    if (v334 < v214)
    {
      v216 = 0;
    }

    v217 = 2 * v214;
    while (v216)
    {
      *(*(v194 + 1) + v217) = 0;
      ++v214;
      v217 += 2;
      --v216;
      if (!--v215)
      {
        goto LABEL_224;
      }
    }

    v195 = " in BuildParsePhT attempting to write at index %d in a buffer of size %d.";
LABEL_228:
    NNFX_logMsg(a1, 0, v195, v189, v190, v191, v192, v193);
    v333[5] = 0;
    v64 = " building parse tier in BuildPhoneTiers().";
    goto LABEL_56;
  }

  v200 = 0;
LABEL_207:
  heap_Free(a1[1], v329);
  if (v200 != v334)
  {
    v195 = ": Only %d phones were processed while a total of %d phones were expected in BuildSentencePhT.";
    goto LABEL_228;
  }

  v201 = v334;
  if (v334)
  {
    v201 = 0;
    v202 = *(v194 + 1);
    v203 = v334;
    do
    {
      if (*v202++)
      {
        ++v201;
      }

      --v203;
    }

    while (v203);
  }

  v194[1] = v201;
  v333[5] = v194;
  v205 = heap_Alloc(a1[1], 24);
  if (!v205)
  {
    v212 = " allocating memory in BuildStressGroupPhT.";
    goto LABEL_349;
  }

  v211 = v205;
  if (TierInit(a1, v205, v334, "Phone-level STRESS-GROUP tier"))
  {
    v212 = " in BuildStressGroupPhT initializing tier.";
    goto LABEL_349;
  }

  v218 = v340;
  if (v340)
  {
    v219 = 0;
    v218 = 0;
    while (1)
    {
      v220 = *(v46 + 8 * v219);
      v221 = *(v220 + 144);
      if (v221)
      {
        break;
      }

      v225 = v219 + 1;
LABEL_256:
      v219 = v225;
      if (v225 == v340)
      {
        goto LABEL_257;
      }
    }

    v222 = 0;
    v223 = *(v220 + 184);
    v224 = (v221 - 1);
    v225 = v219 + 1;
    LODWORD(v226) = v334 - v218;
    if (v334 >= v218)
    {
      v226 = v226;
    }

    else
    {
      v226 = 0;
    }

    while (2)
    {
      if (*(v223 + 4 * v222) != 1)
      {
        goto LABEL_245;
      }

      if (v222 < v224 && *(*(v220 + 176) + 4 * v222 + 4) == 1)
      {
LABEL_244:
        v227 = 1;
      }

      else
      {
        v227 = 0;
        if (v219 < v171 && v224 == v222)
        {
          if (**(*(v46 + 8 * v225) + 176) == 1)
          {
            goto LABEL_244;
          }

LABEL_245:
          v227 = 0;
        }
      }

      if (v226 == v222)
      {
        v212 = " in BuildStressGroupPhT attempting to write at index %d in a buffer of size %d.";
        goto LABEL_349;
      }

      if (v224 == v222 && v219 == v171)
      {
        v227 = 1;
      }

      *(*(v211 + 1) + 2 * v218 + 2 * v222++) = v227;
      if (v221 == v222)
      {
        v218 += v222;
        goto LABEL_256;
      }

      continue;
    }
  }

LABEL_257:
  if (v218 != v334)
  {
    v212 = ": %d phones processed, but total %d phones expected in BuildStressGroupPhT.";
LABEL_349:
    NNFX_logMsg(a1, 0, v212, v206, v207, v208, v209, v210);
    v333[6] = 0;
    v64 = " building stress-group tier in BuildPhoneTiers().";
    goto LABEL_56;
  }

  v229 = v334;
  if (v334)
  {
    v229 = 0;
    v230 = *(v211 + 1);
    v231 = v334;
    do
    {
      if (*v230++)
      {
        ++v229;
      }

      --v231;
    }

    while (v231);
  }

  v211[1] = v229;
  v333[6] = v211;
  v233 = BuildSilencePhT(a1, v46, v340, v334);
  v333[8] = v233;
  if (!v233)
  {
    v64 = " building silence tier in BuildPhoneTiers().";
    goto LABEL_56;
  }

  v234 = v333;
  TierAddBoundaries(v333[6], v333[3]);
  TierAddBoundaries(v234[6], v234[8]);
  TierAddBoundaries(v234[5], v234[3]);
  TierAddBoundaries(v234[5], v234[4]);
  TierAddBoundaries(v234[5], v234[8]);
  v324 = (v336 + v331);
  v327 = heap_Calloc(a1[1], v324, 8);
  if (!v327)
  {
    v42 = " in extractFeatures() while mem-allocating to hold feature extractors.";
    goto LABEL_57;
  }

  for (j = 0; j != 13; ++j)
  {
    v236 = (v346[j])(a1, a2, a3, v46, v333, HIDWORD(v344), v344);
    v327[j] = v236;
    if (!v236)
    {
      v42 = " in extractFeatures() while calling extractor %d of %d.";
      goto LABEL_57;
    }
  }

  v326 = 0;
  v325 = 0;
  v323 = " in contextualize() trying to mallocate output.";
  while (1)
  {
    v237 = v327[v326];
    if (*(v237 + 4016))
    {
      break;
    }

LABEL_308:
    if (++v326 == 13)
    {
      if (v325 != TrieIntSize(v343))
      {
        v42 = " in extractFeatures. Unknown features in context list.";
        goto LABEL_57;
      }

      if (a10)
      {
        v327[(v324 - 1)] = a10;
      }

      v102 = mergePhoneFeaturesAtStateLevel(a1, v327, v324, v338, v38, v39, v40, v41);
      if (!v102)
      {
        NNFX_logMsg(a1, 0, " in extractFeatures() while merging phone-level streams at the state level.", v302, v303, v304, v305, v306);
        return v102;
      }

      if (v324)
      {
        for (k = 0; k != v324; ++k)
        {
          v308 = v327[k];
          if (*(v308 + 4016))
          {
            v309 = 0;
            do
            {
              *(*(v308 + 8) + 8 * v309++) = 0;
              v308 = v327[k];
            }

            while (v309 < *(v308 + 4016));
          }
        }
      }

      v310 = HIDWORD(v344);
      if (HIDWORD(v344))
      {
        v311 = 0;
        do
        {
          v312 = *(v46 + 8 * v311);
          if (v312)
          {
            freepPWRI(a1, v312);
            *(v46 + 8 * v311) = 0;
            v310 = HIDWORD(v344);
          }

          ++v311;
        }

        while (v311 < v310);
      }

      heap_Free(a1[1], v46);
      freepPhoneTiers(a1, v333);
      if (!v324)
      {
LABEL_346:
        heap_Free(a1[1], v327);
        TrieIntFree(a1, v343);
        return v102;
      }

      v313 = 0;
      while (2)
      {
        v314 = v327[v313];
        if (v314)
        {
          v315 = *(v314 + 4016);
          if (v315)
          {
            for (m = 0; m < v315; ++m)
            {
              v317 = *(*(v314 + 8) + 8 * m);
              if (v317)
              {
                heap_Free(a1[1], v317);
                v315 = *(v314 + 4016);
              }
            }
          }

          v318 = *(v314 + 8);
          if (v318)
          {
            heap_Free(a1[1], v318);
          }

          v319 = *(v314 + 4040);
          v320 = *v314;
          if (!v319)
          {
            freepppFeats(a1, v320, *(v314 + 4016), *(v314 + 4024));
            goto LABEL_342;
          }

          if (!v320)
          {
            goto LABEL_343;
          }

          if (*(v314 + 4016))
          {
            v321 = 0;
            do
            {
              freeppFeats(a1, *(*v314 + 8 * v321), *(v314 + 4024), *(*(v314 + 4040) + 4 * v321));
              *(*v314 + 8 * v321++) = 0;
            }

            while (v321 < *(v314 + 4016));
            v320 = *v314;
          }

          heap_Free(a1[1], v320);
LABEL_342:
          *v314 = 0;
          v319 = *(v314 + 4040);
          if (v319)
          {
LABEL_343:
            heap_Free(a1[1], v319);
          }

          *(v314 + 4040) = 0;
          heap_Free(a1[1], v314);
        }

        if (++v313 == v324)
        {
          goto LABEL_346;
        }

        continue;
      }
    }
  }

  v341 = 0;
  while (2)
  {
    v238 = *(*(v237 + 8) + 8 * v341);
    v342 = 0;
    if (!v238 || (v239 = TrieIntGet(v343, v238, &v342), v237 = v327[v326], v239))
    {
LABEL_307:
      if (++v341 >= *(v237 + 4016))
      {
        goto LABEL_308;
      }

      continue;
    }

    break;
  }

  v335 = *(v237 + 4032);
  v328 = v342;
  v345 = 0;
  v240 = heap_Calloc(a1[1], 1, 4048);
  if (!v240)
  {
    goto LABEL_356;
  }

  v246 = v240;
  v247 = (2 * v328);
  *(v240 + 4016) = v247;
  *(v240 + 4024) = *(v237 + 4024);
  if (v247 < 1)
  {
LABEL_281:
    if (v328 >= 1)
    {
      v337 = 0;
      v330 = 0;
      v332 = 1;
      do
      {
        if (v330)
        {
          v252 = 2;
        }

        else
        {
          v252 = 1;
        }

        BYTE4(v345) = 95;
        LOBYTE(v345) = 95;
        memset(&v345 + 5, 76, v252);
        memset(&v345 + 1, 82, v252);
        if (v332 >= 3)
        {
          BYTE6(v345) = v332 + 48;
          BYTE2(v345) = v332 + 48;
        }

        v258 = *(v246 + 4024);
        if (v258 >= 1)
        {
          v259 = 0;
          v260 = 8 * v258;
          do
          {
            *(*(*v246 + 8 * v337) + v259) = 0;
            v259 += 8;
          }

          while (v260 != v259);
        }

        if (v335[1] > v332)
        {
          v261 = 0;
          do
          {
            ElementInGroup = lastElementInGroup(a1, v335, v261, v253, v254, v255, v256, v257);
            v268 = firstElementInGroup(a1, v335, v261 + v332, v263, v264, v265, v266, v267);
            v274 = lastElementInGroup(a1, v335, v261 + v332, v269, v270, v271, v272, v273);
            if (v268 <= v274)
            {
              v275 = v274 - v268 + 1;
              v276 = 8 * v268;
              do
              {
                *(*(*v246 + 8 * v337) + v276) = *(*(*v237 + 8 * v341) + 8 * ElementInGroup);
                v276 += 8;
                --v275;
              }

              while (v275);
            }

            ++v261;
          }

          while (v261 < (v335[1] - v332));
        }

        *(*(v246 + 8) + 8 * v337) = stringcat(a1, *(*(v237 + 8) + 8 * v341), &v345 + 4);
        v282 = v337 | 1;
        v283 = *(v246 + 4024);
        if (v283 >= 1)
        {
          v284 = 0;
          v285 = 8 * v283;
          do
          {
            *(*(*v246 + 8 * v282) + v284) = 0;
            v284 += 8;
          }

          while (v285 != v284);
        }

        for (n = v332; n < v335[1]; ++n)
        {
          v287 = lastElementInGroup(a1, v335, n, v277, v278, v279, v280, v281);
          v293 = firstElementInGroup(a1, v335, n - v332, v288, v289, v290, v291, v292);
          v299 = lastElementInGroup(a1, v335, n - v332, v294, v295, v296, v297, v298);
          if (v293 <= v299)
          {
            v300 = v299 - v293 + 1;
            v301 = 8 * v293;
            do
            {
              *(*(*v246 + 8 * v282) + v301) = *(*(*v237 + 8 * v341) + 8 * v287);
              v301 += 8;
              --v300;
            }

            while (v300);
          }
        }

        *(*(v246 + 8) + 8 * v282) = stringcat(a1, *(*(v237 + 8) + 8 * v341), &v345);
        v337 += 2;
        ++v332;
        ++v330;
      }

      while (v330 != v328);
    }

    v327[v325 + 13] = v246;
    ++v325;
    v237 = v327[v326];
    goto LABEL_307;
  }

  v248 = heap_Calloc(a1[1], v247, 8);
  *(v246 + 8) = v248;
  if (!v248 || (v249 = heap_Calloc(a1[1], *(v246 + 4016), 4), (*(v246 + 4040) = v249) == 0))
  {
    v322 = " in contextualize() allocating for feature names";
    goto LABEL_355;
  }

  if (!allocpppFeats(a1, v246, *(v246 + 4016), *(v246 + 4024)))
  {
    if (*(v246 + 4016) >= 1)
    {
      v250 = 0;
      v251 = *(v246 + 4040);
      do
      {
        *(v251 + 4 * v250++) = 0;
      }

      while (v250 < *(v246 + 4016));
    }

    goto LABEL_281;
  }

  v322 = " in contextualize() allocating features";
LABEL_355:
  v323 = v322;
LABEL_356:
  NNFX_logMsg(a1, 0, v323, v241, v242, v243, v244, v245);
  v327[v325 + 13] = 0;
  v42 = " in extractFeatures() while allocating context features.";
LABEL_57:
  NNFX_logMsg(a1, 0, v42, v37, v38, v39, v40, v41);
  return 0;
}

uint64_t nnextract_Deallocate(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, int a5)
{
  freeppSRI(a1, a2, a3);
  if (a4)
  {
    v8 = a4[1];
    if (v8)
    {
      v9 = *(a4 + 1004);
      if (v9)
      {
        for (i = 0; i < v9; ++i)
        {
          v11 = *(a4[1] + 8 * i);
          if (v11)
          {
            heap_Free(*(a1 + 8), v11);
            *(a4[1] + 8 * i) = 0;
            v9 = *(a4 + 1004);
          }
        }

        v8 = a4[1];
      }

      heap_Free(*(a1 + 8), v8);
      a4[1] = 0;
    }

    v12 = *a4;
    if (*a4)
    {
      v13 = *v12;
      if (*v12)
      {
        v14 = *(a4 + 1006);
        if (v14)
        {
          for (j = 0; j < v14; ++j)
          {
            v16 = *(**a4 + 8 * j);
            if (v16)
            {
              freepFeat(a1, v16);
              *(**a4 + 8 * j) = 0;
              v14 = *(a4 + 1006);
            }
          }

          v13 = **a4;
        }

        heap_Free(*(a1 + 8), v13);
        **a4 = 0;
      }

      v17 = *(a4 + 1004);
      if (v17 >= 2)
      {
        for (k = 1; k < v17; ++k)
        {
          v19 = *(*a4 + 8 * k);
          if (v19)
          {
            v20 = *(a4 + 1006);
            if (v20)
            {
              v21 = 0;
              do
              {
                v22 = *(*a4 + 8 * k);
                v23 = v21;
                v24 = *(v22 + 8 * v21);
                if (v24)
                {
                  v25 = a4[505];
                  if (!v25 || *(v25 + 4 * k))
                  {
                    freepFeat(a1, v24);
                    v22 = *(*a4 + 8 * k);
                    v20 = *(a4 + 1006);
                  }

                  *(v22 + 8 * v23) = 0;
                }

                v21 = v23 + a5;
              }

              while (v23 + a5 < v20);
              v19 = *(*a4 + 8 * k);
            }

            heap_Free(*(a1 + 8), v19);
            *(*a4 + 8 * k) = 0;
            v17 = *(a4 + 1004);
          }
        }
      }

      heap_Free(*(a1 + 8), *a4);
      *a4 = 0;
    }

    v26 = a4[505];
    if (v26)
    {
      heap_Free(*(a1 + 8), v26);
    }

    a4[505] = 0;
    heap_Free(*(a1 + 8), a4);
  }

  return 0;
}

uint64_t nnextract_Skip(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a3 + 16;
  do
  {
    if (!*(*(a1 + 16 * *(a2 + 32) + 8) + 8 * v6))
    {
      break;
    }

    if (*(a3 + 4016) >= 1)
    {
      v8 = 0;
      do
      {
        if (!cstdlib_strcmp(*(*(a1 + 16 * *(a2 + 32) + 8) + 8 * v6), *(*(a3 + 8) + 8 * v8)))
        {
          *(v7 + 4 * v8) = 0;
          --*(a3 + 4020);
        }

        ++v8;
      }

      while (v8 < *(a3 + 4016));
    }

    ++v6;
  }

  while (v6 != 500);
  return 0;
}

uint64_t nnextract_Unrolled(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, _DWORD *a5)
{
  v10 = heap_Calloc(*(a1 + 8), 1, 16);
  if (v10)
  {
    v16 = v10;
    SymTabInit(v10);
    Buf = SymTabReadBuf(a1, v16, *(a2 + 16), *(a2 + 24), a3);
    if (Buf)
    {
      v23 = Buf;
      v24 = "::nnfeatextract::NN - SymTabRead.";
    }

    else
    {
      v25 = SymTabToIntInplaceActive(a1, v16, a3, 0, 0x2Du);
      if (v25)
      {
        v23 = v25;
        v24 = "::nnfeatextract:: Symbol table does not seem to be correct.";
      }

      else
      {
        v23 = unrollNnFeatures(a1, a3, v16, a4, a5);
        if (!v23)
        {
          NNFX_logMsg(a1, 2, "::nnfeatextract:: N. unrolled features: %4d   N. steps: %4d", v18, v19, v20, v21, v22);
          SymTabFree(a1, v16);
          heap_Free(*(a1 + 8), v16);
          return v23;
        }

        v24 = "::nnfeatextract:: features unroll failed.";
      }
    }

    NNFX_logMsg(a1, 0, v24, v18, v19, v20, v21, v22);
  }

  else
  {
    NNFX_logMsg(a1, 0, "::nnfeatextract::Memory allocation.", v11, v12, v13, v14, v15);
    return 1;
  }

  return v23;
}

uint64_t nnextract_UnrolledFromSymTab(uint64_t a1, int *a2, uint64_t *a3, uint64_t *a4, _DWORD *a5)
{
  v10 = SymTabToIntInplaceActive(a1, a2, a3, 0, 0x2Du);
  if (v10)
  {
    v16 = v10;
    v17 = "::nnfeatextract:: Symbol table does not seem to be correct.";
  }

  else
  {
    v16 = unrollNnFeatures(a1, a3, a2, a4, a5);
    if (!v16)
    {
      v17 = "::nnfeatextract:: N. unrolled features: %4d   N. steps: %4d";
      v18 = a1;
      v19 = 2;
      goto LABEL_6;
    }

    v17 = "::nnfeatextract:: features unroll failed.";
  }

  v18 = a1;
  v19 = 0;
LABEL_6:
  NNFX_logMsg(v18, v19, v17, v11, v12, v13, v14, v15);
  return v16;
}

uint64_t nnextract_Rolled(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, char *a9, uint64_t a10)
{
  v11 = *(a6 + 8);
  if (!v11)
  {
    v29 = "::nnfeatextract::Missing NN lingtab data.";
LABEL_15:
    NNFX_logMsg(a1, 0, v29, a4, a5, a6, a7, a8);
    return 1;
  }

  v15 = a5;
  v16 = a4;
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  GetLingTabIndex(v11, v30);
  if (SLOWORD(v30[0]) == -1)
  {
    NNFX_logMsg(a1, 1, "::nnfeatextract::NN - GetLingTabIndex - missing VOWELS entry.", v19, v20, v21, v22, v23);
  }

  if (SWORD1(v30[0]) == -1)
  {
    NNFX_logMsg(a1, 1, "::nnfeatextract::NN - GetLingTabIndex - missing VOICEDPHONES entry.", v19, v20, v21, v22, v23);
  }

  NnFeatures = extractNnFeatures(a1, *(a6 + 8), v30, a9, a10, a2, a3, v16, v15, a8);
  *a7 = NnFeatures;
  if (!NnFeatures)
  {
    v29 = "::nnfeatextract::NN - extractFeatures.";
    goto LABEL_15;
  }

  v25 = NnFeatures;
  *(NnFeatures + 4020) = 0;
  if (*(NnFeatures + 4016) >= 1)
  {
    v26 = 0;
    do
    {
      *(NnFeatures + 16 + 4 * v26) = 1;
      ++*(NnFeatures + 4020);
      ++v26;
    }

    while (v26 < *(NnFeatures + 4016));
  }

  v27 = *(a6 + 8);
  if (*(v27 + 16 * v31 + 8))
  {
    nnextract_Skip(v27, v30, v25);
  }

  return 0;
}

uint64_t fExtGetPhoneFeats(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  v116 = *MEMORY[0x277D85DE8];
  NNFX_logMsg(a1, 3, "Extracting phone-level attributes...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v15, v16, v17, v18, v19);
  NNFX_logMsg(a1, 3, "First boundary: %c", v20, v21, v22, v23, v24);
  v25 = heap_Calloc(*(a1 + 8), 1, 4048);
  v31 = v25;
  if (!v25)
  {
    NNFX_logMsg(a1, 0, " in fExtGetPhoneFeats() trying to mallocate output.", v26, v27, v28, v29, v30);
    return v31;
  }

  *(v25 + 4016) = 8;
  *(v25 + 4024) = v8;
  *(v25 + 4032) = *a5;
  v32 = heap_Alloc(*(a1 + 8), 64);
  *(v31 + 8) = v32;
  if (!v32)
  {
    v102 = " in fExtGetPhoneFeats() allocating feature names";
    goto LABEL_119;
  }

  **(v31 + 8) = stringdup(a1, "Phone");
  *(*(v31 + 8) + 8) = stringdup(a1, "VowInSyll");
  *(*(v31 + 8) + 16) = stringdup(a1, "Voicing");
  *(*(v31 + 8) + 24) = stringdup(a1, "ConsVow");
  *(*(v31 + 8) + 32) = stringdup(a1, "BroadClass");
  *(*(v31 + 8) + 40) = stringdup(a1, "LexStress");
  *(*(v31 + 8) + 48) = stringdup(a1, "PhoneTag");
  *(*(v31 + 8) + 56) = stringdup(a1, "PhoneDiff");
  v38 = *(v31 + 4016);
  if (v38 >= 1)
  {
    v39 = *(v31 + 8);
    v40 = *(v31 + 4016);
    do
    {
      if (!*v39)
      {
        v102 = " in fExtGetPhoneFeats allocating feature stream names.";
        goto LABEL_119;
      }

      ++v39;
      --v40;
    }

    while (v40);
  }

  v41 = heap_Alloc(*(a1 + 8), 8 * v38);
  *v31 = v41;
  if (!v41)
  {
    v102 = " in fExtGetPhoneFeats() trying to malloc-ate output.";
    goto LABEL_119;
  }

  if (*(v31 + 4016))
  {
    v42 = 0;
    do
    {
      v43 = heap_Alloc(*(a1 + 8), 8 * *(v31 + 4024));
      *(*v31 + 8 * v42) = v43;
      if (!v43)
      {
        v102 = " in fExtGetPhoneFeats mallocating for output stream %d of %d";
        goto LABEL_119;
      }

      ++v42;
    }

    while (v42 < *(v31 + 4016));
  }

  v105 = v8;
  if (v9)
  {
    v44 = 0;
    v45 = 0;
    v104 = v9;
    v112 = a2;
    v113 = a3;
    while (!*(*(a4 + 8 * v44) + 144))
    {
LABEL_98:
      if (++v44 == v104)
      {
        goto LABEL_106;
      }
    }

    v46 = 0;
    v111 = 1;
    while (1)
    {
      v114 = v46;
      v47 = heap_Alloc(*(a1 + 8), 16);
      if (!v47)
      {
        v102 = " in fExtGetPhoneFeats while allocating mem for stream 0 of word %d.";
        goto LABEL_119;
      }

      v48 = v47;
      v49 = heap_Alloc(*(a1 + 8), 16);
      if (!v49)
      {
        v102 = " in fExtGetPhoneFeats while allocating mem for stream 1 of word %d.";
        goto LABEL_119;
      }

      v50 = v49;
      v51 = heap_Alloc(*(a1 + 8), 16);
      if (!v51)
      {
        v102 = " in fExtGetPhoneFeats while allocating mem for stream 2 of word %d.";
        goto LABEL_119;
      }

      v52 = v51;
      v53 = heap_Alloc(*(a1 + 8), 16);
      if (!v53)
      {
        v102 = " in fExtGetPhoneFeats while allocating mem for stream 3 of word %d.";
        goto LABEL_119;
      }

      v54 = v53;
      v55 = heap_Alloc(*(a1 + 8), 16);
      if (!v55)
      {
        v102 = " in fExtGetPhoneFeats while allocating mem for stream 4 of word %d.";
        goto LABEL_119;
      }

      v109 = v54;
      v110 = v55;
      v56 = heap_Alloc(*(a1 + 8), 16);
      if (!v56)
      {
        v102 = " in fExtGetPhoneFeats while allocating mem for stream 5 of word %d.";
        goto LABEL_119;
      }

      v57 = v56;
      v58 = heap_Alloc(*(a1 + 8), 16);
      if (!v58)
      {
        v102 = " in fExtGetPhoneFeats while allocating mem for stream 6 of word %d.";
        goto LABEL_119;
      }

      v108 = v58;
      v59 = heap_Alloc(*(a1 + 8), 16);
      if (!v59)
      {
        v102 = " in fExtGetPhoneFeats while allocating mem for stream 7 of word %d.";
        goto LABEL_119;
      }

      v107 = v59;
      v60 = *(a4 + 8 * v44);
      *(v48 + 8) = 3;
      __s = *(*(v60 + 152) + v114);
      v61 = stringdup(a1, &__s);
      *v48 = v61;
      if (!v61)
      {
        v102 = " in fExtGetPhoneFeats while allocating mem for phoneID.";
        goto LABEL_119;
      }

      *(**v31 + 8 * v45) = v48;
      v62 = *(a4 + 8 * v44);
      v106 = v45;
      if (*(v62 + 192))
      {
        LOBYTE(v63) = 45;
      }

      else
      {
        if (v114)
        {
          v64 = v111;
          while (1)
          {
            v65 = v64 - 2;
            if ((v64 - 2) < 0)
            {
              break;
            }

            --v64;
            if (*(*(v62 + 184) + 4 * v65) == 1)
            {
              goto LABEL_33;
            }
          }
        }

        v64 = 0;
LABEL_33:
        v66 = *(v62 + 144) - 1;
        if (v114 <= v66)
        {
          v67 = *(v62 + 184);
          v68 = v114;
          while (*(v67 + 4 * v68) != 1)
          {
            if (++v68 > v66)
            {
              goto LABEL_39;
            }
          }

          v66 = v68;
        }

LABEL_39:
        v69 = *a3 == -1 || v64 > v66;
        v70 = v64;
        if (v69)
        {
          goto LABEL_47;
        }

        while (1)
        {
          v71 = cstdlib_strchr(**(v112 + 16 * *v113 + 8), *(*(*(a4 + 8 * v44) + 152) + v70));
          if (v71)
          {
            break;
          }

          if (++v70 > v66)
          {
            goto LABEL_47;
          }
        }

        v63 = *v71;
        if (v63 == 45)
        {
LABEL_47:
          NNFX_logMsg(a1, 1, "::nnfeatextract, No vowel found in syllable ", v33, v34, v35, v36, v37);
          if (v64 <= v66)
          {
            v77 = v64;
            do
            {
              NNFX_logMsg(a1, 1, "%c", v72, v73, v74, v75, v76);
              ++v77;
            }

            while (v77 <= v66);
          }

          NNFX_logMsg(a1, 1, " from %d to %d for phone %d", v72, v73, v74, v75, v76);
          LOBYTE(v63) = 45;
        }
      }

      *(v50 + 8) = 3;
      __s = v63;
      v78 = stringdup(a1, &__s);
      *v50 = v78;
      if (!v78)
      {
        v102 = " in fExtGetPhoneFeats while allocating mem for VowInSyl.";
        goto LABEL_119;
      }

      *(*(*v31 + 8) + 8 * v106) = v50;
      if (*v113 == -1)
      {
        v80 = 45;
        v79 = v112;
      }

      else
      {
        v79 = v112;
        if (cstdlib_strchr(**(v112 + 16 * v113[1] + 8), *(*(*(a4 + 8 * v44) + 152) + v114)))
        {
          v80 = 86;
        }

        else
        {
          v80 = 45;
        }
      }

      *(v52 + 8) = 2;
      *v52 = v80;
      *(*(*v31 + 16) + 8 * v106) = v52;
      v81 = *v113;
      if (v81 == -1)
      {
        v84 = 45;
        v82 = v114;
      }

      else
      {
        v82 = v114;
        v83 = *(*(*(a4 + 8 * v44) + 152) + v114);
        if (v83 == SilPhone)
        {
          v84 = 45;
        }

        else
        {
          v85 = cstdlib_strchr(**(v79 + 16 * v81 + 8), v83);
          v82 = v114;
          if (v85)
          {
            v84 = 86;
          }

          else
          {
            v84 = 67;
          }
        }
      }

      *v109 = v84;
      *(*(*v31 + 24) + 8 * v106) = v109;
      v86 = *(a4 + 8 * v44);
      *(v109 + 8) = 2;
      v87 = *(*(v86 + 152) + v82);
      v88 = *(*(v86 + 152) + v82);
      if (v88 == SilPhone)
      {
        v89 = 45;
        goto LABEL_87;
      }

      v90 = v113[2];
      if (v90 != -1)
      {
        v91 = *(v79 + 16 * v90 + 8);
        if (v91)
        {
          if (cstdlib_strchr(*v91, v87))
          {
            v89 = 77;
            goto LABEL_86;
          }

          LOBYTE(v88) = *(*(*(a4 + 8 * v44) + 152) + v114);
        }
      }

      v92 = v113[3];
      if (v92 == -1)
      {
        goto LABEL_76;
      }

      v93 = *(v79 + 16 * v92 + 8);
      if (!v93)
      {
        goto LABEL_76;
      }

      if (!cstdlib_strchr(*v93, v88))
      {
        LOBYTE(v88) = *(*(*(a4 + 8 * v44) + 152) + v114);
LABEL_76:
        if (check_phn_class(v79, v113[4], v88))
        {
          v89 = 65;
        }

        else if (check_phn_class(v79, v113[5], *(*(*(a4 + 8 * v44) + 152) + v114)))
        {
          v89 = 70;
        }

        else if (check_phn_class(v79, v113[6], *(*(*(a4 + 8 * v44) + 152) + v114)))
        {
          v89 = 83;
        }

        else if (check_phn_class(v79, v113[7], *(*(*(a4 + 8 * v44) + 152) + v114)))
        {
          v89 = 76;
        }

        else
        {
          if (!check_phn_class(v79, v113[8], *(*(*(a4 + 8 * v44) + 152) + v114)))
          {
            v101 = check_phn_class(v79, v113[9], *(*(*(a4 + 8 * v44) + 152) + v114));
            v82 = v114;
            if (v101)
            {
              v89 = 71;
            }

            else
            {
              v89 = 45;
            }

            goto LABEL_87;
          }

          v89 = 78;
        }

        goto LABEL_86;
      }

      v89 = 68;
LABEL_86:
      v82 = v114;
LABEL_87:
      *(v110 + 8) = 2;
      *v110 = v89;
      *(*(*v31 + 32) + 8 * v106) = v110;
      v94 = *(a4 + 8 * v44);
      *(v57 + 8) = 2;
      v95 = *(*(v94 + 176) + 4 * v82);
      if (v95)
      {
        v96 = v95 + 48;
      }

      else
      {
        v96 = 45;
      }

      *v57 = v96;
      *(*(*v31 + 40) + 8 * v106) = v57;
      *(v108 + 8) = 3;
      v97 = v82;
      v98 = stringdup(a1, *(*(*(a4 + 8 * v44) + 168) + 8 * v82));
      *v108 = v98;
      if (!v98)
      {
        v102 = " in fExtGetPhoneFeats copying phone tag for phone %d in word %d.";
LABEL_119:
        NNFX_logMsg(a1, 0, v102, v33, v34, v35, v36, v37);
        return 0;
      }

      *(*(*v31 + 48) + 8 * v106) = v108;
      v99 = *(a4 + 8 * v44);
      *(v107 + 8) = 2;
      v100 = *(*(v99 + 160) + v97);
      if (v100 == 32)
      {
        LOBYTE(v100) = 45;
      }

      *v107 = v100;
      *(*(*v31 + 56) + 8 * v106) = v107;
      v45 = v106 + 1;
      v46 = v97 + 1;
      ++v111;
      a3 = v113;
      if (v46 >= *(*(a4 + 8 * v44) + 144))
      {
        goto LABEL_98;
      }
    }
  }

  v45 = 0;
LABEL_106:
  if (v45 != v105)
  {
    v102 = " in fExtGetPhoneFeats(). %d phones processed, but %d phones in input.";
    goto LABEL_119;
  }

  return v31;
}

uint64_t fExtGetLexicalFeats(uint64_t a1, uint64_t a2, __int16 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  NNFX_logMsg(a1, 3, "Extracting lexical attributes...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v15, v16, v17, v18, v19);
  NNFX_logMsg(a1, 3, "First boundary: %c", v20, v21, v22, v23, v24);
  v25 = heap_Calloc(*(a1 + 8), 1, 4048);
  v31 = v25;
  if (!v25)
  {
    NNFX_logMsg(a1, 0, " in fExtGetLexicalFeats() trying to mallocate output.", v26, v27, v28, v29, v30);
    return v31;
  }

  *(v25 + 4016) = 15;
  *(v25 + 4024) = v8;
  *(v25 + 4032) = *(a5 + 16);
  v32 = heap_Alloc(*(a1 + 8), 120);
  *(v31 + 8) = v32;
  if (!v32)
  {
    v99 = " in fExtGetLexicalFeats() allocating feature names";
    goto LABEL_117;
  }

  **(v31 + 8) = stringdup(a1, "Prominence");
  *(*(v31 + 8) + 8) = stringdup(a1, "POS");
  *(*(v31 + 8) + 16) = stringdup(a1, "nluPOS");
  *(*(v31 + 8) + 24) = stringdup(a1, "nluCLS");
  *(*(v31 + 8) + 32) = stringdup(a1, "nluPNC");
  *(*(v31 + 8) + 40) = stringdup(a1, "nluCMP");
  *(*(v31 + 8) + 48) = stringdup(a1, "nluBDS");
  *(*(v31 + 8) + 56) = stringdup(a1, "nluCPS");
  *(*(v31 + 8) + 64) = stringdup(a1, "IsFxnWord");
  *(*(v31 + 8) + 72) = stringdup(a1, "IsWHWord");
  *(*(v31 + 8) + 80) = stringdup(a1, "IsAuxWord");
  *(*(v31 + 8) + 88) = stringdup(a1, "IsConjWord");
  *(*(v31 + 8) + 96) = stringdup(a1, "IsAdposWord");
  *(*(v31 + 8) + 104) = stringdup(a1, "CommonWord");
  *(*(v31 + 8) + 112) = stringdup(a1, "EndPhraseType");
  v38 = *(v31 + 4016);
  if (v38)
  {
    v39 = *(v31 + 8);
    v40 = *(v31 + 4016);
    do
    {
      if (!*v39)
      {
        v99 = " in fExtGetLexicalFeats allocating feature stream names.";
        goto LABEL_117;
      }

      ++v39;
      --v40;
    }

    while (v40);
  }

  v41 = heap_Alloc(*(a1 + 8), 8 * v38);
  *v31 = v41;
  if (!v41)
  {
    v99 = " in fExtGetLexicalFeats() trying to malloc-ate feature array.";
    goto LABEL_117;
  }

  if (*(v31 + 4016))
  {
    v42 = 0;
    do
    {
      v43 = heap_Alloc(*(a1 + 8), 8 * *(v31 + 4024));
      *(*v31 + 8 * v42) = v43;
      if (!v43)
      {
        v99 = " in fExtGetLexicalFeats mallocating output stream %d of %d";
        goto LABEL_117;
      }

      ++v42;
    }

    while (v42 < *(v31 + 4016));
  }

  v44 = *(a5 + 16);
  if (v44[1] != v9)
  {
    v99 = " in fExtGetLexicalFeats. Number of prosodic words %d does not match %d boundaries in the WORD tier.";
    goto LABEL_117;
  }

  if (*v44 != v8)
  {
    v99 = " in fExtGetLexicalFeats. Number of elments %d in WORD tier does not match number of phones.";
    goto LABEL_117;
  }

  if (v9)
  {
    v45 = 0;
    v46 = 0;
    v47 = -1;
    while (1)
    {
      ElementInGroup = firstElementInGroup(a1, v44, v45, v33, v34, v35, v36, v37);
      if (ElementInGroup == -1)
      {
        v99 = " in fExtGetLexicalFeats finding beginning of group %d in WORD tier.";
        goto LABEL_117;
      }

      v126 = lastElementInGroup(a1, *(a5 + 16), v45, v33, v34, v35, v36, v37);
      if (v126 == -1)
      {
        v99 = " in fExtGetLexicalFeats finding end of group %d in WORD tier.";
        goto LABEL_117;
      }

      if (ElementInGroup != v47 + 1)
      {
        v99 = " in fExtGetLexicalFeats on WORD tier. First phone %d in group %d does not follow last phone (%d) processed in previous group.";
        goto LABEL_117;
      }

      if (v126 >= v8)
      {
        v99 = " in fExtGetLexicalFeats on WORD tier. Going out of bounds: (index %d ; %d phones)";
        goto LABEL_117;
      }

      if (v46)
      {
        heap_Free(*(a1 + 8), v46);
      }

      v48 = stringdup(a1, *(*(a4 + 8 * v45) + 32));
      if (!v48)
      {
        v99 = " in fExtGetLexicalFeats trying to lowercase ";
        goto LABEL_117;
      }

      v46 = v48;
      v124 = v45;
      if (cstdlib_strlen(v48))
      {
        v49 = 0;
        v50 = 1;
        do
        {
          v46[v49] = cstdlib_tolower(v46[v49]);
          v49 = v50;
        }

        while (cstdlib_strlen(v46) > v50++);
      }

      v127 = check_lex_feat(a2, v46, a3[11]);
      v122 = check_lex_feat(a2, v46, a3[12]);
      v120 = check_lex_feat(a2, v46, a3[14]);
      v118 = check_lex_feat(a2, v46, a3[13]);
      v52 = check_lex_feat(a2, v46, a3[15]);
      v53 = a3[10];
      v54 = -1;
      if (v53 != -1)
      {
        v55 = v124;
        if (v53 > 499)
        {
          goto LABEL_37;
        }

        if (!*(a2 + 16 * a3[10] + 8))
        {
          v54 = -1;
          goto LABEL_37;
        }

        v56 = 0;
        while (1)
        {
          v57 = *(*(a2 + 16 * a3[10] + 8) + 8 * v56);
          if (!v57)
          {
LABEL_33:
            v54 = -1;
            goto LABEL_36;
          }

          if (!cstdlib_strcmp(v46, v57))
          {
            break;
          }

          if (++v56 == 500)
          {
            goto LABEL_33;
          }
        }

        v54 = v56;
      }

LABEL_36:
      v55 = v124;
LABEL_37:
      v117 = v54;
      if (ElementInGroup <= v126)
      {
        v129 = 0;
        if (v127)
        {
          v58 = 49;
        }

        else
        {
          v58 = 45;
        }

        v104 = v58;
        if (v122)
        {
          v59 = 49;
        }

        else
        {
          v59 = 45;
        }

        v103 = v59;
        if (v120)
        {
          v60 = 49;
        }

        else
        {
          v60 = 45;
        }

        v102 = v60;
        if (v118)
        {
          v61 = 49;
        }

        else
        {
          v61 = 45;
        }

        if (v52)
        {
          v62 = 49;
        }

        else
        {
          v62 = 45;
        }

        v100 = v62;
        v101 = v61;
        v128 = 8 * ElementInGroup;
        v106 = a2;
        do
        {
          v63 = heap_Alloc(*(a1 + 8), 16);
          if (!v63)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 0 of word %d.";
            goto LABEL_117;
          }

          v64 = v63;
          v65 = heap_Alloc(*(a1 + 8), 16);
          if (!v65)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 1 of word %d.";
            goto LABEL_117;
          }

          v121 = v65;
          v123 = heap_Alloc(*(a1 + 8), 16);
          if (!v123)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 2 of word %d.";
            goto LABEL_117;
          }

          v66 = heap_Alloc(*(a1 + 8), 16);
          if (!v66)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 3 of word %d.";
            goto LABEL_117;
          }

          v119 = v66;
          v116 = heap_Alloc(*(a1 + 8), 16);
          if (!v116)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 4 of word %d.";
            goto LABEL_117;
          }

          v67 = heap_Alloc(*(a1 + 8), 16);
          if (!v67)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 5 of word %d.";
            goto LABEL_117;
          }

          v115 = v67;
          v114 = heap_Alloc(*(a1 + 8), 16);
          if (!v114)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 6 of word %d.";
            goto LABEL_117;
          }

          v68 = heap_Alloc(*(a1 + 8), 16);
          if (!v68)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 7 of word %d.";
            goto LABEL_117;
          }

          v113 = v68;
          v69 = heap_Alloc(*(a1 + 8), 16);
          if (!v69)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 8 of word %d.";
            goto LABEL_117;
          }

          v70 = v69;
          v71 = heap_Alloc(*(a1 + 8), 16);
          if (!v71)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 9 of word %d.";
            goto LABEL_117;
          }

          v112 = v71;
          v72 = heap_Alloc(*(a1 + 8), 16);
          if (!v72)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 10 of word %d.";
            goto LABEL_117;
          }

          v111 = v72;
          v73 = heap_Alloc(*(a1 + 8), 16);
          if (!v73)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 11 of word %d.";
            goto LABEL_117;
          }

          v110 = v73;
          v74 = heap_Alloc(*(a1 + 8), 16);
          if (!v74)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 12 of word %d.";
            goto LABEL_117;
          }

          v108 = v74;
          v109 = heap_Alloc(*(a1 + 8), 16);
          if (!v109)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 13 of word %d.";
            goto LABEL_117;
          }

          v75 = heap_Alloc(*(a1 + 8), 16);
          if (!v75)
          {
            v99 = " in fExtGetLexicalFeats while allocating mem for stream 14 of word %d.";
            goto LABEL_117;
          }

          v107 = v70;
          v105 = v75;
          *(v64 + 8) = 2;
          v76 = *(*(a4 + 8 * v124) + 20);
          if (v76)
          {
            v77 = v76 + 48;
          }

          else
          {
            v77 = 45;
          }

          *v64 = v77;
          *(**v31 + v128 + 8 * v129) = v64;
          *(v121 + 8) = 3;
          if (cstdlib_strlen(*(*(a4 + 8 * v124) + 56)))
          {
            v78 = stringdup(a1, *(*(a4 + 8 * v124) + 56));
            *v121 = v78;
            v79 = v123;
            if (!v78)
            {
              v99 = " in fExtGetLexicalFeats copying POS value while processing phone %d (pros word %d)";
              goto LABEL_117;
            }
          }

          else
          {
            v80 = stringdup(a1, "-");
            *v121 = v80;
            v79 = v123;
            if (!v80)
            {
              v99 = " in fExtGetLexicalFeats copying null POS value while processing phone %d (pros word %d)";
              goto LABEL_117;
            }
          }

          *(*(*v31 + 8) + v128 + 8 * v129) = v121;
          *(v79 + 8) = 3;
          v55 = v124;
          if (cstdlib_strlen(*(*(a4 + 8 * v124) + 80)))
          {
            v81 = stringdup(a1, *(*(a4 + 8 * v124) + 80));
            *v79 = v81;
            if (!v81)
            {
              v99 = " in fExtGetLexicalFeats copying nluPOS value while processing phone %d (pros word %d)";
              goto LABEL_117;
            }
          }

          else
          {
            v82 = stringdup(a1, "-");
            *v79 = v82;
            if (!v82)
            {
              v99 = " in fExtGetLexicalFeats copying null value to nluPOS feature while processing phone %d (pros word %d)";
              goto LABEL_117;
            }
          }

          *(*(*v31 + 16) + v128 + 8 * v129) = v79;
          *(v119 + 8) = 3;
          if (cstdlib_strlen(*(*(a4 + 8 * v124) + 96)))
          {
            v83 = stringdup(a1, *(*(a4 + 8 * v124) + 96));
            *v119 = v83;
            a2 = v106;
            if (!v83)
            {
              v99 = " in fExtGetLexicalFeats copying nluCLS value while processing phone %d (pros word %d)";
              goto LABEL_117;
            }
          }

          else
          {
            v84 = stringdup(a1, "-");
            *v119 = v84;
            a2 = v106;
            if (!v84)
            {
              v99 = " in fExtGetLexicalFeats copying null value to nluCLS feature while processing phone %d (pros word %d)";
              goto LABEL_117;
            }
          }

          *(*(*v31 + 24) + v128 + 8 * v129) = v119;
          *(v116 + 8) = 3;
          if (cstdlib_strlen(*(*(a4 + 8 * v124) + 112)))
          {
            v85 = stringdup(a1, *(*(a4 + 8 * v124) + 112));
            *v116 = v85;
            if (!v85)
            {
              v99 = " in fExtGetLexicalFeats copying nluPNC value while processing phone %d (pros word %d)";
              goto LABEL_117;
            }
          }

          else
          {
            v86 = stringdup(a1, "-");
            *v116 = v86;
            if (!v86)
            {
              v99 = " in fExtGetLexicalFeats copying null value to nluPNC feature while processing phone %d (pros word %d)";
              goto LABEL_117;
            }
          }

          *(*(*v31 + 32) + v128 + 8 * v129) = v116;
          *(v115 + 8) = 3;
          if (cstdlib_strlen(*(*(a4 + 8 * v124) + 104)))
          {
            v87 = stringdup(a1, *(*(a4 + 8 * v124) + 104));
            *v115 = v87;
            if (!v87)
            {
              v99 = " in fExtGetLexicalFeats copying nluCMP value while processing phone %d (pros word %d)";
              goto LABEL_117;
            }
          }

          else
          {
            v88 = stringdup(a1, "-");
            *v115 = v88;
            if (!v88)
            {
              v99 = " in fExtGetLexicalFeats copying null value to nluCMP feature while processing phone %d (pros word %d)";
              goto LABEL_117;
            }
          }

          *(*(*v31 + 40) + v128 + 8 * v129) = v115;
          *(v114 + 8) = 3;
          if (cstdlib_strlen(*(*(a4 + 8 * v124) + 120)))
          {
            v89 = stringdup(a1, *(*(a4 + 8 * v124) + 120));
            *v114 = v89;
            if (!v89)
            {
              v99 = " in fExtGetLexicalFeats copying nluBDS value while processing phone %d (pros word %d)";
              goto LABEL_117;
            }
          }

          else
          {
            v90 = stringdup(a1, "-");
            *v114 = v90;
            if (!v90)
            {
              v99 = " in fExtGetLexicalFeats copying null value to nluBDS feature while processing phone %d (pros word %d)";
              goto LABEL_117;
            }
          }

          *(*(*v31 + 48) + v128 + 8 * v129) = v114;
          *(v113 + 8) = 3;
          if (cstdlib_strlen(*(*(a4 + 8 * v124) + 128)))
          {
            v91 = stringdup(a1, *(*(a4 + 8 * v124) + 128));
            *v113 = v91;
            if (!v91)
            {
              v99 = " in fExtGetLexicalFeats copying nluCPS value while processing phone %d (pros word %d)";
              goto LABEL_117;
            }
          }

          else
          {
            v92 = stringdup(a1, "-");
            *v113 = v92;
            if (!v92)
            {
              v99 = " in fExtGetLexicalFeats copying null value to nluCPS feature while processing phone %d (pros word %d)";
LABEL_117:
              NNFX_logMsg(a1, 0, v99, v33, v34, v35, v36, v37);
              return 0;
            }
          }

          *(*(*v31 + 56) + v128 + 8 * v129) = v113;
          *(v107 + 8) = 2;
          *v107 = v104;
          *(*(*v31 + 64) + v128 + 8 * v129) = v107;
          *v112 = v103;
          *(*(*v31 + 72) + v128 + 8 * v129) = v112;
          *(v112 + 8) = 2;
          *(v111 + 8) = 2;
          *v111 = v102;
          *(*(*v31 + 80) + v128 + 8 * v129) = v111;
          v110[2] = 2;
          *v110 = v101;
          *(*(*v31 + 88) + v128 + 8 * v129) = v110;
          *(v108 + 8) = 2;
          *v108 = v100;
          *(*(*v31 + 96) + v128 + 8 * v129) = v108;
          *(v109 + 8) = 3;
          if (v117 == -1)
          {
            v94 = a1;
            v93 = "-";
          }

          else
          {
            v93 = *(*(a2 + 16 * a3[10] + 8) + 8 * v117);
            v94 = a1;
          }

          v95 = stringdup(v94, v93);
          *v109 = v95;
          if (!v95)
          {
            v99 = " in fExtGetLexicalFeats copying value to lexeme.";
            goto LABEL_117;
          }

          v96 = v129;
          *(*(*v31 + 104) + v128 + 8 * v129) = v109;
          *(v105 + 8) = 2;
          v97 = **(*(a4 + 8 * v124) + 48);
          if (!v97)
          {
            v97 = 45;
          }

          *v105 = v97;
          *(*(*v31 + 112) + v128 + 8 * v129++) = v105;
        }

        while (~v126 + ElementInGroup + v96 + 1);
      }

      v45 = v55 + 1;
      v44 = *(a5 + 16);
      v47 = v126;
      if (v45 >= v44[1])
      {
        heap_Free(*(a1 + 8), v46);
        return v31;
      }
    }
  }

  return v31;
}

uint64_t fExtGetParseFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  NNFX_logMsg(a1, 3, "Extracting syntactical attributes...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v13, v14, v15, v16, v17);
  NNFX_logMsg(a1, 3, "First boundary: %c", v18, v19, v20, v21, v22);
  v23 = heap_Calloc(*(a1 + 8), 1, 4048);
  v29 = v23;
  if (!v23)
  {
    NNFX_logMsg(a1, 0, " in fExtGetParseFeats() trying to mallocate output.", v24, v25, v26, v27, v28);
    return v29;
  }

  *(v23 + 4016) = 1;
  *(v23 + 4024) = v8;
  *(v23 + 4032) = *(a5 + 40);
  v30 = heap_Alloc(*(a1 + 8), 8);
  *(v29 + 8) = v30;
  if (!v30 || (**(v29 + 8) = stringdup(a1, "SyntaxTag")) == 0)
  {
    v59 = " in fExtGetParseFeats() allocating feature names";
LABEL_37:
    NNFX_logMsg(a1, 0, v59, v31, v32, v33, v34, v35);
    return 0;
  }

  v36 = heap_Alloc(*(a1 + 8), 8 * *(v29 + 4016));
  *v29 = v36;
  if (!v36)
  {
    v59 = " in fExtGetParseFeats() trying to malloc-ate output.";
    goto LABEL_37;
  }

  if (*(v29 + 4016))
  {
    v37 = 0;
    while (1)
    {
      v38 = heap_Alloc(*(a1 + 8), 8 * *(v29 + 4024));
      *(*v29 + 8 * v37) = v38;
      if (!v38)
      {
        break;
      }

      if (++v37 >= *(v29 + 4016))
      {
        goto LABEL_9;
      }
    }

    v59 = " in fExtGetParseFeats mallocating for output stream %d of %d";
    goto LABEL_37;
  }

LABEL_9:
  v39 = *(a5 + 40);
  if (*v39 != v8)
  {
    v59 = " in fExtGetParseFeats. Number of elments %d in PARSE tier does not match number of phones %d.";
    goto LABEL_37;
  }

  if (v39[1])
  {
    v40 = 0;
    v41 = -1;
    while (1)
    {
      ElementInGroup = firstElementInGroup(a1, v39, v40, v31, v32, v33, v34, v35);
      if (ElementInGroup == -1)
      {
        v59 = " in fExtGetParseFeats finding beginning of group %d in PARSE tier.";
        goto LABEL_37;
      }

      v43 = ElementInGroup;
      v44 = lastElementInGroup(a1, *(a5 + 40), v40, v31, v32, v33, v34, v35);
      if (v44 == -1)
      {
        v59 = " in fExtGetParseFeats finding end of group %d in PARSE tier.";
        goto LABEL_37;
      }

      if (v43 != v41 + 1)
      {
        v59 = " in fExtGetParseFeats on PARSE tier. First phone %d in group %d does not follow last phone (%d) processed in previous group.";
        goto LABEL_37;
      }

      v45 = v44;
      if (v44 >= v8)
      {
        v59 = " in fExtGetParseFeats on PARSE tier. Going out of bounds: (index %d ; %d phones)";
        goto LABEL_37;
      }

      if (!v9)
      {
LABEL_49:
        v59 = " in fExtGetParseFeats. Initial phone %d in parse group %d does not align with the start of any prosodic word.";
        goto LABEL_37;
      }

      v46 = 0;
      v47 = 0;
      v60 = v44;
      while (*(*(a4 + 8 * v47) + 140) != v43)
      {
        ++v47;
        v46 += 0x100000000;
        if (v9 == v47)
        {
          goto LABEL_49;
        }
      }

      v62 = v40;
      v48 = 0;
      v49 = 0;
      while (*(*(a4 + 8 * v49) + 140) + *(*(a4 + 8 * v49) + 144) - 1 != v44)
      {
        ++v49;
        v48 += 0x100000000;
        if (v9 == v49)
        {
          v59 = " in fExtGetParseFeats. Last phone %d in parse group %d does not align with the end of any prosodic word.";
          goto LABEL_37;
        }
      }

      v61 = v48 >> 29;
      if (cstdlib_strcmp(*(*(a4 + (v46 >> 29)) + 88), *(*(a4 + (v48 >> 29)) + 88)))
      {
        v59 = " in fExtGetParseFeats. First (%d) and last (%d) words in parse group %d (from phone %d to phone %d) do not share a common nluPHR tag.";
        goto LABEL_37;
      }

      v50 = v62;
      if (v43 <= v45)
      {
        break;
      }

LABEL_34:
      v40 = v50 + 1;
      v39 = *(a5 + 40);
      v41 = v60;
      if (v40 >= v39[1])
      {
        return v29;
      }
    }

    v51 = 8 * v43;
    v52 = v45 - v43 + 1;
    while (1)
    {
      v53 = heap_Alloc(*(a1 + 8), 16);
      if (!v53)
      {
        v59 = " in fExtGetParseFeats while allocating mem for stream 0 of parse group %d.";
        goto LABEL_37;
      }

      v54 = v53;
      *(v53 + 8) = 3;
      if (cstdlib_strcmp(*(*(a4 + v61) + 88), ""))
      {
        v55 = *(*(a4 + v61) + 88);
        v56 = a1;
      }

      else
      {
        v56 = a1;
        v55 = "-";
      }

      v57 = stringdup(v56, v55);
      *v54 = v57;
      if (!v57)
      {
        break;
      }

      *(**v29 + v51) = v54;
      v51 += 8;
      --v52;
      v50 = v62;
      if (!v52)
      {
        goto LABEL_34;
      }
    }

    v59 = " in fExtGetParseFeats copying syntactical category feature.";
    goto LABEL_37;
  }

  return v29;
}

uint64_t fExtGetPhraseFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  NNFX_logMsg(a1, 3, "Extracting phrase-level attributes...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v13, v14, v15, v16, v17);
  NNFX_logMsg(a1, 3, "First boundary: %c", v18, v19, v20, v21, v22);
  v23 = heap_Calloc(*(a1 + 8), 1, 4048);
  v29 = v23;
  if (!v23)
  {
    NNFX_logMsg(a1, 0, " in fExtGetPhraseFeats() trying to mallocate output.", v24, v25, v26, v27, v28);
    return v29;
  }

  *(v23 + 4016) = 1;
  *(v23 + 4024) = v8;
  *(v23 + 4032) = *(a5 + 24);
  v30 = heap_Alloc(*(a1 + 8), 8);
  *(v29 + 8) = v30;
  if (!v30 || (**(v29 + 8) = stringdup(a1, "PhraseBoundaryStrength")) == 0)
  {
    v53 = " in fExtGetPhraseFeats() allocating feature names";
LABEL_30:
    NNFX_logMsg(a1, 0, v53, v31, v32, v33, v34, v35);
    return 0;
  }

  v36 = heap_Alloc(*(a1 + 8), 8 * *(v29 + 4016));
  *v29 = v36;
  if (!v36)
  {
    v53 = " in fExtGetPhraseFeats() trying to malloc-ate output.";
    goto LABEL_30;
  }

  if (*(v29 + 4016))
  {
    v37 = 0;
    while (1)
    {
      v38 = heap_Alloc(*(a1 + 8), 8 * *(v29 + 4024));
      *(*v29 + 8 * v37) = v38;
      if (!v38)
      {
        break;
      }

      if (++v37 >= *(v29 + 4016))
      {
        goto LABEL_9;
      }
    }

    v53 = "in fExtGetPhraseFeats mallocating for output stream %d of %d";
    goto LABEL_30;
  }

LABEL_9:
  v39 = *(a5 + 24);
  if (*v39 != v8)
  {
    v53 = " fExtGetPhraseFeats. Number of elements %d in PHRASE tier does not match number of phones %d";
    goto LABEL_30;
  }

  if (v39[1])
  {
    v40 = 0;
    v41 = -1;
    while (1)
    {
      ElementInGroup = firstElementInGroup(a1, v39, v40, v31, v32, v33, v34, v35);
      if (ElementInGroup == -1)
      {
        v53 = " in fExtGetPhraseFeats finding beginning of group %d in PHRASE tier.";
        goto LABEL_30;
      }

      v43 = ElementInGroup;
      v44 = lastElementInGroup(a1, *(a5 + 24), v40, v31, v32, v33, v34, v35);
      if (v44 == -1)
      {
        v53 = " in fExtGetPhraseFeats finding end of group %d in PHRASe tier.";
        goto LABEL_30;
      }

      if (v43 != v41 + 1)
      {
        v53 = " in fExtGetPhraseFeats on PHRASE tier. First phone %d in group %d does not follow last phone (%d) processed in previous group.";
        goto LABEL_30;
      }

      if (v44 >= v8)
      {
        v53 = " in fExtGetPhraseFeats on PHRASE tier. Going out of bounds: (index %d ; %d phones)";
        goto LABEL_30;
      }

      if (!v9)
      {
LABEL_41:
        v53 = " in fExtGetPhraseFeats. Last phone %d in phrase %d does not align with the end of any prosodic word.";
        goto LABEL_30;
      }

      v45 = 0;
      v46 = a4;
      v47 = v9;
      while (*(*v46 + 140) + *(*v46 + 144) - 1 != v44)
      {
        v45 += 0x100000000;
        v46 += 8;
        if (!--v47)
        {
          goto LABEL_41;
        }
      }

      v55 = v44;
      v56 = v40;
      if (v43 <= v44)
      {
        break;
      }

LABEL_27:
      v41 = v55;
      v40 = v56 + 1;
      v39 = *(a5 + 24);
      if (v56 + 1 >= v39[1])
      {
        return v29;
      }
    }

    v48 = v45 >> 29;
    v49 = 8 * v43;
    v50 = v44 - v43 + 1;
    while (1)
    {
      v51 = heap_Alloc(*(a1 + 8), 16);
      if (!v51)
      {
        break;
      }

      *(v51 + 8) = 2;
      v52 = *(*(a4 + v48) + 136);
      if (v52 == 78)
      {
        LOBYTE(v52) = 45;
      }

      *v51 = v52;
      *(**v29 + v49) = v51;
      v49 += 8;
      if (!--v50)
      {
        goto LABEL_27;
      }
    }

    v53 = " in fExtGetPhraseFeats while allocating mem for stream 0 of phrase %d.";
    goto LABEL_30;
  }

  return v29;
}

uint64_t fExtGetPunctFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;
  v9 = a6;
  NNFX_logMsg(a1, 3, "Extracting punctuation attributes...", a4, a5, a6, a7, a8);
  v13 = heap_Calloc(*(a1 + 8), 1, 4048);
  v19 = v13;
  if (!v13)
  {
    NNFX_logMsg(a1, 0, " in fExtGetPunctFeats() trying to mallocate output.", v14, v15, v16, v17, v18);
    return v19;
  }

  *(v13 + 4016) = 1;
  *(v13 + 4024) = v8;
  *(v13 + 4032) = *(a5 + 32);
  v20 = heap_Alloc(*(a1 + 8), 8);
  *(v19 + 8) = v20;
  if (!v20)
  {
    v53 = " in fExtGetPunctFeats() allocating feature names";
    goto LABEL_70;
  }

  **(v19 + 8) = stringdup(a1, "PunctMark");
  if (!**(v19 + 8))
  {
    v53 = " in fExtGetPunctFeats() allocating feature names.";
    goto LABEL_70;
  }

  v26 = heap_Alloc(*(a1 + 8), 8 * *(v19 + 4016));
  *v19 = v26;
  if (!v26)
  {
    v53 = " in fExtGetPunctFeats() trying to malloc-ate feature array.";
    goto LABEL_70;
  }

  if (*(v19 + 4016))
  {
    v27 = 0;
    do
    {
      v28 = heap_Alloc(*(a1 + 8), 8 * *(v19 + 4024));
      *(*v19 + 8 * v27) = v28;
      if (!v28)
      {
        v53 = " in fExtGetPunctFeats mallocating output stream %d of %d";
        goto LABEL_70;
      }

      ++v27;
    }

    while (v27 < *(v19 + 4016));
  }

  v29 = *(a5 + 32);
  if (*v29 != v8)
  {
    v53 = " in fExtGetPunctFeats. Number of elments %d in PUNCT tier does not match number of phones %d.";
    goto LABEL_70;
  }

  if (v29[1])
  {
    v30 = 0;
    v59 = v9;
    __s = 0;
    v31 = -1;
    while (1)
    {
      ElementInGroup = firstElementInGroup(a1, v29, v30, v21, v22, v23, v24, v25);
      if (ElementInGroup == -1)
      {
        v53 = " in fExtGetPunctFeats finding beginning of group %d in PUNCT tier.";
        goto LABEL_70;
      }

      v33 = ElementInGroup;
      v34 = lastElementInGroup(a1, *(a5 + 32), v30, v21, v22, v23, v24, v25);
      if (v34 == -1)
      {
        v53 = " in fExtGetPunctFeats finding end of group %d in PUNCT tier.";
        goto LABEL_70;
      }

      if (v33 != v31 + 1)
      {
        v53 = " in fExtGetPunctFeats on PUNCT tier. First phone %d in group %d does not follow last phone (%d) processed in previous group.";
        goto LABEL_70;
      }

      if (v34 >= v8)
      {
        v53 = " in fExtGetPunctFeats on PUNCT tier. Going out of bounds: (index %d ; %d phones)";
        goto LABEL_70;
      }

      if (!v9)
      {
LABEL_69:
        v53 = " in fExtGetPunctFeats. First phone %d in parse group %d does not align with the start of any prosodic word.";
        goto LABEL_70;
      }

      v35 = 0;
      v36 = 0;
      v58 = v34;
      while (*(*(a4 + 8 * v36) + 140) != v33)
      {
        ++v36;
        v35 += 0x100000000;
        if (v59 == v36)
        {
          goto LABEL_69;
        }
      }

      v57 = v30;
      v56 = v9;
      v37 = 0;
      v38 = 0;
      while (*(*(a4 + 8 * v38) + 140) + *(*(a4 + 8 * v38) + 144) - 1 != v34)
      {
        ++v38;
        ++v37;
        if (v59 == v38)
        {
          v53 = " in fExtGetPunctFeats. Last phone %d in parse group %d does not align with the end of any prosodic word.";
          goto LABEL_70;
        }
      }

      if (__s)
      {
        v55 = v34;
        heap_Free(*(a1 + 8), __s);
        v34 = v55;
      }

      if (v38 < v36)
      {
LABEL_31:
        __s = 0;
        v9 = v56;
        v41 = v57;
        goto LABEL_44;
      }

      v39 = a4 + 8 * v37;
      v40 = v37 + 1;
      while (*(*v39 + 192))
      {
        v39 -= 8;
        if (--v40 <= v35 >> 32)
        {
          goto LABEL_31;
        }
      }

      v42 = v34;
      v43 = cstdlib_strlen(*(*v39 + 32));
      if (!v43)
      {
        goto LABEL_41;
      }

      v44 = *(*(*v39 + 32) + (v43 - 1));
      if (v44 > 0x39)
      {
        v9 = v56;
        v41 = v57;
        if (v44 == 58)
        {
          v45 = "COLON";
        }

        else
        {
          if (v44 != 59)
          {
            if (v44 == 63)
            {
              v45 = "QMARK";
            }

            else
            {
LABEL_41:
              v45 = "PERIOD";
            }

            v9 = v56;
            v41 = v57;
            goto LABEL_43;
          }

          v45 = "SEMICOLON";
        }
      }

      else
      {
        v9 = v56;
        v41 = v57;
        if (v44 == 33)
        {
          v45 = "EXCL";
        }

        else
        {
          if (v44 != 44)
          {
            goto LABEL_41;
          }

          v45 = "COMMA";
        }
      }

LABEL_43:
      v46 = stringdup(a1, v45);
      v34 = v42;
      __s = v46;
      if (!v46)
      {
        v53 = " in fExtGetPunctFeats while allocating mem for punctMark feature.";
LABEL_70:
        NNFX_logMsg(a1, 0, v53, v21, v22, v23, v24, v25);
        return 0;
      }

LABEL_44:
      if (v33 <= v34)
      {
        v47 = 8 * v33;
        for (i = v34 - v33 + 1; i; --i)
        {
          v49 = heap_Alloc(*(a1 + 8), 16);
          if (!v49)
          {
            v53 = " in fExtGetPunctFeats while allocating mem for stream 0 of parse group %d.";
            goto LABEL_70;
          }

          v50 = v49;
          *(v49 + 8) = 3;
          if (__s)
          {
            v51 = stringdup(a1, __s);
            *v50 = v51;
            if (!v51)
            {
              v53 = " in fExtGetPunctFeats copying punctuation mark feature.";
              goto LABEL_70;
            }
          }

          else
          {
            v52 = stringdup(a1, "-");
            *v50 = v52;
            if (!v52)
            {
              v53 = " in fExtGetPunctFeats copying default punctuation mark feature.";
              goto LABEL_70;
            }
          }

          *(**v19 + v47) = v50;
          v47 += 8;
        }
      }

      v30 = v41 + 1;
      v29 = *(a5 + 32);
      v31 = v58;
      if (v30 >= v29[1])
      {
        if (__s)
        {
          heap_Free(*(a1 + 8), __s);
        }

        return v19;
      }
    }
  }

  return v19;
}

uint64_t **fExtGetSyll2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  NNFX_logMsg(a1, 3, "Extracting Syllable-to-X boundary features...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v11, v12, v13, v14, v15);
  NNFX_logMsg(a1, 3, "First boundary: %c", v16, v17, v18, v19, v20);
  v21 = heap_Calloc(*(a1 + 8), 1, 4048);
  v27 = v21;
  if (v21)
  {
    *(v21 + 4016) = 24;
    *(v21 + 4024) = a7;
    v28 = heap_Alloc(*(a1 + 8), 192);
    v27[1] = v28;
    if (!v28)
    {
      v62 = " in fExtGetSyll2BdryFeats() allocating feature names";
      goto LABEL_60;
    }

    *v27[1] = stringdup(a1, "Syll2StrGrpLCtInt");
    v27[1][1] = stringdup(a1, "Syll2StrGrpRCtInt");
    v27[1][2] = stringdup(a1, "Syll2StrGrpLCtFloat");
    v27[1][3] = stringdup(a1, "Syll2StrGrpRCtFloat");
    v27[1][4] = stringdup(a1, "Syll2WordLCtInt");
    v27[1][5] = stringdup(a1, "Syll2WordRCtInt");
    v27[1][6] = stringdup(a1, "Syll2WordLCtFloat");
    v27[1][7] = stringdup(a1, "Syll2WordRCtFloat");
    v27[1][8] = stringdup(a1, "Syll2StxGrpLCtInt");
    v27[1][9] = stringdup(a1, "Syll2StxGrpRCtInt");
    v27[1][10] = stringdup(a1, "Syll2StxGrpLCtFloat");
    v27[1][11] = stringdup(a1, "Syll2StxGrpRCtFloat");
    v27[1][12] = stringdup(a1, "Syll2PhraseLCtInt");
    v27[1][13] = stringdup(a1, "Syll2PhraseRCtInt");
    v27[1][14] = stringdup(a1, "Syll2PhraseLCtFloat");
    v27[1][15] = stringdup(a1, "Syll2PhraseRCtFloat");
    v27[1][16] = stringdup(a1, "Syll2PunctLCtInt");
    v27[1][17] = stringdup(a1, "Syll2PunctRCtInt");
    v27[1][18] = stringdup(a1, "Syll2PunctLCtFloat");
    v27[1][19] = stringdup(a1, "Syll2PunctRCtFloat");
    v27[1][20] = stringdup(a1, "Syll2SentLCtInt");
    v27[1][21] = stringdup(a1, "Syll2SentRCtInt");
    v27[1][22] = stringdup(a1, "Syll2SentLCtFloat");
    v27[1][23] = stringdup(a1, "Syll2SentRCtFloat");
    v34 = *(v27 + 1004);
    if (v34 >= 1)
    {
      v35 = v27[1];
      v36 = *(v27 + 1004);
      while (*v35)
      {
        ++v35;
        if (!--v36)
        {
          goto LABEL_7;
        }
      }

      v62 = " in fExtGetSyll2BdryFeats allocating feature stream names.";
      goto LABEL_60;
    }

LABEL_7:
    v37 = heap_Alloc(*(a1 + 8), 8 * v34);
    *v27 = v37;
    if (!v37)
    {
      v62 = " in fExtGetSyll2BdryFeats() trying to malloc-ate feature array.";
      goto LABEL_60;
    }

    LeftCounts = getLeftCounts(a1, a5[1], a5[6]);
    **v27 = LeftCounts;
    if (!LeftCounts)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating LEFT PHONE-TO-STRGRP-BDRY counts.";
      goto LABEL_60;
    }

    RightCounts = getRightCounts(a1, a5[1], a5[6]);
    (*v27)[1] = RightCounts;
    if (!RightCounts)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating RIGHT PHONE-TO-STRGRP-BDRY counts.";
      goto LABEL_60;
    }

    v40 = normalizeCounts(a1, **v27, (*v27)[1], a7, v30, v31, v32, v33);
    (*v27)[2] = v40;
    if (!v40)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating LEFT PHONE-TO-STRGRP-BDRY norm-counts.";
      goto LABEL_60;
    }

    v41 = normalizeCounts(a1, (*v27)[1], **v27, a7, v30, v31, v32, v33);
    (*v27)[3] = v41;
    if (!v41)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating RIGHT PHONE-TO-STRGRP-BDRY norm-counts.";
      goto LABEL_60;
    }

    v42 = getLeftCounts(a1, a5[1], a5[2]);
    (*v27)[4] = v42;
    if (!v42)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-WORD-BDRY counts.";
      goto LABEL_60;
    }

    v43 = getRightCounts(a1, a5[1], a5[2]);
    (*v27)[5] = v43;
    if (!v43)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-WORD-BDRY counts.";
      goto LABEL_60;
    }

    v44 = normalizeCounts(a1, (*v27)[4], (*v27)[5], a7, v30, v31, v32, v33);
    (*v27)[6] = v44;
    if (!v44)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-WORD-BDRY norm-counts.";
      goto LABEL_60;
    }

    v45 = normalizeCounts(a1, (*v27)[5], (*v27)[4], a7, v30, v31, v32, v33);
    (*v27)[7] = v45;
    if (!v45)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-WORD-BDRY norm-counts.";
      goto LABEL_60;
    }

    v46 = getLeftCounts(a1, a5[1], a5[5]);
    (*v27)[8] = v46;
    if (!v46)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-SYNTAX-BDRY counts.";
      goto LABEL_60;
    }

    v47 = getRightCounts(a1, a5[1], a5[5]);
    (*v27)[9] = v47;
    if (!v47)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-SYNTAX-BDRY counts.";
      goto LABEL_60;
    }

    v48 = normalizeCounts(a1, (*v27)[8], (*v27)[9], a7, v30, v31, v32, v33);
    (*v27)[10] = v48;
    if (!v48)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-SYNTAX-BDRY norm-counts.";
      goto LABEL_60;
    }

    v49 = normalizeCounts(a1, (*v27)[9], (*v27)[8], a7, v30, v31, v32, v33);
    (*v27)[11] = v49;
    if (!v49)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-SYNTAX-BDRY norm-counts.";
      goto LABEL_60;
    }

    v50 = getLeftCounts(a1, a5[1], a5[3]);
    (*v27)[12] = v50;
    if (!v50)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-PHRASE-BDRY counts.";
      goto LABEL_60;
    }

    v51 = getRightCounts(a1, a5[1], a5[3]);
    (*v27)[13] = v51;
    if (!v51)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-PHRASE-BDRY counts.";
      goto LABEL_60;
    }

    v52 = normalizeCounts(a1, (*v27)[12], (*v27)[13], a7, v30, v31, v32, v33);
    (*v27)[14] = v52;
    if (!v52)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_60;
    }

    v53 = normalizeCounts(a1, (*v27)[13], (*v27)[12], a7, v30, v31, v32, v33);
    (*v27)[15] = v53;
    if (!v53)
    {
      v62 = " in fExtGetSyll2BdryFeats creating RIGHT SYLL-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_60;
    }

    v54 = getLeftCounts(a1, a5[1], a5[4]);
    (*v27)[16] = v54;
    if (!v54)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-PUNCT-BDRY counts.";
      goto LABEL_60;
    }

    v55 = getRightCounts(a1, a5[1], a5[4]);
    (*v27)[17] = v55;
    if (!v55)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-PUNCT-BDRY counts.";
      goto LABEL_60;
    }

    v56 = normalizeCounts(a1, (*v27)[16], (*v27)[17], a7, v30, v31, v32, v33);
    (*v27)[18] = v56;
    if (!v56)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_60;
    }

    v57 = normalizeCounts(a1, (*v27)[17], (*v27)[16], a7, v30, v31, v32, v33);
    (*v27)[19] = v57;
    if (!v57)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_60;
    }

    v58 = getLeftCounts(a1, a5[1], a5[7]);
    (*v27)[20] = v58;
    if (!v58)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-SENT-BDRY counts.";
      goto LABEL_60;
    }

    v59 = getRightCounts(a1, a5[1], a5[7]);
    (*v27)[21] = v59;
    if (!v59)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-SENT-BDRY counts.";
      goto LABEL_60;
    }

    v60 = normalizeCounts(a1, (*v27)[20], (*v27)[21], a7, v30, v31, v32, v33);
    (*v27)[22] = v60;
    if (!v60)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating LEFT SYLL-TO-SENT-BDRY norm-counts.";
      goto LABEL_60;
    }

    v61 = normalizeCounts(a1, (*v27)[21], (*v27)[20], a7, v30, v31, v32, v33);
    (*v27)[23] = v61;
    if (!v61)
    {
      v62 = " in fExtGetSyll2BdryFeats() creating RIGHT SYLL-TO-SENT-BDRY norm-counts.";
LABEL_60:
      NNFX_logMsg(a1, 0, v62, v29, v30, v31, v32, v33);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetSyll2BdryFeats() trying to mallocate output.", v22, v23, v24, v25, v26);
  }

  return v27;
}

uint64_t **fExtGetStrGrp2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  NNFX_logMsg(a1, 3, "Extracting Stress-Group-to-X boundary features...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v11, v12, v13, v14, v15);
  NNFX_logMsg(a1, 3, "First boundary: %c", v16, v17, v18, v19, v20);
  v21 = heap_Calloc(*(a1 + 8), 1, 4048);
  v27 = v21;
  if (v21)
  {
    *(v21 + 4016) = 8;
    *(v21 + 4024) = a7;
    v28 = heap_Alloc(*(a1 + 8), 64);
    v27[1] = v28;
    if (!v28)
    {
      v46 = " in fExtGetStrGrp2BdryFeats() allocating feature names";
      goto LABEL_28;
    }

    *v27[1] = stringdup(a1, "StrGrp2PhraseLCtInt");
    v27[1][1] = stringdup(a1, "StrGrp2PhraseRCtInt");
    v27[1][2] = stringdup(a1, "StrGrp2PhraseLCtFloat");
    v27[1][3] = stringdup(a1, "StrGrp2PhraseRCtFloat");
    v27[1][4] = stringdup(a1, "StrGrp2SentLCtInt");
    v27[1][5] = stringdup(a1, "StrGrp2SentRCtInt");
    v27[1][6] = stringdup(a1, "StrGrp2SentLCtFloat");
    v27[1][7] = stringdup(a1, "StrGrp2SentRCtFloat");
    v34 = *(v27 + 1004);
    if (v34 >= 1)
    {
      v35 = v27[1];
      v36 = *(v27 + 1004);
      while (*v35)
      {
        ++v35;
        if (!--v36)
        {
          goto LABEL_7;
        }
      }

      v46 = " in fExtGetStrGrp2BdryFeats allocating feature stream names.";
      goto LABEL_28;
    }

LABEL_7:
    v37 = heap_Alloc(*(a1 + 8), 8 * v34);
    *v27 = v37;
    if (!v37)
    {
      v46 = " in fExtGetStrGrp2BdryFeats() trying to malloc-ate feature array.";
      goto LABEL_28;
    }

    LeftCounts = getLeftCounts(a1, a5[6], a5[3]);
    **v27 = LeftCounts;
    if (!LeftCounts)
    {
      v46 = " in fExtGetStrGrp2BdryFeats() creating LEFT STRGRP-TO-PHRASE-BDRY counts.";
      goto LABEL_28;
    }

    RightCounts = getRightCounts(a1, a5[6], a5[3]);
    (*v27)[1] = RightCounts;
    if (!RightCounts)
    {
      v46 = " in fExtGetStrGrp2BdryFeats() creating RIGHT STRGRP-TO-PHRASE-BDRY counts.";
      goto LABEL_28;
    }

    v40 = normalizeCounts(a1, **v27, (*v27)[1], a7, v30, v31, v32, v33);
    (*v27)[2] = v40;
    if (!v40)
    {
      v46 = " in fExtGetStrGrp2BdryFeats() creating LEFT STRGRP-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_28;
    }

    v41 = normalizeCounts(a1, (*v27)[1], **v27, a7, v30, v31, v32, v33);
    (*v27)[3] = v41;
    if (!v41)
    {
      v46 = " in fExtGetStrGrp2BdryFeats() creating RIGHT STRGRP-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_28;
    }

    v42 = getLeftCounts(a1, a5[6], a5[7]);
    (*v27)[4] = v42;
    if (!v42)
    {
      v46 = " in fExtGetStrGrp2BdryFeats() creating LEFT STRGRP-TO-SENT-BDRY counts.";
      goto LABEL_28;
    }

    v43 = getRightCounts(a1, a5[6], a5[7]);
    (*v27)[5] = v43;
    if (!v43)
    {
      v46 = " in fExtGetStrGrp2BdryFeats() creating RIGHT STRGRP-TO-SENT-BDRY counts.";
      goto LABEL_28;
    }

    v44 = normalizeCounts(a1, (*v27)[4], (*v27)[5], a7, v30, v31, v32, v33);
    (*v27)[6] = v44;
    if (!v44)
    {
      v46 = " in fExtGetStrGrp2BdryFeats() creating LEFT SYLL-TO-SENT-BDRY norm-counts.";
      goto LABEL_28;
    }

    v45 = normalizeCounts(a1, (*v27)[5], (*v27)[4], a7, v30, v31, v32, v33);
    (*v27)[7] = v45;
    if (!v45)
    {
      v46 = " in fExtGetStrGrp2BdryFeats() creating RIGHT SYLL-TO-SENT-BDRY norm-counts.";
LABEL_28:
      NNFX_logMsg(a1, 0, v46, v29, v30, v31, v32, v33);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetPhone2BdryFeats() trying to mallocate output.", v22, v23, v24, v25, v26);
  }

  return v27;
}

uint64_t **fExtGetWord2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  NNFX_logMsg(a1, 3, "Extracting Word-to-X boundary features...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v11, v12, v13, v14, v15);
  NNFX_logMsg(a1, 3, "First boundary: %c", v16, v17, v18, v19, v20);
  v21 = heap_Calloc(*(a1 + 8), 1, 4048);
  v27 = v21;
  if (v21)
  {
    *(v21 + 4016) = 16;
    *(v21 + 4024) = a7;
    v28 = heap_Alloc(*(a1 + 8), 128);
    v27[1] = v28;
    if (!v28)
    {
      v54 = " in fExtGetWord2BdryFeats() allocating feature names";
      goto LABEL_44;
    }

    *v27[1] = stringdup(a1, "Word2StxGrpLCtInt");
    v27[1][1] = stringdup(a1, "Word2StxGrpRCtInt");
    v27[1][2] = stringdup(a1, "Word2StxGrpLCtFloat");
    v27[1][3] = stringdup(a1, "Word2StxGrpRCtFloat");
    v27[1][4] = stringdup(a1, "Word2PhraseLCtInt");
    v27[1][5] = stringdup(a1, "Word2PhraseRCtInt");
    v27[1][6] = stringdup(a1, "Word2PhraseLCtFloat");
    v27[1][7] = stringdup(a1, "Word2PhraseRCtFloat");
    v27[1][8] = stringdup(a1, "Word2PunctLCtInt");
    v27[1][9] = stringdup(a1, "Word2PunctRCtInt");
    v27[1][10] = stringdup(a1, "Word2PunctLCtFloat");
    v27[1][11] = stringdup(a1, "Word2PunctRCtFloat");
    v27[1][12] = stringdup(a1, "Word2SentLCtInt");
    v27[1][13] = stringdup(a1, "Word2SentRCtInt");
    v27[1][14] = stringdup(a1, "Word2SentLCtFloat");
    v27[1][15] = stringdup(a1, "Word2SentRCtFloat");
    v34 = *(v27 + 1004);
    if (v34 >= 1)
    {
      v35 = v27[1];
      v36 = *(v27 + 1004);
      while (*v35)
      {
        ++v35;
        if (!--v36)
        {
          goto LABEL_7;
        }
      }

      v54 = " in fExtGetWord2BdryFeats allocating feature stream names.";
      goto LABEL_44;
    }

LABEL_7:
    v37 = heap_Alloc(*(a1 + 8), 8 * v34);
    *v27 = v37;
    if (!v37)
    {
      v54 = " in fExtGetWord2BdryFeats() trying to malloc-ate feature array.";
      goto LABEL_44;
    }

    LeftCounts = getLeftCounts(a1, a5[2], a5[5]);
    **v27 = LeftCounts;
    if (!LeftCounts)
    {
      v54 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-SYNTAX-BDRY counts.";
      goto LABEL_44;
    }

    RightCounts = getRightCounts(a1, a5[2], a5[5]);
    (*v27)[1] = RightCounts;
    if (!RightCounts)
    {
      v54 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-SYNTAX-BDRY counts.";
      goto LABEL_44;
    }

    v40 = normalizeCounts(a1, **v27, (*v27)[1], a7, v30, v31, v32, v33);
    (*v27)[2] = v40;
    if (!v40)
    {
      v54 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-SYNTAX-BDRY norm-counts.";
      goto LABEL_44;
    }

    v41 = normalizeCounts(a1, (*v27)[1], **v27, a7, v30, v31, v32, v33);
    (*v27)[3] = v41;
    if (!v41)
    {
      v54 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-SYNTAX-BDRY norm-counts.";
      goto LABEL_44;
    }

    v42 = getLeftCounts(a1, a5[2], a5[3]);
    (*v27)[4] = v42;
    if (!v42)
    {
      v54 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-PHRASE-BDRY counts.";
      goto LABEL_44;
    }

    v43 = getRightCounts(a1, a5[2], a5[3]);
    (*v27)[5] = v43;
    if (!v43)
    {
      v54 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-PHRASE-BDRY counts.";
      goto LABEL_44;
    }

    v44 = normalizeCounts(a1, (*v27)[4], (*v27)[5], a7, v30, v31, v32, v33);
    (*v27)[6] = v44;
    if (!v44)
    {
      v54 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_44;
    }

    v45 = normalizeCounts(a1, (*v27)[5], (*v27)[4], a7, v30, v31, v32, v33);
    (*v27)[7] = v45;
    if (!v45)
    {
      v54 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_44;
    }

    v46 = getLeftCounts(a1, a5[2], a5[4]);
    (*v27)[8] = v46;
    if (!v46)
    {
      v54 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-PUNCT-BDRY counts.";
      goto LABEL_44;
    }

    v47 = getRightCounts(a1, a5[2], a5[4]);
    (*v27)[9] = v47;
    if (!v47)
    {
      v54 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-PUNCT-BDRY counts.";
      goto LABEL_44;
    }

    v48 = normalizeCounts(a1, (*v27)[8], (*v27)[9], a7, v30, v31, v32, v33);
    (*v27)[10] = v48;
    if (!v48)
    {
      v54 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_44;
    }

    v49 = normalizeCounts(a1, (*v27)[9], (*v27)[8], a7, v30, v31, v32, v33);
    (*v27)[11] = v49;
    if (!v49)
    {
      v54 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_44;
    }

    v50 = getLeftCounts(a1, a5[2], a5[7]);
    (*v27)[12] = v50;
    if (!v50)
    {
      v54 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-SENT-BDRY counts.";
      goto LABEL_44;
    }

    v51 = getRightCounts(a1, a5[2], a5[7]);
    (*v27)[13] = v51;
    if (!v51)
    {
      v54 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-SENT-BDRY counts.";
      goto LABEL_44;
    }

    v52 = normalizeCounts(a1, (*v27)[12], (*v27)[13], a7, v30, v31, v32, v33);
    (*v27)[14] = v52;
    if (!v52)
    {
      v54 = " in fExtGetWord2BdryFeats() creating LEFT WORD-TO-SENT-BDRY norm-counts.";
      goto LABEL_44;
    }

    v53 = normalizeCounts(a1, (*v27)[13], (*v27)[12], a7, v30, v31, v32, v33);
    (*v27)[15] = v53;
    if (!v53)
    {
      v54 = " in fExtGetWord2BdryFeats() creating RIGHT WORD-TO-SENT-BDRY norm-counts.";
LABEL_44:
      NNFX_logMsg(a1, 0, v54, v29, v30, v31, v32, v33);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetWord2BdryFeats() trying to mallocate output.", v22, v23, v24, v25, v26);
  }

  return v27;
}

uint64_t **fExtGetParse2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  NNFX_logMsg(a1, 3, "Extracting Syntax-Group-to-X boundary features...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v11, v12, v13, v14, v15);
  NNFX_logMsg(a1, 3, "First boundary: %c", v16, v17, v18, v19, v20);
  v21 = heap_Calloc(*(a1 + 8), 1, 4048);
  v27 = v21;
  if (v21)
  {
    *(v21 + 4016) = 12;
    *(v21 + 4024) = a7;
    v28 = heap_Alloc(*(a1 + 8), 96);
    v27[1] = v28;
    if (!v28)
    {
      v50 = " in fExtGetParse2BdryFeats() allocating feature names";
      goto LABEL_36;
    }

    *v27[1] = stringdup(a1, "StxGrp2PhraseLCtInt");
    v27[1][1] = stringdup(a1, "StxGrp2PhraseRCtInt");
    v27[1][2] = stringdup(a1, "StxGrp2PhraseLCtFloat");
    v27[1][3] = stringdup(a1, "StxGrp2PhraseRCtFloat");
    v27[1][4] = stringdup(a1, "StxGrp2PunctLCtInt");
    v27[1][5] = stringdup(a1, "StxGrp2PunctRCtInt");
    v27[1][6] = stringdup(a1, "StxGrp2PunctLCtFloat");
    v27[1][7] = stringdup(a1, "StxGrp2PunctRCtFloat");
    v27[1][8] = stringdup(a1, "StxGrp2SentLCtInt");
    v27[1][9] = stringdup(a1, "StxGrp2SentRCtInt");
    v27[1][10] = stringdup(a1, "StxGrp2SentLCtFloat");
    v27[1][11] = stringdup(a1, "StxGrp2SentRCtFloat");
    v34 = *(v27 + 1004);
    if (v34 >= 1)
    {
      v35 = v27[1];
      v36 = *(v27 + 1004);
      while (*v35)
      {
        ++v35;
        if (!--v36)
        {
          goto LABEL_7;
        }
      }

      v50 = " in fExtGetParse2BdryFeats allocating feature stream names.";
      goto LABEL_36;
    }

LABEL_7:
    v37 = heap_Alloc(*(a1 + 8), 8 * v34);
    *v27 = v37;
    if (!v37)
    {
      v50 = " in fExtGetParse2BdryFeats() trying to malloc-ate feature array.";
      goto LABEL_36;
    }

    LeftCounts = getLeftCounts(a1, a5[5], a5[3]);
    **v27 = LeftCounts;
    if (!LeftCounts)
    {
      v50 = " in fExtGetParse2BdryFeats() creating LEFT PARSE-NODE-TO-PHRASE-BDRY counts.";
      goto LABEL_36;
    }

    RightCounts = getRightCounts(a1, a5[5], a5[3]);
    (*v27)[1] = RightCounts;
    if (!RightCounts)
    {
      v50 = " in fExtGetParse2BdryFeats() creating RIGHT PARSE-NODE-TO-PHRASE-BDRY counts.";
      goto LABEL_36;
    }

    v40 = normalizeCounts(a1, **v27, (*v27)[1], a7, v30, v31, v32, v33);
    (*v27)[2] = v40;
    if (!v40)
    {
      v50 = " in fExtGetParse2BdryFeats() creating LEFT PARSE-NODE-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_36;
    }

    v41 = normalizeCounts(a1, (*v27)[1], **v27, a7, v30, v31, v32, v33);
    (*v27)[3] = v41;
    if (!v41)
    {
      v50 = " in fExtGetParse2BdryFeats() creating RIGHT PARSE-NODE-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_36;
    }

    v42 = getLeftCounts(a1, a5[5], a5[4]);
    (*v27)[4] = v42;
    if (!v42)
    {
      v50 = " in fExtGetParse2BdryFeats() creating LEFT PARSE-NODE-TO-PUNCT-BDRY counts.";
      goto LABEL_36;
    }

    v43 = getRightCounts(a1, a5[5], a5[4]);
    (*v27)[5] = v43;
    if (!v43)
    {
      v50 = " in fExtGetParse2BdryFeats() creating RIGHT PARSE-NODE-TO-PUNCT-BDRY counts.";
      goto LABEL_36;
    }

    v44 = normalizeCounts(a1, (*v27)[4], (*v27)[5], a7, v30, v31, v32, v33);
    (*v27)[6] = v44;
    if (!v44)
    {
      v50 = " in fExtGetParse2BdryFeats() creating LEFT PARSE-NODE-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_36;
    }

    v45 = normalizeCounts(a1, (*v27)[5], (*v27)[4], a7, v30, v31, v32, v33);
    (*v27)[7] = v45;
    if (!v45)
    {
      v50 = " in fExtGetParse2BdryFeats() creating RIGHT PARSE-NODE-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_36;
    }

    v46 = getLeftCounts(a1, a5[5], a5[7]);
    (*v27)[8] = v46;
    if (!v46)
    {
      v50 = " in fExtGetParse2BdryFeats() creating LEFT PARSE-NODE-TO-SENT-BDRY counts.";
      goto LABEL_36;
    }

    v47 = getRightCounts(a1, a5[5], a5[7]);
    (*v27)[9] = v47;
    if (!v47)
    {
      v50 = " in fExtGetParse2BdryFeats() creating RIGHT PARSE-NODE-TO-SENT-BDRY counts.";
      goto LABEL_36;
    }

    v48 = normalizeCounts(a1, (*v27)[8], (*v27)[9], a7, v30, v31, v32, v33);
    (*v27)[10] = v48;
    if (!v48)
    {
      v50 = " in fExtGetParse2BdryFeats() creating LEFT PARSE-NODE-TO-SENT-BDRY norm-counts.";
      goto LABEL_36;
    }

    v49 = normalizeCounts(a1, (*v27)[9], (*v27)[8], a7, v30, v31, v32, v33);
    (*v27)[11] = v49;
    if (!v49)
    {
      v50 = " in fExtGetParse2BdryFeats() creating RIGHT PARSE-NODE-TO-SENT-BDRY norm-counts.";
LABEL_36:
      NNFX_logMsg(a1, 0, v50, v29, v30, v31, v32, v33);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetParse2BdryFeats() trying to mallocate output.", v22, v23, v24, v25, v26);
  }

  return v27;
}

uint64_t **fExtGetPhrase2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  NNFX_logMsg(a1, 3, "Extracting Phrase-to-X boundary features...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v11, v12, v13, v14, v15);
  NNFX_logMsg(a1, 3, "First boundary: %c", v16, v17, v18, v19, v20);
  v21 = heap_Calloc(*(a1 + 8), 1, 4048);
  v27 = v21;
  if (v21)
  {
    *(v21 + 4016) = 4;
    *(v21 + 4024) = a7;
    v28 = heap_Alloc(*(a1 + 8), 32);
    v27[1] = v28;
    if (!v28)
    {
      v42 = " in fExtGetPhrase2BdryFeats() allocating feature names";
      goto LABEL_20;
    }

    *v27[1] = stringdup(a1, "Phrase2SentLCtInt");
    v27[1][1] = stringdup(a1, "Phrase2SentRCtInt");
    v27[1][2] = stringdup(a1, "Phrase2SentLCtFloat");
    v27[1][3] = stringdup(a1, "Phrase2SentRCtFloat");
    v34 = *(v27 + 1004);
    if (v34 >= 1)
    {
      v35 = v27[1];
      v36 = *(v27 + 1004);
      while (*v35)
      {
        ++v35;
        if (!--v36)
        {
          goto LABEL_7;
        }
      }

      v42 = " in fExtGetPhrase2BdryFeats allocating feature stream names.";
      goto LABEL_20;
    }

LABEL_7:
    v37 = heap_Alloc(*(a1 + 8), 8 * v34);
    *v27 = v37;
    if (!v37)
    {
      v42 = " in fExtGetPhrase2BdryFeats() trying to malloc-ate feature array.";
      goto LABEL_20;
    }

    LeftCounts = getLeftCounts(a1, *(a5 + 24), *(a5 + 56));
    **v27 = LeftCounts;
    if (!LeftCounts)
    {
      v42 = " in fExtGetPhrase2BdryFeats() creating LEFT PHRASE-NODE-TO-SENT-BDRY counts.";
      goto LABEL_20;
    }

    RightCounts = getRightCounts(a1, *(a5 + 24), *(a5 + 56));
    (*v27)[1] = RightCounts;
    if (!RightCounts)
    {
      v42 = " in fExtGetPhrase2BdryFeats() creating RIGHT PHRASE-NODE-TO-SENT-BDRY counts.";
      goto LABEL_20;
    }

    v40 = normalizeCounts(a1, **v27, (*v27)[1], a7, v30, v31, v32, v33);
    (*v27)[2] = v40;
    if (!v40)
    {
      v42 = " in fExtGetPhrase2BdryFeats() creating LEFT PHRASE-NODE-TO-SENT-BDRY norm-counts.";
      goto LABEL_20;
    }

    v41 = normalizeCounts(a1, (*v27)[1], **v27, a7, v30, v31, v32, v33);
    (*v27)[3] = v41;
    if (!v41)
    {
      v42 = " in fExtGetPhrase2BdryFeats() creating RIGHT PHRASE-NODE-TO-SENT-BDRY norm-counts.";
LABEL_20:
      NNFX_logMsg(a1, 0, v42, v29, v30, v31, v32, v33);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetParse2BdryFeats() trying to mallocate output.", v22, v23, v24, v25, v26);
  }

  return v27;
}

uint64_t **fExtGetPunct2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  NNFX_logMsg(a1, 3, "Extracting Punctuation-to-X boundary features...", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v11, v12, v13, v14, v15);
  NNFX_logMsg(a1, 3, "First boundary: %c", v16, v17, v18, v19, v20);
  v21 = heap_Calloc(*(a1 + 8), 1, 4048);
  v27 = v21;
  if (v21)
  {
    *(v21 + 4016) = 4;
    *(v21 + 4024) = a7;
    v28 = heap_Alloc(*(a1 + 8), 32);
    v27[1] = v28;
    if (!v28)
    {
      v42 = " in fExtGetLexicalFeats() allocating feature names";
      goto LABEL_20;
    }

    *v27[1] = stringdup(a1, "Punct2SentLCtInt");
    v27[1][1] = stringdup(a1, "Punct2SentRCtInt");
    v27[1][2] = stringdup(a1, "Punct2SentLCtFloat");
    v27[1][3] = stringdup(a1, "Punct2SentRCtFloat");
    v34 = *(v27 + 1004);
    if (v34 >= 1)
    {
      v35 = v27[1];
      v36 = *(v27 + 1004);
      while (*v35)
      {
        ++v35;
        if (!--v36)
        {
          goto LABEL_7;
        }
      }

      v42 = " in fExtGetPunct2BdryFeats allocating feature stream names.";
      goto LABEL_20;
    }

LABEL_7:
    v37 = heap_Alloc(*(a1 + 8), 8 * v34);
    *v27 = v37;
    if (!v37)
    {
      v42 = " in fExtGetLexicalFeats() trying to malloc-ate feature array.";
      goto LABEL_20;
    }

    LeftCounts = getLeftCounts(a1, *(a5 + 32), *(a5 + 56));
    **v27 = LeftCounts;
    if (!LeftCounts)
    {
      v42 = " in fExtGetPunct2BdryFeats creating LEFT PUNCT-NODE-TO-SENT-BDRY counts.";
      goto LABEL_20;
    }

    RightCounts = getRightCounts(a1, *(a5 + 32), *(a5 + 56));
    (*v27)[1] = RightCounts;
    if (!RightCounts)
    {
      v42 = " in fExtGetPunct2BdryFeats creating RIGHT PUNCT-NODE-TO-SENT-BDRY counts.";
      goto LABEL_20;
    }

    v40 = normalizeCounts(a1, **v27, (*v27)[1], a7, v30, v31, v32, v33);
    (*v27)[2] = v40;
    if (!v40)
    {
      v42 = " in fExtGetPunct2BdryFeats creating LEFT PUNCT-NODE-TO-SENT-BDRY norm-counts.";
      goto LABEL_20;
    }

    v41 = normalizeCounts(a1, (*v27)[1], **v27, a7, v30, v31, v32, v33);
    (*v27)[3] = v41;
    if (!v41)
    {
      v42 = " in fExtGetPunct2BdryFeats creating RIGHT PUNCT-NODE-TO-SENT-BDRY norm-counts.";
LABEL_20:
      NNFX_logMsg(a1, 0, v42, v29, v30, v31, v32, v33);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetPunct2BdryFeats() trying to mallocate output.", v22, v23, v24, v25, v26);
  }

  return v27;
}

uint64_t **fExtGetVPhone2BdryFeats(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = fExtGetPhone2BdryFeats__(a1, a4, a5, a6, a7, PhoneTierIsVoiced, a7, a8);
  if (result && *(result + 1004) >= 1)
  {
    v9 = result[1];
    do
    {
      v10 = *v9++;
      *v10 = 86;
    }

    while (v9 < &result[1][*(result + 1004)]);
  }

  return result;
}

uint64_t mergePhoneFeaturesAtStateLevel(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x277D85DE8];
  v9 = *(*a2 + 4024);
  v58 = xmmword_26ECCE69E;
  v59[0] = unk_26ECCE6AE;
  *(v59 + 13) = unk_26ECCE6BB;
  if (a4 > 9)
  {
    v10 = " in mergePhoneFeaturesAtStateLevel(). More than 9 states per phone  used";
    goto LABEL_39;
  }

  v11 = a4;
  if (a3 >= 2)
  {
    for (i = 1; i != a3; ++i)
    {
      if (*(a2[i] + 4024) != v9)
      {
        v10 = " in mergePhoneFeaturesAtStateLevel(). Record 0 of length %d cannot be merged with record %d of length %d";
        goto LABEL_39;
      }
    }
  }

  if (a3)
  {
    v15 = 0;
    v16 = a3;
    v17 = a2;
    do
    {
      v18 = *v17++;
      v15 += *(v18 + 4016);
      --v16;
    }

    while (v16);
    v19 = v15 + 1;
  }

  else
  {
    v19 = 1;
  }

  v20 = heap_Calloc(*(a1 + 8), 1, 4048);
  v26 = v20;
  if (v20)
  {
    *(v20 + 4016) = v19;
    *(v20 + 4024) = v9 * v11;
    if (v19 && ((v27 = heap_Calloc(*(a1 + 8), v19, 8), (*(v26 + 8) = v27) == 0) || (v28 = heap_Calloc(*(a1 + 8), *(v26 + 4016), 4), (*(v26 + 4040) = v28) == 0)) || (**(v26 + 8) = stringdup(a1, "StateID")) == 0)
    {
      v10 = " in mergePhoneFeaturesAtStateLevel() allocating feature names";
      goto LABEL_39;
    }

    if (a3)
    {
      v29 = 0;
      v30 = 1;
      do
      {
        v31 = a2[v29];
        v32 = *(v31 + 4016);
        if (*(v31 + 4040))
        {
          if (v32)
          {
            goto LABEL_21;
          }
        }

        else if (v32)
        {
          v36 = heap_Calloc(*(a1 + 8), v32, 4);
          *(a2[v29] + 4040) = v36;
          if (!v36)
          {
            v10 = " in mergePhoneFeaturesAtStateLevel() allocating array";
            goto LABEL_39;
          }

          v31 = a2[v29];
          if (*(v31 + 4016))
          {
            v37 = 0;
            v38 = *(v31 + 4040);
            do
            {
              *(v38 + 4 * v37++) = 1;
              v39 = *(v31 + 4016);
            }

            while (v37 < v39);
            if (v39)
            {
LABEL_21:
              v33 = 0;
              do
              {
                *(*(v26 + 8) + 8 * (v30 + v33)) = *(*(v31 + 8) + 8 * v33);
                v31 = a2[v29];
                v34 = *(v31 + 4040);
                if (v34)
                {
                  v35 = *(v34 + 4 * v33);
                }

                else
                {
                  v35 = 1;
                }

                *(*(v26 + 4040) + 4 * (v30 + v33)) = v35;
                *(v34 + 4 * v33++) = 0;
              }

              while (v33 < *(v31 + 4016));
              v30 += v33;
            }
          }
        }

        ++v29;
      }

      while (v29 != a3);
    }

    if (allocpppFeats(a1, v26, *(v26 + 4016), *(v26 + 4024)))
    {
      v10 = " in mergePhoneFeatures() trying to malloc-ate output.";
      goto LABEL_39;
    }

    if (v9)
    {
      v41 = 0;
      v42 = 0;
      while (1)
      {
        v57 = v41;
        if (v11)
        {
          break;
        }

        v48 = v42;
LABEL_50:
        v41 = v57 + 1;
        v42 = v48;
        if (v57 + 1 == v9)
        {
          goto LABEL_51;
        }
      }

      v43 = &v58;
      v44 = v11;
      while (1)
      {
        v45 = heap_Alloc(*(a1 + 8), 16);
        if (!v45)
        {
          break;
        }

        v46 = v45;
        *(v45 + 8) = 3;
        v47 = heap_Alloc(*(a1 + 8), 5);
        *v46 = v47;
        if (!v47)
        {
          break;
        }

        cstdlib_strcpy(v47, v43);
        v48 = (v42 + 1);
        *(**v26 + 8 * v42) = v46;
        v43 += 5;
        LODWORD(v42) = v42 + 1;
        if (!--v44)
        {
          goto LABEL_50;
        }
      }

      v10 = " in mergePhoneFeatures() while allocating mem for stream state ID.";
LABEL_39:
      NNFX_logMsg(a1, 0, v10, a4, a5, a6, a7, a8);
      return 0;
    }

    else
    {
LABEL_51:
      if (a3)
      {
        v49 = 0;
        v50 = 1;
        do
        {
          v51 = a2[v49];
          if (*(v51 + 4016))
          {
            v52 = 0;
            do
            {
              if (v9)
              {
                v53 = 0;
                v54 = 0;
                do
                {
                  if (v11)
                  {
                    v55 = v54 + v11;
                    v56 = v11;
                    do
                    {
                      *(*(*v26 + 8 * v50) + 8 * v54++) = *(*(*a2[v49] + 8 * v52) + 8 * v53);
                      --v56;
                    }

                    while (v56);
                    v54 = v55;
                  }

                  ++v53;
                }

                while (v53 != v9);
                v51 = a2[v49];
              }

              ++v50;
              ++v52;
            }

            while (v52 < *(v51 + 4016));
          }

          ++v49;
        }

        while (v49 != a3);
      }
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in mergePhoneFeaturesAtStateLevel() trying to mallocate output.", v21, v22, v23, v24, v25);
  }

  return v26;
}

void *freepPhoneTiers(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  if (v4)
  {
    freepTier(a1, v4);
    *a2 = 0;
  }

  v5 = a2[1];
  if (v5)
  {
    freepTier(a1, v5);
    a2[1] = 0;
  }

  v6 = a2[2];
  if (v6)
  {
    freepTier(a1, v6);
    a2[2] = 0;
  }

  v7 = a2[3];
  if (v7)
  {
    freepTier(a1, v7);
    a2[3] = 0;
  }

  v8 = a2[4];
  if (v8)
  {
    freepTier(a1, v8);
    a2[4] = 0;
  }

  v9 = a2[5];
  if (v9)
  {
    freepTier(a1, v9);
    a2[5] = 0;
  }

  v10 = a2[6];
  if (v10)
  {
    freepTier(a1, v10);
    a2[6] = 0;
  }

  v11 = a2[7];
  if (v11)
  {
    freepTier(a1, v11);
    a2[7] = 0;
  }

  v12 = a2[8];
  if (v12)
  {
    freepTier(a1, v12);
    a2[8] = 0;
  }

  v13 = *(a1 + 8);

  return heap_Free(v13, a2);
}

BOOL check_phn_class(uint64_t a1, int a2, int __c)
{
  if (a2 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 16 * a2 + 8);
  return v3 && cstdlib_strchr(*v3, __c) != 0;
}

uint64_t check_lex_feat(uint64_t a1, char *__s1, int a3)
{
  if (a3 == -1)
  {
    return 0;
  }

  v3 = a1 + 16 * a3;
  v5 = *(v3 + 8);
  v4 = (v3 + 8);
  if (v5)
  {
    for (i = 0; i != 4000; i += 8)
    {
      v8 = *(*v4 + i);
      if (!v8)
      {
        break;
      }

      if (!cstdlib_strcmp(__s1, v8))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t **fExtGetPhone2BdryFeats__(uint64_t a1, uint64_t a2, unsigned int **a3, uint64_t a4, uint64_t a5, BOOL (*a6)(int a1), uint64_t a7, uint64_t a8)
{
  v12 = *a3;
  NNFX_logMsg(a1, 3, "Extracting %s-to-X boundary features", a4, a5, a6, a7, a8);
  NNFX_logMsg(a1, 3, "Num pros words: %d", v13, v14, v15, v16, v17);
  NNFX_logMsg(a1, 3, "First boundary: %c", v18, v19, v20, v21, v22);
  v23 = heap_Calloc(*(a1 + 8), 1, 4048);
  v29 = v23;
  if (v23)
  {
    *(v23 + 4016) = 28;
    *(v23 + 4024) = a5;
    v30 = heap_Alloc(*(a1 + 8), 224);
    v29[1] = v30;
    if (!v30)
    {
      v68 = " in fExtGetPhone2BdryFeats() allocating feature names";
      goto LABEL_68;
    }

    *v29[1] = stringdup(a1, "Phone2SyllLCtInt");
    v29[1][1] = stringdup(a1, "Phone2SyllRCtInt");
    v29[1][2] = stringdup(a1, "Phone2SyllLCtFloat");
    v29[1][3] = stringdup(a1, "Phone2SyllRCtFloat");
    v29[1][4] = stringdup(a1, "Phone2StrGrpLCtInt");
    v29[1][5] = stringdup(a1, "Phone2StrGrpRCtInt");
    v29[1][6] = stringdup(a1, "Phone2StrGrpLCtFloat");
    v29[1][7] = stringdup(a1, "Phone2StrGrpRCtFloat");
    v29[1][8] = stringdup(a1, "Phone2WordLCtInt");
    v29[1][9] = stringdup(a1, "Phone2WordRCtInt");
    v29[1][10] = stringdup(a1, "Phone2WordLCtFloat");
    v29[1][11] = stringdup(a1, "Phone2WordRCtFloat");
    v29[1][12] = stringdup(a1, "Phone2StxGrpLCtInt");
    v29[1][13] = stringdup(a1, "Phone2StxGrpRCtInt");
    v29[1][14] = stringdup(a1, "Phone2StxGrpLCtFloat");
    v29[1][15] = stringdup(a1, "Phone2StxGrpRCtFloat");
    v29[1][16] = stringdup(a1, "Phone2PhraseLCtInt");
    v29[1][17] = stringdup(a1, "Phone2PhraseRCtInt");
    v29[1][18] = stringdup(a1, "Phone2PhraseLCtFloat");
    v29[1][19] = stringdup(a1, "Phone2PhraseRCtFloat");
    v29[1][20] = stringdup(a1, "Phone2PunctLCtInt");
    v29[1][21] = stringdup(a1, "Phone2PunctRCtInt");
    v29[1][22] = stringdup(a1, "Phone2PunctLCtFloat");
    v29[1][23] = stringdup(a1, "Phone2PunctRCtFloat");
    v29[1][24] = stringdup(a1, "Phone2SentLCtInt");
    v29[1][25] = stringdup(a1, "Phone2SentRCtInt");
    v29[1][26] = stringdup(a1, "Phone2SentLCtFloat");
    v29[1][27] = stringdup(a1, "Phone2SentRCtFloat");
    v36 = *(v29 + 1004);
    if (v36 >= 1)
    {
      v37 = v29[1];
      v38 = *(v29 + 1004);
      while (*v37)
      {
        ++v37;
        if (!--v38)
        {
          goto LABEL_7;
        }
      }

      v68 = " in fExtGetPhone2BdryFeats__ allocating feature stream names.";
      goto LABEL_68;
    }

LABEL_7:
    v39 = heap_Alloc(*(a1 + 8), 8 * v36);
    *v29 = v39;
    if (!v39)
    {
      v68 = " in fExtGetPhone2BdryFeats() trying to malloc-ate feature array.";
      goto LABEL_68;
    }

    LeftCounts = getLeftCounts_(a1, v12, a3[1], a6);
    **v29 = LeftCounts;
    if (!LeftCounts)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-SYLL-BDRY counts.";
      goto LABEL_68;
    }

    RightCounts = getRightCounts_(a1, v12, a3[1], a6);
    (*v29)[1] = RightCounts;
    if (!RightCounts)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-SYLL-BDRY     counts.";
      goto LABEL_68;
    }

    v42 = normalizeCounts(a1, **v29, (*v29)[1], a5, v32, v33, v34, v35);
    (*v29)[2] = v42;
    if (!v42)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-SYLL-BDRY norm-counts.";
      goto LABEL_68;
    }

    v43 = normalizeCounts(a1, (*v29)[1], **v29, a5, v32, v33, v34, v35);
    (*v29)[3] = v43;
    if (!v43)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-SYLL-BDRY norm-counts.";
      goto LABEL_68;
    }

    v44 = getLeftCounts_(a1, v12, a3[6], a6);
    (*v29)[4] = v44;
    if (!v44)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-STRGRP-BDRY counts.";
      goto LABEL_68;
    }

    v45 = getRightCounts_(a1, v12, a3[6], a6);
    (*v29)[5] = v45;
    if (!v45)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-STRGRP-BDRY counts.";
      goto LABEL_68;
    }

    v46 = normalizeCounts(a1, (*v29)[4], (*v29)[5], a5, v32, v33, v34, v35);
    (*v29)[6] = v46;
    if (!v46)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-STRGRP-BDRY norm-counts.";
      goto LABEL_68;
    }

    v47 = normalizeCounts(a1, (*v29)[5], (*v29)[4], a5, v32, v33, v34, v35);
    (*v29)[7] = v47;
    if (!v47)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-STRGRP-BDRY norm-counts.";
      goto LABEL_68;
    }

    v48 = getLeftCounts_(a1, v12, a3[2], a6);
    (*v29)[8] = v48;
    if (!v48)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-WORD-BDRY counts.";
      goto LABEL_68;
    }

    v49 = getRightCounts_(a1, v12, a3[2], a6);
    (*v29)[9] = v49;
    if (!v49)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-WORD-BDRY counts.";
      goto LABEL_68;
    }

    v50 = normalizeCounts(a1, (*v29)[8], (*v29)[9], a5, v32, v33, v34, v35);
    (*v29)[10] = v50;
    if (!v50)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-WORD-BDRY norm-counts.";
      goto LABEL_68;
    }

    v51 = normalizeCounts(a1, (*v29)[9], (*v29)[8], a5, v32, v33, v34, v35);
    (*v29)[11] = v51;
    if (!v51)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-WORD-BDRY norm-counts.";
      goto LABEL_68;
    }

    v52 = getLeftCounts_(a1, v12, a3[5], a6);
    (*v29)[12] = v52;
    if (!v52)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-SYNTAX-BDRY counts.";
      goto LABEL_68;
    }

    v53 = getRightCounts_(a1, v12, a3[5], a6);
    (*v29)[13] = v53;
    if (!v53)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-SYNTAX-BDRY counts.";
      goto LABEL_68;
    }

    v54 = normalizeCounts(a1, (*v29)[12], (*v29)[13], a5, v32, v33, v34, v35);
    (*v29)[14] = v54;
    if (!v54)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-SYNTAX-BDRY norm-counts.";
      goto LABEL_68;
    }

    v55 = normalizeCounts(a1, (*v29)[13], (*v29)[12], a5, v32, v33, v34, v35);
    (*v29)[15] = v55;
    if (!v55)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-SYNTAX-BDRY norm-counts.";
      goto LABEL_68;
    }

    v56 = getLeftCounts_(a1, v12, a3[3], a6);
    (*v29)[16] = v56;
    if (!v56)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-PHRASE-BDRY counts.";
      goto LABEL_68;
    }

    v57 = getRightCounts_(a1, v12, a3[3], a6);
    (*v29)[17] = v57;
    if (!v57)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-PHRASE-BDRY counts.";
      goto LABEL_68;
    }

    v58 = normalizeCounts(a1, (*v29)[16], (*v29)[17], a5, v32, v33, v34, v35);
    (*v29)[18] = v58;
    if (!v58)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_68;
    }

    v59 = normalizeCounts(a1, (*v29)[17], (*v29)[16], a5, v32, v33, v34, v35);
    (*v29)[19] = v59;
    if (!v59)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-PHRASE-BDRY norm-counts.";
      goto LABEL_68;
    }

    v60 = getLeftCounts_(a1, v12, a3[4], a6);
    (*v29)[20] = v60;
    if (!v60)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-PUNCT-BDRY counts.";
      goto LABEL_68;
    }

    v61 = getRightCounts_(a1, v12, a3[4], a6);
    (*v29)[21] = v61;
    if (!v61)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-PUNCT-BDRY counts.";
      goto LABEL_68;
    }

    v62 = normalizeCounts(a1, (*v29)[20], (*v29)[21], a5, v32, v33, v34, v35);
    (*v29)[22] = v62;
    if (!v62)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_68;
    }

    v63 = normalizeCounts(a1, (*v29)[21], (*v29)[20], a5, v32, v33, v34, v35);
    (*v29)[23] = v63;
    if (!v63)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-PUNCT-BDRY norm-counts.";
      goto LABEL_68;
    }

    v64 = getLeftCounts_(a1, v12, a3[7], a6);
    (*v29)[24] = v64;
    if (!v64)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-SENT-BDRY counts.";
      goto LABEL_68;
    }

    v65 = getRightCounts_(a1, v12, a3[7], a6);
    (*v29)[25] = v65;
    if (!v65)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-SENT-BDRY counts.";
      goto LABEL_68;
    }

    v66 = normalizeCounts(a1, (*v29)[24], (*v29)[25], a5, v32, v33, v34, v35);
    (*v29)[26] = v66;
    if (!v66)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating LEFT PHONE-TO-SENT-BDRY norm-counts.";
      goto LABEL_68;
    }

    v67 = normalizeCounts(a1, (*v29)[25], (*v29)[24], a5, v32, v33, v34, v35);
    (*v29)[27] = v67;
    if (!v67)
    {
      v68 = " in fExtGetPhone2BdryFeats() creating RIGHT PHONE-TO-SENT-BDRY norm-counts.";
LABEL_68:
      NNFX_logMsg(a1, 0, v68, v31, v32, v33, v34, v35);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, " in fExtGetPhone2BdryFeats() trying to mallocate output.", v24, v25, v26, v27, v28);
  }

  return v29;
}

uint64_t BuildSilencePhT(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v13 = heap_Alloc(*(a1 + 8), 24);
  if (!v13)
  {
    NNFX_logMsg(a1, 0, " allocating memory in BuildSilencePhT.", v8, v9, v10, v11, v12);
    return v13;
  }

  if (TierInit(a1, v13, a4, "Phone-level SILENCE tier"))
  {
    v19 = " allocating mem in BuildSilencePhT to hold boundaries.";
LABEL_4:
    v20 = a1;
    v21 = 0;
LABEL_5:
    NNFX_logMsg(v20, v21, v19, v14, v15, v16, v17, v18);
    return 0;
  }

  v23 = heap_Alloc(*(a1 + 8), 2 * a3);
  v21 = v23;
  if (!v23)
  {
    v19 = " allocating memory in BuildSilencePh().";
    v20 = a1;
    goto LABEL_5;
  }

  v24 = a3 - 1;
  if (a3 == 1)
  {
    v29 = 1;
  }

  else
  {
    v25 = (a2 + 8);
    v26 = a3 - 1;
    v27 = v23;
    do
    {
      v28 = *v25++;
      *v27++ = *(v28 + 192) == 1;
      --v26;
    }

    while (v26);
    *(v23 + 2 * v24) = 1;
    if (a3 < 2 || !*(*(a2 + 8 * v24) + 192))
    {
      if (!a3)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v29 = 0;
    v24 = a3 - 2;
  }

  *(v23 + 2 * v24) = v29;
LABEL_19:
  v30 = 0;
  v31 = 0;
  v32 = a3;
  v33 = *(v13 + 8);
  do
  {
    v34 = *(*(a2 + 8 * v30) + 144) - 1;
    if (*(*(a2 + 8 * v30) + 144) != 1)
    {
      v35 = v34 + v31;
      do
      {
        *(v33 + 2 * v31++) = 0;
        --v34;
      }

      while (v34);
      v31 = v35;
    }

    a3 = v31 + 1;
    *(v33 + 2 * v31++) = *(v23 + 2 * v30++);
  }

  while (v30 != v32);
LABEL_25:
  heap_Free(*(a1 + 8), v23);
  if (a3 != a4)
  {
    v19 = ": %d phones processed, but total %d phones expected in BuildStressGroupPhT.";
    goto LABEL_4;
  }

  v36 = 0;
  if (a4)
  {
    v37 = *(v13 + 8);
    v38 = a4;
    do
    {
      if (*v37++)
      {
        ++v36;
      }

      --v38;
    }

    while (v38);
  }

  *(v13 + 4) = v36;
  return v13;
}

uint64_t allocpppFeats(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4)
{
  v8 = a3;
  v9 = heap_Calloc(*(a1 + 8), a3, 8);
  if (v9)
  {
    v10 = v9;
    *a2 = v9;
    if (!a3)
    {
      return 0;
    }

    v11 = v9 + 8 * v8;
    while (1)
    {
      v12 = heap_Calloc(*(a1 + 8), a4, 8);
      *v10 = v12;
      if (!v12)
      {
        break;
      }

      if (++v10 >= v11)
      {
        return 0;
      }
    }

    freepppFeats(a1, *a2, a3, a4);
  }

  return 1;
}

void *freepppFeats(void *result, uint64_t a2, unsigned int a3, unsigned int a4)
{
  if (a2)
  {
    v5 = result;
    if (a3)
    {
      v7 = a3;
      v8 = a2;
      do
      {
        freeppFeats(v5, *v8, a4, 1);
        *v8++ = 0;
        --v7;
      }

      while (v7);
    }

    v9 = v5[1];

    return heap_Free(v9, a2);
  }

  return result;
}

void *freeppFeats(void *result, uint64_t a2, unsigned int a3, int a4)
{
  if (a2)
  {
    v5 = result;
    if (a3)
    {
      v7 = a3;
      v8 = a2;
      do
      {
        if (a4 && *v8)
        {
          freepFeat(v5, *v8);
          *v8 = 0;
        }

        ++v8;
        --v7;
      }

      while (v7);
    }

    v9 = v5[1];

    return heap_Free(v9, a2);
  }

  return result;
}

void *freepFeat(void *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    if (*(a2 + 8) == 3)
    {
      v4 = *a2;
      if (*a2)
      {
        heap_Free(result[1], v4);
        *a2 = 0;
      }
    }

    v5 = v3[1];

    return heap_Free(v5, a2);
  }

  return result;
}

void *freepTier(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    heap_Free(*(a1 + 8), v4);
    *(a2 + 16) = 0;
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    heap_Free(*(a1 + 8), v5);
    *(a2 + 8) = 0;
  }

  v6 = *(a1 + 8);

  return heap_Free(v6, a2);
}

void *TrieIntInit(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *TrieIntFree(void *result, uint64_t a2)
{
  if (a2 && *(a2 + 8))
  {
    v3 = result;
    for (i = 0; i != 2048; i += 8)
    {
      TrieIntFree(v3, *(*(a2 + 8) + i));
      heap_Free(v3[1], *(*(a2 + 8) + i));
    }

    result = heap_Free(v3[1], *(a2 + 8));
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t TrieSet(uint64_t a1, uint64_t a2, unsigned int a3)
{
  result = *(a2 + 8);
  if (result || (result = heap_Calloc(*(a1 + 8), 256, 8), (*(a2 + 8) = result) != 0))
  {
    result = *(result + 8 * a3);
    if (!result)
    {
      *(*(a2 + 8) + 8 * a3) = heap_Alloc(*(a1 + 8), 16);
      v7 = *(*(a2 + 8) + 8 * a3);
      if (v7)
      {
        *v7 = 0;
        v7[1] = 0;
        return *(*(a2 + 8) + 8 * a3);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t TrieIntAdd_(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, int a4, int a5)
{
  v5 = *a3;
  if (!*a3)
  {
    return 1;
  }

  v7 = a2;
  if (a4)
  {
    v9 = a4 - 1;
    for (i = a3 + 1; ; ++i)
    {
      if (v5)
      {
        a2 = TrieSet(a1, a2, v5);
        if (!a2)
        {
          break;
        }
      }

      if (!v9)
      {
        goto LABEL_8;
      }

      v11 = *i;
      v5 = v11;
      --v9;
    }

    return 1;
  }

  else
  {
LABEL_8:
    result = 0;
    *a2 = -1;
    a2[1] = a5;
    ++*v7;
  }

  return result;
}

uint64_t TrieIntAdd(uint64_t a1, _DWORD *a2, char *__s, int a4)
{
  v8 = cstdlib_strlen(__s);

  return TrieIntAdd_(a1, a2, __s, v8, a4);
}

BOOL TrieIntGet_(uint64_t a1, _BYTE *a2, int a3, _DWORD *a4)
{
  if (a3)
  {
    while (1)
    {
      if (*a2)
      {
        if (!a1)
        {
          return 1;
        }

        v4 = *(a1 + 8);
        if (!v4)
        {
          return 1;
        }

        a1 = *(v4 + 8 * *a2);
        if (!a1)
        {
          return 1;
        }
      }

      ++a2;
      if (!--a3)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    *a4 = *(a1 + 4);
    return *a1 != -1;
  }
}

BOOL TrieIntGet(uint64_t a1, char *__s, _DWORD *a3)
{
  v6 = cstdlib_strlen(__s);

  return TrieIntGet_(a1, __s, v6, a3);
}

void *TierClear(void *result, void *a2)
{
  v3 = result;
  *a2 = 0;
  v4 = a2[1];
  if (v4)
  {
    result = heap_Free(result[1], v4);
  }

  a2[1] = 0;
  v5 = a2[2];
  if (v5)
  {
    result = heap_Free(v3[1], v5);
  }

  a2[2] = 0;
  return result;
}

uint64_t TierInit(uint64_t a1, int *__b, int a3, char *a4)
{
  cstdlib_memset(__b, 0, 0x18uLL);
  TierClear(a1, __b);
  if (a4)
  {
    *(__b + 2) = stringdup(a1, a4);
  }

  if (a3 < 1)
  {
    return 0;
  }

  *__b = a3;
  *(__b + 1) = 0;
  v8 = heap_Calloc(*(a1 + 8), a3, 2);
  *(__b + 1) = v8;
  if (!v8)
  {
    return 1;
  }

  v9 = v8 + 2 * *__b;
  if (!*(v9 - 2))
  {
    ++__b[1];
  }

  result = 0;
  *(v9 - 2) = 1;
  return result;
}

uint64_t TierAddBoundary(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (!*(v2 + 2 * a2))
  {
    ++*(result + 4);
  }

  *(v2 + 2 * a2) = 1;
  return result;
}

uint64_t TierSetBoundary(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8);
  if (a3 && !*(v3 + 2 * a2))
  {
    v4 = 1;
LABEL_7:
    *(result + 4) += v4;
    goto LABEL_8;
  }

  if (!a3 && *(v3 + 2 * a2))
  {
    v4 = -1;
    goto LABEL_7;
  }

LABEL_8:
  *(v3 + 2 * a2) = a3;
  return result;
}

uint64_t TierNumItems(_DWORD *a1)
{
  if (*a1)
  {
    return a1[1];
  }

  else
  {
    return 0;
  }
}

uint64_t TierAddBoundaries(unsigned int *a1, uint64_t a2)
{
  v2 = 1;
  if (a1 && a2)
  {
    v3 = *a1;
    if (v3 == *a2)
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(a2 + 8);
        v6 = 2 * v3;
        do
        {
          if (*(v5 + v4))
          {
            v7 = *(a1 + 1);
            if (!*(v7 + v4))
            {
              ++a1[1];
            }

            *(v7 + v4) = 1;
          }

          v4 += 2;
        }

        while (v6 != v4);
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return v2;
}

uint64_t leftMostSupraBoundary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != *a3)
  {
    v19 = "Sub- and supra-tiers contain different number of elements.\n";
LABEL_11:
    NNFX_logMsg(a1, 0, v19, a4, a5, a6, a7, a8);
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 4) <= a4)
  {
    NNFX_logMsg(a1, 0, "outside range [0-%d] in sub-tier ", a4, a5, a6, a7, a8);
    if (cstdlib_strlen(*(a2 + 16)))
    {
      v25 = 1;
      do
      {
        NNFX_logMsg(a1, 0, "%c", v20, v21, v22, v23, v24);
      }

      while (cstdlib_strlen(*(a2 + 16)) > v25++);
    }

    return 0xFFFFFFFFLL;
  }

  ElementInGroup = lastElementInGroup(a1, a2, a4, a4, a5, a6, a7, a8);
  if (ElementInGroup == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = ElementInGroup;
  while (1)
  {
    result = v17;
    if (v17 < 1)
    {
      return result;
    }

    --v17;
    if (*(*(a3 + 8) + 2 * result - 2))
    {
      if (result == 1)
      {
        return 1;
      }

      if (*(*(a2 + 8) + 2 * v17))
      {
        return result;
      }

      NNFX_logMsg(a1, 0, "ERROR::tiers:: in leftMostSupraBoundary. Left-most boundary found in supra-tier is not ", v12, v13, v14, v15, v16);
      v19 = "aligned with a boundary %d on the sub-tier.\n";
      goto LABEL_11;
    }
  }
}

uint64_t lastElementInGroup(uint64_t a1, unsigned int *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2[1] <= a3)
  {
    NNFX_logMsg(a1, 0, "trying to access boundary %d beyond last boundary %d in tier ", a4, a5, a6, a7, a8);
    if (**(a2 + 2))
    {
      v18 = 1;
      do
      {
        NNFX_logMsg(a1, 0, "%c", v13, v14, v15, v16, v17);
      }

      while (*(*(a2 + 2) + v18++));
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v9 = *a2;
    if (v9)
    {
      result = 0;
      v11 = -1;
      while (1)
      {
        if (*(*(a2 + 1) + 2 * result))
        {
          ++v11;
        }

        if (v11 == a3)
        {
          break;
        }

        if (v9 == ++result)
        {
          return 0;
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

uint64_t rightMostSupraBoundary(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 != *a3)
  {
    v19 = "Sub- and supra-tiers contain different number of elements.\n";
    goto LABEL_12;
  }

  if (*(a2 + 4) <= a4)
  {
    NNFX_logMsg(a1, 0, "ERROR:tiers::trying to access boundary %d ", a4, a5, a6, a7, a8);
    NNFX_logMsg(a1, 0, "outside range [0-%d] in sub-tier ", v20, v21, v22, v23, v24);
    if (cstdlib_strlen(*(a2 + 16)))
    {
      v30 = 1;
      do
      {
        NNFX_logMsg(a1, 0, "%c", v25, v26, v27, v28, v29);
      }

      while (cstdlib_strlen(*(a2 + 16)) > v30++);
    }

    return 0xFFFFFFFFLL;
  }

  result = lastElementInGroup(a1, a2, a4, a4, a5, a6, a7, a8);
  if (result != -1)
  {
    if (result < *a3)
    {
      v17 = (*(a3 + 1) + 2 * result);
      while (!*v17++)
      {
        result = (result + 1);
        if (*a3 == result)
        {
          result = *a3;
          break;
        }
      }
    }

    if (!*(*(a2 + 8) + 2 * result))
    {
      NNFX_logMsg(a1, 0, "ERROR::tiers:: in rightMostSupraBoundary. Right-most boundary found in supra-tier is not ", v12, v13, v14, v15, v16);
      v19 = "aligned with a boundary on the sub-tier.\n";
LABEL_12:
      NNFX_logMsg(a1, 0, v19, a4, a5, a6, a7, a8);
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t getLeftCounts_(uint64_t a1, unsigned int *a2, _DWORD *a3, BOOL (*a4)(int a1))
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = TierIsBoundary;
  }

  v6 = *a2;
  if (v6 != *a3)
  {
    return 0;
  }

  v7 = a3;
  v14 = heap_Calloc(*(a1 + 8), v6, 8);
  if (v14)
  {
    LODWORD(v15) = *a2;
    if (*a2)
    {
      v16 = 0;
      while (1)
      {
        v17 = heap_Alloc(*(a1 + 8), 16);
        if (!v17)
        {
          break;
        }

        v17[2] = 0;
        *v17 = 0;
        *(v14 + 8 * v16++) = v17;
        v15 = *a2;
        if (v16 >= v15)
        {
          goto LABEL_10;
        }
      }

      v32 = ":: in getLeftCounts while allocating mem for stream 0 at element %d.\n";
      goto LABEL_33;
    }

LABEL_10:
    if (a2[1])
    {
      v18 = 0;
      v19 = -1;
      v34 = v7;
      while (1)
      {
        ElementInGroup = firstElementInGroup(a1, a2, v18, v9, v10, v11, v12, v13);
        if (ElementInGroup == -1)
        {
          v32 = ":: in getLeftCounts. Cannot find valid start of group %d on source (sub) tier.";
          goto LABEL_33;
        }

        v21 = ElementInGroup;
        v22 = lastElementInGroup(a1, a2, v18, v9, v10, v11, v12, v13);
        if (v22 == -1)
        {
          v32 = ":: in getLeftCount. Cannot find valid end of group %d on source (sub) tier.";
          goto LABEL_33;
        }

        if (v21 != v19 + 1)
        {
          v32 = ":: in getLeftCount. First element in group %d does not follow last processed item.\n";
          goto LABEL_33;
        }

        v23 = v22;
        v24 = leftMostSupraBoundary(a1, a2, v7, v18, v10, v11, v12, v13);
        if (v24 == -1)
        {
          break;
        }

        v25 = 0;
        v26 = v23 - v24;
        if (v23 > v24)
        {
          v27 = 2 * v24;
          do
          {
            v25 += (v5)(*(*(a2 + 1) + v27));
            v27 += 2;
            --v26;
          }

          while (v26);
        }

        if (v21 <= v23)
        {
          v28 = (v14 + 8 * v21);
          v29 = v23 - v21 + 1;
          do
          {
            v30 = *v28++;
            *v30 = v25;
            --v29;
          }

          while (v29);
        }

        v18 = (v18 + 1);
        v19 = v23;
        v7 = v34;
        if (v18 >= a2[1])
        {
          LODWORD(v15) = *a2;
          v31 = v23 + 1;
          goto LABEL_27;
        }
      }

      v32 = ":: in getLeftCounts. Cannot find beginning of supra-group for boundary %d.\n";
      goto LABEL_33;
    }

    v31 = 1;
LABEL_27:
    if (v31 != v15)
    {
      v32 = ":: in getLeftCount. Last item processed not the same as last element in tier.\n";
LABEL_33:
      NNFX_logMsg(a1, 0, v32, v9, v10, v11, v12, v13);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, ":: in getLeftCounts allocating memoery for ppFeat.\n", v9, v10, v11, v12, v13);
  }

  return v14;
}

uint64_t firstElementInGroup(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 4) <= a3)
  {
    NNFX_logMsg(a1, 0, "ERROR::tiers::trying to access boundary %d beyond last boundary %d in tier ", a4, a5, a6, a7, a8);
    if (**(a2 + 16))
    {
      v19 = 1;
      do
      {
        NNFX_logMsg(a1, 0, "%c", v14, v15, v16, v17, v18);
      }

      while (*(*(a2 + 16) + v19++));
    }

    return 0xFFFFFFFFLL;
  }

  result = 0;
  v11 = *a2;
  if (a3 && v11)
  {
    v12 = 0;
    v13 = -1;
    while (1)
    {
      if (*(*(a2 + 8) + 2 * v12))
      {
        ++v13;
      }

      if (v13 == a3 - 1)
      {
        break;
      }

      if (v11 == ++v12)
      {
        result = 0;
        goto LABEL_15;
      }
    }

    result = (v12 + 1);
  }

LABEL_15:
  if (result >= v11)
  {
    NNFX_logMsg(a1, 0, "ERROR::tiers::trying to return an initial index exceeding the number of elements in tier\n", a4, a5, a6, a7, a8);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t getRightCounts_(uint64_t a1, unsigned int *a2, unsigned int *a3, BOOL (*a4)(int a1))
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = TierIsBoundary;
  }

  v6 = *a2;
  if (v6 != *a3)
  {
    return 0;
  }

  v7 = a3;
  v14 = heap_Calloc(*(a1 + 8), v6, 8);
  if (v14)
  {
    LODWORD(v15) = *a2;
    if (*a2)
    {
      v16 = 0;
      while (1)
      {
        v17 = heap_Alloc(*(a1 + 8), 16);
        if (!v17)
        {
          break;
        }

        v17[2] = 0;
        *v17 = 0;
        *(v14 + 8 * v16++) = v17;
        v15 = *a2;
        if (v16 >= v15)
        {
          goto LABEL_10;
        }
      }

      v32 = ":: in getLeftCounts while allocating mem for stream 0 at element %d.\n";
      goto LABEL_34;
    }

LABEL_10:
    if (a2[1])
    {
      v18 = 0;
      v19 = -1;
      v34 = v7;
      while (1)
      {
        ElementInGroup = firstElementInGroup(a1, a2, v18, v9, v10, v11, v12, v13);
        if (ElementInGroup == -1)
        {
          v32 = ":: in getLeftCounts. Cannot find valid start of group %d on source (sub) tier.";
          goto LABEL_34;
        }

        v21 = ElementInGroup;
        v22 = lastElementInGroup(a1, a2, v18, v9, v10, v11, v12, v13);
        if (v22 == -1)
        {
          v32 = ":: in getLeftCount. Cannot find valid end of group %d on source (sub) tier.";
          goto LABEL_34;
        }

        if (v21 != v19 + 1)
        {
          v32 = ":: in getLeftCount. First element in group %d does not follow last processed item.\n";
          goto LABEL_34;
        }

        v23 = v22;
        v24 = rightMostSupraBoundary(a1, a2, v7, v18, v10, v11, v12, v13);
        if (v24 == -1)
        {
          break;
        }

        if (v23 <= v24)
        {
          v25 = 0;
          v26 = 2 * v23;
          v27 = v24 - v23 + 1;
          do
          {
            v25 += (v5)(*(*(a2 + 1) + v26));
            v26 += 2;
            --v27;
          }

          while (v27);
        }

        else
        {
          v25 = 0;
        }

        if (v21 <= v23)
        {
          v28 = (v14 + 8 * v21);
          v29 = v23 - v21 + 1;
          do
          {
            v30 = *v28++;
            *v30 = v25;
            --v29;
          }

          while (v29);
        }

        v18 = (v18 + 1);
        v19 = v23;
        v7 = v34;
        if (v18 >= a2[1])
        {
          LODWORD(v15) = *a2;
          v31 = v23 + 1;
          goto LABEL_28;
        }
      }

      v32 = ":: in getRightCounts. Cannot find end of supra-group for boundary %d.";
      goto LABEL_34;
    }

    v31 = 1;
LABEL_28:
    if (v31 != v15)
    {
      v32 = ":: in getLeftCount. Last item processed not the same as last element in tier.\n";
LABEL_34:
      NNFX_logMsg(a1, 0, v32, v9, v10, v11, v12, v13);
      return 0;
    }
  }

  else
  {
    NNFX_logMsg(a1, 0, ":: in getLeftCounts allocating memoery for ppFeat.\n", v9, v10, v11, v12, v13);
  }

  return v14;
}

uint64_t normalizeCounts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  if (a2 && a3 && a4)
  {
    if (*(*a2 + 8))
    {
      v12 = ":: in normalizeCounts. Input feature stream #1 is not of type intType.";
    }

    else if (*(*a3 + 8))
    {
      v12 = ":: in normalizeCounts. Input feature stream #2 is not of type intType.";
    }

    else
    {
      v14 = a4;
      v8 = heap_Calloc(*(a1 + 8), a4, 8);
      if (!v8)
      {
        NNFX_logMsg(a1, 0, ":: in normalizeCounts allocating memory for ppNormFeats.", v15, v16, v17, v18, v19);
        return v8;
      }

      v20 = 0;
      while (1)
      {
        v21 = heap_Alloc(*(a1 + 8), 16);
        if (!v21)
        {
          break;
        }

        *(v21 + 8) = 1;
        v22 = **(a2 + 8 * v20);
        v23 = **(a3 + 8 * v20) + v22;
        if (v23 < 1)
        {
          v24 = 0.0;
        }

        else
        {
          v24 = v22 / v23;
        }

        *v21 = v24;
        *(v8 + 8 * v20++) = v21;
        if (v14 == v20)
        {
          return v8;
        }
      }

      v12 = ":: in getLeftCounts while allocating mem for stream 0 at element %d.";
    }

    NNFX_logMsg(a1, 0, v12, a4, a5, a6, a7, a8);
    return 0;
  }

  return v8;
}

BOOL get4Counts(uint64_t a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  *a4 = getLeftCounts_(a1, a2, a3, TierIsBoundary);
  RightCounts = getRightCounts_(a1, a2, a3, TierIsBoundary);
  a4[1] = RightCounts;
  a4[2] = normalizeCounts(a1, *a4, RightCounts, *a2, v9, v10, v11, v12);
  v17 = normalizeCounts(a1, a4[1], *a4, *a2, v13, v14, v15, v16);
  a4[3] = v17;
  if (!*a4 || !a4[1])
  {
    return 1;
  }

  if (a4[2])
  {
    return v17 == 0;
  }

  return 1;
}

uint64_t SymTabInit(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

void *SymTabFree(void *result, int *a2)
{
  if (a2)
  {
    v3 = *(a2 + 1);
    if (v3)
    {
      v4 = result;
      if (*a2 >= 1)
      {
        v5 = 0;
        v6 = 0;
        do
        {
          TrieIntFree(v4, *(a2 + 1) + v5);
          ++v6;
          v5 += 16;
        }

        while (v6 < *a2);
        v3 = *(a2 + 1);
      }

      result = heap_Free(v4[1], v3);
      *(a2 + 1) = 0;
    }
  }

  return result;
}

uint64_t SymTabReadBuf(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v35[128] = *MEMORY[0x277D85DE8];
  bzero(__dst, 0x800uLL);
  SymTabFree(a1, a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  v30 = a4;
  v9 = heap_Calloc(*(a1 + 8), a4, 16);
  v32 = a2;
  *(a2 + 8) = v9;
  if (!v9)
  {
    return 1;
  }

  if (a4 < 1)
  {
    v17 = 0;
LABEL_25:
    v29 = *(*a5 + 4016) - v17;
    *(*a5 + 4020) = v29;
    if (*v32 != v29)
    {
      NNFX_logMsg(a1, 0, "ERROR::nnfeatextract: Symbol table contains %d entries while number of active features is %d.\n", v10, v11, v12, v13, v14);
    }

    return 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    LODWORD(v18) = 0;
    v19 = __dst;
    v20 = v35;
    v33 = -1;
    while (1)
    {
      v21 = v20;
      cstdlib_strcpy(v19, *(a3 + 8 * v15));
      v22 = cstdlib_strrchr(v19, 10);
      if (v22)
      {
        *v22 = 0;
      }

      v23 = cstdlib_strchr(v19, 32);
      if (v23)
      {
        *v23 = 0;
      }

      v24 = cstdlib_strchr(v19, 9);
      if (v24)
      {
        *v24 = 0;
      }

      v25 = cstdlib_strchr(v19, 61);
      v26 = v25;
      if (v25)
      {
        *v25 = 0;
        v26 = v25 + 1;
      }

      if (!*v19)
      {
        return 2;
      }

      if (cstdlib_strcmp(v19, v21))
      {
        v27 = *a5;
        if (v18 < *(*a5 + 4016))
        {
          v18 = v18;
          do
          {
            if (!cstdlib_strcmp(*(*(v27 + 8) + 8 * v18), v19))
            {
              break;
            }

            NNFX_logMsg(a1, 3, "Missing feature: %s", v10, v11, v12, v13, v14);
            v27 = *a5;
            *(*a5 + 4 * v18++ + 16) = 0;
            ++v17;
          }

          while (v18 < *(v27 + 4016));
        }

        NNFX_logMsg(a1, 3, "\nsymtab:%s  feat:%s", v10, v11, v12, v13, v14);
        v16 = 0;
        *(*a5 + 4 * v18 + 16) = 1;
        LODWORD(v18) = v18 + 1;
        ++v33;
        ++*v32;
      }

      if (v26)
      {
        TrieIntAdd(a1, (*(v32 + 8) + 16 * v33), v26, ++v16);
      }

      ++v15;
      v20 = v19;
      v19 = v21;
      if (v15 == v30)
      {
        goto LABEL_25;
      }
    }
  }
}

uint64_t SymTabReadBufOnly(uint64_t a1, uint64_t a2, const char **a3, int a4)
{
  v22[128] = *MEMORY[0x277D85DE8];
  bzero(__dst, 0x800uLL);
  v8 = a4;
  v9 = heap_Calloc(*(a1 + 8), a4, 16);
  *(a2 + 8) = v9;
  if (!v9)
  {
    return 1;
  }

  if (a4 < 1)
  {
    return 0;
  }

  v10 = 0;
  v11 = __dst;
  v12 = v22;
  v13 = -1;
  while (1)
  {
    v14 = v12;
    cstdlib_strcpy(v11, *a3);
    v15 = cstdlib_strrchr(v11, 10);
    if (v15)
    {
      *v15 = 0;
    }

    v16 = cstdlib_strchr(v11, 32);
    if (v16)
    {
      *v16 = 0;
    }

    v17 = cstdlib_strchr(v11, 9);
    if (v17)
    {
      *v17 = 0;
    }

    v18 = cstdlib_strchr(v11, 61);
    v19 = v18;
    if (v18)
    {
      *v18 = 0;
      v19 = v18 + 1;
    }

    if (!*v11)
    {
      break;
    }

    if (cstdlib_strcmp(v11, v14))
    {
      v10 = 0;
      ++v13;
      ++*a2;
    }

    if (v19)
    {
      TrieIntAdd(a1, (*(a2 + 8) + 16 * v13), v19, ++v10);
    }

    ++a3;
    v12 = v11;
    v11 = v14;
    if (!--v8)
    {
      return 0;
    }
  }

  return 2;
}

uint64_t SymTabToIntInplace(uint64_t a1, int *a2, unsigned __int8 ****a3, int a4, int a5, int a6, unsigned __int8 a7)
{
  v7 = *a2;
  if (a4 < 1)
  {
    v24 = 1;
  }

  else
  {
    v26 = *a2;
    v27 = a4;
    v12 = 0;
    v13 = a6;
    v28 = a6;
    v14 = 16 * a6;
    v15 = 1;
    v16 = a4;
    do
    {
      if (v13 >= *a2)
      {
        break;
      }

      v17 = *(a2 + 1);
      if (*(v17 + v14) <= 0)
      {
        ++v12;
      }

      else
      {
        v23 = SymTabToIntInplace_(a1, v17 + v14, *a3, a5, a7);
        if (v23 >= 1)
        {
          NNFX_logMsg(a1, 1, "::NN unroll:  %d/%d symbols not found in symbol table for feature %d.\n", v18, v19, v20, v21, v22);
        }

        v12 = v12 + a5 - v23;
      }

      ++v15;
      v14 += 16;
      ++v13;
      ++a3;
      --v16;
    }

    while (v16);
    v24 = v12 < 1;
    a6 = v28;
    v7 = v26;
    a4 = v27;
  }

  return (a6 + a4 > v7) | v24;
}

uint64_t SymTabToIntInplace_(uint64_t a1, uint64_t a2, unsigned __int8 ***a3, int a4, unsigned __int8 a5)
{
  *__s = 0;
  v17 = 0;
  if (a4 >= 1)
  {
    v5 = a3;
    v8 = 0;
    v9 = 0;
    v10 = a5;
    v11 = &a3[a4];
    while (1)
    {
      v12 = *v5;
      if (*v5)
      {
        v13 = v12[2];
        if (v13 >= 2)
        {
          break;
        }
      }

LABEL_19:
      if (++v5 >= v11)
      {
        return v8;
      }
    }

    if (v13 == 2)
    {
      __s[0] = *v12;
      v15 = TrieIntGet(a2, __s, &v17);
      v12 = *v5;
      if (**v5 == v10)
      {
LABEL_11:
        v9 = 0;
        v17 = 0;
LABEL_15:
        if (v12[2] == 3 && *v12)
        {
          heap_Free(*(a1 + 8), *v12);
          *v12 = 0;
          v12 = *v5;
        }

        *v12 = v17;
        *(*v5 + 2) = 0;
        goto LABEL_19;
      }

      v9 = v15;
    }

    else if (v13 == 3)
    {
      v9 = TrieIntGet(a2, *v12, &v17);
      v12 = *v5;
      v14 = **v5;
      if (*v14 == v10 && !v14[1])
      {
        goto LABEL_11;
      }
    }

    if (v9)
    {
      v17 = 0;
      v8 = (v8 + 1);
    }

    goto LABEL_15;
  }

  return 0;
}

uint64_t SymTabToIntInplaceActive(uint64_t a1, int *a2, uint64_t *a3, int a4, unsigned __int8 a5)
{
  v6 = *a3;
  v7 = *(*a3 + 4020);
  v8 = *a2;
  if (*(*a3 + 4016) < 1)
  {
    v23 = 1;
  }

  else
  {
    v25 = *a2;
    v26 = *(*a3 + 4020);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      if (a4 + v13 >= *a2)
      {
        break;
      }

      if (*(v6 + 4 * v13 + 16))
      {
        v16 = *(a2 + 1);
        if (*(v16 + 16 * (v15 + a4)) <= 0)
        {
          ++v14;
        }

        else
        {
          v22 = SymTabToIntInplace_(a1, v16 + 16 * v15 + 16 * a4, *(*v6 + 8 * v13), *(v6 + 4024), a5);
          if (v22 >= 1)
          {
            NNFX_logMsg(a1, 1, "::NN unroll:  %d/%d symbols not found in symbol table for feature %d.\n", v17, v18, v19, v20, v21);
          }

          v6 = *a3;
          v14 = v14 - v22 + *(*a3 + 4024);
        }

        ++v15;
      }

      ++v13;
    }

    while (v13 < *(v6 + 4016));
    v23 = v14 < 1;
    v8 = v25;
    v7 = v26;
  }

  return (v7 + a4 > v8) | v23;
}

uint64_t unrollNnFeatures(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t *a4, _DWORD *a5)
{
  v10 = *a2;
  v11 = *(*a2 + 1005);
  v12 = *(*a2 + 1006);
  if (v11 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    v14 = *(a3 + 8);
    do
    {
      v16 = *v14;
      v14 += 4;
      v15 = v16;
      if (v16 <= 1)
      {
        v15 = 1;
      }

      v13 += v15;
      --v11;
    }

    while (v11);
  }

  v17 = *v10;
  v18 = *(v10 + 1004);
  v19 = heap_Calloc(*(a1 + 8), (v13 * v12), 4);
  if (!v19)
  {
    return 1;
  }

  *a4 = v19;
  *a5 = v13;
  if (v18 < 1)
  {
    return 0;
  }

  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = (*a2 + 2);
  while (!*(v28 + 4 * v25))
  {
    v29 = v26;
LABEL_34:
    ++v25;
    v26 = v29;
    if (v25 == v18)
    {
      return 0;
    }
  }

  v29 = (v26 + 1);
  v30 = *(*(a3 + 8) + 16 * v26);
  if (v30)
  {
    if (v12 >= 1)
    {
      v31 = *(v17 + 8 * v25);
      v32 = v12;
      v33 = v19 - 4 + 4 * v27;
      do
      {
        v34 = *v31;
        if (*v31)
        {
          v20 = v34[2];
          if (v20)
          {
            v43 = "::NN unroll: expected integer feature in stream %d.\n";
            goto LABEL_39;
          }

          v35 = *v34;
          if ((v35 & 0x80000000) != 0 || v35 > v30)
          {
            v43 = "::NN unroll: value %d out of expected range [0,%d] in stream %d.\n";
            goto LABEL_39;
          }

          if (v35)
          {
            *(v33 + 4 * v35) = 1065353216;
          }
        }

        v33 += 4 * v13;
        ++v31;
        --v32;
      }

      while (v32);
    }

    v27 += v30;
    goto LABEL_34;
  }

  if (v12 < 1)
  {
LABEL_33:
    ++v27;
    goto LABEL_34;
  }

  v36 = *(v17 + 8 * v25);
  v37 = v12;
  v38 = v27;
  while (1)
  {
    v39 = *v36;
    if (*v36)
    {
      break;
    }

LABEL_32:
    v38 += v13;
    ++v36;
    if (!--v37)
    {
      goto LABEL_33;
    }
  }

  v40 = *(v39 + 8);
  if (v40 == 1)
  {
    v41 = *v39;
    goto LABEL_31;
  }

  if (!v40)
  {
    v41 = *v39;
LABEL_31:
    *(v19 + 4 * v38) = v41;
    goto LABEL_32;
  }

  v43 = "::NN unroll: unexpected type in non-categorical stream %d.\n";
LABEL_39:
  NNFX_logMsg(a1, 0, v43, v20, v21, v22, v23, v24);
  return 1;
}

void *stringdup(uint64_t a1, char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v4 = cstdlib_strlen(__s);
  v5 = heap_Alloc(*(a1 + 8), v4 + 1);
  if (v5)
  {
    v6 = cstdlib_strlen(__s);
    cstdlib_memmove(v5, __s, v6 + 1);
  }

  return v5;
}

void *safe_strcpy(void *result, char *__s)
{
  if (result && __s)
  {
    v3 = result;
    v4 = cstdlib_strlen(__s) + 1;

    return cstdlib_memmove(v3, __s, v4);
  }

  return result;
}

char *stringcat(uint64_t a1, char *__s, const char *a3)
{
  v3 = 0;
  if (__s)
  {
    if (a3)
    {
      v7 = cstdlib_strlen(__s);
      v8 = cstdlib_strlen(a3);
      v9 = heap_Alloc(*(a1 + 8), v7 + v8 + 1);
      v3 = v9;
      if (v9)
      {
        safe_strcpy(v9, __s);
        cstdlib_strcat(v3, a3);
      }
    }
  }

  return v3;
}

char *strip_spaces(const char **a1)
{
  v2 = cstdlib_strlen(*a1);
  if (v2 >= 1)
  {
    v3 = (v2 & 0x7FFFFFFF) - 1;
    do
    {
      if (!cstdlib_strchr(" \t\r\n", (*a1)[v3]))
      {
        break;
      }

      (*a1)[v3] = 0;
      v4 = v3-- + 1;
    }

    while (v4 > 1);
  }

  for (result = cstdlib_strchr(" \t\r\n", **a1); result; result = cstdlib_strchr(" \t\r\n", v6[1]))
  {
    v6 = (*a1)++;
  }

  return result;
}

const char *get_next_token(void *a1, char **a2, int a3)
{
  v4 = *a2;
  if (!v4)
  {
    return 0;
  }

  safe_strcpy(a1, v4);
  v7 = cstdlib_strchr(a1, a3);
  if (v7)
  {
    *v7++ = 0;
  }

  v9 = a1;
  *a2 = v7;
  strip_spaces(&v9);
  return v9;
}

uint64_t stringdup_static(char *a1, _BYTE *a2, unsigned int a3)
{
  if (cstdlib_strlen(a1) >= a3)
  {
    *a2 = 0;
  }

  else
  {
    safe_strcpy(a2, a1);
  }

  return 1;
}

uint64_t utf8todepes(const char *a1, uint64_t a2, unsigned int a3)
{
  v8 = 0;
  v6 = cstdlib_strlen(a1);
  return utf8_Utf8ToDepes(a1, v6 + 1, &v8 + 1, a2, a3, &v8, 0);
}

uint64_t depestoutf8(const char *a1, uint64_t a2, unsigned int a3)
{
  v8 = 0;
  v6 = cstdlib_strlen(a1);
  return utf8_DepesToUtf8(a1, v6 + 1, &v8 + 1, a2, a3, &v8, 0);
}

uint64_t Lingdb2NnWordRec(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, _DWORD *a7, uint64_t a8, _WORD *a9, _WORD *a10, _WORD *a11)
{
  v13 = a6;
  v18 = a9;
  v19 = *a6;
  v175 = 0;
  v176 = 0;
  v173 = 0;
  v174 = 0;
  v172 = 0;
  v171 = 0;
  v170 = 0;
  v168 = 0;
  v169 = 4;
  v167 = 0;
  v166 = 0;
  v165 = 0;
  v164 = 0;
  v163 = 0;
  *a7 = 0;
  *a9 = 0;
  *a10 = 0;
  v20 = (*(a3 + 104))(a4, a5, 1, 0, &v171 + 2);
  if ((v20 & 0x80000000) != 0)
  {
    v21 = v20;
    goto LABEL_9;
  }

  v21 = (*(a3 + 168))(a4, a5, HIWORD(v171), 3, 1, a7, &v170);
  if ((v21 & 0x80000000) != 0)
  {
LABEL_9:
    *(v13 + 5) = 0;
    return v21;
  }

  if (((*(a3 + 184))(a4, a5, HIWORD(v171), 1, &v165) & 0x80000000) == 0 && v165 == 1)
  {
    v21 = (*(a3 + 176))(a4, a5, HIWORD(v171), 1, &v166, &v165 + 2);
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }
  }

  v22 = a11;
  if (HIWORD(v165))
  {
    v161 = v166[3];
  }

  else
  {
    v161 = 0;
  }

  if (((*(a3 + 184))(a4, a5, HIWORD(v171), 0, &v165) & 0x80000000) != 0 || v165 != 1)
  {
    if (((*(a3 + 184))(a4, a5, HIWORD(v171), 4, &v165) & 0x80000000) != 0 || v165 != 1)
    {
      goto LABEL_21;
    }

    v21 = (*(a3 + 176))(a4, a5, HIWORD(v171), 4, &v176, &v170);
    if ((v21 & 0x80000000) != 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v21 = (*(a3 + 176))(a4, a5, HIWORD(v171), 0, &v176, &v170);
    if ((v21 & 0x80000000) != 0)
    {
      log_OutPublic(a1[4], a2, 0, 0, v24, v25, v26, v27, v149);
      goto LABEL_9;
    }
  }

  if (v170 <= 1u)
  {
    v176 = 0;
    goto LABEL_27;
  }

LABEL_21:
  if (!v176)
  {
LABEL_27:
    v32 = 0;
    if (a8 && HIWORD(v165))
    {
      v33 = 0;
      v34 = v166;
      do
      {
        v35 = *v34;
        v34 += 8;
        v36 = (1 << v35) & 0x270F0100;
        if (v35 <= 0x1D && v36 != 0)
        {
          *a8 = 15;
          *(a8 + 12) = 0;
          *(a8 + 16) = 0;
          *(a8 + 120) = 83;
          *(a8 + 144) = 4;
          *(a8 + 160) = 0;
          cstdlib_strcpy(*(a8 + 280), "#");
          *a9 = 1;
          *a10 = 1;
          v32 = 2;
          *a11 = 2;
          goto LABEL_37;
        }

        ++v33;
      }

      while (v33 < HIWORD(v165));
      v32 = 0;
    }

LABEL_37:
    *(v13 + 5) = v32;
    return v21;
  }

  LODWORD(v28) = HIWORD(v165);
  if (HIWORD(v165))
  {
    v29 = 0;
    v30 = (v166 + 3);
    while (1)
    {
      v31 = *v30;
      v30 += 8;
      if (v31 != v161)
      {
        break;
      }

      if (HIWORD(v165) == ++v29)
      {
        goto LABEL_39;
      }
    }

    LODWORD(v28) = v29;
  }

LABEL_39:
  v38 = (*(a3 + 152))(a4, a5, 2, HIWORD(v171), &v165);
  LOWORD(v39) = 0;
  if (v38 < 0 || !v165)
  {
    v159 = 0;
  }

  else
  {
    v21 = (*(a3 + 104))(a4, a5, 2, HIWORD(v171), &v171);
    if ((v21 & 0x80000000) != 0)
    {
      v133 = 1;
      goto LABEL_286;
    }

    v40 = v171;
    if (v171)
    {
      v150 = 0;
      v159 = 0;
      v39 = 0;
      v153 = 0;
      v154 = 1;
      v155 = 0;
      v152 = a8;
      v151 = v13;
      while (1)
      {
        v160 = v39;
        v41 = (*(a3 + 168))(a4, a5, v40, 0, 1, &v169, &v170);
        if ((v41 & 0x80000000) != 0)
        {
LABEL_284:
          v21 = v41;
LABEL_285:
          v133 = v154;
LABEL_286:
          *(v13 + 5) = v133;
          return v21;
        }

        v42 = v169;
        v43 = a8 + 144 * v160;
        *v43 = v169;
        if ((v42 - 9) >= 6)
        {
          if (v42 == 15)
          {
            ++*a10;
            if (((*(a3 + 184))(a4, a5, v171, 7, &v165) & 0x80000000) == 0 && v165 == 1)
            {
              v41 = (*(a3 + 168))(a4, a5, v171, 7, 1, &v167, &v170);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              *(v43 + 12) = v167;
            }

            if (((*(a3 + 184))(a4, a5, v171, 1, &v165) & 0x80000000) == 0 && v165 == 1)
            {
              v41 = (*(a3 + 168))(a4, a5, v171, 1, 1, &v168, &v170);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              *(v43 + 4) = v168;
            }

            if (((*(a3 + 184))(a4, a5, v171, 2, &v165) & 0x80000000) == 0 && v165 == 1)
            {
              v41 = (*(a3 + 168))(a4, a5, v171, 2, 1, &v167 + 2, &v170);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              *(v43 + 8) = HIWORD(v167);
            }

            v170 = 0;
            if (((*(a3 + 184))(a4, a5, v171, 4, &v165) & 0x80000000) == 0 && v165 == 1)
            {
              v41 = (*(a3 + 176))(a4, a5, v171, 4, &v173, &v170);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              if (v173)
              {
                cstdlib_strcpy(*(v43 + 32), v173);
              }
            }

            if (v176)
            {
              v164 = 0;
              v61 = v168;
              if (v168 >= HIWORD(v167))
              {
                v62 = 0;
              }

              else
              {
                v62 = 0;
                do
                {
                  v63 = *(v176 + v61);
                  v64 = *(v43 + 128);
                  v164 = v62 + 1;
                  *(v64 + v62) = v63;
                  ++v61;
                  v62 = v164;
                }

                while (v61 < HIWORD(v167) && v164 < 0x1FFuLL);
              }

              *(*(v43 + 128) + v62) = 0;
            }

            if (v167 <= 2u)
            {
              *(v43 + 120) = 0x575353u >> (8 * v167);
            }

            if (v160)
            {
              v83 = v160 - 1;
              while (1)
              {
                v84 = v83;
                v85 = *(a8 + 144 * v83);
                if ((v85 - 9) < 6 || v85 == 4)
                {
                  break;
                }

                if (v85 != 15)
                {
                  --v83;
                  if (v84)
                  {
                    continue;
                  }
                }

                goto LABEL_220;
              }

              *(a8 + 144 * v83 + 120) = *(v43 + 120);
LABEL_220:
              v150 = v160;
            }

            else
            {
              v160 = 0;
              v150 = 0;
            }

            goto LABEL_222;
          }

          if (v42 != 4)
          {
            if (((*(a3 + 184))(a4, a5, v171, 1, &v165) & 0x80000000) == 0 && v165 == 1)
            {
              v41 = (*(a3 + 168))(a4, a5, v171, 1, 1, &v168, &v170);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              *(v43 + 4) = v168;
            }

            if (((*(a3 + 184))(a4, a5, v171, 2, &v165) & 0x80000000) == 0 && v165 == 1)
            {
              v41 = (*(a3 + 168))(a4, a5, v171, 2, 1, &v167 + 2, &v170);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              *(v43 + 8) = HIWORD(v167);
            }

            v170 = 0;
            if (((*(a3 + 184))(a4, a5, v171, 4, &v165) & 0x80000000) == 0 && v165 == 1)
            {
              v41 = (*(a3 + 176))(a4, a5, v171, 4, &v174, &v170);
              if ((v41 & 0x80000000) != 0)
              {
                goto LABEL_284;
              }

              if (v174)
              {
                cstdlib_strcpy(*(v43 + 32), v174);
              }
            }

            if (v176)
            {
              v164 = 0;
              v51 = v168;
              if (v168 >= HIWORD(v167))
              {
                v52 = 0;
              }

              else
              {
                v52 = 0;
                do
                {
                  v53 = *(v176 + v51);
                  v54 = *(v43 + 128);
                  v164 = v52 + 1;
                  *(v54 + v52) = v53;
                  ++v51;
                  v52 = v164;
                }

                while (v51 < HIWORD(v167) && v164 < 0x1FFuLL);
              }

              *(*(v43 + 128) + v52) = 0;
            }

LABEL_222:
            v22 = a11;
            goto LABEL_256;
          }
        }

        ++*v18;
        if (v42 == 12)
        {
          v44 = v155;
        }

        else
        {
          v44 = 0;
        }

        v158 = v44;
        v46 = v42 != 14 || v155 == 0;
        v156 = v46;
        if (((*(a3 + 184))(a4, a5, v171, 1, &v165) & 0x80000000) == 0 && v165 == 1)
        {
          v41 = (*(a3 + 168))(a4, a5, v171, 1, 1, &v168, &v170);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          *(v43 + 4) = v168;
        }

        if (((*(a3 + 184))(a4, a5, v171, 2, &v165) & 0x80000000) == 0 && v165 == 1)
        {
          v41 = (*(a3 + 168))(a4, a5, v171, 2, 1, &v167 + 2, &v170);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          *(v43 + 8) = HIWORD(v167);
        }

        if (((*(a3 + 184))(a4, a5, v171, 13, &v165) & 0x80000000) == 0 && v165 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v171, 13, &v172, &v170);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          *(v43 + 20) = cstdlib_atoi(v172);
        }

        if (((*(a3 + 184))(a4, a5, v171, 7, &v165) & 0x80000000) == 0 && v165 == 1)
        {
          v41 = (*(a3 + 168))(a4, a5, v171, 7, 1, &v168 + 2, &v170);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          *(v43 + 12) = HIWORD(v168);
        }

        if (((*(a3 + 184))(a4, a5, v171, 17, &v165) & 0x80000000) == 0 && v165 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v171, 17, &v172, &v170);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          *(v43 + 24) = cstdlib_atoi(v172);
        }

        if (v173)
        {
          cstdlib_strcpy(*(v43 + 32), v173);
        }

        if (((*(a3 + 184))(a4, a5, v171, 5, &v165) & 0x80000000) == 0 && v165 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v171, 5, &v174, &v170);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          if (v174)
          {
            cstdlib_strcpy(*(v43 + 40), v174);
          }
        }

        if (((*(a3 + 184))(a4, a5, v171, 6, &v165) & 0x80000000) == 0 && v165 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v171, 6, &v174, &v170);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          if (v174)
          {
            cstdlib_strcpy(*(v43 + 48), v174);
          }
        }

        if (((*(a3 + 184))(a4, a5, v171, 9, &v165) & 0x80000000) == 0 && v165 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v171, 9, &v174, &v170);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          if (v174)
          {
            cstdlib_strcpy(*(v43 + 56), v174);
          }
        }

        if (((*(a3 + 184))(a4, a5, v171, 14, &v165) & 0x80000000) == 0 && v165 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v171, 14, &v174, &v170);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          if (v174)
          {
            ParseWnluStr(v174, v43);
          }
        }

        if (v176)
        {
          v164 = 0;
          v47 = v168;
          if (v168 >= HIWORD(v167))
          {
            v48 = 0;
          }

          else
          {
            v48 = 0;
            do
            {
              v49 = *(v176 + v47);
              v50 = *(v43 + 128);
              v164 = v48 + 1;
              *(v50 + v48) = v49;
              ++v47;
              v48 = v164;
            }

            while (v47 < HIWORD(v167) && v164 < 0x1FFuLL);
          }

          *(*(v43 + 128) + v48) = 0;
        }

        v170 = 0;
        v175 = 0;
        if (((*(a3 + 184))(a4, a5, v171, 3, &v165) & 0x80000000) == 0 && v165 == 1)
        {
          v41 = (*(a3 + 176))(a4, a5, v171, 3, &v175, &v170);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }
        }

        if (v170 <= 1u)
        {
          if (v169 == 14)
          {
            v175 = "M";
          }

          else
          {
            v175 = 0;
          }
        }

        v55 = cstdlib_atoi(v172);
        v56 = v175;
        if (v175 && !v55)
        {
          if (!cstdlib_strcmp(v175, ""))
          {
            v175 = 0;
            goto LABEL_233;
          }

          v56 = v175;
        }

        if (v56)
        {
          if (v170 >= 2u)
          {
            v57 = 0;
            while (1)
            {
              v58 = v57;
              v59 = v175[v57];
              if (v59 < 0)
              {
                if (!__maskrune(v175[v57], 0x4000uLL))
                {
LABEL_171:
                  v60 = a8 + 144 * v160;
                  goto LABEL_172;
                }
              }

              else if ((*(MEMORY[0x277D85DE0] + 4 * v59 + 60) & 0x4000) == 0)
              {
                goto LABEL_171;
              }

              if (v170 - 1 <= ++v57)
              {
                v60 = a8 + 144 * v160;
                v58 = v57;
                v57 = v57;
                goto LABEL_172;
              }
            }
          }

          v60 = a8 + 144 * v160;
          v58 = 0;
          v57 = 0;
LABEL_172:
          v65 = 0;
          while (v170 - 1 > v65)
          {
            v66 = v19;
            v67 = v175;
            v68 = v175[v58 + v65];
            if (v68 < 0)
            {
              if (__maskrune(v175[v58 + v65], 0x4000uLL))
              {
LABEL_180:
                v19 = v66;
                break;
              }
            }

            else if ((*(MEMORY[0x277D85DE0] + 4 * v68 + 60) & 0x4000) != 0)
            {
              goto LABEL_180;
            }

            *(*(v60 + 136) + v65) = v67[(v57 + v65)];
            ++v65;
            v19 = v66;
            if (v65 == 511)
            {
              break;
            }
          }

          *(*(v60 + 136) + v65) = 0;
          v18 = a9;
          v69 = v153;
          if (!v175)
          {
            a8 = v152;
            v22 = a11;
            v13 = v151;
            goto LABEL_234;
          }

          v70 = v60;
          v13 = v151;
          a8 = v152;
          if (*v175)
          {
            v71 = v154;
            v72 = v154 > 1 && v158 == 0;
            v73 = v156;
            if (!v72)
            {
              v73 = 0;
            }

            if (v73 && v169 != 14)
            {
              v75 = HIWORD(v165);
              if (v28 < HIWORD(v165))
              {
                v76 = 0;
                v77 = 0;
                v78 = v28;
                v79 = &v166[8 * v28];
                while (v79[3] - v161 <= v168)
                {
                  v81 = *v79;
                  v79 += 8;
                  v80 = v81;
                  if (v81 == 8)
                  {
                    v82 = v77 + 1;
                  }

                  else
                  {
                    v82 = v77;
                  }

                  if (v80 == 26)
                  {
                    ++v76;
                  }

                  else
                  {
                    v77 = v82;
                  }

                  if (HIWORD(v165) == ++v78)
                  {
                    goto LABEL_224;
                  }
                }

                v75 = v78;
LABEL_224:
                if (v76)
                {
                  v157 = v75;
                  if (v77)
                  {
                    v87 = *(v152 + 144 * v159 + 16);
                  }

                  else
                  {
                    v87 = 200;
                  }

                  *(v152 + 144 * v159 + 16) = v87;
                  if (cstdlib_strstr((*v151 + 152), "bet4") || cstdlib_strstr((*v151 + 152), "bet5"))
                  {
                    inited = InitFromWrdRec(a1, v70, v70 + 432, v97, v98, v99, v100, v101);
                    if ((inited & 0x80000000) != 0)
                    {
                      return inited;
                    }

                    inited = Init_WrdRec(a1, &v163, 1u);
                    if ((inited & 0x80000000) != 0)
                    {
                      return inited;
                    }

                    inited = InitFromWrdRec(a1, v163, v70, v103, v104, v105, v106, v107);
                    if ((inited & 0x80000000) != 0)
                    {
                      return inited;
                    }

                    *v70 = 15;
                    *(v70 + 12) = 0x100000002;
                    *(v70 + 120) = 87;
                    v113 = v152 + 144 * (v160 + 1);
                    inited = InitFromWrdRec(a1, v163, v113, v108, v109, v110, v111, v112);
                    if ((inited & 0x80000000) != 0)
                    {
                      return inited;
                    }

                    *v113 = 4;
                    cstdlib_strcpy(*(v113 + 136), "#");
                    v114 = v152 + 144 * (v160 + 2);
                    inited = InitFromWrdRec(a1, v163, v114, v115, v116, v117, v118, v119);
                    if ((inited & 0x80000000) != 0)
                    {
                      return inited;
                    }

                    *v114 = 15;
                    v120 = v152 + 144 * v150;
                    *(v114 + 12) = *(v120 + 12);
                    *(v114 + 120) = *(v120 + 120);
                    v160 += 3;
                    Free_WrdRec(a1, v163, 1u);
                    *a10 += 2;
                    ++*a9;
                    v69 = 5;
                    v71 = v154;
                    LODWORD(v28) = v157;
                  }

                  else
                  {
                    v71 = v154;
                  }
                }
              }
            }

            v88 = v71 <= 1 || v69 == 0;
            v89 = v154;
            if (!v88)
            {
              v89 = v154 + 1;
            }

            v154 = v89;
          }
        }

LABEL_233:
        v22 = a11;
LABEL_234:
        if (v169 != 13)
        {
          if (v169 != 14)
          {
            goto LABEL_238;
          }

          v158 = 1;
        }

        ++*(v13 + 7);
LABEL_238:
        v90 = 0;
        if (((*(a3 + 184))(a4, a5, v171, 8, &v165) & 0x80000000) == 0 && v165 == 1)
        {
          v41 = (*(a3 + 168))(a4, a5, v171, 8, 1, &v164, &v170);
          if ((v41 & 0x80000000) != 0)
          {
            goto LABEL_284;
          }

          v90 = v164;
        }

        v91 = v160;
        *(a8 + 144 * v160 + 16) = v90;
        v92 = v161;
        if (v175 && *v175)
        {
          v177[0] = v175;
          skipUnvalidPhonemes(v19, v177);
          v93 = v177[0];
          if (*v177[0])
          {
            v94 = 0;
            do
            {
              ++v94;
              v177[0] = v93 + 1;
              skipUnvalidPhonemes(v19, v177);
              v93 = v177[0];
            }

            while (*v177[0]);
          }

          else
          {
            v94 = 0;
          }

          v154 += v94;
          v18 = a9;
          v91 = v160;
          v92 = v161;
        }

        v153 = v90;
        if (v28 < HIWORD(v165))
        {
          v28 = v28;
          v95 = &v166[8 * v28 + 3];
          while (1)
          {
            v96 = *v95;
            v95 += 8;
            if (v96 - v92 > v168)
            {
              break;
            }

            if (HIWORD(v165) == ++v28)
            {
              LODWORD(v28) = HIWORD(v165);
              break;
            }
          }
        }

        v159 = v91;
        v155 = v158;
LABEL_256:
        v21 = (*(a3 + 120))(a4, a5, v171, &v171);
        if ((v21 & 0x80000000) != 0)
        {
          goto LABEL_285;
        }

        v39 = v160 + 1;
        v40 = v171;
        if (!v171)
        {
          goto LABEL_270;
        }
      }
    }

    LOWORD(v39) = 0;
    v159 = 0;
  }

LABEL_270:
  if (!*v18)
  {
LABEL_293:
    if (v39)
    {
      v145 = v39 - 1;
      while (1)
      {
        v146 = v145;
        v147 = *(a8 + 144 * v145);
        if ((v147 - 9) < 6 || v147 == 4)
        {
          break;
        }

        if (v147 != 15)
        {
          --v145;
          if (v146)
          {
            continue;
          }
        }

        goto LABEL_303;
      }

      *(a8 + 144 * v145 + 120) = 83;
    }

LABEL_303:
    *v22 = v39;
    return v21;
  }

  v121 = v39;
  if (!cstdlib_strstr((*v13 + 152), "bet4") && !cstdlib_strstr((*v13 + 152), "bet5") || v28 >= HIWORD(v165))
  {
LABEL_292:
    LOWORD(v39) = v121;
    goto LABEL_293;
  }

  v127 = v28;
  v128 = &v166[8 * v28];
  v129 = -1;
  LOWORD(v39) = v121;
  do
  {
    v130 = *v128;
    v128 += 8;
    if (v130 == 26)
    {
      v129 = v127;
    }

    ++v127;
  }

  while (HIWORD(v165) != v127);
  if (v129 == -1)
  {
    goto LABEL_293;
  }

  v131 = v121 + 1;
  v132 = a8 + 144 * (v121 - 1);
  while (v131 - 2 > v159)
  {
    v21 = InitFromWrdRec(a1, v132, a8 + 144 * v131--, v122, v123, v124, v125, v126);
    v132 -= 144;
    if ((v21 & 0x80000000) != 0)
    {
      return v21;
    }
  }

  *(a8 + 144 * v159 + 16) = 0;
  inited = Init_WrdRec(a1, &v163, 1u);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  v139 = a8 + 144 * v159;
  inited = InitFromWrdRec(a1, v163, v139 + 144, v134, v135, v136, v137, v138);
  if ((inited & 0x80000000) != 0)
  {
    return inited;
  }

  *(v139 + 144) = 15;
  *(v139 + 156) = 0x100000000;
  *(v139 + 264) = 83;
  v21 = InitFromWrdRec(a1, v163, v139 + 288, v140, v141, v142, v143, v144);
  if ((v21 & 0x80000000) == 0)
  {
    *(v139 + 288) = 4;
    *(v139 + 304) = 200;
    cstdlib_strcpy(*(v139 + 424), "#");
    ++v164;
    ++*a10;
    ++*a9;
    v121 += 2;
    Free_WrdRec(a1, v163, 1u);
    goto LABEL_292;
  }

  return v21;
}

uint64_t skipUnvalidPhonemes(uint64_t result, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (**a2)
  {
    while (*(result + 2144 + v3) == 255)
    {
      if (v3 == 92)
      {
        v4 = v2 + 1;
        do
        {
          *a2 = v4;
          v6 = *v4++;
          v5 = v6;
          if (v6 == 92)
          {
            v2 = v4 - 1;
            goto LABEL_10;
          }
        }

        while (v5);
        *a2 = v2;
        if (*v2)
        {
          goto LABEL_10;
        }

        return result;
      }

LABEL_10:
      *a2 = v2 + 1;
      v3 = *++v2;
      if (!v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t uselect_ExtractTargetFeatures(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v613 = *MEMORY[0x277D85DE8];
  v3 = 2229280789;
  v4 = *a3;
  v609 = 2;
  v608 = 0;
  v6 = (a3 + 12);
  v5 = *(a3 + 12);
  if (v5 < 1)
  {
    return v3;
  }

  v10 = *(a3 + 24);
  if (v10)
  {
    cstdlib_memset(v10, 0, v5 + 1);
    v11 = *(a3 + 3520);
    if (v11)
    {
      v12 = 0;
      LODWORD(v13) = 0;
      v14 = 0;
      v15 = (*(a3 + 3512) + 12);
      do
      {
        if (*(v15 - 3) == 0x4000 && *(v15 - 1))
        {
          v14 = *v15;
          LODWORD(v13) = v12;
        }

        ++v12;
        v15 += 8;
      }

      while (v11 != v12);
      if (v13)
      {
        v16 = v13;
        do
        {
          ++**(a3 + 24);
          --v16;
        }

        while (v16);
        LODWORD(v11) = *(a3 + 3520);
      }
    }

    else
    {
      LODWORD(v13) = 0;
      v14 = 0;
    }

    if (v13 < v11)
    {
      v13 = v13;
      v17 = (32 * v13) | 0xC;
      do
      {
        v18 = *(*(a3 + 3512) + v17) - v14;
        if (v18 >= *(a3 + 12))
        {
          v18 = *(a3 + 12);
        }

        ++*(*(a3 + 24) + v18);
        ++v13;
        v17 += 32;
      }

      while (v13 < *(a3 + 3520));
    }
  }

  if ((*(v4 + 3092) & 0x80000000) != 0)
  {
    InternalTagIndex = 0;
  }

  else
  {
    InternalTagIndex = GetInternalTagIndex(v4, "TS", 0);
    v608 = InternalTagIndex;
  }

  v20 = **(a3 + 16);
  if (v20 == 92)
  {
    HandleInternalTag(v4, a3, v6, 0, InternalTagIndex, &v608, &v609);
    v20 = **(a3 + 16);
  }

  if (*(v4 + 2516))
  {
    v21 = v20 == 60;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;
  if (v20 == 35)
  {
    v23 = *v6;
  }

  else
  {
    do
    {
      v24 = *(a3 + 24);
      if (v24)
      {
        *v24 += v24[1];
      }

      v25 = *v6;
      if (v25 >= 1)
      {
        v26 = 0;
        do
        {
          *(*(a3 + 16) + v26) = *(*(a3 + 16) + v26 + 1);
          if (v26)
          {
            v27 = *(a3 + 24);
            if (v27)
            {
              *(v27 + v26) = *(v27 + v26 + 1);
            }
          }

          ++v26;
        }

        while (v26 < *v6);
        LOWORD(v25) = *v6;
      }

      v23 = v25 - 1;
      *(a3 + 12) = v23;
    }

    while (**(a3 + 16) != 35);
  }

  if (v23 >= 1)
  {
    v28 = 0;
    do
    {
      if (*(*(a3 + 16) + v28) == 92)
      {
        HandleInternalTag(v4, a3, v6, v28, InternalTagIndex, &v608, &v609);
      }

      else
      {
        *(*(a3 + 248) + v28++) = v608;
      }
    }

    while (*v6 > v28);
  }

  v29 = *(a3 + 488);
  if (v29)
  {
    v30 = *(a1 + 8);
    v31 = cstdlib_strlen(v29);
    v32 = heap_Alloc(v30, (v31 + 1));
    if (!v32)
    {
      log_OutPublic(*(a1 + 32), a2, 19000, 0, v33, v34, v35, v36, v570);
      return 2229280778;
    }

    v37 = v32;
    cstdlib_strcpy(v32, *(a3 + 488));
  }

  else
  {
    v37 = 0;
  }

  v591 = a2;
  if (log_HasTraceTuningDataSubscriber(*(a1 + 32)))
  {
    v575 = "TAPSREFSPT";
    v576 = v37;
    v573 = *(a3 + 12);
    v574 = *(a3 + 16);
    v571 = 0;
    v572 = "IN";
    log_OutTraceTuningData(*(a1 + 32), 301, "%s%s %s%.*s %s%s", v38, v39, v40, v41, v42, "BEG");
  }

  v594 = v37;
  v596 = a1;
  v43 = *v6;
  if (v43 >= 1)
  {
    v44 = 0;
    v577 = 0;
    v45 = 0;
    v586 = 0;
    v46 = 0;
    v47 = 0;
    v589 = 0;
    v48 = v4 + 2144;
    __s = v594;
    v585 = v22;
    v604 = v4 + 2144;
    while (1)
    {
      v49 = *(a3 + 16);
      v50 = v47;
      if ((*(v49 + v47) & 0xFE) == 0x12)
      {
        v51 = v44 + 1;
        if (*(v49 + v51) == 16)
        {
          LOWORD(v43) = v43 - 2;
          *(a3 + 12) = v43;
          v52 = *(a3 + 24);
          if (v52)
          {
            *(v52 + v47 + 2) += *(v52 + v51) + *(v52 + v47);
            LOWORD(v43) = *v6;
          }

          if (v47 < v43)
          {
            v53 = v47;
            do
            {
              *(*(a3 + 16) + v53) = *(*(a3 + 16) + v53 + 2);
              v54 = *(a3 + 24);
              if (v54)
              {
                *(v54 + v53) = *(v54 + v53 + 2);
              }

              ++v53;
            }

            while (v53 < *v6);
            LOWORD(v43) = *v6;
          }
        }
      }

      v55 = *(a3 + 16);
      if (*(v55 + v47) != 16)
      {
        goto LABEL_227;
      }

      v56 = v44 + 1;
      v57 = *(v55 + v56);
      if ((v57 & 0xFE) != 0x12)
      {
        goto LABEL_227;
      }

      v58 = v43 - 2;
      *(a3 + 12) = v43 - 2;
      v59 = *(a3 + 24);
      if (v59)
      {
        *(v59 + v47 + 2) += *(v59 + v56) + *(v59 + v47);
        v58 = *v6;
      }

      if (v47 < v58)
      {
        v60 = v47;
        do
        {
          *(*(a3 + 16) + v60) = *(*(a3 + 16) + v60 + 2);
          *(*(a3 + 248) + v60) = *(*(a3 + 248) + v60 + 2);
          v61 = *(a3 + 24);
          if (v61)
          {
            *(v61 + v60) = *(v61 + v60 + 2);
          }

          ++v60;
        }

        while (v60 < *v6);
        v58 = *v6;
      }

      if (v57 == 19)
      {
        break;
      }

      if (!__s)
      {
        __s = 0;
        goto LABEL_227;
      }

      v65 = cstdlib_strchr(__s, 27);
      if (v65)
      {
        *v65 = 0;
        v583 = v65 + 1;
        v579 = v65;
        v581 = *(a3 + 16);
        v66 = (v581 + v47);
        v67 = cstdlib_strchr(v66, 18);
        if (v67)
        {
          v592 = v67;
          *v67 = 0;
          if (log_HasTraceTuningDataSubscriber(*(a1 + 32)))
          {
            v574 = "TAPSREFSTPTAP";
            v575 = __s;
            v572 = "TAPSCURSTPTAP";
            v573 = (v581 + v47);
            v571 = 0;
            log_OutTraceTuningData(*(a1 + 32), 302, "%s%s %s%s %s%s", v68, v69, v70, v71, v72, "BEG");
          }

          if (cstdlib_strlen(__s) < 1)
          {
            v600 = 0;
            v74 = 0;
          }

          else
          {
            v73 = 0;
            v74 = 0;
            v600 = 0;
            do
            {
              v75 = __s[v73];
              if (v75 == 91)
              {
                v74 = 1;
              }

              else if (v75 == 93 || v74 == 0)
              {
                v74 = 0;
                v77 = v600;
                if (*(v604 + __s[v73]) != 0xFF)
                {
                  v77 = v600 + 2;
                }

                v600 = v77;
              }

              ++v73;
            }

            while (v73 < cstdlib_strlen(__s));
          }

          v89 = cstdlib_strstr(v66, __s);
          v90 = 0;
          if (v89)
          {
            v92 = __s;
            v91 = v589;
          }

          else
          {
            v91 = v589;
            if (v600 >= 3)
            {
              v92 = __s;
              v93 = *__s;
              if (v93 == 93)
              {
                v74 = 0;
                v94 = v4 + 2144;
              }

              else
              {
                v94 = v4 + 2144;
                if (v93 == 91)
                {
                  v74 = 1;
                }

                else if (!*__s)
                {
                  goto LABEL_155;
                }
              }

              v92 = __s + 1;
              while (v74 == 1 || *(v94 + v93) == 255)
              {
                v108 = *v92++;
                v93 = v108;
                if (v108 == 93)
                {
                  v109 = 0;
                }

                else
                {
                  v109 = v74;
                }

                if (v93 == 91)
                {
                  v74 = 1;
                }

                else
                {
                  v74 = v109;
                }

                if (!v93)
                {
                  --v92;
                  goto LABEL_155;
                }
              }

              if (*v92)
              {
                v149 = cstdlib_strstr(v66, v92);
                if (v149)
                {
                  v89 = v149;
                  v90 = 0;
                  v95 = 2;
                  goto LABEL_140;
                }

                v150 = v579;
                v151 = *v579;
                v152 = v577;
                if (v151 == 91)
                {
                  v152 = 0;
                }

                if (v151 == 93)
                {
                  v152 = 1;
                }

                if (v579 == __s)
                {
LABEL_253:
                  v577 = v152;
                  v92 = __s;
                  goto LABEL_155;
                }

                while (v152 == 1 || *(v604 + v151) == 255)
                {
                  v153 = *--v150;
                  v151 = v153;
                  if (v153 == 91)
                  {
                    v152 = 0;
                  }

                  if (v151 == 93)
                  {
                    v152 = 1;
                  }

                  if (v150 == __s)
                  {
                    goto LABEL_253;
                  }
                }

                v577 = v152;
                *v150 = 0;
                v154 = cstdlib_strstr(v66, __s);
                if (v154)
                {
                  v89 = v154;
                  v95 = 0;
                  v90 = 2;
                  v92 = __s;
                  goto LABEL_140;
                }

                v89 = cstdlib_strstr(v66, v92);
                v90 = 2;
LABEL_139:
                v95 = v90;
                if (!v89)
                {
                  goto LABEL_155;
                }

LABEL_140:
                v600 = v95;
                v96 = v90;
                HasTraceTuningDataSubscriber = log_HasTraceTuningDataSubscriber(*(v596 + 32));
                v103 = v96;
                v104 = "MATCH";
                v106 = v596;
                v105 = __s;
                v107 = v103;
                if (!HasTraceTuningDataSubscriber)
                {
LABEL_157:
                  v589 = v105;
                  v48 = v4 + 2144;
                  __sa = v107;
                  if (v66 != v89)
                  {
                    do
                    {
                      if (!v45 && *(v604 + *v66) != 255)
                      {
                        v46 += *(v4 + 3578);
                      }

                      v119 = *(*(a3 + 16) + ++v47);
                      ++v66;
                      if (v119 == 93)
                      {
                        v120 = 0;
                      }

                      else
                      {
                        v120 = v45;
                      }

                      if (v119 == 91)
                      {
                        v45 = 1;
                      }

                      else
                      {
                        v45 = v120;
                      }
                    }

                    while (v66 != v89);
                    v47 = v89 - v581;
                    v66 = v89;
                  }

                  v121 = v600 + v586;
                  v122 = v592;
                  if (v89 != v592)
                  {
                    v123 = (v592 + 1);
                    while (1)
                    {
                      v125 = *v123++;
                      v124 = v125;
                      if (!v125)
                      {
                        break;
                      }

                      if (*(v604 + v124) != 255)
                      {
                        v126 = v124 == 35;
                        goto LABEL_176;
                      }
                    }

                    v126 = 1;
LABEL_176:
                    v587 = v126;
                    v127 = v47 - 1;
                    while ((v127 & 0x8000) == 0)
                    {
                      v128 = *(*(a3 + 16) + (v127-- & 0x7FFF));
                      if (*(v604 + v128) != 255)
                      {
                        v129 = v128 != 35;
                        goto LABEL_181;
                      }
                    }

                    v129 = 0;
LABEL_181:
                    if (cstdlib_strlen(v92) < 1)
                    {
                      v48 = v4 + 2144;
                    }

                    else
                    {
                      v601 = v129;
                      v130 = 0;
                      v48 = v4 + 2144;
                      do
                      {
                        if (!v45 && *(v48 + *v66) != 255)
                        {
                          v134 = *(a3 + 3608);
                          if (v134)
                          {
                            if (!v601)
                            {
                              *(v134 + 4 * v46) = *(*(a3 + 3616) + 4 * v121);
                            }

                            v135 = *(*a3 + 3578);
                            ++v121;
                            ++v46;
                            if (v135 >= 2)
                            {
                              v136 = *(a3 + 3616);
                              for (i = 1; i < v135; ++i)
                              {
                                *(v134 + 4 * v46++) = *(v136 + 4 * v121++);
                              }
                            }

                            v601 = 0;
                          }
                        }

                        v131 = *(*(a3 + 16) + ++v47);
                        ++v66;
                        if (v131 == 93)
                        {
                          v132 = 0;
                        }

                        else
                        {
                          v132 = v45;
                        }

                        if (v131 == 91)
                        {
                          v45 = 1;
                        }

                        else
                        {
                          v45 = v132;
                        }

                        ++v130;
                        v133 = cstdlib_strlen(v92);
                        v48 = v4 + 2144;
                      }

                      while (v133 > v130);
                    }

                    if (v587)
                    {
                      v122 = v592;
                    }

                    else
                    {
                      v138 = *(a3 + 3608);
                      v122 = v592;
                      if (v138)
                      {
                        *(v138 + 4 * v46 - 4) = -1;
                      }
                    }
                  }

                  if (v66 != v122)
                  {
                    v139 = v47;
                    v140 = v66;
                    do
                    {
                      if (!v45 && *(v48 + *v140) != 255)
                      {
                        v46 += *(v4 + 3578);
                      }

                      v141 = *(*(a3 + 16) + ++v139);
                      ++v140;
                      if (v141 == 93)
                      {
                        v142 = 0;
                      }

                      else
                      {
                        v142 = v45;
                      }

                      if (v141 == 91)
                      {
                        v45 = 1;
                      }

                      else
                      {
                        v45 = v142;
                      }
                    }

                    while (v140 != v122);
                    LOWORD(v47) = v47 + v122 - v66;
                  }

                  v143 = *(a3 + 12) - 2;
                  *(a3 + 12) = v143;
                  v144 = *(a3 + 24);
                  v22 = v585;
                  if (v144)
                  {
                    *(v144 + v47 + 2) += *(v144 + v47 + 1) + *(v144 + v47);
                    v143 = *v6;
                  }

                  v586 = v121 + __sa;
                  if (v47 >= v143)
                  {
                    __s = v583;
                    a1 = v596;
                    v3 = 2229280789;
                  }

                  else
                  {
                    v145 = v47;
                    a1 = v596;
                    v3 = 2229280789;
                    do
                    {
                      *(*(a3 + 16) + v145) = *(*(a3 + 16) + v145 + 2);
                      *(*(a3 + 248) + v145) = *(*(a3 + 248) + v145 + 2);
                      v146 = *(a3 + 24);
                      if (v146)
                      {
                        *(v146 + v145) = *(v146 + v145 + 2);
                      }

                      ++v145;
                    }

                    while (v145 < *v6);
                    __s = v583;
                  }

                  goto LABEL_227;
                }
              }

              else
              {
LABEL_155:
                v106 = v596;
                log_OutText(*(v596 + 32), v591, 3, 0, "    Warning: no match, conflicting phonetics", v86, v87, v88, v570);
                log_OutText(*(v596 + 32), v591, 3, 0, "    Carrier: %s", v110, v111, v112, __s);
                log_OutText(*(v596 + 32), v591, 3, 0, "    Phonemes: %s", v113, v114, v115, v66);
                v116 = log_HasTraceTuningDataSubscriber(*(v596 + 32));
                v103 = 0;
                v107 = 0;
                v104 = "NOMATCH";
                v89 = v592;
                v105 = __s;
                if (!v116)
                {
                  goto LABEL_157;
                }
              }

              v117 = *(v106 + 32);
              v573 = v104;
              v571 = 0;
              v572 = "RES";
              v118 = v103;
              log_OutTraceTuningData(v117, 302, "%s%s %s%s", v98, v99, v100, v101, v102, "END");
              v105 = __s;
              v107 = v118;
              goto LABEL_157;
            }

            v92 = __s;
          }

          __s = v91;
          goto LABEL_139;
        }

        v22 = v585;
      }

      v48 = v4 + 2144;
LABEL_236:
      v44 = (v47 + 1);
      v43 = *v6;
      v47 = v44;
      if (v44 >= v43)
      {
        goto LABEL_257;
      }
    }

    if (v47 >= v58 || (v62 = *(a3 + 16), v63 = *(v62 + v47), v63 == 19))
    {
      v64 = v47;
LABEL_80:
      if (v47 != v58)
      {
        v78 = v58 - 2;
        *(a3 + 12) = v78;
        v79 = *(a3 + 24);
        if (v79)
        {
          *(v79 + v64 + 2) += *(v79 + v64 + 1) + *(v79 + v64);
          v78 = *v6;
        }

        if (v47 < v78)
        {
          v80 = v47;
          do
          {
            *(*(a3 + 16) + v80) = *(*(a3 + 16) + v80 + 2);
            *(*(a3 + 248) + v80) = *(*(a3 + 248) + v80 + 2);
            v81 = *(a3 + 24);
            if (v81)
            {
              *(v81 + v80) = *(v81 + v80 + 2);
            }

            ++v80;
          }

          while (v80 < *v6);
        }

        goto LABEL_227;
      }
    }

    else
    {
      while (1)
      {
        if (!v45 && *(v48 + v63) != 255)
        {
          v83 = *(v4 + 3578);
          if (*(v4 + 3578))
          {
            v84 = 0;
            v85 = *(a3 + 3608);
            do
            {
              if (v85)
              {
                *(v85 + 4 * v46) = -2;
              }

              ++v46;
              ++v84;
            }

            while (v84 < v83);
          }
        }

        v64 = v50 + 1;
        v63 = *(v62 + v50 + 1);
        v82 = v63 == 93 ? 0 : v45;
        v45 = v63 == 91 ? 1 : v82;
        if (v50 == (v58 - 1))
        {
          break;
        }

        ++v50;
        if (v63 == 19)
        {
          LOWORD(v47) = v64;
          goto LABEL_80;
        }
      }
    }

    LOWORD(v47) = v58;
LABEL_227:
    v147 = *(*(a3 + 16) + v47);
    if (v147 != 91 && (v147 != 93 ? (v148 = v45 == 0) : (v148 = 1), v148))
    {
      v45 = 0;
      if (*(v48 + *(*(a3 + 16) + v47)) != 255)
      {
        v46 += *(v4 + 3578);
      }
    }

    else
    {
      v45 = 1;
    }

    goto LABEL_236;
  }

LABEL_257:
  if (v594)
  {
    heap_Free(*(a1 + 8), v594);
  }

  if (log_HasTraceTuningDataSubscriber(*(a1 + 32)))
  {
    v573 = *(a3 + 12);
    v574 = *(a3 + 16);
    v571 = 0;
    v572 = "OUT";
    log_OutTraceTuningData(*(a1 + 32), 301, "%s%s %s%.*s", v155, v156, v157, v158, v159, "END");
  }

  if (*(v4 + 2516))
  {
    v160 = *v6;
    if (v160 >= 1)
    {
      LOWORD(v161) = 0;
      v162 = 0;
      do
      {
        v163 = *(*(a3 + 16) + v161);
        if (v163 == 62)
        {
          if (!v22)
          {
            return v3;
          }

          if (v160 >= v161)
          {
            v166 = v161;
            do
            {
              v167 = v166 + 1;
              *(*(a3 + 248) + v166) = *(*(a3 + 248) + v167);
              *(*(a3 + 16) + v166++) = *(*(a3 + 16) + v167);
              v160 = *(a3 + 12);
            }

            while (v160 >= v166);
          }

          v22 = 0;
          *v6 = v160 - 1;
          LOWORD(v161) = v161 - 1;
        }

        else if (v163 == 60)
        {
          if (v160 >= v161)
          {
            v164 = v161;
            do
            {
              v165 = v164 + 1;
              *(*(a3 + 16) + v164) = *(*(a3 + 16) + v165);
              *(*(a3 + 248) + v164++) = *(*(a3 + 248) + v165);
              v160 = *(a3 + 12);
            }

            while (v160 >= v164);
          }

          *v6 = v160 - 1;
          LOWORD(v161) = v161 - 1;
          v22 = 1;
        }

        else if (*(v4 + 2144 + *(*(a3 + 16) + v161)) != 255)
        {
          v168 = *(a3 + 456);
          v169 = v162++;
          if (v22 == 1)
          {
            *(v168 + v169) = 1;
          }

          else
          {
            v22 = 0;
            *(v168 + v169) = 0;
          }
        }

        v161 = (v161 + 1);
        v160 = *v6;
      }

      while (v161 < v160);
    }
  }

  v170 = *(a3 + 1784);
  *v170 = 0;
  v171 = *(a3 + 12);
  if (v171 <= 1)
  {
    v193 = 1;
    goto LABEL_318;
  }

  v172 = 0;
  v173 = v4 + 2144;
  v174 = 1;
  do
  {
    v175 = *(a3 + 16);
    v176 = v174 - 1;
    if (*(v175 + v176) == 35 && *(v175 + v174) == 91)
    {
      v177 = 0;
      v178 = v174 + 1;
      v179 = v174 + 1;
      while (1)
      {
        v180 = *(v175 + v179);
        if (v180 == 93)
        {
          break;
        }

        ++v179;
        v612[v177] = v180;
        if (v179 != v171)
        {
          v21 = v177++ == 9;
          if (!v21)
          {
            continue;
          }
        }

        return 2229280789;
      }

      v605 = v173;
      v612[v177] = 0;
      v181 = cstdlib_atoi(v612);
      if (v181 >= 0xFFFF)
      {
        v182 = 0xFFFF;
      }

      else
      {
        v182 = v181;
      }

      *(*(a3 + 1784) + 2 * v172) = v182 & ~(v182 >> 31);
      v183 = v177 + 2;
      v184 = *(a3 + 24);
      v185 = (v177 + 2);
      if (!v184)
      {
        v187 = *v6;
        v173 = v605;
        goto LABEL_304;
      }

      v186 = v174 + v183;
      if (v186 <= v178)
      {
        v187 = *v6;
        v173 = v605;
      }

      else
      {
        do
        {
          *(*(a3 + 24) + v174) += *(*(a3 + 24) + v178++);
        }

        while (v186 > v178);
        v184 = *(a3 + 24);
        v187 = *(a3 + 12);
        v173 = v605;
        if (!v184)
        {
          goto LABEL_304;
        }
      }

      if (v187 - v185 == v174)
      {
        *(v184 + v176) += *(v184 + v174);
        v187 = *v6;
LABEL_314:
        LOWORD(v171) = v187 - v183;
        *v6 = v171;
        LOWORD(v174) = v174 - 1;
        goto LABEL_315;
      }

LABEL_304:
      if (v187 - v185 > v174)
      {
        v188 = v174;
        LOWORD(v189) = v174;
        do
        {
          v190 = v188 + v185;
          v189 = v189;
          *(*(a3 + 16) + v189) = *(*(a3 + 16) + v190);
          v191 = *(a3 + 24);
          if (v191)
          {
            v192 = *(v191 + v190);
            if (v189 == v174)
            {
              v192 += *(v191 + v189);
            }

            *(v191 + v189) = v192;
          }

          if ((*(v4 + 3092) & 0x80000000) == 0)
          {
            *(*(a3 + 248) + v189) = *(*(a3 + 248) + v190);
          }

          LOWORD(v189) = v189 + 1;
          v188 = v189;
        }

        while (*v6 - v185 > v189);
        v187 = *v6;
      }

      goto LABEL_314;
    }

    if (*(v173 + *(v175 + v174)) != 255)
    {
      *(*(a3 + 1784) + 2 * ++v172) = 0;
      LOWORD(v171) = *(a3 + 12);
    }

LABEL_315:
    v174 = (v174 + 1);
  }

  while (v174 < v171);
  v170 = *(a3 + 1784);
  v193 = v172 + 1;
  v3 = 2229280789;
LABEL_318:
  *(v170 + v193) = 0;
  if ((*(v4 + 3068) & 0x80000000) == 0)
  {
    *(*(a3 + 224) + v193) = 0;
  }

  if ((*(v4 + 3072) & 0x80000000) == 0)
  {
    *(*(a3 + 240) + v193) = 0;
  }

  v194 = *(a3 + 12);
  LOWORD(v195) = *(a3 + 12);
  v196 = *(a3 + 16);
  while (1)
  {
    v197 = v194 - 1;
    if (v196[v197] == 35)
    {
      break;
    }

    v198 = *(a3 + 24);
    if (v198)
    {
      *(v198 + v195 - 2) += *(v198 + v197);
      LOWORD(v195) = *(a3 + 12);
      v196 = *(a3 + 16);
    }

    LOWORD(v195) = v195 - 1;
    *v6 = v195;
    v194 = v195;
  }

  if (v195 >= 1)
  {
    v199 = 0;
    v200 = v4 + 2144;
    v201 = v195;
    v202 = v195;
    do
    {
      v203 = v196[v199];
      if (v203 != 35 && *(v200 + v203) != 255)
      {
        LOWORD(v195) = v199;
        break;
      }

      ++v199;
    }

    while (v195 != v199);
    while (1)
    {
      v204 = v202 - 1;
      if (v202 < 1)
      {
        break;
      }

      v205 = v196[--v202];
      if (v205 != 35)
      {
        v202 = v204;
        if (*(v200 + v205) != 255)
        {
          goto LABEL_341;
        }
      }
    }

    LOWORD(v204) = -1;
LABEL_341:
    if (v195 <= v204)
    {
      v207 = 1;
      do
      {
        v208 = v196[v195];
        v209 = (v208 > 0x2A) | (0x3D7FFFFFFFFuLL >> v208);
        v210 = v208 > 0x2D;
        v211 = (1 << v208) & 0x242800000000;
        if (!v210 && v211 != 0)
        {
          v207 = 0;
        }

        v195 = (v195 + 1);
      }

      while ((v209 & (v195 <= v204)) != 0);
      v206 = v207 == 1;
    }

    else
    {
      v206 = 1;
    }

    if ((*(v4 + 3092) & 0x80000000) != 0)
    {
      if (v206 && v609 == 2)
      {
        v213 = 0;
      }

      else
      {
        v213 = v609;
      }

      v609 = v213;
    }

    if (*v196 == 35 && v196[v201 - 1] == 35)
    {
      if ((*(v4 + 3104) & 0x80000000) == 0)
      {
        v214 = cstdlib_strchr((v4 + 2400), v196[1]);
        if (v214)
        {
          v215 = v214 - (v4 + 96) + 1;
        }

        else
        {
          v215 = 0;
        }

        **(a3 + 264) = v215;
        **(a3 + 272) = 0;
      }

      if ((*(v4 + 3120) & 0x80000000) == 0 || (*(v4 + 3132) & 0x80000000) == 0)
      {
        **(a3 + 280) = 0;
      }

      if ((*(v4 + 3136) & 0x80000000) == 0)
      {
        **(a3 + 288) = 1;
      }

      if ((*(v4 + 3140) & 0x80000000) == 0)
      {
        **(a3 + 296) = 1;
      }

      if ((*(v4 + 3144) & 0x80000000) == 0)
      {
        **(a3 + 304) = 1;
      }

      if ((*(v4 + 3148) & 0x80000000) == 0)
      {
        **(a3 + 312) = 1;
      }

      v216 = *(a3 + 24);
      if (v216)
      {
        **(a3 + 1800) = *v216;
      }

      if (*(v4 + 2604) == 2)
      {
        v217 = 87;
      }

      else
      {
        v217 = 88;
      }

      **(a3 + 48) = v217;
      **(a3 + 32) = **(a3 + 16);
      **(a3 + 72) = 1;
      **(a3 + 80) = 1;
      **(a3 + 88) = 0;
      **(a3 + 96) = 3;
      v218 = (a3 + 104);
      **(a3 + 104) = 1;
      **(a3 + 112) = 0;
      **(a3 + 120) = 1;
      **(a3 + 128) = 0;
      **(a3 + 144) = 4;
      if ((*(v4 + 3068) & 0x80000000) == 0)
      {
        **(a3 + 216) = 0;
        **(a3 + 224) = 0;
      }

      if ((*(v4 + 3072) & 0x80000000) == 0)
      {
        **(a3 + 232) = 0;
        **(a3 + 240) = 0;
      }

      if ((*(v4 + 3392) & 0x80000000) == 0 || (*(v4 + 3396) & 0x80000000) == 0)
      {
        **(a3 + 3552) = 0xC800C8FF38FF38;
      }

      if ((*(v4 + 3092) & 0x80000000) != 0)
      {
        **(a3 + 248) = v609;
      }

      **(a3 + 152) = 3;
      **(a3 + 160) = 0;
      **(a3 + 168) = 0;
      **(a3 + 176) = 4;
      **(a3 + 184) = 4;
      v219 = 1;
      **(a3 + 192) = 1;
      v220 = *(a3 + 12);
      if (v220 >= 3)
      {
        v221 = 0;
        v222 = 0;
        v223 = 0;
        __sb = 0;
        v578 = v609;
        v602 = (v4 + 2400);
        v224 = *(a3 + 16);
        v225 = 2;
        v226 = 1;
        v227 = 1;
        v228 = 1;
        v590 = 1;
        while (1)
        {
          v606 = v225;
          v229 = v221;
          v230 = v226;
          v231 = *(v224 + v226);
          v232 = *(a3 + 24);
          if (*(v200 + *(v224 + v226)) == 255)
          {
            if (v232)
            {
              v223 += *(v232 + v226);
            }

            v234 = __sb;
            goto LABEL_682;
          }

          if (v232)
          {
            v233 = v219;
            *(*(a3 + 1800) + 2 * v219) = *(v232 + v226) + v223;
            LOBYTE(v231) = *(v224 + v226);
            v588 = 0;
          }

          else
          {
            v588 = v223;
            v233 = v219;
          }

          v595 = v229;
          v593 = v228;
          *(*(a3 + 32) + v233) = v231;
          v235 = *(a3 + 248);
          v236 = v578;
          if ((*(v4 + 3092) & 0x80000000) == 0)
          {
            v236 = *(v235 + v226);
          }

          *(v235 + v233) = v236;
          if ((*(v4 + 3104) & 0x80000000) == 0)
          {
            v237 = cstdlib_strchr(v602, *(*(a3 + 16) + v226 + 1));
            v218 = (a3 + 104);
            if (v237)
            {
              v238 = v237 - v602 + 1;
            }

            else
            {
              v238 = 0;
            }

            *(*(a3 + 264) + v233) = v238;
          }

          v239 = *(a3 + 16);
          if (*(v239 + v230) == 35)
          {
            if ((*(v4 + 3120) & 0x80000000) == 0 || (*(v4 + 3132) & 0x80000000) == 0)
            {
              *(*(a3 + 280) + v233) = 0;
            }

            if ((*(v4 + 3104) & 0x80000000) == 0)
            {
              *(*(a3 + 272) + v233) = 0;
            }

            *(*(a3 + 72) + v233) = 1;
            *(*(a3 + 80) + v233) = 1;
            *(*(a3 + 88) + v233) = 0;
            *(*(a3 + 96) + v233) = 3;
            *(*(a3 + 152) + v233) = 3;
            *(*(a3 + 160) + v233) = 0;
            *(*(a3 + 168) + v233) = 0;
            *(*(a3 + 176) + v233) = 4;
            *(*(a3 + 184) + v233) = 4;
            *(*(a3 + 104) + v233) = 2;
            if (((v230 - 1) & 0x8000) == 0)
            {
              v240 = v230 - 1;
              do
              {
                v241 = *(*(a3 + 16) + v240);
                if (*(v200 + v241) != 255)
                {
                  break;
                }

                if (v241 == 37)
                {
                  *(*v218 + v233) = 3;
                  break;
                }

                v21 = v240-- == 0;
              }

              while (!v21);
            }

            if (*(*v218 + v233) == 2 && *v6 > (v230 + 1))
            {
              v247 = v606;
              while (1)
              {
                v248 = *(*(a3 + 16) + v247);
                if (*(v200 + v248) != 255)
                {
                  break;
                }

                if (v248 == 37)
                {
                  v322 = 4;
                  v323 = v218;
                  goto LABEL_645;
                }

                if (++v247 >= *v6)
                {
                  goto LABEL_646;
                }
              }
            }

            goto LABEL_646;
          }

          v242 = (v230 + 1);
          if (v242 < *v6)
          {
            v243 = v606;
            while (1)
            {
              v244 = *(v239 + v243);
              if (v244 <= 0x2D && ((1 << v244) & 0x202800000000) != 0)
              {
                v246 = 1;
                goto LABEL_436;
              }

              if (*(v200 + v244) != 255)
              {
                break;
              }

              if (++v243 >= *v6)
              {
                goto LABEL_437;
              }
            }

            v246 = 0;
LABEL_436:
            *(*(a3 + 72) + v233) = v246;
          }

LABEL_437:
          v582 = v219;
          LOWORD(v219) = v230 - 1;
          if (((v230 - 1) & 0x8000) == 0)
          {
            v249 = v595;
            while (1)
            {
              v250 = *(*(a3 + 16) + v249);
              if (v250 <= 0x2D && ((1 << v250) & 0x202800000000) != 0)
              {
                v253 = 1;
                goto LABEL_448;
              }

              if (*(v200 + v250) != 255)
              {
                break;
              }

              v252 = v249--;
              if (v252 <= 0)
              {
                goto LABEL_449;
              }
            }

            v253 = 0;
LABEL_448:
            *(*(a3 + 80) + v233) = v253;
          }

LABEL_449:
          if ((*(v4 + 3104) & 0x80000000) == 0)
          {
            v254 = v233 - 1;
            if (*(*(a3 + 32) + v233 - 1) == 35)
            {
              v255 = cstdlib_strlen(v602) + 1;
              v242 = (v230 + 1);
              v218 = (a3 + 104);
              v256 = *(a3 + 272);
            }

            else
            {
              v256 = *(a3 + 272);
              if (*(*(a3 + 80) + v233) == 1)
              {
                v255 = *(*(a3 + 264) + v254);
              }

              else
              {
                v255 = *(v256 + v254);
              }
            }

            *(v256 + v233) = v255;
          }

          if (v242 < *v6)
          {
            v257 = 0;
            v258 = 0;
            v259 = 0;
            v260 = v606;
            while (1)
            {
              v261 = *(*(a3 + 16) + v260);
              if (v261 <= 0x26)
              {
                if (v261 == 34)
                {
                  v257 = 1;
                }

                else if (v261 == 35 || v261 == 37)
                {
                  goto LABEL_472;
                }
              }

              else
              {
                switch(v261)
                {
                  case '\'':
                    v259 = 1;
                    break;
                    v258 = 1;
                    break;
                  case '-':
                    goto LABEL_472;
                }
              }

              if (++v260 >= *v6)
              {
                goto LABEL_472;
              }
            }
          }

          v259 = 0;
          v258 = 0;
          v257 = 0;
LABEL_472:
          v219 = v219;
          if ((v219 & 0x80000000) == 0)
          {
            v262 = v595;
            do
            {
              v263 = *(*(a3 + 16) + v262);
              if (v263 <= 0x26)
              {
                if (v263 == 34)
                {
                  v257 = 1;
                }

                else if (v263 == 35 || v263 == 37)
                {
                  break;
                }
              }

              else
              {
                switch(v263)
                {
                  case '\'':
                    v259 = 1;
                    break;
                    v258 = 1;
                    break;
                  case '-':
                    goto LABEL_486;
                }
              }

              v264 = v262--;
            }

            while (v264 > 0);
          }

LABEL_486:
          if (v257 == 1)
          {
            *(*(a3 + 88) + v233) = 3;
          }

          else if (v259 == 1)
          {
            *(*(a3 + 88) + v233) = 2;
          }

          else
          {
            v265 = *(a3 + 88);
            *(v265 + v233) = v258 == 1;
          }

          v266 = *(*(a3 + 88) + v233);
          if (*(*(a3 + 88) + v233))
          {
            if (v266 == 1)
            {
              *(*(a3 + 160) + v233) = 7;
            }

            else if (v266 == 3)
            {
              if (v593)
              {
                v267 = 3;
              }

              else
              {
                v267 = 4;
              }

              if (!v227)
              {
                v267 = 2;
              }

              *(*(a3 + 160) + v233) = v267;
              if (*(*(a3 + 72) + v233) == 1)
              {
                v227 = 0;
              }
            }

            else
            {
              *(*(a3 + 160) + v233) = 1;
            }
          }

          else
          {
            *(*(a3 + 160) + v233) = 0;
          }

          *(*(a3 + 168) + v233) = 0;
          v268 = v233 - 1;
          v269 = *(*(a3 + 112) + v233 - 1);
          if (*(*(a3 + 88) + v233) == 3 && ((v270 = *(a3 + 168), v269 == 2) || !*(v270 + v268)))
          {
            LOBYTE(v268) = 2;
          }

          else if (*(*(a3 + 112) + v233 - 1))
          {
            if (v269 != 1)
            {
              goto LABEL_519;
            }

            v270 = *(a3 + 168);
            LODWORD(v268) = *(v270 + v268);
            if (v268 == 2)
            {
              LOBYTE(v268) = 3;
            }

            else if (v268 != 4)
            {
              if (v268 != 3)
              {
                goto LABEL_519;
              }

              LOBYTE(v268) = 4;
            }
          }

          else
          {
            v270 = *(a3 + 168);
            LOBYTE(v268) = *(v270 + v268);
          }

          *(v270 + v233) = v268;
LABEL_519:
          v580 = v222;
          *(*(a3 + 96) + v233) = 2;
          v271 = v242;
          v272 = *(a3 + 12);
          v584 = v242;
          if (v242 >= v272)
          {
            v274 = v242;
          }

          else
          {
            v273 = v242;
            v274 = v606;
            do
            {
              v275 = *(*(a3 + 16) + v274);
              if (*(v200 + v275) == 255)
              {
                v276 = cstdlib_strchr(v602, v275);
                LOWORD(v272) = *v6;
                if (!v276)
                {
                  break;
                }
              }

              ++v274;
            }

            while (v274 < v272);
            v271 = v274;
            v218 = (a3 + 104);
            LODWORD(v242) = v273;
          }

          if (v274 == v272 && *(*(a3 + 16) + v271 - 1) == 35)
          {
            *(*(a3 + 96) + v233) = 3;
            LOWORD(v272) = *(a3 + 12);
          }

          if (v274 < v272)
          {
            v277 = *(a3 + 16);
            v278 = v274 << 48;
            v279 = (v277 + v274);
            v280 = v274 + 1;
            while (1)
            {
              v282 = *v279++;
              v281 = v282;
              if (*(v200 + v282) != 255)
              {
                break;
              }

              v210 = v281 > 0x2A;
              v283 = (1 << v281) & 0x42800000000;
              if (!v210 && v283 != 0)
              {
                break;
              }

              v278 += 0x1000000000000;
              v21 = v272 == v280++;
              if (v21)
              {
                goto LABEL_545;
              }
            }

            v285 = *(v277 + (v278 >> 48));
            v210 = v285 > 0x2A;
            v286 = (1 << v285) & 0x42800000000;
            if (!v210 && v286 != 0)
            {
              *(*(a3 + 96) + v233) = 3;
            }
          }

LABEL_545:
          v288 = *(a3 + 96);
          v222 = v580;
          if (*(v288 + v233) == 2)
          {
            if (v219 < 1)
            {
              v293 = v230 - 1;
              if (!v230)
              {
                if (**(a3 + 16) == 35)
                {
                  *(v288 + v233) = 1;
                }

                v293 = -1;
              }

LABEL_556:
              v294 = *(a3 + 16);
            }

            else
            {
              v289 = v242;
              v290 = v595;
              while (1)
              {
                v291 = *(*(a3 + 16) + v290);
                if (*(v200 + v291) == 255 && !cstdlib_strchr(v602, v291))
                {
                  break;
                }

                v292 = v290--;
                if (v292 <= 1)
                {
                  v293 = 0;
                  v222 = v580;
                  v218 = (a3 + 104);
                  LODWORD(v242) = v289;
                  goto LABEL_556;
                }
              }

              v293 = v290;
              v294 = *(a3 + 16);
              if (v290 < 1)
              {
                v222 = v580;
                v218 = (a3 + 104);
                LODWORD(v242) = v289;
              }

              else
              {
                v222 = v580;
                v218 = (a3 + 104);
                LODWORD(v242) = v289;
                while (1)
                {
                  v326 = *(v294 + v293);
                  if (*(v200 + v326) != 255)
                  {
                    break;
                  }

                  v210 = v326 > 0x2A;
                  v327 = (1 << v326) & 0x42800000000;
                  if (!v210 && v327 != 0)
                  {
                    break;
                  }

                  v329 = v293--;
                  if (v329 <= 1)
                  {
                    v293 = 0;
                    break;
                  }
                }
              }
            }

            v295 = *(v294 + v293);
            v210 = v295 > 0x2A;
            v296 = (1 << v295) & 0x42800000000;
            if (!v210 && v296 != 0)
            {
              *(*(a3 + 96) + v233) = 1;
            }
          }

          *(*(a3 + 104) + v233) = 2;
          v298 = *(a3 + 12);
          v299 = *(a3 + 16);
          LOWORD(v300) = v242;
          if (v242 < v298)
          {
            v300 = v606;
            while (1)
            {
              v301 = *(v299 + v300);
              v210 = v301 > 0x2A;
              v302 = (1 << v301) & 0x42800000000;
              if (!v210 && v302 != 0)
              {
                break;
              }

              if (*(a3 + 12) == ++v300)
              {
                LOWORD(v300) = *(a3 + 12);
                break;
              }
            }

            v584 = v300;
          }

          v304 = *(v299 + v584);
          if (v304 <= 0x2A && ((1 << v304) & 0x42800000000) != 0)
          {
            if (v298 - 1 == v300 && v304 == 35)
            {
              v306 = 5;
            }

            else
            {
              if (v304 != 37)
              {
                v315 = (v300 + 1);
                while (2)
                {
                  if (v315 >= v298)
                  {
                    goto LABEL_582;
                  }

                  v316 = *(*(a3 + 16) + v315);
                  if (*(v200 + *(*(a3 + 16) + v315)) != 255)
                  {
                    goto LABEL_582;
                  }

                  if (v298 - 1 == v315 && v316 == 35)
                  {
                    v317 = 5;
                    goto LABEL_607;
                  }

                  if (v316 == 37)
                  {
                    v317 = 4;
LABEL_607:
                    *(*v218 + v233) = v317;
                  }

                  v315 = (v315 + 1);
                  v298 = *v6;
                  continue;
                }
              }

              v306 = 4;
            }

            *(*v218 + v233) = v306;
          }

LABEL_582:
          if (*(*v218 + v233) != 2)
          {
            goto LABEL_612;
          }

          v307 = *(a3 + 16);
          if (v219 >= 1)
          {
            v308 = v595;
            while (1)
            {
              v309 = *(v307 + v308);
              v219 = v308;
              v210 = v309 > 0x2A;
              v310 = (1 << v309) & 0x42800000000;
              if (!v210 && v310 != 0)
              {
                break;
              }

              --v308;
              if (v219 <= 1)
              {
                v219 = 0;
                break;
              }
            }
          }

          v312 = *(v307 + v219);
          if (v312 > 0x2A || ((1 << v312) & 0x42800000000) == 0)
          {
            goto LABEL_612;
          }

          if (!v219 && v312 == 35)
          {
            v314 = 1;
LABEL_611:
            *(*v218 + v233) = v314;
            goto LABEL_612;
          }

          if (v312 == 37)
          {
            v314 = 3;
            goto LABEL_611;
          }

          if ((v219 - 1) >= 1)
          {
            v324 = (v219 - 1);
            do
            {
              v325 = *(*(a3 + 16) + v324);
              if (*(v200 + v325) != 255)
              {
                break;
              }

              if (v325 == 37)
              {
                *(*v218 + v233) = 3;
              }

              ++v324;
            }

            while (v324 != 0x8000);
          }

LABEL_612:
          v318 = *(*v218 + v233) - 1;
          if (v318 <= 4)
          {
            *(*(a3 + 176) + v233) = 0x402000103uLL >> (8 * (v318 & 0x1F));
          }

          v219 = v582;
          if (((*(v4 + 3120) & 0x80000000) == 0 || (*(v4 + 3132) & 0x80000000) == 0) && v242 < *v6)
          {
            v319 = v606;
            while (1)
            {
              v320 = *(*(a3 + 16) + v319);
              if (v320 <= 0x2D && ((1 << v320) & 0x202800000000) != 0)
              {
                v322 = 0;
                v323 = (a3 + 280);
                v219 = v582;
                v218 = (a3 + 104);
                goto LABEL_645;
              }

              if (cstdlib_strchr("1234", v320))
              {
                break;
              }

              if (++v319 >= *v6)
              {
                v219 = v582;
                v218 = (a3 + 104);
                goto LABEL_646;
              }
            }

            v322 = *(*(a3 + 16) + v319) - 49;
            v323 = (a3 + 280);
            v219 = v582;
            v218 = (a3 + 104);
LABEL_645:
            *(*v323 + v233) = v322;
          }

LABEL_646:
          if (*(*(a3 + 72) + v233) == 1)
          {
            if (*(*(a3 + 96) + v233) == 3)
            {
              v330 = *(a3 + 112);
              if ((*(*(a3 + 104) + v233) & 0xFE) == 4)
              {
                *(v330 + v233) = 3;
              }

              else
              {
                *(v330 + v233) = 2;
              }
            }

            else
            {
              *(*(a3 + 112) + v233) = 1;
            }
          }

          else
          {
            *(*(a3 + 112) + v233) = 0;
          }

          if (*(*(a3 + 32) + v233) != 35)
          {
            v331 = (*(a3 + 112) + v233);
            v332 = *(v331 - 1);
            if (v332 == 2 || v332 == 3 || v219 == 1)
            {
              *(*(a3 + 184) + v233) = 0;
            }

            else
            {
              v338 = *v331;
              if ((v338 - 2) >= 2)
              {
                if (v338 != 1)
                {
                  v341 = *(a3 + 184);
                  if (v332 == 1)
                  {
                    *(v341 + v233) = 1;
                  }

                  else
                  {
                    *(v341 + v233) = 2;
                  }

                  goto LABEL_663;
                }

                v339 = *(a3 + 184);
                v340 = 3;
              }

              else
              {
                v339 = *(a3 + 184);
                v340 = 4;
              }

              *(v339 + v233) = v340;
            }
          }

LABEL_663:
          v234 = 0;
          v335 = v590;
          if (v590 == 1)
          {
            v336 = 1;
          }

          else
          {
            v336 = 2;
          }

          *(*(a3 + 120) + v233) = v336;
          if (*(*(a3 + 72) + v233) == 1)
          {
            v335 = 0;
          }

          v590 = v335;
          *(*(a3 + 128) + v233) = __sb;
          if (*(*(a3 + 112) + v233) != 3)
          {
            if (*(*(a3 + 32) + v233) == 35)
            {
              v234 = __sb;
            }

            else if (*(*(a3 + 72) + v233) != 1 || __sb == 254)
            {
              v234 = __sb;
            }

            else
            {
              v234 = __sb + 1;
            }
          }

          if ((*(v4 + 3140) & 0x80000000) == 0)
          {
            *(*(a3 + 296) + v233) = 2;
            if (!v222)
            {
              *(*(a3 + 296) + v233) = 1;
              v228 = v593;
              LOWORD(v229) = v595;
              v222 = (*(*(a3 + 88) + v233) & 0xFE) == 2 && *(*(a3 + 72) + v233) == 1;
              goto LABEL_681;
            }

            v222 = 1;
          }

          v228 = v593;
          LOWORD(v229) = v595;
LABEL_681:
          ++v219;
          v224 = *(a3 + 16);
          LOWORD(v220) = *(a3 + 12);
          v231 = *(v224 + v230);
          v223 = v588;
LABEL_682:
          if (v231 == 37)
          {
            v228 = 0;
            v227 = 1;
          }

          v226 = v230 + 1;
          v225 = v606 + 1;
          v221 = v229 + 1;
          __sb = v234;
          if (v220 - 1 <= (v230 + 1))
          {
            goto LABEL_700;
          }
        }
      }

      LOBYTE(v223) = 0;
      v222 = 0;
LABEL_700:
      if (*(v4 + 2560))
      {
        *(*(a3 + 3560) + 9 * v219 + 7) = 8995;
      }

      if ((*(v4 + 3136) & 0x80000000) == 0)
      {
        *(*(a3 + 288) + v219) = 1;
      }

      if ((*(v4 + 3140) & 0x80000000) == 0)
      {
        *(*(a3 + 296) + v219) = 3;
      }

      if ((*(v4 + 3144) & 0x80000000) == 0)
      {
        *(*(a3 + 304) + v219) = 1;
      }

      if ((*(v4 + 3148) & 0x80000000) == 0)
      {
        *(*(a3 + 312) + v219) = 1;
      }

      if ((*(v4 + 3104) & 0x80000000) == 0)
      {
        *(*(a3 + 264) + v219) = 0;
        *(*(a3 + 272) + v219) = 0;
      }

      if ((*(v4 + 3120) & 0x80000000) == 0 || (*(v4 + 3132) & 0x80000000) == 0)
      {
        *(*(a3 + 280) + v219) = 0;
      }

      if (*(v4 + 2604) == 2)
      {
        v342 = 87;
      }

      else
      {
        v342 = 88;
      }

      *(*(a3 + 48) + v219) = v342;
      *(*(a3 + 32) + v219) = *(*(a3 + 16) + *(a3 + 12) - 1);
      v343 = *(a3 + 24);
      if (v343)
      {
        *(*(a3 + 1800) + 2 * v219) = *(v343 + *(a3 + 12) - 1) + v223;
      }

      *(*(a3 + 72) + v219) = 1;
      *(*(a3 + 80) + v219) = 1;
      *(*(a3 + 88) + v219) = 0;
      *(*(a3 + 96) + v219) = 3;
      *(*(a3 + 104) + v219) = 5;
      *(*(a3 + 112) + v219) = 0;
      *(*(a3 + 120) + v219) = 3;
      *(*(a3 + 128) + v219) = 0;
      *(*(a3 + 136) + v219) = 0;
      *(*(a3 + 144) + v219) = 4;
      if ((*(v4 + 3068) & 0x80000000) == 0)
      {
        *(*(a3 + 216) + v219) = 0;
        *(*(a3 + 224) + v219) = 0;
      }

      if ((*(v4 + 3072) & 0x80000000) == 0)
      {
        *(*(a3 + 232) + v219) = 0;
        *(*(a3 + 240) + v219) = 0;
      }

      if ((*(v4 + 3392) & 0x80000000) == 0 || (*(v4 + 3396) & 0x80000000) == 0)
      {
        *(*(a3 + 3552) + 8 * v219) = 0xC800C8FF38FF38;
      }

      if ((*(v4 + 3092) & 0x80000000) != 0)
      {
        *(*(a3 + 248) + v219) = v609;
      }

      else
      {
        *(*(a3 + 248) + v219) = *(*(a3 + 248) + v219 - 1);
      }

      *(*(a3 + 152) + v219) = 3;
      *(*(a3 + 160) + v219) = 0;
      *(*(a3 + 168) + v219) = 0;
      *(*(a3 + 176) + v219) = 4;
      *(*(a3 + 184) + v219) = 4;
      *(*(a3 + 192) + v219) = 1;
      if (*(v4 + 2560))
      {
        cstdlib_memset((*(a3 + 3560) + 9 * v219), 0, 9uLL);
        v344 = (*(a3 + 3560) + 9 * v219);
        v344[5] = *(*(a3 + 32) + v219 - 1);
        v344[6] = 35;
        *v344 = 35;
      }

      *(a3 + 10) = v219 + 1;
      v345 = 1;
      if ((*(a3 + 12) - 2) >= 1)
      {
        v346 = 0;
        v347 = v219 - 1;
        v348 = v222 & (*(v4 + 3140) >> 31);
        v349 = (*(a3 + 12) - 2);
        v350 = 1;
        v351 = 1;
        v352 = 1;
        v353 = 1;
        while (*(v200 + *(*(a3 + 16) + v349)) == 255)
        {
LABEL_834:
          v210 = v349-- <= 1;
          if (v210)
          {
            v345 = v346 + 1;
            goto LABEL_843;
          }
        }

        *(*(a3 + 136) + v347) = v352 == 0;
        LOWORD(v354) = v349;
        do
        {
          v354 = (v354 - 1);
          if (v354 < 1)
          {
            break;
          }

          v355 = *(*(a3 + 16) + v354);
          if (v355 == 37)
          {
            break;
          }
        }

        while (*(v200 + v355) == 255);
        v356 = *(*(a3 + 88) + v347);
        if (v356 == 3 && v352 != 0 && v351)
        {
          *(*(a3 + 160) + v347) = 6;
          goto LABEL_753;
        }

        if (v356 == 3 && v351)
        {
          v360 = *(a3 + 160);
          if (*(v360 + v347) - 3 >= 2)
          {
            *(v360 + v347) = 5;
LABEL_753:
            v351 = *(*(a3 + 80) + v347) != 1;
          }

          else
          {
            v351 = 1;
          }
        }

        v361 = (*(a3 + 168) + v347);
        if (!*v361)
        {
          if (*(*(a3 + 112) + v347))
          {
            if (*(*(a3 + 112) + v347) != 1 || v361[1] - 1 >= 2)
            {
              goto LABEL_755;
            }
          }

          else if (v361[1] != 1)
          {
            goto LABEL_755;
          }

          *v361 = 1;
        }

LABEL_755:
        v362 = *v6 - 1;
        if (v362 == v349)
        {
          v363 = *(a3 + 128);
          v364 = *(v363 + v347);
        }

        else
        {
          v363 = *(a3 + 128);
          if (v362 <= v349 || (v364 = *(v363 + v347), !*(v363 + v347)) && *(*(a3 + 112) + v347) != 3 || *(v363 + v347 + 1))
          {
            v364 = v346;
          }
        }

        v365 = v346 + 1;
        v366 = v347 + 1;
        *(v363 + v366) = v365;
        v367 = *(*(a3 + 128) + v347);
        if (v367 == v364)
        {
          *(*(a3 + 144) + v347) = 4;
        }

        else if (v364 - 1 == v367)
        {
          *(*(a3 + 144) + v347) = 6;
        }

        else if (*(*(a3 + 128) + v347))
        {
          if (v367 == 1)
          {
            *(*(a3 + 144) + v347) = 1;
          }

          else
          {
            v368 = 19662 * v364;
            if ((v364 - HIWORD(v368)) >= v367)
            {
              v369 = *(a3 + 144);
              if (HIWORD(v368) <= v367)
              {
                *(v369 + v347) = 5;
              }

              else
              {
                *(v369 + v347) = 3;
              }
            }

            else
            {
              *(*(a3 + 144) + v347) = 2;
            }
          }
        }

        else
        {
          *(*(a3 + 144) + v347) = 0;
        }

        if (*(*(a3 + 16) + v349) != 35)
        {
          if (*(*(a3 + 144) + v347) == 4)
          {
            v372 = *(a3 + 152);
            if (*(*(a3 + 128) + v347))
            {
              if (v352)
              {
                *(v372 + v347) = 3;
              }

              else
              {
                *(v372 + v347) = 1;
              }
            }

            else
            {
              *(v372 + v347) = 2;
            }
          }

          else if (*(*(a3 + 128) + v347))
          {
            v373 = *(*(a3 + 96) + v347);
            switch(v373)
            {
              case 3:
                *(*(a3 + 152) + v347) = 6;
                break;
              case 2:
                *(*(a3 + 152) + v347) = 5;
                break;
              case 1:
                *(*(a3 + 152) + v347) = 4;
                break;
            }
          }

          else
          {
            *(*(a3 + 152) + v347) = 0;
          }
        }

        if (*(*(a3 + 152) + v347) == 2)
        {
          v370 = *(a3 + 160);
          if (*(v370 + v347) == 4)
          {
            if (v352)
            {
              v371 = 6;
            }

            else
            {
              v371 = 5;
            }

            *(v370 + v347) = v371;
          }
        }

        if (*(*(a3 + 16) + v354) == 37)
        {
          v352 = 0;
          v351 = 1;
        }

        if (v353 == 1)
        {
          *(*(a3 + 120) + v347) = 3;
        }

        if (*(*(a3 + 80) + v347) == 1)
        {
          v353 = 0;
        }

        if ((*(v4 + 3136) & 0x80000000) == 0)
        {
          *(*(a3 + 288) + v347) = 1;
          if (*(*(a3 + 32) + v347) == 35)
          {
            v350 = *(*(a3 + 88) + v347) < 2u;
            goto LABEL_817;
          }

          if ((*(*(a3 + 112) + v347) & 0xFE) == 2)
          {
            if (*(*(a3 + 88) + v347) < 2u)
            {
              goto LABEL_816;
            }

LABEL_811:
            v350 = 0;
          }

          else
          {
            if (!v350 || *(*(a3 + 88) + v347) > 1u)
            {
              goto LABEL_811;
            }

LABEL_816:
            *(*(a3 + 288) + v347) = 3;
            v350 = 1;
          }
        }

LABEL_817:
        if ((*(v4 + 3140) & 0x80000000) == 0 && !v348)
        {
          if (*v6 - 2 == v349 || (*(*(a3 + 88) + v366) & 0xFE) != 2 || (v348 = *(*(a3 + 72) + v347), v348 != 1))
          {
            v348 = 0;
            *(*(a3 + 296) + v347) = 3;
          }
        }

        if ((*(v4 + 3144) & 0x80000000) == 0)
        {
          if (*(*(a3 + 32) + v347) == 35 || (v374 = *(*(a3 + 112) + v347), (v374 - 2) < 2))
          {
            v375 = *(a3 + 304);
            v376 = 1;
          }

          else if (v374 == 1)
          {
            v375 = *(a3 + 304);
            v376 = *(v375 + v366) + 1;
          }

          else
          {
            v375 = *(a3 + 304);
            v376 = *(v375 + v366);
          }

          *(v375 + v347) = v376;
        }

        if (!*(v4 + 2516))
        {
          if (*(v4 + 2604) == 2)
          {
            v377 = 87;
          }

          else
          {
            v377 = *(v4 + 1373 + *(v200 + *(*(a3 + 16) + v349)));
          }

          *(*(a3 + 48) + v347) = v377;
        }

        --v347;
        v346 = v364;
        goto LABEL_834;
      }

      v350 = 1;
LABEL_843:
      **(a3 + 128) = v345;
      *(*(a3 + 128) + 1) = v345;
      **(a3 + 136) = *(*(a3 + 136) + 1);
      if (*(a3 + 10) > 1)
      {
        v378 = 0;
        v379 = 0;
        v603 = 0;
        v380 = *(v4 + 3136) >= 0 || v350;
        v607 = v380;
        while (1)
        {
          if (*(*(a3 + 80) + v379) == 1)
          {
            if (*(v4 + 2560))
            {
              v381 = 9 * v379;
              cstdlib_memset((*(a3 + 3560) + v381), 0, 9uLL);
              if (v379)
              {
                v382 = *(a3 + 32);
                v383 = *(a3 + 3560);
                *(v383 + v381 + 5) = *(v382 + v379 - 1);
              }

              else
              {
                v383 = *(a3 + 3560);
                *(v383 + v381 + 5) = 35;
                v382 = *(a3 + 32);
              }

              v389 = *(v382 + v379);
              v390 = (v383 + v381);
              v390[7] = v389;
              *v390 = v389;
            }

            v391 = 1;
            if (*(*(a3 + 72) + v379) == 1)
            {
              v392 = v379;
            }

            else
            {
              v392 = v379;
              v393 = v379;
              v394 = 9 * v379;
              do
              {
                if (*(v4 + 2560))
                {
                  if (v391 > 4u)
                  {
                    cstdlib_memset((*(a3 + 3560) + v394), 0, 9uLL);
                  }

                  else
                  {
                    *(*(a3 + 3560) + v394 + v391) = *(*(a3 + 32) + v392 + 1);
                  }
                }

                ++v393;
                ++v391;
                v392 = v393;
              }

              while (*(*(a3 + 72) + v393) != 1);
            }

            if (*(v4 + 2560))
            {
              v395 = (*(a3 + 32) + v392);
              v396 = *(a3 + 3560) + 9 * v379;
              *(v396 + 6) = v395[1];
              *(v396 + 8) = *v395;
            }

            *(*(a3 + 192) + v379) = v391;
          }

          else
          {
            v384 = v378 - 1;
            *(*(a3 + 192) + v379) = *(*(a3 + 192) + v384);
            if (*(v4 + 2560))
            {
              v385 = *(a3 + 3560);
              v386 = (v385 + 9 * v384);
              v387 = *v386;
              v388 = v385 + 9 * v379;
              *(v388 + 8) = *(v386 + 8);
              *v388 = v387;
            }
          }

          if (*(*(a3 + 192) + v379) == 1 && *(*(a3 + 32) + v379) != 35)
          {
            v397 = *(a3 + 184);
            if (*(v397 + v379))
            {
              *(v397 + v379) = 1;
            }
          }

          if (!*(v4 + 2516))
          {
            v398 = *(v4 + 2966);
            if (*(v4 + 2966))
            {
              v399 = 0;
              v400 = 0;
              v401 = *(v4 + 2968);
              v402 = *(a3 + 3568);
              v403 = v378 * *(*a3 + 2966);
              v404 = *(a3 + 3576);
              do
              {
                v405 = *(v401 + 32 * v400 + 4);
                v406 = v403 + v399;
                *(v402 + 4 * v406) = v405;
                *(v404 + 4 * v406) = v405;
                v399 = ++v400;
              }

              while (v400 < v398);
            }

            v407 = *(v4 + 3360);
            if (*(v4 + 3360))
            {
              v408 = 0;
              v409 = 0;
              v410 = *(v4 + 3368);
              v411 = *(a3 + 3584);
              v412 = v378 * *(*a3 + 3360);
              do
              {
                *(v411 + 4 * (v412 + v408)) = *(v410 + 12 * v409++ + 4);
                v408 = v409;
              }

              while (v409 < v407);
              v413 = 0;
              v414 = 0;
              v415 = *(v4 + 3368);
              v416 = *(a3 + 3592);
              v417 = v378 * *(*a3 + 3360);
              do
              {
                *(v416 + 4 * (v417 + v413)) = *(v415 + 12 * v414++ + 4);
                v413 = v414;
              }

              while (v414 < v407);
            }
          }

          if (*(v4 + 3472))
          {
            v418 = 0;
            v419 = 0;
            v420 = v378 + 1;
            do
            {
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3480) + *(v4 + 3474) * v418)), *(*(a3 + 32) + v379)) || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3480) + *(v4 + 3474) * v418 + 1)), *(*(a3 + 32) + v420)))
              {
                goto LABEL_906;
              }

              v421 = v379 ? *(*(a3 + 32) + v379 - 1) : 35;
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3480) + *(v4 + 3474) * v418 + 2)), v421))
              {
                goto LABEL_906;
              }

              v422 = *(a3 + 10) - 2;
              if (v422 != v378)
              {
                if (cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3480) + *(v4 + 3474) * v418 + 3)), *(*(a3 + 32) + v379 + 2)))
                {
                  goto LABEL_893;
                }

                v422 = *(a3 + 10) - 2;
              }

              if (v422 != v378 || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3480) + *(v4 + 3474) * v418 + 3)), 35))
              {
                goto LABEL_906;
              }

LABEL_893:
              v423 = *(v4 + 3480);
              v424 = *(v4 + 3474);
              if ((*(v4 + 3092) & 0x80000000) != 0)
              {
                goto LABEL_901;
              }

              v425 = *(v4 + 3432);
              v426 = *(v425 + 8 * *(v423 + *(v4 + 3474) * v418 + 4));
              if (v426)
              {
                if (!cstdlib_strchr(v426, *(*(a3 + 248) + v379) + 48))
                {
                  goto LABEL_906;
                }

                v425 = *(v4 + 3432);
                v423 = *(v4 + 3480);
                v424 = *(v4 + 3474);
                v427 = *(v4 + 3474) * v418;
              }

              else
              {
                v427 = *(v4 + 3474) * v418;
              }

              v428 = *(v425 + 8 * *(v423 + v427 + 5));
              if (!v428)
              {
                goto LABEL_901;
              }

              if (cstdlib_strchr(v428, *(*(a3 + 248) + v420) + 48))
              {
                v423 = *(v4 + 3480);
                v424 = *(v4 + 3474);
LABEL_901:
                v429 = v424 + v424 * v418;
                v430 = *(v429 + v423 - 1);
                if (v430 == 1)
                {
                  *(*(a3 + 3584) + 4 * (*(v423 + v429 - 2) + v378 * *(*a3 + 3360))) = 0;
                }

                else if (*(v429 + v423 - 1))
                {
                  v432 = *(v423 + v429 - 2) + v378 * *(*a3 + 3360);
                  *(*(a3 + 3584) + 4 * v432) *= v430;
                }

                else
                {
                  v431 = *(v423 + v429 - 2) + v378 * *(*a3 + 3360);
                  *(*(a3 + 3584) + 4 * v431) *= 5;
                }
              }

LABEL_906:
              v418 = ++v419;
            }

            while (v419 < *(v4 + 3472));
          }

          if (*(v4 + 3488))
          {
            v433 = 0;
            v434 = 0;
            v435 = v378 + 1;
            do
            {
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3496) + *(v4 + 3490) * v433)), *(*(a3 + 32) + v379)) || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3496) + *(v4 + 3490) * v433 + 1)), *(*(a3 + 32) + v435)))
              {
                goto LABEL_933;
              }

              v436 = v379 ? *(*(a3 + 32) + v379 - 1) : 35;
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3496) + *(v4 + 3490) * v433 + 2)), v436))
              {
                goto LABEL_933;
              }

              v437 = *(a3 + 10) - 2;
              if (v437 != v378)
              {
                if (cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3496) + *(v4 + 3490) * v433 + 3)), *(*(a3 + 32) + v379 + 2)))
                {
                  goto LABEL_920;
                }

                v437 = *(a3 + 10) - 2;
              }

              if (v437 != v378 || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3496) + *(v4 + 3490) * v433 + 3)), 35))
              {
                goto LABEL_933;
              }

LABEL_920:
              v438 = *(v4 + 3496);
              v439 = *(v4 + 3490);
              if ((*(v4 + 3092) & 0x80000000) != 0)
              {
                goto LABEL_928;
              }

              v440 = *(v4 + 3432);
              v441 = *(v440 + 8 * *(v438 + *(v4 + 3490) * v433 + 4));
              if (v441)
              {
                if (!cstdlib_strchr(v441, *(*(a3 + 248) + v379) + 48))
                {
                  goto LABEL_933;
                }

                v440 = *(v4 + 3432);
                v438 = *(v4 + 3496);
                v439 = *(v4 + 3490);
                v442 = *(v4 + 3490) * v433;
              }

              else
              {
                v442 = *(v4 + 3490) * v433;
              }

              v443 = *(v440 + 8 * *(v438 + v442 + 5));
              if (!v443)
              {
                goto LABEL_928;
              }

              if (cstdlib_strchr(v443, *(*(a3 + 248) + v435) + 48))
              {
                v438 = *(v4 + 3496);
                v439 = *(v4 + 3490);
LABEL_928:
                v444 = v439 + v439 * v433;
                v445 = *(v444 + v438 - 1);
                if (v445 == 1)
                {
                  *(*(a3 + 3592) + 4 * (*(v438 + v444 - 2) + v378 * *(*a3 + 3360))) = 0;
                }

                else if (*(v444 + v438 - 1))
                {
                  v447 = *(v438 + v444 - 2) + v378 * *(*a3 + 3360);
                  *(*(a3 + 3592) + 4 * v447) *= v445;
                }

                else
                {
                  v446 = *(v438 + v444 - 2) + v378 * *(*a3 + 3360);
                  *(*(a3 + 3592) + 4 * v446) *= 5;
                }
              }

LABEL_933:
              v433 = ++v434;
            }

            while (v434 < *(v4 + 3488));
          }

          if (*(v4 + 3440))
          {
            v448 = 0;
            v449 = 0;
            v450 = v378 + 1;
            do
            {
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3448) + *(v4 + 3442) * v448)), *(*(a3 + 32) + v379)) || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3448) + *(v4 + 3442) * v448 + 1)), *(*(a3 + 32) + v450)))
              {
                goto LABEL_960;
              }

              v451 = v379 ? *(*(a3 + 32) + v379 - 1) : 35;
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3448) + *(v4 + 3442) * v448 + 2)), v451))
              {
                goto LABEL_960;
              }

              v452 = *(a3 + 10) - 2;
              if (v452 != v378)
              {
                if (cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3448) + *(v4 + 3442) * v448 + 3)), *(*(a3 + 32) + v379 + 2)))
                {
                  goto LABEL_947;
                }

                v452 = *(a3 + 10) - 2;
              }

              if (v452 != v378 || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3448) + *(v4 + 3442) * v448 + 3)), 35))
              {
                goto LABEL_960;
              }

LABEL_947:
              v453 = *(v4 + 3448);
              v454 = *(v4 + 3442);
              if ((*(v4 + 3092) & 0x80000000) != 0)
              {
                goto LABEL_955;
              }

              v455 = *(v4 + 3432);
              v456 = *(v455 + 8 * *(v453 + *(v4 + 3442) * v448 + 4));
              if (v456)
              {
                if (!cstdlib_strchr(v456, *(*(a3 + 248) + v379) + 48))
                {
                  goto LABEL_960;
                }

                v455 = *(v4 + 3432);
                v453 = *(v4 + 3448);
                v454 = *(v4 + 3442);
                v457 = *(v4 + 3442) * v448;
              }

              else
              {
                v457 = *(v4 + 3442) * v448;
              }

              v458 = *(v455 + 8 * *(v453 + v457 + 5));
              if (!v458)
              {
                goto LABEL_955;
              }

              if (cstdlib_strchr(v458, *(*(a3 + 248) + v450) + 48))
              {
                v453 = *(v4 + 3448);
                v454 = *(v4 + 3442);
LABEL_955:
                v459 = v454 + v454 * v448;
                v460 = v459 - 1;
                v461 = *(v453 + v459 - 1);
                if (v461 == 1)
                {
                  v464 = v378 * *(*a3 + 2966);
                  v465 = v453 + v459;
                  *(*(a3 + 3568) + 4 * (v464 + *(v465 - 2))) = 0;
                  *(*(a3 + 3576) + 4 * (v464 + *(v465 - 2))) = 0;
                }

                else if (*(v453 + v459 - 1))
                {
                  v466 = v378 * *(*a3 + 2966);
                  v467 = v453 + v459;
                  *(*(a3 + 3568) + 4 * (v466 + *(v467 - 2))) *= v461;
                  *(*(a3 + 3576) + 4 * (v466 + *(v467 - 2))) *= *(v453 + v460);
                }

                else
                {
                  v462 = v378 * *(*a3 + 2966);
                  v463 = v453 + v459;
                  *(*(a3 + 3568) + 4 * (v462 + *(v463 - 2))) *= 5;
                  *(*(a3 + 3576) + 4 * (v462 + *(v463 - 2))) *= 5;
                }
              }

LABEL_960:
              v448 = ++v449;
            }

            while (v449 < *(v4 + 3440));
          }

          if (*(v4 + 3456))
          {
            v468 = 0;
            v469 = 0;
            v470 = v378 + 1;
            do
            {
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3464) + *(v4 + 3458) * v468)), *(*(a3 + 32) + v379)) || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3464) + *(v4 + 3458) * v468 + 1)), *(*(a3 + 32) + v470)))
              {
                goto LABEL_987;
              }

              v471 = v379 ? *(*(a3 + 32) + v379 - 1) : 35;
              if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3464) + *(v4 + 3458) * v468 + 2)), v471))
              {
                goto LABEL_987;
              }

              v472 = *(a3 + 10) - 2;
              if (v472 != v378)
              {
                if (cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3464) + *(v4 + 3458) * v468 + 3)), *(*(a3 + 32) + v379 + 2)))
                {
                  goto LABEL_974;
                }

                v472 = *(a3 + 10) - 2;
              }

              if (v472 != v378 || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3464) + *(v4 + 3458) * v468 + 3)), 35))
              {
                goto LABEL_987;
              }

LABEL_974:
              v473 = *(v4 + 3464);
              v474 = *(v4 + 3458);
              if ((*(v4 + 3092) & 0x80000000) != 0)
              {
                goto LABEL_982;
              }

              v475 = *(v4 + 3432);
              LODWORD(v476) = v468 * v474;
              v477 = *(v475 + 8 * *(v473 + (v468 * v474) + 4));
              if (v477)
              {
                if (!cstdlib_strchr(v477, *(*(a3 + 248) + v379) + 48))
                {
                  goto LABEL_987;
                }

                v475 = *(v4 + 3432);
                v473 = *(v4 + 3464);
                v474 = *(v4 + 3458);
                v476 = *(v4 + 3458) * v468;
              }

              else
              {
                v476 = v476;
              }

              v478 = *(v475 + 8 * *(v473 + v476 + 5));
              if (!v478)
              {
                goto LABEL_982;
              }

              if (cstdlib_strchr(v478, *(*(a3 + 248) + v470) + 48))
              {
                v473 = *(v4 + 3464);
                v474 = *(v4 + 3458);
LABEL_982:
                v479 = (v468 * v474);
                v480 = v474;
                v481 = v479 + v474;
                v482 = v481 - 1;
                v483 = *(v473 + v482);
                if (v483 == 1)
                {
                  v487 = v378 * *(*a3 + 2966);
                  *(*(a3 + 3568) + 4 * (v487 + *(v473 + v481 - 2))) = 0;
                  *(*(a3 + 3576) + 4 * (v487 + *(v480 + v479 + v473 - 2))) = 0;
                }

                else if (*(v473 + v482))
                {
                  v488 = v378 * *(*a3 + 2966);
                  v489 = v473 + v481;
                  *(*(a3 + 3568) + 4 * (v488 + *(v489 - 2))) *= v483;
                  *(*(a3 + 3576) + 4 * (v488 + *(v489 - 2))) *= *(v473 + v482);
                }

                else
                {
                  v484 = v378 * *(*a3 + 2966);
                  v485 = v484 + *(v481 + v473 - 2);
                  *(*(a3 + 3568) + 4 * v485) *= 5;
                  v486 = v484 + *(v480 + v479 + v473 - 2);
                  *(*(a3 + 3576) + 4 * v486) *= 5;
                }
              }

LABEL_987:
              v468 = ++v469;
            }

            while (v469 < *(v4 + 3456));
          }

          if (!*(v4 + 2516) && *(v4 + 2966))
          {
            v490 = 0;
            v491 = 0;
            do
            {
              *(*(a3 + 3600) + v490 + v378 * *(*a3 + 2966)) = *(*(v4 + 2968) + 32 * v491++ + 10);
              v490 = v491;
            }

            while (v491 < *(v4 + 2966));
          }

          if (*(v4 + 3504))
          {
            break;
          }

LABEL_1015:
          if ((*(v4 + 3136) & 0x80000000) == 0)
          {
            v504 = *(a3 + 88);
            if (v607 == 1 && *(v504 + v379) <= 1u)
            {
              v607 = 1;
              if (*(*(a3 + 32) + v379) != 35)
              {
                *(*(a3 + 288) + v379) = 1;
                v504 = *(a3 + 88);
              }
            }

            else
            {
              v607 = 0;
            }

            if (*(v504 + v379))
            {
              *(*(a3 + 288) + v379) = 2;
            }

            if (*(*(a3 + 32) + v379) == 35 || (*(*(a3 + 112) + v379) & 0xFE) == 2)
            {
              v607 = 1;
            }
          }

          if ((*(v4 + 3148) & 0x80000000) == 0)
          {
            v505 = v603;
            if (*(*(a3 + 32) + v379) == 35)
            {
              v505 = 1;
            }

            *(*(a3 + 312) + v379) = v505;
            if (*(*(a3 + 32) + v379) == 35 || (*(*(a3 + 112) + v379) & 0xFE) == 2)
            {
              v603 = *(*(a3 + 304) + v379 + 1);
            }
          }

          v378 = ++v379;
          if (*(a3 + 10) - 1 <= v379)
          {
            goto LABEL_1034;
          }
        }

        v492 = 0;
        v493 = 0;
        v494 = v378 + 1;
        while (2)
        {
          if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3512) + *(v4 + 3506) * v492)), *(*(a3 + 32) + v379)) || !cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3512) + *(v4 + 3506) * v492 + 1)), *(*(a3 + 32) + v494)))
          {
            goto LABEL_1014;
          }

          v495 = v379 ? *(*(a3 + 32) + v379 - 1) : 35;
          if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3512) + *(v4 + 3506) * v492 + 2)), v495))
          {
            goto LABEL_1014;
          }

          v496 = *(a3 + 10) - 2;
          if (v496 != v378)
          {
            if (!cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3512) + *(v4 + 3506) * v492 + 3)), *(*(a3 + 32) + v379 + 2)))
            {
              v496 = *(a3 + 10) - 2;
              break;
            }

LABEL_1005:
            v497 = *(v4 + 3512);
            v498 = *(v4 + 3506);
            if ((*(v4 + 3092) & 0x80000000) == 0)
            {
              v499 = *(v4 + 3432);
              v500 = *(v499 + 8 * *(v497 + *(v4 + 3506) * v492 + 4));
              if (v500)
              {
                if (cstdlib_strchr(v500, *(*(a3 + 248) + v379) + 48))
                {
                  v499 = *(v4 + 3432);
                  v497 = *(v4 + 3512);
                  v498 = *(v4 + 3506);
                  v501 = *(v4 + 3506) * v492;
                  goto LABEL_1010;
                }

LABEL_1014:
                v492 = ++v493;
                if (v493 >= *(v4 + 3504))
                {
                  goto LABEL_1015;
                }

                continue;
              }

              v501 = *(v4 + 3506) * v492;
LABEL_1010:
              v502 = *(v499 + 8 * *(v497 + v501 + 5));
              if (v502)
              {
                if (!cstdlib_strchr(v502, *(*(a3 + 248) + v494) + 48))
                {
                  goto LABEL_1014;
                }

                v497 = *(v4 + 3512);
                v498 = *(v4 + 3506);
              }
            }

            v503 = v498 + v498 * v492;
            *(*(a3 + 3600) + *(v497 + v503 - 2) + *(*a3 + 2966) * v378) = *(v503 + v497 - 1);
            goto LABEL_1014;
          }

          break;
        }

        if (v496 == v378 && cstdlib_strchr(*(*(v4 + 3424) + 8 * *(*(v4 + 3512) + *(v4 + 3506) * v492 + 3)), 35))
        {
          goto LABEL_1005;
        }

        goto LABEL_1014;
      }

LABEL_1034:
      if (!*(v4 + 2516))
      {
        if (*(v4 + 2966))
        {
          v528 = 0;
          v529 = 0;
          do
          {
            *(*(a3 + 3600) + v528 + (*(a3 + 10) - 1) * *(*a3 + 2966)) = *(*(v4 + 2968) + 32 * v529++ + 10);
            v528 = v529;
            v530 = *(v4 + 2966);
          }

          while (v529 < v530);
          if (*(v4 + 2516))
          {
            goto LABEL_1035;
          }

          if (*(v4 + 2966))
          {
            v531 = 0;
            v532 = 0;
            v533 = *(v4 + 2968);
            v534 = *(a3 + 3568);
            v535 = (*(a3 + 10) - 1) * *(*a3 + 2966);
            v536 = *(a3 + 3576);
            do
            {
              v537 = *(v533 + 32 * v532 + 4);
              v538 = v535 + v531;
              *(v534 + 4 * v538) = v537;
              *(v536 + 4 * v538) = v537;
              v531 = ++v532;
            }

            while (v532 < v530);
          }
        }

        v539 = *(v4 + 3360);
        if (*(v4 + 3360))
        {
          v540 = 0;
          v541 = 0;
          v542 = *(v4 + 3368);
          v543 = *(a3 + 3584);
          v544 = (*(a3 + 10) - 1) * *(*a3 + 3360);
          do
          {
            *(v543 + 4 * (v544 + v540)) = *(v542 + 12 * v541++ + 4);
            v540 = v541;
          }

          while (v541 < v539);
          v545 = 0;
          v546 = 0;
          v547 = *(v4 + 3368);
          v548 = *(a3 + 3592);
          v549 = (*(a3 + 10) - 1) * *(*a3 + 3360);
          do
          {
            *(v548 + 4 * (v549 + v545)) = *(v547 + 12 * v546++ + 4);
            v545 = v546;
          }

          while (v546 < v539);
        }
      }

LABEL_1035:
      if ((*(v4 + 3392) & 0x80000000) == 0 || (*(v4 + 3396) & 0x80000000) == 0 || (*(v4 + 3068) & 0x80000000) == 0 || (*(v4 + 3072) & 0x80000000) == 0)
      {
        v506 = 0;
        v507 = 0;
        v508 = 1;
        while (1)
        {
          v509 = (*(v4 + 3072) & 0x80000000) != 0 ? *(a3 + 10) - 1 : *(a3 + 10);
          if (v509 <= v506)
          {
            break;
          }

          v510 = *(v200 + *(*(a3 + 32) + v506));
          if ((*(v4 + 3068) & 0x80000000) == 0)
          {
            if (*(v4 + 859 + v510) == 118)
            {
              (*(v4 + 28168))(v4 + 28176, v4 + 28200, 0, a3, v506, *(a3 + 216) + v506, *(a3 + 224) + v506, 0, 0, v571, v572, v573, v574, v575, v576);
            }

            else
            {
              *(*(a3 + 216) + v506) = 0;
              *(*(a3 + 224) + v506) = 0;
            }
          }

          if ((*(v4 + 3072) & 0x80000000) == 0)
          {
            (*(v4 + 28168))(v4 + 28208, *(v4 + 28232) + 8 * v510, 1, a3, v506, *(a3 + 232) + v506, *(a3 + 240) + v506, 0, 0);
          }

          v511 = *(v4 + 3392);
          if ((v511 & 0x80000000) == 0 || (*(v4 + 3396) & 0x80000000) == 0)
          {
            v512 = *(*(a3 + 248) + v506);
            v513 = *(a3 + 3552) + 8 * v506;
            *v513 = 0xC800C8FF38FF38;
            if (*(*(a3 + 80) + v506) == 1)
            {
              v508 = 1;
            }

            v514 = (*(v4 + 3528) + 2 * v512);
            v515 = *v514;
            v516 = v514[1];
            if (v515 < v516 && *(v4 + 1116 + v510) == 86 && v508 == 1)
            {
              if (v507)
              {
                if (v511 < 0)
                {
                  v521 = *(a3 + 160);
                  v519 = (*(v4 + 3544) + 16 * v515);
                  v522 = v515 + 1;
                  while (1)
                  {
                    if (*(v521 + v507) == v519[4])
                    {
                      v523 = *(a3 + 152);
                      if (*(v523 + v507) == v519[5] && *(v521 + v506) == v519[6] && *(v523 + v506) == v519[7])
                      {
                        break;
                      }
                    }

                    v519 += 8;
                    v21 = v516 == v522++;
                    if (v21)
                    {
                      goto LABEL_1075;
                    }
                  }
                }

                else
                {
                  v518 = *(a3 + 264);
                  v519 = (*(v4 + 3536) + 12 * v515);
                  v520 = v515 + 1;
                  while (*(v518 + v507) != v519[4] || *(v518 + v506) != v519[5])
                  {
                    v519 += 6;
                    v21 = v516 == v520++;
                    if (v21)
                    {
                      goto LABEL_1075;
                    }
                  }
                }

                v508 = 0;
                *v513 = *v519;
                *(v513 + 2) = v519[1];
                *(v513 + 4) = v519[2];
                *(v513 + 6) = v519[3];
              }

              else
              {
LABEL_1075:
                v508 = 0;
              }

              v507 = v506;
            }
          }

          ++v506;
        }
      }

      HandleRecordedPrompts(v4, a3);
      *(a3 + 3524) = *(*a3 + 3578) * *(a3 + 10);
      v524 = *(a3 + 3512);
      if (v524)
      {
        if (*(a3 + 3520))
        {
          if (*(a3 + 24))
          {
            v525 = *(a3 + 1800);
            v526 = *v525;
            if (*v525)
            {
              v527 = 0;
              while (*v524 != 26)
              {
                ++v527;
                v524 += 8;
                if (v526 == v527)
                {
                  goto LABEL_1107;
                }
              }

              if (v526 <= v527)
              {
                goto LABEL_1106;
              }

              v550 = 0;
              v551 = v526 - v527;
              do
              {
                v552 = *v524;
                v524 += 8;
                if (v552 == 8)
                {
                  v550 = 1;
                }

                --v551;
              }

              while (v551);
              if (!v550)
              {
LABEL_1106:
                v525[1] += v526 - v527;
                *v525 = v527;
              }
            }
          }
        }
      }

LABEL_1107:
      if (log_GetLogLevel(*(v596 + 32)) < 6)
      {
        return 0;
      }

      cstdlib_strcpy(__dst, "");
      cstdlib_strcpy(v610, "");
      LH_itoa(0x4Eu, v610, 0xAu);
      v553 = 0;
      v554 = 0;
      while (2)
      {
        v555 = *(a3 + 10);
        if (v553 - 2 < 4 || v553 == 0)
        {
          goto LABEL_1114;
        }

        v559 = *(*a3 + v553 + 2748);
        if (v553 == 1)
        {
          v557 = 0;
          v555 = *v6;
          v558 = 99;
          v554 = "application/x-realspeak-marker-counts;version=4.0";
          goto LABEL_1146;
        }

        if (!*(*a3 + v553 + 2748))
        {
LABEL_1114:
          v557 = 0;
          v558 = 99;
LABEL_1115:
          if (v553 == 1 && *(a3 + 24))
          {
LABEL_1117:
            if (!v557)
            {
              v557 = *(a3 + 8 * v553 + 16);
            }

            log_OutBinary(*(v596 + 32), v591, v558, 0, v610, v554, v557, v555, 0);
          }
        }

        else
        {
          v557 = 0;
          if (v553 <= 0x33u)
          {
            v563 = (a3 + 3552);
            if (v553 == 24 || (v563 = (a3 + 3560), v553 == 46))
            {
              v557 = *v563;
              goto LABEL_1136;
            }

            if (v553 == 51)
            {
              v560 = 0;
              v559 = 4;
              v561 = 2966;
              v562 = (a3 + 3568);
              goto LABEL_1141;
            }

LABEL_1136:
            v560 = v559 == 1;
            v564 = "application/x-realspeak-u16-feat-";
            if (v559 != 2)
            {
              v564 = "application/x-realspeak-u32-feat-";
            }
          }

          else
          {
            if (v553 > 0x35u)
            {
              if (v553 == 56)
              {
                v560 = 1;
                v561 = 2966;
                v559 = 1;
                v562 = (a3 + 3600);
              }

              else
              {
                if (v553 != 54)
                {
                  goto LABEL_1136;
                }

                v560 = 0;
                v559 = 4;
                v561 = 3360;
                v562 = (a3 + 3592);
              }
            }

            else
            {
              if (v553 != 52)
              {
                if (v553 == 53)
                {
                  v560 = 0;
                  v559 = 4;
                  v561 = 3360;
                  v562 = (a3 + 3584);
                  goto LABEL_1141;
                }

                goto LABEL_1136;
              }

              v560 = 0;
              v559 = 4;
              v561 = 2966;
              v562 = (a3 + 3576);
            }

LABEL_1141:
            v557 = *v562;
            v555 *= *(*a3 + v561);
            v564 = "application/x-realspeak-u32-feat-";
          }

          if (v560)
          {
            v565 = "application/x-realspeak-u8-feat-";
          }

          else
          {
            v565 = v564;
          }

          v554 = __dst;
          cstdlib_strcpy(__dst, v565);
          v566 = cstdlib_strlen(__dst);
          LH_itoa(v553, &__dst[v566], 0xAu);
          v558 = 100;
LABEL_1146:
          if (v559 <= 1)
          {
            if (v559)
            {
              goto LABEL_1117;
            }

            goto LABEL_1115;
          }

          if (v559 == 2)
          {
            if (!v557)
            {
              v557 = *(a3 + 8 * v553 + 1760);
            }

            v567 = *(v596 + 32);
            v568 = 2 * v555;
LABEL_1155:
            log_OutBinary(v567, v591, v558, 0, v610, v554, v557, v568, 0);
          }

          else if (v559 == 4)
          {
            v567 = *(v596 + 32);
            v568 = 4 * v555;
            goto LABEL_1155;
          }
        }

        if (++v553 == 218)
        {
          return 0;
        }

        continue;
      }
    }
  }

  return v3;
}